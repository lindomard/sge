unit s_nfce;


interface

uses Forms, SysUtils, Dialogs, Mask, DB, DBTables, Messages, Windows ,Classes
    , Controls, StdCtrls, ExtCtrls, checklst, func,  RDPrint
     ,printers,S_Si,S_Impres,RlPrinters,S_Agde_NFE, WPCTRRich,variants
     ,  xmldom, XMLIntf, msxmldom, XMLDoc, ADODB,jpeg, winspool;


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
  TDadosNFCEChvAcesso = record
  pServico: Integer;
  pCNF: string;
  pCNPJEmitente: String;
  pNumNFCE: Integer;
  pCodLocIBGEEmitente: integer;
  pModelo: integer;
  pSerie: Integer;
  pTpEmis: Integer;
  pDatanfce: TDateTime;
  pchv_nfce: String;

  pTpAmb: integer;
  pChaveAno: integer;
  pChave: integer;
  pCodEmp: Integer;
  pXml: String;
  pXml_Cliente: String;

  pQtdVias: integer;
  pFantasia: String;
  pImpressora: String;
  pContigencia_DH: tDatetime;
  pContigencia_xJust: String;

  pDatHorEvento: tDatetime;
  pcStat: Integer;
  pStatMotivo: String;
  pNumProt: String;
  pNumRecibo: String;
  pRetObs: String;
  seqeve: integer;
  pStatusPed: integer;
  p1Cupom: integer;
  P1codcai: integer;



  end;


function fGerarChavedeAcesso(pDadosNFCEChvAcesso: TDadosNFCEChvAcesso): string;

function fBuscareSetarDadosNFCE(pDadosNFCEChvAcesso: TDadosNFCEChvAcesso): TDadosNFCEChvAcesso;
procedure fAtualizarCadp01(pDadosNFCEChvAcesso: TDadosNFCEChvAcesso);


function fGerarXMLNFCE(pChave, pChave_Ano, pCodEmp: integer; out PXMLNFCE: tStringList; out pMensagem: String ): Boolean;
function fGerarTag102103300400(pOrigem_Prod, pCsoSN: String): String;

function fGerarTag201(pOrigem_Prod, pCsoSN, pModBCST: String;
  ppMVast, ppRedBCST, pvBCST, ppICMSST, pvICMSST, ppCredSN,
  pvCredICMSSN: real): String;

function fGerarTag202203(pOrigem_Prod, pCsoSN, pModBCST: String;
  ppMVast, ppRedBCST, pvBCST, ppICMSST, pvICMSST: real): String;

function fRetornaCaseFormaPagamentoIgestaoSefaz(pNomeCampo,
  pNomeSaida: String): String;

function fGerarTag500(pOrigem_Prod, pCsoSN: String;
  pvBCST, pvICMSST: real): String;


function fGerarTag900(pOrigem_Prod, pCsoSN, pModBC: String;
  pICMS_Basen, pIcms_Redut, pICMS_Aliq, pICMS_Valor: real; pModBCST: String;
  pMVAST, pRedBCST, pvBCST, pICMSST, pvICMSST, ppCredSN,
  pvCredICMSSN: real): String;

function fGerarTag101(pOrigem_Prod, pCsoSN: String;
  ppCredSN, pvCredICMSSN: real): String;

function fGerarTag00(pOrigem_Prod, pCST, pModBC: String;
  pvBC, ppICMS, pvICMS: real): String;


function fGerarTag10(pOrigem_Prod, pCST, pModBC: String;
  pvBC, ppICMS, pvICMS: real; pModBCST: String;
  ppMVast, pRedBCST, pvBCST, ppICMSST, vICMSST: real): String;

function fGerarTag20(pOrigem_Prod, pCST, pModBC: String;
  pRedBC, pvBC, ppICMS, pvICMS: real; pModBCST: String;
  ppMVast, pRedBCST, pvBCST, ppICMSST, vICMSST: real): String;


function fGerarTag30(pOrigem_Prod, pCST, pModBCST: String;
  ppMVast, pRedBCST, pvBCST, ppICMSST, vICMSST: real): String;

function fGerarTag40(pOrigem_Prod, pCST: String): String;



function fGerarTag51(pOrigem_Prod, pCST, pModBC: String;
  pRedBC, pvBC, ppICMS, pvICMS: real): String;

function fGerarTag90(pOrigem_Prod, pCST, pModBC: String;
  pRedBC, pvBC, ppICMS, pvICMS: real; pModBCST: String;
  ppMVast, pRedBCST, pvBCST, ppICMSST, vICMSST: real): String;

function fGerarTag70(pOrigem_Prod, pCST, pModBC: String;
  pRedBC, pvBC, ppICMS, pvICMS: real; pModBCST: String;
  ppMVast, pRedBCST, pvBCST, ppICMSST, vICMSST: real): String;
function fGerarIPI00495099(pCST: String; pvBC, ppIPI, pqUnid, pvUnid,
  pVIPI: real): String;
function fGerarIPINT(pCST: String): String;
function fGerarPISAliq(pCST: String; pvBC, ppPIS, pVPIS: real): String;
function fGerarPISnt(pCST: String): String;
function fGerarPISOutr(pCST: String; pvBC, ppPIS, pVPIS: real): String;
function fGerarCOFINSAliq(pCST: String; pvBC, ppCOFINS, pvCOFINS: real): String;

function fGerarCOFINSnt(pCST: String): String;
function fGerarCOFINSOutr(pCST: String; pvBC, ppCOFINS, pvCOFINS: real): String;
function fGerarTagICMSUFDEST(pVBCUFDEST, pPFCPUFDEST, pPICMSUFDEST, pPICMSINTER,
  pPICMSINTERPART, pVFCPUFDEST, pVICMSUFDEST, pVICMSUFREMET: real): String;

function fEnviarXMLNFCE(pDadosNFCEChvAcesso: tDadosNFCEChvAcesso): TDadosNFCEChvAcesso;

function fTef_IdentificadorReg_impres(pLinha: AnsiString; out pIdent_Item: Integer;out pIdent_SubItem: Integer; out pIdent_Conteudo: AnsiString): boolean;

procedure pSetarFontesECF(pNome_Impressora: String; out pFonte_ecf: TFontesECF);

 procedure fRedirecionarPoartaUsbparaLPT1(pNomeCompartilhamento: string);
function GetCurrentPrinterPort: string;
function fRetornaServicoExtenso(pModelo: Integer; pServico: Integer;pSeqEvento: integer): String;
function fGravarXML_NFE(pdado: TDadosNFCEChvAcesso): boolean;

procedure fReemitirNFCE(pDadosNFCEChvAcesso: TDadosNFCEChvAcesso);


procedure  fAtualizarProtocoloNFCEPedido(pChave,pCodEmp,pLotSeq: Integer; pNProt: string; pDatHorEve: Tdatetime);

function fEnviarNFCEContigencia(pDadosNFCEChvAcesso: TDadosNFCEChvAcesso): boolean;

const
mPadraoNFCE_DARUMA = 'DARUMA';
 mPadraoNFCE_EPSON = 'EPSON';
 mPadraoNFCE_ELGIN = 'ELGIN';
 mPadraoNFCE_BEMATECH = 'BEMATECH';
 mPadraoNFCE_DIEBOLD = 'BEMATECH';


implementation

uses S_DM4, lerarq, S_DM1, func_excecoes, Func2, s_Nfe_Aguarde,
  S_Sintegra_Advert, s_NFCE_Duplicada, S_DM1_ADO, s_impressora_escolher,
  s_NFCE_Impressao;
var
mNfe_nfec_leitransparencia: String;
mNfe_nfec_mensl01: String;
mNfe_nfec_mensl02: String;
mNfe_nfec_mensl03: String;
mNfe_nfec_mensl04: String;


mNFE_ICMSSN_Base: Real;
mNFE_ICMSSN_Valor: Real;

mNFE_ICMSST_Base: Real;
mNFE_ICMSST_Valor: Real;
mNFE_TotPro: Real;
mNFE_TotFrete: Real;
mNFE_TotOutDesp: Real;
mNFE_TotSeg: Real;
mNFE_TotDes: Real;
mNFE_TotII: Real;
mNFE_TotIPI: Real;
mNFE_TotPis: Real;
mNFE_TotCofins: Real;
mNFE_TotLiq: Real;
mNFE_ICMS_Base: Real;
mNFE_ICMS_Valor: Real;

mvTottrib: Real;
mTot_VBCUFDEST   :Real;
mTot_vFCPUFDest  :Real;
mTot_vICMSUFDest :Real;
mTot_vICMSUFRemet:Real;

mTot_vFCPST : real;
mTot_vFCPSTRet: real;


mNFE_Chave_Acesso: String;
mNFE_Chave_Acesso_Dig: String;
mString_Temp: String;
mItem: integer;
mcfop: integer;
mqtdvcto: integer;
mQtdDup: integer;
mtipo_entsai: integer;


mcnpj_cli: string;
mcpf_cli: string;
mObs_NF: string;
mValorTroco: Real;

const tipofp_igestao :array[0..18] of string = (
 '01;Dinheiro;01;00'
,'02;Cheque;02;01'
,'03;CARTAO DE CREDITO(TEF);03;05'
,'04;CARTAO DE DEBITO(TEF);04;07'
,'05;CREDITO LOJA;05'
,'10;VALE ALIMENTACAO;10'
,'11;VALE REFEICAO;11'
,'12;VALE PRESENTE;12'
,'13;VALE COMBUSTIVEL;13'
,'21;CARTAO DE CREDITO(POS);99'
,'22;CARTAO DE DEBITO(POS);99'
,'30;DEVOLUCOES;99'
,'31;DEPOSITO C/C;99'
,'32;TRANSFERENCIAS C/C;99'
,'33;TED;99'
,'34;ORDEM PGTO;99'
,'35;COB.BANCARIA;99'
,'36;NOTA DE CREDITO;99'
,'99;OUTRAS;99');



function fGerarTagICMSUFDEST(pVBCUFDEST, pPFCPUFDEST, pPICMSUFDEST, pPICMSINTER,
  pPICMSINTERPART, pVFCPUFDEST, pVICMSUFDEST, pVICMSUFREMET: real): String;
var
  mRetorno: String;
begin
  if (pPFCPUFDEST = 0) and (pPICMSINTER = 0) then
    mRetorno := ''
  else
  begin
    mRetorno := '<ICMSUFDest>';
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vBCUFDest', pVBCUFDEST);
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(4, 'pFCPUFDest',
      pPFCPUFDEST);
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(4, 'pICMSUFDest',
      pPICMSUFDEST);
    if arredonda(pPICMSINTER, 2) = pPICMSINTER then
      mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pICMSInter',
        pPICMSINTER)
    else if arredonda(pPICMSINTER, 3) = pPICMSINTER then
      mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(3, 'pICMSInter',
        pPICMSINTER)
    else
      mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(4, 'pICMSInter',
        pPICMSINTER);

    mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(4, 'pICMSInterPart',
      pPICMSINTERPART);
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vFCPUFDest',
      pVFCPUFDEST);
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vICMSUFDest',
      pVICMSUFDEST);
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vICMSUFRemet',
      pVICMSUFREMET);

    mRetorno := mRetorno + #13 + ' ' + '</ICMSUFDest>';

    mTot_VBCUFDEST := mTot_VBCUFDEST + pVBCUFDEST;
    mTot_vFCPUFDest := mTot_vFCPUFDest + pVFCPUFDEST;
    mTot_vICMSUFDest := mTot_vICMSUFDest + pVICMSUFDEST;
    mTot_vICMSUFRemet := mTot_vICMSUFRemet + pVICMSUFREMET;

    mTot_vFCPST := 0;
    mTot_vFCPSTRet := 0;

  end;
  result := mRetorno;

end;

function fGerarCOFINSOutr(pCST: String; pvBC, ppCOFINS, pvCOFINS: real): String;
var
  mRetorno: String;
begin
  mRetorno := '<COFINSOutr>';
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'CST', pCST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vBC', pvBC);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pCOFINS', ppCOFINS);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vCOFINS', pvCOFINS);
  mRetorno := mRetorno + #13 + '</COFINSOutr>';
  result := mRetorno;
end;




function fGerarCOFINSnt(pCST: String): String;

var
  mRetorno: String;
begin
  mRetorno := '<COFINSNT>';
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'CST', pCST);
  mRetorno := mRetorno + #13 + '</COFINSNT>';
  result := mRetorno;
end;

function fGerarCOFINSAliq(pCST: String; pvBC, ppCOFINS, pvCOFINS: real): String;
var
  mRetorno: String;
begin
  mRetorno := '<COFINSAliq>';
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'CST', pCST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vBC', pvBC);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pCOFINS', ppCOFINS);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vCOFINS', pvCOFINS);
  mRetorno := mRetorno + #13 + '</COFINSAliq>';
  result := mRetorno;
end;



function fGerarPISOutr(pCST: String; pvBC, ppPIS, pVPIS: real): String;
var
  mRetorno: String;
begin
  mRetorno := '<PISOutr>';
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'CST', pCST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vBC', pvBC);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pPIS', ppPIS);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vPIS', pVPIS);
  mRetorno := mRetorno + #13 + '</PISOutr>';
  result := mRetorno;
end;

function fGerarPISnt(pCST: String): String;

var
  mRetorno: String;
begin
  mRetorno := '<PISNT>';
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'CST', pCST);
  mRetorno := mRetorno + #13 + '</PISNT>';
  result := mRetorno;
end;



function fGerarPISAliq(pCST: String; pvBC, ppPIS, pVPIS: real): String;
var
  mRetorno: String;
begin
  mRetorno := '<PISAliq>';
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'CST', pCST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vBC', pvBC);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pPIS', ppPIS);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vPIS', pVPIS);
  mRetorno := mRetorno + #13 + '</PISAliq>';
  result := mRetorno;
end;

function fGerarIPINT(pCST: String): String;

var
  mRetorno: String;
begin
  mRetorno := '<IPINT>';
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'CST', pCST);
  mRetorno := mRetorno + #13 + '</IPINT>';
  result := mRetorno;
end;

function fGerarIPI00495099(pCST: String; pvBC, ppIPI, pqUnid, pvUnid,
  pVIPI: real): String;

var
  mRetorno: String;
begin
  mRetorno := '<IPITrib>';
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'CST', pCST);
  if ppIPI > 0 then
  begin
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vBC', pvBC);
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pIPI', ppIPI);
  end
  else
  begin
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(4, 'qUnid', pqUnid);
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vUnid', pvUnid);
  end;
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vIPI', pVIPI);
  mRetorno := mRetorno + #13 + '</IPITrib>';
  result := mRetorno;
end;



function fGerarTag70(pOrigem_Prod, pCST, pModBC: String;
  pRedBC, pvBC, ppICMS, pvICMS: real; pModBCST: String;
  ppMVast, pRedBCST, pvBCST, ppICMSST, vICMSST: real): String;

var
  mRetorno: String;
begin
  if valint(pOrigem_Prod) > 2 then
    pOrigem_Prod := '2';
  if valint(pModBCST) < 0 then
    pModBCST := '0';

  mRetorno := '<ICMS70>';
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'orig', pOrigem_Prod);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'CST', pCST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'ModBC', pModBC);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pRedBC', pRedBC);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vBC', pvBC);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pICMS', ppICMS);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vICMS', pvICMS);
  if valint(pModBCST) >= 0 then
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'modBCST', pModBCST);
  if pRedBCST > 0 then
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pRedBCST', pRedBCST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vBCST', pvBCST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pICMSST', ppICMSST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vICMSST', vICMSST);
  mRetorno := mRetorno + #13 + ' ' + '</ICMS70>';
  result := mRetorno;
end;


function fGerarTag90(pOrigem_Prod, pCST, pModBC: String;
  pRedBC, pvBC, ppICMS, pvICMS: real; pModBCST: String;
  ppMVast, pRedBCST, pvBCST, ppICMSST, vICMSST: real): String;
var
  mRetorno: String;
begin
  if valint(pOrigem_Prod) > 2 then
    pOrigem_Prod := '2';

  mRetorno := '<ICMS90>';
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'orig', pOrigem_Prod);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'CST', pCST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'ModBC', pModBC);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pRedBC', pRedBC);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vBC', pvBC);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pICMS', ppICMS);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vICMS', pvICMS);
  if valint(pModBCST) >= 0 then
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'modBCST', pModBCST);
  if pRedBCST > 0 then
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pRedBCST', pRedBCST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vBCST', pvBCST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pICMSST', ppICMSST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vICMSST', vICMSST);
  mRetorno := mRetorno + #13 + ' ' + '</ICMS90>';
  result := mRetorno;
end;


function fGerarTag51(pOrigem_Prod, pCST, pModBC: String;
  pRedBC, pvBC, ppICMS, pvICMS: real): String;
var
  mRetorno: String;
begin
  if valint(pOrigem_Prod) > 2 then
    pOrigem_Prod := '2';

  mRetorno := '<ICMS20>';
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'orig', pOrigem_Prod);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'CST', pCST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'ModBC', pModBC);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pRedBC', pRedBC);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vBC', pvBC);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pICMS', ppICMS);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vICMS', pvICMS);
  mRetorno := mRetorno + #13 + ' ' + '</ICMS20>';
  result := mRetorno;
end;


function fGerarTag40(pOrigem_Prod, pCST: String): String;
var
  mRetorno: String;
begin
  if valint(pOrigem_Prod) > 2 then
    pOrigem_Prod := '2';

  mRetorno := '<ICMS40>';
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'orig', pOrigem_Prod);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'CST', pCST);
  mRetorno := mRetorno + #13 + ' ' + '</ICMS40>';
  result := mRetorno;
end;



function fGerarTag30(pOrigem_Prod, pCST, pModBCST: String;
  ppMVast, pRedBCST, pvBCST, ppICMSST, vICMSST: real): String;
var
  mRetorno: String;
begin
  if valint(pOrigem_Prod) > 2 then
    pOrigem_Prod := '2';

  mRetorno := '<ICMS30>';
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'orig', pOrigem_Prod);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'CST', pCST);
  if valint(pModBCST) >= 0 then
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'modBCST', pModBCST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pMVAST', ppMVast);
  if pRedBCST > 0 then
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pRedBCST', pRedBCST);

  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vBCST', pvBCST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pICMSST', ppICMSST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vICMSST', vICMSST);
  mRetorno := mRetorno + #13 + ' ' + '</ICMS30>';
  result := mRetorno;

end;

function fGerarTag20(pOrigem_Prod, pCST, pModBC: String;
  pRedBC, pvBC, ppICMS, pvICMS: real; pModBCST: String;
  ppMVast, pRedBCST, pvBCST, ppICMSST, vICMSST: real): String;

var
  mRetorno: String;
begin
  if valint(pOrigem_Prod) > 2 then
    pOrigem_Prod := '2';

  mRetorno := '<ICMS20>';
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'orig', pOrigem_Prod);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'CST', pCST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'ModBC', pModBC);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pRedBC', pRedBC);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vBC', pvBC);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pICMS', ppICMS);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vICMS', pvICMS);
  mRetorno := mRetorno + #13 + ' ' + '</ICMS20>';
  result := mRetorno;
end;



function fGerarTag10(pOrigem_Prod, pCST, pModBC: String;
  pvBC, ppICMS, pvICMS: real; pModBCST: String;
  ppMVast, pRedBCST, pvBCST, ppICMSST, vICMSST: real): String;
var
  mRetorno: String;
begin
  if valint(pOrigem_Prod) > 2 then
    pOrigem_Prod := '2';

  mRetorno := '<ICMS10>';
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'orig', pOrigem_Prod);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'CST', pCST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'ModBC', pModBC);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vBC', pvBC);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pICMS', ppICMS);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vICMS', pvICMS);
  if valint(pModBCST) >= 0 then
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'modBCST', pModBCST);
  if ppMVast > 0 then
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(0, 'pMVAST', ppMVast);
  if pRedBCST > 0 then
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(0, 'pRedBCST', pRedBCST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(0, 'vBCST', pvBCST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(0, 'pICMSST', ppICMSST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(0, 'vICMSST', vICMSST);
  mRetorno := mRetorno + #13 + ' ' + '</ICMS10>';
  result := mRetorno;
end;


function fGerarTag00(pOrigem_Prod, pCST, pModBC: String;
  pvBC, ppICMS, pvICMS: real): String;
var
  mRetorno: String;
begin
  if valint(pOrigem_Prod) > 2 then
    pOrigem_Prod := '2';

  mRetorno := '<ICMS00>';
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'orig', pOrigem_Prod);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'CST', pCST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'modBC', pModBC);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vBC', pvBC);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pICMS', ppICMS);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vICMS', pvICMS);
  mRetorno := mRetorno + #13 + ' ' + '</ICMS00>';
  result := mRetorno;
end;

function fGerarTag101(pOrigem_Prod, pCsoSN: String;
  ppCredSN, pvCredICMSSN: real): String;
var
  mRetorno: String;
begin
  if valint(pOrigem_Prod) > 2 then
    pOrigem_Prod := '2';

  mRetorno := '<ICMSSN101>';
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'orig', pOrigem_Prod);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'CSOSN', pCsoSN);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pCredSN', ppCredSN);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vCredICMSSN',
    pvCredICMSSN);
  mRetorno := mRetorno + #13 + ' ' + '</ICMSSN101>';
  result := mRetorno;
end;



function fGerarTag900(pOrigem_Prod, pCsoSN, pModBC: String;
  pICMS_Basen, pIcms_Redut, pICMS_Aliq, pICMS_Valor: real; pModBCST: String;
  pMVAST, pRedBCST, pvBCST, pICMSST, pvICMSST, ppCredSN,
  pvCredICMSSN: real): String;

var
  mRetorno: String;
begin
  if valint(pOrigem_Prod) > 2 then
    pOrigem_Prod := '2';

  mRetorno := '<ICMSSN900>';
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'orig', pOrigem_Prod);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'CSOSN', pCsoSN);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'modBC', pModBC);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vBC', pICMS_Basen);
  if pIcms_Redut > 0 then
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pRedBC', pIcms_Redut);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pICMS', pICMS_Aliq);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vICMS', pICMS_Valor);

  if valint(pModBCST) >= 0 then
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'modBCST', pModBCST);
  if pMVAST > 0 then
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pMVAST', pMVAST);
  if pRedBCST > 0 then
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pRedBCST', pRedBCST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vBCST', pvBCST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pICMSST', pICMSST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vICMSST', pvICMSST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pCredSN', ppCredSN);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vCredICMSSN',
    pvCredICMSSN);
  mRetorno := mRetorno + #13 + ' ' + '</ICMSSN900>';
  result := mRetorno;
end;


function fGerarTag500(pOrigem_Prod, pCsoSN: String;
  pvBCST, pvICMSST: real): String;
var
  mRetorno: String;
begin
  if valint(pOrigem_Prod) > 2 then
    pOrigem_Prod := '2';

  mRetorno := '<ICMSSN500>';
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'orig', pOrigem_Prod);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'CSOSN', pCsoSN);
  if pvBCST <> 0 then
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vBCST', pvBCST);
  if pvICMSST <> 0 then
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vICMSST', pvICMSST);
  mRetorno := mRetorno + #13 + ' ' + '</ICMSSN500>';
  result := mRetorno;
end;


function fGerarTag202203(pOrigem_Prod, pCsoSN, pModBCST: String;
  ppMVast, ppRedBCST, pvBCST, ppICMSST, pvICMSST: real): String;
var
  mRetorno: String;
begin
  if valint(pOrigem_Prod) > 2 then
    pOrigem_Prod := '2';

  mRetorno := '<ICMSSN202>';
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'orig', pOrigem_Prod);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'CSOSN', pCsoSN);
  if valint(pModBCST) >= 0 then
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'modBCST', pModBCST);
  if ppMVast > 0 then
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pMVAST', ppMVast);
  if ppRedBCST > 0 then
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pRedBCST', ppRedBCST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vBCST', pvBCST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pICMSST', ppICMSST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vICMSST', pvICMSST);
  mRetorno := mRetorno + #13 + ' ' + '</ICMSSN202>';
  result := mRetorno;
end;



function fGerarTag201(pOrigem_Prod, pCsoSN, pModBCST: String;
  ppMVast, ppRedBCST, pvBCST, ppICMSST, pvICMSST, ppCredSN,
  pvCredICMSSN: real): String;
var
  mRetorno: String;
begin
  if valint(pOrigem_Prod) > 2 then
    pOrigem_Prod := '2';
  if valint(pModBCST) < 0 then
    pModBCST := '0';

  mRetorno := '<ICMSSN201>';
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'orig', pOrigem_Prod);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'CSOSN', pCsoSN);
  if valint(pModBCST) >= 0 then
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'modBCST', pModBCST);
  if ppMVast > 0 then
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pMVAST', ppMVast);
  if ppRedBCST > 0 then
    mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pRedBCST', ppRedBCST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vBCST', pvBCST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pICMSST', ppICMSST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vICMSST', pvICMSST);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'pCredSN', ppCredSN);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLReal(2, 'vCredICMSSN',
    pvCredICMSSN);
  mRetorno := mRetorno + #13 + ' ' + '</ICMSSN201>';
  result := mRetorno;
end;



function fGerarTag102103300400(pOrigem_Prod, pCsoSN: String): String;
var
  mRetorno: String;
begin
  if valint(pOrigem_Prod) > 2 then
    pOrigem_Prod := '2';

  mRetorno := '<ICMSSN102>';
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'orig', pOrigem_Prod);
  mRetorno := mRetorno + #13 + ' ' + fGeraXMLString(0, 'CSOSN', pCsoSN);
  mRetorno := mRetorno + #13 + ' ' + '</ICMSSN102>';
  result := mRetorno;
end;


function fGerarXMLNFCE(pChave, pChave_Ano, pCodEmp: integer; out PXMLNFCE: tStringList; out pMensagem: String ): Boolean;
var
mMotivo: string;
Query_Ped01: TQuery;
Query_Vcto: TQuery;
Query_itens: TQuery;
Query_cfop: TQuery;
mNomCFOP: string;

const
    mAgrupado = true;



// ********************************* funcoes internas

    procedure pfechartudo;
    begin
    if query_cfop<>nil then
       begin
       Query_cfop.Close;
       freeandnil(Query_cfop);
       end;

    if query_ped01<>nil then
       begin
       Query_Ped01.Close;
       freeandnil(Query_Ped01);
       end;
    if Query_Vcto<>nil then
       begin
       Query_Vcto.close;
       freeandnil(Query_Vcto);
       end;

    if Query_itens<>nil then
       begin
       Query_itens.close;
       freeandnil(Query_itens);
       end;



    end;



begin
result:=true;
pMensagem:='';



// ******************* termino funcoes internas



begin
Query_Ped01:=tQuery.Create(nil);
Query_Ped01.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

Query_itens:=tQuery.Create(nil);
Query_itens.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

Query_Vcto:=tQuery.Create(nil);
Query_Vcto.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

Query_cfop:=tQuery.Create(nil);
Query_cfop.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

try
   if not flcadp01_nfce(pCodEmp,pChave_Ano, pchave, query_ped01) then

      begin
      pfechartudo;
      exit;
      end;

    mNFE_ICMS_Base := 0;
    mNFE_ICMS_Valor := 0;
    mNFE_ICMSST_Base := 0;
    mNFE_ICMSST_Valor := 0;
    mNFE_ICMSSN_Base := 0;
    mNFE_ICMSSN_Valor := 0;

    //mNFE_IPI_Valor := 0;
    mNFE_TotPro := 0;
    mNFE_TotFrete := 0;
    mNFE_TotOutDesp := 0;
    mNFE_TotSeg := 0;
    mNFE_TotDes := 0;
    mNFE_TotII := 0;
    mNFE_TotIPI := 0;
    mNFE_TotPis := 0;
    mNFE_TotCofins := 0;
    mNFE_TotLiq := 0;



    mTot_VBCUFDEST   :=0;

    mTot_vFCPUFDest  :=0;
    mTot_vICMSUFDest :=0;
    mTot_vICMSUFRemet:=0;

    mTot_vFCPST   :=0;
    mTot_vFCPSTRet:=0;


    mvTottrib:=0;
    mNFE_Chave_Acesso     := Query_Ped01.FieldByName('P1NFCE_CHV_ACESSO').AsString;
    mNFE_Chave_Acesso_Dig := copy(Query_Ped01.FieldByName('P1NFCE_CHV_ACESSO').AsString,44,1);



    Query_Vcto.close;
    Query_Vcto.sql.Clear;
    Query_Vcto.SQL.Add('Select CADPFP.*, 0 AS PFPVALOR_SERVICO, 0 as PFPVALOR_TROCO '

                     +','+fRetornaCaseFormaPagamentoIgestaoSefaz('fpvinculo','forma_sefaz')
                     +', case when FPCODCLI>0 then '
                     +' (select max(to_char(ccnpj)) from CADCLI where ccodcli=FPCODCLI) '
                     +' else '+QuotedStr(insere(' ',' ',100))+' end '
                     +' as calc_cnpj '
                     +' ,FPBANDEIRA_OPERADORA as bandeira_cartao_sefaz '

                   +' from CADPFP , CADFP '
                   + ' where PFPCODEMP=:CODEMP_FILIAL '
                   + ' and PFPCHAVE=:CHAVE '
                   + ' and PFPLOTSEQ=:CHAVE_ANO '
    +' and fpCODIGO=PFPFORMA  order by PFPPRAZO ');
    Query_Vcto.ParamByName('CODEMP_FILIAL').AsInteger := pCodEmp;
    Query_Vcto.ParamByName('CHAVE').AsInteger := pChave;
    Query_Vcto.ParamByName('CHAVE_ANO').AsInteger := pChave_Ano;

    try
       Query_Vcto.Open;
       result := true;
    except ON E: Exception do
       begin
        ex_erroSql_Novo(query_vcto,206,'lerarq','CADPFP');
       result := false;
       exit
       end;
       end;
    PXMLNFCE.Clear;
    PXMLNFCE.Add('<?xml version="1.0" encoding="utf-8"?>');

    PXMLNFCE.Add('<NFe xmlns="http://www.portalfiscal.inf.br/nfe">');

//lindomar

    PXMLNFCE.Add('<infNFe Id="NFe' + Query_Ped01.FieldByName('P1NFCE_CHV_ACESSO').AsString+ '" versao="' +
    Query_Ped01.fieldbyname('P1NFCE_VERSAOXML').AsString+ '">');

    PXMLNFCE.Add('<ide>');


    PXMLNFCE.Add(fGeraXMLReal(0, 'cUF',
    valint(copy(FormatFloat('0000000', DM1.Tb_Empcodloc_ibge.AsInteger), 1, 2)) ));
    PXMLNFCE.Add(fGeraXMLString(0,'cNF',insere(query_ped01.fieldbyname('P1NFCE_CNF').AsString,'0',8)));

    Query_cfop.close;
    Query_cfop.sql.clear;
    Query_cfop.sql.add('select P2CFO,P2CFOSUBECF '
                      +',(SELECT MAX(CFNOME) FROM CADCFO WHERE CFCODCFO=P2CFO) AS NOMCFOP '
                      +',(SELECT MAX(CFNOME) FROM CADCFO WHERE CFCODCFO=P2CFOSUBECF) AS NOMCFOP_SUBECF '
                      +' from ( '
                      +' Select P2CFO,P2CFOSUBECF from CADP02 '
                      +'                         where P2CODEMP=:CODEMP '
                      +'                         and   P2LOTSEQ=:LOTSEQ '
                      +'                         and   P2CHAVE=:CHAVE '
                      +'     group by P2CFO,P2CFOSUBECF '
                      +') T2 ');
    Query_cfop.ParamByName('CODEMP').AsInteger := pCodEmp;
    Query_cfop.ParamByName('CHAVE').AsInteger := pChave;
    Query_cfop.ParamByName('LOTSEQ').AsInteger := pChave_Ano;
    try
       query_cfop.open;
    except ON E: Exception do
       begin
       fAdicionarErros('997','erro 547 ao ler cadp01 '+e.Message);
       ex_erroSql_Novo(Query_cfop, 872, '_lerarq', 'CADP02');
       pfechartudo;
       fApresentarErros_json;
       exit;
       end;
       end;
    mNomCFOP:=query_cfop.fieldbyname('NOMCFOP').AsString;

    PXMLNFCE.Add(fGeraXMLString(0,'natOp',copy(mNomCFOP,1,60)));




    mqtdvcto := 0;
    while not Query_Vcto.Eof do
       begin
       mqtdvcto := mqtdvcto + 1;
       Query_Vcto.Next;
       end;

    Query_Vcto.first;

//    PXMLNFCE.Add(fGeraXMLreal(0,'indPag',1));

    PXMLNFCE.Add(fGeraXMLReal(0, 'mod',
          valint(Query_Ped01.FieldByName('P1NFCE_MODELO').AsString)));
    PXMLNFCE.Add(fGeraXMLReal(0, 'serie', valint(Query_Ped01.FieldByName('P1NFCE_SERIE').Asstring) ));
    PXMLNFCE.Add(fGeraXMLReal(0, 'nNF', Query_Ped01.FieldByName('P1NFCE_NUMERO').asinteger));

    PXMLNFCE.Add(fGeraXMLDataHoraFuso('dhEmi',query_ped01.fieldbyname('P1NFCE_DATA').asdatetime));
    if Query_Ped01.FieldByName('P1PREVENT').AsDateTime > pDataNula then
    PXMLNFCE.Add(fGeraXMLDataHoraFuso('dhSaiEnt',query_ped01.fieldbyname('P1PREVENT').asdatetime));

    Query_itens.close;
    Query_itens.sql.Clear;
    if mAgrupado then
       begin
       Query_itens.SQL.Add('Select SUM(P2QTD) AS P2QTD '
                          +',SUM(P2VALDES) AS P2DESC_VALOR '
                          +',SUM(P2BASEN) AS P2ICMS_BASE '
                          +',SUM(P2ICMSN) AS P2ICMS_VALOR '
                          +',SUM(P2VLRIMP_MUNICIPAL) AS P2VLRIMP_MUNICIPAL '
                          +',SUM(P2VLRIMP_ESTADUAL) AS P2VLRIMP_ESTADUAL '
                          +',SUM(P2VLRIMP_FEDERAL) AS P2VLRIMP_FEDERAL '
                          +',SUM(round((P2PRECO*P2QTD),2)) AS TOTPRO '
                          +',SUM(P2BASER) AS P2ST_BASE '
                          +',SUM(P2TOTDES) AS P2DESC_VLRTOT '
                          +',SUM(P2VALIPI) AS P2IPI_VALOR, '
                          +'SUM(P2IPI_VBC) AS P2IPI_VBC '
                          +',SUM(P2COFINS_VBC) AS P2COFINS_VBC '
                          +',SUM(P2PIS_VBC) AS P2PIS_VBC '
                          +',SUM(p2vicmsufremet) AS p2_ec87_vicmsufremet, '
                          +'SUM(p2vbcufdest) AS p2_ec87_vbcufdest, '
                          +'SUM(p2cpufdest) AS p2_ec87_cpufdest, '
                          +'SUM(p2vicmsufdest) AS p2_ec87_vicmsufdest, '
                          +'SUM(p2icmsinter) AS p2_ec87_icmsinter, '
                          +'SUM(P2ICMSINTERPART) AS p2_ec87_icmsinterpart '
                          +',SUM(P2VFCPUDEST) AS p2_ec87_vfcpudest '
                          +',SUM(P2VICMSUFDEST) AS p2_ec87_vicmsufdest '
                          +',SUM(P2VICMSUFREMET) AS p2_ec87_vicmsufremet '
                          +', SUM(P2VDESCF) AS P2DESCFIN_VALOR '
                          +',SUM(P2VALPIS) AS P2PIS_VALOR '
                          +',SUM(P2COFINS) AS P2COFINS_VALOR '
                          +',SUM(P2VLRICMS_SN) AS P2ICMSSN_VALOR '
                          +',SUM(P2TOTLIQ) AS P2TOTLIQ '
                          +',SUM(P2VFRERAT) AS P2VALFRE_RAT '
                          +',SUM(P2VDESPACESRAT) AS P2OUTDESP_RAT '
                          +',SUM(P2VSEGRAT) AS P2VALSEG_RAT '
                          +',SUM(P2TOTDES) AS  P2DESC_VLRTOT '
                          +',SUM(P2ACRERAT) AS P2ACRERAT '
                          +', max(PDNOME) AS PDNOME'
                          +',MAX(PDCODNCM) AS pdfis_codncm '
                          +' ,MAX(PDUND) AS PDUND '
                          +' ,MAX(PDMARCA) AS PDMARCA, '
                          +' MAX(P2ITEM) AS P2ITEM '
                          +' ,P2CODPRO'
                          +' ,MAX(PDCODBAR) AS PDCODBAR '
                          +' ,MAX(P2DESC1) AS P2DESC_PERC01 '
                          +' ,MAX(P2DESC2) AS P2DESC_PERC02 '
                          +' ,MAX(P2PRECO) AS P2PRECO  '
                          +' ,MAX(P2PERCIMP_MUNICIPAL) AS P2PERCIMP_MUNICIPAL '
                          +' ,MAX(P2PERCIMP_ESTADUAL) AS P2PERCIMP_ESTADUAL '
                          +' ,MAX(P2PERCIMP_FEDERAL) AS P2PERCIMP_FEDERAL '
                          +' ,MAX(P2SIT) AS P2ICMS_CST'
                          +',MAX(P2CSOSN) AS P2CSOSN '
                          +',MAX(pdfis_origem) AS pdfis_origem '
                          +' ,MAX(P2REDUTICM) AS P2ICMS_PRED '
                          +' , 0 AS P2ICMS_RED_VLR '
                          +',MAX(P2MODBCST) AS p2st_modbc '
                          +',MAX(P2ST_IVA) AS P2ST_IVA '
                          +' ,MAX(P2ST_REDUT) AS P2ST_PREDUT, '
                          +' MAX(P2ST_ICMCRED) AS P2ST_ICMSCRED '
                          +' ,MAX(P2ST_ICMDEB) AS P2ST_ICMSDEB '
                          +' ,MAX(P2ST_ICMDEB) AS P2ST_ICMS '
                          +'  ,MAX(P2PCOMAX) AS p2preco_pmcpauta '
                          +'  ,MAX(P2ALIPI) AS P2IPI_PERC '
                          +'  ,MAX(P2ALIQ) AS P2ICMS_PERC, '
                          +'   MAX(P2CEST) AS P2CEST, '
                          +'   MAX(P2CFO) AS P2CFOP, '
                          +'   MAX(P2PDESCF) AS P2DESCFIN_PERC '
                          +'  ,MAX(P2ALPIS) AS P2PIS_PERC'
                          +',MAX(P2ALCOFINS) AS P2COFINS_PERC'
                          +',MAX(P2COMPLEMENTO) AS P2DESC_COMP '
                          +'    ,MAX(P2PCREDSN) AS  P2ICMSSN_PERC '
                          +'  ,MAX(P2CST_IPI) AS P2IPI_CST,MAX(P2CST_PIS) AS P2PIS_CST'
                          +',MAX(P2CST_COFINS) AS P2COFINS_CST '
                          +'   ,0 AS P2TARBAN_RAT '
                          +'  ,MAX(P2CODVEN) AS P2CODVEN '
                          +' from  CADP02,CADPRO where pdcodpro=p2codpro ' + ' and P2CODEMP=:CODEMP_FILIAL '
                          +' and P2CHAVE=:CHAVE ' + ' and P2LOTSEQ=:CHAVE_ANO '
                          +' GROUP BY P2CODPRO');

       end
    else
       begin
       Query_itens.SQL.Add
          ('Select PDNOME,PDCODNCM AS pdfis_codncm,PDUND,PDMARCA,P2ITEM,P2CODPRO,PDCODBAR,P2QTD,P2DESC1 AS P2DESC_PERC01,P2DESC2 AS P2DESC_PERC02'
          +' ,P2VALDES AS P2DESC_VALOR,P2PRECO '
          + ',P2PERCIMP_MUNICIPAL'
          + ',P2PERCIMP_ESTADUAL'
          + ',P2PERCIMP_FEDERAL'
          + ',P2VLRIMP_MUNICIPAL'
          + ',P2VLRIMP_ESTADUAL'
          + ',P2VLRIMP_FEDERAL'

          +',P2SIT AS P2ICMS_CST,P2CSOSN,pdfis_origem,P2BASEN AS P2ICMS_BASE,P2ICMSN AS P2ICMS_VALOR, P2REDUTICM AS P2ICMS_PRED '
          + ',round((P2PRECO*P2QTD),2) AS TOTPRO, ' +
          '0 AS P2ICMS_RED_VLR,P2MODBCST AS p2st_modbc,P2ST_IVA,P2ST_REDUT AS P2ST_PREDUT,'
          +' P2ST_ICMCRED AS P2ST_ICMSCRED,P2ST_ICMDEB AS P2ST_ICMSDEB,P2BASER AS P2ST_BASE,P2ST_ICMDEB AS P2ST_ICMS '
          + ',P2PCOMAX AS p2preco_pmcpauta,P2TOTDES AS P2DESC_VLRTOT,P2ALIPI AS P2IPI_PERC,P2VALIPI AS P2IPI_VALOR,'
          +' P2IPI_VBC,P2COFINS_VBC,P2PIS_VBC,P2ALIQ AS P2ICMS_PERC,'
         +'P2CEST,'
         +' p2vicmsufremet AS p2_ec87_vicmsufremet,'
         +' p2vbcufdest AS p2_ec87_vbcufdest, '
         +' p2cpufdest AS p2_ec87_cpufdest,'
         +' p2vicmsufdest AS p2_ec87_vicmsufdest,'
         + 'p2icmsinter AS p2_ec87_icmsinter,'
         +' P2ICMSINTERPART AS p2_ec87_icmsinterpart'
         +',P2VFCPUDEST AS p2_ec87_vfcpudest'
         +',P2VICMSUFDEST AS p2_ec87_vicmsufdest'

         +',P2VICMSUFREMET AS p2_ec87_vicmsufremet, ');
    Query_itens.SQL.Add('P2CFO AS P2CFOP, ');
    Query_itens.SQL.Add(' P2PDESCF AS P2DESCFIN_PERC, ' +
          'P2VDESCF AS P2DESCFIN_VALOR,P2ALPIS AS P2PIS_PERC,P2VALPIS AS P2PIS_VALOR,P2ALCOFINS AS P2COFINS_PERC,P2COFINS AS P2COFINS_VALOR,P2COMPLEMENTO AS P2DESC_COMP '
          + ',P2PCREDSN AS  P2ICMSSN_PERC,P2VLRICMS_SN AS P2ICMSSN_VALOR,P2TOTLIQ,P2CST_IPI AS P2IPI_CST,P2CST_PIS AS P2PIS_CST,P2CST_COFINS AS P2COFINS_CST,P2VFRERAT AS P2VALFRE_RAT '
          + ',0 AS P2TARBAN_RAT,P2VDESPACESRAT AS P2OUTDESP_RAT,P2VSEGRAT AS P2VALSEG_RAT,P2CODVEN,P2TOTDES AS  P2DESC_VLRTOT '
          +',P2ACRERAT '+
          ' from  CADP02,CADPRO where pdcodpro=p2codpro ' + ' and P2CODEMP=:CODEMP_FILIAL ' +
          ' and P2CHAVE=:CHAVE ' + ' and P2LOTSEQ=:CHAVE_ANO ');
      end;
   Query_itens.ParamByName('CODEMP_FILIAL').AsInteger := pCodEmp;
   Query_itens.ParamByName('CHAVE').AsInteger := pChave;
   Query_itens.ParamByName('CHAVE_ANO').AsInteger := pChave_Ano;

    try
      Query_itens.Open;
      result := true;
    except ON E: Exception do
       begin
       fAdicionarErros('997','erro 547 ao ler cadp01 '+e.Message);
       ex_erroSql_Novo(Query_itens, 2666, '_lerarq', 'CADP02');
       pfechartudo;
       fApresentarErros_json;
       exit;
       end;
       end;

    Query_itens.first;

    if valint(Query_itens.FieldByName('P2CFOP').AsString[1]) > 4 then // saida
       mtipo_entsai := 1
    else
       mtipo_entsai := 0;
    PXMLNFCE.Add(fGeraXMLReal(0, 'tpNF', mtipo_entsai));

    PXMLNFCE.Add(fGeraXMLString(0,'idDest','1'));

    PXMLNFCE.Add(fGeraXMLReal(0, 'cMunFG', dm1.Tb_Empcodloc_ibge.AsInteger));
    PXMLNFCE.Add(fGeraXMLReal(0, 'tpImp', Query_Ped01.FieldByName('P1NFCE_TPIMP').AsInteger));
    PXMLNFCE.Add(fGeraXMLReal(0, 'tpEmis',  Query_Ped01.FieldByName('P1NFCE_TPEMIS').AsInteger));

    PXMLNFCE.Add(fGeraXMLReal(0, 'cDV', valint(mNFE_Chave_Acesso_Dig)));

    PXMLNFCE.Add(fGeraXMLReal(0, 'tpAmb', Query_Ped01.FieldByName('P1NFCE_TPAMB').AsInteger));
        // 2-homologacao 1-PRODUCAO

    mcfop:=0;
    if mcfop=0 then
       mcfop:=Query_itens.FieldByName('P2CFOP').AsInteger;

    if ( (copy(formatfloat('0000', mcfop),2,2)='20')
         or (copy(formatfloat('0000', mcfop),2,2)='21')
         or (copy(formatfloat('0000', mcfop),2,2)='41')
       )   then
       PXMLNFCE.Add(fGeraXMLreal(0,'finNFe',4))
    else if Query_Ped01.FieldByName('p1tpped').AsInteger = -1 then // é nota complementar
       PXMLNFCE.Add(fGeraXMLreal(0,'finNFe',2))
    else
       PXMLNFCE.Add(fGeraXMLreal(0,'finNFe',1));



    if (valint(Query_Ped01.FieldByName('p1nfce_MODELO').AsString)=65) or
       (Query_Ped01.FieldByName('CONSFIN_CLI').AsString='S') or (fsonumero(query_ped01.FieldByName('P1CODFORCLI').AsString)>0) then
       begin
       PXMLNFCE.Add(fGeraXMLString(0,'indFinal', '1'));
       PXMLNFCE.Add(fGeraXMLString(0,'indPres', '1'));
       end
    else
       begin
       PXMLNFCE.Add(fGeraXMLString(0,'indFinal', '0'));
       PXMLNFCE.Add(fGeraXMLString(0,'indPres', '9'));
       end;

    PXMLNFCE.Add(fGeraXMLReal(0, 'procEmi', 0)); // APLICATIVO PROPRIO
    PXMLNFCE.Add(fGeraXMLString(0, 'verProc', 'NF-eletronica.com'));


    if (query_ped01.FieldByName('P1NFCE_TPEMIS').AsInteger = 9) OR
      (query_ped01.FieldByName('P1NFCE_TPEMIS').AsInteger = 4) then
       begin
       pXMLNFCE.Add(fGeraXMLDataHoraFuso('dhCont',Query_Ped01.FieldByName('p1nfce_contigencia_dh').AsDateTime));
       PXMLNFCE.Add(fGeraXMLString(0, 'xJust',Query_Ped01.FieldByName('p1nfce_contigencia_xjust').AsString));
       end
    else if query_ped01.FieldByName('p1nfce_TPEMIS').AsInteger = 3 then
       begin
       pXMLNFCE.Add(fGeraXMLDataHoraFuso('dhCont',Query_Ped01.FieldByName('p1nfce_contigencia_dh').AsDateTime));
       PXMLNFCE.Add(fGeraXMLString(0, 'xJust', Query_Ped01.FieldByName('p1nfce_contigencia_xjust').AsString));
       end;


        {
    entrada dos pedidos de referencia
        }
    PXMLNFCE.Add('</ide>');


    PXMLNFCE.Add('<emit>');

    PXMLNFCE.Add(fGeraXMLString(0, 'CNPJ',
          insere(dm1.Tb_EmpCGC.AsString, '0', 14)));
    PXMLNFCE.Add(fGeraXMLString(0, 'xNome', dm1.Tb_EmpRAZAO.AsString));
    if Length(trim(dm1.Tb_EmpFANTASIA.AsString)) > 1 then
       PXMLNFCE.Add(fGeraXMLString(0, 'xFant', dm1.Tb_EmpFANTASIA.AsString));

    PXMLNFCE.Add('<enderEmit>');
    PXMLNFCE.Add(fGeraXMLString(0, 'xLgr', dm1.Tb_EmpENDERECO.AsString));
    PXMLNFCE.Add(fGeraXMLString(0, 'nro', dm1.Tb_EmpNUMERO.AsString));

//    if Length(mGer_Emp_ender_compl) > 2 then
//       PXMLNFCE.Add(fGeraXMLString(0, 'xCpl',mGer_Emp_ender_compl));
    PXMLNFCE.Add(fGeraXMLString(0, 'xBairro', DM1.Tb_EmpBAIRRO.AsString));

    PXMLNFCE.Add(fGeraXMLReal(0, 'cMun', DM1.Tb_Empcodloc_ibge.AsInteger));
    PXMLNFCE.Add(fGeraXMLString(0, 'xMun',DM1.Tb_EmpCIDADE.AsString));

    PXMLNFCE.Add(fGeraXMLString(0, 'UF', DM1.Tb_EmpUF.AsString));

    PXMLNFCE.Add(fGeraXMLString(0, 'CEP', insere(fdeixanum(DM1.Tb_EmpCEP.AsString), '0', 08)));

    PXMLNFCE.Add(fGeraXMLString(0, 'cPais', '1058'));

    PXMLNFCE.Add(fGeraXMLString(0, 'xPais', 'BRASIL'));

    mString_Temp := fDeixanum2(DM1.Tb_EmpFONE.AsString);
    if Length(mString_Temp) > 6 then
       begin
       if Length(mString_Temp) > 10 then
          mString_Temp := copy(mString_Temp, Length(mString_Temp) - 9, 10);
       PXMLNFCE.Add(fGeraXMLString(0, 'fone', mString_Temp));
       end;
    PXMLNFCE.Add('</enderEmit>');
    PXMLNFCE.Add(fGeraXMLString(0, 'IE',fDeixanum2(DM1.Tb_EmpINSCRICAO.AsString)));

    if (Length(fdeixanum2(DM1.Tb_EmpINSCMUNIC.AsString)) > 1) and  (Length(fdeixanum2(DM1.Tb_EmpEMP_CNAE.AsString)) > 1) then
       begin
       PXMLNFCE.Add(fGeraXMLString(0, 'IM',  fdeixanum(DM1.Tb_EmpINSCMUNIC.AsString)));
       PXMLNFCE.Add(fGeraXMLString(0, 'CNAE', fdeixanum(DM1.Tb_EmpEMP_CNAE.AsString)));
       end;
    PXMLNFCE.Add(fGeraXMLString(0, 'CRT', DM1.Tb_EmpEMP_OPTSIMPLES.AsString));
    PXMLNFCE.Add('</emit>');
    //COLOCAR O CPF PARA FAZER TESTE

    mcnpj_cli :='';
    mcpf_cli  :='';

    if Fcpf(fdeixanum(Query_Ped01.FieldByName('CPF_CLI').AsString)) then
       mcpf_cli:=fdeixanum(Query_Ped01.FieldByName('CPF_CLI').AsString)
    else if FCGC(valfloat(Query_Ped01.FieldByName('CNPJ_CLI').AsString)) then
       mcnpj_cli:=fdeixanum(Query_Ped01.FieldByName('CNPJ_CLI').AsString)
    else if Fcpf(fdeixanum(Query_Ped01.FieldByName('CNPJ_CLI').AsString)) then
       mcpf_cli:=fdeixanum(Query_Ped01.FieldByName('CNPJ_CLI').AsString)
    else if FCGC(valfloat(Query_Ped01.FieldByName('CPF_CLI').AsString)) then
       mcnpj_cli:=fdeixanum(Query_Ped01.FieldByName('CPF_CLI').AsString);


    if length(mcpf_cli)>11 then
       mcpf_cli:=copy(mcpf_cli,length(mcpf_cli)-10,11);



    if (fsonumero(mcpf_cli)>0) or (fsonumero(mcnpj_cli)>0) then
       begin
       PXMLNFCE.Add('<dest>');
       if Query_Ped01.FieldByName('p1nfce_TPAMB').AsInteger = 2 then
          begin
          if Query_Ped01.FieldByName('UF_CLI').AsString = 'EX' then
             PXMLNFCE.Add(fGeraXMLString(0, 'CNPJ', ''))
          else
             begin
             if (fsonumero(mcnpj_cli) > 0) then
                PXMLNFCE.Add(fGeraXMLString(0, 'CNPJ',insere(mcnpj_cli,  '0', 14)))
             else
                PXMLNFCE.Add(fGeraXMLString(0, 'CPF',  insere(fDeixanum2(mcpf_cli),'0', 11)));
             end;
          PXMLNFCE.Add(fGeraXMLString(0, 'xNome','NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL'))
          end
       else
          begin
          if Query_Ped01.FieldByName('UF_CLI').AsString = 'EX' then
             PXMLNFCE.Add(fGeraXMLString(0, 'CNPJ', ''))
          else
             begin
             if fsonumero(mcnpj_cli) > 11 then
                PXMLNFCE.Add(fGeraXMLString(0, 'CNPJ', insere(fDeixanum2(mcnpj_cli),   '0', 14)))
             else
                PXMLNFCE.Add(fGeraXMLString(0, 'CPF', insere(fDeixanum2(mcpf_cli),  '0', 11)));
             end;
          PXMLNFCE.Add(fGeraXMLString(0, 'xNome',  Query_Ped01.FieldByName('RAZAO_CLI').AsString));
          end;
       mString_Temp := Query_Ped01.FieldByName('ENDER_CLI').AsString;
       if Length(Query_Ped01.FieldByName('COMPL_CLI').AsString) > 1 then
          mString_Temp := mString_Temp + ' ' + Query_Ped01.FieldByName('COMPL_CLI').AsString;

//       if (fsonumero(Query_Ped01.FieldByName('P1CODPESSOA').AsString)>99999999999999) and
//          (Query_Ped01.FieldByName('UF_CLI').AsString=mGer_Emp_UF)  then


//       if (fsonumero(Query_Ped01.FieldByName('P1CODPESSOA').AsString)>99999999999999) and
//          (Query_Ped01.FieldByName('UF_CLI').AsString=mGer_Emp_UF)  then



       if (trim(Query_Ped01.FieldByName('ENDER_CLI').AsString)<>'') and
          (trim(Query_Ped01.FieldByName('BAIRRO_CLI').AsString)<>'') and
          (Query_Ped01.FieldByName('CODIBGE_CLI').AsFloat>0) and
          (fsonumero(Query_Ped01.FieldByName('CODPAIS_CLI').AsString)>0) and
          (trim(Query_Ped01.FieldByName('CIDADE_CLI').AsString)<>'') and
          (trim(Query_Ped01.FieldByName('UF_CLI').AsString)<>'') and
          (fsonumero(Query_Ped01.FieldByName('CEP_CLI').AsString)>0) and
          (trim(Query_Ped01.FieldByName('PAIS_NOME_CLI').AsString)<>'')  then


          begin
          PXMLNFCE.Add('<enderDest>');
          PXMLNFCE.Add(fGeraXMLString(0, 'xLgr',  copy(Query_Ped01.FieldByName('ENDER_CLI').AsString, 1, 60)));
          if Length(trim(Query_Ped01.FieldByName('NUM_CLI').AsString)) > 1 then
             PXMLNFCE.Add(fGeraXMLString(0, 'nro', Query_Ped01.FieldByName('NUM_CLI').AsString))
          else
             PXMLNFCE.Add(fGeraXMLString(0, 'nro', 'S/N'));
          if Length(Query_Ped01.FieldByName('COMPL_CLI').AsString) > 1 then
             PXMLNFCE.Add(fGeraXMLString(0, 'xCpl',
             copy(Query_Ped01.FieldByName('COMPL_CLI').AsString, 1, 60)));
          PXMLNFCE.Add(fGeraXMLString(0, 'xBairro',  Query_Ped01.FieldByName('BAIRRO_CLI').AsString));

          PXMLNFCE.Add(fGeraXMLReal(0, 'cMun', Query_Ped01.FieldByName('CODIBGE_CLI').AsFloat));

          if Query_Ped01.FieldByName('UF_CLI').AsString = 'EX' then
             PXMLNFCE.Add(fGeraXMLString(0, 'xMun', 'EXTERIOR'))
          else
             PXMLNFCE.Add(fGeraXMLString(0, 'xMun',  Query_Ped01.FieldByName('CIDADE_CLI').AsString));
          PXMLNFCE.Add(fGeraXMLString(0, 'UF', Query_Ped01.FieldByName('UF_CLI').AsString));
          PXMLNFCE.Add(fGeraXMLString(0, 'CEP',  insere(fdeixanum(Query_Ped01.FieldByName('CEP_CLI').AsString), '0', 08)));
          PXMLNFCE.Add(fGeraXMLString(0, 'cPais', Query_Ped01.FieldByName('CODPAIS_CLI').AsString));
          PXMLNFCE.Add(fGeraXMLString(0, 'xPais', Query_Ped01.FieldByName('PAIS_NOME_CLI').AsString));
          mString_Temp := fDeixanum2(Query_Ped01.FieldByName('FONE01_CLI').AsString);
          if Length(mString_Temp) > 6 then
             begin
             if Length(mString_Temp) > 10 then
               mString_Temp := copy(mString_Temp, Length(mString_Temp) - 9, 10);
             PXMLNFCE.Add(fGeraXMLString(0, 'fone', mString_Temp));
             end;
          PXMLNFCE.Add('</enderDest>');
          end;

       if (Query_Ped01.FieldByName('CONSFIN_CLI').AsString='S') or ((fsonumero(mcpf_cli)=0) and (fsonumero(mcnpj_cli)=0)) then
          PXMLNFCE.Add(fGeraXMLString(0,'indIEDest','9'))
       else if length(fdeixanum2(Query_Ped01.FieldByName('CIE').AsString))>0 then
          begin
          if Query_Ped01.FieldByName('p1nfce_MODELO').AsInteger=65 then
             PXMLNFCE.Add(fGeraXMLString(0,'indIEDest','9'))
          else
             begin
             PXMLNFCE.Add(fGeraXMLString(0,'indIEDest','1'));
             PXMLNFCE.Add(fGeraXMLString(0,'IE',fdeixanum2(Query_Ped01.FieldByName('CIE').AsString)));
             end
          end
       else
          begin
          if Query_Ped01.FieldByName('p1nfce_MODELO').AsInteger=65 then
             PXMLNFCE.Add(fGeraXMLString(0,'indIEDest','9'))
          else
             PXMLNFCE.Add(fGeraXMLString(0,'indIEDest','2'));
          PXMLNFCE.Add(fGeraXMLString(0,'IE','ISENTO'));
          end;
     //local onde alterei os dados



       if Length(trim(Query_Ped01.FieldByName('SUFRAMA_CLI').AsString)) > 1 then
          PXMLNFCE.Add(fGeraXMLString(0, 'ISUF',  Query_Ped01.FieldByName('SUFRAMA_CLI').Value));
       PXMLNFCE.Add('</dest>');
       end;




    Query_itens.first;
    mItem := 0;
    if Query_Ped01.FieldByName('p1tpped').AsInteger = -1 then
    // é nota complementar
       begin
       mItem := mItem + 1;
       PXMLNFCE.Add('<det nItem="' + IntToStr(mItem) + '">');
       PXMLNFCE.Add('<prod>');

       mString_Temp := 'COMPLEMENTO DE IMPOSTO';

       PXMLNFCE.Add(fGeraXMLString(0, 'cProd', '000'));

       PXMLNFCE.Add(fGeraTagGtin('cEAN','',Query_Ped01.FieldByName('p1nfce_VERSAOXML').AsString));

       PXMLNFCE.Add(fGeraXMLString(0, 'xProd', mString_Temp));

       PXMLNFCE.Add(fGeraXMLString(0, 'NCM', '99999999'));


       PXMLNFCE.Add(fGeraXMLString(0, 'CFOP', inttostr(mcfop)));

       PXMLNFCE.Add(fGeraXMLString(0, 'uCom', 'UND'));

       PXMLNFCE.Add(fGeraXMLReal(DM1.Tb_PargerPCASQTD.AsInteger, 'qCom', 0));
       PXMLNFCE.Add(fGeraXMLReal(iif(Query_Ped01.FieldByName('P1QTDDECPU')
         .AsInteger > 0, Query_Ped01.FieldByName('P1QTDDECPU').AsInteger,
         DM1.Tb_PargerPCASQTD.AsInteger), 'vUnCom', 0));

       PXMLNFCE.Add(fGeraXMLReal(2, 'vProd', 0));


       PXMLNFCE.Add(fGeraTagGtin('cEANTrib','',Query_Ped01.FieldByName('p1nfce_VERSAOXML').AsString));
       PXMLNFCE.Add(fGeraXMLString(0, 'uTrib', 'UND'));

       PXMLNFCE.Add(fGeraXMLReal(DM1.Tb_PargerPCASQTD.AsInteger, 'qTrib', 0));
       PXMLNFCE.Add(fGeraXMLReal(iif(Query_Ped01.FieldByName('P1QTDDECPU').AsInteger > 0,
                      Query_Ped01.FieldByName('P1QTDDECPU').AsInteger,
                      DM1.Tb_PargerPCASASPU.AsInteger), 'vUnTrib', 0));

       PXMLNFCE.Add(fGeraXMLReal(2, 'vFrete', 0));
       PXMLNFCE.Add(fGeraXMLReal(2, 'vSeg', 0));
       PXMLNFCE.Add(fGeraXMLReal(2, 'vOutro', 0));
       PXMLNFCE.Add(fGeraXMLReal(0, 'indTot', 0));
       PXMLNFCE.Add(fGeraXMLReal(0, 'nItemPed', 0));
       PXMLNFCE.Add('</prod>');
       end
    else
       begin
       While not Query_itens.Eof do
          begin
          mItem := mItem + 1;
          PXMLNFCE.Add('<det nItem="' + IntToStr(mItem) + '">');
          PXMLNFCE.Add('<prod>');
          PXMLNFCE.Add(fGeraXMLString(0, 'cProd',  Query_itens.FieldByName('P2CODPRO').AsString));
          if fSonumero(Query_itens.FieldByName('PDCODBAR').AsString) > 0 then
             begin
             if ValidaEan13(true, Query_itens.FieldByName('PDCODBAR').AsString) then
                PXMLNFCE.Add(fGeraTagGtin('cEAN',Query_itens.FieldByName('PDCODBAR').AsString,Query_Ped01.FieldByName('p1nfce_VERSAOXML').AsString))
             else
                PXMLNFCE.Add(fGeraTagGtin('cEAN','',Query_Ped01.FieldByName('p1nfce_VERSAOXML').AsString))
             end
          else
             PXMLNFCE.Add(fGeraTagGtin('cEAN','',Query_Ped01.FieldByName('p1nfce_VERSAOXML').AsString));


          if (Query_ped01.FieldByName('p1nfce_TPAMB').AsInteger=2)
             and (Query_Ped01.FieldByName('p1nfce_MODELO').AsInteger=65) and (mItem=1) then
             mString_Temp:='NOTA FISCAL EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL'
          else
             mString_Temp:=Query_itens.FieldByName('PDNOME').AsString;

          PXMLNFCE.Add(fGeraXMLString(0, 'xProd',mString_Temp));
          PXMLNFCE.Add(fGeraXMLString(0, 'NCM',Query_itens.FieldByName('pdfis_codncm').AsString));
          if length(trim(query_itens.fieldbyname('P2CEST').asstring))>1 then
             PXMLNFCE.Add(fGeraXMLString(0, 'CEST', Query_itens.FieldByName('P2CEST').AsString));

          PXMLNFCE.Add(fGeraXMLString(0, 'CFOP',  Query_itens.FieldByName('P2CFOP').AsString));
         // FORAM pulados os campos 106 E 107
          if trim(Query_itens.FieldByName('PDUND').AsString) = '' then
             PXMLNFCE.Add(fGeraXMLString(0, 'uCom', 'UND'))
          else
             PXMLNFCE.Add(fGeraXMLString(0, 'uCom', Query_itens.FieldByName('PDUND').Value));
          PXMLNFCE.Add(fGeraXMLReal(DM1.Tb_PargerPCASQTD.AsInteger, 'qCom', Query_itens.FieldByName('P2QTD').Value));
          PXMLNFCE.Add(fGeraXMLReal(iif(Query_Ped01.FieldByName('P1QTDDECPU').AsInteger > 0,
                        Query_Ped01.FieldByName('P1QTDDECPU').AsInteger, DM1.Tb_PargerPCASASPU.AsInteger), 'vUnCom',
                        ( Query_itens.FieldByName('P2PRECO').AsFloat) ) );
          PXMLNFCE.Add(fGeraXMLReal(2, 'vProd',  Query_itens.FieldByName('TOTPRO').Value ));
          mNFE_TotPro := mNFE_TotPro + Query_itens.FieldByName('TOTPRO').Value;
          PXMLNFCE.Add(fGeraTagGtin('cEANTrib',Query_itens.FieldByName('PDCODBAR').AsString,Query_Ped01.FieldByName('p1nfce_VERSAOXML').AsString));

          if trim(Query_itens.FieldByName('PDUND').AsString) = '' then
             PXMLNFCE.Add(fGeraXMLString(0, 'uTrib', 'UND'))
          else
             PXMLNFCE.Add(fGeraXMLString(0, 'uTrib', Query_itens.FieldByName('PDUND').Value));
          PXMLNFCE.Add(fGeraXMLReal(DM1.Tb_PargerPCASQTD.AsInteger, 'qTrib',  Query_itens.FieldByName('P2QTD').Value ));
          PXMLNFCE.Add(fGeraXMLReal(iif(Query_Ped01.FieldByName('P1QTDDECPU').AsInteger > 0,
                          Query_Ped01.FieldByName('P1QTDDECPU').AsInteger,  DM1.Tb_PargerPCASASPU.AsInteger), 'vUnTrib',
                          ( Query_itens.FieldByName('P2PRECO').AsFloat) ) );

          if Query_itens.FieldByName('P2VALFRE_RAT').AsFloat <> 0 then
             begin
             PXMLNFCE.Add(fGeraXMLReal(2, 'vFrete',
             Query_itens.FieldByName('P2VALFRE_RAT').AsFloat));
             mNFE_TotFrete := mNFE_TotFrete + Query_itens.FieldByName
              ('P2VALFRE_RAT').AsFloat;
             end;
          if Query_itens.FieldByName('P2VALSEG_RAT').AsFloat <> 0 then
             begin
             PXMLNFCE.Add(fGeraXMLReal(2, 'vSeg',
              Query_itens.FieldByName('P2VALSEG_RAT').AsFloat));
             mNFE_TotSeg := mNFE_TotSeg + Query_itens.FieldByName
              ('P2VALSEG_RAT').AsFloat;
             end;

          if Query_itens.FieldByName('P2DESC_VLRTOT').AsFloat <> 0 then
             begin
             PXMLNFCE.Add(fGeraXMLReal(2, 'vDesc',
              Query_itens.FieldByName('P2DESC_VLRTOT').AsFloat));
             mNFE_TotDes := mNFE_TotDes + Query_itens.FieldByName
               ('P2DESC_VLRTOT').AsFloat;
             end;

          if (Query_itens.FieldByName('P2TARBAN_RAT').AsFloat +
             Query_itens.FieldByName('P2OUTDESP_RAT').AsFloat) <> 0 then
             begin
             PXMLNFCE.Add(fGeraXMLReal(2, 'vOutro',
              (Query_itens.FieldByName('P2TARBAN_RAT').AsFloat +
              Query_itens.FieldByName('P2OUTDESP_RAT').AsFloat +
              Query_itens.FieldByName('P2ACRERAT').AsFloat  )   ));
              mNFE_TotOutDesp := mNFE_TotOutDesp +
             (Query_itens.FieldByName('P2TARBAN_RAT').AsFloat +
              Query_itens.FieldByName('P2OUTDESP_RAT').AsFloat +
              Query_itens.FieldByName('P2ACRERAT').AsFloat);
             end;
          PXMLNFCE.Add(fGeraXMLReal(0, 'indTot', 1));
          PXMLNFCE.Add(fGeraXMLReal(0, 'nItemPed', 0));
         // foram pulados os campos 117,118,119,120,121,122,123,124,125,126,127,128
         // foram pulados detalhamento Especifico de Veiculos Novos campos 129 a 1551






         // foram pulados os itens 158 a 162 detalhamento de armas
         // if DM2.Qr_CorP2CONTESP.AsInteger=5 then
         // fGerarTagArma(DM2.Qr_CorP2CODPRO.AsString,DM2.Qr_CorP2CODEMP_FILIAL.AsInteger,DM2.Qr_CorP2LOTSEQ.AsInteger,DM2.Qr_CorP2CHAVE.AsInteger,DM2.Qr_CorP2ORDEM.AsInteger, DM2.Qr_CorP2ITEM.AsInteger);

         // foram pulados os itens 162a a 162t referentes a combustiveis

          PXMLNFCE.Add('</prod>');

          PXMLNFCE.Add('<imposto>');


          if (valint(Query_Ped01.FieldByName('p1nfce_MODELO').AsString)=65) and  ( (
             Query_itens.FieldByName('P2VLRIMP_MUNICIPAL').asfloat+
             Query_itens.FieldByName('P2VLRIMP_ESTADUAL').asfloat+
             Query_itens.FieldByName('P2VLRIMP_FEDERAL').asfloat)>0)     then
             begin
             PXMLNFCE.Add(fGeraXMLReal(2,'vTotTrib',

             Query_itens.FieldByName('P2VLRIMP_MUNICIPAL').asfloat+
             Query_itens.FieldByName('P2VLRIMP_ESTADUAL').asfloat+
             Query_itens.FieldByName('P2VLRIMP_FEDERAL').asfloat));
             mvTottrib:=mVtotTrib+(Query_itens.FieldByName('P2VLRIMP_MUNICIPAL').asfloat+
                                  Query_itens.FieldByName('P2VLRIMP_ESTADUAL').asfloat+
                                  Query_itens.FieldByName('P2VLRIMP_FEDERAL').asfloat);

             end;


          PXMLNFCE.Add('<ICMS>');








          if (mGer_Emp_CRT = 1) or
            (mGer_Emp_CRT = 2) then
         // se simples nacional
             begin
             if (Query_itens.FieldByName('P2CSOSN').AsString = '102') or
               (Query_itens.FieldByName('P2CSOSN').AsString = '103') or
               (Query_itens.FieldByName('P2CSOSN').AsString = '300') or
               (Query_itens.FieldByName('P2CSOSN').AsString = '400') then
                PXMLNFCE.Add(fGerarTag102103300400(Query_itens.FieldByName('pdfis_origem').AsString,
                 Query_itens.FieldByName('P2CSOSN').AsString))
             else if (Query_itens.FieldByName('P2CSOSN').AsString = '201') then
             // and (DM2.Qr_CorP2BASER.Value>0) then
                begin
               // function fGerarTag201(pOrigem_Prod,pCsoSN,pModBCST: String;ppMVast,ppRedBCST,pvBCST,ppICMSST,pvICMSST,ppCredSN,pvCredICMSSN:Real): String;
                PXMLNFCE.Add(fGerarTag201(Query_itens.FieldByName('pdfis_origem')
                .AsString, Query_itens.FieldByName('P2CSOSN').AsString,
                Query_itens.FieldByName('p2st_modbc').AsString,
                Query_itens.FieldByName('P2ST_IVA').AsFloat,
                Query_itens.FieldByName('P2ST_PREDUT').AsFloat,
                Query_itens.FieldByName('P2ST_BASE').AsFloat,
                Query_itens.FieldByName('P2ST_ICMSDEB').AsFloat,
                Query_itens.FieldByName('P2ST_ICMS').AsFloat,
                Query_itens.FieldByName('P2ICMSSN_PERC').AsFloat,
                Query_itens.FieldByName('P2ICMSSN_VALOR').AsFloat));
                mNFE_ICMSSN_Base := mNFE_ICMSSN_Base + Query_itens.FieldByName
                ('P2TOTLIQ').AsFloat;
                mNFE_ICMSSN_Valor := mNFE_ICMSSN_Valor + Query_itens.FieldByName
                ('P2ICMSSN_VALOR').AsFloat;
                mNFE_ICMSST_Base := mNFE_ICMSST_Base + Query_itens.FieldByName
                ('P2ST_BASE').AsFloat;
                mNFE_ICMSST_Valor := mNFE_ICMSST_Valor + Query_itens.FieldByName
                ('P2ST_ICMS').AsFloat;
                end
             else if (Query_itens.FieldByName('P2CSOSN').AsString = '202') or
                (Query_itens.FieldByName('P2CSOSN').AsString = '203') then
           // and (DM2.Qr_CorP2BASER.Value>0) then
                begin
                PXMLNFCE.Add(fGerarTag202203(Query_itens.FieldByName('pdfis_origem')
                 .AsString, Query_itens.FieldByName('P2CSOSN').AsString,
                 Query_itens.FieldByName('p2st_modbc').AsString,
                 Query_itens.FieldByName('P2ST_IVA').AsFloat,
                 Query_itens.FieldByName('P2ST_PREDUT').AsFloat,
                 Query_itens.FieldByName('P2ST_BASE').AsFloat,
                 Query_itens.FieldByName('P2ST_ICMSDEB').AsFloat,
                 Query_itens.FieldByName('P2ST_ICMS').AsFloat));
                 mNFE_ICMSST_Base := mNFE_ICMSST_Base + Query_itens.FieldByName
                 ('P2ST_BASE').AsFloat;
                 mNFE_ICMSST_Valor := mNFE_ICMSST_Valor + Query_itens.FieldByName
                 ('P2ST_ICMS').AsFloat;
                end
             else if (Query_itens.FieldByName('P2CSOSN').AsString = '500') then
                begin
                 PXMLNFCE.Add(fGerarTag500(Query_itens.FieldByName('pdfis_origem')
                 .AsString, Query_itens.FieldByName('P2CSOSN').AsString,
                 Query_itens.FieldByName('P2ST_BASE').AsFloat,
                 Query_itens.FieldByName('P2ST_ICMS').AsFloat));
                mNFE_ICMSST_Base := mNFE_ICMSST_Base + Query_itens.FieldByName
                 ('P2ST_BASE').AsFloat;
                 mNFE_ICMSST_Valor := mNFE_ICMSST_Valor + Query_itens.FieldByName
                 ('P2ST_ICMS').AsFloat;
                end
             else if (Query_itens.FieldByName('P2CSOSN').AsString = '900') then
                begin
                PXMLNFCE.Add(fGerarTag900(Query_itens.FieldByName('pdfis_origem')
               .AsString, Query_itens.FieldByName('P2CSOSN').AsString, '0' // modbc
                , Query_itens.FieldByName('p2ICMS_BASE').AsFloat,
                Query_itens.FieldByName('P2ICMS_PRED').AsFloat,
                Query_itens.FieldByName('P2ICMS_PERC').AsFloat,
                Query_itens.FieldByName('P2ICMS_VALOR').AsFloat,
                Query_itens.FieldByName('p2st_modbc').AsString,
                Query_itens.FieldByName('P2ST_IVA').AsFloat,
                Query_itens.FieldByName('P2ST_PREDUT').AsFloat,
                Query_itens.FieldByName('P2ST_BASE').AsFloat,
                Query_itens.FieldByName('P2ST_ICMSDEB').AsFloat,
                Query_itens.FieldByName('P2ST_ICMS').AsFloat,
                Query_itens.FieldByName('P2ICMSSN_PERC').AsFloat,
                Query_itens.FieldByName('P2ICMSSN_VALOR').AsFloat));
                mNFE_ICMS_Base := mNFE_ICMS_Base + Query_itens.FieldByName
               ('P2ICMS_BASE').AsFloat;
                 mNFE_ICMS_Valor := mNFE_ICMS_Valor + Query_itens.FieldByName
               ('P2ICMS_VALOR').AsFloat;
                 mNFE_ICMSSN_Base := mNFE_ICMSSN_Base + Query_itens.FieldByName
                ('P2TOTLIQ').AsFloat;
                 mNFE_ICMSSN_Valor := mNFE_ICMSSN_Valor + Query_itens.FieldByName
               ('P2ICMSSN_VALOR').AsFloat;
                mNFE_ICMSST_Base := mNFE_ICMSST_Base + Query_itens.FieldByName
               ('P2ST_BASE').AsFloat;
               mNFE_ICMSST_Valor := mNFE_ICMSST_Valor + Query_itens.FieldByName
               ('P2ST_ICMS').AsFloat;
                end
            else
                begin
                PXMLNFCE.Add(fGerarTag101(Query_itens.FieldByName('pdfis_origem')
                .AsString, Query_itens.FieldByName('P2CSOSN').AsString,
                Query_itens.FieldByName('P2ICMSSN_PERC').AsFloat,
                Query_itens.FieldByName('P2ICMSSN_VALOR').AsFloat));
                mNFE_ICMSSN_Base := mNFE_ICMSSN_Base + Query_itens.FieldByName
                ('P2TOTLIQ').AsFloat;
                mNFE_ICMSSN_Valor := mNFE_ICMSSN_Valor + Query_itens.FieldByName
                  ('P2ICMSSN_VALOR').AsFloat;
                end;
             end
          else if Query_itens.FieldByName('P2ICMS_CST').AsString = '00' then
             begin
             PXMLNFCE.Add(fGerarTag00(Query_itens.FieldByName('pdfis_origem')
               .AsString, Query_itens.FieldByName('P2ICMS_CST').AsString, '0'
            // modbc
               , Query_itens.FieldByName('p2ICMS_BASE').AsFloat,
              Query_itens.FieldByName('P2ICMS_PERC').AsFloat,
               Query_itens.FieldByName('P2ICMS_VALOR').AsFloat));
             mNFE_ICMS_Base := mNFE_ICMS_Base + Query_itens.FieldByName
            ('P2ICMS_BASE').AsFloat;
             mNFE_ICMS_Valor := mNFE_ICMS_Valor + Query_itens.FieldByName
               ('P2ICMS_VALOR').AsFloat;
             end
           else if Query_itens.FieldByName('P2ICMS_CST').AsString = '10' then
              begin
              PXMLNFCE.Add(fGerarTag10(Query_itens.FieldByName('pdfis_origem')
             .AsString, Query_itens.FieldByName('P2ICMS_CST').AsString, '0'
             // modbc
             , Query_itens.FieldByName('p2ICMS_BASE').AsFloat,
              Query_itens.FieldByName('P2ICMS_PERC').AsFloat,
              Query_itens.FieldByName('P2ICMS_VALOR').AsFloat,
              Query_itens.FieldByName('p2st_modbc').AsString,
              Query_itens.FieldByName('P2ST_IVA').AsFloat,
              Query_itens.FieldByName('P2ST_PREDUT').AsFloat,
              Query_itens.FieldByName('P2ST_BASE').AsFloat,
              Query_itens.FieldByName('P2ST_ICMSDEB').AsFloat,
              Query_itens.FieldByName('P2ST_ICMS').AsFloat));
               mNFE_ICMS_Base := mNFE_ICMS_Base + Query_itens.FieldByName
              ('P2ICMS_BASE').AsFloat;
               mNFE_ICMS_Valor := mNFE_ICMS_Valor + Query_itens.FieldByName
              ('P2ICMS_VALOR').AsFloat;
              mNFE_ICMSST_Base := mNFE_ICMSST_Base + Query_itens.FieldByName
                ('P2ST_BASE').AsFloat;
              mNFE_ICMSST_Valor := mNFE_ICMSST_Valor + Query_itens.FieldByName
              ('P2ST_ICMS').AsFloat;
              end
           else if Query_itens.FieldByName('P2ICMS_CST').AsString = '20' then
              begin
              PXMLNFCE.Add(fGerarTag20(Query_itens.FieldByName('pdfis_origem')
              .AsString, Query_itens.FieldByName('P2ICMS_CST').AsString, '0'
             // modbc
              , Query_itens.FieldByName('P2ICMS_PRED').AsFloat,
               Query_itens.FieldByName('p2ICMS_BASE').AsFloat,
               Query_itens.FieldByName('P2ICMS_PERC').AsFloat,
               Query_itens.FieldByName('P2ICMS_VALOR').AsFloat,
              Query_itens.FieldByName('p2st_modbc').AsString,
               Query_itens.FieldByName('P2ST_IVA').AsFloat,
              Query_itens.FieldByName('P2ST_PREDUT').AsFloat,
              Query_itens.FieldByName('P2ST_BASE').AsFloat,
              Query_itens.FieldByName('P2ST_ICMSDEB').AsFloat,
              Query_itens.FieldByName('P2ST_ICMS').AsFloat));
              mNFE_ICMS_Base := mNFE_ICMS_Base + Query_itens.FieldByName
              ('P2ICMS_BASE').AsFloat;
              mNFE_ICMS_Valor := mNFE_ICMS_Valor + Query_itens.FieldByName
              ('P2ICMS_VALOR').AsFloat;
              mNFE_ICMSST_Base := mNFE_ICMSST_Base + Query_itens.FieldByName
              ('P2ST_BASE').AsFloat;
              mNFE_ICMSST_Valor := mNFE_ICMSST_Valor + Query_itens.FieldByName
              ('P2ST_ICMS').AsFloat;
              end
           else if Query_itens.FieldByName('P2ICMS_CST').AsString = '30' then
              begin
              PXMLNFCE.Add(fGerarTag30(Query_itens.FieldByName('pdfis_origem')
             .AsString, Query_itens.FieldByName('P2ICMS_CST').AsString,
               Query_itens.FieldByName('p2st_modbc').AsString,
               Query_itens.FieldByName('P2ST_IVA').AsFloat,
               Query_itens.FieldByName('P2ST_PREDUT').AsFloat,
               Query_itens.FieldByName('P2ST_BASE').AsFloat,
               Query_itens.FieldByName('P2ST_ICMSDEB').AsFloat,
               Query_itens.FieldByName('P2ST_ICMS').AsFloat));
              mNFE_ICMSST_Base := mNFE_ICMSST_Base + Query_itens.FieldByName
                ('P2ST_BASE').AsFloat;
              mNFE_ICMSST_Valor := mNFE_ICMSST_Valor + Query_itens.FieldByName
                ('P2ST_ICMS').AsFloat;
              end
           else if (Query_itens.FieldByName('P2ICMS_CST').AsString = '40') or
              (Query_itens.FieldByName('P2ICMS_CST').AsString = '41') or
              (Query_itens.FieldByName('P2ICMS_CST').AsString = '50') then
              PXMLNFCE.Add(fGerarTag40(Query_itens.FieldByName('pdfis_origem')
             .AsString, Query_itens.FieldByName('P2ICMS_CST').AsString))
           else if (Query_itens.FieldByName('P2ICMS_CST').AsString = '51') then
              begin
              PXMLNFCE.Add(fGerarTag51(Query_itens.FieldByName('pdfis_origem')
             .AsString, Query_itens.FieldByName('P2ICMS_CST').AsString, '0'
             // modbc
             , Query_itens.FieldByName('P2ICMS_PRED').AsFloat,
             Query_itens.FieldByName('p2ICMS_BASE').AsFloat,
             Query_itens.FieldByName('P2ICMS_PERC').AsFloat,
             Query_itens.FieldByName('P2ICMS_VALOR').AsFloat));
              mNFE_ICMS_Base := mNFE_ICMS_Base + Query_itens.FieldByName
             ('P2ICMS_BASE').AsFloat;
              mNFE_ICMS_Valor := mNFE_ICMS_Valor + Query_itens.FieldByName
             ('P2ICMS_VALOR').AsFloat;
              end
           else if (Query_itens.FieldByName('P2ICMS_CST').AsString = '90') then
              begin
               PXMLNFCE.Add(fGerarTag90(Query_itens.FieldByName('pdfis_origem')
              .AsString, Query_itens.FieldByName('P2ICMS_CST').AsString, '0'
              // modbc
              , Query_itens.FieldByName('P2ICMS_PRED').AsFloat,
              Query_itens.FieldByName('p2ICMS_BASE').AsFloat,
              Query_itens.FieldByName('P2ICMS_PERC').AsFloat,
              Query_itens.FieldByName('P2ICMS_VALOR').AsFloat,
              Query_itens.FieldByName('p2st_modbc').AsString,
              Query_itens.FieldByName('P2ST_IVA').AsFloat,
              Query_itens.FieldByName('P2ST_PREDUT').AsFloat,
              Query_itens.FieldByName('P2ST_BASE').AsFloat,
              Query_itens.FieldByName('P2ST_ICMSDEB').AsFloat,
              Query_itens.FieldByName('P2ST_ICMS').AsFloat));
              mNFE_ICMS_Base := mNFE_ICMS_Base + Query_itens.FieldByName
              ('P2ICMS_BASE').AsFloat;
              mNFE_ICMS_Valor := mNFE_ICMS_Valor + Query_itens.FieldByName
              ('P2ICMS_VALOR').AsFloat;
              mNFE_ICMSST_Base := mNFE_ICMSST_Base + Query_itens.FieldByName
              ('P2ST_BASE').AsFloat;
              mNFE_ICMSST_Valor := mNFE_ICMSST_Valor + Query_itens.FieldByName
              ('P2ST_ICMS').AsFloat;

              end
            else if (Query_itens.FieldByName('P2ICMS_CST').AsString = '70') then
               begin
               PXMLNFCE.Add(fGerarTag70(Query_itens.FieldByName('pdfis_origem')
                 .AsString, Query_itens.FieldByName('P2ICMS_CST').AsString, '0'
                 // modbc
                 , Query_itens.FieldByName('P2ICMS_PRED').AsFloat,
                 Query_itens.FieldByName('p2ICMS_BASE').AsFloat,
                 Query_itens.FieldByName('P2ICMS_PERC').AsFloat,
                 Query_itens.FieldByName('P2ICMS_VALOR').AsFloat,
                 Query_itens.FieldByName('p2st_modbc').AsString,
                 Query_itens.FieldByName('P2ST_IVA').AsFloat,
                 Query_itens.FieldByName('P2ST_PREDUT').AsFloat,
                 Query_itens.FieldByName('P2ST_BASE').AsFloat,
                 Query_itens.FieldByName('P2ST_ICMSDEB').AsFloat,
                 Query_itens.FieldByName('P2ST_ICMS').AsFloat));
               mNFE_ICMS_Base := mNFE_ICMS_Base + Query_itens.FieldByName
                 ('P2ICMS_BASE').AsFloat;
               mNFE_ICMS_Valor := mNFE_ICMS_Valor + Query_itens.FieldByName
                 ('P2ICMS_VALOR').AsFloat;
               mNFE_ICMSST_Base := mNFE_ICMSST_Base + Query_itens.FieldByName
                 ('P2ST_BASE').AsFloat;
               mNFE_ICMSST_Valor := mNFE_ICMSST_Valor + Query_itens.FieldByName
                 ('P2ST_ICMS').AsFloat;
               end;
            PXMLNFCE.Add('</ICMS>');
            if Query_itens.FieldByName('P2IPI_VALOR').AsFloat > 0 then
               begin
               PXMLNFCE.Add('<IPI>');
               // PXMLNFCE.Add(fGeraXMLString(0,'clEnq',DM2.Qr_CorclEnq.Value));
               // PXMLNFCE.Add(fGeraXMLString(0,'CNPJProd',DM2.Qr_CorCNPJProd.Value));
               // PXMLNFCE.Add(fGeraXMLString(0,'cSelo',DM2.Qr_CorcSelo.Value));
               // PXMLNFCE.Add(fGeraXMLString(0,'qSelo',DM2.Qr_CorqSelo.AsString));
               PXMLNFCE.Add(fGeraXMLString(0, 'cEnq', '999'));
               // PXMLNFCE.Add(fGeraXMLString(0,'cEnq',DM2.Qr_CorcEnq.Value));

               if (Query_itens.FieldByName('P2IPI_CST').AsString = '00') or
                 (Query_itens.FieldByName('P2IPI_CST').AsString = '49') or
                 (Query_itens.FieldByName('P2IPI_CST').AsString = '50') or
                 (Query_itens.FieldByName('P2IPI_CST').AsString = '99') then
                  begin
                  PXMLNFCE.Add(fGerarIPI00495099(Query_itens.FieldByName('P2IPI_CST')
                   .AsString, Query_itens.FieldByName('P2IPI_VBC').AsFloat,
                   Query_itens.FieldByName('P2IPI_PERC').AsFloat, 0 // qUnid
                   , 0 // pvUnid
                   , Query_itens.FieldByName('P2IPI_VALOR').AsFloat));
                  mNFE_TotIPI := mNFE_TotIPI + Query_itens.FieldByName
                   ('P2IPI_VALOR').AsFloat;
                  end
               else if (Query_itens.FieldByName('P2IPI_CST').AsString = '01') or
                 (Query_itens.FieldByName('P2IPI_CST').AsString = '02') or
                 (Query_itens.FieldByName('P2IPI_CST').AsString = '03') or
                 (Query_itens.FieldByName('P2IPI_CST').AsString = '04') or
                 (Query_itens.FieldByName('P2IPI_CST').AsString = '05') or
                 (Query_itens.FieldByName('P2IPI_CST').AsString = '51') or
                 (Query_itens.FieldByName('P2IPI_CST').AsString = '52') or
                 (Query_itens.FieldByName('P2IPI_CST').AsString = '53') or
                 (Query_itens.FieldByName('P2IPI_CST').AsString = '54') or
                 (Query_itens.FieldByName('P2IPI_CST').AsString = '55') then
                 begin
                 PXMLNFCE.Add(fGerarIPINT(Query_itens.FieldByName('P2IPI_CST')
                   .AsString));
                 end;
              PXMLNFCE.Add('</IPI>');
              end;
            PXMLNFCE.Add('<PIS>');
            if (Query_itens.FieldByName('P2PIS_CST').AsString = '01') or
               (Query_itens.FieldByName('P2PIS_CST').AsString = '02') then
               begin
               PXMLNFCE.Add(fGerarPISAliq(Query_itens.FieldByName('P2PIS_CST')
                 .AsString, Query_itens.FieldByName('P2PIS_VBC').AsFloat,
                 Query_itens.FieldByName('P2PIS_PERC').AsFloat,
                 Query_itens.FieldByName('P2PIS_VALOR').AsFloat));
               mNFE_TotPis := mNFE_TotPis + Query_itens.FieldByName
                 ('P2PIS_VALOR').AsFloat;
               end
            else if (Query_itens.FieldByName('P2PIS_CST').AsString = '04') or
               (Query_itens.FieldByName('P2PIS_CST').AsString = '05') or
               (Query_itens.FieldByName('P2PIS_CST').AsString = '06') or
               (Query_itens.FieldByName('P2PIS_CST').AsString = '07') or
               (Query_itens.FieldByName('P2PIS_CST').AsString = '08') or
               (Query_itens.FieldByName('P2PIS_CST').AsString = '09') then
               PXMLNFCE.Add(fGerarPISnt(Query_itens.FieldByName('P2PIS_CST')
                 .AsString))
           else
               PXMLNFCE.Add(fGerarPISOutr(Query_itens.FieldByName('P2PIS_CST')
                 .AsString, 0 // VBC
                 , 0 // pPis
                 , 0)); // )

             PXMLNFCE.Add('</PIS>');

           PXMLNFCE.Add('<COFINS>');

           if (Query_itens.FieldByName('P2COFINS_CST').AsString = '01') or
             (Query_itens.FieldByName('P2COFINS_CST').AsString = '02') then
             begin
             PXMLNFCE.Add(fGerarCOFINSAliq(Query_itens.FieldByName('P2COFINS_CST')
               .AsString, Query_itens.FieldByName('P2COFINS_VBC').AsFloat,
               Query_itens.FieldByName('P2COFINS_PERC').AsFloat,
               Query_itens.FieldByName('P2COFINS_VALOR').AsFloat));
             mNFE_TotCofins := mNFE_TotCofins + Query_itens.FieldByName
               ('P2COFINS_VALOR').AsFloat;
             end
           else if (Query_itens.FieldByName('P2COFINS_CST').AsString = '04') or
             (Query_itens.FieldByName('P2COFINS_CST').AsString = '05') or
             (Query_itens.FieldByName('P2COFINS_CST').AsString = '06') or
             (Query_itens.FieldByName('P2COFINS_CST').AsString = '07') or
             (Query_itens.FieldByName('P2COFINS_CST').AsString = '08') or
             (Query_itens.FieldByName('P2COFINS_CST').AsString = '09') then
             PXMLNFCE.Add(fGerarCOFINSnt(Query_itens.FieldByName('P2COFINS_CST')
               .AsString))
           else
             PXMLNFCE.Add(fGerarCOFINSOutr(Query_itens.FieldByName('P2COFINS_CST')
               .AsString, 0 // VBC
               , 0 // pCOFINS
               , 0)); // )
           PXMLNFCE.Add('</COFINS>');

           PXMLNFCE.Add(fGerarTagICMSUFDEST(Query_itens.FieldByName('p2_ec87_vbcufdest').AsFloat
                              ,Query_itens.FieldByName('p2_ec87_cpufdest').AsFloat
                              ,Query_itens.FieldByName('p2_ec87_vicmsufdest').AsFloat
                              ,Query_itens.FieldByName('p2_ec87_icmsinter').AsFloat
                              ,Query_itens.FieldByName('p2_ec87_icmsinterpart').AsFloat
                              ,Query_itens.FieldByName('p2_ec87_vfcpudest').AsFloat
                              ,Query_itens.FieldByName('p2_ec87_vicmsufdest').AsFloat
                              ,Query_itens.FieldByName('p2_ec87_vicmsufremet').AsFloat));


          PXMLNFCE.Add('</imposto>');
          if trim(Query_itens.FieldByName('P2DESC_COMP').AsString) <> '' then
            PXMLNFCE.Add(fGeraXMLString(0, 'infAdProd',
              trim(Query_itens.FieldByName('P2DESC_COMP').AsString)));
          PXMLNFCE.Add('</det>');
          Query_itens.Next;
          end;
       end;
    PXMLNFCE.Add('<total>');
    PXMLNFCE.Add('<ICMSTot>');
    PXMLNFCE.Add(fGeraXMLReal(2, 'vBC', mNFE_ICMS_Base));
    PXMLNFCE.Add(fGeraXMLReal(2, 'vICMS', mNFE_ICMS_Valor));
    if valint(Query_Ped01.FieldByName('p1nfce_VERSAOXML').AsString)>=310 then
       PXMLNFCE.Add(fGeraXMLReal(2,'vICMSDeson',0));

    if valint(Query_Ped01.FieldByName('p1nfce_VERSAOXML').AsString)>310 then
       begin
       if mTot_vFCPUFDest>0 then
          PXMLNFCE.Add(fGeraXMLReal(2,'vFCPUFDest',0));
       if mTot_vICMSUFDest>0 then
          PXMLNFCE.Add(fGeraXMLReal(2,'vICMSUFDest',0));
       if mTot_vICMSUFRemet >0 then
          PXMLNFCE.Add(fGeraXMLReal(2,'vICMSUFRemet',0));
//       if mTot_vFCPUFDest >0 then
       PXMLNFCE.Add(fGeraXMLReal(2,'vFCP',0));
       end;

    if mNFE_ICMSST_Base <= 0 then
       PXMLNFCE.Add(fGeraXMLReal(2, 'vBCST', 0))
    else
       PXMLNFCE.Add(fGeraXMLReal(2, 'vBCST', mNFE_ICMSST_Base));
    if mNFE_ICMSST_Valor <= 0 then
       PXMLNFCE.Add(fGeraXMLReal(2, 'vST', 0))
    else
      PXMLNFCE.Add(fGeraXMLReal(2, 'vST', mNFE_ICMSST_Valor));

    if valint(Query_Ped01.FieldByName('p1nfce_VERSAOXML').AsString)>310 then
       begin

       PXMLNFCE.Add(fGeraXMLReal(2,'vFCPST',mTot_vFCPST));
       PXMLNFCE.Add(fGeraXMLReal(2,'vFCPSTRet',mTot_vFCPSTRet));


       end;

    PXMLNFCE.Add(fGeraXMLReal(2, 'vProd', mNFE_TotPro));

    PXMLNFCE.Add(fGeraXMLReal(2, 'vFrete', mNFE_TotFrete));
    PXMLNFCE.Add(fGeraXMLReal(2, 'vSeg', mNFE_TotSeg));
    PXMLNFCE.Add(fGeraXMLReal(2, 'vDesc', mNFE_TotDes));
    PXMLNFCE.Add(fGeraXMLReal(0, 'vII', mNFE_TotII));
    PXMLNFCE.Add(fGeraXMLReal(2, 'vIPI', mNFE_TotIPI));

    if valint(Query_Ped01.FieldByName('p1nfce_VERSAOXML').AsString)>310 then
       PXMLNFCE.Add(fGeraXMLReal(2, 'vIPIDevol', 0));




    PXMLNFCE.Add(fGeraXMLReal(2, 'vPIS', mNFE_TotPis));
    PXMLNFCE.Add(fGeraXMLReal(2, 'vCOFINS', mNFE_TotCofins));

    PXMLNFCE.Add(fGeraXMLReal(2, 'vOutro', mNFE_TotOutDesp));


    mNFE_TotLiq := (mNFE_TotPro + mNFE_ICMSST_Valor +
      mNFE_TotFrete + mNFE_TotOutDesp + mNFE_TotSeg + mNFE_TotII + mNFE_TotIPI)- mNFE_TotDes;

    PXMLNFCE.Add(fGeraXMLReal(2, 'vNF', mNFE_TotLiq));

    if valint(Query_Ped01.FieldByName('p1nfce_MODELO').AsString)=65 then
       PXMLNFCE.Add(fGeraXMLReal(2,'vTotTrib',mvTotTrib));

    PXMLNFCE.Add('</ICMSTot>');
    PXMLNFCE.Add('</total>');

    // pulado os itens 348 a 355 pis/cofins/csll/irrf
    PXMLNFCE.Add('<transp>');

    if valint(Query_Ped01.FieldByName('p1nfce_MODELO').AsString)=65 then
       PXMLNFCE.Add(fGeraXMLReal(0,'modFrete',9))
    else
       begin
       PXMLNFCE.Add(fGeraXMLReal(0, 'modFrete',
       Query_Ped01.FieldByName('p1ent_frete_tipo').AsInteger));
       PXMLNFCE.Add('<transporta>');
       if Length(Query_Ped01.FieldByName('CNPJ_TRA').AsString) > 11 then
          PXMLNFCE.Add(fGeraXMLString(0, 'CNPJ',
           insere(fDeixanum2(Query_Ped01.FieldByName('CNPJ_TRA').AsString),
           '0', 14)))
       else if fSonumero(Query_Ped01.FieldByName('CPF_TRA').AsString) > 0 then
         PXMLNFCE.Add(fGeraXMLString(0, 'CPF',
         insere(fDeixanum2(Query_Ped01.FieldByName('CPF_TRA').AsString),
         '0', 11)));

       if Length(Query_Ped01.FieldByName('RAZAO_TRA').AsString) > 1 then
         PXMLNFCE.Add(fGeraXMLString(0, 'xNome',
           Query_Ped01.FieldByName('RAZAO_TRA').AsString));
       if Length(fDeixanum2(Query_Ped01.FieldByName('IE_TRA').AsString)) > 1 then
          PXMLNFCE.Add(fGeraXMLString(0, 'IE',
          fDeixanum2(Query_Ped01.FieldByName('IE_TRA').AsString)));
       mString_Temp := Query_Ped01.FieldByName('ENDER_TRA').AsString;
       if trim(Query_Ped01.FieldByName('CNUM_TRA').AsString) <> '' then
          mString_Temp := mString_Temp + ' No. ' + Query_Ped01.FieldByName
         ('CNUM_TRA').AsString;
       if trim(Query_Ped01.FieldByName('CCOMPL_TRA').AsString) <> '' then
          mString_Temp := mString_Temp + ' ' + Query_Ped01.FieldByName
          ('CCOMPL_TRA').AsString;

       if trim(mString_Temp) <> '' then
          PXMLNFCE.Add(fGeraXMLString(0, 'xEnder', mString_Temp));
       if Length(trim(Query_Ped01.FieldByName('CIDADE_TRA').AsString)) > 1 then
          PXMLNFCE.Add(fGeraXMLString(0, 'xMun',
          Query_Ped01.FieldByName('CIDADE_TRA').AsString));

       if Length(trim(Query_Ped01.FieldByName('UF_TRA').AsString)) > 1 then
         PXMLNFCE.Add(fGeraXMLString(0, 'UF', Query_Ped01.FieldByName('UF_TRA')
           .AsString));
       PXMLNFCE.Add('</transporta>');
       if ((Length(trim(Query_Ped01.FieldByName('p1ent_placav').AsString)) > 1) and
         (Length(trim(Query_Ped01.FieldByName('P1TRA_UFPF').AsString)) > 1)) then
         begin
         PXMLNFCE.Add('<veicTransp>');
         PXMLNFCE.Add(fGeraXMLString(0, 'placa',
           Query_Ped01.FieldByName('p1ent_placav').AsString));
         PXMLNFCE.Add(fGeraXMLString(0, 'UF',
           Query_Ped01.FieldByName('P1TRA_UFPF').AsString));
         PXMLNFCE.Add('</veicTransp>');
         end;
      if Query_Ped01.FieldByName('p1ent_qtdvol').AsFloat > 0 then
         begin
         PXMLNFCE.Add('<vol>');
         PXMLNFCE.Add(fGeraXMLReal(0, 'qVol',
          Query_Ped01.FieldByName('p1ent_qtdvol').Value));
         if Length(Query_Ped01.FieldByName('p1ent_especie').AsString) > 1 then
           PXMLNFCE.Add(fGeraXMLString(0, 'esp',
            Query_Ped01.FieldByName('p1ent_especie').Value));
         if (Query_Ped01.FieldByName('p1ent_pesoL').AsFloat > 0) and
           (Query_Ped01.FieldByName('p1ent_pesoB').AsFloat > 0) then
            begin
            PXMLNFCE.Add(fGeraXMLReal(3, 'pesoL',
            Query_Ped01.FieldByName('p1ent_pesoL').Value));
            PXMLNFCE.Add(fGeraXMLReal(3, 'pesoB',
            Query_Ped01.FieldByName('p1ent_pesoB').Value));
            end;
         PXMLNFCE.Add('</vol>');
         end;
       end;
    PXMLNFCE.Add('</transp>');


    // pulado os itens 366 a 372 pis/cofins/csll/irrf
    Query_Vcto.first;

    if valint(Query_Ped01.FieldByName('p1nfce_MODELO').AsString)=65 then
       begin
       if valint(Query_Ped01.FieldByName('p1nfce_VERSAOXML').AsString)>310 then
          PXMLNFCE.Add('<pag>');
       mValortroco:=0;

       while not Query_Vcto.Eof  do
          begin
          if (Query_Vcto.FieldByName('PFPVALOR').AsFloat -
                   Query_Vcto.FieldByName('PFPVALOR_SERVICO').AsFloat) <= 0 then
             begin
             query_vcto.next;
             continue;
             end;

          if valint(Query_Ped01.FieldByName('p1nfce_VERSAOXML').AsString)<=310 then
             PXMLNFCE.Add('<pag>')
          else
             PXMLNFCE.Add('<detPag>');
          PXMLNFCE.Add(fGeraXMLstring(0,'tPag',insere( Query_Vcto.FieldByName('forma_sefaz').AsString,'0',2)));
          PXMLNFCE.Add(fGeraXMLReal(2,'vPag',
            ((Query_Vcto.FieldByName('PFPVALOR').AsFloat+Query_Vcto.FieldByName('PFPVALOR_TROCO').AsFloat) - Query_Vcto.FieldByName('PFPVALOR_SERVICO').AsFloat)));
          mValorTroco:=mValorTroco+Query_Vcto.FieldByName('PFPVALOR_TROCO').AsFloat;


          if (fsonumero(Query_Vcto.FieldByName('PFPNSU_NUMERO_AUTORIZACAO').AsString)>0) and
             ( (Query_Vcto.FieldByName('forma_sefaz').AsInteger=fpag_sefaz_cartao_credito) or
               (Query_Vcto.FieldByName('forma_sefaz').AsInteger=fpag_sefaz_cartao_debito) ) then
             begin
             PXMLNFCE.Add('<card>');
             PXMLNFCE.Add(fGeraXMLReal(0,'tpIntegra',1));

             PXMLNFCE.Add(fGeraXMLstring(0,'CNPJ',insere( fdeixanum( Query_Vcto.FieldByName('calc_cnpj').AsString),'0',14) ));
             PXMLNFCE.Add(fGeraXMLstring(0,'tBand',Formatfloat('00',  Query_Vcto.FieldByName('bandeira_cartao_sefaz').AsInteger)));
             PXMLNFCE.Add(fGeraXMLstring(0,'cAut', Query_Vcto.FieldByName('PFPNSU_NUMERO_AUTORIZACAO').AsString));
             PXMLNFCE.Add('</card>');


    // 18414221823

             end;



          if valint(Query_Ped01.FieldByName('p1nfce_VERSAOXML').AsString)<=310 then
             PXMLNFCE.Add('</pag>')
          else
             begin

             PXMLNFCE.Add('</detPag>');
             end;
          Query_Vcto.Next;
          end;
       if valint(Query_Ped01.FieldByName('p1nfce_VERSAOXML').AsString)>310 then
          begin
          PXMLNFCE.Add(fGeraXMLReal(2,'vTroco',mValorTroco));

          PXMLNFCE.Add('</pag>');
          end

       end
    else
       begin
       PXMLNFCE.Add('<cobr>');
       PXMLNFCE.Add('<fat>');
       PXMLNFCE.Add(fGeraXMLString(0, 'nFat', FloattoStr(Query_Ped01.FieldByName('p1nfce_NUMERO').AsFloat)));
       PXMLNFCE.Add(fGeraXMLReal(2, 'vOrig', mNFE_TotLiq));
       // PXMLNFCE.Add(fGeraXMLReal(2,'vDesc',0));
       PXMLNFCE.Add(fGeraXMLReal(2, 'vLiq', mNFE_TotLiq));
       PXMLNFCE.Add('</fat>');
       if (mqtdvcto = 1) and (Query_Vcto.FieldByName('PFPDATA').AsDateTime = Query_Ped01.FieldByName('p1nfce_DATA').AsDateTime) then
          begin
          end
       else
          begin
          mQtdDup := 0;
          While not Query_Vcto.Eof do
             begin
             if (Query_Vcto.FieldByName('PFPVALOR').AsFloat -
                Query_Vcto.FieldByName('PFPVALOR_SERVICO').AsFloat) <= 0 then
                begin
                Query_Vcto.Next;
                Continue;
                end;
             PXMLNFCE.Add('<dup>');
             mQtdDup := mQtdDup + 1;
             PXMLNFCE.Add(fGeraXMLString(0, 'nDup', Query_Ped01.FieldByName('p1nfce_NUMERO').AsString + '-'
             + chr(64 + mQtdDup)));
             PXMLNFCE.Add(fGeraXMLdata('dVenc', Query_Vcto.FieldByName('PFPDATA').AsDateTime));
             PXMLNFCE.Add(fGeraXMLReal(2, 'vDup',
             (Query_Vcto.FieldByName('PFPVALOR').AsFloat - Query_Vcto.FieldByName
             ('PFPVALOR_SERVICO').AsFloat)));
             Query_Vcto.Next;
             PXMLNFCE.Add('</dup>');
             end;
          end;
       PXMLNFCE.Add('</cobr>');
       end;


    mObs_NF:=trim(Query_Ped01.FieldByName('p1obs_doc').AsString);

    if trim(mNfe_nfec_mensl01)<>'' then
       begin
       if trim(mObs_NF)<>'' then
          mObs_NF:=mObs_NF+' | ';
       mObs_NF:=mObs_NF+mNfe_nfec_mensl01;
       end;

    if trim(mNfe_nfec_mensl02)<>'' then
       begin
       if trim(mObs_NF)<>'' then
          mObs_NF:=mObs_NF+' | ';
       mObs_NF:=mObs_NF+mNfe_nfec_mensl02;
       end;

    if trim(mNfe_nfec_mensl03)<>'' then
       begin
       if trim(mObs_NF)<>'' then
          mObs_NF:=mObs_NF+' | ';
       mObs_NF:=mObs_NF+mNfe_nfec_mensl03;
       end;

    if trim(mNfe_nfec_mensl04)<>'' then
       begin
       if trim(mObs_NF)<>'' then
          mObs_NF:=mObs_NF+' | ';
       mObs_NF:=mObs_NF+mNfe_nfec_mensl04;
       end;


    if (mNfe_nfec_leitransparencia='S') and  (mvTottrib>0) then
       begin
       if trim(mObs_NF)<>'' then
          mObs_NF:=mObs_NF+' | ';
       mObs_NF:=mObs_NF+
       'Valor Aproximado dos Impostos R$ '
       +formatfloat(mCasas,  mvTottrib)
       +' Fonte IBPT.' ;
       end;

    if mNFE_ICMSSN_Valor>0 then
       begin
       if trim(mObs_NF)<>'' then
          mObs_NF:=mObs_NF+' | ';
       mObs_NF:=mObs_NF+
       'Empresa Optante do Simples Nacional'+' | '+'Permite Aproveitamento de Credito de Icms R$ '
       +formatfloat(mCasas,  mNFE_ICMSSN_Valor);
       end;




    if (mObs_NF<>'') then
       begin
       PXMLNFCE.Add('<infAdic>');
       PXMLNFCE.Add(fGeraXMLString(0, 'infCpl', mObs_NF));
       PXMLNFCE.Add('</infAdic>');
       end;
    if Query_Ped01.FieldByName('UF_CLI').AsString = 'EX' then
       begin
       PXMLNFCE.Add('<exporta>');
       PXMLNFCE.Add(fGeraXMLString(0, 'UFEmbarq',
         Query_Ped01.FieldByName('EXP_EMBARGUE_UF_CLI').AsString));
       PXMLNFCE.Add(fGeraXMLString(0, 'xLocEmbarq',
         Query_Ped01.FieldByName('EXP_EMBARGUE_LOCAL_CLI').AsString));
       PXMLNFCE.Add('</exporta>');
       end;

    PXMLNFCE.Add('</infNFe>');
    PXMLNFCE.Add('</NFe>');
   result := true;
except ON E: Exception do
   begin
   fAdicionarErros('999','erro 1590 ao gerar xml '+e.Message);
   result:=false;
   end;
   end;
pfechartudo;



end;

end;



function fRetornaCaseFormaPagamentoIgestaoSefaz(pNomeCampo,
  pNomeSaida: String): String;
var
  x_reg: integer;

begin
  result := 'case ';

  for x_reg := 0 to High(tipofp_igestao) do
  begin
    result := result + ' when ' + pNomeCampo + '=' + fBuscarValor_delpv(1,
      tipofp_igestao[x_reg]) + ' then ' + fBuscarValor_delpv(3,
      tipofp_igestao[x_reg]);
  end;
  result := result + ' else  99 end as ' + pNomeSaida;

end;


function fGerarChavedeAcesso(pDadosNFCEChvAcesso: TDadosNFCEChvAcesso): string;
var
mnova_chave_acesso: String;
mnova_chave_acesso_dig: String;
begin


mnova_chave_acesso:=copy(FormatFloat('0000000', pDadosNFCEChvAcesso.pCodLocIBGEEmitente), 1, 2);
mnova_chave_acesso := mnova_chave_acesso + FormatDatetime('YYMM',  pDadosNFCEChvAcesso.pDatanfce);
mnova_chave_acesso := mnova_chave_acesso +
insere(pDadosNFCEChvAcesso.pCNPJEmitente, '0', 14) + FormatFloat('00', pDadosNFCEChvAcesso.pModelo)
+ FormatFloat('000', pDadosNFCEChvAcesso.pSerie ) + insere(FormatFloat('0000', pDadosNFCEChvAcesso.pNumNFCE), '0', 9) +
FormatFloat('0',pDadosNFCEChvAcesso.pTpEmis) +
insere(pDadosNFCEChvAcesso.pCNF, '0', 8); // cDV

mnova_chave_acesso_Dig := fCalcDigNFEMod11(mnova_chave_acesso);
mnova_chave_acesso := mnova_chave_acesso + mnova_chave_acesso_Dig;
result:=mnova_chave_acesso;
end;


procedure fAtualizarCadp01(pDadosNFCEChvAcesso: TDadosNFCEChvAcesso);
var
query_ped01: TQuery;
begin
query_ped01:=TQuery.create(nil);
query_ped01.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_ped01.SQL.add('Update cadp01 set '
                    +' P1NFCE_TPEMIS = :P1NFCE_TPEMIS '
                    +',P1NFCE_TPIMP = :P1NFCE_TPIMP '
                    +',P1NFCE_TPAMB = :P1NFCE_TPAMB '
                    +',P1NFCE_VERSAOXML = :P1NFCE_VERSAOXML '
                    +',P1NFCE_CNF = :P1NFCE_CNF '
                    +',P1NFCE_DATA = :P1NFCE_DATA '
                    +',P1DATDOC = :P1DATDOC '
                    +',P1NFCE_NUMERO = :P1NFCE_NUMERO '
                    +',P1NFCE_SERIE = :P1NFCE_SERIE '
                    +',P1NFCE_MODELO = :P1NFCE_MODELO '
                    +',P1NFCE_CHV_ACESSO = :P1NFCE_CHV_ACESSO ');
if trim(pDadosNFCEChvAcesso.pContigencia_xJust)<>'' then
   begin
   Query_ped01.SQL.add(',P1NFCE_CONTIGENCIA_XJUST = :P1NFCE_CONTIGENCIA_XJUST ');
   Query_ped01.SQL.add(',P1NFCE_CONTIGENCIA_DH = :P1NFCE_CONTIGENCIA_DH ');
   query_ped01.ParamByName('P1NFCE_CONTIGENCIA_XJUST').AsString:=pDadosNFCEChvAcesso.pContigencia_xJust;
   query_ped01.ParamByName('P1NFCE_CONTIGENCIA_DH').AsDateTime :=pDadosNFCEChvAcesso.pContigencia_DH;
   end;
if pDadosNFCEChvAcesso.p1Cupom>-1 then
   Query_ped01.SQL.add(',P1CUPOM = '+inttostr(pDadosNFCEChvAcesso.p1Cupom));
if pDadosNFCEChvAcesso.pStatusPed>-1 then
   Query_ped01.SQL.add(',P1STATUS = '+inttostr(pDadosNFCEChvAcesso.pStatusPed));
if pDadosNFCEChvAcesso.P1codcai>-1 then
   Query_ped01.SQL.add(',P1CX_CODCAI = '+inttostr(pDadosNFCEChvAcesso.P1codcai));

Query_ped01.SQL.add(',P1EMIDOC = 1 ');

query_ped01.SQL.add(' where P1CODEMP=:CODEMP '
                    +' and P1CHAVE=:CHAVE '
                    +' and P1LOTSEQ=:LOTSEQ');
query_ped01.ParamByName('P1NFCE_TPEMIS').AsInteger := pDadosNFCEChvAcesso.pTpEmis;
query_ped01.ParamByName('P1NFCE_TPIMP').AsInteger  := 4;
query_ped01.ParamByName('P1NFCE_TPAMB').AsInteger  := pDadosNFCEChvAcesso.pTpAmb;
query_ped01.ParamByName('P1NFCE_VERSAOXML').AsString  := DM4.Tb_ParGer02PG2VERSAOXML.AsString;
query_ped01.ParamByName('P1NFCE_CNF').AsString        := pDadosNFCEChvAcesso.pCNF;
query_ped01.ParamByName('P1NFCE_DATA').AsDateTime     := pDadosNFCEChvAcesso.pDatanfce;
query_ped01.ParamByName('P1DATDOC').AsDateTime        := pDadosNFCEChvAcesso.pDatanfce;
query_ped01.ParamByName('P1NFCE_NUMERO').AsInteger    := pDadosNFCEChvAcesso.pNumNFCE;
query_ped01.ParamByName('P1NFCE_SERIE').AsString      := inttostr(pDadosNFCEChvAcesso.pSerie);
query_ped01.ParamByName('P1NFCE_MODELO').AsInteger    := pDadosNFCEChvAcesso.pModelo;
query_ped01.ParamByName('P1NFCE_CHV_ACESSO').AsString := pDadosNFCEChvAcesso.pchv_nfce;
query_ped01.ParamByName('CODEMP').AsInteger           := pDadosNFCEChvAcesso.pCodEmp;
query_ped01.ParamByName('CHAVE').AsInteger            := pDadosNFCEChvAcesso.pChave;
query_ped01.ParamByName('LOTSEQ').AsInteger           := pDadosNFCEChvAcesso.pChaveAno;
try
   query_ped01.ExecSQL;
   fdm1StartCommit;
except on e : exception do
  ex_erroSql_Novo(query_ped01,35,'func Erro:'+e.Message ,'CADEST');
  end;
query_ped01.close;
freeandnil(query_ped01);

end;



function fBuscareSetarDadosNFCE(pDadosNFCEChvAcesso: TDadosNFCEChvAcesso): TDadosNFCEChvAcesso;



    function fBuscarProximoNFCE(pSerie, ptpAmb: Integer): integer;
    var
    mchavepad: string;
    begin
    mChavePad:=formatfloat('000', pSerie);
    mChavePad:=mChavePad+formatfloat('0', ptpAmb);
    result:=fBuscareTestarID('nfce_'+mchavepad);
    end;



begin
pDadosNFCEChvAcesso.pModelo      :=65;
if pDadosNFCEChvAcesso.pNumNFCE=0 then
   pDadosNFCEChvAcesso.pNumNFCE     :=fBuscarProximoNFCE(pDadosNFCEChvAcesso.pSerie,pDadosNFCEChvAcesso.pTpAmb);
   
pDadosNFCEChvAcesso.pCNF         :=FormatFloat('000000',pDadosNFCEChvAcesso.pChave);
pDadosNFCEChvAcesso.pDatanfce    :=now();

pDadosNFCEChvAcesso.pCNF:=copy(pDadosNFCEChvAcesso.pCNF, length(pDadosNFCEChvAcesso.pCNF)-2,3);
mcinst3:=formatfloat('0000000', pDadosNFCEChvAcesso.pNumNFCE);
pDadosNFCEChvAcesso.pCNF:=pDadosNFCEChvAcesso.pCNF +copy(mcinst3,length(pDadosNFCEChvAcesso.pCNF)-4,5);


pDadosNFCEChvAcesso.pCNPJEmitente       :=insere(DM1.Tb_EmpCGC.AsString,'0',14);
pDadosNFCEChvAcesso.pCodLocIBGEEmitente :=DM1.Tb_Empcodloc_ibge.AsInteger;
pDadosNFCEChvAcesso.pchv_nfce   :=fGerarChavedeAcesso(pDadosNFCEChvAcesso);
pDadosNFCEChvAcesso.pContigencia_xJust   :='';




fAtualizarCadp01(pDadosNFCEChvAcesso);

result:=pDadosNFCEChvAcesso;
end;



function fEnviarXMLNFCE(pDadosNFCEChvAcesso: tDadosNFCEChvAcesso): TDadosNFCEChvAcesso;
var
form_nfe_aguarde: TFrm_Nfe_Aguarde;

mXmlString: TStrings;
mmensagem: string;
peletronica: boolean;
x_tent: integer;

   function fVerificaNovoNumero: boolean;
   var
   mNovo_Numero: Integer;
   mNovo_serie : Integer;
   mNovo_Chv_Acesso : String;
   mNovo_CNF: string;
   mNFCE:TStringList;

   mMensagem: String;
   begin

   Application.CreateForm(TFrm_NFCE_Duplicada,Frm_NFCE_Duplicada);
   Frm_NFCE_Duplicada.Memo_motivo.Lines.Clear;
   Frm_NFCE_Duplicada.Memo_motivo.Lines.Add('Status '+inttostr(form_nfe_aguarde.mNFEretorno.msaida_cstat));
   Frm_NFCE_Duplicada.Memo_motivo.Lines.Add('Motivo '+form_nfe_aguarde.mNFEretorno.msaida_cstat_motivo);
   Frm_NFCE_Duplicada.edt_ch_Acesso.Text:=pDadosNFCEChvAcesso.pchv_nfce;
   Frm_NFCE_Duplicada.edt_numnf_ant.Text:=inttostr(pDadosNFCEChvAcesso.pNumNFCE);
   Frm_NFCE_Duplicada.edt_numnf_novo.Text:=inttostr(pDadosNFCEChvAcesso.pNumNFCE+1);;
   Frm_NFCE_Duplicada.edt_cnf_ant.Text  :=pDadosNFCEChvAcesso.pCNF;
   Frm_NFCE_Duplicada.edt_serie_ant.Text:=inttostr(pDadosNFCEChvAcesso.pSerie);

   Frm_NFCE_Duplicada.ShowModal;
   if Frm_NFCE_Duplicada.mAtualizarNFE=true then
      begin
      mNovo_Numero:=valint(Frm_NFCE_Duplicada.edt_numnf_novo.Text);
      mNovo_serie :=Frm_NFCE_Duplicada.edt_serie_nova.Value;
      if Length(FormatFloat('0000', pDadosNFCEChvAcesso.pChave)) > 4 then
          mNovo_CNF := copy(FormatFloat('0000', pDadosNFCEChvAcesso.pChave), 1, 4)
      else
          mNovo_CNF := FormatFloat('0000', pDadosNFCEChvAcesso.pChave);
      if Length(FormatFloat('0000', mNovo_Numero)) > 4 then
         mNovo_CNF := mNovo_CNF + copy(FormatFloat('0000', mNovo_Numero), 1, 4)
      else
          mNovo_CNF := mNovo_CNF + FormatFloat('0000', mNovo_Numero);
      pDadosNFCEChvAcesso.pSerie    := mNovo_serie;
      pDadosNFCEChvAcesso.pNumNFCE  := mNovo_Numero;
      pDadosNFCEChvAcesso.pCNF      := mNovo_CNF;
      pDadosNFCEChvAcesso.pchv_nfce := fGerarChavedeAcesso(pDadosNFCEChvAcesso);
      pDadosNFCEChvAcesso.pContigencia_xJust   :='';

      fSetarNovoNumeroNFce(formatfloat('000',pDadosNFCEChvAcesso.pSerie)+Inttostr(pDadosNFCEChvAcesso.pTpAmb),mNovo_Numero+1) ;

      fAtualizarCadp01(pDadosNFCEChvAcesso);






      mNFCE:=TStringList.create;
      fGerarXMLNFCE(mDadosPedido.pChave,mDadosPedido.pLotSeq,mDadosPedido.pCodEmp,mNFCE,mMensagem);
      pDadosNFCEChvAcesso.pXml:=mNFCE.Text;
      FreeAndNil(mNFCE);
      result:=true;
      end
   else
      result:=false;
   end;


// inicio
   function fMudarParaContigencia: boolean;
   var
   mNFCE:TStringList;

   mMensagem: String;
   begin
   pDadosNFCEChvAcesso.pServico    := NFCe_Autorizacao_assinar;
   pDadosNFCEChvAcesso.pTpEmis     := 9;
   pDadosNFCEChvAcesso.pchv_nfce := fGerarChavedeAcesso(pDadosNFCEChvAcesso);
   pDadosNFCEChvAcesso.pContigencia_xJust   :='INTERNET FORA DO AR NO MOMENTO';
   pDadosNFCEChvAcesso.pContigencia_DH      :=NOW()-1;

   fAtualizarCadp01(pDadosNFCEChvAcesso);
   mNFCE:=TStringList.create;
   fGerarXMLNFCE(mDadosPedido.pChave,mDadosPedido.pLotSeq,mDadosPedido.pCodEmp,mNFCE,mMensagem);
   pDadosNFCEChvAcesso.pXml:=mNFCE.Text;

   FreeAndNil(mNFCE);
   result:=true;
   end;


// termino





begin

if not fTestarServidor_NFE(codemp,'SERIE1',mmensagem, peletronica) then
   begin
   exit;
   end;
mXmlString:= TStringList.Create;
mXmlString.Add(pDadosNFCEChvAcesso.pXml);

Application.createform(TFrm_Nfe_Aguarde, Form_Nfe_Aguarde);

for x_tent:=1 to 20 do
   begin
   form_nfe_aguarde.mNFEretorno.mentra_operacao:=pDadosNFCEChvAcesso.pServico;
   form_nfe_aguarde.mNFEretorno.mentra_evento   :=pDadosNFCEChvAcesso.pServico;
   form_nfe_aguarde.mNFEretorno.mentra_chave   :=pDadosNFCEChvAcesso.pChave;
   form_nfe_aguarde.mNFEretorno.mentra_codemp  :=pDadosNFCEChvAcesso.pCodEmp;
   form_nfe_aguarde.mNFEretorno.mentra_lotseq  :=pDadosNFCEChvAcesso.pChaveAno;
   form_nfe_aguarde.mNFEretorno.mentra_numnf   :=pDadosNFCEChvAcesso.pNumNFCE;
   form_nfe_aguarde.mNFEretorno.mentra_serie   :=InttoStr(pDadosNFCEChvAcesso.pSerie);
   form_nfe_aguarde.mNFEretorno.mentra_modelo  :=inttostr(pDadosNFCEChvAcesso.pmodelo);

//   form_nfe_aguarde.mNFEretorno.mentra_operacao:=Nfe_Autorizacao;
//   form_nfe_aguarde.mNFEretorno.mentra_evento  :=Nfe_Autorizacao;

   form_nfe_aguarde.mNFEretorno.mentra_cnpj_emitente    :=DM1.Tb_Empcnpj_masc.AsString;
   form_nfe_aguarde.mNFEretorno.mentra_chave_acesso  :=pDadosNFCEChvAcesso.pchv_nfce;
   form_nfe_aguarde.mNFEretorno.mentra_xml           :=pDadosNFCEChvAcesso.pXml;
   form_nfe_aguarde.Timer_processar.Enabled := true;

   form_nfe_aguarde.Timer_processar.Enabled := true;
   Form_Nfe_Aguarde.ShowModal;
   if (form_nfe_aguarde.mNFEretorno.msaida_cstat=0)
       and (pDadosNFCEChvAcesso.pServico<>NFCE_autorizacao_assinar) then    // ENTRAR EM MODO CONTIGENCIA
      begin
      if (pDadosNFCEChvAcesso.pTpEmis=9) then    // ENTRAR EM MODO CONTIGENCIA
         break
      else
         begin
         fMudarParaContigencia;
         continue;
         end;
      end
   else if (form_nfe_aguarde.mNFEretorno.msaida_cstat=539) then
      begin
      if not fVerificaNovoNumero then
         break
      else
         continue;
      end
   else if  ((form_nfe_aguarde.mNFEretorno.msaida_cstat=0) or (form_nfe_aguarde.mNFEretorno.msaida_num_protocolo='') )
        and (pDadosNFCEChvAcesso.pServico<>NFCE_autorizacao_assinar) then
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
      break;
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


      mnfe_stat_Prot_Desc   :=form_nfe_aguarde.mNFEretorno.msaida_xml_Resposta;
      mnfe_stat_Prot_Desc   :=form_nfe_aguarde.mNFEretorno.msaida_xml_protocolado;

      mnfe_stat_Prot_Desc   :=form_nfe_aguarde.mNFEretorno.msaida_xml_protocolado;

      pDadosNFCEChvAcesso.pRetObs:=form_nfe_aguarde.mNFEretorno.msaida_ret_observacao;
      pDadosNFCEChvAcesso.pcStat :=form_nfe_aguarde.mNFEretorno.msaida_cstat;
      pDadosNFCEChvAcesso.pStatMotivo :=form_nfe_aguarde.mNFEretorno.msaida_cstat_motivo;
      pDadosNFCEChvAcesso.pXml_Cliente :=form_nfe_aguarde.mNFEretorno.msaida_xml_protocolado;
      pDadosNFCEChvAcesso.pDatHorEvento :=form_nfe_aguarde.mNFEretorno.msaida_dathorEve;
      pDadosNFCEChvAcesso.pNumProt :=form_nfe_aguarde.mNFEretorno.msaida_num_protocolo;
      pDadosNFCEChvAcesso.pNumRecibo :=form_nfe_aguarde.mNFEretorno.msaida_Num_Recibo;
      pDadosNFCEChvAcesso.seqeve :=form_nfe_aguarde.mNFEretorno.mentra_Evento;




{      if trim(form_nfe_aguarde.mNFEretorno.msaida_num_protocolo)='' then
         result:=false
      else
         result:=true;
}
      break;
      end;
   end;
if (pDadosNFCEChvAcesso.pTpEmis=9) then
   begin
   if ( pDadosNFCEChvAcesso.pServico=NFCE_autorizacao_enviar) then
      begin
      if (fsonumero(form_nfe_aguarde.mNFEretorno.msaida_num_protocolo)>0) then
           fGravarXML_NFE(pDadosNFCEChvAcesso);
      end
   else
       fGravarXML_NFE(pDadosNFCEChvAcesso);

   end
else
   fGravarXML_NFE(pDadosNFCEChvAcesso);


freeandnil(Frm_Sintegra_Advert);
freeandnil(form_nfe_aguarde);
result:=pDadosNFCEChvAcesso;
end;






function fTef_IdentificadorReg_impres(pLinha: AnsiString; out pIdent_Item: Integer;out pIdent_SubItem: Integer; out pIdent_Conteudo: AnsiString): boolean;
var
posigual,x: Integer;

begin
pIdent_Item   :=0;
pIdent_SubItem:=0;
pIdent_Conteudo:='';

result:=True;
if pLinha[4]<>'-' then
   begin
   result:=false;
   exit;
   end;

pIdent_Item   :=ValInt(copy(plinha,01,03));
pIdent_SubItem:=ValInt(copy(plinha,05,03));
posigual:=0;
for x:=1 to length(pLinha) do
   begin
   if plinha[x]='=' then
      begin
      posigual:=x;
      break;
      end;
   end;
posigual:=posigual+2;
pIdent_Conteudo:=copy(pLinha,posigual,length(plinha)-(posigual-1));
if pIdent_Item=029 then
   begin
   pIdent_Conteudo:=fRetAspas(pIdent_Conteudo);
   pIdent_Conteudo:=pIdent_Conteudo;
   end;
end;






procedure pSetarFontesECF(pNome_Impressora: String; out pFonte_ecf: TFontesECF);
begin
pNome_Impressora:=lowercase(pnome_impressora);

if pos('daruma', pNome_Impressora) > 0 then
   begin
   pfonte_ecf.Negrito_ativa := #27 + #69 + #1;
   pfonte_ecf.Negrito_desativa := #27 + #69 + #0;
   pfonte_ecf.condensado_ativa := #27 + #77 + #1;
   pfonte_ecf.condensado_desativa  := #27 + #77 + #0;
   pfonte_ecf.CortarPapel:=  #27 + 'm';
   pfonte_ecf.texto_centralizado:= #27 + #97 +#49;
   pfonte_ecf.texto_esquerda:= #27 + #97 +#48;
   pfonte_ecf.texto_direita:= #27 + #97 +#50;
   pfonte_ecf.abrirgaveta:= #27 + #112 +#0 +#50 +#200;
   pfonte_ecf.abrirgaveta:= #27 + 'p';
   pfonte_ecf.mqtdcarlin := 64;


   end
else if pos('epson', pNome_Impressora) > 0 then
   begin
   pfonte_ecf.Negrito_ativa := #27 + #69 + #1;
   pfonte_ecf.Negrito_desativa := #27 + #69 + #0;
   pfonte_ecf.condensado_ativa := #27 + #77 + #1;
   pfonte_ecf.condensado_desativa  := #27 + #77 + #0;
   pfonte_ecf.CortarPapel:= #29 + #86 + #1 + #0;
   pfonte_ecf.texto_centralizado:= #27 + #97 +#49;
   pfonte_ecf.texto_esquerda:= #27 + #97 +#48;
   pfonte_ecf.texto_direita:= #27 + #97 +#50;
   pfonte_ecf.abrirgaveta:= #27 + #112 +#0 +#50 +#200;
   pfonte_ecf.abrirgaveta:= chr($1B) + 'p' + chr($0) + chr($25) + chr($250);
   pfonte_ecf.abrirgaveta:=#27 + #112 + #000 + #010 + #100; //epson???
   pfonte_ecf.mqtdcarlin := 64;


   end
else if pos('elgin', pNome_Impressora) > 0 then
   begin
   pfonte_ecf.Negrito_ativa := #27 + #69 + #1;
   pfonte_ecf.Negrito_desativa := #27 + #69 + #0;
   pfonte_ecf.condensado_ativa := #27 + #77 + #1;
   pfonte_ecf.condensado_desativa  := #27 + #77 + #0;
   pfonte_ecf.CortarPapel:= #29 + #86 + #1 + #0;
   pfonte_ecf.texto_centralizado:= #27 + #97 +#49;
   pfonte_ecf.texto_esquerda:= #27 + #97 +#48;
   pfonte_ecf.texto_direita:= #27 + #97 +#50;
   pfonte_ecf.abrirgaveta:= #27 + #112 +#0 +#50 +#200;
   pfonte_ecf.abrirgaveta:= #27 + #112 +#0 +#49 +#0;
   pfonte_ecf.mqtdcarlin := 64;
   end
else if pos('bematech', pNome_Impressora) > 0 then
   begin
{
   pfonte_ecf.Negrito_ativa := #27 + #52;
   pfonte_ecf.Negrito_desativa := #27 + #53;
   pfonte_ecf.condensado_ativa := #15;
   pfonte_ecf.condensado_desativa  := #18 + #10;
   pfonte_ecf.texto_centralizado:= #27 + #0 +#49;
   pfonte_ecf.texto_esquerda:= #27 + #0 +#48;
   pfonte_ecf.texto_direita:= #27 + #0 +#50;
}
   pfonte_ecf.Negrito_ativa := #27 + #69 + #1;
   pfonte_ecf.Negrito_desativa := #27 + #69 + #0;
   pfonte_ecf.condensado_ativa := #27 + #77 + #1;
   pfonte_ecf.condensado_desativa  := #27 + #77 + #0;
   pfonte_ecf.CortarPapel:= #27 + #119; // + #1; // GUILHOTINA
   pfonte_ecf.texto_centralizado:= #27 + #97 +#49;
   pfonte_ecf.texto_esquerda:= #27 + #97 +#48;
   pfonte_ecf.texto_direita:= #27 + #97 +#50;
   pfonte_ecf.abrirgaveta:= #27 + #112 +#0 +#50 +#200;
   pfonte_ecf.abrirgaveta:= #29 + #249 + #32 + #0 + #27 + #116 + #8 + #27 + #118 + #140;
   pfonte_ecf.mqtdcarlin := 56;



//   pfonte_ecf.abrirgaveta:= #027 + 'v' + #140;;
//   Writeln(F, #29 + #249 + #32 + #0 + #27 + #116 + #8 + #27 + #118 + #140) //bematech
   end
else if pos('diebold', pNome_Impressora) > 0 then
   begin
   pfonte_ecf.Negrito_ativa := #27 + #69 + #1;
   pfonte_ecf.Negrito_desativa := #27 + #69 + #0;
   pfonte_ecf.condensado_ativa := #27 + #77 + #1;
   pfonte_ecf.condensado_desativa  := #27 + #77 + #0;
   pfonte_ecf.CortarPapel:= #10 + #17; // GUILHOTINA

   pfonte_ecf.texto_centralizado:= #27 + #97 +#49;
   pfonte_ecf.texto_esquerda:= #27 + #97 +#48;
   pfonte_ecf.texto_direita:= #27 + #97 +#50;
   pfonte_ecf.abrirgaveta:= #27 + #112 +#0 +#50 +#200;
   pfonte_ecf.abrirgaveta:=  #27 + '&' + '0' + #12 + #48;
   pfonte_ecf.mqtdcarlin := 64;
   end
else
   begin
   pfonte_ecf.Negrito_ativa := #27 + #69 + #1;
   pfonte_ecf.Negrito_desativa := #27 + #69 + #0;
   pfonte_ecf.condensado_ativa := #27 + #77 + #1;
   pfonte_ecf.condensado_desativa  := #27 + #77 + #0;
   pfonte_ecf.CortarPapel:= #29 + 'V' + #65 + #0;
//   pfonte_ecf.CortarPapel:= #29 + #86 + #1 + #0;
   pfonte_ecf.texto_centralizado:= #27 + #97 +#49;
   pfonte_ecf.texto_esquerda:= #27 + #97 +#48;
   pfonte_ecf.texto_direita:= #27 + #97 +#50;
   pfonte_ecf.abrirgaveta:= #27 + #112 +#0 +#50 +#200;
   pfonte_ecf.abrirgaveta:= #27 + #112 +#0 +#49 +#0;
   pfonte_ecf.mqtdcarlin := 64;
   end;
end;



procedure fRedirecionarPoartaUsbparaLPT1(pNomeCompartilhamento: string);
begin
// DESATIVAR NET USE LPT1 /DELETE
if pos('\\',pNomeCompartilhamento)>0 then
   begin
   fexecprog_espera('net use LPT1 '+pNomeCompartilhamento + ' /PERSISTENT:YES ', SW_HIDE);
   end
else
   begin
   fexecprog_espera('net use LPT1 \\' + NomeComputador + '\' +
     pNomeCompartilhamento+ ' /PERSISTENT:YES ', SW_HIDE);
   end;

  // fexecprog_sai('net user LPT1 \\'+mNomeComputador+'\'+pNomeCompartilhamento+' /PERSISTENT:YES ');

  // net user LPT1 \\LINDOOMAR-PC\ELGIN /PERSISTENT:YES
end;

Function GetCurrentPrinterHandle: THandle;
  Const
    Defaults: TPrinterDefaults = (
      pDatatype : nil;
      pDevMode  : nil;
      DesiredAccess : PRINTER_ACCESS_USE or PRINTER_ACCESS_ADMINISTER );
  Var
    Device, Driver, Port : array[0..255] of char;
    hDeviceMode: THandle;
  Begin { GetCurrentPrinterHandle }
  Printer.GetPrinter(Device, driver, port, hDeviceMode);

    If not OpenPrinter(@Device, Result, @Defaults) Then
      RaiseLastWin32Error;
  End; { GetCurrentPrinterHandle }





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



// inicio gravar nfce


function fGravarXML_NFE(pdado: TDadosNFCEChvAcesso): boolean;
// ptipo=0 nfe 3-cancelamento 4-inutilizacao
var
query_temp: tQuery;
begin

if (pdado.pServico=Nfe_cancelamento) or (pdado.pServico=Nfe_Inutilizacao)  or (pdado.pServico=Nfe_Autorizacao)
    or (pdado.pServico=NFCe_Autorizacao_assinar)
    or (pdado.pServico=NFCe_Autorizacao_enviar)
    or (pdado.pServico=Nfse_Autorizacao) then
   begin
   DM1_ADO.ADOQuery1.Close;
   DM1_ADO.ADOQuery1.SQL.Clear;
   DM1_ADO.ADOQuery1.SQL.Add('Update CADNS set ');
   DM1_ADO.ADOQuery1.SQL.Add(' NSNFE_OBS_ERRO=:NSNFE_OBS_ERRO ');

   if pdado.pServico = nfe_cancelamento  then // cancelamento
      begin
      if (pdado.pDatHorEvento<=pdatanula) and
         (fsonumero(pdado.pNumProt)=0) then
          begin
          result:=false;
          exit;
          end;
      if  pdado.pDatHorEvento>pdatanula then
         begin
         DM1_ADO.ADOQuery1.SQL.Add(',NSNFCE_CANC_DATHOR=:NSDATHOR_CANC ');
         DM1_ADO.ADOQuery1.Parameters.ParamByName('NSDATHOR_CANC').Value:=pdado.pDatHorEvento;
         end;
      if fsonumero(pdado.pNumProt)>0 then
         begin
         DM1_ADO.ADOQuery1.SQL.Add(',NSNFCE_CANC_NPROT=:NSXML_NPROT_CANC ');
         DM1_ADO.ADOQuery1.Parameters.ParamByName('NSXML_NPROT_CANC').Value:=pdado.pNumProt;
         end;
      end
   else if pdado.pServico= nfe_inutilizacao then // inutilizacao
      begin
      if (pdado.pDatHorEvento<=pdatanula) and
         (fsonumero(pdado.pNumProt)=0) then
          begin
          result:=false;
          exit;
          end;
      if pdado.pDatHorEvento>pdatanula then
         begin
         DM1_ADO.ADOQuery1.SQL.Add(',NSDATHOR_INUT=:NSDATHOR_INUT ');
         DM1_ADO.ADOQuery1.Parameters.ParamByName('NSDATHOR_INUT').Value:=pdado.pDatHorEvento;
         end;
      if fsonumero(pdado.pNumProt)>0 then
         begin
         DM1_ADO.ADOQuery1.SQL.Add(',NSXML_NPROT_INUT=:NSXML_NPROT_INUT ');
         DM1_ADO.ADOQuery1.Parameters.ParamByName('NSXML_NPROT_INUT').Value:=pdado.pNumProt;
         end;
      end
   else
      begin
      if (pdado.pServico = Nfe_Autorizacao) and
         ((pdado.pcStat=110) or (pdado.pcStat=205) or (pdado.pcStat=233)
           or (pdado.pcStat=234) or (pdado.pcStat=301) or (pdado.pcStat=302) ) then
         begin
         DM1_ADO.ADOQuery1.SQL.Add(',NSDATHOR_DENEG=:NSDATHOR_DENEG ');
         DM1_ADO.ADOQuery1.Parameters.ParamByName('NSDATHOR_DENEG').Value:=pdado.pDatHorEvento;
         DM1_ADO.ADOQuery1.SQL.Add(',NSXML_NPROT_DENEG=:NSNPROT_DENEG ');
         DM1_ADO.ADOQuery1.Parameters.ParamByName('NSNPROT_DENEG').Value:=pdado.pNumProt;
         DM1_ADO.ADOQuery1.SQL.Add(',NSSTATUS=:NSSTATUS ');
         DM1_ADO.ADOQuery1.Parameters.ParamByName('NSSTATUS').Value:=7;
         end;


      if fsonumero(pdado.pNumRecibo)>0 then
         begin
         DM1_ADO.ADOQuery1.SQL.Add(',NSNFCE_NRECIBO=:NFE_NRECIBO ');
         DM1_ADO.ADOQuery1.Parameters.ParamByName('NFE_NRECIBO').Value:=pdado.pNumRecibo;
         end;

      if fsonumero(pdado.pNumProt)>0 then
         begin
         DM1_ADO.ADOQuery1.SQL.Add(',NSNFCE_NPROT=:NFE_NUMPROT ');
         DM1_ADO.ADOQuery1.Parameters.ParamByName('NFE_NUMPROT').Value:=pdado.pNumProt;
         fAtualizarProtocoloNFCEPedido(pdado.pChave,pdado.pCodEmp,pdado.pChaveAno,pdado.pNumProt,pdado.pDatHorEvento);
         end;


     if trim(pdado.pNumProt)<>'' then
        begin
        DM1_ADO.ADOQuery1.SQL.Add(',NSNFE_XML_CLIENTE=:NSNFE_XML_CLIENTE ');
        DM1_ADO.ADOQuery1.Parameters.ParamByName('NSNFE_XML_CLIENTE').Value:=pdado.pXml_Cliente;
        end;
      end;


   DM1_ADO.ADOQuery1.SQL.Add(' where NSCHAVEP=:CHAVE '
                            +' and NSLOTSEQ_CP=:CHAVE_ANO '
                            +' and NSCODEMP=:CODEMP '
                            +'  and NSTIPO '+IIF(pdado.pServico=Nfse_Autorizacao,' =2 ',' <2 ' ));
   DM1_ADO.ADOQuery1.Parameters.ParamByName('NSNFE_OBS_ERRO').Value:=pdado.pRetObs;

   DM1_ADO.ADOQuery1.Parameters.ParamByName('CHAVE').Value    :=pdado.pChave;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('CHAVE_ANO').Value:=pdado.pChaveAno;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('CODEMP').Value   :=pdado.pCodEmp;
   try
      DM1_ADO.ADOQuery1.ExecSQL;
   except
      DM1_ADO.ADOQuery1.SQL.SaveToFile('c:\sqlnf.txt');
      MessageDlg('Erro '+DM1_ADO.ADOQuery1.SQL.Text,mtError,[mbOk],0);
      end;
   end;


//  INICIO


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
query_temp.parambyName('CODEMP').Value :=pdado.pCodEmp;
query_temp.parambyName('NUMERO').Value :=pdado.pNumNFCE;
query_temp.parambyName('SERIE').Value  :=pdado.pSerie;
query_temp.parambyName('MODELO').Value :=pdado.pModelo;

query_temp.parambyName('OPERACAO').Value :=fRetornaServicoExtenso(pdado.pModelo,pdado.pServico,pdado.seqeve);
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

DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_OPERACAO').Value :=fRetornaServicoExtenso(pdado.pModelo,pdado.pServico,pdado.seqeve);

DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_TIPO').Value        :=0;
DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_NUMERO').Value      :=pdado.pNumNFCE;
DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_SERIE').Value       :=pdado.pSerie;
DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_MODELO').Value      :=pdado.pModelo;
DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_CHAVEP').Value      :=pdado.pChave;
DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_CHAVEP_NIVEL').Value:=0;
DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_ORDEMP').Value       :=codemp;
DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_DATHOR_EVE').Value   :=pdado.pDatHorEvento;
DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_XML_NPROT_EVE').Value:=pdado.pNumProt;
DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_XML_EVENTO').Value      :=pdado.pXml_Cliente;
try
   DM1_ADO.ADOQuery1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_ado(DM1_ADO.ADOQuery1,2890,'s_nfce','nfce');
   DM1_ADO.ADOQuery1.SQL.SaveToFile('c:\sqlnfeinut.txt');
   end;
query_temp.Close;
freeandNil(query_temp);
result:=true;



end;


// termino gravar nfce



function fRetornaServicoExtenso(pModelo: Integer; pServico: Integer;pSeqEvento: integer): String;
begin
if (pServico =nfe_cancelamento) then
   result:='CANCELAMENTO'
else if (pServico =nfe_cartacorrecao) then
   result:='CARTA DE CORRECAO'
else if (pServico =nfe_inutilizacao) then
   result:='INUTILIZACAO'
else if (pServico =nfe_statusservico) then
   result:='STATUS_SERVICO'
else if (pServico =nfe_autorizacao) then
   result:=formatfloat('00', pModelo)+'AUTORIZACAO'
else if (pServico =nfe_ret_autorizacao) then
   result:='RET_AUTORIZACAO'
else if (pServico =Nfe_MDFE_naoEncerradas) then
   result:='MDFE_NAO_ENCERRADAS'
else if (pServico =Nfe_MDFE_envio) then
   result:='MDFE_AUTORIZACAO'
else if (pServico =Nfe_MDFE_EVENTO) then
   begin
   if pSeqEvento=110112 then
      result:='110112_EVENTO_MDFE_ENCERRAMENTO'
   else if pSeqEvento=110111 then
      result:='110111_EVENTO_MDFE_CANCELAMENTO'
   else
      result:=formatfloat('000', pSeqEvento)+'_MDFE_EVENTO';
   end
else if (pServico =Nfe_Consulta_Protocolo ) then
   result:='CONSULTA_PROTOCOLO_NFE'
else if (pServico =Nfe_Recepcao_Evento ) then
   result:=formatfloat('000', pSeqEvento)+'_NFE_EVENTO'
else if (pServico =Nfe_DistribuicaoDFe ) then
   result:='DISTRIBUICAO_DFE'
else if (pServico =Nfe_GerenciadorAtivo ) then
   result:='GERENCIADOR_ATIVO'
else if (pServico =Nfe_downloadnfe_entrada ) then
   result:='DOWNLOADNFE_ENTRADAO'
else if (pServico =Nfe_manifestacao_destinatario ) then
   result:='MANIFESTACAO_DESTINATARIO'
else if (pServico =Nfe_ConsNFeDest ) then
   result:='CONSULTA_NFE_DESTINATARIO'
else if (pServico =NFCe_Autorizacao_assinar ) then
   result:='NFCE_NFE_ASSINAR'
else if (pServico =NFCe_Autorizacao_enviar ) then
   result:='NFCE_NFE_ENVIAR'
else
   result:='DESCONHECIDO';


end;


procedure fReemitirNFCE(pDadosNFCEChvAcesso: TDadosNFCEChvAcesso);
var
query_nfce: TQuery;


   procedure pfechartudo;
   begin
   query_nfce.close;
   freeandnil(query_nfce);
   end;

begin
if (trim(pDadosNFCEChvAcesso.pXml_Cliente)='') and
   (trim(pDadosNFCEChvAcesso.pXml_Cliente)<>'') then
   pDadosNFCEChvAcesso.pXml_Cliente:=pDadosNFCEChvAcesso.pXml;


query_nfce:=TQuery.create(nil);
query_nfce.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_nfce.SQL.add('Select NSE_XML_EVENTO as XML from CADNS_NFEEVE '
                  +' where NSE_CODEMP=0' + Inttostr(pDadosNFCEChvAcesso.pCodEmp)
                  +' and NSE_CHAVEP=0'+ Inttostr(pDadosNFCEChvAcesso.pChave)
                  +' and not NSE_XML_EVENTO is null '
                  +' and ( NSE_OPERACAO='+QuotedStr('020_NFE_EVENTO')
                  +' or NSE_OPERACAO='+QuotedStr('65AUTORIZACAO')
                  +' or NSE_OPERACAO='+QuotedStr('NFCE_NFE_ENVIAR')
                  +') '
                  +' ORDER BY NSE_DATHOR_EVE DESC '
                  );
try
   query_nfce.open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_nfce,3024,'lerarq','CADNS_NFEEVE');
   exit
   end;
   end;

if query_nfce.IsEmpty then
   begin
   pfechartudo;
   MessageDlg('Nao foi encontrado o xml Chave do pedido '+Inttostr(pDadosNFCEChvAcesso.pChave),mtWarning,[mbOk],0);
   exit;
   end;
pDadosNFCEChvAcesso.pXml_Cliente := query_nfce.fieldbyname('XML').asstring;

pDadosNFCEChvAcesso.pImpressora:=fRetornaImpressoraOnline('NFCE');
if pDadosNFCEChvAcesso.pImpressora='' then
   begin
   Application.createform(Tfrm_impressora_escolher, frm_impressora_escolher);
   frm_impressora_escolher.showmodal;
   pDadosNFCEChvAcesso.pImpressora:=frm_impressora_escolher.mimpressora_selecionada;
   freeandnil(frm_impressora_escolher);
   end;

IF pDadosNFCEChvAcesso.pImpressora<>'' then
   begin
   Application.createform(Tfrm_nfce_impressao, frm_nfce_impressao);

   Frm_NFCE_Impressao.fLerDadosDoXML(pDadosNFCEChvAcesso);
   Frm_NFCE_Impressao.fImprimirGeral(pDadosNFCEChvAcesso);
//   Frm_NFCE_Impressao.fImprimirNFCE(mDadosNFCEChvAcesso);
   freeandnil(Frm_NFCE_Impressao);
   end;

end;


procedure  fAtualizarProtocoloNFCEPedido(pChave,pCodEmp,pLotSeq: Integer; pNProt: string; pDatHorEve: Tdatetime);
var
query_ped: tQuery;
begin
query_ped:=tQuery.create(nil);
query_ped.databaseName:=DM1.SG_ASSOC.databasename;
query_ped.sql.add('Update CADP01 set P1NFCE_NPROT=:NPROT, P1NFCE_PROT_DATHOR=:DATHOR '
                 +' where P1CHAVE=:CHAVE and P1LOTSEQ=:CHAVE_ANO anD P1CODEMP=:CODEMP ');


query_ped.parambyname('NPROT').asstring := pNProt;
query_ped.parambyname('DATHOR').AsDateTime := pDatHorEve;

query_ped.parambyname('CHAVE').AsInteger := pChave;
query_ped.parambyname('CHAVE_ANO').AsInteger := pLotSeq;
query_ped.parambyname('CODEMP').AsInteger := pCodEmp;
try
   Query_ped.ExecSQL;
   fdm1StartCommit;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_ped,3066,'lerarq','CADPFP');
   exit
   end;
   end;
query_ped.close;
freeandnil(query_ped);
end;


function fEnviarNFCEContigencia(pDadosNFCEChvAcesso: TDadosNFCEChvAcesso): boolean;
var
query_nfce: TQuery;


   procedure pFechartudo;
   begin
   query_nfce.close;
   freeandnil(query_nfce);
   end;

begin

query_nfce:=TQuery.create(nil);
query_nfce.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_nfce.SQL.add('Select NSE_XML_EVENTO as XML from CADNS_NFEEVE '
                  +' where NSE_CODEMP=0' + Inttostr(pDadosNFCEChvAcesso.pCodEmp)
                  +' and NSE_CHAVEP=0'+ Inttostr(pDadosNFCEChvAcesso.pChave)
                  +' and not NSE_XML_EVENTO is null ');
try
   query_nfce.open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_nfce,3024,'lerarq','CADNS_NFEEVE');
   exit
   end;
   end;

if query_nfce.IsEmpty then
   begin
   pfechartudo;
   MessageDlg('Nao foi encontrado o xml Chave do pedido '+Inttostr(pDadosNFCEChvAcesso.pChave),mtWarning,[mbOk],0);
   exit;
   end;
pDadosNFCEChvAcesso.pXml := query_nfce.fieldbyname('XML').asstring;


pDadosNFCEChvAcesso:=fEnviarXMLNFCE(pDadosNFCEChvAcesso);
if trim(pDadosNFCEChvAcesso.pNumProt)='' then
   begin
   result:=false;
   end
else
   begin
   result:=true;
   end;

pfechartudo;






end;

end.
