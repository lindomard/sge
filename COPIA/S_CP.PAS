unit S_CP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  S_, ComCtrls, Buttons, StdCtrls, ExtCtrls, Grids, DBGrids, DBCtrls, Mask,
  func, db, dbtables, S_For, yupack, S_Bco;

type
  TFrm_CP = class(TFrm_)
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
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    Label13: TLabel;
    DBEdit14: TDBEdit;
    DBGrid1: TDBGrid;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit16: TDBEdit;
    Label16: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    DBEdit19: TDBEdit;
    procedure BBnAtuClick(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Exit(Sender: TObject);
    procedure PRIMEIROClick(Sender: TObject);
    procedure ULTIMOClick(Sender: TObject);
    procedure PROXIMOClick(Sender: TObject);
    procedure ANTERIORClick(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
function fCP01va(mtipo: Integer): Boolean;

var
  Frm_CP: TFrm_CP;

implementation

uses S_DM1;

{$R *.DFM}

procedure TFrm_CP.BBnAtuClick(Sender: TObject);
begin
  inherited;
flcaddap(CAMPO.itemIndex,Edit1.Text,pvazio,pvazio,pvazio);
end;

procedure TFrm_CP.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  inherited;
   If DM1.Tb_CP.State in [dsInsert, dsEdit] then
   begin
      DBEdit1.SetFocus;
      DBEdit1.SelectAll;
   end;

end;

procedure TFrm_CP.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
If DM1.Tb_CP.State in [dsInsert, dsEdit] then
   begin
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo,mbCancel],0) of
      mrYes: DM1.Tb_CP.Post;
      mrNo : DM1.Tb_CP.Cancel;
      else CanClose:=False;
      end;
   end;

end;

procedure TFrm_CP.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
      if (key in ['A'..'Z']) or (key in ['a'..'z']) then
      begin
      Application.CreateForm(Tfrm_For, Frm_For);
      Frm_For.Edit1.Text:=key;
      Frm_For.BBnAtu.Click;
      Frm_For.Edit1.SelStart:=1;
      Frm_For.Edit1.SelLength:=1;
      Frm_For.PC1.ActivePageIndex:=1;
      Frm_For.ShowModal;
      if DM1.Tb_CP.State in [dsInsert, DsEdit] then
         DM1.Tb_CPCACODFOR.Value:=DM1.Tb_ForFCODFOR.Value;
      Frm_For.Free;
      key:='0';
      end;

end;

procedure TFrm_CP.DBEdit3Exit(Sender: TObject);
begin
  inherited;
if not flqr1('FRAZAO','F','CADFOR','N','FCODFOR',DM1.Tb_CPCACODFOR.AsString) then
   begin
   ShowMessage('Fornecedor Não Cadastrado');
   DBEdit3.SetFocus;
   end;
end;
function fCP01va(mtipo: Integer): Boolean;
begin
if mtipo=1 then
   begin
   Frm_CP.PRIMEIRO.Enabled:=False;
   Frm_CP.ULTIMO.Enabled  :=False;
   Frm_CP.PROXIMO.Enabled :=false;
   Frm_CP.ANTERIOR.Enabled:=False;
   end
else
   begin
   Frm_CP.PRIMEIRO.Enabled:=True;
   Frm_CP.ULTIMO.Enabled  :=True;
   Frm_CP.PROXIMO.Enabled :=True;
   Frm_CP.ANTERIOR.Enabled:=True;
   if DM1.Tb_CP.Bof then
      begin
      Frm_CP.PRIMEIRO.Enabled:=False;
      Frm_CP.ANTERIOR.Enabled:=False;
      end;
   if DM1.Tb_CP.Eof then
      begin
      Frm_CP.ULTIMO.Enabled:=False;
      Frm_CP.PROXIMO.Enabled:=False;
      end;
   end;
result:=True;
end;


procedure TFrm_CP.PRIMEIROClick(Sender: TObject);
begin
  inherited;
if not DM1.Tb_CP.Bof then
   DM1.Tb_CP.First;
fCP01va(0);

end;

procedure TFrm_CP.ULTIMOClick(Sender: TObject);
begin
  inherited;
if not DM1.Tb_CP.Eof then
   dm1.Tb_CP.last;
fCP01va(0);


end;

procedure TFrm_CP.PROXIMOClick(Sender: TObject);
begin
  inherited;
if not dm1.Tb_CP.Eof then
   DM1.Tb_CP.Next;
fCP01va(0);

end;

procedure TFrm_CP.ANTERIORClick(Sender: TObject);
begin
  inherited;
if not DM1.Tb_CP.Bof then
   DM1.Tb_CP.Prior;
fCP01va(0);

end;

procedure TFrm_CP.INCLUIRClick(Sender: TObject);
begin
  inherited;
if not DM1.Tb_CP.Active then
   begin
   DM1.Tb_CP.Close;
   DM1.Tb_CP.ParamByName('NUMERO').AsString :='%';
   DM1.Tb_CP.ParamByName('DESD').AsString   :='%';
   DM1.Tb_CP.ParamByName('CODFOR').AsString :='999999';
   DM1.Tb_CP.ParamByName('DTEMIS').AsString :='%';
   DM1.Tb_CP.Open;
   end;
PC1.ActivePageIndex:=0;
DM1.Tb_CP.Append;
tsCad.Enabled:=True;
DBGrid1.Enabled:=False;
fCP01va(1);
ALTERAR.Enabled:=False;
GRAVAR.Enabled :=True;
EXCLUIR.Enabled:=False;
CANCELAR.Enabled:=True;
DBEdit1.SetFocus;


end;

procedure TFrm_CP.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_CPCANUMERO.IsNull then
   begin
   ShowMessage('Nao a registro a ser alterado');
   abort;
   end;
if DM1.Tb_CPCACHAVEP.Value>0 then
   begin
   ShowMessage('Alteração não permitida lançamento feito através de pedido');
   exit;
   end;
if DM1.Tb_CPCASTATUS.Value>0 then
   begin
   ShowMessage('Alteração não permitida. Excluir primeiro o(s) pagamento(s)');
   exit;
   end;
PC1.ActivePageIndex:=0;
DM1.Tb_CP.Edit;
tsCad.Enabled:=True;
DBGrid1.Enabled:=False;
fCP01va(1);
DBEdit1.SetFocus;
INCLUIR.Enabled:=False;
ALTERAR.Enabled:=False;
GRAVAR.Enabled :=True;
EXCLUIR.Enabled:=False;
CANCELAR.Enabled:=True;


end;

procedure TFrm_CP.GRAVARClick(Sender: TObject);
begin
  inherited;
Panel3.SetFocus;
if DM1.Tb_CPCANUMERO.Value<=0 then
   begin
   ShowMessage('Número invalido.');
   DBEdit1.SetFocus;
   exit;
   end;
if DM1.Tb_CPCADTEMIS.IsNull then
   begin
   ShowMessage('data de emissão invalido.');
   DBEdit4.SetFocus;
   exit;
   end;
if DM1.Tb_CPCADESD.IsNull then
   begin
   ShowMessage('Desdobramento/Parcela tem que ter valor.');
   DBEdit2.SetFocus;
   exit;
   end;

if DM1.Tb_CPCADTVCTO.IsNull then
   begin
   ShowMessage('data de vencimento invalido.');
   DBEdit6.SetFocus;
   exit;
   end;
if DM1.Tb_CPCAVALOR.Value<=0 then
   begin
   ShowMessage('Valor invalido.');
   DBEdit5.SetFocus;
   exit;
   end;

if DM1.Tb_CPCACODLDR.Value>0 then
   begin
   if not flcadldr(0,DM1.Tb_CPCACODLDR.AsString) then
      DM1.Tb_LDR.Append
   else
      DM1.Tb_LDR.Edit;
   end
else
   DM1.Tb_LDR.Append;
DM1.Tb_LDRCODEMP.Value  :=codemp;
DM1.Tb_LDRDATADP.Value  :=DM1.Tb_CPCADTVCTO.Value;
DM1.Tb_LDRDATAREF.Value :=DM1.Tb_CPCADTEMIS.Value;
DM1.Tb_LDRVALORP.Value  :=DM1.Tb_CPCAVALOR.Value; // valor
flparldr(0,'CADDAP0');
flcadccu(1,DM1.Par_LDRCODCC.AsString);
DM1.Tb_LDRCODBCO.Value  :=codcai;
DM1.Tb_LDRNATDC.Value   :=DM1.Tb_CCuCCNAT.Value;
DM1.Tb_LDRCODCC.Value   :=DM1.Par_LDRCODCC.Value;
DM1.Tb_LDRCODDEP.Value  :=DM1.Par_LDRCODDEP.Value;
DM1.Tb_LDRDESCMV.Value  :='DUPLICATAS A PAGAR';
DM1.Tb_LDRNUMDOC.Value  :='DP-'+FormatFloat('000000',DM1.Tb_CPCANUMERO.Value)+'-'+DM1.Tb_CPCADESD.Value;
DM1.Tb_LDRSTATUS.Value:=0;
DM1.Tb_LDRORIGEM.Value:=03;
DM1.Tb_LDRTIPO.Value  :='FR';
DM1.Tb_LDRCODIGO.Value:=DM1.Tb_CPCACODFOR.Value;
DM1.Tb_LDR.Post;
DM1.Tb_CPCACODLDR.Value:=DM1.Tb_LDRCODLDR.Value;


tsCad.Enabled:=False;
DBGrid1.Enabled:=True;
fCP01va(0);

dm1.tB_CP.Post;
INCLUIR.Enabled:=True;
ALTERAR.Enabled:=True;
GRAVAR.Enabled :=False;
EXCLUIR.Enabled:=True;
CANCELAR.Enabled:=True;


end;

procedure TFrm_CP.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_CPCANUMERO.IsNull then
   begin
   ShowMessage('Nao ha registro a ser excluido!');
   abort;
   end;
if DM1.Tb_CPCACHAVEP.Value>0 then
   begin
   ShowMessage('Exclusão não permitida lançamento feito através de pedido');
   exit;
   end;
if DM1.Tb_CPCASTATUS.Value>0 then
   begin
   ShowMessage('Exclusão não permitida. Excluir primeiro o(s) pagamento(s)');
   exit;
   end;


if Application.MessageBox('Quer Realmente Excluir este Registro?',' ',MB_YESNO+MB_DEFBUTTON2)=mrYes then
   begin
   if DM1.Tb_CPCACODLDR.Value>0 then
      begin
      DM1.SG_ASSOC.StartTransaction;
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.add('Delete From CADLDR where ');
      if DM1.Qr_Tid.Locate('TINOME','CADLDR',[]) then
         DM1.Query1.SQL.add(' CODLDR=0'+DM1.Tb_CPCACODLDR.AsString)
      else
         DM1.Query1.SQL.add(' CODEMP=0'+IntTostr(codemp)
                           +' and CODLDR=0'+DM1.Tb_CPCACODLDR.AsString);
      DM1.Query1.ExecSQL;
      DM1.SG_ASSOC.Commit;
      end;
   tsCad.Enabled:=False;
   DBGrid1.Enabled:=True;
   fCP01va(0);
   DM1.Tb_CP.Delete;
   INCLUIR.Enabled:=True;
   ALTERAR.Enabled:=True;
   GRAVAR.Enabled :=False;
   EXCLUIR.Enabled:=True;
   CANCELAR.Enabled:=True;
   end;


end;

procedure TFrm_CP.CANCELARClick(Sender: TObject);
begin
  inherited;
DM1.Tb_CP.Cancel;
tsCad.Enabled:=False;
DBGrid1.Enabled:=True;
fCP01va(0);

INCLUIR.Enabled:=True;
ALTERAR.Enabled:=True;
GRAVAR.Enabled :=false;
EXCLUIR.Enabled:=True;
CANCELAR.Enabled:=True;

end;

procedure TFrm_CP.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
if not (DM1.Tb_CP.State in [dsEdit, DsInsert]) then
   fcp01va(0);
end;

procedure TFrm_CP.FormActivate(Sender: TObject);
begin
  inherited;
flcadldr(0,'0');

end;

procedure TFrm_CP.DBEdit14Exit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_CPCABANCO.IsNull) or (DM1.Tb_CPCABANCO.Value=0) then
   exit;  
if not flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',DM1.Tb_CPCABANCO.AsString) then 
   begin
   ShowMessage('Banco Não Cadastrado');
   DBEdit14.SetFocus;
   end;

end;

procedure TFrm_CP.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) then
   begin
   Application.CreateForm(Tfrm_Bco, Frm_Bco);
   Frm_Bco.Edit1.Text:=key;
   Frm_Bco.BBnAtu.Click;
   Frm_Bco.Edit1.SelStart:=1;
   Frm_Bco.Edit1.SelLength:=1;
   Frm_Bco.PC1.ActivePageIndex:=1;
   if Frm_Bco.ShowModal=mrok then
      DM1.Tb_CPCABANCO.Value:=DM1.Tb_BcoBCCODBCO.Value;
   Frm_Bco.Free;
   key:='0';
   end;

end;

end.
