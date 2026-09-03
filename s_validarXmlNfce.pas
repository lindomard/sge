unit s_validarXmlNfce;

interface
uses
  ComObj, SysUtils, Dialogs, s_nfce, s_Nfe_Aguarde,
  Forms,  Mask, DB, DBTables, Messages, Windows ,Classes;

function fVEnviarXMLParaValidar(pDadosNFCEChvAcesso: tDadosNFCEChvAcesso): boolean;

implementation

uses S_DM1,s_Sintegra_Advert, lerarq;


function fVEnviarXMLParaValidar(pDadosNFCEChvAcesso: tDadosNFCEChvAcesso): boolean;
var
form_nfe_aguarde: TFrm_Nfe_Aguarde;
mXmlString: TStrings;
peletronica: boolean;

mMensagem: string;
begin
result:=false;

if not fTestarServidor_NFE(pDadosNFCEChvAcesso.pCodEmp,'SERIE1',mmensagem, peletronica) then
   begin
   exit;
   end;


mXmlString:= TStringList.Create;
mXmlString.Add(pDadosNFCEChvAcesso.pXml);
application.CreateForm(TFrm_Nfe_Aguarde, Form_Nfe_Aguarde);



form_nfe_aguarde.mNFEretorno.mentra_operacao:=pDadosNFCEChvAcesso.pServico;
form_nfe_aguarde.mNFEretorno.mentra_evento   :=pDadosNFCEChvAcesso.pServico;
form_nfe_aguarde.mNFEretorno.mentra_chave   :=pDadosNFCEChvAcesso.pChave;
form_nfe_aguarde.mNFEretorno.mentra_codemp  :=pDadosNFCEChvAcesso.pCodEmp;
form_nfe_aguarde.mNFEretorno.mentra_lotseq  :=pDadosNFCEChvAcesso.pChaveAno;
form_nfe_aguarde.mNFEretorno.mentra_numnf   :=pDadosNFCEChvAcesso.pNumdoc;
form_nfe_aguarde.mNFEretorno.mentra_serie   :=pDadosNFCEChvAcesso.pSerieDoc;
form_nfe_aguarde.mNFEretorno.mentra_modelo  :=pDadosNFCEChvAcesso.pModeloDoc;


form_nfe_aguarde.mNFEretorno.mentra_cnpj_emitente    :=DM1.Tb_Empcnpj_masc.AsString;
form_nfe_aguarde.mNFEretorno.mentra_chave_acesso  :=pDadosNFCEChvAcesso.pchv_acesso;
form_nfe_aguarde.mNFEretorno.mentra_xml           :=pDadosNFCEChvAcesso.pXml;



form_nfe_aguarde.Timer_processar.Enabled := true;

form_nfe_aguarde.Timer_processar.Enabled := true;
Form_Nfe_Aguarde.ShowModal;
if (form_nfe_aguarde.mNFEretorno.msaida_cstat<>100)  then    // ENTRAR EM MODO CONTIGENCIA
   begin
   Application.CreateForm(TFrm_Sintegra_Advert, Frm_Sintegra_Advert);
   Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Clear;
   Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Add(form_nfe_aguarde.mNFEretorno.msaida_ret_observacao+#13+form_nfe_aguarde.mNFEretorno.msaida_cstat_motivo);
   Frm_Sintegra_Advert.Memo_xml.Lines.Clear;
   Frm_Sintegra_Advert.Memo_xml.Lines.Add(mXmlString.Text);
   Frm_Sintegra_Advert.tsXml.TabVisible:=true;
   Frm_Sintegra_Advert.TabSheet1.TabVisible:=true;
   Frm_Sintegra_Advert.Memo_xmlRet.Lines.Text:=form_nfe_aguarde.mNFEretorno.msaida_xml_Resposta;

   pDadosNFCEChvAcesso.pRetObs:=form_nfe_aguarde.mNFEretorno.msaida_ret_observacao;
   pDadosNFCEChvAcesso.pcStat :=form_nfe_aguarde.mNFEretorno.msaida_cstat;
   pDadosNFCEChvAcesso.pStatMotivo :=form_nfe_aguarde.mNFEretorno.msaida_cstat_motivo;
   pDadosNFCEChvAcesso.pXml_Cliente :=form_nfe_aguarde.mNFEretorno.msaida_xml_protocolado;
   pDadosNFCEChvAcesso.pDatHorEvento :=form_nfe_aguarde.mNFEretorno.msaida_dathorEve;
   pDadosNFCEChvAcesso.pNumProt :=form_nfe_aguarde.mNFEretorno.msaida_num_protocolo;
   pDadosNFCEChvAcesso.pNumRecibo :=form_nfe_aguarde.mNFEretorno.msaida_Num_Recibo;
   pDadosNFCEChvAcesso.seqeve :=form_nfe_aguarde.mNFEretorno.mentra_Evento;
   Frm_Sintegra_Advert.ShowModal;
   end
else
   result:=true;

FreeAndNil(form_nfe_aguarde);
FreeAndNil(Frm_Sintegra_Advert);

end;

end.
