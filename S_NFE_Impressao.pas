unit S_NFE_Impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, RLReport, RLBarcode, jpeg, ComCtrls, ADODB,
  xmldom, XMLIntf, msxmldom, XMLDoc, Buttons, StdCtrls, DBTables,
  RLRichFilter, RLFilters, RLPDFFilter, DelphiZXingQRCode, ExtCtrls,s_ebol,printers
  ,RlPrinters;


type
  TLerDadosXml = record
  pSalvarPDFPara: String;
  pSalvarXmlPara: String;
  pNomeArq: String;

  pChave: Integer;
  pChaveAno: Integer;
  pCodEmp: Integer;
  pCodBcoCob: Integer;
  pId_new: Integer;

  pEnviar: Boolean;
  pModelo: String;


  end;



type
  TFrm_NFE_Impressao = class(TForm)
    PageControl1: TPageControl;
    ts_Retrato: TTabSheet;
    ts_Paisagem: TTabSheet;
    rl_Paisagem_Simples: TRLReport;
    rl_lat_borda_rec_simples: TRLDraw;
    rl_lat_recebemos_simples: TRLAngleLabel;
    rl_lat_Borda_DtEmis_simples: TRLDraw;
    rl_lat_Ass_Simples: TRLDraw;
    rl_lat_numcan_simples: TRLDraw;
    rl_lat_ObsNFE_simples: TRLAngleLabel;
    rl_lat_Iden_simples: TRLAngleLabel;
    rl_lat_DtRec_simples: TRLAngleLabel;
    rl_lat_traco_simples: TRLAngleLabel;
    RLBand16: TRLBand;
    RLDraw128: TRLDraw;
    RLDraw129: TRLDraw;
    RLDraw130: TRLDraw;
    rlLogo_Paisagem_simples: TRLImage;
    rlPaisagemSimplesEmiRazao: TRLDBText;
    RLLabel164: TRLLabel;
    RLLabel165: TRLLabel;
    RLLabel166: TRLLabel;
    RLLabel167: TRLLabel;
    RLLabel168: TRLLabel;
    RLDBText194: TRLDBText;
    RLDBText195: TRLDBText;
    RLLabel169: TRLLabel;
    RLDBText196: TRLDBText;
    RLLabel170: TRLLabel;
    RLMemo59: TRLMemo;
    RLDBText197: TRLDBText;
    RLMemo60: TRLMemo;
    RLDBText198: TRLDBText;
    RLMemo61: TRLMemo;
    RLMemo62: TRLMemo;
    RLMemo63: TRLMemo;
    RLDBText199: TRLDBText;
    RLDBText200: TRLDBText;
    RLDBText201: TRLDBText;
    RLSystemInfo7: TRLSystemInfo;
    RLSystemInfo8: TRLSystemInfo;
    rlPaisagemSimplesEmiEnder: TRLDBMemo;
    RLLabel171: TRLLabel;
    rlPaisagemSimplesEmiFone: TRLDBText;
    rlPaisagemSimplesEmiCidade: TRLDBText;
    rlPaisagemSimplesEmiCep: TRLDBText;
    RLSubDetail4: TRLSubDetail;
    RLBand17: TRLBand;
    RLDBText204: TRLDBText;
    RLDBText205: TRLDBText;
    RLDBText206: TRLDBText;
    RLDBText207: TRLDBText;
    RLDBT_DETPRODVUNCOM: TRLDBText;
    RLDBT_DETPRODVPROD: TRLDBText;
    RLDBText210: TRLDBText;
    RLDBText211: TRLDBText;
    RLDBText214: TRLDBText;
    txt_pais2_INSS: TRLDBText;
    rlPaisagemSimplesNome: TRLDBMemo;
    RLDBText202: TRLDBText;
    RLBand_Rod01_simples: TRLBand;
    RLDraw124: TRLDraw;
    RLDBMemo11: TRLDBMemo;
    RLLabel175: TRLLabel;
    RLDraw131: TRLDraw;
    RLDBText216: TRLDBText;
    RLDraw132: TRLDraw;
    RLDBText217: TRLDBText;
    RLDraw133: TRLDraw;
    RLDBText218: TRLDBText;
    RLLabel176: TRLLabel;
    RLLabel177: TRLLabel;
    RLLabel178: TRLLabel;
    RLDraw134: TRLDraw;
    RLLabel179: TRLLabel;
    RLDBText219: TRLDBText;
    RLLabel180: TRLLabel;
    RLDBMemo12: TRLDBMemo;
    RLLabel115: TRLLabel;
    RLBand19: TRLBand;
    rlcab_codpro: TRLMemo;
    lblcabpaisagem_nome: TRLMemo;
    lblcab_ncm: TRLMemo;
    mpaisagem_simples_cst: TRLMemo;
    lblcab_csticms: TRLMemo;
    lblcab_und: TRLMemo;
    lblcab_pu: TRLMemo;
    lblcab_vt: TRLMemo;
    lblcab_al_icms: TRLMemo;
    lblcab_aliqipi: TRLMemo;
    lblcab_qtde: TRLMemo;
    lblcab_vl_ipi: TRLMemo;
    RLBand20: TRLBand;
    RLDraw135: TRLDraw;
    rlPaiSimples_Linha02: TRLBand;
    RLDBMemo6: TRLDBMemo;
    rl_lat_Serie_simples: TRLAngleLabel;
    rl_lat_Nota_simples: TRLAngleLabel;
    rl_band_cab02_simples: TRLBand;
    RLDraw139: TRLDraw;
    RLMemo78: TRLMemo;
    RLMemo79: TRLMemo;
    RLMemo80: TRLMemo;
    RLDBText220: TRLDBText;
    RLDBText221: TRLDBText;
    RLDBText222: TRLDBText;
    RLMemo81: TRLMemo;
    RLMemo82: TRLMemo;
    RLMemo83: TRLMemo;
    RLMemo84: TRLMemo;
    RLDBText223: TRLDBText;
    RLDBText224: TRLDBText;
    RLDBText225: TRLDBText;
    RLDBText226: TRLDBText;
    RLMemo85: TRLMemo;
    RLMemo86: TRLMemo;
    RLMemo87: TRLMemo;
    RLMemo88: TRLMemo;
    RLMemo89: TRLMemo;
    RLDBText227: TRLDBText;
    RLDBText228: TRLDBText;
    RLDBText229: TRLDBText;
    RLDBText230: TRLDBText;
    RLLabel181: TRLLabel;
    RLMemo91: TRLMemo;
    RLMemo92: TRLMemo;
    RLMemo93: TRLMemo;
    RLMemo94: TRLMemo;
    RLMemo95: TRLMemo;
    RLLabel182: TRLLabel;
    RLDBText232: TRLDBText;
    RLDBText233: TRLDBText;
    RLDBText234: TRLDBText;
    RLDBText235: TRLDBText;
    RLDBText236: TRLDBText;
    RLMemo96: TRLMemo;
    RLMemo97: TRLMemo;
    RLMemo98: TRLMemo;
    RLMemo99: TRLMemo;
    RLMemo100: TRLMemo;
    RLMemo101: TRLMemo;
    RLDBText237: TRLDBText;
    RLDBText238: TRLDBText;
    RLDBText239: TRLDBText;
    RLDBText240: TRLDBText;
    RLDBText241: TRLDBText;
    RLDBText242: TRLDBText;
    RLLabel183: TRLLabel;
    RLMemo102: TRLMemo;
    RLMemo103: TRLMemo;
    RLMemo104: TRLMemo;
    RLMemo105: TRLMemo;
    RLMemo106: TRLMemo;
    RLMemo107: TRLMemo;
    RLDBText243: TRLDBText;
    RLDBText244: TRLDBText;
    RLDBText245: TRLDBText;
    RLDBText246: TRLDBText;
    RLDraw136: TRLDraw;
    RLDBText247: TRLDBText;
    RLMemo108: TRLMemo;
    RLMemo109: TRLMemo;
    RLMemo110: TRLMemo;
    RLMemo111: TRLMemo;
    RLDBText248: TRLDBText;
    RLDBText249: TRLDBText;
    RLDBText250: TRLDBText;
    RLDBText251: TRLDBText;
    RLMemo112: TRLMemo;
    RLMemo113: TRLMemo;
    RLMemo114: TRLMemo;
    RLMemo115: TRLMemo;
    RLMemo116: TRLMemo;
    RLMemo117: TRLMemo;
    RLDBText252: TRLDBText;
    RLDBText253: TRLDBText;
    RLDBText254: TRLDBText;
    RLDBText255: TRLDBText;
    RLDBText256: TRLDBText;
    RLDBMemo16: TRLDBMemo;
    RLLabel88: TRLLabel;
    RLDBText77: TRLDBText;
    cds_cabecalho: TClientDataSet;
    src_cabecalho: TDataSource;
    cds_cabecalhoEMITXNOME: TStringField;
    cds_cabecalhoendereco_comp: TStringField;
    cds_cabecalhoemicidadeuf: TStringField;
    cds_cabecalhofone_fax: TStringField;
    cds_cabecalhocep_emit: TStringField;
    cds_cabecalhosaida_entrada: TStringField;
    cds_cabecalhoIDENNF: TStringField;
    cds_cabecalhoIDESERIE: TStringField;
    cds_cabecalhoEMITIE: TStringField;
    cds_cabecalhoDESTISUF: TStringField;
    cds_cabecalhoemit_cnpj: TStringField;
    cds_cabecalhochave_acesso_calc: TStringField;
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
    cds_cabecalhoTT_XNOME: TStringField;
    cds_cabecalhofrete_cif_fob: TStringField;
    cds_cabecalhoTRANSPVEICTRANSPPLACA: TStringField;
    cds_cabecalhoTRANSPVEICTRANSPUF: TStringField;
    cds_cabecalhotransp_cnpj: TStringField;
    cds_cabecalhoTT_XENDER: TStringField;
    cds_cabecalhoTT_XMUN: TStringField;
    cds_cabecalhoTT_UF: TStringField;
    cds_cabecalhoTT_IE: TStringField;
    cds_cabecalhoTRANSPVOLQVOL: TIntegerField;
    cds_cabecalhoTRANSPVOLMARCA: TStringField;
    cds_cabecalhoTRANSPVOLPESOB: TFloatField;
    cds_cabecalhoTRANSPVOLPESOL: TFloatField;
    cds_cabecalhoINFADICINFCPL: TMemoField;
    cds_cabecalhoINFADICINFADFISCO: TMemoField;
    cds_detalhe: TClientDataSet;
    src_detalhe: TDataSource;
    cds_detalheDETPRODCPROD: TStringField;
    cds_detalhenomepro: TStringField;
    cds_detalheDETPRODNCM: TStringField;
    cds_detalhecst: TStringField;
    cds_detalheDETPRODCFOP: TStringField;
    cds_detalheDETPRODUCOM: TStringField;
    cds_detalheDETPRODQCOM: TFloatField;
    cds_detalheDETPRODVUNCOM: TFloatField;
    cds_detalhealiq_icms: TFloatField;
    cds_detalhealiq_issqn: TFloatField;
    cds_detalhepercipi: TFloatField;
    cds_cabecalhoTOTALISSQNTOTVISS: TFloatField;
    cds_cabecalhoTOTALISSQNTOTVBC: TFloatField;
    cds_detalheTOTALISSQNTOTVSERV: TFloatField;
    cds_cabecalhoEMITIM: TStringField;
    cds_detalheDETINFADPROD: TMemoField;
    XMLDocument1: TXMLDocument;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    edt_nomarq: TEdit;
    opd1: TOpenDialog;
    SpeedButton1: TSpeedButton;
    bbProcessar: TBitBtn;
    cds_cabecalhoTOTALISSQNTOTVSERV: TFloatField;
    cds_cabecalhoCHAVE_ACESSO: TStringField;
    cds_cabecalhoEMITIEST: TStringField;
    cds_cabecalhoIDEDEMI: TDateTimeField;
    cds_vcto: TClientDataSet;
    cds_vctoVDATA: TDateTimeField;
    cds_vctoVVALOR: TFloatField;
    cds_cabecalhodata_vencimentos: TStringField;
    cds_vctonumdup: TStringField;
    cds_detalheCSOSN: TStringField;
    cds_detalheORI_PROD: TStringField;
    cds_detalheVDESC: TFloatField;
    cds_detalheICMSVBC: TFloatField;
    cds_detalheDETPRODVPROD: TFloatField;
    rl_Retrato_Simples: TRLReport;
    RLBand_canhoto_simples: TRLBand;
    RLDraw63: TRLDraw;
    RLDraw64: TRLDraw;
    RLLabel10: TRLLabel;
    RLLabel26: TRLLabel;
    RLDraw65: TRLDraw;
    RLLabel74: TRLLabel;
    RLDBText47: TRLDBText;
    RLLabel82: TRLLabel;
    RLLabel85: TRLLabel;
    RLDBText48: TRLDBText;
    RLDBText50: TRLDBText;
    RLDBText84: TRLDBText;
    RLDBText270: TRLDBText;
    RLBand2: TRLBand;
    RLSubDetail2: TRLSubDetail;
    RLBand4: TRLBand;
    RLDBText85: TRLDBText;
    RLDBText104: TRLDBText;
    RLDBText105: TRLDBText;
    RLDBText106: TRLDBText;
    RLDBText107: TRLDBText;
    RLDBText120: TRLDBText;
    RLDBText141: TRLDBText;
    edt_qtd_simples: TRLLabel;
    edt_unitario_simples: TRLLabel;
    edt_total_simples: TRLLabel;
    txtret2_issqn: TRLDBText;
    rldetretrato_nome: TRLDBMemo;
    RLBand_rodape_simples: TRLBand;
    RLDraw126: TRLDraw;
    RLLabel89: TRLLabel;
    RLDraw66: TRLDraw;
    RLLabel90: TRLLabel;
    RLDraw67: TRLDraw;
    RLLabel91: TRLLabel;
    RLDraw68: TRLDraw;
    RLLabel97: TRLLabel;
    RLDraw69: TRLDraw;
    RLLabel98: TRLLabel;
    RLDBText142: TRLDBText;
    RLDBText143: TRLDBText;
    RLDBText144: TRLDBText;
    RLDBText145: TRLDBText;
    RLDBMemo8: TRLDBMemo;
    RLLabel116: TRLLabel;
    RLLabel172: TRLLabel;
    RLBand13: TRLBand;
    rlcabretrato_codpro: TRLMemo;
    rlcabretrato_nome: TRLMemo;
    rlcabretrato_ncm: TRLMemo;
    rlcabretrato_cst: TRLMemo;
    rlcabretrato_cfop: TRLMemo;
    rlcabretrato_und: TRLMemo;
    RLLabel99: TRLLabel;
    rlcabretrato_vltotal: TRLMemo;
    rlcabretrato_vlunit: TRLMemo;
    rlcabretrato_qtde: TRLMemo;
    rlcabretrato_aliq_icms: TRLMemo;
    rlcabretrato_aliq_ipi: TRLMemo;
    rlcabretrato_vl_ipi: TRLMemo;
    rlRetSim_Complemento: TRLBand;
    RLDBMemo10: TRLDBMemo;
    RLBand14: TRLBand;
    RLDraw138: TRLDraw;
    RLDraw70: TRLDraw;
    RLDraw75: TRLDraw;
    RLDraw77: TRLDraw;
    RLDraw78: TRLDraw;
    RLLabel100: TRLLabel;
    RLLabel101: TRLLabel;
    RLLabel102: TRLLabel;
    RLLabel103: TRLLabel;
    RLLabel104: TRLLabel;
    RLLabel105: TRLLabel;
    RLLabel106: TRLLabel;
    RLDraw80: TRLDraw;
    RLLabel107: TRLLabel;
    RLDraw81: TRLDraw;
    RLDraw82: TRLDraw;
    RLLabel108: TRLLabel;
    RLLabel109: TRLLabel;
    RLLabel110: TRLLabel;
    RLLabel111: TRLLabel;
    RLDraw83: TRLDraw;
    RLLabel112: TRLLabel;
    RLDBText146: TRLDBText;
    RLDBText147: TRLDBText;
    RLDBText148: TRLDBText;
    RLDBText149: TRLDBText;
    RLDBText150: TRLDBText;
    RLDBText151: TRLDBText;
    RLDBText153: TRLDBText;
    RLDBText154: TRLDBText;
    RLSystemInfo5: TRLSystemInfo;
    RLSystemInfo6: TRLSystemInfo;
    RLLabel113: TRLLabel;
    RLLabel87: TRLLabel;
    RLDBText49: TRLDBText;
    RLBand1_cab02_simples: TRLBand;
    RLDraw84: TRLDraw;
    RLLabel117: TRLLabel;
    RLDraw85: TRLDraw;
    RLDraw86: TRLDraw;
    RLDraw87: TRLDraw;
    RLLabel118: TRLLabel;
    RLDBText155: TRLDBText;
    RLLabel119: TRLLabel;
    RLDBText156: TRLDBText;
    RLLabel120: TRLLabel;
    RLDBText157: TRLDBText;
    RLDraw88: TRLDraw;
    RLDraw89: TRLDraw;
    RLDraw90: TRLDraw;
    RLDraw91: TRLDraw;
    RLLabel121: TRLLabel;
    RLLabel122: TRLLabel;
    RLLabel123: TRLLabel;
    RLLabel124: TRLLabel;
    RLDBText158: TRLDBText;
    RLDBText159: TRLDBText;
    RLDBText160: TRLDBText;
    RLDBText161: TRLDBText;
    RLDraw92: TRLDraw;
    RLDraw93: TRLDraw;
    RLDraw94: TRLDraw;
    RLDraw95: TRLDraw;
    RLDraw96: TRLDraw;
    RLLabel125: TRLLabel;
    RLLabel126: TRLLabel;
    RLLabel127: TRLLabel;
    RLLabel128: TRLLabel;
    RLLabel129: TRLLabel;
    RLDBText162: TRLDBText;
    RLDBText164: TRLDBText;
    RLDBText165: TRLDBText;
    RLLabel130: TRLLabel;
    RLLabel131: TRLLabel;
    RLDraw97: TRLDraw;
    RLDraw98: TRLDraw;
    RLDraw99: TRLDraw;
    RLDraw100: TRLDraw;
    RLDraw101: TRLDraw;
    RLLabel132: TRLLabel;
    RLLabel133: TRLLabel;
    RLLabel134: TRLLabel;
    RLLabel135: TRLLabel;
    RLLabel136: TRLLabel;
    RLDBText166: TRLDBText;
    RLDBText167: TRLDBText;
    RLDBText168: TRLDBText;
    RLDBText169: TRLDBText;
    RLDBText170: TRLDBText;
    RLDraw102: TRLDraw;
    RLDraw103: TRLDraw;
    RLDraw104: TRLDraw;
    RLDraw105: TRLDraw;
    RLDraw106: TRLDraw;
    RLDraw107: TRLDraw;
    RLLabel139: TRLLabel;
    RLLabel140: TRLLabel;
    RLLabel141: TRLLabel;
    RLLabel142: TRLLabel;
    RLLabel143: TRLLabel;
    RLLabel144: TRLLabel;
    RLDBText171: TRLDBText;
    RLDBText172: TRLDBText;
    RLDBText173: TRLDBText;
    RLDBText174: TRLDBText;
    RLDBText175: TRLDBText;
    RLDBText176: TRLDBText;
    RLLabel145: TRLLabel;
    RLDraw108: TRLDraw;
    RLDraw109: TRLDraw;
    RLDraw110: TRLDraw;
    RLDraw111: TRLDraw;
    RLDraw112: TRLDraw;
    RLLabel146: TRLLabel;
    RLLabel147: TRLLabel;
    RLLabel148: TRLLabel;
    RLLabel149: TRLLabel;
    RLLabel150: TRLLabel;
    RLLabel151: TRLLabel;
    RLLabel152: TRLLabel;
    RLLabel153: TRLLabel;
    RLDraw113: TRLDraw;
    RLDBText177: TRLDBText;
    RLDBText178: TRLDBText;
    RLDBText179: TRLDBText;
    RLDBText180: TRLDBText;
    RLDBText181: TRLDBText;
    RLDraw114: TRLDraw;
    RLDraw115: TRLDraw;
    RLDraw116: TRLDraw;
    RLDraw117: TRLDraw;
    RLLabel154: TRLLabel;
    RLLabel155: TRLLabel;
    RLLabel156: TRLLabel;
    RLLabel157: TRLLabel;
    RLDBText182: TRLDBText;
    RLDBText183: TRLDBText;
    RLDBText184: TRLDBText;
    RLDBText185: TRLDBText;
    RLDraw118: TRLDraw;
    RLDraw119: TRLDraw;
    RLDraw120: TRLDraw;
    RLDraw121: TRLDraw;
    RLDraw122: TRLDraw;
    RLDraw123: TRLDraw;
    RLLabel158: TRLLabel;
    RLLabel159: TRLLabel;
    RLLabel160: TRLLabel;
    RLLabel161: TRLLabel;
    RLLabel162: TRLLabel;
    RLLabel163: TRLLabel;
    RLDBText186: TRLDBText;
    RLDBText187: TRLDBText;
    RLDBText188: TRLDBText;
    RLDBText189: TRLDBText;
    RLDBText190: TRLDBText;
    RLDBText191: TRLDBText;
    RLDBMemo14: TRLDBMemo;
    cds_cabecalhovalor_texto: TStringField;
    cds_cabecalhoemissao_texto: TStringField;
    cds_cabecalhorecebemos: TStringField;
    cds_cabecalhonumeronf: TFloatField;
    cds_cabecalhofantasia_cliente: TStringField;
    cds_cabecalhoTRANSPVOLESP: TStringField;
    RLPDF: TRLPDFFilter;
    RLWord: TRLRichFilter;
    cds_cabecalhoCRT: TIntegerField;
    tsCCe: TTabSheet;
    RLReport_CCe: TRLReport;
    RLBand1: TRLBand;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw10: TRLDraw;
    RLLabel9: TRLLabel;
    RLLabel12: TRLLabel;
    RLDraw11: TRLDraw;
    RLLabel14: TRLLabel;
    RLDBBarcode1: TRLDBBarcode;
    RLDBText3: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText7: TRLDBText;
    RLlogo_cce: TRLImage;
    RLDBMemo1: TRLDBMemo;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    cds_cce: TClientDataSet;
    src_cce: TDataSource;
    cds_cceEMITXNOME: TStringField;
    cds_cceemitEndComp: TStringField;
    cds_cceemitCidadeUF: TStringField;
    cds_cceemi_foneFax: TStringField;
    cds_cceemit_CEP: TStringField;
    cds_ccenum_prot: TStringField;
    RLMemo1: TRLMemo;
    cds_ccechave_acesso: TStringField;
    RLDraw5: TRLDraw;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    cds_cceemit_ie: TStringField;
    cds_cceemit_cnpj: TStringField;
    RLDraw1: TRLDraw;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    cds_ccemodnf: TStringField;
    RLDraw2: TRLDraw;
    RLDBText4: TRLDBText;
    RLLabel3: TRLLabel;
    cds_ccesernf: TStringField;
    RLDraw8: TRLDraw;
    RLDBText6: TRLDBText;
    RLLabel4: TRLLabel;
    cds_ccenumnf: TStringField;
    RLDraw9: TRLDraw;
    RLLabel5: TRLLabel;
    RLDBText8: TRLDBText;
    cds_ccemesano_emi: TStringField;
    RLDraw12: TRLDraw;
    RLLabel6: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    cds_cceconduso: TStringField;
    RLLabel7: TRLLabel;
    RLDraw14: TRLDraw;
    RLLabel8: TRLLabel;
    RLDBText9: TRLDBText;
    RLDBText52: TRLDBText;
    cds_ccenomcli_codigo: TStringField;
    cds_ccefantasia: TStringField;
    RLDraw15: TRLDraw;
    RLDBText13: TRLDBText;
    RLLabel11: TRLLabel;
    cds_ccedest_cnpj: TStringField;
    RLDBText53: TRLDBText;
    RLLabel57: TRLLabel;
    RLDraw53: TRLDraw;
    cds_ccedest_ender: TStringField;
    RLLabel16: TRLLabel;
    RLDBText16: TRLDBText;
    RLDraw18: TRLDraw;
    cds_ccedest_bairro: TStringField;
    RLLabel17: TRLLabel;
    RLDraw19: TRLDraw;
    RLDBText17: TRLDBText;
    cds_ccedest_cep: TStringField;
    RLDraw21: TRLDraw;
    RLLabel19: TRLLabel;
    RLDBText19: TRLDBText;
    cds_ccedest_cidade: TStringField;
    cds_ccedest_uf: TStringField;
    RLDraw54: TRLDraw;
    RLLabel58: TRLLabel;
    RLDBText54: TRLDBText;
    RLDraw22: TRLDraw;
    RLLabel20: TRLLabel;
    RLDBText51: TRLDBText;
    cds_ccedest_fonefax: TStringField;
    RLDraw24: TRLDraw;
    RLLabel22: TRLLabel;
    RLDBText21: TRLDBText;
    cds_ccedest_insc_estadual: TStringField;
    RLLabel59: TRLLabel;
    RLDBMemo3: TRLDBMemo;
    RLBand3: TRLBand;
    RLLabel13: TRLLabel;
    lblcce_seq: TRLLabel;
    lblcce_stat: TRLLabel;
    lblcce_datreg: TRLLabel;
    lblcce_numprot: TRLLabel;
    edtcce_seq: TRLDBText;
    cds_cceseq: TIntegerField;
    edtcce_stat: TRLDBText;
    cds_ccestat: TStringField;
    edtcce_datreg: TRLDBText;
    edtcce_numprot: TRLDBText;
    cds_ccecorrecao: TStringField;
    RLDBMemo2: TRLDBMemo;
    cds_ccechave_acesso_calc: TStringField;
    RLDraw13: TRLDraw;
    rlcabretrato_marca: TRLMemo;
    rlcab_paisagem_marca: TRLMemo;
    rldetretrato_marca: TRLLabel;
    rldet_paisagem_marca: TRLLabel;
    cds_cabecalhoccodcli: TIntegerField;
    RLDBBarcode2: TRLDBBarcode;
    RLDBBarcode3: TRLDBBarcode;
    Query1: TADOQuery;
    Query1LSLOGO: TBlobField;
    RLDBMemo4: TRLDBMemo;
    RLDraw16: TRLDraw;
    RLDraw17: TRLDraw;
    cds_cabecalhoIDENATOP: TStringField;
    RLLabel15: TRLLabel;
    RLLabel18: TRLLabel;
    cds_cabecalhohora_saida: TStringField;
    RLDBText14: TRLDBText;
    cds_cabecalhodatasaida: TStringField;
    ts_QrCode: TTabSheet;
    Label1: TLabel;
    edtText: TEdit;
    Label2: TLabel;
    cmbEncoding: TComboBox;
    Label3: TLabel;
    edtQuietZone: TEdit;
    PaintBox1: TPaintBox;
    RLBand_qrcode: TRLBand;
    RLImage_QrCode: TRLImage;
    cds_cabecalhomodelo: TIntegerField;
    cds_cabecalhoqrcode: TStringField;
    Image1: TImage;
    tsNotaServico: TTabSheet;
    RLReport_NFSE: TRLReport;
    RLNFSE_CAB01: TRLBand;
    cds_nfse_cab: TClientDataSet;
    cds_nfse_det: TClientDataSet;
    rlnfse_logo_pref: TRLImage;
    cds_nfse_cabdadosprefl01: TStringField;
    cds_nfse_cabdadosprefl02: TStringField;
    cds_nfse_cabdadosprefl03: TStringField;
    cds_nfse_cabdadosprefl04: TStringField;
    cds_nfse_cabnumnfse: TIntegerField;
    cds_nfse_cabdatemis: TDateTimeField;
    cds_nfse_cabcodverificacao: TStringField;
    cds_nfse_cabprest_cnpj: TStringField;
    cds_nfse_cabprest_razao: TStringField;
    cds_nfse_cabprest_im: TStringField;
    cds_nfse_cabprest_ender: TStringField;
    cds_nfse_cabprest_bairro: TStringField;
    cds_nfse_cabprest_municipio: TStringField;
    cds_nfse_cabprest_uf: TStringField;
    cds_nfse_cabprest_cep: TStringField;
    cds_nfse_cabprest_fone: TStringField;
    cds_nfse_cabtomador_razao: TStringField;
    cds_nfse_cabtomador_cnpj: TStringField;
    cds_nfse_cabtomador_im: TStringField;
    cds_nfse_cabtomador_ender: TStringField;
    cds_nfse_cabtomador_bairro: TStringField;
    cds_nfse_cabtomador_municipio: TStringField;
    cds_nfse_cabtomador_uf: TStringField;
    cds_nfse_cabtomador_cep: TStringField;
    cds_nfse_cabprest_cnae: TStringField;
    cds_nfse_cabpis_valor: TFloatField;
    cds_nfse_cabcofins_valor: TFloatField;
    cds_nfse_cabinss_valor: TFloatField;
    cds_nfse_cabir_valor: TFloatField;
    cds_nfse_cabcsll_valor: TFloatField;
    cds_nfse_cabtotal_servicos: TFloatField;
    cds_nfse_cabtotal_desc_incondicionado: TFloatField;
    cds_nfse_cabtotal_retencoes_federais: TFloatField;
    cds_nfse_cabtotal_liquido: TFloatField;
    cds_nfse_cabtotal_deducoes: TFloatField;
    cds_nfse_cabtotal_base_calculo: TFloatField;
    cds_nfse_cabissqn_aliquota: TFloatField;
    cds_nfse_cabissqn_valor: TFloatField;
    cds_nfse_cabinfimp_linha01: TStringField;
    cds_nfse_cabinfimp_linha02: TStringField;
    cds_nfse_detitem: TStringField;
    RLDBText15: TRLDBText;
    src_nfse_cab: TDataSource;
    src_nfse_det: TDataSource;
    cds_nfse_detdescricao: TMemoField;
    RLDraw20: TRLDraw;
    RLLabel21: TRLLabel;
    RLDBText18: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLLabel23: TRLLabel;
    RLDBText24: TRLDBText;
    RLLabel24: TRLLabel;
    RLDBText25: TRLDBText;
    RLNFSE_CAB02: TRLBand;
    RLImage_logo_prestador: TRLImage;
    RLLabel25: TRLLabel;
    RLLabel27: TRLLabel;
    RLDBText26: TRLDBText;
    RLLabel28: TRLLabel;
    RLDBText27: TRLDBText;
    RLLabel29: TRLLabel;
    RLDBText28: TRLDBText;
    RLLabel30: TRLLabel;
    RLDBText29: TRLDBText;
    RLLabel31: TRLLabel;
    RLDBText30: TRLDBText;
    RLLabel32: TRLLabel;
    RLDBText31: TRLDBText;
    cds_nfse_cabprest_mun_uf_cep_fone: TStringField;
    RLNFSE_CAB03: TRLBand;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLDBText32: TRLDBText;
    RLLabel35: TRLLabel;
    RLDBText33: TRLDBText;
    RLLabel36: TRLLabel;
    RLDBText34: TRLDBText;
    RLLabel37: TRLLabel;
    RLDBText35: TRLDBText;
    RLLabel38: TRLLabel;
    RLDBText36: TRLDBText;
    RLLabel39: TRLLabel;
    RLDBText37: TRLDBText;
    RLNFSE_DEET01: TRLBand;
    RLLabel40: TRLLabel;
    RLDBMemo5: TRLDBMemo;
    RLNFSE_ROD01: TRLBand;
    RLLabel41: TRLLabel;
    RLDBMemo9: TRLDBMemo;
    RLNFSE_ROD02: TRLBand;
    RLNFSE_ROD05: TRLBand;
    RLNFSE_ROD03: TRLBand;
    RLNFSE_ROD06: TRLBand;
    RLNFSE_ROD04: TRLBand;
    RLLabel42: TRLLabel;
    RLDBText38: TRLDBText;
    cds_nfse_cabprest_cnae_descricao: TStringField;
    RLDBText39: TRLDBText;
    RLPanel1: TRLPanel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLPanel2: TRLPanel;
    RLLabel45: TRLLabel;
    cds_nfse_cabpis_valor_texto: TStringField;
    cds_nfse_cabcofins_valor_texto: TStringField;
    cds_nfse_cabinss_valor_texto: TStringField;
    cds_nfse_cabir_valor_texto: TStringField;
    cds_nfse_cabcsll_valor_texto: TStringField;
    RLDBText40: TRLDBText;
    RLPanel3: TRLPanel;
    RLLabel46: TRLLabel;
    RLDBText41: TRLDBText;
    RLPanel4: TRLPanel;
    RLLabel47: TRLLabel;
    RLDBText42: TRLDBText;
    RLPanel5: TRLPanel;
    RLLabel48: TRLLabel;
    RLDBText43: TRLDBText;
    RLPanel6: TRLPanel;
    RLLabel49: TRLLabel;
    RLDBText44: TRLDBText;
    RLPanel7: TRLPanel;
    RLPanel8: TRLPanel;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    cds_nfse_cabsimbolo_moeda: TStringField;
    RLDBText45: TRLDBText;
    RLDBText46: TRLDBText;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLDBText55: TRLDBText;
    RLDBText56: TRLDBText;
    RLDBText57: TRLDBText;
    RLDBText58: TRLDBText;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
    RLDBText59: TRLDBText;
    RLDBText60: TRLDBText;
    RLLabel56: TRLLabel;
    RLDBText61: TRLDBText;
    RLDBText62: TRLDBText;
    RLLabel60: TRLLabel;
    RLDBText63: TRLDBText;
    RLDBText64: TRLDBText;
    RLLabel61: TRLLabel;
    RLDBText65: TRLDBText;
    RLDBText66: TRLDBText;
    cds_nfse_cabtotal_issqn_retido_tomador: TFloatField;
    RLLabel62: TRLLabel;
    RLDBText67: TRLDBText;
    RLDBText68: TRLDBText;
    RLLabel63: TRLLabel;
    RLDBText69: TRLDBText;
    RLDBText70: TRLDBText;
    RLLabel64: TRLLabel;
    RLDBText71: TRLDBText;
    RLDBText72: TRLDBText;
    RLPanel9: TRLPanel;
    RLLabel65: TRLLabel;
    RLLabel67: TRLLabel;
    RLDBText74: TRLDBText;
    RLLabel68: TRLLabel;
    RLDBText75: TRLDBText;
    RLDBText76: TRLDBText;
    RLLabel69: TRLLabel;
    cds_nfse_cablocal_servico_prestado: TStringField;
    cds_nfse_cablocal_imposto_devico: TStringField;
    RLDBText73: TRLDBText;
    RLPanel10: TRLPanel;
    RLLabel66: TRLLabel;
    RLDBText78: TRLDBText;
    RLPanel11: TRLPanel;
    RLLabel70: TRLLabel;
    RLDBText79: TRLDBText;
    RLPanel12: TRLPanel;
    RLLabel71: TRLLabel;
    RLDBText80: TRLDBText;
    RLPanel13: TRLPanel;
    RLLabel72: TRLLabel;
    RLDBText81: TRLDBText;
    RLLabel73: TRLLabel;
    RLDBText82: TRLDBText;
    RLDBText83: TRLDBText;
    cds_nfse_cabserv_prestado_codigo_municipio: TStringField;
    cds_nfse_cabimposto_devido_codigo_municipio: TStringField;
    cds_nfse_cabtomador_num_uf_cep_fone: TStringField;
    cds_nfse_cabOptanteSimplesNacional: TIntegerField;
    RLDBText86: TRLDBText;
    RLDBText87: TRLDBText;
    RLDBText88: TRLDBText;
    cds_nfse_cabinfadicionais: TMemoField;
    cds_cabecalhodatasaida_hora: TStringField;
    RLDBText89: TRLDBText;
    RLBand_linha: TRLBand;
    RLPanel_emitente: TRLPanel;
    rlLogo_Retrato_simples: TRLImage;
    rlRetratoSimplesEmiRazao: TRLDBText;
    rlRetratoSimplesEmiEnder: TRLDBMemo;
    rlRetratoSimplesEmiCidade: TRLDBText;
    rlRetratoSimplesEmiFone: TRLDBText;
    rlRetratoSimplesEmiCep: TRLDBText;
    rlcabretrato_bcicms: TRLMemo;
    RLDBText90: TRLDBText;
    cds_detalhebase_icms: TFloatField;
    cds_detalhevalor_ipi: TFloatField;
    rlcabretrato_vl_icms: TRLMemo;
    RLDBText91: TRLDBText;
    cds_detalhevalor_icms: TFloatField;
    lblcab_bcicms: TRLMemo;
    RLDBText92: TRLDBText;
    lblcab_vlicms: TRLMemo;
    RLDBText93: TRLDBText;
    cds_detalheCSTB_CBENEF: TStringField;
    rlcab_vdesc: TRLMemo;
    rldet_DETPRODVDESC: TRLDBText;
    cds_detalheDETPRODVDESC: TFloatField;
    cds_detalhevalor_total_menos_desconto: TFloatField;
    rlcab_retrato_vdesc: TRLMemo;
    rldet_retrato_vdesc: TRLDBText;
    RLretSimples_INFADICINFCPL: TRLDBMemo;
    TabSheet2: TTabSheet;
    cds_nfse_cabnumrps: TFloatField;
    cds_nfse_cabInformacoesComplementares: TMemoField;
    rlbandInfAdicional: TRLBand;
    RLDBMemo7: TRLDBMemo;
    RLLabel75: TRLLabel;
    RLDBText94: TRLDBText;
    RLImageMod01QrCode: TRLImage;
    cds_nfse_cabqrCode: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure bbProcessarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand_canhoto_simplesAfterPrint(Sender: TObject);
    procedure RLBand14AfterPrint(Sender: TObject);
    procedure RLBand1_cab02_simplesAfterPrint(Sender: TObject);
    procedure RLBand_rodape_simplesAfterPrint(Sender: TObject);
    procedure rl_band_cab02_simplesAfterPrint(Sender: TObject);
    procedure RLBand_Rod01_simplesAfterPrint(Sender: TObject);
    procedure rl_lat_DtRec_simplesAfterPrint(Sender: TObject);
    procedure rl_lat_recebemos_simplesAfterPrint(Sender: TObject);
    procedure rl_lat_ObsNFE_simplesAfterPrint(Sender: TObject);
    procedure rl_lat_Nota_simplesAfterPrint(Sender: TObject);
    procedure rl_lat_numcan_simplesAfterPrint(Sender: TObject);
    procedure rl_lat_Ass_SimplesAfterPrint(Sender: TObject);
    procedure rl_lat_borda_rec_simplesAfterPrint(Sender: TObject);
    procedure rl_lat_Borda_DtEmis_simplesAfterPrint(Sender: TObject);
    procedure RLBand17BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rl_Paisagem_SimplesBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand13BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand19BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure cds_cabecalhoCalcFields(DataSet: TDataSet);
    procedure PaintBox1Paint(Sender: TObject);
    procedure edtTextChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cds_detalheCalcFields(DataSet: TDataSet);
    procedure RLReport_NFSEBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
     mExisteBoleto: boolean;
     mCasasPU_NFE: String;
     mDESCCOMPSEGLIN: Boolean;
     AVISTASEMDUP: Boolean;
     QRCodeBitmap: TBitmap;
     mImprimirMarca: Boolean;
     mImprimirDesconto: Boolean;
     mDescricaoComplementar: boolean;

   procedure fAjustarCabecalhoRetrato(pVisivel: Boolean);

   procedure fAjustarNFPaisagem;

   procedure fAjustarNFRetrato;




   procedure QrCodeUpdate;


  public
    { Public declarations }
    Logomarca : Boolean;
    mLerDadosXml: TLerDadosXml;



    function fLerdadosXml(pLerDadosXml: TLerDadosXml; out pMensagem: string): Boolean;

    function fLerdadosXml_cce(pSalvarPDFPara,pSalvarXmlPara,pNomeArq: String;pChave,pChave_ano,pCodEmp,pChaveCC: Integer; out pmensagem: string): Boolean;

    Procedure SaveBitmap(pNomeArq: String);


    function fLerdadosNFSE(pSalvarPDFPara,pSalvarXmlPara,pNomeArq: String;pChave,pChave_ano,pCodEmp: Integer; pEnviar: Boolean;out pMensagem: string): Boolean;


    function fLerdadosXml_novarotina(pSalvarPDFPara,pSalvarXmlPara: String; pXml: String; pEnviar: Boolean; out pMensagem: string;pchave,pordem,pcodemp,plotseq: integer): Boolean;

    procedure Update;

    procedure fVerificarTitulosEAjustar(pChave,pChaveAno,pCodemp: integer; pValorLiquido: Real);


  end;


procedure AddBmpToStream(out s:tstream; Bmp:TBitmap);

procedure GetBmpFromStream(s:tstream; Bmp:TBitmap);



var
  Frm_NFE_Impressao: TFrm_NFE_Impressao;


implementation

uses S_DM1_ADO, Func, Math, lerarq, S_DM1, S_DM4, S_Memo_Quebra, S_DM2,
  S_EnviarEmail, func_excecoes, Func2;

{$R *.dfm}


function TFrm_NFE_Impressao.fLerdadosXml(pLerDadosXml: TLerDadosXml; out pMensagem: string): Boolean;

//function TFrm_NFE_Impressao.fLerdadosXml(pSalvarPDFPara,pSalvarXmlPara,pNomeArq: String;pChave,pChave_ano,pCodEmp: Integer; pEnviar: Boolean; out pMensagem: string;pModelo: String): Boolean;
var
  ado_query: tadoQuery;
var vXMLDoc: TXMLDocument;
    NodeArmas,NodeMed,NodeMaster,NodePai,NodeSec,NodeTmp,NodeImposto,NodeTmp_Imp,NodeTmp_ImpCateg,nodeProtocolo: IXMLNode;
mLotes,mDados_Lid: String;
mArmas: String;
mItem: Integer;
x: Integer;
streStream: TStringStream;
mQtdLote,mQtdPed: Real;
arqxmlclient: String;
arqDanfe: String;
numNf: String;
stream_imagem: TStream;
J : TJPEGImage;

stream_qrcode: TStream;




   procedure pGerarDup;
   var
   query_pfp: TQuery;

   begin

   try
       fGerarEvento('9700-continua');

       NodeSec := NodeMaster.ChildNodes.FindNode('total');
       fGerarEvento('973-continua');

       NodeSec := NodeMaster.ChildNodes.FindNode('pag');
       fGerarEvento('975-continua');

       NodeSec := NodeSec.ChildNodes.FindNode('detPag');
       fGerarEvento('979-continua');

       cds_vcto.Close;
       cds_vcto.Open;


       if Nodesec<>nil then
          begin
          NodeSec.ChildNodes.First;
          repeat
          mDados_Lid:=trim(NodeSec.ChildNodes['tPag'].text);
          fGerarEvento('990-continua');

    //      SHOWmessage('valor achado '+mdados_lid);

          if valint(mDados_Lid)=90 then
             begin
             cds_vcto.EmptyDataSet;
             EXIT;
             end;
          NodeSec := NodeSec.NextSibling;
       until
          NodeSec = nil;
          end;
       fGerarEvento('1003-continua');

       query_pfp:=TQuery.create(nil);
       query_pfp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
       query_pfp.SQL.Add('select PFPNOMFOR, '
//                        +fRetornaCaseFormaPagamentoIGestaoParaSge('PFPVINCULO')+' as PFPVINCULO '
                        +'FPVINCULO_TPAG as FPVINCULO '
                          +', 0 AS PFPVALOR_SERVICO,PFPVALOR,PFPNOMFOR,PFPVALOR,PFPDATA '
                        +', PFPVINCULO AS vinculo_bol '
                        +',PFPNSU_NUMERO_AUTORIZACAO '
                        +',case when FPCODCLI > 0 then (select max(CCNPJ) from CADCLI where CCODCLI=FPCODCLI) '
                        +' else 0 end as calc_cnpj '
                        +' ,FPBANDEIRA_OPERADORA as bandeira_cartao_sefaz '
                        +' ,PFPNSU_NUMERO_AUTORIZACAO,PFPSEQ '
                        +' FROM CADPFP,CADFP '
                        +' WHERE FPCODIGO=PFPFORMA '
                        +' and PFPCODEMP=0'+floattostr(pLerDadosXml.pCodEmp)
                        +' and PFPLOTSEQ=0'+FloatToStr(pLerDadosXml.pChaveAno)
                        +' and PFPCHAVE=0'+FloatToStr(pLerDadosXml.pChave)
                        +' order by PFPDATA ');

       try
          query_pfp.Open;
       except
          ex_erroSql_Novo(query_pfp,16745,'SGE','CADVER');
          end;
       fGerarEvento('1027-continua');

       While not query_pfp.eof do
          begin
          cds_vcto.Append;
          cds_vctoVDATA.AsDateTime:=query_pfp.fieldbyname('PFPDATA').asdatetime;
          cds_vctoVVALOR.asFloat  :=query_pfp.fieldbyname('PFPVALOR').asfloat;
          cds_vctonumdup.AsString  :=cds_cabecalhonumeronf.AsString+'-'+CHR(64+query_pfp.fieldbyname('PFPSEQ').AsInteger);
          if query_pfp.fieldbyname('vinculo_bol').asinteger=16 then
             mExisteBoleto:=true;

          cds_vcto.Post;
          query_pfp.Next;
          end;
       query_pfp.close;
       fGerarEvento('1039-continua');

       freeandnil(query_pfp);
   except on e : exception do
      fGerarEvento('9700-continua '+e.message );
      end;

   end;


   procedure fAdicionarBoletosNoEmail;
   var
   form_ebol_dar: Tfrm_ebol;
   mNomeJpeg: String;
   mQtdTent: integer;
   x: integer;
   query_conta: tQuery;

   begin
   if (pLerDadosXml.pCodBcoCob=0) then
       exit;

   if not flcadbco(1,0,0,intToStr(pLerDadosXml.pCodBcoCob)) then
      begin
      exit;
      end;



{

         if flcadp01(0,pLerDadosXml.pCODEMP,pLerDadosXml.pChaveAno,
                     floattoStr(pLerDadosXml.pChave),'') then
            begin
            if fLerGenerico_query('CADDAR','COUNT(*) AS QTD','CRNPED='+floatToStr(pLerDadosXml.pChave),query_conta) then
               begin
               if query_conta.Fields[0].AsInteger<1 then
                  Fgravardup(0,0,0,FormatFloat('000000',DM1.Tb_Ped01P1NUMNF.Value),0,0,DM1.Tb_Ped01P1TIPO.Asinteger);
               end;
            query_conta.close;
            freeandNil(query_conta);
            end;
 }
   Application.CreateForm(Tfrm_ebol, form_ebol_dar);


// inicio dos boletos


   form_ebol_dar.Tb_Dup.Close;
   form_ebol_dar.Tb_Dup.Sql.Clear;
   form_ebol_dar.Tb_Dup.SQl.Add('Select CRCODEMP,CRDTVCTO,CRDTEMIS,CRNUMERO,CRDESD,CRDUP,CRNOSNUM, '
                    +'       CRDNOSNUM,CRCODDIG,CRCODBAR,CRACEITE,CRESPECIE,CRCODBCO, '
                     +'       CRINST01,CRINST02,CRINST03,CRINST04, '
                     +'       CRVALOR,CRDESCF,CRDTDESCF,CRJURD,CRDESCD,'
                     +'       CRNFACUM,CRCODCLI,CRCODVEN,CRTABPV,CRCODPV '
                     +' ,CRMULTA,CRQTDDM, CRCODFPGTO '
                     +' ,CRQTDPARC,CRNUMPARC,CRCOMPETENCIA_DTINICIO,CRID_NEW '
                     +' from caddar, cadfp where CRSTATUS<>9 and fpcodigo=crcodfpgto and fpvinculo=16 '
                     +'  and CRSTATUS<>9 ');
   form_ebol_dar.Tb_Dup.SQl.add(' and CRCODEMP=0'+FloatToStr(pLerDadosXml.pCodEmp));
   form_ebol_dar.Tb_Dup.SQL.Add(' and CRNPED=0'+FloatToStr(pLerDadosXml.pChave));
   form_ebol_dar.Tb_Dup.SQL.add(' Order by CRNUMERO,CRDESD');
   try
      form_ebol_dar.Tb_Dup.Open;
   except on e : exception do
      begin
      ex_erroSql_Novo(form_ebol_dar.Tb_Dup,1138,'SGE','CADDAR');
      end;
      end;




   if not form_ebol_dar.Tb_Dup.IsEmpty then
      begin

       mNomeJpeg:= '\sge\temp\BOLETO_'+form_ebol_dar.Tb_DupCRNUMERO.AsString+'.PDF';

       mQtdTent:=0;
       While true do
          begin
          if FileExists(mNomeJpeg) then
             begin
             if not deletefile(mNomeJpeg) then
                begin
                mNomeJpeg:='\sge\temp\BOLETO_'+form_ebol_dar.Tb_DupCRNUMERO.AsString+'_'+inttostr(mQtdTent)+'.PDF';
                mQtdTent:=mQtdTent+1;
                end
             else
                break;
             end
          else
             break;
          end;



      if trim(form_ebol_dar.Tb_Dup.fieldbyname('CRNOSNUM').AsString)='' then
         begin

         if fTipoBoletoPadrao(pLerDadosXml.pCodEmp)=0 then
            begin
            form_ebol_dar.fAtualizaNosNum(1, // nao calcula codigo barras
               0,
               DM1.Tb_BcoBCIMPPVREP.AsInteger,
                DM1.Tb_BcoBCINST01.Value,
                DM1.Tb_BcoBCINST02.Value,
                DM1.Tb_BcoBCINST03.Value,
                DM1.Tb_BcoBCINST04.Value,
                0);
            end
         else
            begin
            form_ebol_dar.fAtualizaNosNum(0,
                0,
                DM1.Tb_BcoBCIMPPVREP.AsInteger,
                DM1.Tb_BcoBCINST01.Value,
                DM1.Tb_BcoBCINST02.Value,
                DM1.Tb_BcoBCINST03.Value,
                DM1.Tb_BcoBCINST04.Value,
                0);
            end;
         end;
      form_ebol_dar.Tb_Dup.First;
      if not form_ebol_dar.Tb_Dup.Eof then
         begin

         form_ebol_dar.mDadosBoleto.pTipo  :=1;
         form_ebol_dar.mDadosBoleto.pCodEmp:=form_ebol_dar.Tb_DupCRCODEMP.AsInteger;
         form_ebol_dar.mDadosBoleto.pCodBco:=form_ebol_dar.Tb_DupCRCODBCO.AsInteger;
         form_ebol_dar.mDadosBoleto.pNumIni:=form_ebol_dar.Tb_DupCRNUMERO.AsInteger;
         form_ebol_dar.mDadosBoleto.pNumFin:=form_ebol_dar.Tb_DupcRNUMERO.AsInteger;
         form_ebol_dar.mDadosBoleto.pDtIni :=pdatanula;
         form_ebol_dar.mDadosBoleto.pDtFin :=pdatanula;
         form_ebol_dar.mDadosBoleto.pParc  :='';
         form_ebol_dar.mDadosBoleto.pPend  :=true;
         form_ebol_dar.mDadosBoleto.pChavePed  :=pLerDadosXml.pChave;
         form_ebol_dar.mDadosBoleto.pLotSeqPed :=0;


         if DM4.Tb_Par01PBOL_PADRAO.Value=0 then
            form_ebol_dar.femibol(form_ebol_dar.mDadosBoleto)
         else
            begin
            fGerarEvento('2679 impressao a laser');
            if FileExists('\SGE\LOGBAN.JPG') then
               DeleteFile('\SGE\LOGBAN.JPG');
            if form_ebol_dar.Tb_Dup.IsEmpty then
               fGerarEvento('2684 o arquivo esta vazio');

            form_ebol_dar.Tb_Dup.First;
            form_ebol_dar.fCarregardadosboletos(1);
            fGerarEvento('gerou o novo arquivo padrao do boleto '+DM4.Tb_Par01PBOL_PADRAO.asstring);

            if fTipoBoletoPadrao(pLerDadosXml.pCodEmp)=2 then
               begin
               if not (DM1.Tb_BcoBCLOGO.IsNull) and (DM1.Tb_BcoBCLOGO.Value<>'') then
                  begin
                  DM1.Tb_BcoBCLOGO.SaveToFile('C:\SGE\LOGBAN.JPG');
                  form_ebol_dar.rlLogo01.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
                  form_ebol_dar.rlLogo02.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
                  form_ebol_dar.rlLogo03.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
                  end;
               if flcadimp_sys(1,form_ebol_dar.Tb_DupCRCODEMP.AsInteger,0,'BOLETAS_LA') then
                  begin
                  for x:=0 to Printer.printers.Count-1 do
                     begin
                     if DM4.Tb_Imp_SysCIPORTA.Value=printer.Printers[x] then
                        begin
                        RLPrinter.PrinterIndex:=x;
                        break;
                        end
                     end;
                  end;
               try
                  if mNomeJpeg<>'' then
                     begin
                     form_ebol_dar.RL_BOLETAS.SaveToFile(mNomeJPeg);
                     if FileExists(mNomeJpeg) then
                        Frm_EnviarEmail.lbxAnexos.Items.Add(mNomeJpeg);

                     end

                  else
                     begin
                     form_ebol_dar.RL_BOLETAS.PreviewModal;
                     end
               except
                  fmensagem('Erro ao Tentar Imprimir a Boleta Grande!',0,['0'],0);
                  end;
               end
            else
               begin
               if not (DM1.Tb_BcoBCLOGO.IsNull) and (DM1.Tb_BcoBCLOGO.Value<>'') then
                  begin
                  DM1.Tb_BcoBCLOGO.SaveToFile('C:\SGE\LOGBAN.JPG');
                  form_ebol_dar.rlLogo01.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
                  form_ebol_dar.rlLogo02.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
                  form_ebol_dar.rlLogo03.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
                  end;
               if flcadimp_sys(1,form_ebol_dar.Tb_DupCRCODEMP.AsInteger,0,'BOLETAS_LA') then
                  begin
                  for x:=0 to Printer.printers.Count-1 do
                     begin
                     if DM4.Tb_Imp_SysCIPORTA.Value=printer.Printers[x] then
                        begin
                        RLPrinter.PrinterIndex:=x;
                        break;
                        end
                     end;
                  end;
               try
                  if mNomeJpeg<>'' then
                     begin
                     form_ebol_dar.RL_BOLETAS.SaveToFile(mNomeJPeg);
                     if FileExists(mNomeJpeg) then
                        Frm_EnviarEmail.lbxAnexos.Items.Add(mNomeJpeg);
                     end
                  else
                     begin
                     form_ebol_dar.RL_BOLETAS.PreviewModal;
                     END
               except
                  fmensagem('Erro ao Tentar Imprimir a Boleta Grande!',0,['0'],0);
                  end;
               end;
            end;
         end;
       DM1.Query5.Close;
       DM1.Query5.SQL.Clear;
       DM1.Query5.SQL.Add('Update CADDAR set ');
       DM1.Query5.SQL.Add(' CREMIBLQ=1 ');
       if not DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
          begin
          DM1.Query5.Params.CreateParam(ftString,'CRCODEMP',ptInput);
          DM1.Query5.SQL.Add(' where CRCODEMP=:CRCODEMP and CRNUMERO=:CRNUMERO  ');
          end
       else
         DM1.Query5.SQL.Add(' where CRNUMERO=:CRNUMERO ');
       DM1.Query5.SQL.Add(' and CRDESD=:CRDESD ');
       DM1.Query5.SQL.Add(' and CRDUP =:CRDUP ');
       DM1.Query5.SQL.Add(' and CRDTEMIS=:CRDTEMIS ');
       DM1.Query5.SQL.Add(' and CREMIBLQ<>1');
       form_ebol_dar.Tb_Dup.First;
       While not form_ebol_dar.Tb_Dup.Eof do
          begin
          if not DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
             DM1.Query5.ParamByName('CRCODEMP').AsFloat:=form_ebol_dar.Tb_DupCRCODEMP.AsFloat;
          DM1.Query5.ParamByName('CRNUMERO').AsFloat   :=form_ebol_dar.Tb_DupCRNUMERO.AsFloat;
          DM1.Query5.ParamByName('CRDESD').AsString    :=form_ebol_dar.Tb_DupCRDESD.AsString;
          DM1.Query5.ParamByName('CRDUP').AsFloat      :=form_ebol_dar.Tb_DupCRDUP.AsFloat;
          DM1.Query5.ParamByName('CRDTEMIS').AsDateTime:=form_ebol_dar.Tb_DupCRDTEMIS.AsDateTime;
          try
             DM1.Query5.ExecSQL;
             fdm1StartCommit;
           except
              DM1.Query5.Sql.sAvetofile(mpastatemp + 'SQL.TXT');
              end;
          form_ebol_dar.Tb_Dup.Next;
          end;
       form_ebol_dar.Free;
       form_ebol_dar:=nil;
// termino dos boletos
       mNomeJpeg:='';
       end;
   end;


begin

mImprimirDesconto:=false;

if flfilpad(-1,'_VENDA_PRE','CB_IMPDESC_PAISAGEM') then
   begin
   mImprimirDesconto:=DM4.Tb_FilPad2FPVALOR.AsString='true';
   end;


pmensagem:='';
if flfilpad(0,'_principal','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_DESCCOMPSEGLIN',[]) then
      begin
      if DM4.Tb_FilPad2FPVALOR.AsString = 'true' then
         mDESCCOMPSEGLIN:=true
      else
         mDESCCOMPSEGLIN:=false;
      end
   else
      mDESCCOMPSEGLIN:=false;


   AVISTASEMDUP:=false;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_AVISTASEMDUP',[]) then
      AVISTASEMDUP:=DM4.Tb_FilPad2FPVALOR.AsString = 'true';





   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_EXIBIRMARCA',[]) then
     begin
     if ValInt(DM4.Tb_FilPad2FPVALOR.AsString) = 0 then
       mImprimirMarca:=true
     else if ValInt(DM4.Tb_FilPad2FPVALOR.AsString) = 1 then
       mImprimirMarca:=False
     else
       if fmensagem('Deseja Imprimir Marca?',0,['1','2'],2)=mrYes then
         mImprimirMarca := True
       else
         mImprimirMarca:=False;
     end
   else
     begin
     if fmensagem('Deseja Imprimir Marca?',0,['1','2'],2)=mrYes then
       mImprimirMarca := True
     else
       mImprimirMarca:=False;
     end;


  end;
  fGerarEvento('1076-inicio');


try
   deletefile('C:\SGE\LOGNFE.JPG');
except
   Messagedlg('Erro ao Deletar Logomarca!',mtError,[mbOk],0);
   end;
try
   if Logomarca then
      begin
//      if DM4.Tb_ParGer02PG2NFETPIMP.AsInteger=0 then
         begin
// inicio da logomarca
         Query1.Close;
         Query1.Sql.Clear;
         Query1.Sql.add('Select LSLOGO from CADLOGSIS where LSCHAVE='+chr(39)+'LOGO_NFE'+chr(39));
         if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
            Query1.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                                   +' or LSCODEMP is null )');
         try
            Query1.Open;

         except on e : exception do
            begin
            MessageDlg('Erro 596!' + e.Message ,mtWarning,[mbOk],0);
            result:=false;
            exit;
            end;
            end;
         if (not Query1.IsEmpty) and (not Query1LSLOGO.IsNull) then
            begin
            try
                if rlLogo_Retrato_simples.Visible=false then
                   fAjustarCabecalhoRetrato(true);


               J := TJPEGImage.Create;
               stream_imagem:=tStream.Create;
               stream_imagem:=Query1.CreateBlobStream(Query1LSLOGO, bmRead);
//               Query1LSLOGO.SaveToStream(stream_imagem);
               J.LoadFromStream(stream_imagem);
               rlLogo_Retrato_simples.Picture.Assign(j);
               rlLogo_Paisagem_simples.Picture.Assign(j);
               FreeAndNil(j);
               FreeAndNil(stream_imagem);

            except
               end;
            end
        else
           begin
           rlLogo_Retrato_simples.Picture:=nil;
           rlLogo_Paisagem_simples.Picture:=nil;
           if rlLogo_Retrato_simples.Visible=true then
              fAjustarCabecalhoRetrato(false);
           end;
        end;
      end
    else
      begin
      if rlLogo_Retrato_simples.Visible=true then
         fAjustarCabecalhoRetrato(false);

       rlLogo_Retrato_simples.Picture:=nil;
       rlLogo_Paisagem_simples.Picture:=nil;
      end;

  if not mImprimirMarca then
    begin
    rlcabretrato_marca.Visible:=False;
    rlcabretrato_nome.Width:=rlcabretrato_nome.Width+rlcabretrato_marca.Width;
    rlcab_paisagem_marca.Visible:=False;
     lblcabpaisagem_nome.Width:=lblcabpaisagem_nome.Width+rlcab_paisagem_marca.Width;
    end
  else
    begin
    rlcabretrato_marca.Visible:=True;
    rlcab_paisagem_marca.Visible:=True;
    end;

    if mImprimirDesconto = true then
       begin
       rlcab_vdesc.Visible:=True;
       rlcab_retrato_vdesc.Visible:=true;
       RLDBT_DETPRODVPROD.DataField:='valor_total_menos_desconto';

       end
    else
       begin
       lblcabpaisagem_nome.Width := lblcabpaisagem_nome.Width + rlcab_vdesc.Width;
       rlcab_vdesc.Visible:=false;
       rlcab_retrato_vdesc.Visible:=false;
       rlcabretrato_nome.Width:=rlcabretrato_nome.Width+rlcab_retrato_vdesc.Width;
       end;

    rldet_paisagem_marca.Visible:=rlcab_paisagem_marca.Visible;
    rldetretrato_marca.Visible:=rlcabretrato_marca.Visible;

    rldet_retrato_vdesc.Visible := rlcab_retrato_vdesc.Visible;
    rldet_DETPRODVDESC.Visible:=rlcab_vdesc.Visible;

    fAjustarNFPaisagem;
    fAjustarNFRetrato;


   if cds_cabecalho.Active then
      cds_cabecalho.EmptyDataSet;
   cds_cabecalho.Close;
   if cds_detalhe.Active then
      cds_detalhe.EmptyDataSet;
   cds_detalhe.close;

   cds_cabecalho.Open;
   cds_detalhe.Open;
   fGerarEvento('1167-continua');

   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(1,'CADCLI','CCODEMP','NSCODEMP','CCODCLI','NSCODCLI');
   la_instrucao:=la_instrucao+' and ';
   fInnerJoin3(1,'CADP01','P1CODEMP','NSCODEMP','P1LOTSEQ','NSLOTSEQ_CP','P1CHAVE','NSCHAVEP');
   if pLerDadosXml.pModelo='65' then
      begin
      la_instrucao:=la_instrucao+' and ';
      fInnerJoin3(1,'CADNS_NFEEVE','NSE_CODEMP','NSCODEMP','NSE_ORDEMP','NSORDEMP','NSE_CHAVEP','NSCHAVEP');
      end;


   ado_query:=TADOQuery.Create(nil);
   ado_query.Connection:=DM1_ADO.ADOConnection1;
   ado_query.Close;
   ado_query.SQL.Clear;
   ado_query.SQL.Add('Select ');
   if pLerDadosXml.pModelo='65' then
      ado_query.SQL.add('NSE_XML_EVENTO ')
  else
      ado_query.SQL.add('NSNFE_XML_CLIENTE ');
  ado_query.SQL.add(' AS NSNFE_XML_CLIENTE,CDENOM,case when P1QTDDECPU<0 then 0 ELSE P1QTDDECPU END AS P1QTDDECPU from CADNS  '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_instrucao='','',la_instrucao+' and ')
                    +'  NSCHAVEP=:CHAVE '
                    +' and NSLOTSEQ_CP=:CHAVE_ANO '
                    +' and NSCODEMP=:CODEMP ');
//                            +'  and NSTIPO<2 ' );
   if pLerDadosXml.pModelo='65' then
      ado_query.SQL.add(' and not NSE_XML_EVENTO is null ');


   ado_query.Parameters.ParamByName('CHAVE').Value:=pLerDadosXml.pChave;
   ado_query.Parameters.ParamByName('CHAVE_ANO').Value:=pLerDadosXml.pChaveAno;
   ado_query.Parameters.ParamByName('CODEMP').Value:=pLerDadosXml.pCodEmp;

//   ado_query.SQL.SaveToFile('c:\nf.txt');
   try
      ado_query.Open;

   except
       ado_query.SQL.SaveToFile('c:\nf.txt');
       MessageDlg('Erro 684596!',mtWarning,[mbOk],0);
       result:=false;
       exit;
       end;

   fGerarEvento('1217-continua');

   if trim(pLerDadosXml.pNomeArq)='' then
      begin
      if ado_query.IsEmpty then
         begin
         freeandnil(ado_query);
         result:=false;
         MessageDlg('Erro 1295 Nota nao encontrada!',mtWarning,[mbOk],0);

         exit;
         end;
      if ado_query.FieldByName('P1QTDDECPU').Value<1 then
         mCasasPU_NFE:=mCasasPu
      else
         mCasasPU_NFE:='#,##0.'+insere('0','0',ado_query.FieldByName('P1QTDDECPU').asinteger);
      cds_detalheDETPRODVUNCOM.DisplayFormat:=mCasasPU_NFE;
      if trim(pLerDadosXml.pSalvarXmlPara)<>'' then
         (ado_query.FieldByName('NSNFE_XML_CLIENTE') as TMemoField).SaveToFile(pLerDadosXml.pSalvarXmlPara);
      streStream := TStringStream.Create( ado_query.FieldByName('NSNFE_XML_CLIENTE').AsString);
     // Cria a variável baseada no TXMLDocument
      vXMLDoc := TXMLDocument.Create(self);
      vXMLDoc.LoadFromstream(streStream);

      end
   else
      begin
      if not FileExists(pLerDadosXml.pNomeArq) then
         begin
         MessageDlg(('Nao Foi Possivel encontrar o arquivo: '+pLerDadosXml.pNomeArq),mtWarning,[mbOk],0);
         result:=false;
         exit;
         end;
      try
          vXMLDoc := TXMLDocument.Create(self);
      except
         MessageDlg('Erro 720 ao criar o xml document!',mtWarning,[mbOk],0);
          result:=false;
          exit;
         end;
      try
          vXMLDoc.LoadFromFile(pLerDadosXml.pNomeArq);
      except
          MessageDlg('Erro 919 ao ler o arquivo '+pLerDadosXml.pNomeArq+'!',mtWarning,[mbOk],0);
          result:=false;
          exit;
         end;
      end;
   // Le conteúdo do arquivo XML informado
   //vXMLDoc.LoadFromFile(pNomeArq);
   // Poderia ser uma URL como abaixo:
   //vXMLDoc.FileName := 'http://www.caiooliveira.com.br/?feed=rss2';
   //vXMLDoc.Active := True;

   //vXMLDoc.Active:=True;

   NodeMaster := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('infNFe');

   if NodeMaster=nil then
      begin
      fGerarEvento('1277-node master nil');

      NodeMaster:=vXMLDoc.DocumentElement.childNodes.First;
      NodePai:=vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('emit');
      end
   else
      NodePai:=NodeMaster.ChildNodes.FindNode('emit');




   if NodePai=nil then
      begin
      fGerarEvento('1290-node pai vazio');

      MessageDlg('Não é um XML de Nota Fiscal Válido!',mtWarning,[mbOk],0);
      result:=false;
      FreeAndNil(vXMLDoc);
      exit;
      end;
   // Esse nó vai ser usado no LOOP

   NodeSec := NodePai;
   // Posiciona o primeiro elemento encontrado
   NodeSec.ChildNodes.First;
   cds_cabecalho.Append;
   cds_cabecalhoCHAVE_ACESSO.Value  :=NodeMaster.GetAttributeNS('Id','');
   if trim(cds_cabecalhoCHAVE_ACESSO.Value)<>'' then
      cds_cabecalhoCHAVE_ACESSO.Value  :=copy(cds_cabecalhoCHAVE_ACESSO.Value,4,44);

   if Trim(cds_CabecalhoCHAVE_ACESSO.AsString) <> '' then
      begin
      cds_Cabecalhochave_acesso_calc.Value := Copy(cds_CabecalhoCHAVE_ACESSO.AsString,1,2)+'.'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,3,2)+'.'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,5,2)+'.'+
                            Copy(cds_CabecalhoCHAVE_ACESSO.AsString,7,2)+'.'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,9,2)+'.'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,11,3)+'.'+
                            Copy(cds_CabecalhoCHAVE_ACESSO.AsString,14,3)+'/'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,17,4)+'-'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,21,2)+'-'+
                            Copy(cds_CabecalhoCHAVE_ACESSO.AsString,23,3)+'.'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,26,3)+'.'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,29,3)+'-'+
                            Copy(cds_CabecalhoCHAVE_ACESSO.AsString,32,3)+'-'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,35,3)+'.'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,38,3)+'.'+
                            Copy(cds_CabecalhoCHAVE_ACESSO.AsString,41,3)+'-'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,44,1);
      end;


   cds_cabecalhoEMITXNOME.Value:=NodeSec.ChildNodes['xNome'].Text;
   cds_cabecalhoemicidadeuf.Value:=NodeSec.ChildNodes['enderEmit'].ChildNodes['xMun'].text+'-'
                                  +NodeSec.ChildNodes['enderEmit'].ChildNodes['UF'].text;
   cds_cabecalhoEMITIE.Value     :=NodeSec.ChildNodes['IE'].text;
   cds_cabecalhoEMITIEST.Value  :=NodeSec.ChildNodes['IEST'].text;
   cds_cabecalhoCRT.Value        :=valint(NodeSec.ChildNodes['CRT'].text);

   cds_cabecalhoendereco_comp.Value     :=NodeSec.ChildNodes['enderEmit'].ChildNodes['xLgr'].text;
      cds_cabecalhoendereco_comp.Value     :=cds_cabecalhoendereco_comp.Value+' '+
        fXNroValido(NodeSec.ChildNodes['enderEmit'].ChildNodes['nro'].text);
   cds_cabecalhoendereco_comp.Value     :=cds_cabecalhoendereco_comp.Value+' '+
      NodeSec.ChildNodes['enderEmit'].ChildNodes['xCpl'].text+' '+
      NodeSec.ChildNodes['enderEmit'].ChildNodes['xBairro'].text;

   cds_cabecalhoemicidadeuf.Value     :=NodeSec.ChildNodes['enderEmit'].ChildNodes['xMun'].text
                                       +' - '+NodeSec.ChildNodes['enderEmit'].ChildNodes['UF'].text;
   cds_cabecalhoemit_cnpj.Value       :=FormatFloat(pDFCNPJ, fsonumero(NodeSec.ChildNodes['CNPJ'].text));

   cds_cabecalhofone_fax.Value        :=MaskFone(NodeSec.ChildNodes['enderEmit'].ChildNodes['fone'].text);

   if (fsonumero(NodeMaster.ChildNodes['dest'].ChildNodes['CNPJ'].text)=DM1.Tb_EmpCGC.AsFloat)
      and (valfloat(DM1.Tb_EmpFAX.AsString)>0) then
      begin
      if valfloat(cds_cabecalhofone_fax.Value)>0 then
         cds_cabecalhofone_fax.Value:=cds_cabecalhofone_fax.Value+'/';
      cds_cabecalhofone_fax.Value:=cds_cabecalhofone_fax.Value+MaskFone(NodeSec.ChildNodes['enderEmit'].ChildNodes['fone'].text);

      end;

   cds_cabecalhocep_emit.Value        :=MaskCep(NodeSec.ChildNodes['enderEmit'].ChildNodes['CEP'].text);
   cds_cabecalhosaida_entrada.Value   :=NodeMaster.ChildNodes['ide'].ChildNodes['tpNF'].text;

{   if NodeMaster.ChildNodes['ide'].ChildNodes['tpNF'].text='0' then
     cds_cabecalhosaida_entrada.Value   :='2'
   else
     cds_cabecalhosaida_entrada.Value   :='1';
     }
   cds_cabecalhomodelo.Value          :=valint(NodeMaster.ChildNodes['ide'].ChildNodes['mod'].text);

   cds_cabecalhoIDENNF.Value          :=NodeMaster.ChildNodes['ide'].ChildNodes['nNF'].text;
   cds_cabecalhonumeronf.value        :=fsonumero(cds_cabecalhoIDENNF.Value);
   mcinst:=NodeMaster.ChildNodes['ide'].ChildNodes['dEmi'].text;
   if fsonumero(mcinst)>0 then
      begin
      try
         cds_cabecalhoIDEDEMI.Value          :=StrToDate(copy(mcinst,09,02)+'/'+copy(mcinst,6,2)+'/'+copy(mcinst,1,4));
      except
         end;
      end
   else
      begin
      mcinst:=NodeMaster.ChildNodes['ide'].ChildNodes['dhEmi'].text;
      if fsonumero(mcinst)>0 then
         begin
         try
            cds_cabecalhoIDEDEMI.Value          :=StrToDate(copy(mcinst,09,02)+'/'+copy(mcinst,6,2)+'/'+copy(mcinst,1,4));
         except
            end;
         end

      end;
   fGerarEvento('1380 -continua');


   cds_cabecalhoDATASAIDA.Value :=fExtrairDataHoraXml('D',NodeMaster.ChildNodes['ide'].ChildNodes['dhSaiEnt'].text);
   cds_cabecalhohora_saida.Value:=fExtrairDataHoraXml('H',NodeMaster.ChildNodes['ide'].ChildNodes['dhSaiEnt'].text);



   cds_cabecalhoIDESERIE.Value        :=NodeMaster.ChildNodes['ide'].ChildNodes['serie'].text;
   cds_cabecalhoIDENATOP.Value        :=NodeMaster.ChildNodes['ide'].ChildNodes['natOp'].text;
   cds_cabecalhoDESTISUF.Value        :=NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['UF'].text;
   //cds_cabecalhochave_acesso_calc.Value  :=NodeMaster.ChildNodes['Id'].text;
   cds_cabecalhonomcli_codigo.Value   :=NodeMaster.ChildNodes['dest'].ChildNodes['xNome'].text;
   try
      cds_cabecalhonum_prot.Value        :=vXMLDoc.DocumentElement.ChildNodes[1].ChildNodes['infProt'].ChildNodes['nProt'].Text;
   except
      cds_cabecalhonum_prot.Value        :='APENAS PREVIEW SEM VALIDADE FISCAL';
      end;

   //   cds_cabecalhonum_prot.Value        :=vXMLDoc.DocumentElement.ChildNodes['protNFe']
   //                                         .ChildNodes['infProt'].ChildNodes['nProt'].Text;

   //   nodeProtocolo.ChildNodes['infProt'].ChildNodes['nProt'].text;


   cds_cabecalhodest_cnpj.Value       :=MaskCPFCNPJ2(Formatfloat('00000000000000',
                                        fsonumero(
                                       NodeMaster.ChildNodes['dest'].ChildNodes['CNPJ'].text
                                       )));
   if fsonumero(cds_cabecalhodest_cnpj.Value)=0 then
      cds_cabecalhodest_cnpj.Value       :=MaskCPFCNPJ2(
                                         Formatfloat('00000000000',

                                              fsonumero(
                                       NodeMaster.ChildNodes['dest'].ChildNodes['CPF'].text)));

   cds_cabecalhoDESTENDERDESTXLGR.Value       :=
                                       NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['xLgr'].text;


   try
      if  fXNroValido(NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['nro'].text)<>'' then
         cds_cabecalhoDESTENDERDESTXLGR.Value       :=
            cds_cabecalhoDESTENDERDESTXLGR.Value       +', '+NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['nro'].text;
   except
      end;



   cds_cabecalhoDESTENDERDESTXBAIRRO.Value       :=
                                       NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['xBairro'].text;
   cds_cabecalhoDESTENDERDESTCEP.Value       :=MaskCep(
                                       NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['CEP'].text);
   cds_cabecalhoDESTENDERDESTXMUN.Value       :=
                                       NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['xMun'].text;


   cds_cabecalhodest_fone.Value       :=MaskFone(
                                       NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['fone'].text);
   cds_cabecalhoDESTENDERDESTUF.Value       :=
                                       NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['UF'].text;

   cds_cabecalhodest_inscricao.Value       :=
                                       NodeMaster.ChildNodes['dest'].ChildNodes['IE'].text;

   fGerarEvento('1432-continua');

   cds_cabecalhoTOTALICMSTOTVBC.Value       :=Valfloat(mudapv(
                                       NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vBC'].text));

   cds_cabecalhoTOTALICMSTOTVICMS.Value       :=valfloat(mudapv(
                                       NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vICMS'].text));

   cds_cabecalhoTOTALICMSTOTVBCST.Value       :=valfloat(mudapv(
                                       NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vBCST'].text));
   cds_cabecalhoTOTALICMSTOTVST.Value       :=valfloat(mudapv(
                                       NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vST'].text));
   cds_cabecalhoTOTALICMSTOTVPROD.Value       :=valfloat(mudapv(
                                       NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vProd'].text));
   cds_cabecalhoTOTALICMSTOTVFRETE.Value       :=valfloat(mudapv(
                                       NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vFrete'].text));
   cds_cabecalhoTOTALICMSTOTVSEG.Value       :=valfloat(mudapv(
                                       NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vSeg'].text));
   cds_cabecalhoTOTALICMSTOTVDESC.Value       :=valfloat(mudapv(
                                       NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vDesc'].text));
   cds_cabecalhoTOTALICMSTOTVOUTRO.Value       :=valfloat(mudapv(
                                       NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vOutro'].text));
   cds_cabecalhoTOTALICMSTOTVIPI.Value       :=valfloat(mudapv(
                                       NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vIPI'].text));
   fGerarEvento('1456-continua');

   cds_cabecalhoTOTALICMSTOTVNF.Value       :=valfloat(mudapv(
                                       NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vNF'].text));
   cds_Cabecalhovalor_texto.Text:='Valor: '+FormatFloat(mcasas,cds_cabecalhoTOTALICMSTOTVNF.Value);

   cds_Cabecalhoemissao_texto.Text:='Emissão: '+FormatDateTime(fdt2, cds_CabecalhoIDEDEMI.Value);

   cds_cabecalhoTT_XNOME.Value       :=
                                       NodeMaster.ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['xNome'].text;
   cds_cabecalhofrete_cif_fob.Value       :=IntTostr(valint(
                                       NodeMaster.ChildNodes['transp'].ChildNodes['modFrete'].text));
   //                                    NodeMaster.ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['modFrete'].text;
   cds_cabecalhoTRANSPVEICTRANSPPLACA.Value       :=
                                       NodeMaster.ChildNodes['transp'].ChildNodes['veicTransp'].ChildNodes['placa'].text;
   cds_cabecalhoTRANSPVEICTRANSPUF.Value       :=
                                       NodeMaster.ChildNodes['transp'].ChildNodes['veicTransp'].ChildNodes['UF'].text;
   cds_cabecalhotransp_cnpj.Value       :=MaskCPFCNPJ(
                                       NodeMaster.ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['CNPJ'].text);
   cds_cabecalhoTT_XENDER.Value       :=
                                       NodeMaster.ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['xEnder'].text;
   cds_cabecalhoTT_XMUN.Value       :=
                                       NodeMaster.ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['xMun'].text;
   cds_cabecalhoTT_UF.Value       :=
                                       NodeMaster.ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['UF'].text;

   cds_cabecalhoTRANSPVOLESP.Value       :=NodeMaster.ChildNodes['transp'].ChildNodes['vol'].ChildNodes['esp'].text;

   cds_cabecalhoTRANSPVOLQVOL.Value       :=valint(
                                       NodeMaster.ChildNodes['transp'].ChildNodes['vol'].ChildNodes['qVol'].text);
   cds_cabecalhoTRANSPVOLMARCA.Value       :=
                                       NodeMaster.ChildNodes['transp'].ChildNodes['vol'].ChildNodes['marca'].text;
   cds_cabecalhoTRANSPVOLPESOB.Value       :=valfloat(mudapv(
                                       NodeMaster.ChildNodes['transp'].ChildNodes['vol'].ChildNodes['pesoB'].text));
   cds_cabecalhoTRANSPVOLPESOL.Value       :=valfloat(mudapv(
                                       NodeMaster.ChildNodes['transp'].ChildNodes['vol'].ChildNodes['pesoL'].text));

{
   cds_cabecalhoINFADICINFADFISCO.Value       :=
   NodeMaster.ChildNodes['infAdic'].ChildNodes['infAdFisco'].text;
}
   cds_cabecalhoINFADICINFCPL.Value       :=
    NodeMaster.ChildNodes['infAdic'].ChildNodes['infCpl'].text;

{
   cds_cabecalhoINFADICINFADFISCO.Value       :=
   StringReplace(NodeMaster.ChildNodes['infAdic'].ChildNodes['infAdFisco'].text, '\n',chr(13)+chr(10), [rfReplaceAll, rfIgnoreCase]);
}


   //ShowMessage(NodeMaster.ChildNodes['infAdic'].ChildNodes['infCpl'].text);

   cds_cabecalhoINFADICINFCPL.Value       :=
    StringReplace(NodeMaster.ChildNodes['infAdic'].ChildNodes['infCpl'].text, '\n ',chr(13)+chr(10), [rfReplaceAll, rfIgnoreCase]);

   cds_cabecalhoINFADICINFCPL.Value       :=
    StringReplace(cds_cabecalhoINFADICINFCPL.Value, '\n',chr(13)+chr(10), [rfReplaceAll, rfIgnoreCase]);

   cds_cabecalhoTOTALISSQNTOTVISS.Value       :=valfloat(mudapv(
                                       NodeMaster.ChildNodes['total'].ChildNodes['vISS'].text));

   cds_cabecalhoTOTALISSQNTOTVBC.Value       :=valfloat(mudapv(
                                       NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['VBC'].text));

   cds_cabecalhoTOTALISSQNTOTVISS.Value       :=valfloat(mudapv(
                                       NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['VISS'].text));

   cds_cabecalhoEMITIM.Value       := NodeMaster.ChildNodes['ide'].ChildNodes['emit'].ChildNodes['IM'].text;


   fGerarEvento('1510-continua');

   cds_Cabecalhocep_emit.Value:='CEP.:'+cds_cabecalhocep_emit.AsString;
   cds_Cabecalhorecebemos.Value:='RECEBEMOS DE '+cds_cabecalhoEMITXNOME.AsString+' OS PRODUTOS CONSTANTES DA NOTAS FISCAL INDICADA AO LADO';
   cds_cabecalhofantasia_cliente.Value:=ado_query.FieldbyName('CDENOM').asstring;

   {if cds_cabecalhoDATASAIDA.AsDateTime<=pdatanula then
      cds_cabecalhoDATASAIDA.Value:=
   else
      cds_Cabecalhodatasaida.Value:=FormatDAteTime(fdt2, cds_cabecalhoDATASAIDA.AsDateTime);

   }

   NodeSec := NodeMaster.ChildNodes.FindNode('det');
   fGerarEvento('1524-continua');

   mItem:=0;
   NodeSec.ChildNodes.First;

   repeat
   // referencia a tag <prod> dentro de <det>

      NodeTmp  := NodeSec.ChildNodes['prod'];


    // da pra ver que é um XML resumido da NFe (so temos uma tag <prod> para cada <det> então não precisaria da linha abaixo
       // agora se tivéssemos mais de uma seria o caso de posicionar também na primeira ocorrencia.
      NodeTmp.ChildNodes.First;

      mDados_Lid:=trim(NodeTmp.ChildNodes['xProd'].text);
      if mDados_Lid<>'' then
         begin
         cds_detalhe.Append;
         // pega os dados que vc quiser dentro da tag <prod>
         mItem:=mItem+1;
   // verifica lote de mercadorias



      mLotes:='';
      NodeMed := NodeTmp.ChildNodes.FindNode('rastro');
      if nodeMed=nil then
         begin
         NodeMed := NodeTmp.ChildNodes.FindNode('med');

         end;
      mQtdLote:=0;
      mQtdPed:=valfloat(mudapv(NodeTmp.ChildNodes['qCom'].text));

      if NodeMed<>nil then
         begin
         NodeMed.ChildNodes.First;
         repeat
            if ((mQtdLote+valfloat(mudapv(NodeMed.ChildNodes['qLote'].text)))<=mqtdped)
               and (valfloat(NodeMed.ChildNodes['qLote'].text)>0)   then
               begin
               fGerarEvento('N LOTE '+NodeMed.ChildNodes['nLote'].text);
               fGerarEvento('N LOTE '+NodeMed.ChildNodes['qLote'].text);
               fGerarEvento('N LOTE '+NodeMed.ChildNodes['dVal'].text);

               mLotes:=mLotes+#13+'LOTE '+NodeMed.ChildNodes['nLote'].text
                              +' VCTO '+
                                           copy(NodeMed.ChildNodes['dVal'].text,1+8,2)+'/'+
                                           copy(NodeMed.ChildNodes['dVal'].text,1+5,2)+'/'+
                                           copy(NodeMed.ChildNodes['dVal'].text,1,4)
                              +' QTDE '+FormatFloat(mcasqtd,
                              valfloat(mudapv(NodeMed.ChildNodes['qLote'].text)))+' ';
               mQtdLote:=mQtdLote+valfloat(mudapv(NodeMed.ChildNodes['qLote'].text));
               end;
            NodeMed := NodeMed.NextSibling;
         until
            NodeMed = nil;
         if mQtdLote<>mQtdPed then
            begin
            mLotes:=mLotes+#13+'SEM LOTE QUANTIDADE '+FormatFloat(mcasqtd,
                              mQtdPed-mqtdlote)+' ';
            end;
         end;
   fGerarEvento('1580-continua');


   // termino dos lotes de mercadorias



   // armas


      mArmas:='';
      NodeArmas := NodeTmp.ChildNodes.FindNode('arma');

      if NodeArmas<>nil then
         begin
         NodeArmas.ChildNodes.First;
         repeat
//         mArmas:=mArmas+#13+'Serie Arma '+NodeArmas.ChildNodes['nSerie'].text
//                              +' Serie Cano '+NodeArmas.ChildNodes['nCano'].text;
         mArmas:=mArmas+#13+'Descriçao Completa: '+NodeArmas.ChildNodes['descr'].text;

         NodeArmas := NodeArmas.NextSibling;
         until
            NodeArmas = nil;
         end;

   // armas




         cds_detalhenomepro.AsString:=NodeTmp.ChildNodes['xProd'].text;


         if (mDESCCOMPSEGLIN=false) and (mDescricaoComplementar=false) then
            begin
            cds_detalhenomepro.AsString:=cds_detalhenomepro.AsString+' '+trim(NodeSec.ChildNodes['infAdProd'].text);
            cds_detalheDETINFADPROD.Value:='';
            end
         else
            begin
// inicio
            if (mDescricaoComplementar) and (length(trim(NodeSec.ChildNodes['infAdProd'].text))>2) then
               begin
               cds_detalheDETINFADPROD.Value:='';
               cds_detalhenomepro.AsString  :=trim(NodeSec.ChildNodes['infAdProd'].text);
               end;
            end;


//lindomar

// termino


         cds_detalhenomepro.AsString:=cds_detalhenomepro.AsString+mLotes+mArmas;
         cds_detalheDETPRODQCOM.AsFloat:=valfloat(mudapv(NodeTmp.ChildNodes['qCom'].text));
         cds_detalheDETPRODCPROD.AsString:=NodeTmp.ChildNodes['cProd'].text;
         cds_detalheDETPRODNCM.AsString:=NodeTmp.ChildNodes['NCM'].text;
         cds_detalheCSTB_CBENEF.AsString:=NodeTmp.ChildNodes['CSTB_CBENEF'].text;

         cds_detalheDETPRODCFOP.AsString:=NodeTmp.ChildNodes['CFOP'].text;

         cds_detalheDETPRODUCOM.Value:=NodeTmp.ChildNodes['uCom'].text;
         cds_detalheVDESC.Value:=ValFloat(mudapv(NodeTmp.ChildNodes['vDesc'].text));
         cds_detalheDETPRODVUNCOM.Value:=valfloat(mudapv(NodeTmp.ChildNodes['vUnCom'].text));
         cds_detalheDETPRODVPROD.Value:=valfloat(mudapv(NodeTmp.ChildNodes['vProd'].text));
         cds_detalheDETPRODVDESC.Value:=valfloat(mudapv(NodeTmp.ChildNodes['vDesc'].text));
   //      cds_detalheDETINFADPROD.Value:=cds_detalheDETPRODCPROD.AsString+' lOTE ADICIONAL';

   //lindomar
         NodeImposto  := NodeSec.ChildNodes['imposto'];
         if NodeImposto<>nil then
            begin
            if NodeImposto.ChildNodes[0].NodeName ='ICMS'then
               begin
               NodeTmp_Imp := NodeImposto.ChildNodes['ICMS'];
               NodeTmp_Imp.ChildNodes.First;
               if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS00'then
                  begin
                  NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS00'];
                  NodeTmp_ImpCateg.ChildNodes.First;
                  cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                  cds_detalhecst.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                             +NodeTmp_ImpCateg.ChildNodes['CST'].text;

                  cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                  cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                  cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));
                  end
               else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS10'then
                  begin
                  NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS10'];
                  NodeTmp_ImpCateg.ChildNodes.First;

                  cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                  cds_detalhecst.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                             +NodeTmp_ImpCateg.ChildNodes['CST'].text;

                  cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));

                  cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                  end

               else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS20'then
                  begin
                  NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS20'];
                  NodeTmp_ImpCateg.ChildNodes.First;
                  cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                  cds_detalhecst.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                             +NodeTmp_ImpCateg.ChildNodes['CST'].text;

                  cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                  cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                  end
               else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS30'then
                  begin
                  NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS30'];
                  NodeTmp_ImpCateg.ChildNodes.First;
                  cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                  cds_detalhecst.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                             +NodeTmp_ImpCateg.ChildNodes['CST'].text;

                  cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));

                  cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                  end
              else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS40'then
                 begin
                  NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS40'];
                  NodeTmp_ImpCateg.ChildNodes.First;
                  cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                  cds_detalhecst.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                             +NodeTmp_ImpCateg.ChildNodes['CST'].text;

                  cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                  cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));

                  cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                  end
               else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS50'then
                  begin
                  NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS50'];
                  NodeTmp_ImpCateg.ChildNodes.First;
                  cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                  cds_detalhecst.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                             +NodeTmp_ImpCateg.ChildNodes['CST'].text;

                  cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));

                  cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                 end
              else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS60'then
                 begin
                 NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS60'];
                 NodeTmp_ImpCateg.ChildNodes.First;
                  cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                  cds_detalhecst.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                             +NodeTmp_ImpCateg.ChildNodes['CST'].text;

                  cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));

                  cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                 end
              else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS70'then
                 begin
                 NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS70'];
                 NodeTmp_ImpCateg.ChildNodes.First;
                  cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                  cds_detalhecst.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                             +NodeTmp_ImpCateg.ChildNodes['CST'].text;

                  cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                  cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));

                 end
              else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS90' then
                 begin
                 NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS90'];
                 NodeTmp_ImpCateg.ChildNodes.First;
                  cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                  cds_detalhecst.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                             +NodeTmp_ImpCateg.ChildNodes['CST'].text;

                  cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                  cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));

                 end
              else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMSSN101' then
                 begin
                 NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMSSN101'];
                 NodeTmp_ImpCateg.ChildNodes.First;
                  cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                  cds_detalheCSOSN.Value:= NodeTmp_ImpCateg.ChildNodes['CSOSN'].text;
                  cds_detalhecst.Value:=cds_detalheORI_PROD.Value+cds_detalheCSOSN.Value;

                  cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                  cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));



                 end
              else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMSSN102'then
                 begin
                 NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMSSN102'];
                 NodeTmp_ImpCateg.ChildNodes.First;

                  cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                  cds_detalheCSOSN.Value:=NodeTmp_ImpCateg.ChildNodes['CSOSN'].text;
                  cds_detalhecst.Value:=cds_detalheORI_PROD.Value+cds_detalheCSOSN.Value;

                  cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                  cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));



                 end
              else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMSSN201'then
                 begin

                 NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMSSN201'];
                 NodeTmp_ImpCateg.ChildNodes.First;
                  cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                  cds_detalheCSOSN.Value:=NodeTmp_ImpCateg.ChildNodes['CSOSN'].text;
                  cds_detalhecst.Value:=cds_detalheORI_PROD.Value+cds_detalheCSOSN.Value;
                  cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                  cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));

                 end

              else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMSSN202'then
                 begin

                 NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMSSN202'];
                 NodeTmp_ImpCateg.ChildNodes.First;
                  cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                  cds_detalheCSOSN.Value:=NodeTmp_ImpCateg.ChildNodes['CSOSN'].text;
                  cds_detalhecst.Value:=cds_detalheORI_PROD.Value+cds_detalheCSOSN.Value;

                  cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                  cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));


                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));


                 end
              else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMSSN500' then
                 begin
                 NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMSSN500'];
                 NodeTmp_ImpCateg.ChildNodes.First;
                  cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                  cds_detalheCSOSN.Value:=NodeTmp_ImpCateg.ChildNodes['CSOSN'].text;
                  cds_detalhecst.Value:=cds_detalheORI_PROD.Value+cds_detalheCSOSN.Value;

                  cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                  cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));


                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));

                 end

              else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMSSN900' then
                 begin
                 NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMSSN900'];
                 NodeTmp_ImpCateg.ChildNodes.First;
                  cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                  cds_detalheCSOSN.Value:=NodeTmp_ImpCateg.ChildNodes['CSOSN'].text;
                  cds_detalhecst.Value:=cds_detalheORI_PROD.Value+cds_detalheCSOSN.Value;

                  cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                  cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));



                 end;
              end;
            if NodeImposto.ChildNodes[1].NodeName ='IPI'then
               begin
               NodeTmp_Imp := NodeImposto.ChildNodes['IPI'];
               NodeTmp_Imp.ChildNodes.First;
               if NodeTmp_Imp.ChildNodes[1].NodeName ='IPITrib'then
                  begin
                  NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['IPITrib'];
                  NodeTmp_ImpCateg.ChildNodes.First;
                  cds_detalhepercipi.Value:=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pIPI'].Text));
                  cds_detalhevalor_ipi.Value:=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vIPI'].Text));

                  end;
              end;
           end;

         mDados_Lid:=cds_detalhenomepro.AsString;
         cds_detalhe.Post;

         end;
      NodeSec := NodeSec.NextSibling;
   fGerarEvento('1840-continua');

   until
      NodeSec = nil;

   NodeSec := NodeMaster.ChildNodes.FindNode('total');

   {
   // Posiciona o primeiro elemento encontrado
   NodeSec.ChildNodes.First;

   edt_TotProdServ.Text:=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vProd'].text)));
   edt_descItens.Text  :=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vDesc'].text)));
   edt_valseg.Text     :=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vSeg'].text)));
   edt_outdesp.Text    :=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vOutro'].text)));
   edt_totipi.Text     :=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vIPI'].text)));
   edt_vlrPIS.Text     :=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vPIS'].text)));
   edt_vlrCOFINS.Text  :=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vCOFINS'].text)));
   edt_totliq.Text     :=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vNF'].text)));

   edt_bcicms.Text   :=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vBC'].text)));
   edt_vlricms.Text  :=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vICMS'].text)));
   edt_bcicmsst.Text :=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vBCST'].text)));
   edt_vlricmsst.Text:=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vST'].text)));
   edt_valfre.Text   :=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vFrete'].text)));

   //RichTextXML.Lines.Add('Total dos Descontos.........: '+insere(NodeSec.ChildNodes['vDesc'].Text,' ',15));
   //RichTextXML.Lines.Add('Total Liquido da Nota Fiscal: '+insere(NodeSec.ChildNodes['vNF'].Text,' ',15));

   // vencimentos

   fLerCadPFor_Vcto(0);
   //NodeSec := NodePai.ChildNodes.FindNode('cobr');
   }
   fGerarEvento('1874-continua');


   NodeSec := NodeMaster.ChildNodes.FindNode('cobr');
   if nodesec<>nil then
      NodeSec := NodeSec.ChildNodes.FindNode('dup');

   //NodePai := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('cobr');
   // Esse nó vai ser usado no LOOP
   fGerarEvento('1883-continua');

   if Nodesec<>nil then
      begin
      mItem:=0;
   //   NodeSec := NodePai;
      NodeSec.ChildNodes.First;
      cds_vcto.Close;
      cds_vcto.Open;
      fGerarEvento('1892-continua');

      repeat

   //      mDados_Lid:=trim(NodeSec.ChildNodes['dup'].ChildNodes['dVenc'].text);
         mDados_Lid:=trim(NodeSec.ChildNodes['dVenc'].text);
   //      mDados_Lid:=trim(NodeSec.ChildNodes['fat'].ChildNodes['nFat'].text);
         if mDados_Lid<>'' then
            begin
            cds_vcto.Append;
         // pega os dados que vc quiser dentro da tag <prod>
            mItem:=mItem+1;
            mDados_Lid:=NodeSec.ChildNodes['dVenc'].text;
            if trim(mDados_Lid)<>'' then
               begin
               cds_vctoVDATA.AsDateTime:=StrToDateTime(copy(mDados_Lid,1+8,2)+'/'+
                                           copy(mDados_Lid,1+5,2)+'/'+
                                           copy(mDados_Lid,1,4)
                                           );
               end;
              cds_vctoVVALOR.asFloat:=valfloat(mudapv(NodeSec.ChildNodes['vDup'].text));
            cds_vctonumdup.Value  :=NodeSec.ChildNodes['nDup'].text;
            cds_vcto.Post;
            end;
      NodeSec := NodeSec.NextSibling;
   until
      NodeSec = nil;
      end;
   if cds_vcto.isempty then
      begin
      fGerarEvento('1922-continua');

      pGerarDup;
      end;

   // termino dos vencimentos

   fGerarEvento('1929-continua');

   cds_cabecalhodata_vencimentos.Value:='';
   cds_Vcto.First;
   if (cds_vcto.IsEmpty) then
      cds_cabecalhodata_vencimentos.Value:=''
   else if ((cds_vcto.RecordCount=1) and (AVISTASEMDUP=true) and (cds_vctoVDATA.AsDateTime=cds_cabecalhoIDEDEMI.AsDateTime)) then
      cds_cabecalhodata_vencimentos.Value:='Pagamento a Vista'
   else
      begin

      while not cds_Vcto.Eof do
         begin
         cds_cabecalhodata_vencimentos.Value:=cds_cabecalhodata_vencimentos.Value
                                     +'['+insere2(cds_vctonumdup.AsString ,' ',10)
                                     +' '+insere(FormatFloat('#,##0.00', cds_vctoVVALOR.AsFloat ),' ',13)
                                     +' '+insere(FormatDateTime('dd/mm/yy', cds_vctoVDATA.AsDateTime),' ',10)+']  ';
          cds_Vcto.Next;
         end;
      end;
   fGerarEvento('1949-continua');

// qrcode

   if cds_cabecalhomodelo.AsInteger=65 then
      begin
      NodeSec := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('infNFeSupl');
      if nodesec<>nil then
         begin
         cds_cabecalhoqrcode.Value:=trim(NodeSec.ChildNodes['qrCode'].text);
         if cds_cabecalhoqrcode.AsString<>'' then
            begin
            RLBand_qrcode.Height :=194;
            RLBand_qrcode.Visible:=true;
            edtText.Text:=cds_cabecalhoqrcode.Value;
            Update;

            stream_qrcode:=TMemoryStream.Create;

//            QRCodeBitmap.savetofile('c:\img001.bmp');
//



// inicio
{
Wid:=PaintBox1.Width;
Hei:=PaintBox1.Height;
Bitmap:=TBitmap.Create;
Bitmap.Height:=Hei;
Bitmap.Width:=Wid;
Bitmap.Canvas.CopyRect(Rect(0, 0, Wid, Hei), PaintBox1.Canvas,Rect(0, 0, Wid, Hei));
Bitmap.SaveToStream(stream_qrcode);
Bitmap.Free;
}
// termino


         fGerarEvento('1986-continua');

            QRCodeBitmap.SaveToStream(stream_qrcode);

//            stream_qrcode.Seek(0,0);
            stream_qrcode.Seek(0,soFromBeginning);

            RLImage_QrCode.Top:=6;;

            RLImage_QrCode.Height:=PaintBox1.Height;
            RLBand_qrcode.Height:=PaintBox1.Height+10;
            RLImage_QrCode.Picture.Bitmap.LoadFromStream(stream_qrcode);
//            RLImage_QrCode.Picture.Bitmap.LoadFromFile('c:\img001.bmp');
            RLBand_qrcode.Height := PaintBox1.Height+20;

            stream_qrcode.Free;

            end;
         end;
      end;

// qrcode termino


   fGerarEvento('2010-continua');

   if (cds_cabecalhoEMITXNOME.AsString) <> '' then
      begin
      rl_lat_recebemos_simples.Caption:= 'RECEBEMOS DE '+cds_cabecalhoEMITXNOME.AsString+' OS PRODUTOS CONSTANTES DA NOTAS FISCAL INDICADA AO LADO';
   //   rl_lat_recebemos.Caption := 'RECEBEMOS DE '+cds_cabecalhoEMITXNOME.Value.AsString+' OS PRODUTOS CONSTANTES DA NOTAS FISCAL INDICADA AO LADO';
   //   rl_lat_recebemos_simples.Caption :=rl_lat_recebemos.Caption;
      end;

   if DM4.Tb_ParGer02PG2NFETPIMP.AsInteger=1 then
      begin
      if trim(pLerDadosXml.pSalvarPDFPara)<>'' then
         begin
         if FileExists(pLerDadosXml.pSalvarPDFPara) then
            begin
            if not DeleteFile(pLerDadosXml.pSalvarPDFPara) then
               pMensagem:=pMensagem+'Não foi possivel salvar a nota '+pLerDadosXml.pSalvarPDFPara+#13
            else
               rl_Paisagem_Simples.SaveToFile(pLerDadosXml.pSalvarPDFPara);
            end
         else
            rl_Paisagem_Simples.SaveToFile(pLerDadosXml.pSalvarPDFPara);
         end
      else
         rl_Paisagem_Simples.PreviewModal;
      end
   else
      begin
      if trim(pLerDadosXml.pSalvarPDFPara)<>'' then
         begin
         if FileExists(pLerDadosXml.pSalvarPDFPara) then
            begin
            if not DeleteFile(pLerDadosXml.pSalvarPDFPara) then
               pMensagem:=pMensagem+'Não foi possivel salvar a nota '+pLerDadosXml.pSalvarPDFPara+#13
            else
               rl_Retrato_Simples.SaveToFile(pLerDadosXml.pSalvarPDFPara);
            end
         else
            rl_Retrato_Simples.SaveToFile(pLerDadosXml.pSalvarPDFPara);
         end
      else
         rl_Retrato_Simples.PreviewModal;
      end;

    if pLerDadosXml.pEnviar then
        begin
        if (pLerDadosXml.pCodBcoCob>0) and  (mExisteBoleto) then
           begin
          fTestarDocumentosOnline_dup(DM2.Qr_CabP1CHAVE.AsInteger,DM2.Qr_CabP1lotSEQ.AsInteger
          ,DM2.Qr_CabP1CODEMP.Asinteger,DM2.Qr_CabP1ORDEM.Asinteger);

           mcinst4:='Deseja enviar DANFE, XML e Boleto por email?';
           end
        else
           begin
           mcinst4:='Deseja enviar DANFE e XML por email?';
          fTestarDocumentosOnline_dup(DM2.Qr_CabP1CHAVE.AsInteger,DM2.Qr_CabP1lotSEQ.AsInteger
          ,DM2.Qr_CabP1CODEMP.Asinteger,DM2.Qr_CabP1ORDEM.Asinteger);

           end;
        if fmensagem(mcinst4,0,['1','2'],2)=mrYES then
          begin
          if not DirectoryExists('C:\SGE\DANFE') then
            CreateDir('C:\SGE\DANFE');
          numNf:=cds_cabecalhoIDENNF.AsString;
          arqDanfe:='c:\sge\DANFE\'+numNf+'.pdf';



          if DM4.Tb_ParGer02PG2NFETPIMP.AsInteger=1 then
            rl_Paisagem_Simples.SaveToFile(arqDanfe)
          else
            rl_Retrato_Simples.SaveToFile(arqDanfe);
          if DM1.Tb_PargerPFORPEDPAD.asinteger=2 then
            begin
            arqxmlclient:=dm4.Tb_ParGer02PG2PASTAENVIO.AsString;
            if copy(arqxmlclient,length(arqxmlclient),1)<>'\' then
              begin
              arqxmlclient:=copy(arqxmlclient,1,pos('ENVIO',arqxmlclient)-1)+'ENVIADOS\';
              end;
            arqxmlclient:=arqxmlclient+FormatDatetime('yyyymm',cds_cabecalhoIDEDEMI.AsDateTime)
                         +'\VERSAO_CLIENTE\'+numNf+'-nfe.xml';
            CopyFile(pchar(arqxmlclient),pchar('c:\sge\danfe\'+numNf+'.xml'),true);
            end
          else
            begin
            la_tabelas  :='';
            la_Join     :='';
            la_instrucao:='';
            fInnerJoin(1,'CADCLI','CCODEMP','NSCODEMP','CCODCLI','NSCODCLI');
            la_instrucao:=la_instrucao+' and ';
            fInnerJoin3(1,'CADP01','P1CODEMP','NSCODEMP','P1LOTSEQ','NSLOTSEQ_CP','P1CHAVE','NSCHAVEP');

            ado_query:=TADOQuery.Create(nil);
            ado_query.Connection:=DM1_ADO.ADOConnection1;
            ado_query.Close;
            ado_query.SQL.Clear;
            ado_query.SQL.Add('Select NSNFE_XML_CLIENTE,CDENOM,case when P1QTDDECPU<0 then 0 ELSE P1QTDDECPU END AS P1QTDDECPU from CADNS  '+iif(la_tabelas='','',',')+la_tabelas
                            +'       '+la_Join
                         +'       where '+iif(la_instrucao='','',la_instrucao+' and ')
                    +'  NSCHAVEP=:CHAVE '
                    +' and NSLOTSEQ_CP=:CHAVE_ANO '
                    +' and NSCODEMP=:CODEMP '
                            +'  and NSTIPO<2 ' );
            ado_query.Parameters.ParamByName('CHAVE').Value:=pLerDadosXml.pChave;
            ado_query.Parameters.ParamByName('CHAVE_ANO').Value:=pLerDadosXml.pChaveAno;
            ado_query.Parameters.ParamByName('CODEMP').Value:=pLerDadosXml.pCodEmp;
            ado_query.Open;
            (ado_query.FieldByName('NSNFE_XML_CLIENTE') as TMemoField).SaveToFile('c:\sge\danfe\'+numNf+'.xml');
            FreeAndNil(ado_query);
            end;
          arqxmlclient:='c:\sge\danfe\'+numNf+'.xml';
          Application.CreateForm(TFrm_EnviarEmail,Frm_EnviarEmail);
          Frm_EnviarEmail.EdtAssunto.Text:='NOTA FISCAL '+cds_cabecalhonumeronf.AsString;
          Frm_EnviarEmail.mmMensagem.Lines.Add(' SEGUE EM ANEXO A COPIA DO DANFE E XML DA NOTA FISCAL ');
          Frm_EnviarEmail.mmMensagem.Lines.Add(' NUMERO..:'+numNf);
          Frm_EnviarEmail.mmMensagem.Lines.Add(' EMITIDA EM ..:'+cds_cabecalhoIDEDEMI.AsString);
          Frm_EnviarEmail.mmMensagem.Lines.Add(' CHAVE DE ACESSO..:'+cds_cabecalhoCHAVE_ACESSO.AsString);
          Frm_EnviarEmail.mmMensagem.Lines.Add(' PROTOCOLO DE AUTORIZAÇÃO..:'+cds_cabecalhonum_prot.AsString);
          Frm_EnviarEmail.mmMensagem.Lines.Add(' ');
          Frm_EnviarEmail.mmMensagem.Lines.Add(' '+cds_cabecalhoEMITXNOME.AsString);



          if FileExists(arqDanfe) then
            Frm_EnviarEmail.lbxAnexos.Items.Add(arqDanfe);
          if FileExists(arqxmlclient) then
            Frm_EnviarEmail.lbxAnexos.Items.Add(arqxmlclient);


          fAdicionarBoletosNoEmail;

          Frm_EnviarEmail.Tipo:=0;
          Frm_EnviarEmail.CliFor:=cds_cabecalhoccodcli.AsString;
          Frm_EnviarEmail.ShowModal;
          FreeandNil(Frm_EnviarEmail);
          end;
        end;

   except on e : exception do
      begin

      Application.CreateForm(TFrm_Memo_Quebra, Frm_Memo_Quebra);

      Frm_Memo_Quebra.Memo1.Lines.LoadFromFile('C:\sge\EVENTO.TXT');
      Frm_Memo_Quebra.Memo1.lines.add(e.message);
      Frm_Memo_Quebra.ShowModal;
      FreeAndNil(Frm_Memo_Quebra);
      end;
   end;
freeandnil(ado_query);


//cds_cabecalho.Close();
//cds_detalhe.Close();

result:=true;
end;


procedure AddBmpToStream(out s:tstream; Bmp:TBitmap);
var sz : Cardinal;
MS : TStream;
begin
MS:=TMemoryStream.Create;
Bmp.SaveToStream(MS);
sz:=MS.Size;
MS.Seek(0,soFromBeginning);
s.Write(sz,SizeOf(Cardinal));
s.CopyFrom(MS,sz);
MS.Free;
end;


procedure GetBmpFromStream(s:tstream; Bmp:TBitmap);
var sz : Cardinal;
MS : TStream;
begin
MS:=TMemoryStream.Create;
s.Read(sz,SizeOf(Cardinal));
MS.CopyFrom(s,sz);
MS.Seek(0,soFromBeginning);
Bmp.LoadFromStream(MS);
MS.Free;
end;


function TFrm_NFE_Impressao.fLerdadosXml_cce(pSalvarPDFPara,pSalvarXmlPara,pNomeArq: String;pChave,pChave_ano,pCodEmp,pChaveCC: Integer; out pMensagem: string): Boolean;
var
ado_query: tadoQuery;
var vXMLDoc: TXMLDocument;
    NodeMed,NodeMaster,NodePai,NodeSec,NodeTmp,NodeImposto,NodeTmp_Imp,NodeTmp_ImpCateg,nodeProtocolo: IXMLNode;
x: Integer;
streStream: TStringStream;
arqxmlclient: String;
arqDanfe: String;
NumNf: String;
stream_imagem: TStream;
J : TJPEGImage;

begin
pMensagem:='';
if FileExists('C:\SGE\LOGNFE.JPG') then
   begin
   try
      deletefile('C:\SGE\LOGNFE.JPG');
   except
      Messagedlg('Erro ao Deletar Logomarca!',mtError,[mbOk],0);
      end;
   end;
try
   Query1.Close;
   Query1.Sql.Clear;
   Query1.Sql.add('Select LSLOGO from CADLOGSIS where LSCHAVE='+chr(39)+'LOGO_NFE'+chr(39));
   if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
      Query1.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                            +' or LSCODEMP is null )');
   try
      Query1.Open;
   except on e : exception do
      begin
      MessageDlg('Erro 596!' + e.Message ,mtWarning,[mbOk],0);
      result:=false;
      exit;
      end;
      end;
   if (not Query1.IsEmpty) and (not Query1LSLOGO.IsNull) then
      begin
        try
        J := TJPEGImage.Create;
        stream_imagem:=tStream.Create;
        stream_imagem:=Query1.CreateBlobStream(Query1LSLOGO, bmRead);
        J.LoadFromStream(stream_imagem);
        RLlogo_cce.Picture.Assign(j);
        FreeAndNil(j);
        FreeAndNil(stream_imagem);
      except
         end;
      end
   else
      RLlogo_cce.Picture:=nil;

   if cds_cce.Active then
      cds_cce.EmptyDataSet;
   cds_cce.Close;
   cds_cce.Open;

   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(1,'CADCLI','CCODEMP','NSCODEMP','CCODCLI','NSCODCLI');
   la_instrucao:=la_instrucao+' and ';
   fInnerJoin4(1,'CADCCOR01','NSCODEMP','CC1CODEMP','NSNUMERO','CC1NUMNF','NSSERIE','CC1SERIE','NSMODELO','CC1MODELO');


   ado_query:=TADOQuery.Create(nil);
   ado_query.Connection:=DM1_ADO.ADOConnection1;
   ado_query.Close;
   ado_query.SQL.Clear;
   ado_query.SQL.Add('Select CC1NFE_XML_CLIENTE as NSNFE_XML_CLIENTE,CDENOM,CC1CHAVE,CC1ORDEMEVE,'
                    +' CRAZAO,NSNUMERO,NSMODELO,NSSERIE,NSDTEMIS,CCODCLI,CCNPJ,CIE,CFONE01,CFAX '
                    +',CLOG,CBAIRRO,CCIDADE,CUF,CFONE01,CC1ORDEMEVE,CCPF,CCEP '
                    +' from CADNS '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_instrucao='','',la_instrucao+' and ')
                    +'  NSCHAVEP=:CHAVE '
                    +' and NSORDEMP=:ORDEM '
                    +' and NSLOTSEQ_CP=:LOTSEQ '
                    +' and NSCODEMP=:CODEMP and CC1CHAVE=:CHAVECC');
//                            +'  and NSTIPO<2 ' );
   ado_query.Parameters.ParamByName('CHAVE').Value:=pChave;
   ado_query.Parameters.ParamByName('ORDEM').Value:=01;
   ado_query.Parameters.ParamByName('LOTSEQ').Value:=pChave_ano;
   ado_query.Parameters.ParamByName('CODEMP').Value:=pCodEmp;
   ado_query.Parameters.ParamByName('CHAVECC').Value:=pChaveCC;
   try
      ado_query.Open;

   except
       MessageDlg('Erro 1576!',mtWarning,[mbOk],0);
       result:=false;
       exit;
       end;
   if trim(pNomeArq)='' then
      begin
      if ado_query.IsEmpty then
         begin
         freeandnil(ado_query);
         result:=false;
         MessageDlg('Erro 692 Nota nao encontrada!',mtWarning,[mbOk],0);
         exit;
         end;
      if trim(pSalvarXmlPara)<>'' then
         (ado_query.FieldByName('NSNFE_XML_CLIENTE') as TMemoField).SaveToFile(pSalvarXmlPara);
      streStream := TStringStream.Create( ado_query.FieldByName('NSNFE_XML_CLIENTE').AsString);
     // Cria a variável baseada no TXMLDocument
      vXMLDoc := TXMLDocument.Create(self);
      vXMLDoc.LoadFromstream(streStream);
      end
   else
      begin
      if not FileExists(pNomeArq) then
         begin
         MessageDlg(('Nao Foi Possivel encontrar o arquivo: '+pNomeArq),mtWarning,[mbOk],0);
         result:=false;
         exit;
         end;
      try
          vXMLDoc := TXMLDocument.Create(self);
      except
         MessageDlg('Erro 720 ao criar o xml document!',mtWarning,[mbOk],0);
         result:=false;
         exit;
         end;
      try
          vXMLDoc.LoadFromFile(pNomeArq);
      except
          MessageDlg('Erro 1732 ao ler o arquivo '+pNomeArq+'!',mtWarning,[mbOk],0);
          result:=false;
          exit;
         end;
      end;

   fGerarEvento('2277-abrindo node infevento');

   NodeMaster := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('infEvento');

   if NodeMaster=nil then
      begin
      fGerarEvento('2283-node nulo nova tentativa');

      NodeMaster:=vXMLDoc.DocumentElement.childNodes.First;
      NodePai:=vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('infEvento');
      end
   else
      NodePai:=NodeMaster;

   if NodePai=nil then
      begin
      fGerarEvento('2293-node pai nil');

      MessageDlg('Erro 1742 ao ler o arquivo '+pNomeArq+'!',mtWarning,[mbOk],0);
      result:=false;
      exit;
      end;
{   if NodeMaster=nil then
      begin
      NodeMaster:=vXMLDoc.DocumentElement.childNodes.First;
      NodePai:=vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('emit');
      end
   else
      NodePai:=NodeMaster.ChildNodes.FindNode('emit');

}

   if NodePai=nil then
      begin
      MessageDlg('Não é um XML de Nota Fiscal Válido!',mtWarning,[mbOk],0);
      fGerarEvento('2312-n ode pai nil');
     result:=false;
      FreeAndNil(vXMLDoc);
      exit;
      end;
   // Esse nó vai ser usado no LOOP

   NodeSec := NodePai;
   // Posiciona o primeiro elemento encontrado
   NodeSec.ChildNodes.First;
   fGerarEvento('2322-continua');

   cds_cce.Append;
   cds_ccechave_acesso.Value  :=NodeMaster.GetAttributeNS('Id','');
   if trim(cds_ccechave_acesso.Value)<>'' then
      cds_ccechave_acesso.Value  :=copy(cds_ccechave_acesso.Value,4,44);

   if Trim(cds_ccechave_acesso.AsString) <> '' then
      begin
      cds_ccechave_acesso_calc.Value := Copy(cds_ccechave_acesso.AsString,1,2)+'.'+Copy(cds_ccechave_acesso.AsString,3,2)+'.'+Copy(cds_ccechave_acesso.AsString,5,2)+'.'+
                            Copy(cds_ccechave_acesso.AsString,7,2)+'.'+Copy(cds_ccechave_acesso.AsString,9,2)+'.'+Copy(cds_ccechave_acesso.AsString,11,3)+'.'+
                            Copy(cds_ccechave_acesso.AsString,14,3)+'/'+Copy(cds_ccechave_acesso.AsString,17,4)+'-'+Copy(cds_ccechave_acesso.AsString,21,2)+'-'+
                            Copy(cds_ccechave_acesso.AsString,23,3)+'.'+Copy(cds_ccechave_acesso.AsString,26,3)+'.'+Copy(cds_ccechave_acesso.AsString,29,3)+'-'+
                            Copy(cds_ccechave_acesso.AsString,32,3)+'-'+Copy(cds_ccechave_acesso.AsString,35,3)+'.'+Copy(cds_ccechave_acesso.AsString,38,3)+'.'+
                            Copy(cds_ccechave_acesso.AsString,41,3)+'-'+Copy(cds_ccechave_acesso.AsString,44,1);
      end;

   fGerarEvento('23339-continua');

   cds_cceEMITXNOME.Value  :=DM1.Tb_EmpRAZAO.Value;
   cds_cceemitEndComp.Value:=DM1.Tb_Empender.AsString;
   if DM1.Tb_EmpNUMERO.AsInteger>0 then
      cds_cceemitEndComp.Value:=cds_cceemitEndComp.Value+' No. '+DM1.Tb_EmpNUMERO.AsString;
   cds_cceemitEndComp.Value:=cds_cceemitEndComp.Value+' '+DM1.Tb_EmpBAIRRO.AsString;
   cds_cceemitCidadeUF.Value:=DM1.Tb_EmpCIDADE.AsString+' - '+DM1.Tb_EmpUF.AsString;
   cds_cceemi_foneFax.Value :='Fone: '+DM1.Tb_EmpFONE.AsString;
   if fsonumero(DM1.Tb_EmpFAX.AsString)>0 then
      cds_cceemi_foneFax.Value :=cds_cceemi_foneFax.Value+' Fax: '+DM1.Tb_EmpFAX.AsString;
   cds_cceemit_CEP.Value :=DM1.Tb_EmpCEP.AsString;
   try
//      cds_ccenum_prot.Value        :=vXMLDoc.DocumentElement.ChildNodes[1].ChildNodes['nProt'].Text;
      cds_ccenum_prot.Value        :=vXMLDoc.DocumentElement.ChildNodes[1].ChildNodes['infEvento'].ChildNodes['nProt'].Text;
//      cds_ccenum_prot.Value        :=vXMLDoc.DocumentElement.ChildNodes[1].ChildNodes['RetEvento'].ChildNodes['nProt'].Text;

   except
      cds_ccenum_prot.Value        :='';
      end;
   cds_cceemit_ie.Value   :=DM1.Tb_EmpINSCRICAO.AsString;
   cds_cceemit_cnpj.Value :=FormatFloat(pDFCNPJ, fsonumero(NodeSec.ChildNodes['CNPJ'].text));

   cds_ccemodnf.Value     :=ado_query.fieldbyName('NSMODELO').asstring;
   cds_ccesernf.Value     :=ado_query.fieldbyName('NSSERIE').asstring;
   cds_ccenumnf.Value     :=ado_query.fieldbyName('NSNUMERO').asstring;
   cds_ccemesano_emi.Value:=FormatDatetime('mm/yyyy', ado_query.fieldbyName('NSDTEMIS').Value);
   cds_cceconduso.Value   :=NodeSec.ChildNodes['detEvento'].ChildNodes['xCondUso'].text;
   cds_ccecorrecao.Value  :=NodeSec.ChildNodes['detEvento'].ChildNodes['xCorrecao'].text;
   cds_ccenomcli_codigo.Value :=ado_query.fieldbyName('CRAZAO').asstring+'-'+ado_query.fieldbyName('CCODCLI').asstring;
   cds_ccefantasia.Value      :=ado_query.fieldbyName('CDENOM').asstring;
   if ado_query.fieldbyName('CCNPJ').Asfloat>0 then
      cds_ccedest_cnpj.Value     :=FormatFloat(pDFCNPJ, ado_query.fieldbyName('CCNPJ').asFloat)
   else
      cds_ccedest_cnpj.Value     :=FormatFloat(pDFCNPF, ado_query.fieldbyName('CCPF').asfloat);

   cds_ccedest_ender.Value    :=ado_query.fieldbyName('CLOG').asstring;
   cds_ccedest_bairro.Value   :=ado_query.fieldbyName('CBAIRRO').asstring;
   cds_ccedest_cidade.Value   :=ado_query.fieldbyName('CCIDADE').asstring;
   cds_ccedest_uf.Value       :=ado_query.fieldbyName('CUF').asstring;
   cds_ccedest_fonefax.Value  :=ado_query.fieldbyName('CFONE01').asstring;
   cds_ccedest_insc_estadual.Value   :=ado_query.fieldbyName('CIE').asstring;
   cds_cceseq.Value                  :=ado_query.fieldbyName('CC1ORDEMEVE').AsInteger;
   cds_ccestat.Value          :=vXMLDoc.DocumentElement.ChildNodes[1].ChildNodes['infEvento'].ChildNodes['cStat'].Text;
   cds_ccedest_cep.Value      :=ado_query.fieldbyName('CCEP').asstring;

//   cds_ccecorrecao.Value  :=NodeSec.ChildNodes['infEvento'].ChildNodes['xCorrecao'].text;
   cds_cce.Post;

      if trim(pSalvarPDFPara)<>'' then
         begin
         if FileExists(pSalvarPDFPara) then
            begin
            if not DeleteFile(pSalvarPDFPara) then
               pMensagem:=pMensagem+'Não foi possivel salvar a nota '+pSalvarPDFPara+#13
            else
               RLReport_CCe.SaveToFile(pSalvarPDFPara);
            end
         else
            RLReport_CCe.SaveToFile(pSalvarPDFPara);
         end
      else
         RLReport_CCe.PreviewModal;

   if fmensagem('Deseja enviar DANFE e XML por email?',0,['1','2'],2)=mrYES then
     begin
     if not DirectoryExists('C:\SGE\DANFE') then
        CreateDir('C:\SGE\DANFE');
     NumNf:=cds_ccenumnf.AsString;
     arqDanfe:='c:\sge\DANFE\'+NumNf+'_CCe.pdf';
     RLReport_CCe.SaveToFile(arqDanfe);

     if DM1.Tb_PargerPFORPEDPAD.asinteger=2 then
       begin
     arqxmlclient:=dm4.Tb_ParGer02PG2PASTAENVIO.AsString;
     if copy(arqxmlclient,length(arqxmlclient),1)<>'\' then
       begin
       arqxmlclient:=copy(arqxmlclient,1,pos('ENVIO',arqxmlclient)-1)+'ENVIADOS\';
       end;
     arqxmlclient:=arqxmlclient+Copy(cds_ccemesano_emi.AsString,4,4)+Copy(cds_ccemesano_emi.AsString,1,2)
                  +'\VERSAO_CLIENTE\'+NumNf+'-car_cor.xml';
       CopyFile(pchar(arqxmlclient),pchar('c:\sge\danfe\'+numNf+'-car_cor.xml'),true);
       end
     else
       begin
       la_tabelas  :='';
       la_Join     :='';
       la_instrucao:='';
       fInnerJoin(1,'CADCLI','CCODEMP','NSCODEMP','CCODCLI','NSCODCLI');
       la_instrucao:=la_instrucao+' and ';
       fInnerJoin4(1,'CADCCOR01','NSCODEMP','CC1CODEMP','NSNUMERO','CC1NUMNF','NSSERIE','CC1SERIE','NSMODELO','CC1MODELO');


       ado_query:=TADOQuery.Create(nil);
       ado_query.Connection:=DM1_ADO.ADOConnection1;
       ado_query.Close;
       ado_query.SQL.Clear;
       ado_query.SQL.Add('Select CC1NFE_XML_CLIENTE as NSNFE_XML_CLIENTE,CDENOM,CC1CHAVE,CC1ORDEMEVE,'
                    +' CRAZAO,NSNUMERO,NSMODELO,NSSERIE,NSDTEMIS,CCODCLI,CCNPJ,CIE,CFONE01,CFAX '
                    +',CLOG,CBAIRRO,CCIDADE,CUF,CFONE01,CC1ORDEMEVE,CCPF,CCEP '
                    +' from CADNS '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_instrucao='','',la_instrucao+' and ')
                    +'  NSCHAVEP=:CHAVE '
                    +' and NSORDEMP=:ORDEM '
                    +' and NSLOTSEQ_CP=:LOTSEQ '
                    +' and NSCODEMP=:CODEMP and CC1CHAVE=:CHAVECC'
                            +'  and NSTIPO<2 ' );
       ado_query.Parameters.ParamByName('CHAVE').Value:=pChave;
       ado_query.Parameters.ParamByName('ORDEM').Value:=01;
       ado_query.Parameters.ParamByName('LOTSEQ').Value:=pChave_ano;
       ado_query.Parameters.ParamByName('CODEMP').Value:=pCodEmp;
       ado_query.Parameters.ParamByName('CHAVECC').Value:=pChaveCC;
       ado_query.Open;
       (ado_query.FieldByName('NSNFE_XML_CLIENTE') as TMemoField).SaveToFile('c:\sge\danfe\'+numNf+'-car_cor.xml');
       FreeAndNil(ado_query);
       end;
     arqxmlclient:='c:\sge\danfe\'+numNf+'-car_cor.xml';



     Application.CreateForm(TFrm_EnviarEmail,Frm_EnviarEmail);
     Frm_EnviarEmail.EdtAssunto.Text:='NOTA FISCAL '+cds_ccenumnf.AsString;
     Frm_EnviarEmail.mmMensagem.Lines.Add(' SEGUE EM ANEXO A COPIA DO DANFE E XML DA NOTA FISCAL ');
     Frm_EnviarEmail.mmMensagem.Lines.Add(' NUMERO..:'+cds_ccenumnf.AsString);
     Frm_EnviarEmail.mmMensagem.Lines.Add(' EMITIDA EM ..:'+cds_ccemesano_emi.AsString);
     Frm_EnviarEmail.mmMensagem.Lines.Add(' CHAVE DE ACESSO..:'+cds_ccechave_acesso.AsString);
     Frm_EnviarEmail.mmMensagem.Lines.Add(' PROTOCOLO DE AUTORIZAÇÃO..:'+cds_ccenum_prot.AsString);
     Frm_EnviarEmail.mmMensagem.Lines.Add(' ');
     Frm_EnviarEmail.mmMensagem.Lines.Add(' '+cds_cceEMITXNOME.AsString);
     if FileExists(arqDanfe) then
       Frm_EnviarEmail.lbxAnexos.Items.Add(arqDanfe);
     if FileExists(arqxmlclient) then
       Frm_EnviarEmail.lbxAnexos.Items.Add(arqxmlclient);
     Frm_EnviarEmail.Tipo:=0;
     Frm_EnviarEmail.CliFor:=cds_cabecalhoccodcli.AsString;
     Frm_EnviarEmail.ShowModal;
     FreeandNil(Frm_EnviarEmail);
     end;                        
   FreeAndNil(ado_query);
except
   end;
result:=true;
end;

procedure TFrm_NFE_Impressao.SpeedButton1Click(Sender: TObject);
begin
if opd1.Execute then
   edt_nomarq.Text:=opd1.FileName;
end;

procedure TFrm_NFE_Impressao.bbProcessarClick(Sender: TObject);
var
mMensagem: string;
begin
mLerDadosXml.pSalvarPDFPara:='';
mLerDadosXml.pSalvarXmlPara:='';
mLerDadosXml.pNomeArq:=edt_nomarq.Text;
mLerDadosXml.pChave:=0;
mLerDadosXml.pChaveAno:=0;
mLerDadosXml.pCodEmp  :=0;
mLerDadosXml.pModelo:='';
mLerDadosXml.pEnviar:=true;
mLerDadosXml.pCodBcoCob := 0;


fLerdadosXml(mLerDadosXml,mMensagem);



end;

procedure TFrm_NFE_Impressao.FormCreate(Sender: TObject);
begin
            RLBand_qrcode.Height :=1;


  QRCodeBitmap := TBitmap.Create;


  Update;



mExisteBoleto:=false;

cds_nfse_cabpis_valor.displayformat:=mcasas;
cds_nfse_cabcofins_valor.displayformat:=mcasas;
cds_nfse_cabinss_valor.displayformat:=mcasas;
cds_nfse_cabir_valor.displayformat:=mcasas;
cds_nfse_cabcsll_valor.displayformat:=mcasas;
cds_nfse_cabtotal_servicos.displayformat:=mcasas;
cds_nfse_cabtotal_desc_incondicionado.displayformat:=mcasas;
cds_nfse_cabtotal_retencoes_federais.displayformat:=mcasas;
cds_nfse_cabtotal_liquido.displayformat:=mcasas;
cds_nfse_cabtotal_deducoes.displayformat:=mcasas;
cds_nfse_cabtotal_base_calculo.displayformat:=mcasas;
cds_nfse_cabissqn_valor.displayformat:=mcasas;


cds_nfse_cabtotal_issqn_retido_Tomador.displayformat:=mcasas;
RLReport_NFSE.Borders.DrawLeft:=true;
RLReport_NFSE.Borders.DrawTop:=true;
RLReport_NFSE.Borders.DrawBottom:=true;
RLReport_NFSE.Borders.DrawRight:=true;


RLNFSE_CAB01.Borders.DrawBottom:=true;
RLNFSE_CAB02.Borders.DrawBottom:=true;

RLNFSE_CAB03.Borders.DrawBottom:=true;
RLNFSE_DEET01.Borders.DrawBottom:=true;
RLNFSE_ROD01.Borders.DrawBottom:=true;
RLNFSE_ROD02.Borders.DrawBottom:=true;
RLNFSE_ROD03.Borders.DrawBottom:=true;
RLNFSE_ROD04.Borders.DrawBottom:=true;
RLNFSE_ROD05.Borders.DrawBottom:=true;
RLNFSE_ROD06.Borders.DrawBottom:=true;
RLPanel1.Borders.DrawRight:=true;
RLPanel2.Borders.DrawRight:=true;
RLPanel3.Borders.DrawRight:=true;
RLPanel4.Borders.DrawRight:=true;
RLPanel5.Borders.DrawRight:=true;
RLPanel8.Borders.DrawRight:=true;


RLPanel11.Borders.DrawRight:=true;
RLPanel12.Borders.DrawRight:=true;

RLPanel9.Borders.Drawtop:=true;
RLPanel9.Borders.DrawRight:=true;

RLPanel10.Borders.Drawtop:=true;
//RLPanel10.Borders.DrawRight:=true;
{
RLPanel13.Borders.Drawtop:=true;
RLPanel13.Borders.DrawRight:=true;
}


if flfilpad(55,'_principal','CPN_TAMFONTEOBSNFE') then
   begin
   RLretSimples_INFADICINFCPL.Font.Height:=valint2(DM4.Tb_FilPad2FPVALOR.AsString);
   RLDBMemo11.Font.Height:=valint2(DM4.Tb_FilPad2FPVALOR.AsString);
   end;


if flfilpad(-1,'_VENDA_PRE','CB_DESCRICAO_COMPLEMENTAR') then
   begin
   mDescricaoComplementar:=DM4.Tb_FilPad2FPVALOR.AsString='true';
   end;


Logomarca:=True;
if flfilpad(0,'_principal','') then
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_NLOGO_NFE',[]) then
    if DM4.Tb_FilPad2FPVALOR.AsString = 'true' then
      Logomarca:=False;
cds_cce.CreateDataSet;

cds_cabecalho.CreateDataSet;
cds_detalhe.CreateDataSet;
cds_vcto.CreateDataSet;

cds_cabecalhoTOTALICMSTOTVBC.DisplayFormat:=mcasas;
cds_cabecalhoTOTALICMSTOTVICMS.DisplayFormat:=mcasas;
cds_cabecalhoTOTALICMSTOTVBCST.DisplayFormat:=mcasas;
cds_cabecalhoTOTALICMSTOTVST.DisplayFormat:=mcasas;
cds_cabecalhoTOTALICMSTOTVPROD.DisplayFormat:=mcasas;

cds_cabecalhoTOTALICMSTOTVOUTRO.DisplayFormat:=mcasas;
cds_cabecalhoTOTALICMSTOTVFRETE.DisplayFormat:=mcasas;
cds_cabecalhoTOTALICMSTOTVSEG.DisplayFormat:=mcasas;
cds_cabecalhoTOTALICMSTOTVDESC.DisplayFormat:=mcasas;
cds_cabecalhoTOTALICMSTOTVIPI.DisplayFormat:=mcasas;
cds_cabecalhoTOTALICMSTOTVNF.DisplayFormat:=mcasas;
cds_cabecalhoTRANSPVOLPESOB.DisplayFormat:=mcasas;
cds_cabecalhoTRANSPVOLPESOL.DisplayFormat:=mcasas;
cds_cabecalhoTOTALISSQNTOTVISS.DisplayFormat:=mcasas;
cds_cabecalhoTOTALISSQNTOTVBC.DisplayFormat:=mcasas;
cds_cabecalhoTOTALISSQNTOTVSERV.DisplayFormat:=mcasas;

cds_detalheDETPRODQCOM.DisplayFormat:=mcasqtd;
cds_detalheDETPRODVPROD.DisplayFormat:=mcasas;
cds_detalheDETPRODVUNCOM.DisplayFormat:=mcasas;
cds_detalheDETPRODVDESC.DisplayFormat:=mcasas;

end;

procedure TFrm_NFE_Impressao.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
edt_qtd_simples.Caption     :=FormatFloat(mcasqtd, cds_detalheDETPRODQCOM.AsFloat)+'  ';
edt_unitario_simples.Caption:=FormatFloat(mCasaspu_NFE, cds_detalheDETPRODVUNCOM.AsFloat)+'  ';
edt_total_simples.Caption   :=FormatFloat(mCasas, cds_detalheDETPRODVPROD.AsFloat -
iif(mImprimirDesconto=true,cds_detalheDETPRODVDESC.AsFloat,0))+'  ';
rldetretrato_marca.Caption:='';
if ValFloat(cds_detalheDETPRODCPROD.AsString)>0 then
  begin
  flcadpro(1,0,0,cds_detalheDETPRODCPROD.AsString);
  rldetretrato_marca.Caption:=DM1.Tb_ProPDMARCA.AsString;
  end;

if trim(cds_detalheDETINFADPROD.AsString)<>'' then
   rlRetSim_Complemento.Visible:=true
else
   rlRetSim_Complemento.Visible:=false;

end;

procedure TFrm_NFE_Impressao.RLBand_canhoto_simplesAfterPrint(
  Sender: TObject);
begin
RLBand_canhoto_simples.Visible:=false;

end;

procedure TFrm_NFE_Impressao.RLBand14AfterPrint(Sender: TObject);
begin
RLBand14.Visible:=false;

end;

procedure TFrm_NFE_Impressao.RLBand1_cab02_simplesAfterPrint(
  Sender: TObject);
begin
RLBand1_cab02_simples.Visible:=false;

end;

procedure TFrm_NFE_Impressao.RLBand_rodape_simplesAfterPrint(
  Sender: TObject);
begin
RLBand_rodape_simples.Visible:=false;

end;

procedure TFrm_NFE_Impressao.rl_band_cab02_simplesAfterPrint(
  Sender: TObject);
begin
rl_band_cab02_simples.Visible:=false;

end;

procedure TFrm_NFE_Impressao.RLBand_Rod01_simplesAfterPrint(
  Sender: TObject);
begin
RLBand_Rod01_simples.Visible:=false;

end;

procedure TFrm_NFE_Impressao.rl_lat_DtRec_simplesAfterPrint(
  Sender: TObject);
begin
rl_lat_DtRec_simples.Visible:=False;

end;

procedure TFrm_NFE_Impressao.rl_lat_recebemos_simplesAfterPrint(
  Sender: TObject);
begin
rl_lat_recebemos_simples.Visible:=False;

end;

procedure TFrm_NFE_Impressao.rl_lat_ObsNFE_simplesAfterPrint(
  Sender: TObject);
begin
rl_lat_ObsNFE_simples.Visible:=False;

end;

procedure TFrm_NFE_Impressao.rl_lat_Nota_simplesAfterPrint(
  Sender: TObject);
begin
rl_lat_Nota_simples.Visible:=FALSE;
end;

procedure TFrm_NFE_Impressao.rl_lat_numcan_simplesAfterPrint(
  Sender: TObject);
begin
rl_lat_numcan_simples.Visible:=false;
end;

procedure TFrm_NFE_Impressao.rl_lat_Ass_SimplesAfterPrint(Sender: TObject);
begin
rl_lat_Ass_Simples.Visible:=false;
end;

procedure TFrm_NFE_Impressao.rl_lat_borda_rec_simplesAfterPrint(
  Sender: TObject);
begin
rl_lat_borda_rec_simples.Visible:=false;
end;

procedure TFrm_NFE_Impressao.rl_lat_Borda_DtEmis_simplesAfterPrint(
  Sender: TObject);
begin
rl_lat_Borda_DtEmis_simples.Visible:=false;
end;

procedure TFrm_NFE_Impressao.RLBand17BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if trim(cds_detalheDETINFADPROD.AsString)<>'' then
   rlPaiSimples_Linha02.Visible:=true
else
   rlPaiSimples_Linha02.Visible:=false;
rldet_paisagem_marca.Caption:='';
if ValFloat(cds_detalheDETPRODCPROD.AsString)>0 then
  begin
  flcadpro(1,0,0,cds_detalheDETPRODCPROD.AsString);
  rldet_paisagem_marca.Caption:=DM1.Tb_ProPDMARCA.AsString;
  end;

end;

procedure TFrm_NFE_Impressao.rl_Paisagem_SimplesBeforePrint(
  Sender: TObject; var PrintIt: Boolean);
begin
rl_lat_Nota_simples.Caption  := 'Nº : '+cds_CabecalhoIDENNF.AsString;
rl_lat_Serie_simples.Caption := 'SERIE : '+FormatFloat('000',cds_CabecalhoIDESERIE.AsFloat);


end;

procedure TFrm_NFE_Impressao.RLBand13BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if cds_cabecalhoCRT.AsInteger<>3 then
   begin
   rlcabretrato_cst.Lines.Clear;
   rlcabretrato_cst.Lines.Add('CSOSN');
   end;
end;


procedure TFrm_NFE_Impressao.RLBand19BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if cds_cabecalhoCRT.AsInteger<>3 then
   begin
   mPaisagem_Simples_CST.Lines.Clear;
   mPaisagem_Simples_CST.Lines.Add('CSOSN');
   end;

end;

procedure TFrm_NFE_Impressao.cds_cabecalhoCalcFields(DataSet: TDataSet);
begin
if Length(cds_cabecalhodest_cnpj.AsString)>0 then
  begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add(' select CRAZAO,CCODCLI,CDENOM ');
  DM1.Query1.SQL.Add(' from CADCLI where 1=1 ');
  if Length(cds_cabecalhodest_cnpj.AsString)>14 then
    DM1.Query1.SQL.Add(' and CCNPJ ='+FloatToStr(ValFloat(cds_cabecalhodest_cnpj.AsString)))
  else
    DM1.Query1.SQL.Add(' and CCPF='+FloatToStr(ValFloat(cds_cabecalhodest_cnpj.AsString)));
  if (trim(cds_cabecalhodest_inscricao.AsString)<>'') and (trim(cds_cabecalhodest_inscricao.AsString)<>'ISENTO') and (fsonumero(cds_cabecalhodest_inscricao.AsString)>0)  then
    DM1.Query1.SQL.Add(' and trim(regexp_replace(CIE,'+QuotedStr('\/|\.|\-')+'))='+fdeixanum(cds_cabecalhodest_inscricao.AsString));
  //  DM1.Query1.SQL.Add(' and LTRIM(translate(CIE, translate(CIE, '+QuotedStr('1234567890')+', '+QuotedStr(' ')+') , '+Quotedstr(' ')+')) ='+fdeixanum(cds_cabecalhodest_inscricao.AsString));
  //if trim(cds_cabecalhodest_inscricao.AsString)<>'' then
  //  DM1.Query1.SQL.Add(' and CIE='+QuotedStr(cds_cabecalhodest_inscricao.AsString));
  try
     DM1.Query1.Open;
  except
    DM1.Query1.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
    end;
  if not DM1.Query1.IsEmpty then
    cds_cabecalhoccodcli.AsInteger:=DM1.Query1.fieldbyName('CCODCLI').AsInteger;
  end;
end;

procedure TFrm_NFE_Impressao.PaintBox1Paint(Sender: TObject);
var
  Scale: Double;
begin
  PaintBox1.Canvas.Brush.Color := clWhite;
  PaintBox1.Canvas.FillRect(Rect(0, 0, PaintBox1.Width, PaintBox1.Height));
  if ((QRCodeBitmap .Width > 0) and (QRCodeBitmap.Height > 0)) then
  begin
    if (PaintBox1.Width < PaintBox1.Height) then
    begin
      Scale := PaintBox1.Width / QRCodeBitmap.Width;
    end else
    begin
      Scale := PaintBox1.Height / QRCodeBitmap.Height;
    end;
    PaintBox1.Canvas.StretchDraw(Rect(0, 0, Trunc(Scale * QRCodeBitmap.Width), Trunc(Scale * QRCodeBitmap.Height)), QRCodeBitmap);
  end;


end;


Procedure TFrm_NFE_Impressao.SaveBitmap(pNomeArq: String);
Var Bitmap: TBitmap; Wid,Hei: Integer;
Begin
Wid:=PaintBox1.Width;
Hei:=PaintBox1.Height;
Bitmap:=TBitmap.Create;
Bitmap.Height:=Hei;
Bitmap.Width:=Wid;
Bitmap.Canvas.CopyRect(Rect(0, 0, Wid, Hei), PaintBox1.Canvas,Rect(0, 0, Wid, Hei));
//Bitmap.SaveToFile('c:\test.bmp');
Bitmap.Free;
End;


procedure TFrm_NFE_Impressao.Update;
var
  QRCode: TDelphiZXingQRCode;
  Row, Column: Integer;
begin
  QRCode := TDelphiZXingQRCode.Create;
  try
    QRCode.Data := edtText.Text;
    QRCode.Encoding := TQRCodeEncoding(cmbEncoding.ItemIndex);
    QRCode.QuietZone := StrToIntDef(edtQuietZone.Text, 4);
    QRCodeBitmap.Height:=QRCode.Rows;

    QRCodeBitmap.Width:=QRCode.Columns;
//    QRCodeBitmap.row S  etSize(QRCode.Rows, QRCode.Columns);

//    QRCodeBitmap.SetSize(QRCode.Rows, QRCode.Columns);
    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if (QRCode.IsBlack[Row, Column]) then
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack;
        end else
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
        end;
      end;
    end;
  finally
    QRCode.Free;
  end;
  PaintBox1.Repaint;
end;

procedure TFrm_NFE_Impressao.edtTextChange(Sender: TObject);
begin
  Update;
end;

procedure TFrm_NFE_Impressao.FormDestroy(Sender: TObject);
begin
  QRCodeBitmap.Free;
end;




// INICIO NOTA FISCAL DE SERVICO

function TFrm_NFE_Impressao.fLerdadosNFSE(pSalvarPDFPara,pSalvarXmlPara,pNomeArq: String;pChave,pChave_ano,pCodEmp: Integer; pEnviar: Boolean;out pMensagem: string): Boolean;

var
mjpeg: TJPEGImage;
mdadosxml: string;
query_dadoscli: tQuery;

streStream: TStringStream;
mTextoNfse: TStrings;
i: integer;
begin
pMensagem:='';
mTextoNfse:=TStringList.create;
if (pChave<>0) then
   begin
   if not fLerGenerico_query('CADP01,CADCLI','P1CODCLI,CIM,P1TOTALL,CCIDADE,CUF,CIM,CCEP,CLOG || '+quotedstr(' ')+' || CCOMPL AS CLOG ','P1CODEMP=0'+Inttostr(pcodemp)
                 +' and P1CHAVE='+floattostr(pChave)+' and P1LOTSEQ='+inttostr(pChave_ano)
                 +' AND CCODCLI=P1CODCLI '
                 ,query_dadoscli) then
      begin
      pmensagem:=pmensagem+'Pedido '+inttostr(pChave)+'/'+inttostr(pChave_ano)+' não encontrado!'+#13;
      result:=false;
      exit;
      end;
   end;
cds_nfse_cab.CreateDataSet;
cds_nfse_det.CreateDataSet;
cds_nfse_cab.open;
cds_nfse_det.Open;

mjpeg:=TJPEGImage.Create;
if fLerImagemGravaStream('LOGO_NFE',mjpeg)=true then
   begin
   RLImage_logo_prestador.Picture.Bitmap.Assign(mjpeg);
   end;

if fLerImagemGravaStream('LOGO_NFSE_PREF',mjpeg)=true then
   begin
   rlnfse_logo_pref.Picture.Bitmap.Assign(mjpeg);
   end;




freeandnil(mjpeg);


if (pNomeArq<>'')  then
   begin
   if not FileExists(pNomeArq) then
      begin
      pmensagem:=pmensagem+'Erro ao ler xml '+pNomeArq+'!';
      result:=false;
      exit;
      end
   else
      begin
      try
          mTextoNfse.LoadFromFile(pNomeArq);
      except on e : exception do
         begin
         pmensagem:=pmensagem+'Erro ao ler xml '+pNomeArq+'!'+#13;
         result:=false;
         exit;
         end;
         end;
      end;
   end
else
   begin
   if not fLerGenerico_query('CADNS','NSNFE_XML_CLIENTE','NSCODEMP=0'+Inttostr(pcodemp)
                 +' and NSCHAVEP='+floattostr(pChave)+' and NSLOTSEQ_CP='+inttostr(pChave_ano)
                 +' AND NSTIPO=2  '
                 ,query_consulta) then
      begin
      pmensagem:=pmensagem+'Não foi possivel encontrar o XML DA NFSe! chave do pedido '+Inttostr(pChave)+'/'+IntToStr(pChave_ano)+'-'+IntToStr(pCodEmp)+#13;
      result:=false;
      exit;
      end
   else if query_consulta.fieldbyname('NSNFE_XML_CLIENTE').IsNull=true then
      begin
      pmensagem:=pmensagem+'Não foi possivel encontar o XML DA NFSe! chave do pedido '+Inttostr(pChave)+'/'+IntToStr(pChave_ano)+'-'+IntToStr(pCodEmp)+#13;
      result:=false;
      exit;
      end;
   mTextoNfse.Text := query_consulta.FieldByName('NSNFE_XML_CLIENTE').AsString;
   end;




cds_nfse_cab.append;
cds_nfse_cabdadosprefl01.Value:='Prefeitura de Goiânia';
cds_nfse_cabdadosprefl02.Value:='Secretaria Municipal de Financas';

cds_nfse_cabdadosprefl03.Value:='Nota Fiscal de Servicos Eletrônica - NFS-e';
cds_nfse_cabdadosprefl04.Value:='AIDF 45446/2012';

cds_nfse_cabinfadicionais.Value:=getConteudoTAG(mTextoNfse.Text,'OutrasInformacoes','InfNfse','','');







cds_nfse_cabinss_valor.Value  :=valfloat(mudapv(getConteudoTAG(mTextoNfse.Text,'ValorInss','Valores','','')));

cds_nfse_cabinss_valor_texto.Value  :=FormatFloat(mcasas,  cds_nfse_cabinss_valor.Value);




cds_nfse_cabdatemis.AsDateTime     :=fSairDataHoraXml('A', getConteudoTAG(mTextoNfse.Text,'DataEmissao','InfNfse','',''));

cds_nfse_cabnumnfse.Value:=valint(getConteudoTAG(mTextoNfse.Text,'Numero','InfNfse','',''));
cds_nfse_cabnumrps.Value:=valint(getConteudoTAG(mTextoNfse.Text,'Numero','IdentificacaoRps','',''));




cds_nfse_cabcodverificacao.Value:=getConteudoTAG(mTextoNfse.Text,'CodigoVerificacao','InfNfse','','');
cds_nfse_cabprest_cnpj.Value    :=MaskCPFCNPJ( getConteudoTAG(mTextoNfse.Text,'Cnpj','Prestador','',''));

cds_nfse_cabprest_razao.Value:=DM1.Tb_EmpRAZAO.AsString;

cds_nfse_cabprest_im.Value:= getConteudoTAG(mTextoNfse.Text,'InscricaoMunicipal','IdentificacaoPrestador','','');

cds_nfse_cabInformacoesComplementares.value := getConteudoTAG(mTextoNfse.Text,'InformacoesComplementares','DeclaracaoPrestacaoServico','','');

cds_nfse_cabprest_ender.Value:=DM1.Tb_Empender.AsString;

cds_nfse_cabprest_bairro.Value:=DM1.Tb_EmpBAIRRO.AsString;

cds_nfse_cabprest_municipio.Value:=DM1.Tb_EmpCIDADE.AsString;

cds_nfse_cabprest_mun_uf_cep_fone.Value:=DM1.Tb_EmpCIDADE.AsString+' - '+DM1.Tb_EmpUF.AsString+' CEP '+DM1.Tb_EmpCEP.AsString+' Telefone '+DM1.Tb_EmpFONE.AsString;

cds_nfse_cabprest_uf.Value:=DM1.Tb_EmpUF.AsString;

cds_nfse_cabprest_fone.Value:=DM1.Tb_EmpFONE.AsString;
cds_nfse_cabTomador_razao.Value:=getConteudoTAG(mTextoNfse.Text,'RazaoSocial','TomadorServico','','');


cds_nfse_cabTomador_cnpj.Value:=MaskCPFCNPJ(getConteudoTAG(mTextoNfse.Text,'Cnpj','TomadorServico','',''));
 if fsonumero(cds_nfse_cabTomador_cnpj.Value)=0 then
    cds_nfse_cabTomador_cnpj.Value:=MaskCPFCNPJ(getConteudoTAG(mTextoNfse.Text,'Cpf','TomadorServico','',''));




 if fsonumero(cds_nfse_cabTomador_cnpj.Value)=0 then
   cds_nfse_cabTomador_cnpj.Value    :=MaskCPFCNPJ(getConteudoTAG(mTextoNfse.Text,'Cpf','TomadorServico','',''));

   cds_nfse_cabOptanteSimplesNacional.Value    :=valint(getConteudoTAG(mTextoNfse.Text,'OptanteSimplesNacional','DeclaracaoPrestacaoServico','',''));

if cds_nfse_cabOptanteSimplesNacional.AsInteger=2 then
   cds_nfse_cabinfimp_linha01.AsString:='- Prestador enquadrado no Simples Nacional.';

cds_nfse_cabinfimp_linha02.AsString:='- A autenticidade desta Nota Fiscal pode ser verificada na página da Prefeitura em https://www.issnetonline.com.br/goiania/Online/';
if pchave=0 then
   begin
   if fsonumero(cds_nfse_cabTomador_cnpj.AsString)>0 then
      begin
      if not fLerGenerico_query('CADCLI'
         ,'CCODCLI AS P1CODCLI,CIM,0 AS P1TOTALL,CCIDADE,CUF,CLOG || '+quotedstr(' ')+' || CCOMPL AS CLOG ,CCEP'
         ,' (CCNPJ=0'+fdeixanum(cds_nfse_cabTomador_cnpj.AsString)
         +' OR CCPF=0'+fdeixanum(cds_nfse_cabTomador_cnpj.AsString)+')'
         ,query_dadoscli) then
          fLerGenerico_query('DUAL','0  AS P1CODCLI,'+quotedstr(' ')+' as CIM,0 AS P1TOTALL,'+QuotedStr('NAO CADASTRADO')+'CCIDADE,'
                             +QuotedStr(DM1.Tb_EmpUF.AsString)+'CUF',
            ''
            ,query_dadoscli);
      end;
   end;







cds_nfse_cabTomador_im.Value:= query_dadoscli.fieldbyname('CIM').AsString;


mdadosxml:=getConteudoTAG(mTextoNfse.Text,'TomadorServico','Numero','','');
if trim(mdadosxml)<>'' then
   cds_nfse_cabTomador_ender.Value:=cds_nfse_cabTomador_ender.Value+' Nro. '+mdadosxml;

mdadosxml:= getConteudoTAG(mTextoNfse.Text,'TomadorServico','Complemento','','');
if trim(mdadosxml)<>'' then
   cds_nfse_cabTomador_ender.Value:=cds_nfse_cabTomador_ender.Value+' '+mdadosxml;

cds_nfse_cabTomador_bairro.Value:= getConteudoTAG(mTextoNfse.Text,'Bairro','TomadorServico','','');


cds_nfse_cabTomador_municipio.Value:=query_dadoscli.fieldbyname('CCIDADE').asstring;
cds_nfse_cabTomador_uf.Value:=query_dadoscli.fieldbyname('CUF').asstring;

cds_nfse_cabTomador_ender.Value:=query_dadoscli.fieldbyname('CLOG').asstring;


cds_nfse_cabTomador_cep.Value:=getConteudoTAG(mTextoNfse.Text,'Cep','TomadorServico','','');
cds_nfse_cabtomador_num_uf_cep_fone.value := cds_nfse_cabTomador_municipio.Value+' - '+cds_nfse_cabTomador_uf.Value+' - ' + query_dadoscli.fieldbyname('CCEP').asstring;



cds_nfse_cabprest_cnae.Value:=getConteudoTAG(mTextoNfse.Text,'CodigoTributacaoMunicipio','DeclaracaoPrestacaoServico','','');

cds_nfse_cabpis_valor.Value:=valfloat(mudapv(getConteudoTAG(mTextoNfse.Text,'ValorPis','DeclaracaoPrestacaoServico','','')));

cds_nfse_cabinss_valor.Value:=valfloat(mudapv(getConteudoTAG(mTextoNfse.Text,'ValorInss','DeclaracaoPrestacaoServico','','')));

cds_nfse_cabir_valor.Value:=valfloat(mudapv(getConteudoTAG(mTextoNfse.Text,'ValorIr','DeclaracaoPrestacaoServico','','')));


cds_nfse_cabir_valor.Value:=valfloat(mudapv(getConteudoTAG(mTextoNfse.Text,'ValorIr','DeclaracaoPrestacaoServico','','')));


cds_nfse_cabcofins_valor.Value:=valfloat(mudapv(getConteudoTAG(mTextoNfse.Text,'ValorCofins','DeclaracaoPrestacaoServico','','')));

cds_nfse_cabcsll_valor.Value:=valfloat(mudapv(getConteudoTAG(mTextoNfse.Text,'ValorCsll','DeclaracaoPrestacaoServico','','')));

cds_nfse_cabtotal_liquido.Value:=valfloat(mudapv(getConteudoTAG(mTextoNfse.Text,'ValorLiquidoNfse','ValoresNfse','','')));
cds_nfse_cabtotal_servicos.Value:=valfloat(mudapv(getConteudoTAG(mTextoNfse.Text,'ValorServicos','DeclaracaoPrestacaoServico','','')));
fVerificarTitulosEAjustar(pChave,pChave_ano,pCodemp, cds_nfse_cabtotal_liquido.Value);
//function TFrm_NFE_Impressao.fLerdadosNFSE(pSalvarPDFPara,pSalvarXmlPara,pNomeArq: String;pChave,pChave_ano,pCodEmp: Integer; pEnviar: Boolean;out pMensagem: string): Boolean;

cds_nfse_cabtotal_desc_incondicionado.Value:=valfloat(mudapv(getConteudoTAG(mTextoNfse.Text,'DescontoIncondicionado','DeclaracaoPrestacaoServico','','')));


if valint(getConteudoTAG(mTextoNfse.Text,'Servico','IssRetido','',''))=1 then
   cds_nfse_cabtotal_issqn_retido_tomador.Value:=valfloat(mudapv(getConteudoTAG(mTextoNfse.Text,'ValorIss','ValoresNfse','','')))
else
   cds_nfse_cabissqn_valor.Value:=valfloat(mudapv(getConteudoTAG(mTextoNfse.Text,'ValorIss','ValoresNfse','','')));

cds_nfse_cabissqn_aliquota.Value:=valfloat(mudapv(getConteudoTAG(mTextoNfse.Text,'Aliquota','ValoresNfse','','')));

cds_nfse_cabtotal_base_calculo.Value:=valfloat(mudapv(getConteudoTAG(mTextoNfse.Text,'BaseCalculo','ValoresNfse','','')));
//cds_nfse_cabissqn_aliquota.Value:=valfloat(mudapv(getConteudoTAG(mTextoNfse.Text,'Aliquota','Valores','','')));


cds_nfse_cabtotal_retencoes_federais.Value:=0;



cds_nfse_cabsimbolo_moeda.Value:=DM1.Tb_PargerpMOEDA.AsString;

cds_nfse_cabtotal_deducoes.Value:=valfloat(mudapv(getConteudoTAG(mTextoNfse.Text,'ValorDeducoes','DeclaracaoPrestacaoServico','','')));

cds_nfse_cabserv_prestado_codigo_municipio.Value:=getConteudoTAG(mTextoNfse.Text,'CodigoMunicipio','DeclaracaoPrestacaoServico','','');

cds_nfse_cabimposto_devido_codigo_municipio.Value:=getConteudoTAG(mTextoNfse.Text,'MunicipioIncidencia','DeclaracaoPrestacaoServico','','');


if fLerGenerico_query('CADLOC','LNOME,LUF','LCODMUN_IBGE='+fdeixanum(cds_nfse_cabserv_prestado_codigo_municipio.Value)
       ,query_consulta) then
   cds_nfse_cablocal_servico_prestado.Value:=query_consulta.fieldbyname('LNOME').AsString+' - '+query_consulta.fieldbyname('LUF').AsString;

if fLerGenerico_query('CADLOC','LNOME,LUF','LCODMUN_IBGE='+fdeixanum(cds_nfse_cabimposto_devido_codigo_municipio.Value)
       ,query_consulta) then
   cds_nfse_cablocal_imposto_devico.Value:=query_consulta.fieldbyname('LNOME').AsString+' - '+query_consulta.fieldbyname('LUF').AsString;


cds_nfse_det.append;

cds_nfse_detitem.value:='001';

cds_nfse_detdescricao.Value:=fSubstituirtexto(getConteudoTAG(mTextoNfse.Text,'Discriminacao','DeclaracaoPrestacaoServico','',''),'\s\n',' ');
//                    ,'\s\n',chr(13)+chr(10));


cds_nfse_det.Post;
cds_nfse_cab.Post;

query_dadoscli.close;
freeandnil(query_dadoscli);

if trim(pSalvarPDFPara)<>'' then
   begin
   if FileExists(pSalvarPDFPara) then
      begin
        if not DeleteFile(pSalvarPDFPara) then
         pMensagem:=pMensagem+'Não foi possivel salvar a nota '+pSalvarPDFPara+#13
      else
         RLReport_NFSE.SaveToFile(pSalvarPDFPara);
      end
   else
      RLReport_NFSE.SaveToFile(pSalvarPDFPara);
   end
else
   RLReport_NFSE.PreviewModal;

if pmensagem<>'' then
   result:=false
else
   result:=true;

end;



// INICIO

{
function TFrm_NFE_Impressao.fLerdadosNFSE(pSalvarPDFPara,pSalvarXmlPara,pNomeArq: String;pChave,pChave_ano,pCodEmp: Integer; pEnviar: Boolean;out pMensagem: string): Boolean;

var

vXMLDoc: TXMLDocument;
EntryType,nodeTemp,NodeListaNFSE,NodeListaMensagem_Retorno: IXMLNode;

mjpeg: TJPEGImage;
mdadosxml: string;
query_dadoscli: tQuery;

streStream: TStringStream;
TextoNfse: TStrings;
i: integer;
begin
pMensagem:='';
TextoNfse:=TStrings.create;
if (pChave<>0) then
   begin
   if not fLerGenerico_query('CADP01,CADCLI','P1CODCLI,CIM,P1TOTALL,CCIDADE,CUF,CIM','P1CODEMP=0'+Inttostr(pcodemp)
                 +' and P1CHAVE='+floattostr(pChave)+' and P1LOTSEQ='+inttostr(pChave_ano)
                 +' AND CCODCLI=P1CODCLI '
                 ,query_dadoscli) then
      begin
      pmensagem:=pmensagem+'Pedido '+inttostr(pChave)+'/'+inttostr(pChave_ano)+' não encontrado!'+#13;
      result:=false;
      exit;
      end;
   end;
cds_nfse_cab.CreateDataSet;
cds_nfse_det.CreateDataSet;
cds_nfse_cab.open;
cds_nfse_det.Open;

mjpeg:=TJPEGImage.Create;
if fLerImagemGravaStream('LOGO_NFE',mjpeg)=true then
   begin
   RLImage_logo_prestador.Picture.Bitmap.Assign(mjpeg);
   end;

if fLerImagemGravaStream('LOGO_NFSE_PREF',mjpeg)=true then
   begin
   rlnfse_logo_pref.Picture.Bitmap.Assign(mjpeg);
   end;




freeandnil(mjpeg);


if (pNomeArq<>'')  then
   begin
   if not FileExists(pNomeArq) then
      begin
      pmensagem:=pmensagem+'Erro ao ler xml '+pNomeArq+'!';
      result:=false;
      exit;
      end
   else
      begin
      try
          vXMLDoc := TXMLDocument.Create(self);

          vXMLDoc.LoadFromFile(pNomeArq);
          NodeListaNFSE := vXMLDoc.DocumentElement.childNodes['ListaNfse'];

          if NodeListaNFSE=nil then
             begin
             pmensagem:=pmensagem+'node NotaServico nao Encontrado'+#13;
             freeandnil(vXMLDoc);
             result:=false;
             exit;
             end;
      except on e : exception do
         begin
         pmensagem:=pmensagem+'Erro ao ler xml '+pNomeArq+'!'+#13;
         result:=false;
         exit;
         end;
         end;
      end;
   end
else
   begin
   if not fLerGenerico_query('CADNS','NSNFE_XML_CLIENTE','NSCODEMP=0'+Inttostr(pcodemp)
                 +' and NSCHAVEP='+floattostr(pChave)+' and NSLOTSEQ_CP='+inttostr(pChave_ano)
                 +' AND NSTIPO=2  '
                 ,query_consulta) then
      begin
      pmensagem:=pmensagem+'Não foi possivel encontrar o XML DA NFSe! chave do pedido '+Inttostr(pChave)+'/'+IntToStr(pChave_ano)+'-'+IntToStr(pCodEmp)+#13;
      result:=false;
      exit;
      end
   else if query_consulta.fieldbyname('NSNFE_XML_CLIENTE').IsNull=true then
      begin
      pmensagem:=pmensagem+'Não foi possivel encontar o XML DA NFSe! chave do pedido '+Inttostr(pChave)+'/'+IntToStr(pChave_ano)+'-'+IntToStr(pCodEmp)+#13;
      result:=false;
      exit;
      end;
   try
//      streStream := TStringStream.Create( fSubstituirtexto( query_consulta.FieldByName('NSNFE_XML_CLIENTE').AsString,'\n',''));





      vXMLDoc := TXMLDocument.Create(self);
      vXMLDoc.LoadFromstream(streStream);

      NodeListaNFSE := vXMLDoc.DocumentElement.childNodes['ListaNfse'];
                                              lindomar
      if NodeListaNFSE=nil then
         begin
         pmensagem:=pmensagem+'node NotaServico nao Encontrado'+#13;
         freeandnil(vXMLDoc);
         exit;
         end;
      except on e : exception do
         begin
         pmensagem:=pmensagem+'Erro ao ler xml '+pNomeArq+'!'+#13;
         result:=false;
         exit;
         end;
         end;
   end;


NodeListaMensagem_Retorno := vXMLDoc.DocumentElement.childNodes['ListaMensagemRetorno'];


cds_nfse_cab.append;
cds_nfse_cabdadosprefl01.Value:='Prefeitura de Goiânia';
cds_nfse_cabdadosprefl02.Value:='Secretaria Municipal de Financas';

cds_nfse_cabdadosprefl03.Value:='Nota Fiscal de Servicos Eletrônica - NFS-e';
cds_nfse_cabdadosprefl04.Value:='AIDF 45446/2012';

cds_nfse_cabinfadicionais.Value:=NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse'].ChildNodes['OutrasInformacoes'].Text;


cds_nfse_cabissqn_aliquota.Value:=valfloat(mudapv(NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse']
          .ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['Servico'].ChildNodes['Valores'].ChildNodes['Aliquota'].Text));

cds_nfse_cabissqn_valor.Value  :=valfloat(mudapv(NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse']
          .ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['Servico'].ChildNodes['Valores'].ChildNodes['ValorIss'].Text));

cds_nfse_cabdatemis.AsDateTime     :=fSairDataHoraXml('A',
                                      NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse'].ChildNodes['DataEmissao'].Text);

cds_nfse_cabnumnfse.Value:=valint(NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse'].ChildNodes['Numero'].Text);
cds_nfse_cabcodverificacao.Value:=NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse'].ChildNodes['CodigoVerificacao'].Text;
cds_nfse_cabprest_cnpj.Value    :=MaskCPFCNPJ(
    NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse'].ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['Prestador']
    .ChildNodes['IdentificacaoPrestador'].ChildNodes['CpfCnpj'].ChildNodes['Cnpj'].Text)
    ;

cds_nfse_cabprest_razao.Value:=DM1.Tb_EmpRAZAO.AsString;

cds_nfse_cabprest_im.Value:=NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse'].ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['Prestador']
    .ChildNodes['IdentificacaoPrestador'].ChildNodes['InscricaoMunicipal'].Text;

cds_nfse_cabprest_ender.Value:=DM1.Tb_Empender.AsString;

cds_nfse_cabprest_bairro.Value:=DM1.Tb_EmpBAIRRO.AsString;

cds_nfse_cabprest_municipio.Value:=DM1.Tb_EmpCIDADE.AsString;

cds_nfse_cabprest_mun_uf_cep_fone.Value:=DM1.Tb_EmpCIDADE.AsString+' - '+DM1.Tb_EmpUF.AsString+' CEP '+DM1.Tb_EmpCEP.AsString+' Telefone '+DM1.Tb_EmpFONE.AsString;

cds_nfse_cabprest_uf.Value:=DM1.Tb_EmpUF.AsString;

cds_nfse_cabprest_fone.Value:=DM1.Tb_EmpFONE.AsString;
cds_nfse_cabTomador_razao.Value:=NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse']
.ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['TomadorServico'].ChildNodes['RazaoSocial'].Text;

cds_nfse_cabTomador_cnpj.Value:=MaskCPFCNPJ(
    NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse'].ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['TomadorServico']
    .ChildNodes['IdentificacaoTomadorServico'].ChildNodes['CpfCnpj'].ChildNodes['Cnpj'].Text)
    ;
 if fsonumero(cds_nfse_cabTomador_cnpj.Value)=0 then
    cds_nfse_cabTomador_cnpj.Value:=MaskCPFCNPJ(
    NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse'].ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['TomadorServico']
    .ChildNodes['IdentificacaoTomadorServico'].ChildNodes['CpfCnpj'].ChildNodes['Cpf'].Text)
    ;




 if fsonumero(cds_nfse_cabTomador_cnpj.Value)=0 then
   cds_nfse_cabTomador_cnpj.Value    :=MaskCPFCNPJ(
    NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse'].ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['TomadorServico']
    .ChildNodes['IdentificacaoTomadorServico'].ChildNodes['CpfCnpj'].ChildNodes['Cpf'].Text)
    ;

   cds_nfse_cabOptanteSimplesNacional.Value    :=valint(
    NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse']
    .ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['OptanteSimplesNacional'].Text);

if cds_nfse_cabOptanteSimplesNacional.AsInteger=2 then
   cds_nfse_cabinfimp_linha01.AsString:='- Prestador enquadrado no Simples Nacional.';

cds_nfse_cabinfimp_linha02.AsString:='- A autenticidade desta Nota Fiscal pode ser verificada na página da Prefeitura em www.goiania.go.gov.br.';
if pchave=0 then
   begin
   if fsonumero(cds_nfse_cabTomador_cnpj.AsString)>0 then
      begin
      if not fLerGenerico_query('CADCLI'
         ,'CCODCLI AS P1CODCLI,CIM,0 AS P1TOTALL,CCIDADE,CUF'
         ,' (CCNPJ=0'+fdeixanum(cds_nfse_cabTomador_cnpj.AsString)
         +' OR CCPF=0'+fdeixanum(cds_nfse_cabTomador_cnpj.AsString)+')'
         ,query_dadoscli) then
          fLerGenerico_query('DUAL','0  AS P1CODCLI,'+quotedstr(' ')+' as CIM,0 AS P1TOTALL,'+QuotedStr('NAO CADASTRADO')+'CCIDADE,'
                             +QuotedStr(DM1.Tb_EmpUF.AsString)+'CUF',
            ''
            ,query_dadoscli);
      end;
   end;







cds_nfse_cabTomador_im.Value:= query_dadoscli.fieldbyname('CIM').AsString;
cds_nfse_cabTomador_ender.Value:=

    NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse'].ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['TomadorServico']
    .ChildNodes['Endereco'].ChildNodes['Endereco'].Text;

nodeTemp := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('TomadorServico');


if nodeTemp<>nil then
   begin
   showmessage('numero '+nodeTemp.ChildNodes['Endereco'].ChildNodes['Numero'].Text);
   end;


nodeTemp :=    vXMLDoc.DocumentElement.childNodes['ListaNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse'].ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['TomadorServico']
    .ChildNodes['EnderecoErrado'];

NodeListaNFSE.ChildNodes['CompNfse'];

if nodeTemp<>nil then
   begin
   nodeTemp :=nodeTemp.ChildNodes['Nfse'];
   try
     showmessage('numero '+nodeTemp.NodeName+' value '+nodeTemp.Text);
   except
     end;
   end;
if nodeTemp<>nil then
   begin
   nodeTemp :=nodeTemp.ChildNodes['InfNfse'];
   try
     showmessage('numero '+nodeTemp.NodeName+' value '+nodeTemp.Text);
   except
     end;
   end;

if nodeTemp<>nil then
   begin
   nodeTemp :=nodeTemp.ChildNodes['DeclaracaoPrestacaoServico'];
   try
     showmessage('numero '+nodeTemp.NodeName+' value '+nodeTemp.Text);
   except
     end;
   end;

if nodeTemp<>nil then
   begin
   nodeTemp :=nodeTemp.ChildNodes['TomadorServico'];
   try
     showmessage('numero '+nodeTemp.NodeName+' value '+nodeTemp.Text);
   except
     end;
   end;



if nodeTemp<>nil then
   begin
   nodeTemp :=nodeTemp.ChildNodes['Endereco'];
   try
     showmessage('numero '+nodeTemp.NodeName+' value '+nodeTemp.Text);
   except
     end;
   end;


if nodeTemp<>nil then

   begin
      nodeTemp :=nodeTemp.ChildNodes['Numero'];
   try
     showmessage('numero '+nodeTemp.NodeName+' value '+nodeTemp.nodeValue);
   except
     end;
   end;

  EntryType := NodeListaNFSE.ChildNodes.First;
 for i := 0 to EntryType.ChildNodes.Count -1 do
     begin
      Memo_xml.Lines.Add(EntryType.ChildNodes[i].text);
       EntryType := EntryType.NextSibling;
     end;

mdadosxml:=
    NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse'].ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['TomadorServico']
    .ChildNodes['Endereco'].ChildNodes['Numero'].Text;
if trim(mdadosxml)<>'' then
   cds_nfse_cabTomador_ender.Value:=cds_nfse_cabTomador_ender.Value+' Nro. '+mdadosxml;

mdadosxml:=
    NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse'].ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['TomadorServico']
    .ChildNodes['Endereco'].ChildNodes['Complemento'].Text;
if trim(mdadosxml)<>'' then
   cds_nfse_cabTomador_ender.Value:=cds_nfse_cabTomador_ender.Value+' '+mdadosxml;

cds_nfse_cabTomador_bairro.Value:=
   NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse'].ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['TomadorServico']
    .ChildNodes['Endereco'].ChildNodes['Bairro'].Text;

cds_nfse_cabTomador_municipio.Value:=query_dadoscli.fieldbyname('CCIDADE').asstring;
cds_nfse_cabTomador_uf.Value:=query_dadoscli.fieldbyname('CUF').asstring;

cds_nfse_cabTomador_cep.Value:=NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse'].ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['TomadorServico']
    .ChildNodes['Endereco'].ChildNodes['Cep'].Text;
cds_nfse_cabprest_cnae.Value:=NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse']
          .ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['Servico'].ChildNodes['CodigoTributacaoMunicipio'].Text;

cds_nfse_cabpis_valor.Value:=valfloat(mudapv( NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse']
          .ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['Servico'].ChildNodes['Valores'].ChildNodes['ValorCofins'].Text));
cds_nfse_cabcofins_valor.Value:=valfloat(mudapv(NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse']
          .ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['Servico'].ChildNodes['Valores'].ChildNodes['ValorCofins'].Text));

cds_nfse_cabinss_valor.Value:=valfloat(mudapv(NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse']
          .ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['Servico'].ChildNodes['Valores'].ChildNodes['ValorInss'].Text));

cds_nfse_cabir_valor.Value:=valfloat(mudapv(NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse']
          .ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['Servico'].ChildNodes['Valores'].ChildNodes['ValorIr'].Text));


cds_nfse_cabcofins_valor.Value:=valfloat(mudapv(NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse']
          .ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['Servico'].ChildNodes['Valores'].ChildNodes['ValorCofins'].Text));

cds_nfse_cabcsll_valor.Value:=valfloat(mudapv(NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse']
          .ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['Servico'].ChildNodes['Valores'].ChildNodes['ValorCsll'].Text));

cds_nfse_cabtotal_servicos.Value:=valfloat(mudapv(NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse']
          .ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['Servico'].ChildNodes['Valores'].ChildNodes['ValorServicos'].Text));

cds_nfse_cabtotal_desc_incondicionado.Value:=valfloat(mudapv(NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse']
          .ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['Servico'].ChildNodes['Valores'].ChildNodes['DescontoIncondicionado'].Text));


cds_nfse_cabtotal_retencoes_federais.Value:=0;

cds_nfse_cabtotal_liquido.Value:=valfloat(mudapv(NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse']
          .ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['Servico'].ChildNodes['Valores'].ChildNodes['ValorServicos'].Text));


cds_nfse_cabsimbolo_moeda.Value:=DM1.Tb_PargerpMOEDA.AsString;

cds_nfse_cabtotal_deducoes.Value:=valfloat(mudapv(NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse']
          .ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['Servico'].ChildNodes['Valores'].ChildNodes['ValorDeducoes'].Text));

cds_nfse_cabserv_prestado_codigo_municipio.Value:=NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse']
          .ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['Servico'].ChildNodes['CodigoMunicipio'].Text;

cds_nfse_cabimposto_devido_codigo_municipio.Value:=NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse']
          .ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['Servico'].ChildNodes['MunicipioIncidencia'].Text;

if fLerGenerico_query('CADLOC','LNOME,LUF','LCODMUN_IBGE='+fdeixanum(cds_nfse_cabserv_prestado_codigo_municipio.Value)
       ,query_consulta) then
   cds_nfse_cablocal_servico_prestado.Value:=query_consulta.fieldbyname('LNOME').AsString+' - '+query_consulta.fieldbyname('LUF').AsString;

if fLerGenerico_query('CADLOC','LNOME,LUF','LCODMUN_IBGE='+fdeixanum(cds_nfse_cabimposto_devido_codigo_municipio.Value)
       ,query_consulta) then
   cds_nfse_cablocal_imposto_devico.Value:=query_consulta.fieldbyname('LNOME').AsString+' - '+query_consulta.fieldbyname('LUF').AsString;


cds_nfse_det.append;

cds_nfse_detitem.value:='001';

cds_nfse_detdescricao.Value:=fSubstituirtexto( NodeListaNFSE.ChildNodes['CompNfse'].ChildNodes['Nfse'].ChildNodes['InfNfse']
                    .ChildNodes['DeclaracaoPrestacaoServico'].ChildNodes['Servico'].ChildNodes['Discriminacao'].Text
                    ,'\s\n',' ');
//                    ,'\s\n',chr(13)+chr(10));


cds_nfse_det.Post;
cds_nfse_cab.Post;

query_dadoscli.close;
freeandnil(query_dadoscli);

if trim(pSalvarPDFPara)<>'' then
   begin
   if FileExists(pSalvarPDFPara) then
      begin
        if not DeleteFile(pSalvarPDFPara) then
         pMensagem:=pMensagem+'Não foi possivel salvar a nota '+pSalvarPDFPara+#13
      else
         RLReport_NFSE.SaveToFile(pSalvarPDFPara);
      end
   else
      RLReport_NFSE.SaveToFile(pSalvarPDFPara);
   end
else
   RLReport_NFSE.PreviewModal;

if pmensagem<>'' then
   result:=false
else
   result:=true;

end;

}
// termino por node

function TFrm_NFE_Impressao.fLerdadosXml_novarotina(pSalvarPDFPara,pSalvarXmlPara: String; pXml: String; pEnviar: Boolean; out pMensagem: string;pchave,pordem,pcodemp,plotseq: integer): Boolean;

var vXMLDoc: TXMLDocument;
    NodeArmas,NodeMed,NodeMaster,NodePai,NodeSec,NodeTmp,NodeImposto,NodeTmp_Imp,NodeTmp_ImpCateg,nodeProtocolo: IXMLNode;

mLotes,mDados_Lid: String;
mArmas: String;
mItem: Integer;
x: Integer;
streStream: TStringStream;

mQtdLote,mQtdPed: Real;
arqxmlclient: String;
arqDanfe: String;
stream_imagem: TStream;

J : TJPEGImage;
numNf: String;
mStrings_XML: TStringList;


stream_qrcode: TStream;


begin
pmensagem:='';
if flfilpad(0,'_principal','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_DESCCOMPSEGLIN',[]) then
      begin
      if DM4.Tb_FilPad2FPVALOR.AsString = 'true' then
         mDESCCOMPSEGLIN:=true
      else
         mDESCCOMPSEGLIN:=false;
      end
   else
      mDESCCOMPSEGLIN:=false;


   AVISTASEMDUP:=false;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_AVISTASEMDUP',[]) then
      AVISTASEMDUP:=DM4.Tb_FilPad2FPVALOR.AsString = 'true';


   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_EXIBIRMARCA',[]) then
     begin
     if ValInt(DM4.Tb_FilPad2FPVALOR.AsString) = 0 then
       mImprimirMarca:=true
     else if ValInt(DM4.Tb_FilPad2FPVALOR.AsString) = 1 then
       mImprimirMarca:=False
     else
       if fmensagem('Deseja Imprimir Marca?',0,['1','2'],2)=mrYes then
         mImprimirMarca := True
       else
         mImprimirMarca:=False;
     end
   else
     begin
     if fmensagem('Deseja Imprimir Marca?',0,['1','2'],2)=mrYes then
       mImprimirMarca := True
     else
       mImprimirMarca:=False;
     end;


  end;



j:=TJPEGImage.Create;
if fLerImagemGravaStream('LOGO_NFE',j)=true then
   begin

   if rlLogo_Retrato_simples.Visible=false then
      fAjustarCabecalhoRetrato(true);

   rlLogo_Retrato_simples.Picture.Bitmap.Assign(j);
   rlLogo_Paisagem_simples.Picture.Bitmap.Assign(j);
   end
else
   begin
   if rlLogo_Retrato_simples.Visible=true then
      fAjustarCabecalhoRetrato(false);

   rlLogo_Retrato_simples.Picture:=nil;
   rlLogo_Paisagem_simples.Picture:=nil;
   end;

if not mImprimirMarca then
   begin
   rlcabretrato_marca.Visible:=False;
   rlcabretrato_nome.Width:=rlcabretrato_nome.Width+rlcabretrato_marca.Width;
//   rlRetratoSimplesNome.Width:=rlRetratoSimplesNome.Width+rl_marca1.Width;

   rlcab_paisagem_marca.Visible:=False;
   rldet_paisagem_marca.Visible:=rlcab_paisagem_marca.Visible;

   lblcabpaisagem_nome.Width:=lblcabpaisagem_nome.Width +rlcab_paisagem_marca.Width;
   end
else
   begin
   rlcabretrato_marca.Visible:=True;
//   RLCAB_PROD_RETSIMP.Width:=174;
//   rlRetratoSimplesNome.Width:=254;
   rlcab_paisagem_marca.Visible:=True;
   rldet_paisagem_marca.Visible:=rlcab_paisagem_marca.Visible;

//   lblcabpaisagem_nome.Width:=346;
//   rlPaisagemSimplesNome.Width:=346;

   end;
rldetretrato_marca.Visible:=rlcabretrato_marca.Visible;


if mImprimirDesconto = true then
   begin
   rlcab_vdesc.Visible:=True;
   rlcab_retrato_vdesc.Visible:=true;
   RLDBT_DETPRODVPROD.DataField:='valor_total_menos_desconto';


   end
else
   begin
   lblcabpaisagem_nome.Width := lblcabpaisagem_nome.Width + rlcab_vdesc.Width;

   rlcab_vdesc.Visible:=false;
   rlcab_retrato_vdesc.Visible:=False;
   rlcabretrato_nome.Width:=rlcabretrato_nome.Width+rlcab_retrato_vdesc.Width;

   end;

rldet_DETPRODVDESC.Visible:=rlcab_vdesc.Visible;

rldet_retrato_vdesc.Visible := rlcab_retrato_vdesc.Visible;

fAjustarNFPaisagem;
fAjustarNFRetrato;



if cds_cabecalho.Active then
   cds_cabecalho.EmptyDataSet;
cds_cabecalho.Close;
if cds_detalhe.Active then
   cds_detalhe.EmptyDataSet;
cds_detalhe.close;

cds_cabecalho.Open;
cds_detalhe.Open;

try
    streStream := TStringStream.Create(pxml);

    vXMLDoc := TXMLDocument.Create(self);
    vXMLDoc.LoadFromstream(streStream);
    freeandnil(strestream);
except
   MessageDlg('Erro 720 ao criar o xml document!',mtWarning,[mbOk],0);
    result:=false;
    exit;
   end;

NodeMaster := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('infNFe');

if NodeMaster=nil then
   begin
   NodeMaster:=vXMLDoc.DocumentElement.childNodes.First;
   NodePai:=vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('emit');
   end
else
   NodePai:=NodeMaster.ChildNodes.FindNode('emit');




if NodePai=nil then
   begin
   MessageDlg('Não é um XML de Nota Fiscal Válido!',mtWarning,[mbOk],0);
   result:=false;
   FreeAndNil(vXMLDoc);
   exit;
   end;
// Esse nó vai ser usado no LOOP

NodeSec := NodePai;
// Posiciona o primeiro elemento encontrado
NodeSec.ChildNodes.First;
cds_cabecalho.Append;
cds_cabecalhoCHAVE_ACESSO.Value  :=NodeMaster.GetAttributeNS('Id','');
if trim(cds_cabecalhoCHAVE_ACESSO.Value)<>'' then
   cds_cabecalhoCHAVE_ACESSO.Value  :=copy(cds_cabecalhoCHAVE_ACESSO.Value,4,44);

if Trim(cds_CabecalhoCHAVE_ACESSO.AsString) <> '' then
   begin
   cds_Cabecalhochave_acesso_calc.Value := Copy(cds_CabecalhoCHAVE_ACESSO.AsString,1,2)+'.'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,3,2)+'.'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,5,2)+'.'+
                         Copy(cds_CabecalhoCHAVE_ACESSO.AsString,7,2)+'.'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,9,2)+'.'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,11,3)+'.'+
                         Copy(cds_CabecalhoCHAVE_ACESSO.AsString,14,3)+'/'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,17,4)+'-'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,21,2)+'-'+
                         Copy(cds_CabecalhoCHAVE_ACESSO.AsString,23,3)+'.'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,26,3)+'.'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,29,3)+'-'+
                         Copy(cds_CabecalhoCHAVE_ACESSO.AsString,32,3)+'-'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,35,3)+'.'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,38,3)+'.'+
                         Copy(cds_CabecalhoCHAVE_ACESSO.AsString,41,3)+'-'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,44,1);
   end;


cds_cabecalhoEMITXNOME.Value:=NodeSec.ChildNodes['xNome'].Text;
cds_cabecalhoemicidadeuf.Value:=NodeSec.ChildNodes['enderEmit'].ChildNodes['xMun'].text+'-'
                               +NodeSec.ChildNodes['enderEmit'].ChildNodes['UF'].text;
cds_cabecalhoEMITIE.Value     :=NodeSec.ChildNodes['IE'].text;
cds_cabecalhoEMITIEST.Value  :=NodeSec.ChildNodes['IEST'].text;
cds_cabecalhoCRT.Value        :=valint(NodeSec.ChildNodes['CRT'].text);

cds_cabecalhoendereco_comp.Value     :=NodeSec.ChildNodes['enderEmit'].ChildNodes['xLgr'].text;
if  fXNroValido(NodeSec.ChildNodes['enderEmit'].ChildNodes['nro'].text)<>'' then
   cds_cabecalhoendereco_comp.Value     :=cds_cabecalhoendereco_comp.Value+' '+
   NodeSec.ChildNodes['enderEmit'].ChildNodes['nro'].text;
cds_cabecalhoendereco_comp.Value     :=cds_cabecalhoendereco_comp.Value+' '+
   NodeSec.ChildNodes['enderEmit'].ChildNodes['xCpl'].text+' '+
   NodeSec.ChildNodes['enderEmit'].ChildNodes['xBairro'].text;

cds_cabecalhoemicidadeuf.Value     :=NodeSec.ChildNodes['enderEmit'].ChildNodes['xMun'].text
                                    +' - '+NodeSec.ChildNodes['enderEmit'].ChildNodes['UF'].text;
cds_cabecalhoemit_cnpj.Value       :=FormatFloat(pDFCNPJ, fsonumero(NodeSec.ChildNodes['CNPJ'].text));

cds_cabecalhofone_fax.Value        :=MaskFone(NodeSec.ChildNodes['enderEmit'].ChildNodes['fone'].text);

if (fsonumero(NodeMaster.ChildNodes['dest'].ChildNodes['CNPJ'].text)=DM1.Tb_EmpCGC.AsFloat)
   and (valfloat(DM1.Tb_EmpFAX.AsString)>0) then
   begin
   if valfloat(cds_cabecalhofone_fax.Value)>0 then
      cds_cabecalhofone_fax.Value:=cds_cabecalhofone_fax.Value+'/';
   cds_cabecalhofone_fax.Value:=cds_cabecalhofone_fax.Value+MaskFone(NodeSec.ChildNodes['enderEmit'].ChildNodes['fone'].text);

   end;

cds_cabecalhocep_emit.Value        :=MaskCep(NodeSec.ChildNodes['enderEmit'].ChildNodes['CEP'].text);
cds_cabecalhosaida_entrada.Value   :=NodeMaster.ChildNodes['ide'].ChildNodes['tpNF'].text;

 if NodeMaster.ChildNodes['ide'].ChildNodes['tpNF'].text='0' then
  cds_cabecalhosaida_entrada.Value   :='2'
else
  cds_cabecalhosaida_entrada.Value   :='1';

cds_cabecalhomodelo.Value          :=valint(NodeMaster.ChildNodes['ide'].ChildNodes['mod'].text);

cds_cabecalhoIDENNF.Value          :=NodeMaster.ChildNodes['ide'].ChildNodes['nNF'].text;
cds_cabecalhonumeronf.value        :=fsonumero(cds_cabecalhoIDENNF.Value);
mcinst:=NodeMaster.ChildNodes['ide'].ChildNodes['dEmi'].text;
if fsonumero(mcinst)>0 then
   begin
   try
      cds_cabecalhoIDEDEMI.Value          :=StrToDate(copy(mcinst,09,02)+'/'+copy(mcinst,6,2)+'/'+copy(mcinst,1,4));
   except
      end;
   end
else
   begin
   mcinst:=NodeMaster.ChildNodes['ide'].ChildNodes['dhEmi'].text;
   if fsonumero(mcinst)>0 then
      begin
      try
         cds_cabecalhoIDEDEMI.Value          :=StrToDate(copy(mcinst,09,02)+'/'+copy(mcinst,6,2)+'/'+copy(mcinst,1,4));
      except
         end;
      end

   end;


cds_cabecalhoDATASAIDA.Value :=fExtrairDataHoraXml('D',NodeMaster.ChildNodes['ide'].ChildNodes['dhSaiEnt'].text);
cds_cabecalhohora_saida.Value:=fExtrairDataHoraXml('H',NodeMaster.ChildNodes['ide'].ChildNodes['dhSaiEnt'].text);



cds_cabecalhoIDESERIE.Value        :=NodeMaster.ChildNodes['ide'].ChildNodes['serie'].text;
cds_cabecalhoIDENATOP.Value        :=NodeMaster.ChildNodes['ide'].ChildNodes['natOp'].text;
cds_cabecalhoDESTISUF.Value        :=NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['UF'].text;
//cds_cabecalhochave_acesso_calc.Value  :=NodeMaster.ChildNodes['Id'].text;
cds_cabecalhonomcli_codigo.Value   :=NodeMaster.ChildNodes['dest'].ChildNodes['xNome'].text;
try
   cds_cabecalhonum_prot.Value        :=vXMLDoc.DocumentElement.ChildNodes[1].ChildNodes['infProt'].ChildNodes['nProt'].Text;
except
   cds_cabecalhonum_prot.Value        :='';
   end;

//   cds_cabecalhonum_prot.Value        :=vXMLDoc.DocumentElement.ChildNodes['protNFe']
//                                         .ChildNodes['infProt'].ChildNodes['nProt'].Text;

//   nodeProtocolo.ChildNodes['infProt'].ChildNodes['nProt'].text;


cds_cabecalhodest_cnpj.Value       :=MaskCPFCNPJ2(Formatfloat('00000000000000',
                                     fsonumero(
                                    NodeMaster.ChildNodes['dest'].ChildNodes['CNPJ'].text
                                    )));
if fsonumero(cds_cabecalhodest_cnpj.Value)=0 then
   cds_cabecalhodest_cnpj.Value       :=MaskCPFCNPJ2(
                                      Formatfloat('00000000000',

                                           fsonumero(
                                    NodeMaster.ChildNodes['dest'].ChildNodes['CPF'].text)));

cds_cabecalhoDESTENDERDESTXLGR.Value       :=
                                    NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['xLgr'].text;

   try
     if  fXNroValido(NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['nro'].text)<>'' then
         cds_cabecalhoDESTENDERDESTXLGR.Value       :=
            cds_cabecalhoDESTENDERDESTXLGR.Value       +', '+NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['nro'].text;
   except
      end;



cds_cabecalhoDESTENDERDESTXBAIRRO.Value       :=
                                    NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['xBairro'].text;
cds_cabecalhoDESTENDERDESTCEP.Value       :=MaskCep(
                                    NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['CEP'].text);
cds_cabecalhoDESTENDERDESTXMUN.Value       :=
                                    NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['xMun'].text;




cds_cabecalhodest_fone.Value       :=MaskFone(
                                    NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['fone'].text);
cds_cabecalhoDESTENDERDESTUF.Value       :=
                                    NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['UF'].text;

cds_cabecalhodest_inscricao.Value       :=
                                    NodeMaster.ChildNodes['dest'].ChildNodes['IE'].text;

cds_cabecalhoTOTALICMSTOTVBC.Value       :=Valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vBC'].text));

cds_cabecalhoTOTALICMSTOTVICMS.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vICMS'].text));

cds_cabecalhoTOTALICMSTOTVBCST.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vBCST'].text));
cds_cabecalhoTOTALICMSTOTVST.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vST'].text));
cds_cabecalhoTOTALICMSTOTVPROD.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vProd'].text));
cds_cabecalhoTOTALICMSTOTVFRETE.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vFrete'].text));
cds_cabecalhoTOTALICMSTOTVSEG.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vSeg'].text));
cds_cabecalhoTOTALICMSTOTVDESC.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vDesc'].text));
cds_cabecalhoTOTALICMSTOTVOUTRO.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vOutro'].text));
cds_cabecalhoTOTALICMSTOTVIPI.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vIPI'].text));

cds_cabecalhoTOTALICMSTOTVNF.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vNF'].text));
cds_Cabecalhovalor_texto.Text:='Valor: '+FormatFloat(mcasas,cds_cabecalhoTOTALICMSTOTVNF.Value);

cds_Cabecalhoemissao_texto.Text:='Emissão: '+FormatDateTime(fdt2, cds_CabecalhoIDEDEMI.Value);

cds_cabecalhoTT_XNOME.Value       :=
                                    NodeMaster.ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['xNome'].text;
cds_cabecalhofrete_cif_fob.Value       :=IntTostr(valint(
                                    NodeMaster.ChildNodes['transp'].ChildNodes['modFrete'].text));
//                                    NodeMaster.ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['modFrete'].text;
cds_cabecalhoTRANSPVEICTRANSPPLACA.Value       :=
                                    NodeMaster.ChildNodes['transp'].ChildNodes['veicTransp'].ChildNodes['placa'].text;
cds_cabecalhoTRANSPVEICTRANSPUF.Value       :=
                                    NodeMaster.ChildNodes['transp'].ChildNodes['veicTransp'].ChildNodes['UF'].text;
cds_cabecalhotransp_cnpj.Value       :=MaskCPFCNPJ(
                                    NodeMaster.ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['CNPJ'].text);
cds_cabecalhoTT_XENDER.Value       :=
                                    NodeMaster.ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['xEnder'].text;
cds_cabecalhoTT_XMUN.Value       :=
                                    NodeMaster.ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['xMun'].text;
cds_cabecalhoTT_UF.Value       :=
                                    NodeMaster.ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['UF'].text;

cds_cabecalhoTRANSPVOLESP.Value       :=NodeMaster.ChildNodes['transp'].ChildNodes['vol'].ChildNodes['esp'].text;

cds_cabecalhoTRANSPVOLQVOL.Value       :=valint(
                                    NodeMaster.ChildNodes['transp'].ChildNodes['vol'].ChildNodes['qVol'].text);
cds_cabecalhoTRANSPVOLMARCA.Value       :=
                                    NodeMaster.ChildNodes['transp'].ChildNodes['vol'].ChildNodes['marca'].text;
cds_cabecalhoTRANSPVOLPESOB.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['transp'].ChildNodes['vol'].ChildNodes['pesoB'].text));
cds_cabecalhoTRANSPVOLPESOL.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['transp'].ChildNodes['vol'].ChildNodes['pesoL'].text));
cds_cabecalhoINFADICINFCPL.Value       :=
                                    NodeMaster.ChildNodes['infAdic'].ChildNodes['infCpl'].text;



cds_cabecalhoINFADICINFADFISCO.Value       :=
                                    NodeMaster.ChildNodes['infAdic'].ChildNodes['infAdFisco'].text;

cds_cabecalhoTOTALISSQNTOTVISS.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['vISS'].text));

cds_cabecalhoTOTALISSQNTOTVBC.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['VBC'].text));

cds_cabecalhoTOTALISSQNTOTVISS.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['VISS'].text));

cds_cabecalhoEMITIM.Value       := NodeMaster.ChildNodes['ide'].ChildNodes['emit'].ChildNodes['IM'].text;



cds_Cabecalhocep_emit.Value:='CEP.:'+cds_cabecalhocep_emit.AsString;
cds_Cabecalhorecebemos.Value:='RECEBEMOS DE '+cds_cabecalhoEMITXNOME.AsString+' OS PRODUTOS CONSTANTES DA NOTAS FISCAL INDICADA AO LADO';
//cds_cabecalhofantasia_cliente.Value:=ado_query.FieldbyName('CDENOM').asstring;


NodeSec := NodeMaster.ChildNodes.FindNode('det');

mItem:=0;
NodeSec.ChildNodes.First;
cds_detalhepercipi.Value:=0;
cds_detalhevalor_ipi.Value:=0;

repeat
// referencia a tag <prod> dentro de <det>

   NodeTmp  := NodeSec.ChildNodes['prod'];


 // da pra ver que é um XML resumido da NFe (so temos uma tag <prod> para cada <det> então não precisaria da linha abaixo
    // agora se tivéssemos mais de uma seria o caso de posicionar também na primeira ocorrencia.
   NodeTmp.ChildNodes.First;

   mDados_Lid:=trim(NodeTmp.ChildNodes['xProd'].text);
   if mDados_Lid<>'' then
      begin
      cds_detalhe.Append;
      // pega os dados que vc quiser dentro da tag <prod>
      mItem:=mItem+1;
// verifica lote de mercadorias

   cds_detalheDETINFADPROD.Value:=trim(NodeSec.ChildNodes['infAdProd'].text);



   mLotes:='';
   NodeMed := NodeTmp.ChildNodes.FindNode('med');
   if NodeMed=nil then
      begin
      NodeMed := NodeTmp.ChildNodes.FindNode('rastro');
      end;


   mQtdLote:=0;
   mQtdPed:=valfloat(mudapv(NodeTmp.ChildNodes['qCom'].text));

   if NodeMed<>nil then
      begin
      NodeMed.ChildNodes.First;
      repeat
         if (mQtdLote+valfloat(mudapv(NodeMed.ChildNodes['qLote'].text)))<=mqtdped then
            begin
            mLotes:=mLotes+#13+'LOTE '+NodeMed.ChildNodes['nLote'].text
                           +' VCTO '+
                                        copy(NodeMed.ChildNodes['dVal'].text,1+8,2)+'/'+
                                        copy(NodeMed.ChildNodes['dVal'].text,1+5,2)+'/'+
                                        copy(NodeMed.ChildNodes['dVal'].text,1,4)
                           +' QTDE '+FormatFloat(mcasqtd,
                           valfloat(mudapv(NodeMed.ChildNodes['qLote'].text)))+' ';
            mQtdLote:=mQtdLote+valfloat(mudapv(NodeMed.ChildNodes['qLote'].text));
            end;
         NodeMed := NodeMed.NextSibling;
      until
         NodeMed = nil;
      if mQtdLote<>mQtdPed then
         begin
         mLotes:=mLotes+#13+'SEM LOTE QUANTIDADE '+FormatFloat(mcasqtd,
                           mQtdPed-mqtdlote)+' ';
         end;
      end;


// termino dos lotes de mercadorias



// armas


   mArmas:='';
   NodeArmas := NodeTmp.ChildNodes.FindNode('arma');

   if NodeArmas<>nil then
      begin
      NodeArmas.ChildNodes.First;
      repeat
        mArmas:=mArmas+#13+'Serie Arma '+NodeArmas.ChildNodes['nSerie'].text
                             +' Serie Cano '+NodeArmas.ChildNodes['nCano'].text;
      mArmas:=mArmas+#13+'Descriçao Completa: '+NodeArmas.ChildNodes['descr'].text;

      NodeArmas := NodeArmas.NextSibling;
      until
         NodeArmas = nil;
      end;

// armas




      cds_detalhenomepro.AsString:=NodeTmp.ChildNodes['xProd'].text;


      if not mDESCCOMPSEGLIN then
         begin
         cds_detalhenomepro.AsString:=cds_detalhenomepro.AsString+' '+trim(NodeSec.ChildNodes['infAdProd'].text);
         cds_detalheDETINFADPROD.Value:='';
         end;

      cds_detalhenomepro.AsString:=cds_detalhenomepro.AsString+mLotes+mArmas;
      cds_detalheDETPRODQCOM.AsFloat:=valfloat(mudapv(NodeTmp.ChildNodes['qCom'].text));
      cds_detalheDETPRODCPROD.AsString:=NodeTmp.ChildNodes['cProd'].text;
      cds_detalheDETPRODNCM.AsString:=NodeTmp.ChildNodes['NCM'].text;
      cds_detalheCSTB_CBENEF.AsString:=NodeTmp.ChildNodes['CSTB_CBENEF'].text;

      cds_detalheDETPRODCFOP.AsString:=NodeTmp.ChildNodes['CFOP'].text;

      cds_detalheDETPRODUCOM.Value:=NodeTmp.ChildNodes['uCom'].text;
      cds_detalheVDESC.Value:=ValFloat(mudapv(NodeTmp.ChildNodes['vDesc'].text));
      cds_detalheDETPRODVUNCOM.Value:=valfloat(mudapv(NodeTmp.ChildNodes['vUnCom'].text));
      cds_detalheDETPRODVPROD.Value:=valfloat(mudapv(NodeTmp.ChildNodes['vProd'].text));
      cds_detalheDETPRODVDESC.Value:=valfloat(mudapv(NodeTmp.ChildNodes['vDesc'].text));

//      cds_detalheDETINFADPROD.Value:=cds_detalheDETPRODCPROD.AsString+' lOTE ADICIONAL';

//lindomar
      NodeImposto  := NodeSec.ChildNodes['imposto'];
      if NodeImposto<>nil then
         begin
         if NodeImposto.ChildNodes[0].NodeName ='ICMS'then
            begin
            NodeTmp_Imp := NodeImposto.ChildNodes['ICMS'];
            NodeTmp_Imp.ChildNodes.First;
            if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS00'then
               begin
               NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS00'];
               NodeTmp_ImpCateg.ChildNodes.First;
               cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
               cds_detalhecst.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                          +NodeTmp_ImpCateg.ChildNodes['CST'].text;

               cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
               cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));

               end
            else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS10'then
               begin
               NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS10'];
               NodeTmp_ImpCateg.ChildNodes.First;

               cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
               cds_detalhecst.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                          +NodeTmp_ImpCateg.ChildNodes['CST'].text;

               cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
               cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));

               end
            else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS20'then
               begin
               NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS20'];
               NodeTmp_ImpCateg.ChildNodes.First;
               cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
               cds_detalhecst.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                          +NodeTmp_ImpCateg.ChildNodes['CST'].text;

               cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
               cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));

                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));
                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));

               end
            else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS30'then
               begin
               NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS30'];
               NodeTmp_ImpCateg.ChildNodes.First;
               cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
               cds_detalhecst.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                          +NodeTmp_ImpCateg.ChildNodes['CST'].text;

               cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
               cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));

               end
           else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS40'then
              begin
               NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS40'];
               NodeTmp_ImpCateg.ChildNodes.First;
               cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
               cds_detalhecst.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                          +NodeTmp_ImpCateg.ChildNodes['CST'].text;

               cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
               cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));

               end
            else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS50'then
               begin
               NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS50'];
               NodeTmp_ImpCateg.ChildNodes.First;
               cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
               cds_detalhecst.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                          +NodeTmp_ImpCateg.ChildNodes['CST'].text;

               cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
               cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));

              end
           else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS60'then
              begin
              NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS60'];
              NodeTmp_ImpCateg.ChildNodes.First;
               cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
               cds_detalhecst.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                          +NodeTmp_ImpCateg.ChildNodes['CST'].text;

               cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
               cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));

              end
           else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS70'then
              begin
              NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS70'];
              NodeTmp_ImpCateg.ChildNodes.First;
               cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
               cds_detalhecst.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                          +NodeTmp_ImpCateg.ChildNodes['CST'].text;

               cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
               cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));


              end
           else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS90' then
              begin
              NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS90'];
              NodeTmp_ImpCateg.ChildNodes.First;
               cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
               cds_detalhecst.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                          +NodeTmp_ImpCateg.ChildNodes['CST'].text;

               cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
               cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));

              end
           else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMSSN101' then
              begin
              NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMSSN101'];
              NodeTmp_ImpCateg.ChildNodes.First;
               cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
               cds_detalheCSOSN.Value:= NodeTmp_ImpCateg.ChildNodes['CSOSN'].text;
               cds_detalhecst.Value:=cds_detalheORI_PROD.Value+cds_detalheCSOSN.Value;

               cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
               cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));



              end
           else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMSSN102'then
              begin
              NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMSSN102'];
              NodeTmp_ImpCateg.ChildNodes.First;

               cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
               cds_detalheCSOSN.Value:=NodeTmp_ImpCateg.ChildNodes['CSOSN'].text;
               cds_detalhecst.Value:=cds_detalheORI_PROD.Value+cds_detalheCSOSN.Value;

               cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
               cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));



              end
           else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMSSN201'then
              begin

              NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMSSN201'];
              NodeTmp_ImpCateg.ChildNodes.First;
               cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
               cds_detalheCSOSN.Value:=NodeTmp_ImpCateg.ChildNodes['CSOSN'].text;
               cds_detalhecst.Value:=cds_detalheORI_PROD.Value+cds_detalheCSOSN.Value;
               cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
               cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));

              end

           else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMSSN202'then
              begin

              NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMSSN202'];
              NodeTmp_ImpCateg.ChildNodes.First;
               cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
               cds_detalheCSOSN.Value:=NodeTmp_ImpCateg.ChildNodes['CSOSN'].text;
               cds_detalhecst.Value:=cds_detalheORI_PROD.Value+cds_detalheCSOSN.Value;

               cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
               cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));




              end
           else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMSSN500' then
              begin
              NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMSSN500'];
              NodeTmp_ImpCateg.ChildNodes.First;
               cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
               cds_detalheCSOSN.Value:=NodeTmp_ImpCateg.ChildNodes['CSOSN'].text;
               cds_detalhecst.Value:=cds_detalheORI_PROD.Value+cds_detalheCSOSN.Value;

               cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
               cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));



              end

           else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMSSN900' then
              begin
              NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMSSN900'];
              NodeTmp_ImpCateg.ChildNodes.First;
               cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
               cds_detalheCSOSN.Value:=NodeTmp_ImpCateg.ChildNodes['CSOSN'].text;
               cds_detalhecst.Value:=cds_detalheORI_PROD.Value+cds_detalheCSOSN.Value;

               cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
               cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                   cds_detalhebase_icms.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                  cds_detalhevalor_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));




              end;
           end;
         if NodeImposto.ChildNodes[1].NodeName ='IPI'then
            begin
            NodeTmp_Imp := NodeImposto.ChildNodes['IPI'];
            NodeTmp_Imp.ChildNodes.First;
            if NodeTmp_Imp.ChildNodes[1].NodeName ='IPITrib'then
               begin
               NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['IPITrib'];
               NodeTmp_ImpCateg.ChildNodes.First;
               cds_detalhepercipi.Value:=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pIPI'].Text));
               cds_detalhevalor_ipi.Value:=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vIPI'].Text));
               end;
           end;
        end;

      mDados_Lid:=cds_detalhenomepro.AsString;
      cds_detalhe.Post;

      end;
   NodeSec := NodeSec.NextSibling;

until
   NodeSec = nil;

NodeSec := NodeMaster.ChildNodes.FindNode('total');
NodeSec := NodeMaster.ChildNodes.FindNode('cobr');
if nodesec<>nil then
   NodeSec := NodeSec.ChildNodes.FindNode('dup');

//NodePai := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('cobr');
// Esse nó vai ser usado no LOOP
if Nodesec<>nil then
   begin
   mItem:=0;
//   NodeSec := NodePai;
   NodeSec.ChildNodes.First;
   cds_vcto.Close;
   cds_vcto.Open;

   repeat

//      mDados_Lid:=trim(NodeSec.ChildNodes['dup'].ChildNodes['dVenc'].text);
      mDados_Lid:=trim(NodeSec.ChildNodes['dVenc'].text);
//      mDados_Lid:=trim(NodeSec.ChildNodes['fat'].ChildNodes['nFat'].text);
      if mDados_Lid<>'' then
         begin
         cds_vcto.Append;
      // pega os dados que vc quiser dentro da tag <prod>
         mItem:=mItem+1;
         mDados_Lid:=NodeSec.ChildNodes['dVenc'].text;
         if trim(mDados_Lid)<>'' then
            begin
            cds_vctoVDATA.AsDateTime:=StrToDateTime(copy(mDados_Lid,1+8,2)+'/'+
                                        copy(mDados_Lid,1+5,2)+'/'+
                                        copy(mDados_Lid,1,4)
                                        );
            end;
           cds_vctoVVALOR.asFloat:=valfloat(mudapv(NodeSec.ChildNodes['vDup'].text));
         cds_vctonumdup.Value  :=NodeSec.ChildNodes['nDup'].text;
         cds_vcto.Post;
         end;
   NodeSec := NodeSec.NextSibling;
until
   NodeSec = nil;
   end;

   // termino dos vencimentos
//Showmessage('nova rottina');

cds_cabecalhodata_vencimentos.Value:='';
cds_Vcto.First;
if (cds_vcto.IsEmpty) then
   cds_cabecalhodata_vencimentos.Value:=''
else if ((cds_vcto.RecordCount=1) and (AVISTASEMDUP=true) and (cds_vctoVDATA.AsDateTime=cds_cabecalhoIDEDEMI.AsDateTime)) then
   cds_cabecalhodata_vencimentos.Value:='Pagamento a Vista'
else
   begin

   while not cds_Vcto.Eof do
      begin
      cds_cabecalhodata_vencimentos.Value:=cds_cabecalhodata_vencimentos.Value
                                  +'['+insere2(cds_vctonumdup.AsString ,' ',10)
                                  +' '+insere(FormatFloat('#,##0.00', cds_vctoVVALOR.AsFloat ),' ',13)
                                  +' '+insere(FormatDateTime('dd/mm/yy', cds_vctoVDATA.AsDateTime),' ',10)+']  ';
       cds_Vcto.Next;
      end;
   end;

// qrcode

if cds_cabecalhomodelo.AsInteger=65 then
   begin
   NodeSec := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('infNFeSupl');
   if nodesec<>nil then
      begin
      cds_cabecalhoqrcode.Value:=trim(NodeSec.ChildNodes['qrCode'].text);
      if cds_cabecalhoqrcode.AsString<>'' then
         begin
         RLBand_qrcode.Visible:=true;
         edtText.Text:=cds_cabecalhoqrcode.Value;
         Update;

         stream_qrcode:=TMemoryStream.Create;



         QRCodeBitmap.SaveToStream(stream_qrcode);

         stream_qrcode.Seek(0,soFromBeginning);

         RLImage_QrCode.Top:=6;;

         RLImage_QrCode.Height:=PaintBox1.Height;
         RLBand_qrcode.Height:=PaintBox1.Height+10;
         RLImage_QrCode.Picture.Bitmap.LoadFromStream(stream_qrcode);
         RLBand_qrcode.Height := PaintBox1.Height+20;

         stream_qrcode.Free;

         end;
      end;
   end;

// qrcode termino



if (cds_cabecalhoEMITXNOME.AsString) <> '' then
   begin
   rl_lat_recebemos_simples.Caption:= 'RECEBEMOS DE '+cds_cabecalhoEMITXNOME.AsString+' OS PRODUTOS CONSTANTES DA NOTAS FISCAL INDICADA AO LADO';
   end;

if DM4.Tb_ParGer02PG2NFETPIMP.AsInteger=1 then
   begin
   if trim(pSalvarPDFPara)<>'' then
      begin
      if FileExists(pSalvarPDFPara) then
         begin
         if not DeleteFile(pSalvarPDFPara) then
            pMensagem:=pMensagem+'Não foi possivel salvar a nota '+pSalvarPDFPara+#13
         else
            rl_Paisagem_Simples.SaveToFile(pSalvarPDFPara);
         end
      else
         rl_Paisagem_Simples.SaveToFile(pSalvarPDFPara);
      end
   else
      rl_Paisagem_Simples.PreviewModal;
   end
else
   begin
   if trim(pSalvarPDFPara)<>'' then
      begin
      if FileExists(pSalvarPDFPara) then
         begin
         if not DeleteFile(pSalvarPDFPara) then
            pMensagem:=pMensagem+'Não foi possivel salvar a nota '+pSalvarPDFPara+#13
         else
            rl_Retrato_Simples.SaveToFile(pSalvarPDFPara);
         end
      else
         rl_Retrato_Simples.SaveToFile(pSalvarPDFPara);
      end
   else
      rl_Retrato_Simples.PreviewModal;
   end;

 if pEnviar then
     begin
          fTestarDocumentosOnline_dup(DM2.Qr_CabP1CHAVE.AsInteger,DM2.Qr_CabP1lotSEQ.AsInteger
          ,DM2.Qr_CabP1CODEMP.Asinteger,DM2.Qr_CabP1ORDEM.Asinteger);

     if fmensagem('Deseja enviar DANFE e XML por email?',0,['1','2'],2)=mrYES then
       begin
       if not DirectoryExists('C:\SGE\DANFE') then
         CreateDir('C:\SGE\DANFE');
       numNf:=cds_cabecalhoIDENNF.AsString;
       arqDanfe:='c:\sge\DANFE\'+numNf+'.pdf';
       if DM4.Tb_ParGer02PG2NFETPIMP.AsInteger=1 then
         rl_Paisagem_Simples.SaveToFile(arqDanfe)
       else
         rl_Retrato_Simples.SaveToFile(arqDanfe);
       mStrings_XML:=TStringList.create;
       mStrings_XML.Text:=pxml;
       mstrings_xml.SaveToFile('c:\sge\danfe\'+numNf+'.xml');
       FreeAndNil(mstrings_xml);
       arqxmlclient:='c:\sge\danfe\'+numNf+'.xml';
       Application.CreateForm(TFrm_EnviarEmail,Frm_EnviarEmail);
       Frm_EnviarEmail.EdtAssunto.Text:='NOTA FISCAL '+cds_cabecalhonumeronf.AsString;
       Frm_EnviarEmail.mmMensagem.Lines.Add(' SEGUE EM ANEXO A COPIA DO DANFE E XML DA NOTA FISCAL ');
       Frm_EnviarEmail.mmMensagem.Lines.Add(' NUMERO..:'+numNf);
       Frm_EnviarEmail.mmMensagem.Lines.Add(' EMITIDA EM ..:'+cds_cabecalhoIDEDEMI.AsString);
       Frm_EnviarEmail.mmMensagem.Lines.Add(' CHAVE DE ACESSO..:'+cds_cabecalhoCHAVE_ACESSO.AsString);
       Frm_EnviarEmail.mmMensagem.Lines.Add(' PROTOCOLO DE AUTORIZAÇÃO..:'+cds_cabecalhonum_prot.AsString);
       Frm_EnviarEmail.mmMensagem.Lines.Add(' ');
       Frm_EnviarEmail.mmMensagem.Lines.Add(' '+cds_cabecalhoEMITXNOME.AsString);
       if FileExists(arqDanfe) then
         Frm_EnviarEmail.lbxAnexos.Items.Add(arqDanfe);
       if FileExists(arqxmlclient) then
         Frm_EnviarEmail.lbxAnexos.Items.Add(arqxmlclient);
       Frm_EnviarEmail.Tipo:=0;
       Frm_EnviarEmail.CliFor:=cds_cabecalhoccodcli.AsString;
       Frm_EnviarEmail.ShowModal;
       FreeandNil(Frm_EnviarEmail);
       end;
     end;


result:=true;
end;




   procedure TFrm_NFE_Impressao.fAjustarCabecalhoRetrato(pVisivel: Boolean);
   var
   mtam, mleft,mfontsize: integer;
   begin
   if pVisivel then
      begin
      mtam:=210;
      mleft:=83;
      mfontsize:=6;
      end
   else
      begin
      mtam:=210+82;
      mleft:=1;
      mfontsize:=9;
      end;


   rlRetratoSimplesEmiRazao.width  := mtam;
   rlRetratoSimplesEmiEnder.width  := mtam;
   rlRetratoSimplesEmiCidade.width := mtam;
   rlRetratoSimplesEmiFone.width   := mtam;
   rlRetratoSimplesEmiCep.width    := mtam;

   rlRetratoSimplesEmiRazao.left  := mleft;
   rlRetratoSimplesEmiEnder.left  := mleft;
   rlRetratoSimplesEmiCidade.left := mleft;
   rlRetratoSimplesEmiFone.left   := mleft;
   rlRetratoSimplesEmiCep.left    := mleft;

   rlRetratoSimplesEmiRazao.Font.Size  := mfontsize;
   rlRetratoSimplesEmiEnder.Font.Size  := mfontsize;
   rlRetratoSimplesEmiCidade.Font.Size := mfontsize;
   rlRetratoSimplesEmiFone.Font.Size   := mfontsize;
   rlRetratoSimplesEmiCep.Font.Size    := mfontsize;

   rlLogo_Retrato_simples.visible:=pVisivel;





   end;


procedure TFrm_NFE_Impressao.fAjustarNFPaisagem;
var
mTamCalc: integer;
mDifTotal: integer;

mDifUnd: integer;
mQtdVis: integer;

mDifArred: integer;
mLeft: integer;
const
mTamForm = 959;
   procedure TestaESoma(pObjeto: TRLMemo);
   begin
   if pObjeto.Visible then
      begin
      mTamCalc:=mTamCalc+pObjeto.Width;
      mQtdVis:=mQtdVis+1;
      end;
   end;

   procedure AjustarTamanho(pObjeto: TRLMemo);
   begin
   if pObjeto.Visible then
      begin
      if (mDifUnd<>0) or (mDifArred<>0) then
         pObjeto.Width:=pObjeto.Width+mDifUnd+mDifArred;
      mDifArred:=0;
      end;
   end;


   procedure AjustarLeft(pObjeto: TRLMemo);
   begin
   if pObjeto.Visible then
      begin
      pObjeto.Left := mLeft;
      mLeft:=mLeft+pObjeto.Width;
      end;
   end;

begin
mTamCalc    :=0;
mQtdVis     :=0;
mLeft       :=7;
TestaESoma(rlcab_codpro);
TestaESoma(lblcabpaisagem_nome);
TestaESoma(rlcab_paisagem_marca);
TestaESoma(lblcab_ncm);
TestaESoma(mpaisagem_simples_cst);
TestaESoma(lblcab_csticms);
TestaESoma(lblcab_und);
TestaESoma(lblcab_qtde);
TestaESoma(lblcab_pu);
TestaESoma(rlcab_vdesc);
TestaESoma(lblcab_vt);
TestaESoma(lblcab_bcicms);
TestaESoma(lblcab_al_icms);
TestaESoma(lblcab_vlicms);
TestaESoma(lblcab_aliqipi);
TestaESoma(lblcab_vl_ipi);

try
   mDifTotal:=mTamForm - mTamCalc;
   if mDifTotal<>0 then
       begin
       mDifUnd   :=  mDifTotal div mQtdVis;
       mDifArred := mDifTotal - (mDifUnd*mQtdVis);
       AjustarTamanho(rlcab_codpro);
       AjustarTamanho(lblcabpaisagem_nome);
       AjustarTamanho(rlcab_paisagem_marca);
       AjustarTamanho(lblcab_ncm);
       AjustarTamanho(mpaisagem_simples_cst);
       AjustarTamanho(lblcab_csticms);
       AjustarTamanho(lblcab_und);
       AjustarTamanho(lblcab_qtde);
       AjustarTamanho(lblcab_pu);
       AjustarTamanho(rlcab_vdesc);
       AjustarTamanho(lblcab_vt);
       AjustarTamanho(lblcab_bcicms);
       AjustarTamanho(lblcab_al_icms);
       AjustarTamanho(lblcab_vlicms);
       AjustarTamanho(lblcab_aliqipi);
       AjustarTamanho(lblcab_vl_ipi);
       end;
except on e : exception do
   end;

AjustarLeft(rlcab_codpro);
AjustarLeft(lblcabpaisagem_nome);
AjustarLeft(rlcab_paisagem_marca);
AjustarLeft(lblcab_ncm);
AjustarLeft(mpaisagem_simples_cst);
AjustarLeft(lblcab_csticms);
AjustarLeft(lblcab_und);
AjustarLeft(lblcab_qtde);
AjustarLeft(lblcab_pu);
AjustarLeft(rlcab_vdesc);
AjustarLeft(lblcab_vt);
AjustarLeft(lblcab_bcicms);
AjustarLeft(lblcab_al_icms);
AjustarLeft(lblcab_vlicms);
AjustarLeft(lblcab_aliqipi);
AjustarLeft(lblcab_vl_ipi);



end;



procedure TFrm_NFE_Impressao.cds_detalheCalcFields(DataSet: TDataSet);
begin
if cds_detalheDETPRODVDESC.AsFloat>0 then
   cds_detalhevalor_total_menos_desconto.AsFloat := cds_detalheDETPRODVPROD.AsFloat - cds_detalheDETPRODVDESC.AsFloat
else
   cds_detalhevalor_total_menos_desconto.AsFloat := cds_detalheDETPRODVPROD.AsFloat;


end;


// inicio


procedure TFrm_NFE_Impressao.fAjustarNFRetrato;
var
mTamCalc: integer;
mDifTotal: integer;

mDifUnd: integer;
mQtdVis: integer;

mDifArred: integer;
mLeft: integer;
const
mTamForm = 716;
   procedure TestaESoma(pObjeto: TRLMemo);
   begin
   if pObjeto.Visible then
      begin
      mTamCalc:=mTamCalc+pObjeto.Width;
      mQtdVis:=mQtdVis+1;
      end;
   end;

   procedure AjustarTamanho(pObjeto: TRLMemo);
   begin
   if pObjeto.Visible then
      begin
      if (mDifUnd<>0) or (mDifArred<>0) then
         pObjeto.Width:=pObjeto.Width+mDifUnd+mDifArred;
      mDifArred:=0;
      end;
   end;


   procedure AjustarLeft(pObjeto: TRLMemo);
   begin
   if pObjeto.Visible then
      begin
      pObjeto.Left := mLeft;
      mLeft:=mLeft+pObjeto.Width;
      end;
   end;

begin
mTamCalc    :=0;
mQtdVis     :=0;
mLeft       :=0;
TestaESoma(rlcabretrato_codpro);
TestaESoma(rlcabretrato_nome);
TestaESoma(rlcabretrato_marca);
TestaESoma(rlcabretrato_ncm);
TestaESoma(rlcabretrato_cst);
TestaESoma(rlcabretrato_cfop);
TestaESoma(rlcabretrato_und);
TestaESoma(rlcabretrato_qtde);
TestaESoma(rlcabretrato_vlunit);
TestaESoma(rlcab_retrato_vdesc);
TestaESoma(rlcabretrato_vltotal);
TestaESoma(rlcabretrato_bcicms);
TestaESoma(rlcabretrato_aliq_icms);
TestaESoma(rlcabretrato_vl_icms);
TestaESoma(rlcabretrato_aliq_ipi);
TestaESoma(rlcabretrato_vl_ipi);


try
   mDifTotal:=mTamForm - mTamCalc;
   if mDifTotal<>0 then
       begin
       mDifUnd   :=  mDifTotal div mQtdVis;
       mDifArred := mDifTotal - (mDifUnd*mQtdVis);



       AjustarTamanho(rlcabretrato_codpro);
       AjustarTamanho(rlcabretrato_nome);
       AjustarTamanho(rlcabretrato_marca);
       AjustarTamanho(rlcabretrato_ncm);
       AjustarTamanho(rlcabretrato_cst);
       AjustarTamanho(rlcabretrato_cfop);
       AjustarTamanho(rlcabretrato_und);
       AjustarTamanho(rlcabretrato_qtde);
       AjustarTamanho(rlcabretrato_vlunit);
       AjustarTamanho(rlcab_retrato_vdesc);
       AjustarTamanho(rlcabretrato_vltotal);
       AjustarTamanho(rlcabretrato_bcicms);
       AjustarTamanho(rlcabretrato_aliq_icms);
       AjustarTamanho(rlcabretrato_vl_icms);
       AjustarTamanho(rlcabretrato_aliq_ipi);
       AjustarTamanho(rlcabretrato_vl_ipi);



       end;
except on e : exception do
   end;

AjustarLeft(rlcabretrato_codpro);
AjustarLeft(rlcabretrato_nome);
AjustarLeft(rlcabretrato_marca);
AjustarLeft(rlcabretrato_ncm);
AjustarLeft(rlcabretrato_cst);
AjustarLeft(rlcabretrato_cfop);
AjustarLeft(rlcabretrato_und);
AjustarLeft(rlcabretrato_qtde);
AjustarLeft(rlcabretrato_vlunit);
AjustarLeft(rlcab_retrato_vdesc);
AjustarLeft(rlcabretrato_vltotal);
AjustarLeft(rlcabretrato_bcicms);
AjustarLeft(rlcabretrato_aliq_icms);
AjustarLeft(rlcabretrato_vl_icms);
AjustarLeft(rlcabretrato_aliq_ipi);
AjustarLeft(rlcabretrato_vl_ipi);



end;


procedure TFrm_NFE_Impressao.RLReport_NFSEBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
stream_qrcode: TStream;

begin
if cds_nfse_cabqrCode.AsString<>'' then
   begin
   edtText.Text := cds_nfse_cabqrCode.AsString;
   QrCodeUpdate;
   stream_qrcode:=TMemoryStream.Create;
   QRCodeBitmap.SaveToStream(stream_qrcode);
   stream_qrcode.Seek(0,soFromBeginning);
   RLImageMod01QrCode.Top:=6;;
   RLImageMod01QrCode.Height:=PaintBox1.Height;
   RLImageMod01QrCode.Height:=PaintBox1.Height+10;
   RLImageMod01QrCode.Picture.Bitmap.LoadFromStream(stream_qrcode);
   RLImageMod01QrCode.Height := PaintBox1.Height+20;
   freeandnil(stream_qrcode);
   end;



end;


procedure TFrm_NFE_Impressao.fVerificarTitulosEAjustar(pChave,pChaveAno,pCodemp: integer; pValorLiquido: Real);
var
query_dar: tQuery;
begin


query_dar:=tQuery.Create(nil);
query_dar.databasename:='SG_ASSOC';
query_dar.SQL.Clear;
query_dar.sql.add('MERGE INTO CADDAR T1 USING (  '
                 +' SELECT CRID_NEW,CRTOTNF,CRVALOR,CRQTDPARC,CRNUMPARC,TOTNF_NOV, TRUNC((TOTNF_NOV / CRQTDPARC),2) AS DIFPARC '
                 +'  ,CASE WHEN CRNUMPARC = 1 THEN  '+mudaVP(floattostr(pValorLiquido))+' - '
                 +' (TRUNC((TOTNF_NOV / CRQTDPARC),2)*CRQTDPARC) ELSE 0 END AS ARREDPARC '
                 +' FROM ( '
                 +' select CRID_NEW,CRTOTNF,CRVALOR,CRQTDPARC,CRNUMPARC, '
                 +mudaVP(floattostr(pValorLiquido))+' AS TOTNF_NOV  '
                 +' FROM CADDAR WHERE CRNPED = '+floattostr(pChave)
                 +' AND CRCODEMP = '+floattostr(pCodemp) +' AND CRLOTSEQ_CP = '+floattostr(pChaveAno) + '  and CRSTATUS=0 '
                 +' AND CRVALOR <> '+mudaVP(floattostr(pValorLiquido))
                 +') '
                 +') SS ON (T1.CRID_NEW = SS.CRID_NEW) '
                 +' WHEN MATCHED THEN UPDATE SET CRVALOR=DIFPARC+ARREDPARC ');
{
query_dar.Params.CreateParam(ftFloat,'VALORLIQUIDO',ptinput);
query_dar.Params.CreateParam(ftFloat,'CODEMP',ptinput);
query_dar.Params.CreateParam(ftFloat,'CHAVE_ANO',ptinput);
query_dar.Params.CreateParam(ftFloat,'CHAVE',ptinput);


query_dar.ParamByName('VALORLIQUIDO').AsFloat:=pValorLiquido;
query_dar.ParamByName('CODEMP').AsFloat      :=pCodemp;
query_dar.ParamByName('CHAVE_ANO').AsFloat   :=pChaveAno;
query_dar.ParamByName('CHAVE').AsFloat       :=pChave;
 }

try
   query_dar.execsql;
except on e : exception do
   ex_erroSql_Novo(query_dar,5560,'func Erro:'+e.Message ,'CADEST');
   end;

query_dar.close;
freeandnil(query_dar);
end;



procedure TFrm_NFE_Impressao.QrCodeUpdate;
var
  QRCode: TDelphiZXingQRCode;
  Row, Column: Integer;
begin
  QRCode := TDelphiZXingQRCode.Create;
  try
    QRCode.Data := edtText.Text;
    QRCode.Encoding := TQRCodeEncoding(cmbEncoding.ItemIndex);
    QRCode.QuietZone := StrToIntDef(edtQuietZone.Text, 4);
    QRCodeBitmap.Height:=QRCode.Rows;

    QRCodeBitmap.Width:=QRCode.Columns;
//    QRCodeBitmap.row S  etSize(QRCode.Rows, QRCode.Columns);

//    QRCodeBitmap.SetSize(QRCode.Rows, QRCode.Columns);
    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if (QRCode.IsBlack[Row, Column]) then
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack;
        end else
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
        end;
      end;
    end;
  finally
    QRCode.Free;
  end;
  PaintBox1.Repaint;
end;



end.

