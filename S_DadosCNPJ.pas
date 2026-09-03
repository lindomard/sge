unit S_DadosCNPJ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs,
  StdCtrls, Buttons,  ExtCtrls, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, WinInet, Spin, DB, DBClient,uLkJSON,StrUtils;

{
type
  TDadosContribuinte = record
  atividade_principal_text: string;
  atividade_principal_code: string;
  data_situacao: tdatetime;
  nome: string;
  fantasia: string;
  cep: string;
  logradouro: string;
  complemento: string;
  numero: string;

  bairro: string;
  municipio: string;
  codigo_ibge: string;
  uf: string;
  email: string;
  cnpj: string;
  cpf: string;
  inscricao_estadual: string;
  data_ultima_atualizacao: tdatetime;
  natureza_juridica:  string;
  tipo:  string;
  motivo_situacao:  string;
  situacao_especial:  string;
  data_situacao_especial:  tdatetime;
  telefone:  string;
  atividades_secundarias:  string;
  qsa:  string;
  extra:  string;
  dtiniativ: string;
  dUltSit: string;
  dBaixa: string;
  IEUnica: string;
  IEAtual: string;
  csit: integer;
  regapur: string;
  cnae:string;
  status: string;
  status_descricao:string;
  indCredNFe: integer;
  indCredCTe: integer;
  crt: integer;

  resposta: string;






  end;
}

type
  TFrm_DadosCNPJ = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    BBnAtu: TBitBtn;
    edt_rf_cnpj: TEdit;
    bbSair: TBitBtn;
    Panel2: TPanel;
    Label4: TLabel;
    Edit_CNPJ: TEdit;
    Label3: TLabel;
    Edit_Nome: TEdit;
    Label11: TLabel;
    edt_fantasia: TEdit;
    Label_end: TLabel;
    Edit_Endereco: TEdit;
    Label6: TLabel;
    Edit_Numero: TEdit;
    Label7: TLabel;
    Edit_Complemento: TEdit;
    Label5: TLabel;
    Edit_Cep: TEdit;
    Label8: TLabel;
    Edit_Bairro: TEdit;
    Label9: TLabel;
    edt_municipio: TEdit;
    Label10: TLabel;
    Edt_UF: TEdit;
    Label12: TLabel;
    edt_cnae_principal: TEdit;
    Label13: TLabel;
    Edt_cnae_segundario: TEdit;
    Label14: TLabel;
    edt_datacnpj: TEdit;
    Label15: TLabel;
    edt_codnat_juridica: TEdit;
    bbSairIncluir: TBitBtn;
    Label1: TLabel;
    edt_inscicao_estadual: TEdit;
    edt_codigo_ibge: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    CB_CRT: TComboBox;
    cds_princ: TClientDataSet;
    cds_princabertura: TStringField;
    cds_princsituacao: TStringField;
    cds_princnome: TStringField;
    cds_princporte: TStringField;
    cds_princnatureza_juridica: TStringField;
    cds_princlogradouro: TStringField;
    cds_princnumero: TStringField;
    cds_princcomplemento: TStringField;
    cds_princmunicipio: TStringField;
    cds_princbairro: TStringField;
    cds_princuf: TStringField;
    cds_princcep: TStringField;
    cds_princtelefone: TStringField;
    cds_princdata_situacao: TStringField;
    cds_princcnpj: TStringField;
    cds_princultima_atualizacao: TStringField;
    cds_princstatus: TStringField;
    cds_princfantasia: TStringField;
    cds_princemail: TStringField;
    cds_princefr: TStringField;
    cds_princmotivo_situacao: TStringField;
    cds_princsituacao_especial: TStringField;
    cds_princdata_situacao_especial: TStringField;
    cds_princcapital_social: TStringField;
    cds_princtipo: TStringField;
    cds_atv_princ: TClientDataSet;
    cds_atv_princtext: TStringField;
    cds_atv_princcode: TStringField;
    cds_atv_sec: TClientDataSet;
    cds_atv_seccode: TStringField;
    cds_atv_sectext: TStringField;
    cds_qsa: TClientDataSet;
    cds_qsanome: TStringField;
    cds_qsaqual: TStringField;
    cds_simples: TClientDataSet;
    cds_simplesoptante: TStringField;
    cds_simplesdata_opcao: TStringField;
    cds_simplesdata_exclusao: TStringField;
    cds_simplesultima_atualizacao: TStringField;
    cds_simei: TClientDataSet;
    cds_simeioptante: TStringField;
    cds_simeidata_opcao: TStringField;
    cds_simeidata_exclusao: TStringField;
    cds_simeiultima_atualizacao: TStringField;
    cds_billing: TClientDataSet;
    cds_billingfree: TStringField;
    cds_billingdatabase: TStringField;
    lbl_obscli: TLabel;
    cds_princinscricao_estadual: TStringField;
    cds_princcodigo_ibge: TStringField;
    procedure BBnAtuClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure edt_rf_cnpjChange(Sender: TObject);
    procedure edt_rf_cnpjKeyPress(Sender: TObject; var Key: Char);
    procedure bbSairIncluirClick(Sender: TObject);
  private
    { Private declarations }

//    function fConsultaCNPJ_receita_federal(pcnpj: string; out pDadosContribuinte: TDadosContribuinte): boolean;

    function fConsultaCNPJ_receita_federal2(pcnpj: string): boolean;

    function fbuscarValorCampo(pArquivo,pcampo,ptag: String): String;
    function fbuscarValorCampoComChave(pArquivo,pcampo,ptag: String): String;

    function fbuscarValorCampo_ant(pArquivo,pcampo, ptag : String): String;


    function fPegarDoNFE(pCnpj: String): boolean;


    procedure fCriarDataset;


    function FormatJsonQrCode(Jso: TlkJSONbase; Level:Integer; pSigla: String; pcds: TClientDataSet ): String;



    procedure fLerJsonMemo(pTexto: String);


  public
    { Public declarations }
    mIncluirNovo_rf: Boolean;

  end;

var
  Frm_DadosCNPJ: TFrm_DadosCNPJ;
//  mDadosContribuinte: TDadosContribuinte;
implementation

{$R *.dfm}

uses FUNC, lerarq, Func2, s_Nfe_Aguarde, S_DM1, S_Sintegra_Advert,
  S_NFe_ConsCad;

procedure TFrm_DadosCNPJ.BBnAtuClick(Sender: TObject);
begin
if fsonumero(edt_rf_cnpj.Text)>0 then
   begin
   if not FCGC(fsonumero(edt_rf_cnpj.Text)) then
      begin
      MessageDlg('CNPJ Invalido!',mtError,[mbOk],0);
      edt_rf_cnpj.SetFocus;
      exit;
      end;
     if fConsultaCNPJ_receita_federal2(edt_rf_cnpj.Text) then
      begin
      cds_princ.First;
      cds_atv_princ.First;
      cds_atv_sec.First;
      cds_qsa.First;
      cds_simples.First;
      cds_simei.First;
      cds_billing.First;



      Edit_CNPJ.Text          :=MaskCPFCNPJ(cds_princcnpj.AsString);
      edt_inscicao_estadual.Text     :=cds_princinscricao_estadual.Value;

      Edit_Nome.Text          :=cds_princnome.AsString;
      edt_fantasia.Text       :=cds_princfantasia.AsString;
      Edit_Endereco.Text      :=cds_princlogradouro.AsString;
      Edit_Numero.Text        :=cds_princnumero.AsString;
      Edit_Complemento.Text   :=cds_princcomplemento.AsString;
      Edit_Cep.Text           :=cds_princcep.AsString;
      Edit_Bairro.Text        :=cds_princbairro.AsString;
      edt_municipio.Text      :=cds_princmunicipio.AsString;
      Edt_UF.Text             :=cds_princuf.AsString;
      edt_codigo_ibge.Text    :=cds_princcodigo_ibge.AsString;
      edt_cnae_principal.Text :=cds_atv_princcode.AsString;
      Edt_cnae_segundario.Text:=cds_atv_seccode.AsString;
      CB_CRT.ItemIndex        :=iif(cds_simplesoptante.AsString='True',1,3);


   if fsonumero(cds_princdata_situacao.asstring)>0 then
      begin
      if length(cds_princdata_situacao.asstring)>10 then
         cds_princdata_situacao.asstring:=copy(cds_princdata_situacao.asstring,1,10);
      try
         edt_datacnpj.Text       :=FormatDateTime(fdt2, Strtodatetime(cds_princdata_situacao.asstring))
      except
         edt_datacnpj.Clear;
         end;
      end;




      edt_codnat_juridica.Text:=cds_princnatureza_juridica.AsString;
      if fLerGenerico_query('CADCLI','CCODCLI,CRAZAO',' CCNPJ='+fdeixanum(Edit_CNPJ.Text),query_consulta) then
         begin
         lbl_obscli.Caption:='Cliente ja Cadastrado Código '+query_consulta.fieldbyName('CCODCLI').asstring+' Razão social '+query_consulta.fieldbyname('CRAZAO').Asstring;
         lbl_obscli.Visible:=true;
         bbSairIncluir.Visible:=false;
         end
      else
        begin
        lbl_obscli.Visible:=false;
        bbSairIncluir.Visible:=true;
        end;
      end;



{
//      mDadosContribuinte     :F=fConsultaCNPJ_receita_federal(edt_rf_cnpj.Text);
      Edit_CNPJ.Text          :=MaskCPFCNPJ(mDadosContribuinte.cnpj);
      edt_inscicao_estadual.Text     :=mDadosContribuinte.inscricao_estadual;

      Edit_Nome.Text          :=mDadosContribuinte.nome;
      edt_fantasia.Text       :=mDadosContribuinte.fantasia;
      Edit_Endereco.Text      :=mDadosContribuinte.logradouro;
      Edit_Numero.Text        :=mDadosContribuinte.numero;
      Edit_Complemento.Text   :=mDadosContribuinte.complemento;
      Edit_Cep.Text           :=mDadosContribuinte.cep;
      Edit_Bairro.Text        :=mDadosContribuinte.bairro;
      edt_municipio.Text      :=mDadosContribuinte.municipio;
      Edt_UF.Text             :=mDadosContribuinte.uf;
      edt_codigo_ibge.Text    :=mDadosContribuinte.codigo_ibge;
      edt_cnae_principal.Text :=mDadosContribuinte.atividade_principal_code;
      Edt_cnae_segundario.Text:=mDadosContribuinte.atividades_secundarias;
      CB_CRT.ItemIndex        :=mDadosContribuinte.crt;

      if mDadosContribuinte.data_situacao>pdatanula then
         edt_datacnpj.Text       :=FormatDateTime(fdt2, mDadosContribuinte.data_situacao)
      else
         edt_datacnpj.Clear;


//      fPegarDoNFE(fDeixanum(edit_cnpj.text));
      edt_codnat_juridica.Text:=mDadosContribuinte.natureza_juridica;
      if fLerGenerico_query('CADCLI','CRAZAO',' CCNPJ='+fdeixanum(Edit_CNPJ.Text),query_consulta) then
         bbSairIncluir.Visible:=false
      else
        bbSairIncluir.Visible:=true;
      end;
      }
  end;


end;

procedure TFrm_DadosCNPJ.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_DadosCNPJ.bbSairIncluirClick(Sender: TObject);
begin
mIncluirNovo_rf:=true;
close;

end;

procedure TFrm_DadosCNPJ.edt_rf_cnpjChange(Sender: TObject);
begin
TEdit(Sender).Text := Mascara_edit(TEdit(Sender).Text,pmaskcnpj);
TEdit(Sender).SelStart := Length(TEdit(Sender).Text);

end;

procedure TFrm_DadosCNPJ.edt_rf_cnpjKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9',#8]) then Abort;

end;




{
function  TFrm_DadosCNPJ.fConsultaCNPJ_receita_federal(pcnpj: string; out pDadosContribuinte: TDadosContribuinte): boolean;

var
Temporario : String;

mUrl: ansistring;
lResponse : TStringStream;
   idHttp2: TIdHTTP;
NetHandle: HINTERNET;
begin


try
   idHttp2 := TIdHTTP.Create(self);
   lResponse := TStringStream.Create('');

   mUrl := 'https://www.receitaws.com.br/v1/cnpj/' + fdeixanum(pCnpj);
   idHttp2.GET(mUrl, lResponse);
   lResponse.Position := 0;
  // Exemplo de uso do response : carregar o conteúdo num RichEdit :
   Temporario:=lResponse.DataString;
//   reResp.Lines.LoadFromStream(lResponse);

//   Temporario   := IdHTTP1.Get(mUrl);//'checkip.dyndns.org');      For X := 1 to Length(Temporario) do
finally
   lResponse.Free();
end;
end;

 }

function  TFrm_DadosCNPJ.fConsultaCNPJ_receita_federal2(pcnpj: string): boolean;

var
NetHandle: HINTERNET;
  UrlHandle: HINTERNET;
  Buffer: array[0..1024] of Char;
  BytesRead: dWord;
  mUrl: ansistring;

  mResult: string;
  mConteudo : string;
//  mDadosContribuinte_local: TDadosContribuinte;

  mdatasit: string;
  



begin
lbl_obscli.Visible:=false;

result:=false;
mUrl := 'https://www.receitaws.com.br/v1/cnpj/' + fdeixanum(pCnpj);
mResult := '';

NetHandle := InternetOpen('Delphi 7.x', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);

if Assigned(NetHandle) then
   begin
   UrlHandle := InternetOpenUrl(NetHandle, PChar(mUrl), nil, 0, INTERNET_FLAG_RELOAD, 0);
   if Assigned(UrlHandle) then
       { UrlHandle valid? Proceed with download }
      begin
      FillChar(Buffer, SizeOf(Buffer), 0);
        repeat
        mResult :=   mResult + Buffer;
        FillChar(Buffer, SizeOf(Buffer), 0);
        InternetReadFile(UrlHandle, @Buffer, SizeOf(Buffer), BytesRead);
         until BytesRead = 0;
         InternetCloseHandle(UrlHandle);
      end
   else
     { UrlHandle is not valid. Raise an exception. }
     raise Exception.CreateFmt('Cannot open URL %s', [mUrl]);
     InternetCloseHandle(NetHandle);
   end
else
  { NetHandle is not valid. Raise an exception }
  raise Exception.Create('Unable to initialize Wininet');

if trim(mResult)<>'' then
   begin
   fLerJsonMemo(mResult);
{

   fSalvarTextoparaArquivo2(mResult);
   mConteudo :=mResult;
   mDadosContribuinte_local.atividade_principal_text:=fbuscarValorCampo(mconteudo,'text','atividade_principal');
   mDadosContribuinte_local.atividade_principal_code:=fbuscarValorCampo(mconteudo,'code','atividade_principal');
   mdatasit                       :=fbuscarValorCampo(mconteudo,'data_situacao','');
   if fsonumero(mdatasit)>0 then
      begin
      if length(mdatasit)>10 then
         mdatasit:=copy(mdatasit,1,10);
      try
         mDadosContribuinte_local.data_situacao           :=Strtodatetime(mdatasit);
      except
         mDadosContribuinte_local.data_situacao           :=pDataNula;
         end;
      end
   else
      mDadosContribuinte_local.data_situacao           :=pdatanula;

   try
      mDadosContribuinte_local.data_ultima_atualizacao           :=Strtodatetime(fExtrairDataHoraXml('A',fbuscarValorCampo(mconteudo,'ultima_atualizacao','')));
   except
      end;
   mDadosContribuinte_local.nome                    := fbuscarValorCampo(mconteudo,'nome','');
   mDadosContribuinte_local.fantasia                :=fbuscarValorCampo(mconteudo,'fantasia','');
   mDadosContribuinte_local.cep                     :=fbuscarValorCampo(mconteudo,'cep','');
   mDadosContribuinte_local.logradouro              :=fbuscarValorCampo(mconteudo,'logradouro','');
   mDadosContribuinte_local.complemento             :=fbuscarValorCampo(mconteudo,'complemento','');
   mDadosContribuinte_local.numero                  :=fbuscarValorCampo(mconteudo,'numero','');
   mDadosContribuinte_local.bairro                  :=fbuscarValorCampo(mconteudo,'bairro','');
   mDadosContribuinte_local.municipio               :=fbuscarValorCampo(mconteudo,'municipio','');
   mDadosContribuinte_local.uf                      :=fbuscarValorCampo(mconteudo,'uf','');
   mDadosContribuinte_local.email                   :=fbuscarValorCampo(mconteudo,'email','');
   mDadosContribuinte_local.cnpj                    :=fbuscarValorCampo(mconteudo,'cnpj','');


   mDadosContribuinte_local.natureza_juridica       :=fbuscarValorCampo(mconteudo,'natureza_juridica','');
   mDadosContribuinte_local.tipo                    :=fbuscarValorCampo(mconteudo,'tipo','');
   mDadosContribuinte_local.motivo_situacao         :=fbuscarValorCampo(mconteudo,'motivo_situacao','');
   mDadosContribuinte_local.situacao_especial       :=fbuscarValorCampo(mconteudo,'situacao_especial','');
   try
      mDadosContribuinte_local.data_situacao_especial  :=Strtodatetime(fExtrairDataHoraXml('A',fbuscarValorCampo(mconteudo,'data_situacao_especial','')));
   except
      end;
   mDadosContribuinte_local.telefone                :=fbuscarValorCampo(mconteudo,'telefone','');
   mDadosContribuinte_local.atividades_secundarias  :=fbuscarValorCampo(mconteudo,'code','atividades_secundarias');
   mDadosContribuinte_local.qsa                     :=fbuscarValorCampo(mconteudo,'nome','qsa');
   mDadosContribuinte_local.extra                   :=fbuscarValorCampo(mconteudo,'extra','');
   mDadosContribuinte_local.resposta                :='OK';

//   if lowercase(fbuscarValorCampoComChave(mconteudo,'simples','optante'))='true' then
   if lowercase(fbuscarValorCampo(mconteudo,'simples','optante'))='true' then
      mDadosContribuinte_local.crt := 1
   else
      mDadosContribuinte_local.crt := 3;

   pDadosContribuinte := mDadosContribuinte_local;
}
   result:=true;
   end
else
   result:=false;



end;


function TFrm_DadosCNPJ.fbuscarValorCampo(pArquivo,pcampo,ptag: String): String;
var
mpos_inidados: integer;
mpos_fin: integer;
mpos_fin1: integer;
mpos_fin2: integer;
mRetorno: string;
msaida: tstringlist;
begin

mRetorno:='';
mpos_inidados:=pos(uppercase('"'+pcampo+'"'),uppercase(parquivo));
if mpos_inidados>0 then
   begin
   mRetorno:=copy(parquivo,mpos_inidados+length(pCampo)+5,length(parquivo));
   mpos_fin1:=pos('"',mRetorno);
   if mpos_fin1>0 then
      mRetorno:=copy(mRetorno,1,mpos_fin1-1);
   end;

result:=mretorno;
end;

function TFrm_DadosCNPJ.fbuscarValorCampoComChave(pArquivo,pcampo,ptag: String): String;
var
mpos_inidados: integer;
mpos_fin: integer;
mpos_fin1: integer;
mpos_fin2: integer;
mRetorno: string;
msaida: tstringlist;
begin

mRetorno:='';
mpos_inidados:=pos(uppercase('"'+pcampo+'"'),uppercase(parquivo));
if mpos_inidados>0 then
   begin
   mRetorno:=copy(parquivo,mpos_inidados+length(pCampo)+7,length(parquivo));
   mpos_fin1:=pos(',',mRetorno);
   if mpos_fin1>0 then
      mRetorno:=copy(mRetorno,1,mpos_fin1-1);
   end;

result:=mretorno;
end;


function TFrm_DadosCNPJ.fbuscarValorCampo_ant(pArquivo,pcampo,ptag: String): String;
var
mpos_inidados: integer;
mpos_fin: integer;
mpos_fin1: integer;
mpos_fin2: integer;
mRetorno: string;
msaida: tstringlist;
begin

mRetorno:='';
if trim(pTag)<>'' then
   begin
   mpos_inidados:=pos(uppercase('"'+pTag+'"'),uppercase(parquivo));
   if mpos_inidados>0 then
      begin
      mRetorno:=copy(parquivo,mpos_inidados+1,length(parquivo));
      mpos_fin:=pos('}]',mRetorno);
      if mpos_fin>0 then
         begin
         mRetorno:=copy(mRetorno,1, mpos_fin+2);
         if trim(mRetorno)<>'' then
            begin
            pArquivo := mRetorno;
            end;
         end;



      end;
   end;
mpos_inidados :=0;
mpos_fin :=0;
mpos_fin1:=0;
mpos_fin2:=0;


mpos_inidados:=pos(uppercase('"'+pcampo+'"'),uppercase(parquivo));
if mpos_inidados>0 then
   begin
   mRetorno:=copy(parquivo,mpos_inidados+1,length(parquivo));
   mpos_fin1:=pos('}',mRetorno);
   mpos_fin2:=pos(',"',mRetorno);
   if ((mpos_fin1>0) and (mpos_fin2>0)) then
      begin
      if mpos_fin1>mpos_fin2 then
         mpos_fin:=mpos_fin2
      else
         mpos_fin:=mpos_fin1;
      end
   else if mpos_fin1>0 then
     mpos_fin:=mpos_fin1
   else if mpos_fin2>0 then
     mpos_fin:=mpos_fin2;
  if mpos_fin>0 then
     mRetorno:=copy(mRetorno,3+length(pcampo) ,mpos_fin-(length(pcampo)+3));
   if length(mRetorno)>0 then
      begin
      if mRetorno[1]='"' then mRetorno:=copy(mRetorno,2,length(mRetorno)-1);
      if mRetorno[length(mRetorno)]='"' then mRetorno:=copy(mRetorno,1,length(mRetorno)-1);

      mRetorno:=StringReplace(mretorno, '\r', '', [rfReplaceAll, rfIgnoreCase]);
      mRetorno:=trim(mRetorno);
      end;
   end;
//msaida:=tstringlist.create;
//msaida.Add(mRetorno);
//msaida.SaveToFile('c:\retorno_'+pcampo+'txt');
//freeandnil(msaida);
result:=mretorno;
end;



function TFrm_DadosCNPJ.fPegarDoNFE(pCnpj: String): boolean;
var
Form_Nfe_Aguarde: TFrm_Nfe_Aguarde;
//mXmlString: String;
mXmlString: tStrings;
const
   mcnpjEmitente = '28.194.914/0002-30';
begin

mXmlString:= tStrings.create();

   mXmlString:= TStringList.Create;
   mXmlString.Add('<?xml version="1.0" encoding="utf-8"?>');
   mXmlString.Add('<ConsCad versao="2.00" xmlns="http://www.portalfiscal.inf.br/nfe">');
   mXmlString.Add('<infCons>');
   mXmlString.Add(fGeraXMLString(0,'xServ','CONS-CAD'));
   mXmlString.Add(fGeraXMLString(0,'UF','GO'));
   mXmlString.Add(fGeraXMLString(0,'CNPJ',insere(fdeixanum(pCnpj),'0',14)));
   mXmlString.Add('</infCons>');
   mXmlString.Add('</ConsCad>');



mendip_Servidor_nfe_ativo:='69.162.124.34';

//mXmlString :='{"type":"VORecebeXMLNFE.TVORecebeXMLNFE","id":1,"fields":{"Servico":8,"CnpjEmitente":"'+mcnpjEmitente+'","Xml_Entrada":"<ConsCad versao=\"2.00\" xmlns=\"http://www.portalfiscal.inf.br/nfe\"><infCons><xServ>CONS-CAD</xServ><UF>GO</UF><CNPJ>'+pCnpj+'</CNPJ></infCons></ConsCad>","OutrasInformacoes":""}}';

   Application.createform(TFrm_Nfe_Aguarde, Form_Nfe_Aguarde);
   form_nfe_aguarde.mNFEretorno.mentra_operacao:=Nfe_Consulta_Cadastro;
   form_nfe_aguarde.mNFEretorno.mentra_evento   :=Nfe_Consulta_Cadastro;
   form_nfe_aguarde.mNFEretorno.mentra_chave   :=0;
   form_nfe_aguarde.mNFEretorno.mentra_codemp  :=0;
   form_nfe_aguarde.mNFEretorno.mentra_lotseq  :=0;
   form_nfe_aguarde.mNFEretorno.mentra_numnf   :=0;
   form_nfe_aguarde.mNFEretorno.mentra_serie   :='';
   form_nfe_aguarde.mNFEretorno.mentra_modelo  :='';



// lindomar
   form_nfe_aguarde.mNFEretorno.mentra_cnpj_emitente    :=mcnpjEmitente;

   form_nfe_aguarde.mNFEretorno.mentra_chave_acesso  :='';
   form_nfe_aguarde.mNFEretorno.mentra_xml           :=mXmlString.Text;
   form_nfe_aguarde.Timer_processar.Enabled := true;
   Form_Nfe_Aguarde.ShowModal;
   if form_nfe_aguarde.mNFEretorno.msaida_cstat=0 then
      begin
      result:=false;
      end
   else if (form_nfe_aguarde.mNFEretorno.msaida_cstat<>111) AND
           (form_nfe_aguarde.mNFEretorno.msaida_cstat<>112) then
      begin
       result:=false;
      end
   else
      begin

      mnfe_Num_Protolo      :=form_nfe_aguarde.mNFEretorno.msaida_num_protocolo;
      mnfe_nrecibo          :=form_nfe_aguarde.mNFEretorno.msaida_num_recibo;
      mnfe_mensagem_retorno :=form_nfe_aguarde.mNFEretorno.msaida_ret_observacao;
      mnfe_dh_valcertificado:=form_nfe_aguarde.mNFEretorno.msaida_ret_certdigital_venc_dathor;
      mNfe_dathorEve        :=form_nfe_aguarde.mNFEretorno.msaida_dathorEve;
      mnfe_stat_Prot        :=inttostr(form_nfe_aguarde.mNFEretorno.msaida_cstat);
      mnfe_stat_Prot_Desc   :=form_nfe_aguarde.mNFEretorno.msaida_cstat_motivo;


      edt_inscicao_estadual.Text    := getConteudoTAG(form_nfe_aguarde.mNFEretorno.msaida_xml_protocolado,'IE','','','');

      edt_fantasia.Text  := getConteudoTAG(form_nfe_aguarde.mNFEretorno.msaida_xml_protocolado,'xFant','','','');


      result:=true;
      end;
   freeandnil(form_nfe_aguarde);

end;



procedure TFrm_DadosCNPJ.fCriarDataset;
begin

cds_princ.close;
cds_princ.CreateDataSet;
cds_princ.open;

cds_atv_princ.close;
cds_atv_princ.CreateDataSet;
cds_atv_princ.open;

cds_atv_sec.close;
cds_atv_sec.CreateDataSet;
cds_atv_sec.open;

cds_qsa.close;
cds_qsa.CreateDataSet;
cds_qsa.open;

cds_simples.close;
cds_simples.CreateDataSet;
cds_simples.open;


cds_simei.close;
cds_simei.CreateDataSet;
cds_simei.open;

cds_billing.close;
cds_billing.CreateDataSet;
cds_billing.open;






end;


function TFrm_DadosCNPJ.FormatJsonQrCode(Jso: TlkJSONbase; Level:Integer; pSigla: String; pcds: TClientDataSet ): String;

var
I:Integer;
mNome: String;
mValue: String;
mTemp: String;

   procedure fCriarApend;
   begin
         case AnsiIndexStr(mNome,
      ['atividade_principal','atividades_secundarias','qsa','simples','simei','billing'])
         of
         0: begin
            cds_atv_princ.Append;
            end;
         1: begin
            cds_atv_sec.Append;
            end;
         2: begin
            cds_qsa.Append;
            end;
         3: begin
            cds_simples.append;
            end;
         4: begin
            cds_simei.append;
            end;
         5: begin
            cds_billing.Append;
            end;
         end;

   end;


   procedure fVerRedirecionamento;
   begin
         case AnsiIndexStr(mNome,
      ['atividade_principal','atividades_secundarias','qsa','simples','simei','billing'])
         of
         0: begin
            Result:=Result+StringOfChar(#9,Level+1)+FormatJsonQrCode(Jso.Child[I],Level+1,mNome,cds_atv_princ);
            end;
         1: begin
            Result:=Result+StringOfChar(#9,Level+1)+FormatJsonQrCode(Jso.Child[I],Level+1,mNome,cds_atv_sec);
            end;
         2: begin
            Result:=Result+StringOfChar(#9,Level+1)+FormatJsonQrCode(Jso.Child[I],Level+1,mNome,cds_qsa);
            end;
         3: begin
            Result:=Result+StringOfChar(#9,Level+1)+FormatJsonQrCode(Jso.Child[I],Level+1,mNome,cds_simples);
            end;
         4: begin
            Result:=Result+StringOfChar(#9,Level+1)+FormatJsonQrCode(Jso.Child[I],Level+1,mNome,cds_simei);
            end;
         5: begin
            Result:=Result+StringOfChar(#9,Level+1)+FormatJsonQrCode(Jso.Child[I],Level+1,mNome,cds_billing);
            end;
         else
            begin
            Result:=Result+StringOfChar(#9,Level+1)+FormatJsonQrCode(Jso.Child[I],Level+1,mNome,cds_princ)
            end;
         end;

   end;

begin

mNome :='';
mValue:='';


if (jso=nil) then
   begin
   exit;
   end;


if Jso is TlkJSONobjectmethod then
   begin
   with TlkJSONobjectMethod(Jso) do
      begin
      Result:='"'+Name+'" : ';

      mNome:=Name;
      Jso:=ObjValue;
{
      try
         mTemp:=jso.Value;
      except
         end;

  }
      end;
	 end
else
   Result:='';
//TlkJSONObject(Jso).IndexOfName()
if Jso is TlkJSONObject then
   begin
   Result:=Result
   +'{'#13#10;
   mValue:='';

   if Jso.Count>0 then
      begin
      if trim(mnome)='' then
         begin
             mNome:=pSigla;
         end;

   // termino

      if trim(mnome)='' then
         begin
             mNome:=Name;
         end;
      fCriarApend;
      end;



   for I := 0 to Jso.Count - 1 do
      begin
      // inicio

         fVerRedirecionamento;

      end;

   Result:=Result+StringOfChar(#9,Level)+'}';

//     mValue:=mValue+StringOfChar(#9,Level);
   end
else if Jso is TlkJSONlist then
   begin
   Result:=Result+'['#13#10;



   if Jso.Count>0 then
      begin
      if trim(mnome)='' then
         begin
             mNome:=pSigla;
         end;

   // termino

      if trim(mnome)='' then
         begin
             mNome:=Name;
         end;
      fCriarApend;
      end;


   for I := 0 to Jso.Count - 1 do
      begin
      fVerRedirecionamento;


	    if I<>Jso.Count-1 then
         Result:=Result+','#13#10
      else
   	     Result:=Result+#13#10;
     	end;
   Result:=Result+StringOfChar(#9,Level)+']';
   end
else
   begin
   if Jso.SelfType=jsString then
      begin
      Result:=Result+'"'+Jso.Value+'"';
      mValue:=Jso.Value;

//      if trim(mvalue)='' then
//         mvalue:=mNome + ' é nulo';

      end
   else
      begin
      mValue:=VarToStr(Jso.Value);

  	   Result:=Result+VarToStr(Jso.Value);
      end;
   end;
if trim(mNome)<>'' then
   begin
   try
   if trim(mValue)<>'' then
      begin
      pcds.FieldByName(mNome).Value := mValue;
      end;

//   Memo_resultados.Lines.add('sigla '+ pSigla +' nome: '+ mNome+' value '+mvalue);

   except
      end;
   end;
end;



procedure TFrm_DadosCNPJ.fLerJsonMemo(pTexto: String);
var
Jso: TlkJSONbase;

begin
fCriarDataset;


if trim(pTexto)<>'' then
   begin
   Jso := TlkJSON.ParseText(RetiraAcentos(pTexto));
   try
      cds_princ.Append;
      FormatJsonQrCode(Jso,0,'',cds_princ);
      if cds_princ.State in [dsEdit,dsInsert] then
         cds_princ.post;
      if cds_atv_princ.State in [dsEdit,dsInsert] then
         cds_atv_princ.post;

      if cds_atv_sec.State in [dsEdit,dsInsert] then
         cds_atv_sec.post;

      if cds_qsa.State in [dsEdit,dsInsert] then
         cds_qsa.post;

      if cds_simples.State in [dsEdit,dsInsert] then
         cds_simples.post;

      if cds_simei.State in [dsEdit,dsInsert] then
         cds_simei.post;

      if cds_billing.State in [dsEdit,dsInsert] then
         cds_billing.post;




   finally
      Jso.Free;
      end;
   end;

end;




end.
