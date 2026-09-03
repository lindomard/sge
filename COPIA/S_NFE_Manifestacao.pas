unit S_NFE_Manifestacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB,dbtables, Grids, DBGrids, DBClient, SqlExpr,
  ComCtrls,dateutils, S_Download_XML_NFE, Mask, ToolEdit, RXDBCtrl;

type
   TNFEDownload = record
   ultnsu: string;
   maxnsu: string;
   xnome: string;
   IE: string;
   dhEmi: tdatetime;
   TPNF: integer;
   VNF: real;
   digval: string;
   dhRecbto: tDatetime;
   nProt: string;
   SitNFe: integer;
   chNFe: string;
   CNPJ: string;
   NSU: string;
   MANIFESTACAO_SITUACAO: integer;
   MANIFESTACAO_DATHOR: tdatetime;
   DFE_DATHOR_DOWNLOAD: tdatetime;
end;

type
  TFrm_NFE_Manifestacao = class(TForm)
    panel_cab: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    cds_nfeenc: TClientDataSet;
    src_nfeenc: TDataSource;
    PageControl1: TPageControl;
    tsNotasEncontradas: TTabSheet;
    TabSheet2: TTabSheet;
    rich_xml_resultado: TRichEdit;
    DBGrid1: TDBGrid;
    cds_nfeencchNFe: TStringField;
    cds_nfeencCNPJ: TStringField;
    cds_nfeencxNome: TStringField;
    cds_nfeencIE: TStringField;
    cds_nfeencdhEmi: TDateTimeField;
    cds_nfeenctpNF: TIntegerField;
    cds_nfeencvNF: TFloatField;
    cds_nfeencdigVal: TStringField;
    cds_nfeencdhRecbto: TDateTimeField;
    cds_nfeencnProt: TStringField;
    cds_nfeenccSitNFe: TIntegerField;
    cds_nfeencultNSU: TStringField;
    cds_nfeencmaxNSU: TStringField;
    cds_nfeencid: TIntegerField;
    cds_nfeencNSU: TStringField;
    bbDownload_NFE: TBitBtn;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cb_tipo_data: TComboBox;
    bblerdados: TBitBtn;
    Label6: TLabel;
    edt_cnpj: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    Label7: TLabel;
    edt_nsu_baixado_ultimo: TEdit;
    Label9: TLabel;
    edt_nsu_baixado_primeiro: TEdit;
    bbSair: TBitBtn;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    edt_ultNSU: TEdit;
    bbdownload: TBitBtn;
    edt_datini: TDateEdit;
    edt_datfin: TDateEdit;
    cds_nfeencMANIFESTACAO_SITUACAO: TIntegerField;
    cds_nfeencMANIFESTACAO_DATHOR: TDateTimeField;
    cds_nfeencMANIFESTACAO_SITUACAO_TEXTO: TStringField;
    cds_nfeencpedido_compra: TStringField;
    Label8: TLabel;
    edt_nsu_inicial: TEdit;
    Label10: TLabel;
    edt_nsu_final: TEdit;
    cds_nfeencDFE_DATHOR_DOWNLOAD: TDateTimeField;
    bbCiencia: TBitBtn;
    bbdesconhecimento: TBitBtn;
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbdownloadClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbDownload_NFEClick(Sender: TObject);
    procedure edt_cnpjExit(Sender: TObject);
    procedure edt_cnpjKeyPress(Sender: TObject; var Key: Char);
    procedure bblerdadosClick(Sender: TObject);
    procedure bbCienciaClick(Sender: TObject);
  private
    { Private declarations }
    mLinhas_Retorno: TStrings;
    form_download_XML_nfe: TFrm_Download_XML_NFE;
    procedure fLerCADNFE_DISTDFEINT;

    procedure fatualizarstatuscadne_nfe_download(pXml: String);

  public
    { Public declarations }

   mNFEDownload:TNFEDownload;

    function fConsultaNFDest(pUltNSU: Integer): String;

    function fManifestacao(pEvento,pChaveAcesso: String): Boolean;


    procedure fHistoricoNSU;
  end;

var
  Frm_NFE_Manifestacao: TFrm_NFE_Manifestacao;

implementation

uses S_Sintegra_Advert, s_nfe_Agde, func, S_DM1, LerArq, func_excecoes,
  Func2, S_DM2, s_Nfe_Aguarde, S_NFE_Impressao, S_DM4, StrUtils;

{$R *.dfm}

procedure TFrm_NFE_Manifestacao.bbdownloadClick(Sender: TObject);
begin

fConsultaNFDest(valint(edt_ultNSU.Text));
fHistoricoNSU;
bblerdadosClick(self);


{
<?xml version="1.0" encoding="UTF-8"?>
<distDFeInt versao="1.00" xmlns="http://www.portalfiscal.inf.br/nfe">
<tpAmb>1</tpAmb>
<cUFAutor>52</cUFAutor>
<CNPJ>21513886000147</CNPJ>
<distNSU>
<ultNSU>000000000000002</ultNSU>
</distNSU>
</distDFeInt>
}

end;

procedure TFrm_NFE_Manifestacao.bbSairClick(Sender: TObject);
begin
close;
end;





function TFrm_NFE_Manifestacao.fConsultaNFDest(pUltNSU: Integer): String;
var
mRetorno: String;
Query_Emp: tQuery;
mNumNFE: string;
mXmlString: TStrings;
mComando_sql: TStringList;
form_nfe_agde:TFrm_nfe_Agde;
Form_Nfe_Aguarde: TFrm_Nfe_Aguarde;
// ********************************************************************************************************************
      procedure fCarregarRetornos;
      var
      x_ret: integer;
      mid: integer;
      mpos_nsu: integer;
      mdathor_download: tdatetime;
      mcomplemento: string;
      begin
      mdathor_download:=now();
      if form_nfe_aguarde.cds_retorno.active=false then
         begin
         form_nfe_aguarde.cds_retorno.CreateDataSet;
         form_nfe_aguarde.cds_retorno.Open;
         end;
      mid:=0;
      form_nfe_aguarde.cds_retorno.EmptyDataSet;
      for x_ret:=0 to form_nfe_aguarde.mListaXmlRetorno.Count-1 do
         begin
         form_nfe_aguarde.cds_retorno.append;
         form_nfe_aguarde.cds_retorno.fieldbyname('cStatus').AsInteger      := Form_Nfe_Aguarde.mNFEretorno.msaida_cstat;
         form_nfe_aguarde.cds_retorno.fieldbyname('cStatusMotivo').AsString :=Form_Nfe_Aguarde.mNFEretorno.msaida_cstat_motivo;
         form_nfe_aguarde.cds_retorno.fieldbyname('numero_protocolo').AsString :=Form_Nfe_Aguarde.mNFEretorno.msaida_num_protocolo;
         form_nfe_aguarde.cds_retorno.fieldbyname('numero_recibo').AsString :=Form_Nfe_Aguarde.mNFEretorno.msaida_Num_Recibo;
         form_nfe_aguarde.cds_retorno.fieldbyname('Xml_Resposta').AsString    :=Form_Nfe_Aguarde.mNFEretorno.msaida_xml_Resposta;
         form_nfe_aguarde.cds_retorno.fieldbyname('Xml_dathoreve').AsDateTime :=Form_Nfe_Aguarde.mNFEretorno.msaida_dathorEve;
         form_nfe_aguarde.cds_retorno.fieldbyname('Xml_Retorno_assinado').AsString    :=Form_Nfe_Aguarde.mNFEretorno.msaida_xml_Resposta;
         form_nfe_aguarde.cds_retorno.fieldbyname('certdigital_venc_dathor').AsDateTime :=Form_Nfe_Aguarde.mNFEretorno.msaida_ret_certdigital_venc_dathor;

         form_nfe_aguarde.cds_retorno.fieldbyname('Xml_Retorno_protocolado').AsString :=
         form_nfe_aguarde.fbuscarValorCampo(form_nfe_aguarde.mListaXmlRetorno[x_ret],'Xml_Retorno_protocolado');

         form_nfe_aguarde.cds_retorno.fieldbyname('Xml_Resposta').AsString :=
         form_nfe_aguarde.fbuscarValorCampo(form_nfe_aguarde.mListaXmlRetorno[x_ret],'Xml_Resposta');


         form_nfe_aguarde.cds_retorno.post;
         end;



      mcomplemento:='';
      Form_Nfe_Aguarde.cds_retorno.first;
      while not Form_Nfe_Aguarde.cds_retorno.eof do
         begin
         IF (trim(Form_Nfe_Aguarde.cds_retornoXml_Retorno_protocolado.AsString)='') or
            (trim(Form_Nfe_Aguarde.cds_retornoXml_Retorno_protocolado.AsString)='') then
            begin
            form_nfe_aguarde.cds_retorno.Next;
            continue;
            end;
         mid:=mid+1;

         mNFEDownload.ultnsu:=getConteudoTAG(Form_Nfe_Aguarde.MNFERetorno.msaida_xml_protocolado,'ultNSU','');
         mNFEDownload.maxnsu:=getConteudoTAG(Form_Nfe_Aguarde.MNFERetorno.msaida_xml_protocolado,'maxNSU','');
         mNFEDownload.xnome:= getConteudoTAG(Form_Nfe_Aguarde.cds_retornoXml_Retorno_protocolado.AsString,'xNome','');
         mNFEDownload.IE:= getConteudoTAG(Form_Nfe_Aguarde.cds_retornoXml_Retorno_protocolado.AsString,'IE','');
         mNFEDownload.dhEmi:= fSairDataHoraXml('A',getConteudoTAG(Form_Nfe_Aguarde.cds_retornoXml_Retorno_protocolado.AsString,'dhEmi',''));
         mNFEDownload.TPNF:= valint(getConteudoTAG(Form_Nfe_Aguarde.cds_retornoXml_Retorno_protocolado.AsString,'tpNF',''));
         mNFEDownload.VNF := valfloat(mudapv(getConteudoTAG(Form_Nfe_Aguarde.cds_retornoXml_Retorno_protocolado.AsString,'vNF','')));
         mNFEDownload.digval := getConteudoTAG(Form_Nfe_Aguarde.cds_retornoXml_Retorno_protocolado.AsString,'digVal','');
         mNFEDownload.dhRecbto := fSairDataHoraXml('A',getConteudoTAG(Form_Nfe_Aguarde.cds_retornoXml_Retorno_protocolado.AsString,'dhRecbto',''));
         mNFEDownload.nProt := getConteudoTAG(Form_Nfe_Aguarde.cds_retornoXml_Retorno_protocolado.AsString,'nProt','');
         mNFEDownload.SitNFe := valint(getConteudoTAG(Form_Nfe_Aguarde.cds_retornoXml_Retorno_protocolado.AsString,'cSitNFe',''));
         mNFEDownload.chNFe := getConteudoTAG(Form_Nfe_Aguarde.cds_retornoXml_Retorno_protocolado.AsString,'chNFe','');
         mNFEDownload.CNPJ:=  MaskCPFCNPJ( getConteudoTAG(Form_Nfe_Aguarde.cds_retornoXml_Retorno_protocolado.AsString,'CNPJ',''));
         mNFEDownload.MANIFESTACAO_SITUACAO:=0;
         mNFEDownload.MANIFESTACAO_DATHOR  :=pdatanula;
         mNFEDownload.DFE_DATHOR_DOWNLOAD  :=mdathor_download;

         mpos_nsu:=pos('NSU ',Form_Nfe_Aguarde.cds_retornoXml_Resposta.AsString);
         if mpos_nsu>0 then
             mNFEDownload.NSU  := copy(Form_Nfe_Aguarde.cds_retornoXml_Resposta.AsString,mpos_nsu+5,15);

         mComando_sql.Add(mcomplemento+ ' Select '+QuotedStr(mNFEDownload.ultnsu)+' AS DFE_ULTNSU '
                         +', '+Inttostr(codemp)+' as DFE_CODEMP '
                         +', '+QuotedStr(mNFEDownload.xnome)+' as DFE_XNOME '
                         +', '+QuotedStr(mNFEDownload.maxnsu)+' as DFE_MAXNSU '
                         +', '+QuotedStr(mNFEDownload.IE)+' as DFE_IE '
                         +', '+fOracleConvertStringtoDateTime(mNFEDownload.dhEmi)+' as DFE_DHEMI '
                         +', '+inttostr(mNFEDownload.TPNF)+' as DFE_TPNF '
                         +', '+mudavp(floattostr(mNFEDownload.VNF))+' as DFE_VNF '
                         +', '+QuotedStr(mNFEDownload.digval)+' as DFE_DIGVAL '
                         +', '+fOracleConvertStringtoDateTime(mNFEDownload.dhRecbto)+' as DFE_DHRECBTO '
                         +', '+QuotedStr(mNFEDownload.nProt)+' as DFE_NPROT '
                         +', '+inttostr(mNFEDownload.SitNFe)+' as DFE_SITNFE '
                         +', '+QuotedStr(mNFEDownload.chNFe)+' as DFE_CHNFE '
                         +', '+QuotedStr(mNFEDownload.CNPJ)+' as DFE_CNPJEMITENTE '
                         +', '+inttostr(mNFEDownload.MANIFESTACAO_SITUACAO)+' as DFE_MANIFESTACAO_SITUACAO '
                         +', '+fOracleConvertStringtoDateTime(mNFEDownload.MANIFESTACAO_DATHOR)+' as DFE_MANIFESTACAO_DATHOR '
                         +', '+QuotedStr(mNFEDownload.NSU)+' as DFE_NSU '
                         +', '+fOracleConvertStringtoDateTime(mdathor_download)+' as DFE_DATHOR_DOWNLOAD '
                         +' from dual ');
         mcomplemento:=' union all ';
         form_nfe_aguarde.cds_retorno.Next;
         end;
      end;
// ********************************************************************************************************************

      procedure fIncluirnoBancodeDados;
      var
      query_incluir: TQuery;
      begin
      query_incluir:=TQuery.create(nil);
      query_incluir.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
      query_incluir.ParamCheck:=false;
      query_incluir.SQL.Add(' MERGE INTO CADNFE_DISTDFEINT t1 '
                           +' USING '
                           +'( select * from ('+mComando_sql.Text
                           +')) ss '
                           +' ON (t1.DFE_CHNFE = ss.DFE_CHNFE) ' // -- whatever the key is
                           +'  WHEN MATCHED THEN '
                           +'  UPDATE SET t1.DFE_ULTNSU = ss.DFE_ULTNSU '
                           +'            ,t1.DFE_MAXNSU = ss.DFE_MAXNSU '
                           +'   WHEN NOT MATCHED THEN '
                           +'  INSERT(T1.DFE_ULTNSU,T1.DFE_MAXNSU,T1.DFE_XNOME,T1.DFE_IE '
                           +',T1.DFE_DHEMI,T1.DFE_TPNF,T1.DFE_VNF,T1.DFE_DIGVAL,T1.DFE_DHRECBTO '
                           +',T1.DFE_NPROT,T1.DFE_SITNFE,T1.DFE_CHNFE,T1.DFE_CNPJEMITENTE '
                           +',T1.DFE_MANIFESTACAO_SITUACAO,T1.DFE_MANIFESTACAO_DATHOR,T1.DFE_NSU '
                           +',T1.DFE_DATHOR_DOWNLOAD '
                           +',T1.DFE_CODEMP '
                           +') '
                           +' VALUES (SS.DFE_ULTNSU,SS.DFE_MAXNSU,SS.DFE_XNOME,SS.DFE_IE '
                           +',SS.DFE_DHEMI,SS.DFE_TPNF,SS.DFE_VNF,SS.DFE_DIGVAL,SS.DFE_DHRECBTO '
                           +',SS.DFE_NPROT,SS.DFE_SITNFE,SS.DFE_CHNFE,SS.DFE_CNPJEMITENTE '
                           +',SS.DFE_MANIFESTACAO_SITUACAO,SS.DFE_MANIFESTACAO_DATHOR,SS.DFE_NSU '
                           +',SS.DFE_DATHOR_DOWNLOAD '
                           +',SS.DFE_CODEMP '
                           +') ');
      try
         query_incluir.execsql;
      except ON E: Exception do
         ex_erroSql_Novo(Query_incluir,288,'_lerarq','CADEMP');
         end;
      query_incluir.close;
      freeandnil(query_incluir);

      end;
// ********************************************************************************************************************

begin

{
 MERGE INTO TESTE t1
  USING (SELECT 1 AS ID,'LINDOMAR2' AS NOME
           FROM DUAL) ss
     ON (t1.ID = ss.ID) -- whatever the key is
   WHEN MATCHED THEN
     UPDATE SET t1.NOME = ss.NOME
   WHEN NOT MATCHED THEN
     INSERT( t1.ID, t1.NOME )
       VALUES( ss.ID, ss.NOME )
 }

mComando_sql:=TStringList.create;

Query_Emp:=TQuery.Create(nil);
Query_Emp.DatabaseName:='SG_ASSOC';
Query_Emp.SQL.Add( 'Select CODEMP AS EMP_CODEMP,CODLOC AS EMP_CODLOC,RAZAO AS EMP_RAZAO,FANTASIA AS EMP_FANTASIA,CGC AS EMP_CNPJ, '
                  +'       EMP_OPTSIMPLES AS EMP_CRT,INSCRICAO AS EMP_INSCRICAO, LOCEMP.LNOME AS EMP_CIDADE, '
                  +'       LOCEMP.LUF AS EMP_UF ,CEP AS EMP_CEP, '
                  +'       ENDERECO AS EMP_LOGRADOURO,NUMERO AS EMP_NUMERO,BAIRRO AS EMP_BAIRRO, '
                  +'       LOCEMP.LUF AS UF_EMP,LCODMUN_IBGE AS LCODIBGE '
                  +'       ,FONE AS EMP_FONE,INSCMUNIC AS EMP_INSMUN, EMP_CNAE '
                  +'       from CADEMP  paf_cademp, CADLOC LOCEMP '
                  +'       WHERE (LOCEMP.LCODLOC=CODLOC '
                  +'      and LOCEMP.LCODEMP=CODEMP) '
                  +'          and CODEMP=:CODEMP ');
Query_Emp.ParamByName('CODEMP').Value:=codemp;
try
   Query_Emp.Open;
except ON E: Exception do
   if not fVerificaRedeAtiva(true) then
      begin
      result:='';
      exit;
      end
   else
      begin
      try
         Query_Emp.Open;
      except
         ex_erroSql_Novo(Query_Emp,4836,'_lerarq','CADEMP');
         end;
      end;
   end;





mXmlString:=TStringList.Create;
mXmlString.Clear;
{
mXmlString.Add('<?xml version="1.0" encoding="UTF-8"?>');
mXmlString.Add('<consNFeDest xmlns="http://www.portalfiscal.inf.br/nfe" versao="1.01">');
mXmlString.Add('<tpAmb>'+IntToStr(cb_ambiente.ItemIndex+1)+'</tpAmb>');
mXmlString.Add('<xServ>CONSULTAR NFE DEST</xServ>');
mXmlString.Add('<CNPJ>'+FormatFloat('00000000000000',fSonumero(Query_Emp.FieldbyName('EMP_CNPJ').AsString))+'</CNPJ>');
mXmlString.Add('<indNFe>'+intTostr(cb_indnfe.ItemIndex)+'</indNFe>');
mXmlString.Add('<indEmi>'+intTostr(cb_indemi.ItemIndex)+'</indEmi>');
mXmlString.Add('<ultNSU>'+fdeixanum(edt_ultNSU.Text)+'</ultNSU>');

mXmlString.Add('</consNFeDest>');

}



mXmlString.Add('<?xml version="1.0" encoding="UTF-8"?>');
mXmlString.Add('<distDFeInt versao="1.00" xmlns="http://www.portalfiscal.inf.br/nfe">');
mXmlString.Add('<tpAmb>1</tpAmb>');
mXmlString.Add('<cUFAutor>'+DM1.Tb_Empcoduf_ibge.AsString+'</cUFAutor>');
mXmlString.Add('<CNPJ>'+formatfloat('00000000000000', DM1.Tb_EmpCGC.AsFloat)+'</CNPJ>');
mXmlString.Add('<distNSU>');
mXmlString.Add('<ultNSU>'+FormatFloat('000000000000000', pUltNSU)+'</ultNSU>');
mXmlString.Add('</distNSU>');
mXmlString.Add('</distDFeInt>');




mXmlString.savetofile('c:\distDFeInt.xml');

if fdadosconfig_geral('VERSAO_GERENCIADOR_NFE')='a partir maio/2017' then
   begin
   Application.createform(TFrm_Nfe_Aguarde, Form_Nfe_Aguarde);
   form_nfe_aguarde.mNFEretorno.mentra_chave_acesso  :='';
   form_nfe_aguarde.Memo_evento.Lines.Add('Consulta Nota de Entrada(distDFeInt)');

   form_nfe_aguarde.mNFEretorno.mentra_operacao:=Nfe_DistribuicaoDFe;
   form_nfe_aguarde.mNFEretorno.mentra_Evento  :=Nfe_DistribuicaoDFe;

   form_nfe_aguarde.mNFEretorno.mentra_chave          :=0;
   form_nfe_aguarde.mNFEretorno.mentra_chave_carcor   :=0;
   form_nfe_aguarde.mNFEretorno.mentra_codemp         :=0;
   form_nfe_aguarde.mNFEretorno.mentra_lotseq         :=0;
   form_nfe_aguarde.mNFEretorno.mentra_numnf          :=0;
   form_nfe_aguarde.mNFEretorno.mentra_serie          :='';
   form_nfe_aguarde.mNFEretorno.mentra_modelo         :='';
   form_nfe_aguarde.mNFEretorno.mentra_OutrasInformacoes :='SIM';


   form_nfe_aguarde.mNFEretorno.mentra_cnpj_emitente    :=DM1.Tb_Empcnpj_masc.AsString;
   form_nfe_aguarde.mNFEretorno.mentra_xml           :=mXmlString.Text;
   form_nfe_aguarde.Timer_processar.Enabled := true;
   Form_Nfe_Aguarde.ShowModal;

   if form_nfe_aguarde.mNFEretorno.msaida_cstat=0 then
      begin
      Application.CreateForm(TFrm_Sintegra_Advert, Frm_Sintegra_Advert);
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Clear;
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Add(form_nfe_aguarde.mNFEretorno.msaida_ret_observacao);
      Frm_Sintegra_Advert.Memo_xml.Lines.Clear;
      Frm_Sintegra_Advert.Memo_xml.Lines.Add(mXmlString.Text);
      Frm_Sintegra_Advert.tsXml.TabVisible:=true;
      Frm_Sintegra_Advert.TabSheet1.TabVisible:=true;
      Frm_Sintegra_Advert.Memo_xmlRet.Lines.Text:=form_nfe_aguarde.mNFEretorno.msaida_xml_Resposta;
      Frm_Sintegra_Advert.ShowModal;
      end
   else if form_nfe_aguarde.mErroProcessamento then
      begin
      Application.CreateForm(TFrm_Sintegra_Advert, Frm_Sintegra_Advert);
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Clear;
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Add('Status: '+Inttostr(form_nfe_aguarde.mNFEretorno.msaida_cstat)+#13
                                                   +'Motivo: '+form_nfe_aguarde.mNFEretorno.msaida_cstat_motivo+#13
                                                   +form_nfe_aguarde.mNFEretorno.msaida_ret_observacao);
      Frm_Sintegra_Advert.Memo_xmlRet.Lines.Add(form_nfe_aguarde.mNFEretorno.msaida_xml_Resposta);

      Frm_Sintegra_Advert.Memo_xml.Lines.Clear;
      Frm_Sintegra_Advert.Memo_xml.Lines.Add(mXmlString.Text);
      Frm_Sintegra_Advert.tsXml.TabVisible:=true;
      if form_nfe_aguarde.mNFEretorno.msaida_ret_certdigital_venc_dathor>pdatanula then
         begin
         if form_nfe_aguarde.mNFEretorno.msaida_ret_certdigital_venc_dathor<now then
            begin
            Frm_Sintegra_Advert.Memo_NFSNaoEnc.lines.Add('Certificado Digital vencido em: '
                                                           +formatdatetime(fdathor, form_nfe_aguarde.mNFEretorno.msaida_ret_certdigital_venc_dathor))
            end
         else if form_nfe_aguarde.mNFEretorno.msaida_ret_certdigital_venc_dathor<now+30 then
            begin
            Frm_Sintegra_Advert.Memo_NFSNaoEnc.lines.Add('O Seu Certificado Digital ira vencer em: '
                                                           +formatdatetime(fdathor, form_nfe_aguarde.mNFEretorno.msaida_ret_certdigital_venc_dathor));
            end;
         end;
      Frm_Sintegra_Advert.PageControl1.ActivePageIndex:=0;
      Frm_Sintegra_Advert.ShowModal;
      freeandnil(Frm_Sintegra_Advert);
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


      mLinhas_Retorno.Add(Form_Nfe_Aguarde.mNFEretorno.msaida_xml_protocolado);
      rich_xml_resultado.Lines.Clear;
      rich_xml_resultado.Lines.Add(Form_Nfe_Aguarde.mNFEretorno.msaida_xml_protocolado);

      if mnfe_stat_Prot='138' then
         begin
         fCarregarRetornos;
         fIncluirnoBancodeDados;
         end;



      end;
   freeandnil(Frm_Sintegra_Advert);
   freeandnil(form_nfe_aguarde);
   exit;
   end
else
   begin
   Application.CreateForm(TFrm_nfe_Agde, form_nfe_agde);
   Form_nfe_agde.lbl_cliente.Caption    :='';
   form_nfe_agde.lbl_cidade_uf.Caption  :='';
   form_nfe_agde.lbl_funcao.Caption:='Consulta NFE Destinatario';
   form_nfe_agde.mnfe_chaveAcesso  := '';
   form_nfe_agde.mnfe_chave_ped    := 0;
   form_nfe_agde.mnfe_codemp_ped   := 0;
   form_nfe_agde.mnfe_chave_ano_ped:= 0;

   Form_nfe_Agde.mnfe_numnf       :=0;
   Form_nfe_Agde.mnfe_Serie       :='';
   Form_nfe_Agde.mnfe_Modelo      :='';
   form_nfe_agde.mnfe_servidor01:=fRede_LerParger('PNF_SERVIDOR01');
   form_nfe_agde.mnfe_servidor02:=fRede_LerParger('PNF_SERVIDOR02');
   form_nfe_agde.mnfe_servidor03:=fRede_LerParger('PNF_SERVIDOR03');
   form_nfe_agde.mnfe_Tipo_Servico:=11;
   form_nfe_agde.MNfe_tpemis   :=1;
   form_nfe_agde.mnfe_ambiente :=1;
   form_nfe_agde.mNfe_cnpj     :=insere(fdeixanum(DM1.Tb_EmpCGC.AsString),'0',14);
   form_nfe_agde.fNfe_EnviarArquivo2(mXmlString);
   //mXmlString.SaveToFile('c:\consultanfedest.xml');
   form_nfe_agde.ShowModal;
   if Form_nfe_Agde.mErroProcessamento then
      begin
      Application.CreateForm(TFrm_Sintegra_Advert, Frm_Sintegra_Advert);
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Clear;
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Add(form_nfe_agde.mnfe_mensagem_retorno);
      Frm_Sintegra_Advert.Memo_xml.Lines.Clear;
      Frm_Sintegra_Advert.Memo_xml.Lines.Add(mXmlString.Text);
   //   Frm_Sintegra_Advert.TreeView1.Items:=form_nfe_agde.TreeView1.Items;
   //   Frm_Sintegra_Advert.TreeView1.FullExpand;
      Frm_Sintegra_Advert.tsXml.TabVisible:=true;

      if (mnfe_dh_valcertificado<=date) and (mnfe_dh_valcertificado>pDataNula) then
           Frm_Sintegra_Advert.Memo_NFSNaoEnc.lines.Add('Certificado Digital vencido em: '
                                                        +FormatDateTime(fdathor, mnfe_dh_valcertificado))
      else if (mnfe_dh_valcertificado<=date+30) and (mnfe_dh_valcertificado>pDataNula) then
           Frm_Sintegra_Advert.Memo_NFSNaoEnc.lines.Add('O Seu Certificado Digital ira vencer em: '
                                                       +FormatDateTime(fdathor, mnfe_dh_valcertificado));
      Frm_Sintegra_Advert.ShowModal;
      freeandnil(frm_sintegra_advert);
      end
   else
      begin
      if (mnfe_dh_valcertificado<=date+30) and (mnfe_dh_valcertificado>pDataNula) then
         begin
         Application.CreateForm(TFrm_Sintegra_Advert, Frm_Sintegra_Advert);
         Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Clear;
         Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Add(form_nfe_agde.mnfe_mensagem_retorno);
         Frm_Sintegra_Advert.Memo_xml.Lines.Clear;
         Frm_Sintegra_Advert.Memo_xml.Lines.Add(mXmlString.Text);

   //      Frm_Sintegra_Advert.TreeView1.Items:=form_nfe_agde.TreeView1.Items;
   //      Frm_Sintegra_Advert.TreeView1.FullExpand;
         Frm_Sintegra_Advert.Memo_Xml.Lines.Add(form_nfe_agde.streStream.DataString );
         if (mnfe_dh_valcertificado<=date) and (mnfe_dh_valcertificado>pDataNula) then
            Frm_Sintegra_Advert.Memo_NFSNaoEnc.lines.Add('Certificado Digital vencido em: '
                                                        +FormatDateTime(fdathor, mnfe_dh_valcertificado))
         else if (mnfe_dh_valcertificado<=date+30) and (mnfe_dh_valcertificado>pDataNula) then
            Frm_Sintegra_Advert.Memo_NFSNaoEnc.lines.Add('O Seu Certificado Digital ira vencer em: '
                                                          +FormatDateTime(fdathor, mnfe_dh_valcertificado));
         Frm_Sintegra_Advert.ShowModal;
         FreeAndNil(Frm_Sintegra_Advert);
         end;

      mLinhas_Retorno.Add(form_nfe_agde.streStream.DataString);
      rich_xml_resultado.Lines.Clear;
      rich_xml_resultado.Lines.Add(form_nfe_agde.streStream.DataString);
   {
      mLinhas_Retorno.Add(form_nfe_agde.vXMLRetorno.ToString);
      rich_xml_resultado.Lines.Clear;
      rich_xml_resultado.Lines.Add(form_nfe_agde.vXMLRetorno.ToString());
   }
      if ((mnfe_dh_valcertificado-30)<=date+30) and (mnfe_dh_valcertificado>pDataNula) then
         begin
         if not flfilpad(-2,'VCTO_CERT_DIG',FormatDateTime(fdt2, date)) then
            begin
            if Application.MessageBox(pchar('O seu Certificado Digital irá vencer em: '+FormatDateTime(fdathor, mnfe_dh_valcertificado)
                       +'. Restam '+IntToStr(Round(mnfe_dh_valcertificado-date))+' dia(s) para vencer. Avisar Novamente?')
                       ,'',MB_YESNO+MB_DEFBUTTON2)=mrNo then
                begin
                 fGravaPadroes(-2,FormatDateTime(fdt2, date) ,'aviso'
                ,'VCTO_CERT_DIG'
                 ,'SIM');
                end;
             end;
          end;
      end;
   end;
fHistoricoNSU;
end;

procedure TFrm_NFE_Manifestacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
freeandnil(form_download_XML_nfe);

freeandnil(mLinhas_Retorno);
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_NFE_Manifestacao.FormCreate(Sender: TObject);
begin
Application.createform(tFrm_download_XML_nfe, form_Download_XML_NFE);
mLinhas_Retorno:=TStringList.Create;
cds_nfeencvNF.DisplayFormat:=mcasas;
fHistoricoNSU;
edt_datini.Date:=fultdiames(IncMonth(date,-3))-1;
bblerdadosClick(self);

end;

function TFrm_NFE_Manifestacao.fManifestacao(pEvento,pChaveAcesso: String): Boolean;
var
mRetorno: String;
Query_Emp: tQuery;
mNumNFE: string;
mXmlString: TStrings;
form_nfe_agde:TFrm_nfe_Agde;
mSeqEve: Integer;
mDatHor_Eve: tDatetime;
Form_Nfe_Aguarde: TFrm_Nfe_Aguarde;

begin
result:=true;
mLinhas_Retorno.Clear;
Query_Emp:=TQuery.Create(nil);
Query_Emp.DatabaseName:='SG_ASSOC';


Query_Emp:=TQuery.Create(nil);
Query_Emp.DatabaseName:='SG_ASSOC';
Query_Emp.SQL.Add( 'Select CODEMP AS EMP_CODEMP,CODLOC AS EMP_CODLOC,RAZAO AS EMP_RAZAO,FANTASIA AS EMP_FANTASIA,CGC AS EMP_CNPJ, '
                  +'       EMP_OPTSIMPLES AS EMP_CRT,INSCRICAO AS EMP_INSCRICAO, LOCEMP.LNOME AS EMP_CIDADE, '
                  +'       LOCEMP.LUF AS EMP_UF ,CEP AS EMP_CEP, '
                  +'       ENDERECO AS EMP_LOGRADOURO,NUMERO AS EMP_NUMERO,BAIRRO AS EMP_BAIRRO, '
                  +'       LOCEMP.LUF AS UF_EMP,LCODMUN_IBGE AS LCODIBGE '
                  +'       ,FONE AS EMP_FONE,INSCMUNIC AS EMP_INSMUN, EMP_CNAE '
                  +'       from CADEMP  paf_cademp, CADLOC LOCEMP '
                  +'       WHERE (LOCEMP.LCODLOC=CODLOC '
                  +'      and LOCEMP.LCODEMP=CODEMP) '
                  +'          and CODEMP=:CODEMP ');
Query_Emp.ParamByName('CODEMP').Value:=codemp;
try
   Query_Emp.Open;
except ON E: Exception do
   if not fVerificaRedeAtiva(true) then
      begin
      result:=false;
      exit;
      end
   else
      begin
      try
         Query_Emp.Open;
      except
         ex_erroSql_Novo(Query_Emp,4836,'_lerarq','CADEMP');
         end;
      end;
   end;






mXmlString:=TStringList.Create;
mXmlString.Clear;
mSeqEve:=01;
mXmlString.Add('<?xml version="1.0" encoding="UTF-8"?>');
// mXmlString.Add('<envEvento xmlns="http://www.portalfiscal.inf.br/nfe" versao="1.00">');

mXmlString.Add('<evento versao="1.00" xmlns="http://www.portalfiscal.inf.br/nfe">');
mXmlString.Add('<infEvento Id="ID'+pEvento+pChaveAcesso+FormatFloat('00', mSeqEve)+'"> ');
mDatHor_Eve:=now;
mXmlString.Add(fGeraXMLString(0,'cOrgao','91'));
// mXmlString.Add(fGeraXMLString(0,'cOrgao',copy(FormatFloat('0000000', Query_Emp.FieldByName('LCODIBGE').AsFloat),1,2)));
{
if DM4.Tb_ParGer02PG2USANFE.AsInteger<2 then
   mXmlString.Add('<tpAmb>'+'2'+'</tpAmb>')
else
}
   mXmlString.Add('<tpAmb>'+'1'+'</tpAmb>');


mXmlString.Add('<CNPJ>'+FormatFloat('00000000000000',fSonumero(Query_Emp.FieldbyName('EMP_CNPJ').AsString))+'</CNPJ>');
mXmlString.Add(fGeraXMLString(0,'chNFe', pChaveAcesso));
//if pger_horario_verao then
   mDatHor_eve:=IncHour(mDatHor_eve,-1);

mXmlString.Add(fGeraXMLString(0,'dhEvento', FormatDateTime('yyyy-mm-dd',mDatHor_Eve)
                                       +'T'+FormatDateTime('hh:nn:ss',mDatHor_Eve)+'-02:00'));
mXmlString.Add(fGeraXMLString(0,'tpEvento', pEvento));
mXmlString.Add(fGeraXMLString(0,'nSeqEvento', inttostr(mSeqEve)));
mXmlString.Add(fGeraXMLString(0,'verEvento', '1.00'));
mXmlString.Add('<detEvento versao="1.00">');
if pEvento='210200' then
   mXmlString.Add(fGeraXMLString(0,'descEvento','Confirmacao da Operacao'));
mXmlString.Add('</detEvento>');
mXmlString.Add('</infEvento>');
mXmlString.Add('</evento>');
// mXmlString.Add('</envEvento>');

if fdadosconfig_geral('VERSAO_GERENCIADOR_NFE')='a partir maio/2017' then
   begin
   Application.createform(TFrm_Nfe_Aguarde, Form_Nfe_Aguarde);
   form_nfe_aguarde.mNFEretorno.mentra_chave_acesso  :=pChaveAcesso;
   form_nfe_aguarde.Memo_evento.Lines.Add('Manifestao do Destinario. Chave de Acesso '+form_nfe_aguarde.mNFEretorno.mentra_chave_acesso);

   form_nfe_aguarde.mNFEretorno.mentra_operacao:=Nfe_Recepcao_Evento;
   form_nfe_aguarde.mNFEretorno.mentra_Evento  :=Nfe_manifestacao_destinatario;

   form_nfe_aguarde.mNFEretorno.mentra_chave          :=0;
   form_nfe_aguarde.mNFEretorno.mentra_chave_carcor   :=0;
   form_nfe_aguarde.mNFEretorno.mentra_codemp         :=0;
   form_nfe_aguarde.mNFEretorno.mentra_lotseq         :=0;
   form_nfe_aguarde.mNFEretorno.mentra_numnf          :=0;
   form_nfe_aguarde.mNFEretorno.mentra_serie          :='';
   form_nfe_aguarde.mNFEretorno.mentra_modelo         :='';


   form_nfe_aguarde.mNFEretorno.mentra_cnpj_emitente    :=DM1.Tb_Empcnpj_masc.AsString;
   form_nfe_aguarde.mNFEretorno.mentra_xml           :=mXmlString.Text;
   form_nfe_aguarde.Timer_processar.Enabled := true;
   Form_Nfe_Aguarde.ShowModal;

   if form_nfe_aguarde.mNFEretorno.msaida_cstat=0 then
      begin
      Application.CreateForm(TFrm_Sintegra_Advert, Frm_Sintegra_Advert);
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Clear;
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Add(form_nfe_aguarde.mNFEretorno.msaida_ret_observacao);
      Frm_Sintegra_Advert.Memo_xml.Lines.Clear;
      Frm_Sintegra_Advert.Memo_xml.Lines.Add(mXmlString.Text);
      Frm_Sintegra_Advert.tsXml.TabVisible:=true;
      Frm_Sintegra_Advert.TabSheet1.TabVisible:=true;
      Frm_Sintegra_Advert.Memo_xmlRet.Lines.Text:=form_nfe_aguarde.mNFEretorno.msaida_xml_Resposta;
      Frm_Sintegra_Advert.ShowModal;
      end
   else if form_nfe_aguarde.mErroProcessamento then
      begin
      Application.CreateForm(TFrm_Sintegra_Advert, Frm_Sintegra_Advert);
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Clear;
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Add('Status: '+Inttostr(form_nfe_aguarde.mNFEretorno.msaida_cstat)+#13
                                                   +'Motivo: '+form_nfe_aguarde.mNFEretorno.msaida_cstat_motivo+#13
                                                   +form_nfe_aguarde.mNFEretorno.msaida_ret_observacao);
      Frm_Sintegra_Advert.Memo_xmlRet.Lines.Add(form_nfe_aguarde.mNFEretorno.msaida_xml_Resposta);

      Frm_Sintegra_Advert.Memo_xml.Lines.Clear;
      Frm_Sintegra_Advert.Memo_xml.Lines.Add(mXmlString.Text);
      Frm_Sintegra_Advert.tsXml.TabVisible:=true;
      if form_nfe_aguarde.mNFEretorno.msaida_ret_certdigital_venc_dathor>pdatanula then
         begin
         if form_nfe_aguarde.mNFEretorno.msaida_ret_certdigital_venc_dathor<now then
            begin
            Frm_Sintegra_Advert.Memo_NFSNaoEnc.lines.Add('Certificado Digital vencido em: '
                                                           +formatdatetime(fdathor, form_nfe_aguarde.mNFEretorno.msaida_ret_certdigital_venc_dathor))
            end
         else if form_nfe_aguarde.mNFEretorno.msaida_ret_certdigital_venc_dathor<now+30 then
            begin
            Frm_Sintegra_Advert.Memo_NFSNaoEnc.lines.Add('O Seu Certificado Digital ira vencer em: '
                                                           +formatdatetime(fdathor, form_nfe_aguarde.mNFEretorno.msaida_ret_certdigital_venc_dathor));
            end;
         end;
      Frm_Sintegra_Advert.PageControl1.ActivePageIndex:=0;
      Frm_Sintegra_Advert.ShowModal;
      freeandnil(Frm_Sintegra_Advert);
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


      mLinhas_Retorno.Add(Form_Nfe_Aguarde.mNFEretorno.msaida_xml_protocolado);
      rich_xml_resultado.Lines.Clear;
      rich_xml_resultado.Lines.Add(Form_Nfe_Aguarde.mNFEretorno.msaida_xml_protocolado);
      if trim(mnfe_Num_Protolo)='' then
         begin
         fatualizarstatuscadne_nfe_download(Form_Nfe_Aguarde.mNFEretorno.msaida_xml_protocolado);
         end;

      end;
   freeandnil(Frm_Sintegra_Advert);
   freeandnil(form_nfe_aguarde);
   exit;
   end
else
   begin
   Application.CreateForm(TFrm_nfe_Agde, form_nfe_agde);
   Form_nfe_agde.lbl_cliente.Caption    :='';
   form_nfe_agde.lbl_cidade_uf.Caption  :='';
   form_nfe_agde.lbl_funcao.Caption:='Manifestação da NFE';
   form_nfe_agde.mnfe_chaveAcesso  := '';
   form_nfe_agde.mnfe_chave_ped    := 0;
   form_nfe_agde.mnfe_codemp_ped   := 0;
   form_nfe_agde.mnfe_chave_ano_ped:= 0;

   Form_nfe_Agde.mnfe_numnf       :=0;
   Form_nfe_Agde.mnfe_Serie       :='';
   Form_nfe_Agde.mnfe_Modelo      :='';
   form_nfe_agde.mnfe_servidor01:=fRede_LerParger('PNF_SERVIDOR01');
   form_nfe_agde.mnfe_servidor02:=fRede_LerParger('PNF_SERVIDOR02');
   form_nfe_agde.mnfe_servidor03:=fRede_LerParger('PNF_SERVIDOR03');
   form_nfe_agde.mnfe_Tipo_Servico:=11;
   form_nfe_agde.MNfe_tpemis   :=1;
   form_nfe_agde.mnfe_ambiente :=1;
   form_nfe_agde.mNfe_cnpj     :=insere(fdeixanum(DM1.Tb_EmpCGC.AsString),'0',14);
   form_nfe_agde.fNfe_EnviarArquivo2(mXmlString);
   mXmlString.SaveToFile('c:\Manifestacaodest.xml');
   form_nfe_agde.ShowModal;
   if Form_nfe_Agde.mErroProcessamento then
      begin
      Application.CreateForm(TFrm_Sintegra_Advert, Frm_Sintegra_Advert);
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Clear;
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Add(form_nfe_agde.mnfe_mensagem_retorno);
      Frm_Sintegra_Advert.Memo_xml.Lines.Clear;
      Frm_Sintegra_Advert.Memo_xml.Lines.Add(mXmlString.Text);

   //   Frm_Sintegra_Advert.TreeView1.Items:=form_nfe_agde.TreeView1.Items;
   //   Frm_Sintegra_Advert.TreeView1.FullExpand;
      Frm_Sintegra_Advert.tsXml.TabVisible:=true;

      if (mnfe_dh_valcertificado<=date) and (mnfe_dh_valcertificado>pDataNula) then
           Frm_Sintegra_Advert.Memo_NFSNaoEnc.lines.Add('Certificado Digital vencido em: '
                                                        +FormatDateTime(fdathor, mnfe_dh_valcertificado))
      else if (mnfe_dh_valcertificado<=date+30) and (mnfe_dh_valcertificado>pDataNula) then
           Frm_Sintegra_Advert.Memo_NFSNaoEnc.lines.Add('O Seu Certificado Digital ira vencer em: '
                                                       +FormatDateTime(fdathor, mnfe_dh_valcertificado));
      Frm_Sintegra_Advert.ShowModal;
      freeandnil(frm_sintegra_advert);
      end
   else
      begin
      if (mnfe_dh_valcertificado<=date+30) and (mnfe_dh_valcertificado>pDataNula) then
         begin
         Application.CreateForm(TFrm_Sintegra_Advert, Frm_Sintegra_Advert);
         Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Clear;
         Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Add(form_nfe_agde.mnfe_mensagem_retorno);
         Frm_Sintegra_Advert.Memo_xml.Lines.Clear;
         Frm_Sintegra_Advert.Memo_xml.Lines.Add(mXmlString.Text);

   //      Frm_Sintegra_Advert.TreeView1.Items:=form_nfe_agde.TreeView1.Items;
   //      Frm_Sintegra_Advert.TreeView1.FullExpand;
         Frm_Sintegra_Advert.Memo_Xml.Lines.Add(form_nfe_agde.streStream.DataString );
         if (mnfe_dh_valcertificado<=date) and (mnfe_dh_valcertificado>pDataNula) then
            Frm_Sintegra_Advert.Memo_NFSNaoEnc.lines.Add('Certificado Digital vencido em: '
                                                        +FormatDateTime(fdathor, mnfe_dh_valcertificado))
         else if (mnfe_dh_valcertificado<=date+30) and (mnfe_dh_valcertificado>pDataNula) then
            Frm_Sintegra_Advert.Memo_NFSNaoEnc.lines.Add('O Seu Certificado Digital ira vencer em: '
                                                          +FormatDateTime(fdathor, mnfe_dh_valcertificado));
         Frm_Sintegra_Advert.ShowModal;
         FreeAndNil(Frm_Sintegra_Advert);
         end;

      mLinhas_Retorno.Add(form_nfe_agde.streStream.DataString);
      rich_xml_resultado.Lines.Clear;
      rich_xml_resultado.Lines.Add(form_nfe_agde.streStream.DataString);
   {
      mLinhas_Retorno.Add(form_nfe_agde.vXMLRetorno.ToString);
      rich_xml_resultado.Lines.Clear;
      rich_xml_resultado.Lines.Add(form_nfe_agde.vXMLRetorno.ToString());
   }
      if ((mnfe_dh_valcertificado-30)<=date+30) and (mnfe_dh_valcertificado>pDataNula) then
         begin
         if not flfilpad(-2,'VCTO_CERT_DIG',FormatDateTime(fdt2, date)) then
            begin
            if Application.MessageBox(pchar('O seu Certificado Digital irá vencer em: '+FormatDateTime(fdathor, mnfe_dh_valcertificado)
                       +'. Restam '+IntToStr(Round(mnfe_dh_valcertificado-date))+' dia(s) para vencer. Avisar Novamente?')
                       ,'',MB_YESNO+MB_DEFBUTTON2)=mrNo then
                begin
                 fGravaPadroes(-2,FormatDateTime(fdt2, date) ,'aviso'
                ,'VCTO_CERT_DIG'
                 ,'SIM');
                end;
             end;
          end;
      end;
   end;

result:=true;
end;

procedure TFrm_NFE_Manifestacao.fatualizarstatuscadne_nfe_download(pXml: String);
begin
cds_nfeenc.Edit;
cds_nfeencMANIFESTACAO_SITUACAO.AsInteger:=1;
cds_nfeencMANIFESTACAO_SITUACAO_TEXTO.Value:='Ciencia da Operacao';
cds_nfeenc.Post;


fGravarDownload_XML_NFE(cds_nfeencchNFe.AsString,pXml);


end;

procedure TFrm_NFE_Manifestacao.bbDownload_NFEClick(Sender: TObject);
begin



Form_Download_XML_NFE.edt_nfe_chave.Text:=fRetornaChaveAcessoFormatada(cds_nfeencchNFe.AsString);
if length(fdeixanum(Form_Download_XML_NFE.edt_nfe_chave.Text))=44 then
   Form_Download_XML_NFE.mAcionarAutomaticamente:=true;

Form_Download_XML_NFE.ShowModal;
if (trim(Form_Download_XML_NFE.mNomeArqXML_Salvo)<>'') and (fileexists(Form_Download_XML_NFE.mNomeArqXML_Salvo)) then
   MessageDlg('Arquivo salvo como '+Form_Download_XML_NFE.mNomeArqXML_Salvo,mtWarning,[mbOk],0);




end;

procedure TFrm_NFE_Manifestacao.edt_cnpjExit(Sender: TObject);
begin
edt_cnpj.Text:=MaskCPFCNPJ(fdeixanum(edt_cnpj.Text));
if fsonumero(edt_cnpj.Text)>0 then
   begin
   if fLerGenerico_query('CADFOR','FCGC,FRAZAO','FCGC='+fdeixanum(edt_cnpj.Text),query_consulta) then
      begin
      lbx_codfor.Items.Add(MaskCPFCNPJ(fdeixanum(edt_cnpj.text))+' - '
                                   + MaskCPFCNPJ(fdeixanum(edt_cnpj.text))
                                    +'/'+query_consulta.fieldbyname('FRAZAO').AsString);
      end
   else
      lbx_codfor.Items.Add(MaskCPFCNPJ(fdeixanum(edt_cnpj.text))+' - '+MaskCPFCNPJ(fdeixanum(edt_cnpj.text))
                                    +'/ nao cadastrado!');
   edt_cnpj.clear;
   end;



end;

procedure TFrm_NFE_Manifestacao.edt_cnpjKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_cnpj.Text:=fChamaFor(0,'FRM_MANIFESTACAO',KEY);
   if valFloat(edt_cnpj.text)<>0 then
      begin
      if fLerGenerico_query('CADFOR','FCGC,FRAZAO','FCODFOR=0'+edt_cnpj.Text,query_consulta) then
         begin
         edt_cnpj.Text:=MaskCPFCNPJ(query_consulta.fieldbyname('FCGC').asstring);
         edt_cnpjExit(self);
         end;
      edt_cnpj.Text:= '';
      end;
   key:=#0;
   end;
end;

procedure TFrm_NFE_Manifestacao.fHistoricoNSU;
begin
edt_nsu_baixado_primeiro.Clear;
edt_nsu_baixado_ultimo.Clear;

if fLerGenerico_query('CADNFE_DISTDFEINT','min(DFE_NSU) as NSU_PRIMEIRO,max(DFE_NSU) as NSU_ULTIMO','',query_consulta) then
   begin
   if fsonumero(query_consulta.fieldbyname('NSU_PRIMEIRO').asstring)>0 then
      edt_nsu_baixado_primeiro.Text:=query_consulta.fieldbyname('NSU_PRIMEIRO').asstring;
   if fsonumero(query_consulta.fieldbyname('NSU_ULTIMO').asstring)>0 then
      edt_nsu_baixado_ultimo.Text:=query_consulta.fieldbyname('NSU_ULTIMO').asstring;
   end;


end;
procedure TFrm_NFE_Manifestacao.fLerCADNFE_DISTDFEINT;
var
query_cadnfe_distDfeInt: TQuery;
mDataPesq: string;
mid: integer;
begin
if (fsonumero(edt_nsu_inicial.Text)>0) and (fsonumero(edt_nsu_final.Text)>0) then
   begin
   if fsonumero(edt_nsu_final.Text)<fsonumero(edt_nsu_inicial.Text) then
      edt_nsu_final.Text:=edt_nsu_inicial.Text;
   end;



if (edt_datini.Date>pdatanula) and (edt_datfin.Date>pdatanula) then
   begin
   if edt_datini.Date>edt_datfin.Date then
      edt_datfin.Date:=edt_datini.Date;
   end;

query_cadnfe_distDfeInt:=TQuery.create(nil);
query_cadnfe_distDfeInt.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_cadnfe_distDfeInt.SQL.Clear;
query_cadnfe_distDfeInt.SQL.Add('SELECT DFE_CODEMP,DFE_CHNFE,DFE_CNPJEMITENTE,DFE_XNOME '
                               +',DFE_IE,DFE_TPNF,DFE_VNF,DFE_DIGVAL,DFE_DHRECBTO '
                               +',DFE_DHEMI,DFE_DATHOR_DOWNLOAD,DFE_NPROT,DFE_SITNFE,DFE_ULTNSU '
                               +',DFE_MAXNSU,DFE_NSU,DFE_MANIFESTACAO_SITUACAO,DFE_MANIFESTACAO_DATHOR '
                               +',PF1_NFE_CHAVE from CADNFE_DISTDFEINT,CADPF1 '
                               +' WHERE PF1_NFE_CHAVE(+)=DFE_CHNFE ');

if fsonumero(edt_nsu_inicial.Text)>0 then
   query_cadnfe_distDfeInt.SQL.add(' and DFE_NSU>='+formatfloat('000000000000000', fsonumero(edt_nsu_inicial.Text)));

if fsonumero(edt_nsu_final.Text)>0 then
   query_cadnfe_distDfeInt.SQL.add(' and DFE_NSU<='+formatfloat('000000000000000', fsonumero(edt_nsu_final.Text)));

if cb_tipo_data.ItemIndex=0 then
   mDataPesq:='DFE_DATHOR_DOWNLOAD'
else
   mDataPesq:='DFE_DHEMI';

if edt_datini.Date>pdatanula then
   query_cadnfe_distDfeInt.SQL.add(fFormatdatetimeParaConsulta(mDataPesq,true,edt_datini.Date));
if edt_datfin.Date>pdatanula then
   query_cadnfe_distDfeInt.SQL.add(fFormatdatetimeParaConsulta(mDataPesq,false,edt_datfin.Date));

mcinst2:=fItensListBox(1,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   query_cadnfe_distDfeInt.SQL.Add(' and DFE_CNPJEMITENTE '+mcinst2);

query_cadnfe_distDfeInt.SQL.Add(' order by DFE_NSU ');

try
   query_cadnfe_distDfeInt.open;
except on e : exception do
   ex_erroSql_Novo(query_cadnfe_distDfeInt,875,'SGE','CADVER');
   end;
if cds_nfeenc.Active=false then
   begin
   cds_nfeenc.CreateDataSet;
   cds_nfeenc.Open;
   end;
cds_nfeenc.DisableControls;
cds_nfeenc.EmptyDataSet;
mid:=0;
While not query_cadnfe_distDfeInt.Eof do
   begin
   mid:=mid+1;
   cds_nfeenc.APPEND;

   cds_nfeencid.AsInteger  := mid;

   cds_nfeencultnsu.Value := query_cadnfe_distDfeInt.fieldbyname('DFE_ULTNSU').AsString;
   cds_nfeencmaxNSU.Value := query_cadnfe_distDfeInt.fieldbyname('DFE_MAXNSU').AsString;


   cds_nfeencxNome.Value  := query_cadnfe_distDfeInt.fieldbyname('DFE_XNOME').AsString;
   cds_nfeencIE.Value     := query_cadnfe_distDfeInt.fieldbyname('DFE_IE').AsString;
   cds_nfeencdhEmi.Value  := query_cadnfe_distDfeInt.fieldbyname('DFE_DHEMI').AsDateTime;
   cds_nfeenctpNF.Value  := query_cadnfe_distDfeInt.fieldbyname('DFE_TPNF').AsInteger;
   cds_nfeencvNF.Value  := query_cadnfe_distDfeInt.fieldbyname('DFE_VNF').AsFloat;
   cds_nfeencdigVal.Value  := query_cadnfe_distDfeInt.fieldbyname('DFE_DIGVAL').AsString;
   cds_nfeencdhRecbto.Value  := query_cadnfe_distDfeInt.fieldbyname('DFE_DHRECBTO').AsDateTime;
   cds_nfeencnProt.Value  := query_cadnfe_distDfeInt.fieldbyname('DFE_NPROT').AsString;
   cds_nfeenccSitNFe.Value  := query_cadnfe_distDfeInt.fieldbyname('DFE_SITNFE').AsInteger;
   cds_nfeencchNFe.Value    := query_cadnfe_distDfeInt.fieldbyname('DFE_CHNFE').AsString;
   cds_nfeencCNPJ.Value  :=  query_cadnfe_distDfeInt.fieldbyname('DFE_CNPJEMITENTE').AsString;

   cds_nfeencNSU.Value                 := query_cadnfe_distDfeInt.fieldbyname('DFE_NSU').AsString;
   cds_nfeencDFE_DATHOR_DOWNLOAD.Value := query_cadnfe_distDfeInt.fieldbyname('DFE_DATHOR_DOWNLOAD').AsDateTime;

   cds_nfeencMANIFESTACAO_SITUACAO.Value := query_cadnfe_distDfeInt.fieldbyname('DFE_MANIFESTACAO_SITUACAO').AsInteger;
   cds_nfeencMANIFESTACAO_DATHOR.Value   := query_cadnfe_distDfeInt.fieldbyname('DFE_MANIFESTACAO_DATHOR').AsDateTime;
   if cds_nfeencMANIFESTACAO_SITUACAO.AsInteger=0 then
      cds_nfeencMANIFESTACAO_SITUACAO_TEXTO.Value   := 'Pendente'
   else if cds_nfeencMANIFESTACAO_SITUACAO.AsInteger=1 then
      cds_nfeencMANIFESTACAO_SITUACAO_TEXTO.Value   := 'Ciencia da Operacao'
   else if cds_nfeencMANIFESTACAO_SITUACAO.AsInteger=2 then
      cds_nfeencMANIFESTACAO_SITUACAO_TEXTO.Value   := 'Desconhecimento da Operacao'
   else
      cds_nfeencMANIFESTACAO_SITUACAO_TEXTO.Value   := '****NAO IDENTIFICADO****';

   cds_nfeenc.Post;
   query_cadnfe_distDfeInt.Next;


   end;

query_cadnfe_distDfeInt.close;
freeandnil(query_cadnfe_distDfeInt);
cds_nfeenc.EnableControls;

end;

procedure TFrm_NFE_Manifestacao.bblerdadosClick(Sender: TObject);
begin
fLerCADNFE_DISTDFEINT;

end;

procedure TFrm_NFE_Manifestacao.bbCienciaClick(Sender: TObject);
begin
fManifestacao('210200',fdeixanum(cds_nfeencchNFe.AsString));

end;

end.
