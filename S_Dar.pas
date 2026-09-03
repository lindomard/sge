unit S_Dar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,db,dbtables,func,s_dm1,lerarq,S_Cli,S_Ven,S_Bco,S_DM4,S_Dpto,S_CCu,func2,printers,rlPrinters,
  ToolEdit, RXDBCtrl, S_EBol, S_FPag,
  S_DivTit, SR_Dup, CheckLst,S_SelEmp, ADODB,jpeg, RxDBComb;

type
  TFrm_Dar = class(TFrm_C)
    Label1: TLabel;
    db_numero: TDBEdit;
    db_desd: TDBEdit;
    db_razaocli: TDBEdit;
    db_codcli: TDBEdit;
    Label4: TLabel;
    Label7: TLabel;
    db_codven: TDBEdit;
    db_nomven: TDBEdit;
    Label6: TLabel;
    db_dtvcto: TDBEdit;
    db_dtemis: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    db_valor: TDBEdit;
    Label9: TLabel;
    db_icmsr: TDBEdit;
    db_valfre: TDBEdit;
    Label10: TLabel;
    db_nped: TDBEdit;
    db_ordem: TDBEdit;
    Label14: TLabel;
    Label2: TLabel;
    db_nfacum: TDBEdit;
    db_totnf: TDBEdit;
    Label15: TLabel;
    db_denom: TDBEdit;
    Label27: TLabel;
    Label33: TLabel;
    db_especie: TDBEdit;
    dbcb_aceite: TDBCheckBox;
    ts_outras: TTabSheet;
    GroupBox3: TGroupBox;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    Label34: TLabel;
    gb_pag: TGroupBox;
    db_dtbx: TDBEdit;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    db_dtpag: TDBEdit;
    db_lote: TDBEdit;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    db_nr: TDBEdit;
    StaticText11: TStaticText;
    db_devol: TDBEdit;
    StaticText12: TStaticText;
    db_desc: TDBEdit;
    StaticText13: TStaticText;
    db_juros: TDBEdit;
    StaticText14: TStaticText;
    db_valpag: TDBEdit;
    StaticText15: TStaticText;
    db_codldr: TDBEdit;
    StaticText16: TStaticText;
    db_usrbx: TDBEdit;
    GroupBox4: TGroupBox;
    Label22: TLabel;
    db_spc_dtpen: TDBEdit;
    Label23: TLabel;
    db_spc_dtneg: TDBEdit;
    Label28: TLabel;
    db_serasa_dtneg: TDBEdit;
    gb_caucao: TGroupBox;
    Label35: TLabel;
    db_bcocaucao: TDBEdit;
    gb_chd: TGroupBox;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    db_chd_banco: TDBEdit;
    db_chd_agencia: TDBEdit;
    db_chd_cc: TDBEdit;
    db_chd_numero: TDBEdit;
    Label18: TLabel;
    db_totipi: TDBEdit;
    gb_multa: TGroupBox;
    Label16: TLabel;
    db_jurd: TDBEdit;
    Label19: TLabel;
    db_multa: TDBEdit;
    Label20: TLabel;
    db_qtddm: TDBEdit;
    Label21: TLabel;
    gb_descfin: TGroupBox;
    Label12: TLabel;
    db_descf: TDBEdit;
    Label13: TLabel;
    gb_descdant: TGroupBox;
    Label24: TLabel;
    db_descd: TDBEdit;
    dbcb_emiblq: TDBCheckBox;
    dbcb_emidup: TDBCheckBox;
    dbrg_status: TDBRadioGroup;
    Label32: TLabel;
    fp_codcaixa: TEdit;
    fp_desc: TEdit;
    Panel2: TPanel;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    dbc_spc_dtpen: TDBEdit;
    dbc_spc_dtneg: TDBEdit;
    dbc_serasa_dtneg: TDBEdit;
    dbc_dtbx: TDBEdit;
    dbc_dtpag: TDBEdit;
    Label45: TLabel;
    db_codfpgto: TDBEdit;
    db_nomfpgto: TDBEdit;
    DBCB_EXTRA: TDBCheckBox;
    db_chd_emitente: TDBEdit;
    Label50: TLabel;
    Src_Dar: TDataSource;
    Label51: TLabel;
    SB_ExportarTitulo: TSpeedButton;
    SB_DIVIDE: TSpeedButton;
    StaticText20: TStaticText;
    DBEdit1: TDBEdit;
    StaticText21: TStaticText;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    StaticText24: TStaticText;
    StaticText25: TStaticText;
    Label53: TLabel;
    cb_listar: TComboBox;
    Label54: TLabel;
    cb_ordem: TComboBox;
    sbnforma: TSpeedButton;
    Label55: TLabel;
    DBE_numparc: TDBEdit;
    Label56: TLabel;
    DBE_CRQTDPARC: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    CB_SUBSTNOSNUM: TCheckBox;
    sb_emidup: TSpeedButton;
    sb_emiblq: TSpeedButton;
    sbBolJPeg: TSpeedButton;
    DBNavigator2: TDBNavigator;
    btnSair: TBitBtn;
    db_codacess: TDBEdit;
    db_nomeacess: TDBEdit;
    Label57: TLabel;
    db_dtdescf: TDBDateEdit;
    tsCobBancaria: TTabSheet;
    GroupBox1: TGroupBox;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    gb_dadoscob: TGroupBox;
    Label8: TLabel;
    Label11: TLabel;
    Label30: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label52: TLabel;
    db_codbco: TDBEdit;
    db_bco: TDBEdit;
    db_nosnum: TDBEdit;
    db_dnosnum: TDBEdit;
    db_coddig: TDBEdit;
    db_codbar: TDBEdit;
    dbrg_tdb: TDBRadioGroup;
    dbcb_tipcob: TDBCheckBox;
    db_tarban: TDBEdit;
    db_cusbco: TDBEdit;
    dbe_tarprot: TDBEdit;
    DBE_tarprot_data: TDBEdit;
    DBE_cusprot: TDBEdit;
    DBE_cusprot_data: TDBEdit;
    DBE_codcar: TDBEdit;
    DBCB_TITPROT: TDBCheckBox;
    GroupBox10: TGroupBox;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    lbl_obs: TLabel;
    DBE_CODDEP: TDBEdit;
    DBE_CODCCU: TDBEdit;
    DBE_DESCMOV: TDBEdit;
    DBE_CodCta: TDBEdit;
    DBCB_NOMBCO: TDBComboBox;
    DBCB_NOMDEP: TDBComboBox;
    DBCB_NOMCCU: TDBComboBox;
    DBEdit9: TDBEdit;
    tsImagem: TTabSheet;
    Tb_CR_imagem: TADOQuery;
    Src_Dap_imagem: TDataSource;
    GroupBox5: TGroupBox;
    DBGrid3: TDBGrid;
    Panel5: TPanel;
    sbn_nova: TSpeedButton;
    sbn_alterar: TSpeedButton;
    sbnRenomear: TSpeedButton;
    sbn_excluir: TSpeedButton;
    Tb_CR_imagemRI_ROWID: TStringField;
    Tb_CR_imagemRI_SEQ: TFloatField;
    Tb_CR_imagemRI_OBS: TStringField;
    Tb_CR_imagemRI_IMAGEM: TBlobField;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    gb_obs: TGroupBox;
    DBMEMO_CAOBS: TDBMemo;
    Tb_CR_imagemRI_NOMEORI: TStringField;
    sbt_emitirrecibo: TSpeedButton;
    Label17: TLabel;
    DBEdit11: TDBEdit;
    Label58: TLabel;
    DBEdit12: TDBEdit;
    Label59: TLabel;
    DBEdit13: TDBEdit;
    Label60: TLabel;
    DBEdit14: TDBEdit;
    Label61: TLabel;
    DBEdit15: TDBEdit;
    Label62: TLabel;
    edt_datini: TDateEdit;
    Label63: TLabel;
    edt_datfin: TDateEdit;
    Label64: TLabel;
    cb_tipopesq: TComboBox;
    Label65: TLabel;
    DB_CACOMPETENCIA_TIPO: TRxDBComboBox;
    DBText1: TDBText;
    edt_competencia_mes: TEdit;
    lbl_competencia_barra: TLabel;
    edt_competencia_ano: TEdit;
    Tb_Dar: TQuery;
    Tb_DarCRCODEMP: TFloatField;
    Tb_DarCRNUMERO: TFloatField;
    Tb_DarCRCODCLI: TFloatField;
    Tb_DarCRDTEMIS: TDateTimeField;
    Tb_DarCRDESD: TStringField;
    Tb_DarCRDTVCTO: TDateTimeField;
    Tb_DarCRDTPAG: TDateTimeField;
    Tb_DarCRDTBX: TDateTimeField;
    Tb_DarCRNPED: TFloatField;
    Tb_DarCRCODVEN: TFloatField;
    Tb_DarCRLOTE: TFloatField;
    Tb_DarCRDTDESCF: TDateTimeField;
    Tb_DarCRVALFRE: TFloatField;
    Tb_DarCRJURD: TFloatField;
    Tb_DarCRDESCF: TFloatField;
    Tb_DarCRICMSR: TFloatField;
    Tb_DarCRJUROS: TFloatField;
    Tb_DarCRDEVOL: TFloatField;
    Tb_DarCRDESC: TFloatField;
    Tb_DarCRVALPAG: TFloatField;
    Tb_DarCRVALOR: TFloatField;
    Tb_DarCRNOSNUM: TStringField;
    Tb_DarCRDTALT: TDateTimeField;
    Tb_DarCRUSRALT: TFloatField;
    Tb_DarCRUSRBX: TFloatField;
    Tb_Darrazaocli: TStringField;
    Tb_Darnomven: TStringField;
    Tb_Darnombco: TStringField;
    Tb_DarCRCODLDR: TFloatField;
    Tb_DarCRDUP: TFloatField;
    Tb_DarCRORDEM: TFloatField;
    Tb_DarCRSTATUS: TFloatField;
    Tb_DarCRCODBCO: TFloatField;
    Tb_DarCREMIDUP: TFloatField;
    Tb_DarCREMIBLQ: TFloatField;
    Tb_DarCRTIPCOB: TFloatField;
    Tb_DarCRNUMCUP: TFloatField;
    Tb_DarCRDATCUP: TDateTimeField;
    Tb_DarCRCOMVEN: TFloatField;
    Tb_DarCRCOMTEL: TFloatField;
    Tb_DarCRCOMSUP: TFloatField;
    Tb_DarCRSEMCOM: TFloatField;
    Tb_DarCRLOTCV: TFloatField;
    Tb_DarCRLOTCS: TFloatField;
    Tb_DarCRLOTCT: TFloatField;
    Tb_DarCRMULTA: TFloatField;
    Tb_DarCRQTDDM: TFloatField;
    Tb_DarCRDESCD: TFloatField;
    Tb_DarCRCODTLV: TFloatField;
    Tb_DarCRCODORI: TFloatField;
    Tb_DarCRCODUSR: TFloatField;
    Tb_DarCRHRALT: TStringField;
    Tb_DarCRNFACUM: TStringField;
    Tb_DarCRTOTNF: TFloatField;
    Tb_Dardenomcli: TStringField;
    Tb_DarCRCOMV02: TFloatField;
    Tb_DarCRCOMV03: TFloatField;
    Tb_DarCRLOTCV02: TFloatField;
    Tb_DarCRLOTCV03: TFloatField;
    Tb_DarCRCODV02: TFloatField;
    Tb_DarCRCODV03: TFloatField;
    Tb_DarCRCODCV: TFloatField;
    Tb_DarCRLOTSEQ_CP: TFloatField;
    Tb_DarCRCODECF: TFloatField;
    Tb_DarCRLOTSEQ_LB: TFloatField;
    Tb_DarCRLOTSEQ_FC: TFloatField;
    Tb_DarCRLOTSEQ_CV: TFloatField;
    Tb_DarCRLOTSEQ_CV02: TFloatField;
    Tb_DarCRLOTSEQ_CV03: TFloatField;
    Tb_DarCRLOTSEQ_CS: TFloatField;
    Tb_DarCRLOTSEQ_CT: TFloatField;
    Tb_DarCRTOTDI01: TFloatField;
    Tb_DarCRTOTDI02: TFloatField;
    Tb_DarCRTOTDI03: TFloatField;
    Tb_DarCRTOTDIVL: TFloatField;
    Tb_DarCRVALDES01: TFloatField;
    Tb_DarCRVALDES02: TFloatField;
    Tb_DarCRVLRDES: TFloatField;
    Tb_DarCRTARBAN: TFloatField;
    Tb_DarCRDNOSNUM: TStringField;
    Tb_DarCRACEITE: TStringField;
    Tb_DarCRESPECIE: TStringField;
    Tb_DarCRCODBAR: TStringField;
    Tb_DarCRCODDIG: TStringField;
    Tb_DarCRLEMAT: TFloatField;
    Tb_DarCRCODASSE: TFloatField;
    Tb_DarCRCOMASSE: TFloatField;
    Tb_DarCRLOTSEQ_CASSE: TFloatField;
    Tb_DarCRLOTCASSE: TFloatField;
    Tb_DarCRINST01: TStringField;
    Tb_DarCRINST02: TStringField;
    Tb_DarCRINST03: TStringField;
    Tb_DarCRINST04: TStringField;
    Tb_DarCRQTDPARC: TFloatField;
    Tb_DarCRNUMPARC: TFloatField;
    Tb_DarCRVALSEG: TFloatField;
    Tb_DarCRTOTCGRU: TFloatField;
    Tb_DarCRTOTSGRU: TFloatField;
    Tb_DarCRTBCOCOB: TFloatField;
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
    Tb_DarCRCUSBCO: TFloatField;
    Tb_Dartipodoc: TStringField;
    Tb_Darsituacao: TStringField;
    Tb_DarCRCODCTA: TFloatField;
    Tb_DarCRCODCC: TStringField;
    Tb_DarCRCODDEP: TStringField;
    Tb_DarCRDESCMV: TStringField;
    Tb_DarCRNOMCC: TStringField;
    Tb_DarCRNOMDEP: TStringField;
    Tb_DarCRNOMCTA: TStringField;
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
    Tb_DarCRCOMIS_EXTRA: TFloatField;
    Tb_DarCRSEQ: TFloatField;
    Tb_DarCRPFPGTO: TFloatField;
    Tb_DarCRTABPV: TStringField;
    Tb_DarCRCODPV: TFloatField;
    Tb_DarCRVINC02: TFloatField;
    Tb_DarCRCODFPGTO: TFloatField;
    Tb_DarCRNOMFPGTO: TStringField;
    Tb_DarCRFIN_CODFIN: TFloatField;
    Tb_DarCRLANCFIN: TFloatField;
    Tb_DarCRRECFRENTE: TFloatField;
    Tb_DarCRDATPED: TDateTimeField;
    Tb_DarCRCX_CODCAI: TFloatField;
    Tb_DarCRCX_LOTMOV: TFloatField;
    Tb_DarCRCHD_EMITENTE: TStringField;
    Tb_DarCRJURDEB: TFloatField;
    Tb_DarCRJURDEB_SAC: TFloatField;
    Tb_Darvaldev: TFloatField;
    Tb_DarCRTARPROT: TFloatField;
    Tb_DarCRTARPROT_DATA: TDateTimeField;
    Tb_DarCRCUSPROT: TFloatField;
    Tb_DarCRCUSPROT_DATA: TDateTimeField;
    Tb_DarCRCODCAR: TFloatField;
    Tb_DarCRLOTSEQ_EC: TFloatField;
    Tb_DarCRLOTE_EC: TFloatField;
    Tb_DarCRTITPROT: TFloatField;
    Tb_Darcnpj: TFloatField;
    Tb_DarNOMEACESS: TStringField;
    Tb_DarCRNPED_NIVEL: TFloatField;
    Tb_DarIDDAR: TStringField;
    Tb_DarCRCOMPETENCIA_DTINICIO: TDateTimeField;
    Tb_Darcompetencia_obs: TStringField;
    Tb_DarCRCOMPETENCIA_TIPO: TFloatField;
    U_Dar: TUpdateSQL;
    Tb_CR_Obs: TQuery;
    Tb_CR_ObsCROBS: TMemoField;
    U_CR_Obs: TUpdateSQL;
    Src_CR_Obs: TDataSource;
    Label66: TLabel;
    DBE_CRVALOR_ACRES: TDBEdit;
    Tb_DarCRVALOR_ACRES: TFloatField;
    Label67: TLabel;
    DBText2: TDBText;
    Label68: TLabel;
    DBText3: TDBText;
    Tb_DarCRCHAVE_ID: TFloatField;
    Tb_DarCRCHAVE_ID_ANO: TFloatField;
    sbt_salva_conf: TSpeedButton;
    DBEdit16: TDBEdit;
    Label69: TLabel;
    Tb_DarCRDATAINCLUSAO: TDateTimeField;
    Tb_DarCRQTDAJUSTE: TFloatField;
    tsEventosCobranca: TTabSheet;
    gb_emessa: TGroupBox;
    gb_retorno: TGroupBox;
    src_remessa: TDataSource;
    src_retorno: TDataSource;
    qr_remessa: TQuery;
    qr_retorno: TQuery;
    dbgrid_remessa: TDBGrid;
    DBGrid_retorno: TDBGrid;
    gb_comissoes: TGroupBox;
    DBGrid_comissoes: TDBGrid;
    src_comissoes: TDataSource;
    qr_comissoes: TQuery;
    qr_remessaRECODEMP: TFloatField;
    qr_remessaRELOTSEQ: TFloatField;
    qr_remessaRECHAVE: TFloatField;
    qr_remessaRECODBCO: TFloatField;
    qr_remessaLAYOUT: TStringField;
    qr_remessaREORDEM: TFloatField;
    qr_remessaRECODEMP_DUP: TFloatField;
    qr_remessaRECODECF: TFloatField;
    qr_remessaRENUMDUP: TFloatField;
    qr_remessaREDESD: TStringField;
    qr_remessaRETIPO: TFloatField;
    qr_remessaREDTEMIS: TDateTimeField;
    qr_remessaREVALDUP: TFloatField;
    qr_remessaRECODCLI: TFloatField;
    qr_remessaRENOSNUM: TStringField;
    qr_remessaREDNOSNUM: TStringField;
    qr_remessaREDATREM: TDateTimeField;
    qr_remessaRECODCOM: TFloatField;
    qr_remessaRECODCAR: TFloatField;
    qr_remessaRECODVARCAR: TFloatField;
    qr_remessaRECODPROT: TFloatField;
    qr_remessaRECODPROT02: TFloatField;
    qr_remessaRECODPROT03: TFloatField;
    qr_remessaREPROTESTO_QTDD: TFloatField;
    qr_remessaREDESCF: TFloatField;
    qr_remessaREDTDESCF: TDateTimeField;
    qr_remessaREDTVCTO: TDateTimeField;
    qr_remessabcbanco: TStringField;
    qr_retornoRET_NOMEARQ: TStringField;
    qr_retornoRET_DATHORARQ: TDateTimeField;
    qr_retornoRET_PASTAARQ: TStringField;
    qr_retornoRET_COMPUTADOR: TStringField;
    qr_retornoRET_ID_SEQ: TFloatField;
    qr_retornoRET_CHAVETIT_ID_ANO: TFloatField;
    qr_retornoRET_CODEMP_TIT: TFloatField;
    qr_retornoRET_CHAVETIT_ID: TFloatField;
    qr_retornoRET_CODACAO: TFloatField;
    qr_retornoRET_DATALIQ: TDateTimeField;
    qr_retornoRET_DATACRED: TDateTimeField;
    qr_retornoRET_VALTAR: TFloatField;
    qr_retornoRET_VALIOF: TFloatField;
    qr_retornoRET_VALABAT: TFloatField;
    qr_retornoRET_VALDESC: TFloatField;
    qr_retornoRET_VALLANC: TFloatField;
    qr_retornoRET_VALJURMOR: TFloatField;
    qr_retornoRET_VALOUTREC: TFloatField;
    qr_retornoRET_AGENCIAREC: TFloatField;
    qr_retornoRET_CODBCOREC: TFloatField;
    qr_retornoRET_NOMNATREC: TStringField;
    qr_retornoRET_NATREC: TFloatField;
    qr_retornoRET_NOMACAO: TStringField;
    GroupBox7: TGroupBox;
    Label70: TLabel;
    DBE_RET_PASTAARQ: TDBEdit;
    Label71: TLabel;
    DBEdit17: TDBEdit;
    Label72: TLabel;
    DBEdit18: TDBEdit;
    Label73: TLabel;
    DBEdit19: TDBEdit;
    Label74: TLabel;
    DBEdit20: TDBEdit;
    Label75: TLabel;
    DBEdit21: TDBEdit;
    qr_comissoesTIPOCOM: TStringField;
    qr_comissoesVALOR_COMISSAO: TFloatField;
    qr_comissoesBASE_COMISSAO: TFloatField;
    qr_comissoesDATA_LOTE: TDateTimeField;
    qr_comissoesCL2DESD: TStringField;
    qr_comissoesCL1CHAVE: TFloatField;
    bbWhatsApp: TBitBtn;
    RxDBCB_dup: TRxDBComboBox;
    Tb_DarCRID_PED01_NEW: TFloatField;
    Tb_DarCRID_NEW: TFloatField;
    Tb_DarCRID_LDR_NEW: TFloatField;
    Tb_CR_imagemRI_ID_NEW: TFloatField;
    Tb_CR_imagemRI_ID_DAR_NEW: TFloatField;
    Tb_DarCRLOTE_CAUCAO: TFloatField;
    sbnRecTerc: TSpeedButton;
    procedure BBnAtuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CAMPOExit(Sender: TObject);
    procedure db_codcliKeyPress(Sender: TObject; var Key: Char);
    procedure db_codcliExit(Sender: TObject);
    procedure db_codvenExit(Sender: TObject);
    procedure db_codvenKeyPress(Sender: TObject; var Key: Char);
    procedure db_codbcoKeyPress(Sender: TObject; var Key: Char);
    procedure db_totnfKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure busca_fpcrdup;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBE_CodCtaExit(Sender: TObject);
    procedure DBE_CODDEPExit(Sender: TObject);
    procedure DBE_CODCCUExit(Sender: TObject);
    procedure DBE_CodCtaKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_CODDEPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBE_CODCCUKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBCB_NOMBCOEnter(Sender: TObject);
    procedure DBCB_NOMDEPEnter(Sender: TObject);
    procedure DBCB_NOMCCUEnter(Sender: TObject);
    procedure DBCB_NOMBCOExit(Sender: TObject);
    procedure DBCB_NOMDEPExit(Sender: TObject);
    procedure DBCB_NOMCCUExit(Sender: TObject);
    procedure dbrg_dupExit(Sender: TObject);
    procedure db_codfpgtoKeyPress(Sender: TObject; var Key: Char);
    procedure db_codfpgtoExit(Sender: TObject);
    procedure SB_ExportarTituloClick(Sender: TObject);
    procedure db_codbcoExit(Sender: TObject);
    procedure DBCB_NOMBCOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Src_DarDataChange(Sender: TObject; Field: TField);
    procedure sb_emidupClick(Sender: TObject);
    procedure sb_emiblqClick(Sender: TObject);
    procedure SB_DIVIDEClick(Sender: TObject);
    procedure sbBolJPegClick(Sender: TObject);
    procedure sbnformaClick(Sender: TObject);
    procedure cb_listarClick(Sender: TObject);
    procedure db_valorExit(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure db_codacessExit(Sender: TObject);
    procedure db_codacessKeyPress(Sender: TObject; var Key: Char);
    procedure sbn_novaClick(Sender: TObject);
    procedure sbn_alterarClick(Sender: TObject);
    procedure sbnRenomearClick(Sender: TObject);
    procedure sbn_excluirClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure sbt_emitirreciboClick(Sender: TObject);
    procedure edt_competencia_mesExit(Sender: TObject);
    procedure edt_competencia_anoExit(Sender: TObject);
    procedure db_dtemisEnter(Sender: TObject);
    procedure db_dtemisExit(Sender: TObject);
    procedure DBE_CRQTDPARCExit(Sender: TObject);
    procedure DBE_numparcExit(Sender: TObject);
    procedure DB_CACOMPETENCIA_TIPOExit(Sender: TObject);
    procedure DBMEMO_CAOBSChange(Sender: TObject);
    procedure Tb_DarAfterPost(DataSet: TDataSet);
    procedure C(DataSet: TDataSet);
    procedure Tb_DarAfterInsert(DataSet: TDataSet);
    procedure Tb_DarBeforePost(DataSet: TDataSet);
    procedure Tb_DarCalcFields(DataSet: TDataSet);
    procedure edt_datiniExit(Sender: TObject);
    procedure edt_datfinExit(Sender: TObject);
    procedure db_valorEnter(Sender: TObject);
    procedure sbt_salva_confClick(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure CB_DUPExit(Sender: TObject);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbnRecTercClick(Sender: TObject);
  private
    { Private declarations }
    middar_src: string;
    mAlterouObs: boolean;
    mvalor_dup_ant: real;
    mTitRemLido: Real;
    mTitRemLido_RETORNO: Real;


    mdtemis_ant: Tdatetime;

    function fdar01lerant(ptipo: Integer):Boolean;


    procedure fLercaddar_obs;

    function fAtualizarDataCompetencia: Boolean;


    procedure fLerCadRemessa;

    procedure fLerCadRetorno;



    function fdar01gant(ptipo: Integer): Boolean;

    function fPeriodo: String;

    procedure fLerComissoes;



    procedure fDadosParaCaixa();


  public
    { Public declarations }
    form_ebol_dar: tFrm_EBol;
    form_fpag: Tfrm_Fpag;
    form_divtit: Tfrm_divtit;
    QuickRep_dup: TQr_Dup;
    Form_SelEmp: TFrm_SelEmp;
    function flcaddar_form(ptipo,pcodemp,ppre,pcodecf,pOrdem: Integer; pvalor,pdesd,ptpdup: String; pdtemis: TDate;pEmpresas: String): Boolean;

  end;

var
  Frm_Dar: TFrm_Dar;
  dar_ori:String;
  moper: Integer;
  macbanco   : Boolean=False;
  macdep     : Boolean=False;
  macccu     : Boolean=False;

 mdar_codemp:Real=0;
 mdar_codecf:Real=0;
 mdar_numero:Real=0;
 mdar_desd  :String='';
 mdar_dup   :Real=0;
 mdar_dtemis:TDateTime;

  mValor_ant : Real=0;
  mDtvcto_ant: TDateTime;

implementation

uses func_excecoes, S_DM2, s_FormaPgto, S_DM1_ADO, s_Imagem_WebCam,
  S_Fig_TelaCheia, S_Recibo, s_EventosWhatsApp, s_AssociarDocCaddar;

{$R *.dfm}

procedure TFrm_Dar.BBnAtuClick(Sender: TObject);
begin
  inherited;
mTitRemLido_RETORNO:=0;

if dar_ori='consulta' then
   begin
   fdar01lerant(0);
   end
else
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);

   if (dar_ori<>'frm_rcrec') and
      (dar_ori<>'frm_accr')then
      begin
      if CAMPO.ItemIndex=10 then
         flcaddar_form(12,0,0,0,cb_ordem.ItemIndex,Edit1.Text,' ',' ',pdatanula,la_empresas)
      else if CAMPO.ItemIndex=9 then
         flcaddar_form(11,0,0,0,cb_ordem.ItemIndex,FormatFloat(mcasas, ValFloat(Edit1.Text)),' ',' ',pdatanula,la_empresas)
      else if CAMPO.ItemIndex=8 then
         flcaddar_form(campo.ItemIndex+1,0,0,0,cb_ordem.ItemIndex,Edit1.Text,' ',' ',pdatanula,la_empresas)
      else if CAMPO.ItemIndex=7 then
         flcaddar_form(campo.ItemIndex+3,0,0,0,cb_ordem.ItemIndex,Edit1.Text,' ',' ',pdatanula,la_empresas)
      else
         flcaddar_form(campo.ItemIndex,0,0,0,cb_ordem.ItemIndex,Edit1.Text,' ',' ',pdatanula,la_empresas);
      end;
   end;
//   busca_fpcrdup;
end;

procedure TFrm_Dar.FormCreate(Sender: TObject);
var
x: Integer;
begin
  inherited;
  edt_datini.Date:=date;
  
mTitRemLido:=0;
mTitRemLido_RETORNO :=0;


qr_comissoesVALOR_COMISSAO.DisplayFormat:=mcasas;
qr_comissoesBASE_COMISSAO.DisplayFormat:=mcasas;
qr_comissoesDATA_LOTE.DisplayFormat:=fdt2;

qr_retornoRET_DATHORARQ.DisplayFormat:=fdt2;
qr_retornoRET_DATALIQ.DisplayFormat  :=fdt2;
qr_retornoRET_DATACRED.DisplayFormat :=fdt2;

qr_retornoRET_VALTAR.DisplayFormat   :=mcasas;
qr_retornoRET_VALIOF.DisplayFormat   :=mcasas;
qr_retornoRET_VALABAT.DisplayFormat   :=mcasas;
qr_retornoRET_VALDESC.DisplayFormat   :=mcasas;
qr_retornoRET_VALLANC.DisplayFormat   :=mcasas;
qr_retornoRET_VALJURMOR.DisplayFormat   :=mcasas;
qr_retornoRET_VALOUTREC.DisplayFormat   :=mcasas;












PC1.Activepageindex:=0;
if codemp>99 then
   begin
   DBCB_EXTRA.ValueChecked:=IntToStr(codemp);
   DBCB_EXTRA.ValueUnchecked:=IntToStr(codemp-100);
   end
else
   begin
   DBCB_EXTRA.ValueChecked:=IntToStr(codemp+100);
   DBCB_EXTRA.ValueUnchecked:=IntToStr(codemp);
   end;

dar_ori:='';
if flcadactab(0,0,IntToStr(codcar),'CADDAR') then
   begin
   if DM4.Tb_AcTabAT_INC.Value=1 then
      bbinc_true:=False;
   if DM4.Tb_AcTabAT_ALT.Value=1 then
      bbalt_true:=False;
   if DM4.Tb_AcTabAT_EXC.Value=1 then
      bbexc_true:=False;
   end
else
   begin
   bbinc_true:=true;
   bbalt_true:=true;
   bbexc_true:=true;
   end;

Tb_Darvaldev.DisplayFormat:=mcasas;
Tb_DarCRVALFRE.DisplayFormat:=mcasas;
Tb_DarCRVALOR.DisplayFormat:=mcasas;

INCLUIR.Enabled:=bbinc_true;
ALTERAR.Enabled:=bbalt_true;
EXCLUIR.Enabled:=bbexc_true;
DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select DNOME,DCODDEP from CADDEP where 1=1 '
                  + fFiltrosMultiEmpresa('DPCODEMP','CADDEP',codemp)
                   );
DM1.Query5.Open;
DBCB_NOMDEP.Items.Clear;
While not DM1.Query5.Eof do
   begin
   DBCB_NOMDEP.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
   DM1.Query5.Next;
   end;

DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select BCBANCO,BCCODBCO from CADBCO where 1=1 '
                      + fFiltrosMultiEmpresa('BCCODEMP','CADBCO',codemp)
                       );

DM1.Query5.Open;
DBCB_NOMBCO.Items.Clear;
While not DM1.Query5.Eof do
   begin
   DBCB_NOMBCO.Items.Add(DM1.Query5.fieldByName('BCBANCO').AsString+'['+DM1.Query5.fieldbyName('BCCODBCO').AsString+']');
   DM1.Query5.Next;
   end;

DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select CCNOME,CCNAT,CCCODCCU from CADCCU WHERE 1=1 '
                      + fFiltrosMultiEmpresa('CCCODEMP','CADCCU',codemp)
                      );

DM1.Query5.Open;
DBCB_NOMCCU.Items.Clear;
While not DM1.Query5.Eof do
   begin
   DBCB_NOMCCU.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                        +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                        +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');
   DM1.Query5.Next;
   end;
fCarregaDadosCaixa('CADDAR0');

RxDBCB_dup.Items.Clear;
//dbrg_dup.Values.Clear;

for x:=0 to high(ptpdoc)-1 do
   begin
   RxDBCB_dup.Items.Add(ptpdoc[x]);
//   dbrg_dup.Values.Add(IntToStr(x));
   end;
DBNavigator2.DataSource:=Src_Dar;
DBGrid1.DataSource     :=Src_Dar;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);



end;

procedure tFrm_Dar.fDadosParaCaixa();
begin
if codcai=0 then
   Tb_DarCRCODCTA.Value:=1
else
   Tb_DarCRCODCTA.Value:=codcai;

Tb_DarCRDESCMV.Value :=pldr_descmov;
Tb_DarCRCODCC.Value  :=pldr_codccu;
Tb_DarCRNATDC.Value  :=pldr_natdc;
Tb_DarCRCODDEP.Value :=pldr_coddep;
Tb_DarCRNOMCTA.Value :=pldr_nombco;
Tb_DarCRNOMDEP.Value :=pldr_nomdep;
Tb_DarCRNOMCC.Value  :=pldr_nomccu;

end;

procedure TFrm_Dar.INCLUIRClick(Sender: TObject);
begin
  inherited;
moper:=0;

Tb_Dar.Insert;

fDadosParaCaixa();
fLercaddar_obs;
Tb_CR_Obs.Insert;
Tb_DarCRDUP.Value:=0;

PC1.ActivePageIndex:=0;

ts_outras.Enabled  :=true;
tsCobBancaria.Enabled  :=true;

Tb_DarCRDTEMIS.Value :=Date;
Tb_DarCRDTVCTO.Value :=Date;
Tb_DarCRQTDPARC.Value:=1;
Tb_DarCRNUMPARC.Value:=1;
Tb_DarCRDTALT.Value  :=now;
Tb_DarCRESPECIE.Value:='DM';
Tb_DarCRDATAINCLUSAO.AsDateTime:=now;

db_dtemis.Visible       :=true;
//dbc_dtemis.Visible      :=false;
db_dtvcto.Visible       :=true;
//dbc_dtvcto.Visible      :=false;
db_dtdescf.Visible      :=true;
//dbc_dtdescf.Visible     :=false;
db_spc_dtpen.Visible    :=true;
dbc_spc_dtpen.Visible   :=false;
db_spc_dtneg.Visible    :=true;
dbc_spc_dtneg.Visible   :=false;
db_serasa_dtneg.Visible :=true;
dbc_serasa_dtneg.Visible:=false;
//db_dtcau.Visible        :=true;
//dbc_dtcau.Visible       :=false;
db_dtbx.Visible         :=true;
dbc_dtbx.Visible        :=false;
db_dtpag.Visible        :=true;
dbc_dtpag.Visible       :=false;
db_codfpgto.Enabled     :=false;

mdar_codemp:=0;
mdar_codecf:=0;
mdar_numero:=0;
mdar_desd  :='';
mdar_dup   :=0;
mdar_dtemis:=date;
//RxDBCB_dup.ItemIndex:=Tb_DarCRDUP.AsInteger;
if PC1.ActivePage=tsCad then
   db_numero.SetFocus
else if PC1.ActivePage=ts_outras then
   DBEdit36.SetFocus;


end;

procedure TFrm_Dar.ALTERARClick(Sender: TObject);
begin
  inherited;
if Tb_DarCRNUMERO.IsNull then
   begin
   fmensagem('Não a registro a ser alterado!',0,['0'],0);
   CANCELAR.Click;
   exit;
   end;
if (Tb_DarCRSTATUS.Value>1) then
   begin
   fmensagem('Alteração não permitida. Excluir primeiro o(s) pagamento(s)!',0,['0'],0);
   CANCELAR.Click;
   exit;
   end;
if PC1.ActivePage=tsTab then
   PC1.ActivePage:=tsCad;
moper:=8;
db_dtemis.Visible       :=true;
//dbc_dtemis.Visible      :=false;
db_dtvcto.Visible       :=true;
//dbc_dtvcto.Visible      :=false;
db_dtdescf.Visible      :=true;
//dbc_dtdescf.Visible     :=false;
db_spc_dtpen.Visible    :=true;
dbc_spc_dtpen.Visible   :=false;
db_spc_dtneg.Visible    :=true;
dbc_spc_dtneg.Visible   :=false;
db_serasa_dtneg.Visible :=true;
dbc_serasa_dtneg.Visible:=false;
//db_dtcau.Visible        :=true;
//dbc_dtcau.Visible       :=false;
db_dtbx.Visible         :=true;
dbc_dtbx.Visible        :=false;
db_dtpag.Visible        :=true;
dbc_dtpag.Visible       :=false;
mValor_ant :=Tb_DarCRVALOR.AsFloat;
mDtvcto_ant:=Tb_DarCRDTVCTO.AsDateTime;

Tb_Dar.Edit;
if Tb_DarCRNPED.Value>0 then
  begin
  FMENSAGEM('Alteração sera permitida somente em alguns campos'+#13
           +'Lancamento feito automaticamente',0,['0'],0);
  if (Tb_DarCRDUP.AsInteger=0) OR
     (Tb_DarCRDUP.AsInteger=5) then
       RxDBCB_dup.Enabled       :=False;

  if DM1.Tb_PargerPMANDUPREC_AUT.AsInteger<>1 then
    begin
    db_numero.Enabled      :=False;
    db_desd.Enabled        :=False;
    db_codcli.Enabled      :=False;
    db_codven.Enabled      :=true;
    db_valor.Enabled       :=False;
    db_totnf.Enabled       :=False;
    db_dtemis.Enabled      :=False;
    db_icmsr.Enabled       :=False;
    db_valfre.Enabled      :=False;
    db_nosnum.Enabled      :=true;
    db_dnosnum.Enabled     :=true;
    if DM4.Tb_Par01PMANNOCR.Value=0 then
       db_nfacum.Enabled     :=False;
    if PC1.ActivePage=tsTab then
       db_dtvcto.SetFocus;
    end
  else
    begin
    db_numero.Enabled      :=True;
    db_desd.Enabled        :=True;
    db_codcli.Enabled      :=True;
    db_codven.Enabled      :=True;
    db_valor.Enabled       :=True;
    db_totnf.Enabled       :=True;
    db_dtemis.Enabled      :=True;
    db_icmsr.Enabled       :=True;
    db_valfre.Enabled      :=True;
    db_nosnum.Enabled      :=True;
    db_dnosnum.Enabled     :=True;
    if DM4.Tb_Par01PMANNOCR.Value=0 then
       db_nfacum.Enabled     :=True;
    if PC1.ActivePage=tsTab then
       db_dtvcto.SetFocus;
    end;
  end
else if Tb_DarCRSTATUS.Value=1 then
   begin
   fmensagem('Lançamento ja Paga parcial'+#13
             +' sera permitida somente em alguns campos',0,['0'],0);
   db_numero.Enabled      :=False;
   db_desd.Enabled        :=False;
   RxDBCB_dup.Enabled         :=False;
   db_codcli.Enabled      :=False;
   db_codven.Enabled      :=True;
   db_valor.Enabled       :=False;
   db_totnf.Enabled       :=False;
   db_dtemis.Enabled      :=False;
   db_icmsr.Enabled       :=False;
   db_valfre.Enabled      :=False;
   db_nosnum.Enabled      :=True;
   db_dnosnum.Enabled     :=True;
   if DM4.Tb_Par01PMANNOCR.Value=0 then
      db_nfacum.Enabled     :=False;
   if PC1.ActivePage=tsTab then
      db_dtvcto.SetFocus;
   end
else
   begin
   db_numero.Enabled      :=True;
   db_desd.Enabled        :=True;
   RxDBCB_dup.Enabled         :=True;
   db_codcli.Enabled      :=True;
   db_codven.Enabled      :=True;
   db_valor.Enabled       :=True;
   db_totnf.Enabled       :=True;
   db_dtemis.Enabled      :=True;
   db_icmsr.Enabled       :=True;
   db_valfre.Enabled      :=True;
   db_nosnum.Enabled      :=True;
   db_dnosnum.Enabled     :=True;
   db_nfacum.Enabled      :=True;
   if PC1.ActivePage=tsTab then
      db_codcli.SetFocus;
   end;

ts_outras.Enabled:=true;
tsCobBancaria.Enabled  :=true;
if Tb_DarCRNPED.AsFloat=0 then
   db_codfpgto.Enabled     :=true;
mdar_codemp:=Tb_DarCRCODEMP.AsFloat;
mdar_codecf:=Tb_DarCRCODECF.AsFloat;
mdar_numero:=Tb_DarCRNUMERO.AsFloat;
mdar_desd  :=Tb_DarCRDESD.asString;
mdar_dup   :=Tb_DarCRDUP.AsFloat;
mdar_dtemis:=Tb_DarCRDTEMIS.AsDatetime;

if PC1.ActivePage=tsCad then
   begin
   if Tb_DarCRNPED.Value>0 then
      db_dtvcto.SetFocus
   else
      db_numero.SetFocus;
   end
else if PC1.ActivePage=tsCobBancaria then
   DBEdit36.SetFocus;


end;

procedure TFrm_Dar.GRAVARClick(Sender: TObject);
var
i: Integer;
begin
  inherited;


if Trim(Tb_DarCRDESD.Value)='' then
   begin
   fmensagem('o Desdobramento tem que ser preenchido!',0,['0'],0);
   PC1.ActivePage:=tsCad;
   db_desd.SetFocus;
   exit;
   end;
if Tb_DarCRVALOR.Value<=0 then
   begin
   fmensagem('Valor da Duplicata Invalido.',0,['0'],0);
   PC1.ActivePage:=tsCad;
   db_valor.SetFocus;
   exit;
   end;
if Tb_DarCRNUMERO.Value<=0 then
   begin
   fmensagem('Número da Duplicata Invalido!',0,['0'],0);
   PC1.ActivePage:=tsCad;
   db_numero.SetFocus;
   exit;
   end;
if Tb_DarCRCODCLI.Value<=0 then
   begin
   fmensagem('Código do Cliente da Duplicata Invalido!',0,['0'],0);
   PC1.ActivePage:=tsCad;
   db_codcli.SetFocus;
   exit;
   end;
if Tb_DarCRCODVEN.Value<=0 then
   begin
   fmensagem('Código do Vendedor da Duplicata Invalido!',0,['0'],0);
   PC1.ActivePage:=tsCad;
   if db_CODVEN.Enabled then
      db_codven.SetFocus;
   exit;
   end;
if Tb_DarCRVALOR.Value<=0 then
   begin
   fmensagem('Valor daDuplicata Invalido!',0,['0'],0);
   PC1.ActivePage:=tsCad;
   db_valor.SetFocus;
   exit;
   end;
if Tb_DarCRDTEMIS.IsNull then
   begin
   PC1.ActivePage:=tsCad;
   fmensagem('data de emissão da Duplicata Invalido!',0,['0'],0);
   db_dtemis.SetFocus;
   exit;
   end;
if Tb_DarCRDTVCTO.IsNull then
   begin
   PC1.ActivePage:=tsCad;
   fmensagem('data de vncimento da Duplicata Invalido!',0,['0'],0);
   db_dtvcto.SetFocus;
   exit;
   end;

if (Trim(DBEdit9.Text) = '_') or (Trim(DBEdit9.Text) = '-') then
   begin
   PC1.ActivePage:=tsCad;
   fMensagem('Favor informar Centro de Custo para Lançamento do '+#13+
             'Fluxo de Caixa !',0,['0'],0);
   DBCB_NOMCCU.SetFocus;
   Exit;
   end;

if Tb_DarCRQTDPARC.AsInteger<=0 then
   Tb_DarCRQTDPARC.Value:=1;
if Tb_DarCRNUMPARC.AsInteger<=0 then
   Tb_DarCRNUMPARC.Value:=1;


if Tb_DarCRNUMPARC.AsInteger>Tb_DarCRQTDPARC.AsInteger then
   begin
   PC1.ActivePage:=tsCad;
   fmensagem('Numero da Parcela Maior que o a Quantidade, invalido!',0,['0'],0);
   DBE_numparc.SetFocus;
   exit;
   end;

if Tb_DarCRTCB.AsInteger<2 then
   begin
   if Tb_DarCRCODBCO.AsFloat=0 then
      Tb_DarCRTCB.Value:=0
   else
      Tb_DarCRTCB.Value:=1;
   end;

//Tb_DarCRDUP.Value:=CB_DUP.ItemIndex;
For i:=0 to Tb_Dar.FieldCount-1 do
   begin
   if not Tb_Dar.Fields[i].IsNull then
      Continue;
   if Tb_Dar.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword] then
      Tb_Dar.Fields[i].Value:=0
   end;


if moper=0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select count(*) from CADDAR where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',' CRCODEMP=0'+Tb_DarCRCODEMP.AsString+' and ' )
                     +' CRCODECF=0'+Tb_DarCRCODECF.AsString
                     +' and CRNUMERO=0'+Tb_DarCRNUMERO.AsString
                     +' and CRDESD='+chr(39)+Tb_DarCRDESD.AsString+chr(39)
                     +' and CRDUP=0'+Tb_DarCRDUP.AsString
                     +' and CRDTEMIS='+chr(39)+FormatDateTime(fdt, Tb_DarCRDTEMIS.AsDateTime)+chr(39));
//  DM1.Query1.Sql.SaveToFile(mpastatemp + 'SQL.TXT');

   try
      DM1.Query1.Open;
   except
      DM1.Query1.Sql.SaveToFile(mpastatemp + 'SQL.TXT');
      end;
   if DM1.Query1.Fields[0].AsInteger>0 then
      begin
      fmensagem('Ja Existe uma duplicata com as mesmas caracteristicas '
                 +'mude alguma informacao tipo o numero,desdobramento, '
                 +'tipo de documento, etc!',0,['0'],0);
      exit;
      end;
   end
else
   begin
   if (Tb_DarCRCODEMP.AsFloat<>mdar_codemp) or
      (Tb_DarCRCODECF.AsFloat<>mdar_codecf) or
      (Tb_DarCRNUMERO.AsFloat<>mdar_numero) or
      (Tb_DarCRDESD.AsString<>mdar_desd) or
      (Tb_DarCRDUP.AsFloat<>mdar_dup) or
      (Tb_DarCRDTEMIS.AsDateTime<>mdar_dtemis) then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select count(*) from CADDAR where '
                        +iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',' CRCODEMP=0'+Tb_DarCRCODEMP.AsString+' and ' )
                        +' CRCODECF=0'+Tb_DarCRCODECF.AsString
                        +' and CRNUMERO=0'+Tb_DarCRNUMERO.AsString
                        +' and CRDESD='+chr(39)+Tb_DarCRDESD.AsString+chr(39)
                        +' and CRDUP=0'+Tb_DarCRDUP.AsString
                        +' and CRDTEMIS='+chr(39)+FormatDateTime(fdt, Tb_DarCRDTEMIS.AsDateTime)+chr(39));
      try
         DM1.Query1.Open;
      except
         DM1.Query1.Sql.SaveToFile(mpastatemp + 'SQL.TXT');
         end;
      if DM1.Query1.Fields[0].AsInteger>0 then
         begin
         fmensagem('Ja Existe uma duplicata com as mesmas caracteristicas '
                  +'mude alguma informacao tipo o numero,desdobramento, '
                  +'tipo de documento, etc!',0,['0'],0);
         exit;
         end;
      end;
   if length(Tb_DarCRCODBAR.AsString)>10 then
      begin
      if (mValor_ant<>Tb_DarCRVALOR.Value) or
         (mDtvcto_ant<>Tb_DarCRDTVCTO.AsDateTime) then
         Tb_DarCRCODBAR.AsString:='';
      end;

   end;
if Tb_DarCRSTATUS.AsFloat<2 then
   begin
   if Tb_DarCRCODLDR.Value>0 then
      begin
      if not flcadldr(0,Tb_DarCRCODEMP.AsInteger,Tb_DarCRLOTSEQ_FC.AsInteger,Tb_DarCRCODLDR.AsString) then
         DM1.Tb_LDR.Append
      else
         DM1.Tb_LDR.Edit;
      end
   else
      begin
      if not DM1.Tb_Ldr.Active then
         flcadldr(0,0,0,'9999999');
      DM1.Tb_Ldr.Append;
      end;

   DM1.Tb_LDRCODEMP.Value  :=Tb_DarCRCODEMP.Value;
   DM1.Tb_LDRDATADP.Value  :=Tb_DarCRDTVCTO.Value;
   DM1.Tb_LDRDATAREF.Value :=Tb_DarCRDTEMIS.Value;
   DM1.Tb_LDRVALORP.Value  :=Tb_DarCRVALOR.Value-Tb_DarCRVALPAG.Value; // valor
   if Tb_DarCRSTATUS.Value>0 then
      begin
      DM1.Tb_LDRDATAREAL.Value:=Tb_DarCRDTBX.Value;
      DM1.Tb_LDRVALORR.Value  :=Tb_DarCRVALPAG.Value;
      DM1.Tb_LDRVALORP.Value  :=Tb_DarCRVALPAG.Value; // valor
      if Tb_DarCRDTBX.Value>pdatanula then
         DM1.Tb_LDRDTSALDO.AsDateTime  := Tb_DarCRDTBX.Value
      else
        DM1.Tb_LDRDTSALDO.AsDateTime  := pdatanula;

      end;

   if Tb_DarCRCODCTA.AsInteger<>0 then
      DM1.Tb_LDRCODBCO.Value  :=Tb_DarCRCODCTA.AsInteger
   else
      DM1.Tb_LDRCODBCO.Value  :=codcai;
      
   DM1.Tb_LDRNUMDOC.Value :=DM1.Tb_PargerPCRDOCSIG.Value+FormatFloat('000000',iif(DM1.Tb_PargerPCRDOC.Value=1,Tb_DarCRNPED.Value,Tb_DarCRNUMERO.Value))+'-'+Tb_DarCRDESD.Value;
   DM1.Tb_LDRSTATUS.Value:=0;
   DM1.Tb_LDRORIGEM.Value:=03;
   DM1.Tb_LDRTIPO.Value  :='CL';
   DM1.Tb_LDRCODIGO.Value:=Tb_DarCRCODCLI.Value;
   DM1.Tb_LDRNOME.Value  :=Tb_Darrazaocli.Value;
   if Tb_DarCRNPED.Value>0 then
      DM1.Tb_LDRLOCDEP.Value:=3
   else
      DM1.Tb_LDRLOCDEP.Value:=4;
   DM1.Tb_LDRNOME.Value  :=Tb_Darrazaocli.Value;
   DM1.Tb_LDRDESCMV.Value:=Tb_DarCRDESCMV.Value;
   DM1.Tb_LDRCODCC.Value :=Tb_DarCRCODCC.Value;
   DM1.Tb_LDRCODDEP.Value:=Tb_DarCRCODDEP.Value;
   DM1.Tb_LDRNOMBCO.Value:=Tb_DarCRNOMCTA.Value;
   DM1.Tb_LDRNOMDEP.Value:=Tb_DarCRNOMDEP.Value;
   DM1.Tb_LDRNOMCCU.Value:=Tb_DarCRNOMCC.Value;
   DM1.Tb_LDRNATDC.Value :=Tb_DarCRNATDC.Value;
   DM1.Tb_LDRLOTMOV.Value:=lotmov;
   if Trim(DM1.Tb_LDRNUMDOC.AsString)<>'' then
      DM1.Tb_LDRDESCMV.Value:=trim(DM1.Tb_LDRDESCMV.Value)+' No.'+DM1.Tb_LDRNUMDOC.Value
   else
      DM1.Tb_LDRDESCMV.Value:=trim(DM1.Tb_LDRDESCMV.Value);
   DM1.Tb_LDRDESCMV.Value:=Trim(DM1.Tb_LDRDESCMV.Value)+' '+DM1.Tb_LDRNOME.Value;
   if length(DM1.Tb_LDRDESCMV.Value)>50 then
      DM1.Tb_LDRDESCMV.Value:=copy(DM1.Tb_LDRDESCMV.Value,1,50);
   DM1.Tb_LDRDESCMV.Value  :=DM1.Tb_LDRDESCMV.Value;
   DM1.Tb_LDRVALORP.Value  :=Tb_DarCRVALOR.Value;
//   if Tb_DarCRDUP.AsInteger=51111 Then
{
   if Tb_DarCRDUP.AsInteger=5 Then
     begin
     DM1.Tb_LDRVALORR.Value  :=Tb_DarCRVALOR.Value;
     DM1.Tb_LDRDATAREAL.Value:=Tb_DarCRDTEMIS.Value;
     DM1.Tb_LDRNATDC.Value   :='D';
     end
   else
   }
     begin
     DM1.Tb_LDRVALORR.Value  :=Tb_DarCRVALPAG.Value;
     DM1.Tb_LDRDATAREAL.Value:=Tb_DarCRDTPAG.Value;
     end;

   DM1.Tb_LDR.Post;
   end;

Tb_DarCRCODLDR.Value:=DM1.Tb_LDRCODLDR.Value;
Tb_DarCRID_LDR_NEW.AsInteger:=DM1.Tb_LDRLDR_ID_NEW.AsInteger;

if moper<>0 then
   fdar01gant(moper);

Tb_DarCRCODUSR.Value:=codusr;
Tb_DarCRDTALT.Value :=now;
Tb_DarCRHRALT.Value :=FormatDateTime(fhr, time);
Tb_Dar.Post;


db_numero.Enabled      :=True;
db_desd.Enabled        :=True;
RxDBCB_dup.Enabled       :=True;
db_codcli.Enabled      :=True;
db_codven.Enabled      :=True;
db_valor.Enabled       :=True;
db_dtemis.Enabled      :=True;
db_icmsr.Enabled       :=True;
db_valfre.Enabled      :=True;
db_nosnum.Enabled      :=True;
db_dnosnum.Enabled     :=True;
db_nfacum.Enabled      :=True;

CANCELAR.Click;
end;


procedure TFrm_Dar.EXCLUIRClick(Sender: TObject);
var
mCondicao: String;
begin
  inherited;
if Tb_DarCRNUMERO.IsNull then
   begin
   fmensagem('Nao ha registro a ser excluido!',0,['0'],0);
   exit;
   end;
{
if codusr<>1111 then
   begin
   if Tb_DarCRNPED.Value>0 then
      begin
      fmensagem('Exclusão não permitida lançamento feito através de pedido',0,['0'],0);
      exit;
      end;
   end;
}
if Tb_DarCRSTATUS.Value>0 then
   begin
   fmensagem('Exclusão não permitida. Excluir primeiro o(s) pagamento(s)',0,['0'],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir a Duplicata?',0,['1','2'],2)=mrYes then
   begin
   if Tb_DarCRNPED.Value>0 then
      begin
      mValidarSenha.pTipo:=0;
      mValidarSenha.pCodusr:=codusr;
      mValidarSenha.pCodSen:=50;
      mValidarSenha.pCodEmp:=0;
      mValidarSenha.pCodCli:=0;
      mValidarSenha.pLotSeq:=0;
      mValidarSenha.pChave :=0;
      mValidarSenha.pOrdem :=0;
      mValidarSenha.pTexto :='Senha para alterar Excluir Titulo Gerados Automaticamente';
      mValidarSenha.pChave_St:='';
      mValidarSenha.pDesc_requisitado :=0;

      if fValidaSenha(mValidarSenha)<>0 then
         exit;
      end;

   if Tb_DarCRCODLDR.Value>0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.add('Delete From CADLDR where ');
      if DM1.Qr_Tid.Locate('TINOME','CADLDR',[]) then
         begin
         DM1.Query1.SQL.add(' LOTSEQ=0'+Tb_DarCRLOTSEQ_FC.AsString
                           +' and CODLDR=0'+Tb_DarCRCODLDR.AsString)
         end
      else
         begin
         DM1.Query1.SQL.add(' CODEMP=0'+Tb_DarCRCODEMP.AsString
                           +' and LOTSEQ=0'+Tb_DarCRLOTSEQ_FC.AsString
                           +' and CODLDR=0'+Tb_DarCRCODLDR.AsString);
         end;
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
      end;
// INICIO

   fdar01gant(9);

// TERMINO
//   try
//      Tb_Dar.Delete;
//   except
{
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Select CRCODEMP,CRCODECF,CRNUMERO,CRDESD,CRDUP,CRDTEMIS,CRLOTSEQ_FC,CRCODLDR from CADDAR where '
                        +iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',' CRCODEMP=0'+Tb_DarCRCODEMP.AsString+' and ' )
                        +' CRCHAVE_ID=0'+Tb_DarCRCHAVE_ID.AsString
                        +' and CRCHAVE_ID_ANO=0'+Tb_DarCRCHAVE_ID_ANO.AsString);
      try
         DM1.Query2.Open;
      except
         DM1.Query2.SQL.SaveToFile(mpastatemp + 'SQL.txt');
         end;

      While not DM1.Query2.Eof do
         begin
         DM1.Query1.Close;
         DM1.Query1.Sql.Clear;
         DM1.Query1.SQL.add('Delete From CADLDR where '
                           +iif(DM1.Qr_Tid.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+Tb_DarCRCODEMP.AsString+' and ')
                           +' LOTSEQ=0'+Tb_DarCRCRLOTSEQ_FC.AsString
                           +' and CODLDR=0'+Tb_DarCRCRCODLDR.AsString);
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
         }

         DM1.Query3.Close;
         DM1.Query3.SQL.Clear;
         DM1.Query3.SQL.Add('Delete from CADDAR where '
                           +iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',' CRCODEMP=0'+Tb_DarCRCODEMP.AsString+' and ' ) );

         DM1.Query3.SQL.Add(' CRCHAVE_ID=0'+Tb_DarCRCHAVE_ID.AsString
                        +' and CRCHAVE_ID_ANO=0'+Tb_DarCRCHAVE_ID_ANO.AsString);


          mCondicao:=
               ' and CRNUMERO='+Tb_DarCRNUMERO.asstring
               +' and CRDESD='+QuotedStr(Tb_DarCRDESD.AsString)
               +' and CRNUMERO='+Tb_DarCRNUMERO.asString
               +' and CRDUP='+Tb_DarCRDUP.Asstring
               +' and CRCODCLI='+Tb_DarCRCODCLI.ASSTRING
               +fFormatdatetimeParaConsulta_unica('CRDTEMIS',Tb_DarCRDTEMIS.AsDateTime);

         DM1.query3.sql.add(mcondicao);

         try
            DM1.Query3.execsql;
            fdm1StartCommit;
         except
            DM1.Query3.SQL.SaveToFile(mpastatemp + 'SQL.txt');
            end;
{         DM1.Query2.Next;
         end;
         }
      BBnAtuClick(Self);
//      end;
   end;
end;

procedure TFrm_Dar.CANCELARClick(Sender: TObject);
begin
  inherited;
//db_dtemis.Visible       :=false;
//dbc_dtemis.Visible      :=true;
//db_dtvcto.Visible       :=false;
//dbc_dtvcto.Visible      :=true;
//db_dtdescf.Visible      :=false;
//dbc_dtdescf.Visible     :=true;
db_spc_dtpen.Visible    :=false;
dbc_spc_dtpen.Visible   :=true;
db_spc_dtneg.Visible    :=false;
dbc_spc_dtneg.Visible   :=true;
db_serasa_dtneg.Visible :=false;
dbc_serasa_dtneg.Visible:=true;
//db_dtcau.Visible        :=false;
//dbc_dtcau.Visible       :=true;
db_dtbx.Visible         :=false;
dbc_dtbx.Visible        :=true;
db_dtpag.Visible        :=false;
dbc_dtpag.Visible       :=true;
db_codfpgto.Enabled     :=false;
Tb_CR_Obs.Cancel;
Tb_Dar.Cancel;
BBnAtu.Enabled      :=true;
cb_listar.Enabled   :=true;
cb_ordem.Enabled    :=true;

ts_outras.Enabled:=false;
tsCobBancaria.Enabled  :=False;

end;

procedure TFrm_Dar.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if dar_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
//   dar_ori := '';
   end;

end;

procedure TFrm_Dar.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if dar_ori='' then
      begin
      PC1.ActivePageIndex:=0;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
//      dar_ori := '';
      end;
   abort;
   end;

end;

procedure TFrm_Dar.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
If Tb_Dar.State in [dsInsert, dsEdit] then
   begin
   Case fmensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2'],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELARClick(Self);
      else CanClose:=False;
      end;
   end;
if dar_ori='' then
   begin
   if Tb_Dar.Filtered then
      begin
      Tb_Dar.Filter:='';
      Tb_Dar.Filtered:=false;
      end;
   end;
end;

procedure TFrm_Dar.CAMPOExit(Sender: TObject);
begin
  inherited;
if (CAMPO.ItemIndex>2) and (CAMPO.ItemIndex<5) then
   begin
   Edit1.Text:='/  /';
   Edit1.EditMask:='!99/99/9999;1; ';
   end
else if CAMPO.ItemIndex<5 then
   edit1.EditMask:=''
else
   edit1.editMask:='';

end;


function TFrm_Dar.fdar01gant(ptipo: Integer): Boolean;
var
mCondicao_old: String;
mChave_Old: Integer;

begin


      mGerarOldCadDar.pStatus:=ptipo;
      mGerarOldCadDar.pNumero:=Tb_DarCRNUMERO.AsFloat;
      mGerarOldCadDar.pCodcli:=Tb_DarCRCODCLI.AsFloat;
      mGerarOldCadDar.pDup:=Tb_DarCRDUP.AsInteger;
      mGerarOldCadDar.pDesd:=Tb_DarCRDESD.AsString;
      if ptipo=8 then
         mGerarOldCadDar.pMotivo:='Alteração de Registro'
      else if pTipo=9 then
         mGerarOldCadDar.pMotivo:='Exclusão de Registro'
      else
         mGerarOldCadDar.pMotivo:='pTipo '+inttostr(ptipo)+' desconhecido ';
      mGerarOldCadDar.pCodEmp:=Tb_DarCRCODEMP.AsInteger;
      mGerarOldCadDar.pChavePed:=0;
      mGerarOldCadDar.pLotseqPed:=0;
      mGerarOldCadDar.pDtEmis:=Tb_DarCRDTEMIS.AsDateTime;

       fGerarOldCadDar(mGerarOldCadDar);




{

mCondicao_old:=' where CRCODEMP='+Tb_DarCRCODEMP.AsString
               +' and CRNUMERO='+Tb_DarCRNUMERO.AsString
               +' and CRDESD='+QuotedStr(Tb_DarCRDESD.AsString)
               +' and CRDUP='+Tb_DarCRDUP.AsString
               +' and CRNPED='+Tb_DarCRNPED.AsString;

mChave_Old:=fGerarTabelas_Old(mOper //status
               ,0 //codigo novo valor chave
               ,'CRCODNOV' //nome do campo do novo valor (chave)
               ,'CRDATHOR_EVE' // nome do campo data e hora do evento
               ,'CRCODUSR_EVE' // nome do campo do usuario
               ,'CRTIPEVE' // nome do campo de status
               ,'CADDAR' // nome da tabela
               ,mCondicao_old);
result:=true;
}
{




var
  x,mcod: Integer;
  minstru: String;
  v: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(CRCODNOV) from OLD_CADDAR');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields[0].AsInteger+1;
minstru:='Insert into OLD_CADDAR (';
v:='';
for x:=0 to Tb_Dar.FieldCount-1 do
   begin
   if (Tb_Dar.Fields[x].FieldKind=fkCalculated) or (Tb_Dar.Fields[x].FieldKind = fkLookup) then
      Continue;
   minstru:=minstru+v+Tb_Dar.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',CRCODNOV) Select ';
v:='';
for x:=0 to Tb_Dar.FieldCount-1 do
   begin
   if (Tb_Dar.Fields[x].FieldKind=fkCalculated) or (Tb_Dar.Fields[x].FieldKind = fkLookup) then
      Continue;
   if Tb_Dar.Fields[x].FieldName='CRSTATUS' then
      minstru:=minstru+v+FormatFloat('0',ptipo)+' as CRSTATUS '
   else if Tb_Dar.Fields[x].FieldName='CRCODUSR' then
      minstru:=minstru+v+FormatFloat('00000',codusr)+' as CRCODUSR '
   else if Tb_Dar.Fields[x].FieldName='CRDTALT' then
      minstru:=minstru+v+' SYSDATE as CRDTALT '
   else if Tb_Dar.Fields[x].FieldName='CRHRALT' then
      minstru:=minstru+v+chr(39)+Formatdatetime(fhr,time)+chr(39)+' as CRHRALT '
   else
      minstru:=minstru+v+Tb_Dar.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as CRCODNOV ';
minstru:=minstru+' from CADDAR where CRCODEMP=0'+Tb_DarCRCODEMP.AsString
                +' and CRNUMERO=0'+Tb_DarCRNUMERO.AsString
                +' and CRDESD='+chr(39)+Tb_DarCRDESD.Value+chr(39)
                +' and CRDUP=0'+Tb_DarCRDUP.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   fmensagem('Erro ao Fazer o Backup da Alteracao DAR391. Contactar Suporte',0,['0'],0);
   end;
result:=True;
}
end;


function tfrm_Dar.fdar01lerant(ptipo: Integer):Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
minstru:=' Select ';
v:='';
for x:=0 to Tb_Dar.FieldCount-1 do
   begin
   if (Tb_Dar.Fields[x].FieldKind=fkCalculated) or (Tb_Dar.Fields[x].FieldKind = fkLookup) then
      Continue;
   if UpperCase(copy(Tb_Dar.Fields[x].FieldName,1,2))='ID' then
      minstru:=minstru+v+' ROWID as '+Tb_Dar.Fields[x].FieldName
   else
      minstru:=minstru+v+Tb_Dar.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADDAR where CRCODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
Tb_Dar.Close;
Tb_Dar.SQL.Clear;
Tb_Dar.SQL.add(minstru);
try
   Tb_Dar.Open;
except
   Tb_Dar.sql.savetofile(mpastatemp + 'SQLdar.txt');
   end;
cb_listar.Enabled   :=false;
cb_ordem.Enabled    :=false;
BBnAtu.Enabled      :=False;
INCLUIR.Enabled     :=False;
ALTERAR.Enabled     :=False;
EXCLUIR.Enabled     :=False;
CANCELAR.Enabled    :=False;
DBNavigator1.Enabled:=False;
DBGrid1.Enabled     :=False;
result:=true;
end;




procedure TFrm_Dar.db_codcliKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Tb_DarCRCODCLI.Value:=fSonumero(fChamaCli(0,'Frm_Dar',key));
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Dar.db_codcliExit(Sender: TObject);
var
mChaveCx: String;
mNatDC: String;
begin
  inherited;
if Tb_DarCRCODCLI.AsFloat=0 then
   exit;

if not flcadcli(1,0,Tb_DarCRCODCLI.AsString) then
   begin
   fmensagem('Cliente não Cadastrado!',0,['0'],0);
   db_codcli.SetFocus;
   end
else
   begin
   mNatDC:='C';

   if Tb_DarCRDUP.Value=5 then
      begin
      if Tb_DarCRNPED.AsFloat>0 then
         mChaveCx:='CADDARD'
      else
         mChaveCx:='CADDARN';
      mNatDC:='D';
      end
   else if (Tb_DarCRDUP.Value=1) or (Tb_DarCRDUP.Value=2) then
      mChaveCx:='CADDARH'
   else
      mChaveCx:='CADDAR0';

   fPegarDadosCaixa(mChaveCX,'CL',mNatDC,Tb_DarCRCODCLI.asfloat,codcai,mDadosCaixa);
   Tb_DarCRDESCMV.Value:=mDadosCaixa.pldr_descmov;
   Tb_DarCRNOMCC.Value :=mDadosCaixa.pldr_nomccu;
   Tb_DarCRNATDC.Value :=mDadosCaixa.pldr_natdc;
   Tb_DarCRNOMDEP.Value:=mDadosCaixa.pldr_nomdep;
   Tb_DarCRCODDEP.Value:=mDadosCaixa.pldr_coddep;
   Tb_DarCRCODCC.Value :=mDadosCaixa.pldr_codccu;
   Tb_DarCRCODCTA.Value:=mDadosCaixa.pldr_codbco;
   Tb_DarCRNOMCTA.Value:=mDadosCaixa.pldr_nombco;
   with DBCB_NOMBCO do ItemIndex:=Items.IndexOf(Tb_DarCRNOMCTA.Value
                                 +'['+Tb_DarCRCODCTA.AsString+']');


   end;
end;

procedure TFrm_Dar.db_codvenExit(Sender: TObject);
begin
  inherited;
if Tb_DarCRCODVEN.AsFloat=0 then
   exit;
if not flcadven(1,0,Tb_DarCRCODVEN.AsString) then
   begin
   fmensagem('Vendedor nao Cadastrado',0,['0'],0);
   if db_CODVEN.Enabled then
      db_codven.SetFocus;
   end;

end;

procedure TFrm_Dar.db_codvenKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Tb_DarCRCODVEN.Value:=ValFloat(fChamaVen(0,'frm_Dar',Key));
   db_codvenExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Dar.db_codbcoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Tb_DarCRCODBCO.Value:=ValFloat(fChamaBco(0,'frm_Dar',Key));
   db_codbcoexit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Dar.db_totnfKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key in ['.',','] then key:=DecimalSeparator;
end;

procedure TFrm_Dar.Edit1Exit(Sender: TObject);
begin
  inherited;
if CAMPO.ItemIndex<2 then
   edit1.Text:=fdeixanum2(EDIT1.Text)
else if CAMPO.ItemIndex=8 then
   Edit1.Text:=fdeixanum2(Edit1.Text);

end;

procedure TFrm_Dar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

if key=113 then
   begin
   if Form_SelEmp.WindowState=wsMinimized then
      Form_SelEmp.WindowState:=wsNormal
   else
      Form_SelEmp.Show;
   end
else
   begin
   if pTcAtalho_me<>0 then
      begin
      if (Shift=pSfAtalho_me) and (pTcAtalho_me=key) then
         begin
         if Form_SelEmp.WindowState=wsMinimized then
            Form_SelEmp.WindowState:=wsNormal
         else
            Form_SelEmp.Show;
         end;
      end;
   end;


if ((key=118) and (codcar=1111) and ( (Tb_DarCRSTATUS.Value>0) or (Tb_DarCRDEVOL.AsFloat>0)) ) then
   begin
   if fmensagem(pchar('Esta opção é Coloca a Duplicata no Estado de Em Aberta!'+#13
                                  +'Quer Continuar mesmo asssim?'),0,['1','2'],2)<>mrYes then
      exit;
   if Tb_DarCRLOTE.Value>0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Delete from FPCR where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADDAR',[]),'',' FPCODEMP=0'+IntTostr(codemp)+' and ')
                        +' FPLOTSEQ=0'+Tb_DarCRLOTSEQ_LB.AsString
                        +' and FPLOTE=0'+Tb_DarCRLOTE.AsString);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,735,'Frm_Dar','FPCR');
         end;

      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Delete from FPCRDUP where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADDAR',[]),'',' FPCODEMP=0'+IntTostr(codemp)+' and ')
                        +' FPLOTSEQ=0'+Tb_DarCRLOTSEQ_LB.AsString
                        +' and FPLOTE=0'+Tb_DarCRLOTE.AsString);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,748,'Frm_Dar','FPCRDUP');
         end;
      end;
   if Tb_DarCRCODLDR.Value>0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Update CADLDR set DATAREAL='+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)
                        +',   DTSALDO='+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)
                        +', VALORR=0  where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+IntTostr(codemp)+' and ')
                        +' LOTSEQ=0'+Tb_DarCRLOTSEQ_FC.AsString
                        +' and CODLDR=0'+Tb_DarCRCODLDR.AsString);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,764,'Frm_Dar','CADLDR');
         end;
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADDAR set CRVALPAG=0, '
                     +' CRDTBX='+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)
                     +', CRDTPAG='+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)
                     +', CRJUROS=0, CRDESC=0, CRDEVOL=0, CRLOTE=0, CRSTATUS=0 '
                     +' where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADDAR',[]),'',' CRCODEMP=0'+Tb_DarCRCODEMP.AsString+' and ')
                     +' CRCODECF=0'+Tb_DarCRCODECF.AsString
                     +' and CRNUMERO=0'+Tb_DarCRNUMERO.AsString
                     +' and CRDESD='+chr(39)+Tb_DarCRDESD.Value+chr(39)
                     +' and CRDUP=0'+Tb_DarCRDUP.AsString
                     +' and CRDTEMIS='+chr(39)+FormatDatetime(fdt, Tb_DarCRDTEMIS.Value)+chr(39));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,764,'Frm_Dar','CADDAR');
      end;
   BBnAtu.Click;
   fmensagem('Concluido!',0,['0'],0);
   end;
   
end;

procedure TFrm_Dar.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
if (Tb_DarCRSTATUS.Value=1) then
   begin
   DBGrid1.Canvas.Font.Color:=clBlue;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if (Tb_DarCRSTATUS.Value=0) and (Tb_DarCRDTVCTO.Value<=Date)
        and (Tb_DarCRDUP.AsInteger<>5) then
   begin
   DBGrid1.Canvas.Font.Color:=clRed;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;
if Tb_DarCRSTATUS.Value=2 then
   begin
   DBGrid1.Canvas.Brush.Color:=$00EBEBEB;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if (Tb_DarCRTITPROT.AsInteger=1) then
   begin
   DBGrid1.Canvas.Brush.Color:=$000080FF;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
{
else if (Tb_DarCRDUP.Value=6) then
   begin
   DBGrid1.Canvas.Brush.Color:=$00EBEBEB;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
}
else if (Tb_DarCRTCB.AsInteger>1) then
   begin
   DBGrid1.Canvas.Brush.Color:=$00DDFFBB;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if (Tb_DarCRDUP.AsInteger=5) and (UpperCase(copy(Tb_CR_ObsCROBS.AsString,1,6))<>'CHEQUE') then
   begin
   DBGrid1.Canvas.Brush.Color:=clGreen;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if (Tb_DarCRDUP.AsInteger=5) and (UpperCase(copy(Tb_CR_ObsCROBS.AsString,1,6))='CHEQUE') then
   begin
   DBGrid1.Canvas.Brush.Color:=clYellow;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

{
else
   begin
   DBGrid1.Canvas.Brush.Color:=$00E1FFFF;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;
 }
end;


procedure TFrm_Dar.busca_fpcrdup;
begin

    dm1.Query1.close;
    dm1.query1.SQL.Clear;
    dm1.query1.sql.add('select fpcaixa,bcbanco from fpcrdup,cadbco where ');
    dm1.query1.sql.add(iif(DM1.Qr_Tid.Locate('TINOME','CADDAR',[]),'',' FPCODEMP=0'+IntTostr(codemp)+' and '));
    dm1.query1.sql.add('       fpnumero = 0'+Tb_DarCRNUMERO.AsString);
    dm1.query1.sql.add(' and   fpcodcli = 0'+Tb_DarCRCODCLI.AsString);
    dm1.query1.sql.add(' and   fpdesd   =  '+''''+Tb_DarCRDESD.AsString+'''');
    dm1.query1.sql.add(' and   fpdtemis =  '+''''+FormatDateTime(fdt,Tb_DarCRDTEMIS.AsDateTime)+'''');
    dm1.query1.sql.add(' and   bccodbco = fpcaixa');
    dm1.query1.open;
    if not dm1.query1.IsEmpty then
    begin
        fp_codcaixa.text := dm1.query1.Fields[0].AsString;
        fp_desc.text     := dm1.query1.Fields[1].AsString;
    end else
    begin
        fp_codcaixa.text := '';
        fp_desc.text     := '';
    end;
end;

procedure TFrm_Dar.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  busca_fpcrdup;
end;

procedure TFrm_Dar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
Form_SelEmp.free;
Form_SelEmp:=nil;
 Tb_CR_imagem.Close;



if (FormState<>[fsModal]) then
   Action := caFree

end;

procedure TFrm_Dar.DBE_CodCtaExit(Sender: TObject);
begin
  inherited;
macbanco:=false;
Tb_DarCRNOMCTA.Value:=' ';

if (Tb_DarCRCODCTA.IsNull) or (Tb_DarCRCODCTA.Value=0) then
   exit;
if Tb_Dar.State in [dsEdit,dsInsert] then
   begin
   mDadosRetornoCaixa:=fTestarCADBCO(false,Tb_DarCRCODCTA.AsString);
   if mDadosRetornoCaixa.pOk=false then
      begin
      DBE_CodCta.SetFocus;
      end
   else
      begin
      Tb_DarCRNOMCTA.Value:=mDadosRetornoCaixa.pNome;
      if not DBCB_NOMBCO.Focused then
         macbanco:=true;
      end;
   end;

end;

procedure TFrm_Dar.DBE_CODDEPExit(Sender: TObject);
begin
  inherited;
macdep:=false;

if Tb_Dar.State in [dsEdit,dsInsert] then
   begin
   Tb_DarCRNOMDEP.Value:=' ';
   mDadosRetornoCaixa := fTestarCADDEP_CX(false,Tb_DarCRCODDEP.AsString);
   if mDadosRetornoCaixa.pOk=false then
      begin
      DBE_CODDEP.SetFocus;
      end
   else
      begin
      Tb_DarCRNOMDEP.Value:=mDadosRetornoCaixa.pNome;
      if not DBCB_NOMDEP.Focused then
         macdep:=true;
      end;
   end;
end;

procedure TFrm_Dar.DBE_CODCCUExit(Sender: TObject);
begin
  inherited;
macccu:=false;
if Tb_Dar.State in [dsEdit,dsInsert] then
   begin
   Tb_DarCRNOMCC.Value:=' ';
   if Trim(Tb_DarCRCODCC.Value)<>'' then
      begin
      mDadosRetornoCaixa:=fTestarCADCC(false,Tb_DarCRCODCC.AsString);
      if mDadosRetornoCaixa.pOk=false then
         begin
         DBE_CODCCU.SetFocus;
         end
      else
         begin
         Tb_DarCRNATDC.Value:=mDadosRetornoCaixa.pNatDC;
         Tb_DarCRNOMCC.Value:=mDadosRetornoCaixa.pNome;
         if not DBCB_NOMCCU.Focused then
            macccu:=true;
         end;
      end;
   end;

end;

procedure TFrm_Dar.DBE_CodCtaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Tb_DarCRCODCTA.Value:=ValFloat(fChamaBco(0,'frm_Dar',Key));
   DBE_CodCtaExit(self);
   key:=#0;
   DM1.Query5.Close;
   DM1.Query5.SQL.Clear;
   DM1.Query5.SQL.Add('Select BCBANCO,BCCODBCO from CADBCO where 1=1 '
                      + fFiltrosMultiEmpresa('BCCODEMP','CADBCO',codemp)
                       );

   DM1.Query5.Open;
   DBCB_NOMBCO.Items.Clear;
   While not DM1.Query5.Eof do
      begin
      DBCB_NOMBCO.Items.Add(DM1.Query5.fieldByName('BCBANCO').AsString+'['+DM1.Query5.fieldbyName('BCCODBCO').AsString+']');
      DM1.Query5.Next;
      end;
   end;


end;

procedure TFrm_Dar.DBE_CODDEPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if Tb_Dar.State in [DsEdit, DsInsert] then
   begin
   if key=114 then
      begin
      Tb_DarCRCODDEP.Value:=fChamaDeptoCX(0,'frm_Dar','');
      DBE_CODDEPExit(self);
      key:=0;
      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select DNOME,DCODDEP from CADDEP where 1=1 '
                  + fFiltrosMultiEmpresa('DPCODEMP','CADDEP',codemp)
                   );

      DM1.Query5.Open;
      DBCB_NOMDEP.Items.Clear;
      While not DM1.Query5.Eof do
         begin
         DBCB_NOMDEP.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
         DM1.Query5.Next;
         end;

      end;
   end;


end;

procedure TFrm_Dar.DBE_CODCCUKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if Tb_Dar.State in [DsEdit, DsInsert] then
   begin
   if key=114 then
      begin
      Tb_DarCRCODCC.Value:=fChamaCCU(0,'frm_Dar','');
      Tb_DarCRNATDC.Value:=DM1.Tb_CCUCCNAT.Value;
      DBE_CODCCUExit(self);
      key:=0;
      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select CCNOME,CCNAT,CCCODCCU from CADCCU WHERE 1=1 '
                      + fFiltrosMultiEmpresa('CCCODEMP','CADCCU',codemp)
                      );

      DM1.Query5.Open;
      DBCB_NOMCCU.Items.Clear;
      While not DM1.Query5.Eof do
         begin
         DBCB_NOMCCU.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                           +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                           +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');
         DM1.Query5.Next;
         end;
      end;
   end;
end;

procedure TFrm_Dar.DBCB_NOMBCOEnter(Sender: TObject);
begin
  inherited;
if Tb_Dar.State in [dsEdit,dsInsert] then
   begin
   with DBCB_NOMBCO do ItemIndex:=Items.IndexOf(Tb_DarCRNOMCTA.Value
                                 +'['+Tb_DarCRCODCTA.AsString+']');
   DBCB_NOMBCO.text:=DBCB_NOMBCO.Items.Strings[DBCB_NOMBCO.ItemIndex];
   if not lbl_obs.Visible then
      lbl_obs.Visible:=true;
   end;
if macbanco then
   DBE_CODDEP.SetFocus;
macbanco:=false;

end;

procedure TFrm_Dar.DBCB_NOMDEPEnter(Sender: TObject);
begin
  inherited;
if Tb_Dar.State in [dsEdit,dsInsert] then
   begin
   with DBCB_NOMDEP do ItemIndex:=Items.IndexOf(Tb_DarCRNOMDEP.Value
                                    +'['+Tb_DarCRCODDEP.AsString+']');
   DBCB_NOMDEP.text:=DBCB_NOMDEP.Items.Strings[DBCB_NOMDEP.ItemIndex];
   if not lbl_obs.Visible then
      lbl_obs.Visible:=true;
   end;
if macdep then
   DBE_CODCCU.SetFocus;
macdep:=false;



end;

procedure TFrm_Dar.DBCB_NOMCCUEnter(Sender: TObject);
begin
  inherited;
if Tb_Dar.State in [dsEdit,dsInsert] then
   begin
   with DBCB_NOMCCU do ItemIndex:=Items.IndexOf(Tb_DarCRNOMCC.AsString
                                    +'-'+Tb_DarCRNATDC.AsString
                                    +'['+Tb_DarCRCODCC.AsString+']');
   DBCB_NOMCCU.text:=DBCB_NOMCCU.Items.Strings[DBCB_NOMCCU.ItemIndex];
   lbl_obs.Top:=55;
   if not lbl_obs.Visible then
      lbl_obs.Visible:=true;
   end;
if macccu then
   DBE_DESCMOV.SetFocus;
macccu:=false;

end;

procedure TFrm_Dar.DBCB_NOMBCOExit(Sender: TObject);
begin
  inherited;
//if DBCB_NOMBCO.ItemIndex<0 then
   with DBCB_NOMBCO do ItemIndex:=Items.IndexOf(DBCB_NOMBCO.Text);
DBCB_NOMBCO.text:=DBCB_NOMBCO.Items.Strings[DBCB_NOMBCO.ItemIndex];
if trim(DBCB_NOMBCO.Text)='' then
   Tb_DarCRCODCTA.Value:=0
else
   begin
   Tb_DarCRCODCTA.Value:=fsonumero(fExtraiCodigoEntreChaves(DBCB_NOMBCO.Text));
   DBE_CodCtaExit(Self);
   end;
if lbl_obs.Visible then
   lbl_obs.Visible:=false;

end;

procedure TFrm_Dar.DBCB_NOMDEPExit(Sender: TObject);
begin
  inherited;
//if DBCB_NOMDEP.ItemIndex<0 then
   with DBCB_NOMDEP do ItemIndex:=Items.IndexOf(DBCB_NOMDEP.Text);
DBCB_NOMDEP.text:=DBCB_NOMDEP.Items.Strings[DBCB_NOMDEP.ItemIndex];
if trim(DBCB_NOMDEP.Text)='' then
   Tb_DarCRCODDEP.Value:=''
else
   begin
   Tb_DarCRCODDEP.Value:=fExtraiCodigoEntreChaves(DBCB_NOMDEP.Text);
   DBE_CODDEPExit(Self);
   end;
if lbl_obs.Visible then
   lbl_obs.Visible:=false;

end;

procedure TFrm_Dar.DBCB_NOMCCUExit(Sender: TObject);
begin
  inherited;
//if DBCB_NOMCCU.ItemIndex<0 then
   with DBCB_NOMCCU do ItemIndex:=Items.IndexOf(DBCB_NOMCCU.Text);
DBCB_NOMCCU.text:=DBCB_NOMCCU.Items.Strings[DBCB_NOMCCU.ItemIndex];
if trim(DBCB_NOMCCU.Text)='' then
   Tb_DarCRCODCC.Value:=''
else
   begin
   Tb_DarCRCODCC.Value:=fExtraiCodigoEntreChaves(DBCB_NOMCCU.Text);
   DBE_CODCCUExit(Self);
   end;
if lbl_obs.Visible then
   lbl_obs.Visible:=false;

end;

procedure TFrm_Dar.dbrg_dupExit(Sender: TObject);
begin
  inherited;
if Tb_DarCRCODCLI.AsFloat<>0 then
   db_codcliExit(Self);

end;

procedure TFrm_Dar.db_codfpgtoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Tb_DarCRCODFPGTO.Value:=fSonumero(fChamaFPag(0,'frm_dar',key));
   db_codfpgtoExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Dar.db_codfpgtoExit(Sender: TObject);
begin
  inherited;
if Tb_DarCRCODFPGTO.AsFloat<>0 then
   begin
   DM1.Tb_FP.Close;
   DM1.Tb_FP.SQL.Clear;
   DM1.Tb_FP.SQL.add('Select * from CADFP ');
   DM1.Tb_FP.SQL.Add(' where FPCODIGO=0'+Tb_DarCRCODFPGTO.AsString);
   DM1.Tb_FP.Open;
   if DM1.Tb_FP.Eof then
      begin
      fmensagem('Forma de Pagamento não Cadastrado!',0,['0'],0);
      db_codfpgto.SetFocus;
      end;
   end;



end;

procedure TFrm_Dar.SB_ExportarTituloClick(Sender: TObject);
begin
  inherited;
if (Tb_DarCRDUP.AsInteger<>1) and (Tb_DarCRDUP.AsInteger<>2)
   and (Tb_DarCRDUP.AsInteger<>6) and (Tb_DarCRDUP.AsInteger<>16) then
   begin
   fmensagem('Válido somente para Cheques!',0,['0'],0);
   exit;
   end;
if Tb_DarCRSTATUS.AsInteger=2 then
   begin
   fmensagem('Cheques ja Baixado Invalido!',0,['0'],0);
   exit;
   end;

if fmensagem('Quer Realmente Exportar o cheque selecionado?',0,['1','2'],2)<>mrYes then
   begin
   exit;
   end;

flcadpar02(0,0,CodUsr,IntToStr(52));
if DM4.Tb_Par02PA2PDSN.Value = 'S' then
  begin
  mValidarSenha.pTipo:=0;
  mValidarSenha.pCodusr:=codusr;
  mValidarSenha.pCodSen:=52;
  mValidarSenha.pCodEmp:=0;
  mValidarSenha.pCodCli:=0;
  mValidarSenha.pLotSeq:=0;
  mValidarSenha.pChave :=DM1.Tb_ChqCHNUMERO.Value;
  mValidarSenha.pOrdem :=0;
  mValidarSenha.pTexto :='Senha para Exportar Financeiro para cheques';
  mValidarSenha.pChave_St:='';
  mValidarSenha.pDesc_requisitado :=0;

  if fValidaSenha(mValidarSenha)<>0 then
    begin
    fMensagem('Alteração não Aceita!',0,['0'],0);
    Edit1.SetFocus;
    exit;
    end;
  end;

flcadcli(1,0,Tb_DarCRCODCLI.AsString);
fCriarChqCli(Tb_DarCRCODEMP.Value,
             Tb_DarCRNUMERO.Value,
             Tb_DarCRCODBCO.Value,
             Tb_DarCRCODCLI.Value,
             DM1.Tb_CliCCPF.Value,
             Tb_DarCRVALOR.Value,
             0,
             0,
             0,
             0,
             0,
             Tb_DarCRCODCTA.Value,
             0,
             0,

                  ls_codldr,
                  0, // quantidade de prorrogacoes
                  0, // codigo da forma de pagamento
                  codcai, // codigo do caixa
                  0, // deposito 0-sim 1-nao



             ' ',
             '086',
             DM1.Tb_CliCRAZAO.Value,
             Tb_DarCRCHD_AGENCIA.Value,
             Tb_DarCRCHD_CC.Value,
             DM1.Tb_CliCRG.Value,
             '',
             Tb_DarCRCODCC.Value,
             Tb_DarCRCODDEP.Value,
             Tb_DarCRDESCMV.Value,
             Tb_CR_ObsCROBS.AsString,
             ' ', // obs linha 02

             Tb_DarCRNOMCTA.AsString,
             pdatanula,
             Tb_DarCRDTEMIS.Value,
             Tb_DarCRDTVCTO.Value,
             pdatanula,
             pdatanula, // data da baixa
             pdatanula ); // data do ultimo deposito
Tb_Dar.Delete;
fmensagem('Cheque Transferido!',0,['0'],0);
end;

procedure TFrm_Dar.db_codbcoExit(Sender: TObject);
begin
  inherited;

mDadosRetornoCaixa :=fTestarCADBCO(false,Tb_DarCRCODBCO.AsString);
if mDadosRetornoCaixa.pOk=false then
   begin
   MessageDlg('Banco '+Tb_DarCRCODBCO.AsString+' não cadastrado!',mtWarning,[mbOk],0);
   db_codbco.SetFocus;
   exit;
   end;

if Tb_DarCRTCB.AsInteger<2 then
   begin
   if Tb_DarCRCODBCO.AsFloat=0 then
      Tb_DarCRTCB.Value:=0
   else
      Tb_DarCRTCB.Value:=1;
   end;

end;

procedure TFrm_Dar.DBCB_NOMBCOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;


if Tb_Dar.State in [DsEdit, DsInsert] then
   begin
   if key=113 then
      begin
      Tb_DarCRCODBCO.Value:=ValFloat(fChamaBco(0,'frm_Dar',''));
      DBE_CodCtaExit(self);
      key:=0;

      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select BCBANCO,BCCODBCO from CADBCO where 1=1 '
                      + fFiltrosMultiEmpresa('BCCODEMP','CADBCO',codemp)
                       );

      DM1.Query5.Open;
      DBCB_NOMBCO.Items.Clear;
      While not DM1.Query5.Eof do
         begin
         DBCB_NOMBCO.Items.Add(DM1.Query5.fieldByName('BCBANCO').AsString+'['+DM1.Query5.fieldbyName('BCCODBCO').AsString+']');
         DM1.Query5.Next;
         end;
      end;
   end;


end;

procedure TFrm_Dar.Src_DarDataChange(Sender: TObject; Field: TField);
var
mIdDar: String;
begin
  inherited;
if (moper=0) and (Tb_Dar.State in [dsEdit,dsInsert]) then
else
   begin

   if Tb_DarCRCOMPETENCIA_DTINICIO.AsDateTime>pdatanula then
      begin
      edt_competencia_mes.Text         :=FormatDatetime('mm', Tb_DarCRCOMPETENCIA_DTINICIO.AsDateTime);
      edt_competencia_ano.Text         :=FormatDatetime('yyyy', Tb_DarCRCOMPETENCIA_DTINICIO.AsDateTime);
      end
   else
      begin
      edt_competencia_mes.Clear;
      edt_competencia_ano.Clear;
      end;

  if Tb_DarCRCOMPETENCIA_TIPO.asinteger=1 then
     begin
     edt_competencia_mes.Visible  :=false;
     lbl_competencia_barra.Visible:=false;
     end
  else
     begin
     edt_competencia_mes.Visible  :=true;
     lbl_competencia_barra.Visible:=true;
     end;

   if trim(Tb_DarIDDAR.AsString)='' then
      begin
      if not fLerGenerico01_campos('CADDAR','ROWID',' CRNUMERO='+fdeixanum(Tb_DarCRNUMERO.AsString)
         +' and CRDESD='+QuotedStr(Tb_DarCRDESD.AsString)+' and CRCODCLI='+fdeixanum(Tb_DarCRCODCLI.AsString)
         +' and CRDTEMIS='+QuotedStr(FormatDateTime(fdt2, Tb_DarCRDTEMIS.asdatetime))
         +' and CRDUP='+fdeixanum(Tb_DarCRDUP.AsString)+' and CRCODEMP='+fdeixanum(Tb_DarCRCODEMP.AsString),mIdDar) then
         begin
//         MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
         exit;
         end;
      end
   else
      mIdDar:=Tb_DarIDDAR.AsString;


   if (mAlterouObs=false) AND  (midDar_src<>mIdDar)  then
      begin
      flercaddar_obs;
      end;


   if (middar_src<>mIdDar)  then
      begin
      if DM1_ADO.ADOConnection1.connected=false then
         begin
         DM1_ADO.ADOConnection1.Close;
         DM1_ADO.ADOConnection1.ConnectionString:='Provider=MSDAORA.1;Password=DEZENOVE;User ID='+Banco_usuario+';Data Source='+Banco_ServerName+';Persist Security Info=True';
         DM1_ADO.ADOConnection1.Open;
         end;

      Tb_CR_Imagem.close;
      Tb_CR_imagem.Connection:=DM1_ADO.ADOConnection1;
      Tb_CR_Imagem.Parameters.ParamByName('ROWID').Value    :=mIdDar;
      Tb_CR_Imagem.open;
      middar_src :=mIdDar;
      end;

   if PC1.ActivePage=tsEventosCobranca then
      begin
      if  mTitRemLido_RETORNO<>Tb_DarCRCHAVE_ID.AsInteger then
          begin
          fLerCadRemessa;
          fLerCadRetorno;
          fLerComissoes;

          end;
      end;

   end;



end;


procedure TFrm_Dar.fLercaddar_obs;
begin

Tb_CR_Obs.close;
Tb_CR_Obs.SQL.Clear;
Tb_CR_obs.Sql.Add('Select CROBS from CADDAR where CRNUMERO=:NUMERO '
                 +' and CRDESD=:DESD '
                 +' and CRCODEMP=:CODEMP '
                 +' and CRSEQ=:SEQ '
                 +' and CRDUP=:DUP '
                 +' and CRDTEMIS=:DTEMIS ');
Tb_CR_Obs.ParamByName('NUMERO').AsFloat   :=Tb_DarCRNUMERO.AsFloat;
Tb_CR_Obs.ParamByName('DESD').AsString    :=Tb_DarCRDESD.AsString;
Tb_CR_Obs.ParamByName('CODEMP').AsFloat   :=Tb_DarCRCODEMP.AsFloat;
Tb_CR_Obs.ParamByName('SEQ').AsFloat      :=Tb_DarCRSEQ.AsFloat;
Tb_CR_Obs.ParamByName('DUP').AsFloat     :=Tb_DarCRDUP.AsFloat;
Tb_CR_Obs.ParamByName('DTEMIS').AsDateTime:=Tb_DarCRDTEMIS.AsFloat;
try
   Tb_CR_Obs.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(Tb_CR_obs,1870,'SGE '+e.message,'CADDAP');
   end;
   end;
end;

procedure TFrm_Dar.sb_emidupClick(Sender: TObject);
var
x: Integer;
begin
  inherited;
if Tb_DarCRNUMERO.IsNull then
   begin
   fmensagem('Favor Selecionar uma Duplicata Valida!',0,['0'],0);
   exit;
   end;
if (Tb_DarCRCODBCO.AsInteger>0) then
   begin
   if fmensagem('Este titulo pode ser emitido Boleto, quer realmente emitir a duplicata?',0,['1','2'],2)<>mrYes then
      exit;
   end
else
   begin
   if fmensagem('Quer realmente emitir a duplicata?',0,['1','2'],2)<>mrYes then
      exit;
   end;


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADVEN','VCODEMP','CRCODEMP','VCODVEN','CRCODVEN');
la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADBCO','BCCODEMP','CRCODEMP','BCCODBCO','CRCODBCO');
la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADCLI','CCODEMP' ,'CRCODEMP','CCODCLI' ,'CRCODCLI');
DM2.Tb_Dar.Close;
DM2.Tb_Dar.SQL.Clear;
DM2.Tb_Dar.SQL.Add('Select CRCODEMP,CRNUMERO,CRDESD,CRDUP,CRCODCLI,CRVALOR,CRDTEMIS, '
             +'       CRDTVCTO,CRDTPAG,CRDTBX,CRNPED,CRORDEM,CRVALPAG,CRCODVEN,'
             +'        CROBS,CRDESC,CRDEVOL,CRJUROS,CRCODBCO,CRLOTE,CRICMSR,CRDESCF, '
             +'       CRDTDESCF,CRJURD,CREMIDUP,CREMIBLQ,CRVALFRE,CRNOSNUM,CRTIPCOB, '
             +'       CRCODLDR,CRSTATUS,CRTOTNF,CRNFACUM,CRNUMPARC,CRQTDPARC, '
             +'        CNOMRED,CRDTVCTO-CRDTEMIS AS PRAZO, CRMULTA,'
             +'        VNOME,BCBANCO,CRAZAO,CDENOM,CUF,CCIDADE,CBAIRRO,CLOG,CNUM,CCOMPL,'
             +'        CFONE02 AS CFONERES,CFAX,CFONE01 AS CFONECOM,CCELULAR, '
             +'       CCIDADEC,CBAIRROC,CENDERC,CUFC,CCEPC,CRTOTCGRU,CRTOTSGRU,'
             +'        RAZAO,FANTASIA, '
             +'       CIDADE,UF,CGC,INSCRICAO, '
                   +' CRID_NEW, CRID_PED01_NEW, CRID_LDR_NEW, '

             +'       FONE,FAX,E_MAIL from CADDAR,CADEMP'+iif(la_tabelas='','',',')+la_tabelas
             +'       '+la_Join
             +'       where CODEMP=0'+Tb_DarCRCODEMP.AsString
             + iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',' and CRCODEMP=0'+Tb_DarCRCODEMP.AsString)
             +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
DM2.Tb_Dar.SQL.add(' and CRNUMERO=0'+Tb_DarCRNUMERO.AsString);
DM2.Tb_Dar.SQL.add(' and CRDESD='+chr(39)+Tb_DarCRDESD.AsString+chr(39));
DM2.Tb_Dar.SQL.add(' and CRDUP=0'+Tb_DarCRDUP.AsString);
//DM2.Tb_Dar.SQL.add(' and CREMIDUP=0');
DM2.Tb_Dar.SQL.add(' and CRDTEMIS='+chr(39)+FormatDatetime(fdt,Tb_DarCRDTEMIS.Value)+chr(39));
try
   DM2.Tb_Dar.Open;
except
   DM2.Tb_Dar.SQL.SaveToFile(mpastatemp + 'SQL.TXT');
   end;
if DM2.Tb_Dar.IsEmpty then
   begin
   fmensagem('titulo nao encontrado',0,['0','1'],0);
   exit;
   end;
mtipo:=1;
if DM4.Tb_Par01PDUP_PADRAO.Value=0 then
   FEmiteDP(0, Tb_DarCRCODEMP.AsInteger)
else
   begin
   testeform := TFrm_Dar(FindGlobalComponent('QuickRep_dup'));
   if testeform=nil then
      Application.CreateForm(TQr_Dup, QuickRep_dup)
   else
      begin
      QuickRep_dup.Free;
      QuickRep_dup:=nil;
      Application.CreateForm(TQr_Dup, QuickRep_dup);
      end;
   QuickRep_dup.Endereco.Caption:='Endereço: '+Trim(DM1.Tb_EmpENDERECO.Value)+' '+DM1.Tb_EmpBAIRRO.Value;
   QuickRep_dup.CepCidade.Caption:='CEP.: '+DM1.Tb_EmpCEP.Value+' - '+Trim(DM1.Tb_EmpCIDADE.Value)+' - '+DM1.Tb_EmpUF.Value;
   QuickRep_dup.CNPJ.Caption     :='C.N.P.J.: '+FormatFloat('00"."000"."000"/"0000"-"00',DM1.Tb_EmpCGC.Value);
   QuickRep_dup.IE.Caption       :='Inscrição Estadual.: '+DM1.Tb_EmpINSCRICAO.Value;
   fSalvarImagem('LOGO4','C:\SGE\LOGO4.JPG');

   if FileExists(DM1.Tb_PargerPCAMINHO.Value+'LOGO4.jpg') then
      QuickRep_dup.QRImage1.Picture.LoadFromFile(DM1.Tb_PargerPCAMINHO.Value+'LOGO4.jpg');
   if FileExists(DM1.Tb_PargerPCAMINHO.Value+'LOGO5.jpg') then
      QuickRep_dup.QRImage2.Picture.LoadFromFile(DM1.Tb_PargerPCAMINHO.Value+'LOGO5.jpg');
   QuickRep_dup.PrinterSettings.PrinterIndex := -1;
   if flcadimp_sys(1,Tb_DarCRCODEMP.AsInteger,0,'DUPLIC_LAS') then
      begin
      for x:=0 to Printer.printers.Count-1 do
         begin
         if DM4.Tb_Imp_SysCIPORTA.Value=printer.Printers[x] then
            begin
            QuickRep_dup.PrinterSettings.PrinterIndex := x;
            break;
            end
         end;
      end;
   try
      QuickRep_dup.Preview;
   except
      fmensagem('Erro ao Tentar Imprimir a Duplicata!',0,['0'],0);
      end;
   QuickRep_dup.Free;
   QuickRep_dup:=NIL;
   end;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query2.Params.CreateParam(ftString,'NUMERO',ptInput);
DM1.Query2.Params.CreateParam(ftString,'DESD',ptInput);
DM1.Query2.Params.CreateParam(ftString,'DTEMIS',ptInput);
DM1.Query2.SQL.add('Update CADDAR set CREMIDUP=1 '
      +' where CRCODEMP=:CODEMP '
      +' and   CRNUMERO=:NUMERO '
      +' and   CRDESD  =:DESD '
      +' and   CRDUP   =:DUP '
      +' and   CRDTEMIS=:DTEMIS and CREMIDUP=0');
DM1.Query2.ParamByName('CODEMP').AsFloat   :=Tb_DarCRCODEMP.Value;
DM1.Query2.ParamByName('NUMERO').AsFloat   :=Tb_DarCRNUMERO.Value;
DM1.Query2.ParamByName('DESD').AsString    :=Tb_DarCRDESD.Value;
DM1.Query2.ParamByName('DUP').AsFloat      :=Tb_DarCRDUP.Value;
DM1.Query2.ParamByName('DTEMIS').AsDateTime:=Tb_DarCRDTEMIS.Value;
try
   DM1.Query2.ExecSQL;
except
   ex_erroSql(02,173,'Manped','CADDAR');
   fdm1StartCommit;
   end;
DM2.Tb_Dar.Close;

mtipo:=0;

end;

procedure TFrm_Dar.sb_emiblqClick(Sender: TObject);
var
x: Integer;
begin
  inherited;
if Tb_DarCRNUMERO.IsNull then
   begin
   fmensagem('Favor Selecionar uma Duplicata Valida!',0,['0'],0);
   exit;
   end;
if (Tb_DarCRCODBCO.AsInteger=0) then
   begin
   fmensagem('Este titulo nao possui vinculo com nenhum banco para cobranca!',0,['0'],0);
   exit;
   end;
if not flcadbco(1,0,0,Tb_DarCRCODBCO.AsString) then
   begin
   fmensagem('o Banco deste titulo nao foi encontrado!',0,['0'],0);
   exit;
   end;
if trim(mNomeJpeg)='' then
   begin
   if fmensagem('Quer realmente emitir o boleto bancario?',0,['1','2'],2)<>mrYes then
      exit;
   if form_ebol_dar=nil then
      Application.CreateForm(Tfrm_ebol, form_ebol_dar)
   else
      begin
      form_ebol_dar.Free;
      form_ebol_dar:=nil;
      Application.CreateForm(Tfrm_ebol, form_ebol_dar);
      end;
   end;
flcadbco(1,Tb_DarCRCODEMP.AsInteger,0,Tb_DarCRCODBCO.AsString);
form_ebol_dar.Tb_Dup.Close;
form_ebol_dar.Tb_Dup.Sql.Clear;
form_ebol_dar.Tb_Dup.SQl.Add('Select CRCODEMP,CRDTVCTO,CRDTEMIS,CRNUMERO,CRDESD,CRDUP,CRNOSNUM, '
                       +'       CRDNOSNUM,CRCODDIG,CRCODBAR,CRACEITE,CRESPECIE,CRCODBCO, '
                       +'       CRINST01,CRINST02,CRINST03,CRINST04, '
                       +'       CRVALOR,CRDESCF,CRDTDESCF,CRJURD,CRDESCD,'
                       +'       CRNFACUM,CRCODCLI,CRCODVEN,CRTABPV,CRCODPV '
                       +' ,CRMULTA,CRQTDDM, CRCODFPGTO '
                       +' ,CRQTDPARC,CRNUMPARC,CRCOMPETENCIA_DTINICIO ,CRID_NEW'
                       +' from caddar where CRSTATUS<>9 ');
if not DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
   form_ebol_dar.Tb_Dup.SQl.add(' and  CRCODEMP=0'+Tb_DarCRCODEMP.AsString);
form_ebol_dar.Tb_Dup.SQL.Add(' and CRNUMERO=0'+Tb_DarCRNUMERO.AsString
                      +' and CRDESD='+chr(39)+Tb_DarCRDESD.Value+chr(39)
                      +' and CRDUP=0'+Tb_DarCRDUP.AsString);
form_ebol_dar.Tb_Dup.SQL.add(' and CRDTEMIS='+chr(39)+FormatDatetime(fdt,Tb_DarCRDTEMIS.Value)+chr(39)
                      +' Order by CRNUMERO,CRDESD');
form_ebol_dar.Tb_Dup.Open;
mtipo:=1;
fGerarEvento('2632 abriu tabelas');
if not form_ebol_dar.Tb_Dup.IsEmpty then
   begin
   fGerarEvento('2635 while');
   if trim(form_ebol_dar.Tb_Dup.fieldbyname('CRNOSNUM').AsString)='' then
      begin
      fGerarEvento('2638  atalizar nosso numero');

      if DM4.Tb_Par01PBOL_PADRAO.Value=0 then
         begin
         form_ebol_dar.fAtualizaNosNum(1, // nao calcula codigo barras
            iif(CB_SUBSTNOSNUM.Checked,1,0),
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
            iif(CB_SUBSTNOSNUM.Checked,1,0),
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
      fGerarEvento('2666 vai emitir');

      form_ebol_dar.mDadosBoleto.pTipo  :=1;
      form_ebol_dar.mDadosBoleto.pCodEmp:=Tb_DarCRCODEMP.AsInteger;
      form_ebol_dar.mDadosBoleto.pCodBco:=Tb_DarCRCODBCO.AsInteger;
      form_ebol_dar.mDadosBoleto.pNumIni:=Tb_DarCRNUMERO.AsInteger;
      form_ebol_dar.mDadosBoleto.pNumFin:=Tb_DarCRNUMERO.AsInteger;
      form_ebol_dar.mDadosBoleto.pDtIni :=pdatanula;
      form_ebol_dar.mDadosBoleto.pDtFin :=pdatanula;
      form_ebol_dar.mDadosBoleto.pParc  :=Tb_DarCRDESD.AsString;
      form_ebol_dar.mDadosBoleto.pPend  :=true;
      form_ebol_dar.mDadosBoleto.pChavePed  :=0;
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

         if DM4.Tb_Par01PBOL_PADRAO.Value=2 then
            begin
            if not (DM1.Tb_BcoBCLOGO.IsNull) and (DM1.Tb_BcoBCLOGO.Value<>'') then
               begin
               DM1.Tb_BcoBCLOGO.SaveToFile('C:\SGE\LOGBAN.JPG');
               form_ebol_dar.rlLogo01.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
               form_ebol_dar.rlLogo02.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
               form_ebol_dar.rlLogo03.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
             end;
            if flcadimp_sys(1,Tb_DarCRCODEMP.AsInteger,0,'BOLETAS_LA') then
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
                 fGerarEvento('271 salvando boleto '+mNomeJpeg);

                 form_ebol_dar.RL_BOLETAS.SaveToFile(mNomeJPeg)
                 end
              else
                 begin
                 fGerarEvento('2720 imprimindo direto '+mNomeJpeg);

//                 form_ebol_dar.RL_BOLETAS.PrintDialog:=false;
                 form_ebol_dar.RL_BOLETAS.PreviewModal;
//                 form_ebol_dar.RL_BOLETAS.PrintDialog:=true;
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
            if flcadimp_sys(1,Tb_DarCRCODEMP.AsInteger,0,'BOLETAS_LA') then
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
                 form_ebol_dar.RL_BOLETAS.SaveToFile(mNomeJPeg)
              else
                 begin
                  fGerarEvento('2742 no preview modal');
//                 form_ebol_dar.RL_BOLETAS.PrintDialog:=false;
                 form_ebol_dar.RL_BOLETAS.PreviewModal;
//                 form_ebol_dar.RL_BOLETAS.PrintDialog:=true;
                 END
            except
               fmensagem('Erro ao Tentar Imprimir a Boleta Grande!',0,['0'],0);
               end;
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
fGerarEvento('2771 abriu novamente');

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
mtipo:=0;
end;

procedure TFrm_Dar.SB_DIVIDEClick(Sender: TObject);
begin
  inherited;

  
if Tb_Dar.State in [dsedit,dsInsert] then
   begin
   fmensagem('O Titulo Esta em modo de alteração Favor Grava-lo Primeiro!',0,['0'],0);
   exit;
   end;

if Tb_DarCRSTATUS.AsInteger>0 then
   begin
   fmensagem('Valido somente para títulos em aberto!',0,['0'],0);
   exit;
   end;

if form_divtit=nil then
   Application.CreateForm(Tfrm_divtit, form_divtit)
else
   begin
   form_divtit.Free;
   form_divtit:=nil;
   Application.CreateForm(Tfrm_divtit, form_divtit)
   end;

if not flcaddar(8,Tb_DarCRCODEMP.AsInteger,0,0,0,Tb_DarCRNUMERO.AsString,
                     Tb_DarCRDESD.AsString,
                     Tb_DarCRDUP.AsString,
                     Tb_DarCRDTEMIS.AsDateTime,'') then
   begin
   MessageDlg('Erro ao ler o o arquivo de contas a receber!',mtWarning,[mbOk],0);
   exit;
   end;

form_divtit.TARBAN.Text:=FormatFloat(mcasas, Tb_DarCRTARBAN.Value);
form_divtit.CODBCO.Text:=Tb_DarCRCODBCO.AsString;
form_divtit.NOMBCO.Text:=Tb_Darnombco.AsString;
form_divtit.ShowModal;
form_divtit.Free;
form_divtit:=NIL;

if Tb_Dar.State in [dsEdit,dsInsert] then
   begin
   moper:=1;
   mdar_codemp:=Tb_DarCRCODEMP.AsFloat;
   mdar_codecf:=Tb_DarCRCODECF.AsFloat;
   mdar_numero:=Tb_DarCRNUMERO.AsFloat;
   mdar_desd  :=Tb_DarCRDESD.asString;
   mdar_dup   :=Tb_DarCRDUP.AsFloat;
   mdar_dtemis:=Tb_DarCRDTEMIS.AsDatetime;
   CANCELARClick(self);
//   GRAVARClick(Self);
   CAMPO.ItemIndex:=0;
   CAMPOExit(Self);
   Edit1.Text:=Tb_DarCRNUMERO.AsString;
   BBnAtuClick(Self);
   end;
end;

procedure TFrm_Dar.sbBolJPegClick(Sender: TObject);
begin
  inherited;
if Tb_DarCRNUMERO.IsNull then
   begin
   fmensagem('Favor Selecionar uma Duplicata Valida!',0,['0'],0);
   exit;
   end;
if (Tb_DarCRCODBCO.AsInteger=0) then
   begin
   fmensagem('Este titulo nao possui vinculo com nenhum banco para cobranca!',0,['0'],0);
   exit;
   end;
if not flcadbco(1,0,0,Tb_DarCRCODBCO.AsString) then
   begin
   fmensagem('o Banco deste titulo nao foi encontrado!',0,['0'],0);
   exit;
   end;

mNomeJpeg:='';


if form_ebol_dar=nil then
   Application.CreateForm(Tfrm_ebol, form_ebol_dar)
else
   begin
   form_ebol_dar.Free;
   form_ebol_dar:=nil;
   Application.CreateForm(Tfrm_ebol, form_ebol_dar);
   end;

if form_ebol_dar.SavePictureDialog1.Execute then
   begin
   mNomeJpeg:=form_ebol_dar.SavePictureDialog1.FileName;
   mNomeJpeg:=fRetiraExtensao(mNomeJpeg)+'.PDF';
   sb_emiblqClick(self);
   mNomeJpeg:='';
   end;
form_ebol_dar.Free;
form_ebol_dar:=nil;

end;

procedure TFrm_Dar.sbnformaClick(Sender: TObject);
var
mqtdd,mqtdf,mini:Integer;
Form_forma_pag:tFrm_FormaPgto;

begin
  inherited;
if not Tb_Dar.Active then
   begin
   fmensagem('Favor Aplicar a Seleção!',0,['0'],0);
   exit;
   end;
{
if Tb_DarCRSTATUS.Value<1 then
   begin
   fmensagem('Título Em Aberto!',0,['0'],0);
   exit;
   end;
}   
Application.CreateForm(TFrm_FormaPgto, Form_Forma_Pag);
Form_forma_pag.lbl_obs.Caption:='Titulo '+Tb_DarCRNUMERO.AsString+'/'+Tb_DarCRDESD.AsString+' Valor: '+formatFloat(mcasas, Tb_DarCRVALOR.AsFloat)
                              +' Vencimento '+FormatDateTime(fdt2, Tb_DarCRDTVCTO.AsDateTime);
Form_Forma_Pag.fCarregarFormas(0,Tb_DarCRNUMERO.AsFloat,Tb_DarCRCODCLI.AsFloat,Tb_DarCRDESD.Asstring,Tb_DarCRDUP.Asinteger
,Tb_DarCRCODEMP.asinteger,0,Tb_DarCRDTEMIS.AsDateTime);
Form_Forma_Pag.ShowModal;
Freeandnil(Form_Forma_pag);

end;

procedure TFrm_Dar.cb_listarClick(Sender: TObject);
begin
  inherited;
if cb_listar.ItemIndex=1 then
   begin
   Tb_Dar.Filter:='CRSTATUS<2';
   Tb_Dar.Filtered:=true;
   end
else if cb_listar.ItemIndex=2 then
   begin
   Tb_Dar.Filter:='CRSTATUS>1';
   Tb_Dar.Filtered:=true;
   end
else
   begin
   Tb_Dar.Filter:='';
   Tb_Dar.Filtered:=false;
   end;

end;

procedure TFrm_Dar.db_valorExit(Sender: TObject);
begin
  inherited;
{if mvalor_dup_ant>0 then
   begin
   Tb_DarCRVALOR_acres.asfloat:=TB_DarCRVALOR_ACRES.AsFloat+(Tb_DarCRVALOR.Asfloat-mValor_Dup_Ant);
   if Tb_DarCRVALOR_Acres.AsFloat<0 then
     Tb_DARCRVALOR_ACRES.asfloat :=0;
   end;
 }

if (Tb_DarCRVALOR.AsFloat>0) and (Tb_DarCRTOTNF.AsFloat=0) then
   Tb_DarCRTOTNF.AsFloat:=Tb_DarCRVALOR.AsFloat;
if (Tb_DarCRJURD.AsFloat=0) and (Tb_DarCRVALOR.AsFloat=0) then
   begin
   if DM4.Tb_Par01PJURM.AsFloat>0 then
      Tb_DarCRJURD.AsFloat:=Arredonda( ((Tb_DarCRVALOR.AsFloat*DM4.Tb_Par01PJURM.AsFloat)/30) , DM1.Tb_PargerPCASAS.AsInteger);
   end;


end;

procedure TFrm_Dar.btnSairClick(Sender: TObject);
begin
  inherited;
{  if dar_ori = '' then close;
  if dar_ori = '' then close;
  }
  close;
end;

procedure TFrm_Dar.FormShow(Sender: TObject);
begin
  inherited;


  pc1.ActivePageIndex:=0;
  ftestacaixa(0);
  flparldr(0,'CADDAR0');
  if (DM1.Par_LDR.Eof) or (DM1.Par_LDRCODCC.IsNull) or (DM1.Par_LDRCODDEP.IsNull)
     or (Trim(DM1.Par_LDRCODCC.Value)='') or (Trim(DM1.Par_LDRCODDEP.Value)='') then
     begin
     end
  else
     begin
     pldr_descmov:=DM1.Par_LDRNOME.Value;
     pldr_codccu:=DM1.Par_LDRCODCC.Value;
     pldr_nombco:=DM1.Tb_bcoBCBANCO.Value;
     pldr_coddep:=DM1.Par_LDRCODDEP.Value;
     if flcaddep_ldr(1,0,DM1.Par_LDRCODDEP.Value) then
        pldr_nomdep:=DM1.Tb_Dep_LdrDNOME.Value;
     if flcadccu(1,0,DM1.Par_LDRCODCC.Value) then
        begin
        pldr_nomccu:=DM1.Tb_CCUCCNOME.Value;
        pldr_natdc :=DM1.Tb_CCUCCNAT.Value;
        end;
     end;

  if flfilpad(0,'_DAR','') then
    begin
    if DM4.Tb_FilPad2.Locate('FPCOMP','CB_LISTAR',[]) then
      cb_listar.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);
    if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ORDEM',[]) then
      cb_ordem.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);

    if DM4.Tb_FilPad2.Locate('FPCOMP','CB_TIPOPESQ',[]) then
      cb_tipopesq.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);


    cb_listarClick(self);


    end;

  BBnAtu.Click;
end;

procedure TFrm_Dar.db_codacessExit(Sender: TObject);
begin
  inherited;
if Tb_DarCRCODASSE.AsFloat=0 then
   exit;
if not flcadassessor(1,0,Tb_DarCRCODASSE.AsString) then
   begin
   fmensagem('Assessor não Cadastrado',0,['0'],0);
   db_codacess.SetFocus;
   end;

end;

procedure TFrm_Dar.db_codacessKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Tb_DarCRCODASSE.Value:=ValFloat(fChamaAssessor(0,'frm_Dar',Key));
   db_codacessExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Dar.sbn_novaClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg: TJPEGImage;

qr_cont_imagem: TQuery;
mChave: Integer;
mIdDar: String;
begin
  inherited;


if trim(Tb_DarIDDAR.AsString)='' then
   begin
   if not fLerGenerico_query('CADDAP','ROWID',' CRID_NEW='+Tb_DarCRID_NEW.AsString
      ,query_consulta) then
      begin
      MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
      exit;
      end
   else
      mIdDar:=query_consulta.fieldbyname('ROWID').asstring;

   end
else
    mIdDar:=Tb_DarIDDAR.AsString;
{
if trim(Tb_DarIDDAR.AsString)='' then
   begin
   if not fLerGenerico01_campos('CADDAR','ROWID',' CRNUMERO='+Tb_DarCRNUMERO.AsString
      +' and CRDESD='+QuotedStr(Tb_DarCRDESD.AsString)+' and CRCODCLI='+Tb_DarCRCODCLI.AsString
      +' and CRDTEMIS='+QuotedStr(FormatDateTime(fdt2, Tb_DarCRDTEMIS.asdatetime))
      +' and CRDUP='+Tb_DarCRDUP.AsString+' and CRCODDEMP=0'+Tb_DarCRCODEMP.AsString,mIdDar) then
      begin
      MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
      exit;
      end;
   end
else
   mIdDar:=Tb_DarIDDAR.AsString;
}
Application.CreateForm(tfrm_Imagem_WebCam, Frm_Imagem_WebCam);
Frm_Imagem_WebCam.ShowModal;
if frm_Imagem_WebCam.mAceitouImagem then
   begin
   imagestream:=TMemoryStream.Create;
   if feImagem(frm_Imagem_WebCam.mNomeArquivo) then
      begin
      with TJPEGImage.Create do
          begin
          Assign(frm_Imagem_WebCam.Image1.Picture.Graphic);
          SaveToStream(imagestream);  //  ToFile('c:\img.jpg');
          Free;
          end;
      end
   else
      begin
      imagestream.LoadFromFile(frm_Imagem_WebCam.mNomeArquivo);
      end;


   qr_cont_imagem:=TQuery.create(Nil);
   qr_cont_imagem.databaseName:='SG_ASSOC';
   qr_cont_imagem.Close;
   qr_cont_imagem.SQL.Clear;
   qr_cont_imagem.SQL.Add('Select max(RI_SEQ) as cod from CADDAR_IMAGEM '
                    +' where RI_ROWID=:IDDAP ');
   qr_cont_imagem.ParamByName('IDDAP').AsString     :=mIdDar;
   qr_cont_imagem.open;
   mChave:=qr_cont_imagem.fieldbyName('cod').AsInteger+1;


   qr_cont_imagem.Close;
   qr_cont_imagem.SQL.Clear;
   qr_cont_imagem.SQL.Add('Insert into CADDAR_IMAGEM ( '
                    +' RI_ROWID  '
                    +',RI_SEQ    '
                    +',RI_OBS    '
                    +',RI_IMAGEM '
                    +',RI_NOMEORI '
                    +',RI_ID_NEW '
                    +',RI_ID_DAR_NEW '
                    +') values ('
                    +' :RI_ROWID  '
                    +',:RI_SEQ    '
                    +',:RI_OBS    '
                    +',:RI_IMAGEM '
                    +',:RI_NOMEORI '
                    +',:RI_ID_NEW '
                    +',:RI_ID_DAR_NEW '

                    +')');

   qr_cont_imagem.ParamByName('RI_ROWID').AsString      :=mIdDar;
   qr_cont_imagem.ParamByName('RI_SEQ').AsInteger      :=mChave;
   if trim(frm_Imagem_WebCam.edt_obs.Text)='' then
      qr_cont_imagem.ParamByName('RI_OBS').AsString    :='IMAGEM: '+IntToStr(mChave)
   else
      qr_cont_imagem.ParamByName('RI_OBS').AsString    :=frm_Imagem_WebCam.edt_obs.Text;

   qr_cont_imagem.ParamByName('RI_IMAGEM').LoadFromStream(imagestream, ftBlob);
   qr_cont_imagem.ParamByName('RI_NOMEORI').AsString    :=Fnomearq_Pasta(0, frm_Imagem_WebCam.mnomearquivo);
   qr_cont_imagem.ParamByName('RI_ID_NEW').AsInteger      :=fBuscarProximoid('CADDAR_IMAGEM_SEQ');
   qr_cont_imagem.ParamByName('RI_ID_DAR_NEW').AsInteger  :=Tb_DarCRID_NEW.AsInteger;

   try
      qr_cont_imagem.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(qr_cont_imagem,2754,'frm_dar','CADDAR_IMAGEM');
      end;
   FreeAndNil(qr_cont_imagem);
   FreeAndNil(imagestream);
   if feImagem(frm_Imagem_WebCam.mNomeArquivo) then
      FreeAndNil(jpg);

   end;
freeandnil(frm_imagem_WebCam);
mIdDar_src:='-1';

Src_DarDataChange(Tb_Dar,Tb_DarCRCODEMP);




end;

procedure TFrm_Dar.sbn_alterarClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg: TJPEGImage;
query_ldr: TQuery;
mIdDar: String;
begin
  inherited;


if trim(Tb_DarIDDAR.AsString)='' then
   begin
   if not fLerGenerico01_campos('CADDAR','ROWID',' CRNUMERO='+Tb_DarCRNUMERO.AsString
      +' and CRDESD='+QuotedStr(Tb_DarCRDESD.AsString)+' and CRCODCLI='+Tb_DarCRCODCLI.AsString
      +' and CRDTEMIS='+QuotedStr(FormatDateTime(fdt2, Tb_DarCRDTEMIS.asdatetime))
      +' and CRDUP='+Tb_DarCRDUP.AsString+' and CRCODDEMP=0'+Tb_DarCRCODEMP.AsString,mIdDar) then
      begin
      MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
      exit;
      end;
   end
else
   mIdDar:=Tb_DarIDDAR.AsString;

Application.CreateForm(tfrm_Imagem_WebCam, Frm_Imagem_WebCam);
Frm_Imagem_WebCam.ShowModal;
if frm_Imagem_WebCam.mAceitouImagem then
   begin

   imagestream:=TMemoryStream.Create;
   if feImagem(frm_Imagem_WebCam.mNomeArquivo) then
      begin
      with TJPEGImage.Create do
         begin
         Assign(frm_Imagem_WebCam.Image1.Picture.Graphic);
         SaveToStream(imagestream);  //  ToFile('c:\img.jpg');
         Free;
         end;
      end
   else
      begin
      imagestream.LoadFromFile(frm_Imagem_WebCam.mNomeArquivo);
      end;

   query_ldr:=TQuery.create(Nil);
   query_ldr.databaseName:='SG_ASSOC';

   query_ldr.Close;
   query_ldr.SQL.Clear;
   query_ldr.SQL.Add('Update CADDAR_IMAGEM set '
                    +' RI_OBS=:RI_OBS '
                    +',RI_IMAGEM=:RI_IMAGEM '
                    +',RI_NOMEORI=:RI_NOMEORI '
                    +' where '
                    +' RI_ROWID=:RI_ROWID '
                    +' and RI_SEQ=:RI_SEQ'
                    );

   query_ldr.ParamByName('RI_ROWID').AsString      :=midDar;
   query_ldr.ParamByName('RI_SEQ').AsInteger      :=Tb_CR_imagemRI_SEQ.AsInteger;

   if (trim(frm_Imagem_WebCam.edt_obs.Text)<>'') then
      query_ldr.ParamByName('RI_OBS').AsString:=trim(frm_Imagem_WebCam.edt_obs.Text)
   else if (trim(Tb_CR_imagemRI_OBS.AsString)='') then
      query_ldr.ParamByName('RI_OBS').AsString    :='IMAGEM: '+Tb_CR_imagemRI_OBS.AsString
   else
      query_ldr.ParamByName('RI_OBS').AsString    :=Tb_CR_imagemRI_OBS.AsString;



   query_ldr.ParamByName('RI_IMAGEM').LoadFromStream(imagestream, ftBlob);
   query_ldr.ParamByName('RI_NOMEORI').AsString    :=Fnomearq_Pasta(0, frm_Imagem_WebCam.mnomearquivo);

   try
      query_ldr.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(Query_ldr,2926,'frm_contrato','CADDAR_IMAGEM');
      end;
   FreeAndNil(query_ldr);
   FreeAndNil(imagestream);
   if feImagem(frm_Imagem_WebCam.mNomeArquivo) then
      FreeAndNil(jpg);
   end;
freeandnil(frm_imagem_WebCam);
midDar_src:='-1';

Src_DarDataChange(Tb_Dar,Tb_DarCRCODEMP);



end;

procedure TFrm_Dar.sbnRenomearClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg: TJPEGImage;
query_ldr: TQuery;
mNovoNome: String;
mIdDar: String;
begin
  inherited;


if trim(Tb_DarIDDAR.AsString)='' then
   begin
   if not fLerGenerico01_campos('CADDAR','ROWID',' CRNUMERO='+Tb_DarCRNUMERO.AsString
      +' and CRDESD='+QuotedStr(Tb_DarCRDESD.AsString)+' and CRCODCLI='+Tb_DarCRCODCLI.AsString
      +' and CRDTEMIS='+QuotedStr(FormatDateTime(fdt2, Tb_DarCRDTEMIS.asdatetime))
      +' and CRDUP='+Tb_DarCRDUP.AsString+' and CRCODDEMP=0'+Tb_DarCRCODEMP.AsString,mIdDar) then
      begin
      MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
      exit;
      end;
   end
else
   mIdDar:=Tb_DarIDDAR.AsString;



mNovoNome:=InputBox('Nome Anterior '+Tb_CR_ImagemRI_OBS.AsString , 'Informe o Novo Nome','');
if (trim(mNovoNome)<>'') and (mNovoNome<>Tb_CR_ImagemRI_OBS.AsString) then
   begin
   query_ldr:=TQuery.create(Nil);
   query_ldr.databaseName:='SG_ASSOC';
   query_ldr.Close;
   query_ldr.SQL.Clear;
   query_ldr.SQL.Add('Update CADDAR_IMAGEM set '
                    +' RI_OBS=:RI_OBS '
                    +' where '
                    +' RI_ROWID=:RI_ROWID '
                    +' and RI_SEQ=:RI_SEQ'
                    );

   query_ldr.ParamByName('RI_ROWID').AsString      :=mIdDar;
   query_ldr.ParamByName('RI_SEQ').AsInteger      :=Tb_CR_ImagemRI_SEQ.AsInteger;

   query_ldr.ParamByName('RI_OBS').AsString       :=mNovoNome;
   try
      query_ldr.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(Query_ldr,2991,'frm_contrato','CADDAR_IMAGEM');
      end;
   FreeAndNil(query_ldr);

   end;
mIdDar_src:='-1';

Src_DarDataChange(Tb_Dar,Tb_DarCRCODEMP);



end;

procedure TFrm_Dar.sbn_excluirClick(Sender: TObject);
var
query_ldr: TQuery;
mIdDar: String;
begin
  inherited;


if trim(Tb_DarIDDAR.AsString)='' then
   begin
   if not fLerGenerico01_campos('CADDAR','ROWID',' CRNUMERO='+Tb_DarCRNUMERO.AsString
      +' and CRDESD='+QuotedStr(Tb_DarCRDESD.AsString)+' and CRCODCLI='+Tb_DarCRCODCLI.AsString
      +' and CRDTEMIS='+QuotedStr(FormatDateTime(fdt2, Tb_DarCRDTEMIS.asdatetime))
      +' and CRDUP='+Tb_DarCRDUP.AsString+' and CRCODDEMP=0'+Tb_DarCRCODEMP.AsString,mIdDar) then
      begin
      MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
      exit;
      end;
   end
else
   mIdDar:=Tb_DarIDDAR.AsString;

if Application.MessageBox(pchar( 'Quer Realmente excluir o registro '+Tb_CR_ImagemRI_OBS.asstring),'confirmacao',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
query_ldr:=TQuery.create(Nil);
query_ldr.databaseName:='SG_ASSOC';
query_ldr.Close;
query_ldr.SQL.Clear;
query_ldr.SQL.Add('Delete  from CADDAR_IMAGEM '
                 +' where RI_ROWID=:RI_ROWID '
                 +' and RI_SEQ=:SEQ ');
query_ldr.ParamByName('RI_ROWID').Asstring   :=mIdDar;
query_ldr.ParamByName('SEQ').AsInteger     :=Tb_CR_ImagemRI_SEQ.AsInteger;
try
   query_ldr.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(Query_ldr,2757,'frm_contrato','CADDAR_IMAGEM');
   end;
FreeAndNil(query_ldr);
middar_src:='-1';

Src_DarDataChange(Tb_Dar,Tb_DarCRCODEMP);


end;

procedure TFrm_Dar.DBGrid3DblClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg:TJPEGImage;

begin
  inherited;



if not Tb_CR_imagemRI_IMAGEM.IsNull then
   begin
   imagestream:=TMemoryStream.Create;
   Tb_CR_imagemRI_IMAGEM.SaveToStream(imagestream);
   imagestream.Position := 0;
   if (trim(Tb_CR_imagemRI_IMAGEM.asstring)='')  then // or fEImagem(Tb_CR_imagemRI_NOMEORI.asstring) then
      begin
      jpg:=TJPEGImage.Create;
      jpg.LoadFromStream( imageStream );
      Application.Createform(TFrm_Fig_TelaCheia, Frm_Fig_TelaCheia);
      Frm_Fig_TelaCheia.Image1.Picture.Bitmap.Assign(jpg);
      Frm_Fig_TelaCheia.ShowModal;
      freeandnil(Frm_Fig_TelaCheia);
      freeandnil(jpg);
      end
   else
      begin
      try
         if trim(Tb_CR_imagemRI_NOMEORI.asstring)<>'' then
            begin
            imagestream.SaveToFile(mcamtmp+'\'+Tb_CR_imagemRI_NOMEORI.asstring);
            fExecutarArquivo(mcamtmp+'\'+Tb_CR_imagemRI_NOMEORI.asstring);
            fAdicionarTempDel(mcamtmp+'\'+Tb_CR_imagemRI_NOMEORI.asstring);
            end
         else
            begin
            messagedlg('nao foi possivel identificar o arquivo!',mterror,[mbOK],0);
            end;

      except
         messagedlg('Não foi possivel gerar o arquivo '+mcamtmp+'\'+Tb_CR_imagemRI_NOMEORI.asstring,mtError,[mbOk],0);
         end;
      end;
   freeandnil(imagestream);
   end;



end;

procedure TFrm_Dar.sbt_emitirreciboClick(Sender: TObject);
var
form_Recibo: tFrm_Recibo;

begin
  inherited;
if Tb_DarCRNUMERO.IsNull=false then
   begin
      Application.CreateForm(Tfrm_Recibo, form_Recibo);
   form_recibo.RG_TIPO.Itemindex:=1;
   with form_Recibo do
      begin
      FormStyle      :=fsNormal;
      Visible        :=False;
      MDATA.Text     :=formatdatetime(fdt2, date);
      if Tb_DarCRVALPAG.AsFloat>0 then
         VALOR_REC.Text := Formatfloat(mcasas, Tb_DarCRVALPAG.AsFloat)
      else
         VALOR_REC.Text := Formatfloat(mcasas, Tb_DarCRVALOR.AsFloat);

      if fLerGenerico_query('CADCLI','CRAZAO,CASE WHEN CCNPJ>0 THEN CCNPJ ELSE CCPF END AS CNPJ_CPF',' CCODCLI='+Tb_DarCRCODCLI.AsString,query_consulta) then
         begin
         EMITENTE.Text        :=Query_Consulta.fieldbyname('CRAZAO').asstring;
         edt_pagador_cpf.text :=MaskCPFCNPJ(query_consulta.fieldbyname('CNPJ_CPF').AsString);
         end;
      if trim(Tb_CR_ObsCROBS.AsString)='' then
         begin
         MREFER.text:= 'Recebimento do Titulo '+Tb_DarCRNUMERO.AsString+'/'+Tb_DarCRDESD.AsString
         +' com vencimento '+FormatDateTime(fdt2, Tb_DarCRDTVCTO.AsDateTime);
         end
      else
         MREFER.Text    :=Tb_CR_ObsCROBS.AsString;
      end;
   form_Recibo.bbImprimir.Click;
  //form_Recibo.ShowModal;
   FreeAndNil(form_Recibo);
   end;
end;
procedure TFrm_Dar.edt_competencia_mesExit(Sender: TObject);
begin
  inherited;
if (valint(edt_competencia_mes.Text)<1) or (valint(edt_competencia_mes.Text)>12) then
   begin
   MessageDlg('mês '+edt_competencia_mes.Text+' não é um mes valido!',mtWarning,[mbOk],0);
   edt_competencia_mes.SelectAll;
   edt_competencia_mes.SetFocus;
   end
else
   begin
   fAtualizarDataCompetencia;
   end;

end;

procedure TFrm_Dar.edt_competencia_anoExit(Sender: TObject);
begin
  inherited;
if (valint(edt_competencia_ano.Text)<1) or (valint(edt_competencia_ano.Text)>valint(FormatDateTime('yyyy', date))+150 )
   or (valint(edt_competencia_ano.Text)<valint(FormatDateTime('yyyy', date))-150 ) then
   begin
   MessageDlg('Ano '+edt_competencia_ano.Text+' não é um ano valido!',mtWarning,[mbOk],0);
   edt_competencia_ano.SelectAll;
   edt_competencia_ano.SetFocus;
   end
else
   begin
   fAtualizarDataCompetencia;
   end;

end;


function TFrm_Dar.fAtualizarDataCompetencia: Boolean;
begin
if (valint(edt_competencia_mes.Text)>0) and (ValInt(edt_competencia_ano.text)>0) and (Tb_Dar.State in [dsedit,dsinsert]) then
   begin
   Tb_DarCRCOMPETENCIA_DTINICIO.Value:=StrToDatetime('01/'
                                     +formatfloat('00', valint(edt_competencia_mes.text))
                                     +'/'+formatfloat('0000', valint(edt_competencia_ano.text))
                                     );
   end
else if (ValInt(edt_competencia_ano.text)>0) and (Tb_Dar.State in [dsedit,dsinsert]) then
   begin
   Tb_DarCRCOMPETENCIA_DTINICIO.Value:=StrToDatetime('01/'
                                     +'01'
                                     +'/'+formatfloat('0000', valint(edt_competencia_ano.text))
                                     );
   end;

result:=true;
end;

procedure TFrm_Dar.db_dtemisEnter(Sender: TObject);
begin
  inherited;
mdtemis_ant:=Tb_DarCRDTEMIS.AsDateTime;
end;

procedure TFrm_Dar.db_dtemisExit(Sender: TObject);
begin
  inherited;
if Tb_Dar.State in [dsedit,dsinsert] then
   begin
   if mdtemis_ant<>Tb_DarCRDTEMIS.AsDateTime then
      begin
      if mdtemis_ant=Tb_DarCRCOMPETENCIA_DTINICIO.AsDateTime THEN
         begin
         Tb_DarCRCOMPETENCIA_DTINICIO.AsDateTime:=strtodatetime('01/'+formatdatetime('mm/yyyy', Tb_DarCRDTEMIS.AsDateTime));
         edt_competencia_mes.Text         :=FormatDatetime('mm', Tb_DarCRCOMPETENCIA_DTINICIO.AsDateTime);
         edt_competencia_ano.Text         :=FormatDatetime('yyyy', Tb_DarCRCOMPETENCIA_DTINICIO.AsDateTime);
         end;
      end;
   end;
end;

procedure TFrm_Dar.DBE_CRQTDPARCExit(Sender: TObject);
begin
  inherited;
if (valint(edt_competencia_ano.Text)<1) or (valint(edt_competencia_ano.Text)>valint(FormatDateTime('yyyy', date))+150 )
   or (valint(edt_competencia_ano.Text)<valint(FormatDateTime('yyyy', date))-150 ) then
   begin
   MessageDlg('Ano '+edt_competencia_ano.Text+' não é um ano valido!',mtWarning,[mbOk],0);
   edt_competencia_ano.SelectAll;
   edt_competencia_ano.SetFocus;
   end
else
   begin
   fAtualizarDataCompetencia;
   end;

end;

procedure TFrm_Dar.DBE_numparcExit(Sender: TObject);
begin
  inherited;
if (valint(edt_competencia_mes.Text)<1) or (valint(edt_competencia_mes.Text)>12) then
   begin
   MessageDlg('mês '+edt_competencia_mes.Text+' não é um mes valido!',mtWarning,[mbOk],0);
   edt_competencia_mes.SelectAll;
   edt_competencia_mes.SetFocus;
   end
else
   begin
   fAtualizarDataCompetencia;
   end;

end;

procedure TFrm_Dar.DB_CACOMPETENCIA_TIPOExit(Sender: TObject);
begin
  inherited;
  if Tb_DarCRCOMPETENCIA_TIPO.asinteger=1 then
     begin
     edt_competencia_mes.Visible  :=false;
     lbl_competencia_barra.Visible:=false;
     end
  else
     begin
     edt_competencia_mes.Visible  :=true;
     lbl_competencia_barra.Visible:=true;
     end;

end;


function TFrm_Dar.flcaddar_form(ptipo,pcodemp,ppre,pcodecf,pOrdem: Integer; pvalor,pdesd,ptpdup: String; pdtemis: TDate;pEmpresas: String): Boolean;

{
Parametros ptipo=0-Numero da duplicata
                 1-Código do cliente
                 2-Código do vendedor
                 3-Data de Emissão
                 4-Data de vencimento
                 5-Razao Social
                 6-Denominação
                 7-Razao Social
                 8-codecf/num/desd/dup/dtemis/Empresa
                 9-lotseq/Chave/ordem
                10-Nosso Numero
                11-Valor
                12-Nota de Origem
ppre = 0 Somente normais
       1 ler tambem os excluidos
}
begin

la_empresas:=pEmpresas;
if trim(pempresas)='' then
   begin
   if pcodemp<>0 then
      la_Empresas:=' CRCODEMP=0'+IntTostr(pcodemp);
   end;
mcinst2:='';
if pOrdem<>0 then
   begin
   if pOrdem=1 then
      mcinst2:='CRDTEMIS,CRNUMERO'
   else if pOrdem=2 then
      mcinst2:='CRNUMERO'
   else
      mcinst2:='CRDTVCTO,CRNUMERO';

   end;

if (ptipo=5) or (ptipo=6) then
   begin

  la_tabelas  :='';
  la_Join     :='';
  la_instrucao:='';
  fInnerJoin(1,'CADCLI','CCODEMP','CRCODEMP','CCODCLI','CRCODCLI');

   if trim(mcinst2)<>'' then
      mcinst2:=mcinst2+',';
   Tb_Dar.Close;
   Tb_Dar.Sql.clear;
   Tb_Dar.Sql.add('Select CADDAR.*,CADDAR.ROWID AS IDDAR  from CADDAR'+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and '));
   Tb_Dar.Sql.add(iif(ppre=1,'',' CRSTATUS<>9 and '));
   Tb_Dar.Sql.add(' CRSTATUS<>999 ');
   Tb_Dar.Sql.Add(iif(ptipo=5,' and CRAZAO like '+chr(39)+pvalor+'%'+chr(39)+' ',
                                  ' and CDENOM like '+chr(39)+pvalor+'%'+chr(39)+' '));

   Tb_Dar.Sql.Add(fPeriodo);

   Tb_Dar.Sql.Add(iif(ptipo=5,'  order by '+mcinst2+'CRAZAO',
                                  '  order by '+mcinst2+'CDENOM'));


   end
else
   begin
   mcinst:=' where ';
   Tb_Dar.Close;
   Tb_Dar.Sql.clear;
   Tb_Dar.Sql.add('Select CADDAR.*,ROWID AS IDDAR  from CADDAR ');
   if ppre=0 then
      begin
      Tb_Dar.SQL.add(' where CRSTATUS<>9 ');
      mcinst:=' and '
      end;
   if trim(la_Empresas)<>'' then
      begin
      Tb_Dar.SQL.Add(mcinst+la_Empresas);
      mcinst:=' and ';
      end;

   Tb_Dar.Sql.Add(fPeriodo);
   if PTIPO<1 then
      begin
      if Trim(pvalor)<>'' then
         Tb_Dar.SQL.Add(mcinst+'CRNUMERO=0'+pvalor );
//      Tb_Dar.Params.CreateParam(ftString,'DTVCTO',ptInput);
//      Tb_Dar.SQL.Add(' and CRDTVCTO like :DTVCTO');
//      Tb_Dar.ParamByName('DTVCTO').AsString:='%';
      if trim(mcinst2)<>'' then
         Tb_Dar.SQL.add(' order by '+mcinst2);
      end
   else if ptipo=1 then
      begin
      if trim(mcinst2)<>'' then
         mcinst2:=mcinst2+',';

      if Trim(pvalor)<>'' then
         Tb_Dar.SQL.Add(mcinst+' CRCODCLI=0'+pvalor );
      Tb_Dar.SQL.Add(' order by '+mcinst2+'CRCODCLI');
      end
   else if ptipo=2 then
      begin
      if trim(mcinst2)<>'' then
         mcinst2:=mcinst2+',';

      if Trim(pvalor)<>'' then
         Tb_Dar.SQL.Add(mcinst+' CRCODVEN=0'+pvalor );
      Tb_Dar.SQL.Add(' order by '+mcinst2+'CRCODVEN');
      end
   else if ptipo=3 then
      begin
      if trim(mcinst2)<>'' then
         mcinst2:=mcinst2+',';

      if Trim(pvalor)<>'' then
         begin
         Try
            Tb_Dar.SQL.Add(mcinst+' CRDTEMIS='+chr(39)+FormatDateTime(fdt,StrToDate(pvalor))+chr(39));
         except
            fmensagem('Data Invalida. Favor digitar no formato dd/mm/aaaa com as barras',0,['0'],0);
            end;
         end;
      Tb_Dar.SQL.Add(' order by '+mcinst2+'CRCODVEN');
      end
   else if ptipo=4 then
      begin
      if trim(mcinst2)<>'' then
         mcinst2:=mcinst2+',';
      if Trim(pvalor)<>'' then
         begin
         Try
            Tb_Dar.SQL.Add(mcinst+' CRDTVCTO='+chr(39)+FormatDateTime(fdt,StrToDate(pvalor))+chr(39));
         except
            fmensagem('Data Invalida. Favor digitar no formato '+fdt2+' com as barras',0,['0'],0);
            end;
         end;
      Tb_Dar.SQL.Add(' order by '+mcinst2+'CRDTVCTO');
      end
   else if ptipo=8 then
      begin
      if pcodecf>0 then
         begin
         Tb_Dar.SQL.Add(mcinst+' CRCODECF=0'+IntToStr(pcodecf));
         mcinst:=' and ';
         end;
      if pvalor<>'' then
         begin
         Tb_Dar.SQL.Add(mcinst+' CRNUMERO='+pvalor);
         mcinst:=' and ';
         end;
      if pdesd<>'' then
         begin
         Tb_Dar.SQL.Add(mcinst+' CRDESD='+chr(39)+pdesd+chr(39));
         mcinst:=' and ';
         end;
      if ptpdup<>'' then
         begin
         Tb_Dar.SQL.Add(mcinst+' CRDUP=0'+ptpdup);
         mcinst:=' and ';
         end;
      if pdtemis>pdatanula then
         Tb_Dar.sql.Add(mcinst+' CRDTEMIS='+chr(39)+FormatDatetime(fdt, pdtemis)+chr(39));
      if trim(mcinst2)<>'' then
         Tb_Dar.SQL.add(' order by '+mcinst2);

      end
   else if ptipo=9 then
      begin
      if trim(ptpdup)<>'' then
//         Tb_Dar.SQL.Add(mcinst+' CRLOTSEQ_CP=0'+IntToStr(ls_numped))
//      else
         Tb_Dar.SQL.Add(mcinst+' CRLOTSEQ_CP=0'+ptpdup);
      mcinst:=' and ';
      Tb_Dar.SQL.Add(mcinst+'  CRNPED=0'+pvalor);
      if FormatDatetime(fdt, pdtemis)<>FormatDatetime(fdt, pdatanula) then
        Tb_Dar.SQL.Add(mcinst+'  CRDTEMIS='+chr(39)+FormatDatetime(fdt, pdtemis)+chr(39));
      if trim(pdesd)<>'' then
         Tb_Dar.SQL.Add(mcinst+' CRORDEM=0'+pdesd);
      if trim(mcinst2)<>'' then
         Tb_Dar.SQL.add(' order by '+mcinst2);

      end
   else if ptipo=10 then
      begin
      Tb_Dar.SQL.Add(mcinst+' CRNOSNUM like '+chr(39)+pvalor+chr(39));
      if trim(mcinst2)<>'' then
         Tb_Dar.SQL.add(' order by '+mcinst2);
      end
   else if ptipo=11 then
      begin
      Tb_Dar.SQL.Add(mcinst+' CRVALOR='+mudavp(pvalor));
      if trim(mcinst2)<>'' then
         Tb_Dar.SQL.add(' order by '+mcinst2);
      end
   else if ptipo=12 then
      begin
      Tb_Dar.SQL.Add(mcinst+' CRNFACUM like :NFACUM');
      Tb_Dar.ParamByName('NFACUM').AsString:=pvalor;
      if trim(mcinst2)<>'' then
         Tb_Dar.SQL.add(' order by '+mcinst2);
      end;


   end;
//Tb_Dar.SQL.SaveToFile('c:\sge\SQLDUP.TXT');

try
   Tb_Dar.Open
except
   Tb_Dar.SQL.SaveToFile(mpastatemp + 'SQLDUP.TXT');
   end;

if Tb_Dar.Eof then
   Result:=False
else
   Result:=True;
end;



procedure TFrm_Dar.DBMEMO_CAOBSChange(Sender: TObject);
begin
  inherited;
if DBMEMO_CAOBS.Modified then
   mAlterouObs:=True;

end;

procedure TFrm_Dar.Tb_DarAfterPost(DataSet: TDataSet);
var
query_obs: TQuery;
begin
  inherited;
c(tb_Dar);
if mAlterouObs then
   begin
   query_obs:=TQuery.create(nil);
   query_obs.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

   query_obs.close;
   query_obs.SQL.Clear;
   query_obs.Sql.Add('Update CADDAR set CROBS=:OBS  where CRNUMERO=:NUMERO '
                       +' and CRDESD=:DESD '
                       +' and CRCODEMP=:CODEMP '
                       +' and CRSEQ=:SEQ '
                       +' and CRDTEMIS=:DTEMIS ');
   query_obs.ParamByName('OBS').AsMemo       :=Tb_CR_ObsCROBS.AsString;
   query_obs.ParamByName('NUMERO').AsFloat   :=Tb_DarCRNUMERO.AsFloat;
   query_obs.ParamByName('DESD').AsString    :=Tb_DarCRDESD.AsString;
   query_obs.ParamByName('CODEMP').AsFloat   :=Tb_DarCRCODEMP.AsFloat;
   query_obs.ParamByName('SEQ').AsFloat      :=Tb_DarCRSEQ.AsFloat;
   query_obs.ParamByName('DTEMIS').AsDateTime:=Tb_DarCRDTEMIS.AsFloat;
   try
      query_obs.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_obs,3692,'SGE '+e.message,'CADDAR');
      end;
      end;
   query_obs.Close;
   freeandnil(query_obs);
   mAlterouObs:=false;
   fLercaddar_obs;

   end;


end;

procedure TFrm_Dar.C(DataSet: TDataSet);
begin
  inherited;
Try
  DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
  If not DM1.SG_ASSOC.InTransaction then
    DM1.SG_ASSOC.StartTransaction;
  DM1.SG_ASSOC.Commit;
Except
  fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
  end;

end;

procedure TFrm_Dar.Tb_DarAfterInsert(DataSet: TDataSet);
begin
  inherited;

Tb_DarCRCODEMP.Value:=codemp;
Tb_DarCRDESD.Value:='A';
Tb_DarCRDUP.Value :=0;
Tb_DarCRSTATUS.Value:=0;
Tb_DarCREMIDUP.Value:=0;
Tb_DarCREMIBLQ.Value:=0;
Tb_DarCRTIPCOB.Value:=0;
Tb_DarCRSEQ.Value:=0;
Tb_DarCRCODECF.Value:=0;
Tb_DarCRNUMCUP.Value:=0;

Tb_DarCRDTEMIS.Value               :=Date;
Tb_DarCRCOMPETENCIA_DTINICIO.Value :=strtodatetime('01/'+formatdatetime('mm/yyyy', date));
Tb_DarCRCOMPETENCIA_TIPO.Value     :=0;

Tb_DarCRCHAVE_ID_ANO.AsInteger:=valint(formatdatetime('yyyy',pdatasis));
Tb_DarCRCHAVE_ID.AsInteger:=fBuscareTestarID('CADDAR_'+Tb_DarCRCHAVE_ID_ANO.AsString);

edt_competencia_mes.Text         :=FormatDatetime('mm', Tb_DarCRCOMPETENCIA_DTINICIO.AsDateTime);
edt_competencia_ano.Text         :=FormatDatetime('yyyy', Tb_DarCRCOMPETENCIA_DTINICIO.AsDateTime);
edt_competencia_mes.Visible  :=true;
lbl_competencia_barra.Visible:=true;

end;


procedure TFrm_Dar.Tb_DarBeforePost(DataSet: TDataSet);
  var
i: Integer;

begin
  inherited;
midDar_src:='';

if (Tb_DarCRCOMPETENCIA_DTINICIO.IsNull) or (Tb_DarCRCOMPETENCIA_DTINICIO.asdatetime<=pdatanula) then
   Tb_DarCRCOMPETENCIA_DTINICIO.AsDateTime:=strtodatetime('01/'+formatdatetime('mm/yyyy', Tb_DarCRDTEMIS.AsDateTime));
Tb_DarCRCOMPETENCIA_TIPO.AsInteger     :=0;

For i:=0 to Tb_Dar.FieldCount-1 do
   begin
   if not Tb_Dar.Fields[i].IsNull then
      Continue;
   if Tb_Dar.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword] then
      Tb_Dar.Fields[i].Value:=0
   else if Tb_Dar.fields[i].DataType in [ftDate,ftDateTime] then
      Tb_Dar.Fields[i].AsDateTime:=pdatanula
   else if Tb_Dar.Fields[i].DataType in [ftString,ftMemo] then
      Tb_Dar.Fields[i].Value:=' ';
   end;

if Tb_DarCRID_NEW.AsInteger=0 then
   Tb_DarCRID_NEW.AsInteger:=fBuscarProximoId('CADDAR_SEQ');
end;

procedure TFrm_Dar.Tb_DarCalcFields(DataSet: TDataSet);
begin
  inherited;

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
   flqr1('CRAZAO,CDENOM,CCNPJ,CCPF','C','CADCLI','N','CCODCLI',Tb_DarCRCODCLI.AsString);
   Tb_Darrazaocli.Value:=DM1.Query1.Fields[0].AsString;
   Tb_Dardenomcli.Value:=DM1.Query1.Fields[1].AsString;
   if  DM1.Query1.Fields[2].AsFloat=0 then
      Tb_Darcnpj.Value:=DM1.Query1.Fields[3].Asfloat
   else
      Tb_Darcnpj.Value:=DM1.Query1.Fields[2].Asfloat


   end;
if Tb_DarCRCODVEN.Value>0 then
   begin
   flqr1('VNOME','V','CADVEN','N','VCODVEN',Tb_DarCRCODVEN.AsString);
   Tb_Darnomven.Value:=DM1.Query1.Fields[0].AsString;
   end;
if Tb_DarCRCODBCO.Value>0 then
   begin
   flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',Tb_DarCRCODBCO.AsString);
   Tb_Darnombco.Value:=DM1.Query1.Fields[0].AsString;
   end;
Tb_Dartipodoc.Value:=ptpdoc[Tb_DarCRDUP.AsInteger];


if Tb_DarCRSTATUS.Value=2 then
   Tb_Darsituacao.Value:='Pago'
else if Tb_DarCRSTATUS.Value=1 then
   Tb_Darsituacao.Value:='Pago Parcial'
else
   Tb_Darsituacao.Value:='A Pagar';
if Tb_DarCRDTEMIS.Value>pdatanula then
   Tb_Dardtemis.Value:=Tb_DarCRDTEMIS.Value;
if Tb_DarCRDTVCTO.Value>pdatanula then
   Tb_Dardtvcto.Value:=Tb_DarCRDTVCTO.Value;
if Tb_DarCRDTPAG.Value>pdatanula then
   Tb_Dardtpag.Value:=Tb_DarCRDTPAG.Value;
if Tb_DarCRDTBX.Value>pdatanula then
   Tb_Dardtbx.Value:=Tb_DarCRDTBX.Value;
if Tb_DarCRDTDESCF.Value>pdatanula then
   Tb_Dardtdescf.Value:=Tb_DarCRDTDESCF.Value;
if Tb_DarCRDATCUP.Value>pdatanula then
   Tb_Dardatcup.Value:=Tb_DarCRDATCUP.Value;
if Tb_DarCRSPC_DTPEN.Value>pdatanula then
   Tb_Darspc_dtpen.Value:=Tb_DarCRSPC_DTPEN.Value;
if Tb_DarCRSPC_DTNEG.Value>pdatanula then
   Tb_Darspc_dtneg.Value:=Tb_DarCRSPC_DTNEG.Value;
if Tb_DarCRSERASA_DTNEG.Value>pdatanula then
   Tb_Darserasa_dtneg.Value:=Tb_DarCRSERASA_DTNEG.Value;
if Tb_DarCRDTCAU.Value>pdatanula then
   Tb_Dardtcau.Value:=Tb_DarCRDTCAU.Value;

Tb_Darvaldev.Value:=(Tb_DarCRVALOR.AsFloat+Tb_DarCRJUROS.Value) -
                      (Tb_DarCRVALPAG.AsFloat+Tb_DarCRDESC.Value+Tb_DarCRDEVOL.AsFloat);
if Tb_Darvaldev.AsFloat<0 then
   Tb_Darvaldev.AsFloat:=0;



end;

function tFrm_dar.fPeriodo: String;
var
mResult: string;
mData: String;
begin
if cb_tipopesq.Text='Baixa' then
   mData:='CRDTBX'
else if cb_tipopesq.Text='Emissao' then
   mData:='CRDTEMIS'
else if cb_tipopesq.Text='Pagamento' then
   mData:='CRDTPAG'
else
   mData:='CRDTVCTO';

mresult:=fFormatdatetimeParaConsulta(mData,true,edt_datini.Date)
        +fFormatdatetimeParaConsulta(mData,false,edt_datfin.Date);
result:=mresult;
end;


procedure TFrm_Dar.edt_datiniExit(Sender: TObject);
begin
  inherited;

if (fsonumero(edt_datini.text)>0) and (fsonumero(edt_datfin.Text)>0) then
   begin
   if edt_datini.Date>edt_datfin.Date then
      edt_datfin.date:=edt_datini.date;
   end;

end;

procedure TFrm_Dar.edt_datfinExit(Sender: TObject);
begin
  inherited;
if (fsonumero(edt_datini.text)>0) and (fsonumero(edt_datfin.Text)>0) then
   begin
   if edt_datini.Date>edt_datfin.Date then
      edt_datini.date:=edt_datfin.date;
   end;

end;

procedure TFrm_Dar.db_valorEnter(Sender: TObject);
begin
  inherited;
mvalor_dup_ant:= Tb_DARCRVALOR.asfloat;
end;

procedure TFrm_Dar.sbt_salva_confClick(Sender: TObject);
begin
  inherited;
fDeletaPadroes(0,'_DAR','');
fGravaPadroes(0,'CB_LISTAR'      ,'ITEMINDEX' ,'_DAR',IntToStr(cb_listar.ItemIndex));
fGravaPadroes(0,'CB_ORDEM'       ,'ITEMINDEX' ,'_DAR',IntToStr(cb_ordem.ItemIndex));
fGravaPadroes(0,'CB_TIPOPESQ'    ,'ITEMINDEX' ,'_DAR',IntToStr(cb_tipopesq.ItemIndex));


end;



procedure TFrm_Dar.fLerCadRemessa;
begin
mTitRemLido_RETORNO:=Tb_DarCRCHAVE_ID.AsInteger;

qr_remessa.Close;
qr_remessa.sql.clear;
qr_remessa.sql.add('SELECT RECODEMP,RELOTSEQ,RECHAVE,RECODBCO '
                  +' ,CASE WHEN RELAYOUT=0 THEN '+QuotedStr('CNAB400')+' else '+QuotedStr('CNAB240')+' end AS LAYOUT '
                  +',REORDEM,RECODEMP_DUP,RECODECF,RENUMDUP,REDESD,RETIPO,REDTEMIS,REVALDUP '
                  +',RECODCLI,RENOSNUM,REDNOSNUM,REDATREM,RECODCOM,RECODCAR,RECODVARCAR,RECODPROT '
                  +',RECODPROT02,RECODPROT03,REPROTESTO_QTDD,REDTVCTO,REDESCF,REDTDESCF '
                  +',bcbanco '
                  +' from CADREMBCO,CADBCO where RECODEMP_DUP=:CODEMP '
                  +' and BCCODBCO=RECODBCO '
                  +' AND RETIT_CHAVE_ID=:TIT_CHAVE_ID  '
                  +' AND RETIT_CHAVE_ID_ANO=:TIT_CHAVE_ID_ANO ');
qr_remessa.ParamByName('CODEMP').AsInteger:=Tb_DarCRCODEMP.AsInteger;
qr_remessa.ParamByName('TIT_CHAVE_ID').AsInteger:=Tb_DarCRCHAVE_ID.AsInteger;
qr_remessa.ParamByName('TIT_CHAVE_ID_ANO').AsInteger:=Tb_DarCRCHAVE_ID_ANO.AsInteger;

try
   qr_remessa.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(qr_remessa,41430,'SGE '+e.message,'CADBCOREM');
   end;
   end;



end;

procedure TFrm_Dar.PC1Change(Sender: TObject);
begin
  inherited;
if PC1.ActivePage=tsEventosCobranca then
   begin
   Src_DarDataChange(self,Tb_DarCRCHAVE_ID);
   end;

end;

procedure TFrm_Dar.fLerCadRetorno;
begin
mTitRemLido_RETORNO:=Tb_DarCRCHAVE_ID.AsInteger;
qr_retorno.Close;
qr_retorno.sql.clear;
qr_retorno.sql.add('SELECT RET_NOMEARQ,RET_DATHORARQ  '
                  +',RET_PASTAARQ,RET_COMPUTADOR '
                  +',RET_ID_SEQ,RET_CHAVETIT_ID_ANO '
                  +',RET_CHAVETIT_ID '
                  +',RET_CODEMP_TIT '
                  +',RET_CODACAO,RET_DATALIQ,RET_DATACRED '
                  +',RET_VALTAR '
                  +',RET_VALIOF '
                  +',RET_VALABAT,RET_VALDESC,RET_VALLANC,RET_VALJURMOR '
                  +',RET_VALOUTREC,RET_AGENCIAREC '
                  +',RET_CODBCOREC '
                  +',RET_NOMNATREC '
                  +',RET_NATREC '
                  +',RET_NOMACAO '
                  +' FROM CADDAR_RET '
                  +' where RET_CODEMP_TIT=:CODEMP '
                  +' and RET_CHAVETIT_ID_ANO = :CHAVETIT_ID_ANO '
                  +' and RET_CHAVETIT_ID = :CHAVETIT_ID ');
qr_retorno.ParamByName('CODEMP').AsInteger := Tb_DarCRCODEMP.AsInteger;
qr_retorno.ParamByName('CHAVETIT_ID_ANO').AsInteger := Tb_DarCRCHAVE_ID_ANO.AsInteger;
qr_retorno.ParamByName('CHAVETIT_ID').AsInteger := Tb_DarCRCHAVE_ID.AsInteger;
try
   qr_retorno.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(qr_retorno,4207,'SGE '+e.message,'CADDAR_RET');
   end;
   end;
end;



procedure TFrm_Dar.fLerComissoes;
begin

Qr_comissoes.close;
Qr_comissoes.sql.clear;
Qr_comissoes.sql.Add('select CL1CHAVE, '
                    +'  case when CL1TIPO=0 then '+QuotedStr('Recebimento Vendedor')
                    +'            when CL1TIPO=1 then '+QuotedStr('Recebimdnto Supervisor')
                    +'            when CL1TIPO=2 then '+QuotedStr('Recebimento Televendas')
                    +'            when CL1TIPO=4 then '+QuotedStr('Recebimento Vendedor/Produtos')
                    +'            when CL1TIPO=5 then '+QuotedStr('Vendas Vendedor')
                    +'            when CL1TIPO=6 then '+QuotedStr('Vendas Supervisor')
                    +'            when CL1TIPO=7 then '+QuotedStr('Vendas Televendas')
                    +'            when CL1TIPO=9 then '+QuotedStr('Vendas Vendedor/Produtos')
                    +'            else '+QuotedStr('desconhecido')+' end as tipocom '
                    +'          ,CASE WHEN NVL(CL2VALCOM,0)=0 AND CL1PCOMIS>0 THEN '
                    +'           CASE WHEN NVL(CL2BASECOMIS,0)=0 THEN CL2VALDOC ELSE  CL2BASECOMIS END '
                    +'              * CL1PCOMIS ELSE CL2VALCOM END '
                    +'        AS VALOR_COMISSAO '
                    +'      ,CASE WHEN NVL(CL2BASECOMIS,0)=0 THEN CL2VALDOC ELSE  CL2BASECOMIS END AS BASE_COMISSAO '
                    +'            ,CL1DATA AS DATA_LOTE '
                    +'            ,CL2DESD '
                    +'            FROM CADCL02,CADCL01 '
                    +'            WHERE CL1CODEMP=CL2CODEMP '
                    +'            AND NVL(CL1LOTSEQ,0)=CL2LOTSEQ '
                    +'      AND CL1CHAVE=CL2CHAVE '
                    +'      AND CL2CHAVEP=:CHAVEP  '
                    +'      AND CL2CODEMPD=:CODEMP  '
                    +'      AND CL2LOTSEQ_DC=:LOTSEQ '
                    +'      AND ( (CL1TIPO<5 AND (CL2DESD=:DESD)) OR CL1TIPO>4) '
                    +' ORDER BY DATA_LOTE,CL1TIPO,CL2DESD ');
qr_comissoes.ParamByName('CHAVEP').AsInteger := Tb_DarCRNPED.AsInteger;
qr_comissoes.ParamByName('CODEMP').AsInteger := Tb_DarCRCODEMP.AsInteger;
qr_comissoes.ParamByName('LOTSEQ').AsInteger := Tb_DarCRLOTSEQ_CP.AsInteger;
qr_comissoes.ParamByName('DESD').AsString     := Tb_DarCRDESD.AsString;
//   qr_comissoes.sql.savetofile('c:\sge\sql.txt');

try
   qr_comissoes.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(qr_retorno,4207,'SGE '+e.message,'CADDAR_RET');
   end;
   end;
end;

procedure TFrm_Dar.CB_DUPExit(Sender: TObject);
begin
  inherited;
db_codcliExit(Self);

end;

procedure TFrm_Dar.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if (key=117) and (DM1.Tb_EmpCGC.AsFloat=02299715000112) then
   begin
   Application.CreateForm(TFrm_AssociarDocCaddar, Frm_AssociarDocCaddar);
   Frm_AssociarDocCaddar.Showmodal;
   FreeAndNil(Frm_AssociarDocCaddar);
   end;

end;

procedure TFrm_Dar.sbnRecTercClick(Sender: TObject);
var
form_Recibo: tFrm_Recibo;

begin
  inherited;


if Tb_DarCRNUMERO.IsNull=false then
   begin
      Application.CreateForm(Tfrm_Recibo, form_Recibo);
   form_recibo.RG_TIPO.Itemindex:=1;
   with form_Recibo do
      begin
      FormStyle      :=fsNormal;
      Visible        :=False;
      MDATA.Text     :=formatdatetime(fdt2, date);
      if Tb_DarCRVALPAG.AsFloat>0 then
         VALOR_REC.Text := Formatfloat(mcasas, Tb_DarCRVALPAG.AsFloat)
      else
         VALOR_REC.Text := Formatfloat(mcasas, Tb_DarCRVALOR.AsFloat);

      if fLerGenerico_query('CADCLI','CRAZAO,CASE WHEN CCNPJ>0 THEN CCNPJ ELSE CCPF END AS CNPJ_CPF',' CCODCLI='+Tb_DarCRCODCLI.AsString,query_consulta) then
         begin
         EMITENTE.Text        :=Query_Consulta.fieldbyname('CRAZAO').asstring;
         edt_pagador_cpf.text :=MaskCPFCNPJ(query_consulta.fieldbyname('CNPJ_CPF').AsString);
         end;
      if trim(Tb_CR_ObsCROBS.AsString)='' then
         begin
         MREFER.text:= 'Recebimento do Titulo '+Tb_DarCRNUMERO.AsString+'/'+Tb_DarCRDESD.AsString
         +' com vencimento '+FormatDateTime(fdt2, Tb_DarCRDTVCTO.AsDateTime);
         end
      else
         MREFER.Text    :=Tb_CR_ObsCROBS.AsString;
      end;
   form_Recibo.cb_sem_logomarcas.Checked:=true;
   form_Recibo.ShowModal;
   FreeAndNil(form_Recibo);
   end;

end;

END.
