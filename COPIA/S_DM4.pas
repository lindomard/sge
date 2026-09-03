unit S_DM4;

interface

uses
  SysUtils, Classes, DB, DBTables,S_DM1,dialogs,func,lerarq, RxMemDS;

type
  TDM4 = class(TDataModule)
    Tb_AL1: TQuery;
    Tb_AL2: TQuery;
    Src_AL1: TDataSource;
    Src_AL2: TDataSource;
    Tb_AL1AL1CODEMP: TFloatField;
    Tb_AL1AL1LOTE: TFloatField;
    Tb_AL1AL1DATA: TDateTimeField;
    Tb_AL1AL1DTPREV: TDateTimeField;
    Tb_AL1AL1DTCON: TDateTimeField;
    Tb_AL1AL1USRCON: TFloatField;
    Tb_AL1AL1HORCON: TStringField;
    Tb_AL1AL1PORC: TFloatField;
    Tb_AL1AL1TIPO: TFloatField;
    Tb_AL1AL1CODUSR: TFloatField;
    Tb_AL2AL2CODEMP: TFloatField;
    Tb_AL2AL2LOTE: TFloatField;
    Tb_AL2AL2ORDEM: TFloatField;
    Tb_AL2AL2CODPRO: TFloatField;
    Tb_AL2AL2TIPALT: TFloatField;
    Tb_AL1tipo: TStringField;
    Tb_AL1AL1OBS: TStringField;
    Tb_AL1AL1STATUS: TFloatField;
    Tb_Usr: TQuery;
    Src_Usr: TDataSource;
    Tb_UsrCODEMP: TFloatField;
    Tb_UsrCODUSR: TFloatField;
    Tb_UsrNOMUSR: TStringField;
    Tb_UsrCODCAR: TFloatField;
    Tb_UsrCODVEN: TFloatField;
    Tb_UsrSENHA: TStringField;
    Tb_UsrENDERECOIP: TStringField;
    Tb_Usrnomcar: TStringField;
    Tb_Usrnomven: TStringField;
    Tb_Ace: TQuery;
    Src_Ace: TDataSource;
    Tb_AceCODEMP: TFloatField;
    Tb_AceCODCAR: TFloatField;
    Tb_AceMENU: TStringField;
    Tb_Par02: TQuery;
    Src_Par02: TDataSource;
    Tb_Par02PA2CODEMP: TFloatField;
    Tb_Par02PA2CODIGO: TFloatField;
    Tb_Par02PA2PDSN: TStringField;
    Tb_Par02PA2SENHA: TStringField;
    Tb_Par01: TQuery;
    Src_Par01: TDataSource;
    Tb_Par02senhageral: TStringField;
    U_Ace: TUpdateSQL;
    U_AL1: TUpdateSQL;
    U_AL2: TUpdateSQL;
    U_Par01: TUpdateSQL;
    U_Par02: TUpdateSQL;
    U_Usr: TUpdateSQL;
    Tb_Bul: TQuery;
    Tb_BulCB_CODEMP: TFloatField;
    Tb_BulCB_CODPRO: TFloatField;
    Tb_FPro: TQuery;
    Tb_FProCF_CODEMP: TFloatField;
    Tb_FProCF_CODPRO: TFloatField;
    Tb_FProCF_FOTO: TBlobField;
    Tb_Rm1: TQuery;
    Tb_Rm2: TQuery;
    U_Rm1: TUpdateSQL;
    U_Rm2: TUpdateSQL;
    Src_Rm1: TDataSource;
    Src_Rm2: TDataSource;
    Tb_Rm1R1_CODEMP: TFloatField;
    Tb_Rm1R1_CHAVE: TFloatField;
    Tb_Rm1R1_CODIGO: TFloatField;
    Tb_Rm1R1_DATA: TDateTimeField;
    Tb_Rm1R1_OBS1: TStringField;
    Tb_Rm1R1_OBS2: TStringField;
    Tb_Rm1R1_OBS3: TStringField;
    Tb_Rm1R1_STATUS: TFloatField;
    Tb_Rm1R1_TOTAL: TFloatField;
    Tb_Rm1R1_CODTRA: TFloatField;
    Tb_Rm1R1_QTDVOL: TFloatField;
    Tb_Rm1R1_PESOL: TFloatField;
    Tb_Rm1R1_PESOB: TFloatField;
    Tb_Rm1R1_ESPECIE: TStringField;
    Tb_Rm1R1_FRETEPC: TFloatField;
    Tb_Rm1R1_VALFRE: TFloatField;
    Tb_Rm1R1_UFPV: TStringField;
    Tb_Rm1R1_PLACAV: TStringField;
    Tb_Rm1R1_ETIVOL: TFloatField;
    Tb_Rm1R1_DTMOD: TDateTimeField;
    Tb_Rm1R1_HRMOD: TStringField;
    Tb_Rm1R1_USRMOD: TFloatField;
    Tb_Rm1R1_CONF: TFloatField;
    Tb_Rm1R1_USRCON: TFloatField;
    Tb_Rm1R1_DATCON: TDateTimeField;
    Tb_Rm1R1_HRCON: TStringField;
    Tb_Rm1R1_USRENT: TFloatField;
    Tb_Rm1R1_DATENT: TDateTimeField;
    Tb_Rm1R1_HRENT: TStringField;
    Tb_Rm1R1_USRSEP: TFloatField;
    Tb_Rm1R1_DATSEP: TDateTimeField;
    Tb_Rm1R1_HRSEP: TStringField;
    Tb_Rm1R1_USREMB: TFloatField;
    Tb_Rm1R1_DATEMB: TDateTimeField;
    Tb_Rm1R1_HREMB: TStringField;
    Tb_Rm2R2_CODEMP: TFloatField;
    Tb_Rm2R2_CHAVE: TFloatField;
    Tb_Rm2R2_CODIGO: TFloatField;
    Tb_Rm2R2_ITEM: TFloatField;
    Tb_Rm2R2_CODPRO: TFloatField;
    Tb_Rm2R2_QTD: TFloatField;
    Tb_Rm2R2_PRECO: TFloatField;
    Tb_Rm1R1_HRDIG: TStringField;
    Tb_Rm1R1_USRDIG: TFloatField;
    Tb_AcTab: TQuery;
    U_AcTab: TUpdateSQL;
    Src_AcTab: TDataSource;
    Tb_AcTabAT_CODEMP: TFloatField;
    Tb_AcTabAT_CODCAR: TFloatField;
    Tb_AcTabAT_TABELA: TStringField;
    Tb_AcTabAT_DESC: TStringField;
    Tb_AcTabAT_INC: TFloatField;
    Tb_AcTabAT_ALT: TFloatField;
    Tb_AcTabAT_EXC: TFloatField;
    Tb_AcTabAT_REL: TFloatField;
    Tb_AcTabAT_ADIC: TFloatField;
    Tb_UsrDIANAS: TFloatField;
    Tb_UsrMESNAS: TFloatField;
    Tb_UsrUSUARIO: TFloatField;
    Tb_Tax: TQuery;
    U_Tax: TUpdateSQL;
    Src_Tax: TDataSource;
    Tb_TaxTXCODEMP: TFloatField;
    Tb_TaxTXCODTAX: TFloatField;
    Tb_TaxTXCODCLI: TFloatField;
    Tb_TaxTXDATA: TDateTimeField;
    Tb_TaxTXVALOR: TFloatField;
    Tb_TaxTXCODVEN: TFloatField;
    Tb_TaxTXSTATUS: TFloatField;
    Tb_TaxTXRCODUSR: TFloatField;
    Tb_TaxTXRDATA: TDateTimeField;
    Tb_TaxTXCODUSR: TFloatField;
    Tb_TaxTXDATAC: TDateTimeField;
    Tb_TaxTXDATAV: TDateTimeField;
    Tb_TaxTXTIPO: TFloatField;
    Tb_TaxTXQTDD: TFloatField;
    Tb_TaxTXSITPAG: TFloatField;
    Tb_TaxTXACVEN: TFloatField;
    Tb_TaxTXCODPV: TFloatField;
    Tb_TaxTXTABPV: TStringField;
    Tb_TaxTXNPARC: TFloatField;
    Tb_TaxTXPARC: TFloatField;
    Tb_TaxTXDTBX: TDateTimeField;
    Tb_TaxTXCAIXA: TFloatField;
    Tb_TaxTXCODLDR: TFloatField;
    Tb_TaxTXVALPAG: TFloatField;
    Tb_TaxTXVALJUR: TFloatField;
    Tb_TaxTXVALDES: TFloatField;
    Tb_TaxTXDATPAG: TDateTimeField;
    Tb_TaxTXLOTE: TFloatField;
    U_Imp_Sys: TUpdateSQL;
    Src_Imp_Sys: TDataSource;
    Tb_ParAj01: TQuery;
    Tb_ParAj01PA1CODEMP: TFloatField;
    Tb_ParAj01PA1TPRECO: TFloatField;
    Tb_ParAj01PA1IVA: TFloatField;
    Tb_ParAj01PA1REDUTOR: TFloatField;
    Tb_ParAj01PA1ICMSC: TFloatField;
    Tb_ParAj01PA1ICMSD: TFloatField;
    Tb_ParAj01PA1OUTROSAC: TFloatField;
    Tb_ParAj01PA1CODUSR: TFloatField;
    U_ParAJP01: TUpdateSQL;
    Tb_ParAJP02: TQuery;
    U_ParJAP02: TUpdateSQL;
    Tb_ParAJP02PA2CODEMP: TFloatField;
    Tb_ParAJP02PA2TPRECO: TFloatField;
    Tb_ParAJP02PA2CODTPRO: TFloatField;
    Tb_ParAJP02PA2PERACRE: TFloatField;
    Qr_IncPed01: TQuery;
    Qr_IncPed02: TQuery;
    Qr_IncNsai: TQuery;
    Qr_AltNsai: TQuery;
    Qr_IncDar: TQuery;
    Qr_AltDar: TQuery;
    Qr_IncLDR: TQuery;
    Qr_AltPed01: TQuery;
    Qr_IncFPCR: TQuery;
    Qr_IncChqCli: TQuery;
    Qr_IncFPCRDUP: TQuery;
    Tb_Leitor: TQuery;
    Tb_LeitorLO_NOMECOMP: TStringField;
    Tb_LeitorLO_TIPO: TFloatField;
    Tb_LeitorLO_PORTA: TFloatField;
    Tb_LeitorLO_VELOCIDADE: TFloatField;
    Tb_LeitorLO_PARIDADE: TFloatField;
    Tb_LeitorLO_DATABITS: TFloatField;
    Tb_LeitorLO_STOPBITS: TFloatField;
    Tb_LeitorLO_RTSINPUT: TFloatField;
    Tb_LeitorLO_DTRINPUT: TFloatField;
    Tb_LeitorLO_CTSOUTPUT: TFloatField;
    Tb_LeitorLO_DSROUTPUT: TFloatField;
    Tb_LeitorLO_XONXOFFOUT: TFloatField;
    Tb_LeitorLO_XONXOFFINP: TFloatField;
    Tb_PosDoc: TQuery;
    U_PosDoc: TUpdateSQL;
    Src_PosDoc: TDataSource;
    Tb_PosDocPD_CODIGO: TFloatField;
    Tb_PosDocPD_DESCRICAO: TStringField;
    Tb_PosDocPD_QTDBITES: TFloatField;
    Tb_PosDocPD_CAMERA_PI: TFloatField;
    Tb_PosDocPD_CAMERA_TAM: TFloatField;
    Tb_PosDocPD_CODBCO_PI: TFloatField;
    Tb_PosDocPD_CODBCO_TAM: TFloatField;
    Tb_PosDocPD_AGENCIA_PI: TFloatField;
    Tb_PosDocPD_AGENCIA_TAM: TFloatField;
    Tb_PosDocPD_COMP_PI: TFloatField;
    Tb_PosDocPD_COMP_TAM: TFloatField;
    Tb_PosDocPD_NUMDOC_PI: TFloatField;
    Tb_PosDocPD_CONTA_PI: TFloatField;
    Tb_PosDocPD_CONTA_TAM: TFloatField;
    Tb_PosDocPD_MOEDA_PI: TFloatField;
    Tb_PosDocPD_MOEDA_TAM: TFloatField;
    Tb_PosDocPD_VCTO_PI: TFloatField;
    Tb_PosDocPD_VCTO_TAM: TFloatField;
    Tb_PosDocPD_VALOR_PI: TFloatField;
    Tb_PosDocPD_VALOR_TAM: TFloatField;
    Tb_PosDocPD_NOSSON_PI: TFloatField;
    Tb_PosDocPD_NOSSON_TAM: TFloatField;
    Tb_PosDocPD_CODCED_PI: TFloatField;
    Tb_PosDocPD_CODCED_TAM: TFloatField;
    Tb_PosDocPD_CODCAR_PI: TFloatField;
    Tb_PosDocPD_CODCAR_TAM: TFloatField;
    Tb_PosDocPD_NUMNF_PI: TFloatField;
    Tb_PosDocPD_NUMNF_TAM: TFloatField;
    Tb_PosDocPD_MESREF_PI: TFloatField;
    Tb_PosDocPD_MESREF_TAM: TFloatField;
    Tb_PosDocPD_ANOREF_PI: TFloatField;
    Tb_PosDocPD_ANOREF_TAM: TFloatField;
    Tb_PosDocPD_NUMDIV_PI: TFloatField;
    Tb_PosDocPD_NUMDIV_TAM: TFloatField;
    Tb_PosDocPD_NUMDOC_TAM: TFloatField;
    Tb_Rm1R1_LOTSEQ: TFloatField;
    Tb_Rm2R2_LOTSEQ: TFloatField;
    Tb_FilPad: TQuery;
    Tb_FilPadFPCODUSR: TFloatField;
    Tb_FilPadFPCOMP: TStringField;
    Tb_FilPadFPTPCOMP: TStringField;
    Tb_FilPadFPVALOR: TStringField;
    Tb_FilPadFPFORM: TStringField;
    Tb_BulCB_BULA: TMemoField;
    Qr_IncOS02: TQuery;
    Qr_IncOS03: TQuery;
    Qr_IncOS04: TQuery;
    Qr_IncOS05: TQuery;
    Qr_IncOS01: TQuery;
    Qr_IncOs05D: TQuery;
    Tb_Ani: TQuery;
    U_Ani: TUpdateSQL;
    Src_Ani: TDataSource;
    Tb_AniCA_CODEMP: TFloatField;
    Tb_AniCA_TIPO: TStringField;
    Tb_AniCA_CODIGO: TFloatField;
    Tb_AniCA_NOME: TStringField;
    Tb_AniCA_CARGO: TStringField;
    Tb_AniCA_FONE: TStringField;
    Tb_AniCA_CELULAR: TStringField;
    Tb_AniCA_EMAIL: TStringField;
    Tb_AniCA_MES: TFloatField;
    Tb_AniCA_DIA: TFloatField;
    Tb_AniCA_DTNAS: TDateTimeField;
    Tb_AniCA_DTCONTATO: TDateTimeField;
    Tb_AniCA_STATUS: TFloatField;
    Tb_AniCA_ENDERECO: TStringField;
    Tb_AniCA_CEP: TStringField;
    Tb_AniCA_BAIRRO: TStringField;
    Tb_AniCA_CIDADE: TStringField;
    Tb_AniCA_UF: TStringField;
    Tb_Anidtnas: TDateField;
    Tb_Anidtcontato: TDateField;
    Tb_Aninome: TStringField;
    U_CSer01: TUpdateSQL;
    Src_CSer01: TDataSource;
    Tb_CSer02: TQuery;
    Tb_CSer02CS2_CODEMP: TFloatField;
    Tb_CSer02CS2_CHAVE: TFloatField;
    Tb_CSer02CS2_ORDEM: TFloatField;
    Tb_CSer02CS2_CODPRO: TFloatField;
    Tb_CSer02CS2_MODELO: TStringField;
    Tb_CSer02CS2_MARCA: TStringField;
    Tb_CSer02CS2_SERIE: TStringField;
    Tb_CSer02CS2_VERSAO: TStringField;
    U_CSer02: TUpdateSQL;
    Src_CSer02: TDataSource;
    Tb_CSer02CS2_CODCLI: TFloatField;
    Tb_CSer02nompro: TStringField;
    Tb_CSer01: TQuery;
    Tb_CSer01datcon: TStringField;
    Tb_CSer01datval: TStringField;
    Tb_CSer01razsoc: TStringField;
    Tb_CSer01nompro: TStringField;
    Tb_CSer01nomser: TStringField;
    Tb_FCli: TQuery;
    Tb_FCliCF_CODEMP: TFloatField;
    Tb_FCliCF_CODCLI: TFloatField;
    Tb_FCliCF_FOTO: TBlobField;
    Tb_ICli: TQuery;
    Tb_ICliCI_CODEMP: TFloatField;
    Tb_ICliCI_CODCLI: TFloatField;
    Tb_ICliCI_INFORMACAO: TMemoField;
    Tb_GraPro: TQuery;
    U_GraPro: TUpdateSQL;
    Src_GraPro: TDataSource;
    Tb_MPro: TQuery;
    U_MPro: TUpdateSQL;
    Src_MPro: TDataSource;
    Tb_GraProGPCODEMP: TFloatField;
    Tb_GraProGPCODPRO: TFloatField;
    Tb_GraProGPCODMAS: TStringField;
    Tb_GraProGPGRADE: TStringField;
    Tb_GraProGPNOMGRA: TStringField;
    Tb_MProMPCODEMP: TFloatField;
    Tb_MProMPCODMAS: TStringField;
    Tb_MProMPNOMEMAS: TStringField;
    Tb_MProMPNOMEMPL: TStringField;
    Tb_MProMPTPMAS: TFloatField;
    Tb_MProMPPOSICAO: TFloatField;
    Tb_MProMPTAMANHO: TFloatField;
    Tb_GraProMPNOMEMAS: TStringField;
    Tb_PedFP: TQuery;
    Tb_PedFPPFPCODEMP: TFloatField;
    Tb_PedFPPFPLOTSEQ: TFloatField;
    Tb_PedFPPFPCHAVE: TFloatField;
    Tb_PedFPPFPSEQ: TFloatField;
    Tb_PedFPPFPFORMA: TFloatField;
    Tb_PedFPPFPNUMDOC: TStringField;
    Tb_PedFPPFPBANCO: TFloatField;
    Tb_PedFPPFPSERIE: TStringField;
    Tb_PedFPPFPVALOR: TFloatField;
    Tb_PedFPPFPCC: TStringField;
    U_Tb_PedFP: TUpdateSQL;
    Src_PedFP: TDataSource;
    Tb_PedFPPFPCOMP: TStringField;
    Tb_PedFPPFPAGENCIA: TStringField;
    Tb_PedFPPFPEMITENTE: TStringField;
    Tb_PedFPPFPDATA: TDateTimeField;
    Tb_AcRe01: TQuery;
    Tb_AcRe01AR1CODEMP: TFloatField;
    Tb_AcRe01AR1CHAVE: TFloatField;
    Tb_AcRe01AR1TIPO: TFloatField;
    Tb_AcRe01AR1DATA: TDateTimeField;
    Tb_AcRe01AR1QTDENV: TFloatField;
    Tb_AcRe01AR1VLRENV: TFloatField;
    Tb_AcRe01AR1QTDDEV: TFloatField;
    Tb_AcRe01AR1VLRDEV: TFloatField;
    Tb_AcRe01AR1QTDFAT: TFloatField;
    Tb_AcRe01AR1VLRFAT: TFloatField;
    Tb_AcRe01AR1CODCLI: TFloatField;
    U_AcRe01: TUpdateSQL;
    Src_AcRe01: TDataSource;
    Src_AcRe02: TDataSource;
    Tb_AcRe02: TQuery;
    U_AcRe02: TUpdateSQL;
    Tb_AcRe02AR2CODEMP: TFloatField;
    Tb_AcRe02AR2CHAVE: TFloatField;
    Tb_AcRe02AR2TIPOMOV: TFloatField;
    Tb_AcRe02AR2CHAVEPED: TFloatField;
    Tb_AcRe02AR2ORDEM: TFloatField;
    Tb_AcRe02AR2DATA: TDateTimeField;
    Tb_AcRe02AR2QTD: TFloatField;
    Tb_AcRe02AR2VLR: TFloatField;
    Tb_AcRe02AR2LOTSEQ: TFloatField;
    Tb_AcRe02AR2SEQ: TFloatField;
    Tb_AcRe01nomcli: TStringField;
    Tb_AcRe01tipoacerto: TStringField;
    Tb_AcRe02tipomov: TStringField;
    Tb_CSer01obsvenc01: TStringField;
    Tb_CSer01obsvenc02: TStringField;
    Tb_MPer: TQuery;
    U_MPer: TUpdateSQL;
    Src_MPer: TDataSource;
    Tb_MPerCMPCODEMP: TFloatField;
    Tb_MPerCMPCODIGO: TFloatField;
    Tb_MPar: TQuery;
    U_MPar: TUpdateSQL;
    Tb_MParMPARCODEMP: TFloatField;
    Tb_MParMPARCODIGO: TFloatField;
    Src_MPar: TDataSource;
    Tb_CP01: TQuery;
    Src_CP01: TDataSource;
    U_CP01: TUpdateSQL;
    Tb_CP01CP1CODEMP: TFloatField;
    Tb_CP01CP1LOTSEQ: TFloatField;
    Tb_CP01CP1CHAVE: TFloatField;
    Tb_CP01CP1DATA: TDateTimeField;
    Tb_CP01CP1TURNO: TStringField;
    Tb_CP01CP1REBARBAS: TStringField;
    Tb_CP01CP1DATAINC: TDateTimeField;
    Tb_CP01CP1USRINC: TFloatField;
    Tb_CP01CP1DATAALT: TDateTimeField;
    Tb_CP01CP1USRALT: TFloatField;
    Tb_CP01CP1CODENC: TFloatField;
    Tb_CP02: TQuery;
    U_CP02: TUpdateSQL;
    Src_CP02: TDataSource;
    Tb_CP02CP2CODEMP: TFloatField;
    Tb_CP02CP2LOTSEQ: TFloatField;
    Tb_CP02CP2CHAVE: TFloatField;
    Tb_CP02CP2ITEM: TFloatField;
    Tb_CP02CP2CODMAQ: TFloatField;
    Tb_CP02CP2FRASCO: TStringField;
    Tb_CP02CP2COR: TStringField;
    Tb_CP02CP2CICLO: TFloatField;
    Tb_CP02CP2CAVIDADE: TFloatField;
    Tb_CP02CP2PRODUCAO: TFloatField;
    Tb_CP02CP2PERDA: TFloatField;
    Tb_CP02CP2HORTRAB: TFloatField;
    Tb_CP02CP2DTHRIPAR: TDateTimeField;
    Tb_CP02CP2DTHRTPAR: TDateTimeField;
    Tb_CP01nomenc: TStringField;
    Tb_CP02nommaq: TStringField;
    Tb_CP02percperda: TFloatField;
    Tb_CP02perda: TFloatField;
    Tb_CP02totperdas: TFloatField;
    Tb_MPerCMPMOTIVO: TStringField;
    Tb_MParMPARMOTIVO: TStringField;
    Tb_CP02_MPAR: TQuery;
    U_CP02_MPAR: TUpdateSQL;
    Src_CP02_MPAR: TDataSource;
    Tb_CP02_MPARCP2MPARCODEMP: TFloatField;
    Tb_CP02_MPARCP2MPARLOTSEQ: TFloatField;
    Tb_CP02_MPARCP2MPARSEQ: TFloatField;
    Tb_CP02_MPARCP2MPARCODMPAR: TFloatField;
    Tb_CP02_MPARCP2MPARNOMPAR: TStringField;
    Tb_CP02_MPARCP2MPARDTHRTPAR: TDateTimeField;
    Tb_CP02_MPARCP2MPARCHAVE: TFloatField;
    Tb_CP02_MPARCP2MPARDTHRIPAR: TDateTimeField;
    Tb_CP02_MPARCP2MPARCODMAQ: TFloatField;
    Tb_CP02_MPER: TQuery;
    U_CP02_MPER: TUpdateSQL;
    Src_CP02_MPER: TDataSource;
    Tb_CP02_MPERCP2MPERCODEMP: TFloatField;
    Tb_CP02_MPERCP2MPERLOTSEQ: TFloatField;
    Tb_CP02_MPERCP2MPERSEQ: TFloatField;
    Tb_CP02_MPERCP2MPERCODMPER: TFloatField;
    Tb_CP02_MPERCP2MPERNOMPER: TStringField;
    Tb_CP02_MPERCP2MPERCHAVE: TFloatField;
    Tb_CP02_MPERCP2MPERCODMAQ: TFloatField;
    Tb_CP02_PREN: TQuery;
    U_CP02_PREN: TUpdateSQL;
    Src_CP02_PREN: TDataSource;
    Tb_CP02_PRENCP2PRENCODEMP: TFloatField;
    Tb_CP02_PRENCP2PRENLOTSEQ: TFloatField;
    Tb_CP02_PRENCP2PRENCHAVE: TFloatField;
    Tb_CP02_PRENCP2PRENSEQ: TFloatField;
    Tb_CP02_PRENCP2PRENCODMPREN: TFloatField;
    Tb_CP02_PRENCP2PRENCODMAQ: TFloatField;
    Tb_CP02_PRENCP2PRENNOMPREN: TStringField;
    Tb_ParCod: TQuery;
    Tb_ParCodPCCODEMP: TFloatField;
    Tb_ParCodPCTABELA: TStringField;
    Tb_ParCodPCCODIGO: TFloatField;
    Tb_ParCodPCBLQSTA01: TFloatField;
    Tb_ParCodPCBLQSTA02: TFloatField;
    Tb_ParCodPCBLQSTA03: TFloatField;
    Tb_ParCodPCBLQSTA04: TFloatField;
    Tb_ParCodPCBLQSTA05: TFloatField;
    Tb_ParCodPCBLQSTA06: TFloatField;
    Tb_ParCodPCBLQSTA07: TFloatField;
    Tb_ParCodPCBLQSTA08: TFloatField;
    Tb_ParCodPCBLQSTA09: TFloatField;
    Tb_ParCodPCCODANT: TFloatField;
    Tb_ParCodPCDESCRICAO: TStringField;
    U_ParCod: TUpdateSQL;
    Src_ParCod: TDataSource;
    Query1: TQuery;
    Tb_Hlp: TQuery;
    U_hlp: TUpdateSQL;
    Src_hlp: TDataSource;
    Tb_HlpAJCHAVE: TStringField;
    Tb_HlpAJDESCR: TStringField;
    Tb_HlpAJMEMO: TMemoField;
    Tb_AL1AL1LOTSEQ: TFloatField;
    Tb_AL1AL1PCOFAB: TFloatField;
    Tb_AL1AL1PCOVDA: TFloatField;
    Tb_AL1AL1PCOMAX: TFloatField;
    Tb_AL1AL1TIPOPCO: TFloatField;
    Tb_AL2AL2PCOATU1: TFloatField;
    Tb_AL2AL2PCONOV1: TFloatField;
    Tb_AL2AL2LOTSEQ: TFloatField;
    Tb_AL2AL2DTUAPCO: TDateTimeField;
    Tb_AL2AL2FABATU: TFloatField;
    Tb_AL2AL2FABNOV: TFloatField;
    Tb_AL2AL2DTUAFAB: TDateTimeField;
    Tb_AL2AL2PMCATU: TFloatField;
    Tb_AL2AL2PMCNOV: TFloatField;
    Tb_AL2AL2DTUAPMC: TDateTimeField;
    Tb_AL1AL1MAXVDA: TFloatField;
    Tb_AL2AL2PCOANT: TFloatField;
    Tb_AL2AL2FABANT: TFloatField;
    Tb_AL2AL2PMCANT: TFloatField;
    Tb_UsrNAME: TStringField;
    Tb_UsrTFONTE: TFloatField;
    Tb_UsrCOLOR: TStringField;
    Tb_UsrFUNDO_BTREE: TStringField;
    Tb_Bloqueio: TQuery;
    Tb_BloqueioBQCODRCLI: TFloatField;
    Tb_BloqueioBQCODRPRO: TFloatField;
    Tb_BloqueioBQCODFOR: TFloatField;
    Tb_BloqueioBQCODUF: TStringField;
    Tb_BloqueioBQCODLOC: TFloatField;
    Tb_BloqueioBQCODBAI: TFloatField;
    Tb_BloqueioBQCODPRO: TFloatField;
    Tb_BloqueioRAMOCLI: TStringField;
    Tb_BloqueioRAMOPRO: TStringField;
    Tb_BloqueioNOMFOR: TStringField;
    Tb_BloqueioESTADO: TStringField;
    Tb_BloqueioCIDADE: TStringField;
    Tb_BloqueioBAIRRO: TStringField;
    Tb_BloqueioNOMEPRO: TStringField;
    Tb_Bloqueiocalc_ramocli: TStringField;
    Tb_Bloqueiocalc_nomrpro: TStringField;
    Tb_Bloqueiocalc_nomepro: TStringField;
    Tb_Bloqueiocalc_nomfor: TStringField;
    Tb_Bloqueiocalc_estado: TStringField;
    Tb_Bloqueiocalc_cidade: TStringField;
    Tb_Bloqueiocalc_bairro: TStringField;
    Tb_BloqueioBQGRUBLQ: TFloatField;
    Tb_BloqueioBQCODCLI: TFloatField;
    Tb_BloqueioNOMCLI: TStringField;
    Tb_BloqueioBQCODVEN: TFloatField;
    Tb_BloqueioNOMVEN: TStringField;
    Tb_BloqueioBQGRUDUP: TFloatField;
    Tb_AniCA_DTEMAIL: TDateTimeField;
    Tb_Par02PA2CODUSR: TFloatField;
    Tb_LogoSis: TQuery;
    Tb_LogoSisLSCHAVE: TStringField;
    Tb_LogoSisLSLOGO: TBlobField;
    U_LogoSis: TUpdateSQL;
    Src_LogoSis: TDataSource;
    Tb_LogoSisLSDESCRICAO: TMemoField;
    Tb_LSen: TQuery;
    Tb_LSenLSCODEMP: TFloatField;
    Tb_LSenLSLOTSEQ: TFloatField;
    Tb_LSenLSCODIGO: TFloatField;
    Tb_LSenLSITENSBLOQ: TStringField;
    Tb_LSenLSSTATUS: TFloatField;
    Tb_LSenLSCODUSRLIB: TFloatField;
    Tb_LSenLSDATALIB: TDateTimeField;
    Tb_LSenLSCODTAB: TFloatField;
    Tb_LSenLSLOTSEQ_DOC: TFloatField;
    Tb_LSenLSCHAVE_DOC: TFloatField;
    Tb_LSenLSORDEM_DOC: TFloatField;
    Tb_LSenLSCHAVE_DOCST: TStringField;
    Tb_LSenLSCODUSRSOL: TFloatField;
    Tb_LSenLSTEXTOMOT: TMemoField;
    Tb_LSenLSTEXTOOBS: TMemoField;
    U_LSen: TUpdateSQL;
    Src_LSen: TDataSource;
    Tb_LSenLSDATASOL: TDateTimeField;
    Tb_LSenLSTEXTORESP: TMemoField;
    Tb_LSenLSCODEMP_DOC: TFloatField;
    Tb_LSenNOMUSR: TStringField;
    Tb_UsrUSR_PREVLIBSEN: TFloatField;
    Tb_UsrUSR_STATUSLIBSEN: TFloatField;
    Tb_LSenLSCODCLI_DOC: TFloatField;
    Qr_ContBlq: TQuery;
    Qr_Ped01: TQuery;
    Qr_Ped01P1CODEMP: TFloatField;
    Qr_Ped01P1CHAVE: TFloatField;
    Qr_Ped01P1ORDEM: TFloatField;
    Qr_Ped01P1CODCLI: TFloatField;
    Qr_Ped01P1CODVEN: TFloatField;
    Qr_Ped01P1CODV02: TFloatField;
    Qr_Ped01P1CODV03: TFloatField;
    Qr_Ped01P1DATAP: TDateTimeField;
    Qr_Ped01P1DATANF: TDateTimeField;
    Qr_Ped01P1NUMNF: TFloatField;
    Qr_Ped01P1SERIE: TStringField;
    Qr_Ped01P1SUBSER: TStringField;
    Qr_Ped01P1MODELO: TStringField;
    Qr_Ped01P1STATUS: TFloatField;
    Qr_Ped01P1TIPO: TFloatField;
    Qr_Ped01P1TOTALB: TFloatField;
    Qr_Ped01P1TOTALL: TFloatField;
    Qr_Ped01P1CODUSR: TFloatField;
    Qr_Ped01P1HORADIG: TStringField;
    Qr_Ped01P1DTMOD: TDateTimeField;
    Qr_Ped01P1HRMOD: TStringField;
    Qr_Ped01P1USRMOD: TFloatField;
    Qr_Ped01P1CONF: TStringField;
    Qr_Ped01P1CODCON: TFloatField;
    Qr_Ped01P1DATCON: TDateTimeField;
    Qr_Ped01P1CODPV: TFloatField;
    Qr_Ped01P1CUPOM: TFloatField;
    Qr_Ped01P1BASEN: TFloatField;
    Qr_Ped01P1ICMSN: TFloatField;
    Qr_Ped01P1BASER: TFloatField;
    Qr_Ped01P1ICMSR: TFloatField;
    Qr_Ped01P1BASENP: TFloatField;
    Qr_Ped01P1BASENN: TFloatField;
    Qr_Ped01P1BASENI: TFloatField;
    Qr_Ped01P1ICMSNP: TFloatField;
    Qr_Ped01P1ICMSNN: TFloatField;
    Qr_Ped01P1ICMSNI: TFloatField;
    Qr_Ped01P1BASERP: TFloatField;
    Qr_Ped01P1BASERN: TFloatField;
    Qr_Ped01P1BASERI: TFloatField;
    Qr_Ped01P1ICMSRP: TFloatField;
    Qr_Ped01P1ICMSRN: TFloatField;
    Qr_Ped01P1ICMSRI: TFloatField;
    Qr_Ped01P1BASENRI: TFloatField;
    Qr_Ped01P1ICMSNRI: TFloatField;
    Qr_Ped01P1BASENRP: TFloatField;
    Qr_Ped01P1ICMSNRP: TFloatField;
    Qr_Ped01P1BASENRN: TFloatField;
    Qr_Ped01P1ICMSNRN: TFloatField;
    Qr_Ped01P1IPIINA: TFloatField;
    Qr_Ped01P1IPIPOS: TFloatField;
    Qr_Ped01P1IPINEG: TFloatField;
    Qr_Ped01P1TOTTRI: TFloatField;
    Qr_Ped01P1TOTRET: TFloatField;
    Qr_Ped01P1TOTISE: TFloatField;
    Qr_Ped01P1TOTPOS: TFloatField;
    Qr_Ped01P1TOTNEG: TFloatField;
    Qr_Ped01P1TOTINA: TFloatField;
    Qr_Ped01P1TOTDES: TFloatField;
    Qr_Ped01P1DESC01: TFloatField;
    Qr_Ped01P1DESC02: TFloatField;
    Qr_Ped01P1VLRDES: TFloatField;
    Qr_Ped01P1CODTRA: TFloatField;
    Qr_Ped01P1QTDVOL: TFloatField;
    Qr_Ped01P1PESOL: TFloatField;
    Qr_Ped01P1PESOB: TFloatField;
    Qr_Ped01P1FRETEPC: TFloatField;
    Qr_Ped01P1VALFRE: TFloatField;
    Qr_Ped01P1UFPV: TStringField;
    Qr_Ped01P1PLACAV: TStringField;
    Qr_Ped01P1BANCO: TFloatField;
    Qr_Ped01P1CODSER: TFloatField;
    Qr_Ped01P1CODLDR: TFloatField;
    Qr_Ped01P1COMIS: TFloatField;
    Qr_Ped01P1ORIGEM: TFloatField;
    Qr_Ped01P1CODTLV: TFloatField;
    Qr_Ped01P1BCISSQN: TFloatField;
    Qr_Ped01P1VISSQN: TFloatField;
    Qr_Ped01P1PCOMIS: TFloatField;
    Qr_Ped01P1ETIVOL: TFloatField;
    Qr_Ped01P1CODSEP: TFloatField;
    Qr_Ped01P1DATASEP: TDateTimeField;
    Qr_Ped01P1CODEMB: TFloatField;
    Qr_Ped01P1DATAEMB: TDateTimeField;
    Qr_Ped01P1NUMCF: TFloatField;
    Qr_Ped01P1DATACF: TDateTimeField;
    Qr_Ped01P1SUBMOD: TStringField;
    Qr_Ped01P1TPPCO: TFloatField;
    Qr_Ped01P1COMIST: TFloatField;
    Qr_Ped01P1COMISS: TFloatField;
    Qr_Ped01P1SEMCOM: TFloatField;
    Qr_Ped01P1PAVDES: TFloatField;
    Qr_Ped01P1CODENT: TFloatField;
    Qr_Ped01P1DATENT: TDateTimeField;
    Qr_Ped01P1TIPENT: TFloatField;
    Qr_Ped01P1PREVENT: TDateTimeField;
    Qr_Ped01P1LOTCV: TFloatField;
    Qr_Ped01P1LOTCS: TFloatField;
    Qr_Ped01P1LOTCT: TFloatField;
    Qr_Ped01P1HORCON: TStringField;
    Qr_Ped01P1HPREVENT: TStringField;
    Qr_Ped01P1HORENT: TStringField;
    Qr_Ped01P1HORSEP: TStringField;
    Qr_Ped01P1HOREMB: TStringField;
    Qr_Ped01P1SITAC: TFloatField;
    Qr_Ped01P1REPAS: TFloatField;
    Qr_Ped01P1TOTUCPR: TFloatField;
    Qr_Ped01P1TABPV: TStringField;
    Qr_Ped01P1PVTC: TFloatField;
    Qr_Ped01P1PVCOM: TFloatField;
    Qr_Ped01P1PVACTD: TFloatField;
    Qr_Ped01P1PVACT00: TFloatField;
    Qr_Ped01P1PVACT01: TFloatField;
    Qr_Ped01P1PVACT99: TFloatField;
    Qr_Ped01P1PVTDC: TFloatField;
    Qr_Ped01P1PVDES: TFloatField;
    Qr_Ped01P1PVTPD1: TFloatField;
    Qr_Ped01P1PVDES1: TFloatField;
    Qr_Ped01P1PVTPD2: TFloatField;
    Qr_Ped01P1PVDES2: TFloatField;
    Qr_Ped01P1PVTPDESF: TFloatField;
    Qr_Ped01P1PVDESCF: TFloatField;
    Qr_Ped01P1PVDIASDESCF: TFloatField;
    Qr_Ped01P1PVDDESCF: TFloatField;
    Qr_Ped01P1TPP: TFloatField;
    Qr_Ped01P1PRAZO: TFloatField;
    Qr_Ped01P1DESCFIN: TFloatField;
    Qr_Ped01P1CODECF: TFloatField;
    Qr_Ped01P1VLRACRE: TFloatField;
    Qr_Ped01P1PEDORI1: TStringField;
    Qr_Ped01P1PEDORI2: TStringField;
    Qr_Ped01P1MOTIVO: TStringField;
    Qr_Ped01P1NUMVIS: TStringField;
    Qr_Ped01P1DATVIS: TDateTimeField;
    Qr_Ped01P1SITPED: TFloatField;
    Qr_Ped01P1TOTDI01: TFloatField;
    Qr_Ped01P1TOTDI02: TFloatField;
    Qr_Ped01P1TOTDIVL: TFloatField;
    Qr_Ped01P1DATDOC: TDateTimeField;
    Qr_Ped01P1EMIDOC: TFloatField;
    Qr_Ped01P1ACRECONV: TFloatField;
    Qr_Ped01P1ACREGER: TFloatField;
    Qr_Ped01P1NAUT: TStringField;
    Qr_Ped01P1PACRECONV: TFloatField;
    Qr_Ped01P1PACREGER: TFloatField;
    Qr_Ped01P1CODDEP: TFloatField;
    Qr_Ped01P1CODCV: TFloatField;
    Qr_Ped01P1LOTEDM: TFloatField;
    Qr_Ped01P1NPEDORI: TFloatField;
    Qr_Ped01P1TOTOUT: TFloatField;
    Qr_Ped01P1COMV02: TFloatField;
    Qr_Ped01P1COMV03: TFloatField;
    Qr_Ped01P1PVCOM02: TFloatField;
    Qr_Ped01P1PVCOM03: TFloatField;
    Qr_Ped01P1FORMACE: TFloatField;
    Qr_Ped01P1MINUTA: TFloatField;
    Qr_Ped01P1SITCPR: TFloatField;
    Qr_Ped01P1LOTCV02: TFloatField;
    Qr_Ped01P1LOTCV03: TFloatField;
    Qr_Ped01P1LOTSEQ: TFloatField;
    Qr_Ped01P1CFO1: TStringField;
    Qr_Ped01P1CFO2: TStringField;
    Qr_Ped01P1PEDORI: TFloatField;
    Qr_Ped01P1BLQPRM: TFloatField;
    Qr_Ped01P1TOTDI03: TFloatField;
    Qr_Ped01P1VALDES01: TFloatField;
    Qr_Ped01P1VALDES02: TFloatField;
    Qr_Ped01P1TARBAN: TFloatField;
    Qr_Ped01P1PVTPD3: TFloatField;
    Qr_Ped01P1PVDES3: TFloatField;
    Qr_Ped01P1CFOSER: TStringField;
    Qr_Ped01P1VALSEG: TFloatField;
    Qr_Ped01P1PDESCLIB: TFloatField;
    Qr_Ped01P1PDESCL_USR: TFloatField;
    Qr_Ped01P1PROCESSO: TStringField;
    Qr_Ped01P1CUPACRE: TFloatField;
    Qr_Ped01P1CUPDES: TFloatField;
    Qr_Ped01P1LEMAT: TFloatField;
    Qr_Ped01P1DTACERTO: TDateTimeField;
    Qr_Ped01P1LTACERTO: TFloatField;
    Qr_Ped01P1COMASSE: TFloatField;
    Qr_Ped01P1LOTCASSE: TFloatField;
    Qr_Ped01P1CODASSE: TFloatField;
    Qr_Ped01P1QTDMAN: TFloatField;
    Qr_Ped01P1ESPECIE: TStringField;
    Qr_Ped01P1CANHOTO: TFloatField;
    Qr_Ped01P1ICMS_BCFRE: TFloatField;
    Qr_Ped01P1ICMS_ALFRE: TFloatField;
    Qr_Ped01P1ICMS_VLFRE: TFloatField;
    Qr_Ped01P1ICMS_BCSEG: TFloatField;
    Qr_Ped01P1ICMS_ALSEG: TFloatField;
    Qr_Ped01P1ICMS_VLSEG: TFloatField;
    Qr_Ped01P1ICMS_BCOUTD: TFloatField;
    Qr_Ped01P1ICMS_ALOUTD: TFloatField;
    Qr_Ped01P1ICMS_VLOUTD: TFloatField;
    Qr_Ped01P1ICMS_BCIPI: TFloatField;
    Qr_Ped01P1ICMS_ALIPI: TFloatField;
    Qr_Ped01P1ICMS_VLIPI: TFloatField;
    Qr_Ped01P1ALIQDEB: TFloatField;
    Qr_Ped01P1TOTCGRU: TFloatField;
    Qr_Ped01P1TOTSGRU: TFloatField;
    Qr_Ped01P1CODV04: TFloatField;
    Qr_Ped01P1COMV04: TFloatField;
    Qr_Ped01P1LOTCV04: TFloatField;
    Qr_Ped01P1PVCOM04: TFloatField;
    Qr_Ped01P1PROMOCAO: TStringField;
    Qr_Ped01P1CODPRIOR: TFloatField;
    Qr_Ped01P1DTHRCHEG: TDateTimeField;
    Qr_Ped01D: TQuery;
    Qr_Ped01DP1DCODEMP: TFloatField;
    Qr_Ped01DP1DCHAVE: TFloatField;
    Qr_Ped01DP1DORDEM: TFloatField;
    Qr_Ped01DP1DCH_OR: TFloatField;
    Qr_Ped01DP1DOR_OR: TFloatField;
    Qr_Ped01DP1DDATAP: TDateTimeField;
    Qr_Ped01DP1DLOTSEQ: TFloatField;
    Qr_Ped01DP1DLS_OR: TFloatField;
    Qr_Ped01DP1DCODEMP_OR: TFloatField;
    Qr_Ped01v: TQuery;
    Qr_Ped01vP1VCODEMP: TFloatField;
    Qr_Ped01vP1VCHAVE: TFloatField;
    Qr_Ped01vP1VORDEM: TFloatField;
    Qr_Ped01vP1VCODIGO: TFloatField;
    Qr_Ped01vP1VDATAV: TDateTimeField;
    Qr_Ped01vP1VVALOR: TFloatField;
    Qr_Ped01vP1VCOMISV: TFloatField;
    Qr_Ped01vP1VCOMISS: TFloatField;
    Qr_Ped01vP1VCOMIST: TFloatField;
    Qr_Ped01vP1VFRETE: TFloatField;
    Qr_Ped01vP1VICMSR: TFloatField;
    Qr_Ped01vP1VSEMCOM: TFloatField;
    Qr_Ped01vP1VTABPV: TStringField;
    Qr_Ped01vP1VDESCF: TFloatField;
    Qr_Ped01vP1VDTDESCF: TDateTimeField;
    Qr_Ped01vP1VCOM02: TFloatField;
    Qr_Ped01vP1VCOM03: TFloatField;
    Qr_Ped01vP1VLOTSEQ: TFloatField;
    Qr_Ped01vP1VSEQ: TFloatField;
    Qr_Ped01vP1VTOTDI01: TFloatField;
    Qr_Ped01vP1VTOTDI02: TFloatField;
    Qr_Ped01vP1VTOTDI03: TFloatField;
    Qr_Ped01vP1VTOTDIVL: TFloatField;
    Qr_Ped01vP1VVALDES01: TFloatField;
    Qr_Ped01vP1VVALDES02: TFloatField;
    Qr_Ped01vP1VVLRDES: TFloatField;
    Qr_Ped01vP1VTARBAN: TFloatField;
    Qr_Ped01vP1VCOMASSE: TFloatField;
    Qr_Ped01vP1VSEG: TFloatField;
    Qr_Ped01vP1VCOM04: TFloatField;
    Qr_Ped01vP1VTOTIPI: TFloatField;
    Qr_Ped01vP1VTOTCGRU: TFloatField;
    Qr_Ped01vP1VTOTSGRU: TFloatField;
    Qr_Ped02D: TQuery;
    Qr_Ped02DP2DCODEMP: TFloatField;
    Qr_Ped02DP2DTIPO: TFloatField;
    Qr_Ped02DP2DCHAVE: TFloatField;
    Qr_Ped02DP2DORDEM: TFloatField;
    Qr_Ped02DP2DITEM: TFloatField;
    Qr_Ped02DP2DCODPRO: TFloatField;
    Qr_Ped02DP2DLINHA: TFloatField;
    Qr_Ped02DP2DESC: TStringField;
    Qr_Ped02DP2DLOTSEQ: TFloatField;
    Qr_Ped02DP2DGRADE: TStringField;
    Src_Ped01V: TDataSource;
    Qr_Ped02: TQuery;
    Qr_Pen: TQuery;
    Qr_PenPECODEMP: TFloatField;
    Qr_PenPECHAVE: TFloatField;
    Qr_PenPEITEM: TFloatField;
    Qr_PenPECODPRO: TFloatField;
    Qr_PenPEQTDPED: TFloatField;
    Qr_PenPEQTDENV: TFloatField;
    Qr_PenPEQTDPEN: TFloatField;
    Qr_PenPEDESC01: TFloatField;
    Qr_PenPEDESC02: TFloatField;
    Qr_PenPEDESC03: TFloatField;
    Qr_PenPEVALDES: TFloatField;
    Qr_PenPEPRECO: TFloatField;
    Qr_PenPEDATA: TDateTimeField;
    Qr_PenPECODCLI: TFloatField;
    Qr_PenPECODVEN: TFloatField;
    Qr_PenPELOTSEQ: TFloatField;
    Qr_PedFP: TQuery;
    Qr_PedFPPFPCODEMP: TFloatField;
    Qr_PedFPPFPLOTSEQ: TFloatField;
    Qr_PedFPPFPCHAVE: TFloatField;
    Qr_PedFPPFPSEQ: TFloatField;
    Qr_PedFPPFPFORMA: TFloatField;
    Qr_PedFPPFPNUMDOC: TStringField;
    Qr_PedFPPFPBANCO: TFloatField;
    Qr_PedFPPFPSERIE: TStringField;
    Qr_PedFPPFPVALOR: TFloatField;
    Qr_PedFPPFPCC: TStringField;
    Qr_PedFPPFPCOMP: TStringField;
    Qr_PedFPPFPAGENCIA: TStringField;
    Qr_PedFPPFPEMITENTE: TStringField;
    Qr_PedFPPFPDATA: TDateTimeField;
    Qr_PedFPnombco: TStringField;
    U_PedFP: TUpdateSQL;
    Qr_Ped02S: TQuery;
    U_Prodig: TUpdateSQL;
    Prodig: TQuery;
    ProdigCODPRO: TFloatField;
    Qr_PenPEGRADE: TStringField;
    Qr_Ped01P1CODBLOQ: TStringField;
    Qr_Ped01P1CODUSR_LBLOQ: TFloatField;
    Qr_Ped01P1TOTSERLIQ: TFloatField;
    Qr_Ped01vP1VVLRSERV: TFloatField;
    Qr_Ped02Ped01: TQuery;
    Src_Ped02Ped01: TDataSource;
    Qr_Ped02Ped01GRUPO: TStringField;
    Qr_Ped02Ped01PDNOME: TStringField;
    Qr_Ped02Ped01PDMARCA: TStringField;
    Qr_Ped02Ped01PDUND: TStringField;
    Qr_Ped02Ped01P2CODPRO: TFloatField;
    Qr_Ped02Ped01P2LOTE: TStringField;
    Qr_Ped02Ped01QTD: TFloatField;
    Tb_Cli_Bens: TQuery;
    U_Cli_Bens: TUpdateSQL;
    Src_Cli_Bens: TDataSource;
    Tb_Cli_BensCB_CODEMP: TFloatField;
    Tb_Cli_BensCB_CODCLI: TFloatField;
    Tb_Cli_BensCB_SEQ: TFloatField;
    Tb_Cli_BensCB_DESCRICAO: TMemoField;
    Tb_Cli_BensCB_QUITADO: TFloatField;
    Tb_Cli_IC: TQuery;
    U_Cli_IC: TUpdateSQL;
    Src_Cli_IC: TDataSource;
    Tb_Cli_ICIC_CODEMP: TFloatField;
    Tb_Cli_ICIC_CODCLI: TFloatField;
    Tb_Cli_ICIC_SEDEPROPRIA: TFloatField;
    Tb_Cli_ICIC_VALOR_ALUG: TFloatField;
    Tb_Cli_ICIC_QTDANO_ALUG: TFloatField;
    Tb_Cli_ICIC_QTDMES_ALUG: TFloatField;
    Tb_Cli_ICIC_CATEG: TStringField;
    Tb_Cli_ICIC_SEXO: TFloatField;
    Tb_Cli_ICIC_ESTCIV: TStringField;
    Tb_Cli_ICIC_DTNAS: TDateTimeField;
    Tb_Cli_ICIC_FIL_PAI: TStringField;
    Tb_Cli_ICIC_FIL_MAE: TStringField;
    Tb_Cli_ICIC_NACIONALIDADE: TStringField;
    Tb_Cli_ICIC_NATURAL: TStringField;
    Tb_Cli_ICIC_NAT_UF: TStringField;
    Tb_Cli_ICIC_PROF: TStringField;
    Tb_Cli_ICIC_LOCAL_TRAB: TStringField;
    Tb_Cli_ICIC_ENDTRAB: TStringField;
    Tb_Cli_ICIC_DEPTOTRAB: TStringField;
    Tb_Cli_ICIC_CARGOTRAB: TStringField;
    Tb_Cli_ICIC_QTDANOTRAB: TFloatField;
    Tb_Cli_ICIC_QTDMESTRAB: TFloatField;
    Tb_Cli_ICIC_SALARIO: TFloatField;
    Tb_Cli_ICIC_SAL_OUTROS: TFloatField;
    Tb_Cli_ICIC_NOME_CONJUGE: TStringField;
    Tb_Cli_ICIC_CONJUGE_NACION: TStringField;
    Tb_Cli_ICIC_CONJUGE_NATURAL: TStringField;
    Tb_Cli_ICIC_CONJUGE_NAT_UF: TStringField;
    Tb_Cli_ICIC_CONJUGE_CNPF: TFloatField;
    Tb_Cli_ICIC_CONJUGE_RG: TStringField;
    Tb_Cli_ICIC_CONJUGE_EMIS_RG: TStringField;
    Tb_Cli_ICIC_CONJUGE_DT_EXP: TDateTimeField;
    Tb_Cli_ICIC_CONJUGE_PROF: TStringField;
    Tb_Cli_ICIC_CONJUGE_LOCAL_TRAB: TStringField;
    Tb_Cli_ICIC_CONJUGE_ENDTRAB: TStringField;
    Tb_Cli_ICIC_CONJUGE_DEPTOTRAB: TStringField;
    Tb_Cli_ICIC_CONJUGE_CARGOTRAB: TStringField;
    Tb_Cli_ICIC_CONJUGE_QTDANOTRAB: TFloatField;
    Tb_Cli_ICIC_CONJUGE_QTDMESTRAB: TFloatField;
    Tb_Cli_ICIC_CONJUGE_SALARIO: TFloatField;
    Tb_Cli_ICIC_CONJUGE_SAL_OUTROS: TFloatField;
    Tb_Cli_OutInf: TQuery;
    U_Cli_OutInf: TUpdateSQL;
    Src_Cli_OutInf: TDataSource;
    Tb_Cli_OutInfOI_CODEMP: TFloatField;
    Tb_Cli_OutInfOI_CODCLI: TFloatField;
    Tb_Cli_OutInfOI_SEQ: TFloatField;
    Tb_Cli_OutInfOI_DESCRICAO: TMemoField;
    Tb_Cli_RefBan: TQuery;
    U_Cli_RefBan: TUpdateSQL;
    Src_Cli_RefBan: TDataSource;
    Tb_Cli_RefBanRB_CODEMP: TFloatField;
    Tb_Cli_RefBanRB_CODCLI: TFloatField;
    Tb_Cli_RefBanRB_SEQ: TFloatField;
    Tb_Cli_RefBanRB_BANCO: TStringField;
    Tb_Cli_RefBanRB_AGENCIA: TStringField;
    Tb_Cli_RefBanRB_CONTA: TStringField;
    Tb_Cli_RefBanRB_FONE: TStringField;
    Tb_Cli_RefBanRB_CONCEITO: TStringField;
    Tb_Cli_RefPes: TQuery;
    U_Cli_RefPes: TUpdateSQL;
    Src_Cli_RefPes: TDataSource;
    Tb_Cli_RefPesRP_CODEMP: TFloatField;
    Tb_Cli_RefPesRP_CODCLI: TFloatField;
    Tb_Cli_RefPesRP_SEQ: TFloatField;
    Tb_Cli_RefPesRP_NOME: TStringField;
    Tb_Cli_RefPesRP_ENDERECO: TStringField;
    Tb_Cli_RefPesRP_TIPO: TStringField;
    Tb_Cli_RefPesRP_FONE: TStringField;
    Tb_Cli_RefPesRP_CONCEITO: TStringField;
    Tb_Cli_RefCom: TQuery;
    U_Cli_RefCon: TUpdateSQL;
    Src_Cli_RefCom: TDataSource;
    Tb_Cli_RefComRC_CODEMP: TFloatField;
    Tb_Cli_RefComRC_CODCLI: TFloatField;
    Tb_Cli_RefComRC_SEQ: TFloatField;
    Tb_Cli_RefComRC_NOME: TStringField;
    Tb_Cli_RefComRC_FONE: TStringField;
    Tb_Cli_RefComRC_CONCEITO: TStringField;
    Tb_Cli_ICIC_FONETRAB: TStringField;
    Tb_Cli_ICIC_CONJUGE_FONETRAB: TStringField;
    Tb_Cli_ICIC_CONJUGE_DT_NAS: TDateTimeField;
    Qr_PedFPPFPNOMFOR: TStringField;
    Qr_PedFPPFPCNPF: TFloatField;
    Qr_PedFPPFPRG: TStringField;
    Qr_PedFPPFPDTNAS: TDateTimeField;
    Tb_PedFPPFPNOMFOR: TStringField;
    Tb_PedFPPFPCNPF: TFloatField;
    Tb_PedFPPFPRG: TStringField;
    Tb_PedFPPFPDTNAS: TDateTimeField;
    Tb_PedFPPFPVINCULO: TFloatField;
    Qr_Ped01P1COMIS_EXTRA: TFloatField;
    Qr_Ped01P1QTDM3: TFloatField;
    Qr_Ped01P1VFRE_CUSENT: TFloatField;
    Qr_Ped01P1VALENT: TFloatField;
    Qr_Ped01P1PRAZO_ENT: TFloatField;
    Qr_Ped01vP1VCOMISV_EXTRA: TFloatField;
    Qr_Ped01P1SEPAMB: TFloatField;
    Qr_PedFPPFPFPGTO: TFloatField;
    Qr_Ped01vP1VVINC02: TFloatField;
    Qr_Ped01vP1VNOMFPGTO: TStringField;
    Qr_Ped01vP1VCODFP: TFloatField;
    Qr_Ped01vP1VPFPGTO: TFloatField;
    Tb_PedFPPFPFPGTO: TFloatField;
    Qr_Ped01vP1VDEV_CODEMP: TFloatField;
    Qr_Ped01vP1VDEV_CODECF: TFloatField;
    Qr_Ped01vP1VDEV_NUMERO: TFloatField;
    Qr_Ped01vP1VDEV_DESD: TStringField;
    Qr_Ped01vP1VDEV_DTEMIS: TDateTimeField;
    Qr_PedFPPFPDEV_CODEMP: TFloatField;
    Qr_PedFPPFPDEV_CODECF: TFloatField;
    Qr_PedFPPFPDEV_NUMERO: TFloatField;
    Qr_PedFPPFPDEV_DESD: TStringField;
    Qr_PedFPPFPDEV_DUP: TFloatField;
    Qr_PedFPPFPDEV_DTEMIS: TDateTimeField;
    Tb_PedFPPFPDEV_CODEMP: TFloatField;
    Tb_PedFPPFPDEV_CODECF: TFloatField;
    Tb_PedFPPFPDEV_NUMERO: TFloatField;
    Tb_PedFPPFPDEV_DESD: TStringField;
    Tb_PedFPPFPDEV_DUP: TFloatField;
    Tb_PedFPPFPDEV_DTEMIS: TDateTimeField;
    Qr_Ped01vP1VDEV_DUP: TFloatField;
    Tb_Ven_CotaMes: TQuery;
    U_Ven_CotaMes: TUpdateSQL;
    Src_Ven_CotaMes: TDataSource;
    Tb_Ven_CotaMesCVCODEMP: TFloatField;
    Tb_Ven_CotaMesCVCODVEN: TFloatField;
    Tb_Ven_CotaMesCVANO: TFloatField;
    Tb_Ven_CotaMesCVMES: TFloatField;
    Tb_Ven_CotaMesCVCOTAVLR: TFloatField;
    Tb_Ven_CotaMesCVCOTAQTD: TFloatField;
    Tb_Ven_CotaMesCVREALVLR: TFloatField;
    Tb_Ven_CotaMesCVQTDVLR: TFloatField;
    Tb_Ven_CotaMesVNOME: TStringField;
    Qr_Ped01P1PZOLIB: TFloatField;
    Qr_Ped01P1PZOLIB_USR: TFloatField;
    Qr_Ped01P1BLOQPEND: TFloatField;
    Qr_Ped01P1CODBLOQ_LIB: TStringField;
    Qr_Ped01P1ECF_SERIE: TStringField;
    Qr_Ped01P1CX_CODCAI: TFloatField;
    Qr_Ped01P1CX_LOTMOV: TFloatField;
    Tb_UsrUSR_CODCAI: TFloatField;
    Tb_UsrUSR_PREVLIBPEDBLQ: TFloatField;
    Tb_UsrUSR_STATUSLIBPEDBLQ: TFloatField;
    Tb_GFor: TQuery;
    U_GFor: TUpdateSQL;
    Src_GFor: TDataSource;
    Tb_GForGFCODEMP: TFloatField;
    Tb_GForGFCODGRU: TFloatField;
    Tb_GForGFNOME: TStringField;
    Tb_GForGFPERCFRE: TFloatField;
    Tb_GForGFCOMIS: TFloatField;
    Tb_GForGFORDEM: TFloatField;
    Tb_FilPad2: TQuery;
    Tb_FilPad2FPCODUSR: TFloatField;
    Tb_FilPad2FPFORM: TStringField;
    Tb_FilPad2FPCOMP: TStringField;
    Tb_FilPad2FPTPCOMP: TStringField;
    Tb_FilPad2FPVALOR: TStringField;
    Tb_BloqueioBQCODCPRO: TFloatField;
    Tb_BloqueioCONPRO: TStringField;
    Qr_Ped01P1DUP_PROD: TFloatField;
    Qr_Ped01P1DUP_SERV: TFloatField;
    Qr_Ped01P1INCTB: TFloatField;
    Qr_Ped01P1EMITENTE: TStringField;
    Qr_Ped01P1PVACREDESREG: TFloatField;
    Qr_Ped01P1PVAJCOMIS: TFloatField;
    Tb_Cli_PV: TQuery;
    U_Cli_PV: TUpdateSQL;
    Src_Cli_PV: TDataSource;
    Tb_Cli_PVCPV_CODEMP: TFloatField;
    Tb_Cli_PVCPV_CODCLI: TFloatField;
    Tb_Cli_PVCPV_TABPV: TStringField;
    Tb_Cli_PVCPV_CODPV: TFloatField;
    Qr_Ped01P1LOCAL: TFloatField;
    Tb_CotaForVend_Mes: TQuery;
    U_CotaForVend_Mes: TUpdateSQL;
    Src_CotaForVend_Mes: TDataSource;
    Tb_CotaForVend_MesCFV_CODEMP: TFloatField;
    Tb_CotaForVend_MesCFV_CODVEN: TFloatField;
    Tb_CotaForVend_MesCFV_CODFOR: TFloatField;
    Tb_CotaForVend_MesCFV_ANO: TFloatField;
    Tb_CotaForVend_MesCFV_MES: TFloatField;
    Tb_CotaForVend_MesCFV_COTAVLR: TFloatField;
    Tb_CotaForVend_MesCFV_COTAQTD: TFloatField;
    Tb_CotaForVend_MesCFV_REALVLR: TFloatField;
    Tb_CotaForVend_MesCFV_QTDVLR: TFloatField;
    Tb_CotaForVend_MesVNOME: TStringField;
    Tb_CotaForVend_MesFRAZAO: TStringField;
    Tb_CotaProVend_Mes: TQuery;
    U_CotaProVend_Mes: TUpdateSQL;
    Src_CotaProVend_Mes: TDataSource;
    Tb_CotaProVend_MesCPV_CODEMP: TFloatField;
    Tb_CotaProVend_MesCPV_CODVEN: TFloatField;
    Tb_CotaProVend_MesCPV_CODPRO: TFloatField;
    Tb_CotaProVend_MesCPV_ANO: TFloatField;
    Tb_CotaProVend_MesCPV_MES: TFloatField;
    Tb_CotaProVend_MesCPV_COTAVLR: TFloatField;
    Tb_CotaProVend_MesCPV_COTAQTD: TFloatField;
    Tb_CotaProVend_MesCPV_REALVLR: TFloatField;
    Tb_CotaProVend_MesCPV_QTDVLR: TFloatField;
    Tb_CotaProVend_MesVNOME: TStringField;
    Tb_CotaProVend_MesPDNOME: TStringField;
    Qr_Ped01P1TOTPROM: TFloatField;
    Qr_Ped01P1TIPO_ENTSAI: TFloatField;
    Tb_UsrCODSUP: TFloatField;
    Tb_Usrnomsup: TStringField;
    Tb_ParGer02: TQuery;
    Src_Parger02: TDataSource;
    Tb_ParGer02PG2CODIGO: TFloatField;
    Tb_ParGer02PG2QTDDBLQCLISEMCPR: TFloatField;
    Tb_ParGer02PG2CONCEXATO: TFloatField;
    Tb_ParGer02PG2IGNOR_MINUSCULAS: TFloatField;
    Tb_Cli_ICIC_OTREC_TITREC: TStringField;
    Tb_Cli_ICIC_OTREC_ESFOD: TFloatField;
    Tb_Cli_ICIC_OTREC_CILOD: TFloatField;
    Tb_Cli_ICIC_OTREC_EIXOOD: TFloatField;
    Tb_Cli_ICIC_OTREC_PRISMAOD: TFloatField;
    Tb_Cli_ICIC_OTREC_ESFOE: TFloatField;
    Tb_Cli_ICIC_OTREC_CILOE: TFloatField;
    Tb_Cli_ICIC_OTREC_EIXOOE: TFloatField;
    Tb_Cli_ICIC_OTREC_PRISMAOE: TFloatField;
    Tb_Cli_ICIC_OTREC_ADICAO: TFloatField;
    Tb_Cli_ICIC_OTREC_DPDNP: TFloatField;
    Tb_Cli_ICIC_OTREC_OBS: TStringField;
    Tb_Cli_ICIC_OTREC_DTPCONS: TDateTimeField;
    Tb_Cli_ICIC_OTLENTE_LABOR: TStringField;
    Tb_Cli_ICIC_OTLENTE_TIPOR: TStringField;
    Tb_ParGer02PG2USANFE: TFloatField;
    Tb_ParGer02PG2NFETPIMP: TFloatField;
    Tb_ParGer02PG2FORMALOTEFAB: TFloatField;
    Tb_ParGer02PG2PROXLOTFAB: TFloatField;
    Tb_ParGer02PG2ULTFORLOTFAB: TStringField;
    Tb_ParGer02PG2FORMALOTEFAB_MASC: TFloatField;
    Tb_ParGer02PG2CHQFC: TFloatField;
    Tb_ParGer02PG2PASTAENVIO: TStringField;
    Tb_ParGer02PG2PASTARETORNO: TStringField;
    Tb_ParGer02PG2VALXMLENVIO: TStringField;
    Tb_ParGer02PG2VALXMLRETORNO: TStringField;
    Tb_ParGer02PG2UTILCQ: TFloatField;
    Qr_Ped01P1NFE_ENVXML: TFloatField;
    Tb_ParGer02PG2NFEPASTAIMP: TStringField;
    Tb_ParGer02PG2NFEAVISA_MTPIMP: TFloatField;
    Tb_ParGer02PG2SEGLOGOFF: TFloatField;
    Tb_ParGer02PG2DTBLOQCX: TDateTimeField;
    Tb_LeitorLO_MARCABAL: TFloatField;
    Tb_LeitorLO_MODBAL: TFloatField;
    Qr_Ped02_mp: TQuery;
    Tb_ParGer02PG2NFEVISALIZAR: TFloatField;
    Tb_ParGer02PG2TIPO_ETIBAL: TFloatField;
    Tb_ParGer02PG2CODPRO_SEMCOD: TFloatField;
    Tb_ParGer02PG2USA_COMANDA: TFloatField;
    Tb_ParGer02PG2FRENTE_ACEITAVALE: TFloatField;
    Qr_Ped02_Trocas: TQuery;
    Tb_ParGer02PG2SENINT_USU: TFloatField;
    Tb_ParGer02PG2PACREDICMS: TFloatField;
    Tb_ParGer02PG2SENINTUSR: TFloatField;
    U_Parger02: TUpdateSQL;
    Tb_ParGer02PG2NFE_TAMLOGOMARCA: TFloatField;
    Tb_LogoSisLSCODEMP: TFloatField;
    Tb_GForGFPERCPRFAT: TFloatField;
    Tb_FilPadFPVALOR2: TStringField;
    Tb_FilPad2FPVALOR2: TStringField;
    Tb_Po99: TRxMemoryData;
    Tb_Po99POPRAZO: TFloatField;
    Tb_Po99POCODEMP: TFloatField;
    Qr_Ped01submod: TFloatField;
    Qr_Ped01P1QTDDECPU: TFloatField;
    Tb_UsrUSR_ESTMIN: TFloatField;
    Tb_UsrUSR_AGENDA: TFloatField;
    Tb_UsrUSR_DATMOS: TDateTimeField;
    Tb_UsrUSR_DATHOR: TDateTimeField;
    Tb_AniCA_DATHOR_INC: TDateTimeField;
    Tb_AniCA_CODUSR_INC: TFloatField;
    Tb_AniCA_DATHOR_ALT: TDateTimeField;
    Tb_AniCA_CODUSR_ALT: TFloatField;
    Tb_AniCA_DATHOR_REP: TDateTimeField;
    Tb_AniCA_ORDEM: TFloatField;
    Tb_ParGer02PG2VERSAOXML: TStringField;
    Tb_AL1AL1TPCO01: TFloatField;
    Tb_AL1AL1TPCO02: TFloatField;
    Tb_AL1AL1TPCO03: TFloatField;
    Tb_AL1AL1PCOCUS: TFloatField;
    Tb_AL2AL2DTUA1: TDateTimeField;
    Tb_AL2AL2PCOATU2: TFloatField;
    Tb_AL2AL2PCONOV2: TFloatField;
    Tb_AL2AL2DTUA2: TDateTimeField;
    Tb_AL2AL2PCOATU3: TFloatField;
    Tb_AL2AL2PCONOV3: TFloatField;
    Tb_AL2AL2DTUA3: TDateTimeField;
    Tb_AL2AL2CUSANT: TFloatField;
    Tb_AL2AL2CUSATU: TFloatField;
    Tb_AL2AL2CUSNOV: TFloatField;
    Tb_AL2AL2DTUACUS: TDateTimeField;
    Tb_ParGer02PG2NFETPEMIS: TFloatField;
    Tb_ParGer02PG2FRENTE_IMPRIMEVEND: TFloatField;
    Tb_ParGer02PG2NFEPASTAMASTER: TStringField;
    Tb_ParGer02PG2NFEDATHOR_CONT: TDateTimeField;
    Tb_ParGer02PG2NFEJUST_CONT: TStringField;
    Tb_Par01PCODEMP: TFloatField;
    Tb_Par01PCODSEQ: TFloatField;
    Tb_Par01PNUMPED_LS: TFloatField;
    Tb_Par01PNUMPED: TFloatField;
    Tb_Par01PNUMPF_LS: TFloatField;
    Tb_Par01PNUMPF: TFloatField;
    Tb_Par01PLOTBCP_LS: TFloatField;
    Tb_Par01PLOTBCP: TFloatField;
    Tb_Par01PLOTBCR_LS: TFloatField;
    Tb_Par01PLOTBCR: TFloatField;
    Tb_Par01PNUMLIC_LS: TFloatField;
    Tb_Par01PNUMLIC: TFloatField;
    Tb_Par01PCODLDR_LS: TFloatField;
    Tb_Par01PCODLDR: TFloatField;
    Tb_Par01PCODFPCR: TFloatField;
    Tb_Par01PCFPCRDUP: TFloatField;
    Tb_Par01PCODFPCP: TFloatField;
    Tb_Par01PCFPCPDUP: TFloatField;
    Tb_Par01PCODCHQCLI_LS: TFloatField;
    Tb_Par01PCODCHQCLI: TFloatField;
    Tb_Par01PCODCHQ_PE_LS: TFloatField;
    Tb_Par01PCODCHQ_PE: TFloatField;
    Tb_Par01PFATMZ: TFloatField;
    Tb_Par01PFATMZC: TFloatField;
    Tb_Par01PDBKP: TStringField;
    Tb_Par01PARQBKP: TStringField;
    Tb_Par01PMAXREC: TStringField;
    Tb_Par01PMANDC01: TFloatField;
    Tb_Par01PMANDC02: TFloatField;
    Tb_Par01PMANDCV: TFloatField;
    Tb_Par01PMANTPCO: TFloatField;
    Tb_Par01PAVESTMIN: TFloatField;
    Tb_Par01PMANDI01: TFloatField;
    Tb_Par01PMANDI02: TFloatField;
    Tb_Par01PMANNOCR: TFloatField;
    Tb_Par01PMANDIV: TFloatField;
    Tb_Par01PDATALT: TDateTimeField;
    Tb_Par01PUSRALT: TFloatField;
    Tb_Par01PCXAUTO: TFloatField;
    Tb_Par01PVISNOT: TFloatField;
    Tb_Par01PVISLSEP: TFloatField;
    Tb_Par01PVISORC: TFloatField;
    Tb_Par01PVISVAL: TFloatField;
    Tb_Par01PATUACUS: TFloatField;
    Tb_Par01PJURM: TFloatField;
    Tb_Par01PMULTA: TFloatField;
    Tb_Par01PQTDDM: TFloatField;
    Tb_Par01PDESCM: TFloatField;
    Tb_Par01PGRAPEN: TFloatField;
    Tb_Par01PVISA: TFloatField;
    Tb_Par01PANVISA: TFloatField;
    Tb_Par01PDESCMP0: TFloatField;
    Tb_Par01PDESCMP1: TFloatField;
    Tb_Par01PCODUSR: TFloatField;
    Tb_Par01PDTALT: TDateTimeField;
    Tb_Par01PHRALT: TStringField;
    Tb_Par01PORDGPED: TFloatField;
    Tb_Par01PSTATUS: TFloatField;
    Tb_Par01PVALFRE: TFloatField;
    Tb_Par01PVISDFIN: TFloatField;
    Tb_Par01PVISCOMI: TFloatField;
    Tb_Par01PCHAVFAB_LS: TFloatField;
    Tb_Par01PCHAVFAB: TFloatField;
    Tb_Par01PCHAVENV_LS: TFloatField;
    Tb_Par01PCHAVENV: TFloatField;
    Tb_Par01PCADAJU_LS: TFloatField;
    Tb_Par01PCADAJU: TFloatField;
    Tb_Par01PCADCAC_LS: TFloatField;
    Tb_Par01PCADCAC: TFloatField;
    Tb_Par01PLOCPEDGRAV: TFloatField;
    Tb_Par01PINCTB: TFloatField;
    Tb_Par01PMANDI03: TFloatField;
    Tb_Par01PNUMOS_LS: TFloatField;
    Tb_Par01PNUMOS: TFloatField;
    Tb_Par01PMENPZORC: TFloatField;
    Tb_Par01PCAIXASECF: TFloatField;
    Tb_Par01PPFDC01: TFloatField;
    Tb_Par01PPFDC02: TFloatField;
    Tb_Par01PPFDVLR: TFloatField;
    Tb_Par01PPFDI01: TFloatField;
    Tb_Par01PPFDI02: TFloatField;
    Tb_Par01PPFDI03: TFloatField;
    Tb_Par01PPFDIVLR: TFloatField;
    Tb_Par01PBOL_PADRAO: TFloatField;
    Tb_Par01PDUP_PADRAO: TFloatField;
    Tb_Par01PONLINE_NF: TFloatField;
    Tb_Par01PONLINE_ORC: TFloatField;
    Tb_Par01PONLINE_VAL: TFloatField;
    Tb_Par01PONLINE_DUP: TFloatField;
    Tb_Par01PONLINE_BOL: TFloatField;
    Tb_Par01PONLINE_LSEP: TFloatField;
    Tb_Par01PCHACREM_LS: TFloatField;
    Tb_Par01PCHACREM: TFloatField;
    Tb_Par01PLOTELBR_LS: TFloatField;
    Tb_Par01PLOTELBR: TFloatField;
    Tb_Par01PSEQTEF: TFloatField;
    Tb_Par01PTIPOTEF: TFloatField;
    Tb_Par01PTECBAN: TFloatField;
    Tb_Par01PQTDVTEF: TFloatField;
    Tb_Par01PONLINE_NF_CONF: TFloatField;
    Tb_Par01PONLINE_ORC_CONF: TFloatField;
    Tb_Par01PONLINE_VAL_CONF: TFloatField;
    Tb_Par01PONLINE_DUP_CART: TFloatField;
    Tb_Par01PONLINE_LSEP_CONF: TFloatField;
    Tb_Par01PFATMZ_LOCMOV: TFloatField;
    Tb_Par01PHIPERCARD: TFloatField;
    Tb_Par01PVISAMAST: TFloatField;
    Tb_Par01PCBLOQAUTO: TFloatField;
    Qr_Ped01P1DATHOR_ULTEVE: TDateTimeField;
    Qr_Ped01P1CODUSR_ULTEVE: TFloatField;
    Qr_Ped01P1COMP_ULTEVE: TStringField;
    Tb_UsrCODUSR_EVE: TFloatField;
    Tb_UsrUSR_DATHOR_REP: TDateTimeField;
    Tb_UsrDATHOR_EVE: TDateTimeField;
    Tb_UsrEMAILUSR: TStringField;
    Tb_UsrSENHAEMAILUSR: TStringField;
    Qr_Ped01P1ANALISE: TFloatField;
    Tb_Imp_Sys: TQuery;
    Tb_Imp_SysCITERMINAL: TStringField;
    Tb_Imp_SysCICODIGO: TStringField;
    Tb_Imp_SysCINOMREL: TStringField;
    Tb_Imp_SysCIPORTA: TStringField;
    Tb_Imp_SysCIMODELO: TFloatField;
    Tb_Imp_SysCIQTDLP: TFloatField;
    Tb_Imp_SysCIUSRALT: TFloatField;
    Tb_Imp_SysCIDATAALT: TDateTimeField;
    Tb_Imp_SysCICODEMP: TFloatField;
    Qr_Ped01P1ACRESCIMO: TFloatField;
    Qr_Ped01P1TOTDESCPR: TFloatField;
    Qr_Ped01P1SEMCOMP: TStringField;
    Tb_Par01PONLINE_ORC_SELIMP: TFloatField;
    Tb_Par01PONLINE_LSEP_SELIMP: TFloatField;
    Tb_CSer01CS_CODEMP: TFloatField;
    Tb_CSer01CS_CODCLI: TFloatField;
    Tb_CSer01CS_CHAVE: TFloatField;
    Tb_CSer01CS_DATCON: TDateTimeField;
    Tb_CSer01CS_DATVAL: TDateTimeField;
    Tb_CSer01CS_TIPO: TFloatField;
    Tb_CSer01CS_STATUS: TFloatField;
    Tb_CSer01CS_DIAV: TFloatField;
    Tb_CSer01CS_MESV: TFloatField;
    Tb_CSer01CS_CODUSR_INC: TFloatField;
    Tb_CSer01CS_NOMUSR_INC: TStringField;
    Tb_CSer01CS_DATHOR_INC: TDateTimeField;
    Tb_CSer01CS_CODUSR_ALT: TFloatField;
    Tb_CSer01CS_NOMUSR_ALT: TStringField;
    Tb_CSer01CS_DATHOR_ALT: TDateTimeField;
    Tb_CSer01CS_FORMAPAG: TMemoField;
    Tb_CSer01CS_NUMPROPOSTA: TStringField;
    Tb_CSer01CS_REPLEGAL: TStringField;
    Tb_CSer01CS_REPLEGAL_SEXO: TStringField;
    Tb_CSer01CS_REPLEGAL_CPF: TStringField;
    Tb_CSer01CS_REPLEGAL_RG: TStringField;
    Tb_CSer01CS_PRAZOENT: TMemoField;
    Tb_CSer01CS_CODSER: TFloatField;
    Tb_CSer01PDNOME: TStringField;
    Tb_CSer01CRAZAO: TStringField;
    Tb_CSer01TOTAL_VALOR_CONT: TFloatField;
    Tb_CSer01TOTAL_VALOR_CONT_DESC: TFloatField;
    Tb_CSer01TOTAL_VALOR_LIQUIDO: TFloatField;
    Tb_CSer01TOTAL_LIC: TFloatField;
    Tb_UsrUSR_CODDEP_PADRAO: TStringField;
    Qr_Ped01P1OBS1: TMemoField;
    Qr_Ped01P1OBS2: TMemoField;
    Qr_Ped01P1OBS3: TMemoField;
    Tb_UsrUSR_SITCAD: TFloatField;
    Tb_UsrUSR_DESCMAX: TFloatField;
    Tb_Usrnivel_pdv: TIntegerField;
    Tb_UsrUSR_DESCMAX_MASTER: TFloatField;
    procedure Tb_AL1AfterDelete(DataSet: TDataSet);
    procedure Tb_AL1CalcFields(DataSet: TDataSet);
    procedure Tb_AL1AfterInsert(DataSet: TDataSet);
    procedure Tb_UsrCalcFields(DataSet: TDataSet);
    procedure Tb_UsrBeforeInsert(DataSet: TDataSet);
    procedure Tb_UsrAfterInsert(DataSet: TDataSet);
    procedure Tb_UsrAfterCancel(DataSet: TDataSet);
    procedure Tb_AL1PostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure Tb_Par01BeforePost(DataSet: TDataSet);
    procedure Tb_Par02CalcFields(DataSet: TDataSet);
    procedure Tb_AceBeforePost(DataSet: TDataSet);
    procedure c(DataSet: TDataSet);
    procedure Tb_AL1BeforePost(DataSet: TDataSet);
    procedure Tb_AL2BeforePost(DataSet: TDataSet);
    procedure Tb_Par02BeforePost(DataSet: TDataSet);
    procedure Tb_UsrBeforePost(DataSet: TDataSet);
    procedure Tb_Rm1BeforePost(DataSet: TDataSet);
    procedure Tb_Rm2BeforePost(DataSet: TDataSet);
    procedure Tb_AcTabBeforePost(DataSet: TDataSet);
    procedure Tb_AcTabBeforeInsert(DataSet: TDataSet);
    procedure e(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure Tb_PosDocBeforePost(DataSet: TDataSet);
    procedure Tb_AniCalcFields(DataSet: TDataSet);
    procedure Tb_CSer01CalcFields(DataSet: TDataSet);
    procedure Tb_CSer02AfterInsert(DataSet: TDataSet);
    procedure Tb_CSer02CalcFields(DataSet: TDataSet);
    procedure Tb_GraProBeforePost(DataSet: TDataSet);
    procedure Tb_MProBeforePost(DataSet: TDataSet);
    procedure Tb_AcRe01CalcFields(DataSet: TDataSet);
    procedure Tb_AcRe02CalcFields(DataSet: TDataSet);
    procedure Tb_MPerBeforeInsert(DataSet: TDataSet);
    procedure Tb_MParBeforeInsert(DataSet: TDataSet);
    procedure Tb_MParAfterInsert(DataSet: TDataSet);
    procedure Tb_MPerAfterInsert(DataSet: TDataSet);
    procedure Tb_MPerBeforePost(DataSet: TDataSet);
    procedure Tb_MParBeforePost(DataSet: TDataSet);
    procedure Tb_CP01CalcFields(DataSet: TDataSet);
    procedure Tb_CP02CalcFields(DataSet: TDataSet);
    procedure Src_CP01DataChange(Sender: TObject; Field: TField);
    procedure Tb_Cli_RefBanAfterInsert(DataSet: TDataSet);
    procedure Tb_Cli_RefBanAfterCancel(DataSet: TDataSet);
    procedure Tb_Cli_RefComAfterCancel(DataSet: TDataSet);
    procedure Tb_Cli_RefComAfterInsert(DataSet: TDataSet);
    procedure Tb_Cli_OutInfAfterInsert(DataSet: TDataSet);
    procedure Tb_Cli_OutInfAfterCancel(DataSet: TDataSet);
    procedure Tb_Cli_ICAfterInsert(DataSet: TDataSet);
    procedure Tb_Cli_RefPesAfterInsert(DataSet: TDataSet);
    procedure Tb_Cli_RefPesAfterCancel(DataSet: TDataSet);
    procedure Tb_Cli_BensAfterInsert(DataSet: TDataSet);
    procedure Tb_Cli_BensAfterCancel(DataSet: TDataSet);
    procedure Tb_Imp_SysAfterInsert(DataSet: TDataSet);
    procedure Tb_Cli_ICBeforePost(DataSet: TDataSet);
    procedure Tb_GForAfterInsert(DataSet: TDataSet);
    procedure Tb_GForBeforeInsert(DataSet: TDataSet);
    procedure Tb_Cli_PVAfterCancel(DataSet: TDataSet);
    procedure Tb_Cli_PVAfterInsert(DataSet: TDataSet);
    procedure Qr_Ped01CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM4: TDM4;

implementation

{$R *.dfm}

procedure TDM4.Tb_AL1AfterDelete(DataSet: TDataSet);
begin
Try
  DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
  If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
except
   MessageDlg('Ja Existe um Registro igual a Este Click em Cancelar!',mtInformation,[mbOk],0);
   end;
DM1.SG_ASSOC.Commit;

end;

procedure TDM4.Tb_AL1CalcFields(DataSet: TDataSet);
begin
if DM4.Tb_AL1AL1TIPO.Value=1 then
   DM4.Tb_AL1tipo.Value:='Diminuir'
else
   DM4.Tb_AL1tipo.Value:='Aumentar';
end;

procedure TDM4.Tb_AL1AfterInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.Add('Select Max(AL1LOTE) from CADAL1 '
                  +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' where  AL1CODEMP=0'+IntToStr(codemp)));
DM1.Query1.Open;
DM4.Tb_AL1AL1LOTE.Value:=DM1.Query1.Fields[0].AsFloat+1;

end;

procedure TDM4.Tb_UsrCalcFields(DataSet: TDataSet);
begin

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select * from CADCAR where ');
if DM1.Qr_TID.Locate('TINOME','CADCAR',[]) then
   DM1.Query1.SQL.Add(' CODCAR=0'+Tb_UsrCODCAR.AsString
                     +' order by CODCAR')
else
   DM1.Query1.SQL.Add(' CODEMP=0'+IntToStr(codemp)
                  +' and CODCAR=0'+Tb_UsrCODCAR.AsString
                  +' order by CODEMP,CODCAR');
DM1.Query1.Open;
if DM1.Query1.Eof then
   Tb_Usrnomcar.Value:='Nao Cadastrado'
else
   begin
   Tb_Usrnomcar.Value:=DM1.Query1.Fields[2].AsString;
   Tb_Usrnivel_pdv.Value:=DM1.Query1.Fieldbyname('CG_NIVEL_LIBERACAO').AsInteger;
   end;
if DM4.Tb_UsrCODVEN.AsFloat>0 then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',DM4.Tb_UsrCODVEN.AsString) then
      Tb_Usrnomven.Value:=DM1.Query1.Fields[0].AsString
   else
      Tb_Usrnomven.Value:='';
   end;
if DM4.Tb_UsrCODSUP.AsFloat>0 then
   begin
   if flqr1('SNOME','S','CADSUP','N','SCODSUP',DM4.Tb_UsrCODSUP.AsString) then
      Tb_Usrnomsup.Value:=DM1.Query1.Fields[0].AsString
   else
      Tb_Usrnomsup.Value:='';
   end;

end;

procedure TDM4.Tb_UsrBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('select max(CODUSR) from CADUSR');
DM1.Query1.Open;
if DM1.Tb_PargerPDCADUSR.Value=1 then
   begin
   Cod:=StrToInt('0'+Copy(DM1.Query1.Fields[0].AsString,1,Length(DM1.Query1.Fields[0].AsString)-1))+1;
   Cod:=Digito(Cod);
   if cod=1111 then
      cod:=1112;
   end
else
   begin
   cod:=DM1.Query1.Fields[0].AsInteger+1;
   if cod=1111 then
      cod:=1112;
   end;

end;

procedure TDM4.Tb_UsrAfterInsert(DataSet: TDataSet);
begin
Tb_UsrCODUSR.Value:=Cod;
Tb_UsrNOMUSR.Value:='_';
Tb_UsrCODEMP.Value:=codemp;
Tb_Usr.Post;
Tb_Usr.Edit;

end;

procedure TDM4.Tb_UsrAfterCancel(DataSet: TDataSet);
begin
If Tb_UsrNOMUSR.Value='_' then Tb_Usr.Delete;

end;

procedure TDM4.Tb_AL1PostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
If (E is EDBEngineError) then
   If (E as EDBEngineError).Errors[0].Errorcode=9729 then
      begin
      MessageDlg('A chave deste registro já existe!',mtWarning,[mbOK],0);
      Abort;
      end;

end;

procedure TDM4.Tb_Par01BeforePost(DataSet: TDataSet);
var
i: Integer;
begin
for i:=0 to DM4.Tb_Par01.FieldCount-1 do
   begin
   if not DM4.Tb_Par01.Fields[i].IsNull then
      Continue;
   if DM4.Tb_Par01.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM4.Tb_Par01.Fields[i].Value:=0
//   else if DM4.Tb_Par01.fields[i].DataType in [ftDate,ftDateTime] then
//      DM4.Tb_Par01.Fields[i].Value:=0
   else if DM4.Tb_Par01.Fields[i].DataType in [ftString,ftMemo] then
      DM4.Tb_Par01.Fields[i].Value:='';
   end;


end;

procedure TDM4.Tb_Par02CalcFields(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select PA2SENHA from CADPAR02 where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPAR',[]),'',' PA2CODEMP=0'+DM4.Tb_Par02PA2CODEMP.AsString+' and ')
                  +' PA2CODIGO=0');
if DM4.Tb_Par02PA2CODUSR.AsFloat>0 then
   DM1.Query1.SQL.Add(' and PA2CODUSR=0'+DM4.Tb_Par02PA2CODUSR.AsString);

DM1.Query1.Open;
if not DM1.Query1.Eof then
   DM4.Tb_Par02senhageral.Value:=DM1.Query1.Fields[0].AsString;
end;

procedure TDM4.Tb_AceBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
for i:=0 to DM4.Tb_Ace.FieldCount-1 do
   begin
   if not DM4.Tb_Ace.Fields[i].IsNull then
      Continue;
   if DM4.Tb_Ace.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM4.Tb_Ace.Fields[i].Value:=0
//   else if DM4.Tb_Ace.fields[i].DataType in [ftDate,ftDateTime] then
//      DM4.Tb_Ace.Fields[i].Value:=0
   else if DM4.Tb_Ace.Fields[i].DataType in [ftString,ftMemo] then
      DM4.Tb_Ace.Fields[i].Value:='';
   end;


end;

procedure TDM4.c(DataSet: TDataSet);
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

procedure TDM4.Tb_AL1BeforePost(DataSet: TDataSet);
var
i: Integer;
begin
for i:=0 to DM4.Tb_AL1.FieldCount-1 do
   begin
   if not DM4.Tb_AL1.Fields[i].IsNull then
      Continue;
   if DM4.Tb_AL1.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM4.Tb_AL1.Fields[i].Value:=0
//   else if DM4.Tb_AL1.fields[i].DataType in [ftDate,ftDateTime] then
//      DM4.Tb_AL1.Fields[i].Value:=0
   else if DM4.Tb_AL1.Fields[i].DataType in [ftString,ftMemo] then
      DM4.Tb_AL1.Fields[i].Value:='';
   end;


end;

procedure TDM4.Tb_AL2BeforePost(DataSet: TDataSet);
var
i: Integer;
begin
for i:=0 to DM4.Tb_AL2.FieldCount-1 do
   begin
   if not DM4.Tb_AL2.Fields[i].IsNull then
      Continue;
   if DM4.Tb_AL2.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM4.Tb_AL2.Fields[i].Value:=0
//   else if DM4.Tb_AL2.fields[i].DataType in [ftDate,ftDateTime] then
//      DM4.Tb_AL2.Fields[i].Value:=0
   else if DM4.Tb_AL2.Fields[i].DataType in [ftString,ftMemo] then
      DM4.Tb_AL2.Fields[i].Value:='';
   end;


end;

procedure TDM4.Tb_Par02BeforePost(DataSet: TDataSet);
var
i: Integer;
begin
for i:=0 to DM4.Tb_Par02.FieldCount-1 do
   begin
   if not DM4.Tb_Par02.Fields[i].IsNull then
      Continue;
   if DM4.Tb_Par02.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM4.Tb_Par02.Fields[i].Value:=0
//   else if DM4.Tb_Par02.fields[i].DataType in [ftDate,ftDateTime] then
//      DM4.Tb_Par02.Fields[i].Value:=0
   else if DM4.Tb_Par02.Fields[i].DataType in [ftString,ftMemo] then
      DM4.Tb_Par02.Fields[i].Value:='';
   end;


end;

procedure TDM4.Tb_UsrBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
for i:=0 to DM4.Tb_Usr.FieldCount-1 do
   begin
   if not DM4.Tb_Usr.Fields[i].IsNull then
      Continue;
   if DM4.Tb_Usr.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM4.Tb_Usr.Fields[i].Value:=0
//   else if DM4.Tb_Usr.fields[i].DataType in [ftDate,ftDateTime] then
//      DM4.Tb_Usr.Fields[i].Value:=0
   else if DM4.Tb_Usr.Fields[i].DataType in [ftString,ftMemo] then
      DM4.Tb_Usr.Fields[i].Value:='';
   end;


end;

procedure TDM4.Tb_Rm1BeforePost(DataSet: TDataSet);
var
i: Integer;
begin
for i:=0 to DM4.Tb_RM1.FieldCount-1 do
   begin
   if not DM4.Tb_RM1.Fields[i].IsNull then
      Continue;
   if DM4.Tb_RM1.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM4.Tb_RM1.Fields[i].Value:=0
//   else if DM4.Tb_RM1.fields[i].DataType in [ftDate,ftDateTime] then
//      DM4.Tb_RM1.Fields[i].Value:=0
   else if DM4.Tb_RM1.Fields[i].DataType in [ftString,ftMemo] then
      DM4.Tb_RM1.Fields[i].Value:='';
   end;
end;

procedure TDM4.Tb_Rm2BeforePost(DataSet: TDataSet);
var
i: Integer;
begin
for i:=0 to DM4.Tb_RM2.FieldCount-1 do
   begin
   if not DM4.Tb_RM2.Fields[i].IsNull then
      Continue;
   if DM4.Tb_RM2.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM4.Tb_RM2.Fields[i].Value:=0
//   else if DM4.Tb_RM2.fields[i].DataType in [ftDate,ftDateTime] then
//      DM4.Tb_RM2.Fields[i].Value:=0
   else if DM4.Tb_RM2.Fields[i].DataType in [ftString,ftMemo] then
      DM4.Tb_RM2.Fields[i].Value:='';
   end;



end;

procedure TDM4.Tb_AcTabBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
for i:=0 to DM4.Tb_AcTab.FieldCount-1 do
   begin
   if not DM4.Tb_AcTab.Fields[i].IsNull then
      Continue;
   if DM4.Tb_AcTab.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM4.Tb_AcTab.Fields[i].Value:=0
//   else if DM4.Tb_AcTab.fields[i].DataType in [ftDate,ftDateTime] then
//      DM4.Tb_AcTab.Fields[i].Value:=0
   else if DM4.Tb_AcTab.Fields[i].DataType in [ftString,ftMemo] then
      DM4.Tb_AcTab.Fields[i].Value:='';
   end;


end;

procedure TDM4.Tb_AcTabBeforeInsert(DataSet: TDataSet);
begin
abort;
end;

procedure TDM4.e(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
if EDBEngineError(E).Errors[0].ErrorCode = 9729 then
MessageDlg('Registro já existe!',mtWarning,[mbOk],0);
Action:= daAbort;

end;

procedure TDM4.Tb_PosDocBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
for i:=0 to DM4.Tb_PosDoc.FieldCount-1 do
   begin
   if not DM4.Tb_PosDoc.Fields[i].IsNull then
      Continue;
   if DM4.Tb_PosDoc.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM4.Tb_PosDoc.Fields[i].Value:=0
//   else if DM4.Tb_PosDoc.fields[i].DataType in [ftDate,ftDateTime] then
//      DM4.Tb_PosDoc.Fields[i].Value:=0
   else if DM4.Tb_PosDoc.Fields[i].DataType in [ftString,ftMemo] then
      DM4.Tb_PosDoc.Fields[i].Value:='';
   end;



end;

procedure TDM4.Tb_AniCalcFields(DataSet: TDataSet);
begin
if DM4.Tb_AniCA_DTNAS.Value>pdatanula then
   DM4.Tb_Anidtnas.Value:=DM4.Tb_AniCA_DTNAS.Value;
if DM4.Tb_AniCA_DTCONTATO.Value>pdatanula then
   DM4.Tb_Anidtcontato.Value:=DM4.Tb_AniCA_DTCONTATO.Value;
if DM4.Tb_AniCA_TIPO.Value='CL' then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',DM4.Tb_AniCA_CODIGO.AsString) then
      DM4.Tb_Aninome.Value:=DM1.Query1.Fields[0].AsString;
   end;
if DM4.Tb_AniCA_TIPO.Value='FR' then
   begin
   if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',DM4.Tb_AniCA_CODIGO.AsString) then
      DM4.Tb_Aninome.Value:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TDM4.Tb_CSer01CalcFields(DataSet: TDataSet);
begin


if DM4.Tb_CSer01CS_DATCON.Value<=pdatanula then
   DM4.Tb_CSer01datcon.Value:='/  /'
else
   DM4.Tb_CSer01datcon.Value:=FormatDateTime(fdt2, DM4.Tb_CSer01CS_DATCON.Value);
if DM4.Tb_CSer01CS_DATVAL.Value<=pdatanula then
   DM4.Tb_CSer01datval.Value:='/  /'
else
   DM4.Tb_CSer01datval.Value:=FormatDateTime(fdt2, DM4.Tb_CSer01CS_DATVAL.Value);
if DM4.Tb_CSer01CS_CODCLI.Value>0 then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',DM4.Tb_CSer01CS_CODCLI.AsString) then
      DM4.Tb_CSer01razsoc.Value:=DM1.Query1.Fields[0].AsString;
   end;

if DM4.Tb_CSer01CS_CODSER.Value>0 then
   begin
   if flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',DM4.Tb_CSer01CS_CODSER.AsString) then
      DM4.Tb_CSer01nomser.Value:=DM1.Query1.Fields[0].AsString;
   end;

if DM4.Tb_CSer01CS_TIPO.Value=1 then
   begin
   DM4.Tb_CSer01obsvenc01.Value:='Vencer Sempre no dia:';
   DM4.Tb_CSer01obsvenc02.Value:='de cada mês';
   end
else if DM4.Tb_CSer01CS_TIPO.Value=2 then
   begin
   DM4.Tb_CSer01obsvenc01.Value:='Vencer Sempre no dia/mês:';
   DM4.Tb_CSer01obsvenc02.Value:='de cada ano';
   end
else if DM4.Tb_CSer01CS_TIPO.Value=0 then
   begin
   DM4.Tb_CSer01obsvenc01.Value:='';
   DM4.Tb_CSer01obsvenc02.Value:='';
   end;
end;

procedure TDM4.Tb_CSer02AfterInsert(DataSet: TDataSet);
var
query_temp: tQuery;
begin
DM4.Tb_CSer02CS2_CODEMP.Value:=DM4.Tb_CSer01CS_CODEMP.Value;
DM4.Tb_CSer02CS2_CODCLI.Value:=DM4.Tb_CSer01CS_CODCLI.Value;
DM4.Tb_CSer02CS2_CHAVE.Value :=DM4.Tb_CSer01CS_CHAVE.Value;
query_temp:=tQuery.Create(nil);
query_temp.DatabaseName:='SG_ASSOC';

query_temp.Close;
query_temp.SQL.Clear;
query_temp.SQL.add('Select max(CS2_ORDEM) from CADCSER02 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CS2_CODEMP=0'+DM4.Tb_CSer01CS_CODEMP.AsString+' and ')
                  +' CS2_CODCLI=0'+DM4.Tb_CSer01CS_CODCLI.AsString
                  +' and CS2_CHAVE=0'+DM4.Tb_CSer01CS_CHAVE.AsString);
query_temp.Open;
freeandnil(query_temp);
DM4.Tb_CSer02CS2_ORDEM.Value:=query_temp.Fields[0].AsFloat+1;
end;

procedure TDM4.Tb_CSer02CalcFields(DataSet: TDataSet);
begin
if DM4.Tb_CSer02CS2_CODPRO.Value>0 then
   begin
   if flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',DM4.Tb_CSer02CS2_CODPRO.AsString) then
      DM4.Tb_CSer02nompro.Value:=DM1.Query1.Fields[0].AsString;  
   end;

end;

procedure TDM4.Tb_GraProBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
for i:=0 to DM4.Tb_GraPro.FieldCount-1 do
   begin
   if not DM4.Tb_GraPro.Fields[i].IsNull then
      Continue;
   if DM4.Tb_GraPro.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM4.Tb_GraPro.Fields[i].Value:=0
   else if DM4.Tb_GraPro.Fields[i].DataType in [ftString,ftMemo] then
      DM4.Tb_GraPro.Fields[i].Value:='';
   end;

end;

procedure TDM4.Tb_MProBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
for i:=0 to DM4.Tb_MPro.FieldCount-1 do
   begin
   if not DM4.Tb_MPro.Fields[i].IsNull then
      Continue;
   if DM4.Tb_MPro.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM4.Tb_MPro.Fields[i].Value:=0
   else if DM4.Tb_MPro.Fields[i].DataType in [ftString,ftMemo] then
      DM4.Tb_MPro.Fields[i].Value:='';
   end;

end;

procedure TDM4.Tb_AcRe01CalcFields(DataSet: TDataSet);
begin
if Tb_AcRe01AR1CODCLI.Value>0 then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',DM4.Tb_AcRe01AR1CODCLI.AsString) then
      DM4.Tb_AcRe01nomcli.Value:=DM1.Query1.Fields[0].AsString;
   end;
if Tb_AcRe01AR1TIPO.Value=1 then
   Tb_AcRe01tipoacerto.Value:='Consignações'
else
   Tb_AcRe01tipoacerto.Value:='Remessa p/Venda';         

end;

procedure TDM4.Tb_AcRe02CalcFields(DataSet: TDataSet);
begin
if Tb_AcRe02AR2TIPOMOV.Value=0 then
   Tb_AcRe02tipomov.Value:='Remessa'
else if Tb_AcRe02AR2TIPOMOV.Value=1 then
   Tb_AcRe02tipomov.Value:='Devoluções'
else
   Tb_AcRe02tipomov.Value:='Venda';

end;

procedure TDM4.Tb_MPerBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('select max(CMPCODIGO) from CADMPER ');
if DM1.Qr_tid.Locate('TINOME','CADPRO',[]) then
   DM1.Query1.SQL.Add(' where  CMPCODEMP='+IntTostr(Codemp));
DM1.Query1.Open;
cod:=DM1.Query1.Fields[0].AsInteger+1;

end;

procedure TDM4.Tb_MParBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('select max(MPARCODIGO) from CADMPAR ');
if DM1.Qr_tid.Locate('TINOME','CADPRO',[]) then
   DM1.Query1.SQL.Add(' where  MPARCODEMP='+IntTostr(Codemp));
DM1.Query1.Open;
cod:=DM1.Query1.Fields[0].AsInteger+1;

end;

procedure TDM4.Tb_MParAfterInsert(DataSet: TDataSet);
begin
DM4.Tb_MParMPARCODIGO.Value:=Cod;
DM4.Tb_MParMPARCODEMP.Value:=codemp;
DM4.Tb_MParMPARMOTIVO.Value:=' ';
DM4.Tb_MPar.Post;
DM4.Tb_MPar.Edit;

end;

procedure TDM4.Tb_MPerAfterInsert(DataSet: TDataSet);
begin
DM4.Tb_MPerCMPCODIGO.Value:=Cod;
DM4.Tb_MPerCMPCODEMP.Value:=codemp;
DM4.Tb_MPerCMPMOTIVO.Value:='';
DM4.Tb_MPer.Post;
DM4.Tb_MPer.Edit;

end;

procedure TDM4.Tb_MPerBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
For i:=0 to DM4.Tb_MPer.FieldCount-1 do
   begin
   if not DM4.Tb_MPer.Fields[i].IsNull then
      Continue;
   if DM4.Tb_MPer.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM4.Tb_MPer.Fields[i].Value:=0
   else if DM4.Tb_MPer.fields[i].DataType in [ftDate,ftDateTime] then
      DM4.Tb_MPer.Fields[i].Value:=0
   else if DM4.Tb_MPer.Fields[i].DataType in [ftString,ftMemo] then
      DM4.Tb_MPer.Fields[i].Value:=' ';
   end;


end;

procedure TDM4.Tb_MParBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
if Trim(DM4.Tb_MParMPARMOTIVO.Value)='' then
   DM4.Tb_MParMPARMOTIVO.Value:='_';
For i:=0 to DM4.Tb_MPar.FieldCount-1 do
   begin
   if not DM4.Tb_MPar.Fields[i].IsNull then
      Continue;
   if DM4.Tb_MPar.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM4.Tb_MPar.Fields[i].Value:=0
   else if DM4.Tb_MPar.fields[i].DataType in [ftDate,ftDateTime] then
      DM4.Tb_MPar.Fields[i].Value:=0
   else if DM4.Tb_MPar.Fields[i].DataType in [ftString,ftMemo] then
      DM4.Tb_MPar.Fields[i].Value:=' ';
   end;

end;

procedure TDM4.Tb_CP01CalcFields(DataSet: TDataSet);
begin
if (DM4.Tb_CP01CP1CODENC.Value=0) or (DM4.Tb_CP01CP1CODENC.IsNull) then
   DM4.Tb_CP01nomenc.Value:='não cadastrado'
else
   begin
   if flqr1('CFNOMFUN','CF','CADFUN','N','CFCODFUN',DM4.Tb_CP01CP1CODENC.AsString) then
      DM4.Tb_CP01nomenc.Value:=DM1.Query1.Fields[0].AsString
   else
      DM4.Tb_CP01nomenc.Value:='não cadastrado';
   end;

end;

procedure TDM4.Tb_CP02CalcFields(DataSet: TDataSet);
begin
if (DM4.Tb_CP02CP2CODMAQ.Value=0) or (DM4.Tb_CP02CP2CODMAQ.IsNull) then
   DM4.Tb_CP02nommaq.Value:='não cadastrado'
else
   begin
   if flqr1('IM1NOME','IM1','CADIMO01','N','IM1CODIMO',DM4.Tb_CP02CP2CODMAQ.AsString) then
      DM4.Tb_CP02nommaq.Value:=DM1.Query1.Fields[0].AsString
   else
      DM4.Tb_CP02nommaq.Value:='não cadastrado';
   end;

// formula = 3600 / (ciclo*cavidade*horas trab)
if (DM4.Tb_CP02CP2CICLO.AsFloat+DM4.Tb_CP02CP2CAVIDADE.AsFloat+DM4.Tb_CP02CP2HORTRAB.Asfloat)<>0 then
   begin
   try
      DM4.Tb_CP02perda.Value:=(3600/DM4.Tb_CP02CP2CICLO.Asfloat)*DM4.Tb_CP02CP2CAVIDADE.Asfloat*DM4.Tb_CP02CP2HORTRAB.Asfloat;
   except
      DM4.Tb_CP02perda.Value:=0;
      end;
   end;
if (DM4.Tb_CP02perda.AsFloat+DM4.Tb_CP02CP2PRODUCAO.AsFloat)>0 then
    DM4.Tb_CP02totperdas.Value:=DM4.Tb_CP02perda.AsFloat-DM4.Tb_CP02CP2PRODUCAO.AsFloat;
DM4.Tb_CP02percPerda.Value:=0;
if (DM4.Tb_CP02perda.AsFloat<>0) and (DM4.Tb_CP02CP2PRODUCAO.AsFloat<>0) then
   begin
   try
      DM4.Tb_CP02percPerda.Value:=((DM4.Tb_CP02CP2PRODUCAO.Value*100)/DM4.Tb_CP02perda.Value)-100;
   except
      DM4.Tb_CP02percPerda.Value:=0;
      end;
   end;


end;

procedure TDM4.Src_CP01DataChange(Sender: TObject; Field: TField);
begin
   DM4.Tb_CP02.Close;
   DM4.Tb_CP02.SQL.Clear;
   DM4.Tb_CP02.SQL.add('Select * from CADCP02 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2CODEMP=0'+DM4.Tb_CP01CP1CODEMP.AsString+' and ')
                  +' CP2LOTSEQ=0'+DM4.Tb_CP01CP1LOTSEQ.AsString
                  +' and CP2CHAVE=0'+DM4.Tb_CP01CP1CHAVE.AsString
                  +' order by CP2ITEM ');
   DM4.Tb_CP02.Open;

end;

procedure TDM4.Tb_Cli_RefBanAfterInsert(DataSet: TDataSet);
begin
if (DM1.Tb_Cli.Active) and not (DM1.Tb_CliCCODCLI.IsNull) then
   begin
   DM4.Tb_Cli_RefBanRB_CODEMP.Value:=DM1.Tb_CliCCODEMP.Value;
   DM4.Tb_Cli_RefBanRB_CODCLI.Value:=DM1.Tb_CliCCODCLI.Value;
   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('Select Max(RB_SEQ) from CADCLI_REFBAN where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADCLI',[]),'',' RB_CODEMP=0'+DM1.Tb_CliCCODEMP.AsString+' and ')
                  +' RB_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString);
   DM1.Query1.Open;
   DM4.Tb_Cli_RefBanRB_SEQ.Value:=DM1.Query1.Fields[0].AsFloat+1;
   DM4.Tb_Cli_RefBan.Post;
   DM4.Tb_Cli_RefBan.Edit;
   end;


end;

procedure TDM4.Tb_Cli_RefBanAfterCancel(DataSet: TDataSet);
begin
if (trim(DM4.Tb_Cli_RefBanRB_BANCO.AsString)='') and
   (trim(DM4.Tb_Cli_RefBanRB_CONTA.AsString)='') and
   (trim(DM4.Tb_Cli_RefBanRB_AGENCIA.AsString)='') and
   (trim(DM4.Tb_Cli_RefBanRB_CONCEITO.AsString)='') then
   begin
   DM4.Tb_Cli_RefBan.Delete;
   Abort;
   end;


end;

procedure TDM4.Tb_Cli_RefComAfterCancel(DataSet: TDataSet);
begin
if (trim(DM4.Tb_Cli_RefComRC_NOME.AsString)='') and
   (trim(DM4.Tb_Cli_RefComRC_FONE.AsString)='') and
   (trim(DM4.Tb_Cli_RefComRC_CONCEITO.AsString)='') then
   begin
   DM4.Tb_Cli_RefCom.Delete;
   Abort;
   end;

end;

procedure TDM4.Tb_Cli_RefComAfterInsert(DataSet: TDataSet);
begin
if (DM1.Tb_Cli.Active) and not (DM1.Tb_CliCCODCLI.IsNull) then
   begin
   DM4.Tb_Cli_RefComRC_CODEMP.Value:=DM1.Tb_CliCCODEMP.Value;
   DM4.Tb_Cli_RefComRC_CODCLI.Value:=DM1.Tb_CliCCODCLI.Value;
   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('Select Max(RC_SEQ) from CADCLI_REFCOM  where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADCLI',[]),'',' RC_CODEMP=0'+DM1.Tb_CliCCODEMP.AsString+' and ')
                  +' RC_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString);
   DM1.Query1.Open;
   DM4.Tb_Cli_RefComRC_SEQ.Value:=DM1.Query1.Fields[0].AsFloat+1;
   DM4.Tb_Cli_RefCom.Post;
   DM4.Tb_Cli_RefCom.Edit;
   end;


end;

procedure TDM4.Tb_Cli_OutInfAfterInsert(DataSet: TDataSet);
begin
if (DM1.Tb_Cli.Active) and not (DM1.Tb_CliCCODCLI.IsNull) then
   begin
   DM4.Tb_Cli_OutInfOI_CODEMP.Value:=DM1.Tb_CliCCODEMP.Value;
   DM4.Tb_Cli_OutInfOI_CODCLI.Value:=DM1.Tb_CliCCODCLI.Value;
   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('Select Max(OI_SEQ) from CADCLI_OUTINF where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADCLI',[]),'',' OI_CODEMP=0'+DM1.Tb_CliCCODEMP.AsString+' and ')
                  +' OI_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString);
   DM1.Query1.Open;
   DM4.Tb_Cli_OutInfOI_SEQ.Value:=DM1.Query1.Fields[0].AsFloat+1;
   DM4.Tb_Cli_OutInf.Post;
   DM4.Tb_Cli_OutInf.Edit;
   end;


end;

procedure TDM4.Tb_Cli_OutInfAfterCancel(DataSet: TDataSet);
begin
if (trim(DM4.Tb_Cli_OutInfOI_DESCRICAO.AsString)='')  then
   begin
   DM4.Tb_Cli_OutInf.Delete;
   Abort;
   end;


end;

procedure TDM4.Tb_Cli_ICAfterInsert(DataSet: TDataSet);
begin
if (DM1.Tb_Cli.Active) and not (DM1.Tb_CliCCODCLI.IsNull) then
   begin
   DM4.Tb_Cli_ICIC_CODEMP.Value     :=DM1.Tb_CliCCODEMP.Value;
   DM4.Tb_Cli_ICIC_CODCLI.Value     :=DM1.Tb_CliCCODCLI.Value;
   DM4.Tb_Cli_ICIC_SEXO.Value       :=0;
   DM4.Tb_Cli_ICIC_SEDEPROPRIA.Value:=0;
   DM4.Tb_Cli_IC.Post;
   DM4.Tb_Cli_IC.Edit;
   end;

end;

procedure TDM4.Tb_Cli_RefPesAfterInsert(DataSet: TDataSet);
begin
if (DM1.Tb_Cli.Active) and not (DM1.Tb_CliCCODCLI.IsNull) then
   begin
   DM4.Tb_Cli_RefPesRP_CODEMP.Value:=DM1.Tb_CliCCODEMP.Value;
   DM4.Tb_Cli_RefPesRP_CODCLI.Value:=DM1.Tb_CliCCODCLI.Value;
   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('Select Max(RP_SEQ) from CADCLI_REFPES where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADCLI',[]),'',' RP_CODEMP=0'+DM1.Tb_CliCCODEMP.AsString+' and ')
                  +' RP_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString);
   DM1.Query1.Open;
   DM4.Tb_Cli_RefPesRP_SEQ.Value:=DM1.Query1.Fields[0].AsFloat+1;
   DM4.Tb_Cli_RefPes.Post;
   DM4.Tb_Cli_RefPes.Edit;
   end;

end;

procedure TDM4.Tb_Cli_RefPesAfterCancel(DataSet: TDataSet);
begin
if (trim(DM4.Tb_Cli_RefPesRP_NOME.AsString)='') and
   (trim(DM4.Tb_Cli_RefPesRP_ENDERECO.AsString)='') and
   (trim(DM4.Tb_Cli_RefPesRP_TIPO.AsString)='') and
   (trim(DM4.Tb_Cli_RefPesRP_CONCEITO.AsString)='') then
   begin
   DM4.Tb_Cli_RefPes.Delete;
   Abort;
   end;

end;

procedure TDM4.Tb_Cli_BensAfterInsert(DataSet: TDataSet);
begin
if (DM1.Tb_Cli.Active) and not (DM1.Tb_CliCCODCLI.IsNull) then
   begin
   DM4.Tb_Cli_BensCB_CODEMP.Value:=DM1.Tb_CliCCODEMP.Value;
   DM4.Tb_Cli_BensCB_CODCLI.Value:=DM1.Tb_CliCCODCLI.Value;
   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('Select Max(CB_SEQ) from CADCLI_BENS where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADCLI',[]),'',' CB_CODEMP=0'+DM1.Tb_CliCCODEMP.AsString+' and ')
                  +' CB_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString);
   DM1.Query1.Open;
   DM4.Tb_Cli_BensCB_SEQ.Value:=DM1.Query1.Fields[0].AsFloat+1;
   DM4.Tb_Cli_Bens.Post;
   DM4.Tb_Cli_Bens.Edit;
   end;

end;

procedure TDM4.Tb_Cli_BensAfterCancel(DataSet: TDataSet);
begin
if (trim(DM4.Tb_Cli_BensCB_DESCRICAO.AsString)='')  then
   begin
   DM4.Tb_Cli_Bens.Delete;
   Abort;
   end;

end;

procedure TDM4.Tb_Imp_SysAfterInsert(DataSet: TDataSet);
begin
DM4.Tb_Imp_SysCICODEMP.Value:=codemp;
DM4.Tb_Imp_SysCITERMINAL.Value:=pNomTer;
DM4.Tb_Imp_SysCIPORTA.Value   :='LPT1';
end;

procedure TDM4.Tb_Cli_ICBeforePost(DataSet: TDataSet);
var
i: Integer;
begin

For i:=0 to DM4.Tb_Cli_IC.FieldCount-1 do
   begin
   if not DM4.Tb_Cli_IC.Fields[i].IsNull then
      Continue;
   if DM4.Tb_Cli_IC.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword] then
      DM4.Tb_Cli_IC.Fields[i].Value:=0
   else if DM4.Tb_Cli_IC.fields[i].DataType in [ftDate,ftDateTime] then
      DM4.Tb_Cli_IC.Fields[i].AsFloat:=0
   else if DM4.Tb_Cli_IC.Fields[i].DataType in [ftString,ftMemo] then
      DM4.Tb_Cli_IC.Fields[i].Value:=' ';
   end;


end;

procedure TDM4.Tb_GForAfterInsert(DataSet: TDataSet);
begin
  Tb_GForGFCODEMP.Value  := codemp;
  Tb_GForGFCODGRU.Value := Cod;

  FAtualizaBanco(0,'CADGFOR','GFCODEMP',DM4.Tb_GForGFCODGRU.AsString
  ,['SDCODSIND'],[FloatToStr(DM4.Tb_GForGFCODGRU.AsFloat)]
  ,DM4.Tb_GFor);
end;

procedure TDM4.Tb_GForBeforeInsert(DataSet: TDataSet);
begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add(' SELECT MAX(GFCODGRU) AS CODIGO FROM CADGFOR ');
   if not DM1.Qr_Tid.Locate('TINOME','CADGFOR',[]) then
      DM1.Query1.SQL.Add(' where GFCODEMP='+InttoStr(codemp));
   DM1.Query1.Open;
   if DM1.Tb_PargerPDCADGRU.Value=1 then begin
      Cod:=StrToInt('0'+Copy(DM1.Query1.Fields[0].AsString,1,Length(DM1.Query1.Fields[0].AsString)-1))+1;
      Cod:=Digito(Cod);
   end else
      cod:=DM1.Query1.Fields[0].AsInteger+1;
end;

procedure TDM4.Tb_Cli_PVAfterCancel(DataSet: TDataSet);
begin
if (trim(DM4.Tb_Cli_PVCPV_TABPV.AsString)='')
   or (DM4.Tb_Cli_PVCPV_CODPV.asFloat=0) then
   begin
   DM4.Tb_Cli_PV.Delete;
   Abort;
   end;

end;

procedure TDM4.Tb_Cli_PVAfterInsert(DataSet: TDataSet);
begin
if (DM1.Tb_Cli.Active) and not (DM1.Tb_CliCCODCLI.IsNull) then
   begin
   DM4.Tb_Cli_PVCPV_CODEMP.Value:=DM1.Tb_CliCCODEMP.Value;
   DM4.Tb_Cli_PVCPV_CODCLI.Value:=DM1.Tb_CliCCODCLI.Value;
   end;




end;

procedure TDM4.Qr_Ped01CalcFields(DataSet: TDataSet);
begin
Qr_Ped01submod.Value:=ValFloat(PalNum_Sis(Qr_Ped01P1SUBMOD.Value));

end;

end.
