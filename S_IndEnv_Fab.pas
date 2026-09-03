unit S_IndEnv_Fab;

interface                

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, ComCtrls, Grids,func,lerarq,S_Impres,
  DB, DBTables,comobj, WPCTRRich, WPTbar, WPRTEDefs, WPCTRMemo, WPUtil, WPObj_Image,
  WPRTEPaint,ADODB, RxMemDS, WordXP, OleServer,S_BKP, DBCtrls, ToolEdit,
  RXDBCtrl, DBGrids,s_lerarq_geral,dateutils, Word2000;

type
  tCadOp03 = record
  codemp: integer;
  fabenv: integer;
  lotseq: integer;
  codigo: integer;
  seq: integer;
  codmat: real;
  qtdprev: real;
  qtdutil: real;
  qtdutil_motivo: string;
  pu: real;
  sitmp: integer;
  origem: integer;
  numero: string;
  lote: string;
  dtvcto: tdatetime;
  dtfab: tdatetime;
  lote_re: string;

end;

type
  TFrm_IndEnv_Fab = class(TForm)
    Panel1: TPanel;
    BBINCLUIR: TBitBtn;                               
    BBLOCALIZAR: TBitBtn;
    BBALTERAR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBLIMPAR: TBitBtn;
    BBIMPRIMIR: TBitBtn;
    BBCONFIRMAR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    BBSAIR: TBitBtn;
    Panel2: TPanel;
    gbCabecalho: TGroupBox;
    Label1: TLabel;
    MCHAVE: TEdit;
    Label2: TLabel;
    MDATA: TMaskEdit;
    Label6: TLabel;
    CODPRO: TEdit;
    Label3: TLabel;
    QTDPREV: TEdit;
    QTDPROD: TEdit;
    Label4: TLabel;
    Panel3: TPanel;
    PageControl1: TPageControl;
    tsMatPrima: TTabSheet;
    tsMatEmb: TTabSheet;
    tsProcessos: TTabSheet;
    Label5: TLabel;
    MNUMLOT: TEdit;
    Label7: TLabel;
    MDATAVEN: TMaskEdit;
    Label8: TLabel;
    PRAZOVAL: TEdit;
    Label9: TLabel;
    STG_ME_OP03: TStringGrid;
    STG_MP_OP03: TStringGrid;
    status: TStaticText;
    Panel4: TPanel;
    bbEditarME: TBitBtn;
    bbExcluirME: TBitBtn;
    Panel5: TPanel;
    Panel6: TPanel;
    st_codpro: TStaticText;
    txtmp_codigo: TEdit;
    st_descricao: TStaticText;
    txtmp_descricao: TEdit;
    st_und: TStaticText;
    txtmp_und: TEdit;
    st_qtdteor: TStaticText;
    txtmp_qtdteor: TEdit;
    st_qtdutil: TStaticText;
    txtmp_qtdutil: TEdit;
    st_lote: TStaticText;
    st_dtvcto: TStaticText;
    Panel7: TPanel;
    bbEditarMP: TBitBtn;
    bbExcluirMP: TBitBtn;
    stmp_pu: TStaticText;
    stmp_vt: TStaticText;
    txtmp_pu: TEdit;
    txtmp_vt: TEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    txtme_codpro: TEdit;
    txtme_descricao: TEdit;
    txtme_und: TEdit;
    txtme_qtdteor: TEdit;
    txtme_qtdutil: TEdit;
    txtme_pu: TEdit;
    txtme_vt: TEdit;
    StaticText10: TStaticText;
    st_totmpund: TStaticText;
    StaticText11: TStaticText;
    st_totmpvlr: TStaticText;
    StaticText12: TStaticText;
    st_totmeund: TStaticText;
    StaticText14: TStaticText;
    st_totmevlr: TStaticText;
    StaticText13: TStaticText;
    st_totgerund: TStaticText;
    StaticText16: TStaticText;
    st_totgervlr: TStaticText;
    tsTextoTemp: TTabSheet;
    Qr_Comp_MP: TQuery;
    Qr_Comp_MPCPCODEMP: TFloatField;
    Qr_Comp_MPCPORDEM: TFloatField;
    Qr_Comp_MPCPCODPRO: TFloatField;
    Qr_Comp_MPCPNUMERO: TStringField;
    Qr_Comp_MPCPCODMAT: TFloatField;
    Qr_Comp_MPCPCODPRO_ACAB: TFloatField;
    Qr_Comp_MPCPMPNUM: TStringField;
    Qr_Comp_MPCPQUANT: TFloatField;
    Qr_Comp_MPCPPU: TFloatField;
    Qr_Comp_MPCPVLRINC: TFloatField;
    Qr_Comp_MPCPALIQORI: TFloatField;
    Qr_Comp_MPCPALICMSCRED: TFloatField;
    Qr_Comp_MPCPICMSCRED: TFloatField;
    Qr_Comp_MPCPTIPO: TFloatField;
    Qr_Comp_MPCPQTD_PAD: TFloatField;
    Qr_Comp_MPCPPERCENT: TFloatField;
    Qr_Comp_MPCPPERCENT_REST: TFloatField;
    Qr_Comp_MPPDNOME: TStringField;
    Qr_Comp_MPPDUND: TStringField;
    Qr_Comp_MPPDNOME2: TStringField;
    Qr_Comp_MPOP3_QTDPREV: TFloatField;
    Qr_Comp_MPOP3_QTDUTIL: TFloatField;
    Qr_Comp_MPOP3_PU: TFloatField;
    Qr_Comp_MPOP3_LOTE: TStringField;
    Qr_Comp_MPOP3_DTVCTO: TDateTimeField;
    FontDialog1: TFontDialog;
    TextoTemp: TRichEdit;
    txtmp_dtvcto: TMaskEdit;
    txtme_dtvcto: TMaskEdit;
    bbGravaItemMP: TBitBtn;
    bbGravarItemME: TBitBtn;
    tbs_relatorio: TTabSheet;
    wp_texto: TWPRichText;
    CB_ETIQUETAS: TCheckBox;
    Qr_Embalagens: TQuery;
    Qr_EmbalagensCPCODEMP: TFloatField;
    Qr_EmbalagensCPORDEM: TFloatField;
    Qr_EmbalagensCPCODPRO: TFloatField;
    Qr_EmbalagensCPNUMERO: TStringField;
    Qr_EmbalagensCPCODMAT: TFloatField;
    Qr_EmbalagensCPCODPRO_ACAB: TFloatField;
    Qr_EmbalagensCPMPNUM: TStringField;
    Qr_EmbalagensCPQUANT: TFloatField;
    Qr_EmbalagensCPPU: TFloatField;
    Qr_EmbalagensCPVLRINC: TFloatField;
    Qr_EmbalagensCPALIQORI: TFloatField;
    Qr_EmbalagensCPALICMSCRED: TFloatField;
    Qr_EmbalagensCPICMSCRED: TFloatField;
    Qr_EmbalagensCPTIPO: TFloatField;
    Qr_EmbalagensCPQTD_PAD: TFloatField;
    Qr_EmbalagensCPPERCENT_REST: TFloatField;
    Qr_EmbalagensPDNOME: TStringField;
    Qr_EmbalagensPDNOME2: TStringField;
    Qr_EmbalagensPDUND: TStringField;
    Qr_EmbalagensOP3_QTDPREV: TFloatField;
    Qr_EmbalagensOP3_QTDUTIL: TFloatField;
    Qr_EmbalagensOP3_PU: TFloatField;
    Qr_EmbalagensOP3_LOTE: TStringField;
    Qr_EmbalagensOP3_DTVCTO: TDateTimeField;
    chk_selecao: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Label10: TLabel;
    btnImpressao: TBitBtn;
    bb_materia_prima: TBitBtn;
    tsConfigMaster: TTabSheet;
    cb_EstNeg: TCheckBox;
    mem_apuracao: TRxMemoryData;
    mem_apuracaoCODPRO: TFloatField;
    mem_apuracaoUND: TStringField;
    mem_apuracaoNOMPRO: TStringField;
    mem_apuracaoQTDPED: TFloatField;
    mem_apuracaoQTDEST: TFloatField;
    mem_apuracaoQTDSALDO: TFloatField;
    StaticText15: TStaticText;
    txtmp_re: TEdit;
    txtme_re: TEdit;
    StaticText17: TStaticText;
    Qr_Comp_MPOP3_LOTE_RE: TStringField;
    Qr_EmbalagensOP3_LOTE_RE: TStringField;
    CB_NOMPRO: TComboBox;
    WordApp: TWordApplication;
    WordDoc: TWordDocument;
    tb_param: TRxMemoryData;
    tb_paramNOMCOMPRIMLIN: TStringField;
    tb_paramNOMCOMSEGLIN: TStringField;
    tb_paramCODPROMASK: TStringField;
    tb_paramCODPRO: TStringField;
    tb_paramAPRESENT: TStringField;
    tb_paramNUMOP: TStringField;
    tb_paramQTDPREV: TStringField;
    tb_paramMESANOEMI: TStringField;
    tb_paramMESANOREV: TStringField;
    tb_paramDATFAB: TStringField;
    tb_paramDATVAL: TStringField;
    tb_paramDATEMI: TStringField;
    tb_paramNUMLOT: TStringField;
    tb_paramRESPTEC: TStringField;
    tb_paramGERPROD: TStringField;
    tb_paramGERQUAL: TStringField;
    tb_paramDATREV: TStringField;
    tb_paramDATAFAB: TStringField;
    tb_paramHORMININIFRAC: TStringField;
    tb_paramHORMINTERFRAC: TStringField;
    tb_paramNOMFUNCFRAC: TStringField;
    tb_paramNOMFUNCCONFFRAC: TStringField;
    tb_paramHORMININIMAN: TStringField;
    tb_paramDATAINIMAN: TStringField;
    tb_paramHORMINTERMAN: TStringField;
    tb_paramNOMFUNCMAN: TStringField;
    tb_paramNOMFUNCONFMAN: TStringField;
    tb_paramNOMANALISTA: TStringField;
    tb_paramNOMSUPANALISTA: TStringField;
    tb_paramOBSANALISE: TStringField;
    tb_paramRESULTANALISE: TStringField;
    tb_paramSETOR: TStringField;
    tb_paramPESOMIN: TStringField;
    tb_paramPESOMEDIO: TStringField;
    tb_paramPESOMAXIMO: TStringField;
    GB_DADOSPROC: TGroupBox;
    Tb_Op_ETA: TRxMemoryData;
    Tb_Op_ETAETA_CODIGO: TFloatField;
    Tb_Op_ETAETA_CODEMP: TFloatField;
    Tb_Op_ETAETA_DESCRICAO: TStringField;
    Tb_Op_ETAETA_ORDEM: TIntegerField;
    Tb_Op_ETAETA_RESPONSAVEL: TStringField;
    Tb_Op_ETAETA_DATHOR_INIPROC: TDateTimeField;
    Tb_Op_ETAETA_HOR_INIPROC: TTimeField;
    Tb_Op_ETAETA_DATHOR_TERMINO: TDateTimeField;
    Tb_Op_ETAETA_HOR_TERMINO: TTimeField;
    Tb_Op_ETAETA_CONFERENTE: TStringField;
    Tb_Op_ETAETA_DATHOR_CONF: TDateTimeField;
    Tb_Op_ETAETA_HOR_CONF: TTimeField;
    Tb_Op_ETAETA_RESULTADO: TStringField;
    Tb_Op_ETAETA_OBS: TStringField;
    DBCB_Processo: TDBComboBox;
    Label11: TLabel;
    src_op_eta: TDataSource;
    Label12: TLabel;
    Label13: TLabel;
    DBDatini_proc: TDBDateEdit;
    Label14: TLabel;
    DBE_HOR_INIPROC: TDBEdit;
    Label15: TLabel;
    DBDatfin_proc: TDBDateEdit;
    Label16: TLabel;
    DBE_HOR_TERPROC: TDBEdit;
    DBCB_RESP: TDBComboBox;
    Label17: TLabel;
    DBCB_CONFERENTE: TDBComboBox;
    Label18: TLabel;
    DBData_conf: TDBDateEdit;
    Label19: TLabel;
    DBE_horConf: TDBEdit;
    Label20: TLabel;
    DBCB_resultado: TDBComboBox;
    Label21: TLabel;
    DBMemo_obs: TDBMemo;
    DBGrid_ope: TDBGrid;
    tb_paramNOMPRO: TStringField;
    tb_paramDATAEMI: TStringField;
    mem_apuracaoQTD_ANALISE: TFloatField;
    TsAnexada: TTabSheet;
    TsEtapa01: TGroupBox;
    Label22: TLabel;
    edt_chave: TEdit;
    Label23: TLabel;
    edt_codpro: TEdit;
    edt_nompro: TEdit;
    Label24: TLabel;
    edt_qtdteorica: TEdit;
    Label25: TLabel;
    edt_qtdprod: TEdit;
    Label26: TLabel;
    edt_val: TEdit;
    Label27: TLabel;
    edt_lote: TEdit;
    Label28: TLabel;
    Label29: TLabel;
    edt_dtvcto: TMaskEdit;
    Qr_MP_Etapa01: TQuery;
    Src_MP_Etapa01: TDataSource;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    status_et01: TStaticText;
    edt_et01_data: TMaskEdit;
    Label30: TLabel;
    Qr_MP_Etapa01CPCODEMP: TFloatField;
    Qr_MP_Etapa01CPORDEM: TFloatField;
    Qr_MP_Etapa01CPCODPRO: TFloatField;
    Qr_MP_Etapa01CPNUMERO: TStringField;
    Qr_MP_Etapa01CPCODMAT: TFloatField;
    Qr_MP_Etapa01CPCODPRO_ACAB: TFloatField;
    Qr_MP_Etapa01CPMPNUM: TStringField;
    Qr_MP_Etapa01CPQUANT: TFloatField;
    Qr_MP_Etapa01CPPU: TFloatField;
    Qr_MP_Etapa01CPVLRINC: TFloatField;
    Qr_MP_Etapa01CPALIQORI: TFloatField;
    Qr_MP_Etapa01CPALICMSCRED: TFloatField;
    Qr_MP_Etapa01CPICMSCRED: TFloatField;
    Qr_MP_Etapa01CPTIPO: TFloatField;
    Qr_MP_Etapa01CPQTD_PAD: TFloatField;
    Qr_MP_Etapa01CPPERCENT: TFloatField;
    Qr_MP_Etapa01CPPERCENT_REST: TFloatField;
    Qr_MP_Etapa01PDNOME: TStringField;
    Qr_MP_Etapa01PDNOME2: TStringField;
    Qr_MP_Etapa01PDUND: TStringField;
    Qr_MP_Etapa01OP3_QTDPREV: TFloatField;
    Qr_MP_Etapa01OP3_QTDUTIL: TFloatField;
    Qr_MP_Etapa01OP3_PU: TFloatField;
    Qr_MP_Etapa01OP3_LOTE: TStringField;
    Qr_MP_Etapa01OP3_DTVCTO: TDateTimeField;
    Qr_MP_Etapa01OP3_LOTE_RE: TStringField;
    gb_anexos: TGroupBox;
    DBGrid2: TDBGrid;
    src_OP01_Anexo: TDataSource;
    Tb_OP01_Anexo: TQuery;
    Tb_OP01_AnexoOPA_CODEMP: TFloatField;
    Tb_OP01_AnexoOPA_CHAVE: TFloatField;
    Tb_OP01_AnexoOPA_LOTSEQ: TFloatField;
    Tb_OP01_AnexoOPA_ETAPA: TFloatField;
    Tb_OP01_AnexoOPA_CHAVE_OR: TFloatField;
    Tb_OP01_AnexoOPA_LOTSEQ_OR: TFloatField;
    Tb_OP01_AnexoOPA_CODEMP_OR: TFloatField;
    Tb_OP01_AnexoOPA_SEQ: TFloatField;
    U_OP01_Anexo: TUpdateSQL;
    Panel8: TPanel;
    bbproc_incluir: TBitBtn;
    bbproc_alterar: TBitBtn;
    bbproc_gravar: TBitBtn;
    bbproc_excluir: TBitBtn;
    Label31: TLabel;
    tb_paramDESC_SOBRE: TMemoField;
    tsRichtext: TTabSheet;
    RichEdit1: TRichEdit;
    tb_paramObservacao_Prod: TMemoField;
    Memo1: TMemo;
    tb_paramQTDGRML: TFloatField;
    tb_paramQTDGRML_TOTAL: TFloatField;
    Tb_Op03: TQuery;
    Tb_Op03OP3_CODEMP: TFloatField;
    Tb_Op03OP3_CODIGO: TFloatField;
    Tb_Op03OP3_SEQ: TFloatField;
    Tb_Op03OP3_CODMAT: TFloatField;
    Tb_Op03OP3_NUMERO: TStringField;
    Tb_Op03OP3_QTDPREV: TFloatField;
    Tb_Op03OP3_QTDUTIL: TFloatField;
    Tb_Op03OP3_PU: TFloatField;
    Tb_Op03OP3_LOTSEQ: TFloatField;
    Tb_Op03OP3_FABENV: TFloatField;
    Tb_Op03OP3_DTVCTO: TDateTimeField;
    Tb_Op03OP3_LOTE: TStringField;
    Tb_Op03OP3_SITMP: TFloatField;
    Tb_Op03OP3_ORIGEM: TFloatField;
    Tb_Op03PDCODPRO: TFloatField;
    Tb_Op03PDNOME: TStringField;
    Tb_Op03PDUND: TStringField;
    Tb_Op03PDNOME2: TStringField;
    Tb_Op03CODGRU: TFloatField;
    Tb_Op03NOMGRU: TStringField;
    Tb_Op03PDMARCA: TStringField;
    Tb_Op03OP3_LOTE_RE: TStringField;
    U_Op03: TUpdateSQL;
    Src_Op03: TDataSource;
    Label32: TLabel;
    CB01_MOTIVO: TComboBox;
    StaticText18: TStaticText;
    cbmp_qtdutil_motivo: TComboBox;
    Tb_Op03OP3_QTDUTIL_MOTIVO: TStringField;
    StaticText19: TStaticText;
    cbme_qtdutil_motivo: TComboBox;
    Tb_Op02: TQuery;
    Tb_Op02OP2_CODEMP: TFloatField;
    Tb_Op02OP2_CODIGO: TFloatField;
    Tb_Op02OP2_SEQ: TFloatField;
    Tb_Op02OP2_CODPRO: TFloatField;
    Tb_Op02OP2_NUMERO: TStringField;
    Tb_Op02OP2_QTDPREV: TFloatField;
    Tb_Op02OP2_QTDPROD: TFloatField;
    Tb_Op02OP2_PU: TFloatField;
    Tb_Op02OP2_LOTSEQ: TFloatField;
    Tb_Op02OP2_FABENV: TFloatField;
    Tb_Op02OP2_DTVCTO: TDateTimeField;
    Tb_Op02OP2_FAB_CHORI: TFloatField;
    Tb_Op02OP2_FAB_CODIGO: TFloatField;
    Tb_Op02OP2_FAB_VCTO: TDateTimeField;
    Tb_Op02OP2_FAB_QTD: TFloatField;
    Tb_Op02OP2_FAB_LOTE: TStringField;
    Tb_Op02OP2_FAB_DTFAB: TDateTimeField;
    Tb_Op02OP2_FAB_PU: TFloatField;
    Tb_Op02OP2_ORIGEM: TFloatField;
    Tb_Op02OP2_SITACAB: TFloatField;
    Tb_Op02PDNOME: TStringField;
    Tb_Op02PDUND: TStringField;
    Tb_Op02PDQTDGRML: TFloatField;
    Tb_Op02PDPRZVAL: TFloatField;
    Tb_Op02PDREGMS: TStringField;
    Tb_Op02CODGRU: TFloatField;
    Tb_Op02NOMGRU: TStringField;
    Tb_Op02PDMARCA: TStringField;
    U_Op02: TUpdateSQL;
    Src_Op02: TDataSource;
    Tb_Op02OP2_QTDPROD_MOTIVO: TStringField;
    txtmp_lote: TComboBox;
    txtme_lote: TComboBox;
    Label81: TLabel;
    CB_FILIAL: TComboBox;
    Tb_Op02PERC_PERDAS: TFloatField;
    lbl_perdas: TLabel;
    StaticText20: TStaticText;
    txtmp_percperdas: TEdit;
    StaticText21: TStaticText;
    txtme_percperdas: TEdit;
    Tb_Op03PERC_PERDAS: TFloatField;
    tb_paramPERC_PERDAS: TStringField;
    tb_paramPEDIDO_ORIGEM: TStringField;
    tb_paramPRAZO_ENTREGA: TStringField;
    bbvisualizar_comagrupamento: TBitBtn;
    gb_origem: TGroupBox;
    Label33: TLabel;
    edt_origem: TEdit;
    TabSheet1: TTabSheet;
    gb_tabulacoes: TGroupBox;
    GroupBox3: TGroupBox;
    Memo_legenda: TMemo;
    gb_m01: TGroupBox;
    Memo2: TMemo;
    GroupBox6: TGroupBox;
    Memo3: TMemo;
    gb_mp02: TGroupBox;
    Memo4: TMemo;
    bbop_esp_visedit: TBitBtn;
    bbop_esp_adq: TBitBtn;
    bbop_esp_excluir: TBitBtn;
    gb_dw_cfg: TGroupBox;
    DBGrid_dw_cfg: TDBGrid;
    Tb_dw_cfg: TQuery;
    Tb_dw_cfgDW_NOMREL: TStringField;
    src_dw_cfg: TDataSource;
    Label54: TLabel;
    dbcb_modelo: TComboBox;
    Opd1: TOpenDialog;
    WordApplication1: TWordApplication;
    WordDocument1: TWordDocument;
    BitBtn1: TBitBtn;
    tb_paramMARCA: TStringField;
    Tb_Op03OP3_DTFAB: TDateTimeField;
    Tb_Op02OP2_DTFAB: TDateTimeField;
    Qr_EmbalagensOP3_DTFAB: TDateTimeField;
    Label34: TLabel;
    edt_dt_fab: TMaskEdit;
    StaticText22: TStaticText;
    txtmp_dtfab: TMaskEdit;
    StaticText23: TStaticText;
    txtme_dtfab: TMaskEdit;
    Qr_MP_Etapa01OP3_DTFAB: TDateTimeField;
    procedure BBINCLUIRClick(Sender: TObject);
    procedure BBLIMPARClick(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROExit(Sender: TObject);
    procedure MDATAExit(Sender: TObject);
    procedure PRAZOVALExit(Sender: TObject);
    procedure QTDPREVExit(Sender: TObject);
    procedure QTDPRODExit(Sender: TObject);
    procedure MNUMLOTExit(Sender: TObject);
    procedure MDATAVENExit(Sender: TObject);
    procedure BBSAIRClick(Sender: TObject);
    procedure STG_MP_OP03DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure STG_ME_OP03DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure BBLOCALIZARClick(Sender: TObject);
    procedure BBALTERARClick(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure txtmp_codigoKeyPress(Sender: TObject; var Key: Char);
    procedure txtme_codproKeyPress(Sender: TObject; var Key: Char);
    procedure txtme_codproExit(Sender: TObject);
    procedure txtmp_codigoExit(Sender: TObject);
    procedure txtmp_qtdteorExit(Sender: TObject);
    procedure txtme_qtdteorExit(Sender: TObject);
    procedure txtme_qtdutilExit(Sender: TObject);
    procedure txtmp_qtdutilExit(Sender: TObject);
    procedure bbEditarMEClick(Sender: TObject);
    procedure bbEditarMPClick(Sender: TObject);
    procedure bbExcluirMPClick(Sender: TObject);
    procedure txtmp_puExit(Sender: TObject);
    procedure txtme_puExit(Sender: TObject);
    procedure bbExcluirMEClick(Sender: TObject);
    procedure STG_MP_OP03DblClick(Sender: TObject);
    procedure STG_ME_OP03DblClick(Sender: TObject);
    procedure BBEXCLUIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QTDPREVEnter(Sender: TObject);
    procedure BBCONFIRMARClick(Sender: TObject);
    procedure txtmp_dtvctoExit(Sender: TObject);
    procedure txtme_dtvctoExit(Sender: TObject);
    procedure bbGravaItemMPClick(Sender: TObject);
    procedure bbGravarItemMEClick(Sender: TObject);
    procedure BBIMPRIMIRClick(Sender: TObject);
    procedure btnImpressaoClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure chk_selecaoClick(Sender: TObject);
    procedure bb_materia_primaClick(Sender: TObject);
    procedure CB_NOMPROClick(Sender: TObject);
    procedure edt_chaveChange(Sender: TObject);
    procedure Tb_OP01_AnexoBeforePost(DataSet: TDataSet);
    procedure Tb_OP01_AnexoAfterInsert(DataSet: TDataSet);
    procedure Tb_OP01_AnexoBeforeEdit(DataSet: TDataSet);
    procedure Tb_OP01_AnexoAfterPost(DataSet: TDataSet);
    procedure src_OP01_AnexoDataChange(Sender: TObject; Field: TField);
    procedure DBGrid2Enter(Sender: TObject);
    procedure bbproc_incluirClick(Sender: TObject);
    procedure bbproc_alterarClick(Sender: TObject);
    procedure bbproc_gravarClick(Sender: TObject);
    procedure bbproc_excluirClick(Sender: TObject);
    procedure Tb_Op_ETAAfterInsert(DataSet: TDataSet);
    procedure cbme_qtdutil_motivoExit(Sender: TObject);
    procedure CB01_MOTIVOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtmp_loteExit(Sender: TObject);
    procedure txtme_loteExit(Sender: TObject);
    procedure txtmp_loteEnter(Sender: TObject);
    procedure txtme_loteEnter(Sender: TObject);
    procedure CB_FILIALExit(Sender: TObject);
    procedure bbvisualizar_comagrupamentoClick(Sender: TObject);
    procedure bbop_esp_viseditClick(Sender: TObject);
    procedure bbop_esp_adqClick(Sender: TObject);
    procedure bbop_esp_excluirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cb_EstNegClick(Sender: TObject);
  private
    { Private declarations }
    mdVenc_Prod: TDateTime;
    mdFab_Prod: TDateTime;
    mCadop03: tCadOp03;


    mcontgrade: integer;

    mOP1_PEDORI_CHAVE: integer;
    mOP1_PEDORI_LOTSEQ: Integer;
    mOP1_PEDORI_CODEMP: Integer;

    FTotal,
//    mNumero_Tabela: Integer;
    FPrice  : Double;
    wprt    : TWPRichText;
    FCellNr : Integer;
    mAnexo_Etapa_Ant: Integer;
    mChave_Or_Ant: Integer;
    mloc_armazenamento: integer;


    function fBuscarMatPrima(ptipo: Integer; pQtdEmb, pMedida: Real): Boolean;
    function fptotais(ptipo: Integer): Boolean;
    function fTestaEstoqueNegativo(pOrigem: Integer): Boolean;


    function FCriarGrades(pTipo: Integer): Boolean;
    procedure FCarregaGrade(RowNr, ColNr: Integer; par: TParagraph);
    procedure ReplaceTags(var Editor: TWPRichText; LocTexto: String);


    function fImprimirWord(pOpAnexas: array of string; pCodPro: Real): Boolean;


    function FSubstituirCorpo(pAchar,pSubstituir: Olevariant):Boolean ;


    function fIncluirGrade(pBookMark,pTamColunas: String; pGrade:TStrings;pTamCol,pQtdCol,pItem,pLinhaFixa: Integer;pFundo,pAlinhamento,pMesClar: TStrings): Boolean;

    function FSubstituirCabecalho(pSecao: Integer; pAchar,pSubstituir: Olevariant):Boolean;
    function FSubstituirCabecalho_PrimPag(pSecao: Integer; pAchar,pSubstituir: Olevariant):Boolean;
    function FSubstituirCabecalho_Events(pSecao: Integer; pAchar,pSubstituir: Olevariant):Boolean;


    function FSubstituirRodape(pSecao: Integer; pAchar,pSubstituir: Olevariant):Boolean;

    function fValidarTag(pTag,pNome: String):Boolean;

    function fLerCadp01_Anexo(pTipo: Integer): Boolean;

    function fLimpardadosAnexo: Boolean;


    function fBloqueiaLiberaCamposProcesso(pLibera: Boolean): Boolean;

    function fpconfirmar(ptipo: Integer): Boolean;

    function fpexcluir(ptipo: Integer;pSitmp: Integer): Boolean;


    function fAbreCadop03(pTipo: Integer): Boolean;

    procedure fCarregarLotes(pcodpro: real;out pCombobox: tcombobox);

    function fExistemLotes: Boolean;


    function fVerificaPendencia : Boolean;


    function fPedidodeOrigemdaOP: string;

    function fPrazoEntrega: string;


    function fIncluirCadop03(pCadOp03: tCadOp03): boolean;

    function fEstoqueNegativo: Boolean;

    procedure fLerCadDW_CFG;

    procedure fAtuaizarLegenda;

    procedure fVisualizarXMLDoc(pNomeDoc: String);



//    function fTestarEstoquemp:boolean;

  public
    { Public declarations }
    mNormal: boolean;
    mostramensagem: Boolean;

  end;

function fBloqueiaLibera(ptipo: Integer; pCodEmp,pLotSeq,pChave: Real): Boolean;
function fLerMateriaPrima(pTipo: Integer; pCodemp,pLotseq,pChave: Real):Boolean;
function fLerEmbalagens(pTipo: Integer; pCodemp,pLotseq,pChave: Real):Boolean;



const     categoria_docxml = 'CADOP';


var
  Frm_IndEnv_Fab:  TFrm_IndEnv_Fab;

  pTitCol: Array of String;
  pNomCol: Array of string;
  pTamCol: Array of Integer;
  pFormato: Array of string;
  pDataSet: TDataSet;
  mcolmp_codpro  : Integer=0;
  mcolmp_descricao: Integer=1;
  mcolmp_und     : Integer=2;
  mcolmp_lote    : Integer=3;
  mcolmp_dtfab   : Integer=4;
  mcolmp_dtvcto  : Integer=5;
  mcolmp_qtdteor : Integer=6;
  mcolmp_qtdutil : Integer=7;
  mcolmp_percperdas : Integer=8;
  mcolmp_qtdutil_motivo : Integer=9;
  mcolmp_pu      : Integer=10;
  mcolmp_vt      : Integer=11;
  mcolmp_re      : Integer=12;


  mcolme_codpro  : Integer=0;
  mcolme_descricao: Integer=1;
  mcolme_und     : Integer=2;
  mcolme_lote    : Integer=3;
  mcolme_dtfab    : Integer=4;
  mcolme_dtvcto  : Integer=5;
  mcolme_qtdteor : Integer=6;
  mcolme_qtdutil : Integer=7;
  mcolme_percperdas : Integer=8;

  mcolme_qtdutil_motivo : Integer=9;
  mcolme_pu      : Integer=10;
  mcolme_vt      : Integer=11;
  mcolme_re      : Integer=12;
  mOperFab: Integer=0;
  mLotSeqIndFab: Integer=0;
  bbinc_true: boolean=true;
  bbalt_true: boolean=true;
  bbexc_true: Boolean=true;
  bbrel_true: Boolean=true;
  mQtdMan_Fab: Real=0;
  mop_mp: Integer=0;
  mop_me: Integer=0;
  mItem_me_alt: Integer=0;
  mItem_mp_alt: Integer=0;
  mQtdAnt: Real=0;
  mQtdPagTot: Real=0;
  mTipoEmb: String;
  StrToAdd : String;
  mNomeArqDoc: String;
  xQtdeLinha : Integer = 0;
  SITMP: integer;
  Form_Bkp:TFrm_bkp;

implementation

uses S_DM1, S_DM3, S_IndEnv_Fab_Loc,  S_DM4, func_excecoes, S_Sintegra_Advert,
  s_Obs_Grid, S_DM1_ADO, S_Agde, S_Pcus, Math, s_IndEnv_Fab_SelAgru,
  CheckLst, s_ordemdeproducao;

{$R *.dfm}

function TFrm_IndEnv_Fab.fTestaEstoqueNegativo(pOrigem: Integer): Boolean;
// 0-so Aviso
// 1-Erro nao vai Processar
var
mResult:boolean;
x,y: Integer;
mQtdPro: Real;
mSaldo: Real;
begin
mem_apuracao.Close;

mem_apuracao.open;
mem_apuracao.EmptyTable;

mResult:=true;
for x:=0 to STG_MP_OP03.RowCount-1 do
  begin
  if fSonumero(STG_MP_OP03.Cells[mcolmp_codpro,x])=0 then
    Continue;
  mQtdPro:=0;
  for y:=0 to STG_MP_OP03.RowCount-1 do
    begin
    if fSonumero(STG_MP_OP03.Cells[mcolmp_codpro,x])=fSonumero(STG_MP_OP03.Cells[mcolmp_codpro,y]) then
      mQtdPro:=mQtdPro+ValFloat(STG_MP_OP03.Cells[mcolmp_qtdutil,y]);
    end;
  if flcadpro(1,0,0,STG_MP_OP03.Cells[mcolmp_codpro,x]) then
    begin
   if fLerGenerico_query('CADEST','nvl(sum(CESALDO),0) as SALDO','CECODPRO='+STG_MP_OP03.Cells[mcolmp_codpro,x]
       +' and CEFILIAL='+inttostr(mloc_armazenamento) ,query_consulta) then
      msaldo:=query_consulta.fieldbyname('SALDO').AsFloat
   else
      msaldo:=0;
   if mQtdPro>msaldo then
      begin
      if mem_apuracao.Locate('CODPRO',ValFloat(STG_MP_OP03.Cells[mcolmp_codpro,x]),[]) then
        begin
        Continue;
        end;
      mem_apuracao.Append;
      mem_apuracaoCODPRO.AsFloat :=ValFloat(STG_MP_OP03.Cells[mcolmp_codpro,x]);
      mem_apuracaoUND.AsString   :=DM1.Tb_ProPDUND.AsString;
      mem_apuracaoNOMPRO.AsString:=DM1.Tb_ProPDNOME.AsString;
      mem_apuracaoQTDPED.AsFloat :=mQtdPro;
      mem_apuracaoQTD_ANALISE.AsFloat :=0;
      mem_apuracaoQTDEST.AsFloat :=msaldo;
      mem_apuracaoQTDSALDO.AsFloat:=mem_apuracaoQTDEST.AsFloat-
      (mem_apuracaoQTDPED.AsFloat);
      mem_apuracao.Post;
      mResult:=false;
      end;
    end;
  end;

for x:=0 to STG_ME_OP03.RowCount do
  begin
  if fSonumero(STG_ME_OP03.Cells[mcolmp_codpro,x])=0 then
    Continue;
  mQtdPro:=0;
  for y:=0 to STG_ME_OP03.RowCount do
    begin
    if fSonumero(STG_ME_OP03.Cells[mcolmp_codpro,x])=fSonumero(STG_ME_OP03.Cells[mcolmp_codpro,y]) then
      mQtdPro:=mQtdPro+ValFloat(STG_ME_OP03.Cells[mcolmp_qtdutil,y]);
    end;
  if flcadpro(1,0,0,STG_ME_OP03.Cells[mcolmp_codpro,x]) then
    begin

   if fLerGenerico_query('CADEST','nvl(sum(CESALDO),0) as SALDO','CECODPRO='+STG_ME_OP03.Cells[mcolmp_codpro,x]
       +' and CEFILIAL='+inttostr(mloc_armazenamento) ,query_consulta) then
      msaldo:=query_consulta.fieldbyname('SALDO').AsFloat
   else
      msaldo:=0;

    if mQtdPro>msaldo then
      begin
      if mem_apuracao.Locate('CODPRO',ValFloat(STG_ME_OP03.Cells[mcolmp_codpro,x]),[]) then
        begin
        Continue;
        end;
      mem_apuracao.Append;
      mem_apuracaoCODPRO.AsFloat :=ValFloat(STG_ME_OP03.Cells[mcolmp_codpro,x]);
      mem_apuracaoUND.AsString   :=DM1.Tb_ProPDUND.AsString;
      mem_apuracaoNOMPRO.AsString:=DM1.Tb_ProPDNOME.AsString;
      mem_apuracaoQTDPED.AsFloat :=mQtdPro;


      mem_apuracaoQTD_ANALISE.AsFloat :=0;
      mem_apuracaoQTDEST.AsFloat :=msaldo;
      mem_apuracaoQTDSALDO.AsFloat:=mem_apuracaoQTDEST.AsFloat-
      (mem_apuracaoQTDPED.AsFloat);
      mem_apuracaoQTDSALDO.AsFloat:=mem_apuracaoQTDEST.AsFloat-mem_apuracaoQTDPED.AsFloat;
      mem_apuracao.Post;
      mResult:=false;
      end;
    end;
  end;

if not mResult then
  begin
  Application.CreateForm(Tfrm_obs_Grid, frm_obs_Grid);
  if pOrigem=0 then
    begin
    frm_obs_Grid.Panel_obs_cab.Caption:='ADVERTENCIA';
    frm_obs_Grid.Label_obs.Caption:='Divergencias Encontradas ao Verificar esta ordem de Produção!';
    end
  else
    begin
    frm_obs_Grid.Panel_obs_cab.Caption:='IRREGULARIDADES';
    frm_obs_Grid.Label_obs.Caption:='Irregularidades Encontradas ao Verificar esta ordem de Produção a Confirmação não Sera Aceita!';
    end;
  frm_obs_Grid.Src_Advert.DataSet:=mem_apuracao;
  frm_obs_Grid.ShowModal;
  frm_obs_Grid.free;
  frm_obs_Grid:=nil;
  end;
result:=mResult;
end;

procedure TFrm_IndEnv_Fab.BBINCLUIRClick(Sender: TObject);
begin
MNUMLOT.Text:='';
SITMP:=0;
BBLIMPAR.Click;
MDATA.Text:=FormatDateTime(fdt2, date);
CODPRO.SetFocus;
txtmp_codigo.ReadOnly  :=false;
txtmp_qtdteor.ReadOnly :=false;
txtmp_qtdutil.ReadOnly :=false;
txtmp_lote.Enabled     :=true;
txtmp_dtfab.ReadOnly  :=false;
txtmp_dtvcto.ReadOnly  :=false;
txtme_codpro.ReadOnly  :=false;
txtme_qtdteor.ReadOnly :=false;
txtme_qtdutil.ReadOnly :=false;
txtme_lote.Enabled     :=true;
txtme_dtfab.ReadOnly  :=false;
txtme_dtvcto.ReadOnly  :=false;

BBINCLUIR.Enabled        := False;
BBLOCALIZAR.Enabled      := False;
BBALTERAR.Enabled        := False;
BBEXCLUIR.Enabled        := False;
BBCONFIRMAR.Enabled      := False;
bb_materia_prima.Enabled := False;
BBIMPRIMIR.Enabled       := False;
bbvisualizar_comagrupamento.Enabled := False;
BBGRAVAR.Enabled         := True;
mLotSeqIndFab        :=ls_lotfab;

MDATA.ReadOnly       := False;
CODPRO.ReadOnly      := False;
QTDPREV.ReadOnly     := False;
QTDPROD.ReadOnly     := False;
PRAZOVAL.ReadOnly    := False;
MNUMLOT.ReadOnly     := False;
MDATAVEN.ReadOnly    := False;
CB_ETIQUETAS.Enabled := True;

CB_FILIALExit(self);
status.Caption       :='Incluindo';
mOperFab:=0;

fBloqueiaLiberaCamposProcesso(false); // false bloqueia true libera

Tb_Op_ETA.Close;
Tb_Op_ETA.Open;

end;

procedure TFrm_IndEnv_Fab.BBLIMPARClick(Sender: TObject);
var
x: Integer;
begin
if (BBGRAVAR.Enabled) and (mOperFab=0) and (ValFloat(CODPRO.Text)<>0) then
   begin
   if fMensagem('Quer realmente cancelar a operação?',0,['1','2'],2)<>mrYes then
      exit;
   end;


if (trim(MNUMLOT.Text)<>'') and (trim(MDATA.Text)<>'/  /') then
   begin
   if MNUMLOT.Text=fBuscaLoteFabricacao(1,Strtodate(MDATA.Text)) then
      fBuscaLoteFabricacao(2,Strtodate(MDATA.Text));

   end;
if (BBGRAVAR.Enabled) and (mOperFab=1)  then
   fBloqueiaLibera(0,DM3.Tb_Op01OP1_CODEMP.Value,DM3.Tb_Op01OP1_LOTSEQ.Value
                 ,DM3.Tb_Op01OP1_CODIGO.Value);


MDATA.Text          :='/  /';
CODPRO.Text         :='';
CB01_MOTIVO.Text    :='';
CB_NOMPRO.Text      :='';
QTDPREV.Text        :='';
QTDPROD.Text        :='';
MCHAVE.Text         :='';
PRAZOVAL.Text       :='';
MNUMLOT.Text        :='';
MDATAVEN.Text       :='/  /';
txtmp_codigo.Text   :='';
txtmp_descricao.Text:='';
txtmp_und.Text      :='';
txtmp_qtdteor.Text  :='';
txtmp_qtdutil.Text  :='';
txtmp_lote.Text     :='';
txtmp_re.Text       :='';
txtmp_dtfab.Text   :='';
txtmp_dtvcto.Text   :='';


st_totmpund.Caption:=FormatFloat(mcasind, 0);
st_totmpvlr.Caption:=FormatFloat(mcasind, 0);

st_totmeund.Caption:=FormatFloat(mcasind, 0);
st_totmevlr.Caption:=FormatFloat(mcasind, 0);

st_totgerund.Caption:=FormatFloat(mcasind, 0);
st_totgervlr.Caption:=FormatFloat(mcasind, 0);


    mOP1_PEDORI_CHAVE :=0;
    mOP1_PEDORI_LOTSEQ:=0;
    mOP1_PEDORI_CODEMP:=0;

for x:=0 to STG_MP_OP03.RowCount-1 do
   STG_MP_OP03.Rows[x].Clear;
STG_MP_OP03.RowCount:=1;

for x:=0 to STG_ME_OP03.RowCount-1 do
   STG_ME_OP03.Rows[x].Clear;
STG_ME_OP03.RowCount:=1;

Tb_Op_ETA.close;

txtmp_codigo.ReadOnly  := true;
txtmp_qtdteor.ReadOnly := true;
txtmp_qtdutil.ReadOnly := true;
txtmp_lote.Enabled     := false;
txtmp_dtfab.ReadOnly  := true;
txtmp_dtvcto.ReadOnly  := true;
txtme_codpro.ReadOnly  := true;
txtme_qtdteor.ReadOnly := true;
txtme_qtdutil.ReadOnly := true;
txtme_lote.Enabled     := False;
txtme_dtfab.ReadOnly  := true;
txtme_dtvcto.ReadOnly  := true;

status.Caption         :='';

BBINCLUIR.Enabled         := True;
BBLOCALIZAR.Enabled       := True;
BBALTERAR.Enabled         := False;
BBEXCLUIR.Enabled         := False;
BBCONFIRMAR.Enabled       := False;
bb_materia_prima.Enabled  := False;
BBIMPRIMIR.Enabled        := False;
bbvisualizar_comagrupamento.Enabled := False;

BBGRAVAR.Enabled          := False;
bbproc_incluir.Enabled        := false;
bbproc_alterar.Enabled        := false;
bbproc_excluir.Enabled        := false;
bbproc_gravar.Enabled         := false;

MDATA.ReadOnly       := True;
CODPRO.ReadOnly      := True;
QTDPREV.ReadOnly     := True;
QTDPROD.ReadOnly     := True;
PRAZOVAL.ReadOnly    := True;
MNUMLOT.ReadOnly     := True;
MDATAVEN.ReadOnly    := True;
CB_ETIQUETAS.Enabled := False;

end;

procedure TFrm_IndEnv_Fab.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if CODPRO.ReadOnly=False then
  begin
  if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
     begin
  //   DM1.Tb_Pro.Filter:='(PDNIVEL=0 OR PDNIVEL=3)';
  //   DM1.Tb_Pro.Filtered:=True;
     CODPRO.Text:=fChamaPro(0,'Frm_IndEnv_Fab',key);
     key:=#0;
     DM1.Tb_Pro.Filter:='';
     DM1.Tb_Pro.Filtered:=False;
     end;
  end;
end;

procedure TFrm_IndEnv_Fab.CODPROExit(Sender: TObject);
var
x: Integer;
begin

CODPRO.Text  :=fdeixanum2(CODPRO.Text);
CB_NOMPRO.Text  :='';
if CODPRO.Text='' then
   exit;
if not flcadpro(1,0,0,CODPRO.Text) then
   begin
   Fmensagem('Produto não Cadastrado!',0,['0'],0);
   CODPRO.SetFocus;
   end
else
   begin
   if (DM1.Tb_ProPDNIVEL.Value<>4) and (DM1.Tb_ProPDNIVEL.Value<>3) then
      begin
      Fmensagem('Este não é um produto válido!',0,['0'],0);
      CODPRO.SetFocus;
      exit;
      end;
   CB_NOMPRO.Text:=FormatFloat('00000', DM1.Tb_ProPDCODPRO.asfloat)+'|'+ DM1.Tb_ProPDNOME.Value+'|'+DM1.Tb_ProPDUND.Value;
   PRAZOVAL.Text:=DM1.Tb_ProPDPRZVAL.AsString;
   if mOperFab<>1 then
   //MNUMLOT.Text := '';
   PRAZOVALExit(Self);

   if not flcadcomp(0,-1,Trim(CODPRO.Text),'','') then
      begin
      Fmensagem('Produto sem Formula de Fabricação, criar formula primeiro!',0,['0'],0);
      CODPRO.SetFocus;
      exit;
      end;
   if (trim(MNUMLOT.Text)='') and (trim(MDATA.Text)<>'/  /') then
      begin
      MNUMLOT.Text:=fBuscaLoteFabricacao(0,Strtodate(MDATA.Text));
      QTDPREV.SetFocus;
      Exit;
      end;
   end;

end;

procedure TFrm_IndEnv_Fab.MDATAExit(Sender: TObject);
begin
if trim(MDATA.Text)<>'/  /' then
   begin
   try
      MDATA.Text:=FormatDateTime(fdt2, StrToDate(MDATA.Text));
      if (StrtoDAte(MDATA.Text)<date-30) or (StrtoDate(MDATA.Text)>date+3650)  then
         begin
         fMensagem('Data '+MDATA.Text+' fora do periodo esperado. Invalido!',0,['0'],0);
         MDATA.Setfocus;
         end;

   except
      fmensagem('Favor Digitar uma data válida!',0,['0'],0);
      MDATA.SetFocus;
      end;
   end;
end;

procedure TFrm_IndEnv_Fab.PRAZOVALExit(Sender: TObject);
begin
if fSonumero(PRAZOVAL.Text)>9999999 then
   PRAZOVAL.Text:='9999999';
PRAZOVAL.Text:=formatfloat('0', fSonumero(PRAZOVAL.Text));

if FSonumero(CODPRO.Text)>0 then
   begin
   if (not DM1.Tb_Pro.Active) or (FSonumero(CODPRO.Text)<>DM1.Tb_ProPDCODPRO.AsFloat) then
      CODPROExit(self);
   if DM1.Tb_ProPDPRZVAL.AsFloat<>ValFloat(PRAZOVAL.Text) then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Update CADPRO set PDPRZVAL=0'+mudavp(PRAZOVAL.Text)
                        +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntToStr(codemp)+' and ')
                        +' PDCODPRO=0'+CODPRO.Text);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         end;
      end;

   if trim(MDATA.Text)<>'/  /' then
      MDATAVEN.Text:=FormatDatetime(fdt2, IncMonth(StrtoDate(MDATA.Text),Valint(prazoval.Text)))
   else
      MDATAVEN.Text:=FormatDatetime(fdt2, IncMonth(date,Valint(prazoval.Text)));
{
   if trim(MDATA.Text)<>'/  /' then
      MDATAVEN.Text:=FormatDatetime(fdt2,
                  fdatafinal(Valint(prazoval.Text), StrtoDate(MDATA.Text)))
   else
      MDATAVEN.Text:=FormatDatetime(fdt2,
                  fdatafinal(Valint(prazoval.Text), date));
}   end;
end;

procedure TFrm_IndEnv_Fab.QTDPREVExit(Sender: TObject);
begin
if ValFloat(QTDPREV.Text)>999999999 then
   QTDPREV.Text:='999999999';
QTDPREV.Text:=formatfloat(mcasind, Valfloat(QTDPREV.Text));
QTDPROD.Text:=QTDPREV.Text;
if (fsonumero(CODPRO.text)<>0) and (ValFloat(QTDPREV.Text)<>0) then
   begin
   if (not DM1.Tb_Pro.Active) or (FSonumero(CODPRO.Text)<>DM1.Tb_ProPDCODPRO.AsFloat) then
      CODPROExit(self);
   if (mQtdAnt)<>Valfloat(QTDPREV.Text) then
      fBuscarMatPrima(0,valfloat(QTDPREV.Text),DM1.Tb_ProPDQTDGRML.Value);
   end;
fCalcularPerdas(valfloat(QTDPREV.text),valfloat(QTDPROD.text));

end;

procedure TFrm_IndEnv_Fab.QTDPRODExit(Sender: TObject);
begin
if ValFloat(QTDPROD.Text)>999999999 then
   QTDPROD.Text:='999999999';
QTDPROD.Text:=formatfloat(mcasind, ValFloat(QTDPROD.Text));
fCalcularPerdas(valfloat(QTDPREV.text),valfloat(QTDPROD.text));

end;



procedure TFrm_IndEnv_Fab.MNUMLOTExit(Sender: TObject);
begin
if length(MNUMLOT.text)>15 then
   MNUMLOT.Text:=copy(MNUMLOT.Text,1,15);

end;

procedure TFrm_IndEnv_Fab.MDATAVENExit(Sender: TObject);
begin
if trim(MDATAVEN.Text)<>'/  /' then
   begin
   try
      MDATAVEN.Text:=FormatDateTime(fdt2, StrToDate(MDATAVEN.Text));
      if (StrtoDAte(MDATAVEN.Text)<date-30) or (StrtoDate(MDATAVEN.Text)>date+3650)  then
         begin
         fMensagem('Data '+MDATAVEN.Text+' fora do periodo esperado. Invalido!',0,['0'],0);
         MDATAVEN.Setfocus;
         end;

   except
      fmensagem('Favor Digitar uma data válida!',0,['0'],0);
      MDATAVEN.SetFocus;
      end;
   end;


end;


function TFrm_IndEnv_Fab.fBuscarMatPrima(ptipo: Integer; pQtdEmb, pMedida: Real): Boolean;
var
  mitem,x,y: Integer;
  mQtdTotalMP,mQtdItem,mQtdBaixa,mQtdEst: Real;
begin
mQtdTotalMP:=pQtdEmb*pMedida;
STG_MP_OP03.RowCount:=1;
STG_MP_OP03.Rows[0].Clear;
STG_ME_OP03.RowCount:=1;
STG_ME_OP03.Rows[0].Clear;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:='';
flcadcomp(0,0,CODPRO.Text,'','');
if DM1.Tb_PargerPMPDISP.Value=1 then
   begin
   While not DM3.Tb_Comp.Eof do
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_Empresas:='';
      la_Empresas:=trim(fRetInstMECadastro('CADPRO','PDCODEMP',codemp));
      if Trim(la_Empresas)<>'' then
        begin
        fInnerJoin(1,'CADEST','CECODEMP','PDCODEMP','CECODPRO','PDCODPRO');
        if pbanco=0 then
          la_instrucao:=la_instrucao+' and ';
        fInnerJoin(0,'CADLGC' ,'CLCODEMP','PDCODEMP' ,'CLCODPRO' ,'PDCODPRO');
        end
      else
        begin
        la_tabelas  :='CADEST, CADLGC';
        la_instrucao:='CECODPRO(+)=PDCODPRO AND CLCODPRO(+)=PDCODPRO';
        end;

      DM1.Query4.Close;
      DM1.Query4.SQL.Clear;
      DM1.Query4.SQL.Add('SELECT PDCODPRO,PDSALDO,PDNOME,PDUND,PDQTDGRML'
                        +' ,case when PDPRECOC>0 then PDPRECOC '
                        +' when PDPCOFAB>0 THEN PDPCOFAB else PDPRECO1 END AS PRECOUNIT '

                        +',PDPCOFAB,PDPRECOC, '
                        +' PDPRECO1,CESALDO,CLQTD,CLNUMERO,CLDTVCTO '
                        +' from CADPRO '+iif(la_tabelas='','',',')+la_tabelas
                        +'       '+la_Join
                        +'       where '+la_instrucao+iif(trim(la_instrucao)='','',' and ')
//                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntToStr(codemp)+' and ')
                        +fla_EmpBaixaAlta(0,'CADPRO','',DM3.tb_compCPCODEMP.AsInteger,'PDCODEMP',' and ')
                        +' PDCODPRO=0'+DM3.Tb_CompCPCODMAT.Asstring
                        +' order by CLDTVCTO');
      try
        DM1.Query4.Open;
      except
        DM1.Query4.SQL.SAVETOFILE(mpastatemp +'sqlTT.TXT');
        end;


      mQtdItem :=Arredonda( (mQtdTotalMP*DM3.Tb_CompCPPERCENT_REST.Value/100) , DM1.Tb_PargerPCASIND.AsInteger);
      mQtdBaixa:=0;
      flcadlgc(mloc_armazenamento,0,codemp,DM3.Tb_CompCPCODMAT.AsString,'','');
      While not (DM1.Tb_LGC.Eof) and (mQtdBaixa<=mQtdItem) do
         begin
         if DM1.Tb_LGCCLQTD.Value<=0 then
            begin
            DM1.Tb_LGC.Next;
            Continue;
            end;
         if DM1.Tb_LGCCLDTVCTO.Value<=pdatanula then
            mdtv:='/  /'
         else
            mdtv:=FormatDateTime(fdt2, DM1.Tb_LGCCLDTVCTO.Value);
         if DM1.Tb_LGCCLQTD.Value<(mQtdItem-mQtdBaixa) then
            mQtdEst:=DM1.Tb_LGCCLQTD.Value
         else
            mQtdEst:=(mQtdItem-mQtdBaixa);
         mitem:=-1;
         for x:=0 to STG_MP_OP03.RowCount-1 do
            begin
            if (ValFloat(STG_MP_OP03.Cells[mcolmp_codpro,x])=DM1.Tb_LGCCLCODPRO.Value) and
               (Trim(STG_MP_OP03.Cells[mcolmp_lote,x])=Trim(DM1.Tb_LGCCLNUMERO.AsString)) and
               (Trim(STG_MP_OP03.Cells[mcolmp_dtvcto,x])=Trim(mdtv)) then
               begin
               mitem:=x;
               STG_MP_OP03.Cells[mcolmp_codpro,x]   :=DM3.Tb_CompCPCODMAT.AsString;
               STG_MP_OP03.Cells[mcolmp_descricao,x]:=DM1.Query4.FieldbyName('PDNOME').AsString;
               STG_MP_OP03.Cells[mcolmp_und,x]      :=DM1.Query4.FieldbyName('PDUND').AsString;
               STG_MP_OP03.Cells[mcolmp_qtdteor,x]  :=FormatFloat(mcasind, mQtdEst);
               STG_MP_OP03.Cells[mcolmp_qtdutil,x]  :=FormatFloat(mcasind, mQtdEst);
               STG_MP_OP03.Cells[mcolmp_qtdutil_motivo,x]  :='';
               STG_MP_OP03.Cells[mcolmp_lote,x]     :=DM1.Tb_LGCCLNUMERO.Value;
               STG_MP_OP03.Cells[mcolmp_re,x]       :=DM1.Tb_LGCCLLOTE_RE.Value;
               if (DM1.Tb_LGCCLDTFAB.AsDateTime>pDatanula) then
                  STG_MP_OP03.Cells[mcolmp_dtfab,x]    :=FormatDateTime(fdt2, DM1.Tb_LGCCLDTFAB.Value);
               STG_MP_OP03.Cells[mcolmp_dtvcto,x]   :=mdtv;
               STG_MP_OP03.Cells[mcolmp_pu,x]       :=FormatFloat(mcaspuind, DM1.Query4.FieldbyName('PRECOUNIT').AsFloat);
               STG_MP_OP03.Cells[mcolmp_vt,x]  :=FormatFloat(mcasas, ValFloat(STG_MP_OP03.Cells[mcolmp_pu,x])*mQtdEst);


               mQtdBaixa:=mQtdBaixa+mQtdEst;
               break;
               end;
            end;

         if (mitem=-1) and (mqtdest<>0) then
            begin
            x:=STG_MP_OP03.RowCount;
            STG_MP_OP03.RowCount:=x+1;
            STG_MP_OP03.Rows[x].Clear;
            STG_MP_OP03.Rows[x+1].Clear;
            x:=x-1;
            STG_MP_OP03.Cells[mcolmp_codpro,x]:=DM3.Tb_CompCPCODMAT.AsString;
            STG_MP_OP03.Cells[mcolmp_codpro,x]   :=DM3.Tb_CompCPCODMAT.AsString;
            STG_MP_OP03.Cells[mcolmp_descricao,x]:=DM1.Query4.FieldbyName('PDNOME').AsString;
            STG_MP_OP03.Cells[mcolmp_und,x]      :=DM1.Query4.FieldbyName('PDUND').AsString;
            STG_MP_OP03.Cells[mcolmp_qtdteor,x]  :=FormatFloat(mcasind, mQtdEst);
            STG_MP_OP03.Cells[mcolmp_qtdutil,x]  :=FormatFloat(mcasind, mQtdEst);
            STG_MP_OP03.Cells[mcolmp_qtdutil_motivo,x]  :='';
            STG_MP_OP03.Cells[mcolmp_lote,x]     :=DM1.Tb_LGCCLNUMERO.Value;
            STG_MP_OP03.Cells[mcolmp_re,x]       :=DM1.Tb_LGCCLLOTE_RE.Value;
            if (DM1.Tb_LGCCLDTFAB.AsDateTime>pDatanula) then
               STG_MP_OP03.Cells[mcolmp_dtfab,x]    :=FormatDateTime(fdt2, DM1.Tb_LGCCLDTFAB.Value);

            STG_MP_OP03.Cells[mcolmp_dtvcto,x]   :=mdtv;
            STG_MP_OP03.Cells[mcolmp_pu,x]       :=FormatFloat(mcaspuind, DM1.Query4.FieldbyName('PRECOUNIT').AsFloat);
            STG_MP_OP03.Cells[mcolmp_vt,x]  :=FormatFloat(mcasas, ValFloat(STG_MP_OP03.Cells[mcolmp_pu,x])*mQtdEst);

            mQtdBaixa:=mQtdBaixa+mQtdEst;
            end;
         DM1.Tb_LGC.Next;
         end;
      if  Arredonda( (mqtdItem-mQtdBaixa),DM1.Tb_PargerPCASIND.AsInteger)  >0 then
         begin
         mqtdest:=mQtdItem-mQtdBaixa;
         x:=STG_MP_OP03.RowCount;
         STG_MP_OP03.RowCount:=x+1;
         STG_MP_OP03.Rows[x].Clear;
         STG_MP_OP03.Rows[x+1].Clear;
         x:=x-1;

         STG_MP_OP03.Cells[mcolmp_codpro,x]   :=DM3.Tb_CompCPCODMAT.AsString;
         STG_MP_OP03.Cells[mcolmp_descricao,x]:=DM1.Query4.FieldbyName('PDNOME').AsString;
         STG_MP_OP03.Cells[mcolmp_und,x]      :=DM1.Query4.FieldbyName('PDUND').AsString;
         STG_MP_OP03.Cells[mcolmp_qtdteor,x]  :=FormatFloat(mcasind, mQtdEst);
         STG_MP_OP03.Cells[mcolmp_qtdutil,x]  :=FormatFloat(mcasind, mQtdEst);
         STG_MP_OP03.Cells[mcolmp_qtdutil_motivo,x]  :='';
         STG_MP_OP03.Cells[mcolmp_lote,x]     :=DM1.Tb_LGCCLNUMERO.Value;
         STG_MP_OP03.Cells[mcolmp_re,x]       :=DM1.Tb_LGCCLLOTE_RE.Value;
         STG_MP_OP03.Cells[mcolmp_dtvcto,x]   :=mdtv;
         if (DM1.Tb_LGCCLDTFAB.AsDateTime>pDatanula) then
            STG_MP_OP03.Cells[mcolmp_dtfab,x]    :=FormatDateTime(fdt2, DM1.Tb_LGCCLDTFAB.Value);

         STG_MP_OP03.Cells[mcolmp_pu,x]       :=FormatFloat(mcaspuind, DM1.Query4.FieldbyName('PRECOUNIT').AsFloat);
         STG_MP_OP03.Cells[mcolmp_vt,x]  :=FormatFloat(mcasas, ValFloat(STG_MP_OP03.Cells[mcolmp_pu,x])*mQtdEst);

         mQtdBaixa:=mQtdBaixa+mQtdEst;
         end;
      DM3.Tb_Comp.Next;
      end;
   end
else
   begin
   While not DM3.Tb_Comp.Eof do
      begin
      DM1.Query4.Close;
      DM1.Query4.SQL.Clear;
      DM1.Query4.SQL.Add('SELECT PDCODPRO,PDSALDO,PDNOME,PDUND,PDQTDGRML,PDPCOFAB'
                        +' ,case when PDPRECOC>0 then PDPRECOC '
                        +' when PDPCOFAB>0 THEN PDPCOFAB else PDPRECO1 END AS PRECOUNIT '

                        +' ,PDPRECOC, '
                        +' PDPRECO1 '
                        +' from CADPRO   where '+la_instrucao+iif(la_instrucao='','',' and ')
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=0'+IntToStr(codemp))
                        +' PDCODPRO=0'+DM3.Tb_CompCPCODMAT.Asstring);
      DM1.Query4.Open;

      mQtdItem :=Arredonda( (mQtdTotalMP*DM3.Tb_CompCPPERCENT_REST.Value/100) ,3);
      mQtdBaixa:=0;
      mitem:=-1;
      for x:=0 to STG_MP_OP03.RowCount-1 do
         begin
         if (ValFloat(STG_MP_OP03.Cells[mcolmp_codpro,x])=DM3.Tb_CompCPCODMAT.Value) then
            begin
            mitem:=x;
            STG_MP_OP03.Cells[mcolmp_codpro,x]   :=DM3.Tb_CompCPCODMAT.AsString;
            STG_MP_OP03.Cells[mcolmp_descricao,x]:=DM3.Tb_Compnommat.AsString;
            STG_MP_OP03.Cells[mcolmp_und,x]      :=DM3.Tb_Compund.AsString;
            STG_MP_OP03.Cells[mcolmp_qtdteor,x]  :=FormatFloat(mcasind, mQtdItem);
            STG_MP_OP03.Cells[mcolmp_qtdutil,x]  :=FormatFloat(mcasind, mQtdItem);
            STG_MP_OP03.Cells[mcolmp_qtdutil_motivo,x]  :='';
            STG_MP_OP03.Cells[mcolmp_lote,x]     :='';
            STG_MP_OP03.Cells[mcolmp_re,x]       :='';
            STG_MP_OP03.Cells[mcolmp_dtvcto,x]   :='';
            STG_MP_OP03.Cells[mcolmp_dtfab,x]    :='';

            STG_MP_OP03.Cells[mcolmp_pu,x]       :=FormatFloat(mcaspuind, DM1.Query4.FieldbyName('PRECOUNIT').AsFloat);
            STG_MP_OP03.Cells[mcolmp_vt,x]  :=FormatFloat(mcasas, ValFloat(STG_MP_OP03.Cells[mcolmp_pu,x])*mQtdItem);

            mQtdBaixa:=mQtdBaixa+mQtdItem;
            break;
            end;
         end;

      if mitem=-1 then
         begin
         x:=STG_MP_OP03.RowCount;
         STG_MP_OP03.RowCount:=x+1;
         STG_MP_OP03.Rows[x].Clear;
         STG_MP_OP03.Rows[x+1].Clear;
         x:=x-1;
         STG_MP_OP03.Cells[mcolmp_codpro,x]:=DM3.Tb_CompCPCODMAT.AsString;
         STG_MP_OP03.Cells[mcolmp_codpro,x]   :=DM3.Tb_CompCPCODMAT.AsString;
         STG_MP_OP03.Cells[mcolmp_descricao,x]:=DM3.Tb_Compnommat.AsString;
         STG_MP_OP03.Cells[mcolmp_und,x]      :=DM3.Tb_Compund.AsString;
         STG_MP_OP03.Cells[mcolmp_qtdteor,x]  :=FormatFloat(mcasind, mQtdItem);
         STG_MP_OP03.Cells[mcolmp_qtdutil,x]  :=FormatFloat(mcasind, mQtdItem);
         STG_MP_OP03.Cells[mcolmp_qtdutil_motivo,x]  :='';
         STG_MP_OP03.Cells[mcolmp_lote,x]     :='';
         STG_MP_OP03.Cells[mcolmp_re,x]       :='';
         STG_MP_OP03.Cells[mcolmp_dtvcto,x]   :='';
         STG_MP_OP03.Cells[mcolmp_dtfab,x]    :='';
         STG_MP_OP03.Cells[mcolmp_pu,x]       :=FormatFloat(mcaspuind, DM1.Query4.FieldbyName('PRECOUNIT').AsFloat);
         STG_MP_OP03.Cells[mcolmp_vt,x]  :=FormatFloat(mcasas, ValFloat(STG_MP_OP03.Cells[mcolmp_pu,x])*mQtdItem);

         mQtdBaixa:=mQtdBaixa+mQtdItem;
         end;
      if  (mqtdItem-mQtdBaixa) >0 then
         begin
         x:=STG_MP_OP03.RowCount;
         STG_MP_OP03.RowCount:=x+1;
         STG_MP_OP03.Rows[x].Clear;
         STG_MP_OP03.Rows[x+1].Clear;

         STG_MP_OP03.Cells[mcolmp_codpro,x]   :=DM3.Tb_CompCPCODMAT.AsString;
         STG_MP_OP03.Cells[mcolmp_descricao,x]:=DM3.Tb_Compnommat.AsString;
         STG_MP_OP03.Cells[mcolmp_und,x]      :=DM3.Tb_Compund.AsString;
         STG_MP_OP03.Cells[mcolmp_qtdteor,x]  :=FormatFloat(mcasind, mQtdItem);
         STG_MP_OP03.Cells[mcolmp_qtdutil,x]  :=FormatFloat(mcasind, mQtdItem);
         STG_MP_OP03.Cells[mcolmp_qtdutil_motivo,x]  := '';
         STG_MP_OP03.Cells[mcolmp_lote,x]     :='';
         STG_MP_OP03.Cells[mcolmp_re,x]       :='';
         STG_MP_OP03.Cells[mcolmp_dtvcto,x]   :='';
         STG_MP_OP03.Cells[mcolmp_dtfab,x]    :='';

         STG_MP_OP03.Cells[mcolmp_pu,x]       :=FormatFloat(mcaspuind, DM1.Query4.FieldbyName('PRECOUNIT').AsFloat);
         STG_MP_OP03.Cells[mcolmp_vt,x]  :=FormatFloat(mcasas, ValFloat(STG_MP_OP03.Cells[mcolmp_pu,x])*mQtdItem);

         mQtdBaixa:=mQtdBaixa+mQtdItem;
         end;
      DM3.Tb_Comp.Next;
      end;
   end;
// material de embalagem
flcadcomp(0,1,CODPRO.Text,'','');

if DM1.Tb_PargerPMPDISP.Value=1 then
   begin
   While not DM3.Tb_Comp.Eof do
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(1,'CADEST','CECODEMP','PDCODEMP','CECODPRO','PDCODPRO');
      if pbanco=0 then
        la_instrucao:=la_instrucao+' and ';
      fInnerJoin(0,'CADLGC' ,'CLCODEMP','PDCODEMP' ,'CLCODPRO' ,'PDCODPRO');

      DM1.Query4.Close;
      DM1.Query4.SQL.Clear;
      DM1.Query4.SQL.Add('SELECT PDCODPRO,PDSALDO,PDNOME,PDUND,PDQTDGRML,CESALDO,CLQTD,CLNUMERO,CLDTVCTO '
                        +' ,case when PDPRECOC>0 then PDPRECOC '
                        +' when PDPCOFAB>0 THEN PDPCOFAB else PDPRECO1 END AS PRECOUNIT '

                        +', PDPCOFAB, PDPRECOC, PDPRECO1 '
                        +' from CADPRO '+iif(la_tabelas='','',',')+la_tabelas
                        +'       '+la_Join
                        +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntToStr(codemp)+' and ')
                        +' PDCODPRO=0'+DM3.Tb_CompCPCODMAT.Asstring
                        +' order by CLDTVCTO');
      DM1.Query4.Open;

      mQtdItem :=Arredonda( (pQtdEmb*DM3.Tb_CompCPQUANT.Value),3);
      mQtdBaixa:=0;
      flcadlgc(mloc_armazenamento,0,codemp,DM3.Tb_CompCPCODMAT.AsString,'','');
      While not (DM1.Tb_LGC.Eof) and (RoundTo(mQtdBaixa,3)<=RoundTo(mQtdItem,3)) do
         begin
         if DM1.Tb_LGCCLQTD.Value<=0 then
            begin
            DM1.Tb_LGC.Next;
            Continue;
            end;
         if DM1.Tb_LGCCLDTVCTO.Value<=pdatanula then
            mdtv:='/  /'
         else
            mdtv:=FormatDateTime(fdt2, DM1.Tb_LGCCLDTVCTO.Value);
         if DM1.Tb_LGCCLQTD.Value<(mQtdItem-mQtdBaixa) then
            mQtdEst:=DM1.Tb_LGCCLQTD.Value
         else
            mQtdEst:=  (mQtdItem-mQtdBaixa);
         mitem:=-1;
         for x:=0 to STG_ME_OP03.RowCount-1 do
            begin
            if (ValFloat(STG_ME_OP03.Cells[mcolme_codpro,x])=DM1.Tb_LGCCLCODPRO.Value) and
               (Trim(STG_ME_OP03.Cells[mcolme_lote,x])=Trim(DM1.Tb_LGCCLNUMERO.AsString)) and
               (Trim(STG_ME_OP03.Cells[mcolme_dtvcto,x])=Trim(mdtv)) then
               begin
               mitem:=x;
               STG_ME_OP03.Cells[mcolme_codpro,x]   :=DM3.Tb_CompCPCODMAT.AsString;
               STG_ME_OP03.Cells[mcolme_descricao,x]:=DM1.Query4.FieldbyName('PDNOME').AsString;
               STG_ME_OP03.Cells[mcolme_und,x]      :=DM1.Query4.FieldbyName('PDUND').AsString;
               STG_ME_OP03.Cells[mcolme_qtdteor,x]  :=FormatFloat(mcasind, mQtdEst);
               STG_ME_OP03.Cells[mcolme_qtdutil,x]  :=FormatFloat(mcasind, mQtdEst);
               STG_ME_OP03.Cells[mcolme_qtdutil_motivo,x]     :='';
               STG_ME_OP03.Cells[mcolme_lote,x]     :=DM1.Tb_LGCCLNUMERO.Value;
               STG_ME_OP03.Cells[mcolme_re,x]       :=DM1.Tb_LGCCLLOTE_RE.Value;
               STG_ME_OP03.Cells[mcolme_dtvcto,x]   :=mdtv;
               if (DM1.Tb_LGCCLDTFAB.AsDateTime>pDatanula) then
                  STG_ME_OP03.Cells[mcolme_dtfab,x]    :=FormatDateTime(fdt2, DM1.Tb_LGCCLDTFAB.Value);

               STG_ME_OP03.Cells[mcolme_pu,x]       :=FormatFloat(mcaspuind, DM1.Query4.FieldbyName('PRECOUNIT').AsFloat);
               STG_ME_OP03.Cells[mcolme_vt,x]  :=FormatFloat(mcasas, ValFloat(STG_ME_OP03.Cells[mcolme_pu,x])*mQtdEst);

               mQtdBaixa:=mQtdBaixa+mQtdEst;
               break;
               end;
            end;

         if (mitem=-1) and (mqtdest<>0) then
            begin
            x:=STG_ME_OP03.RowCount;
            STG_ME_OP03.RowCount:=x+1;
            STG_ME_OP03.Rows[x].Clear;
            STG_ME_OP03.Rows[x+1].Clear;
            x:=x-1;
            STG_ME_OP03.Cells[mcolme_codpro,x]:=DM3.Tb_CompCPCODMAT.AsString;
            STG_ME_OP03.Cells[mcolme_codpro,x]   :=DM3.Tb_CompCPCODMAT.AsString;
            STG_ME_OP03.Cells[mcolme_descricao,x]:=DM1.Query4.FieldbyName('PDNOME').AsString;
            STG_ME_OP03.Cells[mcolme_und,x]      :=DM1.Query4.FieldbyName('PDUND').AsString;
            STG_ME_OP03.Cells[mcolme_qtdteor,x]  :=FormatFloat(mcasind, mQtdEst);
            STG_ME_OP03.Cells[mcolme_qtdutil,x]  :=FormatFloat(mcasind, mQtdEst);
            STG_ME_OP03.Cells[mcolme_qtdutil_motivo,x]     :='';
            STG_ME_OP03.Cells[mcolme_lote,x]     :=DM1.Tb_LGCCLNUMERO.Value;
            STG_ME_OP03.Cells[mcolme_re,x]       :=DM1.Tb_LGCCLLOTE_RE.Value;
            STG_ME_OP03.Cells[mcolme_dtvcto,x]   :=mdtv;
            if (DM1.Tb_LGCCLDTFAB.AsDateTime>pDatanula) then
               STG_ME_OP03.Cells[mcolme_dtfab,x]    :=FormatDateTime(fdt2, DM1.Tb_LGCCLDTFAB.Value);

            STG_ME_OP03.Cells[mcolme_pu,x]       :=FormatFloat(mcaspuind, DM1.Query4.FieldbyName('PRECOUNIT').AsFloat);
            STG_ME_OP03.Cells[mcolme_vt,x]  :=FormatFloat(mcasas, ValFloat(STG_ME_OP03.Cells[mcolme_pu,x])*mQtdEst);
            mQtdBaixa:=mQtdBaixa+mQtdEst;

            //foi aqui o problema
            end;
         DM1.Tb_LGC.Next;
         end;
      if  (mqtdItem-mQtdBaixa)  >0 then
         begin
         mqtdest:=mQtdItem-mQtdBaixa;
         x:=STG_ME_OP03.RowCount;
         STG_ME_OP03.RowCount:=x+1;
         STG_ME_OP03.Rows[x].Clear;
         STG_ME_OP03.Rows[x+1].Clear;
         x:=x-1;

         STG_ME_OP03.Cells[mcolme_codpro,x]   :=DM3.Tb_CompCPCODMAT.AsString;
         STG_ME_OP03.Cells[mcolme_descricao,x]:=DM1.Query4.FieldbyName('PDNOME').AsString;
         STG_ME_OP03.Cells[mcolme_und,x]      :=DM1.Query4.FieldbyName('PDUND').AsString;
         STG_ME_OP03.Cells[mcolme_qtdteor,x]  :=FormatFloat(mcasind, mQtdEst);
         STG_ME_OP03.Cells[mcolme_qtdutil,x]  :=FormatFloat(mcasind, mQtdEst);
         STG_ME_OP03.Cells[mcolme_qtdutil_motivo,x]     :='';

         STG_ME_OP03.Cells[mcolme_lote,x]     :=DM1.Tb_LGCCLNUMERO.Value;
         STG_ME_OP03.Cells[mcolme_re,x]       :=DM1.Tb_LGCCLLOTE_RE.Value;
         STG_ME_OP03.Cells[mcolme_dtvcto,x]   :=mdtv;
         if (DM1.Tb_LGCCLDTFAB.AsDateTime>pDatanula) then
            STG_ME_OP03.Cells[mcolme_dtfab,x]    :=FormatDateTime(fdt2, DM1.Tb_LGCCLDTFAB.Value);

         STG_ME_OP03.Cells[mcolme_pu,x]       :=FormatFloat(mcaspuind, DM1.Query4.FieldbyName('PRECOUNIT').AsFloat);
         STG_ME_OP03.Cells[mcolme_vt,x]  :=FormatFloat(mcasas, ValFloat(STG_ME_OP03.Cells[mcolme_pu,x])*mQtdEst);

         mQtdBaixa:=mQtdBaixa+mQtdEst;
         end;
      DM3.Tb_Comp.Next;
      end;
   end
else
   begin
   While not DM3.Tb_Comp.Eof do
      begin
      mQtdItem :=Arredonda( (pQtdEmb *DM3.Tb_CompCPQUANT.Value ), 3);
      mQtdBaixa:=0;
      mitem:=-1;
      DM1.Query4.Close;
      DM1.Query4.SQL.Clear;
      DM1.Query4.SQL.Add('SELECT PDCODPRO,PDSALDO,PDNOME,PDUND,PDQTDGRML '
                        +' ,case when PDPRECOC>0 then PDPRECOC '
                        +' when PDPCOFAB>0 THEN PDPCOFAB else PDPRECO1 END AS PRECOUNIT '
                        +'                                          ,PDPCOFAB,PDPRECOC, '
                        +' PDPRECO1 '
                        +' from CADPRO   where '+la_instrucao+iif(la_instrucao='','',' and ')
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntToStr(codemp)+' and')
                        +' PDCODPRO=0'+DM3.Tb_CompCPCODMAT.Asstring);
      DM1.Query4.Open;

      for x:=0 to STG_ME_OP03.RowCount-1 do
         begin
         if (ValFloat(STG_ME_OP03.Cells[mcolme_codpro,x])=DM3.Tb_CompCPCODMAT.Value) then
            begin
            mitem:=x;
            STG_ME_OP03.Cells[mcolme_codpro,x]   :=DM3.Tb_CompCPCODMAT.AsString;
            STG_ME_OP03.Cells[mcolme_descricao,x]:=DM3.Tb_Compnommat.AsString;
            STG_ME_OP03.Cells[mcolme_und,x]      :=DM3.Tb_Compund.AsString;
            STG_ME_OP03.Cells[mcolme_qtdteor,x]  :=FormatFloat(mcasind, mQtdItem);

            STG_ME_OP03.Cells[mcolme_qtdutil,x]  :=FormatFloat(mcasind, mQtdItem);
            STG_ME_OP03.Cells[mcolme_qtdutil_motivo,x]     :='';

            STG_ME_OP03.Cells[mcolme_lote,x]     :='';
            STG_ME_OP03.Cells[mcolme_re,x]       :='';
            STG_ME_OP03.Cells[mcolme_dtvcto,x]   :='';
            STG_ME_OP03.Cells[mcolme_dtfab,x]    :='';

            STG_ME_OP03.Cells[mcolme_pu,x]       :=FormatFloat(mcaspuind, DM1.Query4.FieldbyName('PRECOUNIT').AsFloat);
            STG_ME_OP03.Cells[mcolme_vt,x]  :=FormatFloat(mcasas, ValFloat(STG_ME_OP03.Cells[mcolme_pu,x])*mQtdItem);

            mQtdBaixa:=mQtdBaixa+mQtdItem;

            break;
            end;
         end;

      if mitem=-1 then
         begin
         x:=STG_ME_OP03.RowCount;
         STG_ME_OP03.RowCount:=x+1;
         STG_ME_OP03.Rows[x].Clear;
         STG_ME_OP03.Rows[x+1].Clear;
         x:=x-1;
         STG_ME_OP03.Cells[mcolme_codpro,x]:=DM3.Tb_CompCPCODMAT.AsString;
         STG_ME_OP03.Cells[mcolme_codpro,x]   :=DM3.Tb_CompCPCODMAT.AsString;
         STG_ME_OP03.Cells[mcolme_descricao,x]:=DM3.Tb_Compnommat.AsString;
         STG_ME_OP03.Cells[mcolme_und,x]      :=DM3.Tb_Compund.AsString;
         STG_ME_OP03.Cells[mcolme_qtdteor,x]  :=FormatFloat(mcasind, mQtdItem);
         STG_ME_OP03.Cells[mcolme_qtdutil,x]  :=FormatFloat(mcasind, mQtdItem);
         STG_ME_OP03.Cells[mcolme_qtdutil_motivo,x]     :='';

         STG_ME_OP03.Cells[mcolme_lote,x]     :='';
         STG_ME_OP03.Cells[mcolme_re,x]       :='';
         STG_ME_OP03.Cells[mcolme_dtvcto,x]   :='';
         STG_ME_OP03.Cells[mcolme_dtfab,x]    :='';

         STG_ME_OP03.Cells[mcolme_pu,x]       :=FormatFloat(mcaspuind, DM1.Query4.FieldbyName('PRECOUNIT').AsFloat);
         STG_ME_OP03.Cells[mcolme_vt,x]  :=FormatFloat(mcasas, ValFloat(STG_ME_OP03.Cells[mcolme_pu,x])*mQtdItem);

         mQtdBaixa:=mQtdBaixa+mQtdItem;
         end;
      if (mqtdItem-mQtdBaixa) >0 then
         begin
         x:=STG_ME_OP03.RowCount;
         STG_ME_OP03.RowCount:=x+1;
         STG_ME_OP03.Rows[x].Clear;
         STG_ME_OP03.Rows[x+1].Clear;

         STG_ME_OP03.Cells[mcolme_codpro,x]   :=DM3.Tb_CompCPCODMAT.AsString;
         STG_ME_OP03.Cells[mcolme_descricao,x]:=DM3.Tb_Compnommat.AsString;
         STG_ME_OP03.Cells[mcolme_und,x]      :=DM3.Tb_Compund.AsString;
         STG_ME_OP03.Cells[mcolme_qtdteor,x]  :=FormatFloat(mcasind, mQtdItem);
         STG_ME_OP03.Cells[mcolme_qtdutil,x]  :=FormatFloat(mcasind, mQtdItem);
         STG_ME_OP03.Cells[mcolme_qtdutil_motivo,x]     :='';

         STG_ME_OP03.Cells[mcolme_lote,x]     :='';
         STG_ME_OP03.Cells[mcolme_re,x]       :='';
         STG_ME_OP03.Cells[mcolme_dtvcto,x]   :='';
         STG_ME_OP03.Cells[mcolme_dtfab,x]    :='';
         STG_ME_OP03.Cells[mcolme_pu,x]       :=FormatFloat(mcaspuind, DM1.Query4.FieldbyName('PRECOUNIT').AsFloat);
         STG_ME_OP03.Cells[mcolme_vt,x]  :=FormatFloat(mcasas, ValFloat(STG_ME_OP03.Cells[mcolme_pu,x])*mQtdItem);

         mQtdBaixa:=mQtdBaixa+mQtdItem;
         end;
      DM3.Tb_Comp.Next;
      end;
   end;

// termino material de embalagem



// material de embarque
flcadcomp(0,2,CODPRO.Text,'','');

if DM1.Tb_PargerPMPDISP.Value=1 then
   begin
   While not DM3.Tb_Comp.Eof do
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(1,'CADEST','CECODEMP','PDCODEMP','CECODPRO','PDCODPRO');
      if pbanco=0 then
        la_instrucao:=la_instrucao+' and ';
      fInnerJoin(0,'CADLGC' ,'CLCODEMP','PDCODEMP' ,'CLCODPRO' ,'PDCODPRO');

      DM1.Query4.Close;
      DM1.Query4.SQL.Clear;
      DM1.Query4.SQL.Add('SELECT PDCODPRO,PDSALDO,PDNOME,PDUND,PDQTDGRML,CESALDO,CLQTD,CLNUMERO,CLDTVCTO,PDPCOFAB '
                        +' ,case when PDPRECOC>0 then PDPRECOC '
                        +' when PDPCOFAB>0 THEN PDPCOFAB else PDPRECO1 END AS PRECOUNIT '

                         +',PDPRECOC, PDPRECO1 '
                        +' from CADPRO '+iif(la_tabelas='','',',')+la_tabelas
                        +'       '+la_Join
                        +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntToStr(codemp)+' and ')
                        +' PDCODPRO=0'+DM3.Tb_CompCPCODMAT.Asstring
                        +' order by CLDTVCTO');
      DM1.Query4.Open;

      try
         mQtdItem := round( pQtdEmb/DM3.Tb_CompCPQUANT.Value );
      except
         mQtdItem :=0;
         end;
      if (mQtdItem*DM3.Tb_CompCPQUANT.Value)<pQtdEmb then
         mQtdItem:=mQtdItem+1;


      mQtdBaixa:=0;
      flcadlgc(mloc_armazenamento,0,codemp,DM3.Tb_CompCPCODMAT.AsString,'','');
//      While (not DM1.Tb_LGC.Eof)  and (roundto(mQtdBaixa,3)<=roundto(mQtdItem,3)) do
      While (not DM1.Tb_LGC.Eof)  and (roundto(mQtdBaixa,3)<roundto(mQtdItem,3)) do
         begin
         if DM1.Tb_LGCCLQTD.Value<=0 then
            begin
            DM1.Tb_LGC.Next;
            Continue;
            end;
         if DM1.Tb_LGCCLDTVCTO.Value<=pdatanula then
            mdtv:='/  /'
         else
            mdtv:=FormatDateTime(fdt2, DM1.Tb_LGCCLDTVCTO.Value);
         if DM1.Tb_LGCCLQTD.Value<(mQtdItem-mQtdBaixa) then
            mQtdEst:=DM1.Tb_LGCCLQTD.Value
         else
            mQtdEst:=(mQtdItem-mQtdBaixa);
         mitem:=-1;
         for x:=0 to STG_ME_OP03.RowCount-1 do
            begin
            if (ValFloat(STG_ME_OP03.Cells[mcolme_codpro,x])=DM1.Tb_LGCCLCODPRO.Value) and
               (Trim(STG_ME_OP03.Cells[mcolme_lote,x])=Trim(DM1.Tb_LGCCLNUMERO.AsString)) and
               (Trim(STG_ME_OP03.Cells[mcolme_dtvcto,x])=Trim(mdtv)) then
               begin
               mitem:=x;
               STG_ME_OP03.Cells[mcolme_codpro,x]   :=DM3.Tb_CompCPCODMAT.AsString;
               STG_ME_OP03.Cells[mcolme_descricao,x]:=DM1.Query4.FieldbyName('PDNOME').AsString;
               STG_ME_OP03.Cells[mcolme_und,x]      :=DM1.Query4.FieldbyName('PDUND').AsString;
               STG_ME_OP03.Cells[mcolme_qtdteor,x]  :=FormatFloat(mcasind, mQtdEst);
               STG_ME_OP03.Cells[mcolme_qtdutil,x]  :=FormatFloat(mcasind, mQtdEst);
               STG_ME_OP03.Cells[mcolme_qtdutil_motivo,x]     :='';

               STG_ME_OP03.Cells[mcolme_lote,x]     :=DM1.Tb_LGCCLNUMERO.Value;
               STG_ME_OP03.Cells[mcolme_re,x]       :=DM1.Tb_LGCCLLOTE_RE.Value;
               STG_ME_OP03.Cells[mcolme_dtvcto,x]   :=mdtv;
               if (DM1.Tb_LGCCLDTFAB.AsDateTime>pDatanula) then
                  STG_ME_OP03.Cells[mcolme_dtfab,x]    :=FormatDateTime(fdt2, DM1.Tb_LGCCLDTFAB.Value);


               STG_ME_OP03.Cells[mcolme_pu,x]       :=FormatFloat(mcaspuind, DM1.Query4.FieldbyName('PRECOUNIT').AsFloat);
               STG_ME_OP03.Cells[mcolme_vt,x]  :=FormatFloat(mcasas, ValFloat(STG_ME_OP03.Cells[mcolme_pu,x])*mQtdEst);


               mQtdBaixa:=mQtdBaixa+mQtdEst;
               break;
               end;
            end;

         if mitem=-1 then
            begin
            x:=STG_ME_OP03.RowCount;
            STG_ME_OP03.RowCount:=x+1;
            STG_ME_OP03.Rows[x].Clear;
            STG_ME_OP03.Rows[x+1].Clear;
            x:=x-1;
            STG_ME_OP03.Cells[mcolme_codpro,x]:=DM3.Tb_CompCPCODMAT.AsString;
            STG_ME_OP03.Cells[mcolme_codpro,x]   :=DM3.Tb_CompCPCODMAT.AsString;
            STG_ME_OP03.Cells[mcolme_descricao,x]:=DM1.Query4.FieldbyName('PDNOME').AsString;
            STG_ME_OP03.Cells[mcolme_und,x]      :=DM1.Query4.FieldbyName('PDUND').AsString;
            STG_ME_OP03.Cells[mcolme_qtdteor,x]  :=FormatFloat(mcasind, mQtdEst);
            STG_ME_OP03.Cells[mcolme_qtdutil,x]  :=FormatFloat(mcasind, mQtdEst);
            STG_ME_OP03.Cells[mcolme_qtdutil_motivo,x]     :='';

            STG_ME_OP03.Cells[mcolme_lote,x]     :=DM1.Tb_LGCCLNUMERO.Value;
            STG_ME_OP03.Cells[mcolme_re,x]       :=DM1.Tb_LGCCLLOTE_RE.Value;
            STG_ME_OP03.Cells[mcolme_dtvcto,x]   :=mdtv;
            if (DM1.Tb_LGCCLDTFAB.AsDateTime>pDatanula) then
                  STG_ME_OP03.Cells[mcolme_dtfab,x]    :=FormatDateTime(fdt2, DM1.Tb_LGCCLDTFAB.Value);

            STG_ME_OP03.Cells[mcolme_pu,x]       :=FormatFloat(mcaspuind, DM1.Query4.FieldbyName('PRECOUNIT').AsFloat);
            STG_ME_OP03.Cells[mcolme_vt,x]  :=FormatFloat(mcasas, ValFloat(STG_ME_OP03.Cells[mcolme_pu,x])*mQtdEst);


            mQtdBaixa:=mQtdBaixa+mQtdEst;
            end;
         DM1.Tb_LGC.Next;
         end;
      if (mqtdItem-mQtdBaixa) >0 then
         begin
         mqtdest:=mQtdItem-mQtdBaixa;
         x:=STG_ME_OP03.RowCount;
         STG_ME_OP03.RowCount:=x+1;
         STG_ME_OP03.Rows[x].Clear;
         STG_ME_OP03.Rows[x+1].Clear;
         x:=x-1;

         STG_ME_OP03.Cells[mcolme_codpro,x]   :=DM3.Tb_CompCPCODMAT.AsString;
         STG_ME_OP03.Cells[mcolme_descricao,x]:=DM1.Query4.FieldbyName('PDNOME').AsString;
         STG_ME_OP03.Cells[mcolme_und,x]      :=DM1.Query4.FieldbyName('PDUND').AsString;
         STG_ME_OP03.Cells[mcolme_qtdteor,x]  :=FormatFloat(mcasind, mQtdEst);
         STG_ME_OP03.Cells[mcolme_qtdutil,x]  :=FormatFloat(mcasind, mQtdEst);
         STG_ME_OP03.Cells[mcolme_qtdutil_motivo,x]     :='';

         STG_ME_OP03.Cells[mcolme_lote,x]     :=DM1.Tb_LGCCLNUMERO.Value;
         STG_ME_OP03.Cells[mcolme_re,x]       :=DM1.Tb_LGCCLLOTE_RE.Value;
         STG_ME_OP03.Cells[mcolme_dtvcto,x]   :=mdtv;
         if (DM1.Tb_LGCCLDTFAB.AsDateTime>pDatanula) then
             STG_ME_OP03.Cells[mcolme_dtfab,x]    :=FormatDateTime(fdt2, DM1.Tb_LGCCLDTFAB.Value);

         STG_ME_OP03.Cells[mcolme_pu,x]       :=FormatFloat(mcaspuind, DM1.Query4.FieldbyName('PRECOUNIT').AsFloat);
         STG_ME_OP03.Cells[mcolme_vt,x]  :=FormatFloat(mcasas, ValFloat(STG_ME_OP03.Cells[mcolme_pu,x])*mQtdEst);


         mQtdBaixa:=mQtdBaixa+mQtdEst;
         end;
      DM3.Tb_Comp.Next;
      end;
   end
else
   begin
   While not DM3.Tb_Comp.Eof do
      begin
      try
         mQtdItem := round( pQtdEmb/DM3.Tb_CompCPQUANT.Value );
      except
         mQtdItem :=0;
         end;
      if (mQtdItem*DM3.Tb_CompCPQUANT.Value)<pQtdEmb then
         mQtdItem:=mQtdItem+1;

      DM1.Query4.Close;
      DM1.Query4.SQL.Clear;
      DM1.Query4.SQL.Add('SELECT PDCODPRO,PDSALDO,PDNOME,PDUND,PDQTDGRML'
                        +' ,case when PDPRECOC>0 then PDPRECOC '
                        +' when PDPCOFAB>0 THEN PDPCOFAB else PDPRECO1 END AS PRECOUNIT '

                        +',PDPCOFAB,PDPRECOC, '
                        +' PDPRECO1 '
                        +' from CADPRO   where '+la_instrucao+iif(la_instrucao='','',' and ')
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntToStr(codemp)+' and ')
                        +' PDCODPRO=0'+DM3.Tb_CompCPCODMAT.Asstring);
      DM1.Query4.Open;


      mQtdBaixa:=0;
      mitem:=-1;
      for x:=0 to STG_ME_OP03.RowCount-1 do
         begin
         if (ValFloat(STG_ME_OP03.Cells[mcolme_codpro,x])=DM3.Tb_CompCPCODMAT.Value) then
            begin
            mitem:=x;
            STG_ME_OP03.Cells[mcolme_codpro,x]   :=DM3.Tb_CompCPCODMAT.AsString;
            STG_ME_OP03.Cells[mcolme_descricao,x]:=DM3.Tb_Compnommat.AsString;
            STG_ME_OP03.Cells[mcolme_und,x]      :=DM3.Tb_Compund.AsString;
            STG_ME_OP03.Cells[mcolme_qtdteor,x]  :=FormatFloat(mcasind, mQtdItem);
            STG_ME_OP03.Cells[mcolme_qtdutil,x]  :=FormatFloat(mcasind, mQtdItem);
            STG_ME_OP03.Cells[mcolme_qtdutil_motivo,x]     :='';

            STG_ME_OP03.Cells[mcolme_lote,x]     :='';
            STG_ME_OP03.Cells[mcolme_re,x]       :='';
            STG_ME_OP03.Cells[mcolme_dtvcto,x]   :='';
            STG_ME_OP03.Cells[mcolme_dtfab,x]    :='';

            STG_ME_OP03.Cells[mcolme_pu,x]       :=FormatFloat(mcaspuind, DM1.Query4.FieldbyName('PRECOUNIT').AsFloat);
            STG_ME_OP03.Cells[mcolme_vt,x]  :=FormatFloat(mcasas, ValFloat(STG_ME_OP03.Cells[mcolme_pu,x])*mQtdItem);

            mQtdBaixa:=mQtdBaixa+mQtdItem;
            break;
            end;
         end;

      if mitem=-1 then
         begin
         x:=STG_ME_OP03.RowCount;
         STG_ME_OP03.RowCount:=x+1;
         STG_ME_OP03.Rows[x].Clear;
         STG_ME_OP03.Rows[x+1].Clear;
         x:=x-1;
         STG_ME_OP03.Cells[mcolme_codpro,x]:=DM3.Tb_CompCPCODMAT.AsString;
         STG_ME_OP03.Cells[mcolme_codpro,x]   :=DM3.Tb_CompCPCODMAT.AsString;
         STG_ME_OP03.Cells[mcolme_descricao,x]:=DM3.Tb_Compnommat.AsString;
         STG_ME_OP03.Cells[mcolme_und,x]      :=DM3.Tb_Compund.AsString;
         STG_ME_OP03.Cells[mcolme_qtdteor,x]  :=FormatFloat(mcasind, mQtdItem);
         STG_ME_OP03.Cells[mcolme_qtdutil,x]  :=FormatFloat(mcasind, mQtdItem);
         STG_ME_OP03.Cells[mcolme_qtdutil_motivo,x]     :='';

         STG_ME_OP03.Cells[mcolme_lote,x]     :='';
         STG_ME_OP03.Cells[mcolme_re,x]       :='';
         STG_ME_OP03.Cells[mcolme_dtvcto,x]   :='';
         STG_ME_OP03.Cells[mcolme_dtfab,x]    :='';

         STG_ME_OP03.Cells[mcolme_pu,x]       :=FormatFloat(mcaspuind, DM1.Query4.FieldbyName('PRECOUNIT').AsFloat);
         STG_ME_OP03.Cells[mcolme_vt,x]  :=FormatFloat(mcasas, ValFloat(STG_ME_OP03.Cells[mcolme_pu,x])*mQtdItem);

         mQtdBaixa:=mQtdBaixa+mQtdItem;

         end;
      if (mqtdItem-mQtdBaixa) >0 then
         begin
         x:=STG_ME_OP03.RowCount;
         STG_ME_OP03.RowCount:=x+1;
         STG_ME_OP03.Rows[x].Clear;
         STG_ME_OP03.Rows[x+1].Clear;

         STG_ME_OP03.Cells[mcolme_codpro,x]   :=DM3.Tb_CompCPCODMAT.AsString;
         STG_ME_OP03.Cells[mcolme_descricao,x]:=DM3.Tb_Compnommat.AsString;
         STG_ME_OP03.Cells[mcolme_und,x]      :=DM3.Tb_Compund.AsString;
         STG_ME_OP03.Cells[mcolme_qtdteor,x]  :=FormatFloat(mcasind, mQtdItem);
         STG_ME_OP03.Cells[mcolme_qtdutil,x]  :=FormatFloat(mcasind, mQtdItem);
         STG_ME_OP03.Cells[mcolme_qtdutil_motivo,x]     :='';

         STG_ME_OP03.Cells[mcolme_lote,x]     :='';
         STG_ME_OP03.Cells[mcolme_re,x]       :='';
         STG_ME_OP03.Cells[mcolme_dtvcto,x]   :='';
         STG_ME_OP03.Cells[mcolme_dtfab,x]    :='';
         STG_ME_OP03.Cells[mcolme_pu,x]       :=FormatFloat(mcaspuind, DM1.Query4.FieldbyName('PRECOUNIT').AsFloat);
         STG_ME_OP03.Cells[mcolme_vt,x]  :=FormatFloat(mcasas, ValFloat(STG_ME_OP03.Cells[mcolme_pu,x])*mQtdItem);

         mQtdBaixa:=mQtdBaixa+mQtdItem;
         end;
      DM3.Tb_Comp.Next;
      end;
   end;

// termino material de embarque


result:=True;
end;

procedure TFrm_IndEnv_Fab.BBSAIRClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_IndEnv_Fab.STG_MP_OP03DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;
begin

if  ((aCol=mcolmp_descricao) or (Acol=mcolmp_und) or (Acol=mcolmp_vt) ) then
   begin
   STG_MP_OP03.Canvas.Brush.Color:=$00FFAAD5;
   STG_MP_OP03.Canvas.TextRect(Rect, Rect.Left, rect.Top,STG_MP_OP03.Cells[acol,arow]);
   end;




if  ((aCol=mcolmp_qtdteor) or (Acol=mcolmp_qtdutil) or (Acol=mcolmp_pu) or (Acol=mcolmp_vt) ) then
   begin


//Pega o texto da célula
  Texto := STG_MP_OP03.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STG_MP_OP03.Canvas.TextWidth(Texto);
  AlturaTexto := STG_MP_OP03.Canvas.TextHeight(Texto);

// Direita
    X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG_MP_OP03.Canvas.TextRect(Rect, X, Y, Texto);
  end;

end;

procedure TFrm_IndEnv_Fab.STG_ME_OP03DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;
begin

if  ((aCol=mcolme_descricao) or (Acol=mcolme_und) or (Acol=mcolme_vt)  ) then
   begin
   STG_ME_OP03.Canvas.Brush.Color:=$00FFAAD5;
   STG_ME_OP03.Canvas.TextRect(Rect, Rect.Left, rect.Top,STG_ME_OP03.Cells[acol,arow]);
   end;




if  ( (aCol=mcolme_qtdteor) or (Acol=mcolme_qtdutil)
   or (Acol=mcolme_pu) or (Acol=mcolme_vt) ) then
   begin


//Pega o texto da célula
  Texto := STG_ME_OP03.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STG_ME_OP03.Canvas.TextWidth(Texto);
  AlturaTexto := STG_ME_OP03.Canvas.TextHeight(Texto);

// Direita
    X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG_ME_OP03.Canvas.TextRect(Rect, X, Y, Texto);
  end;

end;

procedure TFrm_IndEnv_Fab.BBLOCALIZARClick(Sender: TObject);
var
x: Integer;
query_etapa: tQuery;
begin

if tbs_relatorio.Visible = True then
  begin
  tbs_relatorio.Visible   := False;
  PageControl1.ActivePage := tsMatPrima;
  end;

if mOperFab<>3 then
  begin
  Application.CreateForm(TFrm_IndEnv_Fab_Loc, Frm_IndEnv_Fab_Loc);
  Frm_IndEnv_Fab_Loc.mInd_Fab_Origem_op:=0;
  Frm_IndEnv_Fab_Loc.ShowModal;

  if Trim(Frm_IndEnv_Fab_Loc.MCHAVEI.Text)<>'' then
    begin
    MCHAVE.Text  :=Frm_IndEnv_Fab_Loc.MCHAVEI.Text;
    mLotSeqIndFab:=valint(Frm_IndEnv_Fab_Loc.LOTSEQ.Text);
    end;
  end;

DM3.Tb_Op01.Close;
DM3.Tb_Op01.SQL.Clear;
DM3.Tb_OP01.SQL.Add('Select * from CADOP01 where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP1_CODEMP=0'+IntTostr(codemp)+' and ')
                   +' OP1_FABENV=0'
                   +' and OP1_LOTSEQ=0'+IntToStr(mLotSeqIndFab)
                   +' and OP1_CODIGO=0'+Trim(MCHAVE.Text));
DM3.Tb_Op01.Open;
if DM3.Tb_Op01.Eof then
  begin
  Fmensagem('Chave não Encontrada!',0,['0'],0);
  exit;
  end;

Tb_Op02.Close;
Tb_Op02.SQL.Clear;
Tb_Op02.SQL.add('Select OP2_CODEMP, '
                   +'       OP2_CODIGO, '
                   +'       OP2_SEQ, '
                   +'       OP2_CODPRO, '
                   +'       OP2_NUMERO, '
                   +'       OP2_QTDPREV, '
                   +'       OP2_QTDPROD, '
                   +'       OP2_QTDPROD_MOTIVO, '
                   +'       OP2_PU, '
                     +'       OP2_LOTSEQ, '
                   +'       OP2_FABENV, '
                   +'       OP2_DTVCTO, '
                   +'       OP2_DTFAB, '
                   +'       OP2_FAB_CHORI, '
                   +'       OP2_FAB_CODIGO, '
                   +'       OP2_FAB_LOTE, '
                   +'       OP2_FAB_VCTO, '
                   +'       OP2_FAB_DTFAB, '
                   +'       OP2_FAB_QTD, '
                   +'       OP2_FAB_PU, '
                   +'       OP2_SITACAB, '
                   +'       OP2_ORIGEM, '
                   +'       CASE WHEN OP2_QTDPREV>0 AND OP2_QTDPROD>0 AND OP2_QTDPREV<>OP2_QTDPROD THEN '
                   +'       (OP2_QTDPREV-OP2_QTDPROD) * 100 / OP2_QTDPREV '
                   +'       ELSE 0 END AS PERC_PERDAS, '
                   +'       PDNOME '
                   +'       ,PDMARCA '
                   +'       ,PDUND '
                   +'       ,PDQTDGRML,PDPRZVAL,PDREGMS '
                   +'       ,PDCODGRU AS CODGRU '
                   +'       ,PDNOMGRU AS NOMGRU '
                   +' from CADOP02,CADPRO '
                   +' where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',
                   ' OP2_CODEMP=0'+IntTostr(codemp)+' and PDCODEMP=OP2_CODEMP and ' )
                   +' OP2_FABENV=0 and '
                   +' OP2_LOTSEQ=0'+IntToStr(mLotSeqIndFab)
                   +' and OP2_CODIGO=0'+Trim(MCHAVE.Text)
                   +' AND PDCODPRO=OP2_CODPRO '
                   +' order by OP2_SEQ, PDNOME');
Tb_Op02.Open;
//Tb_Op02.SQL.SAVETOFILE('C:\OP02.TXT');

fAbreCadop03(0);

{
DM3.Tb_OpET.Close;
DM3.Tb_OpET.SQL.Clear;
DM3.Tb_OpEt.SQL.add('Select * from CADOPET where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OPE_CODEMP=0'+IntTostr(codemp)+' and ')
                   +' OPE_FABENV=0'
                   +' and OPE_LOTSEQ=0'+IntToStr(mLotSeqIndFab)
                   +' and OPE_CODIGO=0'+Trim(MCHAVE.Text)
                   +' order by OPE_CODETA');
DM3.Tb_OpET.Open;
}
BBLIMPAR.Click;
MCHAVE.Text         :=DM3.Tb_Op01OP1_CODIGO.AsString;
MDATA.Text          :=FormatDateTime(fdt2, DM3.Tb_Op01OP1_DATA.Value);
MNUMLOT.Text        :=DM3.Tb_Op01OP1_LOTE.Value;

mOP1_PEDORI_CHAVE  := DM3.Tb_Op01OP1_PEDORI_CHAVE.AsInteger;
mOP1_PEDORI_LOTSEQ := DM3.Tb_Op01OP1_PEDORI_LOTSEQ.AsInteger;
mOP1_PEDORI_CODEMP := DM3.Tb_Op01OP1_PEDORI_CODEMP.AsInteger;


mloc_armazenamento:=DM3.Tb_op01OP1_LOCARMAZENAMENTO.asinteger;

if fLerGenerico_query('CADPRO_FILIAL','CFFILIAL,CFNOME','CFFILIAL='+DM3.Tb_op01OP1_LOCARMAZENAMENTO.AsString+' order by CFFILIAL',query_consulta) then
   CB_FILIAL.text:=Query_consulta.fieldbyName('CFNOME').asstring+' - ['+query_consulta.fieldbyname('CFFILIAL').asstring+']';

if DM3.Tb_Op01OP1_DATAVEN.Value<=pdatanula then
  MDATAVEN.Text    :='/  /'
else
  MDATAVEN.Text       :=FormatDateTime(fdt2, DM3.Tb_Op01OP1_DATAVEN.Value);

if (DM3.Tb_Op01OP1_STATUS.IsNull) or (DM3.Tb_Op01OP1_STATUS.AsInteger<2) then
  status.Caption:='Pendente'
else if DM3.Tb_Op01OP1_STATUS.AsInteger=2 then
  status.Caption:='Confirmado'
else
  status.Caption:='Indefinido';

CODPRO.Text         :=Tb_Op02OP2_CODPRO.AsString;

CB_NOMPRO.Text:=FormatFloat('00000', Tb_Op02OP2_CODPRO.asfloat)+'|'+ Tb_Op02PDNOME.Value+'|'+Tb_Op02PDUND.AsString;

QTDPREV.Text        :=FormatFloat(mcasind, Tb_Op02OP2_QTDPREV.Value);
QTDPROD.Text        :=FormatFloat(mcasind, Tb_Op02OP2_QTDPROD.Value);
if Tb_Op02PERC_PERDAS.AsFloat=0 then
   lbl_perdas.Caption  :=''
else
   lbl_perdas.Caption  :=Tb_Op02PERC_PERDAS.AsString+'% de perdas ';


CB01_MOTIVO.Text    :=Tb_Op02OP2_QTDPROD_MOTIVO.Value;
PRAZOVAL.Text       :=Tb_Op02PDPRZVAL.AsString;
mQtdMan_Fab         :=DM3.Tb_Op01OP1_QTDMAN.AsFloat;
STG_MP_OP03.RowCount     :=0;
STG_MP_OP03.Rows[0].Clear;
While not Tb_Op03.Eof do
  begin
  x:=STG_MP_OP03.RowCount;
  STG_MP_OP03.RowCount:=x+1;
  STG_MP_OP03.Rows[x+1].Clear;
  STG_MP_OP03.Rows[x].Clear;
  x:=x-1;
  flqr1('PDNOME,PDUND','PD','CADPRO','N','PDCODPRO',Tb_Op03OP3_CODMAT.AsString);
  STG_MP_OP03.Cells[mcolmp_codpro,x]   :=Tb_Op03OP3_CODMAT.AsString;
  STG_MP_OP03.Cells[mcolmp_descricao,x]:=DM1.Query1.FieldbyName('PDNOME').AsString;
  STG_MP_OP03.Cells[mcolmp_und,x]      :=DM1.Query1.FieldbyName('PDUND').AsString;
  STG_MP_OP03.Cells[mcolmp_qtdteor,x]     :=FormatFloat(mcasind, Tb_Op03OP3_QTDPREV.Value);
  STG_MP_OP03.Cells[mcolmp_percperdas,x]  :=Tb_Op03PERC_PERDAS.AsString;

  STG_MP_OP03.Cells[mcolmp_qtdutil,x]  :=FormatFloat(mcasind, Tb_Op03OP3_QTDUTIL.Value);
  STG_MP_OP03.Cells[mcolmp_qtdutil_motivo,x]  :=Tb_Op03OP3_QTDUTIL_MOTIVO.AsString;
  STG_MP_OP03.Cells[mcolmp_lote,x]     :=Tb_Op03OP3_lote.AsString;
  STG_MP_OP03.Cells[mcolmp_re,x]       :=Tb_Op03OP3_LOTE_RE.AsString;
  if (Tb_Op03OP3_DTVCTO.IsNull) or (Tb_Op03OP3_DTVCTO.AsDateTime<=pdatanula) then
    STG_MP_OP03.Cells[mcolmp_dtvcto,x]   :='/  /'
  else
    STG_MP_OP03.Cells[mcolmp_dtvcto,x]   :=FormatDatetime(fdt2, Tb_Op03OP3_DTVCTO.Value);

  if (Tb_Op03OP3_DTFAB.IsNull) or (Tb_Op03OP3_DTFAB.AsDateTime<=pdatanula) then
    STG_MP_OP03.Cells[mcolmp_dtfab,x]   :='/  /'
  else
    STG_MP_OP03.Cells[mcolmp_dtfab,x]   :=FormatDatetime(fdt2, Tb_Op03OP3_DTFAB.Value);


  STG_MP_OP03.Cells[mcolmp_pu,x]          :=FormatFloat(mcasind, Tb_Op03OP3_PU.Value);
  STG_MP_OP03.Cells[mcolmp_vt,x]          :=FormatFloat(mcasind, Tb_Op03OP3_PU.Value*Tb_Op03OP3_QTDPREV.Value);
  Tb_Op03.Next;
  end;

fAbreCadop03(1);

STG_ME_OP03.RowCount     :=0;
STG_ME_OP03.Rows[0].Clear;
While not Tb_Op03.Eof do
  begin
  x:=STG_ME_OP03.RowCount;
  STG_ME_OP03.RowCount:=x+1;
  STG_ME_OP03.Rows[x+1].Clear;
  STG_ME_OP03.Rows[x].Clear;
  x:=x-1;
  flqr1('PDNOME,PDUND','PD','CADPRO','N','PDCODPRO',Tb_Op03OP3_CODMAT.AsString);
  STG_ME_OP03.Cells[mcolme_codpro,x]   :=Tb_Op03OP3_CODMAT.AsString;
  STG_ME_OP03.Cells[mcolme_descricao,x] :=DM1.Query1.FieldbyName('PDNOME').AsString;
  STG_ME_OP03.Cells[mcolme_und,x]      :=DM1.Query1.FieldbyName('PDUND').AsString;
  STG_ME_OP03.Cells[mcolme_qtdteor,x]  :=FormatFloat(mcasind, Tb_Op03OP3_QTDPREV.Value);
  STG_ME_OP03.Cells[mcolme_qtdutil,x]  :=FormatFloat(mcasind, Tb_Op03OP3_QTDUTIL.Value);
  STG_ME_OP03.Cells[mcolme_qtdutil_motivo,x]     :=Tb_Op03OP3_QTDUTIL_motivo.Asstring;
  STG_ME_OP03.Cells[mcolme_percperdas,x]         :=Tb_Op03PERC_PERDAS.Asstring;

  STG_ME_OP03.Cells[mcolme_lote,x]     :=Tb_Op03OP3_lote.AsString;
  STG_ME_OP03.Cells[mcolme_re,x]       :=Tb_Op03OP3_LOTE_RE.AsString;
  STG_ME_OP03.Cells[mcolme_pu,x]       :=FormatFloat(mcasind, Tb_Op03OP3_PU.Value);
  STG_ME_OP03.Cells[mcolme_vt,x]       :=FormatFloat(mcasind, Tb_Op03OP3_PU.Value*Tb_Op03OP3_QTDPREV.value);



  if (Tb_Op03OP3_DTVCTO.IsNull) or (Tb_Op03OP3_DTVCTO.AsDateTime<=pdatanula) then
    STG_ME_OP03.Cells[mcolme_dtvcto,x]   :='/  /'
  else
    STG_ME_OP03.Cells[mcolme_dtvcto,x]   :=FormatDatetime(fdt2, Tb_Op03OP3_DTVCTO.Value);


  if (Tb_Op03OP3_DTFAB.IsNull) or (Tb_Op03OP3_DTFAB.AsDateTime<=pdatanula) then
    STG_ME_OP03.Cells[mcolme_dtfab,x]   :='/  /'
  else
    STG_ME_OP03.Cells[mcolme_dtfab,x]   :=FormatDatetime(fdt2, Tb_Op03OP3_DTFAB.Value);

  Tb_Op03.Next;
  end;

fptotais(0);



query_etapa:=tQuery.create(nil);
query_etapa.DatabaseName:='SG_ASSOC';
query_etapa.Close;
query_etapa.SQL.clear;
query_etapa.SQL.Add('Select * from CADOP_ETA where '
                   +' ETA_CODEMP=:CODEMP '
                   +' and ETA_CHAVE_OP=:CHAVE '
                   +' and ETA_CHAVE_OP_ano=:CHAVE_ANO '
                   +' order by ETA_DATHOR_INIPROC ');
query_etapa.ParamByName('CODEMP').AsInteger:=codemp;
query_etapa.ParamByName('CHAVE').AsInteger:=valint(MCHAVE.Text);
query_etapa.ParamByName('CHAVE_ANO').AsInteger:=mLotSeqIndFab;
query_etapa.Open;
Tb_Op_ETA.Close;
Tb_Op_ETA.Open;
While not query_etapa.eof do
   begin
   Tb_Op_ETA.Append;
   Tb_Op_ETAETA_CODIGO.Value:=query_etapa.fieldbyname('ETA_CHAVE_OP').AsInteger;
   Tb_Op_ETAETA_CODEMP.Value:=query_etapa.fieldbyname('ETA_CODEMP').AsInteger;
   Tb_Op_ETAETA_DESCRICAO.Value:=query_etapa.fieldbyname('ETA_DESCRICAO').AsString;
   Tb_Op_ETAETA_ORDEM.Value:=query_etapa.fieldbyname('ETA_ORDEM').AsInteger;
   Tb_Op_ETAETA_RESPONSAVEL.Value:=query_etapa.fieldbyname('ETA_RESPONSAVEL').AsString;
   if query_etapa.fieldbyname('ETA_DATHOR_INIPROC').AsDateTime>pdatanula  then
      begin
      Tb_Op_ETAETA_DATHOR_INIPROC.Value:=StrToDate(FormatDatetime(fdt2, query_etapa.fieldbyname('ETA_DATHOR_INIPROC').AsDateTime));
      Tb_Op_ETAETA_HOR_INIPROC.Value   :=StrToTime(FormatDatetime(fhr, query_etapa.fieldbyname('ETA_DATHOR_INIPROC').AsDateTime));
      end;
   if query_etapa.fieldbyname('ETA_DATHOR_TERMINO').AsDateTime>pdatanula  then
      begin
      Tb_Op_ETAETA_DATHOR_TERMINO.Value:=StrToDate(FormatDatetime(fdt2, query_etapa.fieldbyname('ETA_DATHOR_TERMINO').AsDateTime));
      Tb_Op_ETAETA_HOR_TERMINO.Value:=StrToTime(FormatDatetime(fhr, query_etapa.fieldbyname('ETA_DATHOR_TERMINO').AsDateTime));
      end;

   Tb_Op_ETAETA_CONFERENTE.Value:=query_etapa.fieldbyname('ETA_CONFERENTE').AsString;

   if query_etapa.fieldbyname('ETA_DATHOR_CONF').AsDateTime>pdatanula  then
      begin
      Tb_Op_ETAETA_DATHOR_CONF.Value:=StrToDate(FormatDatetime(fdt2, query_etapa.fieldbyname('ETA_DATHOR_CONF').AsDateTime));
      Tb_Op_ETAETA_HOR_CONF.Value:=StrToTime(FormatDatetime(fhr, query_etapa.fieldbyname('ETA_DATHOR_CONF').AsDateTime));
      end;
   Tb_Op_ETAETA_RESULTADO.Value:=query_etapa.fieldbyname('ETA_RESULTADO').AsString;
   Tb_Op_ETAETA_OBS.Value:=query_etapa.fieldbyname('ETA_OBS').AsString;
   Tb_Op_ETA.Post;
   query_etapa.next;
   end;
if DM3.Tb_op01OP1_CHAVE_FRAC.asinteger>0 then
   begin
   gb_origem.visible:=true;
   edt_origem.text  :=DM3.Tb_op01OP1_CHAVE_FRAC.AsString+'/'+DM3.Tb_op01OP1_CHAVE_FRAC_ANO.AsString;
   end
else
   gb_origem.visible:=false;


FreeAndNil(query_etapa);

bbproc_incluir.Enabled        := false;
bbproc_alterar.Enabled        := false;
bbproc_excluir.Enabled        := false;
bbproc_gravar.Enabled         := false;




{

// fpmatprima(0);
STG_ETA.RowCount    :=2;
STG_ETA.Rows[1].Clear;

While not DM3.Tb_OpET.Eof do
   begin
   mqtd:=STG_ETA.RowCount;
   STG_ETA.RowCount:=mqtd+1;
   STG_ETA.Rows[mqtd+1].Clear;
   STG_ETA.Rows[mqtd].Clear;
   STG_ETA.Cells[0,mqtd-1]:=DM3.Tb_OpETOPE_NOMETA.Value;
   STG_ETA.Cells[1,mqtd-1]:=DM3.Tb_OpETOPE_NOME.Value;
   if (DM3.Tb_OpETOPE_DATAI.IsNull) or (DM3.Tb_OpETOPE_DATAI.Value<=pdatanula) then
      STG_ETA.Cells[2,mqtd-1]:='/  /'
   else
      STG_ETA.Cells[2,mqtd-1]:=FormatDateTime(fdt2, DM3.Tb_OpETOPE_DATAI.Value);
   STG_ETA.Cells[3,mqtd-1]:=DM3.Tb_OpETOPE_HORAI.Value;
   if DM3.Tb_OpETOPE_DATAT.IsNull then
      STG_ETA.Cells[4,mqtd-1]:='/  /'
   else
      STG_ETA.Cells[4,mqtd-1]:=FormatDateTime(fdt2, DM3.Tb_OpETOPE_DATAT.Value);
   STG_ETA.Cells[5,mqtd-1]:=DM3.Tb_OpETOPE_HORAT.Value;
   DM3.Tb_OPET.Next;
   end;
}

BBINCLUIR.Enabled        := bbinc_true;
BBLOCALIZAR.Enabled      := True;
BBALTERAR.Enabled        := bbalt_true;
BBEXCLUIR.Enabled        := bbexc_true;
BBCONFIRMAR.Enabled      := True;
bb_materia_prima.Enabled := True;
BBIMPRIMIR.Enabled       := bbrel_true;
bbvisualizar_comagrupamento.Enabled := bbrel_true;

BBGRAVAR.Enabled         := False;
mOperFab                 := 0;
MDATA.ReadOnly           := True;
CODPRO.ReadOnly          := True;
QTDPREV.ReadOnly         := True;
QTDPROD.ReadOnly         := True;
PRAZOVAL.ReadOnly        := True;
MNUMLOT.ReadOnly         := True;
MDATAVEN.ReadOnly        := True;
CB_ETIQUETAS.Enabled     := False;
FreeAndNil(Frm_IndEnv_Fab_Loc);
fLerCadp01_Anexo(0);
fBloqueiaLiberaCamposProcesso(false); // false bloqueia true libera

end;

procedure TFrm_IndEnv_Fab.BBALTERARClick(Sender: TObject);
begin

if DM3.Tb_Op01OP1_STATUS.Value>1 then
   begin
   Fmensagem('Pedido ja Confirmado!',0,['0'],0);
   exit;
   end;

DM3.Tb_Op01.Close;
DM3.Tb_Op01.SQL.Clear;
DM3.Tb_OP01.SQL.Add('Select * from CADOP01 where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP1_CODEMP=0'+IntTostr(codemp)+' and ')
                   +' OP1_FABENV=0'
                   +' and OP1_LOTSEQ=0'+IntToStr(mLotSeqIndFab)
                   +' and OP1_CODIGO=0'+Trim(MCHAVE.Text));
DM3.Tb_Op01.Open;
SITMP:=DM3.Tb_Op01OP1_SITMP.AsInteger;
if DM3.Tb_Op01.Eof then
   begin
   Fmensagem('Chave Excluida por Outro Usuario!',0,['0'],0);
   exit;
   end;
if DM3.Tb_Op01OP1_STATUS.Value>1 then
   begin
   Fmensagem('Pedido ja Confirmado!',0,['0'],0);
   exit;
   end
else if DM3.Tb_Op01OP1_SITMP.AsInteger>0 then
   begin
   Messagedlg('Materias prima ja baixadas, nao pode ser alterado!',mtwarning,[mbOk],0);
   exit;
   end;
if mQtdMan_Fab<DM3.Tb_Op01OP1_QTDMAN.AsFloat then
   begin
   mOperFab:=3;
   BBLOCALIZARClick(self);
   end;


fBloqueiaLibera(1,DM3.Tb_Op01OP1_CODEMP.Value,DM3.Tb_Op01OP1_LOTSEQ.Value
                 ,DM3.Tb_Op01OP1_CODIGO.Value);


mQtdMan_Fab:=DM3.Tb_Op01OP1_QTDMAN.AsFloat+1;
mOperFab:=1;
status.Caption:='Alterando';

txtmp_codigo.ReadOnly  :=false;
txtmp_qtdteor.ReadOnly :=false;
txtmp_qtdutil.ReadOnly :=false;
txtmp_lote.Enabled     :=true;
txtmp_dtvcto.ReadOnly  :=false;
txtmp_dtFAB.ReadOnly  :=false;

txtme_codpro.ReadOnly  :=false;
txtme_qtdteor.ReadOnly :=false;
txtme_qtdutil.ReadOnly :=false;
txtme_lote.Enabled     :=true;
txtme_dtvcto.ReadOnly  :=false;
txtme_dtfab.ReadOnly  :=false;

CODPRO.SetFocus;
BBINCLUIR.Enabled        :=False;
BBLOCALIZAR.Enabled      :=False;
BBALTERAR.Enabled        :=False;
BBEXCLUIR.Enabled        :=False;
BBCONFIRMAR.Enabled      :=False;
bb_materia_prima.Enabled :=False;
BBIMPRIMIR.Enabled       :=False;
BBGRAVAR.Enabled         :=True;

MDATA.ReadOnly       := False;
CODPRO.ReadOnly      := False;
QTDPREV.ReadOnly     := False;
QTDPROD.ReadOnly     := False;
PRAZOVAL.ReadOnly    := False;
MNUMLOT.ReadOnly     := False;
MDATAVEN.ReadOnly    := False;
CB_ETIQUETAS.Enabled := True;

bbproc_incluir.Enabled        := true;
if Tb_Op_ETA.IsEmpty then
   begin
   bbproc_alterar.Enabled        := false;
   bbproc_excluir.Enabled        := false;
   end
else
   begin
   bbproc_alterar.Enabled        := true;
   bbproc_excluir.Enabled        := true;
   end;

bbproc_gravar.Enabled         := false;


end;

procedure TFrm_IndEnv_Fab.BBGRAVARClick(Sender: TObject);
var
x: Integer;
mOrdem_processos: Integer;
query_temp: tQuery;
begin
if not fVerificaPendencia then
  begin
  if not cb_EstNeg.Checked then
    fTestaEstoqueNegativo(0);
  if ValFloat(CODPRO.Text)=0 then
    begin
    Fmensagem('Nada a ser Gravado!',0,['0'],0);
    exit;
    end;
  if mOperFab=0 then
     begin
     MCHAVE.Text:=Inttostr(fBuscarChaveOrdemProducao);
     end
  else if mOperFab=1 then
     begin
     fpexcluir(0,SITMP);
     end;
  DM1.Query2.Close;
  DM1.Query2.SQL.Clear;
  DM1.Query2.SQL.Add('Insert Into CADOP01 ('
                    +' OP1_CODEMP,'
                    +' OP1_FABENV,'
                    +' OP1_LOTSEQ,'
                    +' OP1_CODIGO,'
                    +' OP1_TMPPREV,'
                    +' OP1_TMPUTIL,'
                    +' OP1_TOTPREV,'
                    +' OP1_TOTPROD,'
                    +' OP1_STATUS,'
                    +' OP1_ORIGEM,'
                    +' OP1_SITMP, '
                    +' OP1_SITACAB, '
                    +' OP1_DATA, '
                    +' OP1_DATAPREV, '
                    +' OP1_LOTE, '
                    +' OP1_DATAVEN, '
                    +' OP1_OBS01, '
                    +' OP1_OBS02, '
                    +' OP1_OBS03, '
                    +' OP1_OBS04, '
                    +' OP1_OBS05, '
                    +' OP1_OBS06, '
                    +' OP1_OBS07, '
                    +' OP1_OBS08, '
                    +' OP1_OBS09, '
                    +' OP1_OBS10, '
                    +' OP1_NOME '
                    +',OP1_QTDMAN '
                    +',OP1_SITUACAO '
                    +',OP1_LOCARMAZENAMENTO'
                    +',OP1_PEDORI_CHAVE  '
                    +',OP1_PEDORI_LOTSEQ   '
                    +',OP1_PEDORI_CODEMP   '

                    +' ) Values ('
                    +IntToStr(codemp)+','
                    +'0'+','
                    +iif(mOperFab=1,DM3.Tb_Op01OP1_LOTSEQ.AsString,IntToStr(ls_lotfab))+','
                    +Trim(MCHAVE.Text)+','
                    +mudavp('0')+','
                    +mudavp('0')+','
                    +mudavp('0')+','
                    +mudavp('0')+','
                    +'0,'  // status
                    +'0,' // origem da materia prima 0-normal 1-de terceiros
                    +chr(39)+IntToStr(SITMP)+chr(39)+',' // Situacao materia prima
                    +'0'+',' // Situacao do produto acabado
                    +':DATA, '
                    +':DATAPREV, '
                    +':LOTE, '
                    +':DATAVEN, '
                    +':OBS01, '
                    +':OBS02, '
                    +':OBS03, '
                    +':OBS04, '
                    +':OBS05, '
                    +':OBS06, '
                    +':OBS07, '
                    +':OBS08, '
                    +':OBS09, '
                    +':OBS10, '
                    +':NOME'
                    +','+FloatToStr(mQtdMan_Fab)
                    +','+'0'
                    +',:OP1_LOCARMAZENAMENTO'
                    +',:OP1_PEDORI_CHAVE  '
                    +',:OP1_PEDORI_LOTSEQ   '
                    +',:OP1_PEDORI_CODEMP   '

                    +')');
  if Trim(MDATA.Text)='/  /' then
     MDATA.Text:=FormatDateTime(fdt2, Date);
  DM1.Query2.ParamByName('DATA').AsDateTime:=StrToDate(MDATA.Text);
  if Trim(MDATA.Text)<>'/  /' then
     DM1.Query2.ParamByName('DATAPREV').AsDateTime:=StrTodate(MDATA.Text)
  else
     DM1.Query2.ParamByName('DATAPREV').AsDateTime:=0;
  DM1.Query2.ParamByName('LOTE').AsString:=MNUMLOT.Text;
  if Trim(MDATAVEN.Text)<>'/  /' then
     DM1.Query2.ParamByName('DATAVEN').AsDateTime:=StrTodate(MDATAVEN.Text)
  else
     DM1.Query2.ParamByName('DATAVEN').AsDateTime:=0;
  DM1.Query2.ParamByName('OBS01').AsString:='';
  DM1.Query2.ParamByName('OBS02').AsString:='';
  DM1.Query2.ParamByName('OBS03').AsString:='';
  DM1.Query2.ParamByName('OBS04').AsString:='';
  DM1.Query2.ParamByName('OBS05').AsString:='';
  DM1.Query2.ParamByName('OBS06').AsString:='';
  DM1.Query2.ParamByName('OBS07').AsString:='';
  DM1.Query2.ParamByName('OBS08').AsString:='';
  DM1.Query2.ParamByName('OBS09').AsString:='';
  DM1.Query2.ParamByName('OBS10').AsString:='';
  DM1.Query2.ParamByName('OBS10').AsString:='';
  DM1.Query2.ParamByName('NOME').AsString :=copy( fBuscarValor(1,CB_NOMPRO.Text),1,60);
  DM1.Query2.ParamByName('OP1_LOCARMAZENAMENTO').AsInteger := valint(fExtraiCodigoEntreChaves(CB_FILIAL.Text));
  DM1.Query2.ParamByName('OP1_PEDORI_CHAVE').AsInteger := mOP1_PEDORI_CHAVE;
  DM1.Query2.ParamByName('OP1_PEDORI_LOTSEQ').AsInteger:= mOP1_PEDORI_LOTSEQ;
  DM1.Query2.ParamByName('OP1_PEDORI_CODEMP').AsInteger:= mOP1_PEDORI_CODEMP;




  Try
    DM1.Query2.ExecSQL;
    fdm1StartCommit;
  except  on e: Exception do
     begin
     ex_erroSql_Novo(DM1.Query2,2509,'lerarq:'+e.message ,'CADOP03');
     end;
     end;

  DM1.Query2.Params.Clear;
  DM1.Query2.Close;
  DM1.Query2.SQL.Clear;
  x:=1;
  DM1.Query2.SQL.Add('Insert Into CADOP02 ('
                    +'OP2_CODEMP, '
                    +'OP2_FABENV, '
                    +'OP2_LOTSEQ, '
                    +'OP2_CODIGO, '
                    +'OP2_SEQ, '
                    +'OP2_CODPRO,'
                    +'OP2_QTDPREV, '
                    +'OP2_QTDPROD, '
                    +'OP2_QTDPROD_MOTIVO, '
                    +'OP2_PU, '
                    +'OP2_FAB_CHORI,'
                    +'OP2_FAB_CODIGO,'
                    +'OP2_FAB_QTD,'
                    +'OP2_FAB_PU,'
                    +'OP2_SITACAB,'
                    +'OP2_ORIGEM,'
                    +'OP2_NUMERO,'
                    +'OP2_FAB_DTFAB,'
                    +'OP2_FAB_VCTO,'
                    +'OP2_FAB_LOTE) values ('
                    +IntToStr(codemp)+','
                    +'0,'
                    +iif(mOperFab=1,DM3.Tb_Op01OP1_LOTSEQ.AsString,IntToStr(ls_lotfab))+','
                    +Trim(MCHAVE.Text)+','
                    +IntToStr(x)+','
                    +CODPRO.Text+',' // codigo do produto
                    +mudavp(FloatToStr(valfloat(QTDPREV.Text)))+',' // quantidade prevista
                    +mudavp(FloatToStr(valfloat(QTDPROD.Text)))+',' // quantidade produzada
                    +':OP2_QTDPROD_MOTIVO ,' // quantidade produzada motivo
                    +mudavp('0')+',' // preco unitario
                    +mudavp('0')+',' // chave de origem
                    +mudavp('0')+',' // codigo de origem
                    +mudavp('0')+',' // quantidade de origem
                    +mudavp('0')+',' // preco unitario
                    +'0'+',' // Situacao do produto acabado
                    +'0'+',' // origem das materias primas 0-normal 1-terceiros
                    +':NUMERO, '
                    +':FAB_DTFAB,'
                    +':FAB_VCTO,'
                    +':FAB_LOTE)');
  DM1.Query2.ParamByName('FAB_DTFAB').AsDateTime:=pdatanula;
  DM1.Query2.ParamByName('FAB_VCTO').AsDateTime:=pdatanula;
  DM1.Query2.ParamByName('NUMERO').AsString  :='';
  DM1.Query2.ParamByName('FAB_LOTE').AsString:=MNUMLOT.Text;
  DM1.Query2.ParamByName('OP2_QTDPROD_MOTIVO').AsString:=CB01_MOTIVO.Text;
  Try
    DM1.Query2.ExecSQL;

    fdm1StartCommit;
  except  on e: Exception do
     begin
     ex_erroSql_Novo(DM1.Query2,2570,'lerarq:'+e.message ,'CADOP02');
     end;
     end;


  DM1.Query2.Params.Clear;
  DM1.Query2.Close;
  DM1.Query2.SQL.Clear;
  for x:=0 to STG_MP_OP03.RowCount-1 do
     begin
     if Trim(STG_MP_OP03.Cells[mcolmp_codpro,x])='' then
       continue;
     mCadop03.codemp := codemp;
     mCadop03.fabenv := 0;
     mCadop03.lotseq := ls_lotfab;
     mCadop03.codigo := ValInt(MCHAVE.text);
     mCadop03.seq    := x+1;
     mCadop03.codmat := fsonumero(STG_MP_OP03.Cells[mcolmp_codpro,x]);
     mCadop03.qtdprev :=valfloat(STG_MP_OP03.Cells[mcolmp_qtdteor,x]);
     mCadop03.qtdutil :=valfloat(STG_MP_OP03.Cells[mcolmp_qtdutil,x]);
     mCadop03.qtdutil_motivo := STG_MP_OP03.Cells[mcolmp_qtdutil_motivo,x];
     mCadop03.pu             := valfloat(STG_MP_OP03.Cells[mcolmp_pu,x]);
     mCadop03.sitmp          := 0;
     mCadop03.origem         := 0;
     mCadop03.numero         := ' ';
     mCadop03.lote           := STG_MP_OP03.Cells[mcolmp_lote,x];
     if (Trim(STG_MP_OP03.Cells[mcolmp_dtvcto,x])='/  /') or (Trim(STG_MP_OP03.Cells[mcolmp_dtvcto,x])='') then
        mCadop03.dtvcto         := pdatanula
     else
        mCadop03.dtvcto         := StrToDate(STG_MP_OP03.Cells[mcolmp_dtvcto,x]);

     if (Trim(STG_MP_OP03.Cells[mcolmp_dtfab,x])='/  /') or (Trim(STG_MP_OP03.Cells[mcolmp_dtfab,x])='') then
        mCadop03.dtfab         := pdatanula
     else
        mCadop03.dtfab         := StrToDate(STG_MP_OP03.Cells[mcolmp_dtfab,x]);


     mCadop03.lote_re           := STG_MP_OP03.Cells[mcolmp_re,x];
     fincluircadop03(mCadop03);
     end;
  for x:=0 to STG_ME_OP03.RowCount-1 do
    begin
    if Trim(STG_ME_OP03.Cells[mcolme_codpro,x])='' then
       continue;
    mCadop03.codemp := codemp;
    mCadop03.fabenv := 1;
    mCadop03.lotseq := ls_lotfab;
    mCadop03.codigo := ValInt(MCHAVE.text);
    mCadop03.seq    := x+1;

    mCadop03.codmat := fsonumero(STG_ME_OP03.Cells[mcolme_codpro,x]);
    mCadop03.qtdprev :=valfloat(STG_ME_OP03.Cells[mcolme_qtdteor,x]);
    mCadop03.qtdutil :=valfloat(STG_ME_OP03.Cells[mcolme_qtdutil,x]);
    mCadop03.qtdutil_motivo := STG_ME_OP03.Cells[mcolme_qtdutil_motivo,x];
    mCadop03.pu             := valfloat(STG_ME_OP03.Cells[mcolme_pu,x]);
    mCadop03.sitmp          := 0;
    mCadop03.origem         := 0;
    mCadop03.numero         := ' ';
    mCadop03.lote           := STG_ME_OP03.Cells[mcolme_lote,x];
    if (Trim(STG_ME_OP03.Cells[mcolme_dtvcto,x])='/  /') or (Trim(STG_ME_OP03.Cells[mcolme_dtvcto,x])='') then
       mCadop03.dtvcto         := pdatanula
    else
       mCadop03.dtvcto         := StrToDate(STG_ME_OP03.Cells[mcolme_dtvcto,x]);

    if (Trim(STG_ME_OP03.Cells[mcolme_dtfab,x])='/  /') or (Trim(STG_ME_OP03.Cells[mcolme_dtfab,x])='') then
       mCadop03.dtfab         := pdatanula
    else
       mCadop03.dtfab         := StrToDate(STG_ME_OP03.Cells[mcolme_dtfab,x]);


    mCadop03.lote_re           := STG_ME_OP03.Cells[mcolmE_re,x];
    fincluircadop03(mCadop03);
    end;

  query_temp:=tQuery.Create(nil);
  query_temp.DatabaseName:='SG_ASSOC';
  query_temp.Close;
  query_temp.SQL.Clear;
  query_temp.SQL.Add('Delete from CADOP_ETA where '
                   +' ETA_CODEMP=:CODEMP '
                   +' and ETA_CHAVE_OP=:CHAVE '
                   +' and ETA_CHAVE_OP_ano=:CHAVE_ANO ');
  query_temp.ParamByName('CODEMP').AsInteger:=codemp;
  query_temp.ParamByName('CHAVE').AsInteger:=valint(MCHAVE.Text);
  query_temp.ParamByName('CHAVE_ANO').AsInteger:=mLotSeqIndFab;
  query_temp.ExecSQL;
  fdm1StartCommit;
  mOrdem_processos:=0;

  query_temp.Close;
  query_temp.SQL.Clear;
  query_temp.SQL.Add('Insert into CADOP_ETA ( '
                    +'ETA_CODEMP'
                    +',ETA_CHAVE_OP'
                    +',ETA_CHAVE_OP_ano'
                    +',ETA_ORDEM'
                    +',ETA_DESCRICAO'
                    +',ETA_RESPONSAVEL'
                    +',ETA_DATHOR_INIPROC'
                    +',ETA_DATHOR_TERMINO'
                    +',ETA_CONFERENTE'
                    +',ETA_DATHOR_CONF'
                    +',ETA_RESULTADO'
                    +',ETA_OBS'
                    +') values ('
                    +':ETA_CODEMP'
                    +',:ETA_CHAVE_OP'
                    +',:ETA_CHAVE_OP_ano'
                    +',:ETA_ORDEM'
                    +',:ETA_DESCRICAO'
                    +',:ETA_RESPONSAVEL'
                    +',:ETA_DATHOR_INIPROC'
                    +',:ETA_DATHOR_TERMINO'
                    +',:ETA_CONFERENTE'
                    +',:ETA_DATHOR_CONF'
                    +',:ETA_RESULTADO'
                    +',:ETA_OBS'
                    +')');

  Tb_Op_ETA.First;
  While not Tb_Op_ETA.Eof do
     begin
     mOrdem_processos:=mOrdem_processos+1;

     query_temp.Close;
     query_temp.ParamByName('ETA_CODEMP').Value         :=codemp;
     query_temp.ParamByName('ETA_CHAVE_OP').Value       :=fsonumero(MCHAVE.text);
     query_temp.ParamByName('ETA_CHAVE_OP_ano').Value   :=mLotSeqIndFab;
     query_temp.ParamByName('ETA_ORDEM').Value          :=mOrdem_processos;
     query_temp.ParamByName('ETA_DESCRICAO').Value      :=Tb_Op_ETAETA_DESCRICAO.AsString;
     query_temp.ParamByName('ETA_RESPONSAVEL').Value    :=Tb_Op_ETAETA_RESPONSAVEL.AsString;
     if (Tb_Op_ETAETA_DATHOR_INIPROC.AsDateTime>pdatanula) and
        (fsonumero(Tb_Op_ETAETA_HOR_INIPROC.AsString)>0) then
        query_temp.ParamByName('ETA_DATHOR_INIPROC').Value :=StrToDateTime(FormatDateTime(fdt2, Tb_Op_ETAETA_DATHOR_INIPROC.AsDateTime)
                                                           +' '+FormatDateTime(fhr, Tb_Op_ETAETA_HOR_INIPROC.AsDateTime))
    else
        query_temp.ParamByName('ETA_DATHOR_INIPROC').Value :=pdatanula;
     if (Tb_Op_ETAETA_DATHOR_TERMINO.AsDateTime>pdatanula) and
        (fsonumero(Tb_Op_ETAETA_HOR_TERMINO.AsString)>0) then
        query_temp.ParamByName('ETA_DATHOR_TERMINO').Value :=StrToDateTime(FormatDateTime(fdt2, Tb_Op_ETAETA_DATHOR_TERMINO.AsDateTime)
                                                           +' '+FormatDateTime(fhr, Tb_Op_ETAETA_HOR_TERMINO.AsDateTime))
     else
        query_temp.ParamByName('ETA_DATHOR_TERMINO').Value :=pdatanula;


     query_temp.ParamByName('ETA_CONFERENTE').Value     := Tb_Op_ETAETA_CONFERENTE.AsString;


     if (Tb_Op_ETAETA_DATHOR_CONF.AsDateTime>pdatanula) and
        (fsonumero(Tb_Op_ETAETA_HOR_CONF.AsString)>0) then
        query_temp.ParamByName('ETA_DATHOR_CONF').Value :=StrToDateTime(FormatDateTime(fdt2, Tb_Op_ETAETA_DATHOR_CONF.AsDateTime)
                                                           +' '+FormatDateTime(fhr, Tb_Op_ETAETA_HOR_CONF.AsDateTime))
     else
        query_temp.ParamByName('ETA_DATHOR_CONF').Value :=pdatanula;

     query_temp.ParamByName('ETA_RESULTADO').Value      := Tb_Op_ETAETA_RESULTADO.AsString;
     query_temp.ParamByName('ETA_OBS').Value            := Tb_Op_ETAETA_OBS.AsString;
     query_temp.ExecSQL;
     fdm1StartCommit;
     Tb_Op_ETA.Next;
     end;

  txtmp_codigo.ReadOnly  := true;
  txtmp_qtdteor.ReadOnly := true;
  txtmp_qtdutil.ReadOnly := true;
  txtmp_lote.Enabled     := false;
  txtmp_dtvcto.ReadOnly  := true;
  txtmp_dtFAB.ReadOnly  := true;
  txtme_codpro.ReadOnly  := true;
  txtme_qtdteor.ReadOnly := true;
  txtme_qtdutil.ReadOnly := true;
  txtme_lote.Enabled     := False;

  txtme_dtvcto.ReadOnly  := true;
  txtme_dtfab.ReadOnly  := true;
  mOperFab               := 3;
  MNUMLOT.Text           := '';
  MDATA.ReadOnly       := True;
  CODPRO.ReadOnly      := True;
  QTDPREV.ReadOnly     := True;
  QTDPROD.ReadOnly     := True;
  PRAZOVAL.ReadOnly    := True;
  MNUMLOT.ReadOnly     := True;
  MDATAVEN.ReadOnly    := True;
  CB_ETIQUETAS.Enabled := False;
  BBLOCALIZAR.Click;
  if mostramensagem then
     Fmensagem('Registro Gravado!',0,['0'],0);
  end;
end;

function TFrm_IndEnv_Fab.fpexcluir(ptipo: Integer;pSitmp: Integer): Boolean;
// ptipo=0 exclui sem movimentar estoque
// ptipo=1 excluir desfazendo o estoque
var
pBaixar: pBaixarLotes;

begin
if (ptipo=1) or (psitmp=1) then
   begin
   Tb_Op03.Close;
   Tb_Op03.SQL.Clear;
   Tb_Op03.SQL.add('Select OP3_CODEMP , '
                   +'  OP3_CODIGO, '
                   +'  OP3_SEQ, '
                   +'  OP3_CODMAT, '
                   +'  OP3_NUMERO, '
                   +'  OP3_QTDPREV, '
                   +'  OP3_QTDUTIL, '
                   +'  OP3_QTDUTIL_MOTIVO, '
                   +'  OP3_PU, '
                   +'  OP3_LOTSEQ, '
                   +'  OP3_FABENV, '
                   +'  OP3_LOTE, '
                   +'  OP3_DTVCTO, '
                   +'  OP3_DTFAB, '
                   +'  OP3_LOTE_RE,'
                   +'  OP3_SITMP, '
                   +'  OP3_ORIGEM '
                   +',       CASE WHEN OP3_QTDPREV>0 AND OP3_QTDUTIL>0 AND OP3_QTDPREV<>OP3_QTDUTIL THEN '
                   +'       (OP3_QTDPREV-OP3_QTDUTIL) * 100 / OP3_QTDPREV '
                   +'       ELSE 0 END AS PERC_PERDAS '

                   +'  ,PDCODPRO '
                   +'  ,PDNOME '
                   +'  ,PDUND '
                   +'  ,PDNOME2 '
                   +' ,PDCODGRU AS CODGRU '
                   +' ,PDNOMGRU AS NOMGRU '
                   +' ,PDMARCA '

                   +'   from CADOP03,CADPRO '
                   +'   where '
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP3_CODEMP=0'+IntToStr(codemp)+' and ')
                      +' (OP3_FABENV=0 or OP3_FABENV=1) '
                      +' and OP3_LOTSEQ=0'+DM3.Tb_Op01OP1_LOTSEQ.AsString
                      +' and OP3_CODIGO=0'+DM3.Tb_Op01OP1_CODIGO.AsString
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and OP3_CODEMP=0'+IntTostr(codemp))
                      +' and PDCODPRO=OP3_CODMAT '
                      );
   Tb_Op03.SQL.Add(' order by PDNOME ');
   try
      Tb_Op03.Open;
   except on e : exception do
      ex_erroSql_Novo(tb_op03,2773,'SGE','CADVER');
      end;

   While not Tb_Op03.Eof do
      begin
      flcadpro(1,0,0,fdeixanum(Tb_Op03OP3_CODMAT.AsString));


	pBaixar.pCodemp := codemp;
	pBaixar.pFilial := mloc_armazenamento;
	pBaixar.pItem   := 0;
	pBaixar.pDocOri := 04;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad;
	pBaixar.pChave   := Tb_Op03OP3_CODIGO.AsInteger;
	pBaixar.pChave_ano := Tb_Op03OP3_CODIGO.AsInteger;
	pBaixar.pQtd       := Tb_Op03OP3_QTDUTIL.AsFloat;
	pBaixar.pCodPro    := Tb_Op03OP3_CODMAT.asstring;
	pBaixar.pEstNor       := 'E'; // estnor;
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := Tb_Op03OP3_LOTE.AsString;
	pBaixar.pDtVcto       := Tb_Op03OP3_DTVCTO.AsDateTime;
	pBaixar.pDtfAB       := Tb_Op03OP3_DTFAB.AsDateTime;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := Tb_Op03OP3_CODIGO.AsInteger;

	fBaixarMercadorias(pBaixar);

{

      fBaixarMercadorias(codemp
                     ,mloc_armazenamento
                     ,Tb_Op03OP3_SEQ.Asinteger
                     ,04 // docori
                     ,codusr
                     ,0 //pcontesp
                     ,Log_TipoProdPad //ptipoprod
                     ,Tb_Op03OP3_CODIGO.Asfloat // chave
                     ,Tb_Op03OP3_lotseq.AsInteger
                     ,Tb_Op03OP3_QTDUTIL.AsFloat
                     ,Tb_Op03OP3_CODMAT.AsString
                     ,'E'
                     ,'N'
                     ,Tb_Op03OP3_LOTE.AsString
                     ,Tb_Op03OP3_DTVCTO.AsDateTime
                  ,'' // lote re
                  ,'' // obs

                     );
}

      Tb_Op03.Next;
      end;
   if (ptipo=1) then
      begin
      Tb_Op02.Close;
      Tb_Op02.SQL.Clear;
      Tb_Op02.SQL.add('Select OP2_CODEMP, '
                      +'       OP2_CODIGO, '
                      +'       OP2_SEQ, '
                      +'       OP2_CODPRO, '
                      +'       OP2_NUMERO, '
                      +'       OP2_QTDPREV, '
                      +'       OP2_QTDPROD, '
                      +'       OP2_QTDPROD_MOTIVO, '
                      +'       OP2_PU, '
                      +'       OP2_LOTSEQ, '
                      +'       OP2_FABENV, '
                      +'       OP2_DTVCTO, '
                      +'       OP2_DTFAB, '
                      +'       OP2_FAB_CHORI, '
                      +'       OP2_FAB_CODIGO, '
                      +'       OP2_FAB_LOTE, '
                      +'       OP2_FAB_VCTO, '
                      +'       OP2_FAB_DTFAB, '
                      +'       OP2_FAB_QTD, '
                      +'       OP2_FAB_PU, '
                      +'       OP2_SITACAB, '
                      +'       OP2_ORIGEM, '
                   +'       CASE WHEN OP2_QTDPREV>0 AND OP2_QTDPROD>0 AND OP2_QTDPREV<>OP2_QTDPROD THEN '
                   +'       (OP2_QTDPREV-OP2_QTDPROD) * 100 / OP2_QTDPREV '
                   +'       ELSE 0 END AS PERC_PERDAS, '
                      
                      +'       PDNOME '
                      +'       ,PDMARCA '
                      +'       ,PDUND '
                      +'       ,PDQTDGRML,PDPRZVAL,PDREGMS '
                      +'       ,PDCODGRU AS CODGRU '
                      +'       ,PDNOMGRU AS NOMGRU '
                      +' from CADOP02,CADPRO '
                      +' where '
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',
                         ' OP2_CODEMP=0'+IntToStr(codemp)+' and PDCODEMP=OP2_CODEMP and ')
                      +' (OP2_FABENV=0 or OP2_FABENV=1) '
                      +' and OP2_LOTSEQ=0'+DM3.Tb_Op01OP1_LOTSEQ.AsString
                      +' and OP2_CODIGO=0'+DM3.Tb_Op01OP1_CODIGO.AsString
                      +' and PDCODPRO=OP2_CODPRO '
                      +' order by PDNOME ');
      Tb_Op02.Open;
      While not Tb_Op02.Eof do
         begin

	pBaixar.pCodemp := codemp;
	pBaixar.pFilial := mloc_armazenamento;
	pBaixar.pItem   := Tb_Op02OP2_SEQ.Asinteger;
	pBaixar.pDocOri := 04;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad;
	pBaixar.pChave   := Tb_Op02OP2_CODIGO.AsInteger;
	pBaixar.pChave_ano := Tb_Op02OP2_LOTSEQ.AsInteger;
	pBaixar.pQtd       := Tb_Op02OP2_QTDPROD.AsFloat;
	pBaixar.pCodPro    := Tb_Op02OP2_CODPRO.asstring;
	pBaixar.pEstNor       := 'S'; // estnor;
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := Tb_Op02OP2_FAB_LOTE.AsString;
	pBaixar.pDtVcto       := Tb_Op02OP2_DTVCTO.AsDateTime;
	pBaixar.pDtFab       := Tb_Op02OP2_DTFAB.AsDateTime;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := Tb_Op02OP2_CODIGO.AsInteger;

	fBaixarMercadorias(pBaixar);

{

         fBaixarMercadorias(codemp
                        ,mloc_armazenamento
                        ,Tb_Op02OP2_SEQ.Asinteger
                        ,04 // docori
                        ,codusr
                        ,0 //pcontesp
                        ,Log_TipoProdPad //ptipoprod
                        ,Tb_Op02OP2_CODIGO.Asfloat // chave
                        ,Tb_Op02OP2_LOTSEQ.AsInteger
                        ,Tb_Op02OP2_QTDPROD.AsFloat
                        ,Tb_Op02OP2_CODPRO.AsString
                        ,'S'
                        ,'N'
                        ,Tb_Op02OP2_FAB_LOTE.AsSTRing
                        ,Tb_Op02OP2_DTVCTO.AsDateTime
                        ,'' // lote re
                        ,'' // obs
                        );
}                        
         Tb_Op02.Next;

         end;
      end;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADOPET where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OPE_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' OPE_FABENV=0'
                  +' and OPE_LOTSEQ=0'+DM3.Tb_Op01OP1_LOTSEQ.AsString
                  +' and OPE_CODIGO=0'+DM3.Tb_Op01OP1_CODIGO.AsString);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1636,'Frm_Ped','CADOPET');
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADOP03 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP3_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' (OP3_FABENV=0 or OP3_FABENV=1) '
                  +' and OP3_LOTSEQ=0'+DM3.Tb_Op01OP1_LOTSEQ.AsString
                  +' and OP3_CODIGO=0'+DM3.Tb_Op01OP1_CODIGO.AsString);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1649,'Frm_Ped','CADOP03');
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADOP02 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP2_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' (OP2_FABENV=0 or OP2_FABENV=1) '
                  +' and OP2_LOTSEQ=0'+DM3.Tb_Op01OP1_LOTSEQ.AsString
                  +' and OP2_CODIGO=0'+DM3.Tb_Op01OP1_CODIGO.AsString);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1662,'Frm_IndEnv_Fab','CADOP02');
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADOP01 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP1_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' (OP1_FABENV=0 or OP1_FABENV=1) '
                  +' and OP1_LOTSEQ=0'+DM3.Tb_Op01OP1_LOTSEQ.AsString
                  +' and OP1_CODIGO=0'+DM3.Tb_Op01OP1_CODIGO.AsString);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1676,'Frm_IndEnv_Fab','CADOP01');
   end;

result:=True;
end;
procedure TFrm_IndEnv_Fab.txtmp_codigoExit(Sender: TObject);
var
x: Integer;
begin
txtmp_codigo.Text:=fdeixanum2(txtmp_codigo.Text);
if trim(txtmp_codigo.Text)<>'' then
   begin
   if not flcadpro(1,0,0,txtmp_codigo.Text) then
      begin
      Fmensagem('Produto não Cadastrado!',0,['0'],0);
      txtmp_codigo.SetFocus;
      end
   else
      begin
      if (DM1.Tb_ProPDNIVEL.Value=0) then
         begin
         Fmensagem('Este não é um produto válido!',0,['0'],0);
         txtmp_codigo.SetFocus;
         exit;
         end;
      txtmp_descricao.Text  :=DM1.Tb_ProPDNOME.Value;
      txtmp_und.Text        :=DM1.Tb_ProPDUND.Value;
      if DM1.Tb_ProPDPRECOC.Value>0 then
         txtmp_pu.Text  :=Formatfloat(mcaspuind,DM1.Tb_ProPDPRECOC.Value)
      else if DM1.Tb_ProPDPCOFAB.Value>0 then
         txtmp_pu.Text  :=Formatfloat(mcaspuind,DM1.Tb_ProPDPCOFAB.Value)
      else
         txtmp_pu.Text  :=Formatfloat(mcaspuind,DM1.Tb_ProPDPRECO1.Value);
      txtmp_vt.Text     :=FormatFloat(mcasas, Valfloat(txtmp_pu.Text)*ValFloat(txtmp_qtdteor.Text));

      if (mop_mp<>1) then
         begin

      for x:=0 to STG_MP_OP03.RowCount-1 do
         begin
         if Trim(STG_MP_OP03.Cells[mcolmp_codpro,x])='' then
            continue;
         if (mop_mp=1) and (x=mItem_mp_alt) then
            Continue;
         if (FSonumero(txtmp_codigo.Text)=fSonumero(STG_MP_OP03.Cells[mcolmp_codpro,x])) and
            (trim(txtmp_lote.Text)  =trim(STG_MP_OP03.Cells[mcolmp_lote,x])) and
            (trim(txtmp_dtvcto.Text) =trim(STG_MP_OP03.Cells[mcolmp_dtvcto,x])) then
            begin
            if fmensagem('Produto já digitado quer altera-lo?',0,['1','2'],2)=mrYes then
               begin
               STG_MP_OP03.Row:=x;
               bbEditarMP.Click;
               break;
               exit;
               end
            else
               begin
               txtmp_codigo.Text:='';
               txtmp_codigo.SetFocus;
               break
               end;
            end;
         end;
         end;
      end;
   end;
end;

procedure TFrm_IndEnv_Fab.fCarregarLotes(pcodpro: real;out pCombobox: tcombobox);
begin
fLerGenerico_query('CADLGC','CLNUMERO,CLDTVCTO','CLCODPRO='+floattostr(pcodpro)+' order by CLDTVCTO,CLNUMERO',query_consulta);
pCombobox.Items.clear;
While not query_consulta.eof do
   begin
   pCombobox.Items.Add(query_consulta.fieldbyname('CLNUMERO').AsString);
   query_consulta.Next;
   end;

end;



procedure TFrm_IndEnv_Fab.txtmp_codigoKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
//   DM1.Tb_Pro.Filter:='PDNIVEL<>0';
//   DM1.Tb_Pro.Filtered:=True;
   txtmp_codigo.Text:=fChamaPro(0,'Frm_IndEnv_Fab',key);
   key:=#0;
   DM1.Tb_Pro.Filter:='';
   DM1.Tb_Pro.Filtered:=False;
   end;

end;

procedure TFrm_IndEnv_Fab.txtme_codproKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
//   DM1.Tb_Pro.Filter:='PDNIVEL<>0';
//   DM1.Tb_Pro.Filtered:=True;
   txtme_codpro.Text:=fChamaPro(0,'Frm_IndEnv_Fab',key);
   key:=#0;
   DM1.Tb_Pro.Filter:='';
   DM1.Tb_Pro.Filtered:=False;
   end;

end;

procedure TFrm_IndEnv_Fab.txtme_codproExit(Sender: TObject);
var
x: Integer;
begin
txtme_codpro.Text:=fdeixanum2(txtme_codpro.Text);
if trim(txtme_codpro.Text)<>'' then
   begin
   if not flcadpro(1,0,0,txtme_codpro.Text) then
      begin
      Fmensagem('Produto não Cadastrado!',0,['0'],0);
      txtme_codpro.SetFocus;
      end
   else
      begin
      if (DM1.Tb_ProPDNIVEL.Value=0) then
         begin
         Fmensagem('Este não é um produto válido!',0,['0'],0);
         txtme_codpro.SetFocus;
         exit;
         end;
      txtme_descricao.Text  :=DM1.Tb_ProPDNOME.Value;
      txtme_und.Text        :=DM1.Tb_ProPDUND.Value;

      if DM1.Tb_ProPDPRECOC.Value>0 then
         txtme_pu.Text  :=Formatfloat(mcaspuind,DM1.Tb_ProPDPRECOC.Value)
      else if DM1.Tb_ProPDPCOFAB.Value>0 then
         txtme_pu.Text  :=Formatfloat(mcaspuind,DM1.Tb_ProPDPCOFAB.Value)
      else
         txtme_pu.Text  :=Formatfloat(mcaspuind,DM1.Tb_ProPDPRECO1.Value);
      txtme_vt.Text     :=FormatFloat(mcasas, Valfloat(txtme_pu.Text)*ValFloat(txtme_qtdteor.Text));
      for x:=0 to STG_ME_OP03.RowCount-1 do
         begin
         if Trim(STG_ME_OP03.Cells[mcolme_codpro,x])='' then
            continue;
         if (mop_me=1) and (x=mItem_me_alt) then
            Continue;
         if (FSonumero(txtme_codpro.Text)=fSonumero(STG_ME_OP03.Cells[mcolme_codpro,x])) and
            (trim(txtme_lote.Text)  =trim(STG_ME_OP03.Cells[mcolme_lote,x])) and
            (trim(txtme_dtvcto.Text) =trim(STG_ME_OP03.Cells[mcolme_dtvcto,x])) then
             begin
             if fmensagem('Produto já digitado quer altera-lo?',0,['1','2'],2)=mrYes then
                begin
                STG_ME_OP03.Row:=x;
                bbEditarME.Click;
                break;
                exit;
                end
             else
                begin
                txtme_codpro.Text:='';
                txtme_codpro.SetFocus;
                break
                end;
            end;
         end;
      end;
   end;

end;

procedure TFrm_IndEnv_Fab.txtmp_qtdteorExit(Sender: TObject);
begin
if (valFloat(txtmp_qtdteor.Text)>999999999) or (valFloat(txtmp_qtdteor.Text)<=0) then
   txtmp_qtdteor.Text:='0';
txtmp_qtdteor.Text:=FormatFloat(mcasind, valFloat(txtmp_qtdteor.Text));

txtmp_vt.Text     :=FormatFloat(mcasas, Valfloat(txtmp_pu.Text)*ValFloat(txtmp_qtdteor.Text));

txtmp_percperdas.Text:=fCalcularPerdas(valfloat(txtmp_qtdteor.Text),valfloat(txtmp_qtdutil.Text));

if ValFloat(txtmp_qtdteor.Text)<=0 then
   exit;


end;

procedure TFrm_IndEnv_Fab.txtme_qtdteorExit(Sender: TObject);
begin
if (valFloat(txtme_qtdteor.Text)>999999999) or (valFloat(txtme_qtdteor.Text)<=0) then
   txtme_qtdteor.Text:='0';
txtme_qtdteor.Text:=FormatFloat(mcasind, valFloat(txtme_qtdteor.Text));
txtme_vt.Text     :=FormatFloat(mcasas, Valfloat(txtme_pu.Text)*ValFloat(txtme_qtdteor.Text));
txtme_percperdas.Text:=fCalcularPerdas(valfloat(txtme_qtdteor.Text),valfloat(txtme_qtdutil.Text));

end;

procedure TFrm_IndEnv_Fab.txtme_qtdutilExit(Sender: TObject);
begin
if (valFloat(txtme_qtdutil.Text)>999999999) or (valFloat(txtme_qtdutil.Text)<=0) then
   txtme_qtdutil.Text:='0';
txtme_qtdutil.Text:=FormatFloat(mcasind, valFloat(txtme_qtdutil.Text));
txtme_percperdas.Text:=fCalcularPerdas(valfloat(txtme_qtdteor.Text),valfloat(txtme_qtdutil.Text));

if ValFloat(txtme_qtdutil.Text)<=0 then
   exit;

end;

procedure TFrm_IndEnv_Fab.txtmp_qtdutilExit(Sender: TObject);
begin
if (valFloat(txtmp_qtdutil.Text)>999999999) or (valFloat(txtmp_qtdutil.Text)<=0) then
   txtmp_qtdutil.Text:='0';
txtmp_qtdutil.Text:=FormatFloat(mcasind, valFloat(txtmp_qtdutil.Text));
txtmp_percperdas.Text:=fCalcularPerdas(valfloat(txtmp_qtdteor.Text),valfloat(txtmp_qtdutil.Text));

if ValFloat(txtmp_qtdutil.Text)<=0 then
   exit;

end;

procedure TFrm_IndEnv_Fab.bbEditarMEClick(Sender: TObject);
begin
if not (BBGRAVAR.Enabled) then
   exit;

mItem_me_alt:=STG_ME_OP03.Row;
if valfloat(STG_ME_OP03.Cells[mcolme_codpro,mItem_me_alt])=0 then
   begin
   fmensagem('Favor Selecionar um item valido!',0,['0'],0);
   exit;
   end;
mop_me :=1;

txtme_codpro.Text    :=STG_ME_OP03.Cells[mcolme_codpro,mitem_me_alt];
txtme_descricao.Text :=STG_ME_OP03.Cells[mcolmp_descricao,mitem_me_alt];
txtme_und.Text       :=STG_ME_OP03.Cells[mcolme_und,mitem_me_alt];
txtme_qtdteor.Text   :=STG_ME_OP03.Cells[mcolme_qtdteor,mitem_me_alt];
txtme_qtdutil.Text   :=STG_ME_OP03.Cells[mcolme_qtdutil,mitem_me_alt];
cbme_qtdutil_motivo.Text   :=STG_ME_OP03.Cells[mcolme_qtdutil_motivo,mitem_me_alt];

txtme_lote.Text      :=STG_ME_OP03.Cells[mcolme_lote,mitem_me_alt];
txtme_re.Text        :=STG_ME_OP03.Cells[mcolme_lote,mitem_me_alt];
txtme_dtvcto.Text    :=STG_ME_OP03.Cells[mcolme_dtvcto,mitem_me_alt];
txtme_dtFAB.Text    :=STG_ME_OP03.Cells[mcolme_dtfab,mitem_me_alt];
txtme_pu.Text        :=STG_ME_OP03.Cells[mcolme_pu,mitem_me_alt];
txtme_vt.Text        :=STG_ME_OP03.Cells[mcolme_vt,mitem_me_alt];
txtme_codpro.SetFocus;


end;

procedure TFrm_IndEnv_Fab.bbEditarMPClick(Sender: TObject);
begin
if not (BBGRAVAR.Enabled) then
   exit;
mItem_mp_alt:=STG_MP_OP03.Row;
if valfloat(STG_MP_OP03.Cells[mcolmp_codpro,mItem_mp_alt])=0 then
   begin
   fmensagem('Favor Selecionar um item valido!',0,['0'],0);
   exit;
   end;
mop_mp :=1;
txtmp_codigo.Text    :=STG_MP_OP03.Cells[mcolmp_codpro,mitem_mp_alt];
txtmp_descricao.Text :=STG_MP_OP03.Cells[mcolmp_descricao,mitem_mp_alt];
txtmp_und.Text       :=STG_MP_OP03.Cells[mcolmp_und,mitem_mp_alt];
txtmp_qtdteor.Text   :=STG_MP_OP03.Cells[mcolmp_qtdteor,mitem_mp_alt];
txtmp_qtdutil.Text   :=STG_MP_OP03.Cells[mcolmp_qtdutil,mitem_mp_alt];
cbmp_qtdutil_motivo.Text   :=STG_MP_OP03.Cells[mcolmp_qtdutil_motivo,mitem_mp_alt];
txtmp_lote.Text      :=STG_MP_OP03.Cells[mcolmp_lote,mitem_mp_alt];
txtmp_re.Text        :=STG_MP_OP03.Cells[mcolmp_re,mitem_mp_alt];
txtmp_dtvcto.Text    :=STG_MP_OP03.Cells[mcolmp_dtvcto,mitem_mp_alt];
txtmp_dtfab.Text    :=STG_MP_OP03.Cells[mcolmp_dtfab,mitem_mp_alt];
txtmp_pu.Text        :=STG_MP_OP03.Cells[mcolmp_pu,mitem_mp_alt];
txtmp_vt.Text        :=STG_MP_OP03.Cells[mcolmp_vt,mitem_mp_alt];
txtmp_codigo.SetFocus;


end;

procedure TFrm_IndEnv_Fab.bbExcluirMPClick(Sender: TObject);
var
x: Integer;
begin
if not (BBGRAVAR.Enabled) then
   exit;
mItem_mp_alt:=STG_MP_OP03.Row;
if valfloat(STG_MP_OP03.Cells[mcolmp_codpro,mItem_mp_alt])=0 then
   exit;
if fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;

if STG_MP_OP03.RowCount=1 then
   STG_MP_OP03.Rows[0].Clear
else
   begin
   for x:=STG_MP_OP03.Row to STG_MP_OP03.RowCount-1 do
      begin
      STG_MP_OP03.Cells[mcolmp_codpro,x]   := STG_MP_OP03.Cells[mcolmp_codpro,x+1];
      STG_MP_OP03.Cells[mcolmp_descricao,x]:= STG_MP_OP03.Cells[mcolmp_descricao,x+1];
      STG_MP_OP03.Cells[mcolmp_und,x]      := STG_MP_OP03.Cells[mcolmp_und,x+1];
      STG_MP_OP03.Cells[mcolmp_qtdteor,x]  := STG_MP_OP03.Cells[mcolmp_qtdteor,x+1];
      STG_MP_OP03.Cells[mcolmp_qtdutil,x]  := STG_MP_OP03.Cells[mcolmp_qtdutil,x+1];
      STG_MP_OP03.Cells[mcolmp_qtdutil_motivo,x]  := STG_MP_OP03.Cells[mcolmp_qtdutil_motivo,x+1];
      STG_MP_OP03.Cells[mcolmp_lote,x]     := STG_MP_OP03.Cells[mcolmp_lote,x+1];
      STG_MP_OP03.Cells[mcolmp_dtvcto,x]   := STG_MP_OP03.Cells[mcolmp_dtvcto,x+1];
      STG_MP_OP03.Cells[mcolmp_dtfab,x]   := STG_MP_OP03.Cells[mcolmp_dtfab,x+1];
      STG_MP_OP03.Cells[mcolmp_pu,x]       := STG_MP_OP03.Cells[mcolmp_pu,x+1];
      STG_MP_OP03.Cells[mcolmp_vt,x]       := STG_MP_OP03.Cells[mcolmp_vt,x+1];
      end;
   STG_MP_OP03.RowCount:=STG_MP_OP03.RowCount-1;
   end;
fptotais(0);

mop_mp:=0;

end;

procedure TFrm_IndEnv_Fab.txtmp_puExit(Sender: TObject);
begin
if (valfloat(txtmp_pu.Text)>999999999) or (ValFloat(txtmp_pu.Text)<=0) then
   txtmp_pu.Text:='0';
txtmp_pu.Text  :=Formatfloat(mcaspuind,ValFloat(txtmp_pu.Text));
txtmp_vt.Text     :=FormatFloat(mcasas, Valfloat(txtmp_pu.Text)*ValFloat(txtmp_qtdteor.Text));
bbGravaItemMP.Click;

end;

procedure TFrm_IndEnv_Fab.txtme_puExit(Sender: TObject);
begin
if (valfloat(txtme_pu.Text)>999999999) or (ValFloat(txtme_pu.Text)<=0) then
   txtme_pu.Text:='0';
txtme_pu.Text     :=Formatfloat(mcaspuind,ValFloat(txtme_pu.Text));
txtme_vt.Text     :=FormatFloat(mcasas, Valfloat(txtme_pu.Text)*ValFloat(txtme_qtdteor.Text));
bbGravarItemME.Click;

end;


function TFrm_IndEnv_Fab.fptotais(ptipo: Integer): Boolean;
var
y: Integer;
mQtdmp,mQtdme: Real;
mTotmp,mTotme: Real;
begin
mQtdmp:=0;
mQtdme:=0;
mTotmp:=0;
mTotme:=0;

for y:=0 to STG_MP_OP03.RowCount-1 do
   begin
   if fSonumero(STG_MP_OP03.Cells[mcolmp_codpro,y])=0 then
      Continue;
   mQtdmp:=mqtdmp+ValFloat(STG_MP_OP03.cells[mcolmp_qtdteor,y]);
   mtotmp:=mtotmp+ValFloat(STG_MP_OP03.cells[mcolmp_vt,y]);
   end;

for y:=0 to STG_ME_OP03.RowCount-1 do
   begin
   if fSonumero(STG_ME_OP03.Cells[mcolme_codpro,y])=0 then
      Continue;
   mQtdme:=mqtdme+ValFloat(STG_ME_OP03.cells[mcolme_qtdteor,y]);
   mtotme:=mtotme+ValFloat(STG_ME_OP03.cells[mcolme_vt,y]);
   end;

st_totmpund.Caption:=FormatFloat(mcasind, mQtdmp);
st_totmpvlr.Caption:=FormatFloat(mcasind, mTotmp);

st_totmeund.Caption:=FormatFloat(mcasind, mQtdme);
st_totmevlr.Caption:=FormatFloat(mcasind, mTotme);

st_totgerund.Caption:=FormatFloat(mcasind, mQtdme+mQtdmp);
st_totgervlr.Caption:=FormatFloat(mcasind, mTotme+mTotmp);
result:=true;
end;


procedure TFrm_IndEnv_Fab.bbExcluirMEClick(Sender: TObject);
var
x: Integer;
begin
if not (BBGRAVAR.Enabled) then
   exit;
mItem_ME_alt:=STG_ME_OP03.Row;
if valfloat(STG_ME_OP03.Cells[mcolme_codpro,mItem_ME_alt])=0 then
   exit;
if fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;

if STG_ME_OP03.RowCount=1 then
   STG_ME_OP03.Rows[0].Clear
else
   begin
   for x:=STG_ME_OP03.Row to STG_ME_OP03.RowCount-1 do
      begin
      STG_ME_OP03.Cells[mcolme_codpro,x]   :=STG_ME_OP03.Cells[mcolme_codpro,x+1];
      STG_ME_OP03.Cells[mcolme_descricao,x]:=STG_ME_OP03.Cells[mcolme_descricao,x+1];
      STG_ME_OP03.Cells[mcolme_und,x]      :=STG_ME_OP03.Cells[mcolme_und,x+1];
      STG_ME_OP03.Cells[mcolme_qtdteor,x]  :=STG_ME_OP03.Cells[mcolme_qtdteor,x+1];
      STG_ME_OP03.Cells[mcolme_qtdutil,x]  :=STG_ME_OP03.Cells[mcolme_qtdutil,x+1];
      STG_ME_OP03.Cells[mcolme_qtdutil_motivo,x]  :=STG_ME_OP03.Cells[mcolme_qtdutil_motivo,x+1];
      STG_ME_OP03.Cells[mcolme_lote,x]     :=STG_ME_OP03.Cells[mcolme_lote,x+1];
      STG_ME_OP03.Cells[mcolme_dtvcto,x]   :=STG_ME_OP03.Cells[mcolme_dtvcto,x+1];
      STG_ME_OP03.Cells[mcolme_dtfab,x]   :=STG_ME_OP03.Cells[mcolme_dtfab,x+1];
      STG_ME_OP03.Cells[mcolme_pu,x]       :=STG_ME_OP03.Cells[mcolme_pu,x+1];
      STG_ME_OP03.Cells[mcolme_vt,x]       :=STG_ME_OP03.Cells[mcolme_vt,x+1];
      end;
   STG_ME_OP03.RowCount:=STG_ME_OP03.RowCount-1;
   end;
fptotais(0);
mop_ME:=0;

end;

procedure TFrm_IndEnv_Fab.STG_MP_OP03DblClick(Sender: TObject);
begin
if (BBGRAVAR.Enabled) and (ValFloat(STG_MP_OP03.Cells[mcolmp_codpro,STG_MP_OP03.row])<>0) then
   bbEditarMPClick(self);
end;

procedure TFrm_IndEnv_Fab.STG_ME_OP03DblClick(Sender: TObject);
begin
if (BBGRAVAR.Enabled) and (ValFloat(STG_ME_OP03.Cells[mcolme_codpro,STG_ME_OP03.row])<>0) then
   bbEditarMEClick(self);

end;

procedure TFrm_IndEnv_Fab.BBEXCLUIRClick(Sender: TObject);
var
  existe_lote: Boolean;
begin
if DM3.Tb_op01OP1_CHAVE_FRAC.asinteger>0 then
   begin
   messagedlg('Francionamento Numero '+DM3.Tb_op01OP1_CHAVE_FRAC.AsString+'/'+DM3.Tb_Op01OP1_CHAVE_FRAC_ANO.AsString+' so podera ser excluido na tela de fracionamento!',mtWarning,[mbOk],0);
   exit;
   end;
if fEstoqueNegativo then
   exit;


if fmensagem('Confirma a Exclusão?',0,['1','2'],2)<>mrYes then
   exit;
//verificando se existe o lote
existe_lote:=false;
if DM3.Tb_Op01OP1_STATUS.Value=2 then
  begin
  DM1.Query1.Close;
  DM1.Query1.SQl.Clear;
  DM1.Query1.SQL.Add(' Select count(*) from CADLGC where ');
  DM1.Query1.Sql.add(' CLCODPRO=0'+CODPRO.TEXT
                    +' and CLNUMERO='+chr(39)+MNUMLOT.Text+chr(39)
                    +' and CLQTD='+chr(39)+ValReal(QTDPROD.Text)+chr(39));
  la_Empresas:=trim(fRetInstMECadastro('CADLGC','CLCODEMP',Codemp));
  if la_Empresas <>'' then
     DM1.Query1.Sql.add(' and '+la_Empresas);
  DM1.Query1.Open;
  existe_lote:=true;
  end
else
  begin
  existe_lote:=true;
  end;

if existe_lote=True then
  begin
  if DM3.Tb_Op01OP1_STATUS.Value=2 then
     fpexcluir(1,dm3.Tb_Op01OP1_SITMP.AsInteger)
  else
     fpexcluir(0,dm3.Tb_Op01OP1_SITMP.AsInteger);
  BBINCLUIR.Enabled        := bbinc_true;
  BBLOCALIZAR.Enabled      := True;
  BBALTERAR.Enabled        := False;
  BBEXCLUIR.Enabled        := False;
  BBCONFIRMAR.Enabled      := False;
  bb_materia_prima.Enabled := False;
  BBIMPRIMIR.Enabled       := False;
  BBGRAVAR.Enabled         := False;
  MDATA.ReadOnly       := False;
  CODPRO.ReadOnly      := False;
  QTDPREV.ReadOnly     := False;
  QTDPROD.ReadOnly     := False;
  PRAZOVAL.ReadOnly    := False;
  MNUMLOT.ReadOnly     := False;
  MDATAVEN.ReadOnly    := False;
  CB_ETIQUETAS.Enabled := True;

  bb_materia_prima.Enabled:=False;

  Fmensagem('Registro Excluido!',0,['0'],0);
  BBLIMPAR.Click;
  end
else
  begin
  Fmensagem('Impossivel Excluir OP, já houve venda da mercadoria!',0,['0'],0);
  end;

end;


function fBloqueiaLibera(ptipo: Integer; pCodEmp,pLotSeq,pChave: Real): Boolean;
// ptipo=0 libera chave
//      =1 bloqueia chave
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADOP01 set OP1_SITUACAO='+IntToStr(ptipo)
                  +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' OP1_CODEMP=0'+FloatToStr(pcodemp)+' and ')
                  +' OP1_LOTSEQ=0'+FloatToStr(pLotSeq)
                  +' and OP1_CODIGO=0'+FloatToStr(pChave));

try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;
result:=true;
end;

procedure TFrm_IndEnv_Fab.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (BBGRAVAR.Enabled) and (mOperFab=1)  then
   fBloqueiaLibera(0,DM3.Tb_Op01OP1_CODEMP.Value,DM3.Tb_Op01OP1_LOTSEQ.Value
                 ,DM3.Tb_Op01OP1_CODIGO.Value);

if (trim(MNUMLOT.Text)<>'') and (trim(MDATA.Text)<>'/  /') then
   begin
   if BBGRAVAR.Enabled then
      begin
      if MNUMLOT.Text=fBuscaLoteFabricacao(1,Strtodate(MDATA.Text)) then
         fBuscaLoteFabricacao(2,Strtodate(MDATA.Text));
      MNUMLOT.Text:='';
      end;
   end;
if (FormState<>[fsModal]) then
   Action := caFree;   
end;







procedure TFrm_IndEnv_Fab.FormCreate(Sender: TObject);
var
Query_Cons: TQuery;
begin
CB_FILIAL.Items.Clear;

if fLerGenerico_query('CADPRO_FILIAL','CFFILIAL,CFNOME','CFCODEMP=0'+IntToStr(codemp-iif(codemp>100,100,0))+' order by CFFILIAL',query_consulta) then
   begin
   While not query_consulta.Eof do
      begin
      CB_FILIAL.Items.Add(Query_consulta.fieldbyName('CFNOME').asstring+' - ['+query_consulta.fieldbyname('CFFILIAL').asstring+']' );
      Query_consulta.Next;
      end;
   end;
if log_filial_padrao=0 then
   begin
   CB_FILIAL.ItemIndex:=0;
   end
else
  begin
  if Query_consulta.Locate('CFFILIAL',IntToStr(log_filial_padrao),[]) then
     begin
     CB_FILIAL.Text:=Query_consulta.fieldbyName('CFNOME').Value+' - ['+query_consulta.fieldbyname('CFFILIAL').asstring+']';
     with CB_FILIAL do
          ItemIndex := items.IndexOf(CB_FILIAL.Text);
     end;
  end;



 mostramensagem:=true;
Qr_MP_Etapa01CPPU.DisplayFormat       :=mcaspuind;
Qr_MP_Etapa01OP3_QTDUTIL.DisplayFormat:=mcasqtd;
Qr_MP_Etapa01OP3_DTVCTO.DisplayFormat :=fdt2;
Qr_MP_Etapa01OP3_DTFAB.DisplayFormat :=fdt2;

tbs_relatorio.tabvisible:=false;
TsAnexada.tabvisible:=false;
tsRichtext.tabvisible:=false;




if flfilpad(-1,'_INDENVFAB','') then
   begin
   while not DM4.Tb_FilPad2.Eof do
      begin
      if trim(DM4.Tb_FilPad2FPVALOR.AsString)<>'' then
         begin
         CB01_MOTIVO.Items.Add(DM4.Tb_FilPad2FPVALOR.AsString);
         cbmp_qtdutil_motivo.Items.Add(DM4.Tb_FilPad2FPVALOR.AsString);
         cbme_qtdutil_motivo.Items.Add(DM4.Tb_FilPad2FPVALOR.AsString);
         end;
      DM4.Tb_FilPad2.Next;
      end;
   end;

PageControl1.ActivePage:=tsMatPrima;
Application.CreateForm(TFrm_bkp,form_bkp);

Query_Cons:=TQuery.Create(nil);
Query_Cons.DatabaseName:='SG_ASSOC';

Query_Cons.Close;
Query_Cons.SQL.Clear;
Query_Cons.SQL.Add('Select NOMUSR from CADUSR where '
                  +' (CODEMP=:CODEMP or CODEMP=:CODEMP_FILIAL )'
                  +' order by NOMUSR ');
Query_Cons.ParamByName('CODEMP').AsInteger:=codemp;
if codemp>100 then
   Query_Cons.ParamByName('CODEMP_FILIAL').AsInteger:=codemp-100
else
   Query_Cons.ParamByName('CODEMP_FILIAL').AsInteger:=codemp+100;
Query_Cons.Open;
DBCB_RESP.Items.Clear;
DBCB_CONFERENTE.Items.Clear;
While not Query_Cons.Eof do
   begin
   DBCB_RESP.Items.Add(query_cons.fieldbyName('NOMUSR').AsString);
   DBCB_CONFERENTE.Items.Add(query_cons.fieldbyName('NOMUSR').AsString);
   Query_Cons.Next;
   end;

Query_Cons.Close;
Query_Cons.SQL.Clear;
Query_Cons.SQL.Add('Select PDNOME,CPCODPRO, PDUND '
                  +' from CADCOMP,CADPRO  where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                  ' CPCODEMP=0'+IntToStr(codemp)+' and PDCODEMP=CPCODEMP and ')
                  +' PDCODPRO=CPCODPRO '
                  +' group by PDNOME,CPCODPRO,PDUND '
                  +' ORDER BY PDNOME,CPCODPRO,PDUND ');
try
   Query_Cons.open;
except
   Query_Cons.sql.savetofile(mpastatemp +'sql.TXT');
   end;
CB_NOMPRO.Clear;
CB_NOMPRO.Items.Clear;
While not Query_Cons.Eof do
   begin
   CB_NOMPRO.Items.Add(FormatFloat('00000', Query_cons.fieldbyName('CPCODPRO').AsFloat)
                      +' | '+Query_cons.fieldbyName('PDNOME').AsString+' | '+Query_cons.fieldbyName('PDUND').AsString);
   Query_Cons.Next;
   end;
CB_NOMPRO.ItemIndex:=-1;
FreeAndNil(Query_Cons);
Tb_Op_ETAETA_HOR_INIPROC.EditMask:=pEditMascHora;
Tb_Op_ETAETA_HOR_TERMINO.EditMask:=pEditMascHora;
Tb_Op_ETAETA_HOR_CONF.EditMask   :=pEditMascHora;

if codusr<>1111 then
  begin
//  tsProcessos.TabVisible:=false;
//  bb_materia_prima.Visible:=false;
  tsTextoTemp.TabVisible:=false;
  tsConfigMaster.TabVisible:=false;
  end
else
  begin
//  tsProcessos.TabVisible:=True;
//  bb_materia_prima.Visible:=True;
  tsTextoTemp.TabVisible:=True;
  tsConfigMaster.TabVisible:=true
  end;
  
tsTextoTemp.tabvisible:=false;

if flfilpad(0,'_INDENV_FAB','') then
  begin
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ESTNEG',[]) then
    cb_EstNeg.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
  end;

tbs_relatorio.TabVisible := False;

{
try

   wp_texto.InputMergeField('','[%MP00_01]');
   wp_texto.InputMergeField('','[%ENV00_01]');
   wp_texto.InputMergeField('','[%MP01_01]');
   wp_texto.InputMergeField('','[%MP02_01]');
   wp_texto.InsertPointAttr.CodeOpeningText := '[%N=';
   wp_texto.InsertPointAttr.CodeClosingText := ']';

except on e : exception do
   messagedlg('Erro '+e.message,mtWarning,[mbOk],0);
   end;

}
fLerCadDW_CFG;
fAtuaizarLegenda;

end;


procedure TFrm_IndEnv_Fab.QTDPREVEnter(Sender: TObject);
begin
mQtdAnt:=ValFloat(QTDPREV.Text);
end;



Function fImprimirEnvMod00_Word(pTipo: Integer; pBookMarck:String;pCodemp,pLotSeq,pChave: Real): Boolean;
//*****************************************************************************
//*****************************************************************************
//                       bookmark esperado                                  ///
//                          Env00_01,Env00_02 ... ENV00_10                     ///
//*****************************************************************************


var
mQtdReg,mLinha: Integer;

begin
Frm_IndEnv_Fab.Qr_Comp_MP.Close;
Frm_IndEnv_Fab.Qr_Comp_MP.SQL.Clear;
Frm_IndEnv_Fab.Qr_Comp_MP.SQL.Add('Select CPCODEMP,  '
                             +'       CPORDEM, '
                             +'       CPCODPRO, '
                             +'       CPNUMERO, '
                             +'       CPCODMAT, '
                             +'       CPCODPRO_ACAB, '
                             +'       CPMPNUM, '
                             +'       CPQUANT, '
                             +'       CPPU, '
                             +'       CPVLRINC, '
                             +'       CPALIQORI, '
                             +'       CPALICMSCRED, '
                             +'       CPICMSCRED, '
                             +'       CPTIPO, '
                             +'       CPQTD_PAD, '
                             +'       CPPERCENT, '
                             +'       CPPERCENT_REST, '
                             +'       PDNOME as PDNOME, '
                             +'       PDNOME2 as PDNOME2, '
                             +'       PDUND as PDUND '
                             +'       ,OP3_QTDPREV as OP3_QTDPREV '
                             +'       ,OP3_QTDUTIL as OP3_QTDUTIL '
                             +'       ,OP3_PU      as OP3_PU '
                             +'       ,OP3_LOTE    as OP3_LOTE '
                             +'       ,OP3_DTVCTO  as OP3_DTVCTO '
                             +'       ,OP3_DTFAB  as OP3_DTFAB '
                             +'       ,OP3_LOTE_RE as OP3_LOTE_RE'
                             +'       from CADCOMP,CADPRO,CADOP03 where '
     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
         ' CPCODEMP=0'+Frm_IndEnv_Fab.Tb_Op02OP2_CODEMP.AsString+' and PDCODEMP=CPCODEMP and ')
     +' PDCODPRO=CPCODMAT and (CPTIPO=1) '
     +' and CPCODPRO=0'+Frm_IndEnv_Fab.Tb_Op02OP2_CODPRO.AsString
     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
         ' and OP3_CODEMP=CPCODEMP ')
     +'  and OP3_CODMAT=CPCODMAT '
     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
          ' and OP3_CODEMP=0'+FloatToStr(pcodemp) )
                +' and OP3_LOTSEQ=0'+FloatTostr(pLotseq)
               +' and OP3_CODIGO=0'+FloatToStr(pChave)

     +' ORDER BY CPCODPRO_ACAB,CPORDEM, PDNOME ');



try
   Frm_IndEnv_Fab.Qr_Comp_MP.open;
except
   Frm_IndEnv_Fab.Qr_Comp_MP.sql.savetofile(mpastatemp +'sql.TXT');
   exit;
   end;
Frm_IndEnv_Fab.Qr_Comp_MP.First;
While not Frm_IndEnv_Fab.Qr_Comp_MP.Eof do
   begin
   if (Frm_IndEnv_Fab.Qr_Comp_MPPDNOME2.AsString='') or
      (Frm_IndEnv_Fab.Qr_Comp_MPPDNOME2.AsString='_') then
      mcinst2:=Frm_IndEnv_Fab.Qr_Comp_MPPDNOME.AsString
   else
      mcinst2:=Frm_IndEnv_Fab.Qr_Comp_MPPDNOME2.AsString;

   mcinst3:=FormatFloat(mcasas, Frm_IndEnv_Fab.Qr_Comp_MPCPPERCENT_REST.Value)+'%';


   Frm_IndEnv_Fab.Qr_Comp_MP.Next;
   end;
if not Frm_IndEnv_Fab.Qr_Comp_MP.IsEmpty then
   begin
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_01');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_02');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_03');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_04');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_05');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_06');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_07');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_08');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_09');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_10');
   end;
result:=true;

end;





function fLerMateriaPrima(pTipo: Integer; pCodemp,pLotseq,pChave: Real):Boolean;

//*****************************************************************************
//*****************************************************************************
//                       bookmark esperado                                  ///
//                          MP00_01,MP00_02 ... MP00_10                     ///
//*****************************************************************************

begin
Frm_IndEnv_Fab.Qr_Comp_MP.Close;
Frm_IndEnv_Fab.Qr_Comp_MP.SQL.Clear;
Frm_IndEnv_Fab.Qr_Comp_MP.SQL.Add('Select CPCODEMP,  '
                                 +'       CPORDEM, '
                                 +'       CPCODPRO, '
                                 +'       CPNUMERO, '
                                 +'       CPCODMAT, '
                                 +'       CPCODPRO_ACAB, '
                                 +'       CPMPNUM, '
                                 +'       CPQUANT, '
                                 +'       CPPU, '
                                 +'       CPVLRINC, '
                                 +'       CPALIQORI, '
                                 +'       CPALICMSCRED, '
                                 +'       CPICMSCRED, '
                                 +'       CPTIPO, '
                                 +'       CPQTD_PAD, '
                                 +'       CPPERCENT, '
                                 +'       CPPERCENT_REST, '
                                 +'       PDNOME as PDNOME, '
                                 +'       PDNOME2 as PDNOME2, '
                                 +'       PDUND as PDUND '
                                 +'       ,OP3_QTDPREV as OP3_QTDPREV '
                                 +'       ,OP3_QTDUTIL as OP3_QTDUTIL '
                                 +'       ,OP3_PU      as OP3_PU '
                                 +'       ,OP3_LOTE    as OP3_LOTE '
                                 +'       ,OP3_DTVCTO  as OP3_DTVCTO '
                                 +'       ,OP3_DTFAB as OP3_DTFAB '
                                 +'       ,OP3_LOTE_RE as OP3_LOTE_RE '
                                 +'       from CADCOMP,CADPRO,CADOP03 where '
         +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
             ' CPCODEMP=0'+Frm_IndEnv_Fab.Tb_Op02OP2_CODEMP.AsString+' and PDCODEMP=CPCODEMP and ')
         +' PDCODPRO=CPCODMAT and (CPTIPO=0 or CPTIPO is null) '
         +' and CPCODPRO=0'+Frm_IndEnv_Fab.Tb_Op02OP2_CODPRO.AsString
         +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
             ' and OP3_CODEMP=CPCODEMP ')
         +'  and OP3_CODMAT=CPCODMAT '
         +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                  ' and OP3_CODEMP=0'+FloatToStr(pcodemp))
                    +' and OP3_LOTSEQ=0'+FloatTostr(pLotseq)
                    +' and OP3_CODIGO=0'+FloatToStr(pChave)

         +' ORDER BY CPCODPRO_ACAB,CPORDEM, PDNOME ');
Frm_IndEnv_Fab.Qr_Comp_MP.sql.savetofile('C:\SGE\SGE_MP_sql.TXT');

try
   Frm_IndEnv_Fab.Qr_Comp_MP.open;
except
   Frm_IndEnv_Fab.Qr_Comp_MP.sql.savetofile(mpastatemp +'sql.TXT');
   exit;
   end;
if not Frm_IndEnv_Fab.Qr_Comp_MP.IsEmpty then
   begin
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP00_01');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP00_02');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP00_03');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP00_04');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP00_05');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP00_06');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP00_07');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP00_08');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP00_09');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP00_10');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_01');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_02');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_03');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_04');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_05');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_06');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_07');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_08');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_09');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_10');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP01_01');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP01_02');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP01_03');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP01_04');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP01_05');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP01_06');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP01_07');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP01_08');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP01_09');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP01_10');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP02_01');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP02_02');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP02_03');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP02_04');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP02_05');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP02_06');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP02_07');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP02_08');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP02_09');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP02_10');
   end;
Result:=true;
end;




function fLerEmbalagens(pTipo: Integer; pCodemp,pLotseq,pChave: Real):Boolean;


//*****************************************************************************
//*****************************************************************************
//                       bookmark esperado                                  ///
//                          MP00_01,MP00_02 ... MP00_10                     ///
//*****************************************************************************

begin
Frm_IndEnv_Fab.Qr_Embalagens.Close;
Frm_IndEnv_Fab.Qr_Embalagens.SQL.Clear;
Frm_IndEnv_Fab.Qr_Embalagens.SQL.Add('Select CPCODEMP,  '
                                 +'       CPORDEM, '
                                 +'       CPCODPRO, '
                                 +'       CPNUMERO, '
                                 +'       CPCODMAT, '
                                 +'       CPCODPRO_ACAB, '
                                 +'       CPMPNUM, '
                                 +'       CPQUANT, '
                                 +'       CPPU, '
                                 +'       CPVLRINC, '
                                 +'       CPALIQORI, '
                                 +'       CPALICMSCRED, '
                                 +'       CPICMSCRED, '
                                 +'       CPTIPO, '
                                 +'       CPQTD_PAD, '
                                 +'       CPPERCENT, '
                                 +'       CPPERCENT_REST, '
                                 +'       PDNOME as PDNOME, '
                                 +'       PDNOME2 as PDNOME2, '
                                 +'       PDUND as PDUND '
                                 +'       ,OP3_QTDPREV as OP3_QTDPREV '
                                 +'       ,OP3_QTDUTIL as OP3_QTDUTIL '
                                 +'       ,OP3_PU      as OP3_PU '
                                 +'       ,OP3_LOTE    as OP3_LOTE '
                                 +'       ,OP3_DTVCTO  as OP3_DTVCTO '
                                 +'       ,OP3_DTFAB  as OP3_DTFAB '
                                 +'       ,OP3_LOTE_RE as OP3_LOTE_RE'
                                 +'       from CADCOMP,CADPRO,CADOP03 where '
         +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
             ' CPCODEMP=0'+Frm_IndEnv_Fab.Tb_Op02OP2_CODEMP.AsString+' and PDCODEMP=CPCODEMP and ')
         +' PDCODPRO=CPCODMAT and (CPTIPO=1) '
         +' and CPCODPRO=0'+Frm_IndEnv_Fab.Tb_Op02OP2_CODPRO.AsString
         +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
             ' and OP3_CODEMP=CPCODEMP ')
         +'  and OP3_CODMAT=CPCODMAT '
         +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                  ' and OP3_CODEMP=0'+FloatToStr(pcodemp))
                    +' and OP3_LOTSEQ=0'+FloatTostr(pLotseq)
                    +' and OP3_CODIGO=0'+FloatToStr(pChave)

         +' ORDER BY CPCODPRO_ACAB,CPORDEM, PDNOME ');
try
   Frm_IndEnv_Fab.Qr_Embalagens.open;
except
   Frm_IndEnv_Fab.Qr_Embalagens.sql.savetofile(mpastatemp +'sql.TXT');
   exit;
   end;
if not Frm_IndEnv_Fab.Qr_Embalagens.IsEmpty then
   begin
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP00_01');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP00_02');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP00_03');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP00_04');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP00_05');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP00_06');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP00_07');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP00_08');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP00_09');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP00_10');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_01');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_02');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_03');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_04');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_05');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_06');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_07');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_08');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_09');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'ENV00_10');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP01_01');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP01_02');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP01_03');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP01_04');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP01_05');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP01_06');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP01_07');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP01_08');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP01_09');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP01_10');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP02_01');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP02_02');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP02_03');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP02_04');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP02_05');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP02_06');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP02_07');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP02_08');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP02_09');
   Frm_IndEnv_Fab.ReplaceTags(Frm_IndEnv_Fab.wp_texto,'MP02_10');
   end;
Result:=true;
end;





procedure TFrm_IndEnv_Fab.BBCONFIRMARClick(Sender: TObject);
begin

if not cb_EstNeg.Checked then
  begin
  if not fTestaEstoqueNegativo(1) then
    exit;
  end;

if DM3.Tb_Op01OP1_STATUS.Value>1 then
  begin
  Fmensagem('Este Pedido ja Estava Confirmado!',0,['0'],0);
  exit;
  end;

if fMensagem('Quer Realmente Confirmar a Produção!',0,['1','2'],0)<>mrYes then
  exit;






DM3.Tb_Op01.Close;
DM3.Tb_Op01.SQL.Clear;
DM3.Tb_OP01.SQL.Add('Select * from CADOP01 where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP1_CODEMP=0'+IntTostr(codemp)+' and ')
                   +' OP1_FABENV=0'
                   +' and OP1_LOTSEQ=0'+IntToStr(mLotSeqIndFab)
                   +' and OP1_CODIGO=0'+Trim(MCHAVE.Text));
DM3.Tb_Op01.Open;
if DM3.Tb_Op01.Eof then
  begin
  Fmensagem('Chave Excluida por Outro Usuario!',0,['0'],0);
  exit;
  end;
if DM3.Tb_Op01OP1_STATUS.Value>1 then
  begin
  Fmensagem('Pedido ja Confirmado!',0,['0'],0);
  exit;
  end;
if mQtdMan_Fab<DM3.Tb_Op01OP1_QTDMAN.AsFloat then
  begin
  mOperFab:=3;
  BBLOCALIZARClick(self);
  end;



if fpconfirmar(iif(DM3.Tb_Op01OP1_SITMP.Asinteger=0,0,2)) then
  begin
  SITMP:=2;
  DM3.Tb_Op01.Edit;
  DM3.Tb_Op01OP1_STATUS.Value:=2;
  DM3.Tb_Op01OP1_SITMP.Value:=SITMP;
  DM3.Tb_Op01.Post;
  MNUMLOT.clear;
  Fmensagem('Confirmado!',0,['0'],0);

  BBLIMPAR.Click;
  end;

{Application.CreateForm(Tfrm_compras_orc_Precos,frm_compras_orc_Precos);
frm_compras_orc_Precos.mChave :=mCompras_GP.mped1_Chave;
frm_compras_orc_Precos.mCodemp:=mCompras_GP.mPed1_CodEmp;
frm_compras_orc_Precos.mLotSeq:=mCompras_GP.mPed1_Chave_ano;

try
   frm_compras_orc_Precos.fCarregarGrid(frm_compras_orc_Precos.mChave,frm_compras_orc_Precos.mCodEmp,frm_compras_orc_Precos.mLotseq);
except
   end;
frm_compras_orc_Precos.ShowModal;
Freeandnil(Frm_Compras_Orc_Precos);
}

end;


function TFrm_IndEnv_Fab.fExistemLotes: Boolean;
var
x: Integer;
mresult: boolean;
begin
mresult:=true;
for x:=0 to Frm_IndEnv_Fab.STG_MP_OP03.RowCount-1 do
   begin
   if valfloat(Frm_IndEnv_Fab.STG_MP_OP03.Cells[mcolmp_codpro,x])=0 then
      begin
      continue;
      end;
   if not flcadlgc(mloc_armazenamento,1,0,Trim(Frm_IndEnv_Fab.STG_MP_OP03.Cells[mcolmp_codpro,x]),Frm_IndEnv_Fab.STG_MP_OP03.Cells[mcolmp_lote,x],' ') then
      begin
      mresult:=false;
      break;
      end;
   if ValFloat(Frm_IndEnv_Fab.STG_MP_OP03.Cells[mcolmp_qtdutil,x])>DM1.Tb_LGCCLQTD.AsFloat then
      begin
      mresult:=false;
      break;
      end;
   end;
if mresult=false then
   result:=mresult
else
   begin

   for x:=0 to Frm_IndEnv_Fab.STG_ME_OP03.RowCount-1 do
      begin
      if valfloat(Frm_IndEnv_Fab.STG_ME_OP03.Cells[mcolmp_codpro,x])=0 then
         begin
         continue;
         end;
      if not flcadlgc(mloc_armazenamento,1,0,Trim(Frm_IndEnv_Fab.STG_ME_OP03.Cells[mcolmp_codpro,x]),Frm_IndEnv_Fab.STG_ME_OP03.Cells[mcolmp_lote,x],' ') then
         begin
         mresult:=false;
         break;
         end;
      if ValFloat(Frm_IndEnv_Fab.STG_ME_OP03.Cells[mcolmp_qtdutil,x])>DM1.Tb_LGCCLQTD.AsFloat then
         begin
         mresult:=false;
         break;
         end;
      end;
   end;

result:=mresult;

end;





function TFrm_IndEnv_Fab.fpconfirmar(ptipo: Integer): Boolean;
var
  mqtdgrav,x : Integer;
  mfat,mrest : Real;

  mfat_prev,mrest_prev: real;
  mpercdesvio: real;

  mdtv       : String;
  mSeqItem: Integer;

  pBaixar: pBaixarLotes;

  function fCalcularDesvio(pQtdPadrao,pQtdEnvio: Real): Real;
  begin
  if (pQtdPadrao<>0) and (pQtdEnvio<>0) then
     result := pQtdPadrao*100 / pQtdEnvio
  else
     result:=0;
  fGerarEvento('4050 calcular desvio novo desvio '+floattostr(result));

  end;

  function fRetornaNovaQuantidade(pQtdEntra: real; pDesvio: Real; pCodMat: Real): Real;
  var
    mCasasArred: Integer;
  begin
  fGerarEvento('4156 retornoar nova quantidade ');

  if fLerGenerico_query('CADPRO','PDFRACAO','PDCODPRO=0'+floattoStr(pcodmat),query_consulta) then
     begin
     if query_consulta.fieldbyname('PDFRACAO').AsInteger=1 then
        mCasasArred:=DM1.Tb_PargerPCASQTD.AsInteger
     else
        mCasasArred:=0;
     end;
  result := pQtdEntra+ Truncar( (pQtdEntra*pDesvio/100) , mCasasArred);
  end;
  procedure fDeletarCadop3(pcodemp,pchave,pLotseq: Integer);
  var
  query_dadosInv: TQuery;

  begin
  fGerarEvento('4070 deletar cadop03');

  query_dadosInv:=TQuery.Create(nil);
  query_dadosInv.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
  query_dadosInv.SQl.Add('delete from CADOP03 where OP3_CODIGO=:CHAVE and OP3_LOTSEQ=:LOTSEQ and OP3_CODEMP=:CODEMP ');
  query_dadosInv.ParamByName('CHAVE').AsInteger:=pchave;
  query_dadosInv.ParamByName('LOTSEQ').AsInteger:=pLotseq;
  query_dadosInv.ParamByName('CODEMP').AsInteger:=pcodemp;
  try
     query_dadosInv.ExecSQL;
     fdm1StartCommit;
  except on e : exception do
     begin
     ex_erroSql_Novo(query_dadosInv,4053,'SGE '+E.MESSAGE,'CADOP03');
     end;
     end;
//   Showmessage('Deletar cadop03 '+inttostr(Pchave)+'/'+Inttostr(plotseq)+'-'+Inttostr(pcodemp));

  query_dadosInv.close;
  freeandnil(query_dadosInv);


  end;


{
  procedure fajustarcadop03_temp_e_previsto(pcodemp,pchave,pLotseq: Integer);
  var
  query_dadosInv: TQuery;
  begin
  fGerarEvento('4094 ajustar  cadop03 temp e previsto');
  procedure fDeletarCadop3(pcodemp+,pchave,pLotseq: Integer);

  query_dadosInv:=TQuery.Create(nil);
  query_dadosInv.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
  query_dadosInv.SQl.Add('update CADOP03 set OP3_CODEMP=:CODEMP_NOV WHERE where OP3_CODIGO=:CHAVE and OP3_LOTSEQ=:LOTSEQ and OP3_CODEMP=:CODEMP ');
  query_dadosInv.ParamByName('CHAVE').AsInteger:=pchave;
  query_dadosInv.ParamByName('LOTSEQ').AsInteger:=pLotseq;
  query_dadosInv.ParamByName('CODEMP').AsInteger:=pcodemp+1000;
  query_dadosInv.ParamByName('CODEMP_NOVO').AsInteger:=pcodemp;
  try
     query_dadosInv.ExecSQL;
     fdm1StartCommit;
  except on e : exception do
     begin
     ex_erroSql_Novo(query_dadosInv,4053,'SGE '+E.MESSAGE,'CADOP03');
     end;
     end;
  query_dadosInv.close;
  freeandnil(query_dadosInv);


  end;

}
  procedure fajustarqtdprevista(pQtdResta: Real; pItem: integer; pfabenv,pcodemp,pchave,pLotseq: Integer);
  var
  query_dadosInv: TQuery;
  begin
  fGerarEvento('4119 ajustar qtd prevista ');

  query_dadosInv:=TQuery.Create(nil);
  query_dadosInv.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
  query_dadosInv.SQl.Add('Update CADOP03 set OP3_QTDPREV=OP3_QTDPREV + :QTD where OP3_CODIGO=:CHAVE '
                        +' and OP3_LOTSEQ=:LOTSEQ and OP3_CODEMP=:CODEMP '
                        +' and OP3_SEQ=:ITEM and OP3_FABENV=:FABENV ' );
  query_dadosInv.ParamByName('QTD').AsFloat:=pQtdResta;
  query_dadosInv.ParamByName('CHAVE').AsInteger:=pchave;
  query_dadosInv.ParamByName('LOTSEQ').AsInteger:=pLotseq;
  query_dadosInv.ParamByName('CODEMP').AsInteger:=pcodemp+1000;
  query_dadosInv.ParamByName('FABENV').AsInteger:=pfabenv;
  query_dadosInv.ParamByName('ITEM').AsInteger:=pItem;

  try
     query_dadosInv.ExecSQL;
     fdm1StartCommit;
  except on e : exception do
     begin
     ex_erroSql_Novo(query_dadosInv,4130,'SGE '+E.MESSAGE,'CADOP03');
     end;
     end;
  query_dadosInv.close;
  freeandnil(query_dadosInv);


  end;

  procedure reajustarcadop03(pcodemp,pchave,plotseq: integer);
  var
  mcomando: string;
  mretorno: string;
  begin
  fDeletarCadop3(pcodemp,pchave,plotseq);
  mcomando:='update cadop03 set op3_codemp='+inttostr(pcodemp)
            +' where op3_codigo='+inttostr(pchave)
            +' and op3_lotseq='+Inttostr(plotseq);
  fGerarEvento('41456executar sql '+mcomando);

  fExecutarComandoSQL(true,mcomando,mretorno,4218);


  end;

begin
//ptipo = 0 Baixar e Gerar Estoque Completo  MP, ME e PA.
//ptipo = 1 Baixar Estoque Somente MP e ME.
//ptipo = 2 Gerar Estoque PA.

Application.createform(TFrm_Pcus,Frm_PCus);
Frm_Pcus.origem:='exportar';
Frm_Pcus.CODPRO.Text:=CODPRO.Text;
Frm_Pcus.CODPROExit(self);
Frm_Pcus.NPCOCOM.Text:=FloatToStr(ValFloat(st_totgervlr.Caption)/valfloat(QTDPREV.text));

Frm_Pcus.NPCOCOMExit(Self);
Frm_Pcus.bbGravarClick(Self);
FreeAndNil(Frm_Pcus);
{
if not fExistemLotes then
   begin
   QTDPREVExit(self);
   end;
}



if ptipo<2 then
   begin
   if not fVerificaPendencia then
      begin
      fDeletarCadop3(codemp+1000,valint(MCHAVE.Text),ls_lotfab);

    {Termino do teste de verificação dos produtos Bloqueados}
      mqtdgrav:=0;
    // Materias Primas
      mSeqItem:=0;
      for x:=0 to Frm_IndEnv_Fab.STG_MP_OP03.RowCount-1 do
         begin
         if valfloat(Frm_IndEnv_Fab.STG_MP_OP03.Cells[mcolmp_codpro,x])=0 then
            begin
            continue;
            end;
         mrest     :=Arredonda(ValFloat(Frm_IndEnv_Fab.STG_MP_OP03.Cells[mcolmp_qtdutil,x]),DM1.Tb_PargerPCASQTD.AsInteger);
         mrest_prev:=Arredonda(ValFloat(Frm_IndEnv_Fab.STG_MP_OP03.Cells[mcolmp_qtdteor,x]),DM1.Tb_PargerPCASQTD.AsInteger);
         if mrest=mrest_prev then
            mpercdesvio:=0
         else
            begin
            mpercdesvio:=fCalcularDesvio(mrest,mrest_prev);
            end;
         mfat_prev :=0;

         mfat :=0;


         if mrest>0 then

           begin
           flcadlgc(mloc_armazenamento,1,0,Trim(Frm_IndEnv_Fab.STG_MP_OP03.Cells[mcolmp_codpro,x]),Frm_IndEnv_Fab.STG_MP_OP03.Cells[mcolmp_lote,x],' ');
           flcadpro(1,0,0,fdeixanum(Frm_IndEnv_Fab.STG_MP_OP03.Cells[mcolmp_codpro,x]));
           while not (DM1.Tb_LGC.Eof) and (mrest>0) do
             begin
             if DM1.Tb_LGCCLQTD.Value<=0 then
               begin
               DM1.Tb_LGC.Next;
               Continue;
               end;
             if DM1.Tb_LGCCLQTD.Value<mrest then
               begin
               mfat:=DM1.Tb_LGCCLQTD.Value;
               mrest:=mrest-mfat;
               end
             else
               begin
               mfat:=mrest;
               mrest:=0;
               end;


             pBaixar.pCodemp := codemp;
             pBaixar.pFilial := mloc_armazenamento;
             pBaixar.pItem   := x;
             pBaixar.pDocOri := 04;
             pBaixar.pCodUsr  := codusr;
             pBaixar.pContEsp := 0;
             pBaixar.pTipoProd := Log_TipoProdPad;
             pBaixar.pChave   := valint(Frm_IndEnv_Fab.MCHAVE.Text);
             pBaixar.pChave_ano := ls_lotfab;
             pBaixar.pQtd       := mFat;
             pBaixar.pCodPro    := DM1.Tb_LGCCLCODPRO.AsString;
             pBaixar.pEstNor       := 'S'; // estnor;
             pBaixar.pEstReservado := 'N';
             pBaixar.pLote         := DM1.Tb_LGCCLNUMERO.Value;
             pBaixar.pDtVcto       := DM1.Tb_LGCCLDTVCTO.AsDateTime;
             pBaixar.pDtFab        := DM1.Tb_LGCCLDTFab.AsDateTime;
             pBaixar.pLoteRe       := '';
             pBaixar.pObs          := '';
             PBaixar.pChaveIdNew   := valint(Frm_IndEnv_Fab.MCHAVE.Text);

             fBaixarMercadorias(pBaixar);
{
          fBaixarMercadorias(codemp
                 ,mloc_armazenamento
                 ,X // item
                 ,04 // docori
                 ,codusr
                 ,0 //pcontesp
                 ,Log_TipoProdPad //ptipoprod
                 ,valfloat(Frm_IndEnv_Fab.MCHAVE.Text) // chave
                 ,ls_lotfab
                 ,mfat // qtd
                 ,DM1.Tb_LGCCLCODPRO.AsString
                 ,'S'
                 ,'N'
                 ,DM1.Tb_LGCCLNUMERO.Value
                 ,DM1.Tb_LGCCLDTVCTO.AsDateTime
                 ,'' // lote re
                 ,'' // obs
                 );

 }         if mpercdesvio<>0 then
             mfat_prev:=fRetornaNovaQuantidade(mfat,mpercdesvio, fsonumero(STG_MP_OP03.Cells[mcolmp_codpro,x]))
          else
             mfat_prev:=mfat;

          if mfat_prev<mrest_prev then
            begin
            mrest_prev:=mrest_prev-mfat_prev;
            end
          else
            begin
            mfat_prev:=mrest_prev;
            mrest_prev:=0;
            end;


          mSeqItem:=mSeqItem+1;
          mCadop03.codemp := codemp+1000;
          mCadop03.fabenv := 0;
          mCadop03.lotseq := ls_lotfab;
          mCadop03.codigo := ValInt(MCHAVE.text);
          mCadop03.seq    := mSeqItem;
          mCadop03.codmat := fsonumero(STG_MP_OP03.Cells[mcolmp_codpro,x]);
          mCadop03.qtdprev :=mfat_prev;
          mCadop03.qtdutil :=mfat;
          mCadop03.qtdutil_motivo := STG_MP_OP03.Cells[mcolmp_qtdutil_motivo,x];
          mCadop03.pu             := valfloat(STG_MP_OP03.Cells[mcolmp_pu,x]);
          mCadop03.sitmp          := 0;
          mCadop03.origem         := 0;
          mCadop03.numero         := ' ';
          mCadop03.lote           := DM1.Tb_LGCCLNUMERO.Value;
          if DM1.Tb_LGCCLDTVCTO.AsDateTime<=pdatanula  then
             mCadop03.dtvcto         := pdatanula
          else
             mCadop03.dtvcto         := DM1.Tb_LGCCLDTVCTO.AsDateTime;
          mCadop03.lote_re           := DM1.Tb_LGCCLLOTE_RE.AsString;
          fincluircadop03(mCadop03);
          DM1.Tb_LGC.Next;
          end;
        end;
      if mrest>0 then
        begin
        mfat:=mrest;
        mrest:=0;
        mdtv:='';
        if mrest_prev>0 then
           begin
           mfat_prev:=mrest_prev;
           mrest_prev:=0;
           end
        else
           mrest_prev:=0;




        flcadlgc(mloc_armazenamento,0,0,Trim(Frm_IndEnv_Fab.STG_MP_OP03.Cells[mcolmp_codpro,x]),' ',' ');

        if DM1.Tb_LGC.IsEmpty then
          begin


            pBaixar.pCodemp := codemp;
            pBaixar.pFilial := mloc_armazenamento;
            pBaixar.pItem   := x;
            pBaixar.pDocOri := 04;
            pBaixar.pCodUsr  := codusr;
            pBaixar.pContEsp := 0;
            pBaixar.pTipoProd := Log_TipoProdPad;
            pBaixar.pChave   := valint(Frm_IndEnv_Fab.MCHAVE.Text);
            pBaixar.pChave_ano := ls_lotfab;
            pBaixar.pQtd       := mFat;
            pBaixar.pCodPro    := Trim(Frm_IndEnv_Fab.STG_MP_OP03.Cells[mcolmp_codpro,x]);
            pBaixar.pEstNor       := 'S'; // estnor;
            pBaixar.pEstReservado := 'N';
            pBaixar.pLote         := '';
            pBaixar.pDtVcto       := 0;
            pBaixar.pDtFab        := 0;
            pBaixar.pLoteRe       := '';
            pBaixar.pObs          := '';
            PBaixar.pChaveIdNew   := valint(Frm_IndEnv_Fab.MCHAVE.Text);

            fBaixarMercadorias(pBaixar);

{
          mSeqItem:=mSeqItem+1;
          mCadop03.codemp := codemp+1000;
          mCadop03.fabenv := 0;
          mCadop03.lotseq := ls_lotfab;
          mCadop03.codigo := ValInt(MCHAVE.text);
          mCadop03.seq    := mSeqItem;
          mCadop03.codmat := fsonumero(STG_MP_OP03.Cells[mcolmp_codpro,x]);
          mCadop03.qtdprev :=mfat_prev;
          mCadop03.qtdutil :=mfat;
          mCadop03.qtdutil_motivo := STG_MP_OP03.Cells[mcolmp_qtdutil_motivo,x];
          mCadop03.pu             := valfloat(STG_MP_OP03.Cells[mcolmp_pu,x]);
          mCadop03.sitmp          := 0;
          mCadop03.origem         := 0;
          mCadop03.numero         := ' ';
          mCadop03.lote           := ' ';
          mCadop03.dtvcto         := pdatanula;
          mCadop03.lote_re           := ' ';
          fincluircadop03(mCadop03);
}
          end
        else
          begin


	pBaixar.pCodemp := codemp;
	pBaixar.pFilial := mloc_armazenamento;
	pBaixar.pItem   := x;
	pBaixar.pDocOri := 04;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad;
	pBaixar.pChave   := valint(Frm_IndEnv_Fab.MCHAVE.Text);
	pBaixar.pChave_ano := ls_lotfab;
	pBaixar.pQtd       := mFat;
	pBaixar.pCodPro    := Trim(Frm_IndEnv_Fab.STG_MP_OP03.Cells[mcolmp_codpro,x]);
	pBaixar.pEstNor       := 'S'; // estnor;
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := '';
	pBaixar.pDtVcto       := 0;
	pBaixar.pDtFab        := 0;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := valint(Frm_IndEnv_Fab.MCHAVE.Text);

	fBaixarMercadorias(pBaixar);

{
          fBaixarMercadorias(codemp
                  ,mloc_armazenamento
                  ,X // item
                  ,04 // docori
                  ,codusr
                  ,0 //pcontesp
                  ,Log_TipoProdPad //ptipoprod
                  ,valfloat(Frm_IndEnv_Fab.MCHAVE.Text) // chave
                  ,ls_lotfab
                  ,mfat // qtd
                  ,Trim(Frm_IndEnv_Fab.STG_MP_OP03.Cells[mcolmp_codpro,x])
                  ,'S'
                  ,'N'
                  ,DM1.Tb_LGCCLNUMERO.Value
                  ,DM1.Tb_LGCCLDTVCTO.AsDateTime
                  ,'' // lote re
                  ,'' // obs
                  );

 }
          mSeqItem:=mSeqItem+1;
          mCadop03.codemp := codemp+1000;
          mCadop03.fabenv := 0;
          mCadop03.lotseq := ls_lotfab;
          mCadop03.codigo := ValInt(MCHAVE.text);
          mCadop03.seq    := mSeqItem;
          mCadop03.codmat := fsonumero(STG_MP_OP03.Cells[mcolmp_codpro,x]);
          mCadop03.qtdprev :=mfat_prev;
          mCadop03.qtdutil :=mfat;
          mCadop03.qtdutil_motivo := STG_MP_OP03.Cells[mcolmp_qtdutil_motivo,x];
          mCadop03.pu             := valfloat(STG_MP_OP03.Cells[mcolmp_pu,x]);
          mCadop03.sitmp          := 0;
          mCadop03.origem         := 0;
          mCadop03.numero         := ' ';
          mCadop03.lote           := DM1.Tb_LGCCLNUMERO.Value;
          if DM1.Tb_LGCCLDTVCTO.AsDateTime<=pdatanula  then
             mCadop03.dtvcto         := pdatanula
          else
             mCadop03.dtvcto         := DM1.Tb_LGCCLDTVCTO.AsDateTime;
          mCadop03.lote_re           := DM1.Tb_LGCCLLOTE_RE.AsString;
          fincluircadop03(mCadop03);
          end;
        end;
    if mrest_prev>0 then
       begin
       fajustarqtdprevista(mrest_prev,mSeqItem,0,codemp+1000,valint(mchave.text),ls_lotfab);
       mrest_prev:=0;
       end;

      end;
    end;

  // Baixando os Materias de EMBALGEM
   mSeqItem:=0;

  fGerarEvento('4399 vai para o me');

  for x:=0 to Frm_IndEnv_Fab.STG_ME_OP03.RowCount-1 do
     begin
     if valfloat(Frm_IndEnv_Fab.STG_ME_OP03.Cells[mcolme_codpro,x])=0 then
        begin
        continue;
        end;
     mrest:=ValFloat(Frm_IndEnv_Fab.STG_ME_OP03.Cells[mcolme_qtdutil,x]);
     fGerarEvento('4407 entrou no me');

     mfat :=0;
     mrest_prev:=Arredonda(ValFloat(Frm_IndEnv_Fab.STG_ME_OP03.Cells[mcolme_qtdteor,x]),DM1.Tb_PargerPCASQTD.AsInteger);
     if mrest=mrest_prev then
        mpercdesvio:=0
     else
        begin
        mpercdesvio:=fCalcularDesvio(mrest,mrest_prev);
        end;
     mfat_prev :=0;

     fGerarEvento('4419 quantidade do rest '+floattostr(mrest));

     if mrest>0 then
        begin
        flcadpro(0,1,0,fdeixanum(Frm_IndEnv_Fab.STG_ME_OP03.Cells[mcolme_codpro,x]));
        flcadlgc(mloc_armazenamento,1,0,Trim(Frm_IndEnv_Fab.STG_ME_OP03.Cells[mcolme_codpro,x]),Frm_IndEnv_Fab.STG_ME_OP03.Cells[mcolme_lote,x],' ');


        while not (DM1.Tb_LGC.Eof) and (mrest>0) do
           begin
           if DM1.Tb_LGCCLQTD.Value<=0 then
              begin
              DM1.Tb_LGC.Next;
              Continue;
              end;
           if DM1.Tb_LGCCLQTD.Value<mrest then
              begin
              mfat:=DM1.Tb_LGCCLQTD.Value;
              mrest:=mrest-mfat;
              end
           else
              begin
              mfat:=mrest;
              mrest:=0;
              end;

           if mpercdesvio<>0 then
              mfat_prev:=fRetornaNovaQuantidade(mfat,mpercdesvio, fsonumero(STG_ME_OP03.Cells[mcolme_codpro,x]))
           else
              mfat_prev:=mfat;

           if mfat_prev<mrest_prev then
             begin
             mrest_prev:=mrest_prev-mfat_prev;
             end
           else
             begin
             mfat_prev:=mrest_prev;
             mrest_prev:=0;
             end;




           mdtv:=FormatDateTime(fdt, DM1.Tb_LGCCLDTVCTO.Value);



	pBaixar.pCodemp := codemp;
	pBaixar.pFilial := mloc_armazenamento;
	pBaixar.pItem   := x;
	pBaixar.pDocOri := 04;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad;
	pBaixar.pChave   := valint(Frm_IndEnv_Fab.MCHAVE.Text);
	pBaixar.pChave_ano := ls_lotfab;
	pBaixar.pQtd       := mFat;
	pBaixar.pCodPro    := DM1.Tb_LGCCLCODPRO.AsString;
	pBaixar.pEstNor       := 'S'; // estnor;
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := DM1.Tb_LGCCLNUMERO.Value;
	pBaixar.pDtVcto       := DM1.Tb_LGCCLDTVCTO.AsDateTime;
	pBaixar.pDtFab        := DM1.Tb_LGCCLDTFAB.AsDateTime;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := valint(Frm_IndEnv_Fab.MCHAVE.Text);

	fBaixarMercadorias(pBaixar);

{
           fBaixarMercadorias(codemp
                  ,mloc_armazenamento
                  ,X // item
                  ,04 // docori
                  ,codusr
                  ,0 //pcontesp
                  ,Log_TipoProdPad //ptipoprod
                  ,valfloat(Frm_IndEnv_Fab.MCHAVE.Text) // chave
                  ,ls_lotfab
                  ,mfat // qtd
                  ,DM1.Tb_LGCCLCODPRO.AsString // codigo
                  ,'S'
                  ,'N'
                  ,DM1.Tb_LGCCLNUMERO.Value
                  ,DM1.Tb_LGCCLDTVCTO.Asdatetime
                  ,'' // lote re
                  ,'' // obs
                  );
 }
           mSeqItem:=mSeqItem+1;
            fGerarEvento('4483 lancar me');

           mCadop03.codemp := codemp+1000;
           mCadop03.fabenv := 1;
           mCadop03.lotseq := ls_lotfab;
           mCadop03.codigo := ValInt(MCHAVE.text);
           mCadop03.seq    := x+1;

           mCadop03.codmat := fsonumero(STG_ME_OP03.Cells[mcolme_codpro,x]);
           mCadop03.qtdprev :=mfat_prev;
           mCadop03.qtdutil :=mfat;
           mCadop03.qtdutil_motivo := STG_ME_OP03.Cells[mcolme_qtdutil_motivo,x];
           mCadop03.pu             := valfloat(STG_ME_OP03.Cells[mcolme_pu,x]);
           mCadop03.sitmp          := 0;
           mCadop03.origem         := 0;
           mCadop03.numero         := ' ';
           mCadop03.lote           := DM1.Tb_LGCCLNUMERO.Value;
           mCadop03.dtvcto         := DM1.Tb_LGCCLDTVCTO.Asdatetime;
           mCadop03.lote_re           := STG_ME_OP03.Cells[mcolmE_re,x];
           fincluircadop03(mCadop03);
           DM1.Tb_LGC.Next;
           end;
        if mrest>0 then
           begin
           mfat:=mrest;
           mfat_prev:=mrest_prev;
           mrest_prev:=0;
           mrest:=0;
           mdtv:='';
           flcadlgc(mloc_armazenamento,0,0,Trim(Frm_IndEnv_Fab.STG_ME_OP03.Cells[mcolme_codpro,x]),' ',' ');
           if DM1.Tb_LGC.IsEmpty then
              begin


	pBaixar.pCodemp := codemp;
	pBaixar.pFilial := mloc_armazenamento;
	pBaixar.pItem   := x;
	pBaixar.pDocOri := 04;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad;
	pBaixar.pChave   := valint(Frm_IndEnv_Fab.MCHAVE.Text);
	pBaixar.pChave_ano := ls_lotfab;
	pBaixar.pQtd       := mFat;
	pBaixar.pCodPro    := Trim(Frm_IndEnv_Fab.STG_ME_OP03.Cells[mcolmp_codpro,x]);
	pBaixar.pEstNor       := 'S'; // estnor;
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := '';
	pBaixar.pDtVcto       := 0;
	pBaixar.pDtFab        := 0;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := valint(Frm_IndEnv_Fab.MCHAVE.Text);

	fBaixarMercadorias(pBaixar);

{
              fBaixarMercadorias(codemp
                     ,mloc_armazenamento
                     ,X // item
                     ,04 // docori
                     ,codusr
                     ,0 //pcontesp
                     ,Log_TipoProdPad //ptipoprod
                     ,valfloat(Frm_IndEnv_Fab.MCHAVE.Text) // chave
                     ,ls_lotfab
                     ,mfat // qtd
                     ,Trim(Frm_IndEnv_Fab.STG_ME_OP03.Cells[mcolmp_codpro,x])
                     ,'S'
                     ,'N'
                     ,''
                     ,0
                  ,'' // lote re
                  ,'' // obs

                     );
 }
           mSeqItem:=mSeqItem+1;
           mCadop03.codemp := codemp+1000;
           mCadop03.fabenv := 1;
           mCadop03.lotseq := ls_lotfab;
           mCadop03.codigo := ValInt(MCHAVE.text);
           mCadop03.seq    := x+1;

           mCadop03.codmat := fsonumero(STG_ME_OP03.Cells[mcolme_codpro,x]);
           mCadop03.qtdprev :=mfat_prev;
           mCadop03.qtdutil :=mfat;
           mCadop03.qtdutil_motivo := STG_ME_OP03.Cells[mcolme_qtdutil_motivo,x];
           mCadop03.pu             := valfloat(STG_ME_OP03.Cells[mcolme_pu,x]);
           mCadop03.sitmp          := 0;
           mCadop03.origem         := 0;
           mCadop03.numero         := ' ';
           mCadop03.lote           := ' ';
           mCadop03.dtvcto         := pdatanula;
           mCadop03.lote_re           := STG_ME_OP03.Cells[mcolmE_re,x];
          fincluircadop03(mCadop03);

              end
           else
              begin


	pBaixar.pCodemp := codemp;
	pBaixar.pFilial := mloc_armazenamento;
	pBaixar.pItem   := x;
	pBaixar.pDocOri := 04;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad;
	pBaixar.pChave   := valint(Frm_IndEnv_Fab.MCHAVE.Text);
	pBaixar.pChave_ano := ls_lotfab;
	pBaixar.pQtd       := mFat;
	pBaixar.pCodPro    := Trim(Frm_IndEnv_Fab.STG_ME_OP03.Cells[mcolme_codpro,x]);
	pBaixar.pEstNor       := 'S'; // estnor;
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := DM1.Tb_LGCCLNUMERO.Value;
	pBaixar.pDtVcto       := DM1.Tb_LGCCLDTVCTO.AsDateTime;
	pBaixar.pDtFab        := DM1.Tb_LGCCLDTFAB.AsDateTime;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := valint(Frm_IndEnv_Fab.MCHAVE.Text);

	fBaixarMercadorias(pBaixar);

{
              fBaixarMercadorias(codemp
                     ,mloc_armazenamento
                     ,X // item
                     ,04 // docori
                     ,codusr
                     ,0 //pcontesp
                     ,Log_TipoProdPad //ptipoprod
                     ,valfloat(Frm_IndEnv_Fab.MCHAVE.Text) // chave
                     ,ls_lotfab
                     ,mfat // qtd
                     ,Trim(Frm_IndEnv_Fab.STG_ME_OP03.Cells[mcolme_codpro,x])
                     ,'S'
                     ,'N'
                     ,DM1.Tb_LGCCLNUMERO.Value
                     ,DM1.Tb_LGCCLDTVCTO.AsDateTime
                     ,'' // lote re
                     ,'' // obs

                     );
}
               mSeqItem:=mSeqItem+1;
               mCadop03.codemp := codemp+1000;
               mCadop03.fabenv := 1;
               mCadop03.lotseq := ls_lotfab;
               mCadop03.codigo := ValInt(MCHAVE.text);
               mCadop03.seq    := x+1;

               mCadop03.codmat := fsonumero(STG_ME_OP03.Cells[mcolme_codpro,x]);
               mCadop03.qtdprev :=mfat_prev;
               mCadop03.qtdutil :=mfat;
               mCadop03.qtdutil_motivo := STG_ME_OP03.Cells[mcolme_qtdutil_motivo,x];
               mCadop03.pu             := valfloat(STG_ME_OP03.Cells[mcolme_pu,x]);
               mCadop03.sitmp          := 0;
               mCadop03.origem         := 0;
               mCadop03.numero         := ' ';
               mCadop03.lote           := DM1.Tb_LGCCLNUMERO.Value;
               mCadop03.dtvcto         := DM1.Tb_LGCCLDTVCTO.Asdatetime;
               mCadop03.lote_re           := STG_ME_OP03.Cells[mcolmE_re,x];
               fincluircadop03(mCadop03);
               end;
            end;
         end;
    if mrest_prev>0 then
       begin
       fajustarqtdprevista(mrest_prev,mSeqItem,1,codemp+1000,valint(mchave.text),ls_lotfab);
       mrest_prev:=0;
       end;

      end;
   reajustarcadop03(codemp,valint(MCHAVE.Text),ls_lotfab);

    end;


//  procedure fajustarcadop03_temp_e_previsto(pcodemp,pchave,pLotseq: Integer);

if (ptipo=0) or (ptipo=2) then
   begin
   try
      mdVenc_Prod:=StrToDate(Frm_IndEnv_Fab.MDATAVEN.Text);
   except
      mdVenc_Prod:=pdatanula;
      end;

   try
      mdFab_Prod:=StrToDate(Frm_IndEnv_Fab.edt_dt_fab.Text);
   except
      mdFab_Prod:=pdatanula;
      end;

   flcadpro(1,0,0,fdeixanum(Frm_IndEnv_Fab.CODPRO.Text));


	pBaixar.pCodemp := codemp;
	pBaixar.pFilial := mloc_armazenamento;
	pBaixar.pItem   := x;
	pBaixar.pDocOri := 04;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad;
	pBaixar.pChave   := valint(Frm_IndEnv_Fab.MCHAVE.Text);
	pBaixar.pChave_ano := ls_lotfab;
	pBaixar.pQtd       := valfloat(Frm_IndEnv_Fab.QTDPROD.Text); // qtd;
	pBaixar.pCodPro    := fdeixanum(Frm_IndEnv_Fab.CODPRO.Text);
	pBaixar.pEstNor       := 'E'; // estnor;
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := Frm_IndEnv_Fab.MNUMLOT.Text;
	pBaixar.pDtVcto       := MDvenc_Prod;
	pBaixar.pDtFab        := mdFab_Prod;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := valint(Frm_IndEnv_Fab.MCHAVE.Text);

	fBaixarMercadorias(pBaixar);
{

   fBaixarMercadorias(codemp
                     ,mloc_armazenamento
                     ,X // item
                     ,04 // docori
                     ,codusr
                     ,0 //pcontesp
                     ,Log_TipoProdPad //ptipoprod
                     ,valfloat(Frm_IndEnv_Fab.MCHAVE.Text) // chave
                     ,ls_lotfab
                     ,valfloat(Frm_IndEnv_Fab.QTDPROD.Text) // qtd
                     ,fdeixanum(Frm_IndEnv_Fab.CODPRO.Text)
                     ,'E'
                     ,'N'
                     ,Frm_IndEnv_Fab.MNUMLOT.Text
                     ,MDvenc_Prod
                     ,'' // lote re
                     ,'' // obs
                     );
                     }
  end;
Result:=True;
end;

procedure TFrm_IndEnv_Fab.txtmp_dtvctoExit(Sender: TObject);
begin
if (Trim(txtmp_dtvcto.Text)<>'/  /') and (Trim(txtmp_dtvcto.Text)<>'') then
   begin
   Try
      txtmp_dtvcto.Text:=FormatDateTime(fdt2, StrToDate(txtmp_dtvcto.Text));
   Except
      Fmensagem('Data de Vencimento Invalida!',0,['0'],0);
      txtmp_dtvcto.SetFocus;
      end;
   end;

end;

procedure TFrm_IndEnv_Fab.txtme_dtvctoExit(Sender: TObject);
begin
if Trim(txtme_dtvcto.Text)<>'/  /' then
   begin
   Try
      txtme_dtvcto.Text:=FormatDateTime(fdt2, StrToDate(txtme_dtvcto.Text));
   Except
      Fmensagem('Data de Vencimento Invalida!',0,['0'],0);
      txtme_dtvcto.SetFocus;
      end;
   end;
end;

procedure TFrm_IndEnv_Fab.bbGravaItemMPClick(Sender: TObject);
begin
if not flcadpro(1,0,0,Trim(txtmp_codigo.Text)) then
   begin
   Fmensagem('Produto não Cadastrado!',0,['0'],0);
   txtmp_codigo.SetFocus;
   exit;
   end
else
   begin
   if ValFloat(txtmp_qtdteor.Text)=0 then
      begin
      txtmp_codigo.SetFocus;
      exit;
      end;

   if ValFloat(txtmp_qtdutil.Text)=0 then
      txtmp_qtdteor.Text:=txtmp_qtdutil.Text;

   if mop_mp=0 then
      begin
      mItem_mp_alt:=STG_MP_OP03.RowCount;
      STG_MP_OP03.RowCount:=mItem_mp_alt+1;
      STG_MP_OP03.RowS[mItem_mp_alt+1].Clear;
      mItem_mp_alt:=mItem_mp_alt-1;
      end;

   STG_MP_OP03.Cells[mcolmp_codpro,mItem_mp_alt]    :=txtmp_codigo.Text;
   STG_MP_OP03.Cells[mcolmp_descricao,mItem_mp_alt] :=txtmp_descricao.Text;
   STG_MP_OP03.Cells[mcolmp_und,mItem_mp_alt]       :=txtmp_und.Text;
   STG_MP_OP03.Cells[mcolmp_qtdteor,mItem_mp_alt]   :=txtmp_qtdteor.Text;
   STG_MP_OP03.Cells[mcolmp_qtdutil,mItem_mp_alt]   :=txtmp_qtdutil.Text;
   STG_MP_OP03.Cells[mcolmp_qtdutil_motivo,mItem_mp_alt]   :=cbmp_qtdutil_motivo.Text;
   STG_MP_OP03.Cells[mcolmp_lote,mItem_mp_alt]      :=txtmp_lote.Text;
   STG_MP_OP03.Cells[mcolmp_re,mItem_mp_alt]        :=txtmp_re.Text;
   STG_MP_OP03.Cells[mcolmp_dtvcto,mItem_mp_alt]    :=txtmp_dtvcto.Text;
   STG_MP_OP03.Cells[mcolmp_dtFAB,mItem_mp_alt]    :=txtmp_dtfab.Text;
   STG_MP_OP03.Cells[mcolmp_pu,mItem_mp_alt]        :=txtmp_pu.Text;
   STG_MP_OP03.Cells[mcolmp_vt,mItem_mp_alt]        :=txtmp_vt.Text;



   txtmp_codigo.Text       :='';
   txtmp_descricao.Text    :='';
   txtmp_und.Text          :='';
   txtmp_qtdteor.Text      :='';
   txtmp_qtdutil.Text      :='';
   txtmp_lote.Text         :='';
   txtmp_re.Text           :='';
   txtmp_dtvcto.Text       :='';
   txtmp_dtfab.Text       :='';
   txtmp_pu.Text           :='';
   txtmp_vt.Text           :='';
   cbmp_qtdutil_motivo.Text:='';
   mop_mp                  :=0;
   txtmp_codigo.SetFocus;
   end;
fptotais(0);
end;

procedure TFrm_IndEnv_Fab.bbGravarItemMEClick(Sender: TObject);
begin
if not flcadpro(1,0,0,Trim(txtme_codpro.Text)) then
   begin
   Fmensagem('Produto não Cadastrado!',0,['0'],0);
   txtme_codpro.SetFocus;
   exit;
   end
else
   begin
   if ValFloat(txtme_qtdteor.Text)=0 then
      begin
      txtme_codpro.SetFocus;
      exit;
      end;

   if ValFloat(txtme_qtdutil.Text)=0 then
      txtme_qtdteor.Text:=txtme_qtdutil.Text;

   if mop_ME=0 then
      begin
      mItem_me_alt:=STG_ME_OP03.RowCount;
      STG_ME_OP03.RowCount:=mItem_me_alt+1;
      STG_ME_OP03.RowS[mItem_me_alt+1].Clear;
      mItem_me_alt:=mItem_me_alt-1;
      end;

   STG_ME_OP03.Cells[mcolme_codpro,mItem_me_alt]    :=txtme_codpro.Text;
   STG_ME_OP03.Cells[mcolme_descricao,mItem_me_alt] :=txtme_descricao.Text;
   STG_ME_OP03.Cells[mcolme_und,mItem_me_alt]       :=txtme_und.Text;
   STG_ME_OP03.Cells[mcolme_qtdteor,mItem_me_alt]   :=txtme_qtdteor.Text;
   STG_ME_OP03.Cells[mcolme_qtdutil,mItem_me_alt]   :=txtme_qtdutil.Text;
   STG_ME_OP03.Cells[mcolme_qtdutil_motivo,mItem_me_alt]   :=cbme_qtdutil_motivo.Text;
   STG_ME_OP03.Cells[mcolme_lote,mItem_me_alt]      :=txtme_lote.Text;
   STG_ME_OP03.Cells[mcolme_re,mItem_me_alt]        :=txtme_re.Text;
   STG_ME_OP03.Cells[mcolme_dtvcto,mItem_me_alt]    :=txtme_dtvcto.Text;
   STG_ME_OP03.Cells[mcolme_dtfab,mItem_me_alt]    :=txtme_dtfab.Text;
   STG_ME_OP03.Cells[mcolme_pu,mItem_me_alt]        :=txtme_pu.Text;
   STG_ME_OP03.Cells[mcolme_vt,mItem_me_alt]        :=txtme_vt.Text;


   txtme_codpro.Text       :='';
   txtme_descricao.Text    :='';
   txtme_und.Text          :='';
   txtme_qtdteor.Text      :='';
   txtme_qtdutil.Text      :='';
   txtme_lote.Text         :='';
   txtme_re.Text           :='';
   txtme_dtvcto.Text       :='';
   txtme_dtfab.Text       :='';
   txtme_pu.Text           :='';
   txtme_vt.Text           :='';
   CB01_MOTIVO.Text        :='';
   mop_ME                  :=0;
   txtme_codpro.SetFocus;
   end;
fptotais(0);
end;






function tFrm_IndEnv_Fab.fVerificaPendencia : Boolean;
var
  PosArray,x : Integer;
  xQtde_Bloq,
  xTotal     : Real;
  mfat,mrest : Real;
  xProd_Bloq : Array of String;
begin

result:=false;
exit;

  {Testa se verifica se o produto esta bloqueado pelo controle de qualidade}
  PosArray := 0;
  if Frm_IndEnv_Fab.STG_MP_OP03.RowCount > 0 then begin
     for x := 0 to Frm_IndEnv_Fab.STG_MP_OP03.RowCount-1 do begin
        if valfloat(Frm_IndEnv_Fab.STG_MP_OP03.Cells[mcolmp_codpro,x])=0 then
           continue;

        mrest := ValFloat(Frm_IndEnv_Fab.STG_MP_OP03.Cells[mcolmp_qtdutil,x]);
        mfat  := 0;

        if not flcadest(mloc_armazenamento,0,0,Trim(Frm_IndEnv_Fab.STG_MP_OP03.Cells[mcolmp_codpro,x])) then
           mfat := DM1.Tb_EstCESALDO.AsFloat;

        xQtde_Bloq := 0;

        DM1.Query1.Close;
        DM1.Query1.SQL.Clear;
        DM1.Query1.SQL.Add(' SELECT                          '+
                           '   SUM(CPB_QTD) AS TOTAL         '+
                           ' FROM                            '+
                           '   CADPRO_BLOQ                   '+
                           ' WHERE                           '+
                           '   CPB_CODEMP =:pEmp AND         '+
                           '   CPB_CODPRO =:pPro             ');
        DM1.Query1.ParamByName('pEmp').AsFloat := codemp;
        DM1.Query1.ParamByName('pPro').AsFloat := ValFloat(Frm_IndEnv_Fab.STG_MP_OP03.Cells[mcolmp_codpro,x]);
        DM1.Query1.Open;

        if not DM1.Query1.IsEmpty then
           xQtde_Bloq := DM1.Query1.FieldByName('TOTAL').AsFloat;

        xTotal     := mfat - xQtde_Bloq;

        if xQtde_Bloq > 0 then
           mfat    := ValFloat(Frm_IndEnv_Fab.STG_MP_OP03.Cells[mcolmp_qtdteor,x]) - xQtde_Bloq;

        if (xTotal < mFat) or (xTotal <= 0) then begin
           //
           SetLength(xProd_Bloq,PosArray+1);
           xProd_Bloq[PosArray] := 'Produto : '+Insere(Frm_IndEnv_Fab.STG_MP_OP03.Cells[mcolmp_codpro,x],' ',10)+'-'+Insere2(Frm_IndEnv_Fab.STG_MP_OP03.Cells[mcolmp_descricao,x],' ',40)+
                                   ' Req   : '+Insere(Frm_IndEnv_Fab.STG_MP_OP03.Cells[mcolmp_qtdteor,x],' ',10)+
                                   ' Bloq  : '+Insere(FloatToStr(xQtde_Bloq),' ',10)+
                                   ' Disp  : '+Insere(FloatToStr(mfat),' ',10);
           PosArray := PosArray + 1;
        end;
     end;

     if (xTotal < mFat) then begin
        //
        Result := True;
        Application.CreateForm(TFrm_Sintegra_Advert, Frm_Sintegra_Advert);

        Frm_Sintegra_Advert.Memo_NFSNaoEnc.Clear;
        VerTeclado(0);
        Frm_Sintegra_Advert.Memo_NFSNaoEnc.Font.Name := 'Courier New';
        Frm_Sintegra_Advert.Memo_NFSNaoEnc.Font.Size := -5;


        for x := 0 to Length(xProd_Bloq) - 1 do begin
           Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Add(xProd_Bloq[x]);
        end;

        Frm_Sintegra_Advert.Caption := 'Irregularidades encontradas na Ordem de Produção';
//        Frm_Sintegra_Advert.tsXml.TabVisible  := False;
        Frm_Sintegra_Advert.TabSheet1.Caption := 'Advergências';
        Frm_Sintegra_Advert.GroupBox1.Caption := 'Produtos com Advergências';
        Frm_Sintegra_Advert.lbl_texto_proc.Visible := False;
        Frm_Sintegra_Advert.NOMPROC.Visible        := False;
        Frm_Sintegra_Advert.SbnProcurar.Visible    := False;
        Frm_Sintegra_Advert.bbSair.Left := 427;
        Frm_Sintegra_Advert.ShowModal;
        FreeAndNil(Frm_Sintegra_Advert);
        Exit;
     end else begin
        Result := False;
     end;
  end;
end;

function TFrm_IndEnv_Fab.fPedidodeOrigemdaOP: string;
begin
if mOP1_PEDORI_CHAVE=0 then
  result:=''
else
  result:=Inttostr(mOP1_PEDORI_CHAVE)

{
if fLerGenerico_query('CADPRO_SOBRE','PDS_CODEMP,PDS_CODPRO,PDS_PAG,PDS_TEXTO','PDS_CODPRO=0'+fdeixanum(CODPRO.Text)+' order by PDS_CODEMP,PDS_PAG',query_consulta) then


select P1DATAP,P1CHAVE, OP1_PEDORI_CHAVE from cadop01,CADP01 where op1_pedori_chave>0
AND P1LOTSEQ=OP1_PEDORI_LOTSEQ
AND P1CHAVE=OP1_PEDORI_CHAVE
AND P1CODEMP=OP1_PEDORI_CODEMP

tb_paramPEDIDO_ORIGEM.AsString     :=fPedidodeOrigemdaOP;
}
end;


function TFrm_IndEnv_Fab.fPrazoEntrega: string;
begin
if mOP1_PEDORI_CHAVE=0 then
   result:=''
else
   begin
   if fLerGenerico_query('CADP01_ORC','P1ORC_PRAZOENT','P1ORC_CODEMP=0'+Inttostr(codemp)
                 +' and P1ORC_CHAVE='+floattostr(mOP1_PEDORI_CHAVE)+' and P1ORC_LOTSEQ=0 '
                 ,query_consulta) then
      result:=query_consulta.fieldbyname('P1ORC_PRAZOENT').asstring
   else
      result:='';
   end

end;



function TFrm_IndEnv_Fab.fImprimirWord(pOpAnexas: array of string; pCodPro: Real): Boolean;
var
pLinhaItem: Integer;
Ado_Cadop: TADOQuery;
Ado_MP: TQuery;
Ado_MatEmb: TADOQuery;

Ado_MatEmb_etiquetas: TADOQuery;
Ado_MP_etiquetas: TADOQuery;

query_totais: TQuery;
mCodPro_OP: Real;
DocOrigem : OleVariant;
mNomeDoc: String;
mDel: String;
ALL,Procurar  , Substituir , SubsTodos : OleVariant;
mGrade: TStrings;
mErrosOCorrencia: tStrings;
x_anexos: integer;

// INICIO
HdrRange: Range;
FindText, ReplaceWith, Wrap, Replace: OleVariant;
mPosIni: Integer;
mNome: String;
y,x: Integer;
Query_Grade_01: TQuery;
Query_Grade_02: TQuery;
Query_Grade_02_res: TQuery;
mLinha_Dados: String;
mGridFundo: TStrings;
mGridMesclar: TStrings;
mGridAlinha: TStrings;
mGrid_Linha: Integer;
mGrid_Coluna: Integer;
mTamColunas: String;
mPegouTamCol: Boolean;
mTexto_Sobre: TStringList;
mItembook: OleVariant;
mItens_filtro: String;
mVirg: String;
Form_Agde:TFrm_Agde;
query_etapa: tQuery;

query_etapa_processo: tQuery;
mlinha_etapa: string;

texto_stream: TMemoryStream;
x_memo: Integer;
xQtd_memo: Integer;
query_op02_prodfab: tquery;
query_op03_embalagens: tquery;


begin
mcontgrade:=0;
Application.CreateForm(TFrm_Agde,Form_Agde);
Form_Agde.Label1.Caption:='Aguarde enquanto é gerado a ordem de produção '+MCHAVE.Text+' produto '+CB_NOMPRO.Text;
Form_Agde.Label2.Visible:=true;
Form_Agde.Label2.Caption:='Incluindo as Grades';
verteclado(0);

Form_Agde.Show;

mErrosOCorrencia:=tStringList.create();

mCodPro_OP:=pCodPro;
Ado_Cadop:=TADOQuery.Create(NIL);
Ado_Cadop.Connection:=DM1_ADO.ADOConnection1;

Ado_MatEmb:=TADOQuery.Create(NIL);
Ado_MatEmb.Connection:=DM1_ADO.ADOConnection1;

Ado_MatEmb_Etiquetas :=TADOQuery.Create(NIL);
Ado_MatEmb_Etiquetas.Connection:=DM1_ADO.ADOConnection1;

Ado_MP_Etiquetas :=TADOQuery.Create(NIL);
Ado_MP_Etiquetas.Connection:=DM1_ADO.ADOConnection1;

Ado_Cadop.Close;
Ado_Cadop.SQL.Clear;
Ado_Cadop.SQL.Add('Select * from CADOP_CFG where OP_CODEMP=:CODEMP and OP_CODPRO=:CODPRO'
                 +' order by OP_ORDEM ' );
Ado_Cadop.Parameters.ParamByName('CODEMP').Value:=codemp;
Ado_Cadop.Parameters.ParamByName('CODPRO').Value:=mCodPro_OP;
Ado_Cadop.Open;
if Ado_Cadop.IsEmpty then
   begin
   mCodPro_OP:=0;
   Ado_Cadop.Close;
   Ado_Cadop.SQL.Clear;
   Ado_Cadop.SQL.Add('Select * from CADOP_CFG where OP_CODEMP=:CODEMP and OP_CODPRO=:CODPRO'
                    +' order by OP_ORDEM ' );
   Ado_Cadop.Parameters.ParamByName('CODEMP').Value:=codemp;
   Ado_Cadop.Parameters.ParamByName('CODPRO').Value:=mCodPro_OP;
   Ado_Cadop.Open;
   if Ado_Cadop.IsEmpty then
      begin
      MessageDlg('Não foi encontrado a ordem de produção do Produto'+CB_NOMPRO.Text,mtWarning,[mbOk],0);
      FreeAndNil(Ado_Cadop);
      freeandnil(Form_Agde);
      exit;
      end;
   end;

While not Ado_Cadop.Eof do
   begin
   mNomeDoc:='C:\SGE\TEMP\PD'+Ado_Cadop.FieldByName('OP_CODPRO').AsString+'PARTE'+
   Ado_Cadop.FieldByName('OP_ORDEM').AsString+'.DAT';
   if FileExists(mNomeDoc) then
      DeleteFile(mNomeDoc);
   (Ado_Cadop.FieldByName('OP_DADOS') as TBlobField).SaveToFile(mNomeDoc);
   Ado_Cadop.Next;
   end;
Ado_Cadop.First;
mNomeDoc:='C:\SGE\TEMP\PD'+Ado_Cadop.FieldByName('OP_CODPRO').AsString+'.ZIP';
fJuntarArquivos(mNomeDoc);

fUnZiparArquivos(mNomeDoc,Fnomearq_Pasta(1,mNomeDoc)+'\','');

WordApp:=TWordApplication.Create(Application.Owner);
    { Faz com que o Word seja aberto e visivel ao usuário }
WordApp.Visible:=True;
    { Adiciona um novo documento ao Word }
WordDoc:=TWordDocument.Create(Application.Owner);
    { Local do documento de Origem }
{ Abre o documento de Origem no Word }
DocOrigem:= fretiraextensao(mNomedoc)+'.DOC';

if (DM1.Tb_pro.active=false) or (DM1.Tb_ProPDCODPRO.AsFloat<>valfloat(CODPRO.Text)) then
   flcadpro(1,0,0,CODPRO.Text);

tb_param.Close;
tb_param.Open;
tb_param.Append;
mNome:=fBuscarValor(1,CB_NOMPRO.Text);
mPosIni:=pos(' ',mNome);
tb_paramNOMCOMPRIMLIN.Value:=copy(mNome,1,mPosIni-1);
if (mPosIni>0) and (mPosIni<length(mNome)) then
   tb_paramNOMCOMSEGLIN.Value:=copy(mNome,mPosIni+1,length(mNome)-mPosIni)
else
   tb_paramNOMCOMSEGLIN.Value:='';
tb_paramCODPROMASK.Value:=Formatfloat('#"."##0"-"0', fsonumero(CODPRO.Text));
tb_paramCODPRO.Value    :=CODPRO.Text;
// itens a serem incluidos
tb_paramAPRESENT.Value  :='APRESENTACAO';
tb_paramMESANOREV.Value :=FormatDateTime('mm/yyyy', strtodatetime(mdata.Text));
tb_paramRESPTEC.Value   :='RESPONSAVEL TECNICO-faltanto';
tb_paramGERPROD.Value   :='GERENTE DE PRODUÇAO-faltanto';
tb_paramGERQUAL.Value   :='GERENTE DE QUALIDADE-faltanto';
tb_paramDATREV.Value    :=FormatDateTime('mm/yyyy', strtodatetime(mdata.Text));
tb_paramHORMININIFRAC.Value   :=FormatDateTime('HH:nn', TIME);
tb_paramHORMINTERFRAC.Value   :=FormatDateTime('HH:nn', TIME);
tb_paramNOMFUNCFRAC.Value   :=FormatDateTime('HH:nn', TIME);
tb_paramNOMFUNCCONFFRAC.Value   :=FormatDateTime('HH:nn', TIME);
tb_paramHORMININIMAN.Value   :=FormatDateTime('HH:nn', TIME);
tb_paramDATAINIMAN.Value    :=FormatDateTime('mm/yyyy', strtodatetime(mdata.Text));
tb_paramNOMFUNCMAN.Value    :='FUNCIONARIO-faltanto';
tb_paramNOMFUNCONFMAN.Value   :='FUNC CONF-faltanto';
tb_paramNOMANALISTA.Value   :='ANALISTA-faltanto';
tb_paramNOMSUPANALISTA.Value   :='SUPER ANALISTA-faltanto';
tb_paramOBSANALISE.Value   :='OBSERV ANALISE-faltanto';
tb_paramRESULTANALISE.Value   :='RESULTADO ANALISE-faltanto';
tb_paramSETOR.Value   :='SETOR-faltanto';
tb_paramPESOMIN.Value    :='PESO MIN-faltanto';
tb_paramPESOMEDIO.Value   :='PESO MEDIO-faltanto';
tb_paramPESOMAXIMO.Value   :='PESO MAXIMO-faltanto';
tb_paramQTDGRML.Value           :=DM1.Tb_ProPDQTDGRML.AsFloat;
tb_paramQTDGRML_TOTAL.Value     :=DM1.Tb_ProPDQTDGRML.AsFloat*ValFloat(QTDPREV.Text);
tb_paramMARCA.Value           :=DM1.Tb_ProPDMARCA.AsString;



mTexto_Sobre:=TStringList.Create;
tb_paramObservacao_Prod.Value:='';
memo1.lines.clear;

if fLerGenerico_query('CADPRO_SOBRE','PDS_CODEMP,PDS_CODPRO,PDS_PAG,NVL(PDS_TEXTO2,'+QuotedStr('')+') AS PDS_TEXTO','PDS_CODPRO=0'+fdeixanum(CODPRO.Text)+' order by PDS_CODEMP,PDS_PAG',query_consulta) then
   begin
   While not query_consulta.eof do
      begin
      if not query_consulta.fieldbyname('PDS_TEXTO').isnull then
         mTexto_Sobre.Add(query_consulta.fieldbyname('PDS_TEXTO').AsString);
      query_consulta.Next;
      end;

   tb_paramDESC_SOBRE.Value:=mTexto_Sobre.Text;
   if trim(tb_paramDESC_SOBRE.Value)<>'' then
      begin
      if texto_stream=nil then
         texto_stream:=TMemoryStream.create;
      RichEdit1.Lines.clear;
//      mTexto_Sobre.SaveToStream(texto_stream);
      RichEdit1.Text:=mTexto_Sobre.Text;

      end;
   end;
tb_paramDESC_SOBRE.Value:='';
freeandnil(texto_stream);
freeandnil(mTexto_Sobre);

//termino dos itens inclusos

tb_paramNUMOP.Value     :=FormatFloat('0000', fsonumero(MCHAVE.Text));
tb_paramQTDPREV.Value   :=FormatFloat(mcasqtd, ValFloat(QTDPREV.Text));
tb_paramMESANOEMI.Value :=FormatDateTime('mm/yyyy', strtodatetime(mdata.Text));
tb_paramDATFAB.Value    :=FormatDateTime('mm/yyyy', strtodatetime(mdata.Text));

tb_paramPERC_PERDAS.Value          :=fCalcularPerdas(valfloat(QTDPREV.Text), valfloat(QTDPROD.Text));
tb_paramPEDIDO_ORIGEM.AsString     :=fPedidodeOrigemdaOP;

tb_paramPRAZO_ENTREGA.AsString     :=fPrazoEntrega;


tb_paramDATVAL.Value    :=MDATAVEN.Text;

tb_paramDATEMI.Value   :=mdata.Text;

tb_paramNUMLOT.Value    :=MNUMLOT.Text;

tb_paramDATAFAB.Value   :=FormatDateTime('mm/yyyy', strtodatetime(mdata.Text));


tb_paramHORMINTERFRAC.Value   :=FormatDateTime('HH:nn', TIME);

tb_paramNOMPRO.Value          := fBuscarValor(1,CB_NOMPRO.Text);



WordDoc.ConnectTo(WordApp.Documents.Add(DocOrigem,EmptyParam,EmptyParam,EmptyParam));

//WordDoc.ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;

// INICIO


for x:=0 to high(legenda) do
   begin
   Procurar:=legenda[x];
   Substituir:=tb_param.fieldbyName(copy(legenda[x],2,length(legenda[x])-2)).AsString;
   FSubstituirRodape(1,Procurar,Substituir);
   end;


for x:=0 to high(legenda) do
   begin
   Procurar:=legenda[x];
   Substituir:=tb_param.fieldbyName(copy(legenda[x],2,length(legenda[x])-2)).AsString;
   FSubstituirCabecalho(1,Procurar,Substituir);
   end;


for x:=0 to high(legenda) do
   begin
   Procurar:=legenda[x];
   Substituir:=tb_param.fieldbyName(copy(legenda[x],2,length(legenda[x])-2)).AsString;
   FSubstituirCabecalho_PrimPag(1,Procurar,Substituir);
   end;
for x:=0 to high(legenda) do
   begin
   Procurar:=legenda[x];
   Substituir:=tb_param.fieldbyName(copy(legenda[x],2,length(legenda[x])-2)).AsString;
   FSubstituirCabecalho(1,Procurar,Substituir);
   end;

{
for x:=0 to high(legenda) do
   begin
   Procurar:=legenda[x];
   Substituir:=tb_param.fieldbyName(copy(legenda[x],2,length(legenda[x])-2)).AsString;
   FSubstituirCabecalho_Events(1,Procurar,Substituir);
   end;
}


for x:=0 to high(legenda) do
   begin
   Procurar:=legenda[x];
   Substituir:=tb_param.fieldbyName(copy(legenda[x],2,length(legenda[x])-2)).AsString;
   FSubstituirCabecalho(1,Procurar,Substituir);
   end;

//    function FSubstituirCabecalho_PrimPag(pSecao: Integer; pAchar,pSubstituir: Olevariant):Boolean;
//    function FSubstituirCabecalho_Events(pSecao: Integer; pAchar,pSubstituir: Olevariant):Boolean;


for x:=0 to high(legenda) do
   begin
   Procurar:=legenda[x];
   Substituir:=tb_param.fieldbyName(copy(legenda[x],2,length(legenda[x])-2)).AsString;
   if not FSubstituirRodape(2,Procurar,Substituir) then
      break;
   end;

// inicio

Memo1.Lines.Add(DM1.Tb_ProPDOBS_NEW.AsString);


xQtd_memo:=memo1.lines.count-1;
for x_memo:=0 to xQtd_memo do
    begin
    if x_memo=0 then
       Procurar:='%Observacao_Prod%'
    else
       Procurar:='%Observacao_Prod'+inttostr(x_memo)+'%';

    if x_memo<xQtd_memo then
       Substituir:=Memo1.Lines[x_memo]+#13+'%Observacao_Prod'+inttostr(x_memo+1)+'%'
    else
       Substituir:=Memo1.Lines[x_memo];
    FSubstituirCorpo(Procurar,Substituir);
    verteclado(0);
    end;

xQtd_memo:=RichEdit1.Lines.Count-1;
for x_memo:=0 to xQtd_memo do
    begin
    if x_memo=0 then
       Procurar:='%Desc_Sobre%'
    else
       Procurar:='%Desc_Sobre'+inttostr(x_memo)+'%';

    if x_memo<xQtd_memo then
       Substituir:=RichEdit1.Lines[x_memo]+#13+'%Desc_Sobre'+inttostr(x_memo+1)+'%'
    else
       Substituir:=RichEdit1.Lines[x_memo];
    FSubstituirCorpo(Procurar,Substituir);
    verteclado(0);
    end;


tb_paramObservacao_Prod.Value:='';

//tb_paramObservacao_Prod.Value   :=DM1.Tb_ProPDOBS.AsString;


// termino



for x:=0 to high(legenda) do
   begin
   Procurar:=legenda[x];
   Substituir:=tb_param.fieldbyName(copy(legenda[x],2,length(legenda[x])-2)).AsString;
   FSubstituirCorpo(Procurar,Substituir);
   end;

// concentração por ml



mDel:='|';
//mDel:=' ';


mItens_filtro:='';
mVirg:='';
x:=wordDoc.Bookmarks.Count;
for y:=1 to x do
   begin
   mItembook:=y;
   mItens_filtro:=mItens_filtro+mVirg+QuotedStr(string(WordDoc.Bookmarks.Item(mItembook).Name));
   mVirg:=',';
   end;
if trim(mItens_filtro)='' then
   begin
   FreeandNil(Ado_Cadop);
   FreeandNil(Ado_MatEmb);
   FreeAndNil(Form_Agde);
   result:=true;

   exit;
   end;



query_etapa:=tQuery.Create(nil);
query_etapa.DatabaseName:='SG_ASSOC';

query_etapa.Close;
query_etapa.SQL.Clear;
Query_etapa.SQL.Add('Update CADOP_TAB01 set  OPT01_ETAPA=0 where OPT01_ETAPA is null');
query_etapa.ExecSQL;

query_etapa.Close;
query_etapa.SQL.Clear;
query_etapa.SQL.Add('SELECT '+fdeixanum(MCHAVE.Text)+' AS OPA_CHAVE_OR,'
                  +IntToStr(mLotSeqIndFab)+' AS OPA_LOTSEQ_OR,'+IntToStr(codemp)
                  +' AS OPA_CODEMP_OR, OP2_CODPRO, 0 AS OPA_ETAPA '
                  +' FROM DUAL ,CADOP02 WHERE OP2_CODEMP='+IntToStr(codemp)
                  +' and OP2_LOTSEQ='+IntToStr(mLotSeqIndFab)
                  +' and OP2_CODIGO='+fdeixanum2(MCHAVE.Text)
                   +' union '
                   +' SELECT OPA_CHAVE_OR,OPA_LOTSEQ_OR,OPA_CODEMP_OR,OP2_CODPRO,OPA_ETAPA '
                   +' FROM CADOP01_ANEXO,CADOP02 '
                   +' where OPA_CHAVE=:CHAVE'
                   +' and OPA_CODEMP=:CODEMP '
                   +' and OPA_LOTSEQ=:LOTSEQ '
                   +' and OP2_CODEMP=OPA_CODEMP AND OP2_CODIGO=OPA_CHAVE_OR '
                   +' AND OP2_LOTSEQ=OPA_LOTSEQ_OR ');
query_etapa.ParamByName('CHAVE').AsInteger:=ValInt(MCHAVE.Text);
query_etapa.ParamByName('CODEMP').AsInteger:=codemp;
query_etapa.ParamByName('LOTSEQ').AsInteger:=mLotSeqIndFab;
try
   query_etapa.Open;
except
   query_etapa.SQL.SAVETOFILE('C:\ETAPAS.TXT');
   end;

While not query_etapa.Eof do
   begin
   Ado_MatEmb.Close;
   Ado_MatEmb.sql.clear;

// inicio

   Ado_MatEmb.SQL.Add('Select EMB_ORDEM, '
                 +'       EMB_CODPRO,'
                 +'        EMB_CODMAT, '
                 +'        REPLACE(EMB_QUANT, '+QuotedStr('.')+','+QuotedStr(',')+') AS EMB_QUANT, '
                 +'       EMB_CODEMP, '
                 +'       EMB_TIPO, '
                 +'       EMB_QTD_PAD, '
                 +'       EMB_PERCENT, '
                 +'       EMB_PERCENT_REST, '
                 +'       EMB_NOMPRO, '
                 +'       EMB_NOMPRO2, '
                 +'       EMB_UNDPRO '
                 +'       , REPLACE(EMB_QTDPREV, '+QuotedStr('.')+','+QuotedStr(',')+') AS EMB_QTDPREV'
                 +'       ,REPLACE(EMB_QTDUTIL, '+QuotedStr('.')+','+QuotedStr(',')+') AS EMB_QTDUTIL'
                 +'      ,EMB_PU '
                 +'      ,EMB_LOTE '
                 +'      ,EMB_DTVCTO '
                 +'      ,EMB_DTFAB '
                 +'      ,EMB_LOTE_RE '

                 +'       ,EMB_TOTVLR_PREV '
                 +'       ,EMB_TOTVLR_UTIL '

                 +'      ,EMB_QTDPREV_DECIMAIS  '
                 +'      ,EMB_QTDUTIL_DECIMAIS  '

                 +',  EMB_PERC_PERDAS  AS EMB_PERC_PERDAS'



                              +' ,(select max(CGNOME) from cadpgen,cadgen        where CGCODEMP=PGCODEMP        AND CGCODDCB=PGCODDCB '
                              +'   AND PGCODPRO=EMB_CODPRO) AS EMB_NOMDCB '

                              +',(select max(PGCODDCB) from cadpgen       where  PGCODPRO=EMB_CODPRO) AS EMB_CODDCB '
                 +' FROM ( ');



// termino




   Ado_MatEmb.SQL.Add('Select OP3_SEQ AS EMB_ORDEM, '
                 +'       CPCODPRO  AS EMB_CODPRO,'
                 +'       CPCODMAT AS EMB_CODMAT, '
                 +'       TO_CHAR(CPQUANT)  ||PDUND AS EMB_QUANT , '
                 +'       CPCODEMP AS EMB_CODEMP, '
                 +'       CPPU AS EMB_PU, '
                 +'       CPTIPO AS EMB_TIPO, '
                 +'       CPQTD_PAD AS EMB_QTD_PAD, '
                 +'       CPPERCENT AS EMB_PERCENT, '
                 +'       CPPERCENT_REST AS EMB_PERCENT_REST, '
                 +'       PDNOME as EMB_NOMPRO, '
                 +'       PDNOME2 as EMB_NOMPRO2, '
                 +'       PDUND  AS EMB_UNDPRO '
                 +'       ,TO_CHAR(OP3_QTDPREV)  ||PDUND AS EMB_QTDPREV , '
                 +'       TO_CHAR(OP3_QTDUTIL)  ||PDUND AS EMB_QTDUTIL  '


                 +'       ,TO_CHAR(OP3_QTDPREV, '+QuotedStr('999,990.'+insere('9','9',dm1.Tb_PargerPCASIND.AsInteger))+')  ||PDUND AS EMB_QTDPREV_DECIMAIS , '
                 +'       TO_CHAR(OP3_QTDUTIL, '+QuotedStr('999,990.'+insere('9','9',dm1.Tb_PargerPCASIND.AsInteger))+')  ||PDUND AS EMB_QTDUTIL_DECIMAIS  '
                 +',  CASE WHEN OP3_QTDPREV>0 AND OP3_QTDUTIL>0 AND OP3_QTDPREV<>OP3_QTDUTIL THEN      (OP3_QTDPREV-OP3_QTDUTIL) * 100 / OP3_QTDPREV '
                 +'     ELSE 0 END AS EMB_PERC_PERDAS '

                 +'      ,OP3_PU       AS EMB_PU3 '
                 +'      ,OP3_LOTE     AS EMB_LOTE '
                 +'      ,OP3_DTVCTO   AS EMB_DTVCTO '
                 +'      ,OP3_DTFAB   AS EMB_DTFAB '
                 +'      ,OP3_LOTE_RE  AS EMB_LOTE_RE '


                 +'       ,(CPPU*OP3_QTDPREV) AS EMB_TOTVLR_PREV '
                 +'       ,(CPPU*OP3_QTDUTIL) AS EMB_TOTVLR_UTIL '

                 +'       from CADCOMP,CADPRO,CADOP03 where '
            +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                ' CPCODEMP=0'+query_etapa.fieldbyName('OPA_CODEMP_OR').AsString+' and PDCODEMP=CPCODEMP and ')
            +' PDCODPRO=CPCODMAT '
//            +'             and (CPTIPO=0 or CPTIPO is null) '
            +' and CPCODPRO=0'+query_etapa.fieldbyName('OP2_CODPRO').AsString
            +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                ' and OP3_CODEMP=CPCODEMP ')
            +'  and OP3_CODMAT=CPCODMAT '
//            +' and (OP3_FABENV=0 or OP3_FABENV=1) '
            +' and (OP3_FABENV=1) '

            +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                     ' and OP3_CODEMP=0'+query_etapa.fieldbyName('OPA_CODEMP_OR').AsString)
                       +' and OP3_LOTSEQ=0'+query_etapa.fieldbyName('OPA_LOTSEQ_OR').AsString
                       +' and OP3_CODIGO=0'+query_etapa.fieldbyName('OPA_CHAVE_OR').AsString
                      );
    Ado_MatEmb.sql.Add(' ) T2  order by EMB_ORDEM ');
//    Ado_MatEmb.sql.savetofile(mpastatemp +'sqlmatemb.txt');
   try
      Ado_MatEmb.open;
   except
      Ado_MatEmb.sql.savetofile(mpastatemp +'sql001.txt');
      end;

   Ado_MP:=TQuery.Create(NIL);
   Ado_MP.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   Ado_MP.Close;
   Ado_MP.sql.clear;
   Ado_MP.SQL.Add('Select OP3_SEQ AS MP_ORDEM, '
                 +mQuebraLinha+'       CPCODPRO AS MP_CODPRO,'
                 +mQuebraLinha+'       CPCODMAT AS MP_CODMAT, '
                 +mQuebraLinha+'       CPQUANT AS MP_QUANT, '
                 +mQuebraLinha+'       CPCODEMP AS MP_CODEMP, '
                 +mQuebraLinha+'       CPPU AS MP_PU, '
                 +mQuebraLinha+'       CPTIPO AS MP_TIPO, '
//                 +mQuebraLinha+'     CPQTD_PAD AS MP_QTD_PAD, '
//                 +mQuebraLinha+' TO_CHAR(OP3_QTDPREV, '+QuotedStr('999,990.'+insere('9','9',dm1.Tb_PargerPCASIND.AsInteger))+mQuebraLinha+')  ||PDUND AS MP_QTD_PAD, '

                 +mQuebraLinha+' CASE WHEN OP3_QTDPREV<1 THEN '+QuotedStr('0')+mQuebraLinha+' ELSE '+QuotedStr('')+mQuebraLinha+' END ||  TO_CHAR(OP3_QTDPREV) ||PDUND AS MP_QTD_PAD, '

                 +mQuebraLinha+' TO_CHAR(OP3_QTDPREV, '+QuotedStr('999,990.'+insere('9','9',dm1.Tb_PargerPCASIND.AsInteger))+mQuebraLinha+')  ||PDUND AS MP_QTD_PAD_DECIMAL, '



                 +mQuebraLinha+' CASE WHEN CPPERCENT<1 THEN '+QuotedStr('0')+mQuebraLinha+' ELSE '+QuotedStr('')+mQuebraLinha+' END ||  TO_CHAR(CPPERCENT) || '+QuotedStr('%')+mQuebraLinha+'  AS MP_PERCENT_ORI, '

                 +mQuebraLinha+'     TO_CHAR(CPPERCENT, '+QuotedStr('990.9999')+mQuebraLinha+') || '+QuotedStr('%')+mQuebraLinha+' AS MP_PERCENT_DECIMAL, '


//                 +mQuebraLinha+'     TO_CHAR(CPPERCENT, '+QuotedStr('990.9999')+mQuebraLinha+') || '+QuotedStr('%')+mQuebraLinha+' AS MP_PERCENT, '
                 +mQuebraLinha+'     CASE WHEN CPPERCENT_REST=0 THEN '
                 +mQuebraLinha+' CASE WHEN CPPERCENT<1 THEN '+QuotedStr('0')+mQuebraLinha+' ELSE '+QuotedStr('')+mQuebraLinha+' END ||  TO_CHAR(CPPERCENT) || '+QuotedStr('% QSP')+mQuebraLinha+' ELSE  '
                 +mQuebraLinha+' CASE WHEN CPPERCENT_REST<1 THEN '+QuotedStr('0')+mQuebraLinha+' ELSE '+QuotedStr('')+mQuebraLinha+' END ||  TO_CHAR(CPPERCENT_REST) END AS MP_PERCENT_REST, '

                 +mQuebraLinha+'     CASE WHEN CPPERCENT_REST=0 THEN '
                 +mQuebraLinha+'     TO_CHAR(CPPERCENT, '+QuotedStr('990.9999')+mQuebraLinha+') || '+QuotedStr('% QSP')+mQuebraLinha+' ELSE '
                 +mQuebraLinha+'       TO_CHAR(CPPERCENT_REST, '+QuotedStr('990.9999')+mQuebraLinha+') END AS MP_PERCENT_REST_DECIMAL, '

                 +mQuebraLinha+'       PDNOME  AS MP_NOMPRO, '
                 +mQuebraLinha+'       PDNOME2  AS MP_NOMPRO2, '
                 +mQuebraLinha+'       PDUND  AS MP_UNDPRO '
                 +mQuebraLinha+'      ,OP3_QTDPREV AS MP_QTDPREV '

                 +mQuebraLinha+', (SELECT SUM(OP3_QTDPREV) FROM CADOP03 DENTRO '
                 +mQuebraLinha+' WHERE DENTRO.OP3_CODEMP=FORA.OP3_CODEMP '
                 +mQuebraLinha+' AND DENTRO.OP3_CODMAT=FORA.OP3_CODMAT '
                 +mQuebraLinha+' AND DENTRO.OP3_CODIGO=FORA.OP3_CODIGO) '
                 +mQuebraLinha+' AS TOTQTD_PROD '

                 +mQuebraLinha+'      ,OP3_QTDUTIL  AS MP_QTDUTIL '
                 +mQuebraLinha+'      ,OP3_PU       AS MP_PU_OP3 '
                 +mQuebraLinha+'      ,OP3_LOTE     AS MP_LOTE '
                 +mQuebraLinha+'      ,OP3_DTVCTO   AS MP_DTVCTO '
                 +mQuebraLinha+'      ,OP3_DTFAB  AS MP_DTFAB '
                 +mQuebraLinha+'      ,OP3_LOTE_RE  AS MP_LOTE_RE '

                 +mQuebraLinha+'       ,(CPPU*OP3_QTDPREV) AS MP_TOTVLR_PREV '
                 +mQuebraLinha+'       ,(CPPU*OP3_QTDUTIL) AS MP_TOTVLR_UTIL '
                 +mQuebraLinha+'       ,(select max(CGNOME) from cadpgen,cadgen '
                +mQuebraLinha+'       where CGCODEMP=PGCODEMP '
                 +mQuebraLinha+'       AND CGCODDCB=PGCODDCB '
                 +mQuebraLinha+'       AND PGCODEMP=PDCODEMP AND PGCODPRO=PDCODPRO) AS MP_NOMDCB '

                 +mQuebraLinha+'       ,(select max(PGCODDCB) from cadpgen '
                 +mQuebraLinha+'      where PGCODEMP=PDCODEMP AND PGCODPRO=PDCODPRO) AS MP_CODDCB '

//                 +mQuebraLinha+'       , PDS_TEXTO2  AS MP_PRODUTO_SOBRE '
                 +mQuebraLinha+'       , PDNOME || NVL(PDS_TEXTO2,'+QuotedStr('')+mQuebraLinha+')  AS MP_PRODUTO_SOBRE '
//                 +mQuebraLinha+'       ,(select max(PDS_TEXTO) from cadpro_sobre '
  //               +mQuebraLinha+'      where PDS_CODEMP=PDCODEMP AND PDS_CODPRO=PDCODPRO AND PDS_PAG=1) AS PDS_SOBRE '



                 +mQuebraLinha+'       from CADCOMP,CADPRO'
                 +mQuebraLinha+' left join  cadpro_sobre '
                 +mQuebraLinha+'  on ( PDS_CODEMP=PDCODEMP AND PDS_CODPRO=PDCODPRO AND PDS_PAG=1) '
                 +mQuebraLinha+'    ,CADOP03 FORA where '
            +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                ' CPCODEMP=0'+query_etapa.fieldbyName('OPA_CODEMP_OR').AsString +mQuebraLinha+' and PDCODEMP=CPCODEMP and ')
            +mQuebraLinha+' PDCODPRO=CPCODMAT and (CPTIPO=0 or CPTIPO is null) '
            +mQuebraLinha+' and CPCODPRO=0'+query_etapa.fieldbyName('OP2_CODPRO').AsString
            +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                ' and OP3_CODEMP=CPCODEMP ')
            +mQuebraLinha+'  and OP3_CODMAT=CPCODMAT '
            +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                     ' and OP3_CODEMP=0'+query_etapa.fieldbyName('OPA_CODEMP_OR').AsString)
                       +mQuebraLinha+' and OP3_LOTSEQ='+query_etapa.fieldbyName('OPA_LOTSEQ_OR').AsString
                       +mQuebraLinha+' and OP3_CODIGO=0'+query_etapa.fieldbyName('OPA_CHAVE_OR').AsString
            +mQuebraLinha+' ORDER BY MP_ORDEM ');
//            +mQuebraLinha+' ORDER BY CPCODPRO_ACAB,CPORDEM, PDNOME ');
//      Ado_MP.sql.savetofile(mpastatemp +mQuebraLinha+'sql000555.txt');

      Ado_MP.sql.Text := 'select totqtd_prod,MP_QTDPREV,MP_QTDUTIL '
                         +mQuebraLinha+',TO_CHAR( ((MP_PERCENT_REST/totqtd_prod)*MP_QTDPREV), '+quotedstr('990.9999')+') || '+quotedstr('%')+' AS MP_PERCENT '
                         +mQuebraLinha+',TOTQTD_PROD '
                         +mQuebraLinha+',T1.* FROM ( '
                         +Ado_mp.sql.text
                         +'  ) T1';




//      Ado_MP.sql.savetofile('C:\SGE\MP_sql000555.txt');

   try
      Ado_MP.open;
   except on e : exception do
     begin
     ex_erroSql_Novo(Ado_MP,5763,'SGE','CADMOV_PROD_REPETIDO');
     end;
      end;


// INICIO ETIQUETAS



   Ado_MatEmb_etiquetas.Close;
   Ado_MatEmb_etiquetas.sql.clear;

   Ado_MatEmb_etiquetas.sql.Add(' SELECT T2.* '
                              +' ,(select max(CGNOME) from cadpgen,cadgen        where CGCODEMP=PGCODEMP        AND CGCODDCB=PGCODDCB '
                              +'   AND PGCODPRO=EMB_CODPRO) AS EMB_NOMDCB '

                              +',(select max(PGCODDCB) from cadpgen       where  PGCODPRO=EMB_CODPRO) AS EMB_CODDCB '
                              +' FROM ( ');



   Ado_MatEmb_etiquetas.SQL.Add('Select max(CPORDEM) AS EMB_ORDEM, '
                 +'       CPCODPRO  AS EMB_CODPRO,'
                 +'       CPCODMAT AS EMB_CODMAT, '
                 +'       sum(CPQUANT) AS EMB_QUANT , '
                 +'       max(CPCODEMP) AS EMB_CODEMP, '
                 +'       max(CPPU) AS EMB_CPPU, '
                 +'       max(CPTIPO) AS EMB_TIPO, '
                 +'       sum(CPQTD_PAD) AS EMB_QTD_PAD, '
                 +'       max(CPPERCENT) AS EMB_PERCENT, '
                 +'       max(CPPERCENT_REST) AS EMB_PERCENT_REST, '
                 +'       max(PDNOME) as EMB_NOMPRO, '
                 +'       max(PDNOME2) as EMB_NOMPRO2, '
                 +'       max(PDUND)  AS EMB_UNDPRO '
                 +'       ,sum(OP3_QTDPREV) AS EMB_QTDPREV , '
                 +'       sum(OP3_QTDUTIL) AS EMB_QTDUTIL  '
                 +'      ,max(OP3_PU)       AS EMB_PU '
                 +'      ,max(OP3_LOTE)     AS EMB_LOTE '
                 +'      ,max(OP3_DTVCTO)   AS EMB_DTVCTO '
                 +'      ,max(OP3_DTFAB)   AS EMB_DTFAB '
                 +'      ,max(OP3_LOTE_RE)  AS EMB_LOTE_RE '


                 +'       ,sum(CPPU*OP3_QTDPREV) AS EMB_TOTVLR_PREV '
                 +'       ,sum(CPPU*OP3_QTDUTIL) AS EMB_TOTVLR_UTIL '

                 +'     ,CPCODPRO,CPCODMAT '

                 +'       from CADCOMP,CADPRO,CADOP03 where '
            +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                ' CPCODEMP=0'+query_etapa.fieldbyName('OPA_CODEMP_OR').AsString+' and PDCODEMP=CPCODEMP and ')
            +' PDCODPRO=CPCODMAT '
//            +'             and (CPTIPO=0 or CPTIPO is null) '
            +' and CPCODPRO=0'+query_etapa.fieldbyName('OP2_CODPRO').AsString
            +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                ' and OP3_CODEMP=CPCODEMP ')
            +'  and OP3_CODMAT=CPCODMAT '
//            +' and (OP3_FABENV=0 or OP3_FABENV=1) '
            +' and (OP3_FABENV=1) '

            +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                     ' and OP3_CODEMP=0'+query_etapa.fieldbyName('OPA_CODEMP_OR').AsString)
                       +' and OP3_LOTSEQ=0'+query_etapa.fieldbyName('OPA_LOTSEQ_OR').AsString
                       +' and OP3_CODIGO=0'+query_etapa.fieldbyName('OPA_CHAVE_OR').AsString);

    Ado_MatEmb_etiquetas.SQL.Add(' group by CPCODPRO,CPCODMAT ');
    Ado_MatEmb_etiquetas.SQL.Add(' ORDER BY EMB_NOMPRO ');

    Ado_MatEmb_etiquetas.SQL.Add(' ) T2 ');

//    Ado_MatEmb.sql.savetofile(mpastatemp +'C:\SGE\MP_sqlmatemb.txt');

   try
      Ado_MatEmb_etiquetas.open;
   except
      Ado_MatEmb_etiquetas.sql.savetofile(mpastatemp +'sql001.txt');
      end;

   Ado_MP_etiquetas:=TADOQuery.Create(NIL);
   Ado_MP_etiquetas.Connection:=DM1_ADO.ADOConnection1;
   Ado_MP_etiquetas.Close;
   Ado_MP_etiquetas.sql.clear;

   Ado_MP_etiquetas.SQL.ADD('SELECT T2.* '
                           +',(select max(CGNOME) from cadpgen,cadgen '
                           +'  where CGCODEMP=PGCODEMP        AND CGCODDCB=PGCODDCB         '
                           +'  AND PGCODPRO=MP_CODPRO) AS MP_NOMDCB '
                           +' ,(select max(PGCODDCB) from cadpgen '
                           +'  where PGCODPRO=MP_CODPRO) AS MP_CODDCB '
                           +' FROM (');




   Ado_MP_etiquetas.SQL.Add('Select max(CPORDEM) AS MP_ORDEM, '
                 +'       CPCODPRO AS MP_CODPRO,'
                 +'       CPCODMAT AS MP_CODMAT, '
                 +'       sum(CPQUANT) AS MP_QUANT, '
                 +'       max(CPCODEMP) AS MP_CODEMP, '
                 +'       max(CPPU) AS MP_PU3, '
                 +'       max(CPTIPO) AS MP_TIPO, '
                 +' sum(OP3_QTDPREV) AS MP_QTD_PAD, '

                 +'     max(CPPERCENT) AS MP_PERCENT, '
                 +'       max(PDNOME)  AS MP_NOMPRO, '
                 +'       max(PDNOME2)  AS MP_NOMPRO2, '
                 +'       max(PDUND)  AS MP_UNDPRO '
                 +'      ,sum(OP3_QTDPREV) AS MP_QTDPREV '
                 +'      ,sum(OP3_QTDUTIL)  AS MP_QTDUTIL '
                 +'      ,max(OP3_PU)       AS MP_PU '
                 +'      ,max(OP3_LOTE)     AS MP_LOTE '
                 +'      ,max(OP3_DTVCTO)   AS MP_DTVCTO '
                 +'      ,max(OP3_DTFAB)   AS MP_DTFAB '
                 +'      ,max(OP3_LOTE_RE)  AS MP_LOTE_RE '

                 +'       ,sum(CPPU*OP3_QTDPREV) AS MP_TOTVLR_PREV '
                 +'       ,sum(CPPU*OP3_QTDUTIL) AS MP_TOTVLR_UTIL '


                 +'       from CADCOMP,CADPRO,CADOP03 where '
            +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                ' CPCODEMP=0'+query_etapa.fieldbyName('OPA_CODEMP_OR').AsString +' and PDCODEMP=CPCODEMP and ')
            +' PDCODPRO=CPCODMAT and (CPTIPO=0 or CPTIPO is null) '
            +' and CPCODPRO=0'+query_etapa.fieldbyName('OP2_CODPRO').AsString
            +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                ' and OP3_CODEMP=CPCODEMP ')
            +'  and OP3_CODMAT=CPCODMAT '
            +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                     ' and OP3_CODEMP=0'+query_etapa.fieldbyName('OPA_CODEMP_OR').AsString)
                       +' and OP3_LOTSEQ='+query_etapa.fieldbyName('OPA_LOTSEQ_OR').AsString
                       +' and OP3_CODIGO=0'+query_etapa.fieldbyName('OPA_CHAVE_OR').AsString);
   Ado_MP_etiquetas.SQL.Add(' group by CPCODPRO,'
                 +'       CPCODMAT '

            +' ORDER BY MP_NOMPRO ');
   Ado_MP_etiquetas.SQL.Add(' ) T2 ');

   try
      Ado_MP_etiquetas.open;
   except
      Ado_MP_etiquetas.sql.savetofile(mpastatemp +'sql0003.txt');
      end;


// TERMINO ETIQUETAS


   query_totais:=TQuery.Create(nil);
   query_totais.DatabaseName:='SG_ASSOC';

   query_totais.SQL.Clear;
   query_totais.SQL.Add('select max(tipo) as tipo,sum(MP_QTDITENS) as MP_QTDITENS '
                      +',to_char(sum(MP_QTD_PAD)) || max(PDUND)  as MP_QTD_PAD,'
                      +'     TO_CHAR(sum(MP_QTDPERC), '+QuotedStr('990.9999')+') || '+QuotedStr('%')+' AS MP_QTDPERC, '
                      +'     CASE WHEN sum(MP_QTDPERC_REST)=0 THEN '
                      +'     TO_CHAR(sum(MP_QTDPERC), '+QuotedStr('990.9999')+') || '+QuotedStr('% QSP')+' ELSE '
                      +'       TO_CHAR(sum(MP_QTDPERC_REST), '+QuotedStr('990.9999')+') || '+QuotedStr('%')+' END AS MP_QTDPERC_REST '

                      +' ,sum(MP_QTDPREV) as MP_QTDPREV '
                      +',sum(MP_QTDUTIL) as MP_QTDUTIL ,sum(MP_TOTVLR_PREV) as MP_TOTVLR_PREV '
                      +',sum(MP_TOTVLR_UTIL) as MP_TOTVLR_UTIL '
                      +',sum(EMB_QTDITENS) as EMB_QTDITENS '
                      +',sum(EMB_QTD_PAD) as EMB_QTD_PAD ,sum(EMB_QTDPREV) as EMB_QTDPREV '
                      +',sum(EMB_QTDUTIL) as EMB_QTDUTIL ,sum(EMB_TOTVLR_PREV) as EMB_TOTVLR_PREV '
                      +',sum(EMB_TOTVLR_UTIL) as EMB_TOTVLR_UTIL '
                      +',sum(EMB_QTDITENS+MP_QTDITENS) as MPEMB_QTDITENS '
                      +',sum(EMB_QTD_PAD+MP_QTD_PAD) as MPEMB_QTD_PAD '
                      +',sum(EMB_QTDPREV+MP_QTDPREV) as MPEMB_QTDPREV '
                      +',sum(EMB_QTDUTIL+MP_QTDUTIL) as MPEMB_QTDUTIL '
                      +',sum(EMB_TOTVLR_PREV+MP_TOTVLR_PREV) as MPEMB_TOTVLR_PREV '
                      +',sum(EMB_TOTVLR_UTIL+MP_TOTVLR_UTIL) as MPEMB_TOTVLR_UTIL '
                      +',0 as MPEMB_PERC_PERDAS '
                      +' from ( ');



   query_totais.SQL.Add('select '+QuotedStr('MP')+' as tipo, count(*) AS MP_QTDITENS '
                       +'      ,sum(OP3_QTDPREV) AS MP_QTD_PAD '
                       +'      ,sum(CPPERCENT) as MP_QTDPERC '
                       +'      ,sum(CPPERCENT_REST) as MP_QTDPERC_REST '
                       +'      ,sum(OP3_QTDPREV) as MP_QTDPREV '
                       +'      ,sum(OP3_QTDUTIL) as MP_QTDUTIL '
                       +'      ,sum(CPPU*OP3_QTDPREV) AS MP_TOTVLR_PREV '
                       +'      ,sum(CPPU*OP3_QTDUTIL) AS MP_TOTVLR_UTIL '
                       +'      ,0 AS EMB_QTDITENS '
                       +'      ,0 as EMB_QTD_PAD '
                       +'      ,0 as EMB_QTDPREV '
                       +'      ,0 as EMB_QTDUTIL '
                       +'      ,0 AS EMB_TOTVLR_PREV '
                       +'      ,0 AS EMB_TOTVLR_UTIL '
                       +'      ,max(pdund)  AS PDUND'
                       +'      from CADCOMP,CADPRO,CADOP03 where '
                       +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                        ' CPCODEMP=0'+query_etapa.fieldbyName('OPA_CODEMP_OR').AsString +' and PDCODEMP=CPCODEMP and ')
                       +' PDCODPRO=CPCODMAT and (CPTIPO=0 or CPTIPO is null) '
                       +' and CPCODPRO=0'+query_etapa.fieldbyName('OP2_CODPRO').AsString
                       +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                        ' and OP3_CODEMP=CPCODEMP ')
                       +'  and OP3_CODMAT=CPCODMAT '
                       +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                        ' and OP3_CODEMP=0'+query_etapa.fieldbyName('OPA_CODEMP_OR').AsString)
                       +' and OP3_LOTSEQ=0'
                       +' and OP3_CODIGO=0'+query_etapa.fieldbyName('OPA_CHAVE_OR').AsString);
   query_totais.SQL.Add(' union ');

   query_totais.SQL.Add('select '+QuotedStr('EMB')+' as tipo, 0 AS MP_QTDITENS '
                       +'      ,0 AS MP_QTD_PAD '
                       +'      ,0 as MP_QTDPERC '
                       +'      ,0 as MP_QTDPERC_REST '
                       +'      ,0 as MP_QTDPREV '
                       +'      ,0 as MP_QTDUTIL '
                       +'      ,0 AS MP_TOTVLR_PREV '
                       +'      ,0 AS MP_TOTVLR_UTIL '
                       +'     ,count(*) AS EMB_QTDITENS '

                       +'      ,sum(CPQTD_PAD) as EMB_QTD_PAD '
                       +'      ,sum(OP3_QTDPREV) as EMB_QTDPREV '
                       +'      ,sum(OP3_QTDUTIL) as EMB_QTDUTIL '
                       +'      ,sum(CPPU*OP3_QTDPREV) AS EMB_TOTVLR_PREV '
                       +'      ,sum(CPPU*OP3_QTDUTIL) AS EMB_TOTVLR_UTIL '
                       +'      ,max(pdund)  AS PDUND '
                       +'      from CADCOMP,CADPRO,CADOP03 where '
                       +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                        ' CPCODEMP=0'+query_etapa.fieldbyName('OPA_CODEMP_OR').AsString +' and PDCODEMP=CPCODEMP and ')
                      +' PDCODPRO=CPCODMAT and (CPTIPO=0 or CPTIPO is null) '
                      +' and CPCODPRO=0'+query_etapa.fieldbyName('OP2_CODPRO').AsString
                      +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                       ' and OP3_CODEMP=CPCODEMP ')
                      +'  and OP3_CODMAT=CPCODMAT '
                      +' and (OP3_FABENV=0 or OP3_FABENV=1) '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                      ' and OP3_CODEMP=0'+query_etapa.fieldbyName('OPA_CODEMP_OR').AsString)
                     +' and OP3_LOTSEQ=0'
                     +' and OP3_CODIGO=0'+query_etapa.fieldbyName('OPA_CHAVE_OR').AsString);
   query_totais.SQL.Add(' ) ');
   //query_totais.SQL.SaveToFile(mpastatemp +'sql_TOTAIS.txt');

   try
      query_totais.Open;
   except
      query_totais.SQL.SaveToFile(mpastatemp +'sql_TOTAIS.txt');
      end;





   Form_Agde.Label2.Caption:='Incluindo as Grade';
   verteclado(0);


   Query_Grade_02:=TQuery.Create(nil);
   Query_Grade_02.DatabaseName:='SG_ASSOC';
   Query_Grade_02_Res:=TQuery.Create(nil);
   Query_Grade_02_Res.DatabaseName:='SG_ASSOC';

   Query_Grade_01:=TQuery.Create(nil);
   Query_Grade_01.DatabaseName:='SG_ASSOC';

   Query_Grade_01.SQL.Clear;
   Query_Grade_01.SQL.Add('Select * FROM CADOP_TAB01 where OPT01_CODEMP='+IntTostr(codemp)
                         +' and OPT01_ETAPA='+query_etapa.fieldbyname('OPA_ETAPA').AsString);
   Query_Grade_01.open;
   mGrade:=TStringList.Create;
   mGridMesclar:=TStringList.Create;
   mGridMesclar.Clear;
   pLinhaItem  :=1;

   mGrade.Clear;
   mGridFundo:=TStringList.Create;
   mGridAlinha:=TStringlist.Create;


   //mGridFundo: TStrings;

   While not Query_Grade_01.Eof do
      begin
      mGridMesclar.Clear;
      pLinhaItem :=1;

      mGrade.Clear;
      mGridFundo.Clear;
      mGridAlinha.Clear;
      mGrid_Linha:=0;
      mGrid_Coluna:=0;
      mTamColunas:='';
      mPegouTamCol:=false;

      Query_Grade_02_res.Close;
      Query_Grade_02_res.SQL.clear;
      Query_Grade_02_res.SQL.add('Select OPT02_POSICAO FROM CADOP_TAB02 where '
                        +' OPT02_CODEMP=:CODEMP '
                        +' and OPT02_NOMREL = :NOMREL '
                        +' AND NOT OPT02_CODEMP IS NULL '

                        +' group by OPT02_POSICAO ORDER BY OPT02_POSICAO ' );
      Query_Grade_02_res.ParamByName('CODEMP').AsInteger:=Query_Grade_01.fieldbyName('OPT01_CODEMP').AsInteger;
      Query_Grade_02_res.ParamByName('NOMREL').AsString :=Query_Grade_01.fieldbyName('OPT01_NOMREL').AsString;
      Query_Grade_02_res.Open;
      While not Query_Grade_02_res.Eof do
         begin
         Query_Grade_02.SQL.Clear;
         Query_Grade_02.SQL.Add('Select * FROM CADOP_TAB02 where '
                               +' OPT02_CODEMP=:CODEMP '
                               +' and OPT02_NOMREL = :NOMREL '
                               +' and OPT02_POSICAO = :POSICAO '
                               +' AND NOT OPT02_CODEMP IS NULL '
                               +' ORDER BY OPT02_NOMREL,OPT02_POSICAO,OPT02_COLUNA ' );
         Query_Grade_02.ParamByName('CODEMP').AsInteger:=Query_Grade_01.fieldbyName('OPT01_CODEMP').AsInteger;
         Query_Grade_02.ParamByName('NOMREL').AsString :=Query_Grade_01.fieldbyName('OPT01_NOMREL').AsString;
         Query_Grade_02.ParamByName('POSICAO').AsString :=Query_Grade_02_RES.fieldbyName('OPT02_POSICAO').AsString;
         Query_Grade_02.open;

         if copy(Query_Grade_02_res.fieldbyName('OPT02_POSICAO').AsString,1,3)<>'DET' then
            begin
            mLinha_Dados:='';
            Query_Grade_02.First;
            mGrid_Linha:=mGrid_Linha+1;


            mGrid_Coluna:=0;
   //         mTamColunas:='';

            While not Query_Grade_02.Eof do
               begin
               mGrid_Coluna:=mGrid_Coluna+1;
               if not mPegouTamCol then
                  mTamColunas:=mTamColunas+Query_Grade_02.FieldByName('OPT02_TAMANHO').AsString+'|';
               if Query_Grade_02.FieldByName('OPT02_FUNDO').AsInteger=1 then
                  mGridFundo.Add(IntTosTr(mGrid_Linha)+'|'+IntToStr(mGrid_Coluna) );
               mGridAlinha.Add(IntTosTr(mGrid_Linha)+'|'+IntToStr(mGrid_Coluna)+'|'+
               Query_Grade_02.FieldByName('OPT02_ALINHAMENTO').AsString);
               if Query_Grade_02.FieldByName('OPT02_TIPOCAMPO').AsInteger=1 then
                  begin
   // inicio
                  if trim(Query_Grade_02.FieldByName('OPT02_FORMATO').AsString)<>'' then
                     begin
                     if Query_Grade_02.FieldByName('OPT02_DATATYPE').AsInteger=1 then
                        begin
                        try
                           mLinha_Dados:=mLinha_Dados+
                           FormatFloat(Query_Grade_02.FieldByName('OPT02_FORMATO').AsString,
                           query_totais.FieldbyName(
                           Query_Grade_02.FieldByName('OPT02_CAMPOOUTEXTO').AsString).AsInteger)+mDel;
                        except on e : exception do
                           mErrosOCorrencia.add('Nome Rel '+Query_Grade_01.fieldbyName('OPT01_NOMREL').AsString
                                               +' Posicao: '+Query_Grade_02_RES.fieldbyName('OPT02_POSICAO').AsString
                                               +' Erro '+e.message);
                           end;

                        end
                     else if Query_Grade_02.FieldByName('OPT02_DATATYPE').AsInteger=2 then
                        begin
                        try
                           mLinha_Dados:=mLinha_Dados+
                           FormatFloat(Query_Grade_02.FieldByName('OPT02_FORMATO').AsString,
                           query_totais.FieldbyName(
                           Query_Grade_02.FieldByName('OPT02_CAMPOOUTEXTO').AsString).AsFloat)+mDel;
                        except on e : exception do
                           mErrosOCorrencia.add('Nome Rel '+Query_Grade_01.fieldbyName('OPT01_NOMREL').AsString
                                               +' Posicao: '+Query_Grade_02_RES.fieldbyName('OPT02_POSICAO').AsString
                                               +' Erro '+e.message);
                           end;

                        end
                     else if Query_Grade_02.FieldByName('OPT02_DATATYPE').AsInteger=3 then
                        begin
                        try
                           mLinha_Dados:=mLinha_Dados+
                           FormatFloat(Query_Grade_02.FieldByName('OPT02_FORMATO').AsString,
                           query_totais.FieldbyName(
                           Query_Grade_02.FieldByName('OPT02_CAMPOOUTEXTO').AsString).AsDateTime)+mDel;
                        except on e : exception do
                           mErrosOCorrencia.add('Nome Rel '+Query_Grade_01.fieldbyName('OPT01_NOMREL').AsString
                                               +' Posicao: '+Query_Grade_02_RES.fieldbyName('OPT02_POSICAO').AsString
                                               +' Erro '+e.message);
                           end;

                        end
                     else
                        begin
                        try
                           mLinha_Dados:=mLinha_Dados+
                           trim( query_totais.FieldbyName(
                           Query_Grade_02.FieldByName('OPT02_CAMPOOUTEXTO').AsString).AsString)+mDel;
                        except on e : exception do
                           mErrosOCorrencia.add('Nome Rel '+Query_Grade_01.fieldbyName('OPT01_NOMREL').AsString
                                               +' Posicao: '+Query_Grade_02_RES.fieldbyName('OPT02_POSICAO').AsString
                                               +' Erro '+e.message);
                           end;

                        end;
                     end
                  else
                     begin
                     try
                        mLinha_Dados:=mLinha_Dados+
                        trim(query_totais.FieldbyName(
                        Query_Grade_02.FieldByName('OPT02_CAMPOOUTEXTO').AsString).AsString) +mDel;
                      except on e : exception do
                         mErrosOCorrencia.add('Nome Rel '+Query_Grade_01.fieldbyName('OPT01_NOMREL').AsString
                                               +' Posicao: '+Query_Grade_02_RES.fieldbyName('OPT02_POSICAO').AsString
                                               +' Erro '+e.message);
                        end;

                     end;
                  end
               else
                  begin
                  mLinha_Dados:=mLinha_Dados+trim(Query_Grade_02.FieldByName('OPT02_CAMPOOUTEXTO').AsString)+mDel;;
                  end;
               Query_Grade_02.Next;
               end;
            mPegouTamCol:=true;
            Query_Grade_02.First;
            if Query_Grade_02.fieldbyName('OPT02_MESCLAR_INI').AsInteger>0 then
               begin
               mGridMesclar.Add(IntTosTr(pLinhaItem)+'|'+Query_Grade_02.fieldbyName('OPT02_MESCLAR_INI').AsString
                              +'|'+Query_Grade_02.fieldbyName('OPT02_MESCLAR_FIN').AsString
                              +'|'+Query_Grade_02.fieldbyName('OPT02_POSICAO').AsString)
                              ;
               end;
            pLinhaItem :=pLinhaItem+1;



            mGrade.Add(mLinha_Dados);
            Query_Grade_02_res.Next;
            Continue;
            end;

         if copy(Query_Grade_02_res.fieldbyName('OPT02_POSICAO').AsString,1,6)<>'DET_EM' then
            begin
            Ado_MP.First;
            While not Ado_MP.eof do
               begin
               mLinha_Dados:='';
               mGrid_Linha:=mGrid_Linha+1;
               mGrid_Coluna:=0;
               Query_Grade_02.First;
               While not Query_Grade_02.Eof do
                  begin
                  mGrid_Coluna:=mGrid_Coluna+1;
                  if not mPegouTamCol then
                     mTamColunas:=mTamColunas+Query_Grade_02.FieldByName('OPT02_TAMANHO').AsString+'|';

                  if Query_Grade_02.FieldByName('OPT02_FUNDO').AsInteger=1 then
                     mGridFundo.Add(IntTosTr(mGrid_Linha)+'|'+IntToStr(mGrid_Coluna) );
                  mGridAlinha.Add(IntTosTr(mGrid_Linha)+'|'+IntToStr(mGrid_Coluna)+'|'+
                  Query_Grade_02.FieldByName('OPT02_ALINHAMENTO').AsString);


                   if (Query_Grade_02.FieldByName('OPT02_TIPOCAMPO').AsInteger=1)
                       and (trim(Query_Grade_02.FieldByName('OPT02_CAMPOOUTEXTO').asstring)<>'')    then
                       begin
                       try
                      mLinha_Dados:=mLinha_Dados+
                      Ado_MP.FieldbyName(
                      Query_Grade_02.FieldByName('OPT02_CAMPOOUTEXTO').AsString).AsString+'|';
                        except on e : exception do
                           mErrosOCorrencia.add('Nome Rel '+Query_Grade_01.fieldbyName('OPT01_NOMREL').AsString
                                               +' Posicao: '+Query_Grade_02_RES.fieldbyName('OPT02_POSICAO').AsString
                                               +' Erro '+e.message);
                           end;

                      end
                   else
                      mLinha_Dados:=mLinha_Dados+trim(Query_Grade_02.FieldByName('OPT02_CAMPOOUTEXTO').AsString)+'|';

{

                  if (Query_Grade_02.FieldByName('OPT02_TIPOCAMPO').AsInteger=1)
                     and (trim(Query_Grade_02.FieldByName('OPT02_CAMPOOUTEXTO').asstring)<>'')    then
                     begin
                     if Query_Grade_02.FieldByName('OPT02_TIPOCAMPO').AsInteger=1 then
// INICIO
                        begin
                        if trim(Query_Grade_02.FieldByName('OPT02_FORMATO').AsString)<>'' then
                           begin
                           if Query_Grade_02.FieldByName('OPT02_DATATYPE').AsInteger=1 then
                              begin
                              try
                                 mLinha_Dados:=mLinha_Dados+
                                 FormatFloat(Query_Grade_02.FieldByName('OPT02_FORMATO').AsString,
                                 Ado_MP.FieldbyName(
                                 Query_Grade_02.FieldByName('OPT02_CAMPOOUTEXTO').AsString).AsInteger)+mDel;
                              except on e : exception do
                                 mErrosOCorrencia.add('Nome Rel '+Query_Grade_01.fieldbyName('OPT01_NOMREL').AsString
                                                     +' Posicao: '+Query_Grade_02_RES.fieldbyName('OPT02_POSICAO').AsString
                                                       +' Erro '+e.message);
                                 end;
                              end
                           else if Query_Grade_02.FieldByName('OPT02_DATATYPE').AsInteger=2 then
                              begin
                              try
                                 mLinha_Dados:=mLinha_Dados+
                                 FormatFloat(Query_Grade_02.FieldByName('OPT02_FORMATO').AsString,
                                 Ado_MP.FieldbyName(
                                 Query_Grade_02.FieldByName('OPT02_CAMPOOUTEXTO').AsString).AsFloat)+mDel;
                              except on e : exception do
                                 mErrosOCorrencia.add('Nome Rel '+Query_Grade_01.fieldbyName('OPT01_NOMREL').AsString
                                                     +' Posicao: '+Query_Grade_02_RES.fieldbyName('OPT02_POSICAO').AsString
                                                     +' Erro '+e.message);
                                 end;
                              end
                           else if Query_Grade_02.FieldByName('OPT02_DATATYPE').AsInteger=3 then
                              begin
                              try
                                 mLinha_Dados:=mLinha_Dados+
                                 FormatFloat(Query_Grade_02.FieldByName('OPT02_FORMATO').AsString,
                                 Ado_MP.FieldbyName(
                                 Query_Grade_02.FieldByName('OPT02_CAMPOOUTEXTO').AsString).AsDateTime)+mDel;
                              except on e : exception do
                                 mErrosOCorrencia.add('Nome Rel '+Query_Grade_01.fieldbyName('OPT01_NOMREL').AsString
                                                     +' Posicao: '+Query_Grade_02_RES.fieldbyName('OPT02_POSICAO').AsString
                                                     +' Erro '+e.message);
                                 end;
                              end
                           else
                              begin
                              try
                                 mLinha_Dados:=mLinha_Dados+
                                 trim( Ado_MP.FieldbyName(
                                 Query_Grade_02.FieldByName('OPT02_CAMPOOUTEXTO').AsString).AsString)+mDel;
                              except on e : exception do
                                 mErrosOCorrencia.add('Nome Rel '+Query_Grade_01.fieldbyName('OPT01_NOMREL').AsString
                                                     +' Posicao: '+Query_Grade_02_RES.fieldbyName('OPT02_POSICAO').AsString
                                                     +' Erro '+e.message);
                                 end;
                              end;
                           end
                        else
                           begin
                           try
                              mLinha_Dados:=mLinha_Dados+
                              trim(Ado_MP.FieldbyName(
                              Query_Grade_02.FieldByName('OPT02_CAMPOOUTEXTO').AsString).AsString) +mDel;
                            except on e : exception do
                               mErrosOCorrencia.add('Nome Rel '+Query_Grade_01.fieldbyName('OPT01_NOMREL').AsString
                                                     +' Posicao: '+Query_Grade_02_RES.fieldbyName('OPT02_POSICAO').AsString
                                                     +' Erro '+e.message);
                              end;
                           end;
                        end;
                     end;
// TERMINO

}


                  Query_Grade_02.Next;
                  end;
               mPegouTamCol:=true;
               Query_Grade_02.First;
               if Query_Grade_02.fieldbyName('OPT02_MESCLAR_INI').AsInteger>0 then
                  begin
                  mGridMesclar.Add(IntTosTr(pLinhaItem)+'|'+Query_Grade_02.fieldbyName('OPT02_MESCLAR_INI').AsString
                                 +'|'+Query_Grade_02.fieldbyName('OPT02_MESCLAR_FIN').AsString
                                 +'|'+Query_Grade_02.fieldbyName('OPT02_POSICAO').AsString)
                                 ;

                  end;
               pLinhaItem :=pLinhaItem+1;

               mGrade.Add(mLinha_Dados);
               Ado_MP.Next;
               end;
            end;

         if copy(Query_Grade_02_res.fieldbyName('OPT02_POSICAO').AsString,1,6)<>'DET_MP' then
             begin
             Ado_MatEmb.First;
             While not Ado_MatEmb.eof do
                begin
                mLinha_Dados:='';
                mGrid_Linha:=mGrid_Linha+1;
                mGrid_Coluna:=0;
                Query_Grade_02.First;
                While not Query_Grade_02.Eof do
                   begin
                   mGrid_Coluna:=mGrid_Coluna+1;
                   if not mPegouTamCol then
                      mTamColunas:=mTamColunas+Query_Grade_02.FieldByName('OPT02_TAMANHO').AsString+'|';

                   if Query_Grade_02.FieldByName('OPT02_FUNDO').AsInteger=1 then
                      mGridFundo.Add(IntTosTr(mGrid_Linha)+'|'+IntToStr(mGrid_Coluna) );
                   mGridAlinha.Add(IntTosTr(mGrid_Linha)+'|'+IntToStr(mGrid_Coluna)+'|'+
                   Query_Grade_02.FieldByName('OPT02_ALINHAMENTO').AsString);


                   if (Query_Grade_02.FieldByName('OPT02_TIPOCAMPO').AsInteger=1)
                       and (trim(Query_Grade_02.FieldByName('OPT02_CAMPOOUTEXTO').asstring)<>'')    then
                       begin
                       try
                      mLinha_Dados:=mLinha_Dados+
                      Ado_MatEmb.FieldbyName(
                      Query_Grade_02.FieldByName('OPT02_CAMPOOUTEXTO').AsString).AsString+'|';
                        except on e : exception do
                           mErrosOCorrencia.add('Nome Rel '+Query_Grade_01.fieldbyName('OPT01_NOMREL').AsString
                                               +' Posicao: '+Query_Grade_02_RES.fieldbyName('OPT02_POSICAO').AsString
                                               +' Erro '+e.message);
                           end;

                      end
                   else
                      mLinha_Dados:=mLinha_Dados+trim(Query_Grade_02.FieldByName('OPT02_CAMPOOUTEXTO').AsString)+'|';
                   Query_Grade_02.Next;
                   end;
                Query_Grade_02.First;
                if Query_Grade_02.fieldbyName('OPT02_MESCLAR_INI').AsInteger>0 then
                   begin
                   mGridMesclar.Add(IntTosTr(pLinhaItem)+'|'+Query_Grade_02.fieldbyName('OPT02_MESCLAR_INI').AsString
                                  +'|'+Query_Grade_02.fieldbyName('OPT02_MESCLAR_FIN').AsString
                                  +'|'+Query_Grade_02.fieldbyName('OPT02_POSICAO').AsString)
                                  ;

                   end;
                pLinhaItem :=pLinhaItem+1;

                mPegouTamCol:=true;
                mGrade.Add(mLinha_Dados);
                Ado_MatEmb.Next;
                end;
             end;
         Query_Grade_02_res.Next;
         end;

      if Query_Grade_01.fieldbyName('OPT01_TAMCOLAUT0').AsInteger=0 then
         mTamColunas:='';
      Query_Grade_02_res.First;

      mGrade[mgrade.Count-1]:=copy(mgrade[mgrade.count-1],1,length(mgrade[mgrade.count-1])-1);
      if fIncluirGrade(Query_Grade_01.fieldbyName('OPT01_NOMREL').AsString,mTamColunas, mGrade,
      Query_Grade_01.fieldbyName('OPT01_TAMANHO').AsInteger,
      Query_Grade_01.fieldbyName('OPT01_QTDCOL').AsInteger,1,
      Query_Grade_01.fieldbyName('OPT01_QTDLINCAB').AsInteger
      ,mGridFundo,mGridAlinha,mGridMesclar) then
      mGridMesclar.Clear;

      Query_Grade_01.Next;
      end;
   query_etapa.Next;
   end;
// etapas inicio



query_etapa_processo:=tQuery.create(nil);
query_etapa_processo.DatabaseName:='SG_ASSOC';
query_etapa_processo.Close;
query_etapa_processo.SQL.clear;
query_etapa_processo.SQL.Add('Select * from CADOP_ETA where '
                   +' ETA_CODEMP=:CODEMP '
                   +' and ETA_CHAVE_OP=:CHAVE '
                   +' and ETA_CHAVE_OP_ano=:CHAVE_ANO '
                   +' order by ETA_DATHOR_INIPROC ');
query_etapa_processo.ParamByName('CODEMP').AsInteger:=codemp;
query_etapa_processo.ParamByName('CHAVE').AsInteger:=valint(MCHAVE.Text);
query_etapa_processo.ParamByName('CHAVE_ANO').AsInteger:=mLotSeqIndFab;
query_etapa_processo.Open;


mGrade.Clear;
While not query_etapa_processo.Eof do
   begin
   mlinha_etapa:=query_etapa_processo.fieldbyname('ETA_DESCRICAO').AsString
               +'|'+query_etapa_processo.fieldbyname('ETA_RESPONSAVEL').AsString
               +'|'+Formatdatetime(fdathor, query_etapa_processo.fieldbyname('ETA_DATHOR_INIPROC').AsDateTime)
               +'|'+Formatdatetime(fdathor, query_etapa_processo.fieldbyname('ETA_DATHOR_TERMINO').AsDateTime)

               +'|'+query_etapa_processo.fieldbyname('ETA_CONFERENTE').AsString
               +'|'+Formatdatetime(fdathor, query_etapa_processo.fieldbyname('ETA_DATHOR_CONF').AsDateTime)
               +'|'+query_etapa_processo.fieldbyname('ETA_RESULTADO').AsString
               +'|'+query_etapa_processo.fieldbyname('ETA_OBS').AsString
               +'|';
   if mGrade.Text='' then
      begin
      mGrade.add('Processo'
               +'|'+'Responsavel'
               +'|'+'Inicio'
               +'|'+'Termino'
               +'|'+'Conferente'
               +'|'+'Data/Hora'
               +'|'+'Resultado'
               +'|'+'Observação'
               +'|'
               );
      end;
   mGrade.Add(mlinha_etapa);
   query_etapa_processo.Next;
   end;
mTamColunas:='';
mGridFundo.clear;
mGridAlinha.clear;
mGridMesclar.clear;

if mGrade.Text<>'' then
   begin
   fIncluirGrade('etapas',mTamColunas, mGrade,
      0, //Query_Grade_01.fieldbyName('OPT01_TAMANHO').AsInteger,
      8, // Query_Grade_01.fieldbyName('OPT01_QTDCOL').AsInteger,1,
      1, // pitem
      1, // Query_Grade_01.fieldbyName('OPT01_QTDLINCAB').AsInteger
      mGridFundo,mGridAlinha,mGridMesclar);

   end;

// INICIO GRADE AGRUPADA

mGrade.Clear;

mGrid_Linha:=0;
if high(pOpAnexas)>-1 then
   begin
   mGrid_Linha:=mGrid_Linha+1;
   mGrade.add('CODIGO '+'|'+'DESCRICAO'+'|'+'QUANTIDADE'+'|'
      );

   mTamColunas:='70'+'|'+'350'+'|'+'100';

   mGridFundo.Add(inttostr(mGrid_Linha)+'|'+'1');
   mGridFundo.Add(inttostr(mGrid_Linha)+'|'+'2');
   mGridFundo.Add(inttostr(mGrid_Linha)+'|'+'3');



   query_op02_prodfab   := tquery.create(nil);
   query_op03_embalagens:= tquery.create(nil);
   query_op02_prodfab.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   query_op03_embalagens.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   for x_anexos:=0 to high(pOpAnexas) do
      begin
      query_op02_prodfab.Close;
      query_op02_prodfab.SQL.clear;
      query_op02_prodfab.SQL.Add('select OP2_CODPRO,OP2_QTDPREV,OP2_QTDPROD '
                                +',PDNOME,PDUND,PDCODPRO from cadop02,CADPRO '
                                +' WHERE PDCODPRO=OP2_CODPRO '
                                +' and OP2_CODEMP='+inttostr(codemp)
                                +' AND OP2_CODIGO=:CHAVE_OP ');
      query_op02_prodfab.ParamByName('CHAVE_OP').AsInteger:=valint(pOpAnexas[x_anexos]);
      try
         query_op02_prodfab.open;
      except on e : exception do
         begin
         ex_erroSql_Novo(query_op02_prodfab,5910,'SGE '+E.MESSAGE,'CADOP02');
         end;
         end;


      query_op03_embalagens.Close;
      query_op03_embalagens.SQL.clear;
      query_op03_embalagens.SQL.Add('select OP3_CODMAT,OP3_QTDPREV,OP3_QTDUTIL '
                                  +',PDNOME,PDUND,PDCODPRO from cadop03,CADPRO '
                                  +' WHERE PDCODPRO=OP3_CODMAT '
                                  +' AND OP3_CODIGO=:CHAVE_OP '
                                  +' AND OP3_FABENV=1 '
                                  +' ORDER BY OP3_SEQ ');
      query_op03_embalagens.ParamByName('CHAVE_OP').AsInteger:=valint(pOpAnexas[x_anexos]);
      try
         query_op03_embalagens.open;
      except on e : exception do
         begin
         ex_erroSql_Novo(query_op03_embalagens,5910,'SGE','CADOP02');
         end;
         end;


      while not query_op02_prodfab.eof do
         begin
         mGrade.add('PRODUTO FABRICADO '+query_op02_prodfab.Fieldbyname('PDCODPRO').AsString+' '+query_op02_prodfab.Fieldbyname('PDNOME').AsString
                   +' Quanidade '+query_op02_prodfab.Fieldbyname('OP2_QTDPROD').AsString
                   +' Chave OP.: '+pOpAnexas[x_anexos]
            +'|'
            +'|'
            +'|'
            );
         mGrid_Linha:=mGrid_Linha+1;
         mGridFundo.Add(inttostr(mGrid_Linha)+'|'+'1');
         mGridFundo.Add(inttostr(mGrid_Linha)+'|'+'2');
         mGridFundo.Add(inttostr(mGrid_Linha)+'|'+'3');
         mGridMesclar.Add(inttostr(mGrid_Linha)+'|'+'1'+'|'+'3'+'|'+'1');

         mGridAlinha.Add(IntTosTr(mGrid_Linha)+'|'+IntToStr(1)+'|'+'2');
         mGridAlinha.Add(IntTosTr(mGrid_Linha)+'|'+IntToStr(2)+'|'+'2');
         mGridAlinha.Add(IntTosTr(mGrid_Linha)+'|'+IntToStr(3)+'|'+'2');
         query_op02_prodfab.Next;
         end;
      While not query_op03_embalagens.eof do
         begin
         mGrade.add(query_op03_embalagens.Fieldbyname('PDCODPRO').AsString
                   +'|'+query_op03_embalagens.Fieldbyname('PDNOME').AsString
                   +'|'+query_op03_embalagens.Fieldbyname('OP3_QTDUTIL').AsString
                   +'|'
                  );
         mGridAlinha.Add(IntTosTr(mGrid_Linha)+'|'+IntToStr(3)+'|'+'2');

         mGrid_Linha:=mGrid_Linha+1;

         query_op03_embalagens.Next;
         end;

      end;
   end;
{

LINDOMAR
mTamColunas:='';
mGridFundo.clear;
mGridAlinha.clear;
mGridMesclar.clear;
mGrade.Clear;
mGrid_Linha:=0;

}
{
if mGrade.Text='' then
   begin
   mGrid_Linha:=mGrid_Linha+1;
   mGrade.add('Produto Fabricado Original OP 10020 '
            +'|'+'PRODUTO DET ACIDO G 103'
            +'|'+'col02'
            +'|'+'col03'
            );
   mGridFundo.Add(inttostr(mGrid_Linha)+'|'+'0');
   mGridFundo.Add(inttostr(mGrid_Linha)+'|'+'1');
   mGrid_Linha:=mGrid_Linha+1;
   mGrade.add('Chave '
            +'|'+'Codigo'
            +'|'+'Descricao'
            +'|'
            );

   mGridFundo.Add(inttostr(mGrid_Linha)+'|'+'2');
   mGrid_Linha:=mGrid_Linha+1;

   end;

mGrade.Add(mlinha_etapa);
mGrid_Linha:=mGrid_Linha+1;
}

if mGrade.Text<>'' then
   begin
   fIncluirGrade('GRADE_MESCLADA',mTamColunas, mGrade,
      0, //Query_Grade_01.fieldbyName('OPT01_TAMANHO').AsInteger,
      fQtd_Del_Par('|',mGrade[0])-1,
      1, // pitem
      1, // Query_Grade_01.fieldbyName('OPT01_QTDLINCAB').AsInteger
      mGridFundo,mGridAlinha,mGridMesclar);
   end;


// TERMINO RADE AGRUPADA




//function tFrm_IndEnv_Fab.fIncluirGrade(pBookMark,pTamColunas: String; pGrade:TStrings;pTamCol,pQtdCol,pItem,pLinhaFixa: Integer;pFundo,pAlinhamento,pMesClar: TStrings): Boolean;

// etapas termino


if mErrosOCorrencia.Count>0 then
   MessageDlg('Erros: '+mErrosOCorrencia.Text,mtError,[mbOk],0);
FreeAndNil(mErrosOCorrencia);


FreeAndNil(mGridFundo);
FreeAndNil(mGridAlinha);
FreeAndNil(Ado_Cadop);
FreeAndNil(Ado_MP);
FreeAndNil(Ado_MatEmb);
FreeAndNil(Query_Grade_02);
FreeAndNil(Query_Grade_02_res);
FreeAndNil(Query_Grade_01);
FreeAndNil(query_etapa);
FreeAndNil(Form_Agde);

result:=true;
end;



procedure TFrm_IndEnv_Fab.BBIMPRIMIRClick(Sender: TObject);
var
mnomesaida: string;
mNomeDoc_doc: OleVariant;
mform_ordemproducao: tFrm_OrdemdeProducao;

          function fSubstituirWordAcentos:Boolean;
          var
          All, SubsTodos : OleVariant;
          EmptyParam: OleVariant;    // "Empty parameter" standard constant which can be

          x_item: integer;





              procedure pAtualizar(pachar,pSubstituir:OleVariant);
              begin

              SubsTodos:=true;

//             SHOWMESSAGE(PACHAR,psubstituir);

              try
                 worddoc.Content.Find.ClearFormatting;
                 worddoc.Content.Find.Text:=pAchar;
                 worddoc.Content.Find.Replacement.Text := pSubstituir;
                 worddoc.Content.Find.MatchAllWordForms := False;
                 worddoc.Content.Find.MatchCase := True;
                 worddoc.Content.Find.MatchWildcards := False;
                 worddoc.Content.Find.MatchSoundsLike := False;
                 worddoc.Content.Find.MatchWholeWord := False;
                 worddoc.Content.Find.MatchFuzzy := False;
                 worddoc.Content.Find.Wrap := wdFindContinue;
                 worddoc.Content.Find.Format := False;
                 worddoc.Content.Find.Format := true;
                 { Perform the search}
                 All:=wdReplaceAll;
                 worddoc.Content.Find.Execute(pAchar
                                                   ,EmptyParam
                                               ,EmptyParam
                                               ,EmptyParam
                                               ,EmptyParam
                                               ,EmptyParam
                                               ,SubsTodos
                                               ,EmptyParam
                                               ,EmptyParam
                                               ,pSubstituir
                                               ,All
                                               ,EmptyParam
          //                                     ,SubsTodos é essa
                                               ,EmptyParam
                                               ,EmptyParam
                                               ,EmptyParam
                                               );
              except on e : exception do
                 begin
//                 Messagedlg('achar '+PACHAR +' substituir '+psubstituir,mtWarning,[mbOk],0);
                 result:=false;
                 end;
                 end;
              end;



          begin
          for x_item:=0 to High(c_caracter_word) do
             begin


             pAtualizar(c_caracter_word[x_item][01],c_caracter_word[x_item][00]);

             end;
          end;






begin
//mNumero_Tabela:=0;
if trim(dbcb_modelo.text)<>'' then
   begin
   fGerarEvento('6450 - entrar na preparacao do relatorio');
   Application.createform(TFrm_ordemdeproducao, mform_ordemproducao);

   if  mform_ordemproducao.fPreparaRelatorio_ordemproducao(dbcb_modelo.Text
      ,ValInt(MCHAVE.TEXT),ls_lotfab,mnomesaida,false) then
      begin

      WordApp:=TWordApplication.Create(Application.Owner);
      WordDoc:=TWordDocument.Create(Application.Owner);
      try
         mNomeDoc_doc:=mnomesaida;
         WordDoc.ConnectTo(WordApp.Documents.Add(mNomeDoc_doc,EmptyParam,EmptyParam,EmptyParam));
      except on e : exception do
         begin
         Messagedlg('Erro ao Abrir Documento '+e.message+#13+'. Feche e tente novamente!' ,mterror,[mbOk],0);
         exit;
         end;
         end;
      fSubstituirWordAcentos;
      WordApp.Visible:=True;

      end;
//   mform_ordemproducao.ShowModal;
   freeandnil(mform_ordemproducao);



   end
else
   fImprimirWord([],fsonumero(CODPRO.Text));
exit;

if not DirectoryExists(Banco_Servidor+'\PASTADOCS\'+Banco_usuario) then
   CreateDir(Banco_Servidor+'\PASTADOCS'+Banco_usuario);
if not FileExists(Banco_Servidor+'\PASTADOCS\'+Banco_usuario+'\PD'+FloatToStr(fSonumero(CODPRO.Text))+'.RTF') then
   begin
   fmensagem('Não Existe um Texto Padrão Para Esta formula!, para cadastrar entre em industria Formulas',0,['0'],0);
   exit;
   end;
  tbs_relatorio.Visible   := True;
  PageControl1.ActivePage := tbs_relatorio;

  wp_texto.LoadFromFile(Banco_Servidor+'\PASTADOCS\'+Banco_usuario+'\PD'+FloatToStr(fSonumero(CODPRO.Text))+'.RTF');

  {---Ativa o Cabeçalho para Substituição de Valores das [TAGS]--}
  wp_texto.WorkOnText   := wpHeader;
  ReplaceTags(wp_texto,'CHAVE');
  ReplaceTags(wp_texto,'DATA');
  ReplaceTags(wp_texto,'LOTE');
  ReplaceTags(wp_texto,'DATA_FAB');
  ReplaceTags(wp_texto,'DATA_VENC');
  ReplaceTags(wp_texto,'PRODUTO');
  ReplaceTags(wp_texto,'NOME_PRODUTO');
  ReplaceTags(wp_texto,'QTDE_TEORICA');
  ReplaceTags(wp_texto,'NOME_PRODUTO');

  {---Ativa o Corpo do Relatorio para Substituição de Valores das [TAGS]--}
  wp_texto.WorkOnText   := wpBody;
  ReplaceTags(wp_texto,'CHAVE');
  ReplaceTags(wp_texto,'NOME_EMPRESA');
  ReplaceTags(wp_texto,'DATA');
  ReplaceTags(wp_texto,'LOTE');
  ReplaceTags(wp_texto,'DATA_FAB');
  ReplaceTags(wp_texto,'DATA_VENC');
  ReplaceTags(wp_texto,'PRODUTO');
  ReplaceTags(wp_texto,'NOME_PRODUTO');
  ReplaceTags(wp_texto,'QTDE_TEORICA');
  ReplaceTags(wp_texto,'NOME_PRODUTO');

  wp_texto.InputTextField(wpoPageNumber);

   DM3.Tb_Op01.First;
   Tb_Op02.First;
   Tb_Op03.First;

   if (mcinst='FR') or (mcinst='VD') or (mcinst='LT') or (mcinst='TB') then
       mTipoEmb:='ml'
   else
      mTipoEmb:='gr';
   fLerMateriaPrima(0,DM3.Tb_Op01OP1_CODEMP.AsFloat,DM3.Tb_Op01OP1_LOTSEQ.AsFloat,DM3.Tb_Op01OP1_CODIGO.AsFloat);

//  fImprimirOp_word(0,DM3.Tb_Op01OP1_CODEMP.AsFloat,DM3.Tb_Op01OP1_LOTSEQ.AsFloat,DM3.Tb_Op01OP1_CODIGO.AsFloat,'','');
//  fImprimirOp_word(0,DM3.Tb_Op01OP1_CODEMP.AsFloat,DM3.Tb_Op01OP1_LOTSEQ.AsFloat,DM3.Tb_Op01OP1_CODIGO.AsFloat,'','');
//  fImprimirOp_word(1,DM3.Tb_Op01OP1_CODEMP.AsFloat,DM3.Tb_Op01OP1_LOTSEQ.AsFloat,DM3.Tb_Op01OP1_CODIGO.AsFloat,'','');
//  fImprimirOp_word(2,DM3.Tb_Op01OP1_CODEMP.AsFloat,DM3.Tb_Op01OP1_LOTSEQ.AsFloat,DM3.Tb_Op01OP1_CODIGO.AsFloat,'','');

   Edit1.Text := '1';
   Edit2.Text := IntToStr(wp_texto.PageCount);
end;

function TFrm_IndEnv_Fab.FCriarGrades(pTipo: Integer): Boolean;
begin
if pTipo = 0 then
   begin
   Frm_IndEnv_Fab.Qr_Comp_MP.First;
   pDataSet := Frm_IndEnv_Fab.Qr_Comp_MP;
   setlength(pTamCol,6);
   pTamCol[00] := 200;
   pTamCol[01] := 220;
   pTamCol[02] := 280;
   pTamCol[03] := 280;
   pTamCol[04] := 300;
   pTamCol[05] := 280;

   setlength(pNomCol,6);
   pNomCol[00] := 'CPCODMAT';
   pNomCol[01] := 'PDNOME';
   pNomCol[02] := 'OP3_QTDPREV';
   pNomCol[03] := 'OP3_LOTE';
   pNomCol[04] := ' ';
   pNomCol[05] := 'OP3_LOTE_RE';

   setlength(pFormato,6);
   pFormato[00] := '00000';
   pFormato[01] := '';
   pFormato[02] := mcasind;
   pFormato[03] := '';
   pFormato[04] := '';
   pFormato[05] := '';

   setlength(pTitCol,6);
   pTitCol[00] := 'Codigo';
   pTitCol[01] := 'Nome';
   pTitCol[02] := 'Form.Pad. (KG/L)';
   pTitCol[03] := 'Lote';
   pTitCol[04] := 'Quant. Util. (KG/L)';
   pTitCol[05] := 'Lote (RE)';
   end
else if pTipo = 1 then
   begin
   Frm_IndEnv_Fab.Qr_Comp_MP.First;
   pDataSet := Frm_IndEnv_Fab.Qr_Comp_MP;
   xQtdeLinha := STG_MP_OP03.RowCount - 1;
   setlength(pTamCol,4);
   pTamCol[00] := 200;
   pTamCol[01] := 220;
   pTamCol[02] := 240;
   pTamCol[03] := 260;

   setlength(pNomCol,4);
   pNomCol[00] := 'OP3_LOTE';
   pNomCol[01] := 'CPCODMAT';
   pNomCol[02] := 'PDNOME';
   pNomCol[03] := 'CPPERCENT_REST';


   setlength(pFormato,4);
   pFormato[00] := '';
   pFormato[01] := '0000';
   pFormato[02] := '';
   pFormato[03] := '#,##0.0000%';;

   setlength(pTitCol,4);
   pTitCol[00] := 'Lote do Fabricante';
   pTitCol[01] := 'Codigo';
   pTitCol[02] := 'Materias Primas';
   pTitCol[03] := 'Concentração/100ml';
   end
else if pTipo = 30 then
   begin
   Frm_IndEnv_Fab.Qr_Comp_MP.First;
   pDataSet := Frm_IndEnv_Fab.Qr_Comp_MP;
   setlength(pTamCol,7);
   pTamCol[00] := 200;
   pTamCol[01] := 220;
   pTamCol[02] := 240;
   pTamCol[03] := 260;
   pTamCol[04] := 280;
   pTamCol[05] := 300;
   pTamCol[06] := 320;

   setlength(pNomCol,7);
   pNomCol[00] := 'PDNOME';
   pNomCol[01] := ' ';
   pNomCol[02] := ' ';
   pNomCol[03] := ' ';
   pNomCol[04] := ' ';
   pNomCol[05] := ' ';
   pNomCol[06] := ' ';

   setlength(pFormato,7);
   pFormato[00] := '';
   pFormato[01] := '';
   pFormato[02] := '';
   pFormato[03] := '';
   pFormato[04] := '';
   pFormato[05] := '';
   pFormato[06] := '';

   setlength(pTitCol,7);
   pTitCol[00] := 'Matéria - Prima/Material de Embalagem';
   pTitCol[01] := 'RE';
   pTitCol[02] := 'Quantidade separada pelo Almoxarifado';
   pTitCol[03] := 'Quantidade separada no setor de Pesagem';
   pTitCol[04] := 'Quantidade Devolvida';
   pTitCol[05] := 'Percas';
   pTitcol[06] := 'Reconciliação do Estoque';
   end
else if pTipo = 31 then
   begin
   Tb_Op03.First;
   pDataSet := Tb_Op03;
   setlength(pTamCol,7);
   pTamCol[00] := 150;
   pTamCol[01] := 500;
   pTamCol[02] := 90;
   pTamCol[03] := 200;
   pTamCol[04] := 200;
   pTamCol[05] := 200;
   pTamCol[06] := 200;

   setlength(pNomCol,7);
   pNomCol[00] := 'OP3_CODMAT';
   pNomCol[01] := 'PDNOME';
   pNomCol[02] := 'PDUND';
   pNomCol[03] := 'OP3_QTDPREV';
   pNomCol[04] := 'OP3_LOTE';
   pNomCol[05] := ' ';
   pNomCol[06] := 'OP3_LOTE_RE';

   setlength(pFormato,7);
   pFormato[00] := '00000';
   pFormato[01] := '';
   pFormato[02] := '';
   pFormato[03] := mcasind;
   pFormato[04] := '';
   pFormato[05] := '';
   pFormato[06] := '';

   setlength(pTitCol,7);
   pTitCol[00] := 'Código';
   pTitCol[01] := 'Matéria - Prima/Material de Embalagem';
   pTitCol[02] := 'Und';
   pTitCol[03] := 'Quantidade Padrão';
   pTitCol[04] := 'Lote';
   pTitCol[05] := 'Quantidade Utilizada';
   pTitCol[06] := 'Lote Int.(RE)';
   end
else if pTipo = 32 then
   begin
   Tb_Op03.First;
   pDataSet := Tb_Op03;
   setlength(pTamCol,8);
   pTamCol[00] := 150;
   pTamCol[01] := 500;
   pTamCol[02] := 90;
   pTamCol[03] := 170;
   pTamCol[04] := 170;
   pTamCol[05] := 170;
   pTamCol[06] := 170;
   pTamCol[07] := 170;

   setlength(pNomCol,8);
   pNomCol[00] := 'OP3_CODMAT';
   pNomCol[01] := 'PDNOME';
   pNomCol[02] := 'PDUND';
   pNomCol[03] := 'observacao';
   pNomCol[04] := 'OP3_QTDPREV';
   pNomCol[05] := 'OP3_LOTE';
   pNomCol[06] := ' ';
   pNomCol[07] := 'OP3_LOTE_RE';

   setlength(pFormato,8);
   pFormato[00] := '00000';
   pFormato[01] := '';
   pFormato[02] := '';
   pFormato[03] := 'CC';
   pFormato[04] := mcasind;
   pFormato[05] := '';
   pFormato[06] := '';
   pFormato[07] := '';

   setlength(pTitCol,8);
   pTitCol[00] := 'Código';
   pTitCol[01] := 'Matéria - Prima';
   pTitCol[02] := 'Und';
   pTitCol[03] := 'Formula Centesimal';
   pTitCol[04] := 'Quantidade Padrão';
   pTitCol[05] := 'Lote';
   pTitCol[06] := 'Quantidade Utilizada';
   pTitCol[07] := 'Lote Int.(RE)';
   end;


pDataSet.First;
wp_texto.TableAdd(high(pNomCol)+1, pDataSet.RecordCount+1,[wptblActivateBorders],nil,FCarregaGrade);
wp_texto.DeleteChar(xQtdeLinha);
result := True;
end;

procedure TFrm_IndEnv_Fab.FCarregaGrade(RowNr, ColNr: Integer; par: TParagraph);
begin
  wprt := TWPRichText.Create(Self);
  try
    wprt.Clear;
    wprt.CheckHasBody;
    {---Adiciona Cabeçalho da Tabela---}
{    par.ASet(WPAT_BOXWIDTH, WPCentimeterToTwips(3));
    par.ASet(WPAT_BoxWidth_PC, 50);
    par.ASet(WPAT_BoxMarginLeft, WPCentimeterToTwips(-25));}


    if (RowNr > 2) and (ColNr = 1) then
       pDataSet.Next;

    if (RowNr) = 1 then begin
       par.ASetColumn(WPAT_Alignment, Integer(paralCenter));
       par.ASetColumn(WPAT_COLUMNS, pTamCol[ColNr-1]);
       par.SetText(pTitCol[ColNr-1]);
       par.ASet(WPAT_ParProtectStyle, 1);
       par.ASetColor(WPAT_FGColor, $A0A0A0);
    end else if assigned(wprt) then  begin
       if (RowNr and 1) = 0 then
        par.Style := wprt.ParStyles.GetID('evenstyle')
     else
        par.Style := wprt.ParStyles.GetID('oddstyle');

        if trim(PNomCol[ColNr-1])<>'' then
           begin

           if pFormato[ColNr-1]<>'' then
              begin
              if pFormato[ColNr-1]='CC' then
                 begin
                  par.ASet(WPAT_Alignment, Integer(paralCenter));
                  par.SetText(pDataSet.fieldByName(PNomCol[ColNr-1]).AsString);
                  end
              else
                  begin
                  par.ASet(WPAT_Alignment, Integer(paralRight));
                 if pFormato[ColNr-1]='DD' then
                    par.SetText(pDataSet.fieldByName(PNomCol[ColNr-1]).AsString)
                 else if pFormato[ColNr-1]=fdt2 then
                    par.SetText(FormatFloat(pFormato[ColNr-1], pDataSet.fieldByName(PNomCol[ColNr-1]).AsDateTime))
                 else
                    par.SetText(FormatFloat(pFormato[ColNr-1], pDataSet.fieldByName(PNomCol[ColNr-1]).AsFloat));
                 end;
              end
           else
              par.SetText(pDataSet.fieldByName(PNomCol[ColNr-1]).AsString);
           end;
        inc(FCellNr);
     end;
   finally
     FreeAndNil(wprt);
   end;
end;

procedure TFrm_IndEnv_Fab.ReplaceTags(var Editor: TWPRichText; LocTexto: String);
var
  Localizar : String;
  BlobStream: TStream;
begin

try
  Localizar := '['+LocTexto+']';
  with Editor.Finder do begin
     wildcard := '*';
     ToStart;

     try
       wp_texto.Finder.ToStart;
       while wp_texto.Finder.Next(Localizar) do begin
          wp_texto.CPPosition       := wp_texto.Finder.FoundPosition;
          wp_texto.Finder.FoundText := '';
          if Localizar = '[CHAVE]' then
             wp_texto.Finder.FoundText := MCHAVE.Text;
          if Localizar = '[DATA]' then
             wp_texto.Finder.FoundText := FormatDateTime('dd/mm/yyy',Date);
          if Localizar = '[DATA_FAB]' then
             wp_texto.Finder.FoundText := MDATA.Text;
          if Localizar = '[DATA_VENC]' then
             wp_texto.Finder.FoundText := MDATAVEN.Text;
          if Localizar = '[LOTE]' then
             wp_texto.Finder.FoundText := MNUMLOT.Text;
          if Localizar = '[PRODUTO]' then
             wp_texto.Finder.FoundText := CODPRO.Text;
          if Localizar = '[NOME_PRODUTO]' then
             wp_texto.Finder.FoundText := fBuscarValor(1,CB_NOMPRO.Text);
          if Localizar = '[QTDE_TEORICA]' then
             wp_texto.Finder.FoundText := QTDPREV.Text;
          if Localizar = '[NOME_EMPRESA]' then
             wp_texto.Finder.FoundText := DM1.Tb_EmpFANTASIA.AsString;
          if Localizar = '[MP00_01]' then
             fCriarGrades(0);
          if Localizar = '[MP00_02]' then
             fCriarGrades(0);
          if Localizar = '[MP00_03]' then
             fCriarGrades(0);
          if Localizar = '[MP00_04]' then
             fCriarGrades(0);
          if Localizar = '[MP00_05]' then
             fCriarGrades(0);
          if Localizar = '[MP00_06]' then
             fCriarGrades(0);
          if Localizar = '[MP00_07]' then
             fCriarGrades(0);
          if Localizar = '[MP00_08]' then
             fCriarGrades(0);
          if Localizar = '[MP00_09]' then
             fCriarGrades(0);
          if Localizar = '[MP00_10]' then
             fCriarGrades(0);
          if Localizar = '[MP01_01]' then
             fCriarGrades(1);
          if Localizar = '[MP01_02]' then
             fCriarGrades(1);
          if Localizar = '[MP01_03]' then
             fCriarGrades(1);
          if Localizar = '[MP01_04]' then
             fCriarGrades(1);
          if Localizar = '[MP01_05]' then
             fCriarGrades(1);
          if Localizar = '[MP01_06]' then
             fCriarGrades(1);
          if Localizar = '[MP01_07]' then
             fCriarGrades(1);
          if Localizar = '[MP01_08]' then
             fCriarGrades(1);
          if Localizar = '[MP01_09]' then
             fCriarGrades(1);
          if Localizar = '[MP01_10]' then
             fCriarGrades(1);
          if Localizar = '[ENV00_01]' then
             begin
             fAbreCadop03(0);
             fCriarGrades(30);
             end;
          if Localizar = '[ENV00_02]' then
             begin
             fAbreCadop03(1);
             fCriarGrades(31);
             end;
          if Localizar = '[ENV00_03]' then
             begin
             fAbreCadop03(0);
             fCriarGrades(32);
             end;
          if Localizar = '[ENV00_04]' then
             fCriarGrades(2);
          if Localizar = '[ENV00_05]' then
             fCriarGrades(2);
          if Localizar = '[ENV00_06]' then
             fCriarGrades(2);
          if Localizar = '[ENV00_07]' then
             fCriarGrades(2);
          if Localizar = '[ENV00_08]' then
             fCriarGrades(2);
          if Localizar = '[ENV00_09]' then
             fCriarGrades(2);
          if Localizar = '[ENV00_10]' then
             fCriarGrades(2);
       end;
       wp_texto.DelayedReformat;
     finally
       FreeAndNil(wprt);
     end;

  end;
  Editor.Refresh;
except
   end;
end;


function TFrm_IndEnv_Fab.fAbreCadop03(pTipo: Integer): Boolean;
begin

Tb_Op03.Close;
Tb_Op03.SQL.Clear;
Tb_Op03.SQL.add('Select OP3_CODEMP , '
                   +'  OP3_CODIGO, '
                   +'  OP3_SEQ, '
                   +'  OP3_CODMAT, '
                   +'  OP3_NUMERO, '
                   +'  OP3_QTDPREV, '
                   +'  OP3_QTDUTIL, '
                   +'  OP3_QTDUTIL_MOTIVO, '
                   +'  OP3_PU, '
                   +'  OP3_LOTSEQ, '
                   +'  OP3_FABENV, '
                   +'  OP3_LOTE, '
                   +'  OP3_LOTE_RE,'
                   +'  OP3_DTVCTO, '
                   +'  OP3_DTFAB, '
                   +'  OP3_LOTE_RE,'
                   +'  OP3_SITMP, '
                   +'  OP3_ORIGEM '
                   +'  ,PDCODPRO '
                   +'  ,PDNOME '
                   +'  ,PDUND '
                   +'  ,PDNOME2 '
                   +'  ,     CASE WHEN OP3_QTDPREV>0 AND OP3_QTDUTIL>0 AND OP3_QTDPREV<>OP3_QTDUTIL THEN '
                   +'       (OP3_QTDPREV-OP3_QTDUTIL) * 100 / OP3_QTDPREV '
                   +'       ELSE 0 END AS PERC_PERDAS '

                   +' ,PDCODGRU AS CODGRU '
                   +' ,PDNOMGRU AS NOMGRU '
                   +' ,PDMARCA '

                   +'   from CADOP03,CADPRO '
                   +'   where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP3_CODEMP=0'+IntTostr(codemp)+' and ')
                   +' OP3_FABENV=0'+IntToStr(ptipo)
                   +' and OP3_LOTSEQ=0'+IntToStr(mLotSeqIndFab)
                   +' and OP3_CODIGO=0'+Trim(Frm_IndEnv_Fab.MCHAVE.Text)
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and OP3_CODEMP=0'+IntTostr(codemp))
                   +' and PDCODPRO=OP3_CODMAT '
                   +' order by OP3_SEQ, PDNOME ');

// Tb_Op03.sql.savetofile('c:\OP03.txt');

try

   Tb_Op03.Open;
except
   Tb_Op03.sql.savetofile(mpastatemp +'sql.txt');
   end;
result:=true;

end;
procedure TFrm_IndEnv_Fab.btnImpressaoClick(Sender: TObject);
begin
   if chk_selecao.Checked then begin
      if (ValInt(Edit1.Text) > 0) and (ValInt(Edit2.Text) > 0) then begin
         if ValInt(Edit2.Text) >= ValInt(Edit1.Text) then
            wp_texto.PrintPages(ValInt(Edit1.Text),ValInt(Edit2.Text))
         else begin
            fmensagem('Página Inicial maior que a Página Final!',0,['0'],0);
            Edit1.SetFocus;
            Exit;
         end;
      end;
   end else
      wp_texto.Print;
end;

procedure TFrm_IndEnv_Fab.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
   if not (Key in['0'..'9',Chr(8)]) then
      Key:= #0;
end;

procedure TFrm_IndEnv_Fab.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
   if not (Key in['0'..'9',Chr(8)]) then
      Key:= #0;
end;

procedure TFrm_IndEnv_Fab.chk_selecaoClick(Sender: TObject);
begin
   if chk_selecao.Checked then begin
      Edit1.Enabled := True;
      Edit2.Enabled := True;
      Edit1.SetFocus;
   end else begin
      Edit1.Enabled := False;
      Edit2.Enabled := False;
   end;
end;

procedure TFrm_IndEnv_Fab.bb_materia_primaClick(Sender: TObject);
begin
if not cb_EstNeg.Checked then
  begin
  if not fTestaEstoqueNegativo(1) then
    exit;
  end;

if SITMP = 0 then
  begin
  SITMP:=1;
  if fpconfirmar(SITMP)=True then
     begin
     DM3.Tb_Op01.Edit;
     DM3.Tb_Op01OP1_STATUS.Value:=0;
     DM3.Tb_Op01OP1_SITMP.Value:=SITMP;
     DM3.Tb_Op01.Post;
     fmensagem('Materias-Primas Baixados!!!!',0,['0'],0);
     end;
  end
else if SITMP>0 then
  begin
  fmensagem('Ja Foram Baixados!!!!',0,['0'],0);
  end;
end;

procedure TFrm_IndEnv_Fab.CB_NOMPROClick(Sender: TObject);
var
mCodpro: String;
begin
if CB_NOMPRO.ItemIndex<>-1 then
   mCodpro:=fBuscarValor(0,CB_NOMPRO.Text);
mCodpro:=fdeixanum(mCodpro);
if fsonumero(mcodpro)>0 then
   begin
   CODPRO.Text:=mCodpro;
   CODPROExit(self);
   end;
end;


function TFrm_IndEnv_Fab.FSubstituirCabecalho(pSecao: Integer; pAchar,pSubstituir: Olevariant):Boolean;
var
All,Replace,Wrap: OleVariant;
HdrRange: Range;

begin
result:=true;
try
   HdrRange :=
   WordDoc.Sections.Item(psecao).Headers.Item(wdHeaderFooterPrimary).Range;
   Wrap := wdFindContinue;
   Replace := wdReplaceAll;
   All:=wdReplaceAll;
   HdrRange.Find.Execute(pAchar,                        //01
                       EmptyParam,                      //02
                       EmptyParam,                      //03
                       EmptyParam,                      //04
                       EmptyParam,                      //05
                       EmptyParam,                      //06
                       EmptyParam,                      //06
                       Wrap,                      //08
                       EmptyParam,                      //09
                       pSubstituir,      //  EmptyParam,                      //10

                       replace,                      //10
                       EmptyParam,                      //13
 //                      Substituir,                      //11
                       EmptyParam,                      //13
 //                       all,                             //12
                      EmptyParam,                      //13
//                       EmptyParam,                      //13
                       EmptyParam                               );                     //16
except
   result:=false;
   end;
end;

function TFrm_IndEnv_Fab.FSubstituirCabecalho_PrimPag(pSecao: Integer; pAchar,pSubstituir: Olevariant):Boolean;
var
All,Replace,Wrap: OleVariant;
HdrRange: Range;

begin
result:=true;
try
   HdrRange :=
   WordDoc.Sections.Item(psecao).Headers.Item(wdHeaderFooterFirstPage).Range;
   Wrap := wdFindContinue;
   Replace := wdReplaceAll;
   All:=wdReplaceAll;
   HdrRange.Find.Execute(pAchar,                        //01
                       EmptyParam,                      //02
                       EmptyParam,                      //03
                       EmptyParam,                      //04
                       EmptyParam,                      //05
                       EmptyParam,                      //06
                       EmptyParam,                      //06
                       Wrap,                      //08
                       EmptyParam,                      //09
                       pSubstituir,      //  EmptyParam,                      //10

                       replace,                      //10
                       EmptyParam,                      //13
 //                      Substituir,                      //11
                       EmptyParam,                      //13
 //                       all,                             //12
                      EmptyParam,                      //13
//                       EmptyParam,                      //13
                       EmptyParam                               );                     //16
except
   result:=false;
   end;


{
01-FindText	Optional	Variant	The text to be searched for. Use an empty string ("") to search for formatting only. You can search for special characters by specifying appropriate character codes. For example, "^p" corresponds to a paragraph mark and "^t" corresponds to a tab character.
02-MatchCase	Optional	Variant	True to specify that the find text be case sensitive. Corresponds to the Match case check box in the Find and Replace dialog box (Edit menu).
03-MatchWholeWord	Optional	Variant	True to have the find operation locate only entire words, not text that is part of a larger word. Corresponds to the Find whole words only check box in the Find and Replace dialog box.
04-MatchWildcards	Optional	Variant	True to have the find text be a special search operator. Corresponds to the Use wildcards check box in the Find and Replace dialog box.
05-MatchSoundsLike	Optional	Variant	True to have the find operation locate words that sound similar to the find text. Corresponds to the Sounds like check box in the Find and Replace dialog box.
06-MatchAllWordForms	Optional	Variant	True to have the find operation locate all forms of the find text (for example, "sit" locates "sitting" and "sat"). Corresponds to the Find all word forms check box in the Find and Replace dialog box.
07-Forward	Optional	Variant	True to search forward (toward the end of the document).
08-Wrap	Optional	Variant	Controls what happens if the search begins at a point other than the beginning of the document and the end of the document is reached (or vice versa if Forward is set to False). This argument also controls what happens if there is a selection or range and the search text is not found in the selection or range. Can be one of the WdFindWrap constants.
09-Format	Optional	Variant	True to have the find operation locate formatting in addition to, or instead of, the find text.
10-ReplaceWith	Optional	Variant	The replacement text. To delete the text specified by the Find argument, use an empty string (""). You specify special characters and advanced search criteria just as you do for the Find argument. To specify a graphic object or other nontext item as the replacement, move the item to the Clipboard and specify "^c" for ReplaceWith.
11-Replace	Optional	Variant	Specifies how many replacements are to be made: one, all, or none. Can be any WdReplace constant.
12-MatchKashida	Optional	Variant	True if find operations match text with matching kashidas in an Arabic-language document. This argument may not be available to you, depending on the language support (U.S. English, for example) that you have selected or installed.
13-MatchDiacritics	Optional	Variant	True if find operations match text with matching diacritics in a right-to-left language document. This argument may not be available to you, depending on the language support (U.S. English, for example) that you have selected or installed.
14-MatchAlefHamza	Optional	Variant	True if find operations match text with matching alef hamzas in an Arabic-language document. This argument may not be available to you, depending on the language support (U.S. English, for example) that you have selected or installed.
15-MatchControl	Optional	Variant	True if find operations match text with matching bidirectional control characters in a right-to-left language document. This argument may not be available to you, depending on the language support (U.S. English, for example) that you have selected or installed.
16-MatchPrefix	Optional	Variant	True to match words beginning with the search string. Corresponds to the Match prefix check box in the Find and Replace dialog box.
17-MatchSuffix	Optional	Variant	True to match words ending with the search string. Corresponds to the Match suffix check box in the Find and Replace dialog box.
18-MatchPhrase	Optional	Variant	True ignores all white space and control characters between words.
19-IgnoreSpace	Optional	Variant	True ignores all white space between words. Corresponds to the Ignore white-space characters check box in the Find and Replace dialog box.
20-IgnorePunct	Optional	Variant	True ignores all punctuation characters between words. Corresponds to the Ignore punctuation check box in the Find and Replace dialog box.
}

{
meters
Name	Required/Optional	Data Type	Description
FindText	Optional	Variant	The text to be searched for. Use an empty string ("") to search for formatting only. You can search for special characters by specifying appropriate character codes. For example, "^p" corresponds to a paragraph mark and "^t" corresponds to a tab character.
MatchCase	Optional	Variant	True to specify that the find text be case sensitive. Corresponds to the Match case check box in the Find and Replace dialog box (Edit menu).
MatchWholeWord	Optional	Variant	True to have the find operation locate only entire words, not text that is part of a larger word. Corresponds to the Find whole words only check box in the Find and Replace dialog box.
MatchWildcards	Optional	Variant	True to have the find text be a special search operator. Corresponds to the Use wildcards check box in the Find and Replace dialog box.
MatchSoundsLike	Optional	Variant	True to have the find operation locate words that sound similar to the find text. Corresponds to the Sounds like check box in the Find and Replace dialog box.
MatchAllWordForms	Optional	Variant	True to have the find operation locate all forms of the find text (for example, "sit" locates "sitting" and "sat"). Corresponds to the Find all word forms check box in the Find and Replace dialog box.
Forward	Optional	Variant	True to search forward (toward the end of the document).
Wrap	Optional	Variant	Controls what happens if the search begins at a point other than the beginning of the document and the end of the document is reached (or vice versa if Forward is set to False). This argument also controls what happens if there is a selection or range and the search text is not found in the selection or range. Can be one of the WdFindWrap constants.
Format	Optional	Variant	True to have the find operation locate formatting in addition to, or instead of, the find text.
ReplaceWith	Optional	Variant	The replacement text. To delete the text specified by the Find argument, use an empty string (""). You specify special characters and advanced search criteria just as you do for the Find argument. To specify a graphic object or other nontext item as the replacement, move the item to the Clipboard and specify "^c" for ReplaceWith.
Replace	Optional	Variant	Specifies how many replacements are to be made: one, all, or none. Can be any WdReplace constant.
MatchKashida	Optional	Variant	True if find operations match text with matching kashidas in an Arabic-language document. This argument may not be available to you, depending on the language support (U.S. English, for example) that you have selected or installed.
MatchDiacritics	Optional	Variant	True if find operations match text with matching diacritics in a right-to-left language document. This argument may not be available to you, depending on the language support (U.S. English, for example) that you have selected or installed.
MatchAlefHamza	Optional	Variant	True if find operations match text with matching alef hamzas in an Arabic-language document. This argument may not be available to you, depending on the language support (U.S. English, for example) that you have selected or installed.
MatchControl	Optional	Variant	True if find operations match text with matching bidirectional control characters in a right-to-left language document. This argument may not be available to you, depending on the language support (U.S. English, for example) that you have selected or installed.
MatchPrefix	Optional	Variant	True to match words beginning with the search string. Corresponds to the Match prefix check box in the Find and Replace dialog box.
MatchSuffix	Optional	Variant	True to match words ending with the search string. Corresponds to the Match suffix check box in the Find and Replace dialog box.
MatchPhrase	Optional	Variant	True ignores all white space and control characters between words.
IgnoreSpace	Optional	Variant	True ignores all white space between words. Corresponds to the Ignore white-space characters check box in the Find and Replace dialog box.
IgnorePunct	Optional	Variant	True ignores all punctuation characters between words. Corresponds to the Ignore punctuation check box in the Find and Replace dialog box.
}
end;




function TFrm_IndEnv_Fab.FSubstituirCabecalho_Events(pSecao: Integer; pAchar,pSubstituir: Olevariant):Boolean;
var
All,Replace,Wrap: OleVariant;
HdrRange: Range;

begin
result:=true;
try
   HdrRange :=
   WordDoc.Sections.Item(psecao).Headers.Item(wdHeaderFooterEvenPages).Range;
   Wrap := wdFindContinue;
   Replace := wdReplaceAll;
   All:=wdReplaceAll;
   HdrRange.Find.Execute(pAchar,                        //01
                       EmptyParam,                      //02
                       EmptyParam,                      //03
                       EmptyParam,                      //04
                       EmptyParam,                      //05
                       EmptyParam,                      //06
                       EmptyParam,                      //06
                       Wrap,                      //08
                       EmptyParam,                      //09
                       pSubstituir,      //  EmptyParam,                      //10

                       replace,                      //10
                       EmptyParam,                      //13
 //                      Substituir,                      //11
                       EmptyParam,                      //13
 //                       all,                             //12
                      EmptyParam,                      //13
//                       EmptyParam,                      //13
                       EmptyParam                               );                     //16
except
   result:=false;
   end;
end;


function TFrm_IndEnv_Fab.FSubstituirRodape(pSecao: Integer; pAchar,pSubstituir: Olevariant):Boolean;
var
All,Replace,Wrap: OleVariant;
HdrRange: Range;


begin
result:=true;
try

   HdrRange :=
   WordDoc.Sections.Item(psecao).Footers.Item(wdHeaderFooterPrimary).Range;
   Wrap := wdFindContinue;
   Replace := wdReplaceAll;
   All:=wdReplaceAll;

   HdrRange.Find.Execute(pAchar,                        //01
                       EmptyParam,                      //02
                       EmptyParam,                      //03
                       EmptyParam,                      //04
                       EmptyParam,                      //05
                       EmptyParam,                      //06
                       EmptyParam,                      //06
                       Wrap,                      //08
                       EmptyParam,                      //09
                       pSubstituir,      //  EmptyParam,                      //10

                       replace,                      //10
                       EmptyParam,                      //13
 //                      Substituir,                      //11
                       EmptyParam,                      //13
 //                       all,                             //12
                      EmptyParam,                      //13
//                       EmptyParam,                      //13
                       EmptyParam                               );                     //16
except
   result:=false;
   end;
end;


function TFrm_IndEnv_Fab.fSubstituirCorpo(pAchar,pSubstituir: Olevariant):Boolean ;
var
All, SubsTodos : OleVariant;
begin
SubsTodos:=true;

    pachar:=trim(pachar);
    psubstituir:=trim(psubstituir);

    WordDoc.Content.Find.ClearFormatting;


    WordDoc.Content.Find.Text:=pAchar;

    try
       WordDoc.Content.Find.Replacement.Text := pSubstituir;
    except
       WordDoc.Content.Find.Replacement.Text := copy(pSubstituir,1,60);
       end;
//    WordDoc.Content.Find.Forward := True;
    WordDoc.Content.Find.MatchAllWordForms := False;
    WordDoc.Content.Find.MatchCase := True;
    WordDoc.Content.Find.MatchWildcards := False;
    WordDoc.Content.Find.MatchSoundsLike := False;
    WordDoc.Content.Find.MatchWholeWord := False;
    WordDoc.Content.Find.MatchFuzzy := False;
    WordDoc.Content.Find.Wrap := wdFindContinue;
    WordDoc.Content.Find.Format := False;
    WordDoc.Content.Find.Format := true;
    { Perform the search}
    All:=wdReplaceAll;


    try
        WordDoc.Content.Find.Execute(pAchar
                                      ,EmptyParam
                                      ,EmptyParam
                                      ,EmptyParam
                                      ,EmptyParam
                                      ,EmptyParam
                                      ,SubsTodos
                                      ,EmptyParam
                                      ,EmptyParam
                                      ,pSubstituir
                                      ,All
                                      ,EmptyParam
//                                      ,SubsTodos é essa
                                      ,EmptyParam
                                      ,EmptyParam
                                      ,EmptyParam
                                      );

    except
       begin
       pSubstituir:=copy(pSubstituir,1,60);
        WordDoc.Content.Find.Execute(pAchar
                                      ,EmptyParam
                                      ,EmptyParam
                                      ,EmptyParam
                                      ,EmptyParam
                                      ,EmptyParam
                                      ,SubsTodos
                                      ,EmptyParam
                                      ,EmptyParam
                                      ,pSubstituir
                                      ,All
                                      ,EmptyParam
//                                      ,SubsTodos é essa
                                      ,EmptyParam
                                      ,EmptyParam
                                      ,EmptyParam
                                      );

       end;

       end;

end;

function tFrm_IndEnv_Fab.fValidarTag(pTag,pNome: String):Boolean;
var
mTam: Integer;
begin
if length(pTag)>length(pnome) then
   result:=false
else if uppercase(pTag)=uppercase(pnome) then
   result:=true
else
   begin
   pTag:=UpperCase(pTag);
   pNome:=UpperCase(pNome);
   mTam:=length(pTag);
   if pTag<>copy(pNome,1,mTam) then
      result:=false
   else if copy(pNome,mtam+1,1)='_' then
      result:=true
   else
      result:=false;
   end;


end;

function tFrm_IndEnv_Fab.fIncluirGrade(pBookMark,pTamColunas: String; pGrade:TStrings;pTamCol,pQtdCol,pItem,pLinhaFixa: Integer;pFundo,pAlinhamento,pMesClar: TStrings): Boolean;

var
NumCols, Autofit: OleVariant;

Separator,tBNm,Formato,Direction: OleVariant;
y,x: Integer;
R: Range;
y_grade,x_grade: Integer;

mItem: Integer;
mTamcolIni: OleVariant;
mBookExist: TStrings;
mNomeTag: String;
begin
mBookExist:=TStringList.Create;
mBookExist.Clear;
Direction := wdCollapseEnd;

x_grade:=wordDoc.Bookmarks.Count;

for y:=1 to x_grade do
   begin
   mTamcolIni:=y;

//   WordDoc.Bookmarks.Item(y).Name;
   mBookExist.Add(string(WordDoc.Bookmarks.Item(mTamcolIni).Name));
//   mcinst2:=nome;
//   mcinst:=mcinst+IntTostr(y)+'('+mcinst2+') ';
   end;

{
//ShowMessage(inttoStr(wordDoc.Bookmarks.Count)+' Nomes : '+mcinst);
}

              mcontgrade:=mcontgrade+1;
//              pGrade.SaveToFile('c:\qtdgrade\grade'+inttostr(mcontgrade)+'.txt');

for y_grade:=0 to x_grade-1 do
   begin
   mNomeTag:=mBookExist[y_grade];
   if not fValidarTag(pBookMark,mNomeTag) then
      continue;

   TBNm:=mNomeTag;
   try
      R := WordDoc.Bookmarks.Item(TBNm).Range;
   except
      result:=false;
      exit;
      end;
   if R=nil then
      begin
      result:=false;
      exit;
      end;
   R.Collapse(Direction);
   for x:=0 to pGrade.Count-1 do
      begin
      R.InsertAfter(pGrade[x]);

      end;

   Separator := '|';


   NumCols := pQtdcol;
   Autofit := true;
   if ptamcol<40 then
      mTamcolIni:=40
   else
      mTamcolIni:=pTamCol;
   Formato := wdTableFormatGrid1;

   R.ConvertToTableOld(Separator, EmptyParam, NumCols,
   mTamColIni, Formato, EmptyParam,
   EmptyParam, EmptyParam, EmptyParam,
   EmptyParam, EmptyParam, EmptyParam,
   EmptyParam, Autofit);
//   mNumero_Tabela:=mNumero_Tabela+1;




//      r.Columns.Item(2).SetWidth(50, wdAdjustNone);
      { Change borders }

//      r.Rows.First.Borders.Item(wdBorderBottom).LineStyle :=
//      wdLineStyleDouble;

   mItem:=pFundo.Count;
   for x:=1 to mItem do
      begin
      R.Tables.Item(1).Cell(valint(fBuscarValor(0,pfundo[x-1])),
                            valint(fBuscarValor(1,pfundo[x-1]))
                            ).Shading.Texture := wdTexture20Percent;

{      R.Tables.Item(1).Cell(valint(fBuscarValor(0,pfundo[x-1])),
                            valint(fBuscarValor(1,pfundo[x-1]))
                            ).Shading.Texture := wdTexture5Percent;
}
      end;


   mItem:=pAlinhamento.Count;
   for x:=1 to mItem do
      begin
      TRY
         R.Tables.Item(1).Cell(valint(fBuscarValor(0,pAlinhamento[x-1])),
                            valint(fBuscarValor(1,pAlinhamento[x-1]))
                            ).Range.ParagraphFormat.Alignment:= valint(fBuscarValor(2,pAlinhamento[x-1]));
      finally
         end;

      end;
//   R.Tables.Item(1).MergeCells;

//  R.Tables.Item(1).Cell(1,1).Merge(R.Tables.Item(1).Cell(1,pQtdCol));
{
 Tbl := Doc.Tables.Add(R, 3, 6, EmptyParam, EmptyParam);
  Tbl.Cell(1, 1).Merge(Tbl.Cell(1, 5));
  Tbl.Cell(2, 1).Merge(Tbl.Cell(3, 2));
}

      if fsonumero(pTamColunas)>0 then
         begin
         for x:=1 to pQtdCol do
            begin
            if valint(fBuscarValor(x-1,pTamColunas))>0 then
               r.Tables.Item(1).Columns.Item(x).Width:=valint(fBuscarValor(x-1,pTamColunas));
            end;
         end;
   end;
{
ShowMessage(pMesClar.Text+#13
           +'valor 0 '+fBuscarValor(0,pMesClar[0])+#13
           +'valor 1 '+fBuscarValor(1,pMesClar[0])+#13
           +'valor 2 '+fBuscarValor(2,pMesClar[0])+#13
           +'valor 3 '+fBuscarValor(3,pMesClar[0])
             );
}
if R=nil then
   result:=false
else
   begin
   result:=true;
   for x:=0 to pMesClar.Count-1 do
      begin
      if ValInt(pMesClar[x])>0 then
         begin
{
            ShowMessage(pMesClar.Text+#13
              +'valor 0 '+fBuscarValor(0,pMesClar[X])+#13
              +'valor 1 '+fBuscarValor(1,pMesClar[X])+#13
              +'valor 2 '+fBuscarValor(2,pMesClar[X])+#13
              +'valor 3 '+fBuscarValor(3,pMesClar[X])+#13
              +' TABLES '+IntToStr(R.Tables.Count));
}
   //      R.Tables.Item(valint(fBuscarValor(0,pMesClar[x])), 1).Cell(1,1).Merge(R.Tables.Item(1).Cell(1,5))
   //      R.Tables.Item(valint(fBuscarValor(0,pMesClar[x]))).Cell(1,valint(fBuscarValor(1,pMesClar[x]))).Merge(R.Tables.Item(valint(fBuscarValor(0,pMesClar[x]))).Cell(1,valint(fBuscarValor(2,pMesClar[x]))));
//           R.Tables.Item(mNumero_Tabela).Cell(valint(fBuscarValor(0,pMesClar[x])),valint(fBuscarValor(1,pMesClar[x]))).Merge(R.Tables.Item(mNumero_Tabela).Cell(valint(fBuscarValor(0,pMesClar[x])),valint(fBuscarValor(2,pMesClar[x]))));
           R.Tables.Item(1).Cell(valint(fBuscarValor(0,pMesClar[x])),valint(fBuscarValor(1,pMesClar[x]))).Merge(R.Tables.Item(1).Cell(valint(fBuscarValor(0,pMesClar[x])),valint(fBuscarValor(2,pMesClar[x]))));

   //      R.Tables.Item(1).Cell(1,valint(fBuscarValor(valint(fBuscarValor(0,pMesClar[x])),pMesClar[x]))).Merge(R.Tables.Item(1).Cell(1,valint(fBuscarValor(valint(fBuscarValor(0,pMesClar[x])),pMesClar[x]))));

   //fBuscarValor(pCampo: Integer;pTexto:String)
         end;
      end;
    end;

{
if pMesclar_Ini>0 then
//      R.Tables.Item(1).Cell(1,1).Merge(R.Tables.Item(1).Cell(1,5))
      R.Tables.Item(1).Cell(2,pMesclar_Ini).Merge(R.Tables.Item(1).Cell(2,pMesclar_Fin));
//   else
//      begin
}
end;
procedure TFrm_IndEnv_Fab.edt_chaveChange(Sender: TObject);
var
Query_Op01: TQuery;
Query_Op02: TQuery;
begin
if fsonumero(edt_chave.Text)>0 then
   begin
   Query_Op01:=TQuery.Create(nil);
   Query_Op01.DatabaseName:='SG_ASSOC';
   Query_Op01.Close;
   Query_Op01.SQL.Clear;
   Query_Op01.SQL.Add('Select OP1_CODIGO,OP1_DATA,OP1_DATAVEN,OP1_STATUS from CADOP01 where '
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP1_CODEMP=0'+IntTostr(codemp)+' and ')
                      +' OP1_FABENV=0'
                      +' and OP1_LOTSEQ=0'+IntToStr(mLotSeqIndFab)
                      +' and OP1_CODIGO=0'+fdeixanum(edt_chave.Text));
   Query_Op01.Open;
   if Query_Op01.Eof then
      begin
      FreeAndNil(Query_Op01);
      exit;
      end;
   Query_Op02:=TQuery.Create(nil);
   Query_Op02.DatabaseName:='SG_ASSOC';

   Query_Op02.Close;
   Query_Op02.SQL.Clear;
   Query_Op02.SQL.add('Select OP2_CODEMP, '
                   +'       OP2_CODIGO, '
                   +'       OP2_SEQ, '
                   +'       OP2_CODPRO, '
                   +'       OP2_NUMERO, '
                   +'       OP2_QTDPREV, '
                   +'       OP2_QTDPROD, '
                   +'       OP2_PU, '
                   +'       OP2_LOTSEQ, '
                   +'       OP2_FABENV, '
                   +'       OP2_DTVCTO, '
                   +'       OP2_DTFAB, '
                   +'       OP2_FAB_CHORI, '
                   +'       OP2_FAB_CODIGO, '
                   +'       OP2_FAB_LOTE, '
                   +'       OP2_FAB_VCTO, '
                   +'       OP2_FAB_DTFAB, '
                   +'       OP2_FAB_QTD, '
                   +'       OP2_FAB_PU, '
                   +'       OP2_SITACAB, '
                   +'       OP2_ORIGEM, '
                   +'       CASE WHEN OP2_QTDPREV>0 AND OP2_QTDPROD>0 AND OP2_QTDPREV<>OP2_QTDPROD THEN '
                   +'       (OP2_QTDPREV-OP2_QTDPROD) * 100 / OP2_QTDPREV '
                   +'       ELSE 0 END AS PERC_PERDAS, '
                   
                   +'       PDNOME '
                   +'       ,PDMARCA '
                   +'       ,PDUND '
                   +'       ,PDQTDGRML,PDPRZVAL,PDREGMS '
                   +'       ,PDCODGRU AS CODGRU '
                   +'       ,PDNOMGRU AS NOMGRU '
                   +' from CADOP02,CADPRO '
                   +' where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',
                   ' OP2_CODEMP=0'+IntTostr(codemp)+' and PDCODEMP=OP2_CODEMP and ' )
                   +' OP2_FABENV=0 and '
                   +' OP2_LOTSEQ=0'+IntToStr(mLotSeqIndFab)
                   +' and OP2_CODIGO=0'+fdeixanum(edt_chave.Text)
                   +' AND PDCODPRO=OP2_CODPRO '
                   +' order by OP2_SEQ, PDNOME');
   Query_Op02.Open;


   if Query_Op01.fieldbyname('OP1_DATAVEN').Value<=pdatanula then
      edt_dtvcto.Text    :='/  /'
   else
      edt_dtvcto.Text       :=Query_Op01.fieldbyname('OP1_DATAVEN').Value;


   if Query_Op01.fieldbyname('OP1_DATFAB').Value<=pdatanula then
      edt_dt_fab.Text    :='/  /'
   else
      edt_dt_fab.Text       :=Query_Op01.fieldbyname('OP1_DATAVEN').Value;

   if (Query_Op01.fieldbyname('OP1_STATUS').IsNull) or (Query_Op01.fieldbyname('OP1_STATUS').AsInteger<2) then
      status_et01.Caption:='Pendente'
   else if Query_Op01.fieldbyname('OP1_STATUS').AsInteger=2 then
      status_et01.Caption:='Confirmado'
   else
      status_et01.Caption:='Indefinido';
   edt_chave.Text     :=Query_Op01.fieldbyname('OP1_CODIGO').AsString;
   edt_et01_data.Text :=formatDateTime(fdt2,  Query_Op01.fieldbyname('OP1_DATA').AsDateTime);
   edt_codpro.Text    :=Query_Op02.fieldbyName('OP2_CODPRO').AsString;
   edt_nompro.Text    :=Query_Op02.fieldbyName('PDNOME').AsString;
   edt_qtdteorica.Text:=FormatFloat(mcasqtd,  Query_Op02.fieldbyName('OP2_QTDPREV').AsFloat);
   edt_qtdprod.Text   :=FormatFloat(mcasqtd,  Query_Op02.fieldbyName('OP2_QTDPROD').AsFloat);

   edt_val.Text       :=Query_Op02.fieldbyName('PDPRZVAL').AsString;
   edt_lote.Text      :=Query_Op02.fieldbyName('OP2_FAB_LOTE').AsString;




    Qr_MP_Etapa01.Close;
    Qr_MP_Etapa01.SQL.Clear;
    Qr_MP_Etapa01.SQL.add('Select OP3_CODEMP , '
                       +'  OP3_CODIGO, '
                       +'  OP3_SEQ, '
                       +'  OP3_CODMAT, '
                       +'  OP3_NUMERO, '
                       +'  OP3_QTDPREV, '
                       +'  OP3_QTDUTIL, '
                       +'  OP3_PU, '
                       +'  OP3_LOTSEQ, '
                       +'  OP3_FABENV, '
                       +'  OP3_LOTE, '
                       +'  OP3_LOTE_RE,'
                       +'  CASE WHEN OP3_DTVCTO <'+QuotedStr('02/01/1900')+' THEN NULL ELSE OP3_DTVCTO END AS OP3_DTVCTO, '
                       +'  CASE WHEN OP3_DTFAB <'+QuotedStr('02/01/1900')+' THEN NULL ELSE OP3_DTFAB END AS OP3_DTFAB, '
                       +'  OP3_LOTE_RE,'
                       +'  OP3_SITMP, '
                       +'  OP3_ORIGEM '
                       +'  ,PDCODPRO '
                       +'  ,PDNOME '
                       +'  ,PDUND '
                       +'  ,PDNOME2 '
                       +' ,PDCODGRU AS CODGRU '
                       +' ,PDNOMGRU AS NOMGRU '
                       +' ,PDMARCA, '
                       +'       CPCODEMP, '
                       +'       CPORDEM, '
                       +'       CPCODPRO, '
                       +'       CPNUMERO, '
                       +'       CPCODMAT, '
                       +'       CPCODPRO_ACAB, '
                       +'       CPMPNUM, '
                       +'      CPQUANT, '
                       +'       CPPU, '
                       +'       CPVLRINC, '
                       +'       CPALIQORI, '
                       +'       CPALICMSCRED, '
                       +'       CPICMSCRED, '
                       +'       CPTIPO, '
                       +'       CPQTD_PAD, '
                       +'       CPPERCENT, '
                       +'       CPPERCENT_REST '


                       +'   from CADOP03,CADPRO,CADCOMP '
                       +'   where '
                       +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP3_CODEMP=0'+IntTostr(codemp)+' and ')
                       +' OP3_FABENV=0'+IntToStr(0)
                       +' and OP3_LOTSEQ=0'+IntToStr(mLotSeqIndFab)
                       +' and OP3_CODIGO=0'+fdeixanum(edt_chave.Text)
                       +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and OP3_CODEMP=0'+IntTostr(codemp))
                       +' and PDCODPRO=OP3_CODMAT '
                       +' and CPCODEMP=PDCODEMP '
                       +' and CPCODMAT=OP3_CODMAT '
                       +' and CPCODPRO=0'+Query_Op02.fieldbyName('OP2_CODPRO').AsString
                       +' order by OP3_SEQ, PDNOME ');
//    Qr_MP_Etapa01.sql.savetofile(mpastatemp +'sql.txt');

    try
       Qr_MP_Etapa01.Open;
    except
       Qr_MP_Etapa01.sql.savetofile(mpastatemp +'sql.txt');
       end;
    FreeAndNil(Query_Op01);
    FreeAndNil(Query_Op02);
   end;


end;

procedure TFrm_IndEnv_Fab.Tb_OP01_AnexoBeforePost(DataSet: TDataSet);
var
query_temp: tquery;
begin
if Tb_OP01_AnexoOPA_CHAVE_OR.AsInteger=0 then
   begin
   Tb_OP01_Anexo.Cancel;
   abort;
   exit;
   end;
if Tb_OP01_AnexoOPA_ETAPA.AsInteger<1 then
   begin
   MessageDlg('Etapa tem que ser colocado!',mtWarning,[mbOk],0);
   abort;
   exit;
   end;
if (mChave_Or_ant=0) or (mChave_Or_Ant<>Tb_OP01_AnexoOPA_CHAVE_OR.AsInteger) then
   begin
   query_temp:=tquery.Create(nil);
   query_temp.DatabaseName:='SG_ASSOC';
   query_temp.close;
   query_temp.SQL.clear;
   query_temp.SQL.Add('Select count(*) from CADOP01_ANEXO '
                      +' where OPA_CHAVE=:CHAVE'
                      +' and OPA_CODEMP=:CODEMP '
                      +' and OPA_LOTSEQ=:LOTSEQ '
                      +' and OPA_CHAVE_OR=:CHAVE_OR ');
   query_temp.ParamByName('CHAVE').AsInteger:=ValInt(MCHAVE.Text);
   query_temp.ParamByName('CODEMP').AsInteger:=codemp;
   query_temp.ParamByName('LOTSEQ').AsInteger:=mLotSeqIndFab;
   query_temp.ParamByName('CHAVE_OR').AsInteger:=Tb_OP01_AnexoOPA_CHAVE_OR.AsInteger;
   query_temp.Open;
   if query_temp.Fields[0].AsInteger>0 then
      begin
      FreeAndNil(query_temp);
      MessageDlg('Chave ja anexada anteriormente!',mtWarning,[mbOk],0);
      abort;
      exit;
      end;
   end;

Tb_OP01_AnexoOPA_LOTSEQ_OR.AsInteger:=mLotSeqIndFab;
Tb_OP01_AnexoOPA_CODEMP_OR.AsInteger:=codemp;


query_temp:=TQuery.Create(nil);
query_temp.DatabaseName:='SG_ASSOC';
query_temp.Close;
query_temp.SQL.Clear;
query_temp.SQL.Add('Select count(*) from CADOP01 where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP1_CODEMP=0'+IntTostr(codemp)+' and ')
                   +' OP1_FABENV=0'
                   +' and OP1_LOTSEQ=0'+IntToStr(mLotSeqIndFab)
                   +' and OP1_CODIGO=0'+fdeixanum(edt_chave.Text));
query_temp.Open;
if query_temp.fields[0].AsInteger<1 then
   begin
   FreeAndNil(query_temp);
   MessageDlg('Chave '+edt_chave.Text+' Não Encontrada!',mtWarning,[mbOk],0);
   abort;
   exit;
   end;


if fsonumero(MCHAVE.Text)=0 then
   begin
   mostramensagem:=false;
   BBGRAVARClick(self);
   mostramensagem:=true;
   end;


end;

procedure TFrm_IndEnv_Fab.Tb_OP01_AnexoAfterInsert(DataSet: TDataSet);
var
query_anexo: tQuery;
begin
if fsonumero(MCHAVE.Text)=0 then
   begin
   mostramensagem:=false;
   BBGRAVARClick(self);
   mostramensagem:=true;
   end;

mAnexo_Etapa_Ant:=0;
mChave_Or_Ant:=0;

query_anexo:=tQuery.Create(nil);
query_anexo.DatabaseName:='SG_ASSOC';
query_anexo.Close;
query_anexo.SQL.Clear;
query_anexo.SQL.Add('select max(OPA_ETAPA) AS ETAPA, max(OPA_SEQ) as SEQ from CADOP01_ANEXO '
                   +' where OPA_CHAVE=:CHAVE'
                   +' and OPA_CODEMP=:CODEMP '
                   +' and OPA_LOTSEQ=:LOTSEQ ');
query_anexo.ParamByName('CHAVE').AsInteger:=ValInt(MCHAVE.Text);
query_anexo.ParamByName('CODEMP').AsInteger:=codemp;
query_anexo.ParamByName('LOTSEQ').AsInteger:=mLotSeqIndFab;
try
   query_anexo.Open;
except
   end;
Tb_OP01_AnexoOPA_CODEMP.Value:=codemp;
Tb_OP01_AnexoOPA_CHAVE.Value :=ValInt(MCHAVE.Text);
Tb_OP01_AnexoOPA_LOTSEQ.Value:=mLotSeqIndFab;
Tb_OP01_AnexoOPA_ETAPA.Value :=query_anexo.fieldbyName('ETAPA').AsInteger+1;
Tb_OP01_AnexoOPA_SEQ.Value   :=query_anexo.fieldbyName('SEQ').AsInteger+1;
freeandnil(query_anexo);


end;

procedure TFrm_IndEnv_Fab.Tb_OP01_AnexoBeforeEdit(DataSet: TDataSet);
begin
mAnexo_Etapa_Ant:=Tb_OP01_AnexoOPA_ETAPA.AsInteger;
mChave_Or_Ant:=Tb_OP01_AnexoOPA_CHAVE_OR.AsInteger;

end;

procedure TFrm_IndEnv_Fab.Tb_OP01_AnexoAfterPost(DataSet: TDataSet);
var
query_temp: Tquery;
begin
query_temp:=Tquery.Create(nil);
query_temp.DatabaseName:='SG_ASSOC';

query_temp.Close;
query_temp.SQL.clear;

if mAnexo_Etapa_Ant=0 then
   begin
   query_temp.SQL.Add('Insert into CADOP01_ANEXO '
                     +'(OPA_CODEMP '
                     +',OPA_CHAVE '
                     +',OPA_LOTSEQ '
                     +',OPA_ETAPA '
                     +',OPA_CHAVE_OR'
                     +',OPA_LOTSEQ_OR'
                     +',OPA_CODEMP_OR'
                     +',OPA_SEQ'
                     +' ) values ( '
                     +':OPA_CODEMP '
                     +',:OPA_CHAVE '
                     +',:OPA_LOTSEQ '
                     +',:OPA_ETAPA '
                     +',:OPA_CHAVE_OR'
                     +',:OPA_LOTSEQ_OR'
                     +',:OPA_CODEMP_OR'
                     +',:OPA_SEQ)');
   end
else
   begin
   query_temp.SQL.Add('Update CADOP01_ANEXO set '
                     +' OPA_ETAPA=:OPA_ETAPA '
                     +',OPA_CHAVE_OR=:OPA_CHAVE_OR'
                     +',OPA_LOTSEQ_OR=:OPA_LOTSEQ_OR'
                     +',OPA_CODEMP_OR=:OPA_CODEMP_OR'
                     +' where OPA_CODEMP=:OPA_CODEMP '
                     +' and OPA_CHAVE=:OPA_CHAVE '
                     +' and OPA_LOTSEQ=:OPA_LOTSEQ'
                     +' and OPA_SEQ=:OPA_SEQ ');
   end;
query_temp.ParamByName('OPA_CODEMP').Value:=Tb_OP01_AnexoOPA_CODEMP.Value;
query_temp.ParamByName('OPA_CHAVE').Value:=Tb_OP01_AnexoOPA_CHAVE.Value;
query_temp.ParamByName('OPA_LOTSEQ').Value:=Tb_OP01_AnexoOPA_LOTSEQ.Value;
query_temp.ParamByName('OPA_ETAPA').Value:=Tb_OP01_AnexoOPA_ETAPA.Value;
query_temp.ParamByName('OPA_CHAVE_OR').Value:=Tb_OP01_AnexoOPA_CHAVE_OR.Value;
query_temp.ParamByName('OPA_LOTSEQ_OR').Value:=Tb_OP01_AnexoOPA_LOTSEQ_OR.Value;
query_temp.ParamByName('OPA_CODEMP_OR').Value:=Tb_OP01_AnexoOPA_CODEMP_OR.Value;
query_temp.ParamByName('OPA_SEQ').Value:=Tb_OP01_AnexoOPA_SEQ.Value;
try
   query_temp.ExecSQL;
   fdm1StartCommit;
except
   end;


if (mAnexo_Etapa_Ant>0) and (mAnexo_Etapa_Ant<>Tb_OP01_AnexoOPA_ETAPA.AsInteger) then
   begin
   query_temp.Close;
   query_temp.SQL.clear;
   query_temp.SQL.Add('Update CADOP01_ANEXO set  OPA_ETAPA=OPA_ETAPA+1 '
                      +' where OPA_CHAVE=:CHAVE'
                      +' and OPA_CODEMP=:CODEMP '
                      +' and OPA_LOTSEQ=:LOTSEQ '
                      +' and OPA_ETAPA>=:ETAPA ');
   query_temp.ParamByName('CHAVE').AsInteger:=ValInt(MCHAVE.Text);
   query_temp.ParamByName('CODEMP').AsInteger:=codemp;
   query_temp.ParamByName('LOTSEQ').AsInteger:=mLotSeqIndFab;
   query_temp.ParamByName('ETAPA').AsInteger:=Tb_OP01_AnexoOPA_ETAPA.AsInteger;
   try
      query_temp.ExecSQL;
      fdm1StartCommit;
   except
      end;


   query_temp.Close;
   query_temp.SQL.clear;
   query_temp.SQL.Add('Update CADOP01_ANEXO set  OPA_CHAVE=OPA_CHAVE*-1 '
                      +' where OPA_CHAVE=:CHAVE'
                      +' and OPA_CODEMP=:CODEMP '
                      +' and OPA_LOTSEQ=:LOTSEQ ');
   query_temp.ParamByName('CHAVE').AsInteger:=ValInt(MCHAVE.Text);
   query_temp.ParamByName('CODEMP').AsInteger:=codemp;
   query_temp.ParamByName('LOTSEQ').AsInteger:=mLotSeqIndFab;
   try
      query_temp.ExecSQL;
      fdm1StartCommit;
   except
      end;


   query_temp.Close;
   query_temp.SQL.clear;
   query_temp.SQL.Add('Insert into CADOP01_ANEXO '
                     +'(OPA_CODEMP '
                     +',OPA_CHAVE '
                     +',OPA_LOTSEQ '
                     +',OPA_ETAPA '
                     +',OPA_CHAVE_OR'
                     +',OPA_LOTSEQ_OR'
                     +',OPA_CODEMP_OR'
                     +',OPA_SEQ)'
                     +' select OPA_CODEMP '
                     +',OPA_CHAVE '
                     +',OPA_LOTSEQ '
                     +',COLUNA AS OPA_ETAPA '
                     +',OPA_CHAVE_OR'
                     +',OPA_LOTSEQ_OR'
                     +',OPA_CODEMP_OR'
                     +',COLUNA AS OPA_SEQ'
                     +' from '

                     +'(select '
                     +' OPA_CODEMP '
                     +',OPA_CHAVE '
                     +',OPA_LOTSEQ   '
                     +',OPA_ETAPA '
                     +',OPA_CHAVE_OR'
                     +',OPA_LOTSEQ_OR'
                     +',OPA_CODEMP_OR'
                     +',OPA_SEQ, ROWNUM AS COLUNA FROM '

                     +'(SELECT '
                     +' OPA_CODEMP '
                     +',OPA_CHAVE*-1 as OPA_CHAVE '
                     +',OPA_LOTSEQ '
                     +',OPA_ETAPA '
                     +',OPA_CHAVE_OR'
                     +',OPA_LOTSEQ_OR'
                     +',OPA_CODEMP_OR'
                     +',OPA_SEQ FROM  CADOP01_ANEXO '
                      +' where OPA_CHAVE=:CHAVE'
                      +' and OPA_CODEMP=:CODEMP '
                      +' and OPA_LOTSEQ=:LOTSEQ '
                      +' ORDER BY OPA_ETAPA )'

                      +') ');

   query_temp.ParamByName('CHAVE').AsInteger:=ValInt(MCHAVE.Text)*-1;
   query_temp.ParamByName('CODEMP').AsInteger:=codemp;
   query_temp.ParamByName('LOTSEQ').AsInteger:=mLotSeqIndFab;
   try
      query_temp.ExecSql;
      fdm1StartCommit;
   except
      query_temp.sql.savetofile(mpastatemp +'sql.txt');
      end;


   query_temp.Close;
   query_temp.SQL.clear;
   query_temp.SQL.Add('Delete from CADOP01_ANEXO  '
                      +' where OPA_CHAVE=:CHAVE'
                      +' and OPA_CODEMP=:CODEMP '
                      +' and OPA_LOTSEQ=:LOTSEQ ');
   query_temp.ParamByName('CHAVE').AsInteger:=ValInt(MCHAVE.Text)*-1;
   query_temp.ParamByName('CODEMP').AsInteger:=codemp;
   query_temp.ParamByName('LOTSEQ').AsInteger:=mLotSeqIndFab;
   try
      query_temp.ExecSQL;
      fdm1StartCommit;
   except
      end;



   fLerCadp01_Anexo(0);
   end;

freeandnil(query_temp);
if dbgrid2.Focused then
   DBGrid2.SelectedField:=Tb_OP01_AnexoOPA_CHAVE_OR;

end;

function TFrm_IndEnv_Fab.fLerCadp01_Anexo(pTipo: Integer): Boolean;
begin
Tb_OP01_Anexo.Close;
Tb_OP01_Anexo.SQL.Clear;
Tb_OP01_Anexo.SQL.Add('Select * from CADOP01_ANEXO '
                   +' where OPA_CHAVE=:CHAVE'
                   +' and OPA_CODEMP=:CODEMP '
                   +' and OPA_LOTSEQ=:LOTSEQ ');
Tb_OP01_Anexo.ParamByName('CHAVE').AsInteger:=ValInt(MCHAVE.Text);
Tb_OP01_Anexo.ParamByName('CODEMP').AsInteger:=codemp;
Tb_OP01_Anexo.ParamByName('LOTSEQ').AsInteger:=mLotSeqIndFab;
try
   Tb_OP01_Anexo.Open;
except
   end;
result:=true;
end;
procedure TFrm_IndEnv_Fab.src_OP01_AnexoDataChange(Sender: TObject;
  Field: TField);
begin
if  (not (Tb_OP01_Anexo.State in [dsInsert,dsEdit])) and (not Tb_OP01_AnexoOPA_CHAVE_OR.IsNull) then
   begin
   gb_anexos.Caption:='Etapa '+FormatFloat('00', Tb_OP01_AnexoOPA_ETAPA.AsInteger);
   edt_chave.Text:=Tb_OP01_AnexoOPA_CHAVE_OR.AsString;
   edt_chaveChange(self);
   end;
if Tb_OP01_AnexoOPA_CHAVE_OR.IsNull then
   fLimpardadosAnexo;
end;

function tFrm_IndEnv_Fab.fLimpardadosAnexo: Boolean;
begin
if fsonumero(edt_chave.Text)>0 then
   begin
   edt_dtvcto.Text    :='/  /';
   edt_dt_fab.Text    :='/  /';
   status_et01.Caption:='';
   edt_chave.Text     :='';
   edt_et01_data.Text :='';
   edt_codpro.Text    :='';
   edt_nompro.Text    :='';
   edt_qtdteorica.Text:='';
   edt_qtdprod.Text   :='';

   edt_val.Text       :='';
   edt_lote.Text      :='';
   Qr_MP_Etapa01.Close;
   end;

end;
procedure TFrm_IndEnv_Fab.DBGrid2Enter(Sender: TObject);
begin
DBGrid2.SelectedField:=Tb_OP01_AnexoOPA_CHAVE_OR;
end;

procedure TFrm_IndEnv_Fab.bbproc_incluirClick(Sender: TObject);
begin
bbproc_incluir.Enabled        := False;
bbproc_alterar.Enabled        := False;
bbproc_excluir.Enabled        := False;
bbproc_gravar.Enabled         := true;
Tb_Op_ETA.Append;
fBloqueiaLiberaCamposProcesso(true); // false bloqueia true libera

DBCB_Processo.SetFocus;


end;

procedure TFrm_IndEnv_Fab.bbproc_alterarClick(Sender: TObject);
begin
bbproc_incluir.Enabled        := False;
bbproc_alterar.Enabled        := False;
bbproc_excluir.Enabled        := False;
bbproc_gravar.Enabled         := true;
Tb_Op_ETA.Edit;
fBloqueiaLiberaCamposProcesso(true); // false bloqueia true libera

GB_DADOSPROC.SetFocus;

end;

procedure TFrm_IndEnv_Fab.bbproc_gravarClick(Sender: TObject);
begin
bbproc_incluir.Enabled        := true;
bbproc_alterar.Enabled        := true;
bbproc_excluir.Enabled        := true;
bbproc_gravar.Enabled         := false;
Tb_Op_ETA.Post;
fBloqueiaLiberaCamposProcesso(false); // false bloqueia true libera

end;

procedure TFrm_IndEnv_Fab.bbproc_excluirClick(Sender: TObject);
begin
bbproc_incluir.Enabled        := true;
if Tb_Op_ETA.IsEmpty then
   begin
   bbproc_alterar.Enabled        := false;
   bbproc_excluir.Enabled        := false;
   end
else
   begin
   bbproc_alterar.Enabled        := true;
   bbproc_excluir.Enabled        := true;
   end;

bbproc_gravar.Enabled         := false;
Tb_Op_ETA.Delete;

end;
function TFrm_IndEnv_Fab.fBloqueiaLiberaCamposProcesso(pLibera: Boolean): Boolean;
begin
DBCB_Processo.ReadOnly:=iif(pLibera,false,true);
DBCB_RESP.ReadOnly    :=iif(pLibera,false,true);
DBDatini_proc.ReadOnly:=iif(pLibera,false,true);
DBE_HOR_INIPROC.ReadOnly:=iif(pLibera,false,true);

DBDatfin_proc.ReadOnly:=iif(pLibera,false,true);
DBE_HOR_TERPROC.ReadOnly:=iif(pLibera,false,true);
DBCB_CONFERENTE.ReadOnly:=iif(pLibera,false,true);
DBData_conf.ReadOnly:=iif(pLibera,false,true);
DBE_horConf.ReadOnly:=iif(pLibera,false,true);
DBCB_resultado.ReadOnly:=iif(pLibera,false,true);

DBMemo_obs.ReadOnly:=iif(pLibera,false,true);
result:=true;
end;

procedure TFrm_IndEnv_Fab.Tb_Op_ETAAfterInsert(DataSet: TDataSet);
begin
Tb_Op_ETAETA_CODEMP.Value:=codemp;
Tb_Op_ETAETA_CODIGO.Value:=fsonumero(edt_chave.Text);

end;

procedure TFrm_IndEnv_Fab.cbme_qtdutil_motivoExit(Sender: TObject);
var
mmotivo: string;

begin
   mmotivo := (Sender AS TComboBox).text;

   with  (Sender AS TComboBox) do ItemIndex:=Items.IndexOf(mmotivo);
      if (Sender AS TComboBox).ItemIndex < 0 then begin
         begin
         CB01_MOTIVO.Items.Add(mmotivo);
         cbme_qtdutil_motivo.Items.Add(mmotivo);
         cbmp_qtdutil_motivo.Items.Add(mmotivo);
         end;
      fGravaPadroes(-1,'combobox'     ,'TEXT' ,'_INDENVFAB',mmotivo);
      end;

end;

procedure TFrm_IndEnv_Fab.CB01_MOTIVOKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=118 then
   begin
   if Application.MessageBox('Esta opção Deixa Somente os Historicos Padrão, deseja Continuar?','Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
      exit;
   fDeletaPadroes(-1,'_INDENVFAB','')
   end;

end;

procedure TFrm_IndEnv_Fab.txtmp_loteExit(Sender: TObject);
begin
if trim(txtmp_lote.Text)<>'' then
   begin
   if fLerGenerico_query('CADLGC','CLNUMERO,CLDTVCTO,CLDTFAB','CLCODPRO='+fdeixanum(txtmp_codigo.Text)+' and CLNUMERO='+QuotedStr(txtmp_lote.Text)+'  order by CLDTVCTO,CLNUMERO',query_consulta) then
      begin
      if query_consulta.FieldByName('CLDTVCTO').AsDateTime>pdatanula then
         begin
         txtmp_dtvcto.Text:=FormatDateTime(fdt2,query_consulta.FieldByName('CLDTVCTO').AsDateTime);
         txtmp_dtfab.Text:=FormatDateTime(fdt2,query_consulta.FieldByName('CLDTFAB').AsDateTime);
         end;
      end;
   end;
end;

procedure TFrm_IndEnv_Fab.txtme_loteExit(Sender: TObject);
begin
if trim(txtme_lote.Text)<>'' then
   begin
   if fLerGenerico_query('CADLGC','CLNUMERO,CLDTVCTO,CLDTFAB','CLCODPRO='+fdeixanum(txtme_codpro.Text)+' and CLNUMERO='+QuotedStr(txtme_lote.Text)+'  order by CLDTVCTO,CLNUMERO',query_consulta) then
      begin
      if query_consulta.FieldByName('CLDTVCTO').AsDateTime>pdatanula then
         begin
         txtme_dtvcto.Text:=FormatDateTime(fdt2,query_consulta.FieldByName('CLDTVCTO').AsDateTime);
         txtme_dtfab.Text :=FormatDateTime(fdt2,query_consulta.FieldByName('CLDTFAB').AsDateTime);
         end;
      end;
   end;

end;

procedure TFrm_IndEnv_Fab.txtmp_loteEnter(Sender: TObject);
begin
      fCarregarLotes(DM1.Tb_ProPDCODPRO.AsFloat,txtmp_lote);

end;

procedure TFrm_IndEnv_Fab.txtme_loteEnter(Sender: TObject);
begin
      fCarregarLotes(DM1.Tb_ProPDCODPRO.AsFloat,txtme_lote);

end;

procedure TFrm_IndEnv_Fab.CB_FILIALExit(Sender: TObject);
begin
    mloc_armazenamento:=valint(fExtraiCodigoEntreChaves(CB_FILIAL.Text));

end;
{
function TFrm_IndEnv_Fab.fTestarEstoquemp:boolean;
var
query_mp: TQuery;
query_exe: TQuery;
mqtdproc: real;
mqtdfalta: real;
mitemincluso: Integer;
    function fincluirop03
    var
    query_op3: tquery;
    begin
    query_op3:=TQuery.Create(nil);
    query_op3.DatabaseName:=DM1.SG_ASSOC.DatabaseName
    query_op3.SQL.add('insert into CADOP03 ('
                     +' OP3_CODEMP     '
                     +',OP3_FABENV  '
                     +',OP3_LOTSEQ  '
                     +',OP3_CODIGO  '
                     +',OP3_SEQ '
                     +',OP3_CODMAT  '
                     +',OP3_NUMERO  '
                     +',OP3_LOTE   '
                     +',OP3_DTVCTO '
                     +',OP3_QTDPREV  '
                     +',OP3_QTDUTIL '
                     +',OP3_PU '
                     +',OP3_SITMP '
                     +',OP3_ORIGEM  '

begin
query_exe:=TQuery.Create(nil);
query_exe.DatabaseName:=DM1.SG_ASSOC.DatabaseName

query_mp:=TQuery.Create(nil);
query_mp.DatabaseName:=DM1.SG_ASSOC.DatabaseName
query_mp.sql.add('select * from ( ');
query_mp.sql.add('select OP3_SEQ,OP3_LOTSEQ,OP3_CODIGO,OP3_CODMAT,OP3_LOTE,OP3_DTVCTO,OP3_QTDUTIL,NVL(CLQTD,0) AS CLQTD,CLNUMERO,CLDTVCTO from '
                +' cadop03,CADLGC WHERE OP3_CODIGO='+fdeixanum(edt_chave.Text)
                +' and OP3_CODEMP='+Inttostr(codemp)
                +' AND CLCODPRO(+)=OP3_CODMAT AND CLNUMERO(+)=OP3_LOTE AND CLDTVCTO(+)=OP3_DTVCTO '
                +' AND CLFILIAL(+)='+inttostr(mloc_armazenamento)
query_mp.sql.add(') mp where CLQTD<OP3_QTDUTIL order by OP3_SEQ');
try
   query_mp.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(Query_mp,7317,'SGE','CADOP03');
   query_mp.Close;
   freeandnil(query_mp);
   result:=false;
   end;
   end;
mitemincluso:=0;
While not query_mp.Eof do
   begin
   if fLerGenerico_query('CADLGC','sum(CLQTD) as SALDO','CLCODPRO=0'+query_mp.fieldbyname('OP3_CODMAT').AsString+' and CLFFILIAL='+inttostr(mloc_armazenamento) DM3.Tb_op01OP1_LOCARMAZENAMENTO.AsString,query_consulta) then
      begin
      if query_consulta.fieldbyname('SALDO').asfloat<=0 then
         begin
         query_exe.close;
         query_exe.sql.clear;
         query_exe.sql.add('update CADOP03 set OP3_DTVCTO=null,OP3_LOTE='+quotedstr('')+' where OP3_SEQ='+Inttostr(query_mp.fieldbyname('OP3_SEQ').AsInteger+mitemincluso)
                          +' and OP3_CODIGO='+query_mp.fieldbyname('OP3_CODIGO').AsString);
         try
            query_exe.ExecSQL;
         except on e : exception do
            begin
            ex_erroSql_Novo(Query_exe,7342,'SGE','CADOP03');
            query_mp.Close;
            freeandnil(query_mp);
            query_exe.Close;
            freeandnil(query_exe);
            result:=false;
            exit;
            end;
            end;
         end
      else
         begin
         mqtdfalta:=query_mp.fieldbyname('OP3_QTDUTIL').asfloat-query_mp.fieldbyname('CLQTD').asfloat;
         if fLerGenerico_query('CADLGC','CLQTD,CLNUMERO,CLDTVCTO','CLCODPRO=0'+query_mp.fieldbyname('OP3_CODMAT').AsString+' and CLFFILIAL='+inttostr(mloc_armazenamento) DM3.Tb_op01OP1_LOCARMAZENAMENTO.AsString,query_consulta+' and CLQTD>0 order by CLDTVCTO ') then
            begin
            While (not query_consulta.eof) and (mqtdfalta>0) do
               begin
               if query_consulta.FieldByName('CLQTD').AsFloat<mqtdfalta then
                  mqtdproc:=query_consulta.FieldByName('CLQTD').AsFloat
               else
                  mqtdproc:=mqtdfalta;
               if mqtdproc<mqtdfalta then
                  begin
                  query_exe.close;
                  query_exe.sql.clear;
                  query_exe.sql.add('update CADOP03 set OP3_DTVCTO=:DTVCTO,OP3_LOTE=:LOTE '
                                   +' where OP3_SEQ='+Inttostr(query_mp.fieldbyname('OP3_SEQ').AsInteger+mitemincluso)
                                   +' and OP3_CODIGO='+query_mp.fieldbyname('OP3_CODIGO').AsString);
                  query_exe.Parambyname('DTVCTO').asdatetime:=query_consulta.fielbyname('CLDTVCTO').asdatetime;
                  query_exe.Parambyname('LOTE').AsString    :=query_consulta.fielbyname('CLLOTE').asstring;
                  try
                     query_exe.ExecSQL;
                  except on e : exception do
                     begin
                     ex_erroSql_Novo(Query_exe,7342,'SGE','CADOP03');
                     query_mp.Close;
                     freeandnil(query_mp);
                     query_exe.Close;
                     freeandnil(query_exe);
                     result:=false;
                     exit;
                     end;
                     end;

                  end


            end


mqtdproc: real;
mqtdfalta: real;


         end;
      end;





         end;
      end;


select OP3_CODIGO,OP3_CODMAT,OP3_LOTE,OP3_DTVCTO,OP3_QTDUTIL,CLQTD,CLNUMERO,CLDTVCTO from
cadop03,CADLGC
WHERE OP3_CODIGO=14178
AND CLCODPRO(+)=OP3_CODMAT AND CLNUMERO(+)=OP3_LOTE AND CLDTVCTO(+)=OP3_DTVCTO



end;

}

procedure TFrm_IndEnv_Fab.bbvisualizar_comagrupamentoClick(Sender: TObject);
var
marray_op: array of string;
x_op: integer;
   procedure fadicionar(pvalor: string);
   var
   mpos_op: integer;
   begin
   mpos_op:=high(marray_op)+1;
   setlength(marray_op,mpos_op+1);
   marray_op[mpos_op]:=pValor;
   end;
begin
Application.createform(TFrm_indEnv_Fab_selAgru, Frm_IndEnv_Fab_SelAgru);
Frm_IndEnv_Fab_SelAgru.ShowModal;
if Frm_IndEnv_Fab_SelAgru.mcancelou=false then
   begin
   for x_op:=0 to Frm_IndEnv_Fab_SelAgru.ordem_producao.Items.Count-2 do
      begin
      if Frm_IndEnv_Fab_SelAgru.ordem_producao.Checked[x_op]=true then
         fadicionar(copy(Frm_IndEnv_Fab_SelAgru.ordem_producao.Items[x_op],
                      1
                      ,pos('-',Frm_IndEnv_Fab_SelAgru.ordem_producao.Items[x_op])
                      -1));
      end;
   freeandnil(Frm_IndEnv_Fab_SelAgru);

   fImprimirWord(marray_op,fsonumero(CODPRO.Text));

   end;

end;



function tFrm_IndEnv_Fab.fIncluirCadop03(pCadOp03: tCadOp03): boolean;
var
query_op03: tquery;
begin

query_op03:=tquery.create(nil);
query_op03.databasename:=DM1.SG_ASSOC.databasename;

query_op03.Close;
query_op03.SQL.Clear;
query_op03.SQL.Add('Insert Into CADOP03 ('
                  +'OP3_CODEMP, '
                  +'OP3_FABENV, '
                  +'OP3_LOTSEQ, '
                  +'OP3_CODIGO, '
                  +'OP3_SEQ, '
                  +'OP3_CODMAT,'
                  +'OP3_QTDPREV, '
                  +'OP3_QTDUTIL, '
                  +'OP3_QTDUTIL_MOTIVO, '
                  +'OP3_PU, '
                  +'OP3_SITMP,'
                  +'OP3_ORIGEM,'
                  +'OP3_NUMERO,'
                  +'OP3_LOTE, '
                  +'OP3_DTVCTO,'
                  +'OP3_DTFAB,'
                  +'OP3_LOTE_RE ) values ('
                 +':CODEMP,'
                 +':FABENV'+',' // materias primas utilizadas para produção
                 +':LOTSEQ ,'
                 +':CHAVE ,'
                 +':SEQ ,'
                 +':CODMAT ,'
                 +':QTDPREV ,'
                 +':QTDUTIL ,'
                 +':QTDUTIL_MOTIVO,'
                 +':PU ,'
                 +':SITMP ,' // Situacao do produto acabado
                 +':ORIGEM,' // origem das materias primas 0-normal 1-terceiros
                 +':NUMERO,'
                 +':LOTE,'
                 +':DTVCTO,'
                 +':DTFAB,'
                 +':LOTE_RE)');


query_op03.ParamByName('CODEMP').asinteger := pCadOp03.codemp;
query_op03.ParamByName('FABENV').asinteger := pCadOp03.fabenv;
query_op03.ParamByName('LOTSEQ').asinteger := pCadOp03.lotseq;
query_op03.ParamByName('CHAVE').AsFloat    := pCadOp03.codigo;
query_op03.ParamByName('SEQ').asinteger    := pCadOp03.seq;
query_op03.ParamByName('CODMAT').AsFloat   := pCadOp03.codmat;
query_op03.ParamByName('QTDPREV').AsFloat  := pCadOp03.qtdprev;
query_op03.ParamByName('QTDUTIL').AsFloat  := pCadOp03.qtdutil;
query_op03.ParamByName('QTDUTIL_MOTIVO').AsString := pCadOp03.qtdutil_motivo;
query_op03.ParamByName('PU').AsFloat              := pCadOp03.pu;
query_op03.ParamByName('SITMP').asinteger         := pCadOp03.sitmp;
query_op03.ParamByName('ORIGEM').asinteger        := pCadOp03.origem;
query_op03.ParamByName('NUMERO').AsString         := pCadOp03.numero;
query_op03.ParamByName('LOTE').AsString           := pCadOp03.lote;
query_op03.ParamByName('DTVCTO').AsDateTime       := pCadOp03.dtvcto;
query_op03.ParamByName('DTFAB').AsDateTime        := pCadOp03.dtFAB;
query_op03.ParamByName('LOTE_RE').AsString        := pCadOp03.lote_re;

Try
   query_op03.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_op03,8053,'SGE','CADVER');
   end;

query_op03.close;
freeandnil(query_op03);
end;

function TFrm_IndEnv_Fab.fEstoqueNegativo: Boolean;
var
query_estoque: TQuery;
mocorrencias: string;
   procedure pfecharquery;
   begin
   query_estoque.close;
   freeandnil(query_estoque);

   end;
begin
mocorrencias:='';
//if (DM3.Tb_Op01OP1_SITMP.AsInteger<1) and
//   (DM3.Tb_Op01OP1_SITACAB.AsInteger<1)  then

if (DM3.Tb_Op01OP1_SITACAB.AsInteger<1)  then
   begin
   result:=false;
   end
else
   begin
   query_estoque:=TQuery.create(nil);
   query_estoque.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   query_estoque.SQL.add('Select PDNOME,PDMARCA,OP2_CODIGO,OP2_CODPRO, '
                        +' OP2_FAB_LOTE, OP2_FAB_VCTO , '
                        +' OP2_QTDPROD,NVL(CLQTD,0) AS QTDLOTE FROM CADOP02,CADLGC,CADPRO '
                        +' WHERE (OP2_FABENV=0 or OP2_FABENV=1) '
                        +' and OP2_LOTSEQ=0'+DM3.Tb_Op01OP1_LOTSEQ.AsString
                        +' and OP2_CODIGO=0'+DM3.Tb_Op01OP1_CODIGO.AsString
                        +'  AND CLCODPRO(+)=OP2_CODPRO '
                        +' AND CLNUMERO(+)=OP2_FAB_LOTE '
                        +' AND PDCODPRO=OP2_CODPRO '
                        );
   query_estoque.sql.text:='Select * from ( '
                          + query_estoque.SQL.Text
                          +'  ) WHERE QTDLOTE<OP2_QTDPROD ';
   // ex_erroSql_Novo(query_estoque,8381,'SGE','CADVER');

   try
      query_estoque.open;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_estoque,8381,'SGE '+e.message,'CADVER');
      pfecharquery;
      end;
      end;
   While not query_estoque.Eof do
      begin
      mocorrencias:=mocorrencias+'O produto '+query_estoque.fieldbyname('OP2_CODPRO').AsString+' - '
                   +query_estoque.fieldbyname('PDNOME').AsString
                   +' Lote: '+query_estoque.fieldbyname('OP2_FAB_LOTE').AsString
                   +' possui '+query_estoque.fieldbyname('QTDLOTE').AsString
                   +' no estoque, nesta ordem de produção possui '+query_estoque.fieldbyname('OP2_QTDPROD').AsString
                   +' não podera ser excluido a op pois o estoque ira ficar negativo'+#13;
      query_estoque.next;
      end;
   if mocorrencias<>'' then
      begin
      MessageDlg(mocorrencias,mtWarning,[mbOk],0);
      result:=true;
      end
   else
      result:=false;
   pfecharquery;
   end;
end;



procedure TFrm_IndEnv_Fab.fLerCadDW_CFG;
begin
Tb_dw_cfg.close;
Tb_dw_cfg.sql.clear;
Tb_dw_cfg.sql.Add('select DW_NOMREL from caddw_cfg where DW_CATEGORIA='+QuotedStr(categoria_docxml)+' GROUP BY DW_NOMREL order by DW_NOMREL  ');
Tb_dw_cfg.Open;
dbcb_modelo.Items.clear;
While not Tb_dw_cfg.Eof do
   begin
   dbcb_modelo.Items.add(Tb_dw_cfgDW_NOMREL.AsString);
   Tb_dw_cfg.Next;
   end;
if dbcb_modelo.Items.Count<1 then
   dbcb_modelo.Clear
else
   dbcb_modelo.ItemIndex:=0;
end;

procedure TFrm_IndEnv_Fab.bbop_esp_viseditClick(Sender: TObject);
begin
fVisualizarXMLDoc(dbcb_modelo.Text);
end;



procedure TFrm_IndEnv_Fab.fVisualizarXMLDoc(pNomeDoc: String);

var
Ado_Cadop: TADOQuery;
x: Integer;
mNomeDoc: String;
DocOrigem : OleVariant;

begin
Ado_Cadop:=TADOQuery.Create(NIL);
Ado_Cadop.Connection:=DM1_ADO.ADOConnection1;
Ado_Cadop.Close;
Ado_Cadop.SQL.Clear;
Ado_Cadop.SQL.Add('Select * from CADDW_CFG where DW_CODEMP=:CODEMP and DW_NOMREL=:NOMREL'
                 +' and DW_CATEGORIA=:CATEGORIA'
                 +' order by DW_ORDEM ' );
Ado_Cadop.Parameters.ParamByName('CODEMP').Value:=codemp;
Ado_Cadop.Parameters.ParamByName('CATEGORIA').Value:=categoria_docxml;
Ado_Cadop.Parameters.ParamByName('NOMREL').Value   :=pNomeDoc;

Ado_Cadop.Open;
if Ado_Cadop.IsEmpty then
   begin
   MessageDlg('Não foi encontrado a Matriz da ORDEM DE PRODUCAO relatorio '+pNomeDoc+'!',mtWarning,[mbOk],0);
   FreeAndNil(Ado_Cadop);
   exit;
   end;
While not Ado_Cadop.Eof do
   begin
   mNomeDoc:=mpastadefault+fretiraextensao(Ado_Cadop.FieldByName('DW_NOMEORI').AsString)+'PARTE'+
   Ado_Cadop.FieldByName('DW_ORDEM').AsString+'.DAT';
   if FileExists(mNomeDoc) then
      DeleteFile(mNomeDoc);
   (Ado_Cadop.FieldByName('DW_DADOS') as TBlobField).SaveToFile(mNomeDoc);
   Ado_Cadop.Next;
   end;
Ado_Cadop.First;
mNomeDoc:=mpastadefault+fretiraextensao(Ado_Cadop.FieldByName('DW_NOMEORI').AsString)+'.ZIP';
fJuntarArquivos(mNomeDoc);

fUnZiparArquivos(mNomeDoc,Fnomearq_Pasta(1,mNomeDoc)+'\','');

WordApp:=TWordApplication.Create(Application.Owner);
    { Faz com que o Word seja aberto e visivel ao usuário }
WordApp.Visible:=True;
    { Adiciona um novo documento ao Word }
WordDoc:=TWordDocument.Create(Application.Owner);
    { Local do documento de Origem }
{ Abre o documento de Origem no Word }
DocOrigem:= fretiraextensao(mNomedoc)+'.XML';
WordDoc.ConnectTo(WordApp.Documents.Add(DocOrigem,EmptyParam,EmptyParam,EmptyParam));


FreeAndNil(Ado_Cadop);


end;

procedure TFrm_IndEnv_Fab.bbop_esp_adqClick(Sender: TObject);
var
mNomeDoc_doc: OleVariant;
mNomeDoc_xml: OleVariant;
mNomeDigitado: String;
mTeste: OleVariant;
mAlterar_Rel: Boolean;
mform_ordemdeproducao: TFrm_ordemdeproducao;
begin
bbop_esp_adq.Enabled:=false;
bbop_esp_visedit.Enabled:=false;
If Opd1.Execute then
   begin
   if (UPPERCASE(ExtractFileExt(Opd1.FileName)) <> '.DOC') and
      (UPPERCASE(ExtractFileExt(Opd1.FileName)) <> '.DOCX') AND
      (UPPERCASE(ExtractFileExt(Opd1.FileName)) <> '.XML') then
      begin
      verteclado(0);
      MessageDlg('O Arquivo '+Opd1.FileName+' não é um arquivo do tipo DOC',mtWarning,[mbOk],0);
      bbop_esp_adq.Enabled:=true;
      bbop_esp_visedit.Enabled:=true;
      exit;
      end;
   mNomeDoc_doc:=opd1.filename;

   mNomeDigitado:=fretiraextensao(Fnomearq_Pasta(0, mNomeDoc_doc));

   While true do
      begin
      mNomeDigitado:=InputBox('Digite um Nome para o Relatorio ', 'Nome do Relatorio:',mNomeDigitado);
      if trim(mNomeDigitado)='' then
         exit;
      if length(mNomeDigitado)>50 then
         begin
         MessageDlg('Maximo de 50 letras para o nome do relatorio!',mtWarning,[mbOk],0);
         end
      else
         break;
      end;
   mNomeDoc_xml:=mpastadefault+mNomeDigitado+'.xml';

   if not fLerGenerico_query('CADDW_CFG','count(*) as qtd ','DW_CODEMP=0'+IntToStr(codemp)+' and DW_NOMREL='+QuotedStr(mNomeDigitado)+' and DW_CATEGORIA='+Quotedstr(categoria_docxml),query_consulta) then
      begin
      exit;
      end;
   mAlterar_Rel:=false;
   if query_consulta.fields[0].asinteger>0 then
      begin
      if Application.MessageBox(pchar('Ja Existe um relatorio com este nome '+mNomeDigitado+' quer sobrepor?'),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
         exit
      else
         mAlterar_Rel:=true;
      end;
//   mNomeDoc_xml:=mNomeDigitado+'.xml';
   WordApp:=TWordApplication.Create(Application.Owner);
       { Faz com que o Word seja aberto e visivel ao usuário }
//   WordApp.Visible:=True;
       { Adiciona um novo documento ao Word }
   WordDoc:=TWordDocument.Create(Application.Owner);
       { Local do documento de Origem }
   { Abre o documento de Origem no Word }





   WordDoc.ConnectTo(WordApp.Documents.Add(mNomeDoc_doc,EmptyParam,EmptyParam,EmptyParam));
   mTeste:=11;
   deletefile(mNomeDoc_xml);
//   mTeste:=wdFormatXML;
   WordDoc.SaveAs(mNomeDoc_xml,mteste,EmptyParam,EmptyParam,EmptyParam);

//   WordDoc.sav SaveAs2000(mNomeDoc_xml,mteste,EmptyParam,EmptyParam,EmptyParam);
//   WordDoc.SaveAs2000(mNomeDoc_xml,mteste,EmptyParam,EmptyParam,EmptyParam);





   WordDoc.Close;
   WordDoc.Disconnect;
   WordApp.Disconnect;
   WordApp.Quit;
{
   Application.CreateForm(Tfrm_imprimir_docxml, form_imprimir_docxml);
   form_imprimir_docxml.fSubstituirFonteXml(mNomeDoc_xml);
   freeandnil(form_imprimir_docxml);
 }
//,wdFormatXML

{
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>

<?xml version="1.0" encoding="ISO-8859-1" standalone="yes"?>
 }
   if fGravarArquivoParticionadoBlob(mNomeDoc_xml,mNomeDigitado, 'CADDW_CFG','DW_CODEMP','DW_NOMREL','DW_ORDEM','DW_DADOS','DW_NOMEORI'
      ,['DW_CATEGORIA'],[categoria_docxml]) then
      begin
      Application.createform(TFrm_ordemdeproducao, mform_ordemdeproducao);
      mform_ordemdeproducao.fTestarTabulacoes(mNomeDigitado);
      MessageDlg('Arquivo '+mNomeDigitado+' gravado!',mtInformation,[mbOk],0);
      freeandnil(mform_ordemdeproducao);

      end

   else
      begin
      MessageDlg('Erro ao Gravar o Arquivo '+opd1.FileName,mtWarning,[mbOk],0);
      bbop_esp_adq.Enabled:=true;
      bbop_esp_visedit.Enabled:=true;
      exit;
      end;
   deletefile(mNomeDoc_xml);
   end;
bbop_esp_adq.Enabled:=true;
bbop_esp_visedit.Enabled:=true;
fLerCadDW_CFG;



end;

procedure TFrm_IndEnv_Fab.bbop_esp_excluirClick(Sender: TObject);
var
Ado_Cadop: TADOQuery;

begin
Ado_Cadop:=TADOQuery.Create(NIL);
Ado_Cadop.Connection:=DM1_ADO.ADOConnection1;
Ado_Cadop.Close;
Ado_Cadop.SQL.Clear;
Ado_Cadop.SQL.Add('Select * from CADDW_CFG where DW_CODEMP=:CODEMP '
                 +' and DW_NOMREL=:NOMREL'
                 +' and DW_CATEGORIA=:CATEGORIA'
                 +' order by DW_ORDEM ' );
Ado_Cadop.Parameters.ParamByName('CODEMP').Value:=codemp;
Ado_Cadop.Parameters.ParamByName('CATEGORIA').Value:=categoria_docxml;
Ado_Cadop.Parameters.ParamByName('NOMREL').Value   :=Tb_dw_cfgDW_NOMREL.AsString;
Ado_Cadop.Open;
if Ado_Cadop.IsEmpty then
   begin
   MessageDlg('Não foi encontrado '+Tb_dw_cfgDW_NOMREL.AsString,mtWarning,[mbOk],0);
   FreeAndNil(Ado_Cadop);
   exit;
   end;
if Application.MessageBox(pchar('Quer Realmente Excluir o relatorio '+Tb_dw_cfgDW_NOMREL.AsString),'',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;

Ado_Cadop.Connection:=DM1_ADO.ADOConnection1;
Ado_Cadop.Close;
Ado_Cadop.SQL.Clear;
Ado_Cadop.SQL.Add('Delete from CADDW_CFG where DW_CODEMP=:CODEMP and DW_NOMREL=:NOMREL'
                 +' and DW_CATEGORIA=:CATEGORIA' );
Ado_Cadop.Parameters.ParamByName('NOMREL').Value   :=Tb_dw_cfgDW_NOMREL.AsString;
Ado_Cadop.Parameters.ParamByName('CODEMP').Value:=codemp;
Ado_Cadop.Parameters.ParamByName('CATEGORIA').Value:=categoria_docxml;
try
   Ado_Cadop.ExecSQL;
   fdm1StartCommit;
except
   FreeAndNil(Ado_Cadop);
   exit;
   end;
verteclado(0);
fLerCadDW_CFG;
MessageDlg('Matriz da Licitação Excluida!',mtWarning,[mbOk],0);

end;



procedure TFrm_IndEnv_Fab.fAtuaizarLegenda;
var
x_leg: Integer;
begin
memo_legenda.Lines.clear;
for x_leg:=0 to High(items_leg_op01) do
   begin
   Memo_legenda.Lines.Add(insere2(items_leg_op01[x_leg].NomeLegenga,' ',20)+' - '+items_leg_op01[x_leg].Descricao);
   end;

   
for x_leg:=0 to High(items_leg_op02) do
   begin
   Memo_legenda.Lines.Add(insere2(items_leg_op02[x_leg].NomeLegenga,' ',20)+' - '+items_leg_op02[x_leg].Descricao);
   end;

end;


procedure TFrm_IndEnv_Fab.BitBtn1Click(Sender: TObject);
var
mform_ordemdeproducao: TFrm_ordemdeproducao;
mNomeDigitado: String;
begin
if trim(dbcb_modelo.Text)<>'' then
   begin
   fGerarEvento('8856 ENTROU');
   mNomeDigitado:=dbcb_modelo.Text;
   fGerarEvento('8858 VAI criar form');      
   Application.createform(TFrm_ordemdeproducao, mform_ordemdeproducao);
   fGerarEvento('8860 vai testar tabulacoes');

   mform_ordemdeproducao.fTestarTabulacoes(mNomeDigitado);
   fGerarEvento('8863 testou tabulacoes');

   MessageDlg('Arquivo '+mNomeDigitado+' gravado!',mtInformation,[mbOk],0);
   fGerarEvento('8866 vai dar um nil');

   freeandnil(mform_ordemdeproducao);
   end;

end;

procedure TFrm_IndEnv_Fab.cb_EstNegClick(Sender: TObject);
begin
fDeletaPadroes(0,'_INDENV_FAB','');
fGravaPadroes(0,'CB_ESTNEG'   ,'checked','_INDENV_FAB',iif(cb_EstNeg.Checked,'true','false'));

end;

end.




