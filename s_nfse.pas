unit s_nfse;

interface


uses Forms, SysUtils, Dialogs, Mask, DB, DBTables, Messages, Windows ,Classes
    , Controls, StdCtrls, ExtCtrls, checklst, func,  RDPrint
     ,printers,S_Si,S_Impres,RlPrinters,S_Agde_NFE, WPCTRRich,variants
     ,  xmldom, XMLIntf, msxmldom, XMLDoc, ADODB,jpeg, winspool,s_Nfe_Aguarde,s_nfce,s_NFCE_Duplicada
     , IdCoderMIME;


type
  tResposta = record
  ok: boolean;
  codigoResp: string;
  motivoResp: WideString;
  xmlCliente: WideString;
end;

type
   tNfse = class



   function fCancelarNfse(pChaveNfse: String;pAmbiente,pMotivo,pEvento: String): tResposta;


   function fConsultarNfse(pNumero: integer;pAmbiente: String; pDanfe: boolean): tResposta;


   procedure SalvarBase64ParaPDF(const Base64Str: WideString; const CaminhoPDF: string);


   function fConsultarURL(pNumero: integer;pAmbiente: String): tResposta;




   end;
implementation

uses func_bde, func_excecoes, Func2, S_DM4, S_DM1, lerarq;



function tNfse.fCancelarNfse(pChaveNfse: String;pAmbiente,pMotivo,pEvento: String): tResposta;



var
Query_emp: TQuery;
Form_Nfe_Aguarde:TFrm_Nfe_Aguarde;
x_nfe: integer;
mXml: TStrings;
mendip_Servidor_nfe_ativo: String;


    procedure pFecharTudo;
    begin
    if query_emp<>nil then
       begin
       query_emp.close;
       freeAndNil(query_emp);
       end;
    end;
begin

Query_emp:=TQuery.Create(nil);
Query_emp.DatabaseName:='SG_ASSOC';
Query_emp.close;
Query_emp.SQL.clear;
Query_emp.SQL.Add('SELECT CGC,INSCMUNIC,LCODMUN_IBGE '
                 +' FROM CADEMP LEFT JOIN CADLOC ON (LCODLOC=CODLOC) '
                 +' AND CODEMP=:CODEMP ');
Query_emp.ParamByName('CODEMP').Value:=codemp;
try
   Query_emp.Open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_emp,45,'_stru '+e.message,'user');
   pfechartudo;
   Result.ok:=false;
   end;
   end;

mXml:=TStringList.create;




mXml.Add('<CancelarNfseEnvio xmlns="http://www.sped.fazenda.gov.br/nfse">');
mXml.Add('<pedRegEvento versao="1.01">');
mXml.Add('<infPedReg Id="PRE'+pChaveNfse+pEvento+'">');
mXml.Add('<tpAmb>'+pAmbiente+'</tpAmb>');
mXml.Add('<verAplic>GerenteNetV1</verAplic>');
mXml.Add(fGeraXMLDataHoraFuso('dhEvento', now));
mXml.Add('<CNPJAutor>'+Insere(query_emp.fieldbyName('CGC').asstring,'0',14)+'</CNPJAutor>');



mXml.Add('<chNFSe>'+pChaveNfse+'</chNFSe>');
mXml.Add('<CodigoMunicipio>'+query_emp.fieldbyName('LCODMUN_IBGE').asstring+'</CodigoMunicipio>');

mXml.Add('<e'+pEvento+'>');
if pEvento='101101' then
   mXml.Add('<xDesc>'+'Cancelamento de NFS-e'+'</xDesc>')
else
   mXml.Add('<xDesc>'+'Solicitação de Análise Fiscal para Cancelamento de NFS-e'+'</xDesc>');
mXml.Add('<cMotivo>1</cMotivo>');
mXml.Add('<xMotivo>'+pMotivo+'</xMotivo>');
mXml.Add('</e'+pEvento+'>');
mXml.Add('</infPedReg>');
mXml.Add('</pedRegEvento>');
mXml.Add('</CancelarNfseEnvio>');



Application.createform(TFrm_Nfe_Aguarde, Form_Nfe_Aguarde);
form_nfe_aguarde.mNFEretorno.mentra_operacao:= NFCe_consultarNfe;
form_nfe_aguarde.mNFEretorno.mentra_evento:= NFCe_consultarNfe;
form_nfe_aguarde.mNFEretorno.mentra_xml:= mXml.Text;

if flfilpad(0,'_principal','SERVNFE') then
   mendip_Servidor_nfe_ativo:=DM4.Tb_FilPad2FPVALOR.AsString;
form_nfe_aguarde.Timer_processar.enabled:=true;
Form_Nfe_Aguarde.ShowModal;
Result.motivoResp:=form_nfe_aguarde.mNFEretorno.msaida_cstat_motivo
                   + mXml.Text;

Result.codigoResp:=inttostr(form_nfe_aguarde.mNFEretorno.msaida_cstat);

freeandnil(mXml);
freeandnil(form_nfe_aguarde);
pFecharTudo;
end;






function tNfse.fConsultarNfse(pNumero: integer;pAmbiente: String; pDanfe: boolean): tResposta;



var
Query_emp: TQuery;
Form_Nfe_Aguarde:TFrm_Nfe_Aguarde;
x_nfe: integer;
mXml: TStrings;
mendip_Servidor_nfe_ativo: String;


    procedure pFecharTudo;
    begin
    if query_emp<>nil then
       begin
       query_emp.close;
       freeAndNil(query_emp);
       end;
    end;
begin

Query_emp:=TQuery.Create(nil);
Query_emp.DatabaseName:='SG_ASSOC';
Query_emp.close;
Query_emp.SQL.clear;
Query_emp.SQL.Add('SELECT CGC,INSCMUNIC,LCODMUN_IBGE '
                 +' FROM CADEMP LEFT JOIN CADLOC ON (LCODLOC=CODLOC) '
                 +' AND CODEMP=:CODEMP ');
Query_emp.ParamByName('CODEMP').Value:=codemp;
try
   Query_emp.Open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_emp,45,'_stru '+e.message,'user');
   pfechartudo;
   Result.ok:=false;
   end;
   end;

mXml:=TStringList.create;
mXml.Add('<ConsultarNfseServicoPrestadoEnvio xmlns="http://www.sped.fazenda.gov.br/nfse">');
mXml.Add('<CodigoMunicipio>'+query_emp.fieldbyName('LCODMUN_IBGE').asstring+'</CodigoMunicipio>');
if pdanfe then
   mXml.Add('<arq>DANFE</arq>');
mXml.Add('<tpAmb>'+pAmbiente+'</tpAmb>');
mXml.Add('<Prestador>');

mXml.Add('<CNPJ>'+Insere(query_emp.fieldbyName('CGC').asstring,'0',14)+'</CNPJ>');
mXml.Add('<IM>'+query_emp.fieldbyname('INSCMUNIC').asstring+'</IM>');
mXml.Add('</Prestador>');
mXml.Add('<NumeroNfse>'+inttostr(pNumero)+'</NumeroNfse>');
mXml.Add('<Pagina>1</Pagina>');
mXml.Add('</ConsultarNfseServicoPrestadoEnvio>');


Application.createform(TFrm_Nfe_Aguarde, Form_Nfe_Aguarde);
form_nfe_aguarde.mNFEretorno.mentra_operacao:= NFCe_consultarNfe;
form_nfe_aguarde.mNFEretorno.mentra_evento:= NFCe_consultarNfe;
form_nfe_aguarde.mNFEretorno.mentra_xml:= mXml.Text;

if flfilpad(0,'_principal','SERVNFE') then
   mendip_Servidor_nfe_ativo:=DM4.Tb_FilPad2FPVALOR.AsString;
form_nfe_aguarde.Timer_processar.enabled:=true;
Form_Nfe_Aguarde.ShowModal;
Result.motivoResp  :=form_nfe_aguarde.mNFEretorno.msaida_cstat_motivo;
Result.xmlCliente  :=form_nfe_aguarde.mNFEretorno.msaida_xml_protocolado;

Result.codigoResp:=inttostr(form_nfe_aguarde.mNFEretorno.msaida_cstat);

freeandnil(form_nfe_aguarde);
freeandnil(mXml);
pFecharTudo;
end;




procedure tNfse.SalvarBase64ParaPDF(const Base64Str: WideString; const CaminhoPDF: string);
// const
  // Se preferir usar a unit nativa do Delphi (sem Indy), você pode usar:
  // uses EncdDecd; e a função DecodeBase64 / TMemoryStream
var
  Stream: TMemoryStream;
  Decoder: TIdDecoderMIME;
begin
  Stream := TMemoryStream.Create;
  Decoder := TIdDecoderMIME.Create(nil);
  try
    // Decodifica a string Base64 diretamente para o Stream de memória
    Decoder.DecodeToStream(Base64Str, Stream);
    
    // Posiciona o ponteiro do stream no início
    Stream.Position := 0;
    
    // Salva o conteúdo do stream em um arquivo físico PDF
    Stream.SaveToFile(CaminhoPDF);
  finally
    Stream.Free;
    Decoder.Free;
  end;
end;




// inicio


function tNfse.fConsultarURL(pNumero: integer;pAmbiente: String): tResposta;



var
Query_emp: TQuery;
Form_Nfe_Aguarde:TFrm_Nfe_Aguarde;
x_nfe: integer;
mXml: TStrings;
mendip_Servidor_nfe_ativo: String;


    procedure pFecharTudo;
    begin
    if query_emp<>nil then
       begin
       query_emp.close;
       freeAndNil(query_emp);
       end;
    end;
begin

Query_emp:=TQuery.Create(nil);
Query_emp.DatabaseName:='SG_ASSOC';
Query_emp.close;
Query_emp.SQL.clear;
Query_emp.SQL.Add('SELECT CGC,INSCMUNIC,LCODMUN_IBGE '
                 +' FROM CADEMP LEFT JOIN CADLOC ON (LCODLOC=CODLOC) '
                 +' AND CODEMP=:CODEMP ');
Query_emp.ParamByName('CODEMP').Value:=codemp;
try
   Query_emp.Open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_emp,45,'_stru '+e.message,'user');
   pfechartudo;
   Result.ok:=false;
   end;
   end;

mXml:=TStringList.create;

mXml.Add('<ConsultarUrlNfseEnvio xmlns="http://www.sped.fazenda.gov.br/nfse">');
mXml.Add('<CodigoMunicipio>'+query_emp.fieldbyName('LCODMUN_IBGE').asstring+'</CodigoMunicipio>');
mXml.Add('<tpAmb>'+pAmbiente+'</tpAmb>');
mXml.Add('<Prestador>');
mXml.Add('<CNPJ>'+Insere(query_emp.fieldbyName('CGC').asstring,'0',14)+'</CNPJ>');
mXml.Add('<IM>'+query_emp.fieldbyname('INSCMUNIC').asstring+'</IM>');
mXml.Add('</Prestador>');
mXml.Add('<NumeroNfse>'+inttostr(pNumero)+'</NumeroNfse>');
mXml.Add('<Pagina>1</Pagina>');
mXml.Add('</ConsultarUrlNfseEnvio>');



Application.createform(TFrm_Nfe_Aguarde, Form_Nfe_Aguarde);
form_nfe_aguarde.mNFEretorno.mentra_operacao:= NFCe_consultarNfe;
form_nfe_aguarde.mNFEretorno.mentra_evento:= NFCe_consultarNfe;
form_nfe_aguarde.mNFEretorno.mentra_xml:= mXml.Text;

if flfilpad(0,'_principal','SERVNFE') then
   mendip_Servidor_nfe_ativo:=DM4.Tb_FilPad2FPVALOR.AsString;
form_nfe_aguarde.Timer_processar.enabled:=true;
Form_Nfe_Aguarde.ShowModal;
Result.motivoResp:=form_nfe_aguarde.mNFEretorno.msaida_cstat_motivo;

Result.codigoResp:=inttostr(form_nfe_aguarde.mNFEretorno.msaida_cstat);

freeandnil(form_nfe_aguarde);
freeandnil(mXml);
pFecharTudo;
end;


// termino

end.
