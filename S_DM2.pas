unit S_DM2;

interface

uses
  SysUtils, Classes, DB, DBTables,Dialogs;

type
  TDM2 = class(TDataModule)
    Qr_Cab: TQuery;
    Qr_CabP1CHAVE: TFloatField;
    Qr_CabP1CODCLI: TFloatField;
    Qr_CabP1DATAP: TDateTimeField;
    Qr_CabP1CODVEN: TFloatField;
    Qr_CabP1CODUSR: TFloatField;
    Qr_CabP1HORADIG: TStringField;
    Qr_CabP1CODPV: TFloatField;
    Qr_CabP1CODTRA: TFloatField;
    Qr_CabP1BASEN: TFloatField;
    Qr_CabP1ICMSN: TFloatField;
    Qr_CabP1BASER: TFloatField;
    Qr_CabP1ICMSR: TFloatField;
    Qr_CabP1TOTTRI: TFloatField;
    Qr_CabP1TOTRET: TFloatField;
    Qr_CabP1TOTISE: TFloatField;
    Qr_CabCRAZAO: TStringField;
    Qr_CabCDENOM: TStringField;
    Qr_CabCCODBAI: TFloatField;
    Qr_CabCCODLOC: TFloatField;
    Qr_CabCCEP: TStringField;
    Qr_CabCCELULAR: TStringField;
    Qr_CabCFONERES: TStringField;
    Qr_CabCFONECOM: TStringField;
    Qr_CabCDTCAD: TDateTimeField;
    Qr_CabCPONTOR: TStringField;
    Qr_CabCLIM1: TStringField;
    Qr_CabCLIM2: TStringField;
    Qr_CabRGIE: TStringField;
    Qr_Cabcgccpf: TStringField;
    Qr_Cabnomcfo: TStringField;
    Qr_Cabinscsub: TStringField;
    Qr_Cabplimina1: TStringField;
    Qr_Cabplimina2: TStringField;
    Qr_CabP1TOTALB: TFloatField;
    Qr_CabP1TOTALL: TFloatField;
    Qr_CabP1NUMNF: TFloatField;
    Qr_CabP1TOTDES: TFloatField;
    Qr_CabP1BASENP: TFloatField;
    Qr_CabP1BASENN: TFloatField;
    Qr_CabP1BASENI: TFloatField;
    Qr_CabP1ICMSNP: TFloatField;
    Qr_CabP1ICMSNN: TFloatField;
    Qr_CabP1ICMSNI: TFloatField;
    Qr_CabP1BASERP: TFloatField;
    Qr_CabP1BASERN: TFloatField;
    Qr_CabP1BASERI: TFloatField;
    Qr_CabP1ICMSRP: TFloatField;
    Qr_CabP1ICMSRN: TFloatField;
    Qr_CabP1ICMSRI: TFloatField;
    Qr_CabP1TOTPOS: TFloatField;
    Qr_CabP1TOTNEG: TFloatField;
    Qr_CabP1TOTINA: TFloatField;
    Qr_CabP1DESC01: TFloatField;
    Qr_CabP1DESC02: TFloatField;
    Qr_CabP1PESOL: TFloatField;
    Qr_CabP1PESOB: TFloatField;
    Qr_CabP1ESPECIE: TStringField;
    Qr_Cabextl01: TStringField;
    Qr_Cabextl02: TStringField;
    Qr_Cabextl03: TStringField;
    Qr_CabP1UFPV: TStringField;
    Qr_CabP1PLACAV: TStringField;
    Qr_CabP1DATANF: TDateTimeField;
    Qr_Cabnometra: TStringField;
    Qr_Cabendtra: TStringField;
    Qr_Cabcnpftra: TStringField;
    Qr_Cabietra: TStringField;
    Qr_Cabcidtra: TStringField;
    Qr_Cabuftra: TStringField;
    Qr_Cabbaitra: TStringField;
    Qr_Cabcfo1: TStringField;
    Qr_Cabcfo2: TStringField;
    Qr_CabP1VLRDES: TFloatField;
    Qr_CabP1VALFRE: TFloatField;
    Qr_CabCCIDADE: TStringField;
    Qr_CabCUF: TStringField;
    Qr_CabCBAIRRO: TStringField;
    Qr_Cor: TQuery;
    Qr_CorP2CODEMP: TFloatField;
    Qr_CorP2CHAVE: TFloatField;
    Qr_CorP2CODPRO: TFloatField;
    Qr_CorP2QTD: TFloatField;
    Qr_CorP2PRECO: TFloatField;
    Qr_CorP2SIT: TStringField;
    Qr_CorP2BASEN: TFloatField;
    Qr_CorP2ICMSN: TFloatField;
    Qr_CorP2BASER: TFloatField;
    Qr_CorP2ICMSR: TFloatField;
    Qr_CorPDCODBAR: TFloatField;
    Qr_CorPDNOME2: TStringField;
    Qr_CorPDMARCA: TStringField;
    Qr_Corlista: TStringField;
    Qr_CorP2DESC1: TFloatField;
    Qr_CorP2DESC2: TFloatField;
    Qr_Cortotal: TFloatField;
    Qr_CorP2CFO: TFloatField;
    Qr_CorP2ALIQ: TFloatField;
    Qr_TDep: TQuery;
    Qr_TDepDCODDEP: TStringField;
    Qr_TDepDNOME: TStringField;
    Qr_TDeprazao: TStringField;
    Qr_TDepfantasia: TStringField;
    Qr_TDepcidade: TStringField;
    Qr_TDepuf: TStringField;
    Qr_TDepcgc: TFloatField;
    Qr_TDepie: TStringField;
    Qr_TDepfone: TStringField;
    Qr_TDepfax: TStringField;
    Qr_TDepe_mail: TStringField;
    Qr_TDepcep: TStringField;
    Tb_OP: TQuery;
    Src_OP: TDataSource;
    Tb_Arq: TQuery;
    Src_Arq: TDataSource;
    Qr_Arq: TQuery;
    Qr_ArqCANOMARQ: TStringField;
    Qr_ArqCANOMCAM: TStringField;
    Qr_ArqCATIPO: TStringField;
    Qr_ArqCATITULO: TStringField;
    Qr_ArqCANOMREG: TStringField;
    Qr_TSubd: TQuery;
    Qr_TDVCR: TQuery;
    Qr_OpDar: TQuery;
    Qr_OpDarTOCODEMP: TFloatField;
    Qr_OpDarTODOC: TStringField;
    Qr_OpDarTONOME: TStringField;
    Qr_OpDarTOTOP0: TStringField;
    Qr_OpDarTOOP0: TStringField;
    Qr_OpDarTODESOP0: TStringField;
    Qr_OpDarTOPER0: TStringField;
    Qr_OpDarTOTOP1: TStringField;
    Qr_OpDarTOOP1: TStringField;
    Qr_OpDarTODESOP1: TStringField;
    Qr_OpDarTOPER1: TStringField;
    Qr_OpDarTOTOP2: TStringField;
    Qr_OpDarTOOP2: TStringField;
    Qr_OpDarTODESOP2: TStringField;
    Qr_OpDarTOPER2: TStringField;
    Qr_OpDarTOTOP3: TStringField;
    Qr_OpDarTOOP3: TStringField;
    Qr_OpDarTODESOP3: TStringField;
    Qr_OpDarTOCONDT1: TStringField;
    Qr_OpDarTOCOND01: TStringField;
    Qr_OpDarTODCOND01: TStringField;
    Qr_OpDarTOCONDOP: TStringField;
    Qr_OpDarTOCONDT2: TStringField;
    Qr_OpDarTOCOND02: TStringField;
    Qr_OpDarTODCOND02: TStringField;
    Tb_Emp: TQuery;
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
    Tb_EmpCAMINHO: TStringField;
    Tb_EmpRESPONS: TStringField;
    Qr_TDVCRCP: TQuery;
    Tb_EmpTELEVENDAS: TStringField;
    Qr_Ser: TQuery;
    Qr_SerP2SCODEMP: TFloatField;
    Qr_SerP2SCHAVE: TFloatField;
    Qr_SerP2SCODPRO: TFloatField;
    Qr_SerP2SQTD: TFloatField;
    Qr_SerP2SPRECO: TFloatField;
    Qr_SerP2SSIT: TStringField;
    Qr_SerP2SBCISSQN: TFloatField;
    Qr_SerP2SVISSQN: TFloatField;
    Qr_SerP2SDESC1: TFloatField;
    Qr_SerP2SDESC2: TFloatField;
    Qr_SerP2STOTDES: TFloatField;
    Qr_SerP2SCFO: TFloatField;
    Qr_SerP2SALIQ: TFloatField;
    Qr_SerP2SISENTAS: TFloatField;
    Qr_SerPDNOME: TStringField;
    Qr_SerPDUND: TStringField;
    Qr_SerPDCODBAR: TFloatField;
    Qr_SerPDNOME2: TStringField;
    Qr_SerPDMARCA: TStringField;
    Qr_Sertotal: TFloatField;
    Qr_Serlista: TStringField;
    Qr_Cabp1dtv01: TDateField;
    Qr_Cabp1dtv02: TDateField;
    Qr_Cabp1dtv03: TDateField;
    Qr_Cabp1dtv04: TDateField;
    Qr_Cabp1dtv05: TDateField;
    Qr_Cabp1dtv06: TDateField;
    Qr_Cabp1dtv07: TDateField;
    Qr_Cabp1dtv08: TDateField;
    Qr_Cabp1dtv09: TDateField;
    Qr_Cabp1dtv10: TDateField;
    Qr_Cabp1vlr01: TFloatField;
    Qr_Cabp1vlr02: TFloatField;
    Qr_Cabp1vlr03: TFloatField;
    Qr_Cabp1vlr04: TFloatField;
    Qr_Cabp1vlr05: TFloatField;
    Qr_Cabp1vlr06: TFloatField;
    Qr_Cabp1vlr07: TFloatField;
    Qr_Cabp1vlr08: TFloatField;
    Qr_Cabp1vlr09: TFloatField;
    Qr_Cabp1vlr10: TFloatField;
    Qr_ArqCATAMANHO: TFloatField;
    Qr_CabP1CODEMP: TFloatField;
    Qr_CabP1ORDEM: TFloatField;
    Qr_CabP1FRETEPC: TFloatField;
    Qr_CabP1TIPO: TFloatField;
    Qr_CabP1QTDVOL: TFloatField;
    Qr_CabP1BANCO: TFloatField;
    Qr_CorP2ORDEM: TFloatField;
    Qr_CorP2LISTA: TFloatField;
    Qr_CorPDNIVEL: TFloatField;
    Qr_OpDarTOTDET: TFloatField;
    Qr_OpDarTOCODIGO: TFloatField;
    Qr_SerP2SORDEM: TFloatField;
    Qr_SerP2SLISTA: TFloatField;
    Qr_SerPDNIVEL: TFloatField;
    Qr_TDVCRCPTCODEMP: TFloatField;
    Qr_TDVCRCPTDOC: TStringField;
    Qr_TDVCRCPTNOME: TStringField;
    Qr_TDVCRCPTLOCAL: TFloatField;
    Qr_TDVCRCPTSEQ: TFloatField;
    Qr_TDVCRCPTLIN: TFloatField;
    Qr_TDVCRCPTCOL: TFloatField;
    Qr_TDVCRCPTFONTE: TFloatField;
    Qr_TDVCRCPTTIPO: TFloatField;
    Qr_TDVCRCPTCAMPO: TStringField;
    Qr_TDVCRCPTDCAMPO: TStringField;
    Qr_TDVCRCPTTIPOC: TStringField;
    Qr_TDVCRCPTALINHAR: TFloatField;
    Qr_TDVCRCPTTAM: TFloatField;
    Qr_TDVCRCPTFORMATO: TStringField;
    Qr_TDVCRCPTCONDT1: TStringField;
    Qr_TDVCRCPTCOND01: TStringField;
    Qr_TDVCRCPTCONDOP: TStringField;
    Qr_TDVCRCPTCONDT2: TStringField;
    Qr_TDVCRCPTCOND02: TStringField;
    Qr_TDVCRCPTZERVAR: TFloatField;
    Qr_TDVCRTCODEMP: TFloatField;
    Qr_TDVCRTDOC: TStringField;
    Qr_TDVCRTNOME: TStringField;
    Qr_TDVCRTLOCAL: TFloatField;
    Qr_TDVCRTSEQ: TFloatField;
    Qr_TDVCRTLIN: TFloatField;
    Qr_TDVCRTCOL: TFloatField;
    Qr_TDVCRTFONTE: TFloatField;
    Qr_TDVCRTTIPO: TFloatField;
    Qr_TDVCRTCAMPO: TStringField;
    Qr_TDVCRTDCAMPO: TStringField;
    Qr_TDVCRTTIPOC: TStringField;
    Qr_TDVCRTALINHAR: TFloatField;
    Qr_TDVCRTTAM: TFloatField;
    Qr_TDVCRTFORMATO: TStringField;
    Qr_TDVCRTCONDT1: TStringField;
    Qr_TDVCRTCOND01: TStringField;
    Qr_TDVCRTCONDOP: TStringField;
    Qr_TDVCRTCONDT2: TStringField;
    Qr_TDVCRTCOND02: TStringField;
    Qr_TDVCRTZERVAR: TFloatField;
    Qr_TSubdTLOCAL: TFloatField;
    Tb_EmpNUMERO: TFloatField;
    Tb_OPTOCODEMP: TFloatField;
    Tb_OPTODOC: TStringField;
    Tb_OPTOTDET: TFloatField;
    Tb_OPTOCODIGO: TFloatField;
    Tb_OPTOTOP0: TStringField;
    Tb_OPTOOP0: TStringField;
    Tb_OPTODESOP0: TStringField;
    Tb_OPTOPER0: TStringField;
    Tb_OPTOTOP1: TStringField;
    Tb_OPTOOP1: TStringField;
    Tb_OPTODESOP1: TStringField;
    Tb_OPTOPER1: TStringField;
    Tb_OPTOTOP2: TStringField;
    Tb_OPTOOP2: TStringField;
    Tb_OPTODESOP2: TStringField;
    Tb_OPTOPER2: TStringField;
    Tb_OPTOTOP3: TStringField;
    Tb_OPTOOP3: TStringField;
    Tb_OPTODESOP3: TStringField;
    Tb_OPTOCONDT1: TStringField;
    Tb_OPTOCOND01: TStringField;
    Tb_OPTODCOND01: TStringField;
    Tb_OPTOCONDOP: TStringField;
    Tb_OPTOCONDT2: TStringField;
    Tb_OPTOCOND02: TStringField;
    Tb_OPTODCOND02: TStringField;
    Qr_CorP2LOTE: TStringField;
    Qr_CorP2DTVCTO: TDateTimeField;
    Qr_CabRAZAO: TStringField;
    Qr_CabFANTASIA: TStringField;
    Qr_CabCIDADE: TStringField;
    Qr_CabUF: TStringField;
    Qr_CabCGC: TFloatField;
    Qr_CabINSCRICAO: TStringField;
    Qr_CabFONE: TStringField;
    Qr_CabFAX: TStringField;
    Qr_CabE_MAIL: TStringField;
    Qr_Pro: TQuery;
    Qr_ProPDCODEMP: TFloatField;
    Qr_ProPDCODPRO: TFloatField;
    Qr_ProPDCODBAR: TFloatField;
    Qr_ProPDNOME: TStringField;
    Qr_ProPDNOME2: TStringField;
    Qr_ProPDMARCA: TStringField;
    Qr_ProPDNIVEL: TFloatField;
    Qr_ProPDCODFOR: TFloatField;
    Qr_ProPDPRECO1: TFloatField;
    Qr_ProPDPRECO2: TFloatField;
    Qr_ProPDPRECO3: TFloatField;
    Qr_ProPDPRECOA1: TFloatField;
    Qr_ProPDPRECOA2: TFloatField;
    Qr_ProPDPRECOA3: TFloatField;
    Qr_ProPDSIT: TStringField;
    Qr_ProPDDTUATP1: TDateTimeField;
    Qr_ProPDUSRALT1: TFloatField;
    Qr_ProPDDTUATP2: TDateTimeField;
    Qr_ProPDUSRALT2: TFloatField;
    Qr_ProPDDTUATP3: TDateTimeField;
    Qr_ProPDUSRALT3: TFloatField;
    Qr_ProPDDATAUA: TDateTimeField;
    Qr_ProPDUND: TStringField;
    Qr_ProPDCODGRU: TFloatField;
    Qr_ProPDCODCON: TFloatField;
    Qr_ProPDCODRAM: TFloatField;
    Qr_ProPDCODTIP: TFloatField;
    Qr_ProPDESTMAX: TFloatField;
    Qr_ProPDESTMIN: TFloatField;
    Qr_ProPDFRACAO: TFloatField;
    Qr_ProPDLISTA: TFloatField;
    Qr_ProPDPRECOC: TFloatField;
    Qr_ProPDPCOMC: TFloatField;
    Qr_ProPDPCOFAB: TFloatField;
    Qr_ProPDSTATUS: TFloatField;
    Qr_ProPDTABICM: TStringField;
    Qr_ProPDIPI: TFloatField;
    Qr_ProPDREGMS: TStringField;
    Qr_ProPDCLAS: TStringField;
    Qr_ProPDSECAO: TStringField;
    Qr_ProPDEMBPAD: TFloatField;
    Qr_ProPDEMBMUL: TFloatField;
    Src_Pro: TDataSource;
    Qr_Cabnomven: TStringField;
    Tb_EmpDATACAD: TDateTimeField;
    Tb_EmpDATAALT: TDateTimeField;
    Tb_EmpPA001: TStringField;
    Tb_EmpPA002: TStringField;
    Tb_EmpPA003: TStringField;
    Qr_CabP1REPAS: TFloatField;
    Qr_CabP1PREVENT: TDateTimeField;
    Qr_CabP1HPREVENT: TStringField;
    Qr_TDVCA_S: TQuery;
    Qr_TDV_S: TQuery;
    Qr_Op_S: TQuery;
    Qr_TDVCA_STCCODEMP: TFloatField;
    Qr_TDVCA_STCDOC: TStringField;
    Qr_TDVCA_STCNOME: TStringField;
    Qr_TDVCA_STCQTDLIN: TFloatField;
    Qr_TDVCA_STCQTDCOL: TFloatField;
    Qr_TDVCA_STCFPADRAO: TFloatField;
    Qr_TDVCA_STCQTDITEM: TFloatField;
    Qr_TDVCA_STCQTDLPP: TFloatField;
    Qr_TDVCA_STCNUMCOL: TFloatField;
    Qr_TDVCA_STCINTCOL: TFloatField;
    Qr_TDVCA_STCTPCOL: TFloatField;
    Qr_TDVCA_STCORDEM: TFloatField;
    Qr_TDVCA_STCMPAGGR: TFloatField;
    Qr_TDVCA_STCOBS: TStringField;
    Qr_TDVCA_STCTPESQ: TFloatField;
    Qr_TDVCA_STCTPREL: TFloatField;
    Qr_TDVCA_STCIMPG: TFloatField;
    Qr_TDVCA_STCIMPSG: TFloatField;
    Qr_TDVCA_STCAVPTPI: TFloatField;
    Qr_TDVCA_STCAVPIPF: TFloatField;
    Qr_TDVCA_STCSTATUS: TFloatField;
    Qr_TDVCA_STCVIS: TFloatField;
    Qr_TDVCA_STCQTDSER: TFloatField;
    Qr_TDVCA_STCIMPDA: TFloatField;
    Qr_TDVCA_STCTAB01: TStringField;
    Qr_TDVCA_STCTAB02: TStringField;
    Qr_TDVCA_STCTAB02N: TFloatField;
    Qr_TDVCA_STCTAB03: TStringField;
    Qr_TDVCA_STCTAB03N: TFloatField;
    Qr_TDVCA_STCTAB04: TStringField;
    Qr_TDVCA_STCTAB04N: TFloatField;
    Qr_TDVCA_STCTAB05: TStringField;
    Qr_TDVCA_STCTAB05N: TFloatField;
    Qr_TDVCA_STCORDEM2: TStringField;
    Qr_TDVCA_STCFILTRO: TStringField;
    Qr_TDVCA_STCCONT_M: TStringField;
    Qr_TDVCA_STCCONT_R: TStringField;
    Qr_TDVCA_STCCONT_AP: TFloatField;
    Qr_TDVCA_STCBLOQ: TFloatField;
    Qr_TDVCA_STCAGRUPAR: TFloatField;
    Qr_TDV_STCODEMP: TFloatField;
    Qr_TDV_STDOC: TStringField;
    Qr_TDV_STNOME: TStringField;
    Qr_TDV_STLOCAL: TFloatField;
    Qr_TDV_STSEQ: TFloatField;
    Qr_TDV_STLIN: TFloatField;
    Qr_TDV_STCOL: TFloatField;
    Qr_TDV_STFONTE: TFloatField;
    Qr_TDV_STTIPO: TFloatField;
    Qr_TDV_STCAMPO: TStringField;
    Qr_TDV_STDCAMPO: TStringField;
    Qr_TDV_STTIPOC: TStringField;
    Qr_TDV_STALINHAR: TFloatField;
    Qr_TDV_STTAM: TFloatField;
    Qr_TDV_STFORMATO: TStringField;
    Qr_TDV_STCONDT1: TStringField;
    Qr_TDV_STCOND01: TStringField;
    Qr_TDV_STCONDOP: TStringField;
    Qr_TDV_STCONDT2: TStringField;
    Qr_TDV_STCOND02: TStringField;
    Qr_TDV_STZERVAR: TFloatField;
    Qr_TDV_STCTPSEL: TFloatField;
    Qr_TDV_STCAMPO_TAB: TStringField;
    Qr_TDV_STCOND01_TAB: TStringField;
    Qr_TDV_STCOND02_TAB: TStringField;
    Qr_Op_STOCODEMP: TFloatField;
    Qr_Op_STODOC: TStringField;
    Qr_Op_STONOME: TStringField;
    Qr_Op_STOTDET: TFloatField;
    Qr_Op_STOCODIGO: TFloatField;
    Qr_Op_STOTOP0: TStringField;
    Qr_Op_STOOP0: TStringField;
    Qr_Op_STODESOP0: TStringField;
    Qr_Op_STOPER0: TStringField;
    Qr_Op_STOTOP1: TStringField;
    Qr_Op_STOOP1: TStringField;
    Qr_Op_STODESOP1: TStringField;
    Qr_Op_STOPER1: TStringField;
    Qr_Op_STOTOP2: TStringField;
    Qr_Op_STOOP2: TStringField;
    Qr_Op_STODESOP2: TStringField;
    Qr_Op_STOPER2: TStringField;
    Qr_Op_STOTOP3: TStringField;
    Qr_Op_STOOP3: TStringField;
    Qr_Op_STODESOP3: TStringField;
    Qr_Op_STOCONDT1: TStringField;
    Qr_Op_STOCOND01: TStringField;
    Qr_Op_STODCOND01: TStringField;
    Qr_Op_STOCONDOP: TStringField;
    Qr_Op_STOCONDT2: TStringField;
    Qr_Op_STOCOND02: TStringField;
    Qr_Op_STODCOND02: TStringField;
    Qr_ImpRel: TQuery;
    Qr_TDVCA_STCMASC: TStringField;
    Qr_TDVCA_STCPERIODO: TStringField;
    Qr_TDVCA_STCDIMGRU: TFloatField;
    Qr_TDVCA_STCDIMSG: TFloatField;
    Qr_TDVCA_STCTPFORM: TFloatField;
    Qr_TDV_STCBARRAS: TFloatField;
    Qr_TDV_STCEXTENSO: TFloatField;
    Qr_TDV_STCEXT_QTDL: TFloatField;
    Qr_TDV_STCEXT_1LP: TFloatField;
    Qr_TDV_STCEXT_1LT: TFloatField;
    Qr_TDV_STCEXT_2LP: TFloatField;
    Qr_TDV_STCEXT_2LT: TFloatField;
    Qr_TDV_STCEXT_3LP: TFloatField;
    Qr_TDV_STCEXT_3LT: TFloatField;
    Qr_TDV_STCEXT_1IC: TFloatField;
    Qr_TDV_STCEXT_3IC: TFloatField;
    Qr_TDV_STCEXT_2IC: TFloatField;
    Qr_TDVCA_STCQTDDIV: TFloatField;
    Tb_ArqCANOMARQ: TStringField;
    Tb_ArqCANOMCAM: TStringField;
    Tb_ArqCANOMREG: TStringField;
    Tb_ArqCATIPO: TStringField;
    Tb_ArqCATITULO: TStringField;
    Tb_ArqCATAMANHO: TFloatField;
    Tb_ArqCADECIMAL: TFloatField;
    Qr_TDV_STCTPVAR: TFloatField;
    Qr_TDVCA_STCTAB06: TStringField;
    Qr_TDVCA_STCTAB06N: TFloatField;
    Qr_TDVCA_STCTAB07: TStringField;
    Qr_TDVCA_STCTAB07N: TFloatField;
    Qr_TDVCA_STCTAB08: TStringField;
    Qr_TDVCA_STCTAB08N: TFloatField;
    Qr_TDVCA_STCTAB09: TStringField;
    Qr_TDVCA_STCTAB09N: TFloatField;
    Qr_CorPDCLAS: TStringField;
    Tb_OPTONOME: TStringField;
    Qr_RMen: TQuery;
    Qr_RMenPDCODEMP: TFloatField;
    Qr_RMenPDCODPRO: TFloatField;
    Qr_RMenPDNOME: TStringField;
    Qr_RMenestini: TFloatField;
    Qr_RMencompras: TFloatField;
    Qr_RMenvendas: TFloatField;
    Qr_RMendev_cli: TFloatField;
    Qr_RMendev_for: TFloatField;
    Qr_RMentransf_sai: TFloatField;
    Qr_RMenest_atu: TFloatField;
    Qr_RMenajuste_ent: TFloatField;
    Qr_RMenajuste_sai: TFloatField;
    Qr_RMenoutras_sai: TFloatField;
    Qr_RMenoutras_ent: TFloatField;
    Qr_RMenDATAI: TStringField;
    Qr_RMenDATAF: TStringField;
    Qr_ProPDCOMIS: TFloatField;
    Qr_ProPDSEMCOM: TFloatField;
    Qr_ProPDPRZVAL: TFloatField;
    Qr_ProPDUCPR: TFloatField;
    Qr_ProPDCODUSR: TFloatField;
    Qr_ProPDDTALT: TDateTimeField;
    Qr_ProPDHRALT: TStringField;
    Qr_ProPDSALDO: TFloatField;
    Qr_ProPDCURVA: TStringField;
    Qr_ProPDDESC1: TFloatField;
    Qr_ProPDDESC1A: TFloatField;
    Qr_ProPDDESC2: TFloatField;
    Qr_ProPDDESC3: TFloatField;
    Qr_ProPDQTDP: TFloatField;
    Qr_ProPDPRAZO: TFloatField;
    Qr_ProPDDESFIN: TFloatField;
    Tb_PPR: TQuery;
    Src_PPR: TDataSource;
    Tb_PPRPPCODEMP: TFloatField;
    Tb_PPRPPPROMOCAO: TStringField;
    Tb_PPRPPPVTIP: TStringField;
    Tb_PPRPPPVTAB: TStringField;
    Tb_PPRPPCODRED: TFloatField;
    Tb_PPRPPFLAG: TStringField;
    Tb_PPRPPCODPRO: TFloatField;
    Tb_PPRPPDATINI: TDateTimeField;
    Tb_PPRPPDATFIN: TDateTimeField;
    Tb_PPRPPCODGRU: TFloatField;
    Tb_PPRPPPCOVDA: TFloatField;
    Tb_PPRPPDESC_1: TFloatField;
    Tb_PPRPPDESC_2: TFloatField;
    Tb_PPRPPDESC_3: TFloatField;
    Tb_PPRPPCONFVDA: TStringField;
    Tb_PPRPPCOMIS: TFloatField;
    Tb_PPRPPQTDMIN: TFloatField;
    Tb_PPRPPVALMIN: TFloatField;
    Tb_PPRPPOBS: TStringField;
    Tb_PPRPPKIT: TStringField;
    Tb_PPRnompro: TStringField;
    Tb_CFR: TQuery;
    Src_CFR: TDataSource;
    Tb_CCob: TQuery;
    Tb_CCobrazao: TStringField;
    Tb_CCobendc: TStringField;
    Tb_CCobbairro: TStringField;
    Tb_CCobcidade: TStringField;
    Tb_CCobcepc: TStringField;
    Tb_CCobnumero: TStringField;
    Tb_CCobatraso: TFloatField;
    Tb_CCobtotdeb: TFloatField;
    Tb_CFRRCODEMP: TFloatField;
    Tb_CFRRTABELA: TStringField;
    Tb_CFRRMODELO: TStringField;
    Tb_CFRRORDEM: TFloatField;
    Tb_CFRRSTATUS: TFloatField;
    Tb_CFRRMEMO: TMemoField;
    Tb_CFRRHORA: TStringField;
    Tb_CFRRQTDCOL: TFloatField;
    Tb_CFRRINC2: TFloatField;
    Tb_CFRRINC3: TFloatField;
    Tb_CFRRFIRMA: TStringField;
    Tb_CFRRSEPARA: TStringField;
    Tb_CFRRSALTAR: TStringField;
    Tb_CFRRDATA: TStringField;
    Tb_CFRRPAG: TStringField;
    Tb_CFRRQTDLIN: TFloatField;
    Tb_CFRRTPCOL: TFloatField;
    Tb_CFRRLINIC: TFloatField;
    QR_TDVCP: TQuery;
    QR_TDVCPTCODEMP: TFloatField;
    QR_TDVCPTDOC: TStringField;
    QR_TDVCPTNOME: TStringField;
    QR_TDVCPTLOCAL: TFloatField;
    QR_TDVCPTSEQ: TFloatField;
    QR_TDVCPTLIN: TFloatField;
    QR_TDVCPTCOL: TFloatField;
    QR_TDVCPTFONTE: TFloatField;
    QR_TDVCPTTIPO: TFloatField;
    QR_TDVCPTCAMPO: TStringField;
    QR_TDVCPTDCAMPO: TStringField;
    QR_TDVCPTTIPOC: TStringField;
    QR_TDVCPTALINHAR: TFloatField;
    QR_TDVCPTTAM: TFloatField;
    QR_TDVCPTFORMATO: TStringField;
    QR_TDVCPTCONDT1: TStringField;
    QR_TDVCPTCOND01: TStringField;
    QR_TDVCPTCONDOP: TStringField;
    QR_TDVCPTCONDT2: TStringField;
    QR_TDVCPTCOND02: TStringField;
    QR_TDVCPTZERVAR: TFloatField;
    QR_TDVCPTCAMPO_TAB: TStringField;
    QR_TDVCPTCOND01_TAB: TStringField;
    QR_TDVCPTCOND02_TAB: TStringField;
    QR_TDVCPTCTPSEL: TFloatField;
    QR_TDVCPTCBARRAS: TFloatField;
    QR_TDVCPTCEXTENSO: TFloatField;
    QR_TDVCPTCEXT_QTDL: TFloatField;
    QR_TDVCPTCEXT_1LP: TFloatField;
    QR_TDVCPTCEXT_1LT: TFloatField;
    QR_TDVCPTCEXT_1IC: TFloatField;
    QR_TDVCPTCEXT_2LP: TFloatField;
    QR_TDVCPTCEXT_2LT: TFloatField;
    QR_TDVCPTCEXT_2IC: TFloatField;
    QR_TDVCPTCEXT_3LP: TFloatField;
    QR_TDVCPTCEXT_3LT: TFloatField;
    QR_TDVCPTCEXT_3IC: TFloatField;
    QR_TDVCPTCTPVAR: TFloatField;
    Src_CCob: TDataSource;
    Tb_Dep_Folha: TQuery;
    Tb_Dep_FolhaDPCODEMP: TFloatField;
    Tb_Dep_FolhaDPNOME: TStringField;
    Tb_Dep_FolhaDPCODDEP: TFloatField;
    Src_Dep_Folha: TDataSource;
    Tb_Eve: TQuery;
    Tb_EveCECODEMP: TFloatField;
    Tb_EveCECODEVE: TFloatField;
    Tb_EveCENOMEVE: TStringField;
    Tb_EveCENAT: TFloatField;
    Tb_EveCETIPO: TFloatField;
    Tb_EveCEVALOR: TFloatField;
    Tb_EveCEINCINSS: TFloatField;
    Tb_EveCEINCFGTS: TFloatField;
    Tb_EveCEINCIR: TFloatField;
    Src_Eve: TDataSource;
    Tb_ParFPag: TQuery;
    Src_ParFPag: TDataSource;
    Tb_ParFPagPFCODEMP: TFloatField;
    Tb_ParFPagPFCODPAR: TFloatField;
    Tb_ParFPagPFCODSFAM: TFloatField;
    Tb_ParFPagPFCODINSS: TFloatField;
    Tb_ParFPagPFFINSS01A: TFloatField;
    Tb_ParFPagPFFINSS01B: TFloatField;
    Tb_ParFPagPFFINSS01: TFloatField;
    Tb_ParFPagPFFINSS02A: TFloatField;
    Tb_ParFPagPFFINSS02B: TFloatField;
    Tb_ParFPagPFFINSS02: TFloatField;
    Tb_ParFPagPFFINSS03A: TFloatField;
    Tb_ParFPagPFFINSS03B: TFloatField;
    Tb_ParFPagPFFINSS03: TFloatField;
    Tb_ParFPagPFFINSS04A: TFloatField;
    Tb_ParFPagPFFINSS04B: TFloatField;
    Tb_ParFPagPFFINSS04: TFloatField;
    Tb_ParFPagPFFINSS05A: TFloatField;
    Tb_ParFPagPFFINSS05B: TFloatField;
    Tb_ParFPagPFFINSS05: TFloatField;
    Tb_ParFPagPFCODFGTS: TFloatField;
    Tb_ParFPagPFFFGTS01A: TFloatField;
    Tb_ParFPagPFFFGTS01B: TFloatField;
    Tb_ParFPagPFFFGTS01: TFloatField;
    Tb_ParFPagPFFFGTS02A: TFloatField;
    Tb_ParFPagPFFFGTS02B: TFloatField;
    Tb_ParFPagPFFFGTS02: TFloatField;
    Tb_ParFPagPFFFGTS03A: TFloatField;
    Tb_ParFPagPFFFGTS03B: TFloatField;
    Tb_ParFPagPFFFGTS03: TFloatField;
    Tb_ParFPagPFFFGTS04A: TFloatField;
    Tb_ParFPagPFFFGTS04B: TFloatField;
    Tb_ParFPagPFFFGTS04: TFloatField;
    Tb_ParFPagPFFFGTS05A: TFloatField;
    Tb_ParFPagPFFFGTS05B: TFloatField;
    Tb_ParFPagPFFFGTS05: TFloatField;
    Tb_ParFPagPFCODIR: TFloatField;
    Tb_ParFPagPFFIR01A: TFloatField;
    Tb_ParFPagPFFIR01B: TFloatField;
    Tb_ParFPagPFFIR01: TFloatField;
    Tb_ParFPagPFFIR02A: TFloatField;
    Tb_ParFPagPFFIR02B: TFloatField;
    Tb_ParFPagPFFIR02: TFloatField;
    Tb_ParFPagPFFIR03A: TFloatField;
    Tb_ParFPagPFFIR03B: TFloatField;
    Tb_ParFPagPFFIR03: TFloatField;
    Tb_ParFPagPFFIR04A: TFloatField;
    Tb_ParFPagPFFIR04B: TFloatField;
    Tb_ParFPagPFFIR04: TFloatField;
    Tb_ParFPagPFFIR05A: TFloatField;
    Tb_ParFPagPFFIR05B: TFloatField;
    Tb_ParFPagPFFIR05: TFloatField;
    Tb_Fun: TQuery;
    Src_Fun: TDataSource;
    Qr_ProPDPMC: TFloatField;
    Tb_ParFPagPFCODSAL: TFloatField;
    Tb_ParFPagPFCODGRA: TFloatField;
    Tb_EveCEINCVT: TFloatField;
    Tb_EvePref: TQuery;
    Tb_EvePrefEPCODEMP: TFloatField;
    Tb_EvePrefEPLOCAL: TFloatField;
    Tb_EvePrefEPCODCLI: TFloatField;
    Tb_EvePrefEPCODEVE: TFloatField;
    Tb_EvePrefnomeve: TStringField;
    Src_EvePref: TDataSource;
    Tb_LFol: TQuery;
    Tb_LFolLCCODEMP: TFloatField;
    Tb_LFolLCLOCAL: TFloatField;
    Tb_LFolLCMES: TFloatField;
    Tb_LFolLCANO: TFloatField;
    Tb_LFolLCCODFUN: TFloatField;
    Tb_LFolLCCODEVE: TFloatField;
    Tb_LFolLCQTD: TFloatField;
    Tb_LFolLCNAT: TFloatField;
    Tb_LFolLCTIPO: TFloatField;
    Tb_LFolLCVALOR: TFloatField;
    Tb_LFolLCINCINSS: TFloatField;
    Tb_LFolLCINCFGTS: TFloatField;
    Tb_LFolLCINCIR: TFloatField;
    Src_LFol: TDataSource;
    Src_RFol: TDataSource;
    Tb_RFol: TQuery;
    Tb_RFolRFCODEMP: TFloatField;
    Tb_RFolRFLOCAL: TFloatField;
    Tb_RFolRFMES: TFloatField;
    Tb_RFolRFANO: TFloatField;
    Tb_RFolRFCODFUN: TFloatField;
    Tb_RFolRFBASEFGTS: TFloatField;
    Tb_RFolRFVLRFGTS: TFloatField;
    Tb_RFolRFBASEINSS: TFloatField;
    Tb_RFolRFVLRINSS: TFloatField;
    Tb_RFolRFBASEVT: TFloatField;
    Tb_EveCETP_EVENTO: TFloatField;
    Tb_EveCECODEDSR: TFloatField;
    Tb_Evenomevedsr: TStringField;
    Tb_ParFPagPFQTDHM: TFloatField;
    Tb_ParFPagPFCODVT: TFloatField;
    Tb_EvePrefEPQUANT: TFloatField;
    Tb_LFolLCQTDPAD: TFloatField;
    Tb_LFolLCSOMA: TFloatField;
    Tb_RFolRFALFGTS: TFloatField;
    Tb_RFolRFALINSS: TFloatField;
    Tb_RFolRFALVT: TFloatField;
    Tb_RFolRFBASEIR: TFloatField;
    Tb_RFolRFALIR: TFloatField;
    Tb_RFolRFVLRIR: TFloatField;
    Tb_RFolRFTOTVEN: TFloatField;
    Tb_RFolRFTOTDES: TFloatField;
    Tb_LFolLCINCVT: TFloatField;
    Tb_LFolLCTOTAL: TFloatField;
    Tb_RFolRFSALBASE: TFloatField;
    Tb_EmpFONERES: TStringField;
    Tb_EmpFUNCAORES: TStringField;
    Qr_CabBAIRRO: TStringField;
    Qr_CabCLOG: TStringField;
    Qr_CabENDERECO: TStringField;
    Qr_CabCOBS01: TStringField;
    Qr_CabCOBS02: TStringField;
    Qr_CabCOBS03: TStringField;
    Qr_CabCOBS04: TStringField;
    U_CCob: TUpdateSQL;
    U_PPR: TUpdateSQL;
    U_Arq: TUpdateSQL;
    U_CFR: TUpdateSQL;
    U_Dep_Folha: TUpdateSQL;
    U_Emp: TUpdateSQL;
    U_Eve: TUpdateSQL;
    U_EvePref: TUpdateSQL;
    U_Fun: TUpdateSQL;
    U_LFol: TUpdateSQL;
    U_ParFPag: TUpdateSQL;
    U_OP: TUpdateSQL;
    U_RFol: TUpdateSQL;
    Tb_EmpINSCMUNIC: TStringField;
    Tb_EmpCERTREG: TStringField;
    Tb_EmpAUTFUNC: TStringField;
    Tb_EmpAUTESP: TStringField;
    Tb_EmpALVFUNC: TStringField;
    Qr_RMenPDPRECO1: TFloatField;
    Qr_RMenPDPRECO2: TFloatField;
    Qr_RMenPDPRECO3: TFloatField;
    Qr_RMenPDPRECOC: TFloatField;
    Qr_RMenPDPCOMC: TFloatField;
    Tb_Fec: TQuery;
    Tb_FecFM_ANO: TFloatField;
    Tb_FecFM_MES: TFloatField;
    Tb_FecFM_DATAFEC: TDateTimeField;
    Tb_FecFM_HORAFEC: TStringField;
    Tb_FecFM_CODUSR: TFloatField;
    U_Fec: TUpdateSQL;
    Src_Fec: TDataSource;
    Qr_RMenPDSIT: TStringField;
    Qr_RMenPDCODTIP: TFloatField;
    Tb_EstMes: TQuery;
    Tb_VenMes: TQuery;
    Tb_VenMesP2CODPRO: TFloatField;
    Tb_VenMesP1TIPO: TFloatField;
    Tb_VenMesQTD: TFloatField;
    Tb_EntMes: TQuery;
    Tb_EntMesPF2CODPRO: TFloatField;
    Tb_EntMesQTD: TFloatField;
    Tb_AjMes: TQuery;
    Tb_AjMesAJCODPRO: TFloatField;
    Tb_AjMesAJTIPOM: TFloatField;
    Tb_AjMesQTD: TFloatField;
    Tb_EstMesCECODPRO: TFloatField;
    Tb_EstMesESTOQUE: TFloatField;
    Qr_ProPDEMBPAD2: TStringField;
    Qr_ProPDCODPROC: TFloatField;
    Tb_EmpJUCEG: TStringField;
    Qr_RMenPDUCPR: TFloatField;
    Qr_CorP2VALDES: TFloatField;
    Qr_CorP2TOTDES: TFloatField;
    Qr_CabP1TOTDI01: TFloatField;
    Qr_CabP1TOTDI02: TFloatField;
    Qr_CabP1TOTDIVL: TFloatField;
    Tb_OPTOLOCAL: TFloatField;
    Tb_TDVCabDoc: TQuery;
    Tb_TDVCabDocTCODEMP: TFloatField;
    Tb_TDVCabDocTDOC: TStringField;
    Tb_TDVCabDocTNOME: TStringField;
    Tb_TDVCabDocTLOCAL: TFloatField;
    Tb_TDVCabDocTSEQ: TFloatField;
    Tb_TDVCabDocTLIN: TFloatField;
    Tb_TDVCabDocTCOL: TFloatField;
    Tb_TDVCabDocTFONTE: TFloatField;
    Tb_TDVCabDocTTIPO: TFloatField;
    Tb_TDVCabDocTCAMPO: TStringField;
    Tb_TDVCabDocTCAMPO_TAB: TStringField;
    Tb_TDVCabDocTDCAMPO: TStringField;
    Tb_TDVCabDocTTIPOC: TStringField;
    Tb_TDVCabDocTALINHAR: TFloatField;
    Tb_TDVCabDocTTAM: TFloatField;
    Tb_TDVCabDocTFORMATO: TStringField;
    Tb_TDVCabDocTCONDT1: TStringField;
    Tb_TDVCabDocTCOND01: TStringField;
    Tb_TDVCabDocTCOND01_TAB: TStringField;
    Tb_TDVCabDocTCONDOP: TStringField;
    Tb_TDVCabDocTCONDT2: TStringField;
    Tb_TDVCabDocTCOND02: TStringField;
    Tb_TDVCabDocTCOND02_TAB: TStringField;
    Tb_TDVCabDocTZERVAR: TFloatField;
    Tb_TDVCabDocTCTPSEL: TFloatField;
    Tb_TDVCabDocTCBARRAS: TFloatField;
    Tb_TDVCabDocTCEXTENSO: TFloatField;
    Tb_TDVCabDocTCEXT_QTDL: TFloatField;
    Tb_TDVCabDocTCEXT_1LP: TFloatField;
    Tb_TDVCabDocTCEXT_1LT: TFloatField;
    Tb_TDVCabDocTCEXT_1IC: TFloatField;
    Tb_TDVCabDocTCEXT_2LP: TFloatField;
    Tb_TDVCabDocTCEXT_2LT: TFloatField;
    Tb_TDVCabDocTCEXT_2IC: TFloatField;
    Tb_TDVCabDocTCEXT_3LP: TFloatField;
    Tb_TDVCabDocTCEXT_3LT: TFloatField;
    Tb_TDVCabDocTCEXT_3IC: TFloatField;
    Tb_TDVCabDocTCTPVAR: TFloatField;
    Qr_CabCCODRED: TFloatField;
    Qr_Cabnomred: TStringField;
    Tb_EmpCONTADOR: TStringField;
    Tb_EmpCRC_CONTADOR: TStringField;
    Tb_EmpRAZAO_CAB: TStringField;
    Tb_EmpFANTASIA_CAB: TStringField;
    Qr_CabP1BASENRI: TFloatField;
    Qr_CabP1BASENRP: TFloatField;
    Qr_CabP1BASENRN: TFloatField;
    Qr_CabP1ICMSNRI: TFloatField;
    Qr_CabP1ICMSNRP: TFloatField;
    Qr_CabP1ICMSNRN: TFloatField;
    Qr_Cabcfops: TStringField;
    Qr_CabP1CODCV: TFloatField;
    Qr_CabP1ACRECONV: TFloatField;
    Qr_CabP1ACREGER: TFloatField;
    Qr_Cabnomcon: TStringField;
    Qr_Cabnomusr: TStringField;
    Qr_Cabpobsnf01: TStringField;
    Qr_Cabpobsnf02: TStringField;
    Qr_Cabpobsnf03: TStringField;
    Qr_Cabpmaxrec: TStringField;
    Tb_JC: TQuery;
    U_JC: TUpdateSQL;
    Src_JC: TDataSource;
    Tb_JCJCCODEMP: TFloatField;
    Tb_JCJCDOC: TStringField;
    Tb_JCJCNOME: TStringField;
    Tb_JCJCCODIGO: TFloatField;
    Tb_JCJCTCAMPO1: TFloatField;
    Tb_JCJCFORMA01: TStringField;
    Tb_JCJCCAMPO01: TStringField;
    Tb_JCJCFORMATO01: TStringField;
    Tb_JCJCESPACO01: TFloatField;
    Tb_JCJCTAMMAX01: TFloatField;
    Tb_JCJCTCAMPO2: TFloatField;
    Tb_JCJCFORMA02: TStringField;
    Tb_JCJCCAMPO02: TStringField;
    Tb_JCJCFORMATO02: TStringField;
    Tb_JCJCESPACO02: TFloatField;
    Tb_JCJCTAMMAX02: TFloatField;
    Tb_JCJCTCAMPO3: TFloatField;
    Tb_JCJCFORMA03: TStringField;
    Tb_JCJCCAMPO03: TStringField;
    Tb_JCJCFORMATO03: TStringField;
    Tb_JCJCESPACO03: TFloatField;
    Tb_JCJCTAMMAX03: TFloatField;
    Tb_JCJCTCAMPO4: TFloatField;
    Tb_JCJCFORMA04: TStringField;
    Tb_JCJCCAMPO04: TStringField;
    Tb_JCJCFORMATO04: TStringField;
    Tb_JCJCESPACO04: TFloatField;
    Tb_JCJCTAMMAX04: TFloatField;
    Tb_JCJCNOMCAM: TStringField;
    Tb_JCJCTDET: TFloatField;
    Tb_JCJCBRANCOS01: TFloatField;
    Tb_JCJCBRANCOS02: TFloatField;
    Tb_JCJCBRANCOS03: TFloatField;
    Tb_JCJCBRANCOS04: TFloatField;
    Qr_Obs: TQuery;
    Qr_ObsPNCODEMP: TFloatField;
    Qr_ObsPNCHAVE: TFloatField;
    Qr_ObsPNORDEM: TFloatField;
    Qr_ObsPNLINHA: TFloatField;
    Qr_ObsPNOBS: TStringField;
    Qr_CabCCODBAIC: TFloatField;
    Qr_CabCCODLOCC: TFloatField;
    Qr_CabCCEPC: TStringField;
    Qr_CabCCIDADEC: TStringField;
    Qr_CabCUFC: TStringField;
    Qr_CabCBAIRROC: TStringField;
    Qr_CabCENDERC: TStringField;
    Tb_EmpFECMEN: TFloatField;
    Qr_CabP1NUMCF: TFloatField;
    Qr_CorP2ITEM: TFloatField;
    Qr_CabP1TIPENT: TFloatField;
    Qr_CorPDPMC: TFloatField;
    Qr_SerPDPMC: TFloatField;
    Qr_CorP2PCOMAX: TFloatField;
    Qr_CabP1CFO1: TStringField;
    Qr_CabP1CFO2: TStringField;
    Tb_FDia: TQuery;
    U_FDia: TUpdateSQL;
    Tb_FDiaFD_DATA: TDateTimeField;
    Tb_FDiaFD_ENCMES: TFloatField;
    Tb_FDiaFD_CODUSR: TFloatField;
    Tb_FDiaFD_DATAFEC: TDateTimeField;
    Tb_FDiaFD_HORASFEC: TStringField;
    Qr_CabP1LOTSEQ: TFloatField;
    Qr_CorP2LOTSEQ: TFloatField;
    Qr_SerP2SLOTSEQ: TFloatField;
    Qr_CorPDSECAO: TStringField;
    Qr_CabP1IPIPOS: TFloatField;
    Qr_CabP1IPINEG: TFloatField;
    Qr_CabP1IPIINA: TFloatField;
    Qr_CabP1TOTOUT: TFloatField;
    Qr_CabP1TABPV: TStringField;
    Tb_PPRPPDESC_F: TFloatField;
    Qr_Cabdtvcto01: TStringField;
    Qr_Cabdtvcto02: TStringField;
    Qr_Cabdtvcto03: TStringField;
    Qr_Cabdtvcto04: TStringField;
    Qr_Cabdtvcto05: TStringField;
    Qr_Cabdtvcto06: TStringField;
    Qr_Cabvlrdup01: TStringField;
    Qr_Cabvlrdup02: TStringField;
    Qr_Cabvlrdup03: TStringField;
    Qr_Cabvlrdup04: TStringField;
    Qr_Cabvlrdup05: TStringField;
    Qr_Cabvlrdup06: TStringField;
    Qr_Cabdesd01: TStringField;
    Qr_Cabdesd02: TStringField;
    Qr_Cabdesd03: TStringField;
    Qr_Cabdesd04: TStringField;
    Qr_Cabdesd05: TStringField;
    Qr_Cabdesd06: TStringField;
    Tb_ParFPagPFCODFER: TFloatField;
    Tb_ParFPagPFCODRES: TFloatField;
    Tb_ParFPagPFCODDTERUN: TFloatField;
    Tb_ParFPagPFCODDTER01: TFloatField;
    Tb_ParFPagPFCODDTER02: TFloatField;
    Tb_PPRPDNOME: TStringField;
    Qr_CorP2ALIPI: TFloatField;
    Qr_CorP2VALIPI: TFloatField;
    Tb_CCobCCCODEMP: TFloatField;
    Tb_CCobCCCHAVE: TFloatField;
    Tb_CCobCCNUMERO: TFloatField;
    Tb_CCobCCDESD: TStringField;
    Tb_CCobCCDUP: TFloatField;
    Tb_CCobCCVALOR: TFloatField;
    Tb_CCobCCDTVCTO: TDateTimeField;
    Tb_CCobCCDTPAG: TDateTimeField;
    Tb_CCobCCJURDIA: TFloatField;
    Tb_CCobCCCODCLI: TFloatField;
    Tb_CCobCCVLRENCAR: TFloatField;
    Tb_CCobCCDTEMIS: TDateTimeField;
    Tb_CCobCCLOTSEQ: TFloatField;
    Qr_CabP1TARBAN: TFloatField;
    Qr_CabP1VALSEG: TFloatField;
    Qr_TDVCA_STCFILVEN: TFloatField;
    Qr_TDVCA_STCFVCAMPO: TStringField;
    Qr_TDVCA_STCFILCLI: TFloatField;
    Qr_TDVCA_STCFCCAMPO: TStringField;
    Qr_TDVCA_STCFILPRO: TFloatField;
    Qr_TDVCA_STCFPCAMPO: TStringField;
    Qr_TDVCA_STCFILFOR: TFloatField;
    Qr_TDVCA_STCFFCAMPO: TStringField;
    Qr_TDVCA_STCFILRED: TFloatField;
    Qr_TDVCA_STCFRCAMPO: TStringField;
    Qr_TDVCA_STCDETNCOL: TFloatField;
    Qr_TDVCA_STCDETICOL: TFloatField;
    Qr_TDVCA_STCDETTPCOL: TFloatField;
    Qr_TDVCRTCAMPO_TAB: TStringField;
    Qr_TDVCRTCOND01_TAB: TStringField;
    Qr_TDVCRTCOND02_TAB: TStringField;
    Qr_TDVCRTCTPSEL: TFloatField;
    Qr_TDVCRTCBARRAS: TFloatField;
    Qr_TDVCRTCEXTENSO: TFloatField;
    Qr_TDVCRTCEXT_QTDL: TFloatField;
    Qr_TDVCRTCEXT_1LP: TFloatField;
    Qr_TDVCRTCEXT_1LT: TFloatField;
    Qr_TDVCRTCEXT_1IC: TFloatField;
    Qr_TDVCRTCEXT_2LP: TFloatField;
    Qr_TDVCRTCEXT_2LT: TFloatField;
    Qr_TDVCRTCEXT_2IC: TFloatField;
    Qr_TDVCRTCEXT_3LP: TFloatField;
    Qr_TDVCRTCEXT_3LT: TFloatField;
    Qr_TDVCRTCEXT_3IC: TFloatField;
    Qr_TDVCRTCTPVAR: TFloatField;
    Qr_Cabecf_razao: TStringField;
    Qr_Cabecf_fantasia: TStringField;
    Qr_Cabecf_ender: TStringField;
    Qr_Cabecf_bairro: TStringField;
    Qr_Cabecf_cidade: TStringField;
    Qr_Cabecf_uf: TStringField;
    Qr_Cabecf_cep: TStringField;
    Qr_Cabecf_cgc: TStringField;
    Qr_Cabecf_ie: TStringField;
    Qr_Cabecf_fone: TStringField;
    Tb_Moe: TQuery;
    U_Moe: TUpdateSQL;
    Src_Moe: TDataSource;
    Tb_Ind: TQuery;
    U_Ind: TUpdateSQL;
    Src_Ind: TDataSource;
    Tb_MVei: TQuery;
    U_MVei: TUpdateSQL;
    Src_MVei: TDataSource;
    Tb_MVeiMCODEMP: TFloatField;
    Tb_MVeiMCODMAN: TFloatField;
    Tb_MVeiMNOME: TStringField;
    Tb_MVeiMPERIOD: TFloatField;
    Tb_MVeiMCODMOE: TFloatField;
    Tb_MVeiMVALOR: TFloatField;
    Tb_MVeinomemoe: TStringField;
    Tb_Imo01: TQuery;
    Tb_Imo01IM1CODEMP: TFloatField;
    Tb_Imo01IM1CODIMO: TFloatField;
    Tb_Imo01IM1NOME: TStringField;
    Tb_Imo01IM1MARCA: TStringField;
    Tb_Imo01IM1MODELO: TStringField;
    Tb_Imo01IM1SERIE: TStringField;
    Tb_Imo01IM1DATAAQ: TDateTimeField;
    Tb_Imo01IM1CODIND: TFloatField;
    Tb_Imo01IM1VALORCPR: TFloatField;
    Tb_Imo01IM1PERCDEP: TFloatField;
    Tb_Imo01IM1LOCAQ: TStringField;
    Tb_Imo01IM1CONTAQ: TStringField;
    Tb_Imo01IM1FONEC1: TStringField;
    Tb_Imo01IM1OBS01: TStringField;
    Tb_Imo01IM1OBS02: TStringField;
    Tb_Imo01IM1OBS03: TStringField;
    Tb_Imo01IM1OBS04: TStringField;
    Tb_Imo01IM1STATUS: TFloatField;
    Tb_Imo01IM1DATAVDA: TDateTimeField;
    Tb_Imo01IM1VLRVEND: TFloatField;
    U_Imo01: TUpdateSQL;
    Src_Imo01: TDataSource;
    Tb_Imo02: TQuery;
    U_Imo02: TUpdateSQL;
    Src_Imo02: TDataSource;
    Tb_Imo02IM2CODEMP: TFloatField;
    Tb_Imo02IM2CODIMO: TFloatField;
    Tb_Imo02IM2SEQ: TFloatField;
    Tb_Imo02IM2CODMAN: TFloatField;
    Tb_Imo02IM2DATAEM: TDateTimeField;
    Tb_Imo02IM2DATARM: TDateTimeField;
    Tb_Imo02IM2EMPMAN: TStringField;
    Tb_Imo02IM2EMCONTATO: TStringField;
    Tb_Imo02IM2FONE: TStringField;
    Tb_Imo02IM2FPGTO: TFloatField;
    Tb_Imo02IM2OBS01: TStringField;
    Tb_Imo02IM2OBS02: TStringField;
    Tb_Imo02IM2OBS03: TStringField;
    Tb_Imo02IM2OBS04: TStringField;
    Tb_Imo01nomemoe: TStringField;
    Tb_Imo01IM1GARANTIA: TFloatField;
    Tb_Imo01datavenda: TStringField;
    Tb_Imo01datacompra: TStringField;
    Tb_Vei01: TQuery;
    U_Vei01: TUpdateSQL;
    Srv_Vei01: TDataSource;
    Tb_Vei01V1CODEMP: TFloatField;
    Tb_Vei01V1CODVEI: TFloatField;
    Tb_Vei01V1NOME: TStringField;
    Tb_Vei01V1MARCA: TStringField;
    Tb_Vei01V1MODELO: TStringField;
    Tb_Vei01V1CHASSIS: TStringField;
    Tb_Vei01V1RENAVAN: TStringField;
    Tb_Vei01V1PLACAAT: TStringField;
    Tb_Vei01V1PLACAANT: TStringField;
    Tb_Vei01V1LOCAQ: TStringField;
    Tb_Vei01V1CONTAQ: TStringField;
    Tb_Vei01V1FONEC1: TStringField;
    Tb_Vei01V1CODIND: TFloatField;
    Tb_Vei01V1VALORCPR: TFloatField;
    Tb_Vei01V1PERCDEP: TFloatField;
    Tb_Vei01V1OBS01: TStringField;
    Tb_Vei01V1OBS02: TStringField;
    Tb_Vei01V1OBS03: TStringField;
    Tb_Vei01V1OBS04: TStringField;
    Tb_Vei01V1STATUS: TFloatField;
    Tb_Vei01V1DATAVDA: TDateTimeField;
    Tb_Vei01V1VLRVEND: TFloatField;
    Tb_Vei01V1GARANTIA: TFloatField;
    Tb_Vei01V1UFPLACAATU: TStringField;
    Tb_Vei01V1UFPLACAANT: TStringField;
    Tb_Vei01V1DATAAQ: TDateTimeField;
    Tb_Vei01V1COMBUST: TFloatField;
    Tb_Vei01dt_compra: TStringField;
    Tb_Vei01dt_venda: TStringField;
    Tb_Vei01nomemoe: TStringField;
    Tb_Imo02nomeman: TStringField;
    Tb_Imo02dataenv: TStringField;
    Tb_Imo02dataret: TStringField;
    Tb_Imo02IM2QTD: TFloatField;
    Tb_Imo02IM2PCOUNI: TFloatField;
    Tb_Imo02total: TFloatField;
    Tb_Imo02IM2STATUS: TFloatField;
    Tb_Vei02: TQuery;
    Tb_Vei02V2CODEMP: TFloatField;
    Tb_Vei02V2CODVEI: TFloatField;
    Tb_Vei02V2SEQ: TFloatField;
    Tb_Vei02V2ORIGEM: TFloatField;
    Tb_Vei02V2CODMAN: TFloatField;
    Tb_Vei02V2DATAEM: TDateTimeField;
    Tb_Vei02V2DATARM: TDateTimeField;
    Tb_Vei02V2EMPMAN: TStringField;
    Tb_Vei02V2EMCONTATO: TStringField;
    Tb_Vei02V2FONE: TStringField;
    Tb_Vei02V2QTD: TFloatField;
    Tb_Vei02V2PCOUNI: TFloatField;
    Tb_Vei02V2KM: TFloatField;
    Tb_Vei02V2STATUS: TFloatField;
    Tb_Vei02V2FPGTO: TFloatField;
    Tb_Vei02V2OBS01: TStringField;
    Tb_Vei02V2OBS02: TStringField;
    Tb_Vei02V2OBS03: TStringField;
    Tb_Vei02V2OBS04: TStringField;
    U_Vei02: TUpdateSQL;
    Src_Vei02: TDataSource;
    Tb_Vei02dataenv: TStringField;
    Tb_Vei02dataret: TStringField;
    Tb_Vei02total: TFloatField;
    Tb_Vei02nomeman: TStringField;
    Tb_MVeiMKM: TFloatField;
    Tb_MImo: TQuery;
    U_MImo: TUpdateSQL;
    Src_MImo: TDataSource;
    Tb_MImoMCODEMP: TFloatField;
    Tb_MImoMCODMAN: TFloatField;
    Tb_MImoMNOME: TStringField;
    Tb_MImoMPERIOD: TFloatField;
    Tb_MImoMCODMOE: TFloatField;
    Tb_MImoMVALOR: TFloatField;
    Tb_MImonomemoe: TStringField;
    Tb_GC01: TQuery;
    Tb_GC01GC1CODEMP: TFloatField;
    Tb_GC01GC1CODGIR: TFloatField;
    Tb_GC01GC1NOMEGIR: TStringField;
    Tb_GC01GC1QTDCID: TFloatField;
    Tb_GC01GC1OBSL01: TStringField;
    Tb_GC01GC1OBSL02: TStringField;
    Tb_GC01GC1OBSL03: TStringField;
    U_GC01: TUpdateSQL;
    Src_GC01: TDataSource;
    Tb_GC01GC1STATUS: TFloatField;
    Tb_GC02: TQuery;
    U_GC02: TUpdateSQL;
    Src_GC02: TDataSource;
    Tb_GC02GC2CODEMP: TFloatField;
    Tb_GC02GC2CODGIR: TFloatField;
    Tb_GC02GC2CODLOC: TFloatField;
    Tb_GC02GC2SEQ: TFloatField;
    Tb_GC02LNOME: TStringField;
    Tb_GC02LUF: TStringField;
    Qr_CorPDNOME: TStringField;
    Tb_Help: TQuery;
    Tb_HelpHP_CODSEG: TFloatField;
    Tb_HelpHP_CODLINK: TFloatField;
    Tb_HelpHP_DESC: TMemoField;
    Tb_HelpHP_NOMCAM: TStringField;
    Tb_HelpHP_MAPA: TStringField;
    Tb_HelpHP_FORMULARIO: TStringField;
    U_Help: TUpdateSQL;
    Src_Help: TDataSource;
    Tb_Helpnomeseg: TStringField;
    Qr_TDVCA_STCAVANCAROD: TFloatField;
    Qr_TDVCRCPTCAMPO_TAB: TStringField;
    Qr_TDVCRCPTCOND01_TAB: TStringField;
    Qr_TDVCRCPTCOND02_TAB: TStringField;
    Qr_TDVCRCPTCTPSEL: TFloatField;
    Qr_TDVCRCPTCBARRAS: TFloatField;
    Qr_TDVCRCPTCEXTENSO: TFloatField;
    Qr_TDVCRCPTCEXT_QTDL: TFloatField;
    Qr_TDVCRCPTCEXT_1LP: TFloatField;
    Qr_TDVCRCPTCEXT_1LT: TFloatField;
    Qr_TDVCRCPTCEXT_1IC: TFloatField;
    Qr_TDVCRCPTCEXT_2LP: TFloatField;
    Qr_TDVCRCPTCEXT_2LT: TFloatField;
    Qr_TDVCRCPTCEXT_2IC: TFloatField;
    Qr_TDVCRCPTCEXT_3LP: TFloatField;
    Qr_TDVCRCPTCEXT_3LT: TFloatField;
    Qr_TDVCRCPTCEXT_3IC: TFloatField;
    Qr_TDVCRCPTCTPVAR: TFloatField;
    Tb_DupRec: TQuery;
    Tb_DupRecDPCODEMP: TFloatField;
    Tb_DupRecDPTPOR: TStringField;
    Tb_DupRecDPCODIGO: TFloatField;
    Tb_DupRecDPSEQ: TFloatField;
    Tb_DupRecDPLOTE: TFloatField;
    Tb_DupRecDPNR: TFloatField;
    Tb_DupRecDPNUMERO: TFloatField;
    Tb_DupRecDPDESD: TStringField;
    Tb_DupRecDPDUP: TFloatField;
    Tb_DupRecDPCODCLI: TFloatField;
    Tb_DupRecDPCODVEN: TFloatField;
    Tb_DupRecDPDTEMIS: TDateTimeField;
    Tb_DupRecDPVALOR: TFloatField;
    Tb_DupRecDPJUROS: TFloatField;
    Tb_DupRecDPDESC: TFloatField;
    Tb_DupRecDPTIPO: TFloatField;
    Tb_DupRecDPLOTENV: TFloatField;
    Tb_DupRecDPORIGEM: TFloatField;
    U_DupRec: TUpdateSQL;
    Src_DupRec: TDataSource;
    Tb_DupDRec: TQuery;
    Tb_DupDRecDRCODEMP: TFloatField;
    Tb_DupDRecDRTPOR: TStringField;
    Tb_DupDRecDRCODIGO: TFloatField;
    Tb_DupDRecDRSEQ: TFloatField;
    Tb_DupDRecDRLOTE: TFloatField;
    Tb_DupDRecDRVALOR: TFloatField;
    Tb_DupDRecDRDATA: TDateTimeField;
    Tb_DupDRecDRFORMA: TFloatField;
    Tb_DupDRecDRNUMERO: TFloatField;
    Tb_DupDRecDRSERIE: TStringField;
    Tb_DupDRecDRCC: TStringField;
    Tb_DupDRecDRCOMP: TStringField;
    Tb_DupDRecDRAGENCIA: TStringField;
    Tb_DupDRecDREMIT: TStringField;
    Tb_DupDRecDRRG: TStringField;
    Tb_DupDRecDRCGC: TFloatField;
    Tb_DupDRecDRDTNAS: TDateTimeField;
    Tb_DupDRecDRTIPO: TFloatField;
    Tb_DupDRecDRLOTENV: TFloatField;
    Tb_DupDRecDRORIGEM: TFloatField;
    U_DupDrec: TUpdateSQL;
    Src_DupDRec: TDataSource;
    Tb_DupDRecDRBANCO: TFloatField;
    Tb_DupDRecdata: TStringField;
    Tb_DupRecdtemis: TStringField;
    Tb_DupDRecdtnas: TStringField;
    Tb_DupRecnomcli: TStringField;
    Tb_DupRecDPDTPAG: TDateTimeField;
    Tb_DupDRecforma: TStringField;
    Qr_CabP1CUPACRE: TFloatField;
    Qr_CabP1CUPDES: TFloatField;
    Qr_PedFP: TQuery;
    Qr_PedFPPFPCODEMP: TFloatField;
    Qr_PedFPPFPLOTSEQ: TFloatField;
    Qr_PedFPPFPCHAVE: TFloatField;
    Qr_PedFPPFPSEQ: TFloatField;
    Qr_PedFPPFPFORMA: TFloatField;
    Qr_PedFPPFPDATA: TDateTimeField;
    Qr_PedFPPFPNUMDOC: TStringField;
    Qr_PedFPPFPBANCO: TFloatField;
    Qr_PedFPPFPSERIE: TStringField;
    Qr_PedFPPFPVALOR: TFloatField;
    Qr_PedFPPFPCC: TStringField;
    Qr_PedFPPFPCOMP: TStringField;
    Qr_PedFPPFPAGENCIA: TStringField;
    Qr_PedFPPFPEMITENTE: TStringField;
    Qr_PedFPnomefp: TStringField;
    Tb_EmpBLOQ: TFloatField;
    Tb_TDVFE: TQuery;
    Tb_TDVFEFECODEMP: TFloatField;
    Tb_TDVFEFEDOC: TStringField;
    Tb_TDVFEFENOME: TStringField;
    Tb_TDVFEFETIPO: TFloatField;
    Tb_TDVFEFEFILTRO: TMemoField;
    U_TDVFE: TUpdateSQL;
    Src_TDVFE: TDataSource;
    Tb_Assessor: TQuery;
    Tb_AssessorCACODEMP: TFloatField;
    Tb_AssessorCACODASS: TFloatField;
    Tb_AssessorCARAZAO: TStringField;
    Tb_AssessorCADENOM: TStringField;
    Tb_AssessorCAENDERECO: TStringField;
    Tb_AssessorCABAIRRO: TStringField;
    Tb_AssessorCACIDADE: TStringField;
    Tb_AssessorCAUF: TStringField;
    Tb_AssessorCACODBAI: TFloatField;
    Tb_AssessorCACODLOC: TFloatField;
    Tb_AssessorCACEP: TStringField;
    Tb_AssessorCAFONE01: TStringField;
    Tb_AssessorCAFONE02: TStringField;
    Tb_AssessorCAFONE03: TStringField;
    Tb_AssessorCACH_FONE01: TStringField;
    Tb_AssessorCACH_FONE02: TStringField;
    Tb_AssessorCACH_FONE03: TStringField;
    Tb_AssessorCACH_FAX: TStringField;
    Tb_AssessorCAFAX: TStringField;
    Tb_AssessorCADTCAD: TDateTimeField;
    Tb_AssessorCARG: TStringField;
    Tb_AssessorCACPF: TFloatField;
    Tb_AssessorCACNPJ: TFloatField;
    Tb_AssessorCAIE: TStringField;
    Tb_AssessorCAPONTOR: TStringField;
    Tb_AssessorCAREFCOM01: TStringField;
    Tb_AssessorCAREFCOM02: TStringField;
    Tb_AssessorCAREFCOM03: TStringField;
    Tb_AssessorCAREFCOM04: TStringField;
    Tb_AssessorCAREFBAN01: TStringField;
    Tb_AssessorCAREFBAN02: TStringField;
    Tb_AssessorCAREFBAN03: TStringField;
    Tb_AssessorCAREFBAN04: TStringField;
    Tb_AssessorCAREFPES01: TStringField;
    Tb_AssessorCAREFPES02: TStringField;
    Tb_AssessorCAREFPES03: TStringField;
    Tb_AssessorCAREFPES04: TStringField;
    Tb_AssessorCAOBS01: TStringField;
    Tb_AssessorCAOBS02: TStringField;
    Tb_AssessorCAOBS03: TStringField;
    Tb_AssessorCAOBS04: TStringField;
    Tb_AssessorCALCRED: TFloatField;
    Tb_AssessorCATABPV: TStringField;
    Tb_AssessorCACODPV: TFloatField;
    Tb_AssessorCAFIL_PAI: TStringField;
    Tb_AssessorCAFIL_MAE: TStringField;
    Tb_AssessorCANATURAL: TStringField;
    Tb_AssessorCANAT_UF: TStringField;
    Tb_AssessorCATPPESSOA: TFloatField;
    Tb_AssessorCASTATUS: TFloatField;
    Tb_AssessorCASITASS: TFloatField;
    Tb_AssessorCACOMIS: TFloatField;
    Tb_AssessorCAEMAIL: TStringField;
    Tb_AssessorCAHOME: TStringField;
    Tb_AssessorCACODCCD: TStringField;
    Tb_AssessorCACODCCC: TStringField;
    Tb_AssessorCACODDEPD: TStringField;
    Tb_AssessorCACODDEPC: TStringField;
    Tb_AssessorCADESCMVD: TStringField;
    Tb_AssessorCADESCMVC: TStringField;
    Tb_AssessorCACODUSR: TFloatField;
    Tb_AssessorCADTALT: TDateTimeField;
    Tb_AssessorCAHRALT: TStringField;
    Tb_AssessorCASEXO: TFloatField;
    Tb_AssessorCAPROF: TStringField;
    Tb_AssessorCAESTCIV: TStringField;
    Tb_AssessorCADTNAS: TDateTimeField;
    Tb_AssessorCANOMCCD: TStringField;
    Tb_AssessorCANOMCCC: TStringField;
    Tb_AssessorCANOMDEPD: TStringField;
    Tb_AssessorCANOMDEPC: TStringField;
    U_Assessor: TUpdateSQL;
    Src_Assessor: TDataSource;
    Tb_Assessordatnas: TStringField;
    Tb_Trocas_Cab: TQuery;
    Tb_Trocas_CabTCCODEMP: TFloatField;
    Tb_Trocas_CabTCLOTSEQ: TFloatField;
    Tb_Trocas_CabTCCHAVE: TFloatField;
    Tb_Trocas_CabTCCODCLI: TFloatField;
    Tb_Trocas_CabTCCODVEN: TFloatField;
    Tb_Trocas_CabTCOBS01: TStringField;
    Tb_Trocas_CabTCOBS02: TStringField;
    Tb_Trocas_CabTCOBS03: TStringField;
    Tb_Trocas_CabTCOBS04: TStringField;
    Tb_Trocas_CabTCCHECARORI: TFloatField;
    Tb_Trocas_CabTCSTATUS: TFloatField;
    Tb_Trocas_CabTCDATA: TDateTimeField;
    Tb_Trocas_CabTCICMSRETDEV: TFloatField;
    Tb_Trocas_CabTCVALORDEV: TFloatField;
    Tb_Trocas_CabTCDESCDEV: TFloatField;
    Tb_Trocas_CabTCACREDEV: TFloatField;
    Tb_Trocas_CabTCICMSRETSAI: TFloatField;
    Tb_Trocas_CabTCVALORSAI: TFloatField;
    Tb_Trocas_CabTCDESCSAI: TFloatField;
    Tb_Trocas_CabTCACRESAI: TFloatField;
    Tb_Trocas_CabTCTROCO: TFloatField;
    Tb_Trocas_CabTCRECEBIDO: TFloatField;
    Tb_Trocas_CabTCLOTSEQ_CP_DEV: TFloatField;
    Tb_Trocas_CabTCCHAVE_DEV: TFloatField;
    Tb_Trocas_CabTCNUMNF_DEV: TFloatField;
    Tb_Trocas_CabTCLOTSEQ_CP_SAI: TFloatField;
    Tb_Trocas_CabTCCHAVE_SAI: TFloatField;
    Tb_Trocas_CabTCNUMNF_SAI: TFloatField;
    Tb_Trocas_CabTCQTDMAN: TFloatField;
    Tb_Trocas_CabTCSITUACAO: TFloatField;
    U_Trocas_Cab: TUpdateSQL;
    Src_Trocas_Cab: TDataSource;
    Tb_Trocas_Ent: TQuery;
    U_Trocas_Ent: TUpdateSQL;
    Src_Trocas_Ent: TDataSource;
    Tb_Trocas_EntTECODEMP: TFloatField;
    Tb_Trocas_EntTELOTSEQ: TFloatField;
    Tb_Trocas_EntTECHAVE: TFloatField;
    Tb_Trocas_EntTECODPRO: TFloatField;
    Tb_Trocas_EntTEQTD: TFloatField;
    Tb_Trocas_EntTEPU: TFloatField;
    Tb_Trocas_EntTELOTE: TStringField;
    Tb_Trocas_EntTEDTVCTO: TDateTimeField;
    Tb_Trocas_EntTEITEM: TFloatField;
    Tb_Trocas_Ori: TQuery;
    Tb_Trocas_OriTOCODEMP: TFloatField;
    Tb_Trocas_OriTOLOTSEQ: TFloatField;
    Tb_Trocas_OriTOCHAVE: TFloatField;
    Tb_Trocas_OriTOCODEMP_CP_DEV: TFloatField;
    Tb_Trocas_OriTOLOTSEQ_CP_DEV: TFloatField;
    Tb_Trocas_OriTOCHAVE_CP_DEV: TFloatField;
    Tb_Trocas_OriTOITEM: TFloatField;
    U_Trocas_Ori: TUpdateSQL;
    Src_Trocas_Ori: TDataSource;
    Tb_Trocas_Sai: TQuery;
    Tb_Trocas_SaiTSCODEMP: TFloatField;
    Tb_Trocas_SaiTSLOTSEQ: TFloatField;
    Tb_Trocas_SaiTSCHAVE: TFloatField;
    Tb_Trocas_SaiTSCODPRO: TFloatField;
    Tb_Trocas_SaiTSQTD: TFloatField;
    Tb_Trocas_SaiTSPU: TFloatField;
    Tb_Trocas_SaiTSLOTE: TStringField;
    Tb_Trocas_SaiTSDTVCTO: TDateTimeField;
    Tb_Trocas_SaiTSITEM: TFloatField;
    U_Trocas_Sai: TUpdateSQL;
    Src_Trocas_Sai: TDataSource;
    Tb_Trocas_OriTOCODCLI_CP_DEV: TFloatField;
    Tb_Trocas_OriTOVALOR_PEDDEV: TFloatField;
    Tb_Trocas_CabTCCODUSR: TFloatField;
    Tb_Trocas_CabTCDATAHOR: TDateTimeField;
    Tb_Trocas_CabTCCODUSR_MAN: TFloatField;
    Tb_Trocas_CabTCDATAHOR_MAN: TDateTimeField;
    Tb_Trocas_OriTODATA_DEV: TDateTimeField;
    Tb_Trocas_Cabnomcli: TStringField;
    Tb_Trocas_CabTCFPGTO: TFloatField;
    Qr_CabP1CODASSE: TFloatField;
    Qr_Cabnompv: TStringField;
    Qr_CabCREDICMSNOR: TFloatField;
    Tb_TDVCabDocTCOND_CONT: TStringField;
    Tb_TDVCabDocTCOND_02_01: TStringField;
    Tb_TDVCabDocTCOND_02_01_TAB: TStringField;
    Tb_TDVCabDocTCOND_02_OP: TStringField;
    Tb_TDVCabDocTCOND_02_T2: TStringField;
    Tb_TDVCabDocTCOND_02_02: TStringField;
    Tb_TDVCabDocTCOND_02_02_TAB: TStringField;
    Tb_TDVCabDocTCOND_02_T1: TStringField;
    QR_TDVCPTCOND_CONT: TStringField;
    QR_TDVCPTCOND_02_01: TStringField;
    QR_TDVCPTCOND_02_01_TAB: TStringField;
    QR_TDVCPTCOND_02_OP: TStringField;
    QR_TDVCPTCOND_02_T2: TStringField;
    QR_TDVCPTCOND_02_02: TStringField;
    QR_TDVCPTCOND_02_02_TAB: TStringField;
    QR_TDVCPTCOND_02_T1: TStringField;
    Tb_Trocas_CabTCNOMCLI: TStringField;
    Tb_SGPro: TQuery;
    U_SGPro: TUpdateSQL;
    Src_SGPro: TDataSource;
    Tb_SGPro_Ano: TQuery;
    U_SGPro_Ano: TUpdateSQL;
    Src_SGPro_Ano: TDataSource;
    Tb_SGProSGPCODEMP: TFloatField;
    Tb_SGProSGPCODPRO: TFloatField;
    Tb_SGProSGPCODGRU: TFloatField;
    Tb_SGProTNOME: TStringField;
    Tb_SGPro_AnoSGPACODEMP: TFloatField;
    Tb_SGPro_AnoSGPACODPRO: TFloatField;
    Tb_SGPro_AnoSGPACODGRU: TFloatField;
    Tb_SGPro_AnoSGPAANO: TFloatField;
    Qr_CabP1TOTDI03: TFloatField;
    Tb_SitMaq: TQuery;
    Tb_SitMaqSCODEMP: TFloatField;
    Tb_SitMaqSCODSITMAQ: TFloatField;
    Tb_SitMaqSNOMSITMAQ: TStringField;
    U_SitMaq: TUpdateSQL;
    Src_SitMaq: TDataSource;
    Tb_TroMol: TQuery;
    Tb_TroMolTCODEMP: TFloatField;
    Tb_TroMolTCODTROMOL: TFloatField;
    Tb_TroMolTOBSESTSAI: TStringField;
    Tb_TroMolTDATAENT: TDateTimeField;
    Tb_TroMolTHORAENTINI: TStringField;
    Tb_TroMolTMINUENTTOFIN: TStringField;
    Tb_TroMolTDATASAI: TDateTimeField;
    Tb_TroMolTHORASAIINI: TStringField;
    Tb_TroMolTMINUSAIFIN: TStringField;
    Tb_TroMolTCODSIT1: TStringField;
    Tb_TroMolTCODSIT2: TStringField;
    Tb_TroMolTCODSIT3: TStringField;
    Tb_TroMolTCODSIT4: TStringField;
    Tb_TroMolTCODSIT5: TStringField;
    Tb_TroMolTCODSIT6: TStringField;
    Tb_TroMolTCODSIT7: TStringField;
    Tb_TroMolTCODSIT8: TStringField;
    Tb_TroMolTCODSIT9: TStringField;
    Tb_TroMolTCODSIT10: TStringField;
    Tb_TroMolTCODMOLDE: TFloatField;
    Tb_TroMolTCODIMO: TFloatField;
    Tb_TroMolTCODMOLSAI: TFloatField;
    Tb_TroMolTCODENCAR: TFloatField;
    Tb_TroMolTCODGEREN: TFloatField;
    U_TroMol: TUpdateSQL;
    Src_TroMol: TDataSource;
    Tb_Molde: TQuery;
    Tb_MoldeMCODEMP: TFloatField;
    Tb_MoldeMCODMOLDE: TFloatField;
    Tb_MoldeMNOMMOLDE: TStringField;
    U_Molde: TUpdateSQL;
    Src_Molde: TDataSource;
    Qr_CorP2DESC3: TFloatField;
    Tb_TDVCabDocTCCORTARDE: TFloatField;
    QR_TDVCPTCCORTARDE: TFloatField;
    Qr_TDVCRCPTCOND_CONT: TStringField;
    Qr_TDVCRCPTCOND_02_T1: TStringField;
    Qr_TDVCRCPTCOND_02_01: TStringField;
    Qr_TDVCRCPTCOND_02_01_TAB: TStringField;
    Qr_TDVCRCPTCOND_02_OP: TStringField;
    Qr_TDVCRCPTCOND_02_T2: TStringField;
    Qr_TDVCRCPTCOND_02_02: TStringField;
    Qr_TDVCRCPTCOND_02_02_TAB: TStringField;
    Qr_TDVCRCPTCCORTARDE: TFloatField;
    Tb_LBR1: TQuery;
    Tb_LBR1LBCODEMP: TFloatField;
    Tb_LBR1LBNUMLOT: TFloatField;
    Tb_LBR1LBDATA: TDateTimeField;
    Tb_LBR1LBCODBCO: TFloatField;
    Tb_LBR1LBTIPCOB: TFloatField;
    Tb_LBR1LBTOTAL: TFloatField;
    U_LBR1: TUpdateSQL;
    Src_LBR1: TDataSource;
    Src_LBR2: TDataSource;
    Tb_LBR2: TQuery;
    U_LBR2: TUpdateSQL;
    Tb_LBR2LB2CODEMP: TFloatField;
    Tb_LBR2LB2NUMLOT: TFloatField;
    Tb_LBR2LB2NUMERO: TFloatField;
    Tb_LBR2LB2DESD: TStringField;
    Tb_LBR2LB2DUP: TFloatField;
    Tb_LBR2LB2CODEMP_DUP: TFloatField;
    Tb_LBR2LB2DTEMIS: TDateTimeField;
    Tb_LBR2LB2DTVCTO: TDateTimeField;
    Tb_LBR2LB2VALOR: TFloatField;
    Tb_LBR2LB2CODCLI: TFloatField;
    Tb_LBR2LB2CODVEN: TFloatField;
    Tb_LBR2LB2CODLOC: TFloatField;
    Tb_LBR2CRAZAO: TStringField;
    Tb_LBR2LNOME: TStringField;
    Tb_LBR2LUF: TStringField;
    Tb_LBR2Numero: TStringField;
    Tb_LBR2cidade: TStringField;
    Tb_LBR1nombco: TStringField;
    Qr_CabP1ALIQDEB: TFloatField;
    Qr_CabP1SUBMOD: TStringField;
    Tb_TDVCabDocTCOND_CONT03: TStringField;
    Tb_TDVCabDocTCOND_03_T1: TStringField;
    Tb_TDVCabDocTCOND_03_01: TStringField;
    Tb_TDVCabDocTCOND_03_01_TAB: TStringField;
    Tb_TDVCabDocTCOND_03_OP: TStringField;
    Tb_TDVCabDocTCOND_03_T2: TStringField;
    Tb_TDVCabDocTCOND_03_02: TStringField;
    Tb_TDVCabDocTCOND_03_02_TAB: TStringField;
    Qr_TDVCRTCOND_CONT: TStringField;
    Qr_TDVCRTCOND_02_T1: TStringField;
    Qr_TDVCRTCOND_02_01: TStringField;
    Qr_TDVCRTCOND_02_01_TAB: TStringField;
    Qr_TDVCRTCOND_02_OP: TStringField;
    Qr_TDVCRTCOND_02_T2: TStringField;
    Qr_TDVCRTCOND_02_02: TStringField;
    Qr_TDVCRTCOND_02_02_TAB: TStringField;
    Qr_TDVCRTCCORTARDE: TFloatField;
    Qr_TDVCRTCOND_CONT03: TStringField;
    Qr_TDVCRTCOND_03_T1: TStringField;
    Qr_TDVCRTCOND_03_01: TStringField;
    Qr_TDVCRTCOND_03_01_TAB: TStringField;
    Qr_TDVCRTCOND_03_OP: TStringField;
    Qr_TDVCRTCOND_03_T2: TStringField;
    Qr_TDVCRTCOND_03_02: TStringField;
    Qr_TDVCRTCOND_03_02_TAB: TStringField;
    Qr_TDV_STCOND_CONT: TStringField;
    Qr_TDV_STCOND_02_T1: TStringField;
    Qr_TDV_STCOND_02_01: TStringField;
    Qr_TDV_STCOND_02_01_TAB: TStringField;
    Qr_TDV_STCOND_02_OP: TStringField;
    Qr_TDV_STCOND_02_T2: TStringField;
    Qr_TDV_STCOND_02_02: TStringField;
    Qr_TDV_STCOND_02_02_TAB: TStringField;
    Qr_TDV_STCCORTARDE: TFloatField;
    Qr_TDV_STCOND_CONT03: TStringField;
    Qr_TDV_STCOND_03_T1: TStringField;
    Qr_TDV_STCOND_03_01: TStringField;
    Qr_TDV_STCOND_03_01_TAB: TStringField;
    Qr_TDV_STCOND_03_OP: TStringField;
    Qr_TDV_STCOND_03_T2: TStringField;
    Qr_TDV_STCOND_03_02: TStringField;
    Qr_TDV_STCOND_03_02_TAB: TStringField;
    QR_TDVCPTCOND_CONT03: TStringField;
    QR_TDVCPTCOND_03_T1: TStringField;
    QR_TDVCPTCOND_03_01: TStringField;
    QR_TDVCPTCOND_03_01_TAB: TStringField;
    QR_TDVCPTCOND_03_OP: TStringField;
    QR_TDVCPTCOND_03_T2: TStringField;
    QR_TDVCPTCOND_03_02: TStringField;
    QR_TDVCPTCOND_03_02_TAB: TStringField;
    Qr_TDVCRCPTCOND_CONT03: TStringField;
    Qr_TDVCRCPTCOND_03_T1: TStringField;
    Qr_TDVCRCPTCOND_03_01: TStringField;
    Qr_TDVCRCPTCOND_03_01_TAB: TStringField;
    Qr_TDVCRCPTCOND_03_OP: TStringField;
    Qr_TDVCRCPTCOND_03_T2: TStringField;
    Qr_TDVCRCPTCOND_03_02: TStringField;
    Qr_TDVCRCPTCOND_03_02_TAB: TStringField;
    Qr_CabP1TOTCGRU: TFloatField;
    Qr_CabP1TOTSGRU: TFloatField;
    Tb_EmpSTATUS: TFloatField;
    Tb_PPRPPPRIOR: TFloatField;
    Qr_PPR: TQuery;
    Qr_PPRPPPROMOCAO: TStringField;
    Qr_PPRPPDATINI: TDateTimeField;
    Qr_PPRPPDATFIN: TDateTimeField;
    Qr_PPRPPPCOVDA: TFloatField;
    Qr_PPRPPDESC_1: TFloatField;
    Qr_PPRPPDESC_2: TFloatField;
    Qr_PPRPPDESC_3: TFloatField;
    Qr_PPRPPCONFVDA: TStringField;
    Qr_PPRPPCOMIS: TFloatField;
    Qr_PPRPPQTDMIN: TFloatField;
    Qr_PPRPPVALMIN: TFloatField;
    Qr_PPRPPDESC_F: TFloatField;
    Qr_PPRPPPRIOR: TFloatField;
    Qr_CorP2PROMOCAO: TStringField;
    Tb_AjPco: TQuery;
    U_AjPco: TUpdateSQL;
    Src_AjPco: TDataSource;
    Tb_AjPcoAPCODEMP: TFloatField;
    Tb_AjPcoAPCODFOR: TFloatField;
    Tb_AjPcoAPLOTE: TFloatField;
    Tb_AjPcoAPDATA: TDateTimeField;
    Tb_AjPcoAPCODPRO_FOR: TFloatField;
    Tb_AjPcoAPCODBAR: TFloatField;
    Tb_AjPcoAPCODPRO_LOCAL: TFloatField;
    Tb_AjPcoAPNOME: TStringField;
    Tb_AjPcoAPAPRES: TStringField;
    Tb_AjPcoAPCODFAB: TFloatField;
    Tb_AjPcoAPNOMFAB: TStringField;
    Tb_AjPcoAPUND: TStringField;
    Tb_AjPcoAPEMBMUL: TFloatField;
    Tb_AjPcoAPPCOFAB: TFloatField;
    Tb_AjPcoAPPCOMAX: TFloatField;
    Tb_AjPcoAPPCOVDA: TFloatField;
    Tb_AjPcoAPPCOFAB_CX: TFloatField;
    Tb_AjPcoAPPCOMAX_CX: TFloatField;
    Tb_AjPcoAPDTVIG: TDateTimeField;
    Tb_AjPcoAPPERC_PCOFAB: TFloatField;
    Tb_AjPcoAPPERC_PCOMAX: TFloatField;
    Tb_AjPcoAPPERC_PCOVDA: TFloatField;
    Tb_AjPcoAPPERC_PCOFAB_CX: TFloatField;
    Tb_AjPcoAPPERC_PCOMAX_CX: TFloatField;
    Tb_AjPcoAPCODGRU: TFloatField;
    Tb_AjPcoAPNOMGRU: TStringField;
    Tb_AjPcoAPCODCON: TFloatField;
    Tb_AjPcoAPNOMCON: TStringField;
    Tb_AjPcoAPCODRAM: TFloatField;
    Tb_AjPcoAPNOMRAM: TStringField;
    Tb_AjPcoAPCODTIP: TFloatField;
    Tb_AjPcoAPNOMTIP: TStringField;
    Tb_AjPcoAPLISTA: TFloatField;
    Tb_AjPcoAPIPI: TFloatField;
    Tb_AjPcoAPREGMS: TStringField;
    Tb_AjPcoAPCLAS: TStringField;
    Tb_AjPcoAPCODBAR_ANT: TFloatField;
    Tb_AjPcoAPCODFAB_ANT: TFloatField;
    Tb_AjPcoAPNOMFAB_ANT: TStringField;
    Tb_AjPcoAPUND_ANT: TStringField;
    Tb_AjPcoAPEMBMUL_ANT: TFloatField;
    Tb_AjPcoAPPCOFAB_ANT: TFloatField;
    Tb_AjPcoAPPCOMAX_ANT: TFloatField;
    Tb_AjPcoAPPCOFAB_CX_ANT: TFloatField;
    Tb_AjPcoAPCODGRU_ANT: TFloatField;
    Tb_AjPcoAPNOMGRU_ANT: TStringField;
    Tb_AjPcoAPCODCON_ANT: TFloatField;
    Tb_AjPcoAPNOMCON_ANT: TStringField;
    Tb_AjPcoAPCODRAM_ANT: TFloatField;
    Tb_AjPcoAPNOMRAM_ANT: TStringField;
    Tb_AjPcoAPCODTIP_ANT: TFloatField;
    Tb_AjPcoAPNOMTIP_ANT: TStringField;
    Tb_AjPcoAPLISTA_ANT: TFloatField;
    Tb_AjPcoAPIPI_ANT: TFloatField;
    Tb_AjPcoAPREGMS_ANT: TStringField;
    Tb_AjPcoAPCLAS_ANT: TStringField;
    Tb_AjPcoAPSTATUS: TFloatField;
    Tb_AjPcoAPNOMECOMP: TStringField;
    Tb_AjPcoAPPCOVDA_ANT: TFloatField;
    Tb_AjPcoAPNOME_ANT: TStringField;
    Tb_AjPcoAPPCOMAX_CX_ANT: TFloatField;
    Tb_AjPcoAPSITUACAO: TFloatField;
    Tb_AjPcoAPRELACIONADO: TFloatField;
    Tb_Dar: TQuery;
    Tb_DarCRCODEMP: TFloatField;
    Tb_DarCRNUMERO: TFloatField;
    Tb_DarCRDESD: TStringField;
    Tb_DarCRDUP: TFloatField;
    Tb_DarCRCODCLI: TFloatField;
    Tb_DarCRVALOR: TFloatField;
    Tb_DarCRDTEMIS: TDateTimeField;
    Tb_DarCRDTVCTO: TDateTimeField;
    Tb_DarCRDTPAG: TDateTimeField;
    Tb_DarCRDTBX: TDateTimeField;
    Tb_DarCRNPED: TFloatField;
    Tb_DarCRORDEM: TFloatField;
    Tb_DarCRVALPAG: TFloatField;
    Tb_DarCRCODVEN: TFloatField;
    Tb_DarCRDESC: TFloatField;
    Tb_DarCRDEVOL: TFloatField;
    Tb_DarCRJUROS: TFloatField;
    Tb_DarCRCODBCO: TFloatField;
    Tb_DarCRLOTE: TFloatField;
    Tb_DarCRICMSR: TFloatField;
    Tb_DarCRDESCF: TFloatField;
    Tb_DarCRDTDESCF: TDateTimeField;
    Tb_DarCRJURD: TFloatField;
    Tb_DarCREMIDUP: TFloatField;
    Tb_DarCREMIBLQ: TFloatField;
    Tb_DarCRVALFRE: TFloatField;
    Tb_DarCRNOSNUM: TStringField;
    Tb_DarCRTIPCOB: TFloatField;
    Tb_DarCRCODLDR: TFloatField;
    Tb_DarCRSTATUS: TFloatField;
    Tb_DarCRTOTNF: TFloatField;
    Tb_DarCRNFACUM: TStringField;
    Tb_DarCRNUMPARC: TFloatField;
    Tb_DarCRQTDPARC: TFloatField;
    Tb_DarVNOME: TStringField;
    Tb_DarBCBANCO: TStringField;
    Tb_DarCRAZAO: TStringField;
    Tb_DarCUF: TStringField;
    Tb_DarCCIDADE: TStringField;
    Tb_DarCBAIRRO: TStringField;
    Tb_DarCLOG: TStringField;
    Tb_DarCNUM: TStringField;
    Tb_DarCCOMPL: TStringField;
    Tb_DarCFONERES: TStringField;
    Tb_DarCFONECOM: TStringField;
    Tb_DarCCELULAR: TStringField;
    Tb_DarCCIDADEC: TStringField;
    Tb_DarCBAIRROC: TStringField;
    Tb_DarCENDERC: TStringField;
    Tb_DarCUFC: TStringField;
    Tb_DarCCEPC: TStringField;
    Tb_DarRAZAO: TStringField;
    Tb_DarFANTASIA: TStringField;
    Tb_DarCIDADE: TStringField;
    Tb_DarUF: TStringField;
    Tb_DarCGC: TFloatField;
    Tb_DarINSCRICAO: TStringField;
    Tb_DarFONE: TStringField;
    Tb_DarFAX: TStringField;
    Tb_DarE_MAIL: TStringField;
    Tb_Darcgccpf: TStringField;
    Tb_Darrgie: TStringField;
    Tb_Darcepcli: TStringField;
    Tb_Darendereco: TStringField;
    Tb_Darextl01: TStringField;
    Tb_Darextl02: TStringField;
    Tb_Darextl03: TStringField;
    Tb_Darjurosacum: TFloatField;
    Qr_ProPDPROALT: TFloatField;
    Qr_ProPDDTULTSAI: TDateTimeField;
    Qr_ProPDDTULTENT: TDateTimeField;
    Qr_ProPDVDAMAXM: TFloatField;
    Qr_ProPDREST: TFloatField;
    Qr_ProPDPESOB: TFloatField;
    Qr_ProPDPESOL: TFloatField;
    Qr_ProPDBAIXO: TFloatField;
    Qr_ProPDALTO: TFloatField;
    Qr_ProPDDATCAD: TDateTimeField;
    Qr_ProPDNOMFOR: TStringField;
    Qr_ProPDNOMPROC: TStringField;
    Qr_ProPDNOMGRU: TStringField;
    Qr_ProPDNOMCON: TStringField;
    Qr_ProPDNOMRAM: TStringField;
    Qr_ProPDNOMTIP: TStringField;
    Qr_ProPDNOMPROALT: TStringField;
    Qr_ProPDSTATUS02: TFloatField;
    Qr_ProPDSALDOR: TFloatField;
    Qr_ProPDBAIXOR: TFloatField;
    Qr_ProPDALTOR: TFloatField;
    Qr_ProPDSALDOC: TFloatField;
    Qr_ProPDBAIXOC: TFloatField;
    Qr_ProPDALTOC: TFloatField;
    Qr_ProPDCODNCM: TStringField;
    Qr_ProPDCUSFAB: TFloatField;
    Qr_ProPDCUSENV: TFloatField;
    Qr_ProPDCUSFIN: TFloatField;
    Qr_ProPDUCODFOR: TFloatField;
    Qr_ProPDUNOMFOR: TStringField;
    Qr_ProPDCODFAB: TStringField;
    Qr_ProPDSALDOT: TFloatField;
    Qr_ProPDALTOT: TFloatField;
    Qr_ProPDBAIXOT: TFloatField;
    Qr_ProPDPMC02: TFloatField;
    Qr_ProPDPMC03: TFloatField;
    Qr_ProPDCX_PVDA: TFloatField;
    Qr_ProPDCX_PFAB: TFloatField;
    Qr_ProPDCX_PMAX: TFloatField;
    Qr_ProPDICMSCRED: TFloatField;
    Qr_ProPDICMSDEB: TFloatField;
    Qr_ProPDVLRINC: TFloatField;
    Qr_ProOK: TStringField;
    U_Pro: TUpdateSQL;
    Tb_EmpCNPF: TFloatField;
    Tb_EmpRG: TStringField;
    Qr_CabP1BCISSQN: TFloatField;
    Qr_CabP1VISSQN: TFloatField;
    Qr_CabP1CFOSER: TStringField;
    Qr_CabCNOMCON: TStringField;
    Qr_CabCFONCON: TStringField;
    Qr_Cabnomcfoser: TStringField;
    Qr_CabP1TOTSERLIQ: TFloatField;
    Qr_Cabprazos: TStringField;
    Qr_CabCFAX: TStringField;
    Qr_Cabfonetra: TStringField;
    Qr_CabCOBS05: TStringField;
    Qr_CabCSITCLI: TFloatField;
    Qr_Coruf: TStringField;
    Tb_AssessorCANATDCD: TStringField;
    Tb_AssessorCANATDCC: TStringField;
    Qr_CabCFONE01: TStringField;
    Qr_CabCFONE02: TStringField;
    Qr_CabCFONE03: TStringField;
    Qr_CabP1CODECF: TFloatField;
    Qr_CabP1DATACF: TDateTimeField;
    Qr_Cabnomassessor: TStringField;
    Tb_Dardatanf01: TDateField;
    Tb_Dardatanf02: TDateField;
    Tb_Dardatanf03: TDateField;
    Tb_Dardatanf04: TDateField;
    Tb_Dardatanf05: TDateField;
    Tb_Darnumnf01: TFloatField;
    Tb_Darnumnf02: TFloatField;
    Tb_Darnumnf03: TFloatField;
    Tb_Darnumnf04: TFloatField;
    Tb_Darnumnf05: TFloatField;
    Tb_Darvalornf01: TFloatField;
    Tb_Darvalornf02: TFloatField;
    Tb_Darvalornf03: TFloatField;
    Tb_Darvalornf04: TFloatField;
    Tb_Darvalornf05: TFloatField;
    Tb_CCobtotjur: TFloatField;
    Tb_DarCDENOM: TStringField;
    Qr_Cabdesd07: TStringField;
    Qr_Cabdesd08: TStringField;
    Qr_Cabdesd09: TStringField;
    Qr_Cabdesd10: TStringField;
    Qr_CabP1NPEDORI: TFloatField;
    Qr_CabP1PEDORI1: TStringField;
    Qr_CabP1PEDORI2: TStringField;
    Qr_CorPDCODTIP: TFloatField;
    Src_Cab: TDataSource;
    Src_Cor: TDataSource;
    Qr_CorGRUPO: TStringField;
    Tb_EmpHOMEPAGE: TStringField;
    Qr_Cabnombco: TStringField;
    Tb_DarCRTOTCGRU: TFloatField;
    Tb_DarCRTOTSGRU: TFloatField;
    Qr_CabP1INCTB: TFloatField;
    Tb_EveCEORDIMP: TFloatField;
    Qr_CabP1CODV02: TFloatField;
    Qr_Cabnomv02: TStringField;
    Qr_CorP2CODAGRU: TFloatField;
    Qr_CabCCONSF: TFloatField;
    Qr_CabP1COMIS: TFloatField;
    Qr_CabP1COMV02: TFloatField;
    Qr_CorP2PCOMIS: TFloatField;
    Qr_CorP2VCOMIS: TFloatField;
    Qr_CorP2PCOM02: TFloatField;
    Qr_CorP2VCOM02: TFloatField;
    Qr_CabCDEC5834: TFloatField;
    Qr_CabCDEC5825: TFloatField;
    Qr_CorP2REPAS: TFloatField;
    Qr_CorP2BCINR: TFloatField;
    Qr_CorP2ICMSNR: TFloatField;
    Qr_CorP2ST_IVA: TFloatField;
    Qr_CorP2ST_REDUT: TFloatField;
    Qr_CorP2ST_ICMCRED: TFloatField;
    Qr_CorP2ST_ICMDEB: TFloatField;
    Qr_CorP2REDUTICM: TFloatField;
    Qr_CorP2DESCRAT: TFloatField;
    Qr_CorP2PDESCF: TFloatField;
    Qr_Cabsubmod: TFloatField;
    Qr_CorPDNOMCON: TStringField;
    Qr_CabCREVENDA_CP: TFloatField;
    Tb_DarCNOMRED: TStringField;
    Tb_DarPRAZO: TFloatField;
    Qr_CabCICMSR: TFloatField;
    Qr_Cabbaseicms: TFloatField;
    Qr_Cabicms: TFloatField;
    Qr_Cabvalipi: TFloatField;
    Tb_GC01GC1TIPGIR: TFloatField;
    Qr_Cabnomrota: TStringField;
    Qr_Cabcodrot: TFloatField;
    Qr_CabP1EMITENTE: TStringField;
    Qr_CorP2CONSIG: TFloatField;
    Qr_CorP2PCOTAB: TFloatField;
    Qr_CorP2PCOFPG: TFloatField;
    Qr_TDVCA_STCFILEST: TFloatField;
    Qr_TDVCA_STCQTDVIA: TFloatField;
    Qr_TDVCA_STCFILRAMCLI: TFloatField;
    Qr_TDVCA_STCFILRAMPRO: TFloatField;
    Qr_TDVCA_STCFILTPRO: TFloatField;
    Qr_TDVCA_STCFILGPRO: TFloatField;
    Qr_TDVCA_STCFILCPRO: TFloatField;
    Qr_TDVCA_STCFILLOC: TFloatField;
    Qr_TDVCA_STCFILBAI: TFloatField;
    Qr_TDVCA_STCFILGFOR: TFloatField;
    Qr_TDVCA_STCFILCONV: TFloatField;
    Qr_TDVCA_STCFILSUP: TFloatField;
    Qr_TDVCA_STCFILASS: TFloatField;
    Qr_TDVCA_STCFILREG: TFloatField;
    Qr_TDVCA_STCFILTRA: TFloatField;
    Qr_TDVCA_STCFILBCO: TFloatField;
    Qr_TDVCA_STCFILCC: TFloatField;
    Qr_TDVCA_STCFILDEP: TFloatField;
    Qr_TDVCA_STCFILUSR: TFloatField;
    Qr_TDVCA_STCFILCAR: TFloatField;
    Qr_TDVCA_STCFILFUN: TFloatField;
    Qr_PPRPPPVTIP: TStringField;
    Qr_PPRPPPVTAB: TStringField;
    Qr_PPRPPCODRED: TFloatField;
    Qr_PPRPPFLAG: TStringField;
    Qr_PPRPPCODPRO: TFloatField;
    Qr_PPRPPCODREG: TFloatField;
    Tb_PPRPPCODREG: TFloatField;
    Tb_DarCRMULTA: TFloatField;
    Qr_CorP2CFOSUBECF: TFloatField;
    Qr_Corcfop: TFloatField;
    Qr_Corcodred: TFloatField;
    Qr_Corcodcli: TFloatField;
    Tb_Darsaldodev: TFloatField;
    Tb_TDVCabDocTCINFADIC: TFloatField;
    Tb_EmpCODLOC: TFloatField;
    Qr_CabCNUM: TStringField;
    Qr_CabCCOMPL: TStringField;
    Qr_Cabcodloc_ibge: TFloatField;
    Qr_Cabcoduf_ibge: TFloatField;
    Qr_Cabcodreg_ibge: TFloatField;
    Qr_Cabcodpais_ibge: TFloatField;
    Qr_Cabinscmun: TStringField;
    Qr_Cabcnae: TStringField;
    Qr_Cabinscsuframa: TStringField;
    Qr_CorvFrete: TFloatField;
    Qr_CorvSeg: TFloatField;
    Qr_Cordtfab: TDateField;
    Qr_SerP2SITEM: TFloatField;
    Qr_CorclEnq: TStringField;
    Qr_CorCNPJProd: TStringField;
    Qr_CorcSelo: TStringField;
    Qr_CorcEnq: TStringField;
    Qr_CorqSelo: TFloatField;
    Qr_Corvpis: TFloatField;
    Qr_Corvcofins: TFloatField;
    Qr_Cabender_completo: TStringField;
    Tb_TipPed: TQuery;
    Tb_TipPedTPCODIGO: TFloatField;
    Tb_TipPedTPNOME: TStringField;
    Tb_TipPedTPENTRADA_NORMAL: TFloatField;
    Tb_TipPedTPENTRADA_CONSIGNADO: TFloatField;
    Tb_TipPedTPENTRADA_REM_VENDA: TFloatField;
    Tb_TipPedTPENTRADA_EST_TERC: TFloatField;
    Tb_TipPedTPSAIDA_NORMAL: TFloatField;
    Tb_TipPedTPSAIDA_CONSIGNADO: TFloatField;
    Tb_TipPedTPSAIDA_REM_VENDA: TFloatField;
    Tb_TipPedTPSAIDA_EST_TERC: TFloatField;
    Tb_TipPedTPCODUSR_INC: TFloatField;
    Tb_TipPedTPCODUSR_ALT: TFloatField;
    Src_TipPed: TDataSource;
    Tb_TipPedTPGERDUP: TFloatField;
    Tb_TipPedTPATIVO: TFloatField;
    Tb_TipPedTPDENTRO_SUBST_CFOP_ST: TFloatField;
    Tb_TipPedTPDENTRO_SUBST_CFOP_TRIB: TFloatField;
    Tb_TipPedTPDENTRO_SUBST_CFOP_ISENTO: TFloatField;
    Tb_TipPedTPFORA_SUBST_CFOP_ST: TFloatField;
    Tb_TipPedTPFORA_SUBST_CFOP_TRIB: TFloatField;
    Tb_TipPedTPFORA_SUBST_CFOP_ISENTO: TFloatField;
    Tb_TipPedTPDENTRO_CFOP_RV_ST: TFloatField;
    Tb_TipPedTPDENTRO_CFOP_RV_TRIB: TFloatField;
    Tb_TipPedTPDENTRO_CFOP_RV_ISENTO: TFloatField;
    Tb_TipPedTPDENTRO_CFOP_RVCP_ST: TFloatField;
    Tb_TipPedTPDENTRO_CFOP_RVCP_TRIB: TFloatField;
    Tb_TipPedTPDENTRO_CFOP_RVCP_ISENTO: TFloatField;
    Tb_TipPedTPDENTRO_CFOP_CF_ST: TFloatField;
    Tb_TipPedTPDENTRO_CFOP_CF_TRIB: TFloatField;
    Tb_TipPedTPDENTRO_CFOP_CF_ISENTO: TFloatField;
    Tb_TipPedTPFORA_CFOP_RV_ST: TFloatField;
    Tb_TipPedTPFORA_CFOP_RV_TRIB: TFloatField;
    Tb_TipPedTPFORA_CFOP_RV_ISENTO: TFloatField;
    Tb_TipPedTPFORA_CFOP_RVCP_ST: TFloatField;
    Tb_TipPedTPFORA_CFOP_RVCP_TRIB: TFloatField;
    Tb_TipPedTPFORA_CFOP_RVCP_ISENTO: TFloatField;
    Tb_TipPedTPFORA_CFOP_CF_ST: TFloatField;
    Tb_TipPedTPFORA_CFOP_CF_TRIB: TFloatField;
    Tb_TipPedTPFORA_CFOP_CF_ISENTO: TFloatField;
    Tb_TipPedTPCALCIMP_RV_DENTRO: TFloatField;
    Tb_TipPedTPCALCIMP_RVCP_DENTRO: TFloatField;
    Tb_TipPedTPCALCIMP_CF_DENTRO: TFloatField;
    Tb_TipPedTPCALCIMP_RV_FORA: TFloatField;
    Tb_TipPedTPCALCIMP_RVCP_FORA: TFloatField;
    Tb_TipPedTPCALCIMP_CF_FORA: TFloatField;
    Tb_TipPedTPDATHOR_INC: TDateTimeField;
    Tb_TipPedTPDATHOR_ALT: TDateTimeField;
    Tb_UF_TPPED: TQuery;
    Src_UF_TPPED: TDataSource;
    Tb_UF_TPPEDUFTP_CODEMP: TFloatField;
    Tb_UF_TPPEDUFTP_UF: TStringField;
    Tb_UF_TPPEDUFTP_CODTPPED: TFloatField;
    Tb_UF_TPPEDUFTP_CFOP_RV_ST: TFloatField;
    Tb_UF_TPPEDUFTP_CFOP_RV_TRIB: TFloatField;
    Tb_UF_TPPEDUFTP_CFOP_RV_ISENTO: TFloatField;
    Tb_UF_TPPEDUFTP_CALCIMP_RV: TFloatField;
    Tb_UF_TPPEDUFTP_CFOP_RVCP_ST: TFloatField;
    Tb_UF_TPPEDUFTP_CFOP_RVCP_TRIB: TFloatField;
    Tb_UF_TPPEDUFTP_CFOP_RVCP_ISENTO: TFloatField;
    Tb_UF_TPPEDUFTP_CALCIMP_RVCP: TFloatField;
    Tb_UF_TPPEDUFTP_CFOP_CF_ST: TFloatField;
    Tb_UF_TPPEDUFTP_CFOP_CF_TRIB: TFloatField;
    Tb_UF_TPPEDUFTP_CFOP_CF_ISENTO: TFloatField;
    Tb_UF_TPPEDUFTP_CALCIMP_CF: TFloatField;
    Tb_UF_TPPEDUFTP_SUBST_CFOP_ST: TFloatField;
    Tb_UF_TPPEDUFTP_SUBST_CFOP_TRIB: TFloatField;
    Tb_UF_TPPEDUFTP_SUBST_CFOP_ISENTO: TFloatField;
    Tb_UF_TPPEDTPNOME: TStringField;
    Tb_UF_TPPEDTPENTRADA_NORMAL: TFloatField;
    Tb_UF_TPPEDTPENTRADA_CONSIGNADO: TFloatField;
    Tb_UF_TPPEDTPENTRADA_REM_VENDA: TFloatField;
    Tb_UF_TPPEDTPENTRADA_EST_TERC: TFloatField;
    Tb_UF_TPPEDTPSAIDA_NORMAL: TFloatField;
    Tb_UF_TPPEDTPSAIDA_CONSIGNADO: TFloatField;
    Tb_UF_TPPEDTPSAIDA_REM_VENDA: TFloatField;
    Tb_UF_TPPEDTPSAIDA_EST_TERC: TFloatField;
    Tb_UF_TPPEDTPGERDUP: TFloatField;
    Tb_UF_TPPEDTPATIVO: TFloatField;
    Tb_UF_TPPEDTP_ENTRADA: TFloatField;
    Tb_UF_TPPEDTP_SAIDA: TFloatField;
    Qr_Cortotal_liquido: TFloatField;
    Src_Ser: TDataSource;
    Qr_SerP2SQTD_ATEN: TFloatField;
    Qr_SerP2SBCINSS: TFloatField;
    Qr_SerP2SREDINSS: TFloatField;
    Qr_SerP2SVINSS: TFloatField;
    Qr_SerP2SALIQINSS: TFloatField;
    Qr_SerP2SREDIRRF: TFloatField;
    Qr_SerP2SBCIRRF: TFloatField;
    Qr_SerP2SVIRRF: TFloatField;
    Qr_SerP2SALIQIRRF: TFloatField;
    Qr_CabP1TOTPIS: TFloatField;
    Qr_CabP1TOTCOFINS: TFloatField;
    Qr_CabP1RED_BCISSQN: TFloatField;
    Qr_CabP1BCINSS: TFloatField;
    Qr_CabP1RED_BCINSS: TFloatField;
    Qr_CabP1VINSS: TFloatField;
    Qr_CabP1BCIRRF: TFloatField;
    Qr_CabP1RED_BCIRRF: TFloatField;
    Qr_CabP1VIRRF: TFloatField;
    Qr_CabP1NFE_ENVXML: TFloatField;
    Tb_Imo01IM1FOTO: TBlobField;
    Tb_PPRPPGRADE: TStringField;
    Tb_GC02CODBAI: TFloatField;
    Tb_GC02NOMBAI: TStringField;
    Qr_Cabfpgto01: TStringField;
    Qr_Cabfpgto02: TStringField;
    Qr_Cabfpgto03: TStringField;
    Qr_Cabfpgto04: TStringField;
    Qr_Cabfpgto05: TStringField;
    Qr_Cabfpgto06: TStringField;
    Qr_Cabfpgto07: TStringField;
    Qr_Cabfpgto08: TStringField;
    Qr_Cabfpgto09: TStringField;
    Qr_Cabfpgto10: TStringField;
    Qr_Cabfrete_ciffob: TStringField;
    Qr_Cabimpobs: TIntegerField;
    Qr_Corimpmarca: TIntegerField;
    Qr_Cabprazoent: TStringField;
    Qr_Cabvalpro: TStringField;
    Qr_Cabformpag: TStringField;
    Qr_Ped02_Trocas: TQuery;
    Qr_Ped02_TrocasP2TRO_CODEMP: TFloatField;
    Qr_Ped02_TrocasP2TRO_ITEM: TFloatField;
    Qr_Ped02_TrocasP2TRO_CODPRO_ENTRA: TFloatField;
    Qr_Ped02_TrocasP2TRO_LOTE_ENTRA: TStringField;
    Qr_Ped02_TrocasP2TRO_QTD_ENTRA: TFloatField;
    Qr_Ped02_TrocasP2TRO_PCOUNI_ENTRA: TFloatField;
    Qr_Ped02_TrocasP2TRO_CODPRO_SAIDA: TFloatField;
    Qr_Ped02_TrocasP2TRO_LOTE_SAIDA: TStringField;
    Qr_Ped02_TrocasP2TRO_QTD_SAIDA: TFloatField;
    Qr_Ped02_TrocasP2TRO_PCOUNI_SAIDA: TFloatField;
    Qr_Ped02_TrocasP2TRO_DTVCTO_ENTRA: TDateTimeField;
    Qr_Ped02_TrocasP2TRO_DTVCTO_SAIDA: TDateTimeField;
    Qr_Ped02_TrocasP2TRO_LOTSEQ: TFloatField;
    Qr_Ped02_TrocasP2TRO_CHAVE: TFloatField;
    Qr_Ped02_Trocasnompro_entra: TStringField;
    Qr_Ped02_Trocasund_entra: TStringField;
    Qr_Ped02_Trocasnompro_saida: TStringField;
    Qr_Ped02_Trocasund_saida: TStringField;
    Qr_CabP1SEPAMB: TFloatField;
    Qr_Ped02_MP: TQuery;
    Qr_Ped02_MPP2MP_CODEMP: TFloatField;
    Qr_Ped02_MPP2MP_LOTSEQ: TFloatField;
    Qr_Ped02_MPP2MP_CHAVE: TFloatField;
    Qr_Ped02_MPP2MP_ITEM: TFloatField;
    Qr_Ped02_MPP2MP_CODPRO: TFloatField;
    Qr_Ped02_MPP2MP_QTDSOL: TFloatField;
    Qr_Ped02_MPP2MP_QTD_DEVOL: TFloatField;
    Qr_Ped02_MPP2MP_QTD_SOBRA: TFloatField;
    Qr_Ped02_MPP2MP_QTD_QUEBRA: TFloatField;
    Qr_Ped02_MPP2MP_QTD_OUTRET: TFloatField;
    Qr_Ped02_MPP2MP_PRECO: TFloatField;
    Qr_Ped02_MPP2MP_DATAHORA_SOL: TDateTimeField;
    Qr_Ped02_MPPDNOME: TStringField;
    Qr_Ped02_MPPDUND: TStringField;
    Qr_Ped02_MPPDCODGRU: TFloatField;
    Qr_Ped02_MPPDNOMGRU: TStringField;
    Qr_Cortipo_ped: TIntegerField;
    Qr_Cabpacredicms: TFloatField;
    Qr_Cabvlr_aprovcredicms: TFloatField;
    Qr_Cabvlr_aprovCIcmsTrib: TFloatField;
    Tb_EmpCODSERV_PREST: TStringField;
    Tb_EmpEMP_CNAE: TStringField;
    Qr_Cabecf_tipo: TStringField;
    Qr_CabP1QTDDECPU: TFloatField;
    Qr_Corqtddec: TIntegerField;
    Qr_Serqtddec: TIntegerField;
    Qr_CabP1SERIE: TStringField;
    Tb_EmpEMP_OPTSIMPLES: TFloatField;
    Tb_EmpEMP_INC_CULTURAL: TFloatField;
    Tb_Imo02nomfpgto: TStringField;
    Qr_Cabsupermicro: TIntegerField;
    Tb_Vei02nomfpgto: TStringField;
    Tb_Vei02V2DESCPQTD: TFloatField;
    Tb_Vei02totalsdesc: TFloatField;
    Qr_CorP2NOMPRO_ORI: TStringField;
    Qr_CorP2CODPRO_ORI: TStringField;
    Tb_AssessorCACODUSR_ALT: TFloatField;
    Tb_AssessorCADATA_REP: TDateTimeField;
    TB_DEPEN: TQuery;
    SRC_DEPEN: TDataSource;
    UP_DEPEN: TUpdateSQL;
    TB_DEPENDPTCODEMP: TFloatField;
    TB_DEPENDPTCODFUN: TFloatField;
    TB_DEPENDPTNOME: TStringField;
    TB_DEPENDPTDTNASC: TDateTimeField;
    TB_DEPENDPTCARTO: TStringField;
    TB_DEPENDPTREG: TStringField;
    TB_DEPENDPTLIVRO: TStringField;
    TB_DEPENDPTPGN: TStringField;
    TB_DEPENDPTDTCAD: TDateTimeField;
    TB_DEPENDPTDTUALT: TDateTimeField;
    TB_DEPENDPTCODUSR: TFloatField;
    TB_DEPENDPTPARENTESCO: TStringField;
    TB_DEPENDPT_DEPENDENTE: TFloatField;
    TB_DEPENDPTSEXO: TFloatField;
    TB_DEPENDPT_PARENTESCO: TFloatField;
    TB_DEPENDPT_DFISICO: TFloatField;
    TB_DEPENDPT_CPF: TStringField;
    TB_DEPENDPT_FALECIDO: TFloatField;
    TB_DEPENDPT_IMPOSTORENDA: TFloatField;
    TB_DEPENDPT_SALARIOFAMILIA: TFloatField;
    TB_DEPENDPT_AUXILI0CRECHE: TFloatField;
    TB_DEPENDPT_PENSAO: TFloatField;
    TB_DEPENDPT_PERCPENSAO: TFloatField;
    TB_DEPENDPT_TIPOCALC: TFloatField;
    SRC_CADDPF: TDataSource;
    U_CADDPF: TUpdateSQL;
    Tb_CADDPFDFCODEMP: TFloatField;
    Tb_CADDPFDFCODFUN: TFloatField;
    Tb_CADDPFDFNREG: TStringField;
    Tb_CADDPFDFORGEM: TStringField;
    Tb_CADDPFDFDT_CONC: TDateTimeField;
    Tb_CADDPFDFDT_VENC: TDateTimeField;
    Tb_CADDPFDFCNV: TStringField;
    Tb_CADDPFDFDT_EMICVN: TDateTimeField;
    Tb_CADDPFDFDT_VENCVN: TDateTimeField;
    Tb_CADDPFDFDTCAD: TDateTimeField;
    Tb_CADDPFDFDTUALT: TDateTimeField;
    Tb_CADDPFDFCODUSR: TFloatField;
    Tb_CADDPF: TQuery;
    Tb_FunCFCODEMP: TFloatField;
    Tb_FunCFCODFUN: TFloatField;
    Tb_FunCFNOMFUN: TStringField;
    Tb_FunCFENDERECO: TStringField;
    Tb_FunCFBAIRRO: TStringField;
    Tb_FunCFNOMLOC: TStringField;
    Tb_FunCFUF: TStringField;
    Tb_FunCFCODBAI: TFloatField;
    Tb_FunCFCODLOC: TFloatField;
    Tb_FunCFCEP: TStringField;
    Tb_FunCFDTNAS: TDateTimeField;
    Tb_FunCFNATURAL: TStringField;
    Tb_FunCFNAT_UF: TStringField;
    Tb_FunCFNACIONAL: TStringField;
    Tb_FunCFDTMIG: TDateTimeField;
    Tb_FunCFNIVEL_ESC: TFloatField;
    Tb_FunCFCNPF: TFloatField;
    Tb_FunCFRG: TStringField;
    Tb_FunCFDTRG: TDateTimeField;
    Tb_FunCFORGAORG: TStringField;
    Tb_FunCFCTPS: TStringField;
    Tb_FunCFRESERV: TStringField;
    Tb_FunCFTIT_ELE: TStringField;
    Tb_FunCFPIS: TStringField;
    Tb_FunCFHABIL: TStringField;
    Tb_FunCFEST_CIV: TFloatField;
    Tb_FunCFSEXO: TFloatField;
    Tb_FunCFCONJUGE: TStringField;
    Tb_FunCFPAI: TStringField;
    Tb_FunCFMAE: TStringField;
    Tb_FunCFN_DEP: TFloatField;
    Tb_FunCFCODCAR: TFloatField;
    Tb_FunCFCODDEP: TFloatField;
    Tb_FunCFDT_ADM: TDateTimeField;
    Tb_FunCFDT_DEM: TDateTimeField;
    Tb_FunCFDT_CAD: TDateTimeField;
    Tb_FunCFDT_UALT: TDateTimeField;
    Tb_FunCFCODUSR: TFloatField;
    Tb_FunCFSALARIO: TFloatField;
    Tb_FunCFGRATIF: TFloatField;
    Tb_FunCFSTATUS: TFloatField;
    Tb_FunCFOBSL01: TStringField;
    Tb_FunCFOBSL02: TStringField;
    Tb_FunCFOBSL03: TStringField;
    Tb_FunCFOBSL04: TStringField;
    Tb_FunCFCBO: TStringField;
    Tb_FunCFFONE: TStringField;
    Tb_FunCFCELULAR: TStringField;
    Tb_FunCFUFCTPS: TStringField;
    Tb_FunCFUFRG: TStringField;
    Tb_FunCFCATGRESV: TStringField;
    Tb_FunCFUFRESV: TStringField;
    Tb_FunCFTITZONA: TStringField;
    Tb_FunCFTITSECAO: TStringField;
    Tb_FunCFTITLOC: TFloatField;
    Tb_FunCFTITUF: TStringField;
    Tb_FunCFTITDTEM: TDateTimeField;
    Tb_FunCFCATGHB: TStringField;
    Tb_FunCFDTVLHB: TDateTimeField;
    Tb_FunCFLOCNATU: TFloatField;
    Tb_FunCFTIPEMP: TFloatField;
    Tb_FunCFDTEMCTPS: TDateTimeField;
    Tb_FunCFTIPOEMP: TFloatField;
    Tb_FunCFDEPTDESC: TStringField;
    Tb_FunCFCRGODESC: TStringField;
    Tb_FunCFCODSIND: TFloatField;
    Tb_FunCFNOMESIND: TStringField;
    Tb_FunCFIMPOSTO: TStringField;
    Tb_FunCFALTURA: TFloatField;
    Tb_FunCFPESO: TFloatField;
    Tb_FunCFNUMCALCA: TFloatField;
    Tb_FunCFNUMCAMISA: TFloatField;
    Tb_FunCFNUMCALCADO: TFloatField;
    Tb_FunCFPOSTO: TFloatField;
    Tb_FunCFTURNO: TFloatField;
    Tb_FunCFFOLGA: TFloatField;
    Tb_FunCFSERIECTPS: TStringField;
    Tb_FunCFDGTOCTPS: TStringField;
    Tb_FunCFTIPOPIS: TFloatField;
    Tb_FunCFDTPIS: TDateTimeField;
    Tb_FunCFBCOPIS: TFloatField;
    Tb_FunCFDTEMHB: TDateTimeField;
    Tb_FunCFMAIL: TStringField;
    Tb_FunCFRACA: TFloatField;
    Tb_FunCFDEFICIENCIA: TFloatField;
    Tb_FunCFTIPODEF: TStringField;
    Tb_FunCFGSANGUE: TStringField;
    Tb_FunCFTIPO: TFloatField;
    Tb_FunCFNR_REGISTRO: TStringField;
    Tb_FunCFORGAO_REGISTRO: TStringField;
    Tb_FunCFDT_REGISTRO: TDateTimeField;
    Tb_FunCFNUMERO: TStringField;
    Tb_FunCFCOMPL: TStringField;
    Tb_FunNOMCAR: TStringField;
    Tb_FunNOMDEP: TStringField;
    Qr_Cabfoneres: TStringField;
    Qr_CorPDPRZVAL_DIAS: TFloatField;
    Qr_CorPDPRZVAL: TFloatField;
    Qr_CorPDPRZVAL_ANOS: TFloatField;
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
    Tb_EmpEMP_CONT_UF: TStringField;
    Qr_CorP2PCREDSN: TFloatField;
    Qr_CabP1TPEMIS: TFloatField;
    Qr_CabP1CODSER: TFloatField;
    Qr_CabP1ICMS_BCFRE: TFloatField;
    Qr_CabP1ICMS_ALFRE: TFloatField;
    Qr_CabP1ICMS_VLFRE: TFloatField;
    Qr_CorP2UND: TStringField;
    Qr_CorPDUND: TStringField;
    Qr_CabP1ORC_LETRA: TStringField;
    Qr_CabP1ORC_FUNDO: TStringField;
    Qr_CabP1ORC_TAMANHO: TStringField;
    Qr_CabP1ORC_TABUTE: TStringField;
    Qr_CabP1ORC_PAPEL: TStringField;
    Qr_CabP1ORC_ROLO: TStringField;
    Qr_CabP1ORC_MTROLO: TStringField;
    Qr_CabP1ORC_CONTATO: TStringField;
    Qr_Cabp1orc_observ: TStringField;
    Qr_CabP1TIPO_ENTSAI: TFloatField;
    Qr_CabP1DATVIS: TDateTimeField;
    Qr_CabP1NUMVIS: TStringField;
    Qr_CorP2COMPLEMENTO: TMemoField;
    Qr_CorP2ALIQNR: TFloatField;
    Qr_ObsPNCHAVE_PEDORI: TFloatField;
    Tb_FunCFIMOB: TFloatField;
    Qr_AddExt: TQuery;
    Qr_AddExtP1AE_CODEMP: TFloatField;
    Qr_AddExtP1AE_LOTSEQ: TFloatField;
    Qr_AddExtP1AE_CHAVE: TFloatField;
    Qr_AddExtP1AE_CHAVE_NIVEL: TFloatField;
    Qr_AddExtP1AE_ORIGEM: TFloatField;
    Qr_AddExtP1AE_ITEM: TFloatField;
    Qr_AddExtP1AE_NOME: TStringField;
    Qr_AddExtP1AE_VALOR: TFloatField;
    Sr_AddExt: TDataSource;
    Tb_FImo: TQuery;
    Src_FImo: TDataSource;
    Up_FImo: TUpdateSQL;
    Tb_FImoCFI_CODEMP: TFloatField;
    Tb_FImoCFI_CODSEQ: TFloatField;
    Tb_FImoCFI_CODFUN: TFloatField;
    Tb_FImoCFI_CODIMO: TFloatField;
    Tb_FImoNOMIMO: TStringField;
    Qr_CorP2CSOSN: TFloatField;
    Qr_CorP2CSOSN_ORI: TFloatField;
    Qr_Corlote: TStringField;
    Qr_Corqtd_lote: TIntegerField;
    Qr_Corlote2: TStringField;
    Qr_Cordtvcto_lote: TStringField;
    Qr_CabP1DESPACES: TFloatField;
    Qr_CorP2VDESPACESRAT: TFloatField;
    Qr_CorP2VSEGRAT: TFloatField;
    Qr_SerTIPO: TStringField;
    Qr_CorP2CONTESP: TFloatField;
    Qr_CabIE_NFE: TStringField;
    Tb_EmpEMP_IND_ATIV: TStringField;
    Qr_CabMNegoc: TFloatField;
    Src_Con_Cli: TDataSource;
    Tb_Con_Cli: TQuery;
    Up_Con_Cli: TUpdateSQL;
    Tb_Con_CliCC_CODEMP: TFloatField;
    Tb_Con_CliCC_TIPO: TFloatField;
    Tb_Con_CliCC_CLIFOR: TFloatField;
    Tb_Con_CliCC_CODIGO: TFloatField;
    Tb_Con_CliCC_NOME: TStringField;
    Tb_Con_CliCC_DEPTO: TStringField;
    Tb_Con_CliCC_FONE01: TStringField;
    Tb_Con_CliCC_FONE02: TStringField;
    Tb_Con_CliCC_OBS: TMemoField;
    Tb_Con_CliCC_EMAIL: TStringField;
    Src_Con_For: TDataSource;
    Tb_Con_For: TQuery;
    up_Con_For: TUpdateSQL;
    Qr_CorP2VLRICMS_SN: TFloatField;
    Tb_Con_ForCC_CODEMP: TFloatField;
    Tb_Con_ForCC_TIPO: TFloatField;
    Tb_Con_ForCC_CLIFOR: TFloatField;
    Tb_Con_ForCC_CODIGO: TFloatField;
    Tb_Con_ForCC_NOME: TStringField;
    Tb_Con_ForCC_DEPTO: TStringField;
    Tb_Con_ForCC_FONE01: TStringField;
    Tb_Con_ForCC_FONE02: TStringField;
    Tb_Con_ForCC_OBS: TMemoField;
    Tb_Con_ForCC_EMAIL: TStringField;
    Qr_CorPDREFER: TStringField;
    Tb_EmpEMP_IND_NAT_PJ: TStringField;
    Tb_EmpEMP_CPF_RESPONS: TFloatField;
    Qr_CorP2VFRERAT: TFloatField;
    Qr_CorP2ALPIS: TFloatField;
    Qr_CorP2VALPIS: TFloatField;
    Qr_CorP2CST_PIS: TStringField;
    Qr_CorP2ALCOFINS: TFloatField;
    Qr_CorP2COFINS: TFloatField;
    Qr_CorP2CST_COFINS: TStringField;
    Qr_CabNOMFPGTO: TStringField;
    Qr_CabP1TOTDESICMS: TFloatField;
    Tb_Sol1: TQuery;
    Up_Sol1: TUpdateSQL;
    Src_Sol1: TDataSource;
    Tb_Sol2: TQuery;
    Up_Sol2: TUpdateSQL;
    Src_Sol2: TDataSource;
    Tb_Sol1CS1CODEMP: TFloatField;
    Tb_Sol1CS1CHAVE: TFloatField;
    Tb_Sol1CS1LOTSEQ: TFloatField;
    Tb_Sol1CS1CODSOL: TStringField;
    Tb_Sol1CS1OBS: TStringField;
    Tb_Sol1CS1DATA: TDateTimeField;
    Tb_Sol2CS2CODEMP: TFloatField;
    Tb_Sol2CS2CHAVE: TFloatField;
    Tb_Sol2CS2LOTSEQ: TFloatField;
    Tb_Sol2CS2CODPRO: TStringField;
    Tb_Sol2CS2QTDPREV: TFloatField;
    Tb_Sol2CS2QTDREAL: TFloatField;
    Tb_Sol1NOMSOL: TStringField;
    Tb_Sol2NOMPRO: TStringField;
    Tb_Sol2QTDPEN: TFloatField;
    Tb_Sol1CS1CODDEP: TFloatField;
    Tb_Sol1NOMDEP: TStringField;
    Tb_Sol1CS1STATUS: TFloatField;
    Qr_Cabperc_redut_icms: TFloatField;
    Tb_Imo01IM1CODPRO: TStringField;
    Tb_Imo01nomepro: TStringField;
    Qr_CabP1TOTVALAPROXTRIB: TFloatField;
    Qr_SerPDCLAS: TStringField;
    Tb_EveCEO_RESCISAO: TStringField;
    Tb_EveCEO_FGTS: TStringField;
    Tb_EveCEO_QUANTIFICAR: TStringField;
    Tb_EveCEO_SALMIN: TStringField;
    Tb_EveCEB_INSS: TFloatField;
    Tb_EveCEB_IRRF: TFloatField;
    Tb_EveCEO_RAIS: TStringField;
    Tb_EveCEO_SALFAM: TStringField;
    Tb_MoeMCODMOE: TFloatField;
    Tb_MoeMNOME: TStringField;
    Tb_MoeMSIMBOLO: TStringField;
    Tb_MoeMORIGEM: TStringField;
    Tb_MoeMCODUSR_INC: TFloatField;
    Tb_MoeMNOMUSR_INC: TStringField;
    Tb_MoeMDATHOR_INC: TDateTimeField;
    Tb_MoeMCODUSR_ALT: TFloatField;
    Tb_MoeMNOMUSR_ALT: TStringField;
    Tb_MoeMDATHOR_ALT: TDateTimeField;
    Tb_IndICODMOE: TFloatField;
    Tb_IndIDATA: TDateTimeField;
    Tb_IndIVLRPARCPR: TFloatField;
    Tb_IndIGVLRPARVDA: TFloatField;
    Tb_IndIVLRCOMCPR: TFloatField;
    Tb_IndIVLRCOMVDA: TFloatField;
    Tb_IndICODUSR_INC: TFloatField;
    Tb_IndINOMUSR_INC: TStringField;
    Tb_IndIDATHOR_INC: TDateTimeField;
    Tb_IndICODUSR_ALT: TFloatField;
    Tb_IndINOMUSR_ALT: TStringField;
    Tb_IndIDATHOR_ALT: TDateTimeField;
    Tb_Imo01IDIMO: TStringField;
    Qr_CorP2COMPRA_XPED: TStringField;
    Qr_CorP2COMPRA_NITEMPED: TFloatField;
    Qr_CorP2IMP_IMP_ALIQ: TFloatField;
    Qr_CorP2IMP_IMP_VALOR: TFloatField;
    Qr_CorP2IMP_IMP_VDESDPADU: TFloatField;
    Qr_CorP2IMP_IMP_VII: TFloatField;
    Qr_CorP2IMP_IMP_VIOF: TFloatField;
    Qr_CorP2IMP_IMP_VBC: TFloatField;
    Qr_CorP2IPI_VBC: TFloatField;
    Qr_CorP2PIS_VBC: TFloatField;
    Qr_CorP2COFINS_VBC: TFloatField;
    Qr_CorP2IMP_TPVIATRANSP: TFloatField;
    Qr_CorP2IMP_VAFRMM: TFloatField;
    Qr_CorP2IMP_TPINTERMEDIARIO: TFloatField;
    Qr_CorP2IMP_CNPJ: TStringField;
    Qr_CorP2IMP_UFTERCEIRO: TStringField;
    Qr_CabpercAproxTrib: TFloatField;
    Tb_DarCROBS: TMemoField;
    Qr_CorP2CPUFDEST: TFloatField;
    Qr_CorP2ICMSUFDEST: TFloatField;
    Qr_CorP2ICMSINTER: TFloatField;
    Qr_CorP2ICMSINTERPART: TFloatField;
    Qr_CorP2VFCPUDEST: TFloatField;
    Qr_CorP2VICMSUFDEST: TFloatField;
    Qr_CorP2VICMSUFREMET: TFloatField;
    Qr_CorP2VBCUFDEST: TFloatField;
    Qr_CorP2CEST: TStringField;
    Qr_CabP1OBS1: TMemoField;
    Qr_CabP1OBS2: TMemoField;
    Qr_CabP1OBS3: TMemoField;
    Qr_CabmP2VBCUFDEST: TFloatField;
    Qr_CabmP2VFCPUDEST: TFloatField;
    Qr_CabmP2VICMSUFDEST: TFloatField;
    Qr_CabmP2VICMSUFREMET: TFloatField;
    Qr_Corlote3: TStringField;
    Qr_CabP1TRUNCARREND: TFloatField;
    Qr_Cabmodelonf: TStringField;
    Qr_CorP2VALAPROXTRIB: TFloatField;
    Tb_PPRPPDATHOR_ALT: TDateTimeField;
    Tb_PPRPPDATHOR_INC: TDateTimeField;
    Tb_EmpEMP_AUTXML_CNPJCPF: TStringField;
    Tb_CCobfone: TStringField;
    Tb_CCobfax: TStringField;
    Qr_Cabcalc_P1NFCE_NUMERO: TFloatField;
    Qr_Cabcalc_P1NFCE_SERIE: TStringField;
    Qr_Cabcalc_P1NFCE_SITUACAO: TFloatField;
    Qr_Cabcalc_P1NFCE_CHV_ACESSO: TStringField;
    Qr_Cabcalc_P1NFCE_NPROT: TStringField;
    Qr_Cabcalc_P1NFCE_MODELO: TStringField;
    Qr_Cabcalc_P1NFCE_DATA: TDateField;
    Qr_CabP1NFCE_DATA: TDateField;
    Qr_CabP1NFCE_NUMERO: TFloatField;
    Qr_CabP1NFCE_SERIE: TStringField;
    Qr_CabP1NFCE_SITUACAO: TFloatField;
    Qr_CabP1NFCE_MODELO: TStringField;
    Qr_CabP1NFCE_CHV_ACESSO: TStringField;
    Qr_CabP1NFCE_NPROT: TStringField;
    Qr_CorPDREGMS: TStringField;
    Qr_Cabisentoie: TStringField;
    Qr_Cabnumdoc: TStringField;
    Qr_CorPDIPI_CST: TStringField;
    Qr_CorPDIPI_CENQ: TStringField;
    Tb_PPRPPCODCLI: TFloatField;
    Tb_PPRPPID_ANO: TFloatField;
    Tb_PPRPPID: TFloatField;
    Qr_PPRPPCODCLI: TFloatField;
    Qr_PPRPPID_ANO: TFloatField;
    Qr_PPRPPID: TFloatField;
    Tb_PPRPPUF: TStringField;
    Qr_PPRPPUF: TStringField;
    Qr_Cabtotalcusto: TFloatField;
    Qr_Cabtotalpcofabrica: TFloatField;
    Qr_Corprecounitario: TFloatField;
    Qr_CorPDEMBPAD: TFloatField;
    Qr_Cabcsosn: TIntegerField;
    Qr_Cabcalc_P1DATDOC: TDateField;
    Qr_Cortotalitemcomipi: TFloatField;
    Qr_Cabcalc_P1ORC_METAL_TIPOS_CORTES: TStringField;
    Qr_Cabcalc_P1ORC_METAL_QTD_VIAS_PROD: TStringField;
    Qr_CorPDNOME_COMPRA: TStringField;
    Qr_CorPDCOMPRA_UND: TStringField;
    Qr_CorPDLADO: TStringField;
    Qr_CorPDPRAT: TStringField;
    Qr_CorPDRUA: TStringField;
    Qr_Corendereco: TStringField;
    Qr_Cabcalc_p1datcon: TDateTimeField;
    Qr_Corcalc_endereco_completo: TStringField;
    Qr_Cabcalc_p1codcon: TFloatField;
    Qr_Cabcalc_p1datemb: TDateTimeField;
    Qr_Cabcalc_nomemb: TStringField;
    Qr_Cabcalc_p1codemb: TFloatField;
    Qr_Cabcalc_p1codsep: TFloatField;
    Qr_Cabcalc_p1datsep: TDateTimeField;
    Qr_Cabcalc_nomsep: TStringField;
    Qr_Cabcalc_nomcon: TStringField;
    Qr_CorP2CBENEF: TStringField;
    Qr_Cabobs_cbenef: TStringField;
    Tb_DarCRID_NEW: TFloatField;
    Tb_DarCRID_PED01_NEW: TFloatField;
    Tb_DarCRID_LDR_NEW: TFloatField;
    Tb_Trocas_CabTCID_NEW: TFloatField;
    Tb_Trocas_EntTEID_NEW: TFloatField;
    Tb_Trocas_EntTEID_CAB_NEW: TFloatField;
    Tb_Trocas_OriTOID_NEW: TFloatField;
    Tb_Trocas_OriTOID_CAB_NEW: TFloatField;
    Tb_Trocas_OriTOID_CP_DEV_NEW: TFloatField;
    Tb_Trocas_SaiTSID_NEW: TFloatField;
    Tb_Trocas_SaiTSID_CAB_NEW: TFloatField;
    Qr_SerP2SDESC_COMP: TMemoField;
    Qr_CorP2IRRF_PERC: TFloatField;
    Qr_CorP2CSLL_PERC: TFloatField;
    Qr_CorP2CSLL_VALOR: TFloatField;
    Qr_CorP2IRRF_VALOR: TFloatField;
    Qr_CabpGerarTagDifal: TIntegerField;
    Qr_CabP1CSLL: TFloatField;
    Qr_CabP1IRRF: TFloatField;
    Tb_EmpEMP_WHATSAPP_AUTO: TStringField;
    Tb_EmpEMP_WHATSAPP_ID: TStringField;
    Qr_Cabcalc_p1nome_prod: TStringField;
    src_ImpRel: TDataSource;
    Tb_UF_TPPEDUFTP_REQUER_PEDORI: TFloatField;
    Qr_CorP2VICMSDES: TFloatField;
    Qr_CorP2MOTIVODESONERACAO: TFloatField;
    Tb_TipPedTPFINNFE: TFloatField;
    Qr_CorP2CBS_CST: TStringField;
    Qr_CorP2CODCLASSTRIB: TStringField;
    Qr_CorP2CBS_ALIQ: TFloatField;
    Qr_CorP2CBS_BC: TFloatField;
    Qr_CorP2CBS_VALOR: TFloatField;
    Qr_CorP2IBS_UF_ALIQ: TFloatField;
    Qr_CorP2IBS_UF_VALOR: TFloatField;
    Qr_CorP2IBS_MUN_ALIQ: TFloatField;
    Qr_CorP2IBS_MUN_VALOR: TFloatField;
    Qr_CorP2CBS_DEV_TRIB: TFloatField;
    Qr_CorP2NRECEITUARIO: TStringField;
    procedure Tb_OPAfterDelete(DataSet: TDataSet);
    procedure Tb_EmpBeforeInsert(DataSet: TDataSet);
    procedure Tb_EmpAfterInsert(DataSet: TDataSet);
    procedure Qr_SerCalcFields(DataSet: TDataSet);
    procedure Qr_CorCalcFields(DataSet: TDataSet);
    procedure Qr_CabCalcFields(DataSet: TDataSet);
    procedure Qr_RMenCalcFields(DataSet: TDataSet);
    procedure Tb_PPRCalcFields(DataSet: TDataSet);
    procedure Tb_CCobCalcFields(DataSet: TDataSet);
    procedure Tb_Dep_FolhaBeforeInsert(DataSet: TDataSet);
    procedure Tb_Dep_FolhaAfterInsert(DataSet: TDataSet);
    procedure Tb_EveBeforeInsert(DataSet: TDataSet);
    procedure Tb_EveAfterInsert(DataSet: TDataSet);
    procedure Tb_FunBeforeInsert(DataSet: TDataSet);
    procedure Tb_FunAfterInsert(DataSet: TDataSet);
    procedure Tb_FunBeforePost(DataSet: TDataSet);
    procedure Tb_FunCalcFields(DataSet: TDataSet);
    procedure Tb_EvePrefCalcFields(DataSet: TDataSet);
    procedure Tb_EvePrefAfterInsert(DataSet: TDataSet);
    procedure Tb_EvePrefBeforePost(DataSet: TDataSet);
    procedure Tb_EveCalcFields(DataSet: TDataSet);
    procedure Tb_EvePrefBeforeEdit(DataSet: TDataSet);
    procedure Tb_PPRAfterInsert(DataSet: TDataSet);
    procedure c(DataSet: TDataSet);
    procedure Tb_ArqBeforePost(DataSet: TDataSet);
    procedure Tb_CFRBeforePost(DataSet: TDataSet);
    procedure Tb_Dep_FolhaBeforePost(DataSet: TDataSet);
    procedure Tb_EmpBeforePost(DataSet: TDataSet);
    procedure Tb_EveBeforePost(DataSet: TDataSet);
    procedure Tb_LFolBeforePost(DataSet: TDataSet);
    procedure Tb_ParFPagBeforePost(DataSet: TDataSet);
    procedure Tb_OPBeforePost(DataSet: TDataSet);
    procedure Tb_FecBeforePost(DataSet: TDataSet);
    procedure Tb_JCBeforeInsert(DataSet: TDataSet);
    procedure Tb_JCAfterInsert(DataSet: TDataSet);
    procedure Tb_JCBeforePost(DataSet: TDataSet);
    procedure e(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure Tb_FDiaBeforePost(DataSet: TDataSet);
    procedure Tb_MoeBeforeInsert(DataSet: TDataSet);
    procedure Tb_MoeAfterInsert(DataSet: TDataSet);
    procedure Tb_MoeAfterCancel(DataSet: TDataSet);
    procedure Tb_MoeBeforePost(DataSet: TDataSet);
    procedure Tb_IndBeforePost(DataSet: TDataSet);
    procedure Tb_MVeiAfterCancel(DataSet: TDataSet);
    procedure Tb_MVeiAfterInsert(DataSet: TDataSet);
    procedure Tb_MVeiBeforeInsert(DataSet: TDataSet);
    procedure Tb_MVeiBeforePost(DataSet: TDataSet);
    procedure Tb_MVeiCalcFields(DataSet: TDataSet);
    procedure Tb_Imo01AfterCancel(DataSet: TDataSet);
    procedure Tb_Imo01AfterInsert(DataSet: TDataSet);
    procedure Tb_Imo01BeforeInsert(DataSet: TDataSet);
    procedure Tb_Imo01BeforePost(DataSet: TDataSet);
    procedure Tb_Imo01CalcFields(DataSet: TDataSet);
    procedure Tb_Vei01AfterCancel(DataSet: TDataSet);
    procedure Tb_Vei01AfterInsert(DataSet: TDataSet);
    procedure Tb_Vei01BeforeInsert(DataSet: TDataSet);
    procedure Tb_Vei01BeforePost(DataSet: TDataSet);
    procedure Tb_Vei01CalcFields(DataSet: TDataSet);
    procedure Tb_Imo02CalcFields(DataSet: TDataSet);
    procedure Tb_Imo02AfterCancel(DataSet: TDataSet);
    procedure Tb_Imo02AfterInsert(DataSet: TDataSet);
    procedure Tb_Imo02BeforeInsert(DataSet: TDataSet);
    procedure Tb_Imo02BeforePost(DataSet: TDataSet);
    procedure Tb_Vei02AfterCancel(DataSet: TDataSet);
    procedure Tb_Vei02BeforePost(DataSet: TDataSet);
    procedure Tb_Vei02CalcFields(DataSet: TDataSet);
    procedure Tb_MImoAfterCancel(DataSet: TDataSet);
    procedure Tb_MImoAfterInsert(DataSet: TDataSet);
    procedure Tb_MImoBeforeInsert(DataSet: TDataSet);
    procedure Tb_MImoBeforePost(DataSet: TDataSet);
    procedure Tb_MImoCalcFields(DataSet: TDataSet);
    procedure Tb_HelpCalcFields(DataSet: TDataSet);
    procedure Tb_HelpBeforePost(DataSet: TDataSet);
    procedure Tb_DupRecCalcFields(DataSet: TDataSet);
    procedure Tb_DupDRecCalcFields(DataSet: TDataSet);
    procedure Qr_PedFPCalcFields(DataSet: TDataSet);
    procedure Tb_AssessorBeforeInsert(DataSet: TDataSet);
    procedure Tb_AssessorCalcFields(DataSet: TDataSet);
    procedure Tb_Trocas_CabCalcFields(DataSet: TDataSet);
    procedure Tb_LBR2CalcFields(DataSet: TDataSet);
    procedure Tb_LBR1CalcFields(DataSet: TDataSet);
    procedure Tb_LBR1AfterInsert(DataSet: TDataSet);
    procedure Tb_DarCalcFields(DataSet: TDataSet);
    procedure Tb_PPRBeforePost(DataSet: TDataSet);
    procedure Tb_AssessorAfterInsert(DataSet: TDataSet);
    procedure Qr_Ped02_TrocasCalcFields(DataSet: TDataSet);
    procedure Tb_FImoCalcFields(DataSet: TDataSet);
    procedure Tb_FImoBeforePost(DataSet: TDataSet);
    procedure Tb_Con_CliAfterInsert(DataSet: TDataSet);
    procedure Tb_Con_ForAfterInsert(DataSet: TDataSet);
    procedure Tb_Con_CliBeforePost(DataSet: TDataSet);
    procedure Tb_Con_ForBeforePost(DataSet: TDataSet);
    procedure Tb_Sol2CalcFields(DataSet: TDataSet);
    procedure Tb_Sol1CalcFields(DataSet: TDataSet);
    procedure Tb_PPRBeforeDelete(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM2: TDM2;
  mufnf: String;
  mImpMarca: Integer;
  par_calcger: boolean=false;
  mgeradup: Boolean;
  mValorDup: Real;

implementation

uses S_DM1, Func, lerarq, S_EvePref, S_DM4, DateUtils, func_excecoes;

{$R *.dfm}


procedure TDM2.Tb_OPAfterDelete(DataSet: TDataSet);
begin
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
except
   MessageDlg('Ja Existe um Registro igual a Este Click em Cancelar!',mtInformation,[mbOk],0);
   end;

end;

procedure TDM2.Tb_EmpBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.SQl.Clear;
DM1.Query1.SQL.Add('Select max(CODEMP) from CADEMP');
DM1.Query1.Open;
cod:=DM1.Query1.Fields[0].AsInteger+1;
end;

procedure TDM2.Tb_EmpAfterInsert(DataSet: TDataSet);
begin
Tb_EmpCODEMP.Value:=cod;
end;

procedure TDM2.Qr_SerCalcFields(DataSet: TDataSet);
begin
Qr_Sertotal.Value:=Qr_SerP2SPRECO.Value*Qr_SerP2SQTD.Value;
if DM2.Qr_Cab.Active then
   begin
   if DM2.Qr_CabP1QTDDECPU.IsNull then
      DM2.Qr_Serqtddec.AsInteger:=-1
   else
      DM2.Qr_Serqtddec.AsInteger:=DM2.Qr_CabP1QTDDECPU.AsInteger;
   end;
end;

procedure TDM2.Qr_CorCalcFields(DataSet: TDataSet);
var
Query_Lotes: TQuery;
mPrecoUni:Real;

begin


try
if Log_TipoLote=1 then
   begin
   if DM2.Qr_CabP1TIPO.AsInteger=0 then
      begin
      DM2.Qr_Corlote.Value:='';
      DM2.Qr_Corqtd_lote.Value:=0;

      DM2.Qr_Corlote2.Value:='';
      DM2.Qr_Corlote3.Value:='';
      DM2.Qr_Cordtvcto_lote.Value:='';

      end
   else
      begin
      DM2.Qr_Corqtd_lote.AsInteger:=0;
      Query_Lotes:=TQuery.Create(nil);
      Query_Lotes.DatabaseName:='SG_ASSOC';
      Query_Lotes.Close;
      Query_Lotes.SQL.clear;
      Query_Lotes.SQL.Add('SELECT P2LM_LOTE AS CLNUMERO,P2LM_DTVCTO AS CLDTVCTO, '
                         +'       P2LM_QTD AS CLQTD FROM CADP02_LOTES '
                         +' where P2LM_CHAVE=:CHAVE and P2LM_LOTSEQ=:LOTSEQ and '
                         +' P2LM_CODEMP=:CODEMP '
                         +' and P2LM_CODPRO=:CODPRO '
                         +' and P2LM_ITEM=:ITEM ');

      Query_Lotes.ParamByName('CHAVE').AsFloat :=DM2.Qr_CorP2CHAVE.AsInteger;
      Query_Lotes.ParamByName('LOTSEQ').AsFloat:=DM2.Qr_CorP2LOTSEQ.AsInteger;
      Query_Lotes.ParamByName('CODEMP').AsFloat:=DM2.Qr_CorP2CODEMP.AsInteger;
      Query_Lotes.ParamByName('CODPRO').AsFloat  :=DM2.Qr_CorP2CODPRO.AsFloat;
      Query_Lotes.ParamByName('ITEM').AsInteger  :=DM2.Qr_CorP2ITEM.Asinteger;
      Query_lotes.Open;
      if Query_Lotes.IsEmpty then
         begin
         DM2.Qr_Corlote.Value:=insere2(DM2.Qr_CorP2LOTE.AsString,' ',10);
         DM2.Qr_Corlote2.Value:=DM2.Qr_Corlote2.Value+'/'+insere(Formatfloat(mcasqtd, DM2.Qr_CorP2QTD.AsFloat),' ',07);
         DM2.Qr_Corlote3.Value:=DM2.Qr_Corlote3.Value+'/'+insere(Formatfloat(mcasqtd, DM2.Qr_CorP2QTD.AsFloat),' ',07);

         //DM2.Qr_Corlote2.Value:=DM2.Qr_CorP2LOTE.AsString;
         if DM2.Qr_CorP2DTVCTO.AsDateTime>pdatanula then
            begin

            DM2.Qr_Corlote.Value       :=DM2.Qr_Corlote.Value       +' '+FormatDateTime('DD/MM/YY', DM2.Qr_CorP2DTVCTO.AsDateTime)+' ';
            DM2.Qr_Cordtvcto_lote.Value:=DM2.Qr_Cordtvcto_lote.Value+' '+FormatDateTime('DD/MM/YY', DM2.Qr_CorP2DTVCTO.AsDateTime)+' ';

            end
         else
            begin
            DM2.Qr_Corlote.Value:=DM2.Qr_Corlote.Value+' '+insere(' ',' ',08)+' ';
            DM2.Qr_Cordtvcto_lote.Value:=DM2.Qr_Cordtvcto_lote.Value+' '+insere(' ',' ',08)+' ';

           end;

         end
      else
         begin
         DM2.Qr_Corlote.Value:='';
         DM2.Qr_Corlote2.Value:='';
         DM2.Qr_Corlote3.Value:='';
         DM2.Qr_Cordtvcto_lote.Value:='';

         While not Query_Lotes.Eof do
            begin
            DM2.Qr_Corqtd_lote.AsInteger:=DM2.Qr_Corqtd_lote.AsInteger+1;

            DM2.Qr_Corlote.Value:=DM2.Qr_Corlote.Value+insere2(Query_Lotes.FieldbyName('CLNUMERO').AsString,' ',10);

            if trim(dm2.Qr_Corlote2.AsString)<>'' then
                DM2.Qr_Corlote2.Value:=DM2.Qr_Corlote2.Value+chr(13);
            if trim(dm2.Qr_Corlote3.AsString)<>'' then
                DM2.Qr_Corlote3.Value:=DM2.Qr_Corlote3.Value+']';

            DM2.Qr_Corlote2.Value:=DM2.Qr_Corlote2.Value+Query_Lotes.FieldbyName('CLNUMERO').AsString;
            DM2.Qr_Corlote3.Value:=DM2.Qr_Corlote3.Value+'['+Query_Lotes.FieldbyName('CLNUMERO').AsString;

            if Query_Lotes.FieldbyName('CLDTVCTO').AsDateTime>pdatanula then
               begin
               DM2.Qr_Corlote.Value:=DM2.Qr_Corlote.Value+' '+FormatDateTime('DD/MM/YY', Query_Lotes.FieldbyName('CLDTVCTO').AsDateTime)+' ';
               if trim(DM2.Qr_Cordtvcto_lote.AsString)<>'' then
                  DM2.Qr_Cordtvcto_lote.Value:=DM2.Qr_Cordtvcto_lote.Value+chr(13);
               DM2.Qr_Cordtvcto_lote.Value:=DM2.Qr_Cordtvcto_lote.Value+FormatDateTime('DD/MM/YY', Query_Lotes.FieldbyName('CLDTVCTO').AsDateTime)+' '

               end
            else
               begin
               DM2.Qr_Corlote.Value:=DM2.Qr_Corlote.Value+' '+insere(' ',' ',08)+' ';
               if trim(DM2.Qr_Cordtvcto_lote.AsString)<>'' then
                  DM2.Qr_Cordtvcto_lote.Value:=DM2.Qr_Cordtvcto_lote.Value+chr(13);

               DM2.Qr_Cordtvcto_lote.Value:=DM2.Qr_Cordtvcto_lote.Value+insere(' ',' ',08)+' ';
               end;

            DM2.Qr_Corlote.Value:=DM2.Qr_Corlote.Value+insere(Formatfloat(mcasqtd, Query_Lotes.FieldbyName('CLQTD').AsFloat),' ',07)+'|';
            DM2.Qr_Corlote2.Value:=DM2.Qr_Corlote2.Value+'/'+Formatfloat(mcasqtd, Query_Lotes.FieldbyName('CLQTD').AsFloat);
            DM2.Qr_Corlote3.Value:=DM2.Qr_Corlote3.Value+'/'+Formatfloat(mcasqtd, Query_Lotes.FieldbyName('CLQTD').AsFloat);

            Query_Lotes.Next;
            end;
         end;
      if trim(dm2.Qr_Corlote3.AsString)<>'' then
        DM2.Qr_Corlote3.Value:=DM2.Qr_Corlote3.Value+']';

      FreeAndNil(Query_lotes);
      end;
   end;
if DM1.Tb_PargerPFORPEDPAD.asinteger<>3 then
   DM2.Qr_Corqtd_lote.AsInteger:=0;// se valor acima de 0 reflete nas tabulacoes personalizadas

if DM2.Qr_CorP2DTVCTO.Asdatetime>pdatanula then
   begin
   DM2.Qr_Cordtfab.Value:=DM2.Qr_CorP2DTVCTO.Asdatetime;
   if DM2.Qr_CorPDPRZVAL_DIAS.AsFloat>0 then
      DM2.Qr_Cordtfab.Value:=IncDay(DM2.Qr_CorP2DTVCTO.Asdatetime, DM2.Qr_CorPDPRZVAL_DIAS.AsInteger*-1);
   if DM2.Qr_CorPDPRZVAL.AsFloat>0 then
      DM2.Qr_Cordtfab.Value:=IncMonth(DM2.Qr_CorP2DTVCTO.Asdatetime, DM2.Qr_CorPDPRZVAL.AsInteger*-1);
   if DM2.Qr_CorPDPRZVAL_ANOS.AsFloat>0 then
      DM2.Qr_Cordtfab.Value:=IncYear(DM2.Qr_CorP2DTVCTO.Asdatetime, DM2.Qr_CorPDPRZVAL_ANOS.AsInteger*-1);
   end;
if Qr_CorP2LISTA.Value=1 then
   Qr_Corlista.Value:='+'
else if Qr_CorP2LISTA.Value=2 then
   Qr_Corlista.Value:='-';
mPrecoUni:=Arredonda(DM2.Qr_CorP2PRECO.AsFloat,
iif(DM2.Qr_CabP1QTDDECPU.AsInteger>0,DM2.Qr_CabP1QTDDECPU.AsInteger,DM1.Tb_PargerPCASASPU.AsInteger));
DM2.Qr_Cortotal.Value:=(DM2.Qr_CorP2QTD.Value*mPrecoUni);
if DM2.Qr_CabP1TRUNCARREND.AsInteger=1 then // truncar
   DM2.Qr_Cortotal.Value:=truncar(DM2.Qr_Cortotal.Value,2)
else
   DM2.Qr_Cortotal.Value:=arredonda(DM2.Qr_Cortotal.Value,2);
DM2.Qr_Corprecounitario.Value := DM2.Qr_CorP2PRECO.AsFloat;

DM2.Qr_Corendereco.Value:=DM2.Qr_CorPDSECAO.AsString;
DM2.Qr_Corcalc_endereco_completo.Value:='';


if length(trim(DM2.Qr_CorPDPRAT.AsString))>0 then
   DM2.Qr_Corcalc_endereco_completo.Value:=DM2.Qr_Corcalc_endereco_completo.Value+iif(length(DM2.Qr_Corcalc_endereco_completo.AsString)>1,' ','')+'Prat:'+DM2.Qr_CorPDPRAT.AsString;

if length(trim(DM2.Qr_CorPDLADO.AsString))>0 then
   DM2.Qr_Corcalc_endereco_completo.Value:=DM2.Qr_Corcalc_endereco_completo.Value+iif(length(DM2.Qr_Corcalc_endereco_completo.AsString)>1,' ','')+'Lado:'+DM2.Qr_CorPDLADO.AsString;


if length(trim(DM2.Qr_CorPDRUA.AsString))>0 then
   DM2.Qr_Corcalc_endereco_completo.Value:=DM2.Qr_Corcalc_endereco_completo.Value+iif(length(DM2.Qr_Corcalc_endereco_completo.AsString)>1,' ','')+'Rua:'+DM2.Qr_CorPDRUA.AsString;



if length(trim(DM2.Qr_CorPDSECAO.AsString))>0 then
   DM2.Qr_Corcalc_endereco_completo.Value:=DM2.Qr_Corcalc_endereco_completo.Value+iif(length(DM2.Qr_Corcalc_endereco_completo.AsString)>1,' ','')+'Seção:'+DM2.Qr_CorPDSECAO.AsString;




if DM2.Qr_Corpdembpad.AsFloat>0 then
   begin
   try
      DM2.Qr_Corprecounitario.Value := Arredonda( (DM2.Qr_CorP2PRECO.AsFloat / DM2.Qr_Corpdembpad.AsFloat) , 3)
   except
      DM2.Qr_Corprecounitario.Value := DM2.Qr_CorP2PRECO.AsFloat;
      end;
   end;
//DM2.Qr_Cortotal_liquido.Value:=DM2.Qr_Cortotal.AsFloat-DM2.Qr_CorP2TOTDES.AsFloat;
DM2.Qr_Cortotal_liquido.Value:=DM2.Qr_Cortotal.AsFloat-DM2.Qr_CorP2TOTDES.AsFloat

                          +(DM2.Qr_CorP2VALIPI.AsFloat+DM2.Qr_CorP2VSEGRAT.AsFloat+DM2.Qr_CorP2VDESPACESRAT.AsFloat+DM2.Qr_CorP2VFRERAT.AsFloat+DM2.Qr_CorP2ICMSR.AsFloat);




DM2.Qr_Cortotalitemcomipi.Value:=DM2.Qr_Cortotal.AsFloat+DM2.Qr_CorP2VALIPI.AsFloat;
DM2.Qr_Coruf.Value:=mufnf;

DM2.Qr_Corimpmarca.Value:=mImpMarca;
DM2.Qr_Corcfop.Value:=DM2.Qr_CorP2CFO.AsFloat;
if DM2.Qr_Cab.Active then
   begin
   if (DM2.Qr_CabP1NUMCF.AsFloat>0) or (DM2.Qr_Cabcalc_P1NFCE_NUMERO.AsFloat>0) then
      begin
      if DM2.Qr_CorP2CFOSUBECF.AsFloat<>0 then
         DM2.Qr_Corcfop.Value:=DM2.Qr_CorP2CFOSUBECF.AsFloat;
      end;
   DM2.Qr_Corcodred.AsFloat:=DM2.Qr_CabCCODRED.AsFloat;
   DM2.Qr_Corcodcli.AsFloat:=DM2.Qr_CabP1CODCLI.AsFloat;
   DM2.Qr_Cortipo_ped.AsInteger:=DM2.Qr_CabP1TIPO.AsInteger;

   if DM2.Qr_CabP1QTDDECPU.IsNull then
      DM2.Qr_Corqtddec.AsInteger:=-1
   else
      DM2.Qr_Corqtddec.AsInteger:=DM2.Qr_CabP1QTDDECPU.AsInteger;

   end;
except
   end;

end;


procedure TDM2.Qr_CabCalcFields(DataSet: TDataSet);
var
  mqtdd: Integer;
  PRAZOESPECIAL: Boolean;
  query_cbenef: TQuery;
begin
PRAZOESPECIAL:=False;
if flfilpad(-1,'_PED_AUTOP','') then
  begin
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_PRAZOESPECIAL',[]) then
    PRAZOESPECIAL:=DM4.Tb_FilPad2FPVALOR.AsString='true';
  end;
//formpag                       
flqr1('CCNPJ,CIE,CCPF,CRG,CROTA,CNOMROTA,CTPPESSOA,CSUPERMICRO,CFONERES,CISENTOIE,CSUFRAMA','C','CADCLI','N','CCODCLI',DM2.Qr_CabP1CODCLI.AsString);
Qr_Cabinscsuframa.Value:=DM1.Query1.fieldbyname('CSUFRAMA').asstring;
Qr_Cabisentoie.Value:=DM1.Query1.fieldbyname('CISENTOIE').asstring;

try
if fLerGenerico_query('CADP01 LEFT JOIN CADUSR ON (CODUSR = P1CODSEP) ','P1MODELO'
                     +',P1NFCE_DATA,P1NFCE_NUMERO,P1NFCE_SERIE,P1NFCE_SITUACAO,P1NFCE_MODELO,P1NFCE_CHV_ACESSO,P1NFCE_NPROT ,NOMUSR AS NOMSEP '
                     +',P1DATDOC,P1CODSEP,P1DATCON,P1CODCON,P1DATASEP,P1NOME_PROD '
                     +',(SELECT max(NOMUSR) from CADUSR where CODUSR=P1CODCON ) AS nomcon '
                     +',P1DATAEMB,P1CODEMB '
                     +',(SELECT max(NOMUSR) from CADUSR where CODUSR=P1CODEMB ) AS nomemb '
                     ,' P1CHAVE=0'+Qr_CabP1CHAVE.AsString+' and P1LOTSEQ=0'+Qr_CabP1LOTSEQ.AsString
                                                +' and P1ORDEM=0'+Qr_CabP1ORDEM.AsString+' and P1CODEMP=0'+Qr_CabP1CODEMP.AsString,query_consulta) then
   begin
   Qr_Cabmodelonf.AsString:=formatfloat('00', valint(query_consulta.fieldbyname('P1MODELO').asstring));

   Qr_Cabcalc_P1NFCE_DATA.asdatetime   :=query_consulta.fieldbyname('P1NFCE_DATA').AsDateTime;
   Qr_Cabcalc_P1NFCE_NUMERO.asfloat    :=query_consulta.fieldbyname('P1NFCE_NUMERO').asfloat;
   Qr_Cabcalc_P1NFCE_SERIE.AsString    :=query_consulta.fieldbyname('P1NFCE_SERIE').AsString;
   Qr_Cabcalc_P1NFCE_SITUACAO.asfloat  :=query_consulta.fieldbyname('P1NFCE_SITUACAO').asfloat;
   Qr_Cabcalc_P1NFCE_MODELO.AsString       :=query_consulta.fieldbyname('P1NFCE_MODELO').AsString;
   Qr_Cabcalc_P1NFCE_CHV_ACESSO.AsString   :=query_consulta.fieldbyname('P1NFCE_CHV_ACESSO').AsString;
   Qr_Cabcalc_P1NFCE_NPROT.AsString        :=query_consulta.fieldbyname('P1NFCE_NPROT').AsString;

   Qr_Cabcalc_p1codsep.Asfloat             :=query_consulta.fieldbyname('P1CODSEP').AsFloat;
   Qr_Cabcalc_nomsep.AsString              :=query_consulta.fieldbyname('nomsep').AsString;
   Qr_Cabcalc_p1datsep.AsDateTime          :=query_consulta.fieldbyname('P1DATASEP').AsDateTime;

   Qr_Cabcalc_p1datcon.AsDateTime          :=query_consulta.fieldbyname('P1DATCON').AsDateTime;
   Qr_Cabcalc_nomcon.AsString              :=query_consulta.fieldbyname('nomcon').AsString;
   Qr_Cabcalc_p1codcon.AsFloat             :=query_consulta.fieldbyname('P1CODCON').AsFloat;

   Qr_Cabcalc_p1datemb.AsDateTime          :=query_consulta.fieldbyname('P1DATAEMB').AsDateTime;
   Qr_Cabcalc_nomemb.AsString              :=query_consulta.fieldbyname('nomemb').AsString;
   Qr_Cabcalc_p1codemb.AsFloat             :=query_consulta.fieldbyname('P1CODEMB').AsFloat;
   Qr_Cabcalc_p1nome_prod.Asstring             :=query_consulta.fieldbyname('P1NOME_PROD').AsString;


   if query_consulta.fieldbyname('P1DATDOC').AsDateTime>pdatanula then
      Qr_Cabcalc_P1DATDOC.AsDatetime        :=query_consulta.fieldbyname('P1DATDOC').AsDateTime
   else
      Qr_Cabcalc_P1DATDOC.AsDatetime        :=now();

   end
else
   Qr_Cabmodelonf.AsString:='55';
except
   end;


Qr_Cabnomrota.Value:=DM1.Query1.fieldbyName('CNOMROTA').AsString;
try
 Qr_Cabcodrot.Value :=DM1.Query1.fieldbyName('CROTA').AsFloat;

   Qr_Cabecf_tipo.Value:=DM1.Query1.fieldbyName('CTPPESSOA').AsString;
   Qr_Cabsupermicro.Value:=DM1.Query1.FieldbyName('CSUPERMICRO').AsInteger;
   Qr_Cabfoneres.Value:=DM1.Query1.fieldbyName('CFONERES').AsString;
   Qr_CabIE_NFE.Value:=DM1.Query1.fieldbyName('CIE').AsString;
except
   end;

try
if DM1.Query1.Fields[0].AsFloat>0 then
   Begin
   Qr_Cabcgccpf.Value:=FormatFloat('00"."000"."000"/"0000"-"00',DM1.Query1.fields[0].AsFloat);
   Qr_CabRGIE.Value:=DM1.Query1.Fields[1].AsString;
   Qr_Cabecf_cgc.Value:=FormatFloat('00"."000"."000"/"0000"-"00',DM1.Query1.fields[0].AsFloat);
   end
else
   begin
   Qr_Cabcgccpf.Value:=FormatFloat('000"."000"."000"-"00',DM1.Query1.Fields[2].AsFloat);
   Qr_CabRGIE.Value  :=DM1.Query1.Fields[3].AsString;
   Qr_Cabecf_cgc.Value:=FormatFloat('000"."000"."000"-"00',DM1.Query1.Fields[2].AsFloat);
   end;
if fsonumero(DM1.Query1.Fields[1].AsString)>0 then
   Qr_Cabecf_ie.Value:=DM1.Query1.Fields[1].AsString
else
   Qr_Cabecf_ie.Value:=DM1.Query1.Fields[3].AsString;
except
   end;

if Qr_CabP1FRETEPC.AsInteger=9 then
   Qr_Cabfrete_ciffob.Value:='9- Sem frete. (V2.0)'
else if Qr_CabP1FRETEPC.AsInteger=2 then
   Qr_Cabfrete_ciffob.Value:='2- Por conta de terceiros;'
else if Qr_CabP1FRETEPC.AsInteger=1 then
   begin
   Qr_Cabfrete_ciffob.Value:='1- Por conta do destinatário; ';
   if Qr_CabP1VALFRE.AsFloat>0 then
      Qr_Cabfrete_ciffob.Value:=Qr_Cabfrete_ciffob.Value+ '(Cliente Paga) ';
   end
else
   begin
   Qr_Cabfrete_ciffob.Value:='0- Por conta do emitente;  ';
   if Qr_CabP1VALFRE.AsFloat>0 then
      Qr_Cabfrete_ciffob.Value:=Qr_Cabfrete_ciffob.Value+ '(Empresa Paga) ';

   end;




try

Qr_Cabbaseicms.Value:=DM2.Qr_CabP1BASEN.Value+DM2.Qr_CabP1BASENRI.Value
                     +DM2.Qr_CabP1BASENRP.Value+DM2.Qr_CabP1BASENRN.Value;
Qr_Cabicms.Value    :=DM2.Qr_CabP1ICMSN.Value+DM2.Qr_CabP1ICMSNRI.Value
                     +DM2.Qr_CabP1ICMSNRP.Value+DM2.Qr_CabP1ICMSNRN.Value;

Qr_Cabvalipi.Value   :=DM2.Qr_CabP1IPIPOS.Value+DM2.Qr_CabP1IPINEG.Value
                     +DM2.Qr_CabP1IPIINA.Value;

Qr_Cabecf_razao.Value   :=DM2.Qr_CabCRAZAO.Value;
Qr_Cabecf_fantasia.Value:=DM2.Qr_CabCDENOM.Value;
Qr_Cabecf_ender.Value   :=DM2.Qr_CabCLOG.Value;
if length(Qr_CabCCOMPL.AsString)>1 then
   Qr_Cabecf_ender.Value:=Qr_Cabecf_ender.Value+' '+Qr_CabCCOMPL.AsString;
Qr_Cabecf_bairro.Value  :=DM2.Qr_CabCBAIRRO.Value;
Qr_Cabecf_cidade.Value  :=DM2.Qr_CabCCIDADE.Value;
Qr_Cabecf_uf.Value      :=DM2.Qr_CabCUF.Value;
Qr_Cabecf_cep.Value     :=DM2.Qr_CabCCEP.Value;
Qr_Cabecf_fone.Value    :=DM2.Qr_CabCFONE01.Value;
except
   end;
try
if (Qr_CabP1CODCLI.Value>0) and (Qr_CabP1CODCLI.Value<3) then
   begin
   DM1.Tb_CSF.Close;
   DM1.Tb_CSF.SQL.Clear;
   DM1.Tb_CSF.SQl.Add('Select * from CADCSF where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' CFCODEMP=0'+Qr_CabP1CODEMP.AsString+' and ')
                     +' CFLOTSEQ=0'+Qr_CabP1LOTSEQ.AsString
                     +' and CFCHAVEP=0'+Qr_CabP1CHAVE.AsString);
   DM1.Tb_CSF.Open;
   if not DM1.Tb_CSF.Eof then
      begin
      Qr_Cabecf_razao.Value   :=DM1.Tb_CSFCFRAZAO.Value;
      Qr_Cabecf_fantasia.Value:=DM1.Tb_CSFCFDENOM.Value;
      Qr_Cabecf_ender.Value   :=DM1.Tb_CSFCFENDER.Value;
      Qr_Cabecf_bairro.Value  :=DM1.Tb_CSFCFBAIRRO.Value;
      Qr_Cabecf_cidade.Value  :=DM1.Tb_CSFCFCIDADE.Value;
      Qr_Cabecf_uf.Value      :=DM1.Tb_CSFCFUF.Value;
      Qr_Cabecf_cep.Value     :=DM1.Tb_CSFCFCEP.Value;
      if length(fdeixanum(DM1.Tb_CSFCFFONE.Value))>6 then
         Qr_Cabecf_fone.Value    :=DM1.Tb_CSFCFFONE.Value;
      Qr_Cabecf_ie.Value      :=DM1.Tb_CSFCFIE.Value;
      Qr_Cabecf_tipo.Value    :=DM1.Tb_CSFCFTIPOC.AsString;

      if DM1.Tb_CSFCFTIPOC.Value=0 then
         Qr_Cabecf_cgc.Value:=FormatFloat('000"."000"."000"."000"-"00',DM1.Tb_CSFCFCGC.Value)
      else
         Qr_Cabecf_cgc.Value:=FormatFloat('00"."000"."000"/"0000"-"00',DM1.Tb_CSFCFCGC.Value);
      end;


   end;

except
   end;
try
if (Qr_CabP1TOTVALAPROXTRIB.AsFloat>0) and (Qr_CabP1TOTALB.AsFloat>0) then
   Qr_CabpercAproxTrib.AsFloat:=Arredonda( ((Qr_CabP1TOTVALAPROXTRIB.AsFloat*100) / Qr_CabP1TOTALB.AsFloat) ,2)
else
   Qr_CabpercAproxTrib.AsFloat:=0;
except
   end;

if flqr1('VNOME','V','CADVEN','N','VCODVEN',DM2.Qr_CabP1CODVEN.AsString) then
   Qr_Cabnomven.Value:=DM1.Query1.Fields[0].AsString;
try
if DM2.Qr_CabP1CODV02.AsFloat<>0 then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',DM2.Qr_CabP1CODV02.AsString) then
      Qr_Cabnomv02.Value:=DM1.Query1.Fields[0].AsString;
   end;
if DM2.Qr_CabCCODRED.Value>0 then
   begin
   if flqr1('RDNOME','RD','CADRED','N','RDCODRED',DM2.Qr_CabCCODRED.AsString) then
      Qr_Cabnomred.Value:=DM1.Query1.Fields[0].AsString;
   end;
if DM2.Qr_CabP1CODUSR.Value>0 then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM2.Qr_CabP1CODUSR.AsString) then
      Qr_Cabnomusr.Value:=DM1.Query1.Fields[0].AsString;
   end;
except
   end;

//if Qr_CabP1TIPO.AsInteger=0 then
//   begin
try
   DM1.Query4.Close;
   DM1.Query4.sql.Clear;
   DM1.Query4.sql.Add(' Select P1ORC_PRAZOENT,P1ORC_VALPRO,P1ORC_FORMAPAG,P1ORC_OBSERV, '
                     +' P1ORC_LETRA, P1ORC_FUNDO, P1ORC_TAMANHO, P1ORC_MTROLO,          '
                     +' P1ORC_TABUTE, P1ORC_PAPEL, P1ORC_QTDROLO, P1ORC_CONTATO         '
                     +',P1ORC_METAL_QTD_VIAS_PROD,P1ORC_METAL_TIPOS_CORTES '
                     +' from CADP01_ORC where '
                     +' P1ORC_CODEMP=0'+IntToStr(Qr_CabP1CODEMP.AsInteger-iif(Qr_CabP1CODEMP.AsInteger>100,100,0))
                     +' and P1ORC_LOTSEQ=:LOTSEQ '
                     +' and P1ORC_CHAVE=:CHAVE ');
   DM1.Query4.ParambyName('LOTSEQ').AsFloat := Qr_CabP1LOTSEQ.AsFloat;
   DM1.Query4.ParambyName('CHAVE').AsFloat  := Qr_CabP1CHAVE.AsFloat;
   try
      DM1.Query4.Open;
      if not DM1.Query4.isempty then
         begin
         if PRAZOESPECIAL=true then
           Qr_Cabprazoent.AsString      :=DM1.Query4.fieldbyName('P1ORC_PRAZOENT').AsString+' dia(s) utéis.'
         else
           Qr_Cabprazoent.AsString      :=DM1.Query4.fieldbyName('P1ORC_PRAZOENT').AsString;
         Qr_Cabvalpro.AsString        :=DM1.Query4.fieldbyName('P1ORC_VALPRO').AsString;
         Qr_Cabformpag.AsString       :=DM1.Query4.fieldbyName('P1ORC_FORMAPAG').AsString;
         fGerarEvento('3031 - observacao orcamento '+DM1.Query4.fieldbyName('P1ORC_OBSERV').AsString);
         Qr_CabP1ORC_OBSERV.AsString  :=DM1.Query4.fieldbyName('P1ORC_OBSERV').AsString;
         Qr_CabP1ORC_LETRA.AsString   :=DM1.Query4.FieldByName('P1ORC_LETRA').AsString;
         Qr_CabP1ORC_FUNDO.AsString   :=DM1.Query4.FieldByName('P1ORC_FUNDO').AsString;
         Qr_CabP1ORC_TAMANHO.AsString :=DM1.Query4.FieldByName('P1ORC_TAMANHO').AsString;
         Qr_CabP1ORC_TABUTE.AsString  :=DM1.Query4.FieldByName('P1ORC_TABUTE').AsString;
         Qr_CabP1ORC_PAPEL.AsString   :=DM1.Query4.FieldByName('P1ORC_PAPEL').AsString;
         Qr_CabP1ORC_ROLO.AsString    :=DM1.Query4.FieldByName('P1ORC_QTDROLO').AsString;
         Qr_CabP1ORC_MTROLO.AsString  :=DM1.Query4.FieldByName('P1ORC_MTROLO').AsString;
         Qr_CabP1ORC_CONTATO.Text     :=DM1.Query4.FieldByName('P1ORC_CONTATO').AsString;
         if ((DM1.Query4.FieldByName('P1ORC_METAL_TIPOS_CORTES').AsString)<>'') and
           (DM1.Query4.FieldByName('P1ORC_METAL_QTD_VIAS_PROD').Asinteger>0) then
            begin
            Qr_Cabcalc_P1ORC_METAL_TIPOS_CORTES.value  :=  'Tipos de Cortes: '+DM1.Query4.FieldByName('P1ORC_METAL_TIPOS_CORTES').AsString;
            Qr_Cabcalc_P1ORC_METAL_QTD_VIAS_PROD.value  := 'Qtd Vias Producao: '+
            DM1.Query4.FieldByName('P1ORC_METAL_QTD_VIAS_PROD').AsString+' via'+
            iif( DM1.Query4.FieldByName('P1ORC_METAL_QTD_VIAS_PROD').AsInteger=1, '','s');
            end;

         end;
   except
      end;
//   end;

except
   end;

try
if DM2.Qr_CabP1CODCV.Value>0 then
   begin
   if flqr1('CVRAZAO','CV','CADCV','N','CVCODCV',DM2.Qr_CabP1CODCV.AsString) then
      Qr_Cabnomcon.Value:=DM1.Query1.Fields[0].AsString;
   end;

if Qr_CabP1CODEMP.asfloat>100 then
   Qr_Cabnumdoc.Value:=' Numero NFe: '+Qr_CabP1NUMNF.AsString
else if Qr_CabP1NUMNF.asfloat>0 then
   Qr_Cabnumdoc.Value:=' Numero NFe: '+Qr_CabP1NUMNF.AsString
else if Qr_CabP1NFCE_NUMERO.asfloat>0 then
   Qr_Cabnumdoc.Value:=' Numero NFCe: '+Qr_CabP1NFCE_NUMERO.AsString
else
   Qr_Cabnumdoc.Value:='';


Qr_Cabcfo1.Value:=Qr_CabP1CFO1.Value;
Qr_Cabcfo2.Value:=Qr_CabP1CFO2.Value;
Qr_Cabcfops.Value:=Qr_CabP1CFO1.Value;

if (Trim(Qr_CabP1CFO2.Value)<>'') and
   (fsonumero(Qr_CabP1CFO1.Value)<>fSonumero(Qr_CabP1CFO2.Value)) then
   Qr_Cabcfops.Value:=Qr_Cabcfops.Value+'/'+Qr_CabP1CFO2.Value;
if trim(Qr_CabP1CFOSER.Value)<>'' then
   Qr_Cabcfops.Value:=Qr_Cabcfops.Value+'/'+Qr_CabP1CFOSER.Value;
except
   end;

   try
DM1.Query2.Close;
DM1.Query2.SQL.clear;
DM1.Query2.Sql.add('Select sum(P2VICMSDES) as TOTAL,max(P2REDUTICM) AS REDUT_ICMS '
                  +',sum(P2VBCUFDEST) as mP2VBCUFDEST '
                  +',sum(P2VFCPUDEST) as mP2VFCPUDEST '
                  +',sum(P2VICMSUFDEST) as mP2VICMSUFDEST '
                  +',sum(P2VICMSUFREMET) as mP2VICMSUFREMET '


                  +',sum(case when P2CSOSN IN (''101'',''201'',''900'') THEN P2VLRICMS_SN ELSE 0 END) as mP2VLRICMS_SN '
                  +',round(sum(P2PCOCUS*P2QTD),2) as totalcusto '
                  +',round(sum(PDPCOFAB*P2QTD),2) as totalprecofabrica '
                  +',max(P2CSOSN) as csosn '
                     +' from CADP02,CADPRO '
                     +' where P2CODEMP=0'+DM2.Qr_CabP1CODEMP.AsString
                     +' and   P2LOTSEQ=0'+DM2.Qr_CabP1LOTSEQ.AsString
                     +' and   P2CHAVE=0'+DM2.Qr_CabP1CHAVE.AsString
                     +' and PDCODPRO=P2CODPRO and PDCODEMP=0'+inttostr(iif(DM2.qr_cabp1codemp.AsInteger>100, DM2.qr_cabp1codemp.asinteger-100, DM2.qr_cabp1codemp.asinteger)));
DM1.Query2.Open;
Qr_Cabcsosn.AsInteger         :=DM1.query2.fieldbyname('csosn').AsInteger;
Qr_Cabtotalcusto.AsFloat         :=DM1.query2.fieldbyname('totalcusto').Asfloat;
Qr_Cabtotalpcofabrica.AsFloat    :=DM1.query2.fieldbyname('totalprecofabrica').Asfloat;

Qr_CabP1TOTDESICMS.AsFloat:=DM1.Query2.FieldByName('TOTAL').AsFloat;
Qr_Cabperc_redut_icms.AsFloat:=DM1.Query2.FieldByName('REDUT_ICMS').AsFloat;
Qr_CabmP2VBCUFDEST.AsFloat:=DM1.Query2.FieldByName('mP2VBCUFDEST').AsFloat;
Qr_CabmP2VFCPUDEST.AsFloat:=DM1.Query2.FieldByName('mP2VFCPUDEST').AsFloat;
Qr_CabmP2VICMSUFDEST.AsFloat:=DM1.Query2.FieldByName('mP2VICMSUFDEST').AsFloat;
Qr_CabmP2VICMSUFREMET.AsFloat:=DM1.Query2.FieldByName('mP2VICMSUFREMET').AsFloat;

Qr_Cabvlr_aprovCIcmsTrib.AsFloat:=0;

Qr_Cabvlr_aprovcredicms.AsFloat :=DM1.Query2.FieldByName('mP2VLRICMS_SN').AsFloat;



if Qr_CabP1NUMCF.AsFloat<>0 then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.clear;
   DM1.Query2.Sql.add('Select P2CFO,P2CFOSUBECF from CADP02 '
                        +' where P2CODEMP=0'+DM2.Qr_CabP1CODEMP.AsString
                        +' and   P2LOTSEQ=0'+DM2.Qr_CabP1LOTSEQ.AsString
                        +' and   P2CHAVE=0'+DM2.Qr_CabP1CHAVE.AsString
                        +' group by P2CFO,P2CFOSUBECF ');
   DM1.Query2.Open;
   mqtdd:=0;
   Qr_Cabcfops.Value:='';
   While not DM1.Query2.Eof do
      begin
      mqtdd:=mqtdd+1;
      if mqtdd=1 then
         begin
         if DM1.Query2.FieldByName('P2CFOSUBECF').AsFloat=0 then
            Qr_Cabcfo1.Value:=DM1.Query2.FieldByName('P2CFO').AsString
         else
            Qr_Cabcfo1.Value:=DM1.Query2.FieldByName('P2CFOSUBECF').AsString;
         end
      else if mqtdd=2 then
         begin
         if DM1.Query2.FieldByName('P2CFOSUBECF').AsFloat=0 then
            Qr_Cabcfo2.Value:=DM1.Query2.FieldByName('P2CFO').AsString
         else
            Qr_Cabcfo2.Value:=DM1.Query2.FieldByName('P2CFOSUBECF').AsString;
         end;
{
      if trim(Qr_Cabcfops.AsString)<>'' then
         Qr_Cabcfops.AsString:=Qr_Cabcfops.AsString+'/';
      if DM1.Query2.FieldByName('P2CFOSUBECF').AsFloat=0 then
         Qr_Cabcfops.AsString:=Qr_Cabcfops.AsString+DM1.Query2.FieldByName('P2CFO').AsString
      else
         Qr_Cabcfops.AsString:=Qr_Cabcfops.AsString+DM1.Query2.FieldByName('P2CFOSUBECF').AsString;
}
      DM1.Query2.Next;
      end;

   if (Trim(Qr_Cabcfo1.Value)<>'') then
      Qr_Cabcfops.AsString:=Qr_Cabcfo1.AsString;

   if (Trim(Qr_Cabcfo2.Value)<>'') and
       (fsonumero(Qr_CabCFO1.Value)<>fSonumero(Qr_CabCFO2.Value)) then
       Qr_Cabcfops.Value:=Qr_Cabcfops.Value+'/'+Qr_Cabcfo2.Value;

   if trim(Qr_CabP1CFOSER.Value)<>'' then
      Qr_Cabcfops.Value:=Qr_Cabcfops.Value+'/'+Qr_CabP1CFOSER.Value;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select PVNOME from CADPV where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADPV',[]),'',' PVCODEMP=0'+DM2.Qr_CabP1CODEMP.AsString+' and ')
                  +' PVCODTIP='+chr(39)+DM2.Qr_CabP1TABPV.Value+chr(39)
                  +' and PVCODPV=0'+DM2.Qr_CabP1CODPV.AsString);
DM1.Query1.Open;
if not DM1.Query1.Eof then
   Qr_Cabnompv.Value:=DM1.Query1.Fields[0].AsString;


if Qr_CabP1CODASSE.AsFloat>0 then
   begin
   if flqr1('CARAZAO','CA','CADASSE','N','CACODASS',Qr_CabP1CODASSE.AsString) then
      Qr_Cabnomassessor.Value:=DM1.Query1.Fields[0].AsString;
   end;




flcaduf(0,0,0,Qr_CabCUF.Value);
dm2.Qr_CabpGerarTagDifal.AsInteger := dm1.Tb_UFPGERARDIFAL.AsInteger;

DM2.Qr_Cabcoduf_ibge.Value  :=DM1.Tb_UFPCODUF_IBGE.Value;
DM2.Qr_Cabcodreg_ibge.Value :=DM1.Tb_UFPCODREG_IBGE.Value;

if DM2.Qr_CabCCODLOC.AsFloat>0 then
   begin
   if flqr1('LCODMUN_IBGE','L','CADLOC','N','LCODLOC',Qr_CabCCODLOC.AsString) then
      DM2.Qr_Cabcodloc_ibge.Value:=DM1.Query1.fieldbyName('LCODMUN_IBGE').AsFloat;
   end;
DM2.Qr_Cabcodpais_ibge.Value:=DM1.Tb_UFcodpais.Value;

{
if Qr_CabP1TIPO.Value=2 then
   begin
   Qr_Cabcfo1.Value:=FormatFloat('000',DM1.Tb_UFPCFOSRN.Value);
   Qr_Cabcfo2.Value:=Formatfloat('000',DM1.Tb_UFPCFOSRR.Value);
   end
else if Qr_CabP1TIPO.Value=3 then
   begin
   Qr_Cabcfo1.Value:=FormatFloat('000',DM1.Tb_UFPCFODFN.Value);
   Qr_Cabcfo2.Value:=FormatFloat('000',DM1.Tb_UFPCFODFR.Value);
   end
else if Qr_CabP1TIPO.Value=4 then
   begin
   Qr_Cabcfo1.Value:=Formatfloat('000',DM1.Tb_UFPCFOSRN.Value);
   Qr_Cabcfo2.Value:=Formatfloat('000',DM1.Tb_UFPCFOSRR.Value);
   end
else if Qr_CabP1TIPO.Value=5 then
   begin
   Qr_Cabcfo1.Value:=FormatFloat('000',DM1.Tb_UFPCFOTRN.Value);
   Qr_Cabcfo2.Value:=FormatFloat('000',DM1.Tb_UFPCFOTRR.Value);
   end
else if Qr_CabP1TIPO.Value=6 then
   begin
   Qr_Cabcfo1.Value:=Formatfloat('000',DM1.Tb_UFPCFOBEN.Value);
   Qr_Cabcfo2.Value:=Formatfloat('000',DM1.Tb_UFPCFOBER.Value);
   end
else if Qr_CabP1TIPO.Value=7 then
   begin
   Qr_Cabcfo1.Value:=FormatFloat('000',DM1.Tb_UFPCFOCON.Value);
   Qr_Cabcfo2.Value:=FormatFloat('000',DM1.Tb_UFPCFOCOR.Value);
   end
else if Qr_CabP1TIPO.Value=8 then
   begin
   Qr_Cabcfo1.Value:=Formatfloat('000',DM1.Tb_UFPCFODCN.Value);
   Qr_Cabcfo2.Value:=Formatfloat('000',DM1.Tb_UFPCFODCR.Value);
   end
else if DM1.Tb_CliCCONSF.Value=1 then
   begin
   Qr_Cabcfo1.Value:=Formatfloat('000',DM1.Tb_UFPCFORVN.Value);
   Qr_Cabcfo2.Value:=Formatfloat('000',DM1.Tb_UFPCFORVR.Value);
   end
else
   begin
   Qr_Cabcfo1.Value:=Formatfloat('000',DM1.Tb_UFPCFOCFN.Value);
   Qr_Cabcfo2.Value:=Formatfloat('000',DM1.Tb_UFPCFOCFR.Value);
   end;
}

if Qr_CabP1TPEMIS.AsInteger=1  then
   mcinst:='SERIE'+Qr_CabP1CODSER.AsString
else if Qr_CabP1TPEMIS.AsInteger=0  then
   mcinst:='SERIE1'
else
   begin
   if Qr_CabP1TPEMIS.AsInteger=2 then
      mcinst:='FS'
   else if Qr_CabP1TPEMIS.AsInteger=3 then
      mcinst:='SCAN'
   else if Qr_CabP1TPEMIS.AsInteger=4 then
      mcinst:='DPEC'
   else
      mcinst:='FS-DA';
   end;

DM1.Query1.close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.Add('Select * from CADPAR_NF where PNF_CODEMP=:CODEMP '
                  +' and PNF_CHAVE=:CHAVE ');
DM1.Query1.ParamByName('CODEMP').AsInteger:=Qr_CABP1CODEMP.AsInteger;
DM1.Query1.ParamByName('CHAVE').Value     :=mcinst;
DM1.Query1.Open;
Qr_Cabpobsnf01.Value:=DM1.Query1.fieldbyName('PNF_OBSL01').AsString;
Qr_Cabpobsnf02.Value:=DM1.Query1.fieldbyName('PNF_OBSL02').AsString;
Qr_Cabpobsnf03.Value:=DM1.Query1.fieldbyName('PNF_OBSL03').AsString;
if flcadcfo(1,0,fdeixanum(Qr_CabCFO1.Value)) then
   Qr_Cabnomcfo.Value:=DM1.Tb_CfoCFNOME.Value
else
   Qr_Cabnomcfo.Value:='VENDAS';
Qr_Cabsubmod.Value:=ValFloat(PalNum_Sis(Qr_CabP1SUBMOD.Value));


if trim(Qr_CabP1CFOSER.Value)='' then
   Qr_Cabnomcfoser.Value:=''
else
   begin
   if flcadcfo(1,0,fdeixanum(Qr_CabP1CFOSER.Value)) then
      Qr_Cabnomcfoser.Value:=DM1.Tb_CfoCFNOME.Value
   else
      Qr_Cabnomcfoser.Value:='SERVICOS';
   end;

Qr_Cabinscsub.Value:=DM1.Tb_UFPIESUB.AsString;
Qr_Cabplimina1.Value:=DM1.Tb_UFPLIMINA1.Value;
Qr_Cabplimina2.Value:=DM1.Tb_UFPLIMINA2.Value;
if Qr_CabP1CODTRA.Value>0 then
   begin
   flcadtra(1,0,Qr_CabP1CODTRA.AsString);
   Qr_Cabnometra.Value:=DM1.Tb_TraTRRAZTRA.Value;
   Qr_Cabendtra.Value:=DM1.Tb_TraTRNLOG.Value+iif(Trim(DM1.Tb_TraTRNUM.Value)<>'',' No.'+DM1.Tb_TraTRNUM.Value+' ', ' ')
                      +DM1.Tb_TraTRCOMPL.Value;
   if DM1.Tb_TraTRCNPJ.Value>0 then
      begin
      Qr_Cabcnpftra.Value:=FormatFloat('00"."000"."000"/"0000"-"00',DM1.Tb_TraTRCNPJ.Value);
      Qr_Cabietra.Value   :=DM1.Tb_TraTRIE.Value;
      end
   else
      begin
      Qr_Cabcnpftra.Value:=FormatFloat('000"."000"."000"-"00',DM1.Tb_TraTRCNPF.Value);
      Qr_Cabietra.Value   :='ISENTO';
      end;
//   Qr_Cabietra.Value  :=DM1.Tb_TraTRIE.Value;
   Qr_Cabcidtra.Value :=DM1.Tb_TraTRCIDADE.Value;
   Qr_Cabuftra.Value  :=DM1.Tb_TraTRUF.Value;
   Qr_Cabbaitra.Value :=DM1.Tb_TraTRBAIRRO.Value;
   Qr_Cabfonetra.Value:=DM1.Tb_TraTRFONE.Value;
   end;
if Qr_CabP1BANCO.AsFloat=0 then
   Qr_Cabnombco.Value:='Carteira'
else
   begin
   if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',DM2.Qr_CabP1BANCO.AsString) then
      Qr_Cabnombco.Value:=DM1.Query1.Fields[0].AsString
   else
      Qr_Cabnombco.Value:=DM2.Qr_CabP1BANCO.AsString;
   end;

mgeradup:=true;
if (Qr_CabP1TIPO.Value=1) and (DM1.Tb_PargerPDUPTIP1.Value=1) then
   mgeradup:=False
else if (Qr_CabP1TIPO.Value=2) and (DM1.Tb_PargerPDUPTIP2.Value=1) then
   mgeradup:=False
else if (Qr_CabP1TIPO.Value=3) and (DM1.Tb_PargerPDUPTIP3.Value=1) then
   mgeradup:=False
else if (Qr_CabP1TIPO.Value=4) and (DM1.Tb_PargerPDUPTIP4.Value=1) then
   mgeradup:=False
else if (Qr_CabP1TIPO.Value=5) and (DM1.Tb_PargerPDUPTIP5.Value=1) then
   mgeradup:=False
else if (Qr_CabP1TIPO.Value=6) and (DM1.Tb_PargerPDUPTIP6.Value=1) then
   mgeradup:=False
else if (Qr_CabP1TIPO.Value=7) and (DM1.Tb_PargerPDUPTIP7.Value=1) then
   mgeradup:=False
else if (Qr_CabP1TIPO.Value=8) and (DM1.Tb_PargerPDUPTIP8.Value=1) then
   mgeradup:=False
else if (Qr_CabP1TIPO.Value=9) and (DM1.Tb_PargerPDUPTIP9.Value=1) then
   mgeradup:=False
else if (Qr_CabP1TIPO.Value=10) and (DM1.Tb_PargerPDUPTIP10.Value=1) then
   mgeradup:=False
else if (Qr_CabP1TIPO.Value=11) and (DM1.Tb_PargerPDUPTIP11.Value=1) then
   mgeradup:=False
else if (Qr_CabP1TIPO.Value=12) and (DM1.Tb_PargerPDUPTIP12.Value=1) then
   mgeradup:=False
else if (Qr_CabP1TIPO.Value=13) and (DM1.Tb_PargerPDUPTIP13.Value=1) then
   mgeradup:=False
else if (Qr_CabP1TIPO.Value=14) and (DM1.Tb_PargerPDUPTIP14.Value=1) then
   mgeradup:=False
else if (Qr_CabP1TIPO.Value=15) and (DM1.Tb_PargerPDUPTIP15.Value=1) then
   mgeradup:=False
else if (Qr_CabP1TIPO.Value=16) and (DM1.Tb_PargerPDUPTIP16.Value=1) then
   mgeradup:=False
else if (Qr_CabP1TIPO.Value=17) and (DM1.Tb_PargerPDUPTIP17.Value=1) then
   mgeradup:=False
else if (Qr_CabP1TIPO.Value=18) and (DM1.Tb_PargerPDUPTIP18.Value=1) then
   mgeradup:=False
else if (Qr_CabP1TIPO.Value=19) and (DM1.Tb_PargerPDUPTIP19.Value=1) then
   mgeradup:=False
else if (Qr_CabP1TIPO.Value=20) and (DM1.Tb_PargerPDUPTIP20.Value=1) then
   mgeradup:=False
else if (Qr_CabP1TIPO.Value=21) and (DM1.Tb_PargerPDUPTIP21.Value=1) then
   mgeradup:=False
else if (Qr_CabP1TIPO.Value=22) and (DM1.Tb_PargerPDUPTIP22.Value=1) then
   mgeradup:=False
else if (Qr_CabP1TIPO.Value=23) and (DM1.Tb_PargerPDUPTIP23.Value=1) then
   mgeradup:=False
else if (Qr_CabP1TIPO.Value=24) and (DM1.Tb_PargerPDUPTIP24.Value=1) then
   mgeradup:=False
else if (Qr_CabP1TIPO.Value=25) and (DM1.Tb_PargerPDUPTIP25.Value=1) then
   mgeradup:=False
else if (Qr_CabP1TIPO.Value=26) and (DM1.Tb_PargerPDUPTIP26.Value=1) then
   mgeradup:=False
else if (Qr_CabP1TIPO.Value=27) and (DM1.Tb_PargerPDUPTIP27.Value=1) then
   mgeradup:=False
else if (Qr_CabP1TIPO.Value=28) and (DM1.Tb_PargerPDUPTIP28.Value=1) then
   mgeradup:=False;

Qr_Cabender_completo.Value := Qr_CabCLOG.Value;
if trim(qr_CabCNUM.AsString)<>'' then
   Qr_Cabender_completo.Value:=Qr_Cabender_completo.Value+' No. '+Qr_CabCNUM.AsString;

if trim(Qr_CabCCOMPL.AsString)<>'' then
   Qr_Cabender_completo.Value:=Qr_Cabender_completo.Value+' '+Qr_CabCCOMPL.AsString;

Qr_Cabpacredicms.AsFloat:=DM4.Tb_ParGer02PG2PACREDICMS.AsFloat;


DM2.Qr_Cabprazos.Value:='';
if (mgeradup) or (Qr_CabP1TOTSERLIQ.AsFloat<>0) then
   begin
 {  DM1.Tb_Ped01V.Close;
   DM1.Tb_Ped01V.SQL.Clear;
   DM1.Tb_Ped01V.SQL.Add('Select max(P1VORDEM) AS P1VORDEM , '
                     +'       max(P1VSEQ)  AS P1VSEQ, ');

    if not mgeradup then
       DM1.Tb_Ped01V.SQL.Add('       sum(P1VVLRSERV) AS P1VVALOR, ')
    else
       DM1.Tb_Ped01V.SQL.Add('       sum(P1VVALOR) AS P1VVALOR, ');
    DM1.Tb_Ped01V.SQL.Add('       sum(P1VCOMISV) AS P1VCOMISV, '
                     +'       sum(P1VCOM02)  AS P1VCOM02, '
                     +'       sum(P1VCOM03)  AS P1VCOM03, '
                     +'       sum(P1VCOM04)  AS P1VCOM04, '
                     +'       sum(P1VCOMISS) AS P1VCOMISS, '
                     +'       sum(P1VCOMIST) AS P1VCOMIST, '
                     +'       sum(P1VFRETE)  AS P1VFRETE, '
                     +'       sum(P1VICMSR)  AS P1VICMSR, '
                     +'       sum(P1VDESCF)  AS P1VDESCF, '
                     +'       sum(P1VSEMCOM)  AS P1VSEMCOM, '
                     +'       sum(P1VCOMASSE) AS P1VCOMASSE, '
                     +'       sum(P1VTOTDI01) AS P1VTOTDI01, '
                     +'       sum(P1VTOTDI02) AS P1VTOTDI02, '
                     +'       sum(P1VTOTDI03) AS P1VTOTDI03, '
                     +'       sum(P1VTOTDIVL) AS P1VTOTDIVL, '
                     +'       sum(P1VVALDES01) AS P1VVALDES01, '
                     +'       sum(P1VVALDES02) AS P1VVALDES02, '
                     +'       sum(P1VVLRDES)   AS P1VVLRDES, '
                     +'       sum(P1VTARBAN)   AS P1VTARBAN, '
                     +'       sum(P1VSEG)      AS P1VSEG, '
                     +'       sum(P1VTOTIPI)    AS P1VTOTIPI, '
                     +'       sum(P1VTOTCGRU)   AS P1VTOTCGRU, '
                     +'       sum(P1VTOTSGRU)   AS P1VTOTSGRU, '
                     +'       sum(P1VVLRSERV)   AS P1VVLRSERV, '
                     +'       sum(P1VCOMISV_EXTRA)   AS P1VCOMISV_EXTRA, '
                     +'       min(P1VCODEMP) AS P1VCODEMP, '
                     +'       max(P1VCHAVE_NIVEL) AS P1VCHAVE_NIVEL, '
                     +'       P1VLOTSEQ, '
                     +'       P1VCHAVE, '
                     +'       P1VTABPV, '
                     +'       P1VCODIGO, '
                     +'       P1VDATAV, '
                     +'       P1VDTDESCF, '
                     +'       P1VPFPGTO,'
                     +'       P1VVINC02,'
                     +'       P1VNOMFPGTO'
                     +'      ,P1VCODFP'
                     +'      ,P1VDEV_CODEMP'
                     +'      ,P1VDEV_CODECF'
                     +'      ,P1VDEV_NUMERO'
                     +'      ,P1VDEV_DESD'
                     +'      ,P1VDEV_DUP'
                     +'      ,P1VDEV_DTEMIS'
                     +' from CADP01V where ');
   if par_calcger then
      DM1.Tb_Ped01V.SQL.Add(' (P1VCODEMP=0'+DM2.Qr_CabP1CODEMP.AsString
                           +' or P1VCODEMP=0'+iif(DM2.Qr_CabP1CODEMP.AsFloat>100
                                            ,FloatToStr(DM2.Qr_CabP1CODEMP.AsFloat-100)
                                            ,FloatToStr(DM2.Qr_CabP1CODEMP.AsFloat+100))+')')
   else
      DM1.Tb_Ped01V.SQL.Add(' P1VCODEMP=0'+DM2.Qr_CabP1CODEMP.AsString);

   DM1.Tb_Ped01V.SQL.Add(' and P1VLOTSEQ=0'+DM2.Qr_CabP1LOTSEQ.AsString
                     +' and   P1VCHAVE=0'+DM2.Qr_CabP1CHAVE.AsString);


   if DM1.Tb_PargerPAGRUDUP.Value<>1 then
      DM1.Tb_Ped01V.SQL.Add(' and P1VORDEM=0'+DM2.Qr_CabP1ORDEM.AsString);
   DM1.Tb_Ped01V.SQL.Add(' group by '
                     +' P1VLOTSEQ, '
                     +' P1VCHAVE, '
                     +' P1VTABPV, '
                     +' P1VCODIGO, '
                     +' P1VDATAV, '
                     +' P1VDTDESCF, '
                     +'       P1VPFPGTO,'
                     +'       P1VVINC02,'
                     +'       P1VNOMFPGTO'
                     +'      ,P1VCODFP'
                     +'      ,P1VDEV_CODEMP'
                     +'      ,P1VDEV_CODECF'
                     +'      ,P1VDEV_NUMERO'
                     +'      ,P1VDEV_DESD'
                     +'      ,P1VDEV_DUP'
                     +'      ,P1VDEV_DTEMIS'

                     );
   DM1.Tb_Ped01V.SQL.Add(' order by  P1VDATAV  ');

   DM1.Tb_Ped01V.Open;
   if DM1.Tb_Ped01V.IsEmpty then
}
      begin
      // inicio capfp

      DM1.Tb_Ped01V.Close;
      DM1.Tb_Ped01V.SQL.Clear;
      DM1.Tb_Ped01V.SQL.Add('Select 01 AS P1VORDEM , '
                        +'       PFPSEQ  AS P1VSEQ, ');

       if not mgeradup then
          DM1.Tb_Ped01V.SQL.Add('       sum(PFPVALOR) AS P1VVALOR, ')
       else
          DM1.Tb_Ped01V.SQL.Add('       sum(PFPVALOR ) AS P1VVALOR, ');
       DM1.Tb_Ped01V.SQL.Add('       0 AS P1VCOMISV, '
                        +'       0  AS P1VCOM02, '
                        +'       0  AS P1VCOM03, '
                        +'       0  AS P1VCOM04, '
                        +'       0 AS P1VCOMISS, '
                        +'       0 AS P1VCOMIST, '
                        +'       0  AS P1VFRETE, '
                        +'       0 AS P1VICMSR, '
                        +'       0  AS P1VDESCF, '
                        +'       0  AS P1VSEMCOM, '
                        +'       0 AS P1VCOMASSE, '
                        +'       0 AS P1VTOTDI01, '
                        +'       0 AS P1VTOTDI02, '
                        +'       0 AS P1VTOTDI03, '
                        +'       0 AS P1VTOTDIVL, '
                        +'       0 AS P1VVALDES01, '
                        +'       0 AS P1VVALDES02, '
                        +'       0   AS P1VVLRDES, '
                        +'       0   AS P1VTARBAN, '
                        +'       0      AS P1VSEG, '
                        +'       0    AS P1VTOTIPI, '
                        +'       0   AS P1VTOTCGRU, '
                        +'       0   AS P1VTOTSGRU, '
                        +'       0   AS P1VVLRSERV, '
                        +'       0   AS P1VCOMISV_EXTRA, '
                        +'       min(PFPCODEMP) AS P1VCODEMP, '
                        +'       max(PFPCHAVE) AS P1VCHAVE_NIVEL, '
                        +'       PFPLOTSEQ as P1VLOTSEQ, '
                        +'       PFPCHAVE as P1VCHAVE, '
                        +'       '+QuotedStr('AP')+' as P1VTABPV, '
                        +'       PFPSEQ AS P1VCODIGO, '
                        +'       PFPDATA AS  P1VDATAV, '
                        +'       PFPDATA AS P1VDTDESCF, '
                        +'       0 AS P1VPFPGTO,'
                        +'       0 as P1VVINC02,'
                        +'       '+QuotedStr('NOMFPGTO')+' as P1VNOMFPGTO'
                        +'      ,0 AS P1VCODFP'
                        +'      ,0 AS P1VDEV_CODEMP'
                        +'      ,0 AS P1VDEV_CODECF'
                        +'      ,0 AS P1VDEV_NUMERO'
                        +'      ,'+QuotedStr('A')+' as  P1VDEV_DESD'
                        +'      ,0 AS P1VDEV_DUP'
                        +'      ,PFPDATA AS  P1VDEV_DTEMIS'
                        +' from CADPFP where ');
      if par_calcger then
         DM1.Tb_Ped01V.SQL.Add(' (PFPCODEMP=0'+DM2.Qr_CabP1CODEMP.AsString
                              +' or PFPCODEMP=0'+iif(DM2.Qr_CabP1CODEMP.AsFloat>100
                                               ,FloatToStr(DM2.Qr_CabP1CODEMP.AsFloat-100)
                                               ,FloatToStr(DM2.Qr_CabP1CODEMP.AsFloat+100))+')')
      else
         DM1.Tb_Ped01V.SQL.Add(' PFPCODEMP=0'+DM2.Qr_CabP1CODEMP.AsString);

      DM1.Tb_Ped01V.SQL.Add(' and PFPLOTSEQ=0'+DM2.Qr_CabP1LOTSEQ.AsString
                        +' and   PFPCHAVE=0'+DM2.Qr_CabP1CHAVE.AsString);


      DM1.Tb_Ped01V.SQL.Add(' group by PFPSEQ,'
                        +' PFPLOTSEQ, '
                        +' PFPCHAVE, '
                        +' PFPDATA '

                        );
      DM1.Tb_Ped01V.SQL.Add(' order by  P1VDATAV  ');
      try
      DM1.Tb_Ped01V.Open;
      except
        DM1.Tb_Ped01V.SQL.SAVETOFILE(mpastatemp + 'SQL.TXT');
        end;
      // termino cadpfp
      end;


   mqtdd:=0;
   While not DM1.Tb_Ped01v.Eof do
      begin
      if not mgeradup then
         mValordup:=DM1.Tb_Ped01VP1VVLRSERV.Value
      else
         mValordup:=DM1.Tb_Ped01VP1VVALOR.Value;

      mqtdd:=mqtdd+1;

      if mqtdd=1 then
         begin
         if Qr_CabP1DATANF.Value<=pdatanula then
            begin
             if Qr_CabP1DATAP.Value=DM1.Tb_Ped01VP1VDATAV.Value then
               DM2.Qr_Cabprazos.value:='AV'
            else
               DM2.Qr_Cabprazos.value:= FloatTostr(DaysBetween(Strtodatetime(formatdatetime(fdt2, DM1.Tb_Ped01VP1VDATAV.AsDateTime))
                                                 ,strtodatetime(formatdatetime(fdt2, Qr_CabP1DATAP.AsDateTime))
                                                 ));
            end
         else
            begin
             if DaysBetween(DM1.Tb_Ped01VP1VDATAV.AsDateTime,Qr_CabP1DATAP.AsDateTime)=0 then
               DM2.Qr_Cabprazos.value:='AV'
            else
               DM2.Qr_Cabprazos.value:=FloatTostr(DaysBetween(Strtodatetime(formatdatetime(fdt2, DM1.Tb_Ped01VP1VDATAV.AsDateTime))
                       ,Strtodatetime(formatdatetime(fdt2, Qr_CabP1DATANF.AsDatetime))));
            end;
         end
      else
         begin
         if Qr_CabP1DATANF.Value<=pdatanula then
            begin
            DM2.Qr_Cabprazos.value:=DM2.Qr_Cabprazos.value
             +'/'+FloatTostr(DaysBetween(Strtodatetime(formatdatetime(fdt2, DM1.Tb_Ped01VP1VDATAV.AsDateTime)),Strtodatetime(formatdatetime(fdt2, Qr_CabP1DATAP.AsDateTime))));
            end
         else
            begin
            DM2.Qr_Cabprazos.value:=DM2.Qr_Cabprazos.value
             +'/'+FloatTostr(DaysBetween(Strtodatetime(formatdatetime(fdt2, DM1.Tb_Ped01VP1VDATAV.AsDateTime)),Strtodatetime(formatdatetime(fdt2, Qr_CabP1DATANF.AsDatetime))));
            end;
         end;

      if mqtdd=1 then
         begin
         Qr_Cabdtvcto01.Value:=FormatDateTime(fdt2, DM1.Tb_Ped01VP1VDATAV.Value);
         Qr_Cabvlrdup01.Value:=FormatFloat(mcasas, mValorDup);
         Qr_Cabdesd01.Value  :='A';
         Qr_Cabp1dtv01.Value :=DM1.Tb_Ped01VP1VDATAV.Value;
         Qr_Cabp1vlr01.Value :=mValorDup;
         Qr_Cabfpgto01.Value :=DM1.Tb_Ped01VP1VNOMFPGTO.AsString;
         end
      else if mqtdd=2 then
         begin
         Qr_Cabp1dtv02.Value:=DM1.Tb_Ped01VP1VDATAV.Value;
         Qr_Cabp1vlr02.Value:=mValorDup;
         Qr_Cabdtvcto02.Value:=FormatDateTime(fdt2, DM1.Tb_Ped01VP1VDATAV.Value);
         Qr_Cabvlrdup02.Value:=FormatFloat(mcasas, mValorDup);
         Qr_Cabdesd02.Value  :='B';
         Qr_Cabfpgto02.Value :=DM1.Tb_Ped01VP1VNOMFPGTO.AsString;
         end
      else if mqtdd=3 then
         begin
         Qr_Cabp1dtv03.Value:=DM1.Tb_Ped01VP1VDATAV.Value;
         Qr_Cabp1vlr03.Value:=mValorDup;
         Qr_Cabdtvcto03.Value:=FormatDateTime(fdt2, DM1.Tb_Ped01VP1VDATAV.Value);
         Qr_Cabvlrdup03.Value:=FormatFloat(mcasas, mValorDup);
         Qr_Cabdesd03.Value  :='C';
         Qr_Cabfpgto03.Value :=DM1.Tb_Ped01VP1VNOMFPGTO.AsString;
         end
      else if mqtdd=4 then
         begin
         Qr_Cabp1dtv04.Value:=DM1.Tb_Ped01VP1VDATAV.Value;
         Qr_Cabp1vlr04.Value:=mValorDup;
         Qr_Cabdtvcto04.Value:=FormatDateTime(fdt2, DM1.Tb_Ped01VP1VDATAV.Value);
         Qr_Cabvlrdup04.Value:=FormatFloat(mcasas, mValorDup);
         Qr_Cabdesd04.Value  :='D';
         Qr_Cabfpgto04.Value :=DM1.Tb_Ped01VP1VNOMFPGTO.AsString;
         end
      else if mqtdd=5 then
         begin
         Qr_Cabp1dtv05.Value:=DM1.Tb_Ped01VP1VDATAV.Value;
         Qr_Cabp1vlr05.Value:=mValorDup;
         Qr_Cabdtvcto05.Value:=FormatDateTime(fdt2, DM1.Tb_Ped01VP1VDATAV.Value);
         Qr_Cabvlrdup05.Value:=FormatFloat(mcasas, mValorDup);
         Qr_Cabdesd05.Value  :='E';
         Qr_Cabfpgto05.Value :=DM1.Tb_Ped01VP1VNOMFPGTO.AsString;
         end
      else if mqtdd=6 then
         begin
         Qr_Cabp1dtv06.Value:=DM1.Tb_Ped01VP1VDATAV.Value;
         Qr_Cabp1vlr06.Value:=mValorDup;
         Qr_Cabdtvcto06.Value:=FormatDateTime(fdt2, DM1.Tb_Ped01VP1VDATAV.Value);
         Qr_Cabvlrdup06.Value:=FormatFloat(mcasas, mValorDup);
         Qr_Cabdesd06.Value  :='F';
         Qr_Cabfpgto06.Value :=DM1.Tb_Ped01VP1VNOMFPGTO.AsString;
         end
      else if mqtdd=7 then
         begin
         Qr_Cabp1dtv07.Value:=DM1.Tb_Ped01VP1VDATAV.Value;
         Qr_Cabp1vlr07.Value:=mValorDup;
         Qr_Cabdesd07.Value  :='G';
         Qr_Cabfpgto07.Value :=DM1.Tb_Ped01VP1VNOMFPGTO.AsString;
         end
      else if mqtdd=8 then
         begin
         Qr_Cabp1dtv08.Value:=DM1.Tb_Ped01VP1VDATAV.Value;
         Qr_Cabp1vlr08.Value:=mValorDup;
         Qr_Cabdesd08.Value  :='H';
         Qr_Cabfpgto08.Value :=DM1.Tb_Ped01VP1VNOMFPGTO.AsString;
         end
      else if mqtdd=9 then
         begin
         Qr_Cabp1dtv09.Value:=DM1.Tb_Ped01VP1VDATAV.Value;
         Qr_Cabp1vlr09.Value:=mValorDup;
         Qr_Cabdesd09.Value  :='I';
         Qr_Cabfpgto09.Value :=DM1.Tb_Ped01VP1VNOMFPGTO.AsString;
         end
      else if mqtdd=10 then
         begin
         Qr_Cabp1dtv10.Value:=DM1.Tb_Ped01VP1VDATAV.Value;
         Qr_Cabp1vlr10.Value:=mValorDup;
         Qr_Cabdesd10.Value  :='J';
         Qr_Cabfpgto10.Value :=DM1.Tb_Ped01VP1VNOMFPGTO.AsString;
         end;
      DM1.Tb_Ped01v.Next;
      end;
   end;
except
   end;

mufnf:=DM2.Qr_CabCUF.Value;

if trim(DM2.Qr_CabP1OBS3.AsString)='SEMMARCA' then
   mImpMarca:=1
else
   mImpMarca:=0;

try

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('select max(PFPNOMFOR) as NOMFOR from CADPFP WHERE '
                  +'       (PFPCODEMP=:CODEMP_MENOR or PFPCODEMP=:CODEMP_MAIOR) '
                          +' and   PFPCHAVE=:CHAVE '
                          +' and   PFPLOTSEQ=:CHAVE_ANO ');


DM1.Query1.ParamByName('CODEMP_MENOR').AsInteger:=Qr_CabP1CODEMP.AsInteger;
DM1.Query1.ParamByName('CODEMP_MAIOR').AsInteger:=iif(Qr_CabP1CODEMP.AsInteger>100,Qr_CabP1CODEMP.AsInteger-100,Qr_CabP1CODEMP.AsInteger+100);
DM1.Query1.ParamByName('CHAVE').AsInteger:=Qr_CabP1CHAVE.AsInteger;
DM1.Query1.ParamByName('CHAVE_ANO').AsInteger:=Qr_CabP1LOTSEQ.AsInteger;
try
   DM1.Query1.Open;
except
   DM1.Query1.SQL.savetofile(mpastatemp + 'sql.txt');
   end;

if log_gerar_tag_cbenef then
   begin
   query_cbenef:=TQuery.Create(nil);
   query_cbenef.databasename:=DM1.SG_ASSOC.DatabaseName;
   query_cbenef.SQL.Clear;
   query_cbenef.SQL.add('SELECT P2CBENEF,CB_DESCRICAO,P2CBENEF || '+QuotedStr('-')+'|| CB_OBS_NF AS OBS_NF FROM ('
                       +' select P2CBENEF,COUNT(*) AS QTD FROM CADP02  WHERE p2chave='+Qr_CabP1CHAVE.AsString
                       +' AND NOT  P2CBENEF IS NULL '
                       +' GROUP BY P2CBENEF '
                       +') T1,CAD_CBENEF where P2CBENEF=CB_CODIGO ');
    try
       query_cbenef.Open;
       Qr_Cabobs_cbenef.Value:='';
       While not query_cbenef.eof do
          begin
          Qr_Cabobs_cbenef.Value:=Qr_Cabobs_cbenef.Value+query_cbenef.fieldbyname('OBS_NF').asstring+'. '+mquebralinha;
          query_cbenef.next;
          end;
    except
       end;
    query_cbenef.close;
    freeandnil(query_cbenef);
    end;






Qr_CabNOMFPGTO.AsString :=DM1.Query1.FieldByName('NOMFOR').AsString;


try
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add(' SELECT round((sum(p2qtd*decode(p2pcofpg,null,0,p2pcofpg))-sum(p2totliq))/  '
  +' case when sum(p2qtd*decode(p2pcofpg,null,0,p2pcofpg)) =0 then 1 else sum(p2qtd*decode(p2pcofpg,null,0,p2pcofpg)) end  *100,2) ');
  DM1.Query1.SQL.Add(' as total FROM CADP02 ');
  DM1.Query1.SQL.Add(' WHERE P2CHAVE='+QuotedStr(Qr_CabP1CHAVE.AsString));
  DM1.Query1.SQL.Add(' AND P2ORDEM='+QuotedStr(Qr_CabP1ORDEM.AsString));
  DM1.Query1.SQL.Add(' AND P2CODEMP='+QuotedStr(Qr_CabP1CODEMP.AsString));
  DM1.Query1.SQL.Add(' AND P2LOTSEQ='+QuotedStr(Qr_CabP1LOTSEQ.AsString));
  DM1.Query1.Open;

  if DM1.Query1.FieldByName('total').AsFloat > 0 then
    Qr_CabMNegoc.AsFloat:=DM1.Query1.FieldByName('total').AsFloat
  else
    Qr_CabMNegoc.AsFloat:=0;
  Qr_CabMNegoc.AsFloat:=DM4.Tb_Par01PDESCMP0.Value-DM1.Query1.FieldByName('total').AsFloat;
except
  Qr_CabMNegoc.AsFloat:=0;
  end;

if Qr_CabMNegoc.AsFloat < 0 then
  Qr_CabMNegoc.AsFloat:=0;
Qr_CabMNegoc.DisplayFormat:='#,##0.00';

except
   end;

end;

procedure TDM2.Qr_RMenCalcFields(DataSet: TDataSet);
begin
Qr_RMenest_atu.Value:=0;
DM2.Tb_EstMes.Locate('CECODPRO',DM2.Qr_RMenPDCODPRO.Value,[]);
While (DM2.Tb_EstMesCECODPRO.Value=DM2.Qr_RMenPDCODPRO.Value) and not (DM2.Tb_EstMes.Eof) do
   begin
   Qr_RMenest_atu.Value:=Qr_RMenest_atu.Value+DM2.Tb_EstMesESTOQUE.Value;
   DM2.Tb_EstMes.Next;
   end;
Qr_RMenvendas.Value    :=0;
Qr_RMenoutras_sai.Value:=0;
Qr_RMendev_for.Value   :=0;
Qr_RMendev_cli.Value   :=0;
Qr_RMentransf_sai.Value:=0;
Qr_RMencompras.Value   :=0;
Qr_RMenajuste_ent.Value:=0;
Qr_RMenajuste_sai.Value:=0;
Qr_RMenoutras_ent.Value:=0;


DM2.Tb_VenMes.Locate('P2CODPRO',DM2.Qr_RMenPDCODPRO.Value,[]);
While (DM2.Tb_VenMesP2CODPRO.Value=DM2.Qr_RMenPDCODPRO.Value) and not (DM2.Tb_VenMes.Eof) do
   begin
   if DM2.Tb_VenMesP1TIPO.Value=1 then
      Qr_RMenvendas.Value    :=Qr_RMenvendas.Value+DM2.Tb_VenMesQTD.Value
   else if DM2.Tb_VenMesP1TIPO.Value=2 then
      Qr_RMenoutras_sai.Value:=Qr_RMenoutras_sai.Value+DM2.Tb_VenMesQTD.Value
   else if DM2.Tb_VenMesP1TIPO.Value=3 then
      Qr_RMendev_for.Value   :=Qr_RMendev_for.Value+DM2.Tb_VenMesQTD.Value
   else if DM2.Tb_VenMesP1TIPO.Value=4 then
      Qr_RMenoutras_sai.Value:=Qr_RMenoutras_sai.Value+DM2.Tb_VenMesQTD.Value
   else if DM2.Tb_VenMesP1TIPO.Value=5 then
      Qr_RMentransf_sai.Value:=Qr_RMentransf_sai.Value+DM2.Tb_VenMesQTD.Value
   else if DM2.Tb_VenMesP1TIPO.Value=6 then
      Qr_RMenoutras_sai.Value:=Qr_RMenoutras_sai.Value+DM2.Tb_VenMesQTD.Value
   else if DM2.Tb_VenMesP1TIPO.Value=7 then
      Qr_RMenoutras_sai.Value:=Qr_RMenoutras_sai.Value+DM2.Tb_VenMesQTD.Value
   else if DM2.Tb_VenMesP1TIPO.Value=8 then
      Qr_RMendev_cli.Value   :=Qr_RMendev_cli.Value+DM2.Tb_VenMesQTD.Value
   else if DM2.Tb_VenMesP1TIPO.Value=9 then
      Qr_RMenoutras_sai.Value:=Qr_RMenoutras_sai.Value+Tb_VenMesQTD.Value;
   DM2.Tb_VenMes.Next;
   end;




DM2.Tb_EntMes.Locate('PF2CODPRO',DM2.Qr_RMenPDCODPRO.Value,[]);
While (DM2.Tb_EntMesPF2CODPRO.Value=DM2.Qr_RMenPDCODPRO.Value) and not (DM2.Tb_EntMes.Eof) do
   begin
   Qr_RMencompras.Value:=Qr_RMencompras.Value+DM2.Tb_EntMesQTD.Value;
   dm2.Tb_EntMes.Next;
   end;
DM2.Tb_AjMes.Locate('AJCODPRO',DM2.Qr_RMenPDCODPRO.Value,[]);
While (DM2.Tb_AjMesAJCODPRO.Value=DM2.Qr_RMenPDCODPRO.Value) and not (DM2.Tb_AjMes.Eof) do
   begin
   if DM2.Tb_AjMesAJTIPOM.Value=1 then
      Qr_RMenajuste_sai.Value:=Qr_RMenajuste_sai.Value+DM2.Tb_AjMesQTD.Value
   else
      Qr_RMenajuste_ent.Value:=Qr_RMenajuste_ent.Value+DM2.Tb_AjMesQTD.Value;
   DM2.Tb_AjMes.Next;
   end;

DM2.Qr_RMenestini.Value:=Qr_RMenest_atu.Value+
                        (Qr_RMenvendas.Value
                        +Qr_RMenoutras_sai.Value
                        +Qr_RMendev_for.Value
                        +Qr_RMentransf_sai.Value
                        +Qr_RMenajuste_sai.Value)
                        -(Qr_RMendev_cli.Value
                        +Qr_RMencompras.Value
                        +Qr_RMenajuste_ent.Value
                        +Qr_RMenoutras_ent.Value);
end;

procedure TDM2.Tb_PPRCalcFields(DataSet: TDataSet);
begin
if flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',DM2.Tb_PPRPPCODPRO.AsString) then
   DM2.Tb_PPRnompro.Value:=DM1.Query1.fields[0].AsString;
end;

procedure TDM2.Tb_CCobCalcFields(DataSet: TDataSet);
begin
if flqr1('CRAZAO,CLOG,CBAIRRO,CCIDADE,CUF,CCEP,CFONE01,CFAX','C','CADCLI','N','CCODCLI',DM2.Tb_CCobCCCODCLI.AsString) then
   begin
   DM2.Tb_CCobrazao.Value  :=DM1.Query1.Fields[0].AsString;
   DM2.Tb_CCobendc.Value   :=DM1.Query1.Fields[1].AsString;
   DM2.Tb_CCobbairro.Value :=DM1.Query1.Fields[2].AsString;
   DM2.Tb_CCobcidade.Value :=DM1.Query1.Fields[3].AsString;
   DM2.Tb_CCobcepc.Value   :=DM1.Query1.Fields[5].AsString;
   DM2.Tb_CCobfone.Value   :=DM1.Query1.FieldbyName('CFONE01').AsString;
   DM2.Tb_CCobfax.Value    :=DM1.Query1.FieldbyName('CFAX').AsString;


   end;
DM2.Tb_CCobnumero.Value:=FormatFloat('000000',DM2.Tb_CCobCCNUMERO.Value)+'-'+DM2.Tb_CCobCCDESD.Value;
DM2.Tb_CCobatraso.Value:=DM2.Tb_CCobCCDTPAG.Value-DM2.Tb_CCobCCDTVCTO.Value;
if DM2.Tb_CCobatraso.Value<0 then
   DM2.Tb_CCobatraso.Value:=0;
if DM2.Tb_CCobatraso.Value>0 then
   begin
   DM2.Tb_CCobtotdeb.Value:=DM2.Tb_CCobCCVALOR.Value+DM2.Tb_CCobCCVLRENCAR.Value+
                            (DM2.Tb_CCobCCJURDIA.Value*DM2.Tb_CCobatraso.Value);
   DM2.Tb_CCobtotjur.Value:=(DM2.Tb_CCobCCJURDIA.Value*DM2.Tb_CCobatraso.Value);

   end
else
   begin
   DM2.Tb_CCobtotdeb.Value:=DM2.Tb_CCobCCVALOR.Value+DM2.Tb_CCobCCVLRENCAR.Value;
   DM2.Tb_CCobtotjur.Value:=0;
   end;

end;

procedure TDM2.Tb_Dep_FolhaBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(DPCODDEP) from CADDEPTO '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADDEPTO',[]),'',' where DPCODEMP=0'+IntToStr(codemp)));
DM1.Query1.Open;
cod:=DM1.Query1.Fields[0].AsInteger+1;

end;

procedure TDM2.Tb_Dep_FolhaAfterInsert(DataSet: TDataSet);
begin
DM2.Tb_Dep_FolhaDPCODEMP.Value:=codemp;
DM2.Tb_Dep_FolhaDPCODDEP.Value:=cod;
DM2.Tb_Dep_FolhaDPNOME.Value:='_';
end;

procedure TDM2.Tb_EveBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(CECODEVE) from CADEVE '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADEVE',[]),'',' where CECODEMP=0'+IntToStr(codemp)));
DM1.Query1.Open;
cod:=DM1.Query1.Fields[0].AsInteger+1;

end;

procedure TDM2.Tb_EveAfterInsert(DataSet: TDataSet);
begin
DM2.Tb_EveCECODEMP.Value   :=codemp;
DM2.Tb_EveCECODEVE.Value   :=cod;
DM2.Tb_EveCENAT.Value      :=0;
DM2.Tb_EveCETIPO.Value     :=0;
DM2.Tb_EveCEINCINSS.Value  :=0;
DM2.Tb_EveCEINCFGTS.Value  :=0;
DM2.Tb_EveCEINCIR.Value    :=0;
DM2.Tb_EveCEINCVT.Value    :=0;
DM2.Tb_EveCETP_EVENTO.Value:=0;
DM2.Tb_EveCECODEDSR.Value  :=0;
end;

procedure TDM2.Tb_FunBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.Sql.Add('Select max(CFCODFUN) from CADFUN '
                  +iif(DM1.Qr_Tid.locate('TINOME','CADFUN',[]),'',' where CFCODEMP=0'+IntToStr(codemp)));
DM1.Query1.Open;
cod:=DM1.Query1.Fields[0].AsInteger+1;

end;

procedure TDM2.Tb_FunAfterInsert(DataSet: TDataSet);
begin
DM2.Tb_FunCFCODEMP.Value   :=codemp;
DM2.Tb_FunCFCODFUN.Value   :=cod;
DM2.Tb_FunCFDT_CAD.Value   :=pdatasis;
DM2.Tb_FunCFCODUSR.Value   :=codusr;
DM2.Tb_FunCFDT_UALT.Value  :=pdatasis;
DM2.Tb_FunCFSTATUS.Value   :=0;
DM2.Tb_FunCFSEXO.Value     :=0;
DM2.Tb_FunCFEST_CIV.Value  :=0;
DM2.Tb_FunCFNIVEL_ESC.Value:=0;

end;

procedure TDM2.Tb_FunBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
For i:=0 to DM2.Tb_Fun.FieldCount-1 do
   begin
   if not DM2.Tb_Fun.Fields[i].IsNull then
      Continue;
   if DM2.Tb_Fun.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM2.Tb_Fun.Fields[i].Value:=0
//   else if DM2.Tb_Fec.fields[i].DataType in [ftDate,ftDateTime] then
//      DM2.Tb_Fec.Fields[i].Value:=0
   else if DM2.Tb_Fun.Fields[i].DataType in [ftString,ftMemo] then
      DM2.Tb_Fun.Fields[i].Value:='';
   end;

DM2.Tb_FunCFCODUSR.Value :=codusr;
DM2.Tb_FunCFDT_UALT.Value:=pdatasis;

end;

procedure TDM2.Tb_FunCalcFields(DataSet: TDataSet);
begin
if DM2.Tb_FunCFCODCAR.Value>0 then
   begin
   if flqr1('NOMCAR','','CADCAR','N','CODCAR',DM2.Tb_FunCFCODCAR.AsString) then
      DM2.Tb_Funnomcar.Value:=DM1.Query1.Fields[0].AsString;
   end;
if DM2.Tb_FunCFCODDEP.Value>0 then
   begin
   if flqr1('DPNOME','DP','CADDEPTO','N','DPCODDEP',DM2.Tb_FunCFCODDEP.AsString) then
      DM2.Tb_Funnomdep.Value:=DM1.Query1.Fields[0].AsString;
   end;
end;

procedure TDM2.Tb_EvePrefCalcFields(DataSet: TDataSet);
begin
if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE',DM2.Tb_EvePrefEPCODEVE.AsString) then
   DM2.Tb_EvePrefnomeve.Value:=DM1.Query1.Fields[0].AsString;
end;

procedure TDM2.Tb_EvePrefAfterInsert(DataSet: TDataSet);
begin
DM2.Tb_EvePrefEPCODEMP.Value:=codemp;
DM2.Tb_EvePrefEPCODCLI.Value:=pf_codcli;
DM2.Tb_EvePrefEPLOCAL.Value :=pf_tipo;
DM2.Tb_EvePrefEPQUANT.Value :=1;
pf_codclia :=0;
pf_tipoa   :=0;
pf_codevea :=0;
pf_codempa :=0;

end;

procedure TDM2.Tb_EvePrefBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
if DM2.Tb_EvePrefEPCODEVE.IsNull then
   begin
   MessageDlg('Código do evento nao pode ser nulo!',mtWarning,[mbOk],0);
   abort;
   end;
if pf_codevea<>0 then
   begin
   if (pf_codclia<>DM2.Tb_EvePrefEPCODCLI.AsInteger) or
      (pf_tipoa  <>DM2.Tb_EvePrefEPLOCAL.AsInteger)  or
      (pf_codevea<>DM2.Tb_EvePrefEPCODEVE.AsInteger) or
      (pf_codempa<>DM2.Tb_EvePrefEPCODEMP.AsInteger) then
      begin
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.add('Select EPCODEVE from EVEPREF where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADEVE',[]),'',' EPCODEMP=0'+DM2.Tb_EvePrefEPCODEMP.AsString+' and ')
                        +' EPLOCAL=0'+DM2.Tb_EvePrefEPLOCAL.AsString
                        +' and EPCODCLI=0'+DM2.Tb_EvePrefEPCODCLI.AsString
                        +' and EPCODEVE=0'+DM2.Tb_EvePrefEPCODEVE.AsString);
      try
         DM1.Query2.Open;
      except ON E: Exception do
         begin
         ex_erroSql_Novo(DM1.Query2,4230,'_stru'+e.message,'user');
         end;
         end;
      if not DM1.Query2.Eof then
         begin
         MessageDlg('Este Evento ja foi Cadastrado Anteriormente!',mtWarning,[mbOk],0);
         abort;
         end;
      if flqr1('CECODEDSR','CE','CADEVE','N','CECODEVE',DM2.Tb_EvePrefEPCODEVE.AsString) then
         begin
         if DM1.Query1.Fields[0].AsInteger>0 then
            begin
            if DM1.Query1.Fields[0].AsInteger<>pf_coddsra then
               begin
               DM1.Query2.Close;
               DM1.Query2.SQL.Clear;
               DM1.Query2.SQL.Add('Select EPCODEVE from EVEPREF,CADEVE where '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADEVE',[]),'',
                                  ' where EPCODEMP=0'+DM2.Tb_EvePrefEPCODEMP.AsString+' and CECODEMP=0'+DM2.Tb_EvePrefEPCODEMP.AsString+' and ')
                                 +' EPLOCAL=0'+dm2.Tb_EvePrefEPLOCAL.AsString
                                 +' and CECODEVE=EPCODEVE '
                                 +' and CECODEDSR=0'+DM1.Query1.Fields[0].AsString);
               try
                  DM1.Query2.Open;
               except ON E: Exception do
                  begin
                  ex_erroSql_Novo(DM1.Query2,4256,'_stru'+e.message,'user');
                  end;
                  end;
               if not DM1.Query2.Eof then
                  begin
                  MessageDlg('Não pode haver Codigo de DSR iguais!',mtWarning,[mbOk],0);
                  abort;
                  end;
               end;
            end;
         end;
      end;
   end
else
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.add('Select EPCODEVE from EVEPREF where '
                     +iif(DM1.Qr_Tid.locate('TINOME','CADEVE',[]),'',' EPCODEMP=0'+DM2.Tb_EvePrefEPCODEMP.AsString+' and ')
                     +' EPLOCAL=0'+DM2.Tb_EvePrefEPLOCAL.AsString
                     +' and EPCODCLI=0'+DM2.Tb_EvePrefEPCODCLI.AsString
                     +' and EPCODEVE=0'+DM2.Tb_EvePrefEPCODEVE.AsString);
   try
      DM1.Query2.Open;
   except ON E: Exception do
      begin
      ex_erroSql_Novo(DM1.Query2,4282,'_stru'+e.message,'user');
      end;
      end;
   if not DM1.Query2.Eof then
      begin
      MessageDlg('Este Evento ja foi Cadastrado Anteiormente!',mtWarning,[mbOk],0);
      abort;
      end;
   if flqr1('CECODEDSR','CE','CADEVE','N','CECODEVE',DM2.Tb_EvePrefEPCODEVE.AsString) then
      begin
      if DM1.Query1.Fields[0].AsInteger>0 then
         begin
         DM1.Query2.Close;
         DM1.Query2.SQL.Clear;
         DM1.Query2.SQL.Add('Select EPCODEVE from EVEPREF,CADEVE where '
                           +iif(DM1.Qr_Tid.Locate('TINOME','CADEVE',[]),'',
                           '  EPCODEMP=0'+DM2.Tb_EvePrefEPCODEMP.AsString+' and CECODEMP=0'+DM2.Tb_EvePrefEPCODEMP.AsString+' and ')
                           +' EPLOCAL=0'+dm2.Tb_EvePrefEPLOCAL.AsString
                           +' and CECODEVE=EPCODEVE '
                           +' and CECODEDSR=0'+DM1.Query1.Fields[0].AsString);
         try
            DM1.Query2.Open;
         except ON E: Exception do
            begin
            ex_erroSql_Novo(DM1.Query2,4288,'_stru'+e.message,'user');
            end;
            end;

         if not DM1.Query2.Eof then
            begin
            MessageDlg('Não pode haver Codigo de DSR iguais!',mtWarning,[mbOk],0);
            abort;
            end;
         end;
      end;
   end;
if pf_codcli=0 then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.add('Select EPCODCLI from EVEPREF where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADEVE',[]),'',' EPCODEMP=0'+DM2.Tb_EvePrefEPCODEMP.AsString+' and ')
                     +' EPLOCAL=0'+DM2.Tb_EvePrefEPLOCAL.AsString
                     +' and EPCODCLI<>0'
                     +' and EPCODEVE=0'+DM2.Tb_EvePrefEPCODEVE.AsString);
   try
      DM1.Query2.Open;
   except ON E: Exception do
      begin
      ex_erroSql_Novo(DM1.Query2,4331,'_stru'+e.message,'user');
      end;
      end;
   if not DM1.Query2.Eof then
      begin
      MessageDlg('Este Evento ja foi Cadastrado no funcionario: '+DM1.Query2.Fields[0].AsString+'!',mtWarning,[mbOk],0);
      abort;
      end;
   end
else
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.add('Select EPCODCLI from EVEPREF where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADEVE',[]),'',' EPCODEMP=0'+DM2.Tb_EvePrefEPCODEMP.AsString+' and ')
                     +' EPLOCAL=0'+DM2.Tb_EvePrefEPLOCAL.AsString
                     +' and EPCODCLI=0'
                     +' and EPCODEVE=0'+DM2.Tb_EvePrefEPCODEVE.AsString);
   try
      DM1.Query2.Open;
   except ON E: Exception do
      begin
      ex_erroSql_Novo(DM1.Query2,4353,'_stru'+e.message,'user');
      end;
      end;
   if not DM1.Query2.Eof then
      begin
      MessageDlg('Este Evento ja foi Cadastrado no Parametro Geral!',mtWarning,[mbOk],0);
      abort;
      end;
   end;
if flqr2('CECODEDSR','CE','CADEVE','N','CECODEDSR',DM2.Tb_EvePrefEPCODEVE.AsString) then
   begin
   MessageDlg('Este Evento é restritamente reservado para DSR!',mtWarning,[mbOk],0);
   abort;
   end;

if DM2.Tb_EvePrefEPQUANT.Value<1 then
   DM2.Tb_EvePrefEPQUANT.Value:=1;
For i:=0 to DM2.Tb_EvePref.FieldCount-1 do
   begin
   if not DM2.Tb_EvePref.Fields[i].IsNull then
      Continue;
   if DM2.Tb_EvePref.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM2.Tb_EvePref.Fields[i].Value:=0
//   else if DM2.Tb_EvePref.fields[i].DataType in [ftDate,ftDateTime] then
//      DM2.Tb_EvePref.Fields[i].Value:=0
   else if DM2.Tb_EvePref.Fields[i].DataType in [ftString,ftMemo] then
      DM2.Tb_EvePref.Fields[i].Value:='';
   end;

end;

procedure TDM2.Tb_EveCalcFields(DataSet: TDataSet);
begin
if DM2.Tb_EveCECODEDSR.Value>0 then
   begin
   if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE',DM2.Tb_EveCECODEDSR.AsString) then
      DM2.Tb_Evenomevedsr.Value:=DM1.Query1.Fields[0].AsString;
   end;
end;

procedure TDM2.Tb_EvePrefBeforeEdit(DataSet: TDataSet);
begin
pf_codclia :=DM2.Tb_EvePrefEPCODCLI.AsInteger;
pf_tipoa   :=DM2.Tb_EvePrefEPLOCAL.AsInteger;
pf_codevea :=DM2.Tb_EvePrefEPCODEVE.AsInteger;
pf_codempa :=DM2.Tb_EvePrefEPCODEMP.AsInteger;

if flqr1('CECODEDSR','CE','CADEVE','N','CECODEVE',DM2.Tb_EvePrefEPCODEVE.AsString) then
   pf_coddsra:=DM1.Query1.Fields[0].AsInteger
else
   pf_coddsra:=0;   

end;

procedure TDM2.Tb_PPRAfterInsert(DataSet: TDataSet);
begin
if DM2.Tb_PPRPPCODEMP.IsNull THEN
   DM2.Tb_PPRPPCODEMP.Value:=codemp;
if DM2.Tb_PPRPPPROMOCAO.IsNull then
   DM2.Tb_PPRPPPROMOCAO.Value:=' ';
if DM2.Tb_PPRPPPVTIP.IsNull then
   DM2.Tb_PPRPPPVTIP.Value:=' ';
if DM2.Tb_PPRPPPVTAB.IsNull then
   DM2.Tb_PPRPPPVTAB.Value:=' ';
if DM2.Tb_PPRPPCODRED.IsNull then
   DM2.Tb_PPRPPCODRED.Value:=0;
if DM2.Tb_PPRPPFLAG.IsNull then
   DM2.Tb_PPRPPFLAG.Value:=' ';
if DM2.Tb_PPRPPCODPRO.IsNull then
   DM2.Tb_PPRPPCODPRO.Value:=0;
if DM2.Tb_PPRPPCODGRU.IsNull then
   DM2.Tb_PPRPPCODGRU.Value:=0;
if DM2.Tb_PPRPPPCOVDA.IsNull then
   DM2.Tb_PPRPPPCOVDA.Value:=0;
if DM2.Tb_PPRPPDESC_1.IsNull then
   DM2.Tb_PPRPPDESC_1.Value:=0;
if DM2.Tb_PPRPPDESC_2.IsNull then
   DM2.Tb_PPRPPDESC_2.Value:=0;
if DM2.Tb_PPRPPDESC_3.IsNull then
   DM2.Tb_PPRPPDESC_3.Value:=0;
if DM2.Tb_PPRPPCONFVDA.IsNull then
   DM2.Tb_PPRPPCONFVDA.Value:='N';
if DM2.Tb_PPRPPCOMIS.IsNull then
   DM2.Tb_PPRPPCOMIS.Value:=0;
if DM2.Tb_PPRPPQTDMIN.IsNull then
   DM2.Tb_PPRPPQTDMIN.Value:=0;
if DM2.Tb_PPRPPVALMIN.IsNull then
   DM2.Tb_PPRPPVALMIN.Value:=0;
if DM2.Tb_PPRPPOBS.IsNull then
   DM2.Tb_PPRPPOBS.Value:=' ';
if DM2.Tb_PPRPPKIT.IsNull then
   DM2.Tb_PPRPPKIT.Value:='N';

DM2.Tb_PPRPPDATHOR_INC.asdatetime:=now();


{
object Tb_PPRPPDATINI: TDateTimeField
  FieldName = 'PPDATINI'
  Origin = 'SG_ASSOC.CADPPR.PPDATINI'
end
object Tb_PPRPPDATFIN: TDateTimeField
  FieldName = 'PPDATFIN'
  Origin = 'SG_ASSOC.CADPPR.PPDATFIN'
end
}


end;

procedure TDM2.c(DataSet: TDataSet);
begin
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   MessageDlg('Ja Existe um Registro igual a Este Click em Cancelar!',mtInformation,[mbOk],0);
   end;
end;

procedure TDM2.Tb_ArqBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
For i:=0 to DM2.Tb_Arq.FieldCount-1 do
   begin
   if not DM2.Tb_Arq.Fields[i].IsNull then
      Continue;
   if DM2.Tb_Arq.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM2.Tb_Arq.Fields[i].Value:=0
//   else if DM2.Tb_Arq.fields[i].DataType in [ftDate,ftDateTime] then
//      DM2.Tb_Arq.Fields[i].Value:=0
   else if DM2.Tb_Arq.Fields[i].DataType in [ftString,ftMemo] then
      DM2.Tb_Arq.Fields[i].Value:='';
   end;


end;

procedure TDM2.Tb_CFRBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
For i:=0 to DM2.Tb_CFR.FieldCount-1 do
   begin
   if not DM2.Tb_CFR.Fields[i].IsNull then
      Continue;
   if DM2.Tb_CFR.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM2.Tb_CFR.Fields[i].Value:=0
//   else if DM2.Tb_CFR.fields[i].DataType in [ftDate,ftDateTime] then
//      DM2.Tb_CFR.Fields[i].Value:=0
   else if DM2.Tb_CFR.Fields[i].DataType in [ftString,ftMemo] then
      DM2.Tb_CFR.Fields[i].Value:='';
   end;

end;

procedure TDM2.Tb_Dep_FolhaBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
For i:=0 to DM2.Tb_Dep_Folha.FieldCount-1 do
   begin
   if not DM2.Tb_Dep_Folha.Fields[i].IsNull then
      Continue;
   if DM2.Tb_Dep_Folha.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM2.Tb_Dep_Folha.Fields[i].Value:=0
//   else if DM2.Tb_Dep_Folha.fields[i].DataType in [ftDate,ftDateTime] then
//      DM2.Tb_Dep_Folha.Fields[i].Value:=0
   else if DM2.Tb_Dep_Folha.Fields[i].DataType in [ftString,ftMemo] then
      DM2.Tb_Dep_Folha.Fields[i].Value:='';
   end;

end;

procedure TDM2.Tb_EmpBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
For i:=0 to DM2.Tb_Emp.FieldCount-1 do
   begin
   if not DM2.Tb_Emp.Fields[i].IsNull then
      Continue;
   if DM2.Tb_Emp.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM2.Tb_Emp.Fields[i].Value:=0
//   else if DM2.Tb_Emp.fields[i].DataType in [ftDate,ftDateTime] then
//      DM2.Tb_Emp.Fields[i].Value:=0
   else if DM2.Tb_Emp.Fields[i].DataType in [ftString,ftMemo] then
      DM2.Tb_Emp.Fields[i].Value:='';
   end;

end;

procedure TDM2.Tb_EveBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
For i:=0 to DM2.Tb_Eve.FieldCount-1 do
   begin
   if not DM2.Tb_Eve.Fields[i].IsNull then
      Continue;
   if DM2.Tb_Eve.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM2.Tb_Eve.Fields[i].Value:=0
//   else if DM2.Tb_Eve.fields[i].DataType in [ftDate,ftDateTime] then
//      DM2.Tb_Eve.Fields[i].Value:=0
   else if DM2.Tb_Eve.Fields[i].DataType in [ftString,ftMemo] then
      DM2.Tb_Eve.Fields[i].Value:='';
   end;

end;

procedure TDM2.Tb_LFolBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
For i:=0 to DM2.Tb_LFol.FieldCount-1 do
   begin
   if not DM2.Tb_LFol.Fields[i].IsNull then
      Continue;
   if DM2.Tb_LFol.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM2.Tb_LFol.Fields[i].Value:=0
//   else if DM2.Tb_LFol.fields[i].DataType in [ftDate,ftDateTime] then
//      DM2.Tb_LFol.Fields[i].Value:=0
   else if DM2.Tb_LFol.Fields[i].DataType in [ftString,ftMemo] then
      DM2.Tb_LFol.Fields[i].Value:='';
   end;

end;

procedure TDM2.Tb_ParFPagBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
For i:=0 to DM2.Tb_ParFPag.FieldCount-1 do
   begin
   if not DM2.Tb_ParFPag.Fields[i].IsNull then
      Continue;
   if DM2.Tb_ParFPag.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM2.Tb_ParFPag.Fields[i].Value:=0
//   else if DM2.Tb_ParFPag.fields[i].DataType in [ftDate,ftDateTime] then
//      DM2.Tb_ParFPag.Fields[i].Value:=0
   else if DM2.Tb_ParFPag.Fields[i].DataType in [ftString,ftMemo] then
      DM2.Tb_ParFPag.Fields[i].Value:='';
   end;

end;

procedure TDM2.Tb_OPBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
For i:=0 to DM2.Tb_OP.FieldCount-1 do
   begin
   if not DM2.Tb_OP.Fields[i].IsNull then
      Continue;
   if DM2.Tb_OP.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM2.Tb_OP.Fields[i].Value:=0
//   else if DM2.Tb_OP.fields[i].DataType in [ftDate,ftDateTime] then
//      DM2.Tb_OP.Fields[i].Value:=0
   else if DM2.Tb_OP.Fields[i].DataType in [ftString,ftMemo] then
      DM2.Tb_OP.Fields[i].Value:='';
   end;

end;

procedure TDM2.Tb_FecBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
For i:=0 to DM2.Tb_Fec.FieldCount-1 do
   begin
   if not DM2.Tb_Fec.Fields[i].IsNull then
      Continue;
   if DM2.Tb_Fec.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM2.Tb_Fec.Fields[i].Value:=0
//   else if DM2.Tb_Fec.fields[i].DataType in [ftDate,ftDateTime] then
//      DM2.Tb_Fec.Fields[i].Value:=0
   else if DM2.Tb_Fec.Fields[i].DataType in [ftString,ftMemo] then
      DM2.Tb_Fec.Fields[i].Value:='';
   end;


end;

procedure TDM2.Tb_JCBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.add('Select max(JCCODIGO) from CTDVJC');
DM1.Query1.Open;
cod:=DM1.Query1.Fields[0].AsFloat+1;
end;

procedure TDM2.Tb_JCAfterInsert(DataSet: TDataSet);
begin
DM2.Tb_JCJCCODIGO.Value:=cod;
DM2.Tb_JCJCCODEMP.Value:=codemp;
end;

procedure TDM2.Tb_JCBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
For i:=0 to DM2.Tb_JC.FieldCount-1 do
   begin
   if not DM2.Tb_JC.Fields[i].IsNull then
      Continue;
   if DM2.Tb_JC.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM2.Tb_JC.Fields[i].Value:=0
//   else if DM2.Tb_JC.fields[i].DataType in [ftDate,ftDateTime] then
//      DM2.Tb_JC.Fields[i].Value:=0
   else if DM2.Tb_JC.Fields[i].DataType in [ftString,ftMemo] then
      DM2.Tb_JC.Fields[i].Value:='';
   end;


end;

procedure TDM2.e(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
if EDBEngineError(E).Errors[0].ErrorCode = 9729 then
MessageDlg('Registro já existe!',mtWarning,[mbOk],0);
Action:= daAbort;
end;

procedure TDM2.Tb_FDiaBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
For i:=0 to DM2.Tb_FDia.FieldCount-1 do
   begin
   if not DM2.Tb_FDia.Fields[i].IsNull then
      Continue;
   if DM2.Tb_FDia.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM2.Tb_FDia.Fields[i].Value:=0
//   else if DM2.Tb_FDia.fields[i].DataType in [ftDate,ftDateTime] then
//      DM2.Tb_FDia.Fields[i].Value:=0
   else if DM2.Tb_FDia.Fields[i].DataType in [ftString,ftMemo] then
      DM2.Tb_FDia.Fields[i].Value:='';
   end;


end;

procedure TDM2.Tb_MoeBeforeInsert(DataSet: TDataSet);
var
query_Temp:tQuery;
begin
query_Temp:=tQuery.Create(nil);
query_Temp.DatabaseName:='SG_ASSOC';
query_Temp.Close;
query_Temp.Sql.Clear;
query_Temp.Sql.Add('select max(MCODMOE) from CADMOE ');
query_Temp.Open;
cod:=query_Temp.Fields[0].AsInteger+1;
freeandnil(query_temp);
end;

procedure TDM2.Tb_MoeAfterInsert(DataSet: TDataSet);
begin
DM2.Tb_MoeMCODMOE.Value:=Cod;
DM2.Tb_MoeMNOME.Value:='_';
DM2.Tb_MoeMDATHOR_INC.Value :=Now;
DM2.Tb_MoeMCODUSR_INC.Value:=codusr;
DM2.Tb_MoeMNOMUSR_INC.Value:=nomusr;
DM2.Tb_Moe.Post;
DM2.Tb_Moe.Edit;

end;

procedure TDM2.Tb_MoeAfterCancel(DataSet: TDataSet);
begin
If (DM2.Tb_MoeMNOME.Value='_') or  (DM2.Tb_MoeMNOME.Value='NOME INVALIDO****') then
   DM2.Tb_Moe.Delete;

end;

procedure TDM2.Tb_MoeBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
if Trim(DM2.Tb_MoeMNOME.Value)='' then
   DM2.Tb_MoeMNOME.Value:='_';
For i:=0 to DM2.Tb_Moe.FieldCount-1 do
   begin
   if not DM2.Tb_Moe.Fields[i].IsNull then
      Continue;
   if DM2.Tb_Moe.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM2.Tb_Moe.Fields[i].Value:=0
   else if DM2.Tb_Moe.fields[i].DataType in [ftDate,ftDateTime] then
      DM2.Tb_Moe.Fields[i].Value:=0
   else if DM2.Tb_Moe.Fields[i].DataType in [ftString,ftMemo] then
      DM2.Tb_Moe.Fields[i].Value:=' ';
   end;


end;

procedure TDM2.Tb_IndBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
For i:=0 to DM2.Tb_Ind.FieldCount-1 do
   begin
   if not DM2.Tb_Ind.Fields[i].IsNull then
      Continue;
   if DM2.Tb_Ind.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM2.Tb_Ind.Fields[i].Value:=0
   else if DM2.Tb_Ind.fields[i].DataType in [ftDate,ftDateTime] then
      DM2.Tb_Ind.Fields[i].Value:=0
   else if DM2.Tb_Ind.Fields[i].DataType in [ftString,ftMemo] then
      DM2.Tb_Ind.Fields[i].Value:=' ';
   end;


end;

procedure TDM2.Tb_MVeiAfterCancel(DataSet: TDataSet);
begin
If (DM2.Tb_MVeiMNOME.Value='_') or  (DM2.Tb_MVeiMNOME.Value='NOME INVALIDO****') then
   DM2.Tb_MVei.Delete;

end;

procedure TDM2.Tb_MVeiAfterInsert(DataSet: TDataSet);
begin
DM2.Tb_MVeiMCODMAN.Value:=Cod;
DM2.Tb_MVeiMNOME.Value  :='_';
DM2.Tb_MVeiMCODEMP.Value:=codemp;
DM2.Tb_MVei.Post;
DM2.Tb_MVei.Edit;

end;

procedure TDM2.Tb_MVeiBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('select max(MCODMAN) from CADMVEI  ');
if not DM1.Qr_tid.Locate('TINOME','CADMAN',[]) then
   DM1.Query1.SQL.Add(' where MCODEMP='+IntTostr(Codemp));
DM1.Query1.Open;
cod:=DM1.Query1.Fields[0].AsInteger+1;

end;

procedure TDM2.Tb_MVeiBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
if Trim(DM2.Tb_MVeiMNOME.Value)='' then
   DM2.Tb_MVeiMNOME.Value:='_';
For i:=0 to DM2.Tb_MVei.FieldCount-1 do
   begin
   if not DM2.Tb_MVei.Fields[i].IsNull then
      Continue;
   if DM2.Tb_MVei.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM2.Tb_MVei.Fields[i].Value:=0
   else if DM2.Tb_MVei.fields[i].DataType in [ftDate,ftDateTime] then
      DM2.Tb_MVei.Fields[i].Value:=0
   else if DM2.Tb_MVei.Fields[i].DataType in [ftString,ftMemo] then
      DM2.Tb_MVei.Fields[i].Value:=' ';
   end;

end;

procedure TDM2.Tb_MVeiCalcFields(DataSet: TDataSet);
begin
if DM2.Tb_MVeiMCODMOE.Value>0 then
   begin
   if flqr1('MNOME','M','CADMOE','N','MCODMOE',DM2.Tb_MVeiMCODMOE.AsString) then
      begin
      DM2.Tb_MVeinomemoe.Value:=DM1.Query1.fields[0].asString;
      end;
   end;

end;

procedure TDM2.Tb_Imo01AfterCancel(DataSet: TDataSet);
begin
If (DM2.Tb_Imo01IM1NOME.Value='_') or  (DM2.Tb_Imo01IM1NOME.Value='NOME INVALIDO****') then
   DM2.Tb_Imo01.Delete;

end;

procedure TDM2.Tb_Imo01AfterInsert(DataSet: TDataSet);
begin
DM2.Tb_Imo01IM1CODIMO.Value:=Cod;
DM2.Tb_Imo01IM1NOME.Value:='_';
DM2.Tb_Imo01IM1CODEMP.Value:=codemp;
DM2.Tb_Imo01.Post;
DM2.Tb_Imo01.Edit;

end;

procedure TDM2.Tb_Imo01BeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('select max(IM1CODIMO) from CADIMO01 ');
if not DM1.Qr_tid.Locate('TINOME','CADIMO',[]) then
   DM1.Query1.SQL.Add(' where  IM1CODEMP='+IntTostr(Codemp));
   DM1.Query1.Open;
cod:=DM1.Query1.Fields[0].AsInteger+1;

end;

procedure TDM2.Tb_Imo01BeforePost(DataSet: TDataSet);
var
i: Integer;
begin
if Trim(DM2.Tb_Imo01IM1NOME.Value)='' then
   DM2.Tb_Imo01IM1NOME.Value:='_';
For i:=0 to DM2.Tb_Imo01.FieldCount-1 do
   begin
   if not DM2.Tb_Imo01.Fields[i].IsNull then
      Continue;
   if DM2.Tb_Imo01.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM2.Tb_Imo01.Fields[i].Value:=0
   else if DM2.Tb_Imo01.fields[i].DataType in [ftDate,ftDateTime] then
      DM2.Tb_Imo01.Fields[i].Value:=0
   else if DM2.Tb_Imo01.Fields[i].DataType in [ftString,ftMemo] then
      DM2.Tb_Imo01.Fields[i].Value:=' ';
   end;


end;

procedure TDM2.Tb_Imo01CalcFields(DataSet: TDataSet);
begin
if DM2.Tb_Imo01IM1CODIND.Value>0 then
   begin
   if flqr1('MNOME','M','CADMOE','N','MCODMOE',DM2.Tb_Imo01IM1CODIND.AsString) then
      begin
      DM2.Tb_Imo01nomemoe.Value:=DM1.Query1.fields[0].asString;
      end;
   end;
if (DM2.Tb_Imo01IM1DATAAQ.IsNull) or (DM2.Tb_Imo01IM1DATAAQ.Value<=pdatanula) then
   DM2.Tb_Imo01datacompra.Value:='/  /'
else
   DM2.Tb_Imo01datacompra.Value:=FormatDateTime(fdt2, DM2.Tb_Imo01IM1DATAAQ.Value);
if (DM2.Tb_Imo01IM1DATAVDA.IsNull) or (DM2.Tb_Imo01IM1DATAVDA.Value<=pdatanula) then
   DM2.Tb_Imo01datavenda.Value:='/  /'
else
   DM2.Tb_Imo01datavenda.Value:=FormatDateTime(fdt2, DM2.Tb_Imo01IM1DATAVDA.Value);
if fsonumero(DM2.Tb_Imo01IM1CODPRO.Value)=0 then
   DM2.Tb_Imo01nomepro.Value:=''
else
   begin
   if flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',DM2.Tb_Imo01IM1CODPRO.AsString) then
      begin
      DM2.Tb_Imo01nomepro.Value:=DM1.Query1.fields[0].asString;
      end;
   end;

end;

procedure TDM2.Tb_Vei01AfterCancel(DataSet: TDataSet);
begin
If (DM2.Tb_Vei01V1NOME.Value='_') or  (DM2.Tb_Vei01V1NOME.Value='NOME INVALIDO****') then
   DM2.Tb_Vei01.Delete;

end;

procedure TDM2.Tb_Vei01AfterInsert(DataSet: TDataSet);
begin
DM2.Tb_Vei01V1CODVEI.Value:=Cod;
DM2.Tb_Vei01V1NOME.Value:='_';
DM2.Tb_Vei01V1CODEMP.Value:=codemp;
DM2.Tb_Vei01.Post;
DM2.Tb_Vei01.Edit;

end;

procedure TDM2.Tb_Vei01BeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('select max(V1CODVEI) from CADVEI01 ');
if not DM1.Qr_tid.Locate('TINOME','CADVEI',[]) then
   DM1.Query1.SQL.Add(' where  V1CODEMP='+IntTostr(Codemp));
   DM1.Query1.Open;
cod:=DM1.Query1.Fields[0].AsInteger+1;

end;

procedure TDM2.Tb_Vei01BeforePost(DataSet: TDataSet);
var
i: Integer;
begin
if Trim(DM2.Tb_Vei01V1NOME.Value)='' then
   DM2.Tb_Vei01V1NOME.Value:='_';
For i:=0 to DM2.Tb_Vei01.FieldCount-1 do
   begin
   if not DM2.Tb_Vei01.Fields[i].IsNull then
      Continue;
   if DM2.Tb_Vei01.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM2.Tb_Vei01.Fields[i].Value:=0
   else if DM2.Tb_Vei01.fields[i].DataType in [ftDate,ftDateTime] then
      DM2.Tb_Vei01.Fields[i].Value:=0
   else if DM2.Tb_Vei01.Fields[i].DataType in [ftString,ftMemo] then
      DM2.Tb_Vei01.Fields[i].Value:=' ';
   end;

end;

procedure TDM2.Tb_Vei01CalcFields(DataSet: TDataSet);
begin
if DM2.Tb_Vei01V1CODIND.Value>0 then
   begin
   if flqr1('MNOME','M','CADMOE','N','MCODMOE',DM2.Tb_Vei01V1CODIND.AsString) then
      begin
      DM2.Tb_Vei01nomemoe.Value:=DM1.Query1.fields[0].asString;
      end;
   end;
if (DM2.Tb_Vei01V1DATAAQ.IsNull) or (DM2.Tb_Vei01V1DATAAQ.Value<=pdatanula) then
   DM2.Tb_Vei01dt_compra.Value:='/  /'
else
   DM2.Tb_Vei01dt_compra.Value:=FormatDateTime(fdt2, DM2.Tb_Vei01V1DATAAQ.Value);
if (DM2.Tb_Vei01V1DATAVDA.IsNull) or (DM2.Tb_Vei01V1DATAVDA.Value<=pdatanula) then
   DM2.Tb_Vei01dt_venda.Value:='/  /'
else
   DM2.Tb_Vei01dt_venda.Value:=FormatDateTime(fdt2, DM2.Tb_Vei01V1DATAVDA.Value);


end;

procedure TDM2.Tb_Imo02CalcFields(DataSet: TDataSet);
begin
if DM2.Tb_Imo02IM2CODMAN.Value>0 then
   begin
   if flcadMImo(1,0,0,DM2.Tb_Imo02IM2CODMAN.AsString) then
      begin
      DM2.Tb_Imo02nomeman.Value:=DM2.Tb_MImoMNOME.AsString;
      end;
   end;
if (DM2.Tb_Imo02IM2DATAEM.IsNull) or (DM2.Tb_Imo02IM2DATAEM.Value<=pdatanula) then
   DM2.Tb_Imo02dataenv.Value:='/  /'
else
   DM2.Tb_Imo02dataenv.Value:=FormatDateTime(fdt2, DM2.Tb_Imo02IM2DATAEM.Value);
if (DM2.Tb_Imo02IM2DATARM.IsNull) or (DM2.Tb_Imo02IM2DATARM.Value<=pdatanula) then
   DM2.Tb_Imo02dataret.Value:='/  /'
else
   DM2.Tb_Imo02dataret.Value:=FormatDateTime(fdt2, DM2.Tb_Imo02IM2DATARM.Value);
DM2.Tb_Imo02total.Value:=DM2.Tb_Imo02IM2QTD.Value*DM2.Tb_Imo02IM2PCOUNI.Value;
if Tb_Imo02IM2FPGTO.AsFloat=0 then
  begin
  Tb_Imo02nomfpgto.AsString:='Pago';
  end
else if dm2.Tb_Imo02IM2FPGTO.AsFloat=1 then
  begin
  Tb_Imo02nomfpgto.AsString:='Contrato';
  end
else if dm2.Tb_Imo02IM2FPGTO.AsFloat=2 then
  begin
  Tb_Imo02nomfpgto.AsString:='Garantia';
  end;
end;

procedure TDM2.Tb_Imo02AfterCancel(DataSet: TDataSet);
begin
If (DM2.Tb_Imo02IM2STATUS.Value=-1)  then
   DM2.Tb_Imo02.Delete;

end;

procedure TDM2.Tb_Imo02AfterInsert(DataSet: TDataSet);
begin
DM2.Tb_Imo02IM2STATUS.Value:=-1;
DM2.Tb_Imo02IM2CODEMP.Value:=codemp;
DM2.Tb_Imo02IM2CODIMO.Value:=DM2.Tb_Imo01IM1CODIMO.Value;
DM2.Tb_Imo02IM2SEQ.Value   :=cod;
DM2.Tb_Imo02.Post;
DM2.Tb_Imo02.Edit;

end;

procedure TDM2.Tb_Imo02BeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('select max(IM2SEQ) from CADIMO02 where ');
if not DM1.Qr_tid.Locate('TINOME','CADIMO',[]) then
   DM1.Query1.SQL.Add(' IM2CODEMP='+IntTostr(Codemp)+' and ');
DM1.Query1.SQL.add('IM2CODIMO=0'+DM2.Tb_Imo02IM2CODIMO.AsString);
DM1.Query1.Open;
cod:=DM1.Query1.Fields[0].AsInteger+1;

end;

procedure TDM2.Tb_Imo02BeforePost(DataSet: TDataSet);
var
i: Integer;
begin
if DM2.Tb_Imo02IM2STATUS.IsNull then
   DM2.Tb_Imo02IM2STATUS.Value:=-1;
For i:=0 to DM2.Tb_Imo02.FieldCount-1 do
   begin
   if not DM2.Tb_Imo02.Fields[i].IsNull then
      Continue;
   if DM2.Tb_Imo02.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM2.Tb_Imo02.Fields[i].Value:=0
   else if DM2.Tb_Imo02.fields[i].DataType in [ftDate,ftDateTime] then
      DM2.Tb_Imo02.Fields[i].Value:=0
   else if DM2.Tb_Imo02.Fields[i].DataType in [ftString,ftMemo] then
      DM2.Tb_Imo02.Fields[i].Value:=' ';
   end;

end;

procedure TDM2.Tb_Vei02AfterCancel(DataSet: TDataSet);
begin
If (DM2.Tb_Vei02V2STATUS.Value=-1)  then
   DM2.Tb_Vei02.Delete;
end;

procedure TDM2.Tb_Vei02BeforePost(DataSet: TDataSet);
var
  i: Integer;
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('select max(V2SEQ) from CADVEI02 where ');
DM1.Query1.SQL.add('V2CODVEI=0'+DM2.Tb_Vei02V2CODVEI.AsString);
la_Empresas:=trim(fRetInstMECadastro('CADVEI02','V2CODEMP',codemp));
if la_Empresas <>'' then
   DM1.Query1.Sql.add(' and '+la_Empresas);
DM1.Query1.Open;
Tb_Vei02V2SEQ.AsInteger:=DM1.Query1.FieldByName('max(V2SEQ)').AsInteger+1;
Tb_Vei02V2CODEMP.AsInteger:=codemp;

if DM2.Tb_Vei02V2STATUS.IsNull then
   DM2.Tb_Vei02V2STATUS.Value:=-1;
For i:=0 to DM2.Tb_Vei02.FieldCount-1 do
   begin
   if not DM2.Tb_Vei02.Fields[i].IsNull then
      Continue;
   if DM2.Tb_Vei02.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM2.Tb_Vei02.Fields[i].Value:=0
   else if DM2.Tb_Vei02.fields[i].DataType in [ftDate,ftDateTime] then
      DM2.Tb_Vei02.Fields[i].Value:=0
   else if DM2.Tb_Vei02.Fields[i].DataType in [ftString,ftMemo] then
      DM2.Tb_Vei02.Fields[i].Value:=' ';
   end;
end;

procedure TDM2.Tb_Vei02CalcFields(DataSet: TDataSet);
begin
if DM2.Tb_Vei02V2CODMAN.Value>0 then
   begin
   if flcadMVei(1,0,0,DM2.Tb_Vei02V2CODMAN.AsString) then
      begin
      DM2.Tb_Vei02nomeman.Value:=DM2.Tb_MVeiMNOME.Value;
      end;
   end;
if (DM2.Tb_Vei02V2DATAEM.IsNull) or (DM2.Tb_Vei02V2DATAEM.Value<=pdatanula) then
   DM2.Tb_Vei02dataenv.Value:='/  /'
else
   DM2.Tb_Vei02dataenv.Value:=FormatDateTime(fdt2, DM2.Tb_Vei02V2DATAEM.Value);
if (DM2.Tb_Vei02V2DATARM.IsNull) or (DM2.Tb_Vei02V2DATARM.Value<=pdatanula) then
   DM2.Tb_Vei02dataret.Value:='/  /'
else
   DM2.Tb_Vei02dataret.Value:=FormatDateTime(fdt2, DM2.Tb_Vei02V2DATARM.Value);
DM2.Tb_Vei02total.Value:=DM2.Tb_Vei02V2QTD.Value*(DM2.Tb_Vei02V2PCOUNI.Value-DM2.Tb_Vei02V2DESCPQTD.Value);
DM2.Tb_Vei02totalsdesc.Value:=DM2.Tb_Vei02V2QTD.Value*DM2.Tb_Vei02V2PCOUNI.Value;
if DM2.Tb_Vei02V2FPGTO.AsFloat=0 then
  begin
  Tb_Vei02nomfpgto.AsString:='Pago';
  end
else if dm2.Tb_Vei02V2FPGTO.AsFloat=1 then
  begin
  Tb_Vei02nomfpgto.AsString:='Contrato';
  end
else if dm2.Tb_Vei02V2FPGTO.AsFloat=2 then
  begin
  Tb_Vei02nomfpgto.AsString:='Garantia';
  end;
end;

procedure TDM2.Tb_MImoAfterCancel(DataSet: TDataSet);
begin
If (DM2.Tb_MImoMNOME.Value='_') or  (DM2.Tb_MImoMNOME.Value='NOME INVALIDO****') then
   DM2.Tb_MImo.Delete;

end;

procedure TDM2.Tb_MImoAfterInsert(DataSet: TDataSet);
begin
DM2.Tb_MImoMCODMAN.Value:=Cod;
DM2.Tb_MImoMNOME.Value  :='_';
DM2.Tb_MImoMCODEMP.Value:=codemp;
DM2.Tb_MImo.Post;
DM2.Tb_MImo.Edit;

end;

procedure TDM2.Tb_MImoBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('select max(MCODMAN) from CADMIMO  ');
if not DM1.Qr_tid.Locate('TINOME','CADMAN',[]) then
   DM1.Query1.SQL.Add(' where MCODEMP='+IntTostr(Codemp));
DM1.Query1.Open;
cod:=DM1.Query1.Fields[0].AsInteger+1;

end;

procedure TDM2.Tb_MImoBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
if Trim(DM2.Tb_MImoMNOME.Value)='' then
   DM2.Tb_MImoMNOME.Value:='_';
For i:=0 to DM2.Tb_MImo.FieldCount-1 do
   begin
   if not DM2.Tb_MImo.Fields[i].IsNull then
      Continue;
   if DM2.Tb_MImo.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM2.Tb_MImo.Fields[i].Value:=0
   else if DM2.Tb_MImo.fields[i].DataType in [ftDate,ftDateTime] then
      DM2.Tb_MImo.Fields[i].Value:=0
   else if DM2.Tb_MImo.Fields[i].DataType in [ftString,ftMemo] then
      DM2.Tb_MImo.Fields[i].Value:=' ';
   end;


end;

procedure TDM2.Tb_MImoCalcFields(DataSet: TDataSet);
begin
if DM2.Tb_MImoMCODMOE.Value>0 then
   begin
   if flqr1('MNOME','M','CADMOE','N','MCODMOE',DM2.Tb_MImoMCODMOE.AsString) then
      begin
      DM2.Tb_MImonomemoe.Value:=DM1.Query1.fields[0].asString;
      end;
   end;

end;

procedure TDM2.Tb_HelpCalcFields(DataSet: TDataSet);
begin
if DM2.Tb_HelpHP_CODSEG.Value=0 then
   DM2.Tb_Helpnomeseg.Value:='Todos... '
else
   begin
   case DM2.Tb_HelpHP_CODSEG.AsInteger of
      1: DM2.Tb_Helpnomeseg.Value:='Distribuidoras';
      2: DM2.Tb_Helpnomeseg.Value:='Farmácias';
      3: DM2.Tb_Helpnomeseg.Value:='Industrias Quimicas e Farmaceuticas';
      4: DM2.Tb_Helpnomeseg.Value:='Aviamentos';
      5: DM2.Tb_Helpnomeseg.Value:='Tecidos';
      6: DM2.Tb_Helpnomeseg.Value:='Industrias confeccoes';
      7: DM2.Tb_Helpnomeseg.Value:='Auto Pecas';
      8: DM2.Tb_Helpnomeseg.Value:='Deposito Mat.Construção';
      9: DM2.Tb_Helpnomeseg.Value:='Loja Material Eletricos';
     10: DM2.Tb_Helpnomeseg.Value:='Supermercados';
     11: DM2.Tb_Helpnomeseg.Value:='Panificadoras';
     12: DM2.Tb_Helpnomeseg.Value:='Açouque';
     13: DM2.Tb_Helpnomeseg.Value:='Lanchonetes';
     14: DM2.Tb_Helpnomeseg.Value:='Conveniencias';
     15: DM2.Tb_Helpnomeseg.Value:='Outros Comercios';
     16: DM2.Tb_Helpnomeseg.Value:='Prestacoes de Servicos';
     17: DM2.Tb_Helpnomeseg.Value:='Associaçoes';
     end;
  end;   
end;

procedure TDM2.Tb_HelpBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
For i:=0 to DM2.Tb_Help.FieldCount-1 do
   begin
   if not DM2.Tb_Help.Fields[i].IsNull then
      Continue;
   if DM2.Tb_Help.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM2.Tb_Help.Fields[i].Value:=0
//   else if DM2.Tb_Help.fields[i].DataType in [ftDate,ftDateTime] then
//      DM2.Tb_Help.Fields[i].Value:=0
   else if DM2.Tb_Help.Fields[i].DataType in [ftString,ftMemo] then
      DM2.Tb_Help.Fields[i].Value:='';
   end;


end;

procedure TDM2.Tb_DupRecCalcFields(DataSet: TDataSet);
begin
if (Tb_DupRecDPDTEMIS.IsNull) or (Tb_DupRecDPDTEMIS.Value<=pdatanula) then
   Tb_DupRecdtemis.Value:='/  /'
else
   Tb_DupRecdtemis.Value:=FormatDatetime(fdt2, Tb_DupRecDPDTEMIS.Value);
if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',DM2.Tb_DupRecDPCODCLI.AsString) then
   Tb_DupRecnomcli.Value:=DM1.Query1.Fields[0].AsString;

end;

procedure TDM2.Tb_DupDRecCalcFields(DataSet: TDataSet);
begin
if (Tb_DupDRecDRDATA.IsNull) or (Tb_DupDRecDRDATA.Value<=pdatanula) then
   Tb_DupDRecdata.Value:='/  /'
else
   Tb_DupDRecdata.Value:=FormatDatetime(fdt2, Tb_DupDRecDRDATA.Value);

if (Tb_DupDRecDRDTNAS.IsNull) or (Tb_DupDRecDRDTNAS.Value<=pdatanula) then
   Tb_DupDRecdtnas.Value:='/  /'
else
   Tb_DupDRecdtnas.Value:=FormatDatetime(fdt2, Tb_DupDRecDRDTNAS.Value);
case Tb_DupDRecDRFORMA.AsInteger of
     0: Tb_DupDRecforma.Value:='Dinheiro';
     1: Tb_DupDRecforma.Value:='Chq.A Vista';
     2: Tb_DupDRecforma.Value:='Chq.Pre-Dat';
     3: Tb_DupDRecforma.Value:='Ordem Pgto.';
     4: Tb_DupDRecforma.Value:='Dep.C/C';
     5: Tb_DupDRecforma.Value:='Cartao';
     end;

end;

procedure TDM2.Qr_PedFPCalcFields(DataSet: TDataSet);
begin
if not DM1.Qr_FP.Active then
   begin
   DM1.Qr_FP.Close;
   DM1.Qr_FP.SQL.Clear;
   DM1.Qr_FP.SQL.Add('Select * from CADFP order by FPCODIGO');
   DM1.Qr_FP.Open;
   end;
if not DM1.Qr_FP.Locate('FPCODIGO',DM2.Qr_PedFPPFPFORMA.Value,[]) then
   DM2.Qr_PedFPnomefp.Value:=''
else
   DM2.Qr_PedFPnomefp.Value:=DM1.Qr_FPFPDESC.Value;

end;

procedure TDM2.Tb_AssessorBeforeInsert(DataSet: TDataSet);
begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('select max(CACODASS) from CADASSE ');
   if not DM1.Qr_tid.Locate('TINOME','CADCLI',[]) then begin
      DM1.Query1.SQL.Add(' where  CACODEMP='+IntTostr(Codemp));
   end;
   DM1.Query1.Open;

   if DM1.Tb_PargerPDCADCLI.Value=1 then begin
      Cod:=StrToInt('0'+Copy(DM1.Query1.Fields[0].AsString,1,Length(DM1.Query1.Fields[0].AsString)-1))+1;
     Cod:=Digito(Cod);
   end else
     cod:=DM1.Query1.Fields[0].AsInteger+1;
end;

procedure TDM2.Tb_AssessorCalcFields(DataSet: TDataSet);
begin
   if (DM2.Tb_AssessorCADTNAS.IsNull) or (DM2.Tb_AssessorCADTNAS.Value<=pDatanula) then
      DM2.Tb_Assessordatnas.Value:='/  /'
   else
      DM2.Tb_Assessordatnas.Value:=FormatDateTime(fdt2, DM2.Tb_AssessorCADTNAS.Value);
end;

procedure TDM2.Tb_Trocas_CabCalcFields(DataSet: TDataSet);
begin
if DM2.Tb_Trocas_CabTCCODCLI.Value>0 then
   begin
   if (DM2.Tb_Trocas_CabTCCODCLI.Value<3) and (trim(DM2.Tb_Trocas_CabTCNOMCLI.AsString)<>'') then
      DM2.Tb_Trocas_Cabnomcli.Value:=DM2.Tb_Trocas_CabTCNOMCLI.Value
   else
      begin
      if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',DM2.Tb_Trocas_CabTCCODCLI.AsString) then
         DM2.Tb_Trocas_Cabnomcli.Value:=DM1.Query1.Fields[0].AsString;
      end;
   end;
end;

procedure TDM2.Tb_LBR2CalcFields(DataSet: TDataSet);
begin
Tb_LBR2Numero.Value:=FormatFloat('000000',Tb_LBR2LB2NUMERO.Value)
   +'/'+Tb_LBR2LB2DESD.Value;
Tb_LBR2Cidade.Value:=Tb_LBR2LNOME.Value+' - '+Tb_LBR2LUF.Value;

end;

procedure TDM2.Tb_LBR1CalcFields(DataSet: TDataSet);
begin
if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',DM2.Tb_LBR1LBCODBCO.asString) then
   DM2.Tb_LBR1nombco.Value:=DM1.Query1.fields[0].AsString;

end;

procedure TDM2.Tb_LBR1AfterInsert(DataSet: TDataSet);
begin
DM2.Tb_LBR1LBCODEMP.Value:=codemp;
end;

procedure TDM2.Tb_DarCalcFields(DataSet: TDataSet);
var
mextenso: String;
mQtdd: Integer;
begin
flcadcli(1,0,Tb_DarCRCODCLI.AsString);
if DM1.Tb_CliCCNPJ.Value>0 then
   Begin
   Tb_Darcgccpf.Value:=FormatFloat('00"."000"."000"/"0000"-"00',DM1.Tb_CliCCNPJ.Value);
   Tb_DarRGIE.Value  :=DM1.Tb_CliCIE.Value
   end
else
   begin
   Tb_Darcgccpf.Value :=FormatFloat('000"."000"."000"."000"-"00',DM1.Tb_CliCCPF.Value);
   Tb_DarRGIE.Value   :=DM1.Tb_CliCRG.Value;
   end;
Tb_Darcepcli.Value:=DM1.Tb_CliCCEP.Value;
Tb_Darendereco.Value:=Trim(Tb_DarCLOG.Value)+iif(Trim(Tb_DarCNUM.Value)='',' ',' No.'+Trim(Tb_DarCNUM.Value))
                      +' '+Tb_DarCCOMPL.Value;
mextenso:=Extenso(Tb_DarCRVALOR.Value);
if length(mextenso)>265 then
   mextenso:=copy(mextenso,1,265)
else
   mextenso:=insere2(mextenso,'*',265);
Tb_Darextl01.Value:=copy(mextenso,1,85);
Tb_Darextl02.Value:=copy(mextenso,86,85);
Tb_Darextl02.Value:=copy(mextenso,171,85);
if Tb_DarCRSTATUS.Value<>2 then
   begin
   Tb_Darjurosacum.Value:=(Tb_DarCRJURD.Value*(date-Tb_DarCRDTVCTO.Value));
   end;
if Tb_Darjurosacum.Value<=0 then
   Tb_Darjurosacum.Value:=0;
Tb_Darnumnf01.Value:=Tb_DarCRNUMERO.Value;
Tb_Darnumnf02.Value:=0;
Tb_Darnumnf03.Value:=0;
Tb_Darnumnf04.Value:=0;
Tb_Darnumnf05.Value:=0;
Tb_Dardatanf01.Value:=Tb_DarCRDTEMIS.Value;
Tb_Dardatanf02.Value:=pdatanula;
Tb_Dardatanf03.Value:=pdatanula;
Tb_Dardatanf04.Value:=pdatanula;
Tb_Dardatanf05.Value:=pdatanula;
Tb_Darvalornf01.Value:=Tb_DarCRTOTNF.Value;
if Tb_DarCRSTATUS.AsFloat=0 then
   Tb_Darsaldodev.AsFloat:=Tb_DarCRVALOR.AsFloat
else if Tb_DarCRSTATUS.AsFloat=1 then
   Tb_Darsaldodev.AsFloat:=(Tb_DarCRVALOR.AsFloat-
                    (Tb_DarCRVALPAG.AsFloat+Tb_DarCRDESC.Value+Tb_DarCRDEVOL.AsFloat)
                    -Tb_DarCRJUROS.Value)
else
   Tb_Darsaldodev.AsFloat:=0;



Tb_Darvalornf02.Value:=0;
Tb_Darvalornf03.Value:=0;
Tb_Darvalornf04.Value:=0;
Tb_Darvalornf05.Value:=0;
DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.Sql.Add('Select P1NUMNF,P1TOTALL,P1DATANF from CADP01 where '
                  +' P1CODEMP=0'+Tb_DarCRCODEMP.AsString
                  +' and P1LOTSEQ=0'+FloatToStr(ls_numped)
                  +' and P1CHAVE=0'+Tb_DarCRNPED.AsString);
DM1.Query1.Open;
mQtdd:=0;
While not DM1.Query1.Eof do
   begin
   mQtdd:=mQtdd+1;
   if mQtdd=1 then
      begin
      Tb_Darnumnf01.Value  :=DM1.Query1.FieldbyName('P1NUMNF').AsFloat;
      Tb_Darvalornf01.Value:=DM1.Query1.FieldbyName('P1TOTALL').AsFloat;
      Tb_Dardatanf01.Value :=DM1.Query1.FieldbyName('P1DATANF').Asdatetime;
      end
   else if mQtdd=2 then
      begin
      Tb_Darnumnf02.Value  :=DM1.Query1.FieldbyName('P1NUMNF').AsFloat;
      Tb_Darvalornf02.Value:=DM1.Query1.FieldbyName('P1TOTALL').AsFloat;
      Tb_Dardatanf02.Value :=DM1.Query1.FieldbyName('P1DATANF').Asdatetime;
      end
   else if mQtdd=3 then
      begin
      Tb_Darnumnf03.Value  :=DM1.Query1.FieldbyName('P1NUMNF').AsFloat;
      Tb_Darvalornf03.Value:=DM1.Query1.FieldbyName('P1TOTALL').AsFloat;
      Tb_Dardatanf03.Value :=DM1.Query1.FieldbyName('P1DATANF').Asdatetime;
      end
   else if mQtdd=4 then
      begin
      Tb_Darnumnf04.Value  :=DM1.Query1.FieldbyName('P1NUMNF').AsFloat;
      Tb_Darvalornf04.Value:=DM1.Query1.FieldbyName('P1TOTALL').AsFloat;
      Tb_Dardatanf04.Value :=DM1.Query1.FieldbyName('P1DATANF').Asdatetime;
      end
   else if mQtdd=5 then
      begin
      Tb_Darnumnf05.Value  :=DM1.Query1.FieldbyName('P1NUMNF').AsFloat;
      Tb_Darvalornf05.Value:=DM1.Query1.FieldbyName('P1TOTALL').AsFloat;
      Tb_Dardatanf05.Value :=DM1.Query1.FieldbyName('P1DATANF').Asdatetime;
      end;
   DM1.Query1.next;
   end;






end;

procedure TDM2.Tb_PPRBeforePost(DataSet: TDataSet);
var
mCondicao_old: String;
begin
DM2.Tb_PPRPPDATHOR_ALT.asdatetime:=now();

if DM2.Tb_PPRPPCODPRO.AsFloat=0 then
   begin
   DM2.Tb_PPR.Cancel;
   abort;
   end;
if DM2.Tb_PPRPPID.AsInteger=0 then
   begin
   DM2.Tb_PPRPPID_ANO.AsInteger:=valint(formatdatetime('yyyy', now()));
   DM2.Tb_PPRPPID.AsInteger:=fBuscareTestarID('CADPPR_'+DM2.Tb_PPRPPID_ANO.AsString);
   end;

if DM2.Tb_PPR.State in [dsEdit] then
   begin
   mCondicao_old := ' where PPID=0'+DM2.Tb_PPRPPID.AsString
                   +' and PPID_ANO=0'+DM2.Tb_PPRPPID_ANO.AsString
                   +' and PPCODEMP=0'+DM2.Tb_PPRPPCODEMP.AsString;

   fGerarTabelas_Old_NOVO(8 //status
               ,0 //codigo novo valor chave
               ,'PPCODNOV' //nome do campo do novo valor (chave)
               ,'PPDATHOR' // nome do campo data e hora do evento
               ,'PPCODUSR' // nome do campo do usuario
               ,'PPNOMUSR' // nome do campo do usuario
               ,'PPEVENTO' // nome do campo de status
               ,'CADPPR' // nome da tabela
               ,mCondicao_old);
    end;








end;

procedure TDM2.Tb_AssessorAfterInsert(DataSet: TDataSet);
begin
   Tb_AssessorCACODASS.Value := Cod;
   Tb_AssessorCACODEMP.Value := codemp;
   Tb_AssessorCADTCAD.Value  := pdatasis;
   Tb_AssessorCARAZAO.Value  := ' ';

   FAtualizaBanco(0,'CADASSE','CACODEMP',DM2.Tb_AssessorCACODEMP.AsString
   ,['CACODAASS'],[DM2.Tb_AssessorCACODASS.AsString]
   ,DM2.Tb_Assessor);



end;

procedure TDM2.Qr_Ped02_TrocasCalcFields(DataSet: TDataSet);
begin
if flqr1('PDNOME,PDUND','PD','CADPRO','N','PDCODPRO',DM2.Qr_Ped02_TrocasP2TRO_CODPRO_ENTRA.AsString) then
   begin
   Qr_Ped02_Trocasund_entra.AsString  :=DM1.Query1.fields[1].AsString;
   Qr_Ped02_Trocasnompro_entra.AsString:=DM1.Query1.fields[0].AsString;
   end;

if flqr1('PDNOME,PDUND','PD','CADPRO','N','PDCODPRO',DM2.Qr_Ped02_TrocasP2TRO_CODPRO_SAIDA.AsString) then
   begin
   Qr_Ped02_Trocasund_saida.AsString  :=DM1.Query1.fields[1].AsString;
   Qr_Ped02_Trocasnompro_saida.AsString:=DM1.Query1.fields[0].AsString;
   end;

end;

procedure TDM2.Tb_FImoCalcFields(DataSet: TDataSet);
begin
if Tb_FImoCFI_CODIMO.AsInteger>0 then
  begin
  flcadimo01(1,0,codemp,Tb_FImoCFI_CODIMO.AsString);
  Tb_FImoNOMIMO.AsString:=Tb_Imo01IM1NOME.AsString;
  end
else
  Tb_FImoNOMIMO.AsString:='';
end;

procedure TDM2.Tb_FImoBeforePost(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.Sql.Add('Select max(CFI_CODSEQ) from CADFIMO '
                  +iif(DM1.Qr_Tid.locate('TINOME','CADFIMO',[]),'',' where CFI_CODEMP=0'+IntToStr(codemp)));
DM1.Query1.Open;
Tb_FImoCFI_CODSEQ.AsInteger:=DM1.Query1.Fields[0].AsInteger+1;

end;

procedure TDM2.Tb_Con_CliAfterInsert(DataSet: TDataSet);
begin
Tb_Con_CliCC_TIPO.AsInteger:=0;
if DM2.Tb_Con_CliCC_CODEMP.IsNull then
  DM2.Tb_Con_CliCC_CODEMP.AsInteger:=DM1.Tb_CliCCODEMP.AsInteger;
if DM2.Tb_Con_CliCC_CLIFOR.IsNull then
  DM2.Tb_Con_CliCC_CLIFOR.AsFloat:=DM1.Tb_CliCCODCLI.AsFloat;
if DM2.Tb_Con_CliCC_CODIGO.IsNull then
  begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.ADD(' Select max(CC_CODIGO) as Cod from CADCON_CLIFOR '
                    +' where CC_TIPO=0 and CC_CLIFOR='+DM1.Tb_CliCCODCLI.AsString);
  if trim(fRetInstMECadastro('CADCON_CLIFOR','CC_CODEMP',codemp))<>'' then
    DM1.Query1.Sql.add(' and '+fRetInstMECadastro('CADCON_CLIFOR','CC_CODEMP',codemp));
  DM1.Query1.Open;

  DM2.Tb_Con_CliCC_CODIGO.AsInteger:= DM1.Query1.FieldByName('Cod').AsInteger+1;
  end;
if DM2.Tb_Con_CliCC_TIPO.IsNull then
  DM2.Tb_Con_CliCC_TIPO.AsInteger:= 0;
end;

procedure TDM2.Tb_Con_ForAfterInsert(DataSet: TDataSet);
begin
Tb_Con_ForCC_TIPO.AsInteger:=1;
end;

procedure TDM2.Tb_Con_CliBeforePost(DataSet: TDataSet);
begin
if trim(DM2.Tb_Con_CliCC_NOME.AsString)= '' then
  begin
  DM2.Tb_Con_Cli.Cancel;
  Abort;
  end;
if DM2.Tb_Con_CliCC_CODEMP.IsNull then
  DM2.Tb_Con_CliCC_CODEMP.AsInteger:=DM1.Tb_CliCCODEMP.AsInteger;
if DM2.Tb_Con_CliCC_CLIFOR.IsNull then
  DM2.Tb_Con_CliCC_CLIFOR.AsFLOAT:=DM1.Tb_CliCCODCLI.AsFloat;
if DM2.Tb_Con_CliCC_CODIGO.IsNull then
  begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.ADD(' Select max(CC_CODIGO) as Cod from CADCON_CLIFOR '
                    +' where CC_TIPO=0 and CC_CLIFOR='+DM1.Tb_CliCCODCLI.AsString);
  if trim(fRetInstMECadastro('CADCON_CLIFOR','CC_CODEMP',codemp))<>'' then
    DM1.Query1.Sql.add(' and '+fRetInstMECadastro('CADCON_CLIFOR','CC_CODEMP',codemp));
  DM1.Query1.Open;

  DM2.Tb_Con_CliCC_CODIGO.AsInteger:= DM1.Query1.FieldByName('Cod').AsInteger+1;
  end;
if DM2.Tb_Con_CliCC_TIPO.IsNull then
  DM2.Tb_Con_CliCC_TIPO.AsInteger:= 0;
end;

procedure TDM2.Tb_Con_ForBeforePost(DataSet: TDataSet);
begin
if trim(DM2.Tb_Con_ForCC_NOME.AsString)= '' then
  begin
  DM2.Tb_Con_For.Cancel;
  Abort;
  end;
if DM2.Tb_Con_ForCC_CODEMP.IsNull then
  DM2.Tb_Con_ForCC_CODEMP.AsInteger:=DM1.Tb_ForFCODEMP.AsInteger;
if DM2.Tb_Con_ForCC_CLIFOR.IsNull then
  DM2.Tb_Con_ForCC_CLIFOR.AsFloat:=DM1.Tb_ForFCODFOR.AsFloat;
if DM2.Tb_Con_ForCC_CODIGO.IsNull then
  begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.ADD(' Select max(CC_CODIGO) as Cod from CADCON_CLIFOR '
                    +' where CC_TIPO=1 and CC_CLIFOR='+DM1.Tb_ForFCODFOR.AsString);
  if trim(fRetInstMECadastro('CADCON_CLIFOR','CC_CODEMP',codemp))<>'' then
    DM1.Query1.Sql.add(' and '+fRetInstMECadastro('CADCON_CLIFOR','CC_CODEMP',codemp));
  DM1.Query1.Open;
  DM2.Tb_Con_ForCC_CODIGO.AsInteger:= DM1.Query1.FieldByName('Cod').AsInteger+1;
  end;
if DM2.Tb_Con_ForCC_TIPO.IsNull then
  DM2.Tb_Con_ForCC_TIPO.AsInteger := 1;
end;

procedure TDM2.Tb_Sol2CalcFields(DataSet: TDataSet);
begin
if flcadpro(1,0,0,Tb_Sol2CS2CODPRO.AsString) then
  Tb_Sol2NOMPRO.AsString := DM1.Tb_ProPDNOME.AsString;
Tb_Sol2QTDPEN.AsFloat := Tb_Sol2CS2QTDPREV.AsFloat - Tb_Sol2CS2QTDREAL.AsFloat;
end;

procedure TDM2.Tb_Sol1CalcFields(DataSet: TDataSet);
begin
if not Tb_Sol1CS1CODSOL.IsNull then
  begin
  if flqr1('NOMUSR','','CADUSR','N','CODUSR',Tb_Sol1CS1CODSOL.AsString) then
    Tb_Sol1NOMSOL.AsString := DM1.Query1.FieldByName('NOMUSR').AsString
  else
    begin
    if Tb_Sol1CS1CODSOL.AsInteger=1111 then
      Tb_Sol1NOMSOL.AsString:='Suporte/Desenvolvimento';
    end;
  end;

if not Tb_Sol1CS1CODDEP.IsNull then
  begin
  if flqr1('PRODEP_NOME','','CADPRO_DPTO','N','PRODEP_CODDEP',Tb_Sol1CS1CODDEP.AsString) then
    Tb_Sol1NOMDEP.AsString := DM1.Query1.FieldByName('PRODEP_NOME').AsString
  end;

end;

procedure TDM2.Tb_PPRBeforeDelete(DataSet: TDataSet);
var


mCondicao_old : String;
begin
   mCondicao_old := ' where PPID=0'+DM2.Tb_PPRPPID.AsString
                   +' and PPID_ANO=0'+DM2.Tb_PPRPPID_ANO.AsString
                   +' and PPCODEMP=0'+DM2.Tb_PPRPPCODEMP.AsString;

   fGerarTabelas_Old_NOVO(9 //status
               ,0 //codigo novo valor chave
               ,'PPCODNOV' //nome do campo do novo valor (chave)
               ,'PPDATHOR' // nome do campo data e hora do evento
               ,'PPCODUSR' // nome do campo do usuario
               ,'PPNOMUSR' // nome do campo do usuario
               ,'PPEVENTO' // nome do campo de status
               ,'CADPPR' // nome da tabela
               ,mCondicao_old);

end;

procedure TDM2.DataModuleCreate(Sender: TObject);
begin
    Tb_EveCEVALOR.DisplayFormat := mcasas;

end;

end.




