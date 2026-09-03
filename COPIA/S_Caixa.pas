unit S_Caixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, s_DM1, db, dbtables, func,
   func2, S_Bco,lerarq,S_DM4;

type
  TFrm_Caixa = class(TForm)
    bbSair: TBitBtn;
    bbGravar: TBitBtn;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    CODBCO_ATU: TEdit;
    NOMBCO_ATU: TEdit;
    Label4: TLabel;
    CODECF_ATU: TEdit;
    NOMECF_ATU: TEdit;
    Label5: TLabel;
    LOTMOV_ANT: TEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    MCODCAI: TEdit;
    NOMECF: TEdit;
    Label7: TLabel;
    NOMBCO: TEdit;
    MCODBCO: TEdit;
    Label1: TLabel;
    MLOTMOV: TEdit;
    bbSalvarPadrao: TBitBtn;
    procedure bbSairClick(Sender: TObject);
    procedure MCODCAIExit(Sender: TObject);
    procedure bbGravarClick(Sender: TObject);
    procedure MCODBCOExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MCODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure MCODCAIKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbSalvarPadraoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Caixa: TFrm_Caixa;

implementation

{$R *.DFM}

procedure TFrm_Caixa.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Caixa.MCODCAIExit(Sender: TObject);
begin
if ValFloat(MCODCAI.Text)<=0 then
   begin
   MCODCAI.Text:='';
   NOMECF.Text:='Não Definido';
   end
else
   begin
   MCODCAI.Text:=fdeixanum(MCODCAI.Text);
   if not (bbSair.Focused) and (fsonumero(MCODCAI.Text)>0) then
      begin
      if not flcadecf(1,0,MCODCAI.Text) then
         begin
         MessageDlg('Emissor de Cupom Fiscal Não Cadastrado!',mtWarning,[mbOk],0);
         MCODCAI.SetFocus;
         end
      else
         NOMECF.Text:=DM1.Tb_ECFCFNOME.Value;
      end;
   end;   
end;

procedure TFrm_Caixa.bbGravarClick(Sender: TObject);
begin


   if not flcadbco(1,0,0,MCODBCO.Text) then
      begin
      MessageDlg('Banco Nao Cadastrado!',mtWarning,[mbOk],0);
      MCODBCO.SetFocus;
      exit;
      end;
{
   if not flcadecf(1,0,MCODCAI.Text) then
      begin
      MessageDlg('Impressora Fiscal Não Cadastrada!',mtWarning,[mbOk],0);
      MCODCAI.SetFocus;
      exit;
      end;
}
if fsonumero(MLOTMOV.Text)=0 then
   begin
   MessageDlg('Favor Informar o Lote de Movimento!',mtWarning,[mbOk],0);
   MLOTMOV.SetFocus;
   exit;
   end;

if DM1.Tb_ECFCFCRITS.Value=1 then
   begin
   mValidarSenha.pTipo:=0;
   mValidarSenha.pCodusr:=codusr;
   mValidarSenha.pCodSen:=50;
   mValidarSenha.pCodEmp:=0;
   mValidarSenha.pCodCli:=DM1.Tb_CliCCODCLI.Value;
   mValidarSenha.pLotSeq:=0;
   mValidarSenha.pChave :=0;
   mValidarSenha.pOrdem :=0;
   mValidarSenha.pTexto :='Senha para Mudar de Caixa';
   mValidarSenha.pChave_St:='';
   mValidarSenha.pDesc_requisitado :=0;

   if fValidaSenha(mValidarSenha)<>0 then
      exit;
   end;
codecf:=DM1.Tb_ECFCFCAIXA.AsInteger;
codcai:=DM1.Tb_BcoBCCODBCO.AsInteger;
lotmov:=Valint(MLOTMOV.Text);
close;
end;

procedure TFrm_Caixa.MCODBCOExit(Sender: TObject);
begin
MCODBCO.Text:=fdeixanum2(MCODBCO.Text);
if fsonumero(MCODBCO.Text)<>0 then
   begin
   if not flcadbco(1,0,0,MCODBCO.Text) then
      begin
      MessageDlg('Banco Não Cadastrado!',mtWarning,[mbOk],0);
      MCODBCO.SetFocus;
      end
   else
      begin
      NOMBCO.Text:=DM1.Tb_BcoBCBANCO.Value;
      if fsonumero(MLOTMOV.Text)=0 then
         begin
         MLOTMOV.Text:=FloatToStr(DM1.Tb_BcoBCLOTMOV.Value+1);
         MLOTMOV.Update;
         end;
      end;
   end;
end;

procedure TFrm_Caixa.FormActivate(Sender: TObject);
begin
flcadpar01(0,0,'1');
CODECF_ATU.Text:=IntToStr(codecf);
if flcadecf(1,0,IntTostr(codecf)) then
   NOMECF_ATU.Text:=DM1.Tb_ECFCFNOME.Value;
CODBCO_ATU.Text:=IntToStr(codcai);
if flcadbco(1,0,0,IntToStr(codcai)) then
   NOMBCO_ATU.Text:=DM1.Tb_BcoBCBANCO.Value;
LOTMOV_ANT.Text:=IntTostr(lotmov);
end;

procedure TFrm_Caixa.MCODBCOKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   MCODBCO.Text:=fChamaBco(0,'frm_Caixa',Key);
   if trim(MCODBCO.Text)<>'' then
      MCODBCOExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Caixa.MCODCAIKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   MCODCAI.Text:=fChamaPECF(0,'frm_rdev','');
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Caixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//if (FormState<>[fsModal]) then
//   Action := caFree;
end;

procedure TFrm_Caixa.bbSalvarPadraoClick(Sender: TObject);
begin

if valint(mcodbco.text)>0 then
   begin
   fDeletaPadroes(0,'_CAIXA','');
   fGravaPadroes(0,'MCODBCO'    ,'text'   ,'_CAIXA',MCODBCO.Text);
   MessageDlg('Gravado!',mtInformation,[MbOk],0);
   end;
end;

end.
