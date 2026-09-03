unit S_DM1;

interface

uses                
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Func,variants, ActnList, RxMemDS, DBXpress, SqlExpr,
  DBClient;
type
  TDM1 = class(TDataModule)
    Tb_Emp: TQuery;
    SG_ASSOC: TDatabase;
    Src_Emp: TDataSource;
    Tb_EmpCODEMP: TFloatField;
    Tb_EmpRAZAO: TStringField;
    Tb_EmpFANTASIA: TStringField;
    Tb_EmpENDERECO: TStringField;
    Tb_EmpBAIRRO: TStringField;
    Tb_EmpCIDADE: TStringField;
    Tb_EmpUF: TStringField;
    Tb_EmpCGC: TFloatField;
    Tb_EmpINSCRICAO: TStringField;
    Tb_EmpFONE: TStringField;
    Tb_EmpFAX: TStringField;
    Tb_EmpE_MAIL: TStringField;
    Tb_EmpPRESID: TStringField;
    Tb_EmpFONEP: TStringField;
    Tb_EmpDIRETOR: TStringField;
    Tb_EmpFONED: TStringField;
    Tb_EmpCEP: TStringField;
    Tb_Funcao: TQuery;
    Src_Funcao: TDataSource;
    Tb_FuncaoCODEMP: TFloatField;
    Tb_FuncaoCODCAR: TFloatField;
    Tb_FuncaoNOMCAR: TStringField;
    Tb_FuncaoTIPACE: TFloatField;
    Tb_Pro: TQuery;
    Src_Pro: TDataSource;
    Query1: TQuery;
    Tb_For: TQuery;
    Src_For: TDataSource;
    Tb_Ped01: TQuery;
    Src_Ped01: TDataSource;
    Src_Ped02: TDataSource;
    Tb_Gru: TQuery;
    Src_Gru: TDataSource;
    Tb_PF1: TQuery;
    Src_PF1: TDataSource;
    Tb_PF2: TQuery;
    Src_PF2: TDataSource;
    Tb_PF2PF2CODEMP: TFloatField;
    Tb_PF2PF2CHAVE: TFloatField;
    Tb_PF2PF2CODPRO: TFloatField;
    Tb_PF2PF2QTDP: TFloatField;
    Tb_PF2PF2PU: TFloatField;
    Tb_PF2PF2DESC01: TFloatField;
    Tb_PF2PF2DESC02: TFloatField;

    
    Tb_PF2PF2DESC03: TFloatField;
    Tb_PF2PF2SIT: TStringField;
    Tb_PF2PF2ALIQ: TFloatField;
    Tb_PF1PF1CODEMP: TFloatField;
    Tb_PF1PF1CHAVE: TFloatField;
    Tb_PF1PF1CODFOR: TFloatField;
    Tb_PF1PF1DATA: TDateTimeField;
    Tb_PF1PF1OBS: TMemoField;
    Tb_PF1PF1DESC01: TFloatField;
    Tb_PF1PF1DESC02: TFloatField;
    Tb_PF1PF1DESC03: TFloatField;
    Tb_PF1PF1TOTDES: TFloatField;
    Tb_PF1PF1TOTBRU: TFloatField;
    Tb_PF2PF2ITEM: TFloatField;
    Tb_PF1PF1CODUSR: TFloatField;
    Tb_PF1PF1HORDIG: TStringField;
    Tb_PF1PF1USRMOD: TFloatField;
    Tb_PF1PF1DTMOD: TDateTimeField;
    Tb_CPFor: TQuery;
    Src_CPfor: TDataSource;
    Tb_CPForPFCODEMP: TFloatField;
    Tb_CPForPFCODPRO: TFloatField;
    Tb_CPForPFCODFOR: TFloatField;
    Tb_CPForPFCODPFOR: TFloatField;
    Tb_CPForPFSALDO: TFloatField;
    Tb_CI: TQuery;
    Src_CI: TDataSource;
    Tb_CIIMPRESSORA: TStringField;
    Tb_CIC10CPPD: TStringField;
    Tb_CIC12CPPD: TStringField;

    
    Tb_CIC17CPPD: TStringField;
    Tb_CIC20CPPD: TStringField;
    Tb_CIC10CPP: TStringField;
    Tb_CIC12CPP: TStringField;
    Tb_CIC14CPP: TStringField;
    Tb_CIC17CPP: TStringField;
    Tb_CIC20CPP: TStringField;
    Tb_CICNORMAL: TStringField;
    Tb_CIL8P1: TStringField;
    Tb_CIL10P1: TStringField;
    Tb_CIL6P1: TStringField;
    Tb_CIL3P1: TStringField;
    Tb_CIPEJECT: TStringField;
    Tb_Chq: TQuery;
    Src_Chq: TDataSource;
    Tb_ChqCHCODEMP: TFloatField;
    Tb_ChqCHSEQ: TFloatField;
    Tb_ChqCHNUMERO: TFloatField;
    Tb_ChqCHBANCO: TFloatField;
    Tb_ChqCHSERIE: TStringField;
    Tb_ChqCHEMIT: TStringField;
    Tb_ChqCHCPF: TFloatField;
    Tb_ChqCHRG: TStringField;
    Tb_ChqCHCC: TStringField;
    Tb_ChqCHDTNAS: TDateTimeField;
    Tb_ChqCHVALOR: TFloatField;
    Tb_ChqCHDTEMIS: TDateTimeField;
    Tb_ChqCHDTDEP: TDateTimeField;
    Tb_PV: TQuery;
    Src_PV: TDataSource;
    Src_CP: TDataSource;
    Tb_NE: TQuery;
    Src_NE: TDataSource;
    Tb_NENECODEMP: TFloatField;
    Tb_NENECODFOR: TFloatField;
    Tb_NENENUMERO: TFloatField;
    Tb_NENESERIE: TStringField;
    Tb_NENECFO: TFloatField;
    Tb_NENEDTEMIS: TDateTimeField;
    Tb_NENESUBSER: TStringField;
    Tb_NENEBASEN: TFloatField;
    Tb_NENEICMSN: TFloatField;
    Tb_NENEBASER: TFloatField;
    Tb_NENEICMSR: TFloatField;
    Tb_NENEFRETE: TFloatField;
    Tb_NENESEG: TFloatField;
    Tb_NENEOUTRAS: TFloatField;
    Tb_NENEIPI: TFloatField;
    Tb_NENETOTMER: TFloatField;
    Tb_NENETOTNOT: TFloatField;
    Tb_NENETOTDES: TFloatField;
    Tb_NENETOTPOS: TFloatField;
    Tb_NENETOTNEG: TFloatField;
    Tb_NENETOTINA: TFloatField;
    Tb_NENECHAVEP: TFloatField;
    Tb_NENEALIQ: TFloatField;
    Tb_NEnomefor: TStringField;
    Tb_CP: TQuery;
    Tb_CPCACODEMP: TFloatField;
    Tb_CPCANUMERO: TFloatField;
    Tb_CPCADESD: TStringField;
    Tb_CPCACODFOR: TFloatField;
    Tb_CPCADTEMIS: TDateTimeField;
    Tb_CPCAVALOR: TFloatField;
    Tb_CPCADTVCTO: TDateTimeField;
    Tb_CPCAVALDES: TFloatField;
    Tb_CPCADTDESC: TDateTimeField;
    Tb_CPCADESC: TFloatField;
    Tb_CPCAJUROS: TFloatField;
    Tb_CPCABANCO: TFloatField;
    Tb_CPCALOTE: TFloatField;
    Tb_CPnomefor: TStringField;
    Tb_CPCACHAVEP: TFloatField;
    Query2: TQuery;
    Tb_CPCADTBX: TDateTimeField;
    Tb_CPCADTPAG: TDateTimeField;
    Tb_CPCAUSRBAI: TFloatField;
    Tb_ChqCHAGENCIA: TStringField;
    Tb_ChqCHLOTE: TFloatField;
    Tb_ChqCHTIPO: TFloatField;
    Tb_ChqCHSTATUS: TFloatField;
    Tb_ChqCHDTBX: TDateTimeField;
    Tb_ChqCHUSRBX: TFloatField;
    Tb_ECF: TQuery;
    Src_ECF: TDataSource;
    Tb_ECFCFCODEMP: TFloatField;
    Tb_ECFCFCAIXA: TFloatField;
    Tb_ECFCFNOME: TStringField;
    Tb_ECFCFMODELO: TFloatField;
    Tb_ECFCFREDE: TFloatField;
    Tb_ECFCFMENS1: TStringField;
    Tb_ECFCFMENS2: TStringField;
    Tb_ECFCFMENS3: TStringField;
    Tb_ECFCFMENS4: TStringField;
    Tb_ECFCFCRITS: TFloatField;
    Tb_ECFCFSENHA: TStringField;
    Tb_ECFCFLOCAL: TStringField;
    Tb_ECFCFCODALN: TStringField;
    Tb_ECFCFCODALR: TStringField;
    Tb_ECFCFCODALI: TStringField;
    Tb_CPsituacao: TStringField;
    Tb_NENETIPO: TFloatField;
    Tb_ChqCHCAIXA: TFloatField;
    Tb_CPCACAIXA: TFloatField;
    Tb_Gpro: TQuery;
    Src_Gpro: TDataSource;
    Tb_GproGRCODEMP: TFloatField;
    Tb_GproGRCODGRU: TFloatField;
    Tb_GproGRNOME: TStringField;
    Tb_Tcon: TQuery;
    Tb_Tpro: TQuery;
    Src_Tcon: TDataSource;
    Src_Tpro: TDataSource;
    Tb_TproTCODEMP: TFloatField;
    Tb_TproTCODTIP: TFloatField;
    Tb_TproTNOME: TStringField;
    Tb_Tab: TQuery;
    Src_Tab: TDataSource;
    Tb_Cfo: TQuery;
    Src_Cfo: TDataSource;
    Tb_TabTCODEMP: TFloatField;
    Tb_TabTSEQ: TFloatField;
    Tb_TabTTIPOC: TStringField;
    Tb_TabTFORMATO: TStringField;
    Tb_TCa: TQuery;
    SRC_TCA: TDataSource;
    Tb_TCaTCCODEMP: TFloatField;
    Tb_Ven: TQuery;
    Src_Ven: TDataSource;
    Tb_VenVCODEMP: TFloatField;
    Tb_VenVCODVEN: TFloatField;
    Tb_VenVNOME: TStringField;
    Tb_VenVTPLOG: TStringField;
    Tb_VenVLOG: TStringField;
    Tb_VenVNUM: TStringField;
    Tb_VenVCOMPL: TStringField;
    Tb_VenVCODBAI: TFloatField;
    Tb_VenVCODLOC: TFloatField;
    Tb_VenVCEP: TStringField;
    Tb_VenVCELULAR: TStringField;
    Tb_VenVFONERES: TStringField;
    Tb_VenVFONECOM: TStringField;
    Tb_VenVDTCAD: TDateTimeField;
    Tb_VenVRG: TStringField;
    Tb_VenVCPF: TFloatField;
    Tb_VenVPONTOR: TStringField;
    Tb_VenVREFP01: TStringField;
    Tb_VenVFREFP1: TStringField;
    Tb_VenVREFP02: TStringField;
    Tb_VenVFREFP2: TStringField;
    Tb_VenVREFP03: TStringField;
    Tb_VenVFREFP3: TStringField;
    Tb_VenVREFB01: TStringField;
    Tb_VenVFREFB1: TStringField;
    Tb_VenVREFB02: TStringField;
    Tb_VenVFREFB2: TStringField;
    Tb_VenVREFB03: TStringField;
    Tb_VenVFREFB3: TStringField;
    Tb_VenVREFC01: TStringField;
    Tb_VenVFREFC1: TStringField;
    Tb_VenVREFC02: TStringField;
    Tb_VenVFREFC2: TStringField;
    Tb_VenVREFC03: TStringField;
    Tb_VenVFREFC3: TStringField;
    Tb_VenVOBS: TMemoField;
    Tb_Vennomloc: TStringField;
    Tb_Vennombai: TStringField;
    Tb_CfoCFCODEMP: TFloatField;
    Tb_Ped02: TQuery;
    SGTEMP: TDatabase;
    Tb_Dar: TQuery;
    Src_Dar: TDataSource;
    Tb_DarCRCODEMP: TFloatField;
    Tb_DarCRNUMERO: TFloatField;
    Tb_DarCRDESD: TStringField;
    Tb_DarCRCODCLI: TFloatField;
    Tb_DarCRVALOR: TFloatField;
    Tb_DarCRDTEMIS: TDateTimeField;
    Tb_DarCRDTVCTO: TDateTimeField;
    Tb_DarCRDTPAG: TDateTimeField;
    Tb_DarCRDTBX: TDateTimeField;
    Tb_DarCRNPED: TFloatField;
    Tb_DarCRVALPAG: TFloatField;
    Tb_DarCRCODVEN: TFloatField;
    Tb_DarCRDESC: TFloatField;
    Tb_DarCRDEVOL: TFloatField;
    Tb_DarCRJUROS: TFloatField;
    Tb_DarCRLOTE: TFloatField;
    Tb_DarCRICMSR: TFloatField;
    Tb_DarCRDESCF: TFloatField;
    Tb_DarCRDTDESCF: TDateTimeField;
    Tb_DarCRJURD: TFloatField;
    Tb_DarCRVALFRE: TFloatField;
    Tb_DarCRNOSNUM: TStringField;
    Tb_DarCRDTALT: TDateTimeField;
    Tb_DarCRUSRALT: TFloatField;
    Tb_DarCRUSRBX: TFloatField;
    Tb_Darrazaocli: TStringField;
    Tb_Darnomven: TStringField;
    Tb_Darnombco: TStringField;
    Tb_Ns: TQuery;
    Src_NS: TDataSource;
    Tb_NsNSCODEMP: TFloatField;
    Tb_NsNSNUMERO: TFloatField;
    Tb_NsNSSERIE: TStringField;
    Tb_NsNSCODCLI: TFloatField;
    Tb_NsNSDTEMIS: TDateTimeField;
    Tb_NsNSCNPJ: TFloatField;
    Tb_NsNSIE: TStringField;
    Tb_NsNSTOTNOTA: TFloatField;
    Tb_NsNSBASENI: TFloatField;
    Tb_NsNSICMSNI: TFloatField;
    Tb_NsNSBASENP: TFloatField;
    Tb_NsNSICMSNP: TFloatField;
    Tb_NsNSBASENN: TFloatField;
    Tb_NsNSICMSNN: TFloatField;
    Tb_NsNSBASERI: TFloatField;
    Tb_NsNSICMSRI: TFloatField;
    Tb_NsNSBASERP: TFloatField;
    Tb_NsNSICMSRP: TFloatField;
    Tb_NsNSBASERN: TFloatField;
    Tb_NsNSICMSRN: TFloatField;
    Tb_NsNSTOTPROI: TFloatField;
    Tb_NsNSTOTPROP: TFloatField;
    Tb_NsNSTOTPRON: TFloatField;
    Tb_NsNSBASENRI: TFloatField;
    Tb_NsNSICMSNRI: TFloatField;
    Tb_NsNSBASENRP: TFloatField;
    Tb_NsNSICMSNRP: TFloatField;
    Tb_NsNSBASENRN: TFloatField;
    Tb_NsNSICMSNRN: TFloatField;
    Tb_NsNSALIQ: TFloatField;
    Tb_NsNSIPII: TFloatField;
    Tb_NsNSIPIP: TFloatField;
    Tb_NsNSIPIN: TFloatField;
    Tb_NsNSTOTISEN: TFloatField;
    Tb_NsNSCHAVEP: TFloatField;
    Tb_Nsnomcfo1: TStringField;
    Tb_Nsnomcfo2: TStringField;
    Tb_Nsrazcli: TStringField;
    Tb_Tra: TQuery;
    Src_Tra: TDataSource;
    Tb_TraTRCODEMP: TFloatField;
    Tb_TraTRCODTRA: TFloatField;
    Tb_TraTRRAZTRA: TStringField;
    Tb_TraTRFANTRA: TStringField;
    Tb_TraTRTPLOG: TStringField;
    Tb_TraTRNUM: TStringField;
    Tb_TraTRCOMPL: TStringField;
    Tb_TraTRCODBAI: TFloatField;
    Tb_TraTRCODLOC: TFloatField;
    Tb_TraTRCEP: TStringField;
    Tb_TraTRCNPJ: TFloatField;
    Tb_TraTRIE: TStringField;
    Tb_TraTROBS: TStringField;
    Tb_TraTRDTCAD: TDateTimeField;
    Tb_TabTCONDT1: TStringField;
    Tb_TabTCOND01: TStringField;
    Tb_TabTCONDOP: TStringField;
    Tb_TabTCONDT2: TStringField;
    Tb_TabTCOND02: TStringField;
    Tb_Tranomcid: TStringField;
    Tb_Tranombai: TStringField;
    Tb_Trauftra: TStringField;
    Tb_TraTRCNPF: TFloatField;
    Tb_TraTRRG: TStringField;
    Tb_Bco: TQuery;
    Src_Bco: TDataSource;
    Tb_CCU: TQuery;
    Src_CCU: TDataSource;
    Tb_CCUCCCODCCU: TStringField;
    Tb_CCUCCNOME: TStringField;
    Tb_CCUCCNAT: TStringField;
    Tb_Dep_Ldr: TQuery;
    Src_Dep_Ldr: TDataSource;
    Tb_Dep_LdrDCODDEP: TStringField;
    Tb_Dep_LdrDNOME: TStringField;
    Tb_LDR: TQuery;
    Src_LDR: TDataSource;
    Tb_LDRCODEMP: TFloatField;
    Tb_LDRDATADP: TDateTimeField;
    Tb_LDRCODLDR: TFloatField;
    Tb_LDRDATAREAL: TDateTimeField;
    Tb_LDRDATAREF: TDateTimeField;
    Tb_LDRVALORP: TFloatField;
    Tb_LDRVALORR: TFloatField;
    Tb_LDRCODCC: TStringField;
    Tb_LDRCODDEP: TStringField;
    Tb_LDRNATDC: TStringField;
    Tb_LDRDESCMV: TStringField;
    Tb_LDRNUMDOC: TStringField;
    Tb_LDRNUMDOC2: TStringField;
    Tb_LDRTIPO: TStringField;
    Tb_LDRCODIGO: TFloatField;
    Tb_PF2PF2BASEN: TFloatField;
    Tb_PF2PF2ICMSN: TFloatField;
    Tb_PF2PF2BASER: TFloatField;
    Tb_PF2PF2ICMSR: TFloatField;
    Tb_PF2PF2TAB: TStringField;
    Tb_PF1PF1TOTMER: TFloatField;
    Tb_PF1PF1TOTPOS: TFloatField;
    Tb_PF1PF1TOTNEG: TFloatField;
    Tb_PF1PF1TOTINA: TFloatField;
    Tb_PF1PF1BASEN: TFloatField;
    Tb_PF1PF1BASER: TFloatField;
    Tb_PF1PF1ICMSN: TFloatField;
    Tb_PF1PF1ICMSR: TFloatField;
    Tb_PF1PF1CODLDR: TFloatField;
    Par_LDR: TQuery;
    Par_LDRCODEMP: TFloatField;
    Par_LDRCDOC: TStringField;
    Par_LDRCODCC: TStringField;
    Par_LDRCODDEP: TStringField;
    Par_LDRNOME: TStringField;
    SRC_PLDR: TDataSource;
    Tb_NENEDTENT: TDateTimeField;
    Tb_CPCACODLDR: TFloatField;
    Tb_PF1PF1BASENR: TFloatField;
    Tb_PF1PF1ICMSNR: TFloatField;
    Tb_PF1PF1ISENTAS: TFloatField;
    Tb_PF2PF2BASENR: TFloatField;
    Tb_PF2PF2ICMSNR: TFloatField;
    Tb_PF2PF2ISENTAS: TFloatField;
    Tb_PF2PF2ALIQNR: TFloatField;
    Tb_NsNSCFO1: TStringField;
    Tb_NsNSCFO2: TStringField;
    Tb_NsNSTOTNOR: TFloatField;
    Tb_NsNSTOTRET: TFloatField;
    Tb_NsNSBASEN: TFloatField;
    Tb_NsNSICMSN: TFloatField;
    Tb_NsNSALIQ2: TFloatField;
    Tb_NsNSPISCOFN: TFloatField;
    Tb_NsNSPISCOFR: TFloatField;
    Tb_TDVCA: TQuery;
    SRC_TDV: TDataSource;
    SRC_TDVCA: TDataSource;
    Tb_TDV: TQuery;
    Tb_TDVTCODEMP: TFloatField;
    Tb_TDVTDOC: TStringField;
    Tb_TDVTSEQ: TFloatField;
    Tb_TDVTTIPOC: TStringField;
    Tb_TDVTFORMATO: TStringField;
    Tb_TDVTCONDT1: TStringField;
    Tb_TDVTCOND01: TStringField;
    Tb_TDVTCONDOP: TStringField;
    Tb_TDVTCONDT2: TStringField;
    Tb_TDVTCOND02: TStringField;
    Tb_TDVCATCCODEMP: TFloatField;
    Tb_TDVCATCDOC: TStringField;
    Tb_TDVCATCOBS: TStringField;
    Tb_TCaTCOBS: TStringField;
    Tb_IDV: TQuery;
    Src_IDV: TDataSource;
    Tb_IDVIDCODEMP: TFloatField;
    Tb_IDVIDNOMREL: TStringField;
    Tb_IDVIDLINHA1: TStringField;
    Tb_IDVIDLINHA2: TStringField;
    Tb_NsNSSUBSER: TStringField;
    Tb_NsNSMODELO: TStringField;
    Tb_NENEMODELO: TStringField;
    Tb_PF2PF2ALIPI: TFloatField;
    Tb_PF2PF2IPI: TFloatField;
    Tb_EmpCAMINHO: TStringField;
    Tb_EmpRESPONS: TStringField;
    Tb_Parger: TQuery;
    Src_ParGer: TDataSource;
    Tb_PargerCODIGO: TFloatField;
    Tb_PargerEMPPRE: TFloatField;
    Tb_UF: TQuery;
    Src_UF: TDataSource;
    Tb_VenVBAIRRO: TStringField;
    Tb_VenVCIDADE: TStringField;
    Tb_VenVUF: TStringField;
    Tb_TraTRBAIRRO: TStringField;
    Tb_TraTRCIDADE: TStringField;
    Tb_TraTRUF: TStringField;
    Tb_Aju: TQuery;
    Src_Aju: TDataSource;
    Tb_AjuAJCODEMP: TFloatField;
    Tb_AjuAJSEQ: TFloatField;
    Tb_AjuAJDATA: TDateTimeField;
    Tb_AjuAJCODPRO: TFloatField;
    Tb_AjuAJQTD: TFloatField;
    Tb_AjuAJCODUSR: TFloatField;
    Tb_AjuAJMOTIVO: TStringField;
    Tb_LDRUSRALT: TFloatField;
    Tb_LDRDTALT: TDateTimeField;
    Tb_LDRUSREXC: TFloatField;
    Tb_LDRDTHREXC: TDateTimeField;
    Tb_TraTRPLACAV: TStringField;
    Tb_TraTRUFPV: TStringField;
    Qr_TDVCR: TQuery;
    Qr_TDVCRTCODEMP: TFloatField;
    Qr_TDVCRTDOC: TStringField;
    Qr_TDVCRTNOME: TStringField;
    Qr_TDVCRTSEQ: TFloatField;
    Qr_TDVCRTFORMATO: TStringField;
    Qr_TDVCRTCONDT1: TStringField;
    Qr_TDVCRTCOND01: TStringField;
    Qr_TDVCRTCONDOP: TStringField;
    Qr_TDVCRTCONDT2: TStringField;
    Qr_TDVCRTCOND02: TStringField;
    Tb_CV: TQuery;
    Src_CV: TDataSource;
    Tb_CVCVCODEMP: TFloatField;
    Tb_CVCVCODCV: TFloatField;
    Tb_CVCVRAZAO: TStringField;
    Tb_CVCVFANTASIA: TStringField;
    Tb_CVCVNLOG: TStringField;
    Tb_CVCVCOMPL: TStringField;
    Tb_CVCVBAIRRO: TStringField;
    Tb_CVCVCEP: TStringField;
    Tb_CVCVCIDADE: TStringField;
    Tb_CVCVUF: TStringField;
    Tb_CVCVFONE: TStringField;
    Tb_CVCVFAX: TStringField;
    Tb_CVCVEMAIL: TStringField;
    Tb_CVCVRESP: TStringField;
    Tb_CVCVCPF: TFloatField;
    Tb_CVCVCGC: TFloatField;
    Tb_CVCVIE: TStringField;
    Tb_CVCVFONC01: TStringField;
    Tb_CVCVCONT02: TStringField;
    Tb_CVCVFONC02: TStringField;
    Tb_CVCVCONT03: TStringField;
    Tb_CVCVFONC03: TStringField;
    Tb_CVCVCODPV: TFloatField;
    Tb_CVCVACFIN: TFloatField;
    Tb_DarCRCODLDR: TFloatField;
    Tb_CVCVNUM: TStringField;
    Tb_CVCVCVRG: TStringField;
    Tb_CVnompla: TStringField;
    Tb_PF2PF2CFO: TFloatField;
    Tb_Cac: TQuery;
    Src_Cac: TDataSource;
    Tb_CacCACODEMP: TFloatField;
    Tb_CacCASEQ: TFloatField;
    Tb_CacCACODUSR: TFloatField;
    Tb_CacCANOMUSR: TStringField;
    Tb_CacCADATAI: TDateTimeField;
    Tb_CacCAHORAI: TStringField;
    Tb_CacCADATAF: TDateTimeField;
    Tb_CacCAHORAF: TStringField;
    Tb_CacCATERM: TStringField;
    Tb_Cacinicio: TStringField;
    Tb_Cacfim: TStringField;
    Tb_Cacduracao: TStringField;
    Tb_PargerPSEGMENTO: TStringField;
    Tb_Pron_nivel: TStringField;
    Tb_LGC: TQuery;
    Src_LGC: TDataSource;
    Tb_LGCCLCODEMP: TFloatField;
    Tb_LGCCLCODPRO: TFloatField;
    Tb_LGCCLDTVCTO: TDateTimeField;
    Tb_LGCCLNUMERO: TStringField;
    Tb_LGCCLQTD: TFloatField;
    Tb_Pro2: TQuery;
    Tb_Pro2PDCODEMP: TFloatField;
    Tb_Pro2PDCODPRO: TFloatField;
    Tb_Pro2PDCODBAR: TFloatField;
    Tb_Pro2PDNOME: TStringField;
    Tb_Pro2PDNOME2: TStringField;
    Tb_Pro2PDMARCA: TStringField;
    Tb_Pro2PDCODFOR: TFloatField;
    Tb_Pro2PDPRECO1: TFloatField;
    Tb_Pro2PDPRECO2: TFloatField;
    Tb_Pro2PDPRECO3: TFloatField;
    Tb_Pro2PDPRECOA1: TFloatField;
    Tb_Pro2PDPRECOA2: TFloatField;
    Tb_Pro2PDPRECOA3: TFloatField;
    Tb_Pro2PDSIT: TStringField;
    Tb_Pro2PDDTUATP1: TDateTimeField;
    Tb_Pro2PDUSRALT1: TFloatField;
    Tb_Pro2PDDTUATP2: TDateTimeField;
    Tb_Pro2PDUSRALT2: TFloatField;
    Tb_Pro2PDDTUATP3: TDateTimeField;
    Tb_Pro2PDUSRALT3: TFloatField;
    Tb_Pro2PDDATAUA: TDateTimeField;
    Tb_Pro2PDUND: TStringField;
    Tb_Pro2PDCODGRU: TFloatField;
    Tb_Pro2PDCODCON: TFloatField;
    Tb_Pro2PDCODRAM: TFloatField;
    Tb_Pro2PDCODTIP: TFloatField;
    Tb_Pro2PDESTMAX: TFloatField;
    Tb_Pro2PDESTMIN: TFloatField;
    Tb_Pro2PDLISTA: TFloatField;
    Tb_Pro2PDDTUSAI: TDateTimeField;
    Tb_Pro2PDDTUENT: TDateTimeField;
    Tb_Pro2PDPRECOC: TFloatField;
    Tb_Pro2PDPCOMC: TFloatField;
    Tb_Pro2PDPCOFAB: TFloatField;
    Tb_Pro2PDTABICM: TStringField;
    Tb_Pro2PDIPI: TFloatField;
    Tb_Pro2PDREGMS: TStringField;
    Tb_Pro2PDCLAS: TStringField;
    Tb_Pro2nomefab: TStringField;
    Tb_Pro2nomegru: TStringField;
    Tb_Pro2nomram: TStringField;
    Tb_Pro2nomcon: TStringField;
    Tb_Pro2nomtip: TStringField;
    Tb_Pro2n_nivel: TStringField;
    Tb_LC1: TQuery;
    Tb_LC2: TQuery;
    Src_LC1: TDataSource;
    Src_LC2: TDataSource;
    Tb_LC1LC1_CODEMP: TFloatField;
    Tb_LC1LC1_CHAVE: TFloatField;
    Tb_LC1LC1_DTEMIS: TDateTimeField;
    Tb_LC1LC1_CODCLI: TFloatField;
    Tb_LC1LC1_AOSCUI: TStringField;
    Tb_LC1LC1_FONCUI: TStringField;
    Tb_LC1LC1_CARCON: TStringField;
    Tb_LC1LC1_DATCON: TDateTimeField;
    Tb_LC1LC1_CONDPAG: TStringField;
    Tb_LC1LC1_OBJETO: TStringField;
    Tb_LC1LC1_OBS1: TStringField;
    Tb_LC1LC1_OBS2: TStringField;
    Tb_LC1LC1_PRZENT1: TStringField;
    Tb_LC1LC1_PRZENT2: TStringField;
    Tb_LC1LC1_PRZENT3: TStringField;
    Tb_LC1LC1_DEC01: TStringField;
    Tb_LC1LC1_DEC02: TStringField;
    Tb_LC1LC1_DEC03: TStringField;
    Tb_LC1LC1_DEC04: TStringField;
    Tb_LC1LC1_DEC05: TStringField;
    Tb_LC1LC1_DEC06: TStringField;
    Tb_LC1LC1_DEC07: TStringField;
    Tb_LC1LC1_DEC08: TStringField;
    Tb_LC1LC1_DEC09: TStringField;
    Tb_LC1LC1_DEC10: TStringField;
    Tb_LC2LC2_CODEMP: TFloatField;
    Tb_LC2LC2_CODPRO: TFloatField;
    Tb_LC2LC2_QTD: TFloatField;
    Tb_LC2LC2_UND: TStringField;
    Tb_LC2LC2_NOM01: TStringField;
    Tb_LC2LC2_NOM02: TStringField;
    Tb_LC2LC2_NOM03: TStringField;
    Tb_LC2LC2_NOM04: TStringField;
    Tb_LC2LC2_NOM05: TStringField;
    Tb_LC2LC2_NOM06: TStringField;
    Tb_LC2LC2_NOM07: TStringField;
    Tb_LC2LC2_NOM08: TStringField;
    Tb_LC2LC2_NOM09: TStringField;
    Tb_LC2LC2_NOM10: TStringField;
    Tb_LC2LC2_MARCA: TStringField;
    Tb_LC2LC2_RMS: TStringField;
    Tb_LC2LC2_PCOAV: TFloatField;
    Tb_LC2LC2_PCOPZ: TFloatField;
    Tb_LC2LC2_CHAVE: TFloatField;
    Tb_EmpTELEVENDAS: TStringField;
    Tb_LC2totav: TFloatField;
    Tb_LC2totpz: TFloatField;
    Qr_TID: TQuery;
    Qr_TIDTINOME: TStringField;
    Tb_CCUCCCODEMP: TFloatField;
    Tb_Dep_LdrDCODEMP: TFloatField;
    Tb_Proestoque: TFloatField;
    Tb_Est: TQuery;
    Src_Est: TDataSource;
    Tb_EstCECODEMP: TFloatField;
    Tb_EstCECODPRO: TFloatField;
    Tb_EstCESALDO: TFloatField;
    Tb_EstCESALDOR: TFloatField;
    Tb_Proestoquer: TFloatField;
    Tb_Prodtuent: TDateField;
    Tb_Prodtusai: TDateField;
    Tb_EstCEDTUSAI: TDateTimeField;
    Tb_EstCEDTUENT: TDateTimeField;
    Tb_TconCCODEMP: TFloatField;
    Tb_TconCCODCON: TFloatField;
    Tb_TconCNOME: TStringField;
    Tb_AjuAJDATAREF: TDateTimeField;
    Qr_TDVCRTCAMPO: TStringField;
    Qr_TDVCRTDCAMPO: TStringField;
    Tb_TabTCAMPO: TStringField;
    Tb_TabTDCAMPO: TStringField;
    Tb_TDVTCAMPO: TStringField;
    Tb_TDVTDCAMPO: TStringField;
    Tb_Ped01V: TQuery;
    Src_Ped01V: TDataSource;
    Tb_Ped01VP1VCODEMP: TFloatField;
    Tb_Ped01VP1VCHAVE: TFloatField;
    Tb_Ped01VP1VDATAV: TDateTimeField;
    Tb_Ped01VP1VVALOR: TFloatField;
    Src_Ped2D: TDataSource;
    Tb_Ped02D: TQuery;
    Tb_Ped02DP2DCODEMP: TFloatField;
    Tb_Ped02DP2DCHAVE: TFloatField;
    Tb_Ped02DP2DORDEM: TFloatField;
    Tb_Ped02DP2DCODPRO: TFloatField;
    Tb_Ped02DP2DESC: TStringField;
    Src_Ped02S: TDataSource;
    Tb_Ped02S: TQuery;
    Tb_Ped02SP2SCODEMP: TFloatField;
    Tb_Ped02SP2SCHAVE: TFloatField;
    Tb_Ped02SP2SITEM: TFloatField;
    Tb_Ped02SP2SCODPRO: TFloatField;
    Tb_Ped02SP2SQTD: TFloatField;
    Tb_Ped02SP2SDESC1: TFloatField;
    Tb_Ped02SP2SDESC2: TFloatField;
    Tb_Ped02SP2SVALDES: TFloatField;
    Tb_Ped02SP2SPRECO: TFloatField;
    Tb_Ped02SP2SSIT: TStringField;
    Tb_Ped02SP2SCODFAB: TFloatField;
    Tb_Ped02SP2SBCISSQN: TFloatField;
    Tb_Ped02SP2SVISSQN: TFloatField;
    Tb_Ped02SP2SPCOTAB: TFloatField;
    Tb_Ped02SP2STOTDES: TFloatField;
    Tb_Ped02SP2STABELA: TStringField;
    Tb_Ped02SP2SISENTAS: TFloatField;
    Tb_Ped02SP2SALIQ: TFloatField;
    Tb_Ped02SP2SCFO: TFloatField;
    Tb_AjuAJLOTE: TStringField;
    Tb_AjuAJDATAV: TDateTimeField;
    Tb_PF1PF1TOTLIQ: TFloatField;
    Tb_PF1PF1DATANF: TDateTimeField;
    Tb_PF1PF1NUMNF: TFloatField;
    Tb_PF1PF1SERIE: TStringField;
    Tb_PF1PF1SUBSER: TStringField;
    Tb_PF1PF1MODELO: TStringField;
    Tb_PF2PF2LOTE: TStringField;
    Tb_PF2PF2DATAV: TDateTimeField;
    Tb_PF2PF2TOTDES: TFloatField;
    Tb_PF1PF1TOTFRE: TFloatField;
    Tb_PF2PF2PCOTAB: TFloatField;
    Tb_PF1PF1TOTOUT: TFloatField;
    Tb_PF1PF1TOTIPI: TFloatField;
    Tb_PF1PF1TOTSEG: TFloatField;
    Tb_PF1PF1NUMDUP: TFloatField;
    Tb_PF1PF1DESD: TStringField;
    Qr_TDVCRTLOCAL: TFloatField;
    Qr_TDVCRTLIN: TFloatField;
    Qr_TDVCRTCOL: TFloatField;
    Qr_TDVCRTFONTE: TFloatField;
    Qr_TDVCRTTIPO: TFloatField;
    Qr_TDVCRTTIPOC: TStringField;
    Qr_TDVCRTALINHAR: TFloatField;
    Qr_TDVCRTTAM: TFloatField;
    Qr_TDVCRTZERVAR: TFloatField;
    Tb_Pro2PDNIVEL: TFloatField;
    Tb_Pro2PDFRACAO: TFloatField;
    Tb_Pro2PDSTATUS: TFloatField;
    Tb_Pro2PDSECAO: TStringField;
    Tb_Pro2PDEMBPAD: TFloatField;
    Tb_Pro2PDEMBMUL: TFloatField;
    Tb_AjuAJTIPOM: TFloatField;
    Tb_CfoCFCODCFO: TFloatField;
    Tb_CfoCFCFOENT: TFloatField;
    Tb_CPCASTATUS: TFloatField;
    Tb_CVCVDIAV: TFloatField;
    Tb_CVCVCONT01: TStringField;
    Tb_DarCRDUP: TFloatField;
    Tb_DarCRORDEM: TFloatField;
    Tb_DarCRSTATUS: TFloatField;
    Tb_DarCRCODBCO: TFloatField;
    Tb_DarCREMIDUP: TFloatField;
    Tb_DarCREMIBLQ: TFloatField;
    Tb_DarCRTIPCOB: TFloatField;
    Tb_EmpNUMERO: TFloatField;
    Tb_IDVIDCOL1: TFloatField;
    Tb_IDVIDPULAR1: TFloatField;
    Tb_IDVIDCOL2: TFloatField;
    Tb_IDVIDPULAR2: TFloatField;
    Tb_IDVIDPULAR3: TFloatField;
    Tb_IDVIDQTDCOL: TFloatField;
    Tb_IDVIDQTDCP: TFloatField;
    Tb_IDVIDQTDJ: TFloatField;
    Tb_IDVIDFPADRAO: TFloatField;
    Tb_IDVIDQTDLPP: TFloatField;
    Tb_LC1LC1_VALPRO: TFloatField;
    Tb_LC1LC1_DIGRMS: TFloatField;
    Tb_LC1LC1_PCOAVI: TFloatField;
    Tb_LC1LC1_PCOPRZ: TFloatField;
    Tb_LC1LC1_EXTTAV: TFloatField;
    Tb_LC1LC1_EXTUAV: TFloatField;
    Tb_LC1LC1_EXTPAV: TFloatField;
    Tb_LC1LC1_EXTTAP: TFloatField;
    Tb_LC1LC1_EXTPAP: TFloatField;
    Tb_LC1LC1_EXTUAP: TFloatField;
    Tb_LC1LC1_IMPCAB: TFloatField;
    Tb_LC2LC2_ITEM: TFloatField;
    Tb_LDRCODBCO: TFloatField;
    Tb_LDRSTATUS: TFloatField;
    Tb_LDRORIGEM: TFloatField;
    Tb_NsNSTIPO: TFloatField;
    Tb_NsNSORDEMP: TFloatField;
    Tb_NsNSSTATUS: TFloatField;
    Tb_Ped01VP1VORDEM: TFloatField;
    Tb_Ped01VP1VCODIGO: TFloatField;
    Tb_Ped02DP2DTIPO: TFloatField;
    Tb_Ped02DP2DITEM: TFloatField;
    Tb_Ped02DP2DLINHA: TFloatField;
    Tb_Ped02SP2SORDEM: TFloatField;
    Tb_Ped02SP2SLISTA: TFloatField;
    Tb_Ped02SP2SSTATUS: TFloatField;
    Tb_PF1PF1STATUS: TFloatField;
    Tb_PF1PF1CODPV: TFloatField;
    Tb_PF1PF1CODBCO: TFloatField;
    Tb_PF1PF1CODTRA: TFloatField;
    Tb_PF2PF2STATUS: TFloatField;
    Tb_PF2PF2LISTA: TFloatField;
    Tb_TabTDOC: TFloatField;
    Tb_TabTLOCAL: TFloatField;
    Tb_TabTLIN: TFloatField;
    Tb_TabTCOL: TFloatField;
    Tb_TabTFONTE: TFloatField;
    Tb_TabTTIPO: TFloatField;
    Tb_TabTALINHAR: TFloatField;
    Tb_TabTTAM: TFloatField;
    Tb_TCaTCDOC: TFloatField;
    Tb_TCaTCQTDLIN: TFloatField;
    Tb_TCaTCQTDCOL: TFloatField;
    Tb_TCaTCFPADRAO: TFloatField;
    Tb_TCaTCQTDITEM: TFloatField;
    Tb_TCaTCQTDSER: TFloatField;
    Tb_TCaTCQTDLPP: TFloatField;
    Tb_TCaTCIMPDA: TFloatField;
    Tb_TDVTLOCAL: TFloatField;
    Tb_TDVTLIN: TFloatField;
    Tb_TDVTCOL: TFloatField;
    Tb_TDVTFONTE: TFloatField;
    Tb_TDVTTIPO: TFloatField;
    Tb_TDVTALINHAR: TFloatField;
    Tb_TDVTTAM: TFloatField;
    Tb_TDVTZERVAR: TFloatField;
    Tb_TDVCATCQTDLIN: TFloatField;
    Tb_TDVCATCQTDCOL: TFloatField;
    Tb_TDVCATCFPADRAO: TFloatField;
    Tb_TDVCATCQTDITEM: TFloatField;
    Tb_TDVCATCQTDLPP: TFloatField;
    Tb_TDVCATCNUMCOL: TFloatField;
    Tb_TDVCATCINTCOL: TFloatField;
    Tb_TDVCATCTPCOL: TFloatField;
    Tb_TDVCATCORDEM: TFloatField;
    Tb_TDVCATCMPAGGR: TFloatField;
    Tb_TDVCATCTPESQ: TFloatField;
    Tb_TDVCATCTPREL: TFloatField;
    Tb_TDVCATCIMPG: TFloatField;
    Tb_TDVCATCIMPSG: TFloatField;
    Tb_TDVCATCAVPTPI: TFloatField;
    Tb_TDVCATCAVPIPF: TFloatField;
    Tb_TraTRSTATUS: TFloatField;
    Tb_VenVSTATUS: TFloatField;
    Qr_FP: TQuery;
    Qr_FPFPCODIGO: TFloatField;
    Qr_FPFPDESC: TStringField;
    Qr_FPFPTIPO: TFloatField;
    Qr_FPFPNUM: TFloatField;
    Tb_ChqCHCODCLI: TFloatField;
    Tb_CPCAVALPAG: TFloatField;
    Tb_TDVCATCSTATUS: TFloatField;
    Tb_TDVCATCVIS: TFloatField;
    Tb_TDVCATCQTDSER: TFloatField;
    Tb_TDVCATCIMPDA: TFloatField;
    Tb_PF1PF1GRAVNF: TFloatField;
    Tb_PF1PF1GRAVDP: TFloatField;
    Tb_PargerUDTTRA: TDateTimeField;
    Tb_PargerPSISTEMA: TStringField;
    Tb_PargerPGRAVE: TStringField;
    Tb_PargerPTIPO: TStringField;
    Tb_JD01: TQuery;
    Tb_JD02: TQuery;
    Src_JD01: TDataSource;
    Src_JD02: TDataSource;
    Tb_JD02J2CODEMP: TFloatField;
    Tb_JD02J2TIPO: TFloatField;
    Tb_JD02J2LOTE: TFloatField;
    Tb_JD02J2SEQ: TFloatField;
    Tb_JD02J2DESC: TStringField;
    Tb_JD02J2VALOR: TFloatField;
    Tb_JD02J2DATA: TDateTimeField;
    Tb_JD01J1CODEMP: TFloatField;
    Tb_JD01J1TIPO: TFloatField;
    Tb_JD01J1LOTE: TFloatField;
    Tb_JD01J1DESC: TStringField;
    Tb_JD01J1DATAR: TDateTimeField;
    Tb_JD01J1FATOR: TFloatField;
    Tb_PargerPCAMINHO: TStringField;
    Tb_Ped01P1CODEMP: TFloatField;
    Tb_Ped01P1CHAVE: TFloatField;
    Tb_Ped01P1ORDEM: TFloatField;
    Tb_Ped01P1CODCLI: TFloatField;
    Tb_Ped01P1CODVEN: TFloatField;
    Tb_Ped01P1CODV02: TFloatField;
    Tb_Ped01P1CODV03: TFloatField;
    Tb_Ped01P1DATAP: TDateTimeField;
    Tb_Ped01P1DATANF: TDateTimeField;
    Tb_Ped01P1NUMNF: TFloatField;
    Tb_Ped01P1SERIE: TStringField;
    Tb_Ped01P1SUBSER: TStringField;
    Tb_Ped01P1MODELO: TStringField;
    Tb_Ped01P1STATUS: TFloatField;
    Tb_Ped01P1TIPO: TFloatField;
    Tb_Ped01P1TOTALB: TFloatField;
    Tb_Ped01P1TOTALL: TFloatField;
    Tb_Ped01P1CODUSR: TFloatField;
    Tb_Ped01P1HORADIG: TStringField;
    Tb_Ped01P1DTMOD: TDateTimeField;
    Tb_Ped01P1HRMOD: TStringField;
    Tb_Ped01P1USRMOD: TFloatField;
    Tb_Ped01P1CONF: TStringField;
    Tb_Ped01P1CODCON: TFloatField;
    Tb_Ped01P1DATCON: TDateTimeField;
    Tb_Ped01P1CODPV: TFloatField;
    Tb_Ped01P1CUPOM: TFloatField;
    Tb_Ped01P1BASEN: TFloatField;
    Tb_Ped01P1ICMSN: TFloatField;
    Tb_Ped01P1BASER: TFloatField;
    Tb_Ped01P1ICMSR: TFloatField;
    Tb_Ped01P1BASENP: TFloatField;
    Tb_Ped01P1BASENN: TFloatField;
    Tb_Ped01P1BASENI: TFloatField;
    Tb_Ped01P1ICMSNP: TFloatField;
    Tb_Ped01P1ICMSNN: TFloatField;
    Tb_Ped01P1ICMSNI: TFloatField;
    Tb_Ped01P1BASERP: TFloatField;
    Tb_Ped01P1BASERN: TFloatField;
    Tb_Ped01P1BASERI: TFloatField;
    Tb_Ped01P1ICMSRP: TFloatField;
    Tb_Ped01P1ICMSRN: TFloatField;
    Tb_Ped01P1ICMSRI: TFloatField;
    Tb_Ped01P1BASENRI: TFloatField;
    Tb_Ped01P1ICMSNRI: TFloatField;
    Tb_Ped01P1BASENRP: TFloatField;
    Tb_Ped01P1ICMSNRP: TFloatField;
    Tb_Ped01P1BASENRN: TFloatField;
    Tb_Ped01P1ICMSNRN: TFloatField;
    Tb_Ped01P1IPIINA: TFloatField;
    Tb_Ped01P1IPIPOS: TFloatField;
    Tb_Ped01P1IPINEG: TFloatField;
    Tb_Ped01P1TOTTRI: TFloatField;
    Tb_Ped01P1TOTRET: TFloatField;
    Tb_Ped01P1TOTISE: TFloatField;
    Tb_Ped01P1TOTPOS: TFloatField;
    Tb_Ped01P1TOTNEG: TFloatField;
    Tb_Ped01P1TOTINA: TFloatField;
    Tb_Ped01P1TOTDES: TFloatField;
    Tb_Ped01P1DESC01: TFloatField;
    Tb_Ped01P1DESC02: TFloatField;
    Tb_Ped01P1VLRDES: TFloatField;
    Tb_Ped01P1CODTRA: TFloatField;
    Tb_Ped01P1QTDVOL: TFloatField;
    Tb_Ped01P1PESOL: TFloatField;
    Tb_Ped01P1PESOB: TFloatField;
    Tb_Ped01P1FRETEPC: TFloatField;
    Tb_Ped01P1VALFRE: TFloatField;
    Tb_Ped01P1UFPV: TStringField;
    Tb_Ped01P1PLACAV: TStringField;
    Tb_Ped01P1BANCO: TFloatField;
    Tb_Ped01P1CODSER: TFloatField;
    Tb_Ped01P1CODLDR: TFloatField;
    Tb_Ped01P1COMIS: TFloatField;
    Tb_Ped01P1ORIGEM: TFloatField;
    Tb_Ped01P1CODTLV: TFloatField;
    Tb_Ped01P1BCISSQN: TFloatField;
    Tb_Ped01P1VISSQN: TFloatField;
    Tb_Ped01P1PCOMIS: TFloatField;
    Tb_Ped01P1ETIVOL: TFloatField;
    Tb_Ped01P1CODSEP: TFloatField;
    Tb_Ped01P1DATASEP: TDateTimeField;
    Tb_Ped01P1CODEMB: TFloatField;
    Tb_Ped01P1DATAEMB: TDateTimeField;
    Tb_Ped01P1NUMCF: TFloatField;
    Tb_Ped01P1DATACF: TDateTimeField;
    Tb_CPnombco: TStringField;
    Tb_PF1PF1CASASD: TFloatField;
    Tb_PargerPDCADCAR: TFloatField;
    Tb_PargerPDCADBAI: TFloatField;
    Tb_PargerPDCADCLI: TFloatField;
    Tb_PargerPDCADCON: TFloatField;
    Tb_PargerPDCADCV: TFloatField;
    Tb_PargerPDCADFOR: TFloatField;
    Tb_PargerPDCADGRU: TFloatField;
    Tb_PargerPDCADLOC: TFloatField;
    Tb_PargerPDCADPRO: TFloatField;
    Tb_PargerPDCADRAM: TFloatField;
    Tb_PargerPDCADTP: TFloatField;
    Tb_PargerPDCADTRA: TFloatField;
    Tb_PargerPDCADUSR: TFloatField;
    Tb_PargerPDCADVEN: TFloatField;
    Tb_Cli: TQuery;
    Src_Cli: TDataSource;
    Tb_PargerPIMPFPAD: TFloatField;
    Tb_Cal: TQuery;
    Src_Cal: TDataSource;
    Tb_CalCACODEMP: TFloatField;
    Tb_CalCACODIMP: TFloatField;
    Tb_CalCACODALI: TFloatField;
    Tb_CalCAALIQ: TFloatField;
    Src_CSF: TDataSource;
    Tb_CSF: TQuery;
    Tb_PargerPCASAS: TFloatField;
    Tb_PargerPCASASPU: TFloatField;
    Tb_PargerPCASQTD: TFloatField;
    Tb_PargerPCLIPED: TFloatField;
    Tb_Ped01P1SUBMOD: TStringField;
    Tb_NsNSNUMCUP: TFloatField;
    Tb_NsNSDATCUP: TDateTimeField;
    Tb_DarCRNUMCUP: TFloatField;
    Tb_DarCRDATCUP: TDateTimeField;
    Tb_PargerPCOMVEN: TFloatField;
    Tb_PargerPCOMTLV: TFloatField;
    Tb_PargerPDEDVD: TFloatField;
    Tb_PargerPCOMSUP: TFloatField;
    Tb_ComD: TQuery;
    Src_ComD: TDataSource;
    Tb_ComDCDCODEMP: TFloatField;
    Tb_ComDCDDESC: TFloatField;
    Tb_ComDCDCOMIS: TFloatField;
    Tb_Ped01P1TPPCO: TFloatField;
    Tb_Ped01P1COMIST: TFloatField;
    Tb_Ped01P1COMISS: TFloatField;
    Tb_Ped02SP2SPCOMIS: TFloatField;
    Tb_DarCRCOMVEN: TFloatField;
    Tb_DarCRCOMTEL: TFloatField;
    Tb_DarCRCOMSUP: TFloatField;
    Tb_Ped02SP2SDESCM: TFloatField;
    Tb_Ped01VP1VCOMISV: TFloatField;
    Tb_Ped01VP1VCOMISS: TFloatField;
    Tb_Ped01VP1VCOMIST: TFloatField;
    Tb_Ped01VP1VFRETE: TFloatField;
    Tb_Ped01VP1VICMSR: TFloatField;
    Tb_PargerPTPACER: TFloatField;
    Tb_PargerPDCADSUP: TFloatField;
    Tb_VenVCODSUP: TFloatField;
    Tb_VenVCOMIS: TFloatField;
    Tb_Vennomsup: TStringField;
    Tb_PargerPTPACERT: TFloatField;
    Tb_PargerPTPACERS: TFloatField;
    Tb_Cus: TQuery;
    Src_Cus: TDataSource;
    Tb_CusCUCODEMP: TFloatField;
    Tb_CusCUTIPO: TFloatField;
    Tb_CusCUCODIGO: TFloatField;
    Tb_CusCUCODPCU: TFloatField;
    Tb_CusCUPERC: TFloatField;
    Tb_PargerPMOD00: TFloatField;
    Tb_PargerPMOD01: TFloatField;
    Tb_CPCADUP: TFloatField;
    Tb_ChqCHCOMP: TStringField;
    Tb_Chqnomcli: TStringField;
    Tb_ChqCHLOTEBX: TFloatField;
    Tb_PargerPTIPPED: TFloatField;
    Tb_Ped01P1SEMCOM: TFloatField;
    Tb_PargerPTITSCOM: TStringField;
    Tb_Ped02SP2SSEMCOM: TFloatField;
    Tb_PargerPMANPC: TFloatField;
    Tb_PargerPDEVOL: TFloatField;
    Tb_Ped01VP1VSEMCOM: TFloatField;
    Tb_Ped01P1PAVDES: TFloatField;
    Tb_DarCRSEMCOM: TFloatField;
    Tb_Ped01P1CODENT: TFloatField;
    Tb_Ped01P1DATENT: TDateTimeField;
    Tb_Ped01P1TIPENT: TFloatField;
    Tb_Ped01P1PREVENT: TDateTimeField;
    Tb_DarCRLOTCV: TFloatField;
    Tb_DarCRLOTCS: TFloatField;
    Tb_DarCRLOTCT: TFloatField;
    Tb_Ped01P1LOTCV: TFloatField;
    Tb_Ped01P1LOTCS: TFloatField;
    Tb_Ped01P1LOTCT: TFloatField;
    Tb_PargerPDJNR: TFloatField;
    Tb_DarCRMULTA: TFloatField;
    Tb_DarCRQTDDM: TFloatField;
    Tb_DarCRDESCD: TFloatField;
    Tb_EmpDATACAD: TDateTimeField;
    Tb_EmpDATAALT: TDateTimeField;
    Tb_CPCADEVOL: TFloatField;
    Tb_Ped01nomcli: TStringField;
    Tb_PargerPCOMEMP: TFloatField;
    Tb_PargerPVENUSR: TFloatField;
    Tb_Ped01P1HORCON: TStringField;
    Tb_Ped01P1HPREVENT: TStringField;
    Tb_Ped01P1HORENT: TStringField;
    Tb_Ped01P1HORSEP: TStringField;
    Tb_Ped01P1HOREMB: TStringField;
    Tb_EmpPA001: TStringField;
    Tb_EmpPA002: TStringField;
    Tb_EmpPA003: TStringField;
    Tb_PargerPA001: TStringField;
    Tb_PargerPA002: TStringField;
    Tb_PargerPA003: TStringField;
    Tb_PargerPAQTDATA: TFloatField;
    Tb_PargerPAUSRTD: TFloatField;
    Tb_TraTRNLOG: TStringField;
    Tb_TraTRFONE: TStringField;
    Tb_TraTRFAX: TStringField;
    Tb_TraTREMAIL: TStringField;
    Tb_TraTRHOME: TStringField;
    Tb_Ped01P1SITAC: TFloatField;
    Tb_Ped01P1REPAS: TFloatField;
    Tb_PargerPMOD02: TFloatField;
    Tb_Ped01D: TQuery;
    Tb_Ped01DP1DCODEMP: TFloatField;
    Tb_Ped01DP1DCHAVE: TFloatField;
    Tb_Ped01DP1DORDEM: TFloatField;
    Tb_Ped01DP1DCH_OR: TFloatField;
    Tb_Ped01DP1DOR_OR: TFloatField;
    Tb_Ped01DP1DDATAP: TDateTimeField;
    Tb_DarCRCODTLV: TFloatField;
    Tb_DarCRCODORI: TFloatField;
    Tb_Pen: TQuery;
    Src_Pen: TDataSource;
    Tb_PenPECODEMP: TFloatField;
    Tb_PenPECHAVE: TFloatField;
    Tb_PenPEITEM: TFloatField;
    Tb_PenPECODPRO: TFloatField;
    Tb_PenPEQTDPED: TFloatField;
    Tb_PenPEQTDENV: TFloatField;
    Tb_PenPEQTDPEN: TFloatField;
    Tb_PenPEDESC01: TFloatField;
    Tb_PenPEDESC02: TFloatField;
    Tb_PenPEDESC03: TFloatField;
    Tb_PenPEVALDES: TFloatField;
    Tb_PenPEPRECO: TFloatField;
    Tb_PargerPVISA: TFloatField;
    Tb_PargerPANVISA: TFloatField;
    Tb_PargerPREDE: TFloatField;
    Tb_PargerPCONV: TFloatField;
    Tb_PargerPCODDBC: TFloatField;
    Tb_Red: TQuery;
    Src_Red: TDataSource;
    Tb_RedRDCODEMP: TFloatField;
    Tb_RedRDCODRED: TFloatField;
    Tb_RedRDNOME: TStringField;
    Tb_Gen: TQuery;
    Src_Gen: TDataSource;
    Tb_GenCGCODEMP: TFloatField;
    Tb_GenCGCODDCB: TStringField;
    Tb_GenCGNOME: TStringField;
    Tb_PGen: TQuery;
    Src_Pgen: TDataSource;
    Tb_PGenPGCODEMP: TFloatField;
    Tb_PGenPGCODPRO: TFloatField;
    Tb_PGenPGCODDCB: TStringField;
    Tb_PargerPDCADRED: TFloatField;
    Tb_Cb01: TQuery;
    Src_Cb01: TDataSource;
    Tb_Cb01CB1CODEMP: TFloatField;
    Tb_Cb01CB1CHAVE: TFloatField;
    Tb_Cb01CB1DATA: TDateTimeField;
    Tb_Cb01CB1JURM: TFloatField;
    Tb_Cb01CB1OBS01: TStringField;
    Tb_Cb01CB1OBS02: TStringField;
    Tb_Cb02: TQuery;
    Src_Cb02: TDataSource;
    Tb_Cb02CB2CODEMP: TFloatField;
    Tb_Cb02CB2CHAVE: TFloatField;
    Tb_Cb02CB2SEQ: TFloatField;
    Tb_Cb02CB2NUMERO: TFloatField;
    Tb_Cb02CB2DESD: TStringField;
    Tb_Cb02CB2DUP: TFloatField;
    Tb_Cb01CB1CODVEN: TFloatField;
    Tb_Cb02CB2VALDUP: TFloatField;
    Tb_Cb02CB2ATRASO: TFloatField;
    Tb_Cb02CB2JURD: TFloatField;
    Tb_TDVCATCTAB01: TStringField;
    Tb_TDVCATCTAB02: TStringField;
    Tb_TDVCATCTAB02N: TFloatField;
    Tb_TDVCATCTAB03: TStringField;
    Tb_TDVCATCTAB03N: TFloatField;
    Tb_TDVCATCTAB04: TStringField;
    Tb_TDVCATCTAB04N: TFloatField;
    Tb_TDVCATCTAB05: TStringField;
    Tb_TDVCATCTAB05N: TFloatField;
    Tb_TDVCATCORDEM2: TStringField;
    Tb_TDVCATCFILTRO: TStringField;
    Tb_TDVCATCCONT_M: TStringField;
    Tb_TDVCATCCONT_R: TStringField;
    Tb_TDVCATCCONT_AP: TFloatField;
    Tb_TDVCATCBLOQ: TFloatField;
    Tb_TDVCATCAGRUPAR: TFloatField;
    Tb_TDVTCTPSEL: TFloatField;
    Tb_TDVTCAMPO_TAB: TStringField;
    Tb_TDVTCOND01_TAB: TStringField;
    Tb_TDVTCOND02_TAB: TStringField;
    Tb_TDVFT: TQuery;
    SRC_TDVFT: TDataSource;
    Tb_TDVFTTFCODEMP: TFloatField;
    Tb_TDVFTTFDOC: TStringField;
    Tb_TDVFTTFTIPO: TFloatField;
    Tb_TDVFTTFCODIGO: TFloatField;
    Tb_TDVFTTFTCAMPO1: TStringField;
    Tb_TDVFTTFTAB01: TStringField;
    Tb_TDVFTTFCAMPO1: TStringField;
    Tb_TDVFTTFCOND1: TStringField;
    Tb_TDVFTTFTCAMPO2: TStringField;
    Tb_TDVFTTFTAB02: TStringField;
    Tb_TDVFTTFCAMPO2: TStringField;
    Tb_TDVCATCMASC: TStringField;
    Tb_TDVCATCPERIODO: TStringField;
    Tb_TDVCATCDIMGRU: TFloatField;
    Tb_TDVCATCDIMSG: TFloatField;
    Tb_TDVCATCTPFORM: TFloatField;
    Tb_TDVTCBARRAS: TFloatField;
    Tb_TDVTCEXTENSO: TFloatField;
    Tb_TDVTCEXT_QTDL: TFloatField;
    Tb_TDVTCEXT_1LP: TFloatField;
    Tb_TDVTCEXT_1LT: TFloatField;
    Tb_TDVTCEXT_2LP: TFloatField;
    Tb_TDVTCEXT_2LT: TFloatField;
    Tb_TDVTCEXT_3LP: TFloatField;
    Tb_TDVTCEXT_3LT: TFloatField;
    Tb_TDVTCEXT_1IC: TFloatField;
    Tb_TDVTCEXT_3IC: TFloatField;
    Tb_TDVTCEXT_2IC: TFloatField;
    Qr_TDVCRTCTPSEL: TFloatField;
    Qr_TDVCRTCAMPO_TAB: TStringField;
    Qr_TDVCRTCOND01_TAB: TStringField;
    Qr_TDVCRTCOND02_TAB: TStringField;
    Qr_TDVCRTCBARRAS: TFloatField;
    Qr_TDVCRTCEXTENSO: TFloatField;
    Qr_TDVCRTCEXT_QTDL: TFloatField;
    Qr_TDVCRTCEXT_1LP: TFloatField;
    Qr_TDVCRTCEXT_1LT: TFloatField;
    Qr_TDVCRTCEXT_2LP: TFloatField;
    Qr_TDVCRTCEXT_2LT: TFloatField;
    Qr_TDVCRTCEXT_3LP: TFloatField;
    Qr_TDVCRTCEXT_3LT: TFloatField;
    Qr_TDVCRTCEXT_1IC: TFloatField;
    Qr_TDVCRTCEXT_3IC: TFloatField;
    Qr_TDVCRTCEXT_2IC: TFloatField;
    Tb_TDVCATCQTDDIV: TFloatField;
    Tb_TDVTCTPVAR: TFloatField;
    Qr_TDVCRTCTPVAR: TFloatField;
    Tb_PargerPCODLOC: TFloatField;
    Tb_PargerPCODBAI: TFloatField;
    Tb_Bai: TQuery;
    Src_Bai: TDataSource;
    Tb_BaiBCODEMP: TFloatField;
    Tb_BaiBCODBAI: TFloatField;
    Tb_BaiBNOME: TStringField;
    Tb_BaiBSTATUS: TFloatField;
    Tb_Loc: TQuery;
    Src_Loc: TDataSource;
    Tb_LocLCODEMP: TFloatField;
    Tb_LocLCODLOC: TFloatField;
    Tb_LocLNOME: TStringField;
    Tb_LocLUF: TStringField;
    Tb_LocLCEP: TStringField;
    Tb_LocLSTATUS: TFloatField;
    Tb_TDVCATCTAB06: TStringField;
    Tb_TDVCATCTAB06N: TFloatField;
    Tb_TDVCATCTAB07: TStringField;
    Tb_TDVCATCTAB07N: TFloatField;
    Tb_TDVCATCTAB08: TStringField;
    Tb_TDVCATCTAB08N: TFloatField;
    Tb_TDVCATCTAB09: TStringField;
    Tb_TDVCATCTAB09N: TFloatField;
    Tb_PargerPMOEDA: TStringField;
    Tb_LDRLOCDEP: TFloatField;
    Tb_Ped01P1TOTUCPR: TFloatField;
    Tb_ChqCHCODUSR: TFloatField;
    Tb_ChqCHDTALT: TDateTimeField;
    Tb_ChqCHHRALT: TStringField;
    Tb_CPCACODUSR: TFloatField;
    Tb_CPCADTALT: TDateTimeField;
    Tb_CPCAHRALT: TStringField;
    Tb_DarCRCODUSR: TFloatField;
    Tb_DarCRHRALT: TStringField;
    Tb_LDRHRALT: TStringField;
    Tb_NENECODUSR: TFloatField;
    Tb_NENEDTALT: TDateTimeField;
    Tb_NENEHRALT: TStringField;
    Tb_NsNSCODUSR: TFloatField;
    Tb_NsNSDTALT: TDateTimeField;
    Tb_NsNSHRALT: TStringField;
    Tb_PF1PF1HRMOD: TStringField;
    Src_PF1V: TDataSource;
    Tb_Pf1V: TQuery;
    Tb_Pf1VPF1VCODEMP: TFloatField;
    Tb_Pf1VPF1VCHAVE: TFloatField;
    Tb_Pf1VPF1VCODIGO: TFloatField;
    Tb_Pf1VPF1VDATAV: TDateTimeField;
    Tb_Pf1VPF1VVALOR: TFloatField;
    Tb_NENESTATUS: TFloatField;
    Tb_PargerPPRZVAL: TFloatField;
    Tb_PargerPVERCRE: TFloatField;
    Tb_PargerPQTDBLQ: TFloatField;
    Tb_PargerPTPBLQ: TFloatField;
    Tb_PargerPPRZCOMP: TFloatField;
    Tb_PargerPDTUBKP: TDateTimeField;
    Tb_PargerPHRABKP: TStringField;
    Tb_PargerPDCAMBKP: TStringField;
    Tb_PargerPDRESBKP: TStringField;
    Tb_PargerPDQTDRES: TFloatField;
    Tb_PargerPDDTPRES: TDateTimeField;
    Src_Cus2: TDataSource;
    Tb_Cus2: TQuery;
    Tb_Cus2CUCODEMP: TFloatField;
    Tb_Cus2CUTIPO: TFloatField;
    Tb_Cus2CUCODIGO: TFloatField;
    Tb_Cus2CUACPCO2: TFloatField;
    Tb_Cus2CUACPCO3: TFloatField;
    Tb_Cus2CUATUP01: TFloatField;
    Tb_Cus2CUATUP02: TFloatField;
    Tb_Cus2CUATUP03: TFloatField;
    Tb_Contato: TQuery;
    Src_Contato: TDataSource;
    Tb_ContatoCTNUMCON: TFloatField;
    Tb_ContatoCTCODVEN: TFloatField;
    Tb_ContatoCTCODCLI: TFloatField;
    Tb_ContatoCTDATCON: TDateTimeField;
    Tb_ContatoCTTEXCON: TMemoField;
    Tb_ContatoCTDTPCON: TDateTimeField;
    Tb_ContatoCTTEXPCON: TMemoField;
    Tb_Contatofone: TStringField;
    Tb_TDVTNOME: TStringField;
    Tb_TDVCATCNOME: TStringField;
    Tb_TDVFTTFNOME: TStringField;
    Tb_Empcnpj_masc: TStringField;
    Tb_Empender: TStringField;
    Tb_Emptelefone: TStringField;
    Tb_Empcnpj: TStringField;
    Tb_TDVCATCFILVEN: TFloatField;
    Tb_TDVCATCFILCLI: TFloatField;
    Tb_TDVCATCFILPRO: TFloatField;
    Tb_TDVCATCFILFOR: TFloatField;
    Tb_TDVCATCFILRED: TFloatField;
    Tb_TDVCATCFVCAMPO: TStringField;
    Tb_TDVCATCFCCAMPO: TStringField;
    Tb_TDVCATCFPCAMPO: TStringField;
    Tb_TDVCATCFFCAMPO: TStringField;
    Tb_TDVCATCFRCAMPO: TStringField;
    Tb_PargerPDQPCOP: TFloatField;
    Tb_PargerPUCADGRU: TFloatField;
    Tb_PargerPUCADRAM: TFloatField;
    Tb_PargerPUCADCON: TFloatField;
    Tb_PargerPUCADTIP: TFloatField;
    Tb_PargerPUREGMS: TFloatField;
    Tb_PargerPUPISCOF: TFloatField;
    Tb_PargerPUTABICM: TFloatField;
    Tb_PargerPUPVESP: TFloatField;
    Tb_PVPVCODEMP: TFloatField;
    Tb_PVPVCODPV: TFloatField;
    Tb_PVPVNOME: TStringField;
    Tb_PVPVCODUSR: TFloatField;
    Tb_PVPVDTALT: TDateTimeField;
    Tb_PVPVHRALT: TStringField;
    Tb_PVPVSTATUS: TFloatField;
    Tb_PVPVCODTIP: TStringField;
    Tb_PVPVTPC: TFloatField;
    Tb_PVPVCOM: TFloatField;
    Tb_PVPVDES: TFloatField;
    Tb_PVPVTPDC: TFloatField;
    Tb_PVPVTPD1: TFloatField;
    Tb_PVPVDES1: TFloatField;
    Tb_PVPVTPD2: TFloatField;
    Tb_PVPVDES2: TFloatField;
    Tb_PVPVTPD3: TFloatField;
    Tb_PVPVDES3: TFloatField;
    Tb_PVPVDF01A: TFloatField;
    Tb_PVPVDF01B: TFloatField;
    Tb_PVPVDF01: TFloatField;
    Tb_PVPVDF02A: TFloatField;
    Tb_PVPVDF02B: TFloatField;
    Tb_PVPVDF02: TFloatField;
    Tb_PVPVDF03A: TFloatField;
    Tb_PVPVDF03B: TFloatField;
    Tb_PVPVDF03: TFloatField;
    Tb_PVPVDF04A: TFloatField;
    Tb_PVPVDF04B: TFloatField;
    Tb_PVPVDF04: TFloatField;
    Tb_PVPVD2S0: TFloatField;
    Tb_PVPVD2S1: TFloatField;
    Tb_PVPVD2S2: TFloatField;
    Tb_PVPVD2S3: TFloatField;
    Tb_PVPVD2S4: TFloatField;
    Tb_PVPVD2S5: TFloatField;
    Tb_PVPVD2S6: TFloatField;
    Tb_PVPVD2S7: TFloatField;
    Tb_PVPVD3S0: TFloatField;
    Tb_PVPVD3S1: TFloatField;
    Tb_PVPVD3S2: TFloatField;
    Tb_PVPVD3S3: TFloatField;
    Tb_PVPVD3S4: TFloatField;
    Tb_PVPVD3S5: TFloatField;
    Tb_PVPVD3S6: TFloatField;
    Tb_PVPVD3S7: TFloatField;
    Tb_PVPVCMS0: TFloatField;
    Tb_PVPVCMS1: TFloatField;
    Tb_PVPVCMS2: TFloatField;
    Tb_PVPVCMS3: TFloatField;
    Tb_PVPVCMS4: TFloatField;
    Tb_PVPVCMS5: TFloatField;
    Tb_PVPVCMS6: TFloatField;
    Tb_PVPVCMS7: TFloatField;
    Tb_PVPVDESCF: TFloatField;
    Tb_PVPVDIASDESCF: TFloatField;
    Tb_PVPVFINPRM: TFloatField;
    Tb_PVPVACTD: TFloatField;
    Tb_PVPVACT00: TFloatField;
    Tb_PVPVACT01: TFloatField;
    Tb_PVPVACT99: TFloatField;
    Tb_PVPVTPDESF: TFloatField;
    Tb_PVPVPPORI: TFloatField;
    Tb_PO99: TQuery;
    Src_PO99: TDataSource;
    Tb_PO99POCODEMP: TFloatField;
    Tb_PO99POCHAVE: TFloatField;
    Tb_PO99POPRAZO: TFloatField;
    Tb_Ped01P1TABPV: TStringField;
    Tb_PF1PF1TABPV: TStringField;
    Tb_Ped01VP1VTABPV: TStringField;
    Tb_Pf1VPF1VTABPV: TStringField;
    Tb_Ped02SP2SPDESCF: TFloatField;
    Tb_Ped02SP2SVDESCF: TFloatField;
    Tb_Ped01VP1VDESCF: TFloatField;
    Tb_Ped01VP1VDTDESCF: TDateTimeField;
    Tb_PVPVTPP: TFloatField;
    Tb_Ped01P1PVTC: TFloatField;
    Tb_Ped01P1PVCOM: TFloatField;
    Tb_Ped01P1PVACTD: TFloatField;
    Tb_Ped01P1PVACT00: TFloatField;
    Tb_Ped01P1PVACT01: TFloatField;
    Tb_Ped01P1PVACT99: TFloatField;
    Tb_Ped01P1PVTDC: TFloatField;
    Tb_Ped01P1PVDES: TFloatField;
    Tb_Ped01P1PVTPD1: TFloatField;
    Tb_Ped01P1PVDES1: TFloatField;
    Tb_Ped01P1PVTPD2: TFloatField;
    Tb_Ped01P1PVDES2: TFloatField;
    Tb_Ped01P1PVTPDESF: TFloatField;
    Tb_Ped01P1PVDESCF: TFloatField;
    Tb_Ped01P1PVDIASDESCF: TFloatField;
    Tb_Ped01P1PVDDESCF: TFloatField;
    Tb_Ped01P1TPP: TFloatField;
    Tb_Ped02SP2SVCOMIS: TFloatField;
    Tb_Ped01P1PRAZO: TFloatField;
    Tb_Ped01P1DESCFIN: TFloatField;
    Tb_PargerPUFOLHA: TFloatField;
    Tb_PargerPUPMC: TFloatField;
    Tb_PenPEDATA: TDateTimeField;
    Tb_PenPECODCLI: TFloatField;
    Tb_PenPECODVEN: TFloatField;
    Tb_PargerPPVPED: TFloatField;
    Tb_FuncaoPREVTAB: TFloatField;
    Tb_Pro2PDCOMIS: TFloatField;
    Tb_Pro2PDSEMCOM: TFloatField;
    Tb_Pro2PDPRZVAL: TFloatField;
    Tb_Pro2PDUCPR: TFloatField;
    Tb_Pro2PDCODUSR: TFloatField;
    Tb_Pro2PDDTALT: TDateTimeField;
    Tb_Pro2PDHRALT: TStringField;
    Tb_Pro2PDPMC: TFloatField;
    Tb_Pro2PDDESC1: TFloatField;
    Tb_Pro2PDDESC1A: TFloatField;
    Tb_Pro2PDDESC2: TFloatField;
    Tb_Pro2PDDESC3: TFloatField;
    Tb_Pro2PDQTDP: TFloatField;
    Tb_Pro2PDPRAZO: TFloatField;
    Tb_Pro2PDDESFIN: TFloatField;
    Tb_Pro2PDCURVA: TStringField;
    Tb_Pro2PDSALDO: TFloatField;
    Tb_ECFCFSERIE: TStringField;
    Tb_ECFCFARRED: TFloatField;
    Tb_CliCCODEMP: TFloatField;
    Tb_CliCCODCLI: TFloatField;
    Tb_CliCTPLOG: TStringField;
    Tb_CliCLOG: TStringField;
    Tb_CliCNUM: TStringField;
    Tb_CliCCOMPL: TStringField;
    Tb_CliCBAIRRO: TStringField;
    Tb_CliCCIDADE: TStringField;
    Tb_CliCUF: TStringField;
    Tb_CliCCODBAI: TFloatField;
    Tb_CliCCODLOC: TFloatField;
    Tb_CliCCEP: TStringField;
    Tb_CliCCELULAR: TStringField;
    Tb_CliCFONERES: TStringField;
    Tb_CliCFONECOM: TStringField;
    Tb_CliCDTCAD: TDateTimeField;
    Tb_CliCRG: TStringField;
    Tb_CliCCPF: TFloatField;
    Tb_CliCCNPJ: TFloatField;
    Tb_CliCIE: TStringField;
    Tb_CliCPONTOR: TStringField;
    Tb_CliCLCRED: TFloatField;
    Tb_CliCTABPV: TStringField;
    Tb_CliCCODPV: TFloatField;
    Tb_CliCCODVEN: TFloatField;
    Tb_CliCCODV02: TFloatField;
    Tb_CliCCODV03: TFloatField;
    Tb_CliCCODCV: TFloatField;
    Tb_CliCSTATUS: TFloatField;
    Tb_CliCALIQA: TFloatField;
    Tb_CliCALIQB: TFloatField;
    Tb_CliCCONSF: TFloatField;
    Tb_CliCICMSR: TFloatField;
    Tb_CliCLIM1: TStringField;
    Tb_CliCLIM2: TStringField;
    Tb_CliCNALV: TStringField;
    Tb_CliCDTVALV: TDateTimeField;
    Tb_CliCNANVISA: TStringField;
    Tb_CliCDTANVISA: TDateTimeField;
    Tb_CliCICMSRP: TFloatField;
    Tb_CliCIPI: TFloatField;
    Tb_CliCICMSTP: TFloatField;
    Tb_CliCREPAS: TFloatField;
    Tb_CliCCOMIS: TFloatField;
    Tb_CliCDESC: TFloatField;
    Tb_CliCEMAIL: TStringField;
    Tb_CliCNOMCON: TStringField;
    Tb_CliCFONCON: TStringField;
    Tb_CliCHOME: TStringField;
    Tb_CliCCODRED: TFloatField;
    Tb_CliCCODCCD: TStringField;
    Tb_CliCCODCCC: TStringField;
    Tb_CliCCODDEPD: TStringField;
    Tb_CliCCODDEPC: TStringField;
    Tb_CliCDESCMVD: TStringField;
    Tb_CliCDESCMVC: TStringField;
    Tb_CliCCODUSR: TFloatField;
    Tb_CliCDTALT: TDateTimeField;
    Tb_CliCDTUCPR: TDateTimeField;
    Tb_CliCDTPCPR: TDateTimeField;
    Tb_CliCHRALT: TStringField;
    Tb_MI01: TQuery;
    Tb_MI01CMCODIMP: TFloatField;
    Tb_MI01CMCODEMP: TFloatField;
    Tb_MI01CMDATA: TDateTimeField;
    Tb_MI01CMCONRED: TFloatField;
    Tb_MI01CMCOO: TFloatField;
    Tb_MI01CMVDABRUT: TFloatField;
    Tb_MI01CMVDALIQ: TFloatField;
    Tb_MI01CMCUPCAN: TFloatField;
    Tb_MI01CMACRECUP: TFloatField;
    Tb_MI01CMDESCUP: TFloatField;
    Tb_MI01CMISSCUP: TFloatField;
    Tb_MI01CMISENTAS: TFloatField;
    Tb_MI01CMNAOINC: TFloatField;
    Tb_MI01CMSUBTRI: TFloatField;
    Tb_MI01nomeimp: TStringField;
    Src_MI01: TDataSource;
    Src_MI02: TDataSource;
    Tb_MI02: TQuery;
    Tb_MI02CM2CODEMP: TFloatField;
    Tb_MI02CM2CODIMP: TFloatField;
    Tb_MI02CM2DATA: TDateTimeField;
    Tb_MI02CM2ALIQ: TFloatField;
    Tb_MI02CM2VALOR: TFloatField;
    Tb_EmpFONERES: TStringField;
    Tb_NsNSCODECF: TFloatField;
    Tb_Ped01P1CODECF: TFloatField;
    Tb_CliCTIPOC: TFloatField;
    Tb_PargerPECFDIR: TFloatField;
    Tb_ParFon: TQuery;
    Tb_ParFonPFCODEMP: TFloatField;
    Tb_ParFonPFNOMTER: TStringField;
    Tb_ParFonPFNOMFOR: TStringField;
    Tb_ParFonPFNOMCOM: TStringField;
    Tb_ParFonPFNOMFON: TStringField;
    Tb_ParFonPFTAMFON: TFloatField;
    Tb_ParFonPFCORFON: TFloatField;
    Tb_ParFonPFMENS: TStringField;
    Tb_ParFonPFMTIPO: TFloatField;
    Src_ParFon: TDataSource;
    Tb_CliCTPPESSOA: TFloatField;
    Tb_NsNSSITCUP: TFloatField;
    Tb_ParFonPFCORFUN: TFloatField;
    Tb_Ped01P1VLRACRE: TFloatField;
    Tb_CliCOBS01: TStringField;
    Tb_CliCOBS02: TStringField;
    Tb_CliCOBS03: TStringField;
    Tb_CliCOBS04: TStringField;
    Tb_PargerPDUPTIP1: TFloatField;
    Tb_PargerPDUPTIP2: TFloatField;
    Tb_PargerPDUPTIP3: TFloatField;
    Tb_PargerPDUPTIP4: TFloatField;
    Tb_PargerPDUPTIP5: TFloatField;
    Tb_PargerPDUPTIP6: TFloatField;
    Tb_PargerPDUPTIP7: TFloatField;
    Tb_PargerPDUPTIP8: TFloatField;
    Tb_PargerPDUPTIP9: TFloatField;
    Tb_PargerPDESTTIP1: TFloatField;
    Tb_PargerPDESTTIP2: TFloatField;
    Tb_PargerPDESTTIP3: TFloatField;
    Tb_PargerPDESTTIP4: TFloatField;
    Tb_PargerPDESTTIP5: TFloatField;
    Tb_PargerPDESTTIP6: TFloatField;
    Tb_PargerPDESTTIP7: TFloatField;
    Tb_PargerPDESTTIP8: TFloatField;
    Tb_PargerPDESTTIP9: TFloatField;
    Tb_Ped01P1PEDORI1: TStringField;
    Tb_Ped01P1PEDORI2: TStringField;
    Tb_Ped01P1MOTIVO: TStringField;
    U_PLDR: TUpdateSQL;
    U_Aju: TUpdateSQL;
    U_Bai: TUpdateSQL;
    Tb_BcoBCCODEMP: TFloatField;
    Tb_BcoBCCODBCO: TFloatField;
    Tb_BcoBCBANCO: TStringField;
    Tb_BcoBCCONT: TStringField;
    Tb_BcoBCFONE: TStringField;
    Tb_BcoBCCODAGE: TStringField;
    Tb_BcoBCDIGAGE: TStringField;
    Tb_BcoBCNOMAGE: TStringField;
    Tb_BcoBCNUMCON: TStringField;
    Tb_BcoBCDIGCON: TStringField;
    Tb_BcoBCCODCAR: TStringField;
    Tb_BcoBCINST01: TStringField;
    Tb_BcoBCNUMBOL: TFloatField;
    Tb_BcoBCINST02: TStringField;
    Tb_BcoBCINST03: TStringField;
    Tb_BcoBCINST04: TStringField;
    Tb_BcoBCCODCED: TStringField;
    Tb_BcoBCDIGCED: TStringField;
    Tb_BcoBCNUMBCO: TFloatField;
    Tb_BcoBCDIGNCO: TStringField;
    Tb_BcoBCSALDO: TFloatField;
    Tb_BcoBCSALDOI: TFloatField;
    Tb_BcoBCCH_IV: TFloatField;
    Tb_BcoBCCH_VL: TFloatField;
    Tb_BcoBCCH_VC: TFloatField;
    Tb_BcoBCCH_IEXL1: TFloatField;
    Tb_BcoBCCH_EXL1L: TFloatField;
    Tb_BcoBCCH_EXL1C: TFloatField;
    Tb_BcoBCCH_EXL1T: TFloatField;
    Tb_BcoBCCH_IEXL2: TFloatField;
    Tb_BcoBCCH_EXL2L: TFloatField;
    Tb_BcoBCCH_EXL2C: TFloatField;
    Tb_BcoBCCH_EXL2T: TFloatField;
    Tb_BcoBCCH_INOM: TFloatField;
    Tb_BcoBCCH_NOML: TFloatField;
    Tb_BcoBCCH_NOMC: TFloatField;
    Tb_BcoBCCH_ICID: TFloatField;
    Tb_BcoBCCH_CIDL: TFloatField;
    Tb_BcoBCCH_CIDC: TFloatField;
    Tb_BcoBCCH_IDIA: TFloatField;
    Tb_BcoBCCH_DIAL: TFloatField;
    Tb_BcoBCCH_DIAC: TFloatField;
    Tb_BcoBCCH_IMES: TFloatField;
    Tb_BcoBCCH_MESL: TFloatField;
    Tb_BcoBCCH_MESC: TFloatField;
    Tb_BcoBCCH_IANO: TFloatField;
    Tb_BcoBCCH_ANOL: TFloatField;
    Tb_BcoBCCH_ANOC: TFloatField;
    Tb_BcoBCCH_IBOMP: TFloatField;
    Tb_BcoBCCH_BOMPL: TFloatField;
    Tb_BcoBCCH_BOMPC: TFloatField;
    Tb_BcoBCCH_QTDLC: TFloatField;
    Tb_BcoBCCH_QTDLP: TFloatField;
    Tb_BcoBCB_LOCP: TStringField;
    Tb_BcoBCB_ESPD: TStringField;
    Tb_BcoBCB_ACEITE: TStringField;
    Tb_BcoBCB_QTDLP: TFloatField;
    Tb_BcoBCB_QTDL: TFloatField;
    Tb_BcoBCB_ILP: TFloatField;
    Tb_BcoBCB_LPL: TFloatField;
    Tb_BcoBCB_LPC: TFloatField;
    Tb_BcoBCB_IVC: TFloatField;
    Tb_BcoBCB_VCL: TFloatField;
    Tb_BcoBCB_VCC: TFloatField;
    Tb_BcoBCB_IDE: TFloatField;
    Tb_BcoBCB_DEL: TFloatField;
    Tb_BcoBCB_DEC: TFloatField;
    Tb_BcoBCB_IND: TFloatField;
    Tb_BcoBCB_NDL: TFloatField;
    Tb_BcoBCB_NDC: TFloatField;
    Tb_BcoBCB_IED: TFloatField;
    Tb_BcoBCB_EDL: TFloatField;
    Tb_BcoBCB_EDC: TFloatField;
    Tb_BcoBCB_IAC: TFloatField;
    Tb_BcoBCB_ACL: TFloatField;
    Tb_BcoBCB_ACC: TFloatField;
    Tb_BcoBCB_IDP: TFloatField;
    Tb_BcoBCB_DPL: TFloatField;
    Tb_BcoBCB_DPC: TFloatField;
    Tb_BcoBCB_IEM: TFloatField;
    Tb_BcoBCB_EML: TFloatField;
    Tb_BcoBCB_EMC: TFloatField;
    Tb_BcoBCB_IQM: TFloatField;
    Tb_BcoBCB_QML: TFloatField;
    Tb_BcoBCB_QMC: TFloatField;
    Tb_BcoBCB_IVM: TFloatField;
    Tb_BcoBCB_VML: TFloatField;
    Tb_BcoBCB_VMC: TFloatField;
    Tb_BcoBCB_IVD: TFloatField;
    Tb_BcoBCB_VDL: TFloatField;
    Tb_BcoBCB_VDC: TFloatField;
    Tb_BcoBCB_ITI: TFloatField;
    Tb_BcoBCB_TIL: TFloatField;
    Tb_BcoBCB_TIC: TFloatField;
    Tb_BcoBCB_IDS: TFloatField;
    Tb_BcoBCB_DSL: TFloatField;
    Tb_BcoBCB_DSC: TFloatField;
    U_Bco: TUpdateSQL;
    U_Cac: TUpdateSQL;
    U_Cal: TUpdateSQL;
    U_Cb01: TUpdateSQL;
    U_Cb02: TUpdateSQL;
    U_CCU: TUpdateSQL;
    U_CFO: TUpdateSQL;
    U_Chq: TUpdateSQL;
    U_CI: TUpdateSQL;
    U_ComD: TUpdateSQL;
    U_Contato: TUpdateSQL;
    U_CP: TUpdateSQL;
    U_CPFor: TUpdateSQL;
    U_CSF: TUpdateSQL;
    U_Cus: TUpdateSQL;
    U_Cus2: TUpdateSQL;
    U_CV: TUpdateSQL;
    U_Dar: TUpdateSQL;
    U_Dep_Ldr: TUpdateSQL;
    U_ECF: TUpdateSQL;
    U_Emp: TUpdateSQL;
    U_Est: TUpdateSQL;
    U_For: TUpdateSQL;
    U_Funcao: TUpdateSQL;
    U_Gen: TUpdateSQL;
    U_GPro: TUpdateSQL;
    U_Gru: TUpdateSQL;
    Tb_GruGRCODEMP: TFloatField;
    Tb_GruGRCODGRU: TFloatField;
    Tb_GruGRNOME: TStringField;
    U_IDV: TUpdateSQL;
    U_JD01: TUpdateSQL;
    U_JD02: TUpdateSQL;
    U_LC2: TUpdateSQL;
    U_LDR: TUpdateSQL;
    U_LGC: TUpdateSQL;
    U_Loc: TUpdateSQL;
    U_NE: TUpdateSQL;
    U_NS: TUpdateSQL;
    U_MI01: TUpdateSQL;
    U_MI02: TUpdateSQL;
    U_ParFon: TUpdateSQL;
    U_ParGer: TUpdateSQL;
    U_Ped01: TUpdateSQL;
    U_Ped01D: TUpdateSQL;
    U_Ped01V: TUpdateSQL;
    U_Ped02: TUpdateSQL;
    U_Ped02D: TUpdateSQL;
    U_Ped02S: TUpdateSQL;
    U_Pen: TUpdateSQL;
    U_PF1: TUpdateSQL;
    U_PF1V: TUpdateSQL;
    U_PF2: TUpdateSQL;
    U_PGen: TUpdateSQL;
    U_PO99: TUpdateSQL;
    U_Pro: TUpdateSQL;
    U_PV: TUpdateSQL;
    U_Red: TUpdateSQL;
    U_Tab: TUpdateSQL;
    U_TCA: TUpdateSQL;
    U_TCon: TUpdateSQL;
    U_TDV: TUpdateSQL;
    U_TDVCA: TUpdateSQL;
    U_TDVFT: TUpdateSQL;
    U_TPro: TUpdateSQL;
    U_Tra: TUpdateSQL;
    U_UF: TUpdateSQL;
    U_Ven: TUpdateSQL;
    Tb_ProPDCODEMP: TFloatField;
    Tb_ProPDCODPRO: TFloatField;
    Tb_ProPDCODBAR: TFloatField;
    Tb_ProPDNOME2: TStringField;
    Tb_ProPDMARCA: TStringField;
    Tb_ProPDNIVEL: TFloatField;
    Tb_ProPDCODFOR: TFloatField;
    Tb_ProPDPRECO1: TFloatField;
    Tb_ProPDPRECO2: TFloatField;
    Tb_ProPDPRECO3: TFloatField;
    Tb_ProPDPMC: TFloatField;
    Tb_ProPDPRECOA1: TFloatField;
    Tb_ProPDPRECOA2: TFloatField;
    Tb_ProPDPRECOA3: TFloatField;
    Tb_ProPDDESC1: TFloatField;
    Tb_ProPDDESC1A: TFloatField;
    Tb_ProPDDESC2: TFloatField;
    Tb_ProPDDESC3: TFloatField;
    Tb_ProPDQTDP: TFloatField;
    Tb_ProPDPRAZO: TFloatField;
    Tb_ProPDDESFIN: TFloatField;
    Tb_ProPDSIT: TStringField;
    Tb_ProPDDTUATP1: TDateTimeField;
    Tb_ProPDUSRALT1: TFloatField;
    Tb_ProPDDTUATP2: TDateTimeField;
    Tb_ProPDUSRALT2: TFloatField;
    Tb_ProPDDTUATP3: TDateTimeField;
    Tb_ProPDUSRALT3: TFloatField;
    Tb_ProPDDATAUA: TDateTimeField;
    Tb_ProPDUND: TStringField;
    Tb_ProPDCURVA: TStringField;
    Tb_ProPDCODGRU: TFloatField;
    Tb_ProPDCODCON: TFloatField;
    Tb_ProPDCODRAM: TFloatField;
    Tb_ProPDCODTIP: TFloatField;
    Tb_ProPDESTMAX: TFloatField;
    Tb_ProPDESTMIN: TFloatField;
    Tb_ProPDFRACAO: TFloatField;
    Tb_ProPDLISTA: TFloatField;
    Tb_ProPDPRECOC: TFloatField;
    Tb_ProPDPCOMC: TFloatField;
    Tb_ProPDPCOFAB: TFloatField;
    Tb_ProPDSTATUS: TFloatField;
    Tb_ProPDTABICM: TStringField;
    Tb_ProPDIPI: TFloatField;
    Tb_ProPDREGMS: TStringField;
    Tb_ProPDCLAS: TStringField;
    Tb_ProPDSECAO: TStringField;
    Tb_ProPDEMBPAD: TFloatField;
    Tb_ProPDEMBMUL: TFloatField;
    Tb_ProPDCOMIS: TFloatField;
    Tb_ProPDSEMCOM: TFloatField;
    Tb_ProPDPRZVAL: TFloatField;
    Tb_ProPDUCPR: TFloatField;
    Tb_ProPDCODUSR: TFloatField;
    Tb_ProPDSALDO: TFloatField;
    Tb_ProPDDTALT: TDateTimeField;
    Tb_ProPDHRALT: TStringField;
    Tb_ProPDEMBPAD2: TStringField;
    Tb_PargerPCASIND: TFloatField;
    Tb_PargerPINDUSTRIA: TFloatField;
    Tb_ProPDCODPROC: TFloatField;
    Tb_PargerPPUZERO: TFloatField;
    Tb_DarCRNFACUM: TStringField;
    Tb_PargerPAGRUDUP: TFloatField;
    Tb_DarCRTOTNF: TFloatField;
    Tb_LDRcdatareal: TStringField;
    U_PV2: TUpdateSQL;
    Src_PV2: TDataSource;
    Tb_PV2: TQuery;
    Tb_PV2PV2CODEMP: TFloatField;
    Tb_PV2PV2CODTIP: TStringField;
    Tb_PV2PV2CODPV: TFloatField;
    Tb_PV2PV2PRAZO: TFloatField;
    Tb_PF1PF1DATAENT: TDateTimeField;
    Tb_Ped02SP2SDESCRAT: TFloatField;
    Tb_PargerPDTAMUBKP: TFloatField;
    Tb_PGennomedcb: TStringField;
    Tb_EmpFUNCAORES: TStringField;
    Tb_EmpINSCMUNIC: TStringField;
    Tb_EmpCERTREG: TStringField;
    Tb_EmpAUTFUNC: TStringField;
    Tb_EmpAUTESP: TStringField;
    Tb_EmpALVFUNC: TStringField;
    Tb_Ped01P1NUMVIS: TStringField;
    Tb_Ped01P1DATVIS: TDateTimeField;
    Tb_CliCSITCLI: TFloatField;
    Tb_EmpJUCEG: TStringField;
    Tb_Dardenomcli: TStringField;
    Tb_CPdenom: TStringField;
    Tb_ProPDPROALT: TFloatField;
    Tb_LC1LC1_CODVEN: TFloatField;
    Tb_LC1nomven: TStringField;
    Tb_Ped02nompro: TStringField;
    Tb_Ped01P1SITPED: TFloatField;
    Query3: TQuery;
    Query4: TQuery;
    Tb_PargerPANOTUNI: TFloatField;
    Tb_Ped01P1TOTDI01: TFloatField;
    Tb_Ped01P1TOTDI02: TFloatField;
    Tb_Ped01P1TOTDIVL: TFloatField;
    Tb_PargerPECFCAI: TFloatField;
    Tb_PargerPEXTRACUS: TFloatField;
    Tb_PargerPUPALNUM: TFloatField;
    Tb_PargerPPALNUM: TStringField;
    Tb_ProPDNOMFOR: TStringField;
    Tb_ProPDNOMPROC: TStringField;
    Tb_ProPDNOMGRU: TStringField;
    Tb_ProPDNOMCON: TStringField;
    Tb_ProPDNOMRAM: TStringField;
    Tb_ProPDNOMTIP: TStringField;
    Tb_ProPDNOMPROALT: TStringField;
    Tb_ProPDDTULTSAI: TDateTimeField;
    Tb_ProPDDTULTENT: TDateTimeField;
    Tb_Propco_custo: TStringField;
    Tb_PargerPEXTRAMEN: TFloatField;
    Tb_PargerPONCHAGEPRO: TFloatField;
    Tb_Ped01P1DATDOC: TDateTimeField;
    Tb_Ped01P1EMIDOC: TFloatField;
    Tb_PF2PF2DESCRAT: TFloatField;
    Tb_CVCVCODBAI: TFloatField;
    Tb_CVCVCODLOC: TFloatField;
    Tb_CVCVTABPV: TStringField;
    Tb_EmpCONTADOR: TStringField;
    Tb_EmpCRC_CONTADOR: TStringField;
    Tb_ProPDPESOB: TFloatField;
    Tb_ProPDPESOL: TFloatField;
    Tb_CliCNCONV: TStringField;
    Tb_CliCDTUREN: TDateTimeField;
    Tb_CliCACCOM: TFloatField;
    Tb_Ped01P1ACRECONV: TFloatField;
    Tb_Ped01P1ACREGER: TFloatField;
    Tb_Ped01P1NAUT: TStringField;
    Tb_Ped01P1PACRECONV: TFloatField;
    Tb_Ped01P1PACREGER: TFloatField;
    Tb_PargerPCLIOINF: TFloatField;
    Tb_PargerPACREGER: TFloatField;
    Tb_ProPDVDAMAXM: TFloatField;
    Tb_EstCEENTPEN: TFloatField;
    Tb_Ped02SP2SPCOCUS: TFloatField;
    Tb_EmpRAZAO_CAB: TStringField;
    Query5: TQuery;
    Tb_PargerPECFSOLCOD: TFloatField;
    Tb_PargerPECFFECCOM: TFloatField;
    Tb_Ped01P1CODDEP: TFloatField;
    Tb_PargerPCASPUIND: TFloatField;
    Tb_ECF_FP: TQuery;
    U_ECF_FP: TUpdateSQL;
    Src_ECF_FP: TDataSource;
    Tb_ECF_FPFPECODEMP: TFloatField;
    Tb_ECF_FPFPECODIGO: TFloatField;
    Tb_ECF_FPFPEFORMA: TStringField;
    Tb_ECF_FPFPECODECF: TFloatField;
    Tb_PargerPTITAGER: TStringField;
    Tb_PargerPCRITCNPJ: TFloatField;
    Tb_PargerPCRITIE: TFloatField;
    Tb_CPCANOSNUM: TStringField;
    Tb_PF1PF1DTPFAT: TDateTimeField;
    Tb_PF1PF1DTPENT: TDateTimeField;
    Tb_PF1PF1PERCFRE: TFloatField;
    Tb_PF1PF1FRETEPC: TFloatField;
    Tb_Pf1VPF1VDESCF: TFloatField;
    Tb_Pf1VPF1VDTDESCF: TDateTimeField;
    Tb_PF1PF1CONDPAG: TStringField;
    Tb_EmpFANTASIA_CAB: TStringField;
    Tb_LDRCOMPENS: TFloatField;
    Tb_Ped01P1CODCV: TFloatField;
    Tb_Ped01P1LOTEDM: TFloatField;
    Tb_Ped01P1NPEDORI: TFloatField;
    Tb_NsNSTOTOUT: TFloatField;
    Tb_Ped01P1TOTOUT: TFloatField;
    Tb_PargerPFSM: TFloatField;
    Tb_PF1PF1PIPIFRETE: TFloatField;
    Tb_PF1PF1IPIFRETE: TFloatField;
    Tb_NENEIPIFRETE: TFloatField;
    Tb_PargerPLCVM: TFloatField;
    Tb_PVPVCOM02: TFloatField;
    Tb_PVPVCOM03: TFloatField;
    Tb_Ped01VP1VCOM02: TFloatField;
    Tb_Ped01VP1VCOM03: TFloatField;
    Tb_Ped02SP2SVCOM02: TFloatField;
    Tb_Ped02SP2SVCOM03: TFloatField;
    Tb_Ped01P1COMV02: TFloatField;
    Tb_Ped01P1COMV03: TFloatField;
    Tb_Ped01P1PVCOM02: TFloatField;
    Tb_Ped01P1PVCOM03: TFloatField;
    Tb_DarCRCOMV02: TFloatField;
    Tb_DarCRCOMV03: TFloatField;
    Tb_DarCRLOTCV02: TFloatField;
    Tb_DarCRLOTCV03: TFloatField;
    Tb_CliCCEPC: TStringField;
    Tb_CliCENDERC: TStringField;
    Tb_CliCCODBAIC: TFloatField;
    Tb_CliCBAIRROC: TStringField;
    Tb_CliCCODLOCC: TFloatField;
    Tb_CliCCIDADEC: TStringField;
    Tb_CliCUFC: TStringField;
    Tb_PargerPFORMACE: TFloatField;
    Tb_Ped01P1FORMACE: TFloatField;
    Tb_Nsuf: TStringField;
    Tb_PargerPMANDATCXBX: TFloatField;
    Tb_ProPDDATCAD: TDateTimeField;
    Tb_BcoBCLOGO: TBlobField;
    Tb_PNF: TQuery;
    U_PNF: TUpdateSQL;
    Src_PNF: TDataSource;
    Tb_PNFPNCODEMP: TFloatField;
    Tb_PNFPNCHAVE: TFloatField;
    Tb_PNFPNORDEM: TFloatField;
    Tb_PNFPNLINHA: TFloatField;
    Tb_PNFPNOBS: TStringField;
    Tb_Ped01P1MINUTA: TFloatField;
    Tb_Ped01P1SITCPR: TFloatField;
    Tb_DarCRCODV02: TFloatField;
    Tb_DarCRCODV03: TFloatField;
    Tb_Ped01P1LOTCV02: TFloatField;
    Tb_Ped01P1LOTCV03: TFloatField;
    Tb_Min2: TQuery;
    Tb_Min2CM2CODEMP: TFloatField;
    Tb_Min2CM2CODMIN: TFloatField;
    Tb_Min2CM2SEQ: TFloatField;
    Tb_Min2CM2TIPO: TStringField;
    Tb_Min2CM2NUMERO: TFloatField;
    Tb_Min2CM2VALOR: TFloatField;
    Tb_Min2CM2DTCONF: TDateTimeField;
    Tb_Min2CM2USRCONF: TFloatField;
    U_Min2: TUpdateSQL;
    Src_Min2: TDataSource;
    Src_Min1: TDataSource;
    U_Min1: TUpdateSQL;
    Tb_Min1: TQuery;
    Tb_PargerPCADCLITAXC: TFloatField;
    Tb_Min2CM2CLIFOR: TStringField;
    Tb_Min2CM2CODIGO: TFloatField;
    Tb_Min2CM2TIPDOC: TStringField;
    Tb_Min2CM2NUMDOC: TFloatField;
    Tb_Min2CM2OBS01: TStringField;
    Tb_Min2CM2OBS02: TStringField;
    Tb_Min2CM2OBS03: TStringField;
    Tb_EmpFECMEN: TFloatField;
    Tb_Prodiferenca: TFloatField;
    Tb_ProPDALTO: TFloatField;
    Tb_ProPDREST: TFloatField;
    Tb_ProPDBAIXO: TFloatField;
    Tb_DarCRCODCV: TFloatField;
    Tb_LDRNOMDEP: TStringField;
    Tb_LDRNOMBCO: TStringField;
    Tb_LDRNOMCCU: TStringField;
    Tb_LDRNOME: TStringField;
    Tb_CliCNOMVEN: TStringField;
    Tb_CliCNOMV02: TStringField;
    Tb_CliCNOMV03: TStringField;
    Tb_CliCNOMPLA: TStringField;
    Tb_CliCNOMCCD: TStringField;
    Tb_CliCNOMCCC: TStringField;
    Tb_CliCNOMDEPD: TStringField;
    Tb_CliCNOMRED: TStringField;
    Tb_CliCNOMDEPC: TStringField;
    Tb_Ped01P1LOTSEQ: TFloatField;
    Tb_Ped01P1CFO1: TStringField;
    Tb_Ped01P1CFO2: TStringField;
    Tb_LDRLOTSEQ: TFloatField;
    Tb_ProPDSTATUS02: TFloatField;
    Tb_DarCRLOTSEQ_CP: TFloatField;
    Tb_DarCRCODECF: TFloatField;
    Tb_Ped01DP1DLOTSEQ: TFloatField;
    Tb_NsNSLOTSEQ_CP: TFloatField;
    Tb_NENELOTSEQ_CP: TFloatField;
    Tb_PF1PF1LOTSEQ: TFloatField;
    Tb_Ped01VP1VLOTSEQ: TFloatField;
    Tb_Ped02DP2DLOTSEQ: TFloatField;
    Tb_PenPELOTSEQ: TFloatField;
    Tb_Pf1VPF1VLOTSEQ: TFloatField;
    Tb_PF2PF2LOTSEQ: TFloatField;
    Tb_PO99POLOTSEQ: TFloatField;
    Tb_DarCRLOTSEQ_LB: TFloatField;
    Tb_DarCRLOTSEQ_FC: TFloatField;
    Tb_DarCRLOTSEQ_CV: TFloatField;
    Tb_DarCRLOTSEQ_CV02: TFloatField;
    Tb_DarCRLOTSEQ_CV03: TFloatField;
    Tb_DarCRLOTSEQ_CS: TFloatField;
    Tb_DarCRLOTSEQ_CT: TFloatField;
    Tb_CPCALOTSEQ_CP: TFloatField;
    Tb_CPCALOTSEQ_LB: TFloatField;
    Tb_CPCALOTSEQ_FC: TFloatField;
    Tb_ChqCHLOTSEQ: TFloatField;
    Tb_ChqCHCODLDR: TFloatField;
    Tb_AjuAJLOTSEQ: TFloatField;
    Tb_CacCALOTSEQ: TFloatField;
    Tb_PargerPLS_NUMPED: TFloatField;
    Tb_PargerPLS_NUMPF: TFloatField;
    Tb_Ped01P1PEDORI: TFloatField;
    Tb_Ped01DP1DLS_OR: TFloatField;
    Tb_Ped02SP2SLOTSEQ: TFloatField;
    Tb_Ped02SP2SQTDDEV: TFloatField;
    Tb_Pennompro: TStringField;
    Tb_Penundpro: TStringField;
    Tb_Penmarca: TStringField;
    Tb_Pentotal: TFloatField;
    Tb_PargerPPERCPL: TFloatField;
    Tb_PargerPCALCPPRO: TFloatField;
    Tb_PVprazos: TStringField;
    Tb_PVPVBLQPRM: TFloatField;
    Tb_CliCBLQPRM: TFloatField;
    Tb_Ped01P1BLQPRM: TFloatField;
    Tb_PargerPBLQDEVOL: TFloatField;
    Tb_PargerPMPDISP: TFloatField;
    Tb_PargerPTIPOEXT: TFloatField;
    Tb_PargerPCRDOCSIG: TStringField;
    Tb_PargerPCRDOC: TFloatField;
    Tb_Pcus: TQuery;
    U_Pcus: TUpdateSQL;
    Src_Pcus: TDataSource;
    Tb_PcusPCCODIGO: TFloatField;
    Tb_PcusPCNOME: TStringField;
    Tb_PcusPCAPLS: TFloatField;
    Tb_PcusPCFATOR: TFloatField;
    Tb_PcusPCOPCIO: TFloatField;
    Tb_FP: TQuery;
    Tb_FPFPCODIGO: TFloatField;
    Tb_FPFPDESC: TStringField;
    Tb_FPFPTIPO: TFloatField;
    Tb_FPFPNUM: TFloatField;
    U_FP: TUpdateSQL;
    Src_FP: TDataSource;
    Tb_Cus2CUORIGEMPCO: TFloatField;
    Tb_LDRDATLAN: TDateTimeField;
    Tb_Ped01P1TOTDI03: TFloatField;
    Tb_Ped01P1VALDES01: TFloatField;
    Tb_Ped01P1VALDES02: TFloatField;
    Tb_DarCRTOTDI01: TFloatField;
    Tb_DarCRTOTDI02: TFloatField;
    Tb_DarCRTOTDI03: TFloatField;
    Tb_DarCRTOTDIVL: TFloatField;
    Tb_DarCRVALDES01: TFloatField;
    Tb_DarCRVALDES02: TFloatField;
    Tb_DarCRVLRDES: TFloatField;
    Tb_Ped01VP1VSEQ: TFloatField;
    Tb_Ped01VP1VTOTDI01: TFloatField;
    Tb_Ped01VP1VTOTDI02: TFloatField;
    Tb_Ped01VP1VTOTDI03: TFloatField;
    Tb_Ped01VP1VTOTDIVL: TFloatField;
    Tb_Ped01VP1VVALDES01: TFloatField;
    Tb_Ped01VP1VVALDES02: TFloatField;
    Tb_Ped01VP1VVLRDES: TFloatField;
    Tb_CliCCODTRA: TFloatField;
    Tb_CliCNOMTRA: TStringField;
    Tb_CliCICMSNOR: TFloatField;
    Tb_PF1PF1TEMBOL: TFloatField;
    Tb_CPCATEMBOL: TFloatField;
    Tb_PargerPQTDDIAV: TFloatField;
    Tb_BcoBCTARIFA: TFloatField;
    Tb_Ped01P1TARBAN: TFloatField;
    Tb_Ped01VP1VTARBAN: TFloatField;
    Tb_DarCRTARBAN: TFloatField;
    Tb_NsNSBCISSQN: TFloatField;
    Tb_NsNSVISSQN: TFloatField;
    Tb_Ped01P1PVTPD3: TFloatField;
    Tb_Ped01P1PVDES3: TFloatField;
    Tb_Bconometab: TStringField;
    Tb_PargerPDIASORCAT: TFloatField;
    Tb_NENEISENTAS: TFloatField;
    Tb_NENEFRETEPC: TFloatField;
    Tb_UFPCODEMP: TFloatField;
    Tb_UFPUF: TStringField;
    Tb_UFPNOM: TStringField;
    Tb_ProPDSALDOR: TFloatField;
    Tb_ProPDBAIXOR: TFloatField;
    Tb_ProPDALTOR: TFloatField;
    Tb_ProPDSALDOC: TFloatField;
    Tb_ProPDBAIXOC: TFloatField;
    Tb_ProPDALTOC: TFloatField;
    Tb_Proestoquec: TFloatField;
    Tb_EstCESALDOC: TFloatField;
    Tb_LGCCLQTDR: TFloatField;
    Tb_LGCCLQTDC: TFloatField;
    Tb_AjuAJESTMOV: TFloatField;
    Tb_PargerPCODMOE: TFloatField;
    Tb_DarCRDNOSNUM: TStringField;
    Tb_DarCRACEITE: TStringField;
    Tb_DarCRESPECIE: TStringField;
    Tb_PargerPLSEPCUPOM: TFloatField;
    Tb_DarCRCODBAR: TStringField;
    Tb_DarCRCODDIG: TStringField;
    Tb_NsNSSERIEECF: TStringField;
    Tb_NsNSCFOSER: TStringField;
    Tb_Ped01P1CFOSER: TStringField;
    Tb_ProPDCODNCM: TStringField;
    Tb_ECFCFDTULTMOV: TDateTimeField;
    Tb_ECFCFDTULTREDZ: TDateTimeField;
    Tb_PF2PF2PMC: TFloatField;
    Tb_PF2PF2VALDES: TFloatField;
    Tb_Ped01P1VALSEG: TFloatField;
    Tb_Ped01P1PDESCLIB: TFloatField;
    Tb_Ped01P1PDESCL_USR: TFloatField;
    Tb_UFPORG: TStringField;
    Tb_UFPDEP: TStringField;
    Tb_UFPEND: TStringField;
    Tb_UFPCID: TStringField;
    Tb_UFPBAN: TStringField;
    Tb_UFPCUF: TStringField;
    Tb_UFPCFOSER: TFloatField;
    Tb_UFPICMSNOR: TFloatField;
    Tb_UFPIESUB: TStringField;
    Tb_UFPICMSC: TFloatField;
    Tb_UFPICMSD: TFloatField;
    Tb_UFPIVAINA: TFloatField;
    Tb_UFPIVANEG: TFloatField;
    Tb_UFPIVAPOS: TFloatField;
    Tb_UFPREDUTRA: TFloatField;
    Tb_UFPREDUTRB: TFloatField;
    Tb_UFPREDUTNA: TFloatField;
    Tb_UFPREDUTNB: TFloatField;
    Tb_UFPREPAS: TFloatField;
    Tb_UFPBICMS: TStringField;
    Tb_UFPLIMINA1: TStringField;
    Tb_UFPLIMINA2: TStringField;
    Tb_UFPSEPTAB: TStringField;
    Tb_UFPTIPCAL: TStringField;
    Tb_UFPCALCRET: TFloatField;
    Tb_UFPTIPOPC: TFloatField;
    Tb_UFPTIPOPCO: TFloatField;
    Tb_UFPALISSQN: TFloatField;
    Tb_UFPCOMIS: TFloatField;
    Tb_UFPICMSA: TFloatField;
    Tb_UFPICMSB: TFloatField;
    Tb_UFPSTATUS: TFloatField;
    Tb_UFPCODUSR: TFloatField;
    Tb_UFPDTALT: TDateTimeField;
    Tb_UFPHRALT: TStringField;
    Tb_ECFCFSUP: TFloatField;
    Tb_ECFCFSANGRIA: TFloatField;
    Tb_ECFCFMAPARES: TFloatField;
    Tb_ECFCFFPGTO: TFloatField;
    Tb_PargerPDUPTIP10: TFloatField;
    Tb_PargerPDUPTIP11: TFloatField;
    Tb_PargerPDUPTIP12: TFloatField;
    Tb_PargerPDUPTIP13: TFloatField;
    Tb_PargerPDUPTIP14: TFloatField;
    Tb_PargerPDUPTIP15: TFloatField;
    Tb_PargerPDESTTIP10: TFloatField;
    Tb_PargerPDESTTIP11: TFloatField;
    Tb_PargerPDESTTIP12: TFloatField;
    Tb_PargerPDESTTIP13: TFloatField;
    Tb_PargerPDESTTIP14: TFloatField;
    Tb_PargerPDESTTIP15: TFloatField;
    Tb_PargerPFCORP_ACAB: TFloatField;
    Tb_PargerPFCORP_SERV: TFloatField;
    Tb_PargerPFCORP_MPR: TFloatField;
    Tb_PargerPFCORP_PP: TFloatField;
    Tb_PargerPFCORP_MP: TFloatField;
    Tb_PargerPFCORP_ISUM: TFloatField;
    Tb_PargerPFCORP_OUT: TFloatField;
    Tb_PargerPFCORP_VENC: TFloatField;
    Tb_PargerPFCORP_BLOQ: TFloatField;
    Tb_LDRDTCOMP: TDateTimeField;
    Tb_TDVCATCDETNCOL: TFloatField;
    Tb_TDVCATCDETICOL: TFloatField;
    Tb_TDVCATCDETTPCOL: TFloatField;
    Tb_LDRLOTMOV: TFloatField;
    Tb_BcoBCLOTMOV: TFloatField;
    Tb_Mov: TQuery;
    U_Mov: TUpdateSQL;
    Src_Mov: TDataSource;
    Tb_MovCMCODEMP: TFloatField;
    Tb_MovCMCAIXA: TFloatField;
    Tb_MovCMLOTE: TFloatField;
    Tb_MovCMDTABERTURA: TDateTimeField;
    Tb_MovCMDTENC: TDateTimeField;
    Tb_MovCMSTATUS: TFloatField;
    Tb_MovCMDTREABER: TDateTimeField;
    Tb_MovCMSALDOANT: TFloatField;
    Tb_MovCMCREDITO: TFloatField;
    Tb_MovCMDEBITOS: TFloatField;
    Tb_MovCMSALDO: TFloatField;
    Tb_MovCMCODUSR: TFloatField;
    Tb_MovCMDATINC: TDateTimeField;
    Tb_MovCMUSRALT: TFloatField;
    Tb_MovCMDATALT: TDateTimeField;
    Tb_MovCMHORALT: TStringField;
    Tb_NsNSMODECF: TStringField;
    Tb_ECFCFMODDOC: TStringField;
    Tb_ECFCFDADSINT: TFloatField;
    Tb_RSin01: TQuery;
    U_RSin01: TUpdateSQL;
    Src_RSin01: TDataSource;
    Tb_RSin01RSCODEMP: TFloatField;
    Tb_RSin01RSCODIMP: TFloatField;
    Tb_RSin01RSDATA: TDateTimeField;
    Tb_RSin01RSNSERIE: TStringField;
    Tb_RSin01RSSEQ: TFloatField;
    Tb_RSin01RSCRO: TFloatField;
    Tb_RSin01RSCREDZ: TFloatField;
    Tb_RSin01RSCOO_FINAL: TFloatField;
    Tb_RSin01RSCOO_INICIAL: TFloatField;
    Tb_RSin01RSCUPCAN: TFloatField;
    Tb_RSin01RSACRECUP: TFloatField;
    Tb_RSin01RSDESCUP: TFloatField;
    Tb_RSin01RSISSCUP: TFloatField;
    Tb_RSin01RSISENTAS: TFloatField;
    Tb_RSin01RSNAOINC: TFloatField;
    Tb_RSin01RSSUBTRI: TFloatField;
    Tb_RSin01RSVDABRUT: TFloatField;
    Tb_RSin01RSVDALIQ: TFloatField;
    Tb_RSin02: TQuery;
    Tb_RSin02RS2CODEMP: TFloatField;
    Tb_RSin02RS2CODIMP: TFloatField;
    Tb_RSin02RS2DATA: TDateTimeField;
    Tb_RSin02RS2ALIQ: TFloatField;
    Tb_RSin02RS2VALOR: TFloatField;
    U_RSin02: TUpdateSQL;
    Src_RSin02: TDataSource;
    Tb_RSin01nomeimp: TStringField;
    Tb_PargerPFATDPRO: TFloatField;
    Tb_CliCFAX: TStringField;
    Tb_PargerPUIMOBIL: TFloatField;
    Tb_PargerPUCONVEI: TFloatField;
    Tb_Ped01P1PROCESSO: TStringField;
    Tb_ProPDNOME: TStringField;
    Tb_PargerPTAMJPG: TFloatField;
    Tb_CliCFRETEPC: TFloatField;
    Tb_PargerPOCUEST: TFloatField;
    Tb_PargerPPPADATU: TFloatField;
    Tb_CliCPCOPRAT: TFloatField;
    Tb_ECFCFABERTSIS: TFloatField;
    Tb_PargerPDM_ENDIP: TStringField;
    Tb_PargerPDM_PORTA: TFloatField;
    Tb_TDVCATCAVANCAROD: TFloatField;
    Tb_ProPDCUSFAB: TFloatField;
    Tb_ProPDCUSENV: TFloatField;
    Tb_ProPDCUSFIN: TFloatField;
    Tb_CliCCH_FONE01: TStringField;
    Tb_CliCCH_FONE02: TStringField;
    Tb_CliCCH_CELULAR: TStringField;
    Tb_CliCCH_FONCON: TStringField;
    Tb_CliCCH_FAX: TStringField;
    Tb_MI01CMORDEM: TFloatField;
    Tb_MI01CMMODDOC: TStringField;
    Tb_MI01CMSERIE: TStringField;
    Tb_MI01CMCOO_FINAL: TFloatField;
    Tb_MI01CMCRO: TFloatField;
    Tb_MI01CMVDABACUM: TFloatField;
    Tb_MI01CMVDALACUM: TFloatField;
    Tb_NsNSCUPACRE: TFloatField;
    Tb_NsNSCUPDES: TFloatField;
    Tb_Ped01P1CUPACRE: TFloatField;
    Tb_Ped01P1CUPDES: TFloatField;
    Tb_LGCCLPRECO1: TFloatField;
    Tb_LGCCLPRECO2: TFloatField;
    Tb_LGCCLPRECO3: TFloatField;
    Tb_LGCCLPRECOA1: TFloatField;
    Tb_LGCCLPRECOA2: TFloatField;
    Tb_LGCCLPRECOA3: TFloatField;
    Tb_LGCCLESTMAX: TFloatField;
    Tb_LGCCLESTMIN: TFloatField;
    Tb_LGCCLPCUSTO: TFloatField;
    Tb_PargerPPCOGRA: TFloatField;
    Tb_LGCCLDTUATP1: TDateTimeField;
    Tb_LGCCLDTUATP2: TDateTimeField;
    Tb_LGCCLDTUATP3: TDateTimeField;
    Tb_Ped01P1LEMAT: TFloatField;
    Tb_NsNSLEMAT: TFloatField;
    Tb_DarCRLEMAT: TFloatField;
    Tb_CPCALEMAT: TFloatField;
    Tb_LDRLEMAT: TFloatField;
    Tb_PF1PF1LEMAT: TFloatField;
    Tb_ChqCHLEMAT: TFloatField;
    Tb_NENELEMAT: TFloatField;
    Tb_PF1PF1CODEMP_ORI: TFloatField;
    Tb_PF1PF1NUMPED_ORI: TFloatField;
    Tb_PF1PF1PAG_ORI: TFloatField;
    Tb_PargerPEXCFP_EXCPED: TFloatField;
    Tb_PargerPPEDFPGTO: TFloatField;
    Tb_ECF_FPFPEVINCULO: TStringField;
    Tb_AjuAJLEMAT: TFloatField;
    Tb_AjuAJUSREXC: TFloatField;
    Tb_AjuAJDATEXC: TDateTimeField;
    Tb_AjuAJHOREXC: TStringField;
    Tb_PargerPDUPCNPJ: TFloatField;
    Tb_Ped01P1DTACERTO: TDateTimeField;
    Tb_Ped01P1LTACERTO: TFloatField;
    Tb_EmpBLOQ: TFloatField;
    Tb_Min2CM2LOTSEQ: TFloatField;
    Tb_Min2CM2LOTSEQ_CP: TFloatField;
    Tb_Min2CM2QTDVOL: TFloatField;
    Tb_Min2CM2PESOB: TFloatField;
    Tb_Min2CM2PESOL: TFloatField;
    Tb_CliCCODASSE: TFloatField;
    Tb_CliCNOMASSE: TStringField;
    Tb_Ped01P1COMASSE: TFloatField;
    Tb_Ped01P1LOTCASSE: TFloatField;
    Tb_Ped01P1CODASSE: TFloatField;
    Tb_Ped01VP1VCOMASSE: TFloatField;
    Tb_DarCRCODASSE: TFloatField;
    Tb_DarCRCOMASSE: TFloatField;
    Tb_DarCRLOTSEQ_CASSE: TFloatField;
    Tb_DarCRLOTCASSE: TFloatField;
    Tb_PargerPCOMASSE: TFloatField;
    Tb_PargerPCONSPROPAD: TFloatField;
    Tb_PargerPLEITORPED: TFloatField;
    Tb_PargerPLEITORPF: TFloatField;
    Tb_PargerPLEITORAJU: TFloatField;
    Tb_PargerPDUPTIP16: TFloatField;
    Tb_PargerPDUPTIP18: TFloatField;
    Tb_PargerPDESTTIP16: TFloatField;
    Tb_PargerPDESTTIP17: TFloatField;
    Tb_PargerPDESTTIP18: TFloatField;
    Tb_PargerPDUPTIP17: TFloatField;
    Tb_Ped01P1QTDMAN: TFloatField;
    Tb_PargerPTRODCX: TFloatField;
    Tb_PargerPTROEMP100: TFloatField;
    Tb_ProPDUCODFOR: TFloatField;
    Tb_ProPDUNOMFOR: TStringField;
    Tb_PargerPPERCPLCX: TFloatField;
    Tb_PargerPPERCPLFARDO: TFloatField;
    Tb_PargerPPERCPLPCT: TFloatField;
    Tb_PargerPCODPROPADFAT: TFloatField;
    Tb_CliCREDICMSNOR: TFloatField;
    Tb_PargerPQTDCASARRED: TFloatField;
    Tb_TDVTCOND_CONT: TStringField;
    Tb_TDVTCOND_02_01: TStringField;
    Tb_TDVTCOND_02_01_TAB: TStringField;
    Tb_TDVTCOND_02_OP: TStringField;
    Tb_TDVTCOND_02_T2: TStringField;
    Tb_TDVTCOND_02_02: TStringField;
    Tb_TDVTCOND_02_02_TAB: TStringField;
    Tb_TDVTCOND_02_T1: TStringField;
    Qr_TDVCRTCOND_CONT: TStringField;
    Qr_TDVCRTCOND_02_01: TStringField;
    Qr_TDVCRTCOND_02_01_TAB: TStringField;
    Qr_TDVCRTCOND_02_OP: TStringField;
    Qr_TDVCRTCOND_02_T2: TStringField;
    Qr_TDVCRTCOND_02_02: TStringField;
    Qr_TDVCRTCOND_02_02_TAB: TStringField;
    Qr_TDVCRTCOND_02_T1: TStringField;
    Tb_Ped01P1ESPECIE: TStringField;
    Tb_DarCRINST01: TStringField;
    Tb_DarCRINST02: TStringField;
    Tb_DarCRINST03: TStringField;
    Tb_DarCRINST04: TStringField;
    Tb_Prodtaltpco1: TStringField;
    Tb_Prodtaltpco2: TStringField;
    Tb_Prodtaltpco3: TStringField;
    Tb_ProPDCODFAB: TStringField;
    Tb_Cus2CUPCOMIN: TFloatField;
    Tb_Cus2CUINCPCOMIN: TFloatField;
    Tb_PargerPMANPCUSFOR: TFloatField;
    Tb_CliCBLQEMP: TFloatField;
    Tb_CfoCFTPOPER: TFloatField;
    Tb_NsNSFRETEPC: TFloatField;
    Tb_Ped02DP2DGRADE: TStringField;
    Tb_DarCRQTDPARC: TFloatField;
    Tb_DarCRNUMPARC: TFloatField;
    Tb_ProPDSALDOT: TFloatField;
    Tb_ProPDALTOT: TFloatField;
    Tb_ProPDBAIXOT: TFloatField;
    Tb_EstCESALDOT: TFloatField;
    Tb_Proestoquet: TFloatField;
    Tb_PF1PF1ORIGEM: TFloatField;
    Tb_LGCCLQTDT: TFloatField;
    Tb_Ped01P1CANHOTO: TFloatField;
    Tb_UFPICMSFRETE: TFloatField;
    Tb_UFPICMSSEGURO: TFloatField;
    Tb_UFPICMSOUTDESP: TFloatField;
    Tb_UFPICMSIPI: TFloatField;
    Tb_Ped01P1ICMS_BCFRE: TFloatField;
    Tb_Ped01P1ICMS_ALFRE: TFloatField;
    Tb_Ped01P1ICMS_VLFRE: TFloatField;
    Tb_Ped01P1ICMS_BCSEG: TFloatField;
    Tb_Ped01P1ICMS_ALSEG: TFloatField;
    Tb_Ped01P1ICMS_VLSEG: TFloatField;
    Tb_Ped01P1ICMS_BCOUTD: TFloatField;
    Tb_Ped01P1ICMS_ALOUTD: TFloatField;
    Tb_Ped01P1ICMS_VLOUTD: TFloatField;
    Tb_Ped01P1ICMS_BCIPI: TFloatField;
    Tb_Ped01P1ICMS_ALIPI: TFloatField;
    Tb_Ped01P1ICMS_VLIPI: TFloatField;
    Tb_NsNSICMS_BCFRE: TFloatField;
    Tb_NsNSICMS_ALFRE: TFloatField;
    Tb_NsNSICMS_VLFRE: TFloatField;
    Tb_NsNSICMS_BCSEG: TFloatField;
    Tb_NsNSICMS_ALSEG: TFloatField;
    Tb_NsNSICMS_VLSEG: TFloatField;
    Tb_NsNSICMS_BCOUTD: TFloatField;
    Tb_NsNSICMS_ALOUTD: TFloatField;
    Tb_NsNSICMS_VLOUTD: TFloatField;
    Tb_NsNSICMS_BCIPI: TFloatField;
    Tb_NsNSICMS_ALIPI: TFloatField;
    Tb_NsNSICMS_VLIPI: TFloatField;
    Tb_NsNSFRETE: TFloatField;
    Tb_NsNSTARBAN: TFloatField;
    Tb_Ped01VP1VSEG: TFloatField;
    Tb_DarCRVALSEG: TFloatField;
    Tb_TDVTCCORTARDE: TFloatField;
    Tb_CliCALIQDEB: TFloatField;
    Tb_Ped01P1ALIQDEB: TFloatField;
    Qr_TDVCRTCCORTARDE: TFloatField;
    Qr_TDVCRTCOND_CONT03: TStringField;
    Qr_TDVCRTCOND_03_T1: TStringField;
    Qr_TDVCRTCOND_03_01: TStringField;
    Qr_TDVCRTCOND_03_01_TAB: TStringField;
    Qr_TDVCRTCOND_03_OP: TStringField;
    Qr_TDVCRTCOND_03_T2: TStringField;
    Qr_TDVCRTCOND_03_02: TStringField;
    Qr_TDVCRTCOND_03_02_TAB: TStringField;
    Tb_TDVTCOND_CONT03: TStringField;
    Tb_TDVTCOND_03_T1: TStringField;
    Tb_TDVTCOND_03_01: TStringField;
    Tb_TDVTCOND_03_01_TAB: TStringField;
    Tb_TDVTCOND_03_OP: TStringField;
    Tb_TDVTCOND_03_T2: TStringField;
    Tb_TDVTCOND_03_02: TStringField;
    Tb_TDVTCOND_03_02_TAB: TStringField;
    Tb_Ped01P1TOTCGRU: TFloatField;
    Tb_Ped01P1TOTSGRU: TFloatField;
    Tb_DarCRTOTCGRU: TFloatField;
    Tb_DarCRTOTSGRU: TFloatField;
    Tb_DarCRTBCOCOB: TFloatField;
    Tb_CliCOBS05: TStringField;
    Tb_CliCCODV04: TFloatField;
    Tb_CliCCOMIS02: TFloatField;
    Tb_CliCCOMIS03: TFloatField;
    Tb_CliCDTINC: TDateTimeField;
    Tb_CliCUSRLAT: TFloatField;
    Tb_CliCNOMV04: TStringField;
    Tb_CliCVSEG: TStringField;
    Tb_CliCVTER: TStringField;
    Tb_CliCVQUA: TStringField;
    Tb_CliCVQUI: TStringField;
    Tb_CliCVSEX: TStringField;
    Tb_CliCVSAB: TStringField;
    Tb_CliCVDOM: TStringField;
    Tb_CliCDEC5825: TFloatField;
    Tb_CliCDEC5834: TFloatField;
    Tb_CliCTARBAN: TFloatField;
    Tb_CliCCTARBAN: TFloatField;
    Tb_CliCCODBCO01: TFloatField;
    Tb_CliCCODBCO02: TFloatField;
    Tb_CliCNOMBCO01: TStringField;
    Tb_CliCNOMBCO02: TStringField;
    Tb_CliCNIVEL: TFloatField;
    Tb_CliCTIPCLI: TFloatField;
    Tb_CliCDTCCRED: TDateTimeField;
    Tb_CliCTPCCRED: TStringField;
    Tb_CliCVDAMEN: TFloatField;
    Tb_CliCCOTAMES: TFloatField;
    Tb_CliCALIQRTRIB: TFloatField;
    Tb_CliCLIMRTR: TStringField;
    Tb_CliCCODRAM: TFloatField;
    Tb_CliCNOMRAM: TStringField;
    Tb_CliCNOMCV: TStringField;
    Tb_CliCCOMIS04: TFloatField;
    Tb_ProPDPMC02: TFloatField;
    Tb_ProPDPMC03: TFloatField;
    Tb_PargerPME_TECLA01: TFloatField;
    Tb_PargerPME_TECLA02: TFloatField;
    Tb_PargerPME_TECLA03: TFloatField;
    Tb_PargerPME_TECLA04: TFloatField;
    Tb_PargerPCE_TECLA01: TFloatField;
    Tb_PargerPCE_TECLA02: TFloatField;
    Tb_PargerPCE_TECLA03: TFloatField;
    Tb_PargerPCE_TECLA04: TFloatField;
    Tb_TDVCATCFILEST: TFloatField;
    Tb_DarCREMIBOR: TFloatField;
    Tb_DarCRCHD_BANCO: TFloatField;
    Tb_DarCRCHD_AGENCIA: TStringField;
    Tb_DarCRCHD_CC: TStringField;
    Tb_DarCRCHD_NUMERO: TFloatField;
    Tb_DarCRTCB: TFloatField;
    Tb_DarCRCAUCAO: TFloatField;
    Tb_DarCRBCOCAU: TFloatField;
    Tb_DarCRDTCAU: TDateTimeField;
    Tb_DarCRSPC_DTPEN: TDateTimeField;
    Tb_DarCRSPC_DTNEG: TDateTimeField;
    Tb_DarCRSERASA_DTNEG: TDateTimeField;
    Tb_DarCRNR: TFloatField;
    Tb_DarCRCODV04: TFloatField;
    Tb_DarCRCOMV04: TFloatField;
    Tb_DarCRLOTSEQ_CV04: TFloatField;
    Tb_DarCRLOTCV04: TFloatField;
    Tb_DarCRTOTIPI: TFloatField;
    Tb_Ped01VP1VCOM04: TFloatField;
    Tb_Ped01P1CODV04: TFloatField;
    Tb_Ped01P1COMV04: TFloatField;
    Tb_Ped01P1LOTCV04: TFloatField;
    Tb_Ped01P1PVCOM04: TFloatField;
    Tb_Ped01VP1VTOTIPI: TFloatField;
    Tb_Ped01VP1VTOTCGRU: TFloatField;
    Tb_Ped01VP1VTOTSGRU: TFloatField;
    Tb_PargerPATIVARTODAS: TFloatField;
    Tb_EmpSTATUS: TFloatField;
    Tb_PargerPONCHANGECLI: TFloatField;
    Tb_PargerPONCHANGELOC: TFloatField;
    Tb_PargerPONCHANGEBAI: TFloatField;
    Tb_PargerPONCHANGEPV: TFloatField;
    Tb_PargerPONCHANGEVEND: TFloatField;
    Tb_PargerPONCHANGUSR: TFloatField;
    Tb_PargerPONCHANGECAR: TFloatField;
    Tb_PargerPONCHANGFUN: TFloatField;
    Tb_PargerPONCHANGREDEC: TFloatField;
    Tb_PargerPONCHANGEGPRO: TFloatField;
    Tb_PargerPONCHANGRPRO: TFloatField;
    Tb_PargerPONCHANGETPRO: TFloatField;
    Tb_PargerPONCHANGECPRO: TFloatField;
    Tb_PargerPONCHANGERCLI: TFloatField;
    Tb_PargerPONCHANGESUP: TFloatField;
    Tb_PargerPONCHANGETRA: TFloatField;
    Tb_PargerPTIPOAJUDA: TFloatField;
    Tb_PargerPONCHANGEUF: TFloatField;
    Tb_PargerPONCHANGECV: TFloatField;
    Tb_PargerPONCHANGEFOR: TFloatField;
    Tb_PargerPONCHANGEDBC: TFloatField;
    Tb_PargerPONCHANGEDEPCX: TFloatField;
    Tb_PargerPONCHANGECCU: TFloatField;
    Tb_FPFPVINCULO: TFloatField;
    Qr_FPFPVINCULO: TFloatField;
    Tb_DarCRCUSBCO: TFloatField;
    Tb_PargerPTAMJPGALT: TFloatField;
    Tb_PargerPTAMJPGTAM: TFloatField;
    Tb_PargerPPROMCADPRO: TFloatField;
    Tb_Ped01P1PROMOCAO: TStringField;
    Tb_Ped01P1CODPRIOR: TFloatField;
    Tb_Ped01P1DTHRCHEG: TDateTimeField;
    Tb_PVPVD1S0: TFloatField;
    Tb_PVPVD1S1: TFloatField;
    Tb_PVPVD1S2: TFloatField;
    Tb_PVPVD1S3: TFloatField;
    Tb_PVPVD1S4: TFloatField;
    Tb_PVPVD1S5: TFloatField;
    Tb_PVPVD1S6: TFloatField;
    Tb_PVPVD1S7: TFloatField;
    Tb_PVPVDFS0: TFloatField;
    Tb_PVPVDFS1: TFloatField;
    Tb_PVPVDFS2: TFloatField;
    Tb_PVPVDFS3: TFloatField;
    Tb_PVPVDFS4: TFloatField;
    Tb_PVPVDFS5: TFloatField;
    Tb_PVPVDFS6: TFloatField;
    Tb_PVPVDFS7: TFloatField;
    Tb_PVPVDDESCF: TFloatField;
    Tb_PargerPTEXTOBAIXO: TStringField;
    Tb_PargerPCORTEXBAIXO: TFloatField;
    Tb_PargerPTEXTOALTO: TStringField;
    Tb_PargerPCORTEXALTO: TFloatField;
    Tb_PargerPTEXTOAMBAS: TStringField;
    Tb_PargerPCORTEXAMBAS: TFloatField;
    Tb_PargerPUSA_DEGRADE: TFloatField;
    Tb_PargerPIMAGEM_DEGRADE: TBlobField;
    Tb_PargerPTIPOTEF: TFloatField;
    Par_LDRCDESC_ORI: TStringField;
    Tb_Ped02SP2SDESC3: TFloatField;
    Tb_Ped02SP2SACRECRAT: TFloatField;
    Tb_LC1LC1_BORDAGRADE: TFloatField;
    Tb_LDRVINCULO: TFloatField;
    Tb_ECF_FPFPEVINC: TFloatField;
    Tb_PF2PF2OUTRAS: TFloatField;
    Tb_PF1PF1OUTNINC: TFloatField;
    Tb_NENEOUTNINC: TFloatField;
    Tb_ProPDCX_PVDA: TFloatField;
    Tb_ProPDCX_PFAB: TFloatField;
    Tb_ProPDCX_PMAX: TFloatField;
    Tb_PargerPTIPOMENU: TFloatField;
    Tb_LC1lc1_qtdenv: TFloatField;
    Tb_GproGRNOMEABREV: TStringField;
    Tb_PargerPFILPRO: TFloatField;
    Tb_ProPDICMSCRED: TFloatField;
    Tb_ProPDICMSDEB: TFloatField;
    Tb_ProPDVLRINC: TFloatField;
    Tb_ContatoCTCODEMP: TFloatField;
    Tb_ContatoCTSTATUS: TFloatField;
    Tb_Contatodatcon: TStringField;
    Tb_Contatodtpcont: TStringField;
    Tb_Ped01P1CODBLOQ: TStringField;
    Tb_Ped01P1CODUSR_LBLOQ: TFloatField;
    Tb_PargerPHOSTEMAIL: TStringField;
    Tb_PargerPUSEREMAIL: TStringField;
    Tb_PargerPSENHAEMAIL: TStringField;
    Tb_CusCUVALOR: TFloatField;
    Tb_CusCUBASECALC: TFloatField;
    Tb_CusCUAPLS: TFloatField;
    Tb_CusCUFATOR: TFloatField;
    Tb_CusCUOPCIO: TFloatField;
    Tb_Cus2CUPCOFAB: TFloatField;
    Tb_Cus2CUPCOCUS: TFloatField;
    Tb_Cus2CUPCOVDA01: TFloatField;
    Tb_Cus2CUPCOVDA02: TFloatField;
    Tb_Cus2CUPCOVDA03: TFloatField;
    Tb_PargerPATPCOFABENT: TFloatField;
    Tb_ChqCHFONE01: TStringField;
    Tb_ChqCHFONE02: TStringField;
    Tb_BcoBCNOMTIT: TStringField;
    Tb_ProPDPRAT: TStringField;
    Tb_ProPDLADO: TStringField;
    Tb_ProPDRUA: TStringField;
    Tb_EmpCNPF: TFloatField;
    Tb_EmpRG: TStringField;
    Tb_BcoBCCODVAR: TStringField;
    Tb_Bconomcar: TStringField;
    Tb_PF1PF1OUTDESP: TFloatField;
    Tb_NENEOUTDESP: TFloatField;
    Tb_PargerPFORPEDPAD: TFloatField;
    Tb_CliCDTFUNDACAO: TDateTimeField;
    Tb_PargerPLSEPMOD02: TFloatField;
    Tb_PargerPCONSPROPED: TFloatField;
    Tb_PargerPLORCMOD02: TFloatField;
    Tb_ContatoTMP_NOMVEN: TStringField;
    Tb_ContatoTMP_NOMCLI: TStringField;
    Tb_ContatoTMP_NOMCON: TStringField;
    Tb_ContatoTMP_FONCON: TStringField;
    Tb_ContatoTMP_FONECOM: TStringField;
    Tb_ContatoTMP_CUF: TStringField;
    Tb_PenPEGRADE: TStringField;
    Tb_NsNSNFCF: TFloatField;
    Tb_UFPCIMP_SER: TFloatField;
    Tb_Ped01P1TOTSERLIQ: TFloatField;
    Tb_Ped01VP1VVLRSERV: TFloatField;
    Tb_PF1PF1NFCF: TFloatField;
    Tb_NsNSAVAP: TFloatField;
    Tb_NENEAVAP: TFloatField;
    Tb_Dartipodoc: TStringField;
    Tb_CPtipodoc: TStringField;
    Tb_Darsituacao: TStringField;
    Tb_PargerPDUPTIP19: TFloatField;
    Tb_PargerPDUPTIP20: TFloatField;
    Tb_PargerPDUPTIP21: TFloatField;
    Tb_PargerPDUPTIP22: TFloatField;
    Tb_PargerPDUPTIP23: TFloatField;
    Tb_PargerPDUPTIP24: TFloatField;
    Tb_PargerPDUPTIP25: TFloatField;
    Tb_PargerPDESTTIP19: TFloatField;
    Tb_PargerPDESTTIP20: TFloatField;
    Tb_PargerPDESTTIP21: TFloatField;
    Tb_PargerPDESTTIP22: TFloatField;
    Tb_PargerPDESTTIP23: TFloatField;
    Tb_PargerPDESTTIP24: TFloatField;
    Tb_PargerPDESTTIP25: TFloatField;
    Tb_CPCACODCTA: TFloatField;
    Tb_CPCACODCC: TStringField;
    Tb_CPCACODDEP: TStringField;
    Tb_CPCADESCMV: TStringField;
    Tb_CPCANOMCTA: TStringField;
    Tb_CPCANOMCC: TStringField;
    Tb_CPCANOMDEP: TStringField;
    Tb_CPdatadesc: TStringField;
    Tb_DarCRCODCTA: TFloatField;
    Tb_DarCRCODCC: TStringField;
    Tb_DarCRCODDEP: TStringField;
    Tb_DarCRDESCMV: TStringField;
    Tb_DarCRNOMCC: TStringField;
    Tb_DarCRNOMDEP: TStringField;
    Tb_DarCRNOMCTA: TStringField;
    Tb_CPCANATDC: TStringField;
    Tb_CliCNATDCD: TStringField;
    Tb_CliCNATDCC: TStringField;
    Tb_DarCRNATDC: TStringField;
    Tb_Dardtemis: TDateField;
    Tb_Dardtvcto: TDateField;
    Tb_Dardtpag: TDateField;
    Tb_Dardtbx: TDateField;
    Tb_Dardtdescf: TDateField;
    Tb_Dardatcup: TDateField;
    Tb_Darspc_dtpen: TDateField;
    Tb_Darspc_dtneg: TDateField;
    Tb_Darserasa_dtneg: TDateField;
    Tb_Dardtcau: TDateField;
    Tb_PargerPQTDLCQP: TFloatField;
    Tb_ProPDAPLIC: TStringField;
    Tb_CliCFONE01: TStringField;
    Tb_CliCFONE02: TStringField;
    Tb_CliCFONE03: TStringField;
    Tb_CliC_ORGAO_EMIS_RG: TStringField;
    Tb_CliC_DT_EXPRG: TDateTimeField;
    Tb_PargerPIND_TPFORMULA: TFloatField;
    Tb_ProPDQTDGRML: TFloatField;
    Tb_BcoBCLIMITE: TFloatField;
    Tb_ProPDAPRES: TStringField;
    Tb_PVPVPRAZOS: TStringField;
    Tb_GproGRPERCFRE: TFloatField;
    Tb_CliCALIQC: TFloatField;
    Tb_CliCALIQD: TFloatField;
    Tb_CliCALIQE: TFloatField;
    Tb_CliCALIQF: TFloatField;
    Tb_CliCALIQG: TFloatField;
    Tb_CliCALIQH: TFloatField;
    Tb_CliCALIQI: TFloatField;
    Tb_UFPREDUTRC: TFloatField;
    Tb_UFPREDUTRD: TFloatField;
    Tb_UFPREDUTRE: TFloatField;
    Tb_UFPREDUTRF: TFloatField;
    Tb_UFPREDUTRG: TFloatField;
    Tb_UFPREDUTRH: TFloatField;
    Tb_UFPREDUTRI: TFloatField;
    Tb_UFPREDUTNC: TFloatField;
    Tb_UFPREDUTND: TFloatField;
    Tb_UFPREDUTNE: TFloatField;
    Tb_UFPREDUTNF: TFloatField;
    Tb_UFPREDUTNG: TFloatField;
    Tb_UFPREDUTNH: TFloatField;
    Tb_UFPREDUTNI: TFloatField;
    Tb_UFPICMSNC: TFloatField;
    Tb_UFPICMSND: TFloatField;
    Tb_UFPICMSNE: TFloatField;
    Tb_UFPICMSNF: TFloatField;
    Tb_UFPICMSNG: TFloatField;
    Tb_UFPICMSNH: TFloatField;
    Tb_UFPICMSNI: TFloatField;
    Tb_PargerPFORPROPAD: TFloatField;
    Tb_ProPDCOMIS_EXTRA: TFloatField;
    Tb_Ped01P1COMIS_EXTRA: TFloatField;
    Tb_Ped01VP1VCOMISV_EXTRA: TFloatField;
    Tb_ProPDQTDM3: TFloatField;
    Tb_Ped01P1QTDM3: TFloatField;
    Tb_Ped01P1VFRE_CUSENT: TFloatField;
    Tb_DarCRCOMIS_EXTRA: TFloatField;
    Tb_Ped01P1VALENT: TFloatField;
    Tb_Ped01P1PRAZO_ENT: TFloatField;
    Tb_Ped01P1SEPAMB: TFloatField;
    Tb_EstCELOG: TStringField;
    Tb_Ped02SP2SSTATUS_PED1: TFloatField;
    Tb_Ped02SP2STIPO: TFloatField;
    Tb_PF2PF2ORIGEM: TFloatField;
    Tb_PF2PF2STATUS_PF1: TFloatField;
    Tb_CPCASEQ: TFloatField;
    Tb_DarCRSEQ: TFloatField;
    Tb_CPCADTINC: TDateTimeField;
    Tb_PVPVVINCULO: TFloatField;
    Tb_PargerPLOGUSRPED: TFloatField;
    Tb_PargerPHINTPROPED: TFloatField;
    Tb_TDVcolfinal: TFloatField;
    Tb_PF2PF2PUOUT: TFloatField;
    Tb_PF2PF2PBT: TFloatField;
    Tb_PF2PF2FRERAT: TFloatField;
    Tb_PF2PF2QTDREC: TFloatField;
    Tb_PF2PF2VALDESOUT: TFloatField;
    Tb_PF2PF2FRERATOUT: TFloatField;
    Tb_PF1PF1TOTLIQOUT: TFloatField;
    Tb_PF1PF1TOTPBT: TFloatField;
    Tb_PF1PF1FORMACE: TFloatField;
    Tb_PF1PF1SITPED: TFloatField;
    Tb_PF1PF1QTDMAN: TFloatField;
    Tb_PF1PF1TOTDESOUT: TFloatField;
    Tb_PF1PF1TOTBRUOUT: TFloatField;
    Tb_PF1PF1TOTFREOUT: TFloatField;
    Tb_PF1PF1OUTROS: TFloatField;
    Tb_PF1PF1NUMDUPOUT: TFloatField;
    Tb_PargerPVISMLUC: TFloatField;
    Tb_TDVCATCQTDVIA: TFloatField;
    Tb_PargerPCOMISPAD: TFloatField;
    Tb_PargerPATUCOMPROGRU: TFloatField;
    Tb_GproGRPERCCOMIS: TFloatField;
    Tb_ProPDUNDVDA: TFloatField;
    Tb_Ped01VP1VVINC02: TFloatField;
    Tb_Ped01VP1VNOMFPGTO: TStringField;
    Tb_DarCRPFPGTO: TFloatField;
    Tb_DarCRTABPV: TStringField;
    Tb_DarCRCODPV: TFloatField;
    Tb_DarCRVINC02: TFloatField;
    Tb_DarCRCODFPGTO: TFloatField;
    Tb_DarCRNOMFPGTO: TStringField;
    Tb_Ped01VP1VCODFP: TFloatField;
    Tb_Ped01VP1VPFPGTO: TFloatField;
    Tb_PVPVPRAZOMED: TFloatField;
    Tb_Ped01P1PZOLIB: TFloatField;
    Tb_Ped01P1PZOLIB_USR: TFloatField;
    Tb_Ped01P1BLOQPEND: TFloatField;
    Tb_Ped01P1CODBLOQ_LIB: TStringField;
    Tb_DarCRFIN_CODFIN: TFloatField;
    Tb_DarCRLANCFIN: TFloatField;
    Tb_DarCRRECFRENTE: TFloatField;
    Tb_FPFPCODCLI_EMP: TFloatField;
    Tb_FPFPCODCLI: TFloatField;
    Tb_FPFPPRAZO_FIN: TFloatField;
    Tb_PargerPMTE: TFloatField;
    Tb_ChqCHLOTSEQ_FC: TFloatField;
    Tb_ChqCHCODCTA: TFloatField;
    Tb_ChqCHCODCC: TStringField;
    Tb_ChqCHCODDEP: TStringField;
    Tb_ChqCHDESCMV: TStringField;
    Tb_ChqCHDEPOSITO: TFloatField;
    Tb_ChqCHPROR_QTDP: TFloatField;
    Tb_ChqCHPRO_ULTDAT: TDateTimeField;
    Tb_ChqCHOBSL01: TStringField;
    Tb_ChqCHOBSL02: TStringField;
    Tb_ChqCHCODFPGTO: TFloatField;
    Tb_Chqpro_ultdat: TDateField;
    Tb_Chqdtbx: TDateField;
    Tb_FPFPORDEM: TFloatField;
    Tb_PargerPBLOQCNPJ: TFloatField;
    Tb_PargerPBLOQCEP: TFloatField;
    Tb_Ped01VP1VDEV_CODEMP: TFloatField;
    Tb_Ped01VP1VDEV_CODECF: TFloatField;
    Tb_Ped01VP1VDEV_NUMERO: TFloatField;
    Tb_Ped01VP1VDEV_DESD: TStringField;
    Tb_Ped01VP1VDEV_DTEMIS: TDateTimeField;
    Tb_Ped01VP1VDEV_DUP: TFloatField;
    Tb_ECFCFMODPROGPAD: TFloatField;
    Tb_PargerPDEV_TABPV: TStringField;
    Tb_PargerPDEV_CODPV: TFloatField;
    Tb_PargerPFRENTE_VDANOR: TFloatField;
    Tb_PF1PF1TIPO: TFloatField;
    Tb_PargerPQTDDBLOQPED: TFloatField;
    Tb_PF1PF1SIV_FRETE: TFloatField;
    Tb_PF1PF1SIV_DARE: TFloatField;
    Tb_PF1PF1SIV_OUTROS: TFloatField;
    Tb_PF2PF2SIV_OUTROS: TFloatField;
    Tb_NENESIV_FRETE: TFloatField;
    Tb_NENESIV_DARE: TFloatField;
    Tb_NENESIV_OUTROS: TFloatField;
    Tb_Ped01P1ECF_SERIE: TStringField;
    Tb_Ped01P1CX_CODCAI: TFloatField;
    Tb_Ped01P1CX_LOTMOV: TFloatField;
    Tb_DarCRDATPED: TDateTimeField;
    Tb_DarCRCX_CODCAI: TFloatField;
    Tb_DarCRCX_LOTMOV: TFloatField;
    Tb_PF1PF1OUTVDUP: TFloatField;
    Tb_Pf1VPF1VVALOUT: TFloatField;
    Tb_Pf1VPF1VDESCFOUT: TFloatField;
    Tb_Pf1VPF1VDES_CODEMP: TFloatField;
    Tb_PargerPDESCEXTRA_PEDRET: TFloatField;
    Tb_PargerPPCOPADLIQ: TFloatField;
    Tb_PargerPGRAVPEDBLOQ: TFloatField;
    Tb_Ped01P1DUP_PROD: TFloatField;
    Tb_Ped01P1DUP_SERV: TFloatField;
    Tb_Ped02SP2SCODFUN: TFloatField;
    Tb_Min2CM2PED_CODEMP: TFloatField;
    Tb_Min2CM2QTDITENS: TFloatField;
    Tb_Min2CM2QTDUND: TFloatField;
    Tb_Min2CM2TIPOPED: TFloatField;
    Tb_Min2CM2CODCLI: TFloatField;
    Tb_Min2CM2VALFRE: TFloatField;
    Tb_Min2CM2QTDPAG: TFloatField;
    Tb_PargerPPROD_DNOME2: TStringField;
    Tb_Min2CM2DATANF: TDateTimeField;
    Tb_Min2CM2CODBCO: TFloatField;
    Tb_Min1CM1CODEMP: TFloatField;
    Tb_Min1CM1LOTSEQ: TFloatField;
    Tb_Min1CM1CODMIN: TFloatField;
    Tb_Min1CM1CODTRA: TFloatField;
    Tb_Min1M1NOMEENT: TStringField;
    Tb_Min1CM1RG: TStringField;
    Tb_Min1CM1TOTAL: TFloatField;
    Tb_Min1CM1DATA: TDateTimeField;
    Tb_Min1CM1CNPF: TStringField;
    Tb_Min1CM1USRINC: TFloatField;
    Tb_Min1CM1USRALT: TFloatField;
    Tb_Min1CM1INCDTHORA: TDateTimeField;
    Tb_Min1CM1ALTDTHORA: TDateTimeField;
    Tb_BcoBCRAZAOCTA: TStringField;
    Tb_DarCRCHD_EMITENTE: TStringField;
    Tb_DarCRJURDEB: TFloatField;
    Tb_DarCRJURDEB_SAC: TFloatField;
    Tb_BcoBCIMPPVREP: TFloatField;
    Tb_EmpHOMEPAGE: TStringField;
    Tb_ProPDBLDESCAV: TFloatField;
    Tb_TproTDESCAV: TStringField;
    Tb_Ped01P1INCTB: TFloatField;
    Qr_PedBlq: TQuery;
    Tb_TconCRESTCON: TFloatField;
    Tb_ProPDRESTFOR: TFloatField;
    Tb_ProPDRESTCON: TFloatField;
    Tb_PargerPKITPROD: TFloatField;
    Tb_ProPDSITCF: TStringField;
    Tb_Fornomgfor: TStringField;
    Tb_PVPVCMVD02S0: TFloatField;
    Tb_PVPVCMVD02S1: TFloatField;
    Tb_PVPVCMVD02S2: TFloatField;
    Tb_PVPVCMVD02S3: TFloatField;
    Tb_PVPVCMVD02S4: TFloatField;
    Tb_PVPVCMVD02S5: TFloatField;
    Tb_PVPVCMVD02S6: TFloatField;
    Tb_PVPVCMVD02S7: TFloatField;
    Tb_PF1PF1PRAZO: TFloatField;
    Tb_PF1PF1INT: TFloatField;
    Tb_PF1PF1QTDP: TFloatField;
    Tb_CPvaldev: TFloatField;
    Tb_Darvaldev: TFloatField;
    Tb_FPFPCODBCO: TFloatField;
    Tb_FPFPCODBCO_PM: TFloatField;
    Qr_FPFPCODBCO: TFloatField;
    Qr_FPFPCODBCO_PM: TFloatField;
    Tb_DarCRTARPROT: TFloatField;
    Tb_DarCRTARPROT_DATA: TDateTimeField;
    Tb_DarCRCUSPROT: TFloatField;
    Tb_DarCRCUSPROT_DATA: TDateTimeField;
    Tb_PargerPVENDCLI: TFloatField;
    Tb_CliCDESC02: TFloatField;
    Tb_CliCDESC03: TFloatField;
    Tb_CliCDESCFIN: TFloatField;
    Tb_CliCREVENDA_CP: TFloatField;
    Tb_LC2LC2_LOTEPREGAO: TStringField;
    Tb_LC1LC1_SEPLOTEPREGAO: TFloatField;
    Tb_DarCRCODCAR: TFloatField;
    Tb_PargerPBLOQPED_MINAVISO: TFloatField;
    Tb_CliCSUPERMICRO: TFloatField;
    Tb_CliCICMSST_LIQ: TFloatField;
    Tb_DarCRLOTSEQ_EC: TFloatField;
    Tb_DarCRLOTE_EC: TFloatField;
    Tb_CliCROTA: TFloatField;
    Tb_CliCNOMROTA: TStringField;
    Tb_Clinomestatus: TStringField;
    Tb_ForFCODEMP: TFloatField;
    Tb_ForFCODFOR: TFloatField;
    Tb_ForFRAZAO: TStringField;
    Tb_ForFDENOM: TStringField;
    Tb_ForFNLOG: TStringField;
    Tb_ForFNUM: TStringField;
    Tb_ForFCOMPL: TStringField;
    Tb_ForFBAIRRO: TStringField;
    Tb_ForFCIDADE: TStringField;
    Tb_ForFUF: TStringField;
    Tb_ForFCODBAI: TFloatField;
    Tb_ForFCODLOC: TFloatField;
    Tb_ForFCEP: TStringField;
    Tb_ForFIE: TStringField;
    Tb_ForFEMAIL: TStringField;
    Tb_ForFDTCAD: TDateTimeField;
    Tb_ForFCONT01: TStringField;
    Tb_ForFFONEC01: TStringField;
    Tb_ForFCONT02: TStringField;
    Tb_ForFFONEC02: TStringField;
    Tb_ForFCONT03: TStringField;
    Tb_ForFFONEC03: TStringField;
    Tb_ForFFONE: TStringField;
    Tb_ForFFAX: TStringField;
    Tb_ForFOBS1: TStringField;
    Tb_ForFOBS2: TStringField;
    Tb_ForFSTATUS: TFloatField;
    Tb_ForFCODEFO: TStringField;
    Tb_ForFCICMSR: TFloatField;
    Tb_ForFICMSN: TFloatField;
    Tb_ForFALIQ: TFloatField;
    Tb_ForFIVAPOS: TFloatField;
    Tb_ForFIVANEG: TFloatField;
    Tb_ForFIVAINA: TFloatField;
    Tb_ForFRBCIR: TFloatField;
    Tb_ForFRBICN: TFloatField;
    Tb_ForFICMSC: TFloatField;
    Tb_ForFICMSD: TFloatField;
    Tb_ForFTIPOF: TFloatField;
    Tb_ForFTDESP: TFloatField;
    Tb_ForFDIAE: TFloatField;
    Tb_ForFDIAV: TFloatField;
    Tb_ForFFREQ: TFloatField;
    Tb_ForFTIPOI: TFloatField;
    Tb_ForFTCALC: TFloatField;
    Tb_ForFCOMIS: TFloatField;
    Tb_ForFPRAZO: TFloatField;
    Tb_ForFPRAZOV: TFloatField;
    Tb_ForFDESCMV: TFloatField;
    Tb_ForFDESCFINV: TFloatField;
    Tb_ForFCODCCD: TStringField;
    Tb_ForFCODCCC: TStringField;
    Tb_ForFCODDEPD: TStringField;
    Tb_ForFCODDEPC: TStringField;
    Tb_ForFDESCMVD: TStringField;
    Tb_ForFDESCMVC: TStringField;
    Tb_ForFNOMCCC: TStringField;
    Tb_ForFNOMCCD: TStringField;
    Tb_ForFNOMDEPC: TStringField;
    Tb_ForFNOMDEPD: TStringField;
    Tb_ForFRETLIQ: TFloatField;
    Tb_ForFPADRAO: TFloatField;
    Tb_ForFNATDCC: TStringField;
    Tb_ForFNATDCD: TStringField;
    Tb_ForFCFOTRI: TFloatField;
    Tb_ForFCFOST: TFloatField;
    Tb_ForFRESTFOR: TFloatField;
    Tb_ForFCODGFOR: TFloatField;
    Tb_ForFDESC01V: TFloatField;
    Tb_ForFCB_TAM: TFloatField;
    Tb_ForFCB_POSCOD: TFloatField;
    Tb_ForFCB_TAMCOD: TFloatField;
    Tb_ForFCB_TAMVCT: TFloatField;
    Tb_ForFCB_POSVCT: TFloatField;
    Tb_ForFCB_TAMQTD: TFloatField;
    Tb_ForFCB_POSQTD: TFloatField;
    Tb_ForFCB_TAMLOT: TFloatField;
    Tb_ForFCB_POSLOT: TFloatField;
    Tb_ForFDATHOR_INC: TDateTimeField;
    Tb_ForFCODUSR_ALT: TFloatField;
    Tb_ForFDATHOR_ALT: TDateTimeField;
    Tb_ForFCODUSR_INC: TFloatField;
    Tb_PargerPSTATUS_LSEP09: TFloatField;
    Tb_ProPDCODBAR_EMBPAD: TStringField;
    U_Cli: TUpdateSQL;
    Tb_PargerPLSEPSEP_ORDEM: TFloatField;
    Tb_LC2LC2_LOTSEQ: TFloatField;
    Tb_LC2LC2_QTDENV: TFloatField;
    Tb_Ped01P1EMITENTE: TStringField;
    Tb_NsNSEMITENTE: TStringField;
    Query6: TQuery;
    Tb_ProPDUSRALT: TFloatField;
    Tb_ProPDUSRINC: TFloatField;
    Tb_PVPVACREDESREG: TFloatField;
    Tb_VenVEMAIL: TStringField;
    Tb_VenVCODREG: TFloatField;
    Tb_Vennomreg: TStringField;
    Tb_Venacrereg: TFloatField;
    Tb_Vendescreg: TFloatField;
    Tb_PVPVDTINC: TDateTimeField;
    Tb_PVPVUSRINC: TFloatField;
    Tb_PVPVAJCOMIS: TFloatField;
    Tb_PVPVUSRALT: TFloatField;
    Tb_Ped01P1PVACREDESREG: TFloatField;
    Tb_Ped01P1PVAJCOMIS: TFloatField;
    Tb_ForFREPLICARCX: TFloatField;
    Tb_ForFREP_CODBCO: TFloatField;
    Tb_ForFREP_CODDEP: TStringField;
    Tb_ForFREP_NOMDEP: TStringField;
    Tb_ForFREP_CODCCU: TStringField;
    Tb_ForFREP_NOMCCU: TStringField;
    Tb_ForFREP_NATDC: TStringField;
    Tb_ForFREP_TIPO: TStringField;
    Tb_ForFREP_CODIGO: TFloatField;
    Tb_ForFREP_NOMBCO: TStringField;
    Tb_ForFREP_DESCMV: TStringField;
    Tb_ForFREP_NOMESAC: TStringField;
    Tb_ProPDENTPEN: TFloatField;
    Tb_Proentpen: TFloatField;
    Tb_ProPDSALDO_PRAT: TFloatField;
    Tb_ProPDSALDO_DEP: TFloatField;
    Tb_Proestoque_prat: TFloatField;
    Tb_Proestoque_dep: TFloatField;
    Tb_EstCESALDO_PRAT: TFloatField;
    Tb_EstCESALDO_DEP: TFloatField;
    Tb_LGCCLQTD_PRAT: TFloatField;
    Tb_LGCCLQTD_DEP: TFloatField;
    Tb_PargerPCADPRO_VDAFRENTE: TFloatField;
    Tb_AjuAJLOCAL: TFloatField;
    Tb_PF1PF1LOCAL: TFloatField;
    Tb_PargerPEXPMOV_EXC: TFloatField;
    Tb_PargerPFCORP_ESTMIN_PRAT: TFloatField;
    Tb_PargerPFCORP_ESTMIN_GER: TFloatField;
    Tb_BcoBCREPLICARCX: TFloatField;
    Tb_BcoBCREP_CODBCO: TFloatField;
    Tb_BcoBCREP_NOMBCO: TStringField;
    Tb_BcoBCREP_CODDEP: TStringField;
    Tb_BcoBCREP_NOMDEP: TStringField;
    Tb_BcoBCREP_CODCCU: TStringField;
    Tb_BcoBCREP_NOMCCU: TStringField;
    Tb_BcoBCREP_NATDC: TStringField;
    Tb_BcoBCREP_TIPO: TStringField;
    Tb_BcoBCREP_CODIGO: TFloatField;
    Tb_BcoBCREP_NOMESAC: TStringField;
    Tb_BcoBCREP_DESCMV: TStringField;
    Tb_CliCPEDELE_PAD: TFloatField;
    Tb_ProPDSALDO_REP: TFloatField;
    Tb_Proestoque_rep: TFloatField;
    Tb_LGCCLQTD_REP: TFloatField;
    Tb_EstCESALDO_REP: TFloatField;
    Tb_CliCPEDELE_SENHA: TStringField;
    Tb_Pencodbar: TFloatField;
    Tb_PF1PF1SUBMOD: TStringField;
    Tb_TDVCATCFILRAMCLI: TFloatField;
    Tb_TDVCATCFILRAMPRO: TFloatField;
    Tb_TDVCATCFILTPRO: TFloatField;
    Tb_TDVCATCFILGPRO: TFloatField;
    Tb_TDVCATCFILCPRO: TFloatField;
    Tb_TDVCATCFILLOC: TFloatField;
    Tb_TDVCATCFILBAI: TFloatField;
    Tb_TDVCATCFILGFOR: TFloatField;
    Tb_TDVCATCFILCONV: TFloatField;
    Tb_TDVCATCFILSUP: TFloatField;
    Tb_TDVCATCFILASS: TFloatField;
    Tb_TDVCATCFILREG: TFloatField;
    Tb_TDVCATCFILTRA: TFloatField;
    Tb_TDVCATCFILBCO: TFloatField;
    Tb_TDVCATCFILCC: TFloatField;
    Tb_TDVCATCFILDEP: TFloatField;
    Tb_TDVCATCFILUSR: TFloatField;
    Tb_TDVCATCFILCAR: TFloatField;
    Tb_TDVCATCFILFUN: TFloatField;
    Tb_PargerPMANDUPREC_AUT: TFloatField;
    Tb_PargerPMANDUPPAG_AUT: TFloatField;
    Tb_Ped01P1LOCAL: TFloatField;
    Tb_Ped01P1TOTPROM: TFloatField;
    Tb_Ped01P1TIPO_ENTSAI: TFloatField;
    Tb_DarCRTITPROT: TFloatField;
    Tb_PargerPTIPOVALDES: TFloatField;
    Tb_Darcnpj: TFloatField;
    Tb_BcoBCCH_NOMTAM: TFloatField;
    Tb_PcusPFORMULA: TFloatField;
    Tb_PargerPDM_ENDIP_INTERNO: TStringField;
    Tb_Min2CM2QTDTIT: TFloatField;
    Tb_PargerPRECALCPEDMAN: TFloatField;
    Tb_PargerPACREMPEXTRA: TFloatField;
    Tb_PVPVVALORMIN: TFloatField;
    Tb_PVPVACREDESREG_PROMO: TFloatField;
    Tb_PargerPBLQPCOMENOR_QTD: TFloatField;
    Tb_PargerPATUPCUSACABMP: TFloatField;
    Tb_CPdtPag: TStringField;
    Tb_PF1PF1DATCONF: TDateTimeField;
    Tb_ProPDTEMPOFAB: TFloatField;
    Tb_VenVDM_PCOEXTRA: TFloatField;
    Tb_VenVDM_DESCMAXITEM: TFloatField;
    Tb_VenVDM_ACREMAXITEM: TFloatField;
    Tb_LDRDTSALDO: TDateTimeField;
    Tb_CliCPEDELE_RETBLOQ: TFloatField;
    Tb_LocLCODMUN_IBGE: TFloatField;
    Tb_UFPCODUF_IBGE: TFloatField;
    Tb_UFPCODREG_IBGE: TFloatField;
    Tb_UFnomreg: TStringField;
    Tb_TDVTCINFADIC: TFloatField;
    Tb_NsNSINFAD01: TStringField;
    Tb_NsNSINFAD02: TStringField;
    Tb_NsNSINFAD03: TStringField;
    Tb_NsNSINFAD04: TStringField;
    Tb_NsNSINFAD05: TStringField;
    Tb_NsNSINFAD06: TStringField;
    Tb_NsNSINFAD07: TStringField;
    Tb_NsNSTPIMPRES: TFloatField;
    Tb_NsNSINFAD08: TStringField;
    Tb_NsNSINFAD09: TStringField;
    Tb_EmpCODLOC: TFloatField;
    Tb_Empcodloc_ibge: TFloatField;
    Tb_Empcodreg_ibge: TFloatField;
    Tb_Empcodpais_ibge: TFloatField;
    Tb_Empcoduf_ibge: TFloatField;
    Tb_Empnomepais: TStringField;
    Tb_Empcnae: TStringField;
    Tb_UFnompais: TStringField;
    Tb_UFcodpais: TFloatField;
    Tb_NsNSINFADFIS01: TStringField;
    Tb_NsNSINFADFIS02: TStringField;
    Tb_ChqCHNOMCTA: TStringField;
    Tb_ChqCHNOMCC: TStringField;
    Tb_ChqCHNATDC: TStringField;
    Tb_ChqCHNOMDEP: TStringField;
    Tb_ChqCHLOTSEQ_BT: TFloatField;
    Tb_ChqCHLOTE_BT: TFloatField;
    Tb_ChqCHLOTSEQ_FC_DEB: TFloatField;
    Tb_ChqCHCODLDR_DEB: TFloatField;
    Tb_ChqCHCODLDR_CRED: TFloatField;
    Tb_ChqCHCODBCO_CRED: TFloatField;
    Tb_ChqCHCODBCO_DEB: TFloatField;
    Tb_NsNSNFE_CHAVEACESSO: TStringField;
    Tb_NsNSNFE_DCHAVEACESSO: TStringField;
    Tb_NsNSNFE_NRECIBO: TStringField;
    Tb_NsNSNFE_DH_RECIBO: TStringField;
    Tb_NsNSNFE_STAT_REC: TStringField;
    Tb_NsNSNFE_LOTENV: TStringField;
    Tb_NsNSNFE_NOMARQLOT: TStringField;
    Tb_NsNSNFE_NOMARQREC: TStringField;
    Tb_Ped01P1TOTPIS: TFloatField;
    Tb_Ped01P1TOTCOFINS: TFloatField;
    Tb_NsNSNFE_CONTIGENCIA: TFloatField;
    Tb_NsNSNFE_DH_CONTIGENCIA: TDateTimeField;
    Tb_Sup: TQuery;
    Tb_SupSCODEMP: TFloatField;
    Tb_SupSCODSUP: TFloatField;
    Tb_SupSNOME: TStringField;
    Tb_SupSENDER: TStringField;
    Tb_SupSBAIRRO: TStringField;
    Tb_SupSCIDADE: TStringField;
    Tb_SupSUF: TStringField;
    Tb_SupSCODBAI: TFloatField;
    Tb_SupSCODLOC: TFloatField;
    Tb_SupSCEP: TStringField;
    Tb_SupSCELULAR: TStringField;
    Tb_SupSFONERES: TStringField;
    Tb_SupSFONECOM: TStringField;
    Tb_SupSDTCAD: TDateTimeField;
    Tb_SupSRG: TStringField;
    Tb_SupSCPF: TFloatField;
    Tb_SupSPONTOR: TStringField;
    Tb_SupSREFP01: TStringField;
    Tb_SupSFREFP1: TStringField;
    Tb_SupSREFP02: TStringField;
    Tb_SupSFREFP2: TStringField;
    Tb_SupSREFP03: TStringField;
    Tb_SupSFREFP3: TStringField;
    Tb_SupSREFB01: TStringField;
    Tb_SupSFREFB1: TStringField;
    Tb_SupSREFB02: TStringField;
    Tb_SupSFREFB2: TStringField;
    Tb_SupSREFB03: TStringField;
    Tb_SupSFREFB3: TStringField;
    Tb_SupSREFC01: TStringField;
    Tb_SupSFREFC1: TStringField;
    Tb_SupSREFC02: TStringField;
    Tb_SupSFREFC2: TStringField;
    Tb_SupSREFC03: TStringField;
    Tb_SupSFREFC3: TStringField;
    Tb_SupSOBS: TMemoField;
    Tb_SupSSTATUS: TFloatField;
    U_Sup: TUpdateSQL;
    Src_Sup: TDataSource;
    Tb_UFPCFOSER_DEV: TFloatField;
    Tb_PF2PF2PREDICMNOR: TFloatField;
    Tb_PF1PF1TOTOUT_ALIQ: TFloatField;
    Tb_PF1PF1TOTOUT_IMP: TFloatField;
    Tb_NENEOUTRAS_ALIQ: TFloatField;
    Tb_NENEOUTRAS_IMP: TFloatField;
    Tb_Ped02SP2SQTD_ATEN: TFloatField;
    Tb_Ped02SP2SBCINSS: TFloatField;
    Tb_Ped02SP2SREDINSS: TFloatField;
    Tb_Ped02SP2SVINSS: TFloatField;
    Tb_Ped02SP2SALIQINSS: TFloatField;
    Tb_Ped02SP2SREDIRRF: TFloatField;
    Tb_Ped02SP2SBCIRRF: TFloatField;
    Tb_Ped02SP2SVIRRF: TFloatField;
    Tb_Ped02SP2SALIQIRRF: TFloatField;
    Tb_LocLISSQN_ALIQ: TFloatField;
    Tb_LocLINSS_ALIQ: TFloatField;
    Tb_LocLINSS_RED: TFloatField;
    Tb_LocLIRRF_ALIQ: TFloatField;
    Tb_LocLIRRF_RED: TFloatField;
    Tb_LocLCODUSR_INC: TFloatField;
    Tb_LocLDATHOR_INC: TDateTimeField;
    Tb_LocLCODUSR_ALT: TFloatField;
    Tb_LocLDATHOR_ALT: TDateTimeField;
    Tb_CliCISSQN_ALIQ: TFloatField;
    Tb_CliCINSS_ALIQ: TFloatField;
    Tb_CliCINSS_RED: TFloatField;
    Tb_CliCIRRF_ALIQ: TFloatField;
    Tb_CliCIRRF_RED: TFloatField;
    Tb_PF1PF1LOTE_ENTRADA: TStringField;
    Tb_PF1PF1REGENT: TStringField;
    Tb_PF2PF2CFOP_COMP: TStringField;
    Tb_NENECFOP_COMP: TStringField;
    Tb_PF2PF2LOTE_RE: TStringField;
    Tb_PF2PF2DTENTRADA: TDateTimeField;
    Tb_Ped01P1RED_BCISSQN: TFloatField;
    Tb_Ped01P1BCINSS: TFloatField;
    Tb_Ped01P1RED_BCINSS: TFloatField;
    Tb_Ped01P1VINSS: TFloatField;
    Tb_Ped01P1BCIRRF: TFloatField;
    Tb_Ped01P1RED_BCIRRF: TFloatField;
    Tb_Ped01P1VIRRF: TFloatField;
    Tb_NsNSRED_BCISSQN: TFloatField;
    Tb_NsNSBCINSS: TFloatField;
    Tb_NsNSRED_BCINSS: TFloatField;
    Tb_NsNSVINSS: TFloatField;
    Tb_NsNSBCIRRF: TFloatField;
    Tb_NsNSRED_BCIRRF: TFloatField;
    Tb_NsNSVIRRF: TFloatField;
    Tb_Ped01P1NFE_ENVXML: TFloatField;
    Tb_NsNSNFE_STATUS: TStringField;
    Tb_NsNSNFE_STAT_PROT: TStringField;
    Tb_NsNSNFE_DIGVAL: TStringField;
    Tb_NsNSNFE_NUMPROT: TStringField;
    Tb_FuncaoNCBO: TStringField;
    Tb_ForFCODBLOQ: TFloatField;
    Tb_ForFIM: TStringField;
    Tb_LC1LC1_PROPL01: TStringField;
    Tb_LC1LC1_PROPL02: TStringField;
    Tb_CVCVOBS: TMemoField;
    Tb_LDRFC_OBSFIN: TStringField;
    Tb_CPCAQTDPARC: TFloatField;
    Tb_CPCANUMPARC: TFloatField;
    Tb_ForFDATHOR_BLOQ: TDateTimeField;
    Tb_ForFMOTBLOQ: TStringField;
    Tb_ProPDPRZVAL_ANOS: TFloatField;
    Tb_ProPDPRZVAL_DIAS: TFloatField;
    Tb_ProPDCODDEP: TFloatField;
    Tb_ProPDNOMDEP: TStringField;
    Tb_PargerPCOMPRAPADRAO: TFloatField;
    Tb_PVPVPERCPPARC: TFloatField;
    Tb_AjuAJUTILCQ: TFloatField;
    Tb_BcoBCCH_FORM: TStringField;
    Tb_ForFTPPESSOA: TFloatField;
    Tb_Forobs_cgc: TStringField;
    Tb_Forobs_ie: TStringField;
    Tb_DarNOMEACESS: TStringField;
    Tb_EmpCODSERV_PREST: TStringField;
    Tb_EmpEMP_CNAE: TStringField;
    Tb_Ram: TQuery;
    Tb_RamRCODEMP: TFloatField;
    Tb_RamRCODRAM: TFloatField;
    Tb_RamRNOME: TStringField;
    U_Ram: TUpdateSQL;
    Src_Ram: TDataSource;
    Tb_LC1LC1_NOMCLI: TStringField;
    Tb_ProPDDATA_REPLICA: TDateTimeField;
    Tb_NENEPIPIFRETE: TFloatField;
    Tb_NENEALIQ_FRETE: TFloatField;
    Tb_NENEICMS_FRETE: TFloatField;
    Tb_CPCASERIE: TStringField;
    Tb_CPCAMODELO: TStringField;
    Tb_CPCACFO: TFloatField;
    Tb_CPCADTENT: TDateTimeField;
    Tb_CPCAVALORNF: TFloatField;
    Tb_CPCABASEN: TFloatField;
    Tb_CPCAALIQ: TFloatField;
    Tb_CPCAICMSN: TFloatField;
    Tb_CPCANETIPO: TFloatField;
    Tb_CPCANUMERONF: TFloatField;
    Src_PED02_SOBRAS: TDataSource;
    TB_PED02_SOBRAS: TQuery;
    UP_PED02_SOBRAS: TUpdateSQL;
    SRC_PED01_SOBRAS: TDataSource;
    TB_PED01_SOBRAS: TQuery;
    UP_PED01_SOBRAS: TUpdateSQL;
    TB_PED01_SOBRASP1S_CODEMP: TFloatField;
    TB_PED01_SOBRASP1S_LOTSEQ: TFloatField;
    TB_PED01_SOBRASP1S_CHAVE: TFloatField;
    TB_PED01_SOBRASP1S_CODCLI: TFloatField;
    TB_PED01_SOBRASP1S_DATA_INC: TDateTimeField;
    TB_PED01_SOBRASP1S_USER_INC: TFloatField;
    TB_PED01_SOBRASP1S_DATA_FEC: TDateTimeField;
    TB_PED01_SOBRASP1S_USER_FEC: TFloatField;
    TB_PED01_SOBRASP1S_STATUS: TFloatField;
    Tb_LC1LC1_NOMLOC: TStringField;
    Tb_LC1LC1_UF: TStringField;
    Tb_LC1LC1_CEP: TStringField;
    Tb_LC1LC1_CNPJ: TFloatField;
    Tb_LC1LC1_IE: TStringField;
    Tb_LC1LC1_FONE: TStringField;
    Tb_LC1LC1_ENDER: TStringField;
    Tb_LC1LC1_BAIRRO: TStringField;
    U_LC1: TUpdateSQL;
    TB_PED02_SOBRASNOMPRO: TStringField;
    SRC_PED02_SOBRAS_MP: TDataSource;
    TB_PED02_SOBRAS_MP: TQuery;
    UP_PED02_SOBRAS_MP: TUpdateSQL;
    TB_PED02_SOBRASP2S_CODEMP: TFloatField;
    TB_PED02_SOBRASP2S_LOTSEQ: TFloatField;
    TB_PED02_SOBRASP2S_CHAVE: TFloatField;
    TB_PED02_SOBRASP2S_ORIGEM: TFloatField;
    TB_PED02_SOBRASP2S_ITEM: TFloatField;
    TB_PED02_SOBRASP2S_CODPRO: TFloatField;
    TB_PED02_SOBRASP2S_PRECO_UNI: TFloatField;
    TB_PED02_SOBRASP2S_PRECO_CUS: TFloatField;
    TB_PED02_SOBRASP2S_PRECO_VEN: TFloatField;
    TB_PED02_SOBRASP2S_QTD_VEN: TFloatField;
    TB_PED02_SOBRASP2S_QTD_DEV: TFloatField;
    TB_PED02_SOBRASP2S_QTD_QUE: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_CODEMP: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_LOTSEQ: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_CHAVE: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_ORIGEM: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_ITEM: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_CODPRO: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_CODPRO_ORI: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_PRECO_UNI: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_PRECO_CUS: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_PRECO_VEN: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_QTD_VEN: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_QTD_DEV: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_QTD_QUE: TFloatField;
    TB_PED02_SOBRAS_MPNOMPRO_MP: TStringField;
    Tb_LC1LC1_LOTSEQ: TFloatField;
    Tb_LC1LC1_DATHOR_INC: TDateTimeField;
    Tb_LC1LC1_CODUSR_INC: TFloatField;
    Tb_LC1LC1_CODUSR_ALT: TFloatField;
    Tb_LC1LC1_DATHOR_ALT: TDateTimeField;
    Tb_Ped01submod: TFloatField;
    Tb_CliCRAZAO: TStringField;
    Tb_CliCDENOM: TStringField;
    TB_PED02_SOBRASP2S_QTD_SOBRA: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_QTD_SOBRA: TFloatField;
    DS_TPDRE: TDataSource;
    TB_TPDRE: TQuery;
    UP_TPDRE: TUpdateSQL;
    TB_TPDRETPD_CODEMP: TFloatField;
    TB_TPDRETPD_DATA_INC: TDateTimeField;
    TB_TPDRETPD_USR_INC: TFloatField;
    TB_TPDRETPD_COMPOEM: TFloatField;
    Tb_Ped01P1QTDDECPU: TFloatField;
    Tb_NsNSFRETE_ALIQ: TFloatField;
    Tb_NsNSFRETE_ICMS: TFloatField;
    TB_TPDRETPD_DESCRICAO: TStringField;
    Tb_CCUNOMDRE: TStringField;
    Tb_AjuAJPC0CUS: TFloatField;
    Tb_AjuAJPRECO1: TFloatField;
    Tb_EmpEMP_OPTSIMPLES: TFloatField;
    Tb_EmpEMP_INC_CULTURAL: TFloatField;
    Tb_NsNSNFSERV_DATHORREC: TDateTimeField;
    Tb_NsNSNFSERV_DATHORCANC: TDateTimeField;
    Tb_NsNSNFSERV_LOTE: TFloatField;
    Tb_NsNSNFSERV_PROTOCOLO: TStringField;
    Tb_NsNSNFSERV_NUMNF: TFloatField;
    Tb_Nsnfes_data_hora_rec: TStringField;
    Tb_Nsnfes_data_hora_canc: TStringField;
    TB_PED01_SOBRASP1S_TABPV: TStringField;
    TB_PED01_SOBRASP1S_CODPV: TFloatField;
    TB_PED01_SOBRASP1S_PACTD: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_PRECO_ORI: TFloatField;
    TB_PED02_SOBRASP2S_PRECO_ORI: TFloatField;
    Qr_TIDTIQTD: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_ITEM_ORIGEM: TFloatField;
    Tb_ProPDDESCMAX: TFloatField;
    Tb_ProPDTEMFORMULA: TFloatField;
    Tb_ContatoCFONE01: TStringField;
    Tb_ContatoCCIDADE: TStringField;
    Tb_ContatoCEMAIL: TStringField;
    TB_TPDRECOMPOEM: TIntegerField;
    TB_TPDRETPD_CHAVE: TStringField;
    Tb_CCUCCCODDRE: TStringField;
    TB_TPDRETPD_DESPOP: TFloatField;
    Tb_NsNSNFE_VERAPLIC: TStringField;
    Tb_NsNSNFE_INFPRODID: TStringField;
    Qr_Evento: TRxMemoryData;
    Qr_EventoCODNOV: TFloatField;
    Qr_EventoSTATUS: TFloatField;
    Tb_AjuAJLOTE_RE: TStringField;
    Tb_LGCCLLOTE_RE: TStringField;
    Tb_PF2PF2OBS: TStringField;
    Tb_ProPDBALANCA: TFloatField;
    Tb_BaiBDATHOR_INC: TDateTimeField;
    Tb_BaiBCODUSR_INC: TFloatField;
    Tb_BaiBDATHOR_ALT: TDateTimeField;
    Tb_BaiBCODUSR_ALT: TFloatField;
    Tb_BcoBCDATHOR_INC: TDateTimeField;
    Tb_BcoBCCODUSR_INC: TFloatField;
    Tb_BcoBCDATHOR_ALT: TDateTimeField;
    Tb_BcoBCCODUSR_ALT: TFloatField;
    Tb_BcoBCDATHOR_REP: TDateTimeField;
    Tb_FuncaoCG_DATHOR_INC: TDateTimeField;
    Tb_FuncaoCG_CODUSR_INC: TFloatField;
    Tb_FuncaoCG_DATHOR_ALT: TDateTimeField;
    Tb_FuncaoCG_CODUSR_ALT: TFloatField;
    Tb_FuncaoCG_DATHOR_REP: TDateTimeField;
    Tb_ChqCHDATHOR_INC: TDateTimeField;
    Tb_ChqCHCODUSR_INC: TFloatField;
    Tb_ChqCHDATHOR_ALT: TDateTimeField;
    Tb_ChqCHCODUSR_ALT: TFloatField;
    Tb_TconCDATHOR_INC: TDateTimeField;
    Tb_TconCCODUSR_INC: TFloatField;
    Tb_TconCDATHOR_ALT: TDateTimeField;
    Tb_TconCCODUSR_ALT: TFloatField;
    Tb_GproGRDATHOR_INC: TDateTimeField;
    Tb_GproGRCODUSR_INC: TFloatField;
    Tb_GproGRCODUSR_ALT: TFloatField;
    Tb_GruGRDATHOR_INC: TDateTimeField;
    Tb_GruGRCODUSR_INC: TFloatField;
    Tb_GruGRCODUSR_ALT: TFloatField;
    Tb_GruGRDATHOR_ALT: TDateTimeField;
    Tb_LocLDATHOR_REP: TDateTimeField;
    Tb_RamRDATHOR_INC: TDateTimeField;
    Tb_RamRCODUSR_INC: TFloatField;
    Tb_RamRDATHOR_ALT: TDateTimeField;
    Tb_RamRCODUSR_ALT: TFloatField;
    Tb_RamRDATHOR_REP: TDateTimeField;
    Tb_RedRDDATHOR_INC: TDateTimeField;
    Tb_RedRDCODUSR_INC: TFloatField;
    Tb_RedRDDATHOR_ALT: TDateTimeField;
    Tb_RedRDCODUSR_ALT: TFloatField;
    Tb_RedRDDATHOR_REP: TDateTimeField;
    Tb_SupSDATHOR_INC: TDateTimeField;
    Tb_SupSCODUSR_INC: TFloatField;
    Tb_SupSDATHOR_ALT: TDateTimeField;
    Tb_SupSCODUSR_ALT: TFloatField;
    Tb_TproTDATHOR_INC: TDateTimeField;
    Tb_TproTCODUSR_INC: TFloatField;
    Tb_TproTDATHOR_ALT: TDateTimeField;
    Tb_TproTCODUSR_ALT: TFloatField;
    Tb_TraTRCODUSR_INC: TFloatField;
    Tb_TraTRDATHOR_ALT: TDateTimeField;
    Tb_TraTRCODUSR_ALT: TFloatField;
    Tb_LC1LC1_TPPCO: TFloatField;
    Tb_VenVCODUSR_INC: TFloatField;
    Tb_VenVDATHOR_ALT: TDateTimeField;
    Tb_VenVCODUSR_ALT: TFloatField;
    Tb_VenVDATHOR_REP: TDateTimeField;
    Tb_PargerPLVALEMOD02: TFloatField;
    Tb_LC1LC1_EMAIL: TStringField;
    Tb_GproGRTEXTO: TMemoField;
    Tb_GruGRTEXTO: TMemoField;
    Tb_RamRTEXTO: TMemoField;
    Tb_GproGRDATHOR_ALT: TDateTimeField;
    Tb_GproGRDATHOR_REP: TDateTimeField;
    Src_MovPro: TDataSource;
    Tb_MovPro: TQuery;
    up_MovPro: TUpdateSQL;
    Tb_MovProCMPCODEMP: TFloatField;
    Tb_MovProCMPCODUSR: TFloatField;
    Tb_MovProCMPCODPRO: TFloatField;
    Tb_MovProCMPFORM: TStringField;
    Tb_MovProCMPTPMOV: TFloatField;
    Tb_MovProCMPESTANT: TFloatField;
    Tb_MovProCMPQTD: TFloatField;
    Tb_MovProCMPOBS: TStringField;
    Tb_MovProCMPDATA: TDateTimeField;
    Tb_MovProCMPLOTSEQ: TFloatField;
    Tb_MovProCMPLOTE: TStringField;
    Tb_PF1PF1_NFE_CHAVE: TStringField;
    Tb_NENENFE_CHAVE: TStringField;
    Tb_NENEVL_PIS: TFloatField;
    Tb_NENEVL_COFINS: TFloatField;
    Tb_NENEENERGIA_COD_CONS: TFloatField;
    Tb_NENEENERGIA_COD_INF: TStringField;
    Tb_NENEENERGIA_TP_LIGACAO: TFloatField;
    Tb_NENEENERGIA_GRUPO_TENSAO: TFloatField;
    Tb_EmpEMP_SUFRAMA: TStringField;
    Tb_EmpEMP_INSC_PISPASEP: TStringField;
    Tb_EmpEMP_CONT_CPF: TFloatField;
    Tb_EmpEMP_CONT_CNPJ: TFloatField;
    Tb_EmpEMP_CONT_CEP: TStringField;
    Tb_EmpEMP_CONT_ENDER: TStringField;
    Tb_EmpEMP_CONT_NUM_END: TStringField;
    Tb_EmpEMP_CONT_COMP_END: TStringField;
    Tb_EmpEMP_CONT_BAIRRO: TStringField;
    Tb_EmpEMP_CONT_CODLOC: TFloatField;
    Tb_EmpEMP_CONT_FONE: TStringField;
    Tb_EmpEMP_CONT_FAX: TStringField;
    Tb_EmpEMP_CONT_EMAIL: TStringField;
    Tb_EmpEMP_CONT_NOMLOC: TStringField;
    Tb_EmpEMP_LOGO: TBlobField;
    Tb_EmpEMP_CONT_UF: TStringField;
    TB_PED01_SOBRASP1S_DATHOR_EVE: TDateTimeField;
    Tb_Ped01P1NOMEREC: TStringField;
    Tb_Ped01P1DATHORREC: TDateTimeField;
    Tb_Ped01P1DATHOR_REP: TDateTimeField;
    Tb_Ped01P1CHAVE_NIVEL: TFloatField;
    Tb_Ped01DP1DCHAVE_NIVEL: TFloatField;
    Tb_Ped01VP1VCHAVE_NIVEL: TFloatField;
    Tb_NsNSCHAVEP_NIVEL: TFloatField;
    Tb_DarCRNPED_NIVEL: TFloatField;
    Tb_NENECHAVEP_NIVEL: TFloatField;
    TB_TPDRETPD_VINCULO: TFloatField;
    Tb_CliCCNPJ_CONSISTE: TStringField;
    Tb_TraTRCNPJ_CONSISTE: TStringField;
    Tb_Ped01P1TPEMIS: TFloatField;
    Tb_NsNSNFE_TPEMIS: TFloatField;
    Tb_NsNSTIPDOC: TStringField;
    Tb_LC1LC1_STATUS: TFloatField;
    Tb_Clicgc: TFloatField;
    Tb_Cliender: TStringField;
    Tb_Cliierg: TStringField;
    Tb_Ped01P1DATHOR_ULTEVE: TDateTimeField;
    Tb_Ped01P1CODUSR_ULTEVE: TFloatField;
    Tb_Ped01P1COMP_ULTEVE: TStringField;
    Src_InfGrid: TDataSource;
    Tb_InfGrid: TQuery;
    Up_Inf_Grid: TUpdateSQL;
    Tb_Prodtvenc: TDateField;
    Tb_Propcoven: TFloatField;
    Tb_TDVCATCGPRO: TFloatField;
    Tb_ProPDVALREGMS: TDateTimeField;
    Tb_PargerPFRBMS_VENC: TFloatField;
    Tb_PargerPTLOGINEMAIL: TFloatField;
    Tb_PargerPTAUTENTICAEMAIL: TFloatField;
    Tb_PargerPPORTAEMAIL: TFloatField;
    Tb_PargerPFCORP_EM: TFloatField;
    Tb_PargerPFCORP_SBP: TFloatField;
    Tb_PargerPFCORP_PI: TFloatField;
    Tb_PargerPFCORP_MUC: TFloatField;
    Tb_PargerPFCORP_AI: TFloatField;
    Tb_TDVCATCMODIMP: TFloatField;
    Tb_CCUCCEXP_CATEG: TFloatField;
    Tb_CCUCCEXP_EVENTO: TStringField;
    Tb_CCUCCEXP_CODCTA_DEB: TStringField;
    Tb_CCUCCEXP_CODHIST_DEB: TStringField;
    Tb_CCUCCEXP_CODCTA_CRED: TStringField;
    Tb_CCUCCEXP_CODHIST_CRED: TStringField;
    Tb_CCUCCEXP_CODCCU_CRED: TStringField;
    Tb_CCUCCEXP_CODCCU_DEB: TStringField;
    Tb_UFPICMSC_SN: TFloatField;
    Tb_UFPICMSD_SN: TFloatField;
    Tb_UFPIVAINA_SN: TFloatField;
    Tb_UFPIVANEG_SN: TFloatField;
    Tb_UFPIVAPOS_SN: TFloatField;
    Tb_UFPREDUTRA_SN: TFloatField;
    Tb_UFPREDUTRB_SN: TFloatField;
    Tb_UFPREDUTRC_SN: TFloatField;
    Tb_UFPREDUTRD_SN: TFloatField;
    Tb_UFPREDUTRE_SN: TFloatField;
    Tb_UFPREDUTRF_SN: TFloatField;
    Tb_UFPREDUTRG_SN: TFloatField;
    Tb_UFPREDUTRH_SN: TFloatField;
    Tb_UFPREDUTRI_SN: TFloatField;
    Tb_GerFin: TQuery;
    Tb_LocLEXP_EMBARGUE_UF: TStringField;
    Tb_LocLEXP_EMBARGUE_LOCAL: TStringField;
    Tb_PargerPORDEMCADPRO: TFloatField;
    Query7: TQuery;
    Tb_LC1LC1_CASASDEC: TFloatField;
    Tb_ForFCGC: TStringField;
    Tb_Ped01P1ANALISE: TFloatField;
    Tb_ProPDKIT: TStringField;
    Tb_LC2LC2_GANHOU: TStringField;
    Query10: TQuery;
    Query_Soma: TQuery;
    Qr_Soma: TQuery;
    Tb_Forcgc_mask: TStringField;
    Tb_PcusPTIPO: TFloatField;
    Tb_CliCPEDELE_AJUSTE_PRECO: TFloatField;
    Tb_CliCPEDELE_PRECO_PADRAO: TStringField;
    Tb_VenVPEDELE_SENHA: TStringField;
    Tb_VenVPEDELE_AJUSTE_PRECO: TFloatField;
    Tb_VenVPEDELE_PRECO_PADRAO: TStringField;
    Tb_VenVPEDELE_BLOQUEIO: TStringField;
    Tb_VenVPEDELE_MOT_BLOQUEIO: TMemoField;
    Tb_CliCPEDELE_BLOQUEIO: TStringField;
    Tb_CliCPEDELE_MOT_BLOQUEIO: TMemoField;
    Tb_ProPDFIS_PRED_ICMS_EST: TFloatField;
    Tb_ProPDFIS_PRED_ICMS_INT: TFloatField;
    Tb_ProPDFIS_PIS_ALIQ_ENTRADA: TFloatField;
    Tb_ProPDFIS_COFINS_ALIQ_ENTRADA: TFloatField;
    Tb_ProPDFIS_PIS_ALIQ_SAIDA: TFloatField;
    Tb_ProPDFIS_COFINS_ALIQ_SAIDA: TFloatField;
    Tb_ProPDFIS_ORIGEM: TStringField;
    Tb_ProPDFIS_CST_ICMS_EST_REV: TStringField;
    Tb_ProPDFIS_CST_ICMS_EST_CF: TStringField;
    Tb_ProPDFIS_CST_ICMS_INT_CF: TStringField;
    Tb_ProPDFIS_CST_ICMS_INT_REV: TStringField;
    Tb_ProPDFIS_CSOSN_EST_REV: TStringField;
    Tb_ProPDFIS_CSOSN_EST_CF: TStringField;
    Tb_ProPDFIS_CSOSN_INT_REV: TStringField;
    Tb_ProPDFIS_CSOSN_INT_CF: TStringField;
    Tb_ProPDFIS_CST_PISCOF_ENTRADA: TStringField;
    Tb_ProPDFIS_CST_PISCOF_SAIDA: TStringField;
    Tb_ProPDCODEXT: TFloatField;
    Tb_Propdnomext: TStringField;
    Tb_ExTh: TQuery;
    Tb_ExThCODEMP: TFloatField;
    Tb_ExThNOMETHREAD: TStringField;
    Tb_ExThNOMEPC: TStringField;
    Tb_ExThENDERMAC: TStringField;
    Tb_ExThSTATUS: TFloatField;
    Tb_ExThHORAINICIO: TStringField;
    Tb_ExThHORAFIM: TStringField;
    Tb_ProPDCONTESP: TFloatField;
    Tb_ProPDCMET_BITOLA: TFloatField;
    Tb_ProPDCMET_CONSTANTE: TFloatField;
    Tb_CliCMOTDES: TFloatField;
    Src_Ped02_Canc: TDataSource;
    Tb_Ped02_Canc: TQuery;
    Up_Ped02_Canc: TUpdateSQL;
    Tb_Ped02_CancP2EX_CODCAI: TFloatField;
    Tb_Ped02_CancP2EX_DATHOR_EXC: TDateTimeField;
    Tb_Ped02_CancP2EX_NUMEROCF: TFloatField;
    Tb_Ped02_CancP2EX_CHAVE: TFloatField;
    Tb_Ped02_CancP2EX_ITEMVALOR: TStringField;
    Tb_Ped02_CancP2EX_LOTSEQ: TFloatField;
    Tb_Ped02_CancP2EX_CODEMP: TFloatField;
    Tb_Ped02_CancP2EX_CODUSR_LOG: TFloatField;
    Tb_Ped02_CancP2EX_NOMUSR_LOG: TStringField;
    Tb_Ped02_CancP2EX_CODUSR_SI: TFloatField;
    Tb_Ped02_CancP2EX_NOMUSR_SI: TStringField;
    Tb_Ped02_CancP2EX_NOMECOMPUTADOR: TStringField;
    Tb_TDVCATCIMPCMET: TFloatField;
    Tb_Ped01P1TOTEXTCOM: TFloatField;
    Tb_Ped01P1ACRESCIMO: TFloatField;
    Tb_Ped01P1DESPACES: TFloatField;
    Tb_Ped01P1MOTDES: TFloatField;
    Tb_Ped01P1TOTVICMSDES: TFloatField;
    Tb_Ped01P1TOTDESCPR: TFloatField;
    Tb_MovProCMPFILIAL: TFloatField;
    Tb_Prosaldo_filial: TFloatField;
    Tb_LGCCLFILIAL: TFloatField;
    Tb_LGCCLQTD_ANALISE: TFloatField;
    Tb_AjuAJFILIAL: TFloatField;
    Tb_Proqtd_analise: TFloatField;
    Tb_Prosaldo_filial_disponivel: TFloatField;
    Tb_ECFCFPORTA: TStringField;
    Tb_PargerPCLIVEN: TFloatField;
    Tb_EmpEMP_IND_NAT_PJ: TStringField;
    Tb_EmpEMP_IND_ATIV: TStringField;
    Tb_CliCSUFRAMA: TStringField;
    Tb_ProPDCODGEN: TStringField;
    Tb_NsNSDATHOR_CANC: TDateTimeField;
    Tb_NsNSXML_NPROT_CANC: TStringField;
    Tb_NsNSDATHOR_INUT: TDateTimeField;
    Tb_NsNSXML_NPROT_INUT: TStringField;
    Tb_PargerPFCORP_SEMMOV: TFloatField;
    Tb_PargerPFDIAS_SEMMOV: TFloatField;
    Tb_InfGridGCODEMP: TFloatField;
    Tb_InfGridGCODUSR: TFloatField;
    Tb_InfGridGFORMULARIO: TStringField;
    Tb_InfGridGNOMEGRID: TStringField;
    Tb_InfGridGCOLUMN: TFloatField;
    Tb_InfGridGFIELD: TStringField;
    Tb_InfGridGWIDTH: TFloatField;
    Tb_InfGridGTITLE: TStringField;
    Tb_TDVCATCIMPPD: TFloatField;
    Tb_ProDATULT_MOV: TDateField;
    Tb_PargerPCOMISVENDA: TFloatField;
    Tb_GproGRPERCDESC: TFloatField;
    Tb_Ped01P1SEMCOMP: TStringField;
    Tb_PV2PV2PORC: TFloatField;
    Tb_CSFCFCODEMP: TFloatField;
    Tb_CSFCFCODSEQ: TFloatField;
    Tb_CSFCFCHAVEP: TFloatField;
    Tb_CSFCFORDEMP: TFloatField;
    Tb_CSFCFRAZAO: TStringField;
    Tb_CSFCFDENOM: TStringField;
    Tb_CSFCFENDER: TStringField;
    Tb_CSFCFBAIRRO: TStringField;
    Tb_CSFCFCIDADE: TStringField;
    Tb_CSFCFUF: TStringField;
    Tb_CSFCFCEP: TStringField;
    Tb_CSFCFTIPOC: TFloatField;
    Tb_CSFCFCGC: TFloatField;
    Tb_CSFCFIE: TStringField;
    Tb_CSFCFFONE: TStringField;
    Tb_CSFCFLOTSEQ: TFloatField;
    Tb_CSFCFCHAVEP_NIVEL: TFloatField;
    Tb_CSFCFFONE_CHAVE: TFloatField;
    Tb_CSFCFCODVEN: TFloatField;
    Tb_CSFCFFAX: TStringField;
    Tb_Ped01Vnomfp: TStringField;
    Tb_PargerPDUPTIP26: TFloatField;
    Tb_PargerPDUPTIP27: TFloatField;
    Tb_PargerPDESTTIP26: TFloatField;
    Tb_PargerPDESTTIP27: TFloatField;
    Tb_EmpEMP_CPF_RESPONS: TFloatField;
    Tb_Ped02P2CODEMP: TFloatField;
    Tb_Ped02P2CHAVE: TFloatField;
    Tb_Ped02P2ORDEM: TFloatField;
    Tb_Ped02P2ITEM: TFloatField;
    Tb_Ped02P2CODPRO: TFloatField;
    Tb_Ped02P2CODANT: TFloatField;
    Tb_Ped02P2QTD: TFloatField;
    Tb_Ped02P2LOTE: TStringField;
    Tb_Ped02P2DTVCTO: TDateTimeField;
    Tb_Ped02P2DESC1: TFloatField;
    Tb_Ped02P2DESC2: TFloatField;
    Tb_Ped02P2VALDES: TFloatField;
    Tb_Ped02P2PRECO: TFloatField;
    Tb_Ped02P2SIT: TStringField;
    Tb_Ped02P2CODFAB: TFloatField;
    Tb_Ped02P2BASEN: TFloatField;
    Tb_Ped02P2ICMSN: TFloatField;
    Tb_Ped02P2REPAS: TFloatField;
    Tb_Ped02P2BASER: TFloatField;
    Tb_Ped02P2ICMSR: TFloatField;
    Tb_Ped02P2LISTA: TFloatField;
    Tb_Ped02P2STATUS: TFloatField;
    Tb_Ped02P2PCOTAB: TFloatField;
    Tb_Ped02P2UCPR: TFloatField;
    Tb_Ped02P2PCOCUS: TFloatField;
    Tb_Ped02P2TOTDES: TFloatField;
    Tb_Ped02P2DESCRAT: TFloatField;
    Tb_Ped02P2TABELA: TStringField;
    Tb_Ped02P2ALIPI: TFloatField;
    Tb_Ped02P2VALIPI: TFloatField;
    Tb_Ped02P2BCINR: TFloatField;
    Tb_Ped02P2ICMSNR: TFloatField;
    Tb_Ped02P2ISENTAS: TFloatField;
    Tb_Ped02P2ALIQ: TFloatField;
    Tb_Ped02P2ALIQNR: TFloatField;
    Tb_Ped02P2PCOMIS: TFloatField;
    Tb_Ped02P2VCOMIS: TFloatField;
    Tb_Ped02P2DESCM: TFloatField;
    Tb_Ped02P2CFO: TFloatField;
    Tb_Ped02P2SEMCOM: TFloatField;
    Tb_Ped02P2TOTLIQ: TFloatField;
    Tb_Ped02P2PDESCF: TFloatField;
    Tb_Ped02P2VDESCF: TFloatField;
    Tb_Ped02P2ACRECONV: TFloatField;
    Tb_Ped02P2ACREGER: TFloatField;
    Tb_Ped02P2VCOM02: TFloatField;
    Tb_Ped02P2VCOM03: TFloatField;
    Tb_Ped02P2TOTOUT: TFloatField;
    Tb_Ped02P2LOTSEQ: TFloatField;
    Tb_Ped02P2PCOMAX: TFloatField;
    Tb_Ped02P2QTDDEV: TFloatField;
    Tb_Ped02P2PROMOCAO: TStringField;
    Tb_Ped02P2DESC3: TFloatField;
    Tb_Ped02P2CODGRU: TFloatField;
    Tb_Ped02P2VCOM04: TFloatField;
    Tb_Ped02P2ACRERAT: TFloatField;
    Tb_Ped02P2QTD_ENTREGUE: TFloatField;
    Tb_Ped02P2QTD_ENTREGANDO: TFloatField;
    Tb_Ped02P2AMBIENTE: TStringField;
    Tb_Ped02P2PCOMIS_EXTRA: TFloatField;
    Tb_Ped02P2VCOMIS_EXTRA: TFloatField;
    Tb_Ped02P2STATUS_PED1: TFloatField;
    Tb_Ped02P2TIPO: TFloatField;
    Tb_Ped02P2PCOFPG: TFloatField;
    Tb_Ped02P2CFOSUBECF: TFloatField;
    Tb_Ped02P2CODAGRU: TFloatField;
    Tb_Ped02P2CONSIG: TFloatField;
    Tb_Ped02P2PCOM02: TFloatField;
    Tb_Ped02P2PCOM03: TFloatField;
    Tb_Ped02P2ST_IVA: TFloatField;
    Tb_Ped02P2ST_REDUT: TFloatField;
    Tb_Ped02P2ST_ICMCRED: TFloatField;
    Tb_Ped02P2ST_ICMDEB: TFloatField;
    Tb_Ped02P2REDUTICM: TFloatField;
    Tb_Ped02P2PRAZO: TFloatField;
    Tb_Ped02P2QTD_ATEN: TFloatField;
    Tb_Ped02P2ALPIS: TFloatField;
    Tb_Ped02P2VALPIS: TFloatField;
    Tb_Ped02P2ALCOFINS: TFloatField;
    Tb_Ped02P2COFINS: TFloatField;
    Tb_Ped02P2CODVEN: TFloatField;
    Tb_Ped02P2TIPO_PCO: TFloatField;
    Tb_Ped02P2CONS_PROPRIO: TFloatField;
    Tb_Ped02P2COMPLEMENTO: TMemoField;
    Tb_Ped02P2CODPRO_ORI: TStringField;
    Tb_Ped02P2NOMPRO_ORI: TStringField;
    Tb_Ped02P2CHAVE_NIVEL: TFloatField;
    Tb_Ped02P2PCRED_SN: TFloatField;
    Tb_Ped02P2PCREDSN: TFloatField;
    Tb_Ped02P2UND: TStringField;
    Tb_Ped02P2PREPAS: TFloatField;
    Tb_Ped02P2MODBCST: TFloatField;
    Tb_Ped02P2KIT_PRO: TStringField;
    Tb_Ped02P2LOTCT: TFloatField;
    Tb_Ped02P2CST_PIS: TStringField;
    Tb_Ped02P2CST_COFINS: TStringField;
    Tb_Ped02P2CSOSN: TFloatField;
    Tb_Ped02P2CSOSN_ORI: TFloatField;
    Tb_Ped02P2ESTNOR: TStringField;
    Tb_Ped02P2ESTCONS: TStringField;
    Tb_Ped02P2ESTTERC: TStringField;
    Tb_Ped02P2ESTREV: TStringField;
    Tb_Ped02P2VLRICMS_SN: TFloatField;
    Tb_Ped02P2SITUACAO: TFloatField;
    Tb_Ped02P2DESC_CAB: TFloatField;
    Tb_Ped02P2CST_IPI: TStringField;
    Tb_Ped02P2CONTESP: TFloatField;
    Tb_Ped02P2VICMSDES: TFloatField;
    Tb_Ped02P2DESCPR: TFloatField;
    Tb_Ped02P2VSEGRAT: TFloatField;
    Tb_Ped02P2VDESPACESRAT: TFloatField;
    Tb_ForFVSANIT: TStringField;
    Tb_TraTRCODBLOQ: TFloatField;
    Tb_TraTRDATHOR_BLOQ: TDateTimeField;
    Tb_TraTRMOTBLOQ: TStringField;
    Tb_TraTRNUMAVMUN: TStringField;
    Tb_TraTRDTAVNUM: TDateTimeField;
    Src_CADCONQ: TDataSource;
    Tb_CADCONQ: TQuery;
    Up_CADCONQ: TUpdateSQL;
    Tb_CADCONQCQ_CODEMP: TFloatField;
    Tb_CADCONQCQ_CHAVE: TFloatField;
    Tb_CADCONQCQ_TIPO: TFloatField;
    Tb_CADCONQCQ_OK: TFloatField;
    Tb_CADCONQselecionado: TStringField;
    Tb_ForFNUMAE: TStringField;
    Tb_ForFDTVAE: TDateTimeField;
    Tb_ForFNUMCRT: TStringField;
    Tb_ForFDTVCRT: TDateTimeField;
    Tb_ForFNUMCBPF: TStringField;
    Tb_ForFDTVCBPF: TDateTimeField;
    Tb_ForFNUMCC: TStringField;
    Tb_ForFDTVCC: TDateTimeField;
    Tb_CADCONQCQ_NOME: TStringField;
    Tb_TraTRNUMCE: TStringField;
    Tb_TraTRDTVCE: TDateTimeField;
    Tb_TraTRNUMPS: TStringField;
    Tb_TraTRDTVPS: TDateTimeField;
    Tb_TraTRNUMS: TStringField;
    Tb_TraTRDTVS: TDateTimeField;
    Tb_TraTRNUMCS: TStringField;
    Tb_TraTRDTVCS: TDateTimeField;
    Tb_ForFNUMAFE: TStringField;
    Tb_ForFDTVAFE: TDateTimeField;
    Tb_ForFCBPF_SOLIDO: TFloatField;
    Tb_ForFCBPF_LIQUIDO: TFloatField;
    Tb_ForFCBPF_INJETAVEL: TFloatField;
    Tb_ForFCBPF_POMADA: TFloatField;
    Tb_ForFDTVSANIT: TDateTimeField;
    Tb_ProPDPERCIMPOSTOS: TFloatField;
    Src_RegRec: TDataSource;
    Tb_RegRec: TQuery;
    Up_RegRec: TUpdateSQL;
    Tb_RegRecRRCODEMP: TFloatField;
    Tb_RegRecRRCODUSR: TFloatField;
    Tb_RegRecRRDATINC: TDateTimeField;
    Tb_RegRecRRPROTOCOLO: TStringField;
    Tb_RegRecRRDATOCO: TDateTimeField;
    Tb_RegRecRROCORRENCIA: TMemoField;
    Tb_RegRecRRTIPO: TFloatField;
    Tb_RegRecRRCODIGO: TFloatField;
    Tb_RegRecRRCODPRO: TFloatField;
    Tb_RegRecRRQTD: TFloatField;
    Tb_RegRecRRLOTEEVCTO: TStringField;
    Tb_RegRecRRPARECER: TFloatField;
    Tb_RegRecRRRESOLUCAO: TMemoField;
    Tb_ProPDTIPO_MED: TFloatField;
    Tb_RegRecNOMPRO: TStringField;
    Tb_RegRecNOMCOD: TStringField;
    Tb_CPcnpj: TStringField;
    Tb_ProPDVENDA_PEND: TFloatField;
    Tb_ForFSITFOR: TFloatField;
    Tb_ProPDTIPOPROD: TFloatField;
    Tb_PargerPDUPTIP28: TFloatField;
    Tb_PargerPDESTTIP28: TFloatField;
    Tb_PargerPDESTTIP29: TFloatField;
    Tb_PargerPDUPTIP29: TFloatField;
    Tb_ForFCRT: TFloatField;
    Tb_FPFPDESCMAX: TFloatField;
    Tb_ForIDFOR: TStringField;
    Tb_CPIDDAP: TStringField;
    Tb_DarIDDAR: TStringField;
    Tb_VenVFCIA_POPULAR_SENHA: TStringField;
    Tb_VenVFCIA_POPULAR_USUARIO: TStringField;
    Tb_ProPDPEDELE_DISP: TFloatField;
    Tb_Ped02P2PERCIMPOSTOS: TFloatField;
    Tb_Ped02P2TIPOPROD: TFloatField;
    Tb_Ped02P2ALIQICMSDES: TFloatField;
    Tb_Ped02P2ALIQAPROXTRIB: TFloatField;
    Tb_Ped02P2VALAPROXTRIB: TFloatField;
    Tb_Ped02P2ICMS_ALIPI: TFloatField;
    Tb_Ped02P2ICMS_BCIPI: TFloatField;
    Tb_Ped02P2ICMS_VLIPI: TFloatField;
    Tb_Ped02P2VSEGRAT_BCICMS: TFloatField;
    Tb_Ped02P2VFRERAT_BCICMS: TFloatField;
    Tb_Ped02P2VFRERAT: TFloatField;
    Tb_Ped02P2VDESPACESRAT_BCICMS: TFloatField;
    Tb_Ped02P2COMPRA_XPED: TStringField;
    Tb_Ped02P2COMPRA_NITEMPED: TFloatField;
    Tb_Ped02P2IMP_IMP_ALIQ: TFloatField;
    Tb_Ped02P2IMP_IMP_VALOR: TFloatField;
    Tb_Ped02P2IMP_IMP_VDESDPADU: TFloatField;
    Tb_Ped02P2IMP_IMP_VII: TFloatField;
    Tb_Ped02P2IMP_IMP_VIOF: TFloatField;
    Tb_Ped02P2IMP_IMP_VBC: TFloatField;
    Tb_Ped02P2IMP_TPVIATRANSP: TFloatField;
    Tb_Ped02P2IMP_VAFRMM: TFloatField;
    Tb_Ped02P2IMP_TPINTERMEDIARIO: TFloatField;
    Tb_Ped02P2IMP_CNPJ: TStringField;
    Tb_Ped02P2IMP_UFTERCEIRO: TStringField;
    Tb_Ped02P2IMP_NDRAW: TFloatField;
    Tb_Ped02P2EXP_NDRAW: TFloatField;
    Tb_Ped02P2EXP_NRE: TFloatField;
    Tb_Ped02P2EXP_CHNFE: TStringField;
    Tb_Ped02P2EXP_QEXPORT: TFloatField;
    Tb_Ped02P2IPI_VBC: TFloatField;
    Tb_Ped02P2PIS_VBC: TFloatField;
    Tb_Ped02P2COFINS_VBC: TFloatField;
    Tb_CfoCFNOME: TStringField;
    Tb_CPCAVALOR_ACRES: TFloatField;
    Tb_ProPDPRECO_INDEX: TFloatField;
    Tb_ProPDPRECO_CODINDEX: TFloatField;
    Tb_LocLCODMUN_PREF: TFloatField;
    Tb_CPCAOBS: TMemoField;
    Tb_DarCROBS: TMemoField;
    Tb_BcoBCB_LOCP02: TStringField;
    Tb_UFPALIQ_CBA: TFloatField;
    Tb_UFPALIQ_CBB: TFloatField;
    Tb_UFPALIQ_CBC: TFloatField;
    Tb_UFPALIQ_CBD: TFloatField;
    Tb_UFPALIQ_CBE: TFloatField;
    Tb_UFPALIQ_CBF: TFloatField;
    Tb_UFPALIQ_CBG: TFloatField;
    Tb_UFPALIQ_CBH: TFloatField;
    Tb_UFPALIQ_CBI: TFloatField;
    Tb_Ped01P1OBS1: TMemoField;
    Tb_Ped01P1OBS2: TMemoField;
    Tb_Ped01P1OBS3: TMemoField;
    Tb_UFPICMSPART_CRED: TFloatField;
    Tb_UFPICMSPART_DEB: TFloatField;
    Tb_CliIDCLI: TStringField;
    Tb_Promarkup: TStringField;
    Tb_VenVGERENTE: TStringField;
    Tb_VenVSUPERVISOR: TStringField;
    Tb_DarCRCOMPETENCIA_DTINICIO: TDateTimeField;
    Tb_Darcompetencia_obs: TStringField;
    Tb_DarCRCOMPETENCIA_TIPO: TFloatField;
    Tb_LDRFC_COMPETENCIA_DTINICIO: TDateTimeField;
    Tb_LDRFC_COMPETENCIA_TIPO: TFloatField;
    Tb_LDRcompetencia_obs: TStringField;
    Tb_CPCACOMPETENCIA_DTINICIO: TDateTimeField;
    Tb_CPCACOMPETENCIA_TIPO: TFloatField;
    Tb_BcoBCSITCAD: TFloatField;
    Tb_Dep_LdrDSITCAD: TFloatField;
    Tb_CCUCCSITCAD: TFloatField;
    Tb_DarCRVALOR_ACRES: TFloatField;
    Tb_ProPDCEST: TStringField;
    Tb_NsNSDATHOR_DENEG: TDateTimeField;
    Tb_NsNSXML_NPROT_DENEG: TStringField;
    Tb_ProPDCODIGO_CNAE: TStringField;
    Tb_FPFPDATHOR_INC: TDateTimeField;
    Tb_FPFPDATHOR_ALT: TDateTimeField;
    Tb_FuncaoCG_NIVEL_LIBERACAO: TFloatField;
    Tb_FPFPBANDEIRA_OPERADORA: TFloatField;
    Tb_EmpEMP_AUTXML_CNPJCPF: TStringField;
    Tb_ProPDREFER: TStringField;
    Tb_NsNSNFCE_DATA: TDateTimeField;
    Tb_NsNSNFCE_NUMERO: TFloatField;
    Tb_NsNSNFCE_CHV_ACESSO: TStringField;
    Tb_NsNSNFCE_SERIE: TStringField;
    Tb_NsNSNFCE_MODELO: TStringField;
    Tb_NsNSNFCE_NPROT: TStringField;
    Tb_NsNSNFCE_SITUACAO: TFloatField;
    Tb_CliCBLOQCONTROLADO: TStringField;
    Tb_Propreco_index_nome: TStringField;
    Tb_DarCRCHAVE_ID: TFloatField;
    Tb_DarCRCHAVE_ID_ANO: TFloatField;
    Tb_CPCACHAVE_ID: TFloatField;
    Tb_CPCACHAVE_ID_ANO: TFloatField;
    cds_retorno: TClientDataSet;
    cds_retornoce_motivo: TMemoField;
    cds_retornoce_coderro: TStringField;
    cds_retornoce_codigo: TStringField;
    Tb_CliCISENTOIE: TStringField;
    Tb_BcoBCCODCAR_C006: TFloatField;
    Tb_BcoBCLAYOUT_PADRAO: TFloatField;
    Tb_DarCRTDAJUSTE: TFloatField;
    Tb_CPCAQTDAJUSTE: TFloatField;
    Tb_CPCADATAINCLUSAO: TDateTimeField;
    Tb_DarCRDATAINCLUSAO: TDateTimeField;
    Tb_PVPVACEITARPCOEXCLUSIVO: TStringField;
    Tb_ProPDIPI_CST: TStringField;
    Tb_ProPDIPI_CENQ: TStringField;
    Tb_NsNSINFAD10: TMemoField;
    Tb_CliCBLOQVDAPRZ: TFloatField;
    Tb_CfoCFCODCTA_EFD: TStringField;
    Tb_PVPVPERCOPERADORA: TFloatField;
    Tb_PVPVPERCANTECIPACAO: TFloatField;
    Tb_NENECODLOC_ORI: TFloatField;
    Tb_NENECODLOC_DEST: TFloatField;
    Tb_NEnomloc_ori: TStringField;
    Tb_NEnomloc_dest: TStringField;
    Tb_Ped01P1TITSEP_PROD_SERV: TFloatField;
    Tb_PVPVTITSEP_PROD_SERV: TFloatField;
    Tb_DarCREXCLUSIVOPARA: TFloatField;
    Tb_Ped01P1NUMNF_SERV: TFloatField;
    Tb_UFPREDUTNA_CF: TFloatField;
    Tb_UFPREDUTNB_CF: TFloatField;
    Tb_UFPREDUTNC_CF: TFloatField;
    Tb_UFPREDUTND_CF: TFloatField;
    Tb_UFPREDUTNE_CF: TFloatField;
    Tb_UFPREDUTNF_CF: TFloatField;
    Tb_UFPREDUTNG_CF: TFloatField;
    Tb_UFPREDUTNH_CF: TFloatField;
    Tb_UFPREDUTNI_CF: TFloatField;
    Tb_ProIDPRO: TStringField;
    Tb_Ped01P1PESO_LIDO_TOTAL: TFloatField;
    Tb_ProPDNOME_COMPRA: TStringField;
    Tb_ProPDCOMPRA_UND: TStringField;
    Tb_CliCIPI_INC_BC_ICMS: TFloatField;
    Tb_UFPREDICMSNOR_BC_PISCOFINS: TFloatField;
    Tb_ProPDCBENEF_CST_FORAE_REV: TStringField;
    Tb_ProPDCBENEF_CST_FORAE_CONSFIN: TStringField;
    Tb_ProPDCBENEF_CST_DENTROE_REV: TStringField;
    Tb_ProPDCBENEF_CST_DENTROE_CONSFIN: TStringField;
    Tb_Ped02P2CBENEF: TStringField;
    Tb_CliCDISTANCIAKM: TFloatField;
    Tb_Ped01P1ID_NEW: TFloatField;
    Tb_Ped02P2ID_NEW: TFloatField;
    Tb_Ped02P2ID_PED01_NEW: TFloatField;
    Tb_DarCRID_NEW: TFloatField;
    Tb_DarCRID_PED01_NEW: TFloatField;
    Tb_DarCRID_LDR_NEW: TFloatField;
    Tb_LDRLDR_ID_NEW: TFloatField;
    Tb_NENEID_NEW: TFloatField;
    Tb_NENEID_PF01_NEW: TFloatField;
    Tb_CPCAID_NEW: TFloatField;
    Tb_CPCAID_PF01_NEW: TFloatField;
    Tb_CPCAID_LDR_NEW: TFloatField;
    Tb_AjuAJID_NEW: TFloatField;
    Tb_NsNSID_NEW: TFloatField;
    Tb_NsNSID_PED01_NEW: TFloatField;
    Tb_CPnforigem: TStringField;
    Tb_Ped01P1CSLL: TFloatField;
    Tb_Ped01P1IRRF: TFloatField;
    Tb_Ped02P2IRRF_PERC: TFloatField;
    Tb_Ped02P2IRRF_VALOR: TFloatField;
    Tb_Ped02P2CSLL_PERC: TFloatField;
    Tb_Ped02P2CSLL_VALOR: TFloatField;
    Tb_UFPGERARDIFAL: TFloatField;
    Tb_ProPDPRECO_RESIDUO: TFloatField;
    Tb_ProPDOBS_NEW: TMemoField;
    Tb_PF2PF2CBENEF: TStringField;
    Tb_Nsinfo_emissao: TStringField;
    Tb_CliCVALMIM_EMPRESTIMO: TFloatField;
    Tb_Min1CM1VEICULO: TStringField;
    Tb_Min1CM1VEICULO_PLACA: TStringField;
    Tb_Min1CM1KM_SAIDA: TFloatField;
    Tb_Min1CM1KM_CHEGADA: TFloatField;
    Tb_Min1CM1DATHOR_SAIDA: TDateTimeField;
    Tb_Min1CM1DATHOR_CHEGADA: TDateTimeField;
    Tb_BcoBCDOCBOL: TStringField;
    Tb_BcoBCDOCEMIBOL: TFloatField;
    Tb_EmpEMP_WHATSAPP_AUTO: TStringField;
    Tb_EmpEMP_WHATSAPP_ID: TStringField;
    Tb_CliCWHATSAPP: TStringField;
    Tb_Min1CM1TEMPAMB: TFloatField;
    Tb_Min1CM1VEICULO_COND_LIMPEZA: TFloatField;
    Tb_Min1CM1RECIPIENTE_LACRADOS: TFloatField;
    Tb_Min1CM1DADOS_PROD_CONDIZ_NF: TFloatField;
    Tb_Min1CM1RECIPIENTE_NAO_IDENT: TFloatField;
    Tb_Min1CM1RECIPIENTE_DANIFICADO: TFloatField;
    Tb_PF1PF1ID_NEW: TFloatField;
    Tb_PF1razfor: TStringField;
    Tb_ChqCHID_NEW: TFloatField;
    Tb_LDRDATCONC: TDateTimeField;
    Tb_Min1CM1NUMSERIE: TStringField;
    Tb_Min1CM1TEMP: TFloatField;
    Tb_PromarkupP03: TStringField;
    Tb_PromarkupP02: TStringField;
    Tb_CliCCERTTECNICO_DTVCTO: TDateTimeField;
    Tb_CliCCERTTECNICO_NUM: TStringField;
    Tb_PargerPVALIDAR_CERT_TECNICO: TFloatField;
    Tb_ForFANVISA_NUMERO: TStringField;
    Tb_ForFANVISA_DTVCTO: TDateTimeField;
    Tb_ForFCERTTECNICO_NUM: TStringField;
    Tb_ForFCERTTECNICO_DTVCTO: TDateTimeField;
    Tb_LGCCLSITUACAO: TFloatField;
    Tb_LGCCLDTFAB: TDateTimeField;
    Tb_AjuAJDTFAB: TDateTimeField;
    Tb_BcoBCSACADOR_AVALISTA_OBS: TStringField;
    Tb_ProPDCODLC_116_03: TStringField;
    Tb_NsNSNFSERV_SERIE: TStringField;
    Tb_NsNSNFSERV_NUMNF_RPS: TFloatField;
    Tb_ProPDCODIGO_SERVICO: TStringField;
    Tb_ProPDALIQ_ISS: TFloatField;
    Tb_Ped01P1SERVICO_OBS_CORPO: TBlobField;
    Tb_Ped01P1SERVICO_OBS_INF_ADIC: TBlobField;
    Tb_CliCISSRETIDO: TFloatField;
    Tb_UFPCBS_ALIQA: TFloatField;
    Tb_UFPCBS_ALIQB: TFloatField;
    Tb_UFPCBS_ALIQC: TFloatField;
    Tb_UFPCBS_ALIQD: TFloatField;
    Tb_UFPCBS_ALIQE: TFloatField;
    Tb_UFPCBS_ALIQF: TFloatField;
    Tb_UFPCBS_ALIQG: TFloatField;
    Tb_UFPCBS_ALIQH: TFloatField;
    Tb_UFPCBS_ALIQI: TFloatField;
    Tb_UFPIBS_ALIQA: TFloatField;
    Tb_UFPIBS_ALIQB: TFloatField;
    Tb_UFPIBS_ALIQC: TFloatField;
    Tb_UFPIBS_ALIQD: TFloatField;
    Tb_UFPIBS_ALIQE: TFloatField;
    Tb_UFPIBS_ALIQF: TFloatField;
    Tb_UFPIBS_ALIQG: TFloatField;
    Tb_UFPIBS_ALIQH: TFloatField;
    Tb_UFPIBS_ALIQI: TFloatField;
    Tb_LocLIBS_ALIQ: TFloatField;
    Tb_ProPDCBS_CST: TStringField;
    Tb_ProPDCODCLASSTRIB: TStringField;
    Tb_Ped02P2CBS_CST: TStringField;
    Tb_Ped02P2CODCLASSTRIB: TStringField;
    Tb_Ped02P2CBS_ALIQ: TFloatField;
    Tb_Ped02P2CBS_BC: TFloatField;
    Tb_Ped02P2CBS_VALOR: TFloatField;
    Tb_Ped02P2IBS_UF_ALIQ: TFloatField;
    Tb_Ped02P2IBS_UF_VALOR: TFloatField;
    Tb_Ped02P2IBS_MUN_ALIQ: TFloatField;
    Tb_Ped02P2IBS_MUN_VALOR: TFloatField;
    Tb_Ped02P2CBS_DEV_TRIB: TFloatField;
    Tb_CliCIBS_ALIQ_UFA: TFloatField;
    Tb_CliCIBS_ALIQ_UFB: TFloatField;
    Tb_CliCIBS_ALIQ_UFC: TFloatField;
    Tb_CliCIBS_ALIQ_UFD: TFloatField;
    Tb_CliCIBS_ALIQ_UFE: TFloatField;
    Tb_CliCIBS_ALIQ_UFF: TFloatField;
    Tb_CliCIBS_ALIQ_UFG: TFloatField;
    Tb_CliCIBS_ALIQ_UFH: TFloatField;
    Tb_CliCIBS_ALIQ_UFI: TFloatField;
    Tb_CliCIBS_ALIQ_MUNA: TFloatField;
    Tb_CliCIBS_ALIQ_MUNB: TFloatField;
    Tb_CliCIBS_ALIQ_MUNC: TFloatField;
    Tb_CliCIBS_ALIQ_MUND: TFloatField;
    Tb_CliCIBS_ALIQ_MUNE: TFloatField;
    Tb_CliCIBS_ALIQ_MUNF: TFloatField;
    Tb_CliCIBS_ALIQ_MUNG: TFloatField;
    Tb_CliCIBS_ALIQ_MUNH: TFloatField;
    Tb_CliCIBS_ALIQ_MUNI: TFloatField;
    Tb_CliCCBS_ALIQA: TFloatField;
    Tb_CliCCBS_ALIQB: TFloatField;
    Tb_CliCCBS_ALIQC: TFloatField;
    Tb_CliCCBS_ALIQD: TFloatField;
    Tb_CliCCBS_ALIQE: TFloatField;
    Tb_CliCCBS_ALIQF: TFloatField;
    Tb_CliCCBS_ALIQG: TFloatField;
    Tb_CliCCBS_ALIQH: TFloatField;
    Tb_CliCCBS_ALIQI: TFloatField;
    Tb_ProPDCODNBS: TStringField;
    Tb_ProPDSERV_INSS_ALIQ: TFloatField;
    Tb_ProPDSERV_INSS_RED: TFloatField;
    Tb_ProPDSERV_IRRF_ALIQ: TFloatField;
    Tb_ProPDSERV_IRRF_RED: TFloatField;
    Tb_FPFPVINCULO_TPAG: TFloatField;
    procedure Tb_FuncaoBeforeInsert(DataSet: TDataSet);
    procedure Tb_CliAfterInsert(DataSet: TDataSet);
    procedure Tb_CliBeforeInsert(DataSet: TDataSet);
    procedure Tb_ForAfterCancel(DataSet: TDataSet);
    procedure Tb_ForAfterInsert(DataSet: TDataSet);
    procedure Tb_ForBeforeInsert(DataSet: TDataSet);
    procedure Tb_ConBeforeInsert(DataSet: TDataSet);
    procedure Tb_GruAfterCancel(DataSet: TDataSet);
    procedure Tb_GruAfterInsert(DataSet: TDataSet);
    procedure Tb_GruBeforeInsert(DataSet: TDataSet);
    procedure Tb_SGBeforeInsert(DataSet: TDataSet);
    procedure Tb_ForBeforePost(DataSet: TDataSet);
    procedure Tb_CPForBeforePost(DataSet: TDataSet);
    procedure Tb_FPTaxTitBeforeInsert(DataSet: TDataSet);
    procedure Tb_PVBeforePost(DataSet: TDataSet);
    procedure Tb_NECalcFields(DataSet: TDataSet);
    procedure Tb_CPBeforePost(DataSet: TDataSet);
    procedure Tb_CPCalcFields(DataSet: TDataSet);
    procedure Tb_ECFBeforeInsert(DataSet: TDataSet);
    procedure Tb_ECFAfterInsert(DataSet: TDataSet);
    procedure Tb_RamBeforeInsert(DataSet: TDataSet);
    procedure Tb_RamAfterInsert(DataSet: TDataSet);
    procedure Tb_GproBeforeInsert(DataSet: TDataSet);
    procedure Tb_GproAfterInsert(DataSet: TDataSet);
    procedure Tb_TconAfterInsert(DataSet: TDataSet);
    procedure Tb_TproAfterInsert(DataSet: TDataSet);
    procedure Tb_TconBeforeInsert(DataSet: TDataSet);
    procedure Tb_TproBeforeInsert(DataSet: TDataSet);
    procedure Tb_TabAfterInsert(DataSet: TDataSet);
    procedure Tb_TabBeforeInsert(DataSet: TDataSet);
    procedure Tb_VenBeforeInsert(DataSet: TDataSet);
    procedure Tb_VenAfterInsert(DataSet: TDataSet);
    procedure Tb_UFAfterInsert(DataSet: TDataSet);
    procedure Tb_CfoAfterInsert(DataSet: TDataSet);
    procedure Tb_DarAfterInsert(DataSet: TDataSet);
    procedure Tb_NsAfterInsert(DataSet: TDataSet);
    procedure Tb_NsCalcFields(DataSet: TDataSet);
    procedure Tb_TraAfterInsert(DataSet: TDataSet);
    procedure Tb_TraBeforeInsert(DataSet: TDataSet);
    procedure Tb_BcoBeforeInsert(DataSet: TDataSet);
    procedure Tb_BcoAfterInsert(DataSet: TDataSet);
    procedure Tb_CCUAfterInsert(DataSet: TDataSet);
    procedure Tb_LDRBeforeInsert(DataSet: TDataSet);
    procedure Tb_LDRAfterInsert(DataSet: TDataSet);
    procedure Tb_Dep_LdrAfterInsert(DataSet: TDataSet);
    procedure Tb_LDRCalcFields(DataSet: TDataSet);
    procedure Tb_TDVBeforeInsert(DataSet: TDataSet);
    procedure Tb_TDVAfterInsert(DataSet: TDataSet);
    procedure Tb_PVAfterInsert(DataSet: TDataSet);
    procedure Tb_AjuBeforeInsert(DataSet: TDataSet);
    procedure Tb_AjuAfterInsert(DataSet: TDataSet);
    procedure Tb_CVBeforeInsert(DataSet: TDataSet);
    procedure Tb_CVAfterInsert(DataSet: TDataSet);
    procedure Tb_CacBeforeInsert(DataSet: TDataSet);
    procedure Tb_CacAfterInsert(DataSet: TDataSet);
    procedure Tb_CacCalcFields(DataSet: TDataSet);
    procedure Tb_LGCAfterInsert(DataSet: TDataSet);
    procedure Tb_Pro2CalcFields(DataSet: TDataSet);
    procedure Tb_LC1CalcFields(DataSet: TDataSet);
    procedure Tb_LC1AfterInsert(DataSet: TDataSet);
    procedure Tb_LC2CalcFields(DataSet: TDataSet);
    procedure Tb_Pv2AfterInsert(DataSet: TDataSet);
    procedure Tb_Pv2BeforePost(DataSet: TDataSet);
    procedure Tb_DarCalcFields(DataSet: TDataSet);
    procedure Tb_ComDAfterInsert(DataSet: TDataSet);
    procedure Tb_SupBeforeInsert(DataSet: TDataSet);
    procedure Tb_SupAfterInsert(DataSet: TDataSet);
    procedure Tb_UFBeforePost(DataSet: TDataSet);
    procedure Tb_VenCalcFields(DataSet: TDataSet);
    procedure Tb_VenBeforePost(DataSet: TDataSet);
    procedure Tb_ChqCalcFields(DataSet: TDataSet);
    procedure Tb_ChqBeforeInsert(DataSet: TDataSet);
    procedure Tb_ChqAfterInsert(DataSet: TDataSet);
    procedure Tb_Ped01CalcFields(DataSet: TDataSet);
    procedure Tb_ChqBeforePost(DataSet: TDataSet);
    procedure Tb_ForCalcFields(DataSet: TDataSet);
    procedure Tb_TDVFTBeforeInsert(DataSet: TDataSet);
    procedure Tb_TDVFTAfterInsert(DataSet: TDataSet);
    procedure Tb_BaiBeforeInsert(DataSet: TDataSet);
    procedure Tb_BaiAfterInsert(DataSet: TDataSet);
    procedure Tb_LocBeforeInsert(DataSet: TDataSet);
    procedure Tb_LocAfterInsert(DataSet: TDataSet);
    procedure Tb_LocBeforePost(DataSet: TDataSet);
    procedure Tb_LDRBeforePost(DataSet: TDataSet);
    procedure Tb_RedBeforeInsert(DataSet: TDataSet);
    procedure Tb_RedAfterInsert(DataSet: TDataSet);
    procedure Tb_ContatoAfterCancel(DataSet: TDataSet);
    procedure Tb_ContatoAfterInsert(DataSet: TDataSet);
    procedure Tb_ContatoCalcFields(DataSet: TDataSet);
    procedure Tb_ContatoBeforePost(DataSet: TDataSet);
    procedure Tb_EmpCalcFields(DataSet: TDataSet);
    procedure Query3PostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure Tb_PVBeforeDelete(DataSet: TDataSet);
    procedure Tb_MI01CalcFields(DataSet: TDataSet);
    procedure Tb_MI01AfterInsert(DataSet: TDataSet);
    procedure Src_MI01DataChange(Sender: TObject; Field: TField);
    procedure Tb_NsBeforePost(DataSet: TDataSet);
    procedure Par_LDRBeforePost(DataSet: TDataSet);
    procedure c(DataSet: TDataSet);
    procedure Tb_AjuBeforePost(DataSet: TDataSet);
    procedure Tb_CacBeforePost(DataSet: TDataSet);
    procedure Tb_CalBeforePost(DataSet: TDataSet);
    procedure Tb_Cb01BeforePost(DataSet: TDataSet);
    procedure Tb_Cb02BeforePost(DataSet: TDataSet);
    procedure Tb_CfoBeforePost(DataSet: TDataSet);
    procedure Tb_CIBeforePost(DataSet: TDataSet);
    procedure Tb_ComDBeforePost(DataSet: TDataSet);
    procedure Tb_CSFBeforePost(DataSet: TDataSet);
    procedure Tb_CusBeforePost(DataSet: TDataSet);
    procedure Tb_Cus2BeforePost(DataSet: TDataSet);
    procedure Tb_ECFBeforePost(DataSet: TDataSet);
    procedure Tb_EmpBeforePost(DataSet: TDataSet);
    procedure Tb_EstBeforePost(DataSet: TDataSet);
    procedure Tb_GruBeforePost(DataSet: TDataSet);
    procedure Tb_IDVBeforePost(DataSet: TDataSet);
    procedure Tb_JD01BeforePost(DataSet: TDataSet);
    procedure Tb_JD02BeforePost(DataSet: TDataSet);
    procedure Tb_LC2BeforePost(DataSet: TDataSet);
    procedure Tb_LGCBeforePost(DataSet: TDataSet);
    procedure Tb_MI01BeforePost(DataSet: TDataSet);
    procedure Tb_MI02BeforePost(DataSet: TDataSet);
    procedure Tb_ParFonBeforePost(DataSet: TDataSet);
    procedure Tb_PargerBeforePost(DataSet: TDataSet);
    procedure Tb_Ped01BeforePost(DataSet: TDataSet);
    procedure Tb_Ped01DBeforePost(DataSet: TDataSet);
    procedure Tb_Ped01VBeforePost(DataSet: TDataSet);
    procedure Tb_Ped02BeforePost(DataSet: TDataSet);
    procedure Tb_Ped02DBeforePost(DataSet: TDataSet);
    procedure Tb_PenBeforePost(DataSet: TDataSet);
    procedure Tb_PF1BeforePost(DataSet: TDataSet);
    procedure Tb_Pf1VBeforePost(DataSet: TDataSet);
    procedure Tb_PF2BeforePost(DataSet: TDataSet);
    procedure Tb_PO99BeforePost(DataSet: TDataSet);
    procedure Tb_TDVFTBeforePost(DataSet: TDataSet);
    procedure Tb_TDVCABeforePost(DataSet: TDataSet);
    procedure Tb_TDVBeforePost(DataSet: TDataSet);
    procedure Tb_TCaBeforePost(DataSet: TDataSet);
    procedure Tb_TabBeforePost(DataSet: TDataSet);
    procedure Tb_GenAfterInsert(DataSet: TDataSet);
    procedure Tb_PGenAfterInsert(DataSet: TDataSet);
    procedure Tb_PGenCalcFields(DataSet: TDataSet);
    procedure Tb_PGenBeforePost(DataSet: TDataSet);
    procedure Tb_ProAfterCancel(DataSet: TDataSet);
    procedure Tb_ProAfterInsert(DataSet: TDataSet);
    procedure Tb_ProBeforeInsert(DataSet: TDataSet);
    procedure Tb_ProPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure Tb_Ped02CalcFields(DataSet: TDataSet);
    procedure Tb_ProCalcFields(DataSet: TDataSet);
    procedure Tb_CSFBeforeInsert(DataSet: TDataSet);
    procedure Tb_CSFAfterInsert(DataSet: TDataSet);
    procedure Src_ECFDataChange(Sender: TObject; Field: TField);
    procedure Tb_PenCalcFields(DataSet: TDataSet);
    procedure Tb_PVCalcFields(DataSet: TDataSet);
    procedure Src_PVDataChange(Sender: TObject; Field: TField);
    procedure Tb_PcusBeforePost(DataSet: TDataSet);
    procedure Tb_PcusAfterInsert(DataSet: TDataSet);
    procedure Tb_PcusBeforeInsert(DataSet: TDataSet);
    procedure Tb_FPBeforeInsert(DataSet: TDataSet);
    procedure Tb_FPBeforePost(DataSet: TDataSet);
    procedure Tb_FPAfterInsert(DataSet: TDataSet);
    procedure Tb_BcoCalcFields(DataSet: TDataSet);
    procedure Tb_MovBeforePost(DataSet: TDataSet);
    procedure Tb_RSin01AfterInsert(DataSet: TDataSet);
    procedure Tb_RSin01BeforePost(DataSet: TDataSet);
    procedure Tb_RSin02BeforePost(DataSet: TDataSet);
    procedure Tb_RSin01CalcFields(DataSet: TDataSet);
    procedure Src_RSin01DataChange(Sender: TObject; Field: TField);
    procedure Tb_ECF_FPAfterInsert(DataSet: TDataSet);
    procedure Tb_CliBeforeDelete(DataSet: TDataSet);
    procedure Tb_TDVCalcFields(DataSet: TDataSet);
    procedure Tb_CPAfterInsert(DataSet: TDataSet);
    procedure Tb_DarBeforePost(DataSet: TDataSet);
    procedure Tb_CliCalcFields(DataSet: TDataSet);
    procedure Tb_ProBeforePost(DataSet: TDataSet);
    procedure Tb_Min1BeforePost(DataSet: TDataSet);
    procedure Tb_UFCalcFields(DataSet: TDataSet);
    procedure Tb_CCUBeforeInsert(DataSet: TDataSet);
    procedure Tb_Dep_LdrBeforeInsert(DataSet: TDataSet);
    procedure Tb_GenBeforeInsert(DataSet: TDataSet);
    procedure TB_PED02_SOBRASCalcFields(DataSet: TDataSet);
    procedure TB_PED02_SOBRASBeforePost(DataSet: TDataSet);
    procedure TB_PED02_SOBRAS_MPCalcFields(DataSet: TDataSet);
    procedure TB_PED02_SOBRAS_MPBeforePost(DataSet: TDataSet);
    procedure TB_PED01_SOBRASBeforePost(DataSet: TDataSet);
    procedure TB_TPDREBeforePost(DataSet: TDataSet);
    procedure Tb_CCUCalcFields(DataSet: TDataSet);
    procedure TB_TPDRECalcFields(DataSet: TDataSet);
    procedure Tb_MovProBeforePost(DataSet: TDataSet);
    procedure Tb_BaiAfterCancel(DataSet: TDataSet);
    procedure asi(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure Tb_Ped01VCalcFields(DataSet: TDataSet);
    procedure Tb_CADCONQCalcFields(DataSet: TDataSet);
    procedure Tb_RegRecAfterInsert(DataSet: TDataSet);
    procedure Tb_RegRecCalcFields(DataSet: TDataSet);
    procedure Tb_FuncaoAfterInsert(DataSet: TDataSet);
    procedure Tb_NEAfterInsert(DataSet: TDataSet);
    procedure Tb_Min1BeforeInsert(DataSet: TDataSet);
    procedure Tb_PF1CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ftestaradoconnection;

  end;
function fdm1StartCommit: boolean;
function fImprimirErros(pNome, pErros: String): Boolean;
function fImprimirErros2(pNome, pErros: String): Boolean;


var
  DM1: TDM1;
  cod: Real;
  mCodStr: String;
implementation

uses S_Agde, lerarq, func_excecoes,func2, S_DM2, S_DM6, S_DM1_ADO;


{$R *.DFM}



procedure TDM1.Tb_FuncaoBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add(' SELECT MAX(CODCAR) AS CODIGO FROM CADCAR'
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADCAR',[]),'',' where CODEMP='+IntToStr(codemp)));
DM1.Query1.Open;
if DM1.Tb_PargerPDCADCAR.Value=1 then
   begin
   Cod:=StrToInt('0'+Copy(DM1.Query1.Fields[0].AsString,1,Length(DM1.Query1.Fields[0].AsString)-1))+1;
   Cod:=Digito(Cod);
   end
else
   cod      := DM1.Query1.FieldByName('CODIGO').ASFloat + 1;
end;

procedure TDM1.Tb_CliAfterInsert(DataSet: TDataSet);
begin
Tb_CliCCODCLI.Value:=Cod;
Tb_CliCRAZAO.Value:=' ';
if DM1.Qr_TID.Locate('TINOME','CADCLI',[]) then
   begin
   if DM1.Qr_TIDTIQTD.AsInteger=1 then
      Tb_CliCCODEMP.Value:=codemp
   else if codemp>100 then
      Tb_CliCCODEMP.Value:=codemp-100
   else
      Tb_CliCCODEMP.Value:=codemp;
   end
else if codemp>100 then
  Tb_CliCCODEMP.Value:=codemp-100
else
  Tb_CliCCODEMP.Value:=codemp;
Tb_CliCMOTDES.AsInteger:=0;
//Tb_CliCCODEMP.Value:=codemp;
Tb_CliCDTCAD.Value:=pdatasis;
Tb_CliCDTINC.AsDateTime:=now;
Tb_CliCCODUSR.Value:=codusr;
Tb_CliCICMSR.Value:=0;
Tb_CliCCONSF.Value:=0;
Tb_CliCICMSTP.Value:=0;
Tb_CliCREPAS.Value :=0;
Tb_CliCIPI.Value:=0;
Tb_CliCLCRED.Value:=0;
Tb_CliCSITCLI.Value:=0;
Tb_CliCNIVEL.Value :=100;
Tb_CliCFRETEPC.Value :=9;

FAtualizaBanco(0,'CADCLI','CCODEMP',DM1.Tb_CliCCODEMP.AsString
,['CCODCLI'],[DM1.Tb_CliCCODCLI.AsString]
 ,DM1.Tb_Cli);

end;

procedure TDM1.Tb_CliBeforeInsert(DataSet: TDataSet);
begin
While true do
   begin
   cod:=flBuscarCodigos(0,'CADCLI');
   if DM1.Tb_PargerPDCADCLI.Value=1 then
      Cod:=Digito(Cod);
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('select count(*) from CADCLI where '
                     +iif(DM1.Qr_tid.Locate('TINOME','CADCLI',[]),'','  CCODEMP=0'+IntToStr(codemp)+' and ')
                     +' CCODCLI=0'+FloatTostr(cod));
   DM1.Query1.Open;
   if DM1.Query1.Fields[0].AsInteger<=0 then
      break;
   end;
{

                      then
      begin
      if not (DM1.Tb_PargerPCODCLI_MAX.IsNull) and (DM1.Tb_PargerPCODCLI_MAX.Value>0) then
         DM1.Query1.SQL.Add(' where CCODCLI<'+DM1.Tb_PargerPCODCLI_MAX.AsString);
      end
   else
      begin
      DM1.Query1.SQL.Add(' where  CCODEMP='+IntTostr(Codemp));
      if not (DM1.Tb_PargerPCODCLI_MAX.IsNull) and (DM1.Tb_PargerPCODCLI_MAX.Value>0) then
         DM1.Query1.SQL.Add(' and CCODCLI<'+DM1.Tb_PargerPCODCLI_MAX.AsString);
      end;
   DM1.Query1.Open;





{   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('select max(CCODCLI) from CADCLI ');
   if DM1.Qr_tid.Locate('TINOME','CADCLI',[]) then
      begin
      if not (DM1.Tb_PargerPCODCLI_MAX.IsNull) and (DM1.Tb_PargerPCODCLI_MAX.Value>0) then
         DM1.Query1.SQL.Add(' where CCODCLI<'+DM1.Tb_PargerPCODCLI_MAX.AsString);
      end
   else
      begin
      DM1.Query1.SQL.Add(' where  CCODEMP='+IntTostr(Codemp));
      if not (DM1.Tb_PargerPCODCLI_MAX.IsNull) and (DM1.Tb_PargerPCODCLI_MAX.Value>0) then
         DM1.Query1.SQL.Add(' and CCODCLI<'+DM1.Tb_PargerPCODCLI_MAX.AsString);
      end;
   DM1.Query1.Open;

if DM1.Tb_PargerPDCADCLI.Value=1 then
   begin
 //  Cod:=StrToInt('0'+Copy(DM1.Query1.Fields[0].AsString,1,Length(DM1.Query1.Fields[0].AsString)-1))+1;
   Cod:=Digito(Cod);
   end;
//else
//   cod:=DM1.Query1.Fields[0].AsInteger+1;
}
end;

procedure TDM1.Tb_ForAfterCancel(DataSet: TDataSet);
begin
If Tb_ForFrazao.Value='_' then Tb_For.Delete;

end;

procedure TDM1.Tb_ForAfterInsert(DataSet: TDataSet);
begin
try
    Tb_ForFCODFOR.Value :=Cod;
    Tb_ForFRAZAO.Value  :='_';
    if codemp>100 then
       Tb_ForFCODEMP.Value:=codemp-100
    else
       Tb_ForFCODEMP.Value:=codemp;
    Tb_ForFCGC.AsString:='00000000000000';
    Tb_ForFRESTFOR.Value:=0;
    Tb_For.Post;
    Tb_For.Edit;
except on e : exception do
  fGerarEvento('erro ao incluir '+e.message);

  end;

end;

procedure TDM1.Tb_ForBeforeInsert(DataSet: TDataSet);
begin
try
While true do
   begin
   cod:=flBuscarCodigos(0,'CADFOR');
   fImprimirErros('c:\sge\fo4134','Codigo : '+FloatTostr(cod));
   if DM1.Tb_PargerPDCADFOR.Value=1 then
      Cod:=Digito(Cod);
   fImprimirErros('c:\sge\fo4136','Codigo : '+FloatTostr(cod));


   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('select count(*) from CADFOR where '
                     +iif(DM1.Qr_tid.Locate('TINOME','CADFOR',[]),'','  FCODEMP=0'+IntToStr(codemp)+' and ')
                     +' FCODFOR=0'+FloatTostr(cod));
   DM1.Query1.Open;
   fImprimirErros('c:\sge\fo4146',dm1.Query1.Text);
   fImprimirErros('c:\sge\fo4147','ANTES DE GRAVAR Codigo : '+FloatTostr(cod));

   if DM1.Query1.Fields[0].AsInteger<=0 then
      break;
   end;
except on e : exception do
  fGerarEvento('antes de incluir '+e.message);
  end;

end;

procedure TDM1.Tb_ConBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('select max(CCODCON) from CADCON');
if not DM1.Qr_Tid.Locate('TINOME','CADCON',[]) then
   DM1.Query1.SQl.add(' where CCODEMP=0'+IntToStr(codemp));
DM1.Query1.Open;
if DM1.Tb_PargerPDCADCON.Value=1 then
   begin
   Cod:=StrToInt('0'+Copy(DM1.Query1.Fields[0].AsString,1,Length(DM1.Query1.Fields[0].AsString)-1))+1;
   Cod:=Digito(Cod);
   end
else
   cod:=DM1.Query1.Fields[0].AsInteger+1;

end;

procedure TDM1.Tb_GruAfterCancel(DataSet: TDataSet);
begin
If Tb_GruGRNome.Value='_' then Tb_Gru.Delete;

end;

procedure TDM1.Tb_GruAfterInsert(DataSet: TDataSet);
begin
Tb_GruGRCODGRU.Value:=Cod;
Tb_GruGRNOME.Value:='_';

if codemp>100 then
   Tb_GruGRCODEMP.Value:=codemp-100
else
   Tb_GruGRCODEMP.Value:=codemp;

Tb_Gru.Post;
Tb_Gru.Edit;

end;

procedure TDM1.Tb_GruBeforeInsert(DataSet: TDataSet);
begin

DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('select max(GCODGRU) from CADGRU ');
if not DM1.Qr_TID.Locate('TINOME','CADGRU',[]) then
   DM1.Query1.SQl.Add(' where GCODEMP=0'+InttoStr(codemp));
DM1.Query1.Open;

if DM1.Tb_PargerPDCADGRU.Value=1 then
   begin
   Cod:=StrToInt('0'+Copy(DM1.Query1.Fields[0].AsString,1,Length(DM1.Query1.Fields[0].AsString)-1))+1;
   Cod:=Digito(Cod);
   end
else
   cod:=DM1.Query1.Fields[0].AsInteger+1;
DM1.Query1.Close;

end;

procedure TDM1.Tb_SGBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('select max(SGCODSG) from CADSG ');
if not DM1.Qr_tid.Locate('TINOME','CADSG',[]) then
   DM1.Query1.SQl.Add(' where SGCOCEMP=0'+IntTostr(codemp));
DM1.Query1.Open;
Cod:=StrToInt('0'+Copy(DM1.Query1.Fields[0].AsString,1,Length(DM1.Query1.Fields[0].AsString)-1))+1;
Cod:=Digito(Cod);
DM1.Query1.Close;

end;

procedure TDM1.Tb_ForBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
IF Tb_ForFICMSN.IsNull then
   Tb_ForFICMSN.Value:=1;
if Tb_ForFCICMSR.IsNull then
   Tb_ForFCICMSR.Value:=1;
For i:=0 to DM1.Tb_For.FieldCount-1 do
   begin
   if not DM1.Tb_For.Fields[i].IsNull then
      Continue;
   if DM1.Tb_For.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword] then
      DM1.Tb_For.Fields[i].Value:=0
//   else if DM1.Tb_For.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_For.Fields[i].Value:=0
   else if DM1.Tb_For.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_For.Fields[i].Value:=' ';
   end;
if DM1.Tb_ForFCGC.AsFloat=0 then
   DM1.Tb_ForFTPPESSOA.AsFloat:=0
else
   begin
   if Fcpf(FORMATFLOAT('00000000000',ValFloat(DM1.Tb_ForFCGC.AsString))) then
      DM1.Tb_ForFTPPESSOA.AsFloat:=1
   else
      DM1.Tb_ForFTPPESSOA.AsFloat:=0;
   end;

For i:=0 to DM1.Tb_For.FieldCount-1 do
   begin
   if not DM1.Tb_For.Fields[i].IsNull then
      Continue;
   if DM1.Tb_For.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_For.Fields[i].Value:=0
//   else if DM1.Tb_For.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_For.Fields[i].Value:=0
   else if DM1.Tb_For.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_For.Fields[i].Value:=' ';
   end;


fImprimirErros('c:\sge\fo4253','ANTES DE GRAVAR Codigo : '+FloatTostr(cod));

end;

procedure TDM1.Tb_CPForBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_CPFor.FieldCount-1 do
   begin
   if not DM1.Tb_CPFor.Fields[i].IsNull then
      Continue;
   if DM1.Tb_CPFor.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword] then
      DM1.Tb_CPFor.Fields[i].Value:=0
//   else if DM1.Tb_CPFor.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_CPFor.Fields[i].Value:=0
   else if DM1.Tb_CPFor.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_CPFor.Fields[i].Value:=' ';
   end;
end;

procedure TDM1.Tb_ProAfterInsert(DataSet: TDataSet);
begin
DM1.Tb_ProPDCODPRO.Value:=cod;

if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
   begin
   if codemp>100 then
      DM1.Tb_ProPDCODEMP.Value:=codemp-100
   else
      DM1.Tb_ProPDCODEMP.Value:=codemp;
   end
else
   begin
   if DM1.Qr_TIDTIQTD.AsInteger=1 then
      DM1.Tb_ProPDCODEMP.Value:=codemp
   else
      begin
      if codemp>100 then
         DM1.Tb_ProPDCODEMP.Value:=codemp-100
      else
         DM1.Tb_ProPDCODEMP.Value:=codemp;
      end;
   end;

DM1.Tb_ProPDSIT.Value:='000';
DM1.Tb_ProPDLISTA.Value:=0;
if Tb_ProPDNOME.IsNull then
   Tb_ProPDNOME.Value:='_';
Tb_ProPDCODBAR.Value :=0;
Tb_ProPDNIVEL.Value  :=0;
Tb_ProPDCODFOR.Value :=0;
Tb_ProPDPRECO1.Value :=0;
Tb_ProPDPMC.Value    :=0;
Tb_ProPDPRECO2.Value :=0;
Tb_ProPDPRECO3.Value :=0;
Tb_ProPDPRECOA1.Value:=0;
Tb_ProPDPRECOA2.Value:=0;
Tb_ProPDPRECOA3.Value:=0;
Tb_ProPDDESC1.Value  :=0;
Tb_ProPDDESC1A.Value :=0;
Tb_ProPDDESC2.Value  :=0;
Tb_ProPDDESC3.Value  :=0;
Tb_ProPDQTDP.Value   :=0;
Tb_ProPDPRAZO.Value  :=0;
Tb_ProPDSIT.Value    :='000';
Tb_ProPDCODGRU.Value :=0;
Tb_ProPDCODCON.Value :=0;
Tb_ProPDCODRAM.Value :=0;
Tb_ProPDCODTIP.Value :=0;
Tb_ProPDFRACAO.Value :=0;
Tb_ProPDLISTA.Value  :=0;
Tb_ProPDSTATUS.Value :=0;
Tb_ProPDTABICM.Value :='A';
Tb_ProPDREST.Value   :=0;
DM1.Tb_ProPDDATCAD.AsDateTime:=now;
DM1.Tb_ProPDUSRINC.AsFloat:=codusr;

DM1.Tb_ProPDFIS_ORIGEM.Value:='0';
DM1.Tb_ProPDFIS_PRED_ICMS_EST.Value:=0;
DM1.Tb_ProPDFIS_PRED_ICMS_INT.Value:=0;

DM1.Tb_ProPDFIS_PIS_ALIQ_ENTRADA.Value:=0;
DM1.Tb_ProPDFIS_PIS_ALIQ_SAIDA.Value:=0;

DM1.Tb_ProPDFIS_COFINS_ALIQ_ENTRADA.Value:=0;
DM1.Tb_ProPDFIS_COFINS_ALIQ_SAIDA.Value:=0;

DM1.Tb_ProPDFIS_CST_ICMS_EST_REV.Value:='00';
DM1.Tb_ProPDFIS_CST_ICMS_EST_CF.Value:='00';
DM1.Tb_ProPDFIS_CST_ICMS_INT_CF.Value:='00';
DM1.Tb_ProPDFIS_CST_ICMS_INT_REV.Value:='00';



DM1.Tb_ProPDFIS_CSOSN_EST_REV.Value:='101';
DM1.Tb_ProPDFIS_CSOSN_EST_CF.Value:='101';

DM1.Tb_ProPDFIS_CSOSN_INT_REV.Value:='101';
DM1.Tb_ProPDFIS_CSOSN_INT_CF.Value:='101';

DM1.Tb_ProPDFIS_CST_PISCOF_ENTRADA.Value:='00';
DM1.Tb_ProPDFIS_CST_PISCOF_SAIDA.Value:='00';



Tb_Pro.Post;
Tb_Pro.Edit;
end;

procedure TDM1.Tb_FPTaxTitBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(FPSEQ) from FPTAXTIT ');
if not DM1.Qr_Tid.Locate('TINOME','CADDAP',[]) then         
   DM1.Query1.SQL.Add(' where FPCODEMP='+IntToStr(codemp));
DM1.Query1.Open;
cod:=DM1.Query1.Fields[0].AsInteger+1;
end;

procedure TDM1.Tb_PVBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
if DM1.Tb_PVPVCODEMP.IsNull then
   DM1.Tb_PVPVCODEMP.Value:=codemp;
if DM1.Tb_pvpvcodemp.value >100 then
   DM1.Tb_PVPVCODEMP.Value:=DM1.Tb_PVPVCODEMP.Value-100;


For i:=0 to DM1.Tb_PV.FieldCount-1 do
   begin
   if not DM1.Tb_PV.Fields[i].IsNull then
      Continue;
   if DM1.Tb_PV.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword] then
      DM1.Tb_PV.Fields[i].Value:=0
//   else if DM1.Tb_PV.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_PV.Fields[i].Value:=0
   else if DM1.Tb_PV.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_PV.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_NECalcFields(DataSet: TDataSet);
begin
if not DM1.Tb_NENECODFOR.IsNull then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select FRAZAO from CADFOR where ');
   if DM1.Qr_Tid.Locate('TINOME','CADFOR',[]) then
      DM1.Query1.SQL.Add(' FCODFOR=0'+DM1.Tb_NENECODFOR.AsString
                        +' order by FCODFOR')
   else
      DM1.Query1.SQL.Add(' FCODEMP=0'+IntToStr(codemp)
                        +' and FCODFOR=0'+DM1.Tb_NENECODFOR.assTring
                        +' order by FCODEMP,FCODFOR');
   DM1.Query1.Open;
   DM1.Tb_NEnomefor.Value:=DM1.Query1.Fields[0].AsString;
   end;
end;

procedure TDM1.Tb_CPBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
if DM1.Tb_CPCACODEMP.IsNull then
   DM1.Tb_CPCACODEMP.Value:=codemp;


DM1.Tb_CPCADESD.Value:=Trim(DM1.Tb_CPCADESD.Value);

if DM1.Tb_CPCADESD.Value='' then
   begin
   fmensagem('Desdobramento da Duplicata Campo Obrigatório!',0,['0'],0);

   abort;
   end;

For i:=0 to DM1.Tb_CP.FieldCount-1 do
   begin
   if not DM1.Tb_CP.Fields[i].IsNull then
      Continue;
   if DM1.Tb_CP.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,ftdate,ftdatetime] then
      DM1.Tb_CP.Fields[i].Value:=0
//   else if DM1.Tb_CP.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_CP.Fields[i].Value:=0
   else if DM1.Tb_CP.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_CP.Fields[i].Value:=' ';
   end;
if Tb_CPCAID_NEW.AsInteger=0 then
  Tb_CPCAID_NEW.AsInteger:=fBuscarProximoId('CADDAP_SEQ');

end;

procedure TDM1.Tb_CPCalcFields(DataSet: TDataSet);
begin



if not DM1.Tb_CPCACODFOR.IsNull then
  begin
  flqr1('FRAZAO,FDENOM,FCGC','F','CADFOR','N','FCODFOR',DM1.Tb_CPCACODFOR.AsString);
  DM1.Tb_CPnomefor.Value:=DM1.Query1.Fields[0].AsString;
  DM1.Tb_CPdenom.Value  :=DM1.Query1.Fields[1].AsString;
  Tb_CPcnpj.AsString    :=DM1.Query1.Fields[2].AsString;
  end;
if DM1.Tb_CPCASTATUS.Value=2 then
  DM1.Tb_CPsituacao.Value:='Pago'
else if DM1.Tb_CPCASTATUS.Value=1 then
  DM1.Tb_CPsituacao.Value:='Pago Parcial'
else
  DM1.Tb_CPsituacao.Value:='A Pagar';
if Tb_CPCABANCO.Value>0 then
  begin
  flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',DM1.Tb_CPCABANCO.AsString);
  Tb_CPnombco.Value:=DM1.Query1.Fields[0].AsString;
  end
else
  Tb_CPnombco.Value:='Carteira';
Tb_CPtipodoc.Value:=ptpdoc[DM1.Tb_CPCADUP.AsInteger];
if (DM1.Tb_CPCADTDESC.IsNull) or (DM1.Tb_CPCADTDESC.Value<=pdatanula) then
   DM1.Tb_CPdatadesc.Value:='/  /'
else
   DM1.Tb_CPdatadesc.Value:=FormatDatetime(fdt2, DM1.Tb_CPCADTDESC.Value);

DM1.Tb_CPvaldev.Value:=DM1.Tb_CPCAVALOR.AsFloat-DM1.Tb_CPCAVALPAG.AsFloat
                      -DM1.Tb_CPCADESC.AsFloat
                      +DM1.Tb_CPCAJUROS.AsFloat;
if DM1.Tb_CPvaldev.AsFloat<0 then
   DM1.Tb_CPvaldev.Value:=0;

if (DM1.Tb_CPCADTPAG.IsNull) or (DM1.Tb_CPCADTPAG.Value<=pdatanula) then
   DM1.Tb_CPdtPag.Value:='/  /'
else
   DM1.Tb_CPdtPag.Value:=FormatDatetime(fdt2, DM1.Tb_CPCADTPAG.Value);


{
if Trim(DM1.Tb_CPCACODCC.Value)<>'' then
   begin
   if flqr1('CCNOME','CC','CADCCFRU','C','CCCODCCU',DM1.Tb_CPCACODCC.Value) then
      DM1.Tb_CPnomccu.Value:=DM1.Query1.Fields[0].AsString;
   end;

if Trim(DM1.Tb_CPCACODDEP.Value)<>'' then
   begin
   if flqr1('DNOME','D','CADDEP','C','DCODDEP',DM1.Tb_CPCACODDEP.Value) then
      DM1.Tb_CPnomdep.Value:=DM1.Query1.Fields[0].AsString;
   end;

if Tb_CPCACODCTA.AsFloat>0 then
   begin
   if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',DM1.Tb_CPCACODCTA.AsString) then
      Tb_CPnomcta.Value:=DM1.Query1.Fields[0].AsString;
   end
else
   Tb_CPnomcta.Value:='';
}



end;

procedure TDM1.Tb_ECFBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('select max(CFCAIXA) from CADECF ');
if not DM1.Qr_Tid.Locate('TINOME','CADECF',[]) then
   DM1.Query1.SQl.add(' where CFCODEMP=0'+IntToStr(codemp));
DM1.Query1.Open;
Cod:=DM1.Query1.Fields[0].AsInteger+1;

end;

procedure TDM1.Tb_ECFAfterInsert(DataSet: TDataSet);
begin
if codemp>100 then
   Tb_ECFCFCODEMP.Value:=codemp-100
else
   Tb_ECFCFCODEMP.Value:=codemp;

Tb_ECFCFCAIXA.Value:=cod;
Tb_ECFCFMODELO.Value:=0;
Tb_ECFCFNOME.Value:='_';
Tb_ECFCFPORTA.AsString:='COM1';
Tb_ECFCFREDE.Value:=0;
end;

procedure TDM1.Tb_RamBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add(' SELECT MAX(RCODRAM) AS CODIGO FROM CADRAM '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADRAM',[]),'',' where RCODEMP='+IntToStr(codemp)));
DM1.Query1.Open;
cod      := DM1.Query1.FieldByName('CODIGO').AsFloat + 1;
end;

procedure TDM1.Tb_RamAfterInsert(DataSet: TDataSet);
begin
Tb_RamRCODRAM.Value:=Cod;
if codemp>100 then
   Tb_RamRCODEMP.Value:=codemp-100
else
   Tb_RamRCODEMP.Value:=codemp;

FAtualizaBanco(0,'CADRAM','RCODEMP',DM1.Tb_RamRCODEMP.AsString
,['RCODRAM'],[DM1.Tb_RamRCODRAM.AsString]
 ,DM1.Tb_Ram);

end;

procedure TDM1.Tb_GproBeforeInsert(DataSet: TDataSet);
begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add(' SELECT MAX(GRCODGRU) AS CODIGO FROM CADGRU '
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADGRU',[]),'',' where GRCODEMP='+IntToStr(codemp)));
   DM1.Query1.Open;
   cod      := valfloat(DM1.Query1.FieldByName('CODIGO').AsString) + 1;
end;

procedure TDM1.Tb_GproAfterInsert(DataSet: TDataSet);
begin
   Tb_GproGRCODGRU.Value:=Cod;
if codemp>100 then
   Tb_GproGRCODEMP.Value:=codemp-100
else
   Tb_GproGRCODEMP.Value:=codemp;

   FAtualizaBanco(0,'CADGRU','GRCODEMP',DM1.Tb_GproGRCODGRU.AsString
   ,['GRCODGRU'],[FloatToStr(DM1.Tb_GproGRCODGRU.AsFloat)]
   ,DM1.Tb_Gpro);
end;

procedure TDM1.Tb_TconAfterInsert(DataSet: TDataSet);
begin
Tb_TconCCODCON.Value :=Cod;
if codemp>100 then
   Tb_TconCCODEMP.Value:=codemp-100
else
   Tb_TconCCODEMP.Value:=codemp;


FAtualizaBanco(0,'CADCON','CCODEMP',DM1.Tb_TConCCODCON.AsString
,['CCODCON'],[FloatToStr(DM1.Tb_TCOnCCODCON.AsFloat)]
 ,DM1.Tb_TCon);
end;

procedure TDM1.Tb_TproAfterInsert(DataSet: TDataSet);
begin
Tb_TproTCODTIP.Value:=Cod;
if codemp>100 then
   Tb_TproTCODEMP.Value:=codemp-100
else
   Tb_TproTCODEMP.Value:=codemp;


FAtualizaBanco(0,'CADTP','TCODEMP',DM1.Tb_TProTCODEMP.AsString
,['TCODTIP'],[FloatToStr(DM1.Tb_TProTCODTIP.AsFloat)]
 ,DM1.Tb_TPro);
end;

procedure TDM1.Tb_TconBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add(' SELECT MAX(CCODCON) AS CODIGO FROM CADCON '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADCON',[]),'',' where CCODEMP='+IntToStr(codemp)));
DM1.Query1.Open;
cod      := DM1.Query1.FieldByName('CODIGO').ASFloat + 1;
end;

procedure TDM1.Tb_TproBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add(' SELECT MAX(TCODTIP) AS CODIGO FROM CADTP '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADTP',[]),'',' where TCODEMP='+IntToStr(codemp)));
DM1.Query1.Open;
cod      := DM1.Query1.FieldByName('CODIGO').ASFloat + 1;

end;

procedure TDM1.Tb_ProBeforeInsert(DataSet: TDataSet);
var
query_pro: TQuery;
begin
While true do
   begin
   cod:=flBuscarCodigos(0,'CADPRO');
   if DM1.Tb_PargerPDCADPRO.Value=1 then
      Cod:=Digito(Cod);
   query_pro:=TQuery.create(nil);
   query_pro.DatabaseName:='SG_ASSOC';

   query_pro.Close;
   query_pro.Sql.Clear;
   query_pro.Sql.Add('select count(*) from CADPRO where '
                     +fla_EmpBaixaAlta(0,'CADPRO','',codemp,'PDCODEMP',' and ')
                     +' PDCODPRO=0'+FloatTostr(cod));
   query_pro.Open;
   if query_pro.Fields[0].AsInteger<=0 then
      begin
      freeandnil(query_pro);
      break;
      end;
   freeandnil(query_pro);
   end;

{
DM1.Query1.Close;
DM1.Query1.SQl.Clear;
DM1.Query1.SQL.Add('Select max(PDCODPRO) from CADPRO');
if not DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   DM1.Query1.SQl.Add(' where PDCODEMP=0'+InttoStr(codemp));
DM1.Query1.Open;
if DM1.Tb_PargerPDCADPRO.Value=1 then
   begin
   Cod:=StrToInt('0'+Copy(DM1.Query1.Fields[0].AsString,1,Length(DM1.Query1.Fields[0].AsString)-1))+1;
   Cod:=Digito(Cod);
   end
else
   cod:=DM1.Query1.Fields[0].AsFloat+1;
 }
end;

procedure TDM1.Tb_TabAfterInsert(DataSet: TDataSet);
begin
DM1.Tb_TabTSEQ.Value:=cod;
DM1.Tb_TabTCODEMP.Value:=Codemp;

end;

procedure TDM1.Tb_TabBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(TSEQ) from CADTAB');
if not DM1.Qr_Tid.Locate('TINOME','CADTAB',[]) then
   DM1.Query1.SQL.Add(' Where TCODEMP=0'+IntToStr(codemp));
DM1.Query1.Open;
cod:=DM1.Query1.Fields[0].AsInteger+1;
end;

procedure TDM1.Tb_VenBeforeInsert(DataSet: TDataSet);
begin
While true do
  begin
  cod:=flBuscarCodigos(0,'CADVEN');
  if DM1.Tb_PargerPDCADVEN.Value=1 then
     Cod:=Digito(Cod);
  DM1.Query1.Close;
  DM1.Query1.Sql.Clear;
  DM1.Query1.Sql.Add('select count(*) from CADVEN where '
                    +fla_EmpBaixaAlta(0,'CADVEN','',codemp,'VCODEMP',' and ')
                    +' VCODVEN=0'+FloatTostr(cod));
  DM1.Query1.Open;

  if DM1.Query1.Fields[0].AsInteger<=0 then
    break;
  end;

{DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.SQl.Add('Select MAX(VCODVEN) from CADVEN ');
if not DM1.Qr_Tid.Locate('TINOME','CADVEN',[]) then
  DM1.Query1.SQL.Add(' where VCODEMP=0'+IntToStr(codemp));
DM1.Query1.Open;

if DM1.Tb_PargerPDCADVEN.Value=1 then
  begin
  Cod:=StrToInt('0'+Copy(DM1.Query1.Fields[0].AsString,1,Length(DM1.Query1.Fields[0].AsString)-1))+1;
  Cod:=Digito(Cod);
  end
else
  cod:=DM1.Query1.Fields[0].AsInteger+1;}
end;

procedure TDM1.Tb_VenAfterInsert(DataSet: TDataSet);
begin
if codemp>100 then
   DM1.Tb_VenVCODEMP.Value:=codemp-100
else
   DM1.Tb_VenVCODEMP.Value:=codemp;

   DM1.Tb_VenVCODVEN.Value   := cod;
   DM1.Tb_VenVDTCAD.AsString := FormatDatetime(fdt2, pdatasis);

   FAtualizaBanco(0,'CADVEN','VCODEMP',DM1.Tb_VenVCODEMP.AsString
   ,['VCODVEN'],[DM1.Tb_VenVCODVEN.AsString]
   ,DM1.Tb_Ven);
end;

procedure TDM1.Tb_UFAfterInsert(DataSet: TDataSet);
begin
DM1.Tb_UFPCODEMP.Value:=codemp;
end;

procedure TDM1.Tb_CfoAfterInsert(DataSet: TDataSet);
begin
if codemp>100 then
   DM1.Tb_CfoCFCODEMP.Value:=codemp-100
else
   DM1.Tb_CfoCFCODEMP.Value:=codemp;
end;

procedure TDM1.Tb_DarAfterInsert(DataSet: TDataSet);
begin

DM1.Tb_DarCRCODEMP.Value:=codemp;
DM1.Tb_DarCRDESD.Value:='A';
DM1.Tb_DarCRDUP.Value :=0;
DM1.Tb_DarCRSTATUS.Value:=0;
DM1.Tb_DarCREMIDUP.Value:=0;
DM1.Tb_DarCREMIBLQ.Value:=0;
DM1.Tb_DarCRTIPCOB.Value:=0;
DM1.Tb_DarCRSEQ.Value:=0;
DM1.Tb_DarCRCODECF.Value:=0;
DM1.Tb_DarCRNUMCUP.Value:=0;

DM1.Tb_DarCRDTEMIS.Value               :=Date;
DM1.Tb_DarCRCOMPETENCIA_DTINICIO.Value :=Date;
DM1.Tb_DarCRCOMPETENCIA_TIPO.Value     :=0;

DM1.Tb_DarCRCHAVE_ID_ANO.AsInteger:=valint(formatdatetime('yyyy',pdatasis));
DM1.Tb_DarCRCHAVE_ID.AsInteger:=fBuscareTestarID('CADDAR_'+DM1.Tb_DarCRCHAVE_ID_ANO.AsString);



end;

procedure TDM1.Tb_NsAfterInsert(DataSet: TDataSet);
begin
DM1.Tb_NsNSCODEMP.Value:=codemp;
DM1.Tb_NsNSTIPO.Value:=0;
DM1.Tb_NsNSSTATUS.Value:=0;
DM1.Tb_NsNSID_NEW.AsFloat:=fBuscarProximoId('CADNS_SEQ');

end;

procedure TDM1.Tb_NsCalcFields(DataSet: TDataSet);
begin
if Tb_NsNSCODUSR.Value>0 then
   begin
   if flqr1('NOMUSR','C','CADUSR','N','CODUSR',DM1.Tb_NsNSCODUSR.AsString) then
      begin
      Tb_Nsinfo_emissao.Value:='Emitido em '+Formatdatetime(fdt2, Tb_NsNSDTEMIS.AsDateTime)+' as '+FormatDateTime(fhr, Tb_NsNSDTEMIS.AsDateTime)+' por '+DM1.Query1.FieldByName('NOMUSR').asstring+' - '+Tb_NsNSCODUSR.asstring;
      end;
   end;


if Tb_NsNSCODCLI.Value>0 then
   begin
   if flqr1('CRAZAO,CUF','C','CADCLI','N','CCODCLI',DM1.Tb_NsNSCODCLI.AsString) then
      begin
      Tb_Nsrazcli.Value:=DM1.Query1.Fields[0].AsString;
      Tb_Nsuf.Value    :=DM1.Query1.Fields[1].AsString;
      end;
   end;

if Trim(Tb_NsNSCFO1.Value)<>''  then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select CFNOME from CADCFO where ');
   if DM1.Qr_TID.Locate('TINOME','CADCFO',[]) then
      DM1.Query1.SQL.Add(' CFCODCFO=0'+fdeixanum(Tb_NSNSCFO1.Value))
   else
      DM1.Query1.SQL.Add(' CFCODEMP=0'+IntToStr(codemp)
                     +' and CFCODCFO='+fdeixanum(Tb_NsNSCFO1.Value));
   DM1.Query1.Open;
   Tb_Nsnomcfo1.Value:=DM1.Query1.Fields[0].AsString;
   end;
if Trim(Tb_NsNSCFO2.Value)<>'' then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select CFNOME from CADCFO Where ');
   if DM1.Qr_Tid.Locate('TINOME','CADCFO',[])  then
      DM1.Query1.SQL.Add(' CFCODCFO='+fdeixanum(Tb_NSNSCFO2.Value))
   else
      DM1.query1.SQl.add(' CFCODEMP=0'+IntToStr(codemp)
                     +' and CFCODCFO='+fdeixanum(Tb_NsNSCFO2.Value));
   DM1.Query1.Open;
   Tb_Nsnomcfo2.Value:=DM1.Query1.Fields[0].AsString;
   end;
if DM1.Tb_NsNSNFSERV_DATHORREC.AsDateTime<=pdatanula then
   DM1.Tb_Nsnfes_data_hora_rec.AsString:=FormatDateTime(fdathor,DM1.Tb_NsNSNFSERV_DATHORREC.AsDateTime);
if DM1.Tb_NsNSNFSERV_DATHORCANC.AsDateTime<=pdatanula then
   DM1.Tb_Nsnfes_data_hora_canc.AsString:=FormatDateTime(fdathor,DM1.Tb_NsNSNFSERV_DATHORCANC.AsDateTime);

end;

procedure TDM1.Tb_TraAfterInsert(DataSet: TDataSet);
begin
if codemp>100 then
   DM1.Tb_TraTRCODEMP.Value:=codemp-100
else
   DM1.Tb_TraTRCODEMP.Value:=codemp;

   Tb_TraTRCODTRA.Value:=cod;
   Tb_TraTRSTATUS.Value:=0;

   FAtualizaBanco(0,'CADTRA','TRCODEMP',DM1.Tb_TraTRCODEMP.AsString
   ,['TRCODTRA'],[DM1.Tb_TraTRCODTRA.AsString]
   ,DM1.Tb_Tra);
end;

procedure TDM1.Tb_TraBeforeInsert(DataSet: TDataSet);
begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('select max(TRCODTRA) from CADTRA ');
   if not Qr_Tid.Locate('TINOME','CADTRA',[]) then
      DM1.Query1.SQl.Add(' where TRCODEMP='+InttoStr(codemp));
   DM1.Query1.Open;
   if DM1.Tb_PargerPDCADTRA.Value=1 then begin
      Cod:=StrToInt('0'+Copy(DM1.Query1.Fields[0].AsString,1,Length(DM1.Query1.Fields[0].AsString)-1))+1;
      Cod:=Digito(Cod);
   end else
      cod:=DM1.Query1.Fields[0].AsInteger+1;
end;

procedure TDM1.Tb_BcoBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select MAX(BCCODBCO) from CADBCO ');
if not DM1.Qr_Tid.Locate('TINOME','CADBCO',[]) then
   DM1.Query1.SQl.Add(' where BCCODEMP='+IntToStr(codemp));
DM1.Query1.Open;
cod:=DM1.Query1.Fields[0].AsInteger+1;

end;

procedure TDM1.Tb_BcoAfterInsert(DataSet: TDataSet);
begin
if codemp>100 then
   DM1.Tb_BcoBCCODEMP.Value:=codemp-100
else
   DM1.Tb_BcoBCCODEMP.Value:=codemp;

Tb_BcoBCCODBCO.Value:=cod;
FAtualizaBanco(0,'CADBCO','BCCODEMP',DM1.Tb_BcoBCCODEMP.AsString
               ,['BCCODBCO'],[DM1.Tb_BcoBCCODBCO.AsString]
                  ,DM1.Tb_Bco);

end;

procedure TDM1.Tb_CCUAfterInsert(DataSet: TDataSet);
begin
if codemp>100 then
   DM1.Tb_CCUCCCODEMP.Value:=codemp-100
else
   DM1.Tb_CCUCCCODEMP.Value:=codemp;

Tb_ccuCCCODCCU.Value   :=mCodStr;
Tb_CCUCCCODDRE.AsString:='0';

FAtualizaBanco(0,'CADCCU','CCCODEMP',DM1.Tb_CCUCCCODEMP.AsString
,['CCCODCCU'],[DM1.Tb_CCUCCCODCCU.AsString]
 ,DM1.Tb_CCU);

end;

procedure TDM1.Tb_LDRBeforeInsert(DataSet: TDataSet);
begin
cod:=fbuscacodigoldr(0);
end;

procedure TDM1.Tb_LDRAfterInsert(DataSet: TDataSet);
begin
Tb_LDRCODEMP.Value:=codemp;
Tb_LDRCODLDR.Value:=cod;
Tb_LDRLDR_ID_NEW.Value:=fBuscarProximoId('CADLDR_SEQ');
DM1.Tb_LDRLOTSEQ.Value:=ls_codldr;
DM1.Tb_LDRDATADP.AsString :=FormatDatetime(fdt2, pdatasis);
DM1.Tb_LDRDATLAN.AsString :=FormatDatetime(fdt2, pdatasis);
DM1.Tb_LDRDATAREF.AsString:=FormatDatetime(fdt2, pdatasis);
DM1.Tb_LDRDTCOMP.AsString :=FormatDatetime(fdt2, pdatasis);
DM1.Tb_LDRSTATUS.Value:=0;
DM1.Tb_LDRORIGEM.Value:=0;
DM1.Tb_LDRTIPO.Value  :='CL';
DM1.Tb_LDRLOTMOV.Value:=lotMov;

DM1.Tb_LDRFC_COMPETENCIA_DTINICIO.Value :=Date;
DM1.Tb_LDRFC_COMPETENCIA_TIPO.Value     :=0;

DM1.Tb_LDR.Post;
DM1.Tb_LDR.Edit;

end;

procedure TDM1.Tb_Dep_LdrAfterInsert(DataSet: TDataSet);
begin
if codemp>100 then
   Tb_Dep_LdrDCODEMP.Value:=codemp-100
else
   Tb_Dep_LdrDCODEMP.Value:=codemp;

Tb_Dep_LdrDCODDEP.Value:=mCodStr;

FAtualizaBanco(0,'CADDEP','DCODEMP',DM1.Tb_Dep_LdrDCODDEP.AsString
,['DCODDEP'],[DM1.Tb_Dep_LdrDCODDEP.AsString]
 ,DM1.Tb_Dep_Ldr);
end;

procedure TDM1.Tb_LDRCalcFields(DataSet: TDataSet);
begin


   if (Tb_LDRFC_COMPETENCIA_TIPO.AsInteger=4) or
      (Tb_LDRFC_COMPETENCIA_TIPO.AsInteger=3) or
      (Tb_LDRFC_COMPETENCIA_TIPO.AsInteger=2) then
      begin
      Tb_Darcompetencia_obs.Value:='Inicio mês/Ano: ';
       end
   else if (Tb_LDRFC_COMPETENCIA_TIPO.AsInteger=1) then
      begin
      Tb_ldrCompetencia_obs.Value:='Ano: ';
      end
   else
      begin
      Tb_ldrcompetencia_obs.Value:='mês/Ano: ';
      end;



{
if Trim(DM1.Tb_LDRCODDEP.Value)<>'' then
   begin
   flqr1('DNOME','D','CADDEP','C','DCODDEP',DM1.Tb_LDRCODDEP.AsString);
   DM1.Tb_LDRnomdep.Value:=DM1.Query1.Fields[0].AsString;
   end;
if not DM1.Tb_LDRCODBCO.IsNull then
   begin
   flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',DM1.Tb_LDRCODBCO.AsString);
   DM1.Tb_LDRnombco.Value:=DM1.Query1.Fields[0].AsString;
   end;

if Trim(DM1.Tb_LDRCODCC.Value)<>'' then
   begin
   flqr1('CCNOME','CC','CADCCU','C','CCCODCCU',DM1.Tb_LDRCODCC.AsString);
   DM1.Tb_LDRnomcc.Value:=DM1.Query1.Fields[0].AsString;
   end;
if not DM1.Tb_LDRCODIGO.IsNull then
   begin
   if DM1.Tb_LDRTIPO.Value='FR' then
      begin
      flqr1('FRAZAO','F','CADFOR','N','FCODFOR',DM1.Tb_LDRCODIGO.AsString);
      end
   else if DM1.Tb_LDRTIPO.Value='VD' then
      begin
      flqr1('VNOME','V','CADVEN','N','VCODVEN',DM1.Tb_LDRCODIGO.AsString);
      end
   else if DM1.Tb_LDRTIPO.Value='TR' then
      begin
      flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',DM1.Tb_LDRCODIGO.AsString);
      end
   else if DM1.Tb_LDRTIPO.Value='US' then
      begin
      flqr1('NOMUSR','','CADUSR','N','CODUSR',DM1.Tb_LDRCODIGO.AsString);
      end
   else
      begin
      flqr1('CRAZAO','C','CADCLI','N','CCODCLI',DM1.Tb_LDRCODIGO.AsString);
      end;
  DM1.Tb_LDRNOME.Value:=DM1.Query1.Fields[0].AsString;

   end;
}
if (DM1.Tb_LDRDATAREAL.IsNull) or (DM1.Tb_LDRDATAREAL.Value<=pdatanula) then
   DM1.Tb_LDRcdatareal.Value:=' /  /  '
else
   DM1.Tb_LDRcdatareal.Value:=FormatDateTime(fdt2, DM1.Tb_LDRDATAREAL.Value);
end;

procedure TDM1.Tb_TDVBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select Max(TSEQ) from CADTDV ');
if not DM1.Qr_Tid.Locate('TINOME','CADTDV',[]) then
   DM1.Query1.SQL.Add(' where TCODEMP='+intToStr(codemp));
DM1.Query1.Open;
cod:=DM1.Query1.Fields[0].AsInteger+1;
end;

procedure TDM1.Tb_TDVAfterInsert(DataSet: TDataSet);
begin
Tb_TDVTSEQ.Value:=cod;
Tb_TDVTCODEMP.Value:=codemp;
end;

procedure TDM1.Tb_PVAfterInsert(DataSet: TDataSet);
begin
if codemp>100 then
   Tb_PVPVCODEMP.Value:=codemp-100
else
   Tb_PVPVCODEMP.Value:=codemp;

DM1.Tb_PVPVSTATUS.Value:=0;
if DM1.Tb_PargerPCOMISPAD.AsInteger<0 then
   DM1.Tb_PVPVTPC.Value   :=0
else
   DM1.Tb_PVPVTPC.Value   :=DM1.Tb_PargerPCOMISPAD.AsInteger;
DM1.Tb_PVPVTPDC.Value  :=0;
DM1.Tb_PVPVTPD1.Value  :=0;
DM1.Tb_PVPVTPD2.Value  :=0;
DM1.Tb_PVPVTPD3.Value  :=0;
DM1.Tb_PVPVDDESCF.Value:=0;
DM1.Tb_PVPVFINPRM.Value:=0;
DM1.Tb_PVPVCODTIP.Value:='AP';


end;

procedure TDM1.Tb_AjuBeforeInsert(DataSet: TDataSet);
begin
cod:=fBuscaCADAJU(0);
end;

procedure TDM1.Tb_AjuAfterInsert(DataSet: TDataSet);
begin
DM1.Tb_AjuAJCODEMP.Value:=codemp;
DM1.Tb_AjuAJLOTSEQ.Value:=ls_cadaju;
DM1.Tb_AjuAJSEQ.Value   :=cod;
end;

procedure TDM1.Tb_CVBeforeInsert(DataSet: TDataSet);
begin
   cod:=flBuscarCodigos(0,'CADCV');

   if DM1.Tb_PargerPDCADCV.Value=1 then
      Cod:=Digito(Cod);

   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('select MAX(CVCODCV) AS CODIGO from CADCV '
                     +iif(DM1.Qr_tid.Locate('TINOME','CADCV',[]),'',' where  CVCODEMP=0'+IntToStr(codemp)));
   DM1.Query1.Open;

   cod      := DM1.Query1.FieldByName('CODIGO').AsFloat + 1;

end;

procedure TDM1.Tb_CVAfterInsert(DataSet: TDataSet);
begin
if codemp>100 then
   Tb_CVCVCODEMP.Value:=codemp-100
else
   Tb_CVCVCODEMP.Value:=codemp;

 Tb_CVCVCODCV.Value  := cod;

 FAtualizaBanco(0,'CADCV','CVCODEMP',DM1.Tb_CVCVCODEMP.AsString
 ,['CVCODCV'],[DM1.Tb_CVCVCODCV.AsString]
  ,DM1.Tb_CV);
end;

procedure TDM1.Tb_CacBeforeInsert(DataSet: TDataSet);
begin
  cod:=fbuscacadcac(0);
end;

procedure TDM1.Tb_CacAfterInsert(DataSet: TDataSet);
begin
DM1.Tb_CacCASEQ.Value:=cod;
DM1.Tb_CacCACODEMP.Value:=codemp;
DM1.Tb_CacCALOTSEQ.Value:=ls_CADCAC;
end;

procedure TDM1.Tb_CacCalcFields(DataSet: TDataSet);
var
tempo: Real;
begin
DM1.Tb_Cacinicio.Value:=FormatDateTime('dd/mm/yyyy',DM1.Tb_CacCADATAI.Value)+' as '
                       +DM1.Tb_CacCAHORAI.Value;
if (DM1.Tb_CacCAHORAF.IsNull) or (Trim(DM1.Tb_CacCAHORAF.Value)='') then
   begin
   DM1.Tb_Cacfim.Value:='Em andamento ou Cancelado';
   DM1.Tb_Cacduracao.Value:='';
   end
else
   begin
   DM1.Tb_Cacfim.Value:=FormatDateTime('dd/mm/yyyy',DM1.Tb_CacCADATAF.Value)+' as '
                        +DM1.Tb_CacCAHORAF.Value;
   tempo:=StrToTime(DM1.Tb_CacCAHORAF.Value)-StrToTime(DM1.Tb_CacCAHORAI.Value);
   DM1.Tb_Cacduracao.Value:=FormatDateTime('hhh:nn:ss',FloatToDateTime(tempo));
   end;
end;

procedure TDM1.Tb_LGCAfterInsert(DataSet: TDataSet);
begin
DM1.Tb_LGCCLCODEMP.Value:=codemp;
end;

procedure TDM1.Tb_Pro2CalcFields(DataSet: TDataSet);
begin
if tb_Pro2PDCODFOR.Value>0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select FRAZAO from CADFOR where ');
   if DM1.Qr_Tid.Locate('TINOME','CADFOR',[]) then
      DM1.Query1.SQL.Add(' FCODFOR=0'+Tb_Pro2PDCODFOR.AsString
                        +' order by FCODFOR')
   else
      DM1.Query1.SQL.Add(' FCODEMP='+IntToStr(codemp)
                     +' and FCODFOR=0'+tb_Pro2PDCODFOR.AsString
                     +' Order by FCODEMP,FCODFOR');
   DM1.Query1.Open;
   tb_Pro2nomefab.Value:=DM1.Query1.Fields[0].AsString;
   end;
if tb_Pro2PDCODGRU.Value>0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQl.Clear;
   DM1.Query1.SQL.Add('Select GRNOME from CADGRU Where');
   if DM1.Qr_TID.Locate('TINOME','CADGRU',[]) then
      DM1.Query1.SQL.add(' GRCODGRU=0'+Tb_ProPDCODGRU.AsString
                        +' order by GRCODGRU')
   else
      DM1.Query1.SQL.Add(' GRCODEMP='+IntToStr(codemp)
                     +' and GRCODGRU=0'+tb_Pro2PDCODGRU.AsString
                     +' Order by GRCODEMP,GRCODGRU');

   DM1.Query1.Open;
   tb_Pro2nomegru.Value:=DM1.Query1.Fields[0].AsString;
   end;
if tb_Pro2PDCODRAM.Value>0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select RNOME from CADRAM Where ');
   if DM1.Qr_Tid.Locate('TINOME','CADRAM',[]) then
      DM1.Query1.SQL.add(' RCODRAM=0'+Tb_Pro2PDCODRAM.AsString
                        +' order by RCODRAM')
   else
      DM1.Query1.SQL.Add(' RCODEMP='+IntToStr(codemp)
                     +' and RCODRAM=0'+tb_Pro2PDCODRAM.AsString
                     +' Order by RCODEMP,RCODRAM');

   DM1.Query1.Open;
   tb_Pro2nomram.Value:=DM1.Query1.Fields[0].AsString;
   end;
if tb_Pro2PDCODCON.Value>0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select CNOME from CADCON where');
   if DM1.Qr_TID.Locate('TINOME','CADCON',[]) then
      DM1.Query1.SQL.Add(' CCODCON=0'+Tb_Pro2PDCODCON.AsString
                        +' order by CCODCON')
   else
      DM1.Query1.SQl.Add(' CCODEMP='+IntToStr(codemp)
                     +' and CCODCON=0'+tb_Pro2PDCODCON.AsString
                     +' Order by CCODEMP,CCODCON');

   DM1.Query1.Open;
   tb_Pro2nomcon.Value:=DM1.Query1.Fields[0].AsString;
   end;
if tb_Pro2PDCODTIP.Value>0 then
   begin
   DM1.query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select TNOME from CADTP where ');
   if DM1.Qr_Tid.Locate('TINOME','CADTP',[]) Then
      DM1.Query1.SQL.Add(' TCODTIP=0'+Tb_Pro2PDCODTIP.AsString
                        +' order by TCODTIP')
   else
      DM1.Query1.SQL.add(' TCODEMP=0'+IntToStr(codemp)
                     +' and TCODTIP=0'+tb_Pro2PDCODTIP.AsString
                     +' Order by TCODEMP,TCODTIP');

   DM1.Query1.Open;
   tb_Pro2nomtip.Value:=DM1.Query1.Fields[0].AsString;
   end;
if tb_Pro2PDNIVEL.Value=0 then
   tb_Pro2n_nivel.Value:='00 - Mercadoria para Revenda'
else if tb_Pro2PDNIVEL.Value=1 then
   tb_Pro2n_nivel.Value:='01 - Matéria-Prima'
else if tb_Pro2PDNIVEL.Value=2 then
   tb_Pro2n_nivel.Value:='02 - Embalagem'
else if tb_Pro2PDNIVEL.Value=3 then
   tb_Pro2n_nivel.Value:='03 - Produto em Processo'
else if tb_Pro2PDNIVEL.Value=4 then
   tb_Pro2n_nivel.Value:='04 - Produto Acabado'
else if tb_Pro2PDNIVEL.Value=5 then
   tb_Pro2n_nivel.Value:='05 - Subproduto'
else if tb_Pro2PDNIVEL.Value=6 then
   tb_Pro2n_nivel.Value:='06 - Produto Intermediario'
else if tb_Pro2PDNIVEL.Value=7 then
   tb_Pro2n_nivel.Value:='07 - Matérial de Uso e Consumo'
else if tb_Pro2PDNIVEL.Value=8 then
   tb_Pro2n_nivel.Value:='08 - Ativo Imobilizado'
else if tb_Pro2PDNIVEL.Value=9 then
   tb_Pro2n_nivel.Value:='09 - Serviço'
else if tb_Pro2PDNIVEL.Value=10 then
   tb_Pro2n_nivel.Value:='10 - Outros Insumos'
else if tb_Pro2PDNIVEL.Value=11 then
   tb_Pro2n_nivel.Value:='99 - Outras'
else
   tb_Pro2n_nivel.Value:='';

end;

procedure TDM1.Tb_LC1CalcFields(DataSet: TDataSet);
begin
if not DM1.Tb_LC1LC1_CODVEN.IsNull then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',DM1.Tb_LC1LC1_CODVEN.AsString) then
      DM1.Tb_LC1nomven.Value:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TDM1.Tb_LC1AfterInsert(DataSet: TDataSet);
begin
DM1.Tb_LC1LC1_CODEMP.Value:=codemp;
DM1.Tb_LC1LC1_DTEMIS.AsString:=FormatDatetime(fdt2, pdatasis);
DM1.Tb_LC1LC1_DATCON.AsString:=FormatDatetime(fdt2, pdatasis);
DM1.Tb_LC1LC1_DIGRMS.Value:=1;
DM1.Tb_LC1LC1_PCOAVI.Value:=0;
DM1.Tb_LC1LC1_PCOPRZ.Value:=1;
DM1.Tb_LC1LC1_EXTTAV.Value:=1;
DM1.Tb_LC1LC1_EXTUAV.Value:=1;
DM1.Tb_LC1LC1_EXTPAV.Value:=1;
DM1.Tb_LC1LC1_EXTUAP.Value:=1;
DM1.Tb_LC1LC1_EXTTAP.Value:=1;
DM1.Tb_LC1LC1_EXTPAP.Value:=1;
DM1.Tb_LC1LC1_IMPCAB.Value:=0;
DM1.Tb_LC1LC1_STATUS.Value:=0;
DM1.Tb_LC1LC1_CHAVE.Value:=fbuscaNUMLIC(0);

FAtualizaBanco(0,'CADLC1','LC1_CODEMP',DM1.Tb_LC1LC1_CODEMP.AsString
,['LC1_CHAVE'],[DM1.Tb_LC1LC1_CHAVE.AsString]
 ,DM1.Tb_LC1);

end;

procedure TDM1.Tb_LC2CalcFields(DataSet: TDataSet);
begin
DM1.Tb_LC2totav.Value:=DM1.Tb_LC2LC2_QTD.Value*DM1.Tb_LC2LC2_PCOAV.Value;
DM1.Tb_LC2totpz.Value:=DM1.Tb_LC2LC2_QTD.Value*DM1.Tb_LC2LC2_PCOPZ.Value;
end;


procedure TDM1.Tb_Pv2AfterInsert(DataSet: TDataSet);
begin

DM1.Tb_Pv2PV2CODEMP.Value:=DM1.Tb_PVPVCODEMP.Value;
DM1.Tb_PV2PV2CODTIP.Value:=DM1.Tb_PVPVCODTIP.Value;
DM1.Tb_Pv2PV2CODPV.Value :=DM1.Tb_PVPVCODPV.Value;
end;

procedure TDM1.Tb_Pv2BeforePost(DataSet: TDataSet);
begin
if DM1.Tb_Pv2PV2PRAZO.IsNull then
   Begin
   DM1.Tb_PV2.Cancel;
   abort;
   end;
end;

procedure TDM1.Tb_DarCalcFields(DataSet: TDataSet);
begin

   if (Tb_DarCRCOMPETENCIA_TIPO.AsInteger=4) or
      (Tb_DarCRCOMPETENCIA_TIPO.AsInteger=3) or
      (Tb_DarCRCOMPETENCIA_TIPO.AsInteger=2) then
      begin
      Tb_Darcompetencia_obs.Value:='Inicio mês/Ano: ';
       end
   else if (Tb_DarCRCOMPETENCIA_TIPO.AsInteger=1) then
      begin
      Tb_Darcompetencia_obs.Value:='Ano: ';
      end
   else
      begin
      Tb_Darcompetencia_obs.Value:='mês/Ano: ';
      end;



if Tb_DarCRCODCLI.Value>0 then
   begin
   flqr1('CRAZAO,CDENOM,CCNPJ,CCPF','C','CADCLI','N','CCODCLI',DM1.Tb_DarCRCODCLI.AsString);
   Tb_Darrazaocli.Value:=DM1.Query1.Fields[0].AsString;
   Tb_Dardenomcli.Value:=DM1.Query1.Fields[1].AsString;
   if  DM1.Query1.Fields[2].AsFloat=0 then
      Tb_Darcnpj.Value:=DM1.Query1.Fields[3].Asfloat
   else
      Tb_Darcnpj.Value:=DM1.Query1.Fields[2].Asfloat


   end;
if Tb_DarCRCODVEN.Value>0 then
   begin
   flqr1('VNOME','V','CADVEN','N','VCODVEN',DM1.Tb_DarCRCODVEN.AsString);
   Tb_Darnomven.Value:=DM1.Query1.Fields[0].AsString;
   end;
if Tb_DarCRCODBCO.Value>0 then
   begin
   flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',DM1.Tb_DarCRCODBCO.AsString);
   Tb_Darnombco.Value:=DM1.Query1.Fields[0].AsString;
   end;
Tb_Dartipodoc.Value:=ptpdoc[DM1.Tb_DarCRDUP.AsInteger];


if DM1.Tb_DarCRSTATUS.Value=2 then
   DM1.Tb_Darsituacao.Value:='Pago'
else if DM1.Tb_DarCRSTATUS.Value=1 then
   DM1.Tb_Darsituacao.Value:='Pago Parcial'
else
   DM1.Tb_Darsituacao.Value:='A Pagar';
if DM1.Tb_DarCRDTEMIS.Value>pdatanula then
   DM1.Tb_Dardtemis.Value:=DM1.Tb_DarCRDTEMIS.Value;
if DM1.Tb_DarCRDTVCTO.Value>pdatanula then
   DM1.Tb_Dardtvcto.Value:=DM1.Tb_DarCRDTVCTO.Value;
if DM1.Tb_DarCRDTPAG.Value>pdatanula then
   DM1.Tb_Dardtpag.Value:=DM1.Tb_DarCRDTPAG.Value;
if DM1.Tb_DarCRDTBX.Value>pdatanula then
   DM1.Tb_Dardtbx.Value:=DM1.Tb_DarCRDTBX.Value;
if DM1.Tb_DarCRDTDESCF.Value>pdatanula then
   DM1.Tb_Dardtdescf.Value:=DM1.Tb_DarCRDTDESCF.Value;
if DM1.Tb_DarCRDATCUP.Value>pdatanula then
   DM1.Tb_Dardatcup.Value:=DM1.Tb_DarCRDATCUP.Value;
if DM1.Tb_DarCRSPC_DTPEN.Value>pdatanula then
   DM1.Tb_Darspc_dtpen.Value:=DM1.Tb_DarCRSPC_DTPEN.Value;
if DM1.Tb_DarCRSPC_DTNEG.Value>pdatanula then
   DM1.Tb_Darspc_dtneg.Value:=DM1.Tb_DarCRSPC_DTNEG.Value;
if DM1.Tb_DarCRSERASA_DTNEG.Value>pdatanula then
   DM1.Tb_Darserasa_dtneg.Value:=DM1.Tb_DarCRSERASA_DTNEG.Value;
if DM1.Tb_DarCRDTCAU.Value>pdatanula then
   DM1.Tb_Dardtcau.Value:=DM1.Tb_DarCRDTCAU.Value;

DM1.Tb_Darvaldev.Value:=(DM1.Tb_DarCRVALOR.AsFloat-(DM1.Tb_DarCRVALPAG.AsFloat+DM1.Tb_DarCRDESC.Value+DM1.Tb_DarCRDEVOL.AsFloat)-DM1.Tb_DarCRJUROS.Value);
if DM1.Tb_Darvaldev.AsFloat<0 then
   DM1.Tb_Darvaldev.AsFloat:=0;


end;

procedure TDM1.Tb_ComDAfterInsert(DataSet: TDataSet);
begin
if Tb_ComDCDCODEMP.IsNull then
   Tb_ComDCDCODEMP.Value:=codemp;
if Tb_ComDCDCODEMP.AsFloat>100 then
   Tb_ComDCDCODEMP.AsFloat:=Tb_ComDCDCODEMP.AsFloat-100;
end;

procedure TDM1.Tb_SupBeforeInsert(DataSet: TDataSet);
begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('select max(SCODSUP) from CADSUP ');
   if not DM1.Qr_TID.Locate('TINOME','CADSUP',[]) then
      DM1.Query1.SQl.Add(' where SCODEMP=0'+InttoStr(codemp));
   DM1.Query1.Open;

   if DM1.Tb_PargerPDCADSUP.Value=1 then begin
      Cod:=StrToInt('0'+Copy(DM1.Query1.Fields[0].AsString,1,Length(DM1.Query1.Fields[0].AsString)-1))+1;
      Cod:=Digito(Cod);
   end else
      cod:=DM1.Query1.Fields[0].AsInteger+1;
end;

procedure TDM1.Tb_SupAfterInsert(DataSet: TDataSet);
begin
  Tb_SupSCODSUP.Value := Cod;
  if codemp>100 then
     Tb_SupSCODEMP.Value := codemp-100
  else
     Tb_SupSCODEMP.Value := codemp;

  DM1.Tb_SupSDTCAD.AsDateTime:=date;
  FAtualizaBanco(0,'CADSUP','SCODEMP',DM1.Tb_SupSCODEMP.AsString
  ,['SCODSUP'],[DM1.Tb_SupSCODSUP.AsString]
   ,DM1.Tb_Sup);
end;

procedure TDM1.Tb_UFBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_UF.FieldCount-1 do
   begin
   if not DM1.Tb_UF.Fields[i].IsNull then
      Continue;
   if DM1.Tb_UF.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_UF.Fields[i].Value:=0
//   else if DM1.Tb_UF.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_UF.Fields[i].Value:=0
   else if DM1.Tb_UF.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_UF.Fields[i].Value:=' ';
   end;
end;

procedure TDM1.Tb_VenCalcFields(DataSet: TDataSet);
begin
   if DM1.Tb_VenVCODSUP.Value>0 then begin
      if flqr1('SNOME','S','CADSUP','N','SCODSUP',DM1.Tb_VenVCODSUP.AsString) then
         DM1.Tb_Vennomsup.Value:=DM1.Query1.Fields[0].AsString;
   end;

   if DM1.Tb_VenVCODREG.AsFloat>0 then begin
      if flqr1('CR_NOMREG,CR_ACREREG,CR_DESREG','CR_','CADREGIAO','N','CR_CODREG',DM1.Tb_VenVCODREG.AsString) then begin
         DM1.Tb_Vennomreg.Value :=DM1.Query1.Fields[0].AsString;
         DM1.Tb_Venacrereg.Value:=DM1.Query1.Fields[1].Asfloat;
         DM1.Tb_Vendescreg.Value:=DM1.Query1.Fields[2].Asfloat;
      end;
   end;
end;

procedure TDM1.Tb_VenBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_Ven.FieldCount-1 do
   begin
   if not DM1.Tb_Ven.Fields[i].IsNull then
      Continue;
   if DM1.Tb_Ven.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_Ven.Fields[i].Value:=0
//   else if DM1.Tb_Ven.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_Ven.Fields[i].Value:=0
   else if DM1.Tb_Ven.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_Ven.Fields[i].Value:=' ';
   end;
end;

procedure TDM1.Tb_ChqCalcFields(DataSet: TDataSet);
begin
if DM1.Tb_ChqCHCODCLI.Value>0 then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',DM1.Tb_ChqCHCODCLI.AsString) then
      DM1.Tb_Chqnomcli.Value:=DM1.Query1.Fields[0].AsString;
   end;

if DM1.Tb_ChqCHDTBX.AsDateTime>pdatanula then
   DM1.Tb_Chqdtbx.Value:=DM1.Tb_ChqCHDTBX.Value;

if DM1.Tb_ChqCHPRO_ULTDAT.AsDateTime>pdatanula then
   DM1.Tb_Chqpro_ultdat.Value:=DM1.Tb_ChqCHPRO_ULTDAT.Value;
end;

procedure TDM1.Tb_ChqBeforeInsert(DataSet: TDataSet);
begin
cod:=fbuscacodigoChqCli(0);


end;

procedure TDM1.Tb_ChqAfterInsert(DataSet: TDataSet);
begin
DM1.Tb_ChqCHCODEMP.Value:=codemp;
DM1.Tb_ChqCHLOTSEQ.Value:=ls_codchqcli;
DM1.Tb_ChqCHSEQ.Value   :=cod;
end;

procedure TDM1.Tb_Ped01CalcFields(DataSet: TDataSet);
begin
if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',DM1.Tb_Ped01P1CODCLI.AsString) then
   DM1.Tb_Ped01nomcli.Value:=DM1.Query1.Fields[0].AsString;
DM1.Tb_Ped01submod.Value:=ValFloat(PalNum_Sis(DM1.Tb_Ped01P1SUBMOD.Value));

end;

procedure TDM1.Tb_ChqBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
if DM1.Tb_ChqCHID_NEW.AsInteger=0 then
   DM1.Tb_ChqCHID_NEW.Value:=fBuscarProximoId('CADCHQ_SEQ');

if trim(DM1.Tb_ChqCHEMIT.Value)='' then
   DM1.Tb_ChqCHEMIT.Value:='_';
if DM1.Tb_ChqCHDTDEP.IsNull then
   DM1.Tb_ChqCHDTDEP.Value:=pdatanula;
if DM1.Tb_ChqCHDTEMIS.IsNull then
   DM1.Tb_ChqCHDTEMIS.AsString:=FormatDatetime(fdt2, pdatanula);

if DM1.Tb_ChqCHVALOR.IsNull then
   DM1.Tb_ChqCHVALOR.Value:=0;
if DM1.Tb_ChqCHNUMERO.IsNull then
   DM1.Tb_ChqCHNUMERO.Value:=0;
if DM1.Tb_ChqCHBANCO.IsNull then
   DM1.Tb_ChqCHBANCO.Value:=0;
if trim(DM1.Tb_ChqCHSERIE.Value)='' then
   DM1.Tb_ChqCHSERIE.Value:='_';
if trim(DM1.Tb_ChqCHAGENCIA.Value)='' then
   DM1.Tb_ChqCHAGENCIA.Value:='_';
if trim(DM1.Tb_ChqCHCC.Value)='' then
   DM1.Tb_ChqCHCC.Value:='_';

For i:=0 to DM1.Tb_Chq.FieldCount-1 do
   begin
   if not DM1.Tb_Chq.Fields[i].IsNull then
      Continue;
   if DM1.Tb_Chq.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_Chq.Fields[i].Value:=0
//   else if DM1.Tb_Chq.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_Chq.Fields[i].Value:=0
   else if DM1.Tb_Chq.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_Chq.Fields[i].Value:=' ';
   end;
end;

procedure TDM1.Tb_ForCalcFields(DataSet: TDataSet);
begin
try
    if DM1.Tb_ForFCODGFOR.AsFloat>0 then
       begin
       if flqr1('GFNOME','GF','CADGFOR','N','GFCODGRU',DM1.Tb_ForFCODGFOR.AsString) then
          DM1.Tb_Fornomgfor.Value:=DM1.Query1.Fields[0].AsString;
       end;

    {if DM1.Tb_ForFTPPESSOA.AsInteger=1 then
       begin
       DM1.Tb_Forobs_cgc.AsString:='CPF';
       DM1.Tb_Forobs_ie.AsString:='Registro Geral(Identidade)';
       end
    else
       begin
       DM1.Tb_Forobs_cgc.AsString:='CGC';
       DM1.Tb_Forobs_ie.AsString:='Inscrição Estadual';
       end;}

    if Length(DM1.Tb_ForFCGC.AsString)<12 then
       begin
       DM1.Tb_Forobs_cgc.AsString:='CPF';
       DM1.Tb_Forobs_ie.AsString:='Registro Geral(Identidade)';
       DM1.Tb_Forcgc_mask.AsString:=Formatfloat(pDFCNPF, ValFloat(DM1.Tb_ForFCGC.AsString));
       end
    else
       begin
       DM1.Tb_Forobs_cgc.AsString:='CNPJ';
       DM1.Tb_Forobs_ie.AsString:='Inscrição Estadual';
       DM1.Tb_Forcgc_mask.AsString:=Formatfloat(pDFCNPJ, ValFloat(DM1.Tb_ForFCGC.AsString));
       end;


    {
    if Trim(DM1.Tb_ForFCODCCD.Value)<>'' then
       begin
       if flqr1('CCNOME','CC','CADCCU','C','CCCODCCU',DM1.Tb_ForFCODCCD.Value) then
          DM1.Tb_Fornomccd.Value:=DM1.Query1.Fields[0].AsString;
       end;
    if Trim(DM1.Tb_ForFCODCCC.Value)<>'' then
       begin
       if flqr1('CCNOME','CC','CADCCU','C','CCCODCCU',DM1.Tb_ForFCODCCC.Value) then
          DM1.Tb_Fornomccc.Value:=DM1.Query1.Fields[0].AsString;
       end;

    if Trim(DM1.Tb_ForfCODDEPD.Value)<>'' then
       begin
       if flqr1('DNOME','D','CADDEP','C','DCODDEP',DM1.Tb_ForFCODDEPD.Value) then
          DM1.Tb_Fornomdepd.Value:=DM1.Query1.Fields[0].AsString;
       end;

    if Trim(DM1.Tb_ForFCODDEPC.Value)<>'' then
       begin
       if flqr1('DNOME','D','CADDEP','C','DCODDEP',DM1.Tb_ForFCODDEPC.Value) then
          DM1.Tb_Fornomdepc.Value:=DM1.Query1.Fields[0].AsString;
       end;
    }
except on e : exception do
  fGerarEvento('erro no calcfield 5885 '+e.message);

  end;

end;

procedure TDM1.Tb_TDVFTBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select Max(TFCODIGO) from CTDVFT ');
if not DM1.Qr_Tid.Locate('TINOME','CADTDV',[]) then
   DM1.Query1.SQL.Add(' where TFCODEMP='+intToStr(codemp));
DM1.Query1.Open;
cod:=DM1.Query1.Fields[0].AsInteger+1;

end;

procedure TDM1.Tb_TDVFTAfterInsert(DataSet: TDataSet);
begin
DM1.Tb_TDVFTTFCODIGO.Value:=cod;

end;

procedure TDM1.Tb_BaiBeforeInsert(DataSet: TDataSet);
begin
While true do
   begin
   cod:=flBuscarCodigos(0,'CADBAI');
   if DM1.Tb_PargerPDCADBAI.Value=1 then
      Cod:=Digito(Cod);
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('select count(*) from CADBAI where '
                     +iif(DM1.Qr_tid.Locate('TINOME','CADBAI',[]),'','  BCODEMP=0'+IntToStr(codemp)+' and ')
                     +' BCODBAI=0'+FloatTostr(cod));
   DM1.Query1.Open;
   if DM1.Query1.Fields[0].AsInteger<=0 then
      break;
   end;
end;

procedure TDM1.Tb_BaiAfterInsert(DataSet: TDataSet);
begin
Tb_BaiBCODBAI.Value :=Cod;
Tb_BaiBNOME.Value  :='_';
if codemp>100 then
   Tb_BaiBCODEMP.Value:=codemp-100
else
   Tb_BaiBCODEMP.Value:=codemp;

Tb_BaiBSTATUS.Value:=0;
Tb_Bai.Post;
Tb_Bai.Edit;
end;

procedure TDM1.Tb_LocBeforeInsert(DataSet: TDataSet);
begin

While true do
   begin
   cod:=flBuscarCodigos(0,'CADLOC');
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('select count(*) from CADLOC where '
                     +iif(DM1.Qr_tid.Locate('TINOME','CADLOC',[]),'','  LCODEMP=0'+IntToStr(codemp)+' and ')
                     +' LCODLOC=0'+FloatTostr(cod));
   DM1.Query1.Open;
   if DM1.Query1.Fields[0].AsInteger<=0 then
      break;
   end;

{
DM1.Query1.Close;
DM1.Query1.SQl.Clear;
DM1.Query1.SQL.Add('Select max(LCODLOC) from CADLOC ');
if not DM1.Qr_TID.Locate('TINOME','CADLOC',[]) then
   DM1.Query1.SQL.Add(' where LCODEMP=0'+IntToStr(codemp));
DM1.Query1.Open;
cod:=DM1.Query1.Fields[0].AsInteger+1;
}
end;

procedure TDM1.Tb_LocAfterInsert(DataSet: TDataSet);
begin
  if codemp>100 then
     Tb_LocLCODEMP.Value := codemp-100
  else
     Tb_LocLCODEMP.Value := codemp;
DM1.Tb_LocLCODLOC.Value:=cod;
DM1.Tb_LocLNOME.Value  :='_';
end;

procedure TDM1.Tb_LocBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
{
if DM1.Tb_PargerPCODLOC.Value=1 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQl.add('Update CADCLI set CCIDADE='+chr(39)+DM1.Tb_LocLNOME.Value+chr(39)
                     +', CUF='+chr(39)+DM1.Tb_LocLUF.Value+chr(39)+' where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CCODEMP=0'+DM1.Tb_LocLCODEMP.AsString+' and ')
                     +' CCODLOC=0'+DM1.Tb_LocLCODLOC.AsString);
  try
     DM1.Query1.ExecSQL;
  except
     ex_erroSql(01,4182,'DM1','CADCLI');
     fdm1StartCommit;
     end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQl.add('Update CADCLI set CCIDADEC='+chr(39)+DM1.Tb_LocLNOME.Value+chr(39)
                     +', CUFC='+chr(39)+DM1.Tb_LocLUF.Value+chr(39)+' where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CCODEMP=0'+DM1.Tb_LocLCODEMP.AsString+' and ')
                     +' CCODLOCC=0'+DM1.Tb_LocLCODLOC.AsString);
  try
     DM1.Query1.ExecSQL;
  except
     ex_erroSql(01,4194,'DM1','CADCLI');
     fdm1StartCommit;
     end;


   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQl.add('Update CADCV set CVCIDADE='+chr(39)+DM1.Tb_LocLNOME.Value+chr(39)
                     +', CVUF='+chr(39)+DM1.Tb_LocLUF.Value+chr(39)+' where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADCV',[]),'',' CVCODEMP=0'+DM1.Tb_LocLCODEMP.AsString+' and ')
                     +' CVCODLOC=0'+DM1.Tb_LocLCODLOC.AsString);
  try
     DM1.Query1.ExecSQL;
  except
     ex_erroSql(01,4208,'DM1','CADCV');
     fdm1StartCommit;
     end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQl.add('Update CADFOR set FCIDADE='+chr(39)+DM1.Tb_LocLNOME.Value+chr(39)
                     +', FUF='+chr(39)+DM1.Tb_LocLUF.Value+chr(39)+' where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADFOR',[]),'',' FCODEMP=0'+DM1.Tb_LocLCODEMP.AsString+' and ')
                     +' FCODLOC=0'+DM1.Tb_LocLCODLOC.AsString);
  try
     DM1.Query1.ExecSQL;
  except
     ex_erroSql(01,4220,'DM1','CADFOR');
     fdm1StartCommit;
     end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQl.add('Update CADTRA set TRCIDADE='+chr(39)+DM1.Tb_LocLNOME.Value+chr(39)
                     +', TRUF='+chr(39)+DM1.Tb_LocLUF.Value+chr(39)+' where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADTRA',[]),'',' TRCODEMP=0'+DM1.Tb_LocLCODEMP.AsString+' and ')
                     +' TRCODLOC=0'+DM1.Tb_LocLCODLOC.AsString);
  try
     DM1.Query1.ExecSQL;
  except
     ex_erroSql(01,4232,'DM1','CADTRA');
     fdm1StartCommit;
     end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQl.add('Update CADVEN set VCIDADE='+chr(39)+DM1.Tb_LocLNOME.Value+chr(39)
                     +', VUF='+chr(39)+DM1.Tb_LocLUF.Value+chr(39)+' where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADVEN',[]),'',' VCODEMP=0'+DM1.Tb_LocLCODEMP.AsString+' and ')
                     +' VCODLOC=0'+DM1.Tb_LocLCODLOC.AsString);
  try
     DM1.Query1.ExecSQL;
  except
     ex_erroSql(01,4244,'DM1','CADVEN');
     fdm1StartCommit;
     end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQl.add('Update CADSUP set SCIDADE='+chr(39)+DM1.Tb_LocLNOME.Value+chr(39)
                     +', SUF='+chr(39)+DM1.Tb_LocLUF.Value+chr(39)+' where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADSUP',[]),'',' SCODEMP=0'+DM1.Tb_LocLCODEMP.AsString+' and ')
                     +' SCODLOC=0'+DM1.Tb_LocLCODLOC.AsString);
  try
     DM1.Query1.ExecSQL;
  except
     ex_erroSql(01,4256,'DM1','CADSUP');
     fdm1StartCommit;
     end;
   end;
}
For i:=0 to DM1.Tb_Loc.FieldCount-1 do
   begin
   if not DM1.Tb_Loc.Fields[i].IsNull then
      Continue;
   if DM1.Tb_Loc.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_Loc.Fields[i].Value:=0
//   else if DM1.Tb_Loc.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_Loc.Fields[i].Value:=0
   else if DM1.Tb_Loc.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_Loc.Fields[i].Value:=' ';
   end;



end;

procedure TDM1.Tb_LDRBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
if DM1.Tb_LDRLDR_ID_NEW.AsInteger=0 then
   DM1.Tb_LDRLDR_ID_NEW.AsInteger := fBuscarProximoId('CADLDR_SEQ');

For i:=0 to DM1.Tb_LDR.FieldCount-1 do
   begin
   if not DM1.Tb_LDR.Fields[i].IsNull then
      Continue;
   if DM1.Tb_LDR.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_LDR.Fields[i].Value:=0
//   else if DM1.Tb_LDR.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_LDR.Fields[i].Value:=0
   else if DM1.Tb_LDR.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_LDR.Fields[i].Value:=' ';
   end;
end;

procedure TDM1.Tb_RedBeforeInsert(DataSet: TDataSet);
begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add(' SELECT MAX(RDCODRED) AS CODIGO FROM CADRED  '
                      +iif(DM1.Qr_tid.Locate('TINOME','CADRED',[]),'',' where RDCODEMP=0'+IntToStr(codemp)));
   DM1.Query1.Open;

   cod := DM1.Query1.FieldByName('CODIGO').AsFloat + 1;
end;

procedure TDM1.Tb_RedAfterInsert(DataSet: TDataSet);
begin

if codemp>100 then
   DM1.Tb_RedRDCODEMP.Value:=codemp-100
else
   DM1.Tb_RedRDCODEMP.Value:=codemp;

DM1.Tb_RedRDCODRED.Value:=cod;

FAtualizaBanco(0,'CADRED','RDCODEMP',DM1.Tb_RedRDCODEMP.AsString
,['RDCODRED'],[DM1.Tb_RedRDCODRED.AsString]
 ,DM1.Tb_Red);
end;

procedure TDM1.Tb_ContatoAfterCancel(DataSet: TDataSet);
begin
If (Tb_ContatoCTCODCLI.IsNull)or(Tb_ContatoCTCODCLI.value = 0) then
   Tb_Contato.Delete;

end;

procedure TDM1.Tb_ContatoAfterInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('select max(CTNUMCON) from CONTATO'+iif(DM1.Qr_TID.locate('TINOME','CADCLI',[]),'',' where CTCODEMP=0'+IntTosTr(codemp)));
DM1.Query1.Open;
Tb_ContatoCTNUMCON.Value:=DM1.Query1.Fields[0].AsInteger+1;
if codemp>100 then
   DM1.Tb_ContatoCTCODEMP.Value:=codemp-100
else
   DM1.Tb_ContatoCTCODEMP.Value:=codemp;

Tb_Contato.Post;
Tb_Contato.Edit;
Tb_ContatoCTDATCON.AsString:=FormatDatetime(fdt2, pdatasis);
Tb_ContatoCTDTPCON.AsString:=FormatDatetime(fdt2, pdatasis);
Tb_ContatoCTSTATUS.Value:=0;



end;

procedure TDM1.Tb_ContatoCalcFields(DataSet: TDataSet);
begin
{
if (not Tb_ContatoCTCODVEN.IsNull) and (dm1.Tb_ContatoCTCODVEN.Asfloat<>0) then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',dm1.Tb_ContatoCTCODVEN.AsString) then
      Tb_Contatonomven.Value:=DM1.Query1.Fields[0].AsString;
   end;
if (not Tb_ContatoCTCODCLI.IsNull) and (Tb_ContatoCTCODCLI.AsFloat<>0) then
   begin
      if flqr1('CRAZAO,CNOMCON,CFONCON,CFONECOM,CUF','C','CADCLI','N','CCODCLI',Tb_ContatoCTCODCLI.AsString) then

   if flcadcli(1,0,Tb_ContatoCTCODCLI.AsString) then
      begin
      Tb_Contatonomcli.Value:=DM1.Query1.Fields[0].AsString;
      Tb_Contatonomcom.Value:=DM1.Query1.Fields[1].AsString;
      if trim(DM1.Query1.Fields[2].AsString)='' then
         Tb_Contatofone.Value  :=DM1.Query1.Fields[3].AsString
      else
         Tb_Contatofone.Value  :=DM1.Query1.Fields[2].AsString;
      end;                
   end;
}
if (dm1.Tb_ContatoCTDATCON.IsNull)or(dm1.Tb_ContatoCTDATCON.value <= pdatanula) then
   dm1.Tb_Contatodatcon.value := '/  /'
   else dm1.Tb_Contatodatcon.value := FormatDateTime(fdt2,dm1.Tb_ContatoCTDATCON.value);

if (dm1.Tb_ContatoCTDTPCON.IsNull)or(dm1.Tb_ContatoCTDTPCON.value <= pdatanula) then
   dm1.Tb_Contatodtpcont.value := '/  /'
   else dm1.Tb_Contatodtpcont.value := FormatDateTime(fdt2,dm1.Tb_ContatoCTDTPCON.value);

if fSonumero(Tb_ContatoTMP_FONCON.Value)=fSonumero(Tb_ContatoCFONE01.Value)  then
   Tb_Contatofone.Value  :=''
else
   Tb_Contatofone.Value  :=Tb_ContatoTMP_FONCON.Value;

end;

procedure TDM1.Tb_ContatoBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
DM1.Query3.close;
DM1.Query3.SQL.Clear;
DM1.Query3.Params.CreateParam(ftMemo,  'CTTEXCON',ptinput);
DM1.Query3.Params.CreateParam(ftMemo,  'CTTEXPCON',ptinput);
DM1.Query3.Params.CreateParam(ftString,'CTNUMCON',ptinput);

DM1.Query3.SQL.Add('Update CONTATO set CTTEXCON=:CTTEXCON,CTTEXPCON=:CTTEXPCON where ');
if not DM1.Qr_tid.Locate('TINOME','CADCLI',[]) then
   begin
   DM1.Query3.Sql.Add(' CTCODEMP=:CODEMP and ');
   DM1.Query3.Params.CreateParam(ftString,'CODEMP',ptInput);
   DM1.Query3.ParambyName('CODEMP').AsFloat := DM1.Tb_ContatoCTCODEMP.Value;
   end;
DM1.Query3.Sql.Add(' CTNUMCON=:CTNUMCON ');
DM1.Query3.ParambyName('CTNUMCON').AsFloat  := DM1.Tb_ContatoCTNUMCON.Value;
DM1.Query3.ParamByName('CTTEXCON').AsMemo   := DM1.Tb_ContatoCTTEXCON.Value;
DM1.Query3.ParamByName('CTTEXPCON').AsMemo  := DM1.Tb_ContatoCTTEXPCON.Value;
try
   DM1.Query3.ExecSQL;
   fdm1startcommit;
except

   fmensagem('Erro ao Atualizar o arquivo de Contato.!',0,['0'],0);

   end;
{
For i:=0 to DM1.Tb_Contato.FieldCount-1 do
   begin
   if not DM1.Tb_Contato.Fields[i].IsNull then
      Continue;
   if DM1.Tb_Contato.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_Contato.Fields[i].Value:=0
//   else if DM1.Tb_Contato.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_Contato.Fields[i].Value:=0
   else if DM1.Tb_Contato.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_Contato.Fields[i].Value:=' ';
   end;
}
end;

procedure TDM1.Tb_EmpCalcFields(DataSet: TDataSet);
begin
DM1.Tb_Empcnpj_masc.Value:=FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value);
DM1.Tb_Empender.Value    :=Trim(DM1.Tb_EmpENDERECO.Value+' '+Trim(DM1.Tb_EmpBAIRRO.Value)
                          +'  '+trim(DM1.Tb_EmpCEP.Value)+' '+Trim(DM1.Tb_EmpCIDADE.Value)+'-'+DM1.Tb_EmpUF.Value);
DM1.Tb_Emptelefone.Value:='fone.: '+DM1.Tb_EmpFONE.Value+'  '+'fax: '+DM1.Tb_EmpFAX.Value;
DM1.Tb_Empcnpj.Value    :='CNPJ.: '+DM1.Tb_Empcnpj_masc.Value+'  '+'Insc.Estadual: '+DM1.Tb_EmpINSCRICAO.Value;


DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('select CRCODREG,CPCODPAIS,CPNOMEPAIS,PCODUF_IBGE,'
                  +'  PNOM,CRNOMREG,LCODMUN_IBGE from '
                           +' CADLOC,CADUF,NFE_CADPAIS,NFE_CADREG '
                           +' where CPCODPAIS=CRCODPAIS '
                           +' and CRCODREG=PCODREG_IBGE'
                           +iif(DM1.Qr_TID.locate('TINOME','CADUF',[]),'',' and PCODEMP=LCODEMP ')
                           +' and LUF=PUF'
                           +iif(DM1.Qr_TID.locate('TINOME','CADLOC',[]),'',' and LCODEMP=0'+IntToStr(codemp))
                           +' and LCODLOC=0'+DM1.Tb_EmpCODLOC.AsString);


  DM1.Query2.Open;


//        ex_erroSql_Novo(DM1.Query2,31545,'SGE','CADMOV_PROD_REPETIDO');


DM1.Tb_Empcodloc_ibge.Value :=DM1.Query2.fieldbyName('LCODMUN_IBGE').AsFloat;
{
IF DM1.Tb_Empcodloc_ibge.ASINTEGER>0 THEN
    ex_erroSql_Novo(DM1.Query2,6410,'SGE','CADMOV_PROD_REPETIDO');
}
DM1.Tb_Empcodreg_ibge.Value :=DM1.Query2.fieldbyName('CRCODREG').AsFloat;
DM1.Tb_Empcodpais_ibge.Value:=DM1.Query2.fieldbyName('CPCODPAIS').AsFloat;
DM1.Tb_Empcoduf_ibge.Value  :=DM1.Query2.fieldbyName('PCODUF_IBGE').AsFloat;
DM1.Tb_Empnomepais.Value    :=DM1.Query2.fieldbyName('CPNOMEPAIS').AsString;


end;

procedure TDM1.Query3PostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
If (E is EDBEngineError) then
   If (E as EDBEngineError).Errors[0].Errorcode=9729 then
      begin
      fmensagem('A chave deste registro já existe!',0,['0'],0);
      Abort;
      end;

end;

procedure TDM1.Tb_PVBeforeDelete(DataSet: TDataSet);
begin
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Delete from CADPV2 where '
                  +iif(DM1.Qr_Tid.locate('TINOME','CADPV',[]),'',' PV2CODEMP=0'+DM1.Tb_PVPVCODEMP.AsString+' and ')
                  +' PV2CODPV=0'+DM1.Tb_PVPVCODPV.AsString);
DM1.Query2.ExecSQL;

end;

procedure TDM1.Tb_MI01CalcFields(DataSet: TDataSet);
begin
if flcadecf(1,0,DM1.Tb_MI01CMCODIMP.AsString) then
   DM1.Tb_MI01nomeimp.Value:=DM1.Tb_ECFCFNOME.Value;

end;

procedure TDM1.Tb_MI01AfterInsert(DataSet: TDataSet);
begin
DM1.Tb_MI01CMCODEMP.Value :=codemp;
DM1.Tb_MI01CMDATA.AsString:=FormatDatetime(fdt2, pdatasis);

end;

procedure TDM1.Src_MI01DataChange(Sender: TObject; Field: TField);
begin
if (not DM1.Tb_MI02.Active) or (
   (DM1.Tb_MI01CMCODIMP.AsFloat<>DM1.Tb_MI02CM2CODEMP.AsFloat) or
   (DM1.Tb_MI01CMDATA.AsDatetime<>DM1.Tb_MI02CM2DATA.AsDateTime)) then
   begin
   flcadmi02(0,0,DM1.Tb_MI01CMCODIMP.AsString,FormatDateTime(fdt, DM1.Tb_MI01CMDATA.Value),'');
   end;
   


end;

procedure TDM1.Tb_NsBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
if DM1.Tb_NsNSSERIE.IsNull then
   DM1.Tb_NsNSSERIE.Value:='1';
if DM1.Tb_NsNSDTEMIS.IsNull then
   begin
   if DM1.Tb_NsNSDATCUP.IsNull then
      DM1.Tb_NsNSDTEMIS.AsString:=FormatDatetime(fdt2, pdatasis)
   else
      DM1.Tb_NsNSDTEMIS.Value:=DM1.Tb_NsNSDATCUP.Value;
   end;


if DM1.Tb_NsNSDATCUP.IsNull then
   begin
   if DM1.Tb_NsNSDTEMIS.IsNull then
      DM1.Tb_NsNSDATCUP.AsString:=FormatDatetime(fdt2, pdatasis)
   else
      DM1.Tb_NsNSDATCUP.Value:=DM1.Tb_NsNSDTEMIS.Value;
   end;

if DM1.Tb_NsNSMODELO.IsNull then
   DM1.Tb_NsNSMODELO.Value:='1';


For i:=0 to DM1.Tb_NS.FieldCount-1 do
   begin
   if not DM1.Tb_NS.Fields[i].IsNull then
      Continue;
   if DM1.Tb_NS.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_NS.Fields[i].Value:=0
//   else if DM1.Tb_NS.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_NS.Fields[i].Value:=0
   else if DM1.Tb_NS.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_NS.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Par_LDRBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
for i:=0 to DM1.Par_LDR.FieldCount-1 do
   begin
   if not DM1.Par_LDR.Fields[i].IsNull then
      Continue;
   if DM1.Par_LDR.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Par_LDR.Fields[i].Value:=0
//   else if DM1.Par_LDR.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Par_LDR.Fields[i].Value:=0
   else if DM1.Par_LDR.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Par_LDR.Fields[i].Value:=' ';

   end;

end;

procedure TDM1.c(DataSet: TDataSet);
begin
Try
  DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
  If not DM1.SG_ASSOC.InTransaction then
    DM1.SG_ASSOC.StartTransaction;
  DM1.SG_ASSOC.Commit;
Except
  fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
  end;


end;

procedure TDM1.Tb_AjuBeforePost(DataSet: TDataSet);
var
  i: Integer;
begin
if DM1.Tb_AjuAJID_NEW.AsInteger<=0 then
   DM1.Tb_AjuAJID_NEW.AsInteger:=fBuscarProximoId('CADAJU_SEQ');
for i:=0 to DM1.Tb_Aju.FieldCount-1 do
   begin
   if not DM1.Tb_Aju.Fields[i].IsNull then
      Continue;
   if DM1.Tb_Aju.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_Aju.Fields[i].Value:=0
//   else if DM1.Tb_Aju.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_Aju.Fields[i].Value:=0
   else if DM1.Tb_Aju.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_Aju.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_CacBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_Cac.FieldCount-1 do
   begin
   if not (DM1.Tb_Cac.Fields[i].IsNull) or (DM1.Tb_Cac.fields[i].FieldKind<>fkData) then
      Continue;
   if DM1.Tb_Cac.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_Cac.Fields[i].Value:=0
//   else if DM1.Tb_Cac.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_Cac.Fields[i].Value:=0
   else if DM1.Tb_Cac.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_Cac.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_CalBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
if DM1.Tb_CalCACODEMP.IsNull then DM1.Tb_CalCACODEMP.Value:=codemp;
For i:=0 to DM1.Tb_Cal.FieldCount-1 do
   begin
   if not DM1.Tb_Cal.Fields[i].IsNull then
      Continue;
   if DM1.Tb_Cal.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_Cal.Fields[i].Value:=0
//   else if DM1.Tb_Cal.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_Cal.Fields[i].Value:=0
   else if DM1.Tb_Cal.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_Cal.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_Cb01BeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_Cb01.FieldCount-1 do
   begin
   if not DM1.Tb_Cb01.Fields[i].IsNull then
      Continue;
   if DM1.Tb_Cb01.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_Cb01.Fields[i].Value:=0
//   else if DM1.Tb_Cb01.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_Cb01.Fields[i].Value:=0
   else if DM1.Tb_Cb01.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_Cb01.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_Cb02BeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_Cb02.FieldCount-1 do
   begin
   if not DM1.Tb_Cb02.Fields[i].IsNull then
      Continue;
   if DM1.Tb_Cb02.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_Cb02.Fields[i].Value:=0
//   else if DM1.Tb_Cb02.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_Cb02.Fields[i].Value:=0
   else if DM1.Tb_Cb02.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_Cb02.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_CfoBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_Cfo.FieldCount-1 do
   begin
   if not DM1.Tb_Cfo.Fields[i].IsNull then
      Continue;
   if DM1.Tb_Cfo.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_Cfo.Fields[i].Value:=0
//   else if DM1.Tb_Cfo.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_Cfo.Fields[i].Value:=0
   else if DM1.Tb_Cfo.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_Cfo.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_CIBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_CI.FieldCount-1 do
   begin
   if not DM1.Tb_CI.Fields[i].IsNull then
      Continue;
   if DM1.Tb_CI.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_CI.Fields[i].Value:=0
//   else if DM1.Tb_CI.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_CI.Fields[i].Value:=0
   else if DM1.Tb_CI.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_CI.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_ComDBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_ComD.FieldCount-1 do
   begin
   if not DM1.Tb_ComD.Fields[i].IsNull then
      Continue;
   if DM1.Tb_ComD.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_ComD.Fields[i].Value:=0
//   else if DM1.Tb_ComD.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_ComD.Fields[i].Value:=0
   else if DM1.Tb_ComD.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_ComD.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_CSFBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_CSF.FieldCount-1 do
   begin
   if not DM1.Tb_CSF.Fields[i].IsNull then
      Continue;
   if DM1.Tb_CSF.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_CSF.Fields[i].Value:=0
//   else if DM1.Tb_CSF.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_CSF.Fields[i].Value:=0
   else if DM1.Tb_CSF.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_CSF.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_CusBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_Cus.FieldCount-1 do
   begin
   if not DM1.Tb_Cus.Fields[i].IsNull then
      Continue;
   if DM1.Tb_Cus.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_Cus.Fields[i].Value:=0
//   else if DM1.Tb_Cus.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_Cus.Fields[i].Value:=0
   else if DM1.Tb_Cus.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_Cus.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_Cus2BeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_Cus2.FieldCount-1 do
   begin
   if not DM1.Tb_Cus2.Fields[i].IsNull then
      Continue;
   if DM1.Tb_Cus2.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_Cus2.Fields[i].Value:=0
//   else if DM1.Tb_Cus2.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_Cus2.Fields[i].Value:=0
   else if DM1.Tb_Cus2.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_Cus2.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_ECFBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
if (Trim(DM1.Tb_ECFCFMODDOC.Value)='') or
   (DM1.Tb_ECFCFMODDOC.IsNull) then
   DM1.Tb_ECFCFMODDOC.Value:='01';  
For i:=0 to DM1.Tb_ECF.FieldCount-1 do
   begin
   if not DM1.Tb_ECF.Fields[i].IsNull then
      Continue;
   if DM1.Tb_ECF.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_ECF.Fields[i].Value:=0
//   else if DM1.Tb_ECF.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_ECF.Fields[i].Value:=0
   else if DM1.Tb_ECF.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_ECF.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_EmpBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_Emp.FieldCount-1 do
   begin
   if not DM1.Tb_Emp.Fields[i].IsNull then
      Continue;
   if DM1.Tb_Emp.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_Emp.Fields[i].Value:=0
//   else if DM1.Tb_Emp.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_Emp.Fields[i].Value:=0
   else if DM1.Tb_Emp.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_Emp.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_EstBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_Est.FieldCount-1 do
   begin
   if not DM1.Tb_Est.Fields[i].IsNull then
      Continue;
   if DM1.Tb_Est.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_Est.Fields[i].Value:=0
//   else if DM1.Tb_Est.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_Est.Fields[i].Value:=0
   else if DM1.Tb_Est.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_Est.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_GruBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_Gru.FieldCount-1 do
   begin
   if not DM1.Tb_Gru.Fields[i].IsNull then
      Continue;
   if DM1.Tb_Gru.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_Gru.Fields[i].Value:=0
//   else if DM1.Tb_Gru.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_Gru.Fields[i].Value:=0
   else if DM1.Tb_Gru.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_Gru.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_IDVBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_IDV.FieldCount-1 do
   begin
   if not DM1.Tb_IDV.Fields[i].IsNull then
      Continue;
   if DM1.Tb_IDV.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_IDV.Fields[i].Value:=0
//   else if DM1.Tb_IDV.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_IDV.Fields[i].Value:=0
   else if DM1.Tb_IDV.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_IDV.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_JD01BeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_JD01.FieldCount-1 do
   begin
   if not DM1.Tb_JD01.Fields[i].IsNull then
      Continue;
   if DM1.Tb_JD01.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_JD01.Fields[i].Value:=0
//   else if DM1.Tb_JD01.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_JD01.Fields[i].Value:=0
   else if DM1.Tb_JD01.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_JD01.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_JD02BeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_JD02.FieldCount-1 do
   begin
   if not DM1.Tb_JD02.Fields[i].IsNull then
      Continue;
   if DM1.Tb_JD02.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_JD02.Fields[i].Value:=0
//   else if DM1.Tb_JD02.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_JD02.Fields[i].Value:=0
   else if DM1.Tb_JD02.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_JD02.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_LC2BeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_LC2.FieldCount-1 do
   begin
   if not DM1.Tb_LC2.Fields[i].IsNull then
      Continue;
   if DM1.Tb_LC2.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_LC2.Fields[i].Value:=0
//   else if DM1.Tb_LC2.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_LC2.Fields[i].Value:=0
   else if DM1.Tb_LC2.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_LC2.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_LGCBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_LGC.FieldCount-1 do
   begin
   if not DM1.Tb_LGC.Fields[i].IsNull then
      Continue;
   if DM1.Tb_LGC.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_LGC.Fields[i].Value:=0
//   else if DM1.Tb_LGC.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_LGC.Fields[i].Value:=0
   else if DM1.Tb_LGC.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_LGC.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_MI01BeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_MI01.FieldCount-1 do
   begin
   if not DM1.Tb_MI01.Fields[i].IsNull then
      Continue;
   if DM1.Tb_MI01.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_MI01.Fields[i].Value:=0
//   else if DM1.Tb_MI01.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_MI01.Fields[i].Value:=0
   else if DM1.Tb_MI01.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_MI01.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_MI02BeforePost(DataSet: TDataSet);
var
i:Integer;
begin
if (DM1.Tb_MI02CM2ALIQ.IsNull) or (DM1.Tb_MI02CM2ALIQ.Value<=0) then
   begin

   fmensagem('Alíquota Invalida!',0,['0'],0);

   abort;
   end;
For i:=0 to DM1.Tb_MI02.FieldCount-1 do
   begin
   if not DM1.Tb_MI02.Fields[i].IsNull then
      Continue;
   if DM1.Tb_MI02.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_MI02.Fields[i].Value:=0
//   else if DM1.Tb_MI02.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_MI02.Fields[i].Value:=0
   else if DM1.Tb_MI02.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_MI02.Fields[i].Value:=' ';
   end;
if (DM1.Tb_MI01.Active) and not (DM1.Tb_MI01CMCODIMP.IsNull) then
   begin
   if (DM1.Tb_MI02CM2CODEMP.IsNull) or (DM1.Tb_MI02CM2CODEMP.AsFloat=0) then
      DM1.Tb_MI02CM2CODEMP.AsFloat:=DM1.Tb_MI01CMCODEMP.AsFloat;
   if (DM1.Tb_MI02CM2CODIMP.IsNull) or (DM1.Tb_MI02CM2CODIMP.AsFloat=0) then
      DM1.Tb_MI02CM2CODIMP.AsFloat:=DM1.Tb_MI01CMCODIMP.AsFloat;
   if (DM1.Tb_MI02CM2DATA.IsNull) or (DM1.Tb_MI02CM2DATA.AsDateTime<=pdatanula) then
      DM1.Tb_MI02CM2DATA.Asdatetime:=DM1.Tb_MI01CMDATA.AsDateTime;

   end;

end;

procedure TDM1.Tb_ParFonBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_ParFon.FieldCount-1 do
   begin
   if not DM1.Tb_ParFon.Fields[i].IsNull then
      Continue;
   if DM1.Tb_ParFon.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_ParFon.Fields[i].Value:=0
//   else if DM1.Tb_ParFon.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_ParFon.Fields[i].Value:=0
   else if DM1.Tb_ParFon.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_ParFon.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_PargerBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_ParGer.FieldCount-1 do
   begin
   if not DM1.Tb_ParGer.Fields[i].IsNull then
      Continue;
   if DM1.Tb_ParGer.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_ParGer.Fields[i].Value:=0
//   else if DM1.Tb_ParGer.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_ParGer.Fields[i].Value:=0
   else if DM1.Tb_ParGer.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_ParGer.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_Ped01BeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_Ped01.FieldCount-1 do
   begin
   if not DM1.Tb_Ped01.Fields[i].IsNull then
      Continue;
   if DM1.Tb_Ped01.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_Ped01.Fields[i].Value:=0
//   else if DM1.Tb_Ped01.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_Ped01.Fields[i].Value:=0
   else if DM1.Tb_Ped01.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_Ped01.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_Ped01DBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_Ped01D.FieldCount-1 do
   begin
   if not DM1.Tb_Ped01D.Fields[i].IsNull then
      Continue;
   if DM1.Tb_Ped01D.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_Ped01D.Fields[i].Value:=0
//   else if DM1.Tb_Ped01D.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_Ped01D.Fields[i].Value:=0
   else if DM1.Tb_Ped01D.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_Ped01D.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_Ped01VBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_Ped01V.FieldCount-1 do
   begin
   if not DM1.Tb_Ped01V.Fields[i].IsNull then
      Continue;
   if DM1.Tb_Ped01V.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_Ped01V.Fields[i].Value:=0
//   else if DM1.Tb_Ped01V.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_Ped01V.Fields[i].Value:=0
   else if DM1.Tb_Ped01V.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_Ped01V.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_Ped02BeforePost(DataSet: TDataSet);
var
i:Integer;
begin

if Tb_Ped02P2DTVCTO.isnull then
   Tb_Ped02P2DTVCTO.value:=0;

For i:=0 to DM1.Tb_Ped02.FieldCount-1 do
   begin
   if not DM1.Tb_Ped02.Fields[i].IsNull then
      Continue;
   if DM1.Tb_Ped02.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_Ped02.Fields[i].Value:=0
//   else if DM1.Tb_Ped02.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_Ped02.Fields[i].Value:=0
   else if DM1.Tb_Ped02.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_Ped02.Fields[i].Value:=' ';
   end;
end;

procedure TDM1.Tb_Ped02DBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_Ped02D.FieldCount-1 do
   begin
   if not DM1.Tb_Ped02D.Fields[i].IsNull then
      Continue;
   if DM1.Tb_Ped02D.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_Ped02D.Fields[i].Value:=0
//   else if DM1.Tb_Ped02D.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_Ped02D.Fields[i].Value:=0
   else if DM1.Tb_Ped02D.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_Ped02D.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_PenBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_Pen.FieldCount-1 do
   begin
   if not DM1.Tb_Pen.Fields[i].IsNull then
      Continue;
   if DM1.Tb_Pen.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_Pen.Fields[i].Value:=0
//   else if DM1.Tb_Pen.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_Pen.Fields[i].Value:=0
   else if DM1.Tb_Pen.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_Pen.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_PF1BeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_PF1.FieldCount-1 do
   begin
   if not DM1.Tb_PF1.Fields[i].IsNull then
      Continue;
   if DM1.Tb_PF1.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_PF1.Fields[i].Value:=0
//   else if DM1.Tb_PF1.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_PF1.Fields[i].Value:=0
   else if DM1.Tb_PF1.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_PF1.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_Pf1VBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_PF1V.FieldCount-1 do
   begin
   if not DM1.Tb_PF1V.Fields[i].IsNull then
      Continue;
   if DM1.Tb_PF1V.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_PF1V.Fields[i].Value:=0
//   else if DM1.Tb_PF1V.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_PF1V.Fields[i].Value:=0
   else if DM1.Tb_PF1V.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_PF1V.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_PF2BeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_PF2.FieldCount-1 do
   begin
   if not DM1.Tb_PF2.Fields[i].IsNull then
      Continue;
   if DM1.Tb_PF2.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_PF2.Fields[i].Value:=0
//   else if DM1.Tb_PF2.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_PF2.Fields[i].Value:=0
   else if DM1.Tb_PF2.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_PF2.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_PO99BeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_PO99.FieldCount-1 do
   begin
   if not DM1.Tb_PO99.Fields[i].IsNull then
      Continue;
   if DM1.Tb_PO99.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_PO99.Fields[i].Value:=0
//   else if DM1.Tb_PO99.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_PO99.Fields[i].Value:=0
   else if DM1.Tb_PO99.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_PO99.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_TDVFTBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_TDVFT.FieldCount-1 do
   begin
   if not DM1.Tb_TDVFT.Fields[i].IsNull then
      Continue;
   if DM1.Tb_TDVFT.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_TDVFT.Fields[i].Value:=0
//   else if DM1.Tb_TDVFT.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_TDVFT.Fields[i].Value:=0
   else if DM1.Tb_TDVFT.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_TDVFT.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_TDVCABeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_TDVCA.FieldCount-1 do
   begin
   if not DM1.Tb_TDVCA.Fields[i].IsNull then
      Continue;
   if DM1.Tb_TDVCA.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_TDVCA.Fields[i].Value:=0
//   else if DM1.Tb_TDVCA.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_TDVCA.Fields[i].Value:=0
   else if DM1.Tb_TDVCA.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_TDVCA.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_TDVBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_TDV.FieldCount-1 do
   begin
   if not DM1.Tb_TDV.Fields[i].IsNull then
      Continue;
   if DM1.Tb_TDV.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_TDV.Fields[i].Value:=0
//   else if DM1.Tb_TDV.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_TDV.Fields[i].Value:=0
   else if DM1.Tb_TDV.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_TDV.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_TCaBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_TCa.FieldCount-1 do
   begin
   if not DM1.Tb_TCa.Fields[i].IsNull then
      Continue;
   if DM1.Tb_TCa.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_TCa.Fields[i].Value:=0
//   else if DM1.Tb_TCa.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_TCa.Fields[i].Value:=0
   else if DM1.Tb_TCa.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_TCa.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_TabBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_Tab.FieldCount-1 do
   begin
   if not DM1.Tb_Tab.Fields[i].IsNull then
      Continue;
   if DM1.Tb_Tab.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_Tab.Fields[i].Value:=0
//   else if DM1.Tb_Tab.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_Tab.Fields[i].Value:=0
   else if DM1.Tb_Tab.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_Tab.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_ProPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
if EDBEngineError(E).Errors[0].ErrorCode = 9729 then

      fmensagem('Registro já existe!',0,['0'],0);

Action:= daAbort;

end;

procedure TDM1.Tb_GenAfterInsert(DataSet: TDataSet);
begin
   DM1.Tb_GenCGCODEMP.Value := codemp;
   DM1.Tb_GenCGCODDCB.Value := mcodstr;

   FAtualizaBanco(0,'CADGEN','CGCODEMP',DM1.Tb_GenCGCODDCB.AsString
   ,['CGCODDCB'],[DM1.Tb_GenCGCODDCB.AsString]
   ,DM1.Tb_Gen);
end;

procedure TDM1.Tb_PGenAfterInsert(DataSet: TDataSet);
begin
if codemp>100 then
   DM1.Tb_PGenPGCODEMP.Value:=codemp-100
else
   DM1.Tb_PGenPGCODEMP.Value:=codemp;
end;

procedure TDM1.Tb_PGenCalcFields(DataSet: TDataSet);
begin
if flqr1('CGNOME','CG','CADGEN','C','CGCODDCB',DM1.Tb_PGenPGCODDCB.Value) then
   begin
   DM1.Tb_PGennomedcb.Value:=DM1.Query1.Fields[0].AsString;
   end;
end;

procedure TDM1.Tb_PGenBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_PGen.FieldCount-1 do
   begin
   if not DM1.Tb_PGen.Fields[i].IsNull then
      Continue;
   if DM1.Tb_PGen.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_PGen.Fields[i].Value:=0
//   else if DM1.Tb_PGen.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_PGen.Fields[i].Value:=0
   else if DM1.Tb_PGen.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_PGen.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_ProAfterCancel(DataSet: TDataSet);
begin
If (Tb_ProPDNOME.Value='_') or  (DM1.Tb_ProPDNOME.Value='PRODUTO INVALIDO') then
   Tb_Pro.Delete;

end;

procedure TDM1.Tb_Ped02CalcFields(DataSet: TDataSet);
begin

if fLerGenerico_query('CADPRO','PDNOME,PDUND','PDCODPRO=0'+DM1.Tb_Ped02P2CODPRO.asstring,query_consulta) then
   begin
   DM1.Tb_Ped02nompro.Value:=query_consulta.fieldbyname('PDNOME').asstring;
   end;
end;


procedure TDM1.Tb_ProCalcFields(DataSet: TDataSet);
var
query_est: tQuery;
query_testaest: tQuery;
begin
query_est:=TQuery.Create(nil);
query_est.DatabaseName:='SG_ASSOC';


query_testaest:=TQuery.Create(nil);
query_testaest.DatabaseName:='SG_ASSOC';
query_testaest.Close;
query_testaest.SQL.Clear;
query_testaest.SQL.Add('Select  sum(CEQTD_ANALISE)  as CEQTD_ANALISE, sum(CESALDO) as CESALDO,sum(CESALDO_PRAT) AS CESALDO_PRAT,sum(CESALDO_DEP) AS CESALDO_DEP '
                 +'                ,sum(CESALDOR) as CESALDOR,sum(CESALDOC) as CESALDOC,sum(CESALDOT) as CESALDOT, '
                 +'                  sum(CEENTPEN) as CEENTPEN,max(CEDTUENT) as CEDTUENT '
                 +'                  ,max(CEDTUSAI) as CEDTUSAI,sum(CESALDO_REP) as CESALDO_REP '
                 +'                 , max( (select count(*) from CADEST WHERE 1=1 '
                          +fCondicoesMultiEmpresa('CADEST','CECODEMP')

                 +'                         and CECODPRO=:CODPRO AND (CEFILIAL=:FILIAL or CEFILIAL is null))) AS QTDREG '
                 +'                ,sum(DECODE(CEFILIAL,:FILIAL,CESALDO,0)) AS SALDO_FILIAL '
                 +' from CADEST where '
                 +' CECODPRO=:CODPRO '
                 +fCondicoesMultiEmpresa('CADEST','CECODEMP')
                 );
query_testaest.ParamByName('CODPRO').Value              :=DM1.Tb_ProPDCODPRO.AsFloat;
query_testaest.ParamByName('FILIAL').AsInteger :=log_filial_padrao;
//query_testaest.SQL.SaveToFile(mpastatemp + 'sqlest.txt');

//   ex_erroSql_Novo(query_testaest,7398,'func Erro:' ,'CADEST');

try
   query_testaest.Open;
except on e : exception do
   ex_erroSql_Novo(query_testaest,7398,'func Erro:'+e.Message ,'CADEST');
   end;


if (query_testaest.IsEmpty) or (query_testaest.fieldbyName('QTDREG').Asinteger=0) then
   begin
   query_est.Close;
   query_est.Sql.Clear;
   query_est.Sql.add('Insert into CADEST ('
                        +'CECODEMP, '
                        +'CECODPRO, '
                        +'CEFILIAL, '
                        +'CESALDO, '
                        +'CESALDO_PRAT, '
                        +'CESALDO_DEP, '
                        +'CESALDO_REP, '
                        +'CESALDOR,'
                        +'CESALDOC,'
                        +'CESALDOT,'
                        +'CEENTPEN,'
                        +'CEDTUSAI,'
                        +'CEDTUENT'
                        +',CEQTD_ANALISE '
                        +') Values ('
                        +Inttostr(codemp-iif(codemp>100,100,0))+','        // CODEMP
                        +DM1.Tb_ProPDCODPRO.AsString+','  // CODPRO
                        +Inttostr(log_filial_padrao)+',' //FILIAL
                        +'0,' // SALDO
                        +'0,' // SALDO_PRAT
                        +'0,' // SALDO_DEP
                        +'0,' // SALDO_REP
                        +'0,' // SALDOR
                        +'0,' // SALDOC
                        +'0,' // SALDOT
                        +'0,' // ENTPEN
                        +chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)+','
                        +chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)
                        +',0'
                        +')');
   try

      query_est.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
//     showmessage('Ocorreu o seguinte erro: '+ e.message);
      begin
      ex_erroSql_Novo(query_testaest,7398,'func Erro:'+e.Message ,'CADEST');
      ex_erroSql_Novo(query_est,7398,'func Erro:'+e.Message ,'CADEST');
      end;
      end;


   query_testaest.Close;
   query_testaest.SQL.Clear;
   query_testaest.SQL.Add('Select sum(CEQTD_ANALISE)  as CEQTD_ANALISE, sum(CESALDO) as CESALDO,sum(CESALDO_PRAT) AS CESALDO_PRAT,sum(CESALDO_DEP) AS CESALDO_DEP '
                    +'                ,sum(CESALDOR) as CESALDOR,sum(CESALDOC) as CESALDOC,sum(CESALDOT) as CESALDOT, '
                    +'                  sum(CEENTPEN) as CEENTPEN,max(CEDTUENT) as CEDTUENT '
                    +'                  ,max(CEDTUSAI) as CEDTUSAI,sum(CESALDO_REP) as CESALDO_REP '
                    +'                 , max( (select count(*) from CADEST WHERE (CECODEMP=:CODEMP OR CECODEMP=:CODEMP_FILIAL) '
                    +'                         and CECODPRO=:CODPRO AND (CEFILIAL=:FILIAL or CEFILIAL is null))) AS QTDREG '
                    +'                ,sum(DECODE(CEFILIAL,:FILIAL,CESALDO,0)) AS SALDO_FILIAL '
                    +' from CADEST where (CECODEMP=:CODEMP OR CECODEMP=:CODEMP_FILIAL) '
                    +' and CECODPRO=:CODPRO ');


   query_testaest.ParamByName('CODEMP').AsInteger:=codemp;
   if codemp<100 then
      query_testaest.ParamByName('CODEMP_FILIAL').AsInteger:=codemp+100
   else
      query_testaest.ParamByName('CODEMP_FILIAL').AsInteger:=codemp-100;
   query_testaest.ParamByName('CODPRO').Value              :=DM1.Tb_ProPDCODPRO.AsFloat;

   query_testaest.ParamByName('FILIAL').AsInteger :=log_filial_padrao;
   try
      query_testaest.Open;
   except
      query_testaest.SQL.SaveToFile(mpastatemp + 'sqlest.txt');
      end;
   end;

{try
  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add(' SELECT MAX(P1DATAP) as P1DATAP FROM CADP01 WHERE P1STATUS<9 AND P1EMIDOC=1 '
                +' AND P1CHAVE IN (SELECT P2CHAVE FROM CADP02 '
                +' WHERE P2CODPRO='+Tb_ProPDCODPRO.AsString+')');
  Query1.Open;
except
  error:=SALVA_NOME('c:\sge\errosql\','ex');
  Query1.SQL.SaveToFile(error);
  fmensagem(error,0,['0'],0);
  end;}
Tb_ProDATULT_MOV.AsDateTime:=Tb_ProPDDTULTSAI.AsDateTime;

try
   Tb_Proqtd_analise.AsFloat :=query_testaest.fieldByName('CEQTD_ANALISE').AsFloat;
   Tb_Prosaldo_filial.AsFloat :=query_testaest.fieldByName('SALDO_FILIAL').AsFloat;
   Tb_Proestoque.Value:=query_testaest.fieldByName('CESALDO').AsFloat;
   Tb_Prosaldo_filial_disponivel.Value:=Tb_Prosaldo_filial.AsFloat-Tb_Proqtd_analise.AsFloat;
   Tb_Proestoque_prat.Value:=query_testaest.fieldByName('CESALDO_PRAT').AsFloat;
   Tb_Proestoque_dep.Value:=query_testaest.fieldByName('CESALDO_DEP').AsFloat;
   Tb_Proestoque_rep.Value:=query_testaest.fieldByName('CESALDO_REP').AsFloat;
   Tb_Proestoquer.Value:=query_testaest.fieldByName('CESALDOR').AsFloat;
   Tb_Proestoquec.Value:=query_testaest.fieldByName('CESALDOC').AsFloat;
   Tb_Proestoquet.Value:=query_testaest.fieldByName('CESALDOT').AsFloat;
   Tb_Proentpen.Value  :=DM1.Tb_ProPDENTPEN.AsFloat;

   if not query_testaest.fieldByName('CEDTUENT').IsNull then
      Tb_Prodtuent.Value  :=query_testaest.fieldByName('CEDTUent').Value;
   if not query_testaest.fieldByName('CEDTUSAI').IsNull then
      Tb_Prodtusai.Value  :=query_testaest.fieldByName('CEDTUSAI').Value;
except
   end;

if DM1.Tb_PargerPUPALNUM.Value=1 then
   begin
   DM1.Tb_Propco_custo.Value:=NumPal(FormatFloat(mcasas, DM1.Tb_ProPDPRECOC.Value));
   end;

if Tb_ProPDCODEXT.AsFloat>0 Then
  begin
  flcadpro_ext(1,1,Tb_ProPDCODEXT.AsString);
  if DM6.Tb_Pro_Ext.IsEmpty then
    Tb_Propdnomext.AsString:='Não Cadastrado!'
  else
    Tb_Propdnomext.AsString:=DM6.Tb_Pro_ExtPROEXT_NOME.AsString;
  end;


if Tb_ProPDNIVEL.Value=0 then
   Tb_Pron_nivel.Value:='Produto Acabado'
else if Tb_ProPDNIVEL.Value=1 then
   Tb_Pron_nivel.Value:='Servicos'
else if Tb_ProPDNIVEL.Value=2 then
   Tb_Pron_nivel.Value:='Materia Prima Revenda'
else if Tb_ProPDNIVEL.Value=3 then
   Tb_Pron_nivel.Value:='Produto Em Producao'
else if Tb_ProPDNIVEL.Value=4 then
   Tb_Pron_nivel.Value:='Materia Prima'
else if Tb_ProPDNIVEL.Value=5 then
   Tb_Pron_nivel.Value:='Insumos'
else if Tb_ProPDNIVEL.Value=6 then
   Tb_Pron_nivel.Value:='Acessórios'
else
   Tb_Pron_nivel.Value:='Outros';
//   DM1.Tb_Propcoven.Value:=Arredonda(DM1.Tb_ProPDPRECO1.Value+(DM1.Tb_ProPDPRECO1.Value* DM1.Tb_PargerPACREGER.Value/100),mQtdCas_arredpu);

if par_tpp=1 then
  begin
  if par_acretodos<>0 then
     DM1.Tb_Propcoven.Value:=Arredonda(DM1.Tb_ProPDPRECO1.Value+(DM1.Tb_ProPDPRECO1.Value* par_acretodos/100),mQtdCas_arredpu)
  else if (par_acret0<>0) and (DM1.Tb_ProPDCODTIP.Value=0) then
     DM1.Tb_Propcoven.Value:=Arredonda(DM1.Tb_ProPDPRECO1.Value+(DM1.Tb_ProPDPRECO1.Value* par_acret0/100),mQtdCas_arredpu)
  else if (par_acret1<>0) and (DM1.Tb_ProPDCODTIP.Value=1) then
     DM1.Tb_Propcoven.Value:=Arredonda(DM1.Tb_ProPDPRECO1.Value+(DM1.Tb_ProPDPRECO1.Value* par_acret1/100),mQtdCas_arredpu)
  else if (par_acred01<>0) and (DM1.Tb_ProPDCODTIP.Value<>0) and (DM1.Tb_ProPDCODTIP.Value<>1) then
     DM1.Tb_Propcoven.Value:=Arredonda(DM1.Tb_ProPDPRECO1.Value+(DM1.Tb_ProPDPRECO1.Value* par_acred01/100),mQtdCas_arredpu)
  else
     DM1.Tb_Propcoven.Value:=DM1.Tb_ProPDPRECO1.Value;
  end
else if par_tpp=2 then
  begin
  if par_acretodos<>0 then
     DM1.Tb_Propcoven.Value:=Arredonda(DM1.Tb_ProPDPRECO2.Value+(DM1.Tb_ProPDPRECO2.Value* par_acretodos/100),mQtdCas_arredpu)
  else if (par_acret0<>0) and (DM1.Tb_ProPDCODTIP.Value=0) then
     DM1.Tb_Propcoven.Value:=Arredonda(DM1.Tb_ProPDPRECO2.Value+(DM1.Tb_ProPDPRECO2.Value* par_acret0/100),mQtdCas_arredpu)
  else if (par_acret1<>0) and (DM1.Tb_ProPDCODTIP.Value=1) then
     DM1.Tb_Propcoven.Value:=Arredonda(DM1.Tb_ProPDPRECO2.Value+(DM1.Tb_ProPDPRECO2.Value* par_acret1/100),mQtdCas_arredpu)
  else if (par_acred01<>0) and (DM1.Tb_ProPDCODTIP.Value<>0) and (DM1.Tb_ProPDCODTIP.Value<>1) then
     DM1.Tb_Propcoven.Value:=Arredonda(DM1.Tb_ProPDPRECO2.Value+(DM1.Tb_ProPDPRECO2.Value* par_acred01/100),mQtdCas_arredpu)
  else
     DM1.Tb_Propcoven.Value:=DM1.Tb_ProPDPRECO2.Value;
  end
else if par_tpp=3 then
  begin
  if par_acretodos<>0 then
     DM1.Tb_Propcoven.Value:=Arredonda(DM1.Tb_ProPDPRECO3.Value+(DM1.Tb_ProPDPRECO3.Value* par_acretodos/100),mQtdCas_arredpu)
  else if (par_acret0<>0) and (DM1.Tb_ProPDCODTIP.Value=0) then
     DM1.Tb_Propcoven.Value:=Arredonda(DM1.Tb_ProPDPRECO3.Value+(DM1.Tb_ProPDPRECO3.Value* par_acret0/100),mQtdCas_arredpu)
  else if (par_acret1<>0) and (DM1.Tb_ProPDCODTIP.Value=1) then
     DM1.Tb_Propcoven.Value:=Arredonda(DM1.Tb_ProPDPRECO3.Value+(DM1.Tb_ProPDPRECO3.Value* par_acret1/100),mQtdCas_arredpu)
  else if (par_acred01<>0) and (DM1.Tb_ProPDCODTIP.Value<>0) and (DM1.Tb_ProPDCODTIP.Value<>1) then
     DM1.Tb_Propcoven.Value:=Arredonda(DM1.Tb_ProPDPRECO3.Value+(DM1.Tb_ProPDPRECO3.Value* par_acred01/100),mQtdCas_arredpu)
  else
     DM1.Tb_Propcoven.Value:=DM1.Tb_ProPDPRECO3.Value;
  end
else
  begin
  if par_acretodos<>0 then
     DM1.Tb_Propcoven.Value:=Arredonda(DM1.Tb_ProPDPRECO1.Value+(DM1.Tb_ProPDPRECO1.Value* par_acretodos/100),mQtdCas_arredpu)
  else if (par_acret0<>0) and (DM1.Tb_ProPDCODTIP.Value=0) then
     DM1.Tb_Propcoven.Value:=Arredonda(DM1.Tb_ProPDPRECO1.Value+(DM1.Tb_ProPDPRECO1.Value* par_acret0/100),mQtdCas_arredpu)
  else if (par_acret1<>0) and (DM1.Tb_ProPDCODTIP.Value=1) then
     DM1.Tb_Propcoven.Value:=Arredonda(DM1.Tb_ProPDPRECO1.Value+(DM1.Tb_ProPDPRECO1.Value* par_acret1/100),mQtdCas_arredpu)
  else if (par_acred01<>0) and (DM1.Tb_ProPDCODTIP.Value<>0) and (DM1.Tb_ProPDCODTIP.Value<>1) then
     DM1.Tb_Propcoven.Value:=Arredonda(DM1.Tb_ProPDPRECO1.Value+(DM1.Tb_ProPDPRECO1.Value* par_acred01/100),mQtdCas_arredpu)
  else
     DM1.Tb_Propcoven.Value:=DM1.Tb_ProPDPRECO1.Value;
  end;

DM1.Tb_Prodiferenca.Value:=DM1.Tb_ProPDPMC.Value-DM1.Tb_Propcoven.Value;

if (DM1.Tb_Prodiferenca.Value<=0)  then
   DM1.Tb_Prodiferenca.Value:=0
else if DM1.Tb_ProPDPMC.AsFloat<>0 then
   begin
   DM1.Tb_Prodiferenca.Value:=Arredonda((DM1.Tb_Prodiferenca.Value*100)
                            /DM1.Tb_ProPDPMC.Value,mQtdCas_arredpu);
   end;

if DM1.Tb_PargerPQTDDIAV.Value>0 then
   begin
   query_testaest.close;
   query_testaest.SQL.Clear;
   query_testaest.SQL.add('Select min(CLDTVCTO) from CADLGC where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CLCODEMP=0'+IntTostr(codemp)+' and ')
                     +' CLCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString
                     +' and CLDTVCTO>'+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39));
   query_testaest.Open;
   if not query_testaest.Fields[0].IsNull then
      DM1.Tb_Prodtvenc.Value:=query_testaest.Fields[0].AsDateTime;
   end;
if (DM1.Tb_ProPDDTUATP1.IsNull) or (DM1.Tb_ProPDDTUATP1.Value<=pdatanula) then
   DM1.Tb_Prodtaltpco1.Value:='/  /'
else
   DM1.Tb_Prodtaltpco1.Value:=FormatDateTime(fdt2, DM1.Tb_ProPDDTUATP1.Value);
if (DM1.Tb_ProPDDTUATP2.IsNull) or (DM1.Tb_ProPDDTUATP2.Value<=pdatanula) then
   DM1.Tb_Prodtaltpco2.Value:='/  /'
else
   DM1.Tb_Prodtaltpco2.Value:=FormatDateTime(fdt2, DM1.Tb_ProPDDTUATP2.Value);
if (DM1.Tb_ProPDDTUATP3.IsNull) or (DM1.Tb_ProPDDTUATP3.Value<=pdatanula) then
   DM1.Tb_Prodtaltpco3.Value:='/  /'
else
   DM1.Tb_Prodtaltpco3.Value:=FormatDateTime(fdt2, DM1.Tb_ProPDDTUATP3.Value);
 DM1.Tb_Promarkup.Value:=FormatFloat(mcasas_pct, 0);
 DM1.Tb_PromarkupP02.Value:=FormatFloat(mcasas_pct, 0);
 DM1.Tb_PromarkupP03.Value:=FormatFloat(mcasas_pct, 0);

if (DM1.Tb_ProPDPRECO1.asfloat>0) and (DM1.Tb_ProPDPRECOC.AsFloat>0) then
   begin
   DM1.Tb_Promarkup.Value:=FormatFloat(mcasas_pct, (((DM1.Tb_proPDPRECO1.Asfloat-DM1.Tb_proPDPRECOC.AsFloat)*100) / DM1.Tb_ProPDPRECOC.AsFloat));
   end;

if (DM1.Tb_ProPDPRECO2.asfloat>0) and (DM1.Tb_ProPDPRECOC.AsFloat>0) then
   begin
   DM1.Tb_PromarkupP02.Value:=FormatFloat(mcasas_pct, (((DM1.Tb_proPDPRECO2.Asfloat-DM1.Tb_proPDPRECOC.AsFloat)*100) / DM1.Tb_ProPDPRECOC.AsFloat));
   end;

if (DM1.Tb_ProPDPRECO3.asfloat>0) and (DM1.Tb_ProPDPRECOC.AsFloat>0) then
   begin
   DM1.Tb_PromarkupP03.Value:=FormatFloat(mcasas_pct, (((DM1.Tb_proPDPRECO3.Asfloat-DM1.Tb_proPDPRECOC.AsFloat)*100) / DM1.Tb_ProPDPRECOC.AsFloat));
   end;

query_est.close;
FreeAndNil(query_est);
query_testaest.close;
FreeAndNil(query_testaest);

end;

procedure TDM1.Tb_CSFBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(CFCODSEQ) from CADCSF');
DM1.Query1.Open;
cod:=DM1.Query1.Fields[0].AsInteger+1;
end;

procedure TDM1.Tb_CSFAfterInsert(DataSet: TDataSet);
begin
DM1.Tb_CSFCFCODSEQ.Value:=cod;
end;

{
if dm1_calcpro_man then
   begin
   if Tb_ProPDCODFOR.Value>0 then
      begin
      if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',DM1.Tb_ProPDCODFOR.AsString) then
        Tb_Pronomefab.Value:=DM1.Query1.Fields[0].AsString;
      end;
   if (DM1.Tb_PargerPUCADGRU.Value=1) and (Tb_ProPDCODGRU.Value>0) then
      begin
      if flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',DM1.Tb_ProPDCODGRU.AsString) then
         Tb_Pronomegru.Value:=DM1.Query1.Fields[0].AsString;
      end;
   if (DM1.Tb_PargerPUCADRAM.Value=1) and (Tb_ProPDCODRAM.Value>0) then
      begin
      if flqr1('RNOME','R','CADRAM','N','RCODRAM',DM1.Tb_ProPDCODRAM.AsString) then
         Tb_Pronomram.Value:=DM1.Query1.Fields[0].AsString;
      end;
   if (DM1.Tb_PargerPUCADCON.Value=1) and (Tb_ProPDCODCON.Value>0) then
      begin
      if flqr1('CNOME','C','CADCON','N','CCODCON',DM1.Tb_ProPDCODCON.AsString) then
          Tb_Pronomcon.Value:=DM1.Query1.Fields[0].AsString;
      end;
   if (DM1.Tb_PargerPINDUSTRIA.Value=1) and (DM1.Tb_ProPDCODPROC.Value>0) then
      begin
      if flqr1('CP_NOME','CP_','CADPROC','N','CP_CODPRO',DM1.Tb_ProPDCODPROC.AsString) then
         Tb_Pronomeproc.Value:=DM1.Query1.Fields[0].AsString;
      end;
   if (DM1.Tb_PargerPUCADTIP.Value=1) and (Tb_ProPDCODTIP.Value>0) then
      begin
      if flqr1('TNOME','T','CADTP','N','TCODTIP',DM1.Tb_ProPDCODTIP.AsString) then
         Tb_Pronomtip.Value:=DM1.Query1.Fields[0].AsString;
      end;
   if Tb_ProPDPROALT.Value>0 then
      begin
      if flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',DM1.Tb_ProPDPROALT.AsString) then
         Tb_Pronomalt.Value:=DM1.Query1.Fields[0].AsString;
      end;

}
function fdm1StartCommit: boolean;
begin
Try
   if not DM1.SG_ASSOC.Connected then
      DM1.SG_ASSOC.Connected:=true;

   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
   result:=true;
Except
   fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
   result:=false;
   end;

end;
procedure TDM1.Src_ECFDataChange(Sender: TObject; Field: TField);
begin

  
if DM1.Tb_ECFCFCAIXA.IsNull then
   exit;
DM1.Tb_Cal.Close;
DM1.Tb_Cal.SQL.Clear;
DM1.Tb_Cal.SQL.Add('Select * from CADCAL where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADECF',[]),' ',' CACODEMP=0'+IntTostr(codemp)+' and ')
                 +' CACODIMP=0'+DM1.Tb_ECFCFCAIXA.AsString
                 +' order by CACODALI ');
DM1.Tb_Cal.Open;

DM1.Tb_ECF_FP.Close;
DM1.Tb_ECF_FP.Sql.Clear;
DM1.Tb_ECF_FP.SQL.Add('Select * from CADECF_FP where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADECF',[]),'',' FPECODEMP=0'+IntTostr(codemp)+' and ')
                     +' FPECODECF=0'+DM1.Tb_ECFCFCAIXA.AsString
                     +' order by FPECODIGO ');
DM1.Tb_ECF_FP.Open;

end;

procedure TDM1.Tb_PenCalcFields(DataSet: TDataSet);
begin
if flqr1('PDNOME,PDMARCA,PDUND,PDCODBAR','PD','CADPRO','N','PDCODPRO',DM1.Tb_PenPECODPRO.AsString) then
   begin
   DM1.Tb_Pennompro.Value:=DM1.Query1.Fields[0].AsString;
   DM1.Tb_Penmarca.Value:=DM1.Query1.Fields[1].AsString;
   DM1.Tb_Penundpro.Value:=DM1.Query1.Fields[2].AsString;
   DM1.Tb_Pencodbar.Value:=DM1.Query1.Fields[3].AsFloat;
   end;
DM1.Tb_Pentotal.Value:=Arredonda((DM1.Tb_PenPEPRECO.Value*DM1.Tb_PenPEQTDPEN.Value),DM1.Tb_PargerPCASAS.AsInteger);


end;

procedure TDM1.Tb_PVCalcFields(DataSet: TDataSet);
var
mprazos: String;
Query_pv02: TQuery;
begin

Query_pv02:=TQuery.Create(Nil);
Query_pv02.DatabaseName:='SG_ASSOC';

Query_pv02.Close;
Query_pv02.SQL.Clear;
Query_pv02.SQL.Add('Select PV2PRAZO from CADPV2 where ');
if DM1.Qr_TID.locate('TINOME','CADPV',[]) then
   begin
   Query_pv02.SQL.add(' PV2CODTIP='+chr(39)+DM1.Tb_PVPVCODTIP.Value+chr(39)
                     +' and PV2CODPV=0'+DM1.Tb_PVPVCODPV.AsString
                     +' order by PV2CODTIP,PV2CODPV,PV2PRAZO');
   end
else
   begin
   Query_pv02.SQL.ADD(' PV2CODEMP=0'+intTostr(codemp)
                     +' and PV2CODTIP='+chr(39)+DM1.Tb_PVPVCODTIP.Value+chr(39)
                     +' and PV2CODPV=0'+DM1.Tb_PVPVCODPV.AsString
                     +' order by PV2CODEMP,PV2CODTIP,PV2CODPV,PV2PRAZO');
   end;
Query_pv02.Open;

if Query_pv02.Active then
   begin
   Query_pv02.First;
   mprazos:='';
   mcinst :='';
   While not Query_pv02.Eof do
      begin
      if (Query_pv02.Fields[0].AsInteger=0) or (Query_pv02.Fields[0].IsNull) then
         mprazos:=mprazos+mcinst+'AV'
      else
         mprazos:=mprazos+mcinst+Query_pv02.Fields[0].AsString;
      Query_pv02.Next;
      mcinst:='/';
      end;
   if Trim(mprazos)='' then
      DM1.Tb_PVprazos.Value:='A Vista'
   else
      begin
      if length(mprazos)>200 then
         mprazos:=copy(mprazos,1,200);
      DM1.Tb_PVprazos.Value:=mprazos;
      end;
   end;
FreeAndNil(Query_pv02);
end;

procedure TDM1.Src_PVDataChange(Sender: TObject; Field: TField);
begin

if not (DM1.Tb_PV.State in [dsEdit,dsInsert]) then
   begin
   if (not (DM1.Tb_PV2.Active)
      or (DM1.Tb_PV2PV2CODEMP.AsFloat<>DM1.Tb_PVPVCODEMP.AsFloat)
      or (DM1.Tb_PV2PV2CODPV.AsFloat<>DM1.Tb_PVPVCODPV.AsFloat)
      or (DM1.Tb_PV2PV2CODTIP.AsString<>DM1.Tb_PVPVCODTIP.AsString) ) then
      begin
      flcadpv2(DM1.Tb_PVPVCODEMP.AsString,DM1.Tb_PVPVCODTIP.AsString,DM1.Tb_PVPVCODPV.AsString);
      end;
   end;

end;

procedure TDM1.Tb_PcusBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_PCus.FieldCount-1 do
   begin
   if not DM1.Tb_PCus.Fields[i].IsNull then
      Continue;
   if DM1.Tb_PCus.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_PCus.Fields[i].Value:=0
//   else if DM1.Tb_PCus.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_PCus.Fields[i].Value:=0
   else if DM1.Tb_PCus.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_PCus.Fields[i].Value:=' ';
   end;


end;

procedure TDM1.Tb_PcusAfterInsert(DataSet: TDataSet);
begin
DM1.Tb_PcusPCCODIGO.Value:=cod;
end;

procedure TDM1.Tb_PcusBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(PCCODIGO) from CADPCUS');
DM1.Query1.Open;
cod:=DM1.Query1.Fields[0].AsFloat+1;

end;

procedure TDM1.Tb_FPBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(FPCODIGO) from CADFP');
DM1.Query1.Open;
cod:=DM1.Query1.Fields[0].AsFloat+1;

end;

procedure TDM1.Tb_FPBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
DM1.Tb_FPFPDATHOR_ALT.Value:=NOW();

if DM1.Tb_FPFPVINCULO.AsInteger<0 then
   DM1.Tb_FPFPVINCULO.AsInteger:=1;

if DM1.Tb_FPFPVINCULO_TPAG.AsInteger<0 then
   DM1.Tb_FPFPVINCULO_TPAG.AsInteger:=1;

For i:=0 to DM1.Tb_FP.FieldCount-1 do
   begin
   if not DM1.Tb_FP.Fields[i].IsNull then
      Continue;
   if DM1.Tb_FP.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_FP.Fields[i].Value:=0
//   else if DM1.Tb_FP.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_FP.Fields[i].Value:=0
   else if DM1.Tb_FP.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_FP.Fields[i].Value:=' ';
   end;



end;

procedure TDM1.Tb_FPAfterInsert(DataSet: TDataSet);
begin
DM1.Tb_FPFPCODIGO.Value:=cod;
DM1.Tb_FPFPDATHOR_INC.Value:=NOW();
DM1.Tb_FPFPBANDEIRA_OPERADORA.Value:=99;
end;

procedure TDM1.Tb_BcoCalcFields(DataSet: TDataSet);
begin
Tb_Bconometab.Value:='BOLETA_'+FormatFloat('0000',DM1.Tb_BcoBCNUMBCO.Value)
                    +' Menu: Duplicatas a Receber ';

if fsonumero(Tb_BcoBCCODCAR.Value)<>0 then
   begin
   if (Tb_BcoBCNUMBCO.Value=1) or  (Tb_BcoBCNUMBCO.Value=104) or
      (Tb_BcoBCNUMBCO.Value=237) or  (Tb_BcoBCNUMBCO.Value=389) or
      (Tb_BcoBCNUMBCO.Value=392) or  (Tb_BcoBCNUMBCO.Value=409) or
      (Tb_BcoBCNUMBCO.Value=641)  then
      begin
      if ValInt(Tb_BcoBCCODCAR.Value)=11 then
         Tb_Bconomcar.Value:='11 - Cobrança Simples'
      else if ValInt(Tb_BcoBCCODCAR.Value)=12 then
         Tb_Bconomcar.Value:='12 - Cobrança Indexada'
      else if ValInt(Tb_BcoBCCODCAR.Value)=15 then
         Tb_Bconomcar.Value:='15 - Cobr.de Prêmios de Seguro'
      else if ValInt(Tb_BcoBCCODCAR.Value)=17 then
         Tb_Bconomcar.Value:='17 - Cobr.Direta Especial'
      else if ValInt(Tb_BcoBCCODCAR.Value)=31 then
         Tb_Bconomcar.Value:='31 - Cobr.Caucionada/Vinculada'
      else if ValInt(Tb_BcoBCCODCAR.Value)=51 then
         Tb_Bconomcar.Value:='51 - Cobrança descontada'
      else if ValInt(Tb_BcoBCCODCAR.Value)=54 then
         Tb_Bconomcar.Value:='54 - Cobrança Vendor'
      end
   else if (Tb_BcoBCNUMBCO.Value=341)  then
      begin
      if ValInt(Tb_BcoBCCODCAR.Value)=112 then
         Tb_Bconomcar.Value:=Formatfloat('000',ValInt(Tb_BcoBCCODCAR.Value))+' - Escritural Eletronica - Simples'
      else if ValInt(Tb_BcoBCCODCAR.Value)=104 then
         Tb_Bconomcar.Value:=Formatfloat('000',ValInt(Tb_BcoBCCODCAR.Value))+' - Escritural Eletronica - Carne'
      else if ValInt(Tb_BcoBCCODCAR.Value)=147 then
         Tb_Bconomcar.Value:=Formatfloat('000',ValInt(Tb_BcoBCCODCAR.Value))+' - Escritural Eletronica - Carne'
      else if ValInt(Tb_BcoBCCODCAR.Value)=188 then
         Tb_Bconomcar.Value:=Formatfloat('000',ValInt(Tb_BcoBCCODCAR.Value))+' - Escritural Eletronica - Cobrança Inteligente(B2B)'
      else if ValInt(Tb_BcoBCCODCAR.Value)=108 then
         Tb_Bconomcar.Value:=Formatfloat('000',ValInt(Tb_BcoBCCODCAR.Value))+' - Direta Eletronica Emissao Integral - Carne'
      else if ValInt(Tb_BcoBCCODCAR.Value)=109 then
         Tb_Bconomcar.Value:=Formatfloat('000',ValInt(Tb_BcoBCCODCAR.Value))+' - Direta Eletronica sem Emissao - Simples'
      else if ValInt(Tb_BcoBCCODCAR.Value)=150 then
         Tb_Bconomcar.Value:=Formatfloat('000',ValInt(Tb_BcoBCCODCAR.Value))+' - Direta Eletronica sem Emissao - Dolar'
      else if ValInt(Tb_BcoBCCODCAR.Value)=121 then
         Tb_Bconomcar.Value:=Formatfloat('000',ValInt(Tb_BcoBCCODCAR.Value))+' - Direta Eletronica Emissao Parcial - Simples'
      else if ValInt(Tb_BcoBCCODCAR.Value)=180 then
         Tb_Bconomcar.Value:=Formatfloat('000',ValInt(Tb_BcoBCCODCAR.Value))+' - Direta Eletronica Emissao Integral Simples'
      else if ValInt(Tb_BcoBCCODCAR.Value)=175 then
         Tb_Bconomcar.Value:=Formatfloat('000',ValInt(Tb_BcoBCCODCAR.Value))+' - Sem Registro sem emissao com Protesto Eletronico'
      else if ValInt(Tb_BcoBCCODCAR.Value)=198 then
         Tb_Bconomcar.Value:=Formatfloat('000',ValInt(Tb_BcoBCCODCAR.Value))+' - Sem Registro sem Emissao 15 digitos'
      else if ValInt(Tb_BcoBCCODCAR.Value)=142 then
         Tb_Bconomcar.Value:=Formatfloat('000',ValInt(Tb_BcoBCCODCAR.Value))+' - Sem Registro sem Emissao 15 digitos iof 4%'
      else if ValInt(Tb_BcoBCCODCAR.Value)=143 then
         Tb_Bconomcar.Value:=Formatfloat('000',ValInt(Tb_BcoBCCODCAR.Value))+' - Sem Registro sem emissao 15 digitos com iof 7%'
      else if ValInt(Tb_BcoBCCODCAR.Value)=174 then
         Tb_Bconomcar.Value:=Formatfloat('000',ValInt(Tb_BcoBCCODCAR.Value))+' - Sem Registro emissao Parcial com protesto bordero'
      else if ValInt(Tb_BcoBCCODCAR.Value)=177 then
         Tb_Bconomcar.Value:=Formatfloat('000',ValInt(Tb_BcoBCCODCAR.Value))+' - Sem Registro Emissao parcial com protesto eletronico'
      else if ValInt(Tb_BcoBCCODCAR.Value)=129 then
         Tb_Bconomcar.Value:=Formatfloat('000',ValInt(Tb_BcoBCCODCAR.Value))+' - Sem Registro emissao parcial seguros com iof 2%'
      else if ValInt(Tb_BcoBCCODCAR.Value)=139 then
         Tb_Bconomcar.Value:=Formatfloat('000',ValInt(Tb_BcoBCCODCAR.Value))+' - Sem Registro Emissao parcial seguros com iof 4%'
      else if ValInt(Tb_BcoBCCODCAR.Value)=169 then
         Tb_Bconomcar.Value:=Formatfloat('000',ValInt(Tb_BcoBCCODCAR.Value))+' - Sem registro emissao parcial seguros com iof 7%'
      else if ValInt(Tb_BcoBCCODCAR.Value)=172 then
         Tb_Bconomcar.Value:=Formatfloat('000',ValInt(Tb_BcoBCCODCAR.Value))+' - Sem Registro com emissão integral'
      else if ValInt(Tb_BcoBCCODCAR.Value)=102 then
         Tb_Bconomcar.Value:=Formatfloat('000',ValInt(Tb_BcoBCCODCAR.Value))+' - Sem Registro com emissao integral - Carne'
      else if ValInt(Tb_BcoBCCODCAR.Value)=107 then
         Tb_Bconomcar.Value:=Formatfloat('000',ValInt(Tb_BcoBCCODCAR.Value))+' - Sem Registro com emissao integral - 15 posicoes carne'
      else if ValInt(Tb_BcoBCCODCAR.Value)=173 then
         Tb_Bconomcar.Value:=Formatfloat('000',ValInt(Tb_BcoBCCODCAR.Value))+' - Sem Registro com emissao e entrega'
      else if ValInt(Tb_BcoBCCODCAR.Value)=103 then
         Tb_Bconomcar.Value:=Formatfloat('000',ValInt(Tb_BcoBCCODCAR.Value))+' - Sem Registro com emissao e entrega - carne'
      else if ValInt(Tb_BcoBCCODCAR.Value)=196 then
         Tb_Bconomcar.Value:=Formatfloat('000',ValInt(Tb_BcoBCCODCAR.Value))+' - Sem registro com emissao e entrega - 15 posicoes';
      end;

   end;


end;

procedure TDM1.Tb_MovBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_Mov.FieldCount-1 do
   begin
   if not DM1.Tb_Mov.Fields[i].IsNull then
      Continue;
   if DM1.Tb_Mov.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_Mov.Fields[i].Value:=0
//   else if DM1.Tb_Mov.fields[i].DataType in [ftDate,ftDateTime] then
//      DM1.Tb_Mov.Fields[i].Value:=0
   else if DM1.Tb_Mov.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_Mov.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_RSin01AfterInsert(DataSet: TDataSet);
begin
DM1.Tb_RSin01RSCODEMP.Value :=codemp;
DM1.Tb_RSin01RSDATA.AsString:=FormatDatetime(fdt2, pdatasis);

end;

procedure TDM1.Tb_RSin01BeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_RSin01.FieldCount-1 do
   begin
   if not DM1.Tb_RSin01.Fields[i].IsNull then
      Continue;
   if DM1.Tb_RSin01.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_RSin01.Fields[i].Value:=0
   else if DM1.Tb_RSin01.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_RSin01.Fields[i].Value:=' ';
   end;


end;

procedure TDM1.Tb_RSin02BeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM1.Tb_RSin02.FieldCount-1 do
   begin
   if not DM1.Tb_RSin02.Fields[i].IsNull then
      Continue;
   if DM1.Tb_RSin02.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM1.Tb_RSin02.Fields[i].Value:=0
   else if DM1.Tb_RSin02.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_RSin02.Fields[i].Value:=' ';
   end;

end;

procedure TDM1.Tb_RSin01CalcFields(DataSet: TDataSet);
begin
if flcadecf(1,0,DM1.Tb_RSin01RSCODIMP.AsString) then
   DM1.Tb_RSin01nomeimp.Value:=DM1.Tb_ECFCFNOME.Value;

end;

procedure TDM1.Src_RSin01DataChange(Sender: TObject; Field: TField);
begin
flcadmi02(0,0,DM1.Tb_RSin01RSCODIMP.AsString,FormatDateTime(fdt, DM1.Tb_RSin01RSDATA.Value),'');

end;

procedure TDM1.Tb_ECF_FPAfterInsert(DataSet: TDataSet);
begin
DM1.Tb_ECF_FPFPECODEMP.Value:=DM1.Tb_ECFCFCODEMP.Value;
DM1.Tb_ECF_FPFPECODECF.Value:=DM1.Tb_ECFCFCAIXA.Value;
end;

procedure TDM1.Tb_CliBeforeDelete(DataSet: TDataSet);
begin

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Delete from CADCLI_BENS where '
                  +iif(dm1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' CB_CODEMP=0'+DM1.Tb_CliCCODEMP.AsString+' and ')
                  +' CB_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString);
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   end;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Delete from CADCLI_IC where '
                  +iif(dm1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' IC_CODEMP=0'+DM1.Tb_CliCCODEMP.AsString+' and ')
                  +' IC_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString);
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   end;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Delete from CADCLI_OUTINF where '
                  +iif(dm1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' OI_CODEMP=0'+DM1.Tb_CliCCODEMP.AsString+' and ')
                  +' OI_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString);
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   end;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Delete from  CADCLI_REFBAN where '
                  +iif(dm1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' RB_CODEMP=0'+DM1.Tb_CliCCODEMP.AsString+' and ')
                  +' RB_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString);
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   end;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Delete from  CADCLI_REFCOM where '
                  +iif(dm1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' RC_CODEMP=0'+DM1.Tb_CliCCODEMP.AsString+' and ')
                  +' RC_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString);
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   end;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Delete from  CADCLI_REFPES where '
                  +iif(dm1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' RP_CODEMP=0'+DM1.Tb_CliCCODEMP.AsString+' and ')
                  +' RP_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString);
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   end;



end;

procedure TDM1.Tb_TDVCalcFields(DataSet: TDataSet);
var
mTamPad  :Integer;
mTamEste : Real;
mTamCampo: Real;
begin
if DM1.Tb_TDVCA.Active then
   begin
   if DM1.Tb_TDVCATCFPADRAO.Value=0 then
      mtampad:=10
   else if DM1.Tb_TDVCATCFPADRAO.Value=1 then
      mtampad:=12
   else if DM1.Tb_TDVCATCFPADRAO.Value=2 then
      mtampad:=17
   else if DM1.Tb_TDVCATCFPADRAO.Value=3 then
      mtampad:=20
   else if DM1.Tb_TDVCATCFPADRAO.Value=4 then
      mtampad:=10
   else if DM1.Tb_TDVCATCFPADRAO.Value=5 then
      mtampad:=05
   else
      mtampad:=0;


   if DM1.Tb_TDVTFONTE.Value=0 then
      mTamEste:=10
   else if DM1.Tb_TDVTFONTE.Value=1 then
      mTamEste:=12
   else if DM1.Tb_TDVTFONTE.Value=2 then
      mTamEste:=17
   else if DM1.Tb_TDVTFONTE.Value=3 then
      mTamEste:=20
   else if DM1.Tb_TDVTFONTE.Value=4 then
      mTamEste:=10
   else if DM1.Tb_TDVTFONTE.Value=5 then
      mTamEste:=05
   else
      mtamEste:=0;

   if (mTamPad=0) or (mTamEste=0) then
      mTamCampo:=DM1.Tb_TDVTCOL.AsInteger
   else
      begin
      mTamCampo:=DM1.Tb_TDVTTAM.AsInteger*(mTamPad/mtameste);
      mTamCampo:=round(mTamCampo);
      end;
   DM1.Tb_TDVcolfinal.Value:=DM1.Tb_TDVTCOL.AsInteger+mTamCampo;
   end
else
   DM1.Tb_TDVcolfinal.Value:=DM1.Tb_TDVTCOL.AsInteger+DM1.Tb_TDVTTAM.AsInteger;

end;

procedure TDM1.Tb_CPAfterInsert(DataSet: TDataSet);
begin
DM1.Tb_CPCACODEMP.Value:=codemp;
DM1.Tb_CPCANUMERO.Value:=0;
DM1.Tb_CPCADESD.Value  :='A';
DM1.Tb_CPCACODFOR.Value:=0;
DM1.Tb_CPCADTEMIS.Value:=date;
DM1.Tb_CPCACHAVE_ID_ANO.AsInteger:=valint(formatdatetime('yyyy',pdatasis));
DM1.Tb_CPCACHAVE_ID.AsInteger:=fBuscareTestarID('CADDAP_'+DM1.Tb_CPCACHAVE_ID_ANO.AsString);
DM1.Tb_CPCADATAINCLUSAO.Asdatetime :=now;
DM1.Tb_CPCAID_NEW.Value:=fBuscarProximoId('CADDAP_SEQ');


end;


procedure TDM1.Tb_DarBeforePost(DataSet: TDataSet);
var
i: Integer;
begin

if DM1.Tb_DarCRCOMPETENCIA_DTINICIO.AsDateTime<=pdatanula then
   begin
   DM1.Tb_DarCRCOMPETENCIA_DTINICIO.AsDateTime:=strtodatetime('01/'+formatdatetime('mm/yyyy', DM1.Tb_DarCRDTEMIS.AsDateTime));
   DM1.Tb_DarCRCOMPETENCIA_TIPO.AsInteger     :=0;
   end;

For i:=0 to DM1.Tb_Dar.FieldCount-1 do
   begin
   if not DM1.Tb_Dar.Fields[i].IsNull then
      Continue;
   if DM1.Tb_Dar.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword] then
      DM1.Tb_Dar.Fields[i].Value:=0
   else if DM1.Tb_Dar.fields[i].DataType in [ftDate,ftDateTime] then
      DM1.Tb_Dar.Fields[i].AsDateTime:=pdatanula
   else if DM1.Tb_Dar.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_Dar.Fields[i].Value:=' ';
   end;

if Tb_DarCRID_NEW.AsInteger=0 then
   Tb_DarCRID_NEW.AsInteger:=fBuscarProximoId('CADDAR_SEQ');
   
end;

procedure TDM1.Tb_CliCalcFields(DataSet: TDataSet);
begin
if DM1.Tb_CliCSTATUS.AsFloat=7 then
   DM1.Tb_Clinomestatus.Value:='Bloqueado'
else if DM1.Tb_CliCSTATUS.AsFloat=8 then
   DM1.Tb_Clinomestatus.Value:='Observacao'
else if DM1.Tb_CliCSTATUS.AsFloat=9 then
   DM1.Tb_Clinomestatus.Value:='Inativo'
else
   DM1.Tb_Clinomestatus.Value:='Normal';

if trim(Tb_CliCCNPJ.AsString)='' then
  Tb_Clicgc.AsFloat:=Tb_CliCCPF.AsFloat
else
  Tb_Clicgc.AsFloat:=Tb_CliCCNPJ.AsFloat;         

if trim(Tb_CliCIE.AsString)='' then
  Tb_Cliierg.AsString:=Tb_CliCRG.AsString
else
  Tb_Cliierg.AsString:=Tb_CliCIE.AsString;


Tb_Cliender.AsString:=Tb_CliCLOG.AsString+' '+Tb_CliCNUM.AsString+' '+Tb_CliCCOMPL.AsString;

end;

procedure TDM1.Tb_ProBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
if DM1.Tb_ProPDSIT.isNull then
   DM1.Tb_ProPDSIT.Value   :='000';
if DM1.Tb_ProPDCODEMP.IsNull then
   DM1.Tb_ProPDCODEMP.Value:=codemp;

DM1.Tb_ProPDDATAUA.Asdatetime    :=Now;
DM1.Tb_ProPDDTALT.AsDateTime   :=now;
DM1.Tb_ProPDUSRALT.Value       :=codusr;

if valint(DM1.Tb_ProPDFIS_ORIGEM.AsString)=0 then
   DM1.Tb_ProPDFIS_ORIGEM.Value:='0';

//Tb_ProPDCLAS.AsString:=Tb_ProPDCODNCM.AsString;

if Length(DM1.Tb_ProPDSITCF.Value)<>3 then
   begin
   DM1.Tb_ProPDSITCF.Value   :=DM1.Tb_ProPDSITCF.Value;
   end;
//if (Log_TipoLote>0) and (Tb_ProPDTIPOPROD.AsInteger<>3) then
if (Log_TipoLote>0)  then
   DM1.Tb_ProPDTIPOPROD.Value:=3;
//else if DM1.Tb_ProPDTIPOPROD.AsInteger<>0 then
//   DM1.Tb_ProPDTIPOPROD.Value:=0;

For i:=0 to DM1.Tb_Pro.FieldCount-1 do
   begin
   if not (DM1.Tb_Pro.Fields[i].IsNull) then
      Continue;
   if DM1.Tb_Pro.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,ftdate,ftdatetime] then
      DM1.Tb_Pro.Fields[i].Value:=0
   else if DM1.Tb_Pro.fields[i].DataType in [ftDate,ftDateTime] then
      DM1.Tb_Pro.Fields[i].AsString:=''
   else if DM1.Tb_Pro.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_Pro.Fields[i].Value:=' ';
   end;

if (trim(DM1.Tb_ProPDNOME.AsString)='') or (DM1.Tb_ProPDNOME.IsNull) then
   DM1.Tb_ProPDNOME.Value:='_';
if (trim(DM1.Tb_ProPDNOME2.AsString)='') or (DM1.Tb_ProPDNOME2.IsNull) then
   DM1.Tb_ProPDNOME2.Value:='_';
if (trim(DM1.Tb_ProPDNOMFOR.AsString)='') or (DM1.Tb_ProPDNOMFOR.IsNull) then
   DM1.Tb_ProPDNOMFOR.Value:='_';
if (trim(DM1.Tb_ProPDMARCA.AsString)='') or (DM1.Tb_ProPDMARCA.IsNull) then
   DM1.Tb_ProPDMARCA.Value:='_';
if (trim(DM1.Tb_ProPDCODFAB.AsString)='') or (DM1.Tb_ProPDCODFAB.IsNull) then
   DM1.Tb_ProPDCODFAB.Value:='_';
if (trim(DM1.Tb_ProPDCLAS.AsString)='') or (DM1.Tb_ProPDCLAS.IsNull) then
   DM1.Tb_ProPDCODNCM.Value:='00001';
if (DM1.Tb_ProPDCODBAR.IsNull) then
   DM1.Tb_ProPDCODBAR.Value:=0;
if (DM1.Tb_ProPDCODFOR.IsNull) then
   DM1.Tb_ProPDCODFOR.Value:=0;
//fCriarPcusPadrao(DM1.Tb_ProPDCODPRO.AsFloat);
fAjustarCustoDeProdutos(DM1.Tb_ProPDCODPRO.AsFloat);


end;

procedure TDM1.Tb_Min1BeforePost(DataSet: TDataSet);
var
i: Integer;
begin
For i:=0 to DM1.Tb_Min1.FieldCount-1 do
   begin
   if not DM1.Tb_Min1.Fields[i].IsNull then
      Continue;
   if DM1.Tb_Min1.fields[i].DataType in [ftdate,ftdatetime] then
      DM1.Tb_Min1.Fields[i].Value:=0
//      DM1.Tb_Min1.Fields[i].AsString:=''
   else
//   if DM1.Tb_Min1.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,ftdate,ftdatetime] then
   if DM1.Tb_Min1.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword] then
      DM1.Tb_Min1.Fields[i].Value:=0
   else if DM1.Tb_Min1.Fields[i].DataType in [ftString,ftMemo] then
      DM1.Tb_Min1.Fields[i].Value:=' ';
   end;


end;

procedure TDM1.Tb_UFCalcFields(DataSet: TDataSet);
begin
if DM1.Tb_UFPCODREG_IBGE.AsFloat=0 then
   DM1.Tb_UFnomreg.Value:=''
else
   begin
   DM1.Query1.close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select CRNOMREG,CRCODPAIS,CPNOMEPAIS from NFE_CADREG,NFE_CADPAIS where '
                     +' CRCODREG=0'+DM1.Tb_UFPCODREG_IBGE.AsString
                     +' and CPCODPAIS=CRCODPAIS ');

   DM1.query1.Open;
   if DM1.Query1.IsEmpty then
      begin
      DM1.Tb_UFnomreg.Value :='';
      DM1.Tb_UFcodpais.Value:=0;
      DM1.Tb_UFnompais.Value:='';
      end
   else
      begin
      DM1.Tb_UFnomreg.Value:=DM1.Query1.Fields[0].AsString;
      DM1.Tb_UFcodpais.Value:=DM1.Query1.fields[1].AsFloat;
      DM1.Tb_UFnompais.Value:=DM1.Query1.fields[2].AsString;
      end;
   end;

end;

procedure TDM1.Tb_CCUBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add(' SELECT MAX(TO_NUMBER(CCCODCCU)) AS CODIGO FROM CADCCU '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADCCU',[]),'',' where CCCODEMP='+IntToStr(codemp)));
try
  DM1.Query1.Open;
  mcodStr      := FloatToStr(valfloat(DM1.Query1.FieldByName('CODIGO').AsString) + 1);
except
  DM1.Query1.Close;
  DM1.Query1.Sql.Clear;
  DM1.Query1.Sql.Add(' SELECT MAX(CCCODCCU) AS CODIGO FROM CADCCU '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADCCU',[]),'',' where CCCODEMP='+IntToStr(codemp)));
  DM1.Query1.Open;
  mcodstr:=fIncremAlfa(DM1.Query1.FieldByName('CODIGO').AsString);
  end;

end;

procedure TDM1.Tb_Dep_LdrBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add(' SELECT MAX(TO_NUMBER(DCODDEP)) AS CODIGO FROM CADDEP '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADDEP',[]),'',' where DCODEMP='+IntToStr(codemp)));
try
  DM1.Query1.Open;
  mcodStr      := FloatToStr(valfloat(DM1.Query1.FieldByName('CODIGO').AsString) + 1);
except
  DM1.Query1.Close;
  DM1.Query1.Sql.Clear;
  DM1.Query1.Sql.Add(' SELECT MAX(DCODDEP) AS CODIGO FROM CADDEP '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADDEP',[]),'',' where DCODEMP='+IntToStr(codemp)));
  DM1.Query1.Open;
  mcodstr:=fIncremAlfa(DM1.Query1.FieldByName('CODIGO').AsString);
  end;
end;

procedure TDM1.Tb_GenBeforeInsert(DataSet: TDataSet);
begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add(' SELECT MAX(TO_NUMBER(CGCODDCB)) AS CODIGO FROM CADGEN '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADGEN',[]),'',' where CGCODEMP='+IntToStr(codemp)));
   try
     DM1.Query1.Open;
     mcodstr      := FloatToStr(valfloat(DM1.Query1.FieldByName('CODIGO').AsString) + 1);
   except
     DM1.Query1.Close;
     DM1.Query1.Sql.Clear;
     DM1.Query1.Sql.Add(' SELECT MAX(CGCODDCB) AS CODIGO FROM CADGEN '
                       +iif(DM1.Qr_Tid.Locate('TINOME','CADGEN',[]),'',' where CGCODEMP='+IntToStr(codemp)));
     DM1.Query1.Open;
     mcodstr:=fIncremAlfa(DM1.Query1.FieldByName('CODIGO').AsString);
   end;
end;

procedure TDM1.TB_PED02_SOBRASCalcFields(DataSet: TDataSet);
begin
if TB_PED02_SOBRASP2S_CODPRO.AsInteger>0 then
  begin
  TB_PED02_SOBRASNOMPRO.AsString:=Campo_Calculado(dm1.Query4,'pdnome','cadpro','pdcodpro',TB_PED02_SOBRASP2S_CODPRO.AsString);
  end
else
  begin
 TB_PED02_SOBRASNOMPRO.AsString:='NÃO CADASTRADO';
  end;
end;

procedure TDM1.TB_PED02_SOBRASBeforePost(DataSet: TDataSet);
begin
if (dm1.TB_PED02_SOBRAS.State in [dsinsert]) then
  begin
  Query5.close;
  Query5.SQL.clear;
  Query5.SQL.Add(' select max(P2S_ITEM) from cadp02_sobras ');
  Query5.SQL.Add(' where P2S_CHAVE='+TB_PED01_SOBRASP1S_CHAVE.AsString);
  Query5.SQL.Add(' and P2S_CODEMP='+TB_PED01_SOBRASP1S_CODEMP.AsString);
  Query5.SQL.Add(' and P2S_LOTSEQ='+TB_PED01_SOBRASP1S_LOTSEQ.AsString);
  try
    Query5.Open;
    TB_PED02_SOBRASP2S_ITEM.AsInteger:=Query5.FieldByName('max(P2S_ITEM)').AsInteger+1;
  except
    fmensagem('Erro ao buscar proximo numero de item!!!',0,['0'],0);
    end;
  end;
end;

procedure TDM1.TB_PED02_SOBRAS_MPCalcFields(DataSet: TDataSet);
begin
if TB_PED02_SOBRAS_MPP2SMP_CODPRO.AsInteger>0 then
  begin
  TB_PED02_SOBRAS_MPNOMPRO_MP.AsString:=Campo_Calculado(dm1.Query4,'pdnome','cadpro','pdcodpro',TB_PED02_SOBRAS_MPP2SMP_CODPRO.AsString);
  end
else
  begin
  TB_PED02_SOBRAS_MPNOMPRO_MP.AsString:='NÃO CADASTRADO';
  end;
end;

procedure TDM1.TB_PED02_SOBRAS_MPBeforePost(DataSet: TDataSet);
begin
if dm1.TB_PED02_SOBRAS_MP.State in [dsinsert] then
  begin
  Query5.close;
  Query5.SQL.clear;
  Query5.SQL.Add(' select max(P2SMP_ITEM) from CADP02_SOBRAS_MP');
  Query5.SQL.Add(' where P2SMP_CHAVE='+TB_PED01_SOBRASP1S_CHAVE.AsString);
  Query5.SQL.Add(' and P2SMP_CODEMP='+TB_PED01_SOBRASP1S_CODEMP.AsString);
  Query5.SQL.Add(' and P2SMP_LOTSEQ='+TB_PED01_SOBRASP1S_LOTSEQ.AsString);
  try
    Query5.Open;
    TB_PED02_SOBRAS_MPP2SMP_ITEM.AsInteger:=Query5.FieldByName('max(P2SMP_ITEM)').AsInteger+1;
  except
    fmensagem('Erro ao buscar proximo numero de item!!!',0,['0'],0);
    end;
  end;

end;

procedure TDM1.TB_PED01_SOBRASBeforePost(DataSet: TDataSet);
begin
if (dm1.TB_PED01_SOBRAS.State in [dsinsert]) then
  begin
  Query5.close;
  Query5.SQL.clear;
  Query5.SQL.Add(' select max(P1S_ITEM) from cadp01_sobras ');
  Query5.SQL.Add(' where P1S_CODEMP='+TB_PED01_SOBRASP1S_CODEMP.AsString);
  try
    Query5.Open;
    TB_PED01_SOBRASP1S_CHAVE.AsInteger:=Query5.FieldByName('max(P1S_CHAVE)').AsInteger+1;
  except
    fmensagem('Erro ao buscar proximo numero de item!!!',0,['0'],0);
    end;
  end;
end;

procedure TDM1.TB_TPDREBeforePost(DataSet: TDataSet);
begin
if TB_TPDRE.State in [dsinsert] then
  begin
  Query6.Close;
  Query6.SQL.Clear;
  Query6.SQL.Add(' select max(TPD_CHAVE) from CADTPDRE where TPD_CODEMP is not null ');
  Query6.SQL.Add(codemp2('TPD_CODEMP',codemp));
  Query6.Open;
  if TB_TPDRETPD_CHAVE.IsNull then
    TB_TPDRETPD_CHAVE.AsInteger:=Query6.FieldByName('max(TPD_CHAVE)').AsInteger+1;
  TB_TPDRETPD_CODEMP.AsInteger:=codemp;
  TB_TPDRETPD_USR_INC.AsInteger:=codusr;
  TB_TPDRETPD_DATA_INC.AsDateTime:=Date;
  end;
end;

procedure TDM1.Tb_CCUCalcFields(DataSet: TDataSet);
begin
if trim(Tb_CCUCCCODDRE.AsString)<>'' then
  begin
  Query6.Close;
  Query6.SQL.Clear;
  Query6.SQL.Add(' select * from cadtpdre where  TPD_CHAVE='+chr(39)+Tb_CCUCCCODDRE.AsString+chr(39));
  Query6.SQL.Add(codemp2('TPD_CODEMP',codemp));
  try
    Query6.Open;
  except
     Query6.sql.SaveToFile(mpastatemp + 'sql.txt');
     end;
  if not Query6.IsEmpty then
    begin
    Tb_CCUNOMDRE.AsString:=Query6.FieldByName('TPD_DESCRICAO').AsString;
    end
  else
    begin
    Tb_CCUNOMDRE.AsString:='*** não cadastrado!';
    end;
  end;
end;

procedure TDM1.TB_TPDRECalcFields(DataSet: TDataSet);
Begin
if not TB_TPDRETPD_COMPOEM.IsNull then
  TB_TPDRECOMPOEM.AsInteger:=TB_TPDRETPD_COMPOEM.AsInteger-3;
end;

procedure TDM1.Tb_MovProBeforePost(DataSet: TDataSet);
begin
if Tb_MovPro.State in [dsinsert] then
  begin
  Query6.Close;
  Query6.SQL.Clear;
  Query6.SQL.Add(' select max(CMPLOTSEQ) from CMOVPRO where CMPCODEMP is not null ');
  Query6.SQL.Add(codemp2('CMPCODEMP',codemp));
  Query6.Open;
  if Tb_MovProCMPLOTSEQ.IsNull then
    Tb_MovProCMPLOTSEQ.AsInteger:=Query6.FieldByName('max(CMPLOTSEQ)').AsInteger+1;
  Tb_MovProCMPCODEMP.AsInteger:=codemp;
  Tb_MovProCMPCODUSR.AsInteger:=codusr;
  Tb_MovProCMPDATA.AsString:=DateToStr(Date)+' '+TimeToStr(Time);
  end;
end;

procedure TDM1.Tb_BaiAfterCancel(DataSet: TDataSet);
begin
If Tb_BaiBNOME.Value='_' then
  Tb_Bai.Delete;
end;

procedure TDM1.asi(Sender: TObject);
begin
SG_ASSOC.Connected:=False;
end;

function fImprimirErros(pNome, pErros: String): Boolean;
var
f_erro: TextFile;
begin
result:=true;
exit;
Assignfile(f_erro,pNome);
rewrite(f_erro);
WriteLn(f_Erro,pErros);
Closefile(f_erro);
result:=true;


end;

function fImprimirErros2(pNome, pErros: String): Boolean;
var
f_erro: TextFile;
begin
result:=true;
Assignfile(f_erro,pNome);
rewrite(f_erro);
WriteLn(f_Erro,pErros);
Closefile(f_erro);
result:=true;


end;

procedure TDM1.DataModuleCreate(Sender: TObject);
begin
SG_ASSOC.Connected:=false;
end;

procedure TDM1.Tb_Ped01VCalcFields(DataSet: TDataSet);
var
query_fpag: tQuery;
begin
query_fpag:=tQuery.Create(nil);
query_fpag.DatabaseName:='SG_ASSOC';
query_fpag.SQL.Add('Select PFPNOMFOR from CADPFP where '
                  +' PFPCODEMP=:CODEMP '
                  +' and PFPCHAVE=:CHAVE '
                  +' and PFPLOTSEQ=:LOTSEQ '
                  +' and (PFPORDEM=:ORDEM OR PFPORDEM is null) '
                  +' and PFPSEQ=:SEQ  ');

query_fpag.ParamByName('CODEMP').Value :=DM1.Tb_Ped01VP1VCODEMP.AsFloat;
query_fpag.ParamByName('CHAVE').Value  :=DM1.Tb_Ped01VP1VCHAVE.AsFloat;
query_fpag.ParamByName('LOTSEQ').Value :=DM1.Tb_Ped01VP1VLOTSEQ.AsFloat;
query_fpag.ParamByName('ORDEM').Value  :=DM1.Tb_Ped01VP1VORDEM.AsFloat;
query_fpag.ParamByName('SEQ').Value    :=DM1.Tb_Ped01VP1VSEQ.AsFloat;
try
  query_fpag.Open;
  if not query_fpag.isempty then
    DM1.Tb_Ped01Vnomfp.value:=query_fpag.fieldbyName('PFPNOMFOR').asstring;
except
  end;
FreeandNil(Query_FPag);
end;

procedure TDM1.Tb_CADCONQCalcFields(DataSet: TDataSet);
begin
if Tb_CADCONQCQ_OK.AsInteger = 0 then
  Tb_CADCONQselecionado.AsString:='X'
else
  Tb_CADCONQselecionado.AsString:='';
end;

procedure TDM1.Tb_RegRecAfterInsert(DataSet: TDataSet);
begin
Tb_RegRecRRCODEMP.AsInteger:=codemp;
Tb_RegRecRRCODUSR.AsInteger:=codusr;
Tb_RegRecRRDATINC.AsDateTime:=Now;

Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add(' select max(to_number(RRPROTOCOLO))+1 as TOTAL, to_char(sysdate,'+QuotedStr('yyyymmdd')+') as DATAINC  from CADREGREC '
              +' where RRPROTOCOLO like to_char(sysdate,'+QuotedStr('yyyymmdd')+')||'+QuotedStr('%'));
try
  Query1.Open;
  if (not Query1.IsEmpty) and (not Query1.FieldByName('TOTAL').IsNull) then
    Tb_RegRecRRPROTOCOLO.AsString:=Query1.FieldByName('TOTAL').AsString
  else
    Tb_RegRecRRPROTOCOLO.AsString:=FloatToStr(Query1.FieldByName('DATAINC').AsFloat*1000+1);
except
  error:=SALVA_NOME('c:\sge\errosql\','ex');
  Query1.SQL.SaveToFile(error);
  Tb_RegRecRRPROTOCOLO.AsString:=FloatToStr(StrToFloat(FormatDateTime('yyyymmdd',Now))*1000+1);
  end;
end;

procedure TDM1.Tb_RegRecCalcFields(DataSet: TDataSet);
begin
if (not Tb_RegRecRRCODPRO.IsNull) and (Tb_RegRecRRCODPRO.AsInteger>0)  then
  begin
  if not flcadpro(1,0,0,Tb_RegRecRRCODPRO.AsString) then
    Tb_RegRecNOMPRO.AsString:='PRODUTO INEXISTENTE!!!'
  else
    Tb_RegRecNOMPRO.AsString:=Tb_ProPDNOME.AsString;
  end
else
  begin
  Tb_RegRecNOMPRO.AsString:='PRODUTO NÃO SELECIONADO!!!'
  end;

if (not Tb_RegRecRRCODIGO.IsNull) and (Tb_RegRecRRCODIGO.AsInteger>0)  then
  begin
  if Tb_RegRecRRTIPO.AsInteger=0 then
    begin //CLIENTE
    if not flcadcli(1,0,Tb_RegRecRRCODIGO.AsString) then
      Tb_RegRecNOMCOD.AsString:='CLIENTE INEXISTENTE!!!'
    else
      Tb_RegRecNOMCOD.AsString:=Tb_CliCRAZAO.AsString;
    end
  else if Tb_RegRecRRTIPO.AsInteger=1 then
    begin //FORNECEDOR
    if not flcadfor(1,0,Tb_RegRecRRCODIGO.AsString) then
      Tb_RegRecNOMCOD.AsString:='FORNECEDOR INEXISTENTE!!!'
    else
      Tb_RegRecNOMCOD.AsString:=Tb_ForFRAZAO.AsString;
    end
  else if Tb_RegRecRRTIPO.AsInteger=2 then
    begin//TRANSPORTADORA
    if not flcadtra(1,0,Tb_RegRecRRCODIGO.AsString) then
      Tb_RegRecNOMCOD.AsString:='TRANSPORTADORA INEXISTENTE!!!'
    else
      Tb_RegRecNOMCOD.AsString:=Tb_TraTRRAZTRA.AsString;
    end
  else if Tb_RegRecRRTIPO.AsInteger=3 then
    begin//OUTROS
    if flcadfor(1,0,Tb_RegRecRRCODIGO.AsString) then
      Tb_RegRecNOMCOD.AsString:='OUTROS INEXISTENTE!!!'
    else
      Tb_RegRecNOMCOD.AsString:=Tb_ForFRAZAO.AsString;
    end;
  end
else
  begin
  Tb_RegRecNOMCOD.AsString:='NÃO SELECIONADO!!!'
  end;


end;

procedure TDM1.Tb_FuncaoAfterInsert(DataSet: TDataSet);
begin
if not DM1.Qr_TID.Locate('TINOME','CADCAR',[]) then
   begin
   if codemp>100 then
      Tb_FuncaoCODEMP.Value:=codemp-100
   else
      Tb_FuncaoCODEMP.Value:=codemp;
   end
else
   begin
   if DM1.Qr_TIDTIQTD.AsInteger=1 then
      Tb_FuncaoCODEMP.Value:=codemp
   else
      begin
      if codemp>100 then
         Tb_FuncaoCODEMP.Value:=codemp-100
      else
         Tb_FuncaoCODEMP.Value:=codemp;
      end;
   end;


Tb_FuncaoCODCAR.Value:=Cod;

FAtualizaBanco(0,'CADCAR','CODEMP',DM1.Tb_FuncaoCODEMP.AsString
,['CODCAR'],[FloatToStr(DM1.Tb_FuncaoCODCAR.AsFloat)]
 ,DM1.Tb_Funcao);

end;


procedure TDM1.ftestaradoconnection;
begin
if DM1_ADO.ADOConnection1.connected=false then
   begin
   DM1_ADO.ADOConnection1.Close;
   DM1_ADO.ADOConnection1.ConnectionString:='Provider=MSDAORA.1;Password=DEZENOVE;User ID='+Banco_usuario+';Data Source='+Banco_ServerName+';Persist Security Info=True';
   DM1_ADO.ADOConnection1.Open;
   end;
end;


procedure TDM1.Tb_NEAfterInsert(DataSet: TDataSet);
begin
 dm1.Tb_NENEID_NEW.Value := fBuscarProximoId('CADNE_SEQ');

end;

procedure TDM1.Tb_Min1BeforeInsert(DataSet: TDataSet);
begin
DM1.Tb_Min1CM1TEMPAMB.Value := 0;
DM1.Tb_Min1CM1VEICULO_COND_LIMPEZA.Value := 0;
DM1.Tb_Min1CM1RECIPIENTE_LACRADOS.Value := 0;
DM1.Tb_Min1CM1DADOS_PROD_CONDIZ_NF.Value := 0;
DM1.Tb_Min1CM1RECIPIENTE_NAO_IDENT.Value := 0;
DM1.Tb_Min1CM1RECIPIENTE_DANIFICADO.Value := 0;

end;

procedure TDM1.Tb_PF1CalcFields(DataSet: TDataSet);
begin

if flqr1('FRAZAO,FDENOM,FCGC','F','CADFOR','N','FCODFOR',DM1.Tb_PF1PF1CODFOR.AsString) then
   DM1.Tb_PF1razfor.asstring := DM1.Query1.fieldbyname('FRAZAO').AsString;

end;

end.
