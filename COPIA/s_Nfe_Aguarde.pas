unit s_Nfe_Aguarde;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, ComCtrls, Buttons, OleCtrls, SHDocVw,
  DB, DBTables, xmldom, XMLIntf, msxmldom, XMLDoc, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, DBClient;

type TArrayParJson = array of array of String;


type
   TNFERetorno = record
   mentra_chave: integer;
   mentra_chave_carcor: integer;
   mentra_codemp: integer;
   mentra_lotseq: integer;
   mentra_numnf: integer;
   mentra_serie: string;
   mentra_cnpj_emitente: string;
   mentra_modelo: string;
   mentra_chave_acesso: string;
   mentra_operacao: integer;
   mentra_Evento: integer;
   mentra_OutrasInformacoes: string;
// codigos dos eventos
{

    Nfe_StatusServico     = 7;
    Nfe_Autorizacao       = 1;
    Nfe_Ret_Autorizacao   = 6;
    Nfe_cancelamento      = 3;
    Nfe_Inutilizacao      = 4;
    Nfe_CartaCorrecao     = 9;
    downloadnfe entrada   =10
    consulta nfe destinatario = 11
    manifestacao do destinatario = 12

    Nfe_Consulta_Protocolo=5;
    Nfe_Consulta_Cadastro =8;
    Nfe_DistribuicaoDFe = 15;
    Nfe_GerenciadorAtivo = 99;

}
   mentra_xml: string;

   msaida_dathorEve: tdatetime;
   msaida_num_protocolo: string;
   msaida_cstat: integer;
   msaida_cstat_motivo: string;
   msaida_Num_Recibo: string;
   msaida_xml_Resposta: string;
   msaida_xml_protocolado: string;
   msaida_ret_observacao: string;
   msaida_ret_certdigital_venc_dathor: tdatetime;

   end;

const
    Nfe_StatusServico     = 7;
    Nfe_Autorizacao       = 1;
    Nfe_Ret_Autorizacao   = 6;
    Nfe_cancelamento      = 3;
    Nfe_Inutilizacao      = 4;
    Nfe_MDFE_naoEncerradas = 600;
    Nfe_MDFE_envio  = 100;
    Nfe_MDFE_evento  = 500;
    Nfe_MDFE_evento_encerramento  = '110112';
    Nfe_MDFE_evento_cancelamento  = '110111';

    Nfe_CartaCorrecao     = 9;
    Nfe_Consulta_Protocolo=5;
    Nfe_Consulta_Cadastro =8;
    Nfe_Recepcao_Evento     =20;

    Nfe_DistribuicaoDFe = 15;
    Nfe_GerenciadorAtivo = 99;

    Nfe_downloadnfe_entrada = 10;
    Nfe_ConsNFeDest       =11;
    Nfe_manifestacao_destinatario = 11;

    Nfse_Autorizacao       = 31;

    NFCe_Autorizacao_assinar = 20;
    NFCe_Autorizacao_enviar = 21;




type
  TFrm_Nfe_Aguarde = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    bbCancelar: TBitBtn;
    Animate1: TAnimate;
    Memo_evento: TMemo;
    Timer_mudacor: TTimer;
    Query1: TQuery;
    Timer_processar: TTimer;
    IdHTTP1: TIdHTTP;
    Memo_retorno: TMemo;
    cds_retorno: TClientDataSet;
    cds_retornocStatus: TIntegerField;
    cds_retornocStatusMotivo: TStringField;
    cds_retornonumero_protocolo: TStringField;
    cds_retornonumero_recibo: TStringField;
    cds_retornoXml_Resposta: TMemoField;
    cds_retornoXml_dathoreve: TDateTimeField;
    cds_retornoXml_Retorno_assinado: TMemoField;
    cds_retornoXml_Retorno_protocolado: TMemoField;
    cds_retornocertdigital_venc_dathor: TDateTimeField;
    procedure bbCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer_mudacorTimer(Sender: TObject);
    procedure Timer_processarTimer(Sender: TObject);
  private
    { Private declarations }



    murl: string;

    function fGerarJson_novo(pNomeNo:String; pJsonPar: TArrayParJson):  String;
    function fProcessar: boolean;






  public
    { Public declarations }
    mNFEretorno: TNFERetorno;

    mErroProcessamento: Boolean;

    cancelar_proc: boolean;
    mConcluiu: boolean;

    mListaXmlRetorno: TStringList;
    vXMLRetorno: TXMLDocument;

    streStream: TStringStream;
    mStringRetorno: String;


    function fGravarXML_NFE(ptipo: Integer): boolean;

    function fGravarXML_CCOR(ptipo: Integer): boolean;

//    function fEntraJsonSaiClienteDataset(pJson: String; out pTabela: tClientDataSet): boolean;


    function fListarArrayRetorno(pTexto:string;pLista: tstringlist): boolean;

    function fbuscarValorCampo(pArquivo,pcampo: String): String;

  end;

var
  Frm_Nfe_Aguarde: TFrm_Nfe_Aguarde;

implementation

uses S_DM1_ADO, Func, S_DM1, lerarq, Func2, uLkJSON, func_excecoes, S_DM4,
  s_retiradp;

{$R *.dfm}

procedure TFrm_Nfe_Aguarde.bbCancelarClick(Sender: TObject);
begin
if Application.MessageBox('Quer Realmente Cancelar o Processamento?','Confirmação',MB_YESNO+MB_DEFBUTTON2)=mrYes then
   begin
   cancelar_proc:=True;
   close;
   end;

end;

function TFrm_Nfe_Aguarde.fProcessar: boolean;
var
lResponse : TStringStream;
lParams :TStringList;
mjsonpar: TArrayParJson;
// memo_teste: tstringlist;

begin
Memo_evento.Lines.Add('Conectando ao servidor aguarde...');

murl:='http://'+mendip_Servidor_nfe_ativo+':8139/datasnap/rest/servicenfe/';
SetLength(mjsonpar,4,2);
murl:=murl+'EnvioXMLNFE_JSON';
lParams := TStringList.Create;

mjsonpar[00,00]:='Servico';
mjsonpar[00,01]:=IntToStr(mNFEretorno.mentra_operacao);

if trim(mNFEretorno.mentra_cnpj_emitente)='' then
   mNFEretorno.mentra_cnpj_emitente:=DM1.Tb_Empcnpj_masc.asstring;
mjsonpar[01,00]:='CnpjEmitente';
mjsonpar[01,01]:='"'+mNFEretorno.mentra_cnpj_emitente+'"';
mjsonpar[02,00]:='Xml_Entrada';
mjsonpar[02,01]:='"'+mNFEretorno.mentra_xml +'"';
//mjsonpar[02,01]:='"'+fCorrigirAspasDuplasXML(mNFEretorno.mentra_xml) +'"';
mjsonpar[02,01]:='"'+fParametrizarCaracteres(mNFEretorno.mentra_xml) +'"';

if flfilpad(0,'_principal','TIPO_CERTIFICADO') then
   begin
   if DM4.Tb_FilPad2FPVALOR.AsString='CARTAOA3' then
      mNFEretorno.mentra_OutrasInformacoes:=DM4.Tb_FilPad2FPVALOR.AsString;
   end;




mjsonpar[03,00]:='OutrasInformacoes';
mjsonpar[03,01]:='"'+fCorrigirAspasDuplasXML(mNFEretorno.mentra_OutrasInformacoes) +'"';

// fSalvarTextoparaArquivo2(mNFEretorno.mentra_xml);

lParams.Add(fGerarJson_novo('VORecebeXMLNFE.TVORecebeXMLNFE',mJsonPar));
lResponse := TStringStream.Create('');
//lindomarretirar
fSalvarTextoparaArquivo2(murl);
fSalvarTextoparaArquivo2(lParams.Text);
// mNFEretorno.mentra_xml := fParametrizarCaracteres(mNFEretorno.mentra_xml);
try
{ lResponse conterá a página HTML requisitada :}
   idHttp1.post(murl,lparams, lResponse);
   fSalvarTextoparaArquivo2(murl+#13+lParams.Text);

   Memo_retorno.lines.clear;
   Memo_retorno.lines.text:=fLimparTextoRetorno(lResponse.DataString);

except on e : exception do
   begin
   fSalvarTextoparaArquivo2(murl+#13+lParams.Text);
   result:=false;
   MNFERetorno.msaida_cstat_motivo                 :='Erro ao conectar ao servicos '+e.message;
   MNFERetorno.msaida_ret_observacao               :='Erro ao conectar ao servicos '+e.message;

//   MessageDlg('Erro ao conectar ao servicos '+e.message +#13+murl+#13+lParams.Text,mterror,[mbOk],0);
   end;
   end;
lResponse.Free();



if mNFEretorno.mentra_operacao=Nfe_GerenciadorAtivo then
   begin
   MNFERetorno.msaida_cstat_motivo                 :=fbuscarValorCampo(Memo_retorno.lines.Text,'cStatus_motivo');
   MNFERetorno.msaida_ret_certdigital_venc_dathor  := fStringtodatetime(fbuscarValorCampo(Memo_retorno.lines.Text, 'certdigital_venc_dathor'));
   close;
   end
else
   begin
//   Memo_retorno.Lines.SaveToFile('c:\sqltese.xml');
   MNFERetorno.msaida_cstat         :=valint(fbuscarValorCampo(Memo_retorno.lines.Text,'cStatus'));
   MNFERetorno.msaida_cstat_motivo  :=fbuscarValorCampo(Memo_retorno.lines.Text,'xMotivo');
   if (MNFERetorno.msaida_cstat=0) then
      begin
      MNFERetorno.msaida_cstat         :=valint(fbuscarValorCampo(Memo_retorno.lines.Text,'cStat'));
      MNFERetorno.msaida_cstat_motivo  :=fbuscarValorCampo(Memo_retorno.lines.Text,'xMotivo');
      end;

   MNFERetorno.msaida_xml_Resposta  :=fbuscarValorCampo(Memo_retorno.lines.Text,'Xml_Resposta');
   MNFERetorno.msaida_xml_protocolado:=fbuscarValorCampo(Memo_retorno.lines.Text,'Xml_Retorno_protocolado');

{   mnfe_stat_Prot        := getConteudoTAGinttostr(MNFERetorno.msaida_xml_protocolado,form_nfe_aguarde.mNFEretorno.msaida_cstat);
      mnfe_stat_Prot_Desc   :=form_nfe_aguarde.mNFEretorno.msaida_cstat_motivo;

   lindom

   <retNFe
}
// TEMPORARIO PEGAR
{
   memo_teste:=TStringList.create;
   memo_teste.LoadFromFile('C:\xml_denegado.xml');
   MNFERetorno.msaida_xml_protocolado:=memo_teste.Text;
   MNFERetorno.msaida_cstat         :=valint(getConteudoTAG(MNFERetorno.msaida_xml_protocolado, 'cStat', 'infProt'));
   MNFERetorno.msaida_cstat_motivo  :=getConteudoTAG(MNFERetorno.msaida_xml_protocolado, 'xMotivo', 'infProt');

   freeandnil(memo_teste);
}


// TERMINO TEMPORARIO

   MNFERetorno.msaida_num_protocolo:=fbuscarValorCampo(Memo_retorno.lines.Text,'numero_protocolo');
   MNFERetorno.msaida_num_recibo:=fbuscarValorCampo(Memo_retorno.lines.Text,'numero_recibo');
   MNFERetorno.msaida_ret_certdigital_venc_dathor  :=fStringtodatetime(fbuscarValorCampo(Memo_retorno.lines.Text, 'certdigital_venc_dathor'));
   if ((mNFEretorno.mentra_operacao=Nfe_Autorizacao) or
      (mNFEretorno.mentra_operacao=Nfse_Autorizacao) )
       and (trim(mNFEretorno.msaida_num_protocolo)<>'') then
      begin
      mErroProcessamento:=false;
      mAutenticouNFE:=true;
      end
   else if (mNFEretorno.mentra_evento=Nfe_cancelamento)  then
      begin
      if mNFEretorno.msaida_cstat=580 then
         begin
         mErroProcessamento:=false;
         mAutenticouNFE:=true;
         end;
      end
   else if (mNFEretorno.mentra_evento=Nfe_DistribuicaoDFe)  then
      begin
      if (mNFEretorno.msaida_cstat=215) or (mNFEretorno.msaida_cstat=999) then
         begin
         mErroProcessamento:=true;
         mAutenticouNFE:=true;
         end
      else
         begin
         if mListaXmlRetorno=nil then
           mListaXmlRetorno:=TStringList.create;
        fListarArrayRetorno(Memo_retorno.lines.text,mListaXmlRetorno);



         end;
      end
   else if (mNFEretorno.mentra_evento=Nfe_Inutilizacao)  then
      begin
      if mNFEretorno.msaida_cstat=580 then
         begin
         mErroProcessamento:=false;
         mAutenticouNFE:=true;
         end;
      end

   else if (mNFEretorno.mentra_evento=Nfe_MDFE_naoEncerradas)  then
      begin
      if mNFEretorno.msaida_cstat=112 then
         begin
         mErroProcessamento:=false;
         mAutenticouNFE:=true;
         end;
      end
   else if mNFEretorno.msaida_cstat=0 then
         begin
         mErroProcessamento:=true;
         mAutenticouNFE:=true;
         end;



   MNFERetorno.msaida_dathorEve:=fStringtodatetime(fbuscarValorCampo(Memo_retorno.lines.Text,'Xml_dathoreve'));
   if (mNFEretorno.mentra_Evento=Nfe_downloadnfe_entrada) and
      (mNFEretorno.msaida_cstat<>632) and
      (mNFEretorno.msaida_cstat>0) and
      (mNFEretorno.msaida_cstat<>633) then
      begin
      fGravarDownload_XML_NFE(mNFEretorno.mentra_chave_acesso,mNFEretorno.msaida_xml_protocolado);
      end
   else
      begin
      fGravarXML_NFE(MNFERetorno.mentra_evento);
      if (mNFEretorno.mentra_evento=Nfe_cartacorrecao)  then
         fGravarXML_CCOR(0);
      end;

   close;
   end;



end;



function TFrm_Nfe_Aguarde.fbuscarValorCampo(pArquivo,pcampo: String): String;
var
mpos_ini: integer;
mpos_fin: integer;
mpos_fin1: integer;
mpos_fin2: integer;
mRetorno: string;
msaida: tstringlist;
begin

mRetorno:='';

mpos_ini:=pos(uppercase('"'+pcampo+'"'),uppercase(parquivo));
if mpos_ini>0 then
   begin
   mRetorno:=copy(parquivo,mpos_ini+1,length(parquivo));
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




function TFrm_Nfe_Aguarde.fListarArrayRetorno(pTexto:string;pLista: tstringlist): boolean;
var
mposenc_ini: integer;
mposenc_fin: integer;
pProcura_ini: string;
pProcura_fin: string;
mQtdEnc: Integer;


   procedure fposicaoencontrado;
   begin

   mposenc_ini:=pos(pProcura_ini,pTexto);
   mposenc_fin:=pos(pProcura_fin,pTexto);
   if (mposenc_ini>0)  then
      begin
      mQtdEnc:=mQtdEnc+1;
      if mposenc_fin<1 then
         mposenc_fin:=length(pTexto);
      pLista.Add(copy(pTexto,mposenc_ini,length(pTexto)-mposenc_ini+length(pProcura_ini)));

       pTexto:=copy(pTexto,mposenc_ini+length(pProcura_ini)-1,length(pTexto)-mposenc_ini+length(pProcura_ini) );

//      pTexto:=copy(pTexto,mposenc_ini+lentgh(pProcura_ini)-1,lenth(pTexto)-mposenc_ini+lenth(pProcura_ini) );

//      pTexto:=copy(pTexto,mposenc_fin,length(pTexto)-mposenc_fin);
      end;
   end;

begin

pProcura_ini:='type';
pProcura_fin:='type';

mposenc_ini:=pos(pProcura_ini,pTexto);
pTexto:=copy(pTexto,mposenc_ini+length(pProcura_ini)-1,length(pTexto)-mposenc_ini+length(pProcura_ini) );
mposenc_fin:=0;
mQtdEnc:=0;
While mposenc_ini>0 do
   begin
   fposicaoencontrado;
   end;
result:=true;

//Showmessage('Quanidade '+Inttostr(mqtdenc));
end;



procedure TFrm_Nfe_Aguarde.FormCreate(Sender: TObject);
begin
 mConcluiu:=false;
Memo_evento.Lines.Clear;

end;




procedure TFrm_Nfe_Aguarde.Timer_mudacorTimer(Sender: TObject);
begin
if Label1.Font.Color=clred then
   Label1.Font.Color:=clGreen
else
   label1.Font.Color:=ClRed;
Label1.Update;

end;




function TFrm_Nfe_Aguarde.fGravarXML_NFE(ptipo: Integer): boolean;
// ptipo=0 nfe 3-cancelamento 4-inutilizacao
var
query_temp: tQuery;
begin

if (MNFERetorno.mentra_Evento=Nfe_cancelamento) or (MNFERetorno.mentra_Evento=Nfe_Inutilizacao)  or (MNFERetorno.mentra_Evento=Nfe_Autorizacao)
    or (MNFERetorno.mentra_Evento=Nfse_Autorizacao) then
   begin
   DM1_ADO.ADOQuery1.Close;
   DM1_ADO.ADOQuery1.SQL.Clear;
   DM1_ADO.ADOQuery1.SQL.Add('Update CADNS set ');
   DM1_ADO.ADOQuery1.SQL.Add(' NSNFE_OBS_ERRO=:NSNFE_OBS_ERRO ');





   if MNFERetorno.mentra_Evento = nfe_cancelamento  then // cancelamento
      begin
      if (mNFEretorno.msaida_dathorEve<=pdatanula) and
         (fsonumero(mNFEretorno.msaida_num_protocolo)=0) then
          begin
          result:=false;
          exit;
          end;
      if mNFEretorno.msaida_dathorEve>pdatanula then
         begin
         DM1_ADO.ADOQuery1.SQL.Add(',NSDATHOR_CANC=:NSDATHOR_CANC ');
         DM1_ADO.ADOQuery1.Parameters.ParamByName('NSDATHOR_CANC').Value:=mNFEretorno.msaida_dathorEve;
         end;
      if fsonumero(mNFEretorno.msaida_num_protocolo)>0 then
         begin
         DM1_ADO.ADOQuery1.SQL.Add(',NSXML_NPROT_CANC=:NSXML_NPROT_CANC ');
         DM1_ADO.ADOQuery1.Parameters.ParamByName('NSXML_NPROT_CANC').Value:=mNFEretorno.msaida_num_protocolo;
         end;
      end
   else if MNFERetorno.mentra_Evento= nfe_inutilizacao then // inutilizacao
      begin
      if (mNFEretorno.msaida_dathorEve<=pdatanula) and
         (fsonumero(mNFEretorno.msaida_num_protocolo)=0) then
          begin
          result:=false;
          exit;
          end;
      if mNFEretorno.msaida_dathorEve>pdatanula then
         begin
         DM1_ADO.ADOQuery1.SQL.Add(',NSDATHOR_INUT=:NSDATHOR_INUT ');
         DM1_ADO.ADOQuery1.Parameters.ParamByName('NSDATHOR_INUT').Value:=mNFEretorno.msaida_dathorEve;
         end;
      if fsonumero(mNFEretorno.msaida_num_protocolo)>0 then
         begin
         DM1_ADO.ADOQuery1.SQL.Add(',NSXML_NPROT_INUT=:NSXML_NPROT_INUT ');
         DM1_ADO.ADOQuery1.Parameters.ParamByName('NSXML_NPROT_INUT').Value:=mNFEretorno.msaida_num_protocolo;
         end;
      end
   else
      begin
      if (MNFERetorno.mentra_Evento = Nfe_Autorizacao) and
         ((MNFERetorno.msaida_cstat=110) or (MNFERetorno.msaida_cstat=205) or (MNFERetorno.msaida_cstat=233)
           or (MNFERetorno.msaida_cstat=234) or (MNFERetorno.msaida_cstat=301) or (MNFERetorno.msaida_cstat=302) ) then
         begin
         DM1_ADO.ADOQuery1.SQL.Add(',NSDATHOR_DENEG=:NSDATHOR_DENEG ');
         DM1_ADO.ADOQuery1.Parameters.ParamByName('NSDATHOR_DENEG').Value:=mNFEretorno.msaida_dathorEve;
         DM1_ADO.ADOQuery1.SQL.Add(',NSXML_NPROT_DENEG=:NSNPROT_DENEG ');
         DM1_ADO.ADOQuery1.Parameters.ParamByName('NSNPROT_DENEG').Value:=mNFEretorno.msaida_num_protocolo;
         DM1_ADO.ADOQuery1.SQL.Add(',NSSTATUS=:NSSTATUS ');
         DM1_ADO.ADOQuery1.Parameters.ParamByName('NSSTATUS').Value:=7;
         end;


      if fsonumero(mNFEretorno.msaida_Num_Recibo)>0 then
         begin
         DM1_ADO.ADOQuery1.SQL.Add(',NSNFE_NRECIBO=:NFE_NRECIBO ');
         DM1_ADO.ADOQuery1.Parameters.ParamByName('NFE_NRECIBO').Value:=mNFEretorno.msaida_Num_Recibo;
         end;

      if fsonumero(mNFEretorno.msaida_Num_Protocolo)>0 then
         begin
         DM1_ADO.ADOQuery1.SQL.Add(',NSNFE_NUMPROT=:NFE_NUMPROT ');
         DM1_ADO.ADOQuery1.Parameters.ParamByName('NFE_NUMPROT').Value:=mNFEretorno.msaida_Num_Protocolo;
         end;


     if trim(mNFEretorno.msaida_Num_Protocolo)<>'' then
        begin
        DM1_ADO.ADOQuery1.SQL.Add(',NSNFE_XML_CLIENTE=:NSNFE_XML_CLIENTE ');
        DM1_ADO.ADOQuery1.Parameters.ParamByName('NSNFE_XML_CLIENTE').Value:=mNFEretorno.msaida_XML_protocolado;
        end;
      end;


   DM1_ADO.ADOQuery1.SQL.Add(' where NSCHAVEP=:CHAVE '
                            +' and NSLOTSEQ_CP=:CHAVE_ANO '
                            +' and NSCODEMP=:CODEMP '
                            +'  and NSTIPO '+IIF(mNFEretorno.mentra_Evento=Nfse_Autorizacao,' =2 ',' <2 ' ));
   DM1_ADO.ADOQuery1.Parameters.ParamByName('NSNFE_OBS_ERRO').Value:=mNFEretorno.msaida_ret_observacao;

   DM1_ADO.ADOQuery1.Parameters.ParamByName('CHAVE').Value    :=mNFEretorno.mentra_chave;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('CHAVE_ANO').Value:=mNFEretorno.mentra_lotseq;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('CODEMP').Value   :=mNFEretorno.mentra_codemp;
   try
      DM1_ADO.ADOQuery1.ExecSQL;
   except
      DM1_ADO.ADOQuery1.SQL.SaveToFile('c:\sqlnf.txt');
      MessageDlg('Erro '+DM1_ADO.ADOQuery1.SQL.Text,mtError,[mbOk],0);
      end;
   end;


//  INICIO


if (MNFERetorno.mentra_Evento =Nfe_Inutilizacao) or // inutilizacao
   (MNFERetorno.mentra_Evento =Nfe_cancelamento) or // cancelamento
   (MNFERetorno.mentra_Evento =Nfe_CartaCorrecao) then // carta de correcao
   begin
   query_temp:=tQuery.create(nil);
   query_temp.DatabaseName:='SG_ASSOC';
   query_temp.close;
   query_temp.sql.clear;
   query_temp.sql.Add('Select count(*) from CADNS_NFEEVE '
                     +' where NSE_CODEMP=:CODEMP '
                     +' and NSE_NUMERO=:NUMERO '
                     +' and NSE_SERIE=:SERIE '
                     +' and NSE_MODELO=:MODELO '
                     +' and NSE_OPERACAO=:OPERACAO ');
   query_temp.parambyName('CODEMP').Value :=mNFEretorno.mentra_codemp;
   query_temp.parambyName('NUMERO').Value :=mNFEretorno.mentra_numnf;
   query_temp.parambyName('SERIE').Value  :=mNFEretorno.mentra_serie;
   query_temp.parambyName('MODELO').Value :=mNFEretorno.mentra_modelo;

   if (MNFERetorno.mentra_Evento = nfe_cancelamento) then
      query_temp.parambyName('OPERACAO').Value :='CANCELAMENTO'
   else if (MNFERetorno.mentra_Evento =nfe_cartacorrecao) then
      query_temp.parambyName('OPERACAO').Value :='CARTA DE CORRECAO'
   else if (MNFERetorno.mentra_Evento =nfe_inutilizacao) then
      query_temp.parambyName('OPERACAO').Value :='INUTILIZACAO'
   else
      query_temp.parambyName('OPERACAO').Value :='DESCONHECIDO';
   query_temp.Open;
   DM1_ADO.ADOQuery1.Close;
   DM1_ADO.ADOQuery1.SQL.Clear;

   if query_temp.fields[0].AsInteger=0 then
      begin
      DM1_ADO.ADOQuery1.SQL.Add('Insert into CADNS_NFEEVE ('
                               +'NSE_CODEMP'
                               +',NSE_OPERACAO'
                               +',NSE_TIPO'
                               +',NSE_NUMERO'
                               +',NSE_SERIE'
                               +',NSE_MODELO'
                               +',NSE_CHAVEP'
                               +',NSE_CHAVEP_NIVEL'
                               +',NSE_ORDEMP'
                               +',NSE_DATHOR_EVE'
                               +',NSE_XML_NPROT_EVE'
                               +',NSE_XML_EVENTO'
                               +') values ('
                               +' :NSE_CODEMP'
                               +',:NSE_OPERACAO'
                               +',:NSE_TIPO'
                               +',:NSE_NUMERO'
                               +',:NSE_SERIE'
                               +',:NSE_MODELO'
                               +',:NSE_CHAVEP'
                               +',:NSE_CHAVEP_NIVEL'
                               +',:NSE_ORDEMP'
                               +',:NSE_DATHOR_EVE'
                               +',:NSE_XML_NPROT_EVE'
                               +',:NSE_XML_EVENTO'
                               +')');
       end
    else
      begin
      DM1_ADO.ADOQuery1.SQL.Add('Update CADNS_NFEEVE set '
                               +' NSE_TIPO=:NSE_TIPO'
                               +',NSE_MODELO=:NSE_MODELO '
                               +',NSE_CHAVEP=:NSE_CHAVEP '
                               +',NSE_CHAVEP_NIVEL=:NSE_CHAVEP_NIVEL '
                               +',NSE_ORDEMP=:NSE_ORDEMP '
                               +',NSE_DATHOR_EVE=:NSE_DATHOR_EVE '
                               +',NSE_XML_NPROT_EVE=:NSE_XML_NPROT_EVE '
                               +',NSE_XML_EVENTO=:NSE_XML_EVENTO '
                               +' where '
                               +' NSE_NUMERO=:NSE_NUMERO'
                               +' and NSE_SERIE=:NSE_SERIE'
                               +' and NSE_CODEMP=:NSE_CODEMP'
                               +' and NSE_OPERACAO=:NSE_OPERACAO' );
       end;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_CODEMP').value  :=codemp;

   if (MNFERetorno.mentra_evento =nfe_cancelamento) then
      DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_OPERACAO').Value :='CANCELAMENTO'
   else if (MNFERetorno.mentra_evento =nfe_cartacorrecao) then
      DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_OPERACAO').Value :='CARTA DE CORRECAO'
   else if (MNFERetorno.mentra_evento =nfe_inutilizacao) then
      DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_OPERACAO').Value :='INUTILIZACAO'
   else
      DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_OPERACAO').Value :='DESCONHECIDO';


   DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_TIPO').Value        :=0;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_NUMERO').Value      :=mNFEretorno.mentra_numnf;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_SERIE').Value       :=mNFEretorno.mentra_serie;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_MODELO').Value      :=mNFEretorno.mentra_modelo;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_CHAVEP').Value      :=mNFEretorno.mentra_chave;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_CHAVEP_NIVEL').Value:=0;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_ORDEMP').Value       :=codemp;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_DATHOR_EVE').Value   :=mNFEretorno.msaida_dathorEve;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_XML_NPROT_EVE').Value:=mNFEretorno.msaida_num_protocolo;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_XML_EVENTO').Value      :=mNFEretorno.msaida_XML_Protocolado;
   try
      DM1_ADO.ADOQuery1.ExecSQL;
      fdm1StartCommit;
   except
      DM1_ADO.ADOQuery1.SQL.SaveToFile('c:\sqlnfeinut.txt');
      end;

    streStream := TStringStream.Create(mNFEretorno.msaida_XML_Protocolado);
    mStringRetorno:=mNFEretorno.msaida_XML_Protocolado;
    vXMLRetorno := TXMLDocument.Create(self);
    try
      vXMLRetorno.LoadFromstream(streStream);
    except
      try
        streStream := TStringStream.Create(AnsiToAscii(mNFEretorno.msaida_XML_Protocolado));
        vXMLRetorno.LoadFromstream(streStream);
      except
        end;
      end;

   freeandNil(query_temp);
   end;
// TERMINO


freeandnil(streStream);
freeandnil(vXMLRetorno);
freeandnil(streStream);



result:=true;



end;

procedure TFrm_Nfe_Aguarde.Timer_processarTimer(Sender: TObject);
begin
Timer_processar.Enabled:=false;

fProcessar;

end;



function TFrm_Nfe_Aguarde.fGerarJson_novo(pNomeNo:String; pJsonPar: TArrayParJson):  String;
var
i_qtdpar: Integer;
i_qtdreg: Integer;
mSaida: TStringList;
x_numreg: integer;
x_reg: integer;
mlinha: string;
mvirg: string;
x_linha: integer;
begin
mSaida:=TStringList.create;

i_qtdpar:=HIGH(pJsonPar);
i_qtdreg:=HIGH(pJsonPar[0]);


//    type TArrayParJson = array [0..1] of array of String;



// {"type":"VOcadcli.TVOcadcli","id":1,"fields":{"ccnpj":"05\u002e888\u002e347\u002f0040-42","cdenom":"","cender_bairro":"","cender_cep":"75400-000","cender_cidade":"INHUMAS","cender_codloc_ibge":"5210000","cender_complemento":"","cender_log":"","cender_num":"","cender_uf":"GO","cid":36,"cie":"10\u002c1\u002c1\u002c1","cobs":"","cpastadefault":"","cperiodo_dtfin":"31/12/2014 00:00:00","cperiodo_dtini":"01/01/2008 00:00:00","cqtdnf_mensal":100,"crazsoc":"ESTRELA alterado DISTRIBUIDORA DE ELETRODOMESTICOS LTDA","cserv_analise_balanco":"N","cserv_auditar_estoque":"S","cserv_comparativo_fiscalxcontabil":"N","cueve_computador":"LINDOMAR-PC","cueve_cpf_usuario":"469\u002e562\u002e121-53","cueve_dathor":"22/04/2017 15:32:31","numreg":0,"pdatabase":"audsped0001","qtdreg":0}}
x_numreg:=1;



mSaida.Add('{"type":'+'"'+pNomeNo+'"');
mSaida.Add(',"id":'+inttostr(x_numreg));
mSaida.Add(',"fields":{');
mlinha:='';
mvirg:='';
for x_reg:=0 to i_qtdpar do
   begin
   mlinha:=mlinha+mvirg+'"'+pjsonpar[x_reg,00]+'":'+pjsonpar[x_reg,01]+'';
   mvirg:=',';
   end;
mSaida.Add(mlinha+'}}');

result:='';
for x_linha:=0 to msaida.count-1 do
   result := result + trim(mSaida[x_linha]);

//result:=mSaida.text;
freeandnil(msaida);
{form1.Memo_retorno_json.Lines.clear;
form1.Memo_retorno_json.Lines.text:=mSaida.Text;
}

end;




function TfRM_NFE_Aguarde.fGravarXML_CCOR(ptipo: Integer): boolean;
begin

   DM1_ADO.ADOQuery1.Close;
   DM1_ADO.ADOQuery1.SQL.Clear;
   DM1_ADO.ADOQuery1.SQL.Add('Update CADCCOR01 set'
                            +' CC1NFE_NUM_PROT=:NFE_NUM_PROT '
                            +',CC1NFE_NUM_REC=:NFE_NRECIBO ');
  if mNFEretorno.msaida_num_protocolo<>'' then
     begin
     DM1_ADO.ADOQuery1.SQL.Add(', CC1NFE_XML_CLIENTE=:NFE_XML_CLIENTE ');
     DM1_ADO.ADOQuery1.Parameters.ParamByName('NFE_XML_CLIENTE').Value:=mNFEretorno.msaida_xml_protocolado;
     end;

   DM1_ADO.ADOQuery1.SQL.Add(' where CC1CHAVE=:CHAVE '
                            +' and CC1CODEMP=:CODEMP ');
   DM1_ADO.ADOQuery1.Parameters.ParamByName('NFE_NRECIBO').Value:=mNFEretorno.msaida_Num_Recibo;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('NFE_NUM_PROT').Value:=mNFEretorno.msaida_num_protocolo;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('CHAVE').Value:=mNFEretorno.mentra_chave_carcor;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('CODEMP').Value:=mNFEretorno.mentra_codemp;
   try
      DM1_ADO.ADOQuery1.ExecSQL;
//      mErroProcessamento:=false;
   except
      mErroProcessamento:=true;
      end;
//   end;



result:=true;




end;




end.

