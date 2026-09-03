unit S_MImo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,S_DM1,db,dbtables,func,lerarq,S_DM2,S_Moe;

type
  TFrm_MImo = class(TFrm_C)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBNavigator2: TDBNavigator;
    btnSair: TBitBtn;
    procedure BBnAtuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
function fMan01gant(ptipo: Integer): Boolean;

var
  Frm_MImo: TFrm_MImo;
  man_ori: String;
  mOper: Integer=0;
implementation

uses func_excecoes;

{$R *.dfm}

procedure TFrm_MImo.BBnAtuClick(Sender: TObject);
begin
  inherited;
if man_Ori='consulta' then
   begin
//   fcli01lerant(0);
   end
else
   begin
   If DM2.Tb_MImo.State in [dsInsert, dsEdit] then
      begin
      Case MessageDlg('O registro atual não está gravado!'+#13
                     +'Deseja gravar agora?',mtWarning,[mbYes,mbNo],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      end;
   end;
   flcadMImo(campo.ItemIndex,1,0,Trim(edit1.Text));
   INCLUIR.Enabled:=bbinc_true;
   ALTERAR.Enabled:=bbalt_true;
   GRAVAR.Enabled :=False;
   EXCLUIR.Enabled:=bbexc_true;
   CANCELAR.Enabled:=True;
   end;


end;

procedure TFrm_MImo.FormCreate(Sender: TObject);
begin
  inherited;
bbinc_true:=true;
bbalt_true:=true;
bbexc_true:=true;

end;

procedure TFrm_MImo.DBEdit3Exit(Sender: TObject);
begin
  inherited;
DM2.Tb_MImoMPERIOD.Value:=Arredonda(DM2.Tb_MImoMPERIOD.Value,0);
end;

procedure TFrm_MImo.INCLUIRClick(Sender: TObject);
begin
  inherited;
moper:=0;
DM2.Tb_MImo.Append;
mcodigo:=DM2.Tb_MImoMCODMAN.AsString;
DBEdit1.Enabled:=True;
DBEdit2.SetFocus;

end;

procedure TFrm_MImo.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM2.Tb_MImoMCODMAN.IsNull then
   begin
   MessageDlg('Não ha registro a ser alterado!',mtWarning,[mbOk],0);
   exit;
   end;
moper:=8;
DM2.Tb_MImo.Edit;
DBEdit2.SetFocus;
DBEdit1.Enabled:=False;

end;

procedure TFrm_MImo.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM2.Tb_MImoMCODMOE.IsNull then
   begin
   MessageDlg('Não ha registro a ser Excluido!',mtWarning,[mbOk],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir Este Registro?',0,['1','2'],2)=mrYes then
   begin
   fMan01gant(9);
   DM2.Tb_MImo.Delete;
   CANCELAR.Click;
   end;

end;
function fMan01gant(ptipo: Integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(MCODNOV) from OLD_CADMIMO');
DM1.Query1.Open;
minstru:='Insert into OLD_CADMIMO (';
v:='';
for x:=0 to DM2.Tb_MImo.FieldCount-1 do
   begin
   if DM2.Tb_MImo.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM2.Tb_MImo.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',MCODNOV) Select ';
v:='';
for x:=0 to DM2.Tb_MImo.FieldCount-1 do
   begin
   if DM2.Tb_MImo.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM2.Tb_MImo.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as MCODNOV ';
minstru:=minstru+' from CADMIMO where MCODEMP=0'+DM2.Tb_MImoMCODEMP.AsString
                +' and MCODMAN=0'+DM2.Tb_MImoMCODMAN.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,170,'Frm_MImo','CADMIMO');
   end;
result:=True;
end;


procedure TFrm_MImo.GRAVARClick(Sender: TObject);
begin
  inherited;
if (DM2.Tb_MImoMNOME.Value='_') or (DM2.Tb_MImoMNOME.IsNull) then
   begin
   MessageDlg('Nome Invalido!',mtWarning,[mbOk],0);
   PC1.ActivePageIndex:=0;
   DBEdit2.SetFocus;
   exit;
   end;

if moper=8 then
   fMan01gant(moper);

dm2.Tb_MImo.Post;
CANCELAR.Click;

end;

procedure TFrm_MImo.CANCELARClick(Sender: TObject);
begin
  inherited;
if DM2.Tb_MImo.State in [dsInsert, DsEdit] then
   DM2.Tb_MImo.Cancel;
moper:=0;

end;

procedure TFrm_MImo.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if man_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   man_ori := '';
   end;


end;

procedure TFrm_MImo.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if man_ori='' then
      begin
      PC1.ActivePageIndex:=0;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      man_ori := '';
      end;
   abort;
   end;

end;

procedure TFrm_MImo.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
If DM2.Tb_MImo.State in [dsInsert, dsEdit] then
   begin
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo,mbCancel],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      else CanClose:=False;
      end;
   end;

if DM2.Tb_MImoMNOME.Value='_' then
   DM2.Tb_MImo.Delete;

end;

procedure TFrm_MImo.DBEdit1Exit(Sender: TObject);
begin
  inherited;
if mcodigo<>DM2.Tb_MImoMCODMAN.AsString then
   begin
   if flqr1('MNOME','M','CADMIMO','N','MCODMAN',DM2.Tb_MImoMCODMAN.AsString) then
      begin
      MessageDlg('Este código ja esta cadastrado Nome: '+DM1.Query1.Fields[0].AsString,mtWarning,[MbOk],0);
      DBEdit1.SetFocus;
      exit;
      end;
   end;


end;

procedure TFrm_MImo.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key in [',','.'] then
   key:=DecimalSeparator;

end;

procedure TFrm_MImo.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(Tfrm_Moe, Frm_Moe);
   Frm_Moe.Edit1.Text:=key;
   Frm_Moe.Edit1.SelStart:=1;
   Frm_Moe.Edit1.SelLength:=1;
   Frm_Moe.PC1.ActivePageIndex:=1;
   Frm_Moe.mOrigem:='Frm_Moe';
   if Frm_Moe.ShowModal=mrOk then
      begin
      DM2.Tb_MImoMCODMOE.Text:=DM2.Tb_MoeMCODMOE.AsString;
      end;
   Frm_Moe.Free;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_MImo.DBEdit4Exit(Sender: TObject);
begin
  inherited;
if CANCELAR.Focused then
   exit;
if DM2.Tb_MImoMCODMOE.Value>0 then
   begin
   if not flqr1('MNOME','M','CADMOE','N','MCODMOE',DM2.Tb_MImoMCODMOE.AsString) then
      begin
      MessageDlg('Moeda não Cadastrada!',mtWarning,[mbOk],0);
      DBEdit4.SetFocus;
     end;
   end;

end;

procedure TFrm_MImo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_MImo.btnSairClick(Sender: TObject);
begin
  inherited;
  if man_ori = '' then close;
end;

end.
