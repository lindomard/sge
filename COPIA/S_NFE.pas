unit S_NFE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, RLReport, RLBarcode,
  DB, DBTables, DBCtrls, ComCtrls, jpeg, FileCtrl, ShellApi,printers,
  ExtDlgs,RlPrinters, RLXLSFilter, RLPDFFilter, RLFilters, RLRichFilter,
  RxMemDS, MemTable, xmldom, XMLIntf, msxmldom, XMLDoc, RLRichText;


//       Menus, Registry, ShellApi, StdCtrls;

//const WM_TRAYICON=WM_USER+1;


type
  Tfrm_NFE = class(TForm)
    btn_visualizar: TBitBtn;
    btn_imprimir: TBitBtn;
    btn_sair: TBitBtn;
    Qry_Cabecalho: TQuery;
    Src_Cabecalho: TDataSource;
    Qry_CabecalhoCHAVE: TFloatField;
    Qry_CabecalhoCHAVE_ACESSO: TStringField;
    Qry_CabecalhoIDECUF: TFloatField;
    Qry_CabecalhoIDECNF: TFloatField;
    Qry_CabecalhoIDENATOP: TStringField;
    Qry_CabecalhoIDEINDPAG: TFloatField;
    Qry_CabecalhoIDEMOD: TStringField;
    Qry_CabecalhoIDESERIE: TFloatField;
    Qry_CabecalhoIDENNF: TFloatField;
    Qry_CabecalhoIDEDEMI: TDateTimeField;
    Qry_CabecalhoIDEDSAIENT: TDateTimeField;
    Qry_CabecalhoIDETPNF: TFloatField;
    Qry_CabecalhoIDECMUNFG: TFloatField;
    Qry_CabecalhoIDETPIMP: TStringField;
    Qry_CabecalhoIDETNFREFREFNFE: TStringField;
    Qry_CabecalhoIDETNFREFTEFNFCUF: TFloatField;
    Qry_CabecalhoIDETNFREFTEFNFAAMM: TStringField;
    Qry_CabecalhoIDETNFREFTEFNFCNPJ: TStringField;
    Qry_CabecalhoIDETNFREFTEFNFMOD: TFloatField;
    Qry_CabecalhoIDETNFREFTEFNFSERIE: TFloatField;
    Qry_CabecalhoIDETNFREFTEFNFNNF: TFloatField;
    Qry_CabecalhoIDETTPIMP: TFloatField;
    Qry_CabecalhoIDETPEMIS: TFloatField;
    Qry_CabecalhoIDECDV: TFloatField;
    Qry_CabecalhoIDETPAMB: TFloatField;
    Qry_CabecalhoIDEFINNFE: TFloatField;
    Qry_CabecalhoIDEPROCEMI: TFloatField;
    Qry_CabecalhoIDEVERPROC: TStringField;
    Qry_CabecalhoEMITCNPJ: TStringField;
    Qry_CabecalhoEMITCPF: TStringField;
    Qry_CabecalhoEMITXNOME: TStringField;
    Qry_CabecalhoEMITXFANT: TStringField;
    Qry_CabecalhoEMITENDEREMITXLGR: TStringField;
    Qry_CabecalhoEMITENDEREMITNRO: TStringField;
    Qry_CabecalhoEMITENDEREMITXCPL: TStringField;
    Qry_CabecalhoEMITENDEREMITXBAIRRO: TStringField;
    Qry_CabecalhoEMITENDEREMITCMUN: TFloatField;
    Qry_CabecalhoEMITENDEREMITXMUN: TStringField;
    Qry_CabecalhoEMITENDEREMITUF: TStringField;
    Qry_CabecalhoEMITENDEREMITCEP: TFloatField;
    Qry_CabecalhoEMITENDEREMITCPAIS: TFloatField;
    Qry_CabecalhoEMITENDEREMITXPAIS: TStringField;
    Qry_CabecalhoEMITENDEREMITFONE: TStringField;
    Qry_CabecalhoEMITIE: TStringField;
    Qry_CabecalhoEMITIEST: TStringField;
    Qry_CabecalhoEMITIM: TStringField;
    Qry_CabecalhoEMITCNAE: TStringField;
    Qry_CabecalhoAVULSACNPJ: TStringField;
    Qry_CabecalhoAVULSAXORGAO: TStringField;
    Qry_CabecalhoAVULSAMATR: TStringField;
    Qry_CabecalhoAVULSAXAGENTE: TStringField;
    Qry_CabecalhoAVULSAFONE: TStringField;
    Qry_CabecalhoAVULSAUF: TStringField;
    Qry_CabecalhoAVULSANDAR: TStringField;
    Qry_CabecalhoAVULSADEMI: TDateTimeField;
    Qry_CabecalhoAVULSAVDAR: TFloatField;
    Qry_CabecalhoAVULSAREPEMI: TStringField;
    Qry_CabecalhoAVULSADPAG: TDateTimeField;
    Qry_CabecalhoDESTCNPJ: TStringField;
    Qry_CabecalhoDESTCPF: TStringField;
    Qry_CabecalhoDESTXNOME: TStringField;
    Qry_CabecalhoDESTENDERDESTXLGR: TStringField;
    Qry_CabecalhoDESTENDERDESTNRO: TStringField;
    Qry_CabecalhoDESTENDERDESTXCPL: TStringField;
    Qry_CabecalhoDESTENDERDESTXBAIRRO: TStringField;
    Qry_CabecalhoDESTENDERDESTCMUN: TFloatField;
    Qry_CabecalhoDESTENDERDESTXMUN: TStringField;
    Qry_CabecalhoDESTENDERDESTUF: TStringField;
    Qry_CabecalhoDESTENDERDESTCEP: TFloatField;
    Qry_CabecalhoDESTENDERDESTCPAIS: TFloatField;
    Qry_CabecalhoDESTENDERDESTXPAIS: TStringField;
    Qry_CabecalhoDESTENDERDESTFONE: TStringField;
    Qry_CabecalhoDESTIE: TStringField;
    Qry_CabecalhoDESTISUF: TStringField;
    Qry_CabecalhoRETIRADACNPJ: TStringField;
    Qry_CabecalhoRETIRADAXLGR: TStringField;
    Qry_CabecalhoRETIRADANRO: TStringField;
    Qry_CabecalhoRETIRADAXCPL: TStringField;
    Qry_CabecalhoRETIRADAXBAIRRO: TStringField;
    Qry_CabecalhoRETIRADACMUN: TFloatField;
    Qry_CabecalhoRETIRADAXMUN: TStringField;
    Qry_CabecalhoRETIRADAUF: TStringField;
    Qry_CabecalhoENTREGACNPJ: TStringField;
    Qry_CabecalhoENTREGAXLGR: TStringField;
    Qry_CabecalhoENTREGANRO: TStringField;
    Qry_CabecalhoENTREGAXCPL: TStringField;
    Qry_CabecalhoENTREGAXBAIRRO: TStringField;
    Qry_CabecalhoENTREGACMUN: TFloatField;
    Qry_CabecalhoENTREGAXMUN: TStringField;
    Qry_CabecalhoENTREGAUF: TStringField;
    Qry_CabecalhoTOTALICMSTOTVBC: TFloatField;
    Qry_CabecalhoTOTALICMSTOTVICMS: TFloatField;
    Qry_CabecalhoTOTALICMSTOTVBCST: TFloatField;
    Qry_CabecalhoTOTALICMSTOTVST: TFloatField;
    Qry_CabecalhoTOTALICMSTOTVPROD: TFloatField;
    Qry_CabecalhoTOTALICMSTOTVFRETE: TFloatField;
    Qry_CabecalhoTOTALICMSTOTVSEG: TFloatField;
    Qry_CabecalhoTOTALICMSTOTVDESC: TFloatField;
    Qry_CabecalhoTOTALICMSTOTVII: TFloatField;
    Qry_CabecalhoTOTALICMSTOTVIPI: TFloatField;
    Qry_CabecalhoTOTALICMSTOTVPIS: TFloatField;
    Qry_CabecalhoTOTALICMSTOTVCOFINS: TFloatField;
    Qry_CabecalhoTOTALICMSTOTVOUTRO: TFloatField;
    Qry_CabecalhoTOTALICMSTOTVNF: TFloatField;
    Qry_CabecalhoISSQNTOTVSERV: TFloatField;
    Qry_CabecalhoISSQNTOTVBC: TFloatField;
    Qry_CabecalhoISSQNTOTVISS: TFloatField;
    Qry_CabecalhoISSQNTOTVPIS: TFloatField;
    Qry_CabecalhoISSQNTOTVCOFINS: TFloatField;
    Qry_CabecalhoRELTRIB: TFloatField;
    Qry_CabecalhoRELTRIBVRETPIS: TFloatField;
    Qry_CabecalhoRELTRIBVRETCOFINS: TFloatField;
    Qry_CabecalhoRELTRIBVRETCSLL: TFloatField;
    Qry_CabecalhoRELTRIBVBCIRRF: TFloatField;
    Qry_CabecalhoRELTRIBVIRRF: TFloatField;
    Qry_CabecalhoRELTRIBVBCRETPREV: TFloatField;
    Qry_CabecalhoRELTRIBRETPREV: TFloatField;
    Qry_CabecalhoTRANSPMODFRETE: TFloatField;
    Qry_CabecalhoTT_CNPJ: TStringField;
    Qry_CabecalhoTT_CPF: TStringField;
    Qry_CabecalhoTT_XNOME: TStringField;
    Qry_CabecalhoTT_IE: TStringField;
    Qry_CabecalhoTT_XENDER: TStringField;
    Qry_CabecalhoTT_XMUN: TStringField;
    Qry_CabecalhoTT_UF: TStringField;
    Qry_CabecalhoTT_ETTRANSPVSERV: TFloatField;
    Qry_CabecalhoTT_ETTRANSPVBCRET: TFloatField;
    Qry_CabecalhoTT_ETTRANSPICMSRET: TFloatField;
    Qry_CabecalhoTT_ETTRANSPVICMSRET: TFloatField;
    Qry_CabecalhoTT_ETTRANSPCFOP: TStringField;
    Qry_CabecalhoTT_ETTRANSPCMUNFG: TFloatField;
    Qry_CabecalhoTRANSPVEICTRANSPPLACA: TStringField;
    Qry_CabecalhoTRANSPVEICTRANSPUF: TStringField;
    Qry_CabecalhoTRANSPVEICTRANSPRNTC: TStringField;
    Qry_CabecalhoTRANSPREBOQUEPLACA: TStringField;
    Qry_CabecalhoTRANSPREBOQUEUF: TStringField;
    Qry_CabecalhoTRANSPREBOQUERNTC: TStringField;
    Qry_CabecalhoTRANSPVOLQVOL: TFloatField;
    Qry_CabecalhoTRANSPVOLESP: TStringField;
    Qry_CabecalhoTRANSPVOLMARCA: TStringField;
    Qry_CabecalhoTRANSPVOLNVOL: TStringField;
    Qry_CabecalhoTRANSPVOLPESOL: TFloatField;
    Qry_CabecalhoTRANSPVOLPESOB: TFloatField;
    Qry_CabecalhoTRANSPVOLLACRESNLACRE: TStringField;
    Qry_CabecalhoINFADICINFADFISCO: TMemoField;
    Qry_CabecalhoINFADICOBSCONT: TMemoField;
    Qry_CabecalhoINFADICOBSCONTXCAMPO: TStringField;
    Qry_CabecalhoINFADICOBSCONTXTEXTO: TStringField;
    Qry_CabecalhoINFADICOBSFISCOXTEXTO: TStringField;
    Qry_CabecalhoINFADICOBSFISCOXCAMPO: TStringField;
    Qry_CabecalhoINFADICPROCREFNPROC: TStringField;
    Qry_CabecalhoINFADICPROCREFINDPROC: TFloatField;
    Qry_CabecalhoCOBRFATNFAT: TStringField;
    Qry_CabecalhoCOBRFATVORIG: TFloatField;
    Qry_CabecalhoCOBRFATVDESC: TFloatField;
    COBRFATVLIQ: TFloatField;
    QryDetalhe: TQuery;
    QryDetalheDETPRODCPROD: TStringField;
    QryDetalheDETPRODCEAN: TStringField;
    QryDetalheDETPRODXPROD: TStringField;
    QryDetalheDETPRODNCM: TStringField;
    QryDetalheDETPRODEXTIPI: TStringField;
    QryDetalheDETPRODGENERO: TStringField;
    QryDetalheDETPRODCFOP: TFloatField;
    QryDetalheDETPRODUCOM: TStringField;
    QryDetalheDETPRODQCOM: TFloatField;
    QryDetalheDETPRODVUNCOM: TFloatField;
    QryDetalheDETPRODVPROD: TFloatField;
    QryDetalheDETPRODCEANTRIB: TStringField;
    QryDetalheDETPRODUTRIB: TStringField;
    QryDetalheDETPRODQTRIB: TFloatField;
    QryDetalheDETPRODVUNTRIB: TFloatField;
    QryDetalheDETPRODVFRETE: TFloatField;
    QryDetalheDETPRODVSEG: TFloatField;
    QryDetalheDETPRODVDESC: TFloatField;
    QryDetalheDETPRODDINDI: TStringField;
    QryDetalheDETPRODDIDDI: TDateTimeField;
    QryDetalheDETPRODDIXLOCDESEMB: TStringField;
    QryDetalheDETPRODDIUFDESEMB: TStringField;
    QryDetalheDETPRODDIDDESEMB: TDateTimeField;
    QryDetalheDETPRODDICEXPORTADOR: TStringField;
    QryDetalheDETPRODDIADINADICAO: TFloatField;
    QryDetalheDETPRODDIADICFABRICANTE: TStringField;
    QryDetalheDETPRODDIADICVDESCDI: TFloatField;
    QryDetalheDETPRODMEDNLOTE: TStringField;
    QryDetalheDETPRODMEDQLOTE: TFloatField;
    QryDetalheDETPRODMEDDFAB: TDateTimeField;
    QryDetalheDETPRODMEDDVAL: TDateTimeField;
    QryDetalheDETPRODMEDVPMC: TFloatField;
    QryDetalheDI_ICMSICMS00ORIG: TFloatField;
    QryDetalheDI_ICMSICMS00CST: TFloatField;
    QryDetalheDI_ICMSICMS00MODBC: TFloatField;
    QryDetalheDI_ICMSICMS00VBC: TFloatField;
    QryDetalheDI_ICMSICMS00PICMS: TFloatField;
    QryDetalheDI_ICMSICMS00VICMS: TFloatField;
    QryDetalheDI_ICMSICMS10ORIG: TFloatField;
    QryDetalheDI_ICMSICMS10CST: TFloatField;
    QryDetalheDI_ICMSICMS10MODBC: TFloatField;
    QryDetalheDI_ICMSICMS10VBC: TFloatField;
    QryDetalheDI_ICMSICMS10PICMS: TFloatField;
    QryDetalheDI_ICMSICMS10VICMS: TFloatField;
    QryDetalheDI_ICMSICMS10MODBCST: TFloatField;
    QryDetalheDI_ICMSICMS10PMVAST: TFloatField;
    QryDetalheDI_ICMSICMS10PREDBCST: TFloatField;
    QryDetalheDI_ICMSICMS10VBCST: TFloatField;
    QryDetalheDI_ICMSICMS10PICMSST: TFloatField;
    QryDetalheDI_ICMSICMS10VICMSST: TFloatField;
    QryDetalheDI_ICMSICMS20ORIG: TFloatField;
    QryDetalheDI_ICMSICMS20VBC: TFloatField;
    QryDetalheDI_ICMSICMS20PICMSST: TFloatField;
    QryDetalheDI_ICMSICMS20VICMSST: TFloatField;
    QryDetalheDI_ICMSICMS40ORIG: TFloatField;
    QryDetalheDI_ICMSICMS40CST: TFloatField;
    QryDetalheDI_ICMSICMS51ORIG: TFloatField;
    QryDetalheDI_ICMSICMS51CST: TFloatField;
    QryDetalheDI_ICMSICMS51MODBC: TFloatField;
    QryDetalheDI_ICMSICMS51PREDBC: TFloatField;
    QryDetalheDI_ICMSICMS51VBC: TFloatField;
    QryDetalheDI_ICMSICMS51PICMS: TFloatField;
    QryDetalheDI_ICMSICMS51VICMS: TFloatField;
    QryDetalheDI_ICMSICMS60ORIG: TFloatField;
    QryDetalheDI_ICMSICMS60CST: TFloatField;
    QryDetalheDI_ICMSICMS60VBCST: TFloatField;
    QryDetalheDI_ICMSICMS60VICMSST: TFloatField;
    QryDetalheDI_ICMSICMS70ORIG: TFloatField;
    QryDetalheDI_ICMSICMS70CST: TFloatField;
    QryDetalheDI_ICMSICMS70MODBC: TFloatField;
    QryDetalheDI_ICMSICMS70PREDBC: TFloatField;
    QryDetalheDI_ICMSICMS70VBC: TFloatField;
    QryDetalheDI_ICMSICMS70PICMS: TFloatField;
    QryDetalheDI_ICMSICMS70VICMS: TFloatField;
    QryDetalheDI_ICMSICMS70MODBCST: TFloatField;
    QryDetalheDI_ICMSICMS70PMVAST: TFloatField;
    QryDetalheDI_ICMSICMS70REDBCST: TFloatField;
    QryDetalheDI_ICMSICMS70VBCST: TFloatField;
    QryDetalheDI_ICMSICMS70PICMSST: TFloatField;
    QryDetalheDI_ICMSICMS70VICMSST: TFloatField;
    QryDetalheDI_ICMSICMS90ORIG: TFloatField;
    QryDetalheDI_ICMSICMS90CST: TFloatField;
    QryDetalheDI_ICMSICMS90MODBC: TFloatField;
    QryDetalheDI_ICMSICMS90PREDBC: TFloatField;
    QryDetalheDI_ICMSICMS90VBC: TFloatField;
    QryDetalheDI_ICMSICMS90PICMS: TFloatField;
    QryDetalheDI_ICMSICMS90VICMS: TFloatField;
    QryDetalheDI_ICMSICMS90MODBCST: TFloatField;
    QryDetalheDI_ICMSICMS90PMVAST: TFloatField;
    QryDetalheDI_ICMSICMS90REDBCST: TFloatField;
    QryDetalheDI_ICMSICMS90VBCST: TFloatField;
    QryDetalheDI_ICMSICMS90PICMSST: TFloatField;
    QryDetalheDI_ICMSICMS90VICMSST: TFloatField;
    QryDetalheDI_IPICLENQ: TStringField;
    QryDetalheDI_IPICNPJPROD: TStringField;
    QryDetalheDI_IPICSELO: TStringField;
    QryDetalheDI_IPIQSELO: TFloatField;
    QryDetalheDI_IPICENQ: TStringField;
    QryDetalheDI_IPIIPITRIBCST: TStringField;
    QryDetalheDI_IPIIPITRIBVBC: TFloatField;
    QryDetalheDI_IPIIPITRIBQUNID: TFloatField;
    QryDetalheDI_IPIIPITRIBVUNID: TFloatField;
    QryDetalheDI_IPIIPITRIBPIPI: TFloatField;
    QryDetalheDI_IPIIPITRIBVIPI: TFloatField;
    QryDetalheDI_IPIIPINTCST: TStringField;
    QryDetalheDI_PISPISALIQCST: TStringField;
    QryDetalheDI_PISPISALIQVBC: TFloatField;
    QryDetalheDI_PISPISALIQPPIS: TFloatField;
    QryDetalheDI_PISPISALIQVPIS: TFloatField;
    QryDetalheDI_PISPISQTDECST: TFloatField;
    QryDetalheDI_PISPISQTDEQBCPROD: TFloatField;
    QryDetalheDI_PISPISQTDEVALIQPROD: TFloatField;
    QryDetalheDI_PISPISQTDEVPIS: TFloatField;
    QryDetalheDI_PISPISQTDEPISNTCST: TFloatField;
    QryDetalheDI_PISPISQTDEPISOUTRCST: TFloatField;
    QryDetalheDI_PISPISQTDEPISOUTRVBC: TFloatField;
    QryDetalheDI_PISPISQTDEPISOUTRVPIS: TFloatField;
    QryDetalheDI_PISPISQTDEPISOUTRQBCPROD: TFloatField;
    QryDetalheDI_PISPISQTDEPISOUTRVALIQPROD: TFloatField;
    QryDetalheDI_PISSTVBC: TFloatField;
    QryDetalheDI_PISSTPPIS: TFloatField;
    QryDetalheDI_PISSTQBCPROD: TFloatField;
    QryDetalheDI_PISSTVALIQPROD: TFloatField;
    QryDetalheDI_PISSTVPIS: TFloatField;
    QryDetalheDI_COFINSCOFINSALIQCST: TFloatField;
    Src_Detalhe: TDataSource;
    Qry_Vcto: TQuery;
    Qry_VctoCHAVE: TFloatField;
    Qry_VctoNDUP: TStringField;
    Qry_VctoDVENC: TDateTimeField;
    Qry_VctoVDUP: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    rl_retrato: TRLReport;
    RLBand_canhoto: TRLBand;
    RLDraw2: TRLDraw;
    RLLabel1: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel2: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel4: TRLLabel;
    RLDBText101: TRLDBText;
    RLLabel137: TRLLabel;
    RLLabel191: TRLLabel;
    RLDBText102: TRLDBText;
    rl_paisagem: TRLReport;
    RLBand5: TRLBand;
    RLSubDetail1: TRLSubDetail;
    RLBand_cab01: TRLBand;
    RLDraw7: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw5: TRLDraw;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel11: TRLLabel;
    RLDraw8: TRLDraw;
    RLLabel13: TRLLabel;
    RLDraw9: TRLDraw;
    RLLabel14: TRLLabel;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLDraw12: TRLDraw;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLDraw13: TRLDraw;
    RLLabel18: TRLLabel;
    RLDraw38: TRLDraw;
    RLLabel45: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBBarcode1: TRLDBBarcode;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText94: TRLDBText;
    RLDBText96: TRLDBText;
    rlRetratoEmiRazao: TRLDBText;
    lbl_numero: TRLDBText;
    rlLogo_Retrato: TRLImage;
    RLBand6: TRLBand;
    ldb_codpro: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText118: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText117: TRLDBText;
    RLDBText121: TRLDBText;
    RLDBText12: TRLDBText;
    Src_Vcto: TDataSource;
    RLBand_rodape: TRLBand;
    RLLabel92: TRLLabel;
    RLDraw71: TRLDraw;
    RLLabel93: TRLLabel;
    RLDraw72: TRLDraw;
    RLLabel94: TRLLabel;
    RLDraw73: TRLDraw;
    RLLabel95: TRLLabel;
    RLDraw74: TRLDraw;
    RLLabel96: TRLLabel;
    RLDBText46: TRLDBText;
    RLDBText95: TRLDBText;
    RLDBText98: TRLDBText;
    RLDBText45: TRLDBText;
    TabSheet3: TTabSheet;
    rlTesteIMP: TRLReport;
    RLBand7: TRLBand;
    RLDBText62: TRLDBText;
    RLBand8: TRLBand;
    RLImage3: TRLImage;
    RLLabel138: TRLLabel;
    RLBand9: TRLBand;
    RLImage4: TRLImage;
    Qr_TesteImp: TQuery;
    Qr_TesteImpCAMPO01: TStringField;
    Src_TesteImp: TDataSource;
    Query_Executar: TQuery;
    Qry_Cabecalhofrete_cif_fob: TFloatField;
    rl_lat_borda_rec: TRLDraw;
    rl_lat_recebemos: TRLAngleLabel;
    rl_lat_Borda_DtEmis: TRLDraw;
    rl_lat_Ass: TRLDraw;
    rl_lat_numcan: TRLDraw;
    rl_lat_ObsNFE: TRLAngleLabel;
    rl_lat_Ident: TRLAngleLabel;
    rl_lat_DtRec: TRLAngleLabel;
    rl_lat_traco: TRLAngleLabel;
    rl_band_cab01: TRLBand;
    RLDraw20: TRLDraw;
    RLDraw27: TRLDraw;
    RLDraw1: TRLDraw;
    rlLogo_Paisagem: TRLImage;
    RLLabel67: TRLLabel;
    RLLabel68: TRLLabel;
    RLLabel69: TRLLabel;
    RLLabel70: TRLLabel;
    RLLabel71: TRLLabel;
    RLDBText51: TRLDBText;
    lbl_numero2: TRLDBText;
    RLLabel72: TRLLabel;
    RLDBText53: TRLDBText;
    RLLabel73: TRLLabel;
    RLDBBarcode2: TRLDBBarcode;
    rl_natureza: TRLMemo;
    RLDBText54: TRLDBText;
    rl_iest: TRLMemo;
    RLDBText55: TRLDBText;
    RLMemo1: TRLMemo;
    RLMemo2: TRLMemo;
    RLMemo3: TRLMemo;
    RLDBText56: TRLDBText;
    RLDBText57: TRLDBText;
    RLSubDetail3: TRLSubDetail;
    RLBand10: TRLBand;
    RLDBText76: TRLDBText;
    RLDBText78: TRLDBText;
    RLDBText79: TRLDBText;
    RLDBText80: TRLDBText;
    RLDBText81: TRLDBText;
    RLDBText82: TRLDBText;
    RLDBText83: TRLDBText;
    RLDBText87: TRLDBText;
    RLDBText88: TRLDBText;
    RLBand_Rod01: TRLBand;
    RLLabel78: TRLLabel;
    RLDraw58: TRLDraw;
    RLDBText63: TRLDBText;
    RLDraw59: TRLDraw;
    RLDBText64: TRLDBText;
    RLDraw60: TRLDraw;
    RLDBText65: TRLDBText;
    RLLabel79: TRLLabel;
    RLLabel80: TRLLabel;
    RLLabel81: TRLLabel;
    RLDraw61: TRLDraw;
    RLLabel83: TRLLabel;
    RLDBText67: TRLDBText;
    RLLabel84: TRLLabel;
    RLDBText68: TRLDBText;
    rl_lat_Nota: TRLAngleLabel;
    rl_lat_Serie: TRLAngleLabel;
    QryDetalheDI_COFINSCOFINSALIQVBC: TFloatField;
    QryDetalheCHAVE: TFloatField;
    rl_band_cab02: TRLBand;
    RLMemo4: TRLMemo;
    RLMemo5: TRLMemo;
    RLMemo6: TRLMemo;
    RLDBText58: TRLDBText;
    RLDBText69: TRLDBText;
    RLDBText70: TRLDBText;
    RLMemo7: TRLMemo;
    RLMemo8: TRLMemo;
    RLMemo9: TRLMemo;
    RLMemo10: TRLMemo;
    RLDBText59: TRLDBText;
    RLDBText60: TRLDBText;
    RLDBText71: TRLDBText;
    RLDBText89: TRLDBText;
    RLMemo11: TRLMemo;
    RLMemo12: TRLMemo;
    RLMemo13: TRLMemo;
    RLMemo14: TRLMemo;
    RLMemo15: TRLMemo;
    RLDBText61: TRLDBText;
    RLDBText75: TRLDBText;
    RLDBText73: TRLDBText;
    RLDBText74: TRLDBText;
    RLLabel75: TRLLabel;
    RLMemo16: TRLMemo;
    RLMemo17: TRLMemo;
    RLMemo18: TRLMemo;
    RLMemo19: TRLMemo;
    RLMemo20: TRLMemo;
    RLLabel76: TRLLabel;
    RLDBText90: TRLDBText;
    RLDBText91: TRLDBText;
    RLDBText92: TRLDBText;
    RLDBText112: TRLDBText;
    RLDBText113: TRLDBText;
    RLMemo21: TRLMemo;
    RLMemo22: TRLMemo;
    RLMemo23: TRLMemo;
    RLMemo24: TRLMemo;
    RLMemo25: TRLMemo;
    RLMemo26: TRLMemo;
    RLDBText114: TRLDBText;
    RLDBText115: TRLDBText;
    RLDBText116: TRLDBText;
    RLDBText123: TRLDBText;
    RLDBText124: TRLDBText;
    RLDBText125: TRLDBText;
    RLLabel77: TRLLabel;
    RLMemo27: TRLMemo;
    RLMemo28: TRLMemo;
    RLMemo29: TRLMemo;
    RLMemo30: TRLMemo;
    RLMemo31: TRLMemo;
    RLMemo32: TRLMemo;
    RLDBText126: TRLDBText;
    RLDBText128: TRLDBText;
    RLDBText129: TRLDBText;
    RLDBText130: TRLDBText;
    RLDraw57: TRLDraw;
    RLDBText127: TRLDBText;
    RLMemo33: TRLMemo;
    RLMemo34: TRLMemo;
    RLMemo38: TRLMemo;
    RLMemo36: TRLMemo;
    RLDBText131: TRLDBText;
    RLDBText132: TRLDBText;
    RLDBText133: TRLDBText;
    RLDBText134: TRLDBText;
    RLMemo42: TRLMemo;
    RLMemo41: TRLMemo;
    RLMemo40: TRLMemo;
    RLMemo39: TRLMemo;
    RLMemo35: TRLMemo;
    RLMemo37: TRLMemo;
    RLDBText135: TRLDBText;
    RLDBText136: TRLDBText;
    RLDBText137: TRLDBText;
    RLDBText138: TRLDBText;
    RLDBText139: TRLDBText;
    rl_band_cab03: TRLBand;
    m_produto: TRLMemo;
    m_descricao: TRLMemo;
    m_ncmsh: TRLMemo;
    m_cfop: TRLMemo;
    m_unidade: TRLMemo;
    m_unitario: TRLMemo;
    m_total: TRLMemo;
    m_aliqicms: TRLMemo;
    m_aliqipi: TRLMemo;
    RLBand3: TRLBand;
    RLDraw62: TRLDraw;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    QryDetalhecst: TStringField;
    QryDetalhealiq_icms: TFloatField;
    QryDetalhebase_icms: TFloatField;
    QryDetalhevalor_icms: TFloatField;
    QryDetalhepercipi: TFloatField;
    QryDetalhevalor_ipi: TFloatField;
    RLBand12: TRLBand;
    lbl_codpro: TRLMemo;
    lbl_nompro: TRLMemo;
    lbl_ncmsh: TRLMemo;
    lbl_cst: TRLMemo;
    lbl_prodcfop: TRLMemo;
    lbl_unidade: TRLMemo;
    lbl_unitario: TRLMemo;
    lbl_total: TRLMemo;
    lbl_aliqicms: TRLMemo;
    lbl_aliqipi: TRLMemo;
    RLBand1_cab02: TRLBand;
    RLLabel19: TRLLabel;
    RLDraw14: TRLDraw;
    RLDraw15: TRLDraw;
    RLDraw16: TRLDraw;
    RLLabel20: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel21: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel22: TRLLabel;
    RLDBText2: TRLDBText;
    RLDraw17: TRLDraw;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw21: TRLDraw;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel27: TRLLabel;
    RLDBText97: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText93: TRLDBText;
    RLDraw23: TRLDraw;
    RLDraw24: TRLDraw;
    RLDraw25: TRLDraw;
    RLDraw26: TRLDraw;
    RLDraw22: TRLDraw;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel28: TRLLabel;
    RLDBText16: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLDraw28: TRLDraw;
    RLDraw29: TRLDraw;
    RLDraw30: TRLDraw;
    RLDraw31: TRLDraw;
    RLDraw32: TRLDraw;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLDBText22: TRLDBText;
    RLDBText42: TRLDBText;
    RLDBText43: TRLDBText;
    RLDBText110: TRLDBText;
    RLDBText44: TRLDBText;
    RLDraw34: TRLDraw;
    RLDraw33: TRLDraw;
    RLDraw35: TRLDraw;
    RLDraw36: TRLDraw;
    RLDraw37: TRLDraw;
    RLDraw39: TRLDraw;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel46: TRLLabel;
    RLDBText36: TRLDBText;
    RLDBText37: TRLDBText;
    RLDBText38: TRLDBText;
    RLDBText39: TRLDBText;
    RLDBText40: TRLDBText;
    RLDBText41: TRLDBText;
    RLLabel47: TRLLabel;
    RLDraw40: TRLDraw;
    RLDraw43: TRLDraw;
    RLDraw45: TRLDraw;
    RLDraw46: TRLDraw;
    RLDraw47: TRLDraw;
    RLDraw48: TRLDraw;
    RLLabel48: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel55: TRLLabel;
    RLLabel56: TRLLabel;
    RLLabel57: TRLLabel;
    RLLabel58: TRLLabel;
    RLLabel53: TRLLabel;
    RLLabel54: TRLLabel;
    RLDraw44: TRLDraw;
    RLDBText23: TRLDBText;
    RLDBText99: TRLDBText;
    RLDBText32: TRLDBText;
    RLDBText33: TRLDBText;
    RLDBText28: TRLDBText;
    RLDraw41: TRLDraw;
    RLDraw49: TRLDraw;
    RLDraw51: TRLDraw;
    RLDraw50: TRLDraw;
    RLLabel49: TRLLabel;
    RLLabel59: TRLLabel;
    RLLabel60: TRLLabel;
    RLLabel61: TRLLabel;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText26: TRLDBText;
    RLDraw42: TRLDraw;
    RLDraw52: TRLDraw;
    RLDraw53: TRLDraw;
    RLDraw54: TRLDraw;
    RLDraw55: TRLDraw;
    RLDraw56: TRLDraw;
    RLLabel50: TRLLabel;
    RLLabel62: TRLLabel;
    RLLabel63: TRLLabel;
    RLLabel64: TRLLabel;
    RLLabel65: TRLLabel;
    RLLabel66: TRLLabel;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLDBText34: TRLDBText;
    RLDBText35: TRLDBText;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel51: TRLLabel;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    pnl_nfe: TPanel;
    Spn_Processar: TSpeedButton;
    grp_impressao: TGroupBox;
    bbGravar: TBitBtn;
    bbProgAberto: TBitBtn;
    GB_LOGO: TGroupBox;
    logosis: TImage;
    bbGravarLogo: TBitBtn;
    sbnProcurar: TSpeedButton;
    opd1: TOpenPictureDialog;
    Query1: TQuery;
    Query1LSLOGO: TBlobField;
    TabSheet6: TTabSheet;
    Label5: TLabel;
    txt_consrec: TEdit;
    bbConsRec: TBitBtn;
    Label6: TLabel;
    NUMNF: TEdit;
    RadioGroup1: TRadioGroup;
    RLDBMemo2: TRLDBMemo;
    Qry_CabecalhoINFADICINFCPL: TMemoField;
    RLDBMemo4: TRLDBMemo;
    Qry_Cabecalhoemit_cnpj: TStringField;
    Qry_Cabecalhodest_cnpj: TStringField;
    m_quantidade: TRLMemo;
    RLDBText52: TRLDBText;
    Qry_Cabecalhoendereco_comp: TStringField;
    Qry_Cabecalhoemt_fone: TStringField;
    rlRetratoEmiEnder: TRLDBMemo;
    RLDBText6: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel12: TRLLabel;
    Qry_Cabecalhonumeronf: TFloatField;
    Qry_Cabecalhodest_fone: TStringField;
    Qry_Cabecalhosaida_entrada: TFloatField;
    Qry_Cabecalhotransp_cnpj: TStringField;
    Qry_Cabecalhodest_inscricao: TStringField;
    QryDetalheclassif_fiscal: TStringField;
    Word: TRLRichFilter;
    PDF: TRLPDFFilter;
    Excel: TRLXLSFilter;
    edt_total: TRLLabel;
    GroupBox1: TGroupBox;
    Image_MD: TImage;
    sbnMDProcurar: TSpeedButton;
    bbGravarMD: TBitBtn;
    Label7: TLabel;
    CB_LOCALMD: TComboBox;
    sbLimpar: TSpeedButton;
    sbLimparMD: TSpeedButton;
    QryDetalheDI_ICMSICMS20CST: TFloatField;
    QryDetalheDI_ICMSICMS20MODBC: TFloatField;
    QryDetalheDI_ICMSICMS20PREDBCST: TFloatField;
    QryDetalheDI_ICMSICMS20PICMS: TFloatField;
    QryDetalheDI_ICMSICMS20VICMS: TFloatField;
    QryDetalheDI_ICMSICMS20PREDBC: TFloatField;
    Qr_XmlMemo: TQuery;
    Qr_XmlMemoARQXML: TMemoField;
    Qry_Cabecalhonomcli_codigo: TStringField;
    RLDb_Ret_RazSoc_Can: TRLDBText;
    Qry_Cabecalhoemissao_texto: TStringField;
    Qry_Cabecalhovalor_texto: TStringField;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    Qry_Cabecalhofantasia_cliente: TStringField;
    ts_Retrato_Simples: TTabSheet;
    tsPaisagem_simples: TTabSheet;
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
    RLDb_Ret_Simples_RazSoc_Can: TRLDBText;
    RLDBText50: TRLDBText;
    RLDBText84: TRLDBText;
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
    RLBand_rodape_simples: TRLBand;
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
    RLBand13: TRLBand;
    RLMemo44: TRLMemo;
    RLMemo45: TRLMemo;
    RLMemo48: TRLMemo;
    mRetrato_Simples_CST: TRLMemo;
    RLMemo50: TRLMemo;
    RLMemo51: TRLMemo;
    RLLabel99: TRLLabel;
    RLMemo53: TRLMemo;
    RLMemo54: TRLMemo;
    RLMemo55: TRLMemo;
    RLMemo56: TRLMemo;
    RLMemo57: TRLMemo;
    RLBand14: TRLBand;
    RLDraw70: TRLDraw;
    RLDraw75: TRLDraw;
    RLDraw76: TRLDraw;
    RLDraw77: TRLDraw;
    RLDraw78: TRLDraw;
    RLLabel100: TRLLabel;
    RLLabel101: TRLLabel;
    RLLabel102: TRLLabel;
    RLLabel103: TRLLabel;
    RLLabel104: TRLLabel;
    RLLabel105: TRLLabel;
    RLDraw79: TRLDraw;
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
    RLDBBarcode3: TRLDBBarcode;
    RLDBText148: TRLDBText;
    RLDBText149: TRLDBText;
    RLDBText150: TRLDBText;
    RLDBText151: TRLDBText;
    rlRetratoSimplesEmiRazao: TRLDBText;
    RLDBText153: TRLDBText;
    RLDBText154: TRLDBText;
    rlLogo_Retrato_simples: TRLImage;
    RLSystemInfo5: TRLSystemInfo;
    RLSystemInfo6: TRLSystemInfo;
    rlRetratoSimplesEmiEnder: TRLDBMemo;
    RLLabel113: TRLLabel;
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
    RLDBBarcode4: TRLDBBarcode;
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
    RLSubDetail4: TRLSubDetail;
    RLBand17: TRLBand;
    RLDBText202: TRLDBText;
    RLDBText204: TRLDBText;
    RLDBText205: TRLDBText;
    RLDBText206: TRLDBText;
    RLDBText207: TRLDBText;
    RLDBText208: TRLDBText;
    RLDBText209: TRLDBText;
    RLDBText210: TRLDBText;
    RLDBText211: TRLDBText;
    RLDBText214: TRLDBText;
    RLBand_Rod01_simples: TRLBand;
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
    RLDBMemo11: TRLDBMemo;
    RLDBMemo12: TRLDBMemo;
    RLBand19: TRLBand;
    RLMemo64: TRLMemo;
    RLMemo65: TRLMemo;
    RLMemo68: TRLMemo;
    mpaisagem_simples_cst: TRLMemo;
    RLMemo70: TRLMemo;
    RLMemo71: TRLMemo;
    RLMemo72: TRLMemo;
    RLMemo73: TRLMemo;
    RLMemo74: TRLMemo;
    RLMemo75: TRLMemo;
    RLMemo76: TRLMemo;
    RLBand20: TRLBand;
    RLDraw135: TRLDraw;
    rl_lat_Serie_simples: TRLAngleLabel;
    rl_lat_Nota_simples: TRLAngleLabel;
    rl_band_cab02_simples: TRLBand;
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
    Qry_Cabecalhochave_acesso_calc: TStringField;
    RLDBMemo13: TRLDBMemo;
    RLDBMemo14: TRLDBMemo;
    RLDBMemo15: TRLDBMemo;
    RLDBMemo16: TRLDBMemo;
    Qry_Cabecalhofone_fax: TStringField;
    rlRetratoEmiFone: TRLDBText;
    rlRetratoSimplesEmiFone: TRLDBText;
    rlPaisagemSimplesEmiFone: TRLDBText;
    Qry_Cabecalhoemicidadeuf: TStringField;
    rlPaisagemSimplesEmiCidade: TRLDBText;
    rlRetratoEmiCidade: TRLDBText;
    rlRetratoSimplesEmiCidade: TRLDBText;
    Qry_Cabecalhocep_emit: TStringField;
    rlRetratoEmiCep: TRLDBText;
    rlRetratoSimplesEmiCep: TRLDBText;
    rlPaisagemSimplesEmiCep: TRLDBText;
    Qry_Cabecalhorecebemos: TStringField;
    RLDBText269: TRLDBText;
    RLDBText270: TRLDBText;
    Qry_Cabecalhodata_vencimentos: TStringField;
    Qry_CabecalhoTOTALISSQNTOTVSERV: TFloatField;
    Qry_CabecalhoTOTALISSQNTOTVBC: TFloatField;
    Qry_CabecalhoTOTALISSQNTOTVISS: TFloatField;
    ret2_issqn: TRLMemo;
    txtret2_issqn: TRLDBText;
    QryDetalhealiq_issqn: TFloatField;
    QryDetalheDI_COFINSCOFINSOUTRVCOFINS: TFloatField;
    QryDetalheDI_COFINSCOFINSOUTRPCOFINS: TFloatField;
    QryDetalheDI_COFINSCOFINSOUTRVBC: TFloatField;
    QryDetalheDI_COFINSCOFINSOUTRCST: TFloatField;
    QryDetalheDI_PISPISOUTRVPIS: TFloatField;
    QryDetalheDI_PISPISOUTRPPIS: TFloatField;
    QryDetalheDI_PISPISOUTRVBC: TFloatField;
    QryDetalheDI_PISPISOUTRCST: TFloatField;
    QryDetalheDI_ISSQNCMUNFG: TFloatField;
    QryDetalheDI_ISSQNVALIQ: TFloatField;
    QryDetalheDI_ISSQNCLISTSERV: TFloatField;
    QryDetalheDI_ISSQNVBC: TFloatField;
    QryDetalheDI_ISSQNVISSQN: TFloatField;
    RLDraw124: TRLDraw;
    RLDraw125: TRLDraw;
    RLDBMemo1: TRLDBMemo;
    RLDraw126: TRLDraw;
    RLDBMemo3: TRLDBMemo;
    RLDraw127: TRLDraw;
    lb_pais2_INSS: TRLMemo;
    txt_pais2_INSS: TRLDBText;
    lbl_lote: TRLMemo;
    txt_lote: TRLDBText;
    Qry_Cabecalhototal_prodserv: TFloatField;
    lbl_datavenc: TRLMemo;
    RLDBText72: TRLDBText;
    edt_unitario: TRLLabel;
    edt_qtd: TRLLabel;
    lbl_qtd: TRLMemo;
    QryDetalhenomepro: TStringField;
    rlPaisagemNome: TRLDBMemo;
    rlRetratoNome: TRLDBMemo;
    rlRetratoSimplesNome: TRLDBMemo;
    mem_cadcab: TRxMemoryData;
    MemoryTable1: TMemoryTable;
    mem_cadcabENTREGACMUN: TFloatField;
    mem_cadcabENTREGAXMUN: TStringField;
    mem_cadcabENTREGAUF: TStringField;
    mem_cadcabTOTALICMSTOTVBC: TFloatField;
    mem_cadcabTOTALICMSTOTVICMS: TFloatField;
    mem_cadcabTOTALICMSTOTVBCST: TFloatField;
    mem_cadcabTOTALICMSTOTVST: TFloatField;
    mem_cadcabTOTALICMSTOTVPROD: TFloatField;
    mem_cadcabTOTALICMSTOTVFRETE: TFloatField;
    mem_cadcabTOTALICMSTOTVSEG: TFloatField;
    mem_cadcabTOTALICMSTOTVDESC: TFloatField;
    mem_cadcabTOTALICMSTOTVII: TFloatField;
    mem_cadcabTOTALICMSTOTVIPI: TFloatField;
    mem_cadcabTOTALICMSTOTVPIS: TFloatField;
    mem_cadcabTOTALICMSTOTVCOFINS: TFloatField;
    mem_cadcabTOTALICMSTOTVOUTRO: TFloatField;
    mem_cadcabTOTALICMSTOTVNF: TFloatField;
    mem_cadcabTOTALISSQNTOTVSERV: TFloatField;
    mem_cadcabTOTALISSQNTOTVBC: TFloatField;
    mem_cadcabTOTALISSQNTOTVISS: TFloatField;
    mem_cadcabAVULSAREPEMI: TStringField;
    mem_cadcabAVULSADPAG: TDateTimeField;
    mem_cadcabDESTCNPJ: TStringField;
    mem_cadcabDESTCPF: TStringField;
    mem_cadcabDESTXNOME: TStringField;
    mem_cadcabDESTENDERDESTXLGR: TStringField;
    mem_cadcabDESTENDERDESTNRO: TStringField;
    mem_cadcabDESTENDERDESTXCPL: TStringField;
    mem_cadcabDESTENDERDESTXBAIRRO: TStringField;
    mem_cadcabDESTENDERDESTCMUN: TFloatField;
    mem_cadcabDESTENDERDESTXMUN: TStringField;
    mem_cadcabDESTENDERDESTUF: TStringField;
    mem_cadcabDESTENDERDESTCEP: TFloatField;
    mem_cadcabDESTENDERDESTCPAIS: TFloatField;
    mem_cadcabDESTENDERDESTXPAIS: TStringField;
    mem_cadcabDESTENDERDESTFONE: TStringField;
    mem_cadcabDESTIE: TStringField;
    mem_cadcabDESTISUF: TStringField;
    mem_cadcabRETIRADACNPJ: TStringField;
    mem_cadcabRETIRADAXLGR: TStringField;
    mem_cadcabRETIRADANRO: TStringField;
    mem_cadcabRETIRADAXCPL: TStringField;
    mem_cadcabRETIRADAXBAIRRO: TStringField;
    mem_cadcabRETIRADACMUN: TFloatField;
    mem_cadcabRETIRADAXMUN: TStringField;
    mem_cadcabRETIRADAUF: TStringField;
    mem_cadcabENTREGACNPJ: TStringField;
    mem_cadcabENTREGAXLGR: TStringField;
    mem_cadcabENTREGANRO: TStringField;
    mem_cadcabENTREGAXCPL: TStringField;
    mem_cadcabENTREGAXBAIRRO: TStringField;
    mem_cadcabEMITENDEREMITCEP: TFloatField;
    mem_cadcabEMITENDEREMITCPAIS: TFloatField;
    mem_cadcabEMITENDEREMITXPAIS: TStringField;
    mem_cadcabEMITENDEREMITFONE: TStringField;
    mem_cadcabEMITIE: TStringField;
    mem_cadcabEMITIEST: TStringField;
    mem_cadcabEMITIM: TStringField;
    mem_cadcabEMITCNAE: TStringField;
    mem_cadcabAVULSACNPJ: TStringField;
    mem_cadcabAVULSAXORGAO: TStringField;
    mem_cadcabAVULSAMATR: TStringField;
    mem_cadcabAVULSAXAGENTE: TStringField;
    mem_cadcabAVULSAFONE: TStringField;
    mem_cadcabAVULSAUF: TStringField;
    mem_cadcabAVULSANDAR: TStringField;
    mem_cadcabAVULSADEMI: TDateTimeField;
    mem_cadcabAVULSAVDAR: TFloatField;
    mem_cadcabINFADICOBSFISCOXTEXTO: TStringField;
    mem_cadcabIDETNFREFTEFNFCUF: TFloatField;
    mem_cadcabIDETNFREFTEFNFAAMM: TStringField;
    mem_cadcabIDETNFREFTEFNFCNPJ: TStringField;
    mem_cadcabIDETNFREFTEFNFMOD: TStringField;
    mem_cadcabIDETNFREFTEFNFSERIE: TFloatField;
    mem_cadcabIDETNFREFTEFNFNNF: TFloatField;
    mem_cadcabIDETTPIMP: TFloatField;
    mem_cadcabIDETPEMIS: TFloatField;
    mem_cadcabIDECDV: TFloatField;
    mem_cadcabIDETPAMB: TFloatField;
    mem_cadcabIDEFINNFE: TFloatField;
    mem_cadcabIDEPROCEMI: TFloatField;
    mem_cadcabIDEVERPROC: TStringField;
    mem_cadcabEMITCNPJ: TStringField;
    mem_cadcabEMITCPF: TStringField;
    mem_cadcabEMITXNOME: TStringField;
    mem_cadcabEMITXFANT: TStringField;
    mem_cadcabEMITENDEREMITXLGR: TStringField;
    mem_cadcabEMITENDEREMITNRO: TStringField;
    mem_cadcabEMITENDEREMITXCPL: TStringField;
    mem_cadcabEMITENDEREMITXBAIRRO: TStringField;
    mem_cadcabEMITENDEREMITCMU: TFloatField;
    mem_cadcabEMITENDEREMITXMUN: TStringField;
    mem_cadcabEMITENDEREMITUF: TStringField;
    mem_cadcabINFADICOBSFISCOXCAMPO: TStringField;
    mem_cadcabINFADICPROCREFNPROC: TStringField;
    mem_cadcabINFADICPROCREFINDPROC: TFloatField;
    mem_cadcabCOBRFATNFAT: TStringField;
    mem_cadcabCOBRFATVORIG: TFloatField;
    mem_cadcabCOBRFATVDESC: TFloatField;
    mem_cadcabCOBRFATVLIQ: TFloatField;
    mem_cadcabCHAVE: TFloatField;
    mem_cadcabCHAVE_ACESSO: TFloatField;
    mem_cadcabIDECUF: TStringField;
    mem_cadcabIDECNF: TFloatField;
    mem_cadcabIDENATOP: TStringField;
    mem_cadcabIDEINDPAG: TFloatField;
    mem_cadcabIDEMOD: TStringField;
    mem_cadcabIDESERIE: TFloatField;
    mem_cadcabIDENNF: TFloatField;
    mem_cadcabIDEDEMI: TDateTimeField;
    mem_cadcabIDEDSAIENT: TDateTimeField;
    mem_cadcabIDETPNF: TFloatField;
    mem_cadcabIDECMUNFG: TFloatField;
    mem_cadcabIDETPIMP: TStringField;
    mem_cadcabIDETNFREFREFNFE: TStringField;
    mem_cadcabTRANSPVEICTRANSPUF: TStringField;
    mem_cadcabTRANSPVEICTRANSPRNTC: TStringField;
    mem_cadcabTRANSPREBOQUEPLACA: TStringField;
    mem_cadcabTRANSPREBOQUEUF: TStringField;
    mem_cadcabTRANSPREBOQUERNTC: TStringField;
    mem_cadcabTRANSPVOLQVOL: TFloatField;
    mem_cadcabTRANSPVOLESP: TStringField;
    mem_cadcabTRANSPVOLMARCA: TStringField;
    mem_cadcabTRANSPVOLNVOL: TStringField;
    mem_cadcabTRANSPVOLPESOL: TFloatField;
    mem_cadcabTRANSPVOLPESOB: TFloatField;
    mem_cadcabTRANSPVOLLACRESNLACRE: TStringField;
    mem_cadcabINFADICINFADFISCO: TStringField;
    mem_cadcabINFADICINFCPL: TStringField;
    mem_cadcabINFADICOBSCONT: TStringField;
    mem_cadcabINFADICOBSCONTXCAMPO: TStringField;
    mem_cadcabINFADICOBSCONTXTEXTO: TStringField;
    mem_cadcabISSQNTOTVSERV: TFloatField;
    mem_cadcabISSQNTOTVBC: TFloatField;
    mem_cadcabISSQNTOTVISS: TFloatField;
    mem_cadcabISSQNTOTVPIS: TFloatField;
    mem_cadcabISSQNTOTVCOFINS: TFloatField;
    mem_cadcabRELTRIB: TFloatField;
    mem_cadcabRELTRIBVRETPIS: TFloatField;
    mem_cadcabRELTRIBVRETCOFINS: TFloatField;
    mem_cadcabRELTRIBVRETCSLL: TFloatField;
    mem_cadcabRELTRIBVBCIRRF: TFloatField;
    mem_cadcabRELTRIBVIRRF: TFloatField;
    mem_cadcabRELTRIBVBCRETPREV: TFloatField;
    mem_cadcabRELTRIBRETPREV: TFloatField;
    mem_cadcabTRANSPMODFRETE: TFloatField;
    mem_cadcabTT_CNPJ: TStringField;
    mem_cadcabTT_CPF: TStringField;
    mem_cadcabTT_XNOME: TStringField;
    mem_cadcabTT_IE: TStringField;
    mem_cadcabTT_XENDER: TStringField;
    mem_cadcabTT_XMUN: TStringField;
    mem_cadcabTT_UF: TStringField;
    mem_cadcabTT_ETTRANSPVSERV: TFloatField;
    mem_cadcabTT_ETTRANSPVBCRET: TFloatField;
    mem_cadcabTT_ETTRANSPICMSRET: TFloatField;
    mem_cadcabTT_ETTRANSPVICMSRET: TFloatField;
    mem_cadcabTT_ETTRANSPCFOP: TFloatField;
    mem_cadcabTT_ETTRANSPCMUNFG: TFloatField;
    mem_cadcabTRANSPVEICTRANSPPLACA: TStringField;
    mem_caddet: TRxMemoryData;
    mem_caddetDI_ISSQNVBC: TFloatField;
    mem_caddetDI_ISSQNVISSQN: TFloatField;
    mem_caddetDI_ISSQNCLISTSERV: TFloatField;
    mem_caddetDETPRODVUNTRIB2: TFloatField;
    mem_caddetDETPRODVFRETE2: TFloatField;
    mem_caddetDETPRODVSEG2: TFloatField;
    mem_caddetDETPRODVDESC2: TFloatField;
    mem_caddetDETPRODDINDI2: TStringField;
    mem_caddetDETPRODDIDDI2: TDateTimeField;
    mem_caddetDETPRODDIXLOCDESEMB2: TStringField;
    mem_caddetDETPRODDIUFDESEMB2: TStringField;
    mem_caddetDETPRODDIDDESEMB2: TDateTimeField;
    mem_caddetDETPRODDICEXPORTADOR2: TStringField;
    mem_caddetDETPRODDIADINADICAO2: TFloatField;
    mem_caddetDETPRODDIADICFABRICANTE2: TStringField;
    mem_caddetDETPRODDIADICVDESCDI2: TFloatField;
    mem_caddetDETPRODMEDNLOTE2: TStringField;
    mem_caddetDI_ISSQNCMUNFG2: TFloatField;
    mem_caddetDI_ISSQNVALIQ2: TFloatField;
    mem_caddetDI_ICMSICMS60CST2: TFloatField;
    mem_caddetDI_ICMSICMS60VBCST2: TFloatField;
    mem_caddetDI_ICMSICMS60VICMSST2: TFloatField;
    mem_caddetDETPRODCPROD2: TStringField;
    mem_caddetDETPRODCEAN2: TStringField;
    mem_caddetDETPRODXPROD2: TStringField;
    mem_caddetDETPRODNCM2: TStringField;
    mem_caddetDETPRODEXTIPI2: TStringField;
    mem_caddetDETPRODGENERO2: TStringField;
    mem_caddetDETPRODCFOP2: TFloatField;
    mem_caddetDETPRODUCOM2: TStringField;
    mem_caddetDETPRODQCOM2: TFloatField;
    mem_caddetDETPRODVUNCOM2: TFloatField;
    mem_caddetDETPRODVPROD2: TFloatField;
    mem_caddetDETPRODCEANTRIB2: TStringField;
    mem_caddetDETPRODUTRIB2: TStringField;
    mem_caddetDETPRODQTRIB2: TFloatField;
    mem_caddetDI_ICMSICMS10VICMSST2: TFloatField;
    mem_caddetDI_ICMSICMS20ORIG2: TFloatField;
    mem_caddetDI_ICMSICMS20CST2: TFloatField;
    mem_caddetDI_ICMSICMS20MODBC2: TFloatField;
    mem_caddetDI_ICMSICMS20PREDBCST2: TFloatField;
    mem_caddetDI_ICMSICMS20PREDBC2: TFloatField;
    mem_caddetDI_ICMSICMS20VBC2: TFloatField;
    mem_caddetDI_ICMSICMS20PICMSST2: TFloatField;
    mem_caddetDI_ICMSICMS20PICMS2: TFloatField;
    mem_caddetDI_ICMSICMS20VICMSST2: TFloatField;
    mem_caddetDI_ICMSICMS20VICMS2: TFloatField;
    mem_caddetDI_ICMSICMS40ORIG2: TFloatField;
    mem_caddetDI_ICMSICMS40CST2: TFloatField;
    mem_caddetDI_ICMSICMS51ORIG2: TFloatField;
    mem_caddetDI_ICMSICMS51CST2: TFloatField;
    mem_caddetDI_ICMSICMS51MODBC2: TFloatField;
    mem_caddetDI_ICMSICMS51PREDBC2: TFloatField;
    mem_caddetDI_ICMSICMS51VBC2: TFloatField;
    mem_caddetDI_ICMSICMS51PICMS2: TFloatField;
    mem_caddetDI_ICMSICMS51VICMS2: TFloatField;
    mem_caddetDI_ICMSICMS60ORIG2: TFloatField;
    mem_caddetDI_PISPISALIQVBC2: TFloatField;
    mem_caddetDI_PISPISALIQPPIS2: TFloatField;
    mem_caddetDI_PISPISALIQVPIS2: TFloatField;
    mem_caddetDETPRODMEDQLOTE2: TFloatField;
    mem_caddetDETPRODMEDDFAB2: TDateTimeField;
    mem_caddetDETPRODMEDDVAL2: TDateTimeField;
    mem_caddetDETPRODMEDVPMC2: TFloatField;
    mem_caddetDI_ICMSICMS00ORIG2: TFloatField;
    mem_caddetDI_ICMSICMS00CST2: TFloatField;
    mem_caddetDI_ICMSICMS00MODBC2: TFloatField;
    mem_caddetDI_ICMSICMS00VBC2: TFloatField;
    mem_caddetDI_ICMSICMS00PICMS2: TFloatField;
    mem_caddetDI_ICMSICMS00VICMS2: TFloatField;
    mem_caddetDI_ICMSICMS10ORIG2: TFloatField;
    mem_caddetDI_ICMSICMS10CST2: TFloatField;
    mem_caddetDI_ICMSICMS10MODBC2: TFloatField;
    mem_caddetDI_ICMSICMS10VBC2: TFloatField;
    mem_caddetDI_ICMSICMS10PICMS2: TFloatField;
    mem_caddetDI_ICMSICMS10VICMS2: TFloatField;
    mem_caddetDI_ICMSICMS10MODBCST2: TFloatField;
    mem_caddetDI_ICMSICMS10PMVAST2: TFloatField;
    mem_caddetDI_ICMSICMS10PREDBCST2: TFloatField;
    mem_caddetDI_ICMSICMS10VBCST2: TFloatField;
    mem_caddetDI_ICMSICMS10PICMSST2: TFloatField;
    mem_caddetDI_ICMSICMS90ORIG2: TFloatField;
    mem_caddetDI_ICMSICMS90CST2: TFloatField;
    mem_caddetDI_ICMSICMS90MODBC2: TFloatField;
    mem_caddetDI_ICMSICMS90PREDBC2: TFloatField;
    mem_caddetDI_ICMSICMS90VBC2: TFloatField;
    mem_caddetDI_ICMSICMS90PICMS2: TFloatField;
    mem_caddetDI_ICMSICMS90VICMS2: TFloatField;
    mem_caddetDI_ICMSICMS90MODBCST2: TFloatField;
    mem_caddetDI_ICMSICMS90PMVAST2: TFloatField;
    mem_caddetDI_ICMSICMS90REDBCST2: TFloatField;
    mem_caddetDI_ICMSICMS90VBCST2: TFloatField;
    mem_caddetDI_ICMSICMS90PICMSST2: TFloatField;
    mem_caddetDI_ICMSICMS90VICMSST2: TFloatField;
    mem_caddetDI_IPICLENQ2: TFloatField;
    mem_caddetDI_IPICNPJPROD2: TFloatField;
    mem_caddetDI_IPICSELO2: TFloatField;
    mem_caddetDI_IPIQSELO2: TFloatField;
    mem_caddetDI_IPICENQ2: TFloatField;
    mem_caddetDI_IPIIPITRIBCST2: TStringField;
    mem_caddetDI_IPIIPITRIBVBC2: TFloatField;
    mem_caddetDI_IPIIPITRIBQUNID2: TFloatField;
    mem_caddetDI_IPIIPITRIBVUNID2: TFloatField;
    mem_caddetDI_IPIIPITRIBPIPI2: TFloatField;
    mem_caddetDI_IPIIPITRIBVIPI2: TFloatField;
    mem_caddetDI_IPIIPINTCST2: TStringField;
    mem_caddetDI_PISPISALIQCST2: TStringField;
    mem_caddetDI_COFINSCOFINSALIQPCOFINS2: TFloatField;
    mem_caddetDI_COFINSCOFINSALIQVCOFINS2: TFloatField;
    mem_caddetDI_ICMSICMS70ORIG2: TFloatField;
    mem_caddetDI_ICMSICMS70CST2: TFloatField;
    mem_caddetDI_ICMSICMS70MODBC2: TFloatField;
    mem_caddetDI_ICMSICMS70PREDBC2: TFloatField;
    mem_caddetDI_ICMSICMS70VBC2: TFloatField;
    mem_caddetDI_ICMSICMS70PICMS2: TFloatField;
    mem_caddetDI_ICMSICMS70VICMS2: TFloatField;
    mem_caddetDI_ICMSICMS70MODBCST2: TFloatField;
    mem_caddetDI_ICMSICMS70PMVAST2: TFloatField;
    mem_caddetDI_ICMSICMS70REDBCST2: TFloatField;
    mem_caddetDI_ICMSICMS70VBCST2: TFloatField;
    mem_caddetDI_ICMSICMS70PICMSST2: TFloatField;
    mem_caddetDI_ICMSICMS70VICMSST2: TFloatField;
    mem_caddetCHAVE2: TFloatField;
    mem_caddetDI_PISPISQTDECST2: TFloatField;
    mem_caddetDI_PISPISQTDEQBCPROD2: TFloatField;
    mem_caddetdi_COFINSCOFINSOutrvCOFINS2: TFloatField;
    mem_caddetdi_COFINSCOFINSOutrpCOFINS2: TFloatField;
    mem_caddetdi_COFINSCOFINSOutrvBC2: TFloatField;
    mem_caddetdi_COFINSCOFINSOutrCST2: TFloatField;
    mem_caddetdi_PISPISOutrvPIS2: TFloatField;
    mem_caddetdi_PISPISOutrpPIS2: TFloatField;
    mem_caddetdi_PISPISOutrvBC2: TFloatField;
    mem_caddetdi_PISPISOutrCST2: TFloatField;
    mem_caddetDI_PISPISQTDEVALIQPROD2: TFloatField;
    mem_caddetDI_PISPISQTDEVPIS2: TFloatField;
    mem_caddetDI_PISPISQTDEPISNTCS2: TFloatField;
    mem_caddetDI_PISPISQTDEPISOUTRCST2: TFloatField;
    mem_caddetDI_PISPISQTDEPISOUTRVBC2: TFloatField;
    mem_caddetDI_PISPISQTDEPISOUTRVPIS2: TFloatField;
    mem_caddetDI_PISPISQTDEPISOUTRQBCPROD2: TFloatField;
    mem_caddetDI_PISPISQTDEPISOUTRVALIQPROD2: TFloatField;
    mem_caddetDI_PISSTVBC2: TFloatField;
    mem_caddetDI_PISSTPPIS2: TFloatField;
    mem_caddetDI_PISSTQBCPROD2: TFloatField;
    mem_caddup: TRxMemoryData;
    Qry_CabecalhoINFOADICIO: TStringField;
    Qry_Cabecalhonum_prot: TStringField;
    RLDraw137: TRLDraw;
    RLLabel86: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel87: TRLLabel;
    RLDBText49: TRLDBText;
    RLDraw138: TRLDraw;
    RLLabel88: TRLLabel;
    RLDBText77: TRLDBText;
    RLDraw139: TRLDraw;
    RLLabel114: TRLLabel;
    RLDBText86: TRLDBText;
    RLDraw140: TRLDraw;
    Qry_Cabecalhodatasaida: TStringField;
    RLDBMemo7: TRLDBMemo;
    RLLabel115: TRLLabel;
    RLLabel116: TRLLabel;
    RLLabel172: TRLLabel;
    RLLabel173: TRLLabel;
    RLLabel174: TRLLabel;
    RLLabel184: TRLLabel;
    QryDetalheDI_ICMSICMSSN500ORIG: TFloatField;
    QryDetalheDI_ICMSICMSSN500VBCSTRET: TFloatField;
    QryDetalheDI_ICMSICMSSN500VICMSSTRET: TFloatField;
    QryDetalheDI_ICMSORIG: TFloatField;
    QryDetalheDI_ICMSCSOSN: TFloatField;
    QryDetalheDI_ICMSVBCSTRET: TFloatField;
    QryDetalheDI_ICMSVICMSSTRET: TFloatField;
    QryDetalheDI_ICMSICMSSN101ORIG: TFloatField;
    QryDetalheDI_ICMSICMSSN101CSOSN: TFloatField;
    QryDetalheDI_ICMSICMSSN101PCREDSN: TFloatField;
    QryDetalheDI_ICMSICMSSN101VCREDICMSSN: TFloatField;
    QryDetalheDI_ICMSPCREDSN: TFloatField;
    QryDetalheDI_ICMSVCREDICMSSN: TFloatField;
    QryDetalheDETPRODINDTOT: TFloatField;
    QryDetalheDETPRODNITEMPED: TFloatField;
    QryDetalheDI_ICMSICMSSN102ORIG: TFloatField;
    QryDetalheDI_ICMSICMSSN102CSOSN: TFloatField;
    QryDetalheDI_ICMSICMSSN103ORIG: TFloatField;
    QryDetalheDI_ICMSICMSSN103CSOSN: TFloatField;
    QryDetalheDI_ICMSICMSSN500OCSOSN: TFloatField;
    QryDetalheDI_ICMSICMSSN500CSOSN: TFloatField;
    m_cst: TRLMemo;
    rlPaiSimples_Linha02: TRLBand;
    QryDetalheDETINFADPROD: TMemoField;
    rlDetPaisagem_Linha02: TRLBand;
    rlDetSimples_Linha02: TRLBand;
    rlRetSim_Complemento: TRLBand;
    QryDetalheDI_ICMSICMSSN201ORIG: TFloatField;
    QryDetalheDI_ICMSICMSSN201CSOSN: TFloatField;
    QryDetalheDI_ICMSICMSSN201MODBCST: TFloatField;
    QryDetalheDI_ICMSICMSSN201PMVAST: TFloatField;
    QryDetalheDI_ICMSICMSSN201VBCST: TFloatField;
    QryDetalheDI_ICMSICMSSN201PICMSST: TFloatField;
    QryDetalheDI_ICMSICMSSN201VICMSST: TFloatField;
    QryDetalheDI_ICMSICMSSN201PCREDSN: TFloatField;
    QryDetalheDI_ICMSICMSSN201VCREDICMSSN: TFloatField;
    RLDBMemo5: TRLDBMemo;
    RLDBMemo6: TRLDBMemo;
    RLDBMemo9: TRLDBMemo;
    RLDBMemo10: TRLDBMemo;
    QryDetalheDI_COFINSCOFINSALIQPCOFINS: TFloatField;
    QryDetalheDI_COFINSCOFINSALIQVCOFINS: TFloatField;
    rlPaisagemEmiRazao: TRLLabel;
    rlPaisagemEmiCidade: TRLLabel;
    rlPaisagemEmiFone: TRLLabel;
    rlPaisagemEmiFAX: TRLLabel;
    rlPaisagemEmiCep: TRLLabel;
    rlPaisagemEmiEmail: TRLLabel;
    rlPaisagemEmiEnder: TRLMemo;
    RLDBText100: TRLDBText;
    QryDetalheinfcompprod: TStringField;
    QryDetalheDI_ICMSICMSSN900ORIG: TFloatField;
    QryDetalheDI_ICMSICMSSN900CSOSN: TFloatField;
    QryDetalheDI_ICMSICMSSN202ORIG: TFloatField;
    QryDetalheDI_ICMSICMSSN202CSOSN: TFloatField;
    Qry_Cabecalhocodcli: TFloatField;
    m_marca: TRLMemo;
    det_marca: TRLDBText;
    QryDetalhemarcapro: TStringField;
    m_marca2: TRLMemo;
    det_marca2: TRLDBText;
    m_marca3: TRLMemo;
    det_marca3: TRLDBText;
    m_marca4: TRLMemo;
    DET_MARCA4: TRLDBText;
    RL_PMC: TRLMemo;
    DET_PMC: TRLDBText;

    procedure btn_sairClick(Sender: TObject);
    procedure btn_visualizarClick(Sender: TObject);
    procedure rl_paisagemBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure btn_imprimirClick(Sender: TObject);
    procedure Qry_CabecalhoCalcFields(DataSet: TDataSet);
    procedure rl_lat_AssAfterPrint(Sender: TObject);
    procedure rl_lat_Borda_DtEmisAfterPrint(Sender: TObject);
    procedure rl_lat_borda_recAfterPrint(Sender: TObject);
    procedure rl_lat_DtRecAfterPrint(Sender: TObject);
    procedure rl_lat_IdentAfterPrint(Sender: TObject);
    procedure rl_lat_NotaAfterPrint(Sender: TObject);
    procedure rl_lat_ObsNFEAfterPrint(Sender: TObject);
    procedure rl_lat_recebemosAfterPrint(Sender: TObject);
    procedure rl_lat_SerieAfterPrint(Sender: TObject);
    procedure rl_lat_tracoAfterPrint(Sender: TObject);
    procedure rl_band_cab02AfterPrint(Sender: TObject);
    procedure RLBand_Rod01AfterPrint(Sender: TObject);
    procedure QryDetalheCalcFields(DataSet: TDataSet);
    procedure RLBand_canhotoAfterPrint(Sender: TObject);
    procedure RLBand1_cab02AfterPrint(Sender: TObject);
    procedure RLBand_rodapeAfterPrint(Sender: TObject);
    procedure sbnProcurarClick(Sender: TObject);
    procedure bbGravarLogoClick(Sender: TObject);
    procedure bbConsRecClick(Sender: TObject);
    procedure rl_lat_numcanAfterPrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure sbnMDProcurarClick(Sender: TObject);
    procedure bbGravarMDClick(Sender: TObject);
    procedure CB_LOCALMDClick(Sender: TObject);
    procedure sbLimparClick(Sender: TObject);
    procedure sbLimparMDClick(Sender: TObject);
    procedure rl_Paisagem_SimplesBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rl_lat_recebemos_simplesAfterPrint(Sender: TObject);
    procedure rl_lat_Iden_simplesAfterPrint(Sender: TObject);
    procedure rl_lat_Borda_DtEmis_simplesAfterPrint(Sender: TObject);
    procedure rl_lat_DtRec_simplesAfterPrint(Sender: TObject);
    procedure rl_lat_numcan_simplesAfterPrint(Sender: TObject);
    procedure rl_lat_Serie_simplesAfterPrint(Sender: TObject);
    procedure rl_lat_Nota_simplesAfterPrint(Sender: TObject);
    procedure rl_lat_ObsNFE_simplesAfterPrint(Sender: TObject);
    procedure rl_lat_borda_rec_simplesAfterPrint(Sender: TObject);
    procedure rl_lat_Ass_SimplesAfterPrint(Sender: TObject);
    procedure rl_lat_traco_simplesAfterPrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1_cab02_simplesAfterPrint(Sender: TObject);
    procedure RLBand_rodape_simplesAfterPrint(Sender: TObject);
    procedure RLBand_Rod01_simplesAfterPrint(Sender: TObject);
    procedure rl_band_cab02_simplesAfterPrint(Sender: TObject);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand17BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rl_band_cab01BeforePrint(Sender: TObject;
      var PrintIt: Boolean);

  private
    { Private declarations }
  function fAchaArquivada(pNumNf: Real;pDtemis: TDateTime): Real;

  public
    { Public declarations }
  mCasasPU_NFE: String;
  Logomarca : Boolean;
  function EmissaoDanfe(pVisualiza: Boolean; pTipo: Integer; pChave,pNumnf: Real; pDtemis: tDateTime;pQtdDec: Integer): Boolean;

  function fNSGeraXMLVersaoCliente(pArqXml,pNProt,pTpAmb,pVerAplic,pinfProt,pChNFe,pDhRecbto,pdigval,pcStat,pMotivo,pArqSaida: String): Boolean;
  function fGravarXMLCampos(pArqxml,pNumProt,pChaveAcesso: String): Boolean;


  end;


  function fGeraXMLString(pNomeCampo,pValor: String): String;
  function fGeraXMLReal(pQtdDec: Integer;pNomeCampo:String; pValor: Real): String;
  function fGeraXMLData(pNomeCampo:String; pData: TDateTime): String;
  function fGeraXMLDataHora(pNomeCampo:String; pData: TDateTime): String;



var
  frm_NFE: Tfrm_NFE;
  mLinha          : String='';
  mHabilitou      : Boolean=False;
  mQtdVias      :Integer=1;
  mNumNF        :Real=0;

  mChavePed    :Real;
  mFormNFE_NumProt: String;
  mFormNFE_ChaveAcesso: String;


  mImprimirMarca: Boolean=false;
  mImprimirPMC: Boolean=false;
  mImprimirLote: Boolean=false;
  mLocalMarcaDagua: Integer=0;
  mDESCCOMPSEGLIN: Boolean=false;

  arqxmlclient: String;

mNFE_Values_Cab: String;
mNFE_Values_Det: String;
mNFE_Values_Dup: String;
mNFE_Params_Cab: Array of string;
mNFE_Params_Det: Array of string;
mNFE_Params_Dup: Array of string;
mNFE_Chave: Integer;
  
implementation

//uses S_Mensagem_Barrar, Math;
uses S_Mensagem_Barrar, Func, S_Agde, S_DM1, S_DM4, lerarq, DateUtils,
  Func2, func_excecoes, S_DM2, S_EnviarEmail, Math;

{$R *.dfm}

procedure Tfrm_NFE.btn_sairClick(Sender: TObject);
begin


   Application.Terminate;
end;

function TFrm_NFE.EmissaoDanfe(pVisualiza: Boolean; pTipo: Integer; pChave,pNumnf: Real; pDtemis: tDateTime;pQtdDec: Integer): Boolean;
begin

if pQtdDec<1 then
   mCasasPU_NFE:=mCasasPu
else
   mCasasPU_NFE:='#,##0.'+insere('0','0',pQtdDec);

m_cst.Lines.Clear;
mpaisagem_simples_cst.Lines.Clear;
lbl_cst.Lines.Clear;
mRetrato_Simples_CST.Lines.Clear;
if ((DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=1) or (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=2)) OR
   ((DM2.Qr_Cabsupermicro.AsInteger=1) or (DM2.Qr_Cabsupermicro.AsInteger=2)) then
   begin
   m_cst.Lines.Add('CSOSN');
   mpaisagem_simples_cst.Lines.Add('CSOSN');
   lbl_cst.Lines.Add('CSOSN');
   mRetrato_Simples_CST.Lines.Add('CSOSN');
   end
else
   begin
   m_cst.Lines.Add('CST');
   mpaisagem_simples_cst.Lines.Add('CST');
   lbl_cst.Lines.Add('CST');
   mRetrato_Simples_CST.Lines.Add('CST');
   end;


QryDetalheDETPRODVUNCOM.DisplayFormat   := mCasaspu_NFE;

//SetWindowPos (Handle, HWND_TOPMOST, Left, Top, Width, Height, SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);

SetWindowPos (Handle, HWND_NOTOPMOST, Left, Top, Width, Height, SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);

deletefile('C:\SGE\LOGNFE.JPG');
fSalvarImagem('LOGO_NFE','C:\SGE\LOGNFE.JPG');


if fileexists('C:\SGE\LOGNFE.JPG') then
   begin

   if Logomarca then
     begin
     if DM4.Tb_ParGer02PG2NFETPIMP.AsInteger=0 then
        begin
        if Log_TipoLote=1 then
           rlLogo_Retrato.Picture.LoadFromFile('C:\SGE\LOGNFE.JPG')
        else
           rlLogo_Retrato_simples.Picture.LoadFromFile('C:\SGE\LOGNFE.JPG');
        end
     else
        begin
        if Log_TipoLote=1 then
           rlLogo_Paisagem.Picture.LoadFromFile('C:\SGE\LOGNFE.JPG')
        else
           rlLogo_Paisagem_simples.Picture.LoadFromFile('C:\SGE\LOGNFE.JPG');
        end;
     end
   else
     begin
     rlLogo_Retrato.Picture:=nil;
     rlLogo_Retrato_simples.Picture:=nil;
     rlLogo_Paisagem.Picture:=nil;
     rlLogo_Paisagem_simples.Picture:=nil;
     end;
   end
 else
     begin
     rlLogo_Retrato.Picture:=nil;
     rlLogo_Retrato_simples.Picture:=nil;
     rlLogo_Paisagem.Picture:=nil;
     rlLogo_Paisagem_simples.Picture:=nil;
     end;

{
deletefile('C:\SGE\LOGNFEMD.JPG');
Query1.Close;
Query1.Sql.Clear;
Query1.Sql.add('Select LSLOGO from CADLOGSIS where LSCHAVE='+chr(39)+'LOGO_NFEMD'+chr(39));
if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
   Query1.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                         +' or LSCODEMP is null )');

Query1.Open;
if not Query1.IsEmpty then
   begin
//   Query1LSLOGO.SaveToFile('C:\SGE\LOGNFEMD.JPG');
//   rl_paisagem.Background.Picture.LoadFromFile('C:\SGE\LOGNFEMD.JPG');
///   rl_retrato.Background.Picture.LoadFromFile('C:\SGE\LOGNFEMD.JPG');
   if mLocalMarcaDagua=0 then
      begin
      rl_retrato.Background.Arrange:=baCenter;
      rl_paisagem.Background.Arrange:=baCenter;
      end
   else if mLocalMarcaDagua=1 then
      begin
      rl_retrato.Background.Arrange:=baDistributed;
      rl_paisagem.Background.Arrange:=baDistributed;
      end
   else
      begin
      rl_retrato.Background.Arrange:=baAligned;
      rl_paisagem.Background.Arrange:=baAligned;
      end;
   end;

}

if pVisualiza then
   begin
   rl_retrato.PrintDialog:=true;
   rl_paisagem.PrintDialog:=true;
   rl_Paisagem_Simples.PrintDialog:=true;
   rl_Retrato_Simples.PrintDialog:=true;
   end
else
   begin
   rl_retrato.PrintDialog :=false;
   rl_paisagem.PrintDialog:=false;
   rl_Paisagem_Simples.PrintDialog:=false;
   rl_Retrato_Simples.PrintDialog:=false;
   end;


Qry_Cabecalho.Close;
Qry_Cabecalho.SQL.Clear;

if pChave<>0 then
   begin
   Qry_Cabecalho.SQL.Add(' SELECT DISTINCT * FROM NFE_CADCAB '
                        +' WHERE CHAVE_ACESSO is not null and CHAVE =:pChave');
   Qry_Cabecalho.ParamByName('pChave').AsFloat := pChave;
   Qry_Cabecalho.Open;

   end
else
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add(' Select max(CHAVE) as CHAVE from NFE_CADCAB '
                     +' WHERE IDENNF =:pChave');

   DM1.Query1.ParamByName('pChave').AsFloat := pNumNF;

   if pDtemis>pdatanula then
      begin
      DM1.Query1.SQL.Add(' and IDEDEMI =:DATEMI');
      DM1.Query1.ParamByName('DATEMI').AsDateTime := pDtemis;
      end;
   DM1.query1.Open;
   pChave:=DM1.Query1.fieldbyName('CHAVE').AsFloat;
   if pchave=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Select max(CHAVE) AS CHAVE from NFE_CADCAB '
                           +' WHERE IDECNF =:pChave');
      DM1.Query1.ParamByName('PCHAVE').asfloat:=pNumNf;
      if pDtemis>pdatanula then
         begin
         DM1.Query1.SQL.Add(' and IDEDEMI =:DATEMI');
         DM1.Query1.ParamByName('DATEMI').AsDateTime := pDtemis;
         end;

      DM1.Query1.Open;
      pChave:=DM1.Query1.fieldbyName('CHAVE').AsFloat;
      end;

   Qry_Cabecalho.SQL.Add(' SELECT DISTINCT * FROM NFE_CADCAB WHERE '
                        +' CHAVE_ACESSO is not null and CHAVE =:pChave');
   Qry_Cabecalho.ParamByName('pChave').AsFloat := pChave;
   TRY
      Qry_Cabecalho.Open;
   except
       fMensagem('Campo Inexistente: '+FTestarCampos(Qry_Cabecalho,['NFE_CADCAB']),0,['0'],0);
      exit;
      end;
{
   if Qry_Cabecalho.RecordCount>1 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select max(CHAVE) as CHAVE from NFE_CADCAB '
                        +' WHERE IDENNF =:pChave');
      DM1.Query1.ParamByName('pChave').AsFloat := pNumNF;
      DM1.query1.Open;
      pChave:=DM1.Query1.fieldbyName('CHAVE').AsFloat;
      Qry_Cabecalho.Close;
      Qry_Cabecalho.SQL.Clear;
      Qry_Cabecalho.SQL.Add('SELECT DISTINCT * FROM NFE_CADCAB WHERE CHAVE =:pChave');
      Qry_Cabecalho.ParamByName('pChave').AsFloat := pNumNF;
      Qry_Cabecalho.Open;
      end;
}
   end;
if Qry_Cabecalho.IsEmpty then
   begin
   pChave:=fAchaArquivada(pNumnf,pDtemis);
   if pChave=0 then
      begin
      result:=false;
      exit;
      end;
   Qry_Cabecalho.Close;
   Qry_Cabecalho.SQL.Clear;
   Qry_Cabecalho.SQL.Add('SELECT DISTINCT * FROM NFE_CADCAB WHERE CHAVE =:pChave');
   Qry_Cabecalho.ParamByName('pChave').AsFloat := pChave;
   Qry_Cabecalho.Open;
   end;

if flfilpad(0,'_principal','') then
   begin

   mImprimirLote:=True;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_LOTE_VENC',[]) then
      begin
      if DM4.Tb_FilPad2FPVALOR.AsString = 'true' then
         mImprimirLote:=False;
      end;


   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_PMC',[]) then
      begin
      if DM4.Tb_FilPad2FPVALOR.AsString = 'true' then
         mImprimirPMC:=true;
      end;      

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_MARCAPRO',[]) then
      begin
      if DM4.Tb_FilPad2FPVALOR.AsString = 'true' then
         mImprimirMarca:=true
      else
         mImprimirMarca:=false;
      end
   else
      mImprimirMarca:=false;

    if not mImprimirMarca then
      begin
      if not mImprimirPMC then
        begin
        m_marca.Visible:=False;
        det_marca.Visible:=False;
        RL_PMC.Visible :=False;
        DET_PMC.Visible:=False;
        m_descricao.Width:=517;
        rlPaisagemNome.Width:=517;
        m_marca2.Visible:=False;
        det_marca2.Visible:=False;
        lbl_nompro.Width:=lbl_nompro.Width+m_marca2.Width;
        rlRetratoNome.Width:=rlRetratoNome.Width+det_marca2.Width;
        m_marca3.Visible:=False;
        det_marca3.Visible:=False;
        RLMemo45.Width:=RLMemo45.Width+m_marca3.Width;
        rlRetratoSimplesNome.Width:=rlRetratoSimplesNome.Width+det_marca3.Width;
        m_marca4.Visible:=False;
        det_marca4.Visible:=False;
        RLMemo65.Width:=RLMemo65.Width+m_marca4.Width;
        RLDBText100.Width:=RLDBText100.Width+det_marca4.Width;
        end
      else
        begin
        m_marca.Visible:=False;
        det_marca.Visible:=False;
        RL_PMC.Visible :=True;
        DET_PMC.Visible:=True;
        m_descricao.Width:=437;
        rlPaisagemNome.Width:=437;
        m_descricao.Width:=m_descricao.Width+m_marca.Width;
        rlPaisagemNome.Width:=rlPaisagemNome.Width+det_marca.Width;
        m_marca2.Visible:=False;
        det_marca2.Visible:=False;
        lbl_nompro.Width:=lbl_nompro.Width+m_marca2.Width;
        rlRetratoNome.Width:=rlRetratoNome.Width+det_marca2.Width;
        m_marca3.Visible:=False;
        det_marca3.Visible:=False;
        RLMemo45.Width:=RLMemo45.Width+m_marca3.Width;
        rlRetratoSimplesNome.Width:=rlRetratoSimplesNome.Width+det_marca3.Width;
        m_marca4.Visible:=False;
        det_marca4.Visible:=False;
        RLMemo65.Width:=RLMemo65.Width+m_marca4.Width;
        RLDBText100.Width:=RLDBText100.Width+det_marca4.Width;
        end;
      end
    else
      begin
      if not mImprimirPMC then
        begin
        m_marca.Visible:=True;
        m_marca.Width:=172;
        det_marca.Visible:=True;
        det_marca.Width:=172;
        m_descricao.Width:=376;
        rlPaisagemNome.Width:=376;
        m_marca2.Visible:=True;
        det_marca2.Visible:=True;
        lbl_nompro.Width:=198;
        rlRetratoNome.Width:=198;
        m_marca3.Visible:=True;
        det_marca3.Visible:=True;
        RLMemo45.Width:=242;
        rlRetratoSimplesNome.Width:=242;
        m_marca4.Visible:=True;
        det_marca4.Visible:=True;
        RLMemo65.Width:=370;
        rlRetratoSimplesNome.Width:=370;
        end
      else
        begin
        m_marca.Visible:=True;
        m_marca.Width:=92;
        det_marca.Visible:=True;
       det_marca.Width:=92;
        m_descricao.Width:=438;
        rlPaisagemNome.Width:=438;
        m_marca2.Visible:=True;
        det_marca2.Visible:=True;
        lbl_nompro.Width:=198;
        rlRetratoNome.Width:=198;
        m_marca3.Visible:=True;
        det_marca3.Visible:=True;
        RLMemo45.Width:=242;
        rlRetratoSimplesNome.Width:=242;
        m_marca4.Visible:=True;
        det_marca4.Visible:=True;
        RLMemo65.Width:=370;
        rlRetratoSimplesNome.Width:=370;
        end;
      end;


   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_DESCCOMPSEGLIN',[]) then
      begin
      if DM4.Tb_FilPad2FPVALOR.AsString = 'true' then
         mDESCCOMPSEGLIN:=true
      else
         mDESCCOMPSEGLIN:=false;
      end
   else
      mDESCCOMPSEGLIN:=false;

   if not mDESCCOMPSEGLIN then
      begin
      rlRetSim_Complemento.Visible:=false;
      end;

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_RAZSOC_CANHOTO',[]) then
      begin
      if DM4.Tb_FilPad2FPVALOR.AsString = 'true' then
         begin
         RLDb_Ret_RazSoc_Can.Visible:=true;
         RLDb_Ret_Simples_RazSoc_Can.Visible:=true;
         end
      else
         begin
         RLDb_Ret_RazSoc_Can.Visible:=false;
         RLDb_Ret_Simples_RazSoc_Can.Visible:=false;
         end;
      end;







   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_LOCALMD',[]) then
      mLocalMarcaDagua:=valint(DM4.Tb_FilPad2FPVALOR.AsString);


   end;



RL_PMC.Visible:=mImprimirPMC;
DET_PMC.Visible:=mImprimirPMC;

lbl_lote.Visible      :=mImprimirLote;
lbl_datavenc.Visible  :=mImprimirLote;
txt_lote.Visible      :=mImprimirLote;
RLDBText72.Visible    :=mImprimirLote;

pchave:=Qry_CabecalhoCHAVE.AsFloat;
pNumnf:=Qry_CabecalhoIDENNF.AsFloat;
QryDetalhe.Close;
QryDetalhe.SQL.Clear;
QryDetalhe.SQL.Add('SELECT * FROM NFE_CADDET WHERE CHAVE =:pChave ');
QryDetalhe.ParamByName('pChave').AsFloat := pChave;
QryDetalhe.Open;
flcademp(1,0,'');
if (DM1.Tb_EmpCGC.AsString='6928932000185')
  or (DM1.Tb_EmpCGC.AsString='9600237000188')
  or (DM1.Tb_EmpCGC.AsString='1908004000135') then
  begin
  Qry_Vcto.Close;
  Qry_Vcto.SQL.Clear;
  Qry_Vcto.SQL.Add(' SELECT DISTINCT '+FloatToStr(pNumnf)+' AS CHAVE, '
                  +' TO_CHAR(P1VSEQ) AS NDUP,                    '
                  +' P1VDATAV AS DVENC,                 '
                  +' P1VVALOR AS VDUP,                  '
                  +CHR(39)+''+CHR(39)+' AS FATNFAT,     '
                  +CHR(39)+''+CHR(39)+' AS FATVORIG,    '
                  +CHR(39)+''+CHR(39)+' AS FATVLIQ      '
                  +' FROM CADP01V '
                  +' where P1VCODEMP='+DM2.Qr_CabP1CODEMP.AsString
                  +' AND P1VCHAVE='+DM2.Qr_CabP1CHAVE.AsString
                  +' AND NOT P1VCHAVE IS NULL '
                  +' order by P1VSEQ ');
  Qry_Vcto.Open;
  end
else
  begin
  Qry_Vcto.Close;
  Qry_Vcto.SQL.Clear;
  Qry_Vcto.SQL.Add('SELECT DISTINCT * FROM NFE_CADDUP WHERE CHAVE =:pChave'
                  +' AND NOT NDUP IS NULL '
                  +' order by DVENC ');
  Qry_Vcto.ParamByName('pChave').AsFloat := pChave;
  Qry_Vcto.Open;
  end;

if DM4.Tb_ParGer02PG2NFETPIMP.AsInteger=0 then
   begin

   if not Qry_Cabecalho.IsEmpty then
      begin
      if Log_TipoLote=1 then
         begin
         RLBand_canhoto.Visible     :=true;
         RLBand1_cab02.Visible      :=true;
         RLBand_rodape.Visible      :=true;
         RLPrinter.Copies:=mQtdVias;
         if DM4.Tb_ParGer02PG2NFE_TAMLOGOMARCA.AsFloat>0 then
            begin
            rlLogo_Retrato.Width   :=DM4.Tb_ParGer02PG2NFE_TAMLOGOMARCA.AsInteger;
            rlRetratoEmiRazao.Width:=rlRetratoEmiRazao.Width
                      -(DM4.Tb_ParGer02PG2NFE_TAMLOGOMARCA.AsInteger-80);
            rlRetratoEmiRazao.Left:=rlRetratoEmiRazao.Left
                      +(DM4.Tb_ParGer02PG2NFE_TAMLOGOMARCA.AsInteger-80);

            rlRetratoEmiEnder.Width :=rlRetratoEmiRazao.Width;
            rlRetratoEmiEnder.Left  :=rlRetratoEmiRazao.Left;

            rlRetratoEmiCidade.Width:=rlRetratoEmiRazao.Width;
            rlRetratoEmiCidade.Left :=rlRetratoEmiRazao.Left;

            rlRetratoEmiFone.Width:=rlRetratoEmiRazao.Width;
            rlRetratoEmiFone.Left :=rlRetratoEmiRazao.Left;

            rlRetratoEmiCep.Width :=rlRetratoEmiRazao.Width;
            rlRetratoEmiCep.Left  :=rlRetratoEmiRazao.Left;
            end;




         Application.NormalizeTopMosts;

         rl_retrato.BringToFront;
         if (Length(Qry_CabecalhoCHAVE_ACESSO.AsString)<>44) or
            (trim(Qry_Cabecalhonum_prot.AsString)='') then
           begin
           fmensagem('Nota Fiscal sem Protocolo ou Chave de Acesso Invalida!!! '+
           ' Ch Acesso: '+ Qry_CabecalhoCHAVE_ACESSO.AsString+
           ' Protocolo: '+ Qry_Cabecalhonum_prot.AsString  ,0,['0'],0);
           Exit;
           end;
         if pVisualiza then
            begin
            rl_retrato.PreviewModal;
            end
         else
            rl_retrato.Print;
         if fmensagem('Deseja enviar DANFE e XML por email?',0,['1','2'],2)=mrYES then
           begin
           if not DirectoryExists('C:\SGE\DANFE') then
             CreateDir('C:\SGE\DANFE');
           rl_retrato.SaveToFile('c:\sge\DANFE\'+Qry_Cabecalhonumeronf.AsString+'.pdf');
           arqxmlclient:=dm4.Tb_ParGer02PG2PASTAENVIO.AsString;
           if copy(arqxmlclient,length(arqxmlclient),1)<>'\' then
             begin
             arqxmlclient:=copy(arqxmlclient,1,pos('ENVIO',arqxmlclient)-1)+'ENVIADOS\';
             end;
           arqxmlclient:=arqxmlclient+FormatDatetime('yyyymm',Qry_CabecalhoIDEDEMI.AsDateTime)
                        +'\VERSAO_CLIENTE\'+Qry_Cabecalhonumeronf.AsString+'-nfe.xml';

           Application.CreateForm(TFrm_EnviarEmail,Frm_EnviarEmail);
           Frm_EnviarEmail.EdtAssunto.Text:='NOTA FISCAL '+Qry_Cabecalhonumeronf.AsString;
           Frm_EnviarEmail.mmMensagem.Lines.Add(' SEGUE EM ANEXO A COPIA DO DANFE E XML DA NOTA FISCAL ');
           Frm_EnviarEmail.mmMensagem.Lines.Add(' NUMERO..:'+Qry_Cabecalhonumeronf.AsString);
           Frm_EnviarEmail.mmMensagem.Lines.Add(' EMITIDA EM ..:'+Qry_CabecalhoIDEDEMI.AsString);
           Frm_EnviarEmail.mmMensagem.Lines.Add(' CHAVE DE ACESSO..:'+Qry_CabecalhoCHAVE_ACESSO.AsString);
           Frm_EnviarEmail.mmMensagem.Lines.Add(' PROTOCOLO DE AUTORIZAÇÃO..:'+Qry_Cabecalhonum_prot.AsString);
           Frm_EnviarEmail.mmMensagem.Lines.Add(' ');
           Frm_EnviarEmail.mmMensagem.Lines.Add(' '+Qry_CabecalhoEMITXNOME.AsString);
           if FileExists('c:\sge\DANFE\'+Qry_Cabecalhonumeronf.AsString+'.pdf') then
             Frm_EnviarEmail.lbxAnexos.Items.Add('c:\sge\DANFE\'+Qry_Cabecalhonumeronf.AsString+'.pdf');
           if FileExists(arqxmlclient) then
             Frm_EnviarEmail.lbxAnexos.Items.Add(arqxmlclient);
           Frm_EnviarEmail.Tipo:=0;
           Frm_EnviarEmail.CliFor:=Qry_Cabecalhocodcli.AsString;
           Frm_EnviarEmail.ShowModal;
           FreeandNil(Frm_EnviarEmail);
           end;
         end
      else
         begin
         RLBand_canhoto_simples.Visible     :=true;
         RLBand1_cab02_simples.Visible      :=true;
         RLBand_rodape_simples.Visible      :=true;
         RLPrinter.Copies:=mQtdVias;


         if DM4.Tb_ParGer02PG2NFE_TAMLOGOMARCA.AsFloat>0 then
            begin
            rlLogo_Retrato_simples.Width   :=DM4.Tb_ParGer02PG2NFE_TAMLOGOMARCA.AsInteger;
            rlRetratoSimplesEmiRazao.Width:=rlRetratoSimplesEmiRazao.Width
                      -(DM4.Tb_ParGer02PG2NFE_TAMLOGOMARCA.AsInteger-80);
            rlRetratoSimplesEmiRazao.Left:=rlRetratoSimplesEmiRazao.Left
                      +(DM4.Tb_ParGer02PG2NFE_TAMLOGOMARCA.AsInteger-80);

            rlRetratoSimplesEmiEnder.Width :=rlRetratoSimplesEmiRazao.Width;
            rlRetratoSimplesEmiEnder.Left  :=rlRetratoSimplesEmiRazao.Left;

            rlRetratoSimplesEmiCidade.Width:=rlRetratoSimplesEmiRazao.Width;
            rlRetratoSimplesEmiCidade.Left :=rlRetratoSimplesEmiRazao.Left;

            rlRetratoSimplesEmiFone.Width:=rlRetratoSimplesEmiRazao.Width;
            rlRetratoSimplesEmiFone.Left :=rlRetratoSimplesEmiRazao.Left;

            rlRetratoSimplesEmiCep.Width :=rlRetratoSimplesEmiRazao.Width;
            rlRetratoSimplesEmiCep.Left  :=rlRetratoSimplesEmiRazao.Left;
            end;

         Application.NormalizeTopMosts;
         rl_retrato.BringToFront;
         if (Length(Qry_CabecalhoCHAVE_ACESSO.AsString)<>44) or
            (trim(Qry_Cabecalhonum_prot.AsString)='') then
           begin
           fmensagem('Nota Fiscal sem Protocolo ou Chave de Acesso Invalida!!! '+
           ' Ch Acesso: '+ Qry_CabecalhoCHAVE_ACESSO.AsString +
           ' Protocolo: '+ Qry_Cabecalhonum_prot.AsString  ,0,['0'],0);
           Exit;
           end;
         if pVisualiza then
            begin
            rl_retrato_simples.PreviewModal;
            end
         else
            rl_retrato_simples.Print;
         if fmensagem('Deseja enviar DANFE e XML por email?',0,['1','2'],2)=mrYES then
           begin
           if not DirectoryExists('C:\SGE\DANFE') then
             CreateDir('C:\SGE\DANFE');
           rl_Retrato_Simples.SaveToFile('c:\sge\DANFE\'+Qry_Cabecalhonumeronf.AsString+'.pdf');
           arqxmlclient:=dm4.Tb_ParGer02PG2PASTAENVIO.AsString;
           if copy(arqxmlclient,length(arqxmlclient),1)<>'\' then
             begin
             arqxmlclient:=copy(arqxmlclient,1,pos('ENVIO',arqxmlclient)-1)+'ENVIADOS\';
             end;
           arqxmlclient:=arqxmlclient+FormatDatetime('yyyymm',Qry_CabecalhoIDEDEMI.AsDateTime)
                        +'\VERSAO_CLIENTE\'+Qry_Cabecalhonumeronf.AsString+'-nfe.xml';

           Application.CreateForm(TFrm_EnviarEmail,Frm_EnviarEmail);
           Frm_EnviarEmail.EdtAssunto.Text:='NOTA FISCAL '+Qry_Cabecalhonumeronf.AsString;
           Frm_EnviarEmail.mmMensagem.Lines.Add(' SEGUE EM ANEXO A COPIA DO DANFE E XML DA NOTA FISCAL ');
           Frm_EnviarEmail.mmMensagem.Lines.Add(' NUMERO..:'+Qry_Cabecalhonumeronf.AsString);
           Frm_EnviarEmail.mmMensagem.Lines.Add(' EMITIDA EM ..:'+Qry_CabecalhoIDEDEMI.AsString);
           Frm_EnviarEmail.mmMensagem.Lines.Add(' CHAVE DE ACESSO..:'+Qry_CabecalhoCHAVE_ACESSO.AsString);
           Frm_EnviarEmail.mmMensagem.Lines.Add(' PROTOCOLO DE AUTORIZAÇÃO..:'+Qry_Cabecalhonum_prot.AsString);
           Frm_EnviarEmail.mmMensagem.Lines.Add(' ');
           Frm_EnviarEmail.mmMensagem.Lines.Add(' '+Qry_CabecalhoEMITXNOME.AsString);
           if FileExists('c:\sge\DANFE\'+Qry_Cabecalhonumeronf.AsString+'.pdf') then
             Frm_EnviarEmail.lbxAnexos.Items.Add('c:\sge\DANFE\'+Qry_Cabecalhonumeronf.AsString+'.pdf');
           if FileExists(arqxmlclient) then
             Frm_EnviarEmail.lbxAnexos.Items.Add(arqxmlclient);
           Frm_EnviarEmail.Tipo:=0;
           Frm_EnviarEmail.CliFor:=Qry_Cabecalhocodcli.AsString;
           Frm_EnviarEmail.ShowModal;
           FreeandNil(Frm_EnviarEmail);

           end;

         end;

      end;
   end
else if DM4.Tb_ParGer02PG2NFETPIMP.AsInteger=1 then
   begin
   if not Qry_Cabecalho.IsEmpty then begin
      rl_lat_recebemos.Caption := '';

      if (Qry_CabecalhoEMITXNOME.AsString) <> '' then
         begin
         rl_lat_recebemos.Caption := 'RECEBEMOS DE '+Qry_CabecalhoEMITXNOME.AsString+' OS PRODUTOS CONSTANTES DA NOTAS FISCAL INDICADA AO LADO';
         rl_lat_recebemos_simples.Caption :=rl_lat_recebemos.Caption;
         end;

      if Log_TipoLote=1 then
         begin
         rl_lat_borda_rec.Visible:=true;
         rl_lat_recebemos.Visible:=true;
         rl_lat_Ass.Visible:=true;
         rl_lat_ObsNFE.Visible:=true;
         rl_lat_Ident.Visible:=true;
         rl_lat_DtRec.Visible:=true;
         rl_lat_traco.Visible:=true;
         rl_lat_Nota.Visible:=true;
         rl_lat_Serie.Visible:=true;
         RLBand_Rod01.visible:=true;
         RLPrinter.Copies:=mQtdVias;
         rl_band_cab02.Visible      :=true;
         rl_lat_Borda_DtEmis.Visible:=true;
         rl_lat_numcan.Visible      :=true;

         if DM4.Tb_ParGer02PG2NFE_TAMLOGOMARCA.AsFloat>0 then
            begin
            rlLogo_Paisagem.Width :=DM4.Tb_ParGer02PG2NFE_TAMLOGOMARCA.AsInteger;
            rlPaisagemEmiRazao.Width:=rlPaisagemEmiRazao.Width
                      -(DM4.Tb_ParGer02PG2NFE_TAMLOGOMARCA.AsInteger-173);

            rlPaisagemEmiRazao.Left:=rlPaisagemEmiRazao.Left
                      +(DM4.Tb_ParGer02PG2NFE_TAMLOGOMARCA.AsInteger-173);

//            rlPaisagemEmiEnder.Width :=rlPaisagemEmiRazao.Width;
//            rlPaisagemEmiEnder.Left  :=rlPaisagemEmiRazao.Left;

            rlPaisagemEmiCidade.Width:=rlPaisagemEmiRazao.Width;
            rlPaisagemEmiCidade.Left :=rlPaisagemEmiRazao.Left;

            rlPaisagemEmiFone.Width:=rlPaisagemEmiRazao.Width;
            rlPaisagemEmiFone.Left :=rlPaisagemEmiRazao.Left;

            rlPaisagemEmiCep.Width :=rlPaisagemEmiRazao.Width;
            rlPaisagemEmiCep.Left  :=rlPaisagemEmiRazao.Left;
            end;

         Application.NormalizeTopMosts;
         rl_retrato.BringToFront;
         if (Length(Qry_CabecalhoCHAVE_ACESSO.AsString)<>44) or
            (trim(Qry_Cabecalhonum_prot.AsString)='') then
           begin
           fmensagem('Nota Fiscal sem Protocolo ou Chave de Acesso Invalida!!! '+
           ' Ch Acesso: '+ Qry_CabecalhoCHAVE_ACESSO.AsString+
           ' Protocolo: '+ Qry_Cabecalhonum_prot.AsString  ,0,['0'],0);
           Exit;
           end;
         if pVisualiza then
            begin
            rl_paisagem.PreviewModal;
            end
         else
            rl_paisagem.Print;

         if fmensagem('Deseja enviar DANFE e XML por email?',0,['1','2'],2)=mrYES then
           begin
           if not DirectoryExists('C:\SGE\DANFE') then
              CreateDir('C:\SGE\DANFE');
           rl_paisagem.SaveToFile('c:\sge\DANFE\'+Qry_Cabecalhonumeronf.AsString+'.pdf');
           arqxmlclient:=dm4.Tb_ParGer02PG2PASTAENVIO.AsString;
           if copy(arqxmlclient,length(arqxmlclient),1)<>'\' then
             begin
             arqxmlclient:=copy(arqxmlclient,1,pos('ENVIO',arqxmlclient)-1)+'ENVIADOS\';
             end;
           arqxmlclient:=arqxmlclient+FormatDatetime('yyyymm',Qry_CabecalhoIDEDEMI.AsDateTime)
                        +'\VERSAO_CLIENTE\'+Qry_Cabecalhonumeronf.AsString+'-nfe.xml';

           Application.CreateForm(TFrm_EnviarEmail,Frm_EnviarEmail);
           Frm_EnviarEmail.EdtAssunto.Text:='NOTA FISCAL '+Qry_Cabecalhonumeronf.AsString;
           Frm_EnviarEmail.mmMensagem.Lines.Add(' SEGUE EM ANEXO A COPIA DO DANFE E XML DA NOTA FISCAL ');
           Frm_EnviarEmail.mmMensagem.Lines.Add(' NUMERO..:'+Qry_Cabecalhonumeronf.AsString);
           Frm_EnviarEmail.mmMensagem.Lines.Add(' EMITIDA EM ..:'+Qry_CabecalhoIDEDEMI.AsString);
           Frm_EnviarEmail.mmMensagem.Lines.Add(' CHAVE DE ACESSO..:'+Qry_CabecalhoCHAVE_ACESSO.AsString);
           Frm_EnviarEmail.mmMensagem.Lines.Add(' PROTOCOLO DE AUTORIZAÇÃO..:'+Qry_Cabecalhonum_prot.AsString);
           Frm_EnviarEmail.mmMensagem.Lines.Add(' ');
           Frm_EnviarEmail.mmMensagem.Lines.Add(' '+Qry_CabecalhoEMITXNOME.AsString);
           if FileExists('c:\sge\DANFE\'+Qry_Cabecalhonumeronf.AsString+'.pdf') then
             Frm_EnviarEmail.lbxAnexos.Items.Add('c:\sge\DANFE\'+Qry_Cabecalhonumeronf.AsString+'.pdf');
           if FileExists(arqxmlclient) then
             Frm_EnviarEmail.lbxAnexos.Items.Add(arqxmlclient);
           Frm_EnviarEmail.Tipo:=0;
           Frm_EnviarEmail.CliFor:=Qry_Cabecalhocodcli.AsString;
           Frm_EnviarEmail.ShowModal;
           FreeandNil(Frm_EnviarEmail);
           end;

         end
     else
         begin
         rl_lat_borda_rec_simples.Visible:=true;
         rl_lat_recebemos_simples.Visible:=true;
         rl_lat_Ass_Simples.Visible:=true;
         rl_lat_ObsNFE_simples.Visible:=true;
         rl_lat_Iden_simples.Visible:=true;
         rl_lat_DtRec_simples.Visible:=true;
         rl_lat_traco_simples.Visible:=true;
         rl_lat_Nota_simples.Visible:=true;
         rl_lat_Serie_simples.Visible:=true;
         RLBand_Rod01_simples.visible:=true;
         RLPrinter.Copies:=mQtdVias;
         rl_band_cab02_simples.Visible      :=true;
         rl_lat_Borda_DtEmis_simples.Visible:=true;
         rl_lat_numcan_simples.Visible      :=true;


         if DM4.Tb_ParGer02PG2NFE_TAMLOGOMARCA.AsFloat>0 then
            begin
            rlLogo_Paisagem_simples.Width :=DM4.Tb_ParGer02PG2NFE_TAMLOGOMARCA.AsInteger;
            rlPaisagemSimplesEmiRazao.Width:=rlPaisagemsimplesEmiRazao.Width
                      -(DM4.Tb_ParGer02PG2NFE_TAMLOGOMARCA.AsInteger-173);

            rlPaisagemsimplesEmiRazao.Left:=rlPaisagemsimplesEmiRazao.Left
                      +(DM4.Tb_ParGer02PG2NFE_TAMLOGOMARCA.AsInteger-173);

            rlPaisagemsimplesEmiEnder.Width :=rlPaisagemsimplesEmiRazao.Width;
            rlPaisagemsimplesEmiEnder.Left  :=rlPaisagemsimplesEmiRazao.Left;

            rlPaisagemsimplesEmiCidade.Width:=rlPaisagemsimplesEmiRazao.Width;
            rlPaisagemsimplesEmiCidade.Left :=rlPaisagemsimplesEmiRazao.Left;

            rlPaisagemsimplesEmiFone.Width:=rlPaisagemsimplesEmiRazao.Width;
            rlPaisagemsimplesEmiFone.Left :=rlPaisagemsimplesEmiRazao.Left;

            rlPaisagemsimplesEmiCep.Width :=rlPaisagemsimplesEmiRazao.Width;
            rlPaisagemsimplesEmiCep.Left  :=rlPaisagemsimplesEmiRazao.Left;
            end;

         Application.NormalizeTopMosts;
         rl_retrato.BringToFront;
         if (Length(Qry_CabecalhoCHAVE_ACESSO.AsString)<>44) or
            (trim(Qry_Cabecalhonum_prot.AsString)='') then
           begin
           fmensagem('Nota Fiscal sem Protocolo ou Chave de Acesso Invalida!!! '+
           ' Ch Acesso: '+ Qry_CabecalhoCHAVE_ACESSO.AsString  +
           ' Protocolo: '+ Qry_Cabecalhonum_prot.AsString  ,0,['0'],0);
           Exit;
           end;
         if pVisualiza then
            begin
            rl_paisagem_simples.PreviewModal;
            end
         else
            rl_paisagem_simples.Print;
         if fmensagem('Deseja enviar DANFE e XML por email?',0,['1','2'],2)=mrYES then
           begin
           if not DirectoryExists('C:\SGE\DANFE') then
              CreateDir('C:\SGE\DANFE');
           rl_Paisagem_Simples.SaveToFile('c:\sge\DANFE\'+Qry_Cabecalhonumeronf.AsString+'.pdf');
           arqxmlclient:=dm4.Tb_ParGer02PG2PASTAENVIO.AsString;
           if copy(arqxmlclient,length(arqxmlclient),1)<>'\' then
             begin
             arqxmlclient:=copy(arqxmlclient,1,pos('ENVIO',arqxmlclient)-1)+'ENVIADOS\';
             end;
           arqxmlclient:=arqxmlclient+FormatDatetime('yyyymm',Qry_CabecalhoIDEDEMI.AsDateTime)
                        +'\VERSAO_CLIENTE\'+Qry_Cabecalhonumeronf.AsString+'-nfe.xml';

           Application.CreateForm(TFrm_EnviarEmail,Frm_EnviarEmail);
           Frm_EnviarEmail.EdtAssunto.Text:='NOTA FISCAL '+Qry_Cabecalhonumeronf.AsString;
           Frm_EnviarEmail.mmMensagem.Lines.Add(' SEGUE EM ANEXO A COPIA DO DANFE E XML DA NOTA FISCAL ');
           Frm_EnviarEmail.mmMensagem.Lines.Add(' NUMERO..:'+Qry_Cabecalhonumeronf.AsString);
           Frm_EnviarEmail.mmMensagem.Lines.Add(' EMITIDA EM ..:'+Qry_CabecalhoIDEDEMI.AsString);
           Frm_EnviarEmail.mmMensagem.Lines.Add(' CHAVE DE ACESSO..:'+Qry_CabecalhoCHAVE_ACESSO.AsString);
           Frm_EnviarEmail.mmMensagem.Lines.Add(' PROTOCOLO DE AUTORIZAÇÃO..:'+Qry_Cabecalhonum_prot.AsString);
           Frm_EnviarEmail.mmMensagem.Lines.Add(' ');
           Frm_EnviarEmail.mmMensagem.Lines.Add(' '+Qry_CabecalhoEMITXNOME.AsString);
           if FileExists('c:\sge\DANFE\'+Qry_Cabecalhonumeronf.AsString+'.pdf') then
             Frm_EnviarEmail.lbxAnexos.Items.Add('c:\sge\DANFE\'+Qry_Cabecalhonumeronf.AsString+'.pdf');
           if FileExists(arqxmlclient) then
             Frm_EnviarEmail.lbxAnexos.Items.Add(arqxmlclient);
           Frm_EnviarEmail.Tipo:=0;
           Frm_EnviarEmail.CliFor:=Qry_Cabecalhocodcli.AsString;
           Frm_EnviarEmail.ShowModal;
           FreeandNil(Frm_EnviarEmail);
           end;
         end;
      end;
   end;
end;

procedure Tfrm_NFE.btn_visualizarClick(Sender: TObject);
begin

   Qry_Cabecalho.Close;
   QryDetalhe.Close;
   QryDetalhe.Close;

   Qry_Vcto.Close;

   Qry_Cabecalho.SQL.Clear;
   Qry_Cabecalho.SQL.Add('SELECT DISTINCT * FROM NFE_CADCAB');
   Qry_Cabecalho.Open;

   Qry_Cabecalho.First;
   while not Qry_Cabecalho.Eof do begin
      EmissaoDanfe(true,0,Qry_Cabecalho.FieldByName('CHAVE').AsInteger,0,pdatanula,iif(dm2.Qr_CabP1QTDDECPU.AsInteger>0,dm2.Qr_CabP1QTDDECPU.AsInteger,-1));

      Qry_Cabecalho.Next;
   end;
end;

procedure Tfrm_NFE.rl_paisagemBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_lat_Nota.Caption  := 'Nº : '+Qry_CabecalhoIDENNF.AsString;
rl_lat_Serie.Caption := 'SERIE : '+FormatFloat('000',Qry_CabecalhoIDESERIE.AsFloat);

end;


procedure Tfrm_NFE.btn_imprimirClick(Sender: TObject);
begin

   Qry_Cabecalho.Close;
   QryDetalhe.Close;
   QryDetalhe.Close;

   Qry_Vcto.Close;

   Qry_Cabecalho.SQL.Clear;
   Qry_Cabecalho.SQL.Add('SELECT DISTINCT * FROM NFE_CADCAB');
   Qry_Cabecalho.Open;

   Qry_Cabecalho.First;
   if not Qry_Cabecalho.IsEmpty then
      begin
      EmissaoDanfe(false,0,Qry_Cabecalho.FieldByName('CHAVE').AsInteger,0,pdatanula,iif(dm2.Qr_CabP1QTDDECPU.AsInteger>0,dm2.Qr_CabP1QTDDECPU.AsInteger,-1));
      end;
   end;

//Função IIF


procedure Tfrm_NFE.Qry_CabecalhoCalcFields(DataSet: TDataSet);
var
  mposI: Integer;
begin


DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.Add('Select NSCODEMP,NSNFE_NUMPROT from CADNS '
                  +' where  '
                  +' NSNUMERO=:NUMNF '
                  +' and NSDTEMIS=:pdtemis '
                  +' and NSCODEMP<100 ');

DM1.Query1.ParamByName('NUMNF').asfloat     := Qry_CabecalhoIDENNF.AsFloat;
DM1.Query1.ParamByName('PDTEMIS').AsDateTime:= qry_cabecalhoIDEDEMI.AsDateTime;
DM1.Query1.Open;
if DM1.query1.IsEmpty then
   Qry_Cabecalhonum_prot.AsString:=''
else
   Qry_Cabecalhonum_prot.AsString:=DM1.Query1.fieldbyName('NSNFE_NUMPROT').AsString;


Qry_Cabecalhonumeronf.Value       :=Qry_CabecalhoIDENNF.Value;
Qry_Cabecalhofrete_cif_fob.AsFloat:=Qry_CabecalhoTRANSPMODFRETE.AsFloat+1;
if ValFloat(Qry_CabecalhoDESTCNPJ.AsString)>0 then
   Qry_Cabecalhodest_cnpj.Value      :=FormatFloat(pDFCNPJ, ValFloat(Qry_CabecalhoDESTCNPJ.AsString))
else
   Qry_Cabecalhodest_cnpj.Value      :=FormatFloat(pDFCNPF, ValFloat(Qry_CabecalhoDESTCPF.AsString));
if ValFloat(Qry_CabecalhoDESTIE.AsString)=0 then
   Qry_Cabecalhodest_inscricao.Value:='ISENTO'
else
   Qry_Cabecalhodest_inscricao.Value:=Mascara_Inscricao(Qry_CabecalhoDESTIE.AsString, Qry_CabecalhoDESTENDERDESTUF.Value );


if ValFloat(Qry_CabecalhoDESTCNPJ.AsString)>0 then
  begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add(' select CRAZAO,CCODCLI,CDENOM ');
  DM1.Query1.SQL.Add(' from CADCLI ');
  DM1.Query1.SQL.Add(' where CCNPJ ='+FloatToStr(ValFloat( Qry_CabecalhoDESTCNPJ.AsString)));
  if (trim(Qry_CabecalhoDESTIE.AsString)<>'') and (trim(Qry_CabecalhoDESTIE.AsString)<>'ISENTO') and (fsonumero(Qry_CabecalhoDESTIE.AsString)>0)  then
    DM1.Query1.SQL.Add(' and TRIM(translate(CIE,'+QuotedStr(' . - /')+','+QuotedStr(' ')+')) ='+fdeixanum(Qry_CabecalhoDESTIE.AsString));
//    DM1.Query1.SQL.Add(' and CIE = '+QuotedStr(Mascara_Inscricao(Qry_CabecalhoDESTIE.AsString, Qry_CabecalhoDESTENDERDESTUF.Value)));
//    DM1.Query1.SQL.Add(' and CIE = '+QuotedStr(fdeixanum(Qry_CabecalhoDESTIE.AsString)));
  //    DM1.Query1.SQL.Add(' and TRIM(translate(CIE,'+QuotedStr(' . - /')+','+QuotedStr(' ')+')) ='+fdeixanum(Qry_CabecalhoDESTIE.AsString));
  try
    DM1.Query1.Open;
  except
    DM1.Query1.sql.SaveToFile('c:\sql.txt');
    end;    
//  DM1.Query1.Open;
  if not DM1.Query1.IsEmpty then
    begin
//    Qry_Cabecalhonomcli_codigo.AsString:=Qry_CabecalhoDESTXNOME.AsString+' - '+DM1.Query1.fieldbyName('CCODCLI').AsString;
    Qry_Cabecalhofantasia_cliente.AsString:=DM1.Query1.fieldbyName('CDENOM').AsString;
    end;
// else
//   begin
{   for mposI:=1 to length(DM1.Query1.fieldbyName('CDENOM').AsString) -1 do
     begin
     if copy(DM1.Query1.fieldbyName('CDENOM').AsString,mposI,1)=' ' then
       Break;
     end;

   if (DM1.Query1.fieldbyName('CDENOM').AsString<>DM1.Query1.fieldbyName('CRAZAO').AsString) and
      (Pos(Copy(DM1.Query1.fieldbyName('CDENOM').AsString,1,mposI),DM1.Query1.fieldbyName('CRAZAO').AsString)=0) then
     Qry_Cabecalhonomcli_codigo.AsString:=Qry_CabecalhoDESTXNOME.AsString+' - '+Qry_Cabecalhofantasia_cliente.AsString+' - '+DM1.Query1.fieldbyName('CCODCLI').AsString
   else
     Qry_Cabecalhonomcli_codigo.AsString:=Qry_CabecalhoDESTXNOME.AsString+' - '+DM1.Query1.fieldbyName('CCODCLI').AsString;
//     end;}
   end
else //if DM1.Query1.IsEmpty then
  begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add(' select CRAZAO,CCODCLI,CDENOM ');
  DM1.Query1.SQL.Add(' from CADCLI ');
  DM1.Query1.SQL.Add(' where CCPF='+FloatToStr(ValFloat(Qry_CabecalhoDESTCPF.AsString)));
  if (trim(Qry_CabecalhoDESTIE.AsString)<>'') and (trim(Qry_CabecalhoDESTIE.AsString)<>'ISENTO') and (fsonumero(Qry_CabecalhoDESTIE.AsString)>0) then
    DM1.Query1.SQL.Add(' and CIE = '+QuotedStr(fdeixanum(Qry_CabecalhoDESTIE.AsString)));
//    DM1.Query1.SQL.Add(' and CIE='+QuotedStr(Mascara_Inscricao(Qry_CabecalhoDESTIE.AsString,Qry_CabecalhoDESTENDERDESTUF.AsString)));
  try
    DM1.Query1.Open;
  except
    DM1.Query1.sql.SaveToFile('c:\sql.txt');
    end;
  if not DM1.Query1.IsEmpty then
    begin
//    Qry_Cabecalhonomcli_codigo.AsString:=Qry_CabecalhoDESTXNOME.AsString+' - '+DM1.Query1.fieldbyName('CCODCLI').AsString;
    Qry_Cabecalhofantasia_cliente.AsString:=DM1.Query1.fieldbyName('CDENOM').AsString;
    end;
  end;
for mposI:=1 to length(DM1.Query1.fieldbyName('CDENOM').AsString) -1 do
  begin
  if copy(DM1.Query1.fieldbyName('CDENOM').AsString,mposI,1)=' ' then
    Break;
  end;

if (DM1.Query1.fieldbyName('CDENOM').AsString<>DM1.Query1.fieldbyName('CRAZAO').AsString) and
   (Pos(Copy(DM1.Query1.fieldbyName('CDENOM').AsString,1,mposI),DM1.Query1.fieldbyName('CRAZAO').AsString)=0) then
  Qry_Cabecalhonomcli_codigo.AsString:=Qry_CabecalhoDESTXNOME.AsString+' - '+Qry_Cabecalhofantasia_cliente.AsString+' - '+DM1.Query1.fieldbyName('CCODCLI').AsString
else
  Qry_Cabecalhonomcli_codigo.AsString:=Qry_CabecalhoDESTXNOME.AsString+' - '+DM1.Query1.fieldbyName('CCODCLI').AsString;
Qry_Cabecalhocodcli.AsFloat:=DM1.Query1.fieldbyName('CCODCLI').AsFloat;




Qry_Cabecalhoemit_cnpj.Value      :=FormatFloat(pDFCNPJ, ValFloat(Qry_CabecalhoEMITCNPJ.AsString));
Qry_Cabecalhotransp_cnpj.Value    :=FormatFloat(pDFCNPJ, ValFloat(Qry_CabecalhoTT_CNPJ.AsString));

Qry_Cabecalhoendereco_comp.Value  := Qry_CabecalhoEMITENDEREMITXLGR.Value;
if (Qry_CabecalhoEMITENDEREMITNRO.Value)<>'' then
   begin
   if trim(Qry_Cabecalhoendereco_comp.Value)<>'' then
      Qry_Cabecalhoendereco_comp.Value  := Qry_Cabecalhoendereco_comp.Value + ' ';
   Qry_Cabecalhoendereco_comp.Value  := Qry_Cabecalhoendereco_comp.Value + 'No.'+Qry_CabecalhoEMITENDEREMITNRO.AsString;
   end;

if (Qry_CabecalhoEMITENDEREMITXCPL.Value)<>'' then
   begin
   if trim(Qry_Cabecalhoendereco_comp.Value)<>'' then
      Qry_Cabecalhoendereco_comp.Value  := Qry_Cabecalhoendereco_comp.Value + ' ';
   Qry_Cabecalhoendereco_comp.Value  := Qry_Cabecalhoendereco_comp.Value + Qry_CabecalhoEMITENDEREMITXCPL.AsString;
   end;

if (Qry_CabecalhoEMITENDEREMITXBAIRRO.Value)<>'' then
   begin
   if trim(Qry_Cabecalhoendereco_comp.Value)<>'' then
      Qry_Cabecalhoendereco_comp.Value  := Qry_Cabecalhoendereco_comp.Value + ' ';
   Qry_Cabecalhoendereco_comp.Value  := Qry_Cabecalhoendereco_comp.Value + Qry_CabecalhoEMITENDEREMITXBAIRRO.AsString;
   end;

if length(DM1.Tb_EmpE_MAIL.AsString)>1 then
   Qry_Cabecalhoendereco_comp.Value  := Qry_Cabecalhoendereco_comp.Value;
//   + chr(13)+' E-Mail: '+DM1.Tb_EmpE_MAIL.AsString;



if (Qry_CabecalhoEMITENDEREMITFONE.AsString) <> '' then
   Qry_Cabecalhoemt_fone.Value :=FMontarMascFone(Qry_CabecalhoEMITENDEREMITFONE.AsString)
else
   Qry_Cabecalhoemt_fone.Value :='';

if (Qry_CabecalhoDESTENDERDESTFONE.AsString) <> '' then
   Qry_Cabecalhodest_fone.Value :=FMontarMascFone(Qry_CabecalhoDESTENDERDESTFONE.AsString)
else
   Qry_Cabecalhodest_fone.Value :='';

if Qry_CabecalhoIDETPNF.AsInteger=0 then
   Qry_Cabecalhosaida_entrada.AsFloat:=2
else
   Qry_Cabecalhosaida_entrada.AsFloat:=Qry_CabecalhoIDETPNF.AsInteger;

Qry_Cabecalhoemissao_texto.Text:='Emissão: '+FormatDateTime(fdt2, Qry_CabecalhoIDEDEMI.Value);
Qry_Cabecalhovalor_texto.Text:='Valor: '+FormatFloat(mcasas, Qry_CabecalhoTOTALICMSTOTVNF.Value);

if Trim(Qry_CabecalhoCHAVE_ACESSO.AsString) <> '' then
   begin
   Qry_Cabecalhochave_acesso_calc.Value:=Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,1,4)+'.'
                       +Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,5,4)+'.'
                       +Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,9,4)+'.'
                       +Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,13,4)+'.'
                       +Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,17,4)+'.'
                       +Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,21,4)+'.'
                       +Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,25,4)+'.'
                       +Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,29,4)+'.'
                       +Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,33,4)+'.'
                       +Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,37,4)+'.'
                       +Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,41,4);
{
   Qry_Cabecalhochave_acesso_calc.Value := Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,1,2)+'.'+Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,3,2)+'.'+Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,5,2)+'.'+
                         Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,7,2)+'.'+Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,9,2)+'.'+Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,11,3)+'.'+
                         Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,14,3)+'/'+Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,17,4)+'-'+Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,21,2)+'-'+
                         Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,23,3)+'.'+Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,26,3)+'.'+Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,29,3)+'-'+
                         Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,32,3)+'-'+Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,35,3)+'.'+Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,38,3)+'.'+
                         Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,41,3)+'-'+Copy(Qry_CabecalhoCHAVE_ACESSO.AsString,44,1);
}
   end;



Qry_Cabecalhodata_vencimentos.Value:='';

while not Qry_Vcto.Eof do
   begin
   Qry_Cabecalhodata_vencimentos.Value:=Qry_Cabecalhodata_vencimentos.Value
                               +'['+insere2(Qry_VctoNDUP.AsString,' ',10)
                               +' '+insere(FormatFloat('#,##0.00', Qry_VctoVDUP.AsFloat),' ',13)
                               +' '+insere(FormatDateTime('dd/mm/yy', Qry_VctoDVENC.AsDateTime),' ',10)+']  ';
    Qry_Vcto.Next;
   end;


if (Qry_CabecalhoEMITENDEREMITFONE.AsString) <> '' then
   begin
   Qry_Cabecalhofone_fax.Value:='Fone/Fax:'+ '('+copy(Qry_CabecalhoEMITENDEREMITFONE.AsString,1,2)+')'+copy(Qry_CabecalhoEMITENDEREMITFONE.AsString,3,4)+'-'+
                          copy(Qry_CabecalhoEMITENDEREMITFONE.AsString,7,4)

   end
else
   Qry_Cabecalhofone_fax.Value:='';

Qry_Cabecalhoemicidadeuf.Value:=Qry_CabecalhoEMITENDEREMITXMUN.AsString+'-'+
Qry_CabecalhoEMITENDEREMITUF.AsString;
Qry_Cabecalhocep_emit.Value:='CEP.:'+Qry_CabecalhoEMITENDEREMITCEP.AsString;
Qry_Cabecalhorecebemos.Value:='RECEBEMOS DE '+Qry_CabecalhoEMITXNOME.AsString+' OS PRODUTOS CONSTANTES DA NOTAS FISCAL INDICADA AO LADO';
if Qry_CabecalhoIDEDSAIENT.AsDateTime<=pdatanula then
   Qry_Cabecalhodatasaida.Value:='  '
else
   Qry_Cabecalhodatasaida.Value:=FormatDAteTime(fdt2, Qry_CabecalhoIDEDSAIENT.AsDateTime);
end;




procedure Tfrm_NFE.rl_lat_AssAfterPrint(Sender: TObject);
begin
         rl_lat_Ass.Visible:=false;

end;

procedure Tfrm_NFE.rl_lat_Borda_DtEmisAfterPrint(Sender: TObject);
begin
         rl_lat_Borda_DtEmis.Visible:=false;

end;

procedure Tfrm_NFE.rl_lat_borda_recAfterPrint(Sender: TObject);
begin
         rl_lat_borda_rec.Visible:=false;

end;

procedure Tfrm_NFE.rl_lat_DtRecAfterPrint(Sender: TObject);
begin
         rl_lat_DtRec.Visible:=false;

end;

procedure Tfrm_NFE.rl_lat_IdentAfterPrint(Sender: TObject);
begin
         rl_lat_Ident.Visible:=false;

end;

procedure Tfrm_NFE.rl_lat_NotaAfterPrint(Sender: TObject);
begin
         rl_lat_Nota.Visible:=false;

end;

procedure Tfrm_NFE.rl_lat_ObsNFEAfterPrint(Sender: TObject);
begin
         rl_lat_ObsNFE.Visible:=false;

end;

procedure Tfrm_NFE.rl_lat_recebemosAfterPrint(Sender: TObject);
begin
         rl_lat_recebemos.Visible:=false;


end;

procedure Tfrm_NFE.rl_lat_SerieAfterPrint(Sender: TObject);
begin
         rl_lat_Serie.Visible:=false;

end;

procedure Tfrm_NFE.rl_lat_tracoAfterPrint(Sender: TObject);
begin
         rl_lat_traco.Visible:=false;

end;

procedure Tfrm_NFE.rl_band_cab02AfterPrint(Sender: TObject);
begin
rl_band_cab02.Visible:=false;
end;

procedure Tfrm_NFE.RLBand_Rod01AfterPrint(Sender: TObject);
begin
RLBand_Rod01.visible:=false;
end;

procedure Tfrm_NFE.QryDetalheCalcFields(DataSet: TDataSet);
var
  mCodpro_Real: Real;
begin
QryDetalhealiq_icms.Value :=0;
QryDetalhebase_icms.Value :=0;
QryDetalhevalor_icms.Value:=0;
QryDetalhepercipi.Value   :=0;
QryDetalhevalor_ipi.Value :=0;
QryDetalhecst.Value       :='';
QryDetalhealiq_issqn.Value:=QryDetalheDI_ISSQNVALIQ.Value;

if ((DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=1) or (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=2)) then
   begin
  if not QryDetalheDI_ICMSICMSSN500ORIG.IsNull THEN
     QryDetalhecst.Value       :=FormatFloat('000',QryDetalheDI_ICMSICMSSN500CSOSN.Value)
  else if not QryDetalheDI_ICMSICMSSN101ORIG.IsNull THEN
     QryDetalhecst.Value       :=FormatFloat('000',QryDetalheDI_ICMSICMSSN101CSOSN.Value)
  else if not QryDetalheDI_ICMSICMSSN102ORIG.IsNull THEN
     QryDetalhecst.Value       :=FormatFloat('000',QryDetalheDI_ICMSICMSSN102CSOSN.Value)
  else if not QryDetalheDI_ICMSICMSSN103ORIG.IsNull THEN
     QryDetalhecst.Value       :=FormatFloat('000',QryDetalheDI_ICMSICMSSN103CSOSN.Value)
  else if not QryDetalheDI_ICMSICMSSN201ORIG.IsNull THEN
     QryDetalhecst.Value       :=FormatFloat('000',QryDetalheDI_ICMSICMSSN201CSOSN.Value)
  else if not QryDetalheDI_ICMSICMSSN202ORIG.IsNull THEN
     QryDetalhecst.Value       :=FormatFloat('000',QryDetalheDI_ICMSICMSSN202CSOSN.Value)
  else if not QryDetalheDI_ICMSICMSSN900ORIG.IsNull THEN
     QryDetalhecst.Value       :=FormatFloat('000',QryDetalheDI_ICMSICMSSN900CSOSN.Value);
  end
else
  begin
  if not QryDetalheDI_ICMSICMS00CST.IsNull then
     begin
     QryDetalhecst.Value       :=FormatFloat('0',QryDetalheDI_ICMSICMS00ORIG.Value)+
                                 FormatFloat('00',QryDetalheDI_ICMSICMS00CST.Value);
     QryDetalhevalor_icms.Value:=QryDetalheDI_ICMSICMS00VICMS.Value;
     QryDetalhebase_icms.Value :=QryDetalheDI_ICMSICMS00VBC.Value;
     QryDetalhealiq_icms.Value :=QryDetalheDI_ICMSICMS00PICMS.Value;
     if (QryDetalhealiq_icms.AsFloat=0) and (QryDetalheDI_ICMSICMS00VICMS.Value>0) then
        begin
        QryDetalhealiq_icms.Value:=Round( (QryDetalheDI_ICMSICMS00VICMS.Value*100)/QryDetalheDI_ICMSICMS00VBC.Value)
        end;

     end
  else if not QryDetalheDI_ICMSICMS10CST.IsNull then
     begin
     QryDetalhecst.Value       :=FormatFloat('0',QryDetalheDI_ICMSICMS10ORIG.Value)+
                                 FormatFloat('00',QryDetalheDI_ICMSICMS10CST.Value);
     QryDetalhevalor_icms.Value:=QryDetalheDI_ICMSICMS10VICMS.Value;
     QryDetalhebase_icms.Value :=QryDetalheDI_ICMSICMS10VBC.Value;
     QryDetalhealiq_icms.Value :=QryDetalheDI_ICMSICMS10PICMS.Value;
     end
  else if not QryDetalheDI_ICMSICMS20ORIG.IsNull then
     begin
     QryDetalhecst.Value       :=FormatFloat('0',QryDetalheDI_ICMSICMS20ORIG.Value)+
                                 FormatFloat('00',20);
     QryDetalhevalor_icms.Value:=QryDetalheDI_ICMSICMS20VICMS.Value;
     QryDetalhebase_icms.Value :=QryDetalheDI_ICMSICMS20VBC.Value;
     QryDetalhealiq_icms.Value :=QryDetalheDI_ICMSICMS20PICMS.Value;
     end
  else if not QryDetalheDI_ICMSICMS40ORIG.IsNull then
     begin
     QryDetalhecst.Value       :=FormatFloat('0',QryDetalheDI_ICMSICMS40ORIG.Value)+
                                 FormatFloat('00',QryDetalheDI_ICMSICMS40CST.Value);
     end
  else if not QryDetalheDI_ICMSICMS51ORIG.IsNull then
     begin
     QryDetalhecst.Value       :=FormatFloat('0',QryDetalheDI_ICMSICMS51ORIG.Value)+
                                 FormatFloat('00',QryDetalheDI_ICMSICMS51CST.Value);
     QryDetalhevalor_icms.Value:=QryDetalheDI_ICMSICMS51VICMS.Value;
     QryDetalhebase_icms.Value :=QryDetalheDI_ICMSICMS51VBC.Value;
     QryDetalhealiq_icms.Value :=QryDetalheDI_ICMSICMS51PICMS.Value;
     end
  else if not QryDetalheDI_ICMSICMS60ORIG.IsNull then
     begin
     QryDetalhecst.Value       :=FormatFloat('0',QryDetalheDI_ICMSICMS60ORIG.Value)+
                                 FormatFloat('00',QryDetalheDI_ICMSICMS60CST.Value);
     end
  else if not QryDetalheDI_ICMSICMS70ORIG.IsNull then
     begin
     QryDetalhecst.Value       :=FormatFloat('0',QryDetalheDI_ICMSICMS70ORIG.Value)+
                                 FormatFloat('00',QryDetalheDI_ICMSICMS70CST.Value);
     QryDetalhevalor_icms.Value:=QryDetalheDI_ICMSICMS70VICMS.Value;
     QryDetalhebase_icms.Value :=QryDetalheDI_ICMSICMS70VBC.Value;
     QryDetalhealiq_icms.Value :=QryDetalheDI_ICMSICMS70VICMS.Value;
     end
  else if not QryDetalheDI_ICMSICMS90ORIG.IsNull then
     begin
     QryDetalhecst.Value       :=FormatFloat('0',QryDetalheDI_ICMSICMS90ORIG.Value)+
                                 FormatFloat('00',QryDetalheDI_ICMSICMS90CST.Value);
     QryDetalhevalor_icms.Value:=QryDetalheDI_ICMSICMS90VICMS.Value;
     QryDetalhebase_icms.Value :=QryDetalheDI_ICMSICMS90VBC.Value;
     QryDetalhealiq_icms.Value :=QryDetalheDI_ICMSICMS90VICMS.Value;
     end;
  end;

{
if not QryDetalheDI_ICMSICMS00CST.IsNull then
   begin
   QryDetalhecst.Value       :=FormatFloat('0',QryDetalheDI_ICMSICMS00ORIG.Value)+
                               FormatFloat('00',QryDetalheDI_ICMSICMS00CST.Value);
   QryDetalhevalor_icms.Value:=QryDetalheDI_ICMSICMS00VICMS.Value;
   QryDetalhebase_icms.Value :=QryDetalheDI_ICMSICMS00VBC.Value;
   QryDetalhealiq_icms.Value :=QryDetalheDI_ICMSICMS00PICMS.Value;
   if (QryDetalhealiq_icms.AsFloat=0) and (QryDetalheDI_ICMSICMS00VICMS.Value>0) then
      begin
      QryDetalhealiq_icms.Value:=Round( (QryDetalheDI_ICMSICMS00VICMS.Value*100)/QryDetalheDI_ICMSICMS00VBC.Value)
      end;

   end
else if not QryDetalheDI_ICMSICMS10CST.IsNull then
   begin
   QryDetalhecst.Value       :=FormatFloat('0',QryDetalheDI_ICMSICMS10ORIG.Value)+
                               FormatFloat('00',QryDetalheDI_ICMSICMS10CST.Value);
   QryDetalhevalor_icms.Value:=QryDetalheDI_ICMSICMS10VICMS.Value;
   QryDetalhebase_icms.Value :=QryDetalheDI_ICMSICMS10VBC.Value;
   QryDetalhealiq_icms.Value :=QryDetalheDI_ICMSICMS10PICMS.Value;
   end
else if not QryDetalheDI_ICMSICMS20ORIG.IsNull then
   begin
   QryDetalhecst.Value       :=FormatFloat('0',QryDetalheDI_ICMSICMS20ORIG.Value)+
                               FormatFloat('00',20);
   QryDetalhevalor_icms.Value:=QryDetalheDI_ICMSICMS20VICMS.Value;
   QryDetalhebase_icms.Value :=QryDetalheDI_ICMSICMS20VBC.Value;
   QryDetalhealiq_icms.Value :=QryDetalheDI_ICMSICMS20PICMS.Value;
   end
else if not QryDetalheDI_ICMSICMS40ORIG.IsNull then
   begin
   QryDetalhecst.Value       :=FormatFloat('0',QryDetalheDI_ICMSICMS40ORIG.Value)+
                               FormatFloat('00',QryDetalheDI_ICMSICMS40CST.Value);
   end
else if not QryDetalheDI_ICMSICMS51ORIG.IsNull then
   begin
   QryDetalhecst.Value       :=FormatFloat('0',QryDetalheDI_ICMSICMS51ORIG.Value)+
                               FormatFloat('00',QryDetalheDI_ICMSICMS51CST.Value);
   QryDetalhevalor_icms.Value:=QryDetalheDI_ICMSICMS51VICMS.Value;
   QryDetalhebase_icms.Value :=QryDetalheDI_ICMSICMS51VBC.Value;
   QryDetalhealiq_icms.Value :=QryDetalheDI_ICMSICMS51PICMS.Value;
   end

else if not QryDetalheDI_ICMSICMS60ORIG.IsNull then
   begin
   QryDetalhecst.Value       :=FormatFloat('0',QryDetalheDI_ICMSICMS60ORIG.Value)+
                               FormatFloat('00',QryDetalheDI_ICMSICMS60CST.Value);
   end
else if not QryDetalheDI_ICMSICMS70ORIG.IsNull then
   begin
   QryDetalhecst.Value       :=FormatFloat('0',QryDetalheDI_ICMSICMS70ORIG.Value)+
                               FormatFloat('00',QryDetalheDI_ICMSICMS70CST.Value);
   QryDetalhevalor_icms.Value:=QryDetalheDI_ICMSICMS70VICMS.Value;
   QryDetalhebase_icms.Value :=QryDetalheDI_ICMSICMS70VBC.Value;
   QryDetalhealiq_icms.Value :=QryDetalheDI_ICMSICMS70VICMS.Value;
   end
else if not QryDetalheDI_ICMSICMS90ORIG.IsNull then
   begin
   QryDetalhecst.Value       :=FormatFloat('0',QryDetalheDI_ICMSICMS90ORIG.Value)+
                               FormatFloat('00',QryDetalheDI_ICMSICMS90CST.Value);
   QryDetalhevalor_icms.Value:=QryDetalheDI_ICMSICMS90VICMS.Value;
   QryDetalhebase_icms.Value :=QryDetalheDI_ICMSICMS90VBC.Value;
   QryDetalhealiq_icms.Value :=QryDetalheDI_ICMSICMS90VICMS.Value;
   end
else if not QryDetalheDI_ICMSICMSSN500ORIG.IsNull THEN
   QryDetalhecst.Value       :=FormatFloat('000',QryDetalheDI_ICMSICMSSN500CSOSN.Value)
else if not QryDetalheDI_ICMSICMSSN101ORIG.IsNull THEN
   QryDetalhecst.Value       :=FormatFloat('000',QryDetalheDI_ICMSICMSSN101CSOSN.Value)
else if not QryDetalheDI_ICMSICMSSN102ORIG.IsNull THEN
   QryDetalhecst.Value       :=FormatFloat('000',QryDetalheDI_ICMSICMSSN102CSOSN.Value)
else if not QryDetalheDI_ICMSICMSSN103ORIG.IsNull THEN
   QryDetalhecst.Value       :=FormatFloat('000',QryDetalheDI_ICMSICMSSN103CSOSN.Value)
else if not QryDetalheDI_ICMSICMSSN201ORIG.IsNull THEN
   QryDetalhecst.Value       :=FormatFloat('000',QryDetalheDI_ICMSICMSSN201CSOSN.Value)
else if not QryDetalheDI_ICMSICMSSN202ORIG.IsNull THEN
   QryDetalhecst.Value       :=FormatFloat('000',QryDetalheDI_ICMSICMSSN202CSOSN.Value)
else if not QryDetalheDI_ICMSICMSSN900ORIG.IsNull THEN
   QryDetalhecst.Value       :=FormatFloat('000',QryDetalheDI_ICMSICMSSN900CSOSN.Value);
}
QryDetalhepercipi.Value     :=QryDetalheDI_IPIIPITRIBPIPI.AsFloat;
QryDetalhevalor_ipi.Value   :=QryDetalheDI_IPIIPITRIBVIPI.AsFloat;

QryDetalhenomepro.AsString  :=QryDetalheDETPRODXPROD.AsString;
if trim(QryDetalheDETPRODMEDNLOTE.AsString)<>'' then
  begin
  QryDetalhenomepro.AsString  :=QryDetalhenomepro.AsString+#13+'LOTE '+QryDetalheDETPRODMEDNLOTE.AsString
                              +' DT.VCTO '
                              +FormatDateTime('DD/MM/YYYY',QryDetalheDETPRODMEDDVAL.AsDateTime)
                              +' QUANTIDADE '+FormatFloat(mcasqtd,
                              +valfloat(mudapv(QryDetalheDETPRODQCOM.AsString)));
  end;

mCodpro_Real:=fSonumero(QryDetalheDETPRODCPROD.AsString);
Query_Executar.Close;
Query_Executar.SQL.Clear;
Query_Executar.SQL.Add('Select PDCLAS,PDMARCA,PDCODPRO FROM CADPRO '
                      +' where PDCODPRO=0'+FloatToStr(mCodpro_Real));
Query_Executar.Open;
if Query_Executar.IsEmpty then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   la_Empresas :='';
   fInnerJoin(1,'CADPRO','PDCODEMP','PDSIM_CODEMP','PDCODPRO','PDSIM_CODPRO');
   Query_Executar.Close;
   Query_Executar.SQL.Clear;
   Query_Executar.SQL.Add('Select PDCLAS,PDMARCA,PDCODPRO FROM CADPRO_SIMILAR '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' TO_CHAR(PDSIM_CODPRO) || PDSIM_REF=:CODPRO ');
   Query_Executar.ParambyName('CODPRO').AsString := QryDetalheDETPRODCPROD.AsString;
   try
      Query_Executar.Open;
   except
      Query_Executar.sql.savetofile('c:\sql00.txt');
      end;
   end;
if not Query_Executar.IsEmpty then
   begin
   mCodpro_Real:=Query_Executar.FieldbyName('PDCODPRO').asFloat;
   QryDetalheclassif_fiscal.AsString:=Query_Executar.Fields[0].AsString;
   if (mImprimirMarca) and (DM2.Qr_CabP1OBS3.AsString<>'SEMMARCA')  then
      begin
      QryDetalhemarcapro.Value:=Query_Executar.Fields[1].AsString;
{      if length(QryDetalhemarcapro.AsString)>1 then
        QryDetalhenomepro.Value:=QryDetalhenomepro.Value+' '+QryDetalhemarcapro.AsString;}
      end;
   end;


if DM2.Qr_cor.Active then
   begin
   if not DM2.Qr_Cor.Locate('P2CODPRO;P2QTD;P2PRECO;P2LOTE'
                        ,vararrayof([fSonumero(QryDetalheDETPRODCPROD.AsString),
                                     QryDetalheDETPRODQCOM.AsFloat,
                         QryDetalheDETPRODVUNCOM.AsFloat,
                         QryDetalheDETPRODMEDNLOTE.AsString]),[]) then
      if not DM2.Qr_Cor.Locate('P2CODPRO;P2QTD;P2PRECO'
                        ,vararrayof([fSonumero(QryDetalheDETPRODCPROD.AsString),
                                     QryDetalheDETPRODQCOM.AsFloat,
                         QryDetalheDETPRODVUNCOM.AsFloat]),[]) then
          if not DM2.Qr_Cor.Locate('P2CODPRO;P2QTD'
                        ,vararrayof([fSonumero(QryDetalheDETPRODCPROD.AsString),
                                     QryDetalheDETPRODQCOM.AsFloat]),[]) then
             DM2.Qr_Cor.Locate('P2CODPRO',fSonumero(QryDetalheDETPRODCPROD.AsString),[]);
   if (DM2.Qr_CorP2CODPRO.AsFloat=fSonumero(QryDetalheDETPRODCPROD.AsString)) then
      begin
      if not mDESCCOMPSEGLIN then
         begin
         try
         if  (length(trim( DM2.Qr_corP2COMPLEMENTO.AsString))>1)  then
            QryDetalhenomepro.AsString:=QryDetalhenomepro.AsString+' / '+DM2.Qr_corP2COMPLEMENTO.AsString;
         except
            end;
         end;
      if DM2.Qr_CorP2LISTA.AsInteger=2 then
         QryDetalhenomepro.AsString:='- '+QryDetalhenomepro.AsString
      else if DM2.Qr_CorP2LISTA.AsInteger=1 then
         QryDetalhenomepro.AsString:='+ '+QryDetalhenomepro.AsString
      else
         QryDetalhenomepro.AsString:='  '+QryDetalhenomepro.AsString;
      end;
   end;

QryDetalheinfcompprod.Value:=trim(QryDetalheDETINFADPROD.AsString);


end;

procedure Tfrm_NFE.RLBand_canhotoAfterPrint(Sender: TObject);
begin
RLBand_canhoto.Visible:=false;
end;

procedure Tfrm_NFE.RLBand1_cab02AfterPrint(Sender: TObject);
begin
      RLBand1_cab02.Visible      :=false;
end;

procedure Tfrm_NFE.RLBand_rodapeAfterPrint(Sender: TObject);
begin
RLBand_rodape.Visible:=false;
end;

procedure Tfrm_NFE.sbnProcurarClick(Sender: TObject);
var
mTam: Integer;
begin
If Opd1.Execute then
   begin
   mtam:=length(Opd1.FileName);
   if UpperCase(copy(Opd1.FileName,mtam-3,4))<>'.JPG' then
      begin
      MessageDlg('Nao é uma Figura Valida.',mtWarning,[mbOk],0);
      end
   else
      begin
      logosis.Picture.LoadFromFile(Opd1.FileName);
      end;
   end;


end;

procedure Tfrm_NFE.bbGravarLogoClick(Sender: TObject);
begin
Frm_NFE.Query1.Close;
Frm_NFE.Query1.Sql.Clear;
Frm_NFE.Query1.Sql.add('Select LSLOGO from CADLOGSIS where LSCHAVE='+chr(39)+'LOGO_NFE'+chr(39));
if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
   frm_NFE.Query1.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                         +' or LSCODEMP is null )');


Frm_NFE.Query1.Open;
if Query1.IsEmpty then
   begin
   Frm_NFE.Query_Executar.Close;
   Frm_NFE.Query_Executar.SQL.Clear;
   Frm_NFE.Query_Executar.SQL.Add('Insert into CADLOGSIS (LSCHAVE,LSCODEMP) Values (:CHAVE,:CODEMP)');
   Frm_NFE.Query_Executar.ParamByName('CHAVE').AsString:='LOGO_NFE';
   Frm_NFE.Query_Executar.ParamByName('CODEMP').AsFloat :=iif(codemp>100,codemp-100,codemp);
   Frm_NFE.Query_Executar.ExecSQL;
   fdm1StartCommit;
   end;

Frm_NFE.Query_Executar.Close;
Frm_NFE.Query_Executar.SQL.Clear;
if logosis.Picture=nil then
   Frm_NFE.Query_Executar.SQL.Add('Update CADLOGSIS set LSLOGO=null')
else
   begin
   Frm_NFE.Query_Executar.Params.CreateParam(ftString,'LOGO',ptinput);
   Frm_NFE.Query_Executar.SQL.Add('Update CADLOGSIS set LSLOGO=:LOGO');
   Frm_NFE.Query_Executar.ParamByName('LOGO').LoadFromFile(opd1.FileName,ftBlob);
   Frm_NFE.rlLogo_Retrato.Picture.LoadFromFile(Frm_NFE.opd1.FileName);
   Frm_NFE.rlLogo_Paisagem.Picture.LoadFromFile(Frm_NFE.opd1.FileName);
   end;
Frm_NFE.Query_Executar.SQL.Add(' where LSCHAVE=:CHAVE');
if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
   Frm_NFE.Query_Executar.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                      +' or LSCODEMP is null )');

Frm_NFE.Query_Executar.ParamByName('CHAVE').AsString:='LOGO_NFE';
try
   Frm_NFE.Query_Executar.ExecSQL;
   fdm1StartCommit;
except
  end;
MessageDlg('Gravado!',mtWarning,[mbOk],0);
end;

procedure Tfrm_NFE.bbConsRecClick(Sender: TObject);
var
f_Xml: Textfile;
begin
if trim(txt_consrec.Text)='' then
   exit;
assignfile(f_xml,'C:\SGE\NFE\ENVIO\'+TRIM(NUMNF.Text)+'-ped-rec'+'.$$$');
rewrite(f_xml);
//Writeln(f_xml,'<?xml version="1.0" encoding="UTF-8"?>');
Writeln(f_xml,'<?xml version="1.0" encoding="UTF-8" ?>');
if DM4.Tb_ParGer02PG2VERSAOXML.AsString='2.00' then
   Writeln(f_xml,'<consReciNFe xmlns="http://www.portalfiscal.inf.br/nfe" versao="2.00">')
else
   Writeln(f_xml,'<consReciNFe xmlns="http://www.portalfiscal.inf.br/nfe" versao="1.10">');
Writeln(f_xml,fGeraXMLreal(0,'tpAmb',RadioGroup1.ItemIndex+1));
Writeln(f_xml,fGeraXMLString('nRec', trim(txt_consrec.Text) ));
Writeln(f_xml,'</consReciNFe>');
CloseFile(f_xml);
RenameFile(pchar('C:\SGE\NFE\ENVIO\'+TRIM(NUMNF.Text)+'-ped-rec'+'.$$$')
            ,pchar('C:\SGE\NFE\ENVIO\'+TRIM(NUMNF.Text)+'-ped-rec'+'.xml'));

end;
function fGeraXMLString(pNomeCampo,pValor: String): String;
var
mResult: String;
mtam,x: Integer;
mTextoSai: String;

begin
mtam:=length(pValor);
mTextoSai:='';
for x:=1 to mtam do
   begin
   if (x<mtam) and (pValor[x]=' ') and (pValor[x+1]=' ') then
   else
      begin
      if (pValor[x] in ['a'..'z']) or
         (pValor[x] in ['A'..'Z']) or
         (pValor[x] in ['0'..'9']) or
         (pValor[x] in ['?','[',']','-','_','*','%','$','@',' ']) then
          mTextoSai:=mTextoSai+pvalor[x];
      end;

{
   if pValor[x]='>' then
      mTextoSai:=mTextoSai+'&lt;'
   else if pValor[x]='/' then
      mTextoSai:=mTextoSai+'-'
   else if pValor[x]='\' then
      mTextoSai:=mTextoSai+'-'
   else if pValor[x]='<' then
      mTextoSai:=mTextoSai+'&gt;'
   else if pValor[x]='&' then
      mTextoSai:=mTextoSai+'&amp;'
   else if pValor[x]='"' then
      mTextoSai:=mTextoSai+'&quot;'
   else if pValor[x]=chr(39)+chr(39)+chr(39) then
      mTextoSai:=mTextoSai+'&#39;'
   else if pValor[x]='°' then
      mTextoSai:=mTextoSai+'o.'
   else
      mTextoSai:=mTextoSai+pvalor[x];
}
   end;


if trim(mTextoSai)='' then
   mResult:='<'+pNomeCampo+'/>'
else
   mResult:='<'+pNomeCampo+'>'+trim(mTextoSai)+'</'+pNomeCampo+'>';
result:=mResult;
end;


function fGeraXMLReal(pQtdDec: Integer;pNomeCampo:String; pValor: Real): String;
var
mResult: String;
begin
if pvalor=0 then
   mResult:='<'+pNomeCampo+'>0</'+pNomeCampo+'>'
else if pQtdDec>0 then
   mResult:='<'+pNomeCampo+'>'+mudavp(FormatFloat('0.'+insere('0','0',pQtdDec),pValor))+'</'+pNomeCampo+'>'
else
   mResult:='<'+pNomeCampo+'>'+FormatFloat('0',pValor)+'</'+pNomeCampo+'>';

result:=mResult;

end;

function fGeraXMLData(pNomeCampo:String; pData: TDateTime): String;
var
mResult: String;
begin
if (trim(FormatDateTime(fdt2,pData))='/  /') or (pdata<=pdatanula) then
   mResult:='<'+pNomeCampo+'/>'
else
   mResult:='<'+pNomeCampo+'>'+FormatDateTime('yyyy-mm-dd', pdata)+'</'+pNomeCampo+'>';

result:=mResult;

end;
function fGeraXMLDataHora(pNomeCampo:String; pData: TDateTime): String;
var
mResult: String;
begin
if (trim(FormatDateTime(fdt2,pData))='/  /') or (pdata<=pdatanula) then
   mResult:='<'+pNomeCampo+'/>'
else
   mResult:='<'+pNomeCampo+'>'+FormatDateTime('yyyy-mm-dd', pdata)+'</'+pNomeCampo+'>';

result:=mResult;

end;






procedure Tfrm_NFE.rl_lat_numcanAfterPrint(Sender: TObject);
begin
rl_lat_numcan.Visible      :=false;
end;




procedure Tfrm_NFE.FormCreate(Sender: TObject);
begin
TabSheet6.TabVisible:=false;
Qry_CabecalhoTOTALISSQNTOTVSERV.DisplayFormat:=mcasas;
Qry_CabecalhoTOTALISSQNTOTVBC.DisplayFormat:=mcasas;
Qry_CabecalhoTOTALISSQNTOTVISS.DisplayFormat:=mcasas;

QryDetalheDETPRODQCOM.DisplayFormat     := mcasqtd;
mCasasPU_NFE:=mCasasPu;
QryDetalheDETPRODVUNCOM.DisplayFormat   := mCasaspu_NFE;

Logomarca:=True;
if flfilpad(0,'_principal','') then
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_NLOGO_NFE',[]) then
    if DM4.Tb_FilPad2FPVALOR.AsString = 'true' then
      Logomarca:=False;
end;

procedure Tfrm_NFE.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
edt_qtd.Caption     :=FormatFloat(mcasqtd, QryDetalheDETPRODQCOM.AsFloat)+'  ';
edt_unitario.Caption:=FormatFloat(mCasaspu_NFE, QryDetalheDETPRODVUNCOM.AsFloat)+'  ';
edt_total.Caption   :=FormatFloat(mCasas, QryDetalheDETPRODVPROD.AsFloat)+'  ';



if mDESCCOMPSEGLIN then
   begin
   if trim(QryDetalheDETINFADPROD.AsString)<>'' then

      rlDetSimples_Linha02.Visible:=true
   else
      rlDetSimples_Linha02.Visible:=false;
   end
else
   rlPaiSimples_Linha02.Visible:=false;

end;

procedure Tfrm_NFE.sbnMDProcurarClick(Sender: TObject);
var
mTam: Integer;
begin
If Opd1.Execute then
   begin
   mtam:=length(Opd1.FileName);
   if UpperCase(copy(Opd1.FileName,mtam-3,4))<>'.JPG' then
      begin
      MessageDlg('Nao é uma Figura Valida.',mtWarning,[mbOk],0);
      end
   else
      begin
      Image_MD.Picture.LoadFromFile(Opd1.FileName);
      end;
   end;

end;

procedure Tfrm_NFE.bbGravarMDClick(Sender: TObject);
begin
Frm_NFE.Query1.Close;
Frm_NFE.Query1.Sql.Clear;
Frm_NFE.Query1.Sql.add('Select LSLOGO from CADLOGSIS where LSCHAVE='+chr(39)+'LOGO_NFEMD'+chr(39));
if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
   Frm_NFE.Query1.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                         +' or LSCODEMP is null )');


Frm_NFE.Query1.Open;
if Query1.IsEmpty then
   begin
   Frm_NFE.Query_Executar.Close;
   Frm_NFE.Query_Executar.SQL.Clear;
   Frm_NFE.Query_Executar.SQL.Add('Insert into CADLOGSIS (LSCHAVE) Values (:CHAVE)');
   Frm_NFE.Query_Executar.ParamByName('CHAVE').AsString:='LOGO_NFEMD';
   Frm_NFE.Query_Executar.ExecSQL;
   fdm1StartCommit;
   end;

Frm_NFE.Query_Executar.Close;
Frm_NFE.Query_Executar.SQL.Clear;
if Image_MD.Picture=nil then
   Frm_NFE.Query_Executar.SQL.Add('Update CADLOGSIS set LSLOGO=null')
else
   begin
   Frm_NFE.Query_Executar.Params.CreateParam(ftString,'LOGO',ptinput);
   Frm_NFE.Query_Executar.SQL.Add('Update CADLOGSIS set LSLOGO=:LOGO');
   Frm_NFE.Query_Executar.ParamByName('LOGO').LoadFromFile(opd1.FileName,ftBlob);
   Frm_NFE.rl_paisagem.Background.Picture.LoadFromFile(Frm_NFE.opd1.FileName);
   Frm_NFE.rl_retrato.Background.Picture.LoadFromFile(Frm_NFE.opd1.FileName);
   end;
Frm_NFE.Query_Executar.SQL.Add(' where LSCHAVE=:CHAVE');
Frm_NFE.Query_Executar.ParamByName('CHAVE').AsString:='LOGO_NFEMD';
if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
   Frm_NFE.Query_Executar.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                      +' or LSCODEMP is null )');

try
   Frm_NFE.Query_Executar.ExecSQL;
   fdm1StartCommit;
except
  end;
MessageDlg('Gravado!',mtWarning,[mbOk],0);

end;

procedure Tfrm_NFE.CB_LOCALMDClick(Sender: TObject);
begin
Query_Executar.Close;
Query_Executar.SQL.Clear;
Query_Executar.SQL.Add('Delete FROM FDILPAD '
                      +' where FPCOUSR=0 '
                      +' and FPFORM='+chr(39)+'_principal'+chr(39)
                      +' and FPCOMP='+chr(39)+'CB_LOCALMD'+chr(39));
try
   Query_Executar.ExecSQL;
   fdm1StartCommit;
except
   end;

Query_Executar.Close;
Query_Executar.SQL.Clear;
Query_Executar.SQL.Add('Insert into FILPAD ('
                      +' FPCODUSR  '
                      +',FPFORM '
                      +',FPCOMP '
                      +',FPTPCOMP '
                      +',FPVALOR '
                      +') values ('
                      +' 0' // codigo co usuario
                      +','+chr(39)+'_principal'+chr(39)  // formulario
                      +','+chr(39)+'CB_LOCALMD'+chr(39)  // componente
                      +','+chr(39)+'itemindex'+chr(39)  // tipo componente
                      +','+chr(39)+InttoStr(CB_LOCALMD.ItemIndex)+chr(39) //valor
                      +')');
try
   Query_Executar.ExecSQL;
   fdm1StartCommit;
except
   end;
if Frm_NFE.CB_LOCALMD.ItemIndex=0 then
   begin
   Frm_NFE.rl_retrato.Background.Arrange:=baCenter;
   Frm_NFE.rl_paisagem.Background.Arrange:=baCenter;
   end
else if Frm_NFE.CB_LOCALMD.ItemIndex=1 then
   begin
   Frm_NFE.rl_retrato.Background.Arrange:=baDistributed;
   Frm_NFE.rl_paisagem.Background.Arrange:=baDistributed;
   end
else
   begin
   Frm_NFE.rl_retrato.Background.Arrange:=baAligned;
   Frm_NFE.rl_paisagem.Background.Arrange:=baAligned;
   end;





end;

procedure Tfrm_NFE.sbLimparClick(Sender: TObject);
begin

if fmensagem('Quer Realmente Excluir a Logomarca?',0,['1','2'],2)<>mrYes then
   exit;


Frm_NFE.Query1.Close;
Frm_NFE.Query1.Sql.Clear;
Frm_NFE.Query1.Sql.add('Delete from CADLOGSIS where LSCHAVE=:CHAVE');
Frm_NFE.Query1.ParamByName('CHAVE').AsString:='LOGO_NFE';
If not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
   Frm_NFE.Query1.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                         +' or LSCODEMP is null )');

try
   Frm_NFE.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;

MessageDlg('Logomarca Excluida!',mtInformation,[mbOk],0);
end;

procedure Tfrm_NFE.sbLimparMDClick(Sender: TObject);
begin

if fmensagem('Quer Realmente Excluir a Marca d´agua?',0,['1','2'],2)<>mrYes then
   exit;


Frm_NFE.Query1.Close;
Frm_NFE.Query1.Sql.Clear;
Frm_NFE.Query1.Sql.add('Delete from CADLOGSIS where LSCHAVE=:CHAVE');
Frm_NFE.Query1.ParamByName('CHAVE').AsString:='LOGO_NFEMD';
if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
   Frm_NFE.Query1.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                         +' or LSCODEMP is null )');

try
   Frm_NFE.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;

MessageDlg('Logomarca Excluida!',mtInformation,[mbOk],0);

end;

function tFrm_NFE.fAchaArquivada(pNumNf: Real;pDtemis: TDateTime): Real;
var
//f_xml: TextFile;
//mArqXml: String;
mHoraIni: TDateTime;
mChave: Real;
mped_chave,mped_ordem,mped_lotseq,mped_codemp: Real;
mNomeArq_NFE_Ori,mNomeArq_nfe: String;
mPos: Integer;
begin
mChave:=0;

DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.Add('Select NSCODEMP,NSCHAVEP,NSORDEMP,NSLOTSEQ_CP from CADNS '
                  +' where NSCODEMP<100 and '
                  +' NSNUMERO=:NUMNF '
                  +' and NSDTEMIS=:pdtemis ');

DM1.Query1.ParamByName('NUMNF').asfloat  :=pNumNf;
DM1.Query1.ParamByName('PDTEMIS').AsDateTime:=pDtemis;

DM1.Query1.Open;
if DM1.Query1.IsEmpty then
   begin
   result:=0;
   exit;
   end;
mped_codemp:=DM1.query1.fieldbyName('NSCODEMP').AsFloat;
mped_chave:=DM1.query1.fieldbyName('NSCHAVEP').AsFloat;
mped_ordem:=DM1.query1.fieldbyName('NSORDEMP').AsFloat;
mped_lotseq:=DM1.query1.fieldbyName('NSLOTSEQ_CP').AsFloat;

if not fPedCli_AbrePedido(0,mped_codemp
                           ,mped_lotseq
                           ,mped_chave
                           ,mped_ordem) then
   begin
   result:=0;
   exit;
   end;
// inicio


if mNFEVersao='2.0' then
   begin
   if length(trim(DM4.Tb_ParGer02PG2NFEPASTAMASTER.AsString))<2 then
      mNomeArq_nfe:='C:\INTERSYS_NFE\NFE'
   else
      mNomeArq_nfe:=DM4.Tb_ParGer02PG2NFEPASTAMASTER.AsString;
   mNomeArq_nfe:=mNomeArq_nfe+'\'+insere(DM1.Tb_EmpCGC.AsString,'0',14);
   if DM4.Tb_ParGer02PG2NFETPEMIS.AsInteger=3 then
     mNomeArq_nfe:=mNomeArq_nfe+'\SCAN';
   mNomeArq_nfe:=mNomeArq_nfe+'\ENVIO';
   end
else
   begin
   if (trim(dm4.Tb_ParGer02PG2PASTAENVIO.AsString)='') then
      mNomeArq_nfe :='C:\'
   else
      mNomeArq_nfe:=dm4.Tb_ParGer02PG2PASTAENVIO.AsString;
   end;
if mNomeArq_nfe[length(mNomeArq_nfe)]='\' then
   mNomeArq_nfe:=copy(mNomeArq_nfe,1,length(mNomeArq_nfe)-1);
mNomeArq_nfe:=UpperCase(mNomeArq_nfe);
mpos:=pos('ENVIO',mNomeArq_nfe);
if mpos>0 then
   mNomeArq_nfe:=copy(mNomeArq_nfe,1,mpos-1);

mNomeArq_nfe:=mNomeArq_nfe+'ENVIADOS\'+FormatDatetime('yyyymm',pDtemis)+'\';
mNomeArq_NFE_Ori:=mNomeArq_nfe;
mNomeArq_nfe:=mNomeArq_nfe+'VERSAO_CLIENTE';
mNomeArq_NFE_Ori:=mNomeArq_NFE_Ori+FloattoStr(pNumNF)+'-NFE.XML';

if not DirExists(mNomeArq_nfe) then
   fcriarPastas(mNomeArq_nfe);
if (DirExists(mNomeArq_nfe)) and (FileExists(mNomeArq_NFE_Ori)) then
   begin
   mNomeArq_nfe:=mNomeArq_nfe+'\'+DM2.Qr_CabP1NUMNF.AsString+'-NFE.XML';
   if FileExists(mNomeArq_nfe) then
      begin
      if mNFEVersao='2.0' then
         begin
         fGravarXMLCampos(mNomeArq_nfe_ori,'','');
         end;
      end;
  end;

// termino



DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select IDECNF,IDENNF,CHAVE_ACESSO,TOTALICMSTOTVNF,CHAVE from NFE_CADCAB '
                     +' WHERE IDECNF =:pChave'
                     +' or    IDENNF =:pChave'
                     +' order by CHAVE DESC ');
DM1.Query1.ParamByName('PCHAVE').asfloat:=pNumNf;
DM1.Query1.Open;
if DM1.Query1.IsEmpty then
   begin
   fGerarXMLNFE(true,mped_codemp,mped_lotseq,
                mped_chave,
                pNumNf,
                true,
                '' // chave acesso zerada
                ,'' // pcnf zerado
                ,'C:\SGE\NF_'+FloatToStr(pNumNf)+'.XML',0 );
   end
else if DM1.Query1.FieldByName('TOTALICMSTOTVNF').AsFloat=0 then
   begin
   fGerarXMLNFE(true,mped_codemp,mped_lotseq,
                mped_chave,
                pNumNf,
                true,
                DM1.Query1.FieldByName('CHAVE_ACESSO').AsString
                ,DM1.Query1.FieldByName('IDECNF').AsString
                ,'C:\SGE\NFE'+DM1.Query1.FieldByName('IDENNF').AsString,0);


   end
else
   begin
   fGerarXMLNFE(true,mped_codemp,mped_lotseq,
                mped_chave,
                pNumNf,
                true
                ,DM1.Query1.FieldByName('CHAVE_ACESSO').AsString
                ,DM1.Query1.FieldByName('IDECNF').AsString
                ,'C:\SGE\NFE'+DM1.Query1.FieldByName('IDENNF').AsString,0);
   end;
{

DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('Select count(*) from USER_OBJECTS where '
                  +' OBJECT_NAME='+chr(39)+'CADNS_NFE'+chr(39));
DM1.Query1.Open;
if DM1.Query1.Fields[0].asinteger<1 then
   begin
   result:=mChave;
   exit;
   end;
frm_NFE.Qr_XmlMemo.Close;
frm_NFE.Qr_XmlMemo.Sql.Clear;
frm_NFE.Qr_XmlMemo.Sql.Add('Select XML_ENVIADO AS ARQXML from CADNS_NFE where '
                  +' SIAD_NUMERO_NOTA='+chr(39)+FormatFloat('0000000', pNumnf)+chr(39)
                  +' and ENDERECO_WS LIKE '+CHR(39)+'%NfeRecepcao'+chr(39)
                  +' order by HISTORICO_ID '
                  );
frm_NFE.Qr_XmlMemo.Open;
if frm_NFE.Qr_XmlMemo.IsEmpty then
   begin
   result:=mChave;
   exit;
   end;
frm_NFE.Qr_XmlMemoARQXML.SaveToFile('C:\SGE\NFE\IMPRESSAO\NF'+FormatFloat('0000000', pNumnf)+'.$$$');
Sleep(5000);
renamefile('C:\SGE\NFE\IMPRESSAO\NF'+FormatFloat('0000000', pNumnf)+'.$$$','C:\SGE\NFE\IMPRESSAO\NF'+FormatFloat('0000000', pNumnf)+'.XML');
Sleep(5000);

frm_NFE.Qr_XmlMemo.close;
}
mHoraIni:=now;
mChave:=0;

While (MinutesBetween(now,mHoraIni)<1) and (mchave=0) do
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Select max(CHAVE) AS CHAVE from NFE_CADCAB '
                        +' WHERE IDECNF =:pChave'
                        +' or    IDENNF =:pChave');
   DM1.Query1.ParamByName('PCHAVE').asfloat:=pNumNf;
   DM1.Query1.Open;
   if DM1.Query1.IsEmpty then
      begin
      mChave:=0;
      Continue;
      end
   else
      begin
      mChave:=DM1.Query1.fieldbyName('CHAVE').AsFloat;

      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Select CHAVE from NFE_CADDET '
                        +' WHERE CHAVE =:pChave');
      DM1.Query1.ParamByName('PCHAVE').asfloat:=mChave;
      DM1.Query1.Open;
      if DM1.Query1.IsEmpty then
         begin
         mChave:=0;
         Continue;
         end
      end;
   end;

result:=mChave;
end;


procedure Tfrm_NFE.rl_Paisagem_SimplesBeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

rl_lat_Nota_simples.Caption  := 'Nº : '+Qry_CabecalhoIDENNF.AsString;
rl_lat_Serie_simples.Caption := 'SERIE : '+FormatFloat('000',Qry_CabecalhoIDESERIE.AsFloat);

end;

procedure Tfrm_NFE.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
edt_qtd_simples.Caption     :=FormatFloat(mcasqtd, QryDetalheDETPRODQCOM.AsFloat)+'  ';
edt_unitario_simples.Caption:=FormatFloat(mCasaspu_NFE, QryDetalheDETPRODVUNCOM.AsFloat)+'  ';
edt_total_simples.Caption   :=FormatFloat(mCasas, QryDetalheDETPRODVPROD.AsFloat)+'  ';

if mDESCCOMPSEGLIN then
   begin
   if trim(QryDetalheDETINFADPROD.AsString)<>'' then
      rlRetSim_Complemento.Visible:=true
   else
      rlRetSim_Complemento.Visible:=false;
   end
else
   rlPaiSimples_Linha02.Visible:=false;
end;

procedure Tfrm_NFE.rl_lat_recebemos_simplesAfterPrint(Sender: TObject);
begin
         rl_lat_recebemos_simples.Visible:=false;

end;

procedure Tfrm_NFE.rl_lat_Iden_simplesAfterPrint(Sender: TObject);
begin
         rl_lat_Iden_simples.Visible:=false;

end;

procedure Tfrm_NFE.rl_lat_Borda_DtEmis_simplesAfterPrint(Sender: TObject);
begin
         rl_lat_Borda_DtEmis_Simples.Visible:=false;

end;

procedure Tfrm_NFE.rl_lat_DtRec_simplesAfterPrint(Sender: TObject);
begin
         rl_lat_DtRec_simples.Visible:=false;

end;

procedure Tfrm_NFE.rl_lat_numcan_simplesAfterPrint(Sender: TObject);
begin
rl_lat_numcan_simples.Visible:=false;
end;

procedure Tfrm_NFE.rl_lat_Serie_simplesAfterPrint(Sender: TObject);
begin
         rl_lat_Nota_simples.Visible:=false;

end;

procedure Tfrm_NFE.rl_lat_Nota_simplesAfterPrint(Sender: TObject);
begin
         rl_lat_Serie_simples.Visible:=false;

end;

procedure Tfrm_NFE.rl_lat_ObsNFE_simplesAfterPrint(Sender: TObject);
begin
         rl_lat_ObsNFE_simples.Visible:=false;

end;


function fCarregaXMLNFE(pNomeXml:String): Boolean;
begin
end;


procedure Tfrm_NFE.rl_lat_borda_rec_simplesAfterPrint(Sender: TObject);
begin
         rl_lat_borda_rec_simples.Visible:=false;

end;

procedure Tfrm_NFE.rl_lat_Ass_SimplesAfterPrint(Sender: TObject);
begin
         rl_lat_Ass_Simples.Visible:=false;

end;

procedure Tfrm_NFE.rl_lat_traco_simplesAfterPrint(Sender: TObject);
begin
         rl_lat_traco_simples.Visible:=false;

end;

procedure Tfrm_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure Tfrm_NFE.RLBand1_cab02_simplesAfterPrint(Sender: TObject);
begin
RLBand1_cab02_simples.Visible:=false;
end;

procedure Tfrm_NFE.RLBand_rodape_simplesAfterPrint(Sender: TObject);
begin
RLBand_rodape_simples.Visible:=false;

end;

procedure Tfrm_NFE.RLBand_Rod01_simplesAfterPrint(Sender: TObject);
begin
RLBand_Rod01_simples.visible:=false;

end;

procedure Tfrm_NFE.rl_band_cab02_simplesAfterPrint(Sender: TObject);
begin
rl_band_cab02_simples.Visible:=false;

end;


function TFrm_NFE.fNSGeraXMLVersaoCliente(pArqXml,pNProt,pTpAmb,pVerAplic,pinfProt,pChNFe,pDhRecbto,pdigval,pcStat,pMotivo,pArqSaida: String): Boolean;
var
   vXMLProt, vXMLNFe, vXMLCompartilha: TXMLDocument;

    NodePaiNFe, NodeProt,NodeProtB,NodeComp,NodeProtC: IXMLNode;
    NodeNivelA: IXMLNode;
begin



vXMLProt := TXMLDocument.Create(Self);
vXMLNFe := TXMLDocument.Create(Self);
vXMLCompartilha := TXMLDocument.Create(Self);


try
   // Abre XML NFe assinada;
   vXMLNFe.LoadFromFile(pArqXml);
   //Abre XML Protocolo autorização;
//   vXMLProt.LoadFromFile('c:\nfe_arquivos\protocolo\protocoloNFe.xml');

   // Le o nó "NFe" da NFe assinada



   NodePaiNFe := vXMLNFe.DocumentElement;

   // Le o nó "protNFe" do protocolo de autorização


   With vXMLProt do
      begin
       // ativa, versiona e codifica UTF-8 para o XML
      Active := True;
      Version := '1.0';
      Encoding := 'UTF-8';
      AddChild('protNFe','http://www.portalfiscal.inf.br/nfe').Attributes['versao'] := '1.10';
//      AddChild('nfeProc','http://www.portalfiscal.inf.br/nfe').Attributes['versao'] := '1.10';

      end;

   NodeProt := vXMLProt.DocumentElement;
   NodeProtB := NodeProt;


//   NodeProtB.ChildNodes['infProt'].Attributes['versao'] := '1.10';

   NodeProtB.ChildNodes['infProt'].AddChild('tpAmb').NodeValue:=pTpAmb;
   if trim(pVerAplic)='' then
      NodeProtB.ChildNodes['infProt'].AddChild('verAplic').NodeValue:='GO2.0'
   else
      NodeProtB.ChildNodes['infProt'].AddChild('verAplic').NodeValue:=pVerAplic;
   NodeProtB.ChildNodes['infProt'].AddChild('chNFe').NodeValue:=pChNFe;
   NodeProtB.ChildNodes['infProt'].AddChild('dhRecbto').NodeValue:=pDhRecbto;
   NodeProtB.ChildNodes['infProt'].AddChild('nProt').NodeValue:=pNProt;
   NodeProtB.ChildNodes['infProt'].AddChild('digVal').NodeValue:=pdigVal;
   NodeProtB.ChildNodes['infProt'].AddChild('cStat').NodeValue:=pcStat;
   NodeProtB.ChildNodes['infProt'].AddChild('xMotivo').NodeValue:=pMotivo;
  // Cria documento de envio para o Destinatário
   With vXMLCompartilha do
      begin
       // ativa, versiona e codifica UTF-8 para o XML
      Active := True;
      Version := '1.0';
      Encoding := 'UTF-8';

       // adiciona atributos padrão arquivo

//      AddChild('nfeProc','http://www.portalfiscal.inf.br/nfe').Attributes['versao'] := '1.10';
      AddChild('nfeProc','http://www.portalfiscal.inf.br/nfe').Attributes['versao'] := '2.00';


{
      DocumentElement.Attributes['xmlns'] :=
      'http://www.portalfiscal.inf.br/nfe';

//      AddChild('nfeProc','http://www.portalfiscal.inf.br/nfe').Attributes['versao'] := '1.10';

      DocumentElement.Attributes['xmlns:ds'] :=
      'http://www.w3.org/2000/09/xmldsig#';
      DocumentElement.Attributes['xmlns:xsi'] :=
      'http://www.w3.org/2001/XMLSchema-instance';
      DocumentElement.Attributes['xsi:schemaLocation'] :=
      'http://www.portalfiscal.inf.br/nfe/procNFe_v1.10.xsd';
         // Prepara o nó principal e adiciona a versão como atributo
}
      NodeNivelA := DocumentElement;

 //     NodeNivelA.Attributes['versao'] := '1.10';

       // Adiciona o nó "NFe" da Nota Fiscal eletrônica assinada
      NodeNivelA.ChildNodes.Add(NodePaiNFe);
      NodeNivelA.ChildNodes.Add(NodeProtB);
      end;
  // salva arquivo de distribuição da NF-e no disco.
   VXMLCompartilha.SaveToFile(pArqSaida);
   finally
      vXMLNFe.Free; vXMLProt.Free; vXMLCompartilha.Free;
   end;
result:=true;
end;


function tFrm_NFE.fGravarXMLCampos(pArqxml,pNumProt,pChaveAcesso: String): Boolean;
var vXMLDoc: TXMLDocument;
    node01: IXMLNode;
    x: Integer;
    NomeAnt: String;
    mSiglaCampo: String;
begin
if not FileExists(pArqxml) then
   begin
   result:=false;
   exit;
   end;
// Cria a variável baseada no TXMLDocument
vXMLDoc := TXMLDocument.Create(self);


// Le conteúdo do arquivo XML informado
vXMLDoc.LoadFromFile(pArqxml);
//if vXMLDoc=nil then
//   ShowMessage('erro');

mFormNFE_NumProt:=pNumProt;
mFormNFE_ChaveAcesso:=pChaveAcesso;
node01 := vXMLDoc.DocumentElement.ChildNodes.First;
if node01.ChildNodes[0].NodeName='infNFe' then
   node01:=vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('infNFe');
NomeAnt:='';
mSiglaCampo:='';
fIncluirCabNFE(0,1,'','');

mNFE_Params_Cab:=nil;
SetLength(mNFE_Params_Cab,1);
for x:=0 to node01.ChildNodes.Count-1 do
   begin
   if NomeAnt<>node01.ChildNodes[x].NodeName then
      begin
      mSiglaCampo:=uppercase(node01.ChildNodes[x].NodeName);
      fListaCampos(0,mSiglaCampo,node01.ChildNodes[x].NodeName,node01);
      end;
   NomeAnt:=node01.ChildNodes[x].NodeName;
   end;
fIncluirCabNFE(0,2,'','');
//parei aqui
end;


procedure Tfrm_NFE.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if mDESCCOMPSEGLIN then
   begin
   if trim(QryDetalheDETINFADPROD.AsString)<>'' then
      rlDetPaisagem_Linha02.Visible:=true
   else
      rlDetPaisagem_Linha02.Visible:=false;
   end
else
   rlDetPaisagem_Linha02.Visible:=false;


end;

procedure Tfrm_NFE.RLBand17BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

if mDESCCOMPSEGLIN then
   begin
   if trim(QryDetalheDETINFADPROD.AsString)<>'' then
      rlPaiSimples_Linha02.Visible:=true
   else
      rlPaiSimples_Linha02.Visible:=false;
   end
else
   rlPaiSimples_Linha02.Visible:=false;



end;

procedure Tfrm_NFE.rl_band_cab01BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  linha01,
  linha02,
  linha03,
  linha04,
  linha05,
  linha06,
  linha07: String;
begin
if flfilpad(0,'_PARNFE','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','LINHA01',[]) then
      linha01 := DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LINHA02',[]) then
      linha02 := DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LINHA03',[]) then
      linha03 := DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LINHA04',[]) then
      linha04 := DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LINHA05',[]) then
      linha05 := DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LINHA06',[]) then
      linha06 := DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LINHA07',[]) then
      linha07 := DM4.Tb_FilPad2FPVALOR.AsString;
   end;

if length(linha01)=0 then
  rlPaisagemEmiRazao.Caption:=Qry_CabecalhoEMITXNOME.AsString
else
  rlPaisagemEmiRazao.Caption:=linha01;

rlPaisagemEmiEnder.Lines.Clear;
if length(linha02)=0 then
  rlPaisagemEmiEnder.Lines.Add(Qry_Cabecalhoendereco_comp.AsString)
else
  rlPaisagemEmiEnder.Lines.Add(linha02);


if length(linha03)=0 then
  rlPaisagemEmiCidade.Caption:=Qry_Cabecalhoemicidadeuf.AsString
else
  rlPaisagemEmiCidade.Caption:=linha03;

if length(linha04)=0 then
  rlPaisagemEmiFone.Caption:=Qry_Cabecalhofone_fax.AsString
else
  rlPaisagemEmiFone.Caption:=linha04;

if length(linha05)=0 then
  rlPaisagemEmiFAX.Caption:=DM1.Tb_EmpFAX.AsString
else
  rlPaisagemEmiFAX.Caption:=linha05;

if length(linha06)=0 then
  rlPaisagemEmiCep.Caption:=Qry_Cabecalhocep_emit.AsString
else
  rlPaisagemEmiCep.Caption:=linha06;

if length(linha07)=0 then
  rlPaisagemEmiEmail.Caption:=DM1.Tb_EmpE_MAIL.AsString
else
  rlPaisagemEmiEmail.Caption:=linha07;

rlPaisagemEmiEnder.Top:=rlPaisagemEmiRazao.Top+rlPaisagemEmiRazao.Height;
rlPaisagemEmiCidade.Top:=rlPaisagemEmiEnder.Top+rlPaisagemEmiEnder.Height;
rlPaisagemEmiFone.Top:=rlPaisagemEmiCidade.Top+rlPaisagemEmiCidade.Height;
rlPaisagemEmiFAX.Top:=rlPaisagemEmiFone.Top+rlPaisagemEmiFone.Height;
rlPaisagemEmiCep.Top:=rlPaisagemEmiFAX.Top+rlPaisagemEmiFAX.Height;
rlPaisagemEmiEmail.Top:=rlPaisagemEmiCep.Top+rlPaisagemEmiCep.Height;
end;

end.
