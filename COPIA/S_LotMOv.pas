unit S_LotMOv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,S_DM1,func,lerarq,DB,DBTABLES;

type
  TFrm_LotMov = class(TFrm_C)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
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
    Label11: TLabel;
    DBNavigator2: TDBNavigator;
    BitBtn1: TBitBtn;
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fLotMovgant(ptipo: Integer): Boolean;

var
  Frm_LotMov: TFrm_LotMov;
  moper: Integer;

implementation

{$R *.dfm}

procedure TFrm_LotMov.INCLUIRClick(Sender: TObject);
begin
  inherited;
moper:=0;
 
DM1.Tb_Mov.Append;
mcodigo:=DM1.Tb_MovCMLOTE.AsString;
DM1.Tb_MovCMCODEMP.Value:=codemp;
DM1.Tb_MovCMCODUSR.Value:=codusr;
DM1.Tb_MovCMDATINC.Value:=Date;
DBEdit1.Enabled:=True;
DBEdit3.Enabled:=True;
DBEdit2.Enabled:=True;

DBEdit1.SetFocus;

end;

procedure TFrm_LotMov.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_MovCMLOTE.IsNull then
   begin
   MessageDlg('Não há registro a ser alterado!',mtWarning,[mbOk],0);
   exit;
   end;
DM1.Tb_Mov.Edit;
DBEdit3.SetFocus;
DBEdit3.Enabled:=False;
DBEdit2.Enabled:=False;
moper:=8;

end;

procedure TFrm_LotMov.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_MovCMCAIXA.IsNull then
   begin
   MessageDlg('Não há registro a ser excluido!',mtWarning,[mbOk],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir o Registro?',0,['1','2'],2)=mrYes then
   begin
   DM1.Tb_Mov.Delete;
   end;


end;

procedure TFrm_LotMov.GRAVARClick(Sender: TObject);
begin
  inherited;
if (DM1.Tb_MovCMLOTE.Value=0) or (DM1.Tb_MovCMLOTE.IsNull) then
   begin
   MessageDlg('Número do Lote Campo Obrigatório!',mtWarning,[mbok],0);
   DBEdit1.SetFocus;
   exit;
   end;
if (DM1.Tb_MovCMCAIXA.Value=0) or (DM1.Tb_MovCMCAIXA.IsNull) then
   begin
   MessageDlg('Número do Caixa Campo Obrigatório!',mtWarning,[mbok],0);
   DBEdit1.SetFocus;
   exit;
   end;

if (DM1.Tb_MovCMDTABERTURA.IsNull) or (DM1.Tb_MovCMDTABERTURA.Value<=pdatanula) then
   begin
   MessageDlg('Data de Abertura campo obrigatório!',mtWarning,[mbOk],0);
   exit;
   end;

if moper=8 then
  fLotMovgant(moper);

dm1.Tb_Mov.Post;
CANCELAR.Click;

end;

procedure TFrm_LotMov.CANCELARClick(Sender: TObject);
begin
  inherited;
DM1.Tb_Mov.Cancel;
moper:=8;

DBEdit1.Enabled:=False;
DBEdit3.Enabled:=False;
DBEdit2.Enabled:=False;

end;

procedure TFrm_LotMov.BBnAtuClick(Sender: TObject);
begin
  inherited;


if CAMPO.ItemIndex=0 then
   mcinst:=Edit1.Text
else if (Trim(EDIT1.Text)<>'') and (trim(Edit1.Text)<>'/  /') then
   begin
   try
      mcinst:=FormatDateTime(fdt,  StrtoDate(Edit1.Text))
   except
      MessageDlg('Data inválido!',mtWarning,[mbOk],0);
      Edit1.SetFocus;
      exit;
      end;
   end;
flcadmov(campo.ItemIndex,0,0,mcinst);

end;

procedure TFrm_LotMov.Edit1Exit(Sender: TObject);
begin
  inherited;
if CAMPO.ItemIndex=0 then
   Edit1.Text:=fdeixanum(EDIT1.Text)
else if (Trim(EDIT1.Text)<>'') and (trim(Edit1.Text)<>'/  /') then
   begin
   try
      Edit1.Text:=FormatDateTime(fdt2, StrtoDate(Edit1.Text))
   except
      MessageDlg('Data inválido!',mtWarning,[mbOk],0);
      Edit1.SetFocus;
      end;
   end;
end;



function fLotMovgant(ptipo: Integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(CMCODNOV) from OLD_CADMOV');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields[0].AsInteger+1;
minstru:='Insert into OLD_CADMOV (';
v:='';
for x:=0 to DM1.Tb_Mov.FieldCount-1 do
   begin
   if DM1.Tb_Mov.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_Mov.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',CMCODNOV) Select ';
v:='';
for x:=0 to DM1.Tb_Mov.FieldCount-1 do
   begin
   if DM1.Tb_Mov.Fields[x].FieldKind=fkCalculated then
      Continue;
   if DM1.Tb_Mov.Fields[x].FieldName='CMSTATUS' then
      minstru:=minstru+v+FormatFloat('0',ptipo)+' as CMSTATUS '
   else if DM1.Tb_Mov.Fields[x].FieldName='CMCODUSR' then
      minstru:=minstru+v+FormatFloat('00000',codusr)+' as CMCODUSR '
   else if DM1.Tb_Mov.Fields[x].FieldName='CMDATALT' then
      minstru:=minstru+v+chr(39)+Formatdatetime(fdt,date)+chr(39)+' as CMDATALT '
   else if DM1.Tb_Mov.Fields[x].FieldName='CMHORRALT' then
      minstru:=minstru+v+chr(39)+Formatdatetime(fhr,time)+chr(39)+' as CMHORALT '
   else
      minstru:=minstru+v+DM1.Tb_Mov.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as CMCODNOV ';
minstru:=minstru+' from CADMOV where CMCODEMP=0'+DM1.Tb_MovCMCODEMP.AsString
                +' and CMCAIXA=0'+DM1.Tb_MovCMCODEMP.AsString
                +' and CMLOTE=0'+DM1.Tb_MovCMLOTE.AsString;
DM1.SG_ASSOC.StartTransaction;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
except
   MessageDlg('Erro ao Fazer o Backup da Alteracao AC00222. Contactar Suporte',mtError,[mbOk],0);
   end;
DM1.SG_ASSOC.Commit;
result:=True;



end;

procedure TFrm_LotMov.SAIRClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrm_LotMov.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
