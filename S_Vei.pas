unit S_Vei;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,S_DM1,S_DM2,db,dbtables,func,S_Moe,lerarq;

type
  TFrm_Vei = class(TFrm_C)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    RG_COMB: TDBRadioGroup;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    db_dtcompra: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    MDTCOMPRA: TMaskEdit;
    Label19: TLabel;
    DBEdit18: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit19: TDBEdit;
    Label22: TLabel;
    MDTVDA: TMaskEdit;
    DBEdit20: TDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    Label25: TLabel;
    db_dtvenda: TDBEdit;
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BBnAtuClick(Sender: TObject);
    procedure DBEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11Exit(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
function fVei01gant(ptipo: Integer): Boolean;

var
  Frm_Vei: TFrm_Vei;
  vei_ori: String;
  mOper:   Integer=0;
implementation

uses func_excecoes;

{$R *.dfm}

procedure TFrm_Vei.INCLUIRClick(Sender: TObject);
begin
  inherited;
moper:=0;
db_dtcompra.Visible:=false;
db_dtvenda.Visible :=false;
MDTVDA.Visible     :=True;
MDTCOMPRA.Visible  :=True;
DM2.Tb_Vei01.Append;
mcodigo:=DM2.Tb_Vei01V1CODVEI.AsString;
DBEdit1.Enabled:=True;
DBEdit2.SetFocus;

end;

procedure TFrm_Vei.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM2.Tb_Vei01V1CODVEI.IsNull then
   begin
   MessageDlg('Não ha registro a ser alterado!',mtWarning,[mbOk],0);
   exit;
   end;
moper:=8;
if (DM2.Tb_Vei01V1DATAAQ.Value<=pdatanula)
   or (DM2.Tb_Vei01V1DATAAQ.IsNull) then
   MDTCOMPRA.Text:=FormatDatetime(fdt2, DM2.Tb_Vei01V1DATAAQ.Value);

if (DM2.Tb_Vei01V1DATAVDA.Value<=pdatanula)
   or (DM2.Tb_Vei01V1DATAVDA.IsNull) then
   MDTVDA.Text :=FormatDatetime(fdt2, DM2.Tb_Vei01V1DATAVDA.Value);

db_dtcompra.Visible:=false;
db_dtvenda.Visible :=false;
MDTVDA.Visible     :=True;
MDTCOMPRA.Visible  :=True;

DM2.Tb_Vei01.Edit;
DBEdit2.SetFocus;
DBEdit1.Enabled:=False;


end;

procedure TFrm_Vei.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM2.Tb_Vei01V1CODVEI.IsNull then
   begin
   MessageDlg('Não ha registro a ser Excluido!',mtWarning,[mbOk],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir Este Registro?',0,['1','2'],2)=mrYes then
   begin
   fVei01gant(9);
   DM2.Tb_Vei01.Delete;
   CANCELAR.Click;
   end;

end;

function fVei01gant(ptipo: Integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(V1CODNOV) from OLD_CADVEI01');
DM1.Query1.Open;
minstru:='Insert into OLD_CADVEI01 (';
v:='';
for x:=0 to DM2.Tb_Vei01.FieldCount-1 do
   begin
   if DM2.Tb_Vei01.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM2.Tb_Vei01.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',V1CODNOV) Select ';
v:='';
for x:=0 to DM2.Tb_Vei01.FieldCount-1 do
   begin
   if DM2.Tb_Vei01.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM2.Tb_Vei01.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as V1CODNOV ';
minstru:=minstru+' from CADVEI01 where V1CODEMP=0'+DM2.Tb_Vei01V1CODEMP.AsString
                +' and V1CODVEI=0'+DM2.Tb_Vei01V1CODVEI.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,185,'Frm_Imo01','CADVEI01');
   end;

result:=True;
end;
procedure TFrm_Vei.GRAVARClick(Sender: TObject);
begin
  inherited;
if (DM2.Tb_Vei01V1NOME.Value='_') or (DM2.Tb_Vei01V1NOME.IsNull) then
   begin
   MessageDlg('Nome Invalido!',mtWarning,[mbOk],0);
   PC1.ActivePageIndex:=0;
   DBEdit2.SetFocus;
   exit;
   end;

if moper=8 then
   fVei01gant(moper);


db_dtcompra.Visible:=True;
db_dtvenda.Visible :=True;
MDTVDA.Visible     :=False;
MDTCOMPRA.Visible  :=False;
if Trim(MDTVDA.Text)<>'/  /' then
   DM2.Tb_Vei01V1DATAVDA.Value:=StrToDate(MDTVDA.Text)
else
   DM2.Tb_Vei01V1DATAVDA.Value:=pdatanula;

if Trim(MDTCOMPRA.Text)<>'/  /' then
   DM2.Tb_Vei01V1DATAAQ.Value:=StrToDate(MDTCOMPRA.Text)
else
   DM2.Tb_Vei01V1DATAAQ.Value:=pdatanula;

dm2.Tb_Vei01.Post;
CANCELAR.Click;


end;

procedure TFrm_Vei.CANCELARClick(Sender: TObject);
begin
  inherited;
if DM2.Tb_Vei01.State in [dsInsert, DsEdit] then
   DM2.Tb_Vei01.Cancel;
db_dtcompra.Visible:=True;
db_dtvenda.Visible :=True;
MDTVDA.Visible     :=False;
MDTCOMPRA.Visible  :=False;

moper:=0;


end;

procedure TFrm_Vei.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if vei_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   vei_ori := '';
   end;

end;

procedure TFrm_Vei.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if vei_ori='' then
      begin
      PC1.ActivePageIndex:=0;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      vei_ori := '';
      end;
   abort;
   end;

end;

procedure TFrm_Vei.FormCreate(Sender: TObject);
begin
  inherited;
bbinc_true:=true;
bbalt_true:=true;
bbexc_true:=true;

end;

procedure TFrm_Vei.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
If DM2.Tb_Vei01.State in [dsInsert, dsEdit] then
   begin
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo,mbCancel],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      else CanClose:=False;
      end;
   end;

if DM2.Tb_Vei01V1NOME.Value='_' then
   DM2.Tb_Vei01.Delete;

end;

procedure TFrm_Vei.BBnAtuClick(Sender: TObject);
begin
  inherited;
if vei_Ori='consulta' then
   begin
//   fcli01lerant(0);
   end
else
   begin
   If DM2.Tb_Vei01.State in [dsInsert, dsEdit] then
      begin
      Case MessageDlg('O registro atual não está gravado!'+#13
                     +'Deseja gravar agora?',mtWarning,[mbYes,mbNo],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      end;
   end;
   flcadvei01(campo.ItemIndex,1,0,Trim(edit1.Text));
   INCLUIR.Enabled:=bbinc_true;
   ALTERAR.Enabled:=bbalt_true;
   GRAVAR.Enabled :=False;
   EXCLUIR.Enabled:=bbexc_true;
   CANCELAR.Enabled:=True;
   end;


end;

procedure TFrm_Vei.DBEdit20KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key in [',','.'] then key:=DecimalSeparator;
end;

procedure TFrm_Vei.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(Tfrm_Moe, Frm_Moe);
   Frm_Moe.Edit1.Text:=key;
   Frm_Moe.Edit1.SelStart:=1;
   Frm_Moe.Edit1.SelLength:=1;
   Frm_Moe.PC1.ActivePageIndex:=1;
   Frm_Moe.mOrigem:='Frm_Vei';
   if Frm_Moe.ShowModal=mrOk then
      begin
      DM2.Tb_Vei01V1CODIND.Value:=DM2.Tb_MoeMCODMOE.Value;
      end;
   Frm_Moe.Free;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Vei.DBEdit11Exit(Sender: TObject);
begin
  inherited;
if CANCELAR.Focused then
   exit;
if DM2.Tb_Vei01V1CODIND.Value>0 then
   begin
   if not flqr1('MNOME','M','CADMOE','N','MCODMOE',DM2.Tb_Vei01V1CODIND.AsString) then
      begin
      MessageDlg('Moeda não Cadastrada!',mtWarning,[mbOk],0);
      DBEdit11.SetFocus;
     end;
   end;

end;

procedure TFrm_Vei.SAIRClick(Sender: TObject);
begin
  inherited;
  if vei_ori = '' then close;
end;

procedure TFrm_Vei.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
