unit S_FPag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,S_DM1, DB,lerarq,func,S_Bco, RxDBComb;

type
  TFrm_FPag = class(TFrm_C)
    DBR_NUMERO: TDBRadioGroup;
    DBR_FORMA: TDBRadioGroup;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    DBEdit3: TDBEdit;
    Src_FP: TDataSource;
    NOMCLI: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBE_CODBCO: TDBEdit;
    NOMBCO: TEdit;
    DBCheckBox1: TDBCheckBox;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    RxDBCB_FPBANDEIRA_OPERADORA: TRxDBComboBox;
    Label9: TLabel;
    RxDBCB_FPVINCULO: TRxDBComboBox;
    Label10: TLabel;
    RxDBCb_FPVINCULO_TPAG: TRxDBComboBox;
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Exit(Sender: TObject);
    procedure Src_FPDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBE_CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_CODBCOExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     mFPagOri: String;

  end;

var
  Frm_FPag: TFrm_FPag;
implementation

{$R *.dfm}

procedure TFrm_FPag.INCLUIRClick(Sender: TObject);
begin
  inherited;
PC1.ActivePageIndex:=0;
DM1.Tb_FP.Append;
DBEdit1.Enabled:=True;
DBEDIT1.SetFocus;
mcodigo:=DM1.Tb_FPFPCODIGO.AsString;

end;

procedure TFrm_FPag.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_FPFPCODIGO.IsNull then
   begin
   MessageDlg('Não ha registro a ser alterado!',mtWarning,[mbOk],0);
   exit;
   end;
PC1.ActivePageIndex:=0;
tsCad.Enabled      :=True;
DBGrid1.Enabled    :=False;
DM1.Tb_FP.Edit;
DBEdit2.SetFocus;


end;

procedure TFrm_FPag.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_FPFPCODIGO.IsNull then
   begin
   MessageDlg('Não ha registro a ser excluido!',mtWarning,[mbOk],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir este registro?',0,['1','2'],2)=mrYes then
   begin
   DM1.Tb_FP.Delete;
   DBGrid1.Enabled   :=False;
   end;


end;

procedure TFrm_FPag.GRAVARClick(Sender: TObject);
begin
  inherited;



if (DM1.Tb_FPFPDESC.IsNull) then
   begin
   MessageDlg('Nome tem que ser Preenchido!',mtWarning,[mbOk],0);
   DBEdit1.SetFocus;
   exit;
   end;

{
01-Dinheiro
02-Cheque A Vista
03-Cheque Rede
04-Cartao Visa
05-Cartao Amex
06-Cartao RedeCard
07-TecBan
08-Devoluções
09-Convênio
10-Troco
11-Dep.C/C
12-Ordem Pgto
13-Financeira
14-Outros
15-Cheque Pre-Datado
16-Outros Cartoes
17-Cob.Bancaria
18-Cartões Hipercard
19-Cheque Terceiros
20-Nota de Crédito
21-Cartao POS Credito
22-Cartao POS Debito
23-Cartao TEF Credito
24-Cartao TEF Debito

}


if (DM1.Tb_FPFPVINCULO.AsInteger=03) or
   (DM1.Tb_FPFPVINCULO.AsInteger=04) or
   (DM1.Tb_FPFPVINCULO.AsInteger=05) or
   (DM1.Tb_FPFPVINCULO.AsInteger=06) or
   (DM1.Tb_FPFPVINCULO.AsInteger=15) then
   begin
   if DM1.Tb_fpFPCODCLI.AsFloat<1 then
      begin
      MessageDlg('Código da Financeira é Obrigatorio!',mtWarning,[mbOk],0);
      exit;
      end
   else
      begin
      if not fLerGenerico_query('CADCLI','CRAZAO,CCNPJ',' CCODCLI='+DM1.Tb_FPFPCODCLI.AsString,query_consulta) then
         begin
         MessageDlg('Financeira '+DM1.Tb_FPFPCODCLI.AsString+'  nao encontrada!',mtWarning,[mbOk],0);
         exit;
         end;
      end;
   if DM1.Tb_FPFPBANDEIRA_OPERADORA.AsInteger<1 then
      begin
      MessageDlg('Operadora é Obrigatorio o Preenchimento!',mtWarning,[mbOk],0);
      exit;
      end;
   end;


dm1.Tb_FP.Post;
CANCELAR.Click;

end;

procedure TFrm_FPag.CANCELARClick(Sender: TObject);
begin
  inherited;
DM1.Tb_FP.Cancel;
DBEdit1.Enabled   :=False;

end;

procedure TFrm_FPag.DBEdit1Exit(Sender: TObject);
begin
  inherited;
if mcodigo<>DM1.Tb_FPFPCODIGO.AsString then
   begin
   DM1.Query1.close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQl.add('Select FPDESC from CADFP where '
                     +' FPCODIGO=0'+Trim(DM1.Tb_FPFPCODIGO.AsString));
   DM1.Query1.Open;
   if not DM1.Query1.Eof then
      begin
      ShowMessage('Código ja Cadastrado Anteriormente. Nome: '+DM1.Query1.Fields[0].AsString);
      DBEdit1.SetFocus;
      exit;
      end;
   end;
if DM1.Tb_FPFPCODIGO.Value<0 then
   begin
   ShowMessage('Código tem que ser um valor positivo!');
   DBEdit1.SetFocus;
   exit;
   end;



end;

procedure TFrm_FPag.BBnAtuClick(Sender: TObject);
begin
  inherited;
DM1.Tb_FP.Close;
DM1.Tb_FP.SQL.Clear;
DM1.Tb_FP.SQL.add('Select * from CADFP ');
if trim(Edit1.Text)<>'' then
   begin
   if CAMPO.ItemIndex=0 then
      DM1.Tb_FP.SQL.Add(' where FPDESC like '+chr(39)+EDIT1.Text+'%'+chr(39))
   else
      DM1.Tb_FP.SQL.Add(' where FPCODIGO=0'+fdeixanum(EDIT1.Text))
   end;
DM1.Tb_FP.SQL.Add(' order by FPDESC' );
DM1.Tb_FP.Open;
INCLUIR.Enabled:=True;
ALTERAR.Enabled:=True;
GRAVAR.Enabled :=False;
EXCLUIR.Enabled:=True;
CANCELAR.Enabled:=True;


end;

procedure TFrm_FPag.SAIRClick(Sender: TObject);
begin
  inherited;

  IF trim(mFPagOri)='' THEN
     close;

end;

procedure TFrm_FPag.FormActivate(Sender: TObject);
begin
  inherited;
CAMPO.ItemIndex:=0;
end;

procedure TFrm_FPag.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   DM1.Tb_FPFPCODCLI.Value:=fSonumero(fChamaCli(0,'Frm_fpag',key));
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_FPag.DBEdit3Exit(Sender: TObject);
begin
  inherited;
NOMCLI.Text:='';

if DM1.Tb_FPFPCODCLI.AsFloat<>0 then
   begin
   if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',DM1.Tb_FPFPCODCLI.AsString) then
      begin
      verteclado(0);
      MessageDlg('Cliente não Cadastrado!',mtWarning,[mbOk],0);
      DBEdit3.SetFocus;

      exit;
      end
   else
      begin
      NOMCLI.Text:=DM1.Query1.Fields[0].AsString;
      end;
   end;

end;

procedure TFrm_FPag.Src_FPDataChange(Sender: TObject; Field: TField);
begin
  inherited;
if not (DM1.Tb_FP.State in [dsEdit,dsInsert]) then
   begin
   NOMCLI.Text:='';
   if DM1.Tb_FPFPCODCLI.AsFloat<>0 then
      begin
      if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',DM1.Tb_FPFPCODCLI.AsString) then
         NOMCLI.Text:=DM1.Query1.Fields[0].AsString
      end;
   NOMBCO.Text:='';
   if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',DM1.Tb_FPFPCODBCO.AsString) then
      NOMBCO.Text:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TFrm_FPag.FormCreate(Sender: TObject);
begin
  inherited;
if codusr<>1111 then
   MANUT.Visible:=false
else
   MANUT.Visible:=true;

CAMPO.ItemIndex:=0;

end;

procedure TFrm_FPag.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if mFPagOri='' then
   begin
   PC1.ActivePage:=tsCad;
   if MANUT.Visible then
      ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   mFPagOri:='';
   end;


end;

procedure TFrm_FPag.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

if (key=9) or (key=27) then
   begin
   if mFPagOri='' then
      begin
      PC1.ActivePage:= tsCad;
      if MANUT.Visible then
         ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      mFPagOri:='';
      end;
   abort;
   end;

end;

procedure TFrm_FPag.DBE_CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   DM1.Tb_FPFPCODBCO.Value:=ValFloat(fChamaBco(0,'frm_FPag',Key));
   if trim(DBE_CODBCO.Text)<>'' then
      DBE_CODBCOExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_FPag.DBE_CODBCOExit(Sender: TObject);
begin
  inherited;
NOMBCO.Text:='';

if DM1.Tb_FPFPCODBCO.AsFloat<>0 then
   begin
   if not flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',DM1.Tb_FPFPCODBCO.AsString) then
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      DBE_CODBCO.SetFocus;
      exit;
      end
   else
      begin
      NOMBCO.Text:=DM1.Query1.Fields[0].AsString;
      end;
   end;
end;

procedure TFrm_FPag.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_FPag.FormShow(Sender: TObject);
begin
  inherited;
Edit1.SetFocus;
end;

procedure TFrm_FPag.DBEdit2Exit(Sender: TObject);
begin
  inherited;
if DM1.Tb_FP.State in [dsedit,dsinsert] then
   begin
   DM1.Tb_FPFPDESC.AsString:=RetiraAcentos (DM1.Tb_FPFPDESC.AsString );
   end
end;

end.
