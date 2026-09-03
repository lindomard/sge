unit s_Impressao_nfe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  printers,
   WinSpool,

  Dialogs, DB, DBClient,dbtables;

type
  TFontesECF = record
  Negrito_ativa: String;
  Negrito_desativa: String;
  condensado_ativa: String; // 64 carcteres por linha
  condensado_desativa: String; // 48 caracteres por linha
  CortarPapel: String;
  texto_centralizado: String;
  texto_esquerda: String;
  texto_direita: String;
  abrirgaveta: String;
  mqtdcarlin: integer;

  end;


type
  TDadosNFCe = record
  pXML: string;
  pChave: integer;
  pchave_ano: integer;
  pcodemp: integer;
  ptipoDoc: integer;
  pQtdVias: integer;
  pEmitente: String;
  pAplicativo: String;
  pOperador: String;
  pQtdItem: integer;
  pPadraoNFCE: string;
  pImpressora: string;

  end;


type
  TFrm_Impressao_nfe = class(TForm)
    cds_cabecalho: TClientDataSet;
    cds_cabecalhoCHAVE_ACESSO: TStringField;
    cds_cabecalhochave_acesso_calc: TStringField;
    cds_cabecalhoEMITXNOME: TStringField;
    cds_cabecalhoemicidadeuf: TStringField;
    cds_cabecalhoEMITIE: TStringField;
    cds_cabecalhoEMITIEST: TStringField;
    cds_cabecalhoCRT: TIntegerField;
    cds_cabecalhoemit_endereco_comp: TStringField;
    cds_cabecalhoTPIMP: TIntegerField;
    cds_cabecalhomodelo: TIntegerField;
    cds_cabecalhoemit_cnpj: TStringField;
    cds_cabecalhofone_fax: TStringField;
    cds_cabecalhocep_emit: TStringField;
    cds_cabecalhosaida_entrada: TStringField;
    cds_cabecalhoIDENNF: TStringField;
    cds_cabecalhonumeronf: TFloatField;
    cds_cabecalhoIDEDEMI: TDateTimeField;
    cds_cabecalhoDATASAIDA: TDateTimeField;
    cds_cabecalhoHORASAIDA: TStringField;
    cds_cabecalhoIDESERIE: TStringField;
    cds_cabecalhoIDENATOP: TStringField;
    cds_cabecalhoDESTISUF: TStringField;
    cds_cabecalhonomcli_codigo: TStringField;
    cds_cabecalhonum_prot: TStringField;
    cds_cabecalhodest_cnpj: TStringField;
    cds_cabecalhoDESTENDERDESTXLGR: TStringField;
    cds_cabecalhoDESTENDERDESTXBAIRRO: TStringField;
    cds_cabecalhoDESTENDERDESTCEP: TStringField;
    cds_cabecalhoDESTENDERDESTXMUN: TStringField;
    cds_cabecalhodest_fone: TStringField;
    cds_cabecalhoDESTENDERDESTUF: TStringField;
    cds_cabecalhodest_inscricao: TStringField;
    cds_cabecalhoTOTALICMSTOTVBC: TFloatField;
    cds_cabecalhoTOTALICMSTOTVICMS: TFloatField;
    cds_cabecalhoTOTALICMSTOTVBCST: TFloatField;
    cds_cabecalhoTOTALICMSTOTVST: TFloatField;
    cds_cabecalhoTOTALICMSTOTVPROD: TFloatField;
    cds_cabecalhoTOTALICMSTOTVFRETE: TFloatField;
    cds_cabecalhoTOTALICMSTOTVSEG: TFloatField;
    cds_cabecalhoTOTALICMSTOTVDESC: TFloatField;
    cds_cabecalhoTOTALICMSTOTVOUTRO: TFloatField;
    cds_cabecalhoTOTALICMSTOTVIPI: TFloatField;
    cds_cabecalhoTOTALICMSTOTVNF: TFloatField;
    cds_cabecalhovalor_texto: TStringField;
    cds_cabecalhoemissao_texto: TStringField;
    cds_cabecalhoTT_XNOME: TStringField;
    cds_cabecalhoTRANSPVEICTRANSPPLACA: TStringField;
    cds_cabecalhoTRANSPVEICTRANSPUF: TStringField;
    cds_cabecalhotransp_cnpj: TStringField;
    cds_cabecalhoTT_XENDER: TStringField;
    cds_cabecalhoTT_XMUN: TStringField;
    cds_cabecalhoTT_UF: TStringField;
    cds_cabecalhoTRANSPVOLQVOL: TIntegerField;
    cds_cabecalhoTRANSPVOLMARCA: TStringField;
    cds_cabecalhoTRANSPVOLPESOB: TFloatField;
    cds_cabecalhoTRANSPVOLPESOL: TFloatField;
    cds_cabecalhoINFADICINFCPL: TMemoField;
    cds_cabecalhoINFADICINFADFISCO: TMemoField;
    cds_cabecalhoTOTALISSQNTOTVISS: TFloatField;
    cds_cabecalhoTOTALISSQNTOTVBC: TFloatField;
    cds_cabecalhofantasia_cliente: TStringField;
    cds_cabecalhoEMITIM: TStringField;
    cds_cabecalhorecebemos: TStringField;
    cds_cabecalhorazao_fantasia: TStringField;
    cds_cabecalhodata_vencimentos: TStringField;
    cds_cabecalhofrete_cif_fob: TStringField;
    cds_cabecalhoTRANSPVOLESP: TStringField;
    cds_cabecalhoqrcode: TStringField;
    cds_cabecalhochacesso_bloco1: TStringField;
    cds_cabecalhochacesso_bloco2: TStringField;
    cds_cabecalhotpemis: TIntegerField;
    cds_cabecalhodathorprot: TDateTimeField;
    cds_cabecalhovTotTrib: TFloatField;
    cds_cabecalhoobscup: TMemoField;
    cds_cabecalhotpamb: TIntegerField;
    cds_detalhe: TClientDataSet;
    cds_detalheDETINFADPROD: TMemoField;
    cds_detalhenomepro: TStringField;
    cds_detalheDETPRODQCOM: TFloatField;
    cds_detalheDETPRODCPROD: TFloatField;
    cds_detalheDETPRODNCM: TStringField;
    cds_detalheDETPRODCFOP: TStringField;
    cds_detalheDETPRODUCOM: TStringField;
    cds_detalheVDESC: TFloatField;
    cds_detalheDETPRODVUNCOM: TFloatField;
    cds_detalheDETPRODVPROD: TFloatField;
    cds_detalheORI_PROD: TStringField;
    cds_detalhecst: TStringField;
    cds_detalheICMSVBC: TFloatField;
    cds_detalhealiq_icms: TFloatField;
    cds_detalheCSOSN: TStringField;
    cds_detalhepercipi: TFloatField;
    cds_detalheitem_num: TIntegerField;
    cds_vcto: TClientDataSet;
    cds_vctoVDATA: TDateTimeField;
    cds_vctoVVALOR: TFloatField;
    cds_vctonumdup: TStringField;
    cds_vctonomfpgto: TStringField;
    cds_cabecalhovcodven: TFloatField;
    cds_cabecalhovnome: TStringField;
    cds_cabecalhoP1CHAVE: TIntegerField;
  private
    { Private declarations }
  function fImpressao_Elgin(pDadosNFce: TDadosNFCe): boolean;

  public
  mDadosNfce: TDadosNFCe;

  function fImprimir(pDadosNFce: TDadosNFCe): boolean;

    { Public declarations }
  end;
procedure pSetarFontesECF(pNome_Impressora: String);
procedure fRedirecionarPoartaUsbparaLPT1(pNomeCompartilhamento: string);
function fQuebraTString(pqtdcar: Integer; pTexto: String):  tStringList;

var
mfonte_ecf: TFontesECF;
const mPadraoNFCE_DARUMA = 'DARUMA';
 mPadraoNFCE_EPSON = 'EPSON';
 mPadraoNFCE_ELGIN = 'ELGIN';
 mPadraoNFCE_BEMATECH = 'BEMATECH';
 mPadraoNFCE_DIEBOLD = 'BEMATECH';

var
  Frm_Impressao_nfe: TFrm_Impressao_nfe;

implementation

uses func, S_DM1, S_, func2, func_ecf, lerarq, S_DM2, S_DM4, func_excecoes;

{$R *.dfm}

function fQuebraTString(pqtdcar: Integer; pTexto: String):  tStringList;
{
Esta funçao retorna o conteudo separada pela quantidade de caracteres
}

var
{y,x: Integer;
mPosEspaco: Integer;
S: string;
}
pTextoTemp: tStringlist;
x_texto: integer;
mLinha_nova: string;
begin
pTextoTemp:=tStringlist.Create;
pTextoTemp.Text:=fSubstituirtexto(pTexto,' ',#13);
Result:=TStringList.Create;
mLinha_nova:='';
for x_texto:=0 to pTextoTemp.Count-1 do
   begin
   if length((mLinha_nova+' '+pTextoTemp[x_texto]))>pQtdCar then
      begin
      if length(mLinha_nova)>pqtdCar then
         begin
         result.Add(copy(mLinha_nova,1,pqtdcar));
         mLinha_nova:=copy(mLinha_nova,pqtdcar+1,length(mLinha_nova)-pqtdcar);
         end
      else
         result.Add(mLinha_nova);
      mLinha_nova:='';
      end;
   mLinha_nova:=mLinha_nova+pTextoTemp[x_texto]+' ';
   end;

if trim(mLinha_nova)<>'' then
   begin
   if length(mLinha_nova)>pqtdCar then
       begin
       result.Add(copy(mLinha_nova,1,pqtdcar));
       mLinha_nova:=copy(mLinha_nova,pqtdcar+1,length(mLinha_nova)-pqtdcar);
       end;
   result.Add(mLinha_nova);
   end;
freeandnil(pTextoTemp);
end;



function TFrm_Impressao_nfe.fImprimir(pDadosNFce: TDadosNFCe): boolean;
var
query_cab: tQuery;
query_det: tQuery;
query_vcto: tQuery;
mRelatorio: String;
x_via: integer;
begin

mRelatorio:='VALE';
if flcadimp_sys(1,DM2.Qr_CabP1CODEMP.AsInteger-iif(DM2.Qr_CabP1CODEMP.AsInteger>100,100,0),0,mRelatorio) then
   begin
   pDadosNFce.pImpressora:=DM4.Tb_Imp_SysCIPORTA.AsString;
   end;


Query_cab:=tQuery.create(nil);
Query_cab.DatabaseName := dm1.SG_ASSOC.DatabaseName;
Query_cab.close;
Query_cab.sql.clear;
Query_cab.sql.Add('select razao as emitxnome '
                 +' ,P1NFE_CHACESSO AS CHAVE_ACESSO  ' +
' ,cidade as emitcidade  ' +
'  ,uf as emitcidadeuf  ' +
' ,inscricao as emitie ' +
' ,cgc as emitcnpj ' +
' ,emp_optsimples as crt ' +
' ,endereco || '+quotedStr('  ')+' || bairro  as emitendereco_comp ' +
' ,fone as fone_fax ' +
' ,cep as cep_emit ' +
' ,1 as tpImp ' +
' ,P1MODELO AS modelo ' +
' ,'+quotedStr('S')+' as saida_entrada ' +
' ,P1DATACF as IDENNF ' +
' ,P1NUMCF as numeroNF ' +
' ,P1DATDOC as IDEDEMI ' +
' ,p1prevent as DATASAIDA ' +
' ,p1hprevent as HORASAIDA ' +
' ,p1serie as IDESERIE ' +
' ,decode(CFRAZAO,null,CRAZAO,CFRAZAO) || '+quotedStr(' - ')+' || P1CODCLI as DESTtxnome ' +
' ,decode(CFCGC,null,CCNPJ,CFCGC)  as destCNPJ ' +
' ,decode(CFCIDADE,null,ccidade,CFCIDADE)  as destcidade ' +
' ,decode(CFUF,null,cuf,CFUF)  as destcidadeuf ' +
' ,cie as dest_inscricao ' +
' ,clog as DESTENDERDESTXLGR ' +
' ,cbairro as DESTENDERDESTXBAIRRO ' +
' ,decode(CFCEP,null,ccep,CFCEP) as DESTENDERDESTCEP ' +
' ,decode(CFCIDADE,null,ccidade,CFCIDADE) as DESTENDERDESTXMUN ' +
' ,decode(CFUF,null,cuf,CFUF) as DESTENDERDESTUF ' +
' ,decode(CFFONE,null,cfone01,CFFONE)  as dest_fone ' +
' ,P1BASEN AS TOTALICMSTOTVBC ' +
' ,P1ICMSN AS TOTALICMSTOTVICMS ' +
' ,P1TOTALB AS TOTALICMSTOTVPROD ' +
' ,P1TOTALL AS TOTALICMSTOTVNF ' +
' ,CDENOM AS fantasia_cliente ' +
' ,decode(CFRAZAO,null,CRAZAO,CFRAZAO) || '+quotedStr(' - ')+'  || CDENOM AS razao_fantasia ' +
' ,VCODVEN,VNOME '+
' ,P1CHAVE '+
' from cademp,cadp01,cadcli,CADCSF,CADVEN ' +

' where codemp=1 and ' +
' ccodcli=p1codcli ' +
' AND p1codemp='+Inttostr(pDadosNFce.pcodemp)
+' and p1chave='+Inttostr(pDadosNFce.pChave)
+' and p1lotseq='+inttostr(pDadosNFce.pChave_ano)
+' AND CFCHAVEP(+)=P1CHAVE '
+' AND CFCODEMP(+)=P1CODEMP '
+' AND VCODVEN=P1CODVEN '
);


try
   query_cab.Open
except on e : exception do
   begin
   ex_erroSql_Novo(query_cab,231,'frm_impressao_nfe: '+e.Message,'CADP01');
   result:=False;
   END;
   end;
cds_cabecalho.CreateDataSet;
cds_cabecalho.Open;
cds_cabecalho.Append;
//' ,cidade as emitcidade  ' +

cds_cabecalhoEMITXNOME.value := query_cab.fieldbyname('emitxnome').AsString;
cds_cabecalhoCHAVE_ACESSO.value := query_cab.fieldbyname('CHAVE_ACESSO').AsString;
cds_cabecalhoemicidadeuf.value := query_cab.fieldbyname('emitcidadeuf').AsString;
cds_cabecalhoEMITIE.value := query_cab.fieldbyname('emitie').AsString;
cds_cabecalhoemit_cnpj.value := query_cab.fieldbyname('emitcnpj').AsString;
cds_cabecalhoCRT.value := query_cab.fieldbyname('crt').AsInteger;
cds_cabecalhoemit_endereco_comp.value := query_cab.fieldbyname('emitendereco_comp').AsString;
cds_cabecalhofone_fax.value := query_cab.fieldbyname('fone_fax').AsString;
cds_cabecalhocep_emit.value := query_cab.fieldbyname('cep_emit').AsString;
cds_cabecalhoTPIMP.value := query_cab.fieldbyname('tpimp').AsInteger;
cds_cabecalhomodelo.value := valint(query_cab.fieldbyname('modelo').AsString);
cds_cabecalhosaida_entrada.value := query_cab.fieldbyname('saida_entrada').AsString;
cds_cabecalhoIDENNF.value := query_cab.fieldbyname('IDENNF').AsString;

cds_cabecalhonumeroNF.value := query_cab.fieldbyname('numeroNF').AsFloat;
cds_cabecalhoIDEDEMI.value := query_cab.fieldbyname('IDEDEMI').AsFloat;

cds_cabecalhoIDENNF.AsInteger := query_cab.fieldbyname('numeroNF').AsInteger;

cds_cabecalhoP1CHAVE.asinteger := query_cab.fieldbyname('P1CHAVE').AsInteger;



cds_cabecalhoDATASAIDA.value := query_cab.fieldbyname('DATASAIDA').AsDateTime;
cds_cabecalhoHORASAIDA.value := query_cab.fieldbyname('HORASAIDA').AsString;
cds_cabecalhoIDESERIE.value := query_cab.fieldbyname('IDESERIE').AsString;
cds_cabecalhonomcli_codigo.value := query_cab.fieldbyname('DESTtxnome').AsString;
cds_cabecalhodest_cnpj.value := query_cab.fieldbyname('destCNPJ').AsString;
cds_cabecalhodest_inscricao.value := query_cab.fieldbyname('dest_inscricao').AsString;
cds_cabecalhoDESTENDERDESTXLGR.value := query_cab.fieldbyname('DESTENDERDESTXLGR').AsString;
cds_cabecalhoDESTENDERDESTXBAIRRO.value := query_cab.fieldbyname('DESTENDERDESTXBAIRRO').AsString;
cds_cabecalhoDESTENDERDESTCEP.value := query_cab.fieldbyname('DESTENDERDESTCEP').AsString;
cds_cabecalhoDESTENDERDESTXMUN.value := query_cab.fieldbyname('DESTENDERDESTXMUN').AsString;
cds_cabecalhoDESTENDERDESTUF.value := query_cab.fieldbyname('DESTENDERDESTUF').AsString;
cds_cabecalhodest_fone.value := query_cab.fieldbyname('dest_fone').AsString;
cds_cabecalhoTOTALICMSTOTVBC.value := query_cab.fieldbyname('TOTALICMSTOTVBC').AsFloat;
cds_cabecalhoTOTALICMSTOTVICMS.value := query_cab.fieldbyname('TOTALICMSTOTVICMS').AsFloat;
cds_cabecalhoTOTALICMSTOTVPROD.value := query_cab.fieldbyname('TOTALICMSTOTVPROD').AsFloat;
cds_cabecalhoTOTALICMSTOTVNF.value := query_cab.fieldbyname('TOTALICMSTOTVNF').AsFloat;
cds_cabecalhofantasia_cliente.value := query_cab.fieldbyname('fantasia_cliente').AsString;
cds_cabecalhorazao_fantasia.value := query_cab.fieldbyname('razao_fantasia').AsString;
cds_cabecalhovcodven.value := query_cab.fieldbyname('vcodven').AsFloat;
cds_cabecalhovnome.value := query_cab.fieldbyname('vnome').AsString;

cds_cabecalho.post;

cds_detalhe.CreateDataSet;

Query_det:=tQuery.create(nil);
Query_det.DatabaseName := dm1.SG_ASSOC.DatabaseName;

Query_det.close;
Query_det.sql.clear;
Query_det.sql.Add('SELECT '+QuotedStr(' ')+' AS DETINFADPROD '
+',PDNOME  || '+quotedstr(' ')+' || PDMARCA AS nomepro '
+',P2QTD AS DETPRODQCOM '
+',PDCODPRO AS DETPRODCPROD '
+',PDCODNCM AS DETPRODNCM '
+',P2CFO AS DETPRODCFOP '
+',PDUND AS DETPRODUCOM '
+',P2TOTDES AS VDESC '
+',P2PRECO AS DETPRODVUNCOM '
+',ROUND((P2PRECO*P2QTD),2) AS DETPRODVPROD '
+',P2CSOSN_ORI AS ORI_PROD '
+',P2SIT AS CST '
+',P2BASEN AS ICMSVBC '
+',P2ALIQ AS aliq_icms '
+',P2CSOSN AS CSOSN '
+',P2ALIPI AS percipi '
+',P2ITEM as item_num '
+'FROM CADP02,CADPRO '
+' WHERE PDCODPRO=P2CODPRO '
+' and P2CHAVE='+Inttostr(pDadosNFce.pChave)
+' and P2LOTSEQ='+Inttostr(pDadosNFce.pChave_ano)
+' and P2CODEMP='+Inttostr(pDadosNFce.pCodEmp)
+' order by P2ITEM ');

try
   query_det.Open
except on e : exception do
   begin
   ex_erroSql_Novo(query_det,309,'frm_impressao_nfe: '+e.Message,'CADP02');
   result:=False;
   END;
   end;
While not Query_det.eof do
   begin
   cds_detalhe.append;
   cds_detalheDETINFADPROD.value := query_det.fieldbyname('DETINFADPROD').AsString;
   cds_detalhenomepro.value := query_det.fieldbyname('nomepro').AsString;
   cds_detalheDETPRODQCOM.value := query_det.fieldbyname('DETPRODQCOM').AsFloat;
   cds_detalheDETPRODCPROD.value := query_det.fieldbyname('DETPRODCPROD').AsFloat;
   cds_detalheDETPRODNCM.value := query_det.fieldbyname('DETPRODNCM').AsString;
   cds_detalheDETPRODCFOP.value := query_det.fieldbyname('DETPRODCFOP').AsString;
   cds_detalheDETPRODUCOM.value := query_det.fieldbyname('DETPRODUCOM').AsString;
   cds_detalheVDESC.value := query_det.fieldbyname('VDESC').AsFloat;
   cds_detalheDETPRODVUNCOM.value := query_det.fieldbyname('DETPRODVUNCOM').AsFloat;
   cds_detalheDETPRODVPROD.value := query_det.fieldbyname('DETPRODVPROD').AsFloat;
   cds_detalheORI_PROD.value := query_det.fieldbyname('ORI_PROD').AsString;
   cds_detalhecst.value := query_det.fieldbyname('cst').AsString;
   cds_detalheICMSVBC.value := query_det.fieldbyname('ICMSVBC').AsFloat;
   cds_detalhealiq_icms.value := query_det.fieldbyname('aliq_icms').AsFloat;
   cds_detalheCSOSN.value := query_det.fieldbyname('CSOSN').AsString;
   cds_detalhepercipi.value := query_det.fieldbyname('percipi').AsFloat;
   cds_detalheitem_num.value := query_det.fieldbyname('item_num').AsInteger;
   cds_detalhe.Post;
   query_det.next;
   end;

query_vcto:=tQuery.create(nil);
Query_vcto.DatabaseName := dm1.SG_ASSOC.DatabaseName;

query_vcto.close;
query_vcto.sql.clear;
query_vcto.sql.add('select pfpdata as vdata,pfpvalor as vvalor, '
                  +cds_cabecalhonumeronf.asstring+'  as numdup '
                  +',pfpnomfor as nomfpgto '
                  +' from cadpfp '
                  +' where pfpcodemp='+inttostr(pDadosNFce.pCodEmp)
                  +' and pfplotseq='+Inttostr(pDadosNFce.pChave_ano)
                  +' and pfpchave='+Inttostr(pDadosNFce.pChave));

try
   query_vcto.Open
except on e : exception do
   begin
   ex_erroSql_Novo(query_vcto,355,'frm_impressao_nfe: '+e.Message,'CADPfp');
   result:=False;
   END;
   end;

cds_vcto.CreateDataSet;
cds_vcto.Open;

While not query_vcto.Eof do
   begin
   cds_vcto.Append;
   cds_vctoVDATA.Value  := query_vcto.fieldbyname('VDATA').AsDateTime;
   cds_vctoVVALOR.Value := query_vcto.fieldbyname('VVALOR').AsFloat;
   cds_vctonumdup.Value    := query_vcto.fieldbyname('numdup').AsString;
   cds_vctonomfpgto.Value  := query_vcto.fieldbyname('nomfpgto').AsString;
   cds_vcto.Post;
   query_vcto.Next;
   end;

for x_via:=1 to pDadosNFce.pQtdVias do
   begin
   fImpressao_Elgin(pDadosNFce);
   end;
result :=true;

end;



procedure fRedirecionarPoartaUsbparaLPT1(pNomeCompartilhamento: string);
var
mNomeComputador: String;
begin
// DESATIVAR NET USE LPT1 /DELETE
if pos('\\',pNomeCompartilhamento)>0 then
   begin
   fexecprog_espera('net use LPT1 '+pNomeCompartilhamento + ' /PERSISTENT:YES ', SW_HIDE);
   end
else
   begin
   mNomeComputador := NomeComputador;
   fexecprog_espera('net use LPT1 \\' + NomeComputador + '\' +
    pNomeCompartilhamento + ' /PERSISTENT:YES ', SW_HIDE);
   end;

  // fexecprog_sai('net user LPT1 \\'+mNomeComputador+'\'+pNomeCompartilhamento+' /PERSISTENT:YES ');

  // net user LPT1 \\LINDOOMAR-PC\ELGIN /PERSISTENT:YES
end;


procedure pSetarFontesECF(pNome_Impressora: String);
begin
pNome_Impressora:=lowercase(pnome_impressora);

if pos('daruma', pNome_Impressora) > 0 then
   begin
   mfonte_ecf.Negrito_ativa := #27 + #69 + #1;
   mfonte_ecf.Negrito_desativa := #27 + #69 + #0;
   mfonte_ecf.condensado_ativa := #27 + #77 + #1;
   mfonte_ecf.condensado_desativa  := #27 + #77 + #0;
   mfonte_ecf.CortarPapel:=  #27 + 'm';
   mfonte_ecf.texto_centralizado:= #27 + #97 +#49;
   mfonte_ecf.texto_esquerda:= #27 + #97 +#48;
   mfonte_ecf.texto_direita:= #27 + #97 +#50;
   mfonte_ecf.abrirgaveta:= #27 + #112 +#0 +#50 +#200;
   mfonte_ecf.abrirgaveta:= #27 + 'p';
   mfonte_ecf.mqtdcarlin := 55; // 64;


   end
else if pos('epson', pNome_Impressora) > 0 then
   begin
   mfonte_ecf.Negrito_ativa := #27 + #69 + #1;
   mfonte_ecf.Negrito_desativa := #27 + #69 + #0;
   mfonte_ecf.condensado_ativa := #27 + #77 + #1;
   mfonte_ecf.condensado_desativa  := #27 + #77 + #0;
   mfonte_ecf.CortarPapel:= #29 + #86 + #1 + #0;
   mfonte_ecf.texto_centralizado:= #27 + #97 +#49;
   mfonte_ecf.texto_esquerda:= #27 + #97 +#48;
   mfonte_ecf.texto_direita:= #27 + #97 +#50;
   mfonte_ecf.abrirgaveta:= #27 + #112 +#0 +#50 +#200;
   mfonte_ecf.abrirgaveta:= chr($1B) + 'p' + chr($0) + chr($25) + chr($250);
   mfonte_ecf.abrirgaveta:=#27 + #112 + #000 + #010 + #100; //epson???
   mfonte_ecf.mqtdcarlin := 55; // 64;


   end
else if pos('elgin', pNome_Impressora) > 0 then
   begin
   mfonte_ecf.Negrito_ativa := #27 + #69 + #1;
   mfonte_ecf.Negrito_desativa := #27 + #69 + #0;
   mfonte_ecf.condensado_ativa := #27 + #77 + #1;
   mfonte_ecf.condensado_desativa  := #27 + #77 + #0;
   mfonte_ecf.CortarPapel:= #29 + #86 + #1 + #0;
   mfonte_ecf.texto_centralizado:= #27 + #97 +#49;
   mfonte_ecf.texto_esquerda:= #27 + #97 +#48;
   mfonte_ecf.texto_direita:= #27 + #97 +#50;
   mfonte_ecf.abrirgaveta:= #27 + #112 +#0 +#50 +#200;
   mfonte_ecf.abrirgaveta:= #27 + #112 +#0 +#49 +#0;
   mfonte_ecf.mqtdcarlin := 55; // era 64
   end
else if pos('bematech', pNome_Impressora) > 0 then
   begin
{
   mfonte_ecf.Negrito_ativa := #27 + #52;
   mfonte_ecf.Negrito_desativa := #27 + #53;
   mfonte_ecf.condensado_ativa := #15;
   mfonte_ecf.condensado_desativa  := #18 + #10;
   mfonte_ecf.texto_centralizado:= #27 + #0 +#49;
   mfonte_ecf.texto_esquerda:= #27 + #0 +#48;
   mfonte_ecf.texto_direita:= #27 + #0 +#50;
}
   mfonte_ecf.Negrito_ativa := #27 + #69 + #1;
   mfonte_ecf.Negrito_desativa := #27 + #69 + #0;
   mfonte_ecf.condensado_ativa := #27 + #77 + #1;
   mfonte_ecf.condensado_desativa  := #27 + #77 + #0;
   mfonte_ecf.CortarPapel:= #27 + #119; // + #1; // GUILHOTINA
   mfonte_ecf.texto_centralizado:= #27 + #97 +#49;
   mfonte_ecf.texto_esquerda:= #27 + #97 +#48;
   mfonte_ecf.texto_direita:= #27 + #97 +#50;
   mfonte_ecf.abrirgaveta:= #27 + #112 +#0 +#50 +#200;
   mfonte_ecf.abrirgaveta:= #29 + #249 + #32 + #0 + #27 + #116 + #8 + #27 + #118 + #140;
   mfonte_ecf.mqtdcarlin := 55;



//   mfonte_ecf.abrirgaveta:= #027 + 'v' + #140;;
//   Writeln(F, #29 + #249 + #32 + #0 + #27 + #116 + #8 + #27 + #118 + #140) //bematech
   end
else if pos('diebold', pNome_Impressora) > 0 then
   begin
   mfonte_ecf.Negrito_ativa := #27 + #69 + #1;
   mfonte_ecf.Negrito_desativa := #27 + #69 + #0;
   mfonte_ecf.condensado_ativa := #27 + #77 + #1;
   mfonte_ecf.condensado_desativa  := #27 + #77 + #0;
   mfonte_ecf.CortarPapel:= #10 + #17; // GUILHOTINA

   mfonte_ecf.texto_centralizado:= #27 + #97 +#49;
   mfonte_ecf.texto_esquerda:= #27 + #97 +#48;
   mfonte_ecf.texto_direita:= #27 + #97 +#50;
   mfonte_ecf.abrirgaveta:= #27 + #112 +#0 +#50 +#200;
   mfonte_ecf.abrirgaveta:=  #27 + '&' + '0' + #12 + #48;
   mfonte_ecf.mqtdcarlin := 55; // 64;
   end
else
   begin
   mfonte_ecf.Negrito_ativa := #27 + #69 + #1;
   mfonte_ecf.Negrito_desativa := #27 + #69 + #0;
   mfonte_ecf.condensado_ativa := #27 + #77 + #1;
   mfonte_ecf.condensado_desativa  := #27 + #77 + #0;
   mfonte_ecf.CortarPapel:= #29 + 'V' + #65 + #0;
//   mfonte_ecf.CortarPapel:= #29 + #86 + #1 + #0;
   mfonte_ecf.texto_centralizado:= #27 + #97 +#49;
   mfonte_ecf.texto_esquerda:= #27 + #97 +#48;
   mfonte_ecf.texto_direita:= #27 + #97 +#50;
   mfonte_ecf.abrirgaveta:= #27 + #112 +#0 +#50 +#200;
   mfonte_ecf.abrirgaveta:= #27 + #112 +#0 +#49 +#0;
   mfonte_ecf.mqtdcarlin := 55; // 64;
   end;
end;



function TFrm_Impressao_nfe.fImpressao_Elgin(pDadosNFce: TDadosNFCe): boolean;
var
  F : TextFile;

  mPorta_Impressao: string;
  mQtdLinImp: integer;
  x_lin: integer;
      mQtdItens : integer;
    mTotBru : real;
    mTotDes : real;
    mitem_inicio: String;
    mItem_Final: String;
mimpressora_nome: string;
mtipo_impressora: string;
mLinhas: tStrings;
mconsultal01 :String;
mconsultal02 :String;

  Linha: integer;
  Coluna: integer;
    myPrinter: TPrinter;
mtotaltroco: real;
mpos_ender: integer;
pCodBar: string;
const mGer_Emp_CRT = 2;
const   mqtditempage = 8;
const  dpi = 300;
const  pWidth = 15;
const pVisualizar = 'Visualizar';



  function printCanvas(print: TPrinter; pNegrito: boolean; pLinha: integer;
    Texto: String): integer;

  begin
    print.Canvas.TextOut(Coluna, pLinha, Texto);
    result := pLinha;
  end;

{

  procedure fImprimir(pTexto: string);
  begin
    mQtdLinImp := mQtdLinImp + 1;

    if pDadosNFce.pImpressora =  pVisualizar then
    begin
    end
    else
    begin
//      printCanvas(myPrinter, false, Linha, pTexto);
    end;
  end;
 }

  procedure fImprimir_fonte(pTexto,pFonte: string);
  begin
    writeln(F, pFonte+ pTexto);
  end;


  function GetCurrentPrinterHandle: THandle;
var
  Device, Driver, Port: array[0..255] of Char;
  Mode: THandle;
begin
   Printer.GetPrinter(Device, Driver, Port, Mode);
   if not OpenPrinter(@Device, Result, nil) then
     RaiseLastWin32Error;
 end;

  function GetCurrentPrinterPort: string;
  var
    Buffer: array of Char;
    Size: dword;
    H: THandle;
  begin

    H := GetCurrentPrinterHandle;
    try
      GetPrinter(H, 2, nil, 0, @Size);
      SetLength(Buffer, Size);
      try
        GetPrinter(H, 2, @Buffer[0], Size, @Size);
        result := PPrinterInfo2(@Buffer[0])^.pPortName;
        if result[length(result)] = ':' then
          result := copy(result, 1, length(result) - 1);
      finally
        Buffer := nil;
      end;
    finally
      ClosePrinter(H);
    end;
  end;



begin
result := true;
     begin
        begin
        Printer.PrinterIndex := Printer.printers.IndexOf(pDadosNFce.pImpressora);
        mPorta_Impressao := GetCurrentPrinterPort;
        mimpressora_nome :=
          lowercase(Printer.printers.Strings[Printer.PrinterIndex]);
        pSetarFontesECF(mimpressora_nome);
        if pos('daruma', mimpressora_nome) > 0 then
          mtipo_impressora := mPadraoNFCE_DARUMA
        else if pos('epson', mimpressora_nome) > 0 then
          mtipo_impressora := mPadraoNFCE_EPSON
        else if pos('elgin', mimpressora_nome) > 0 then
          mtipo_impressora := mPadraoNFCE_ELGIN
        else if pos('bematech', mimpressora_nome) > 0 then
          mtipo_impressora := mPadraoNFCE_BEMATECH
        else
          mtipo_impressora := mPadraoNFCE_ELGIN;

        // Showmessage(Printer.Printers.Strings[Printer.PrinterIndex]);

         end;
      end;

  {
    Printer.GetPrinter(Device, Driver, @Port[0], hDeviceMode);
    mPorta_Impressao:= PPrinterInfo2(@Port[0])^.pPortName;
  }
  // GetPrinter(H, 2, @Buffer[0], Size, @Size);

  // GetCurrentPrinterPort;

  try
//  if copy(pDadosNFce.pportanfce,1,3)<>'COM' then
     begin
    if (Pos('USB',UpperCase(mPorta_Impressao))>0) or
       (Pos('ESD',UpperCase(mPorta_Impressao))>0) or
       (Pos('COM',UpperCase(mPorta_Impressao))>0) then
      begin
        fRedirecionarPoartaUsbparaLPT1(mimpressora_nome);
        mPorta_Impressao := 'LPT1';
      end;
     AssignFile(F, mPorta_Impressao);
     end;
{
  else
     AssignFile(F,pDadosNFce.pportanfce);
}


    Rewrite(F);
    fImprimir_fonte(insere('-', '-', mfonte_ecf.mqtdcarlin),mfonte_ecf.condensado_ativa);
    fImprimir_fonte(Centra(cds_cabecalhoEMITXNOME.AsString, ' ', mfonte_ecf.mqtdcarlin),mfonte_ecf.condensado_ativa);
    fImprimir_fonte(Centra(cds_cabecalhofone_fax.AsString, ' ', mfonte_ecf.mqtdcarlin),mfonte_ecf.condensado_ativa);
    fImprimir_fonte(insere2(cds_cabecalhoemit_cnpj.AsString, ' ', 28) +
      insere(cds_cabecalhoEMITIE.AsString, ' ', mfonte_ecf.mqtdcarlin - 28),mfonte_ecf.condensado_ativa);

    mLinhas := fQuebratString(mfonte_ecf.mqtdcarlin, cds_cabecalhoemit_endereco_comp.Text);
    for x_lin := 0 to mLinhas.Count - 1 do
    begin
      fImprimir_fonte(Centra(mLinhas[x_lin], ' ', 28) +
        insere(cds_cabecalhoEMITIE.AsString, ' ', mfonte_ecf.mqtdcarlin),mfonte_ecf.condensado_ativa);
    end;
    fImprimir_fonte(insere('-', '-', mfonte_ecf.mqtdcarlin),mfonte_ecf.condensado_ativa);

    fImprimir_fonte(Centra('Chave: '+cds_cabecalhoP1CHAVE.AsString, ' ', mfonte_ecf.mqtdcarlin),mfonte_ecf.condensado_ativa);


    if (cds_cabecalhoIDEDEMI.AsDateTime>pDatanula) then
       begin
       fImprimir_fonte(Centra(Formatdatetime(fdt2 + ' hh:nn:ss',
       cds_cabecalhoIDEDEMI.AsDateTime), ' ', mfonte_ecf.mqtdcarlin),mfonte_ecf.condensado_ativa);
       end;
    fImprimir_fonte(Centra('CONVENIO DE CLIENTE', ' ',
      mfonte_ecf.mqtdcarlin),mfonte_ecf.condensado_ativa);
//    fImprimir_fonte(Centra('DE CONSUMIDOR ELETRONICA', ' ', mfonte_ecf.mqtdcarlin),'');

 fImprimir_fonte('Item Codigo            descricao','');
 fImprimir_fonte('    Qtde    UN           Vlr.Unit       Vlr.Tot','');

{
Item Codigo       descricao
Qtde     UN    Vlr.Unit Vlr.Total
001 1234567890123 1234567890123456789012345678901234567890123456
01,347 X 19,99 17 35.348
}
    mQtdItens := 0;
    mTotBru := 0;
    mTotDes := 0;
    cds_detalhe.First;
    while not cds_detalhe.Eof do
    begin
      mQtdItens := mQtdItens + 1;
      mTotBru := mTotBru + cds_detalheDETPRODVPROD.asfloat;
      mTotDes := mTotDes + cds_detalheVDESC.asfloat;
      mitem_inicio:=FormatFloat('000', cds_detalheitem_num.AsInteger)
      +' '+insere3(cds_detalheDETPRODCPROD.AsString, ' ', 13)
      +' '+cds_detalhenomepro.AsString;

      mItem_Final:=cds_detalheDETPRODQCOM.AsString+' '
        +cds_detalheDETPRODUCOM.AsString+' x '+FormatFloat(mCasasPU, cds_detalheDETPRODVUNCOM.asfloat)+' ';
      if cds_detalhealiq_icms.AsFloat>0 then
         mItem_Final:=mItem_Final+'['+cds_detalhealiq_icms.AsString+']'
      else if mGer_Emp_CRT=2 then
         begin
         if copy(cds_detalhecst.AsString,1,1)='4' then
            mItem_Final:=mItem_Final+'[II]'
         else
            mItem_Final:=mItem_Final+'[FF]';
         end
      else

         begin
         if (cds_detalheCSOSN.AsString='203') or
            (cds_detalheCSOSN.AsString='300') or
            (cds_detalheCSOSN.AsString='400') then
            mItem_Final:=mItem_Final+'[II]'
         else
            mItem_Final:=mItem_Final+'[FF]';
         end;
      if length(mitem_inicio)>mfonte_ecf.mqtdcarlin then
         begin
         fImprimir_fonte(copy(mitem_inicio,1,mfonte_ecf.mqtdcarlin),mfonte_ecf.texto_esquerda);
         mitem_inicio:=copy(mitem_inicio,mfonte_ecf.mqtdcarlin+1,length(mitem_inicio)-mfonte_ecf.mqtdcarlin);
         end;
      mItem_Final:=mItem_Final+' '+FormatFloat(mCasasPU, cds_detalheDETPRODVPROD.asfloat);
      if length(mitem_inicio+' '+mItem_Final)>mfonte_ecf.mqtdcarlin then
         begin
         fImprimir_fonte(mitem_inicio,mfonte_ecf.texto_esquerda);
         fImprimir_fonte(mItem_Final,mfonte_ecf.texto_direita);
         end
      else
         begin
         mitem_inicio:=mitem_inicio+' '+insere(mItem_Final,' ',mfonte_ecf.mqtdcarlin-length(mitem_inicio));
         fImprimir_fonte(mitem_inicio,mfonte_ecf.texto_esquerda);
         end;
      if cds_detalheVDESC.asfloat > 0 then
         begin
         fImprimir_fonte('desconto sobre item ' + FormatFloat('000',
         cds_detalheitem_num.AsInteger) + insere(FormatFloat(mcasas,
         cds_detalheVDESC.asfloat), ' ', 30),mfonte_ecf.texto_esquerda);
         end;
      cds_detalhe.Next;
    end;

    fImprimir_fonte(insere('-', '-', mfonte_ecf.mqtdcarlin),mfonte_ecf.texto_esquerda);

    fImprimir_fonte('QTD. TOTAL DE ITENS' + insere(IntTostr(mQtdItens), ' ',
      mfonte_ecf.mqtdcarlin - 19),mfonte_ecf.texto_esquerda );
    if mTotDes > 0 then
    begin
      fImprimir_fonte('VALOR TOTAL R$     ' + insere(FormatFloat(mcasas, mTotBru),
        ' ', mfonte_ecf.mqtdcarlin - 19),mfonte_ecf.texto_esquerda);
      fImprimir_fonte('DESCONTO R$        ' + insere(FormatFloat(mcasas, mTotDes),
        ' ', mfonte_ecf.mqtdcarlin - 19),mfonte_ecf.texto_esquerda);
    end;
    fImprimir_fonte('VALOR A PAGAR R$   ' + insere(FormatFloat(mcasas,
      mTotBru - mTotDes), ' ', mfonte_ecf.mqtdcarlin - 19),mfonte_ecf.texto_esquerda);
    mtotaltroco := 0;
{
    fImprimir_fonte('FORMA DE PAGAMENTO ' + insere('VALOR PAGO', ' ',
      mfonte_ecf.mqtdcarlin - 19),mfonte_ecf.texto_esquerda);
    cds_vcto.First;

    while not cds_vcto.Eof do
    begin
      mtotaltroco := mtotaltroco + cds_vctoVVALOR.asfloat;
      fImprimir_fonte(insere2(cds_vctonomfpgto.AsString, ' ', 19) +
        insere(FormatFloat(mcasas, cds_vctoVVALOR.asfloat), ' ',
        mfonte_ecf.mqtdcarlin - 19),mfonte_ecf.texto_esquerda);

      cds_vcto.Next;
    end;
    mtotaltroco := arredonda((mtotaltroco - (mTotBru - mTotDes)), 2);
    if mtotaltroco > 0 then
    begin
      fImprimir_fonte(insere2('TROCO', ' ', 19) + insere(FormatFloat(mcasas,
        mtotaltroco), ' ', mfonte_ecf.mqtdcarlin - 19),mfonte_ecf.texto_esquerda);
    end;
 }


    if cds_cabecalhoIDEDEMI.AsDateTime>pDatanula then
       begin
       fImprimir_fonte(Centra('Emissao: ' + Formatdatetime(fdt2 + ' hh:nn:ss',
       cds_cabecalhoIDEDEMI.AsDateTime), ' ', mfonte_ecf.mqtdcarlin),mfonte_ecf.texto_esquerda);
       end;


    fImprimir_fonte(' ',mfonte_ecf.texto_esquerda);


    mLinhas := fQuebraTString(mfonte_ecf.mqtdcarlin, cds_cabecalhochacesso_bloco1.AsString +
      ' ' + cds_cabecalhochacesso_bloco2.AsString);
    for x_lin := 0 to mLinhas.Count - 1 do
    begin
      fImprimir_fonte(Centra(mLinhas[x_lin], ' ', mfonte_ecf.mqtdcarlin),mfonte_ecf.texto_esquerda);
    end;

    fImprimir_fonte(insere('-', '-', mfonte_ecf.mqtdcarlin),mfonte_ecf.texto_esquerda);

    if  fsonumero(cds_cabecalhodest_cnpj.asstring)>0 then
       fImprimir_fonte(Centra('CNPJ ' + cds_cabecalhodest_cnpj.AsString, ' ',
         mfonte_ecf.mqtdcarlin),mfonte_ecf.texto_esquerda);

      fImprimir_fonte('NOME: ' + cds_cabecalhonomcli_codigo.AsString,mfonte_ecf.texto_esquerda);
        mconsultal01 := 'Endereco: ' + cds_cabecalhoDESTENDERDESTXLGR.AsString;
        if cds_cabecalhoDESTENDERDESTXBAIRRO.AsString <> '' then
          mconsultal01 := mconsultal01 +
            cds_cabecalhoDESTENDERDESTXBAIRRO.AsString;
        mLinhas := fQuebratString(mfonte_ecf.mqtdcarlin, mconsultal01);
        for x_lin := 0 to mLinhas.Count - 1 do
        begin
          fImprimir_fonte(Centra(mLinhas[x_lin], ' ', mfonte_ecf.mqtdcarlin),mfonte_ecf.texto_esquerda);
        end;
      begin
        fImprimir_fonte('Cidade..: ' + cds_cabecalhoDESTENDERDESTXMUN.AsString + ' - ' + cds_cabecalhoDESTENDERDESTUF.AsString ,mfonte_ecf.texto_esquerda);
      end;

    fImprimir_fonte('Vendedor..: ' + cds_cabecalhovCodVen.Asstring + ' - ' + cds_cabecalhovNome.AsString ,mfonte_ecf.texto_esquerda);

    fImprimir_fonte(insere('-', '-', mfonte_ecf.mqtdcarlin),mfonte_ecf.texto_esquerda);
    fImprimir_fonte(Centra(' ', ' ', mfonte_ecf.mqtdcarlin),mfonte_ecf.texto_esquerda);
    fImprimir_fonte(Centra(' ', ' ', mfonte_ecf.mqtdcarlin),mfonte_ecf.texto_esquerda);
    fImprimir_fonte('Assinatura..: __________________________________________ ' ,mfonte_ecf.texto_esquerda);

    fImprimir_fonte(Centra(' ', ' ', mfonte_ecf.mqtdcarlin),mfonte_ecf.texto_esquerda);
    fImprimir_fonte(Centra(' ', ' ', mfonte_ecf.mqtdcarlin),mfonte_ecf.texto_esquerda);
    fImprimir_fonte(Centra(' ', ' ', mfonte_ecf.mqtdcarlin),mfonte_ecf.texto_esquerda);
    fImprimir_fonte(Centra(' ', ' ', mfonte_ecf.mqtdcarlin),mfonte_ecf.texto_esquerda);
    fImprimir_fonte(Centra(' ', ' ', mfonte_ecf.mqtdcarlin),mfonte_ecf.texto_esquerda);
    fImprimir_fonte(Centra(' ', ' ', mfonte_ecf.mqtdcarlin),mfonte_ecf.texto_esquerda);
    fImprimir_fonte(Centra(' ', ' ', mfonte_ecf.mqtdcarlin),mfonte_ecf.texto_esquerda);
    fImprimir_fonte(Centra(' ', ' ', mfonte_ecf.mqtdcarlin),mfonte_ecf.texto_esquerda);
    fImprimir_fonte(Centra('.', ' ', mfonte_ecf.mqtdcarlin),mfonte_ecf.texto_esquerda);

//    fImprimir(' ');

{    if cds_cabecalhovTotTrib.asfloat > 0 then
    begin
      mpercaprox := (cds_cabecalhovTotTrib.asfloat * 100) /
        cds_cabecalhoTOTALICMSTOTVNF.asfloat;
      fImprimir(insere('-', '-', mfonte_ecf.mqtdcarlin));

      fImprimir(Centra('Informacao dos Tributos Totais e Incidentes', ' ',
        mfonte_ecf.mqtdcarlin));

      fImprimir(Centra('(Lei Federal 12.741/2012)', ' ', mfonte_ecf.mqtdcarlin));

      fImprimir('Valor aproximado dos impostos:   ' + FormatFloat(mcasas,
        cds_cabecalhovTotTrib.asfloat) + '(' + FormatFloat(mcasas_pct,
        mpercaprox) + ')');

      fImprimir(insere('-', '-', mfonte_ecf.mqtdcarlin));
    end;

//    fImprimir('');
    fImprimir(insere('-', '-', mfonte_ecf.mqtdcarlin));

    if length(cds_cabecalhoobscup.AsString) > 1 then
    begin
      mObs := TStringList.Create;
      mObs.Text := cds_cabecalhoobscup.AsString;
      for x_Obs := 0 to mObs.Count - 1 do
      begin
        fImprimir(mObs[x_Obs]);
      end;
      freeandnil(mObs);
    end;

    fImprimir(Centra('OPR: ' + floattostr(mger_codusr) + ' ' + mger_nomusr, ' ',
      mfonte_ecf.mqtdcarlin));

    // mNomePDF:=pc_pastatemp+'nfce.pdf';
    // mNomePDF:=fRetornaTempLivre('nfce','.pdf');
//              LINDOMAR

    fImprimirComprovanteVinculado;

    fImprimir('.');
    fImprimir('.');
    fImprimir('.');
    fImprimir('.');

    fImprimir(mfonte_ecf.CortarPapel);

    fabrirgaveta_nova;
}
    // termino

    {
      cBuffer :=  #27 + #97 + #1 +        // esse código faz a centralização
      #29 + #107 + #81 +      // esse é o do qr code
      #2 + #12 + #8 + #1 +    // aqui é o tamanho
      #19 +             // tamanho de caracteres correspondente ao texto
      #0 +                    // bit de partida
      #119 + #119 + #119 + #46 + #98 + #101 + #109 + #97 + #116 + #101 + #99 + #104 + #46 + #99 + #111 + #109 + #46 + #98 + #114;
      //            + #119 + #119 + #119 + #46 + #98 + #101 + #109 + #97 + #116 + #101 + #99 + #104 + #46 + #99 + #111 + #109 + #46 + #98 + #114
    }





    // WriteLn(F, pCodbar);

//    writeln(F);
    CloseFile(F);
  except
    ON E: Exception do
      MessageDlg('Erro ao imprimir nfce porta ' + pDadosNFce.pImpressora + '. ERRO ' +
        E.Message, mtError, [mbOk], 0);
  end;

end;

{
  function TFrm_NFE_Impressao.fImpressao_Elgin(
  pDadosNFce: TDadosNFCe;pImpressora: string): boolean;
  var
  fTexto:TextFile;
  mtexto: string;
  cBuffer : ansiString;
  F : TextFile;
  pCodBar: String;
  x_qtd: integer;
  function ftextotocodigoasc_bematech(ptexto: string): string;
  var
  x_car: integer;
  begin
  result:=#27 + #97 + #1 +        // esse código faz a centralização
  #29 + #107 + #81 +      // esse é o do qr code
  #2 + #12 + #8 + #1 +    // aqui é o tamanho
  #19 +             // tamanho de caracteres correspondente ao texto
  #0;                     // bit de partida

  for x_car:=1 to length(ptexto) do
  begin

  result:=result+ chr(integer(ptexto[x_car]));
  //     result:=result+iif(x_car<1,' +',' +')+' #'+inttostr(integer(ptexto[x_car]));
  end;


  end;



  Begin
  AssignFile(F, pImpressora);
  Rewrite(F);

  mtexto:='www.bematech.com.br';

  pCodbar:=ftextotocodigoasc_bematech(mtexto);
  {
  cBuffer :=  #27 + #97 + #1 +        // esse código faz a centralização
  #29 + #107 + #81 +      // esse é o do qr code
  #2 + #12 + #8 + #1 +    // aqui é o tamanho
  #19 +             // tamanho de caracteres correspondente ao texto
  #0 +                    // bit de partida
  #119 + #119 + #119 + #46 + #98 + #101 + #109 + #97 + #116 + #101 + #99 + #104 + #46 + #99 + #111 + #109 + #46 + #98 + #114;
  //            + #119 + #119 + #119 + #46 + #98 + #101 + #109 + #97 + #116 + #101 + #99 + #104 + #46 + #99 + #111 + #109 + #46 + #98 + #114
}
{
  for x_qtd := 1 to  pDadosNFce.pQtdItem do
  begin
  writeln(f,chr(20)+'PRODUTO '+inttostr(x_qtd));
  end;
}

{

  WriteLn(F, pCodbar);


  WriteLn(F);
  CloseFile(F);
}
{
  end;

  begin
  AssignFile(fTexto,pfTexto);
  Rewrite(fTexto);
  Writeln(fTexto,chr(18)+chr(15)+chr(20)+'+'+insere('-','-',57)+'+');




  Write(IMPRESSORA);
  Writeln(Impressora);
  System.Close(Impressora);

}

// end;

end.
