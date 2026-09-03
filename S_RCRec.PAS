unit S_RCRec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Mask, Buttons, S_DM1, func, db, dbtables, s_Cli, S_Impres,
  S_Ven,S_Sup,S_USR,lerarq, Grids, DBGrids,S_Red,S_Con,S_Loc,S_Bco,variants,
  S_SitCre, ComCtrls, CheckLst, RLReport, RLRichFilter, S_SelEmp,
  RLXLSFilter, RLHTMLFilter, RLFilters, RLPDFFilter, RLDraftFilter,s_dar,s_c,s_MChq;

type
  TFrm_RCRec = class(TForm)
    Qr_CRec: TQuery;
    Qr_CRecCRNUMERO: TFloatField;
    Qr_CRecCRDESD: TStringField;
    Qr_CRecCRDTEMIS: TDateTimeField;
    Qr_CRecCRDTVCTO: TDateTimeField;
    Qr_CRecCRDTBX: TDateTimeField;
    Qr_CRecCRDESC: TFloatField;
    Qr_CRecCRJUROS: TFloatField;
    Qr_CRecCRVALOR: TFloatField;
    Qr_CRecCRCODCLI: TFloatField;
    Qr_CRecCRAZAO: TStringField;
    Qr_CRecCRLOTE: TFloatField;
    Qr_CRecVCODVEN: TFloatField;
    Qr_CRecVNOME: TStringField;
    Qr_CRecCRVALPAG: TFloatField;
    Qr_CRecCRDUP: TFloatField;
    Qr_CRecCRDTPAG: TDateTimeField;
    Qr_CRecCRNPED: TFloatField;
    Qr_CRecCRORDEM: TFloatField;
    Qr_CRecCRCODEMP: TFloatField;
    Qr_CRecCRLOTSEQ_LB: TFloatField;
    Src_CRec: TDataSource;
    Qr_CRecCRCODBCO: TFloatField;
    Qr_CRecnombco: TStringField;
    Qr_CRecCCODLOC: TFloatField;
    Qr_CRecCCIDADE: TStringField;
    Qr_CRecCUF: TStringField;
    Qr_CRecCCODBAI: TFloatField;
    Qr_CRecCBAIRRO: TStringField;
    Qr_CRectipdup: TStringField;
    Qr_CRecdtemis: TStringField;
    Qr_CRecdtvcto: TStringField;
    Qr_CRecdtbx: TStringField;
    Qr_CRecdtpag: TStringField;
    Qr_CRecatraso: TFloatField;
    Qr_CRecCRSTATUS: TFloatField;
    DBGrid1: TDBGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    CODRED: TEdit;
    lbx_codred: TListBox;
    OMITIR_RED: TCheckBox;
    Label23: TLabel;
    CODCV: TEdit;
    OMITIR_CV: TCheckBox;
    lbx_codcv: TListBox;
    Label4: TLabel;
    CODLOC: TEdit;
    lbx_codloc: TListBox;
    OMITIR_LOC: TCheckBox;
    tsTipoPed: TTabSheet;
    RG_TIPOPED: TCheckListBox;
    Panel1: TPanel;
    Label5: TLabel;
    cb_separado: TComboBox;
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    bbAplicar: TBitBtn;
    bbSitCli: TBitBtn;
    bbImprimir: TBitBtn;
    bbFpgto: TBitBtn;
    bbSair: TBitBtn;
    cb_tpp: TComboBox;
    Label6: TLabel;
    CB_MATRICIAL: TCheckBox;
    CB_VISREL: TCheckBox;
    lbl_cheio: TLabel;
    Matricial: TRLDraftFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLRichFilter1: TRLRichFilter;
    tsRelatorio: TTabSheet;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    lbl_titulo02: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    lbl_titulo: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    db_grupo: TRLDBText;
    band_cab: TRLBand;
    lbl_cabNumdoc: TRLMemo;
    lbl_cabChave: TRLMemo;
    RLBand4: TRLBand;
    lbl_numdoc: TRLDBText;
    lbl_Chave: TRLDBText;
    RLBand6: TRLBand;
    lblg_Chave: TRLLabel;
    RLBand3: TRLBand;
    lbl_rodape: TRLLabel;
    StaticText12: TStaticText;
    clb_simples: TCheckListBox;
    StaticText11: TStaticText;
    CLB_TIPOCOB: TCheckListBox;
    GroupBox3: TGroupBox;
    Label22: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    lbl_chqpre: TLabel;
    CODCOB: TEdit;
    lbx_codcob: TListBox;
    OMITIR_COB: TCheckBox;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    CODVEN: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    CLB_TIPODOC: TCheckListBox;
    StaticText10: TStaticText;
    DTCHQP: TMaskEdit;
    cb_formapag: TCheckBox;
    Qr_CRecNOMGRU: TStringField;
    Qr_CRecCODCCU: TStringField;
    Qr_CRecNOMCCU: TStringField;
    Qr_CRecnumdoc: TStringField;
    lbl_cabRazSoc: TRLMemo;
    lbl_RazSoc: TRLDBText;
    lblg_RazSoc: TRLLabel;
    Qr_CRecrazao_codigo: TStringField;
    lbl_cabDtEmis: TRLMemo;
    lbl_DtEmiss: TRLDBText;
    lbl_cabValDup: TRLMemo;
    lbl_ValDup: TRLDBText;
    lblg_ValDup: TRLLabel;
    lbl_cabValPag: TRLMemo;
    lbl_ValPag: TRLDBText;
    lblg_ValPag: TRLLabel;
    lbl_cabArec: TRLMemo;
    lbl_Arec: TRLDBText;
    lblg_Arec: TRLLabel;
    Qr_CRecvalapagar: TFloatField;
    lbl_CabDtVcto: TRLMemo;
    lbl_DtVcto: TRLDBText;
    lbl_cabDatPgto: TRLMemo;
    lbl_DatPgto: TRLDBText;
    lbl_cabDesc: TRLMemo;
    lbl_Desc: TRLDBText;
    lblg_Desc: TRLLabel;
    lbl_CabJuros: TRLMemo;
    lbl_Juros: TRLDBText;
    lblg_Juros: TRLLabel;
    lbl_cabdoc: TRLMemo;
    lbl_doc: TRLDBText;
    lblg_doc: TRLLabel;
    CB_SEMBORDA: TCheckBox;
    RLBand5: TRLBand;
    lblt_ValDup: TRLLabel;
    lblt_ValPag: TRLLabel;
    lblt_Arec: TRLLabel;
    lblt_Desc: TRLLabel;
    lblt_Juros: TRLLabel;
    RLLabel2: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel4: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    Qr_CRecCRCODFPGTO: TFloatField;
    Qr_CRecCRNOMFPGTO: TStringField;
    ts_outrosfiltros: TTabSheet;
    Label24: TLabel;
    CODTEL: TEdit;
    lbx_codtel: TListBox;
    OMITIR_TEL: TCheckBox;
    Label27: TLabel;
    CODSUP: TEdit;
    lbx_codsup: TListBox;
    OMITIR_SUP: TCheckBox;
    Label12: TLabel;
    FILTRO: TEdit;
    CODFP: TEdit;
    OMITIR_FP: TCheckBox;
    lbx_codfp: TListBox;
    Label7: TLabel;
    CB_FORCAR: TCheckBox;
    CB_CARTEIRA: TCheckBox;
    CB_OMITIRDIA: TCheckBox;
    bbMedPgVcto: TBitBtn;
    Qr_CRecCRJURD: TFloatField;
    Qr_CRecCRICMSR: TFloatField;
    Qr_CRecCRTOTIPI: TFloatField;
    Qr_CRecCRDESCF: TFloatField;
    Qr_CRecCRDTDESCF: TDateTimeField;
    Qr_CRecCRDESCD: TFloatField;
    Qr_CRecCRMULTA: TFloatField;
    Qr_CRecCRDEVOL: TFloatField;
    Qr_CRecvalorjuros: TFloatField;
    lbl_datapgto: TLabel;
    DATAPGTO: TMaskEdit;
    sbSalvarPadrao: TSpeedButton;
    CB_CONSUMIDOR: TCheckBox;
    RLBand7: TRLBand;
    filtros: TRLMemo;
    Qr_CRecCRTCB: TFloatField;
    TabSheet3: TTabSheet;
    Label10: TLabel;
    Label11: TLabel;
    Label18: TLabel;
    Label8: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label9: TLabel;
    Label30: TLabel;
    Qr_CRecCRTITPROT: TFloatField;
    StaticText1: TStaticText;
    clb_protesto: TCheckListBox;
    Label31: TLabel;
    CBORDEM: TComboBox;
    Label32: TLabel;
    CBTD: TComboBox;
    Label33: TLabel;
    CB_TIPOREL: TComboBox;
    CB_AVANCPAG: TCheckBox;
    STG_TOTCAR: TStringGrid;
    CLB_STATUSCLI: TCheckListBox;
    StaticText2: TStaticText;
    Label34: TLabel;
    CODASSE: TEdit;
    lbx_codasse: TListBox;
    OMITIR_ASS: TCheckBox;
    StaticText3: TStaticText;
    CLB_STATUS: TCheckListBox;
    gb_lote_rem: TGroupBox;
    lotrem_ini: TEdit;
    Label35: TLabel;
    Label36: TLabel;
    lotrem_fim: TEdit;
    Label37: TLabel;
    CODBCO: TEdit;
    lbx_codbco: TListBox;
    OMITIR_BCO: TCheckBox;
    Qr_CRecCRNUMPARC: TFloatField;
    Qr_CRecCRQTDPARC: TFloatField;
    Qr_CRecnumero_calc: TStringField;
    CB_INIBIR_DEVOL: TCheckBox;
    Qr_CRecCRNFACUM: TStringField;
    Label38: TLabel;
    NOTA_ORIGEM: TEdit;
    ts_new: TTabSheet;
    rlmod06: TRLReport;
    RLBand8: TRLBand;
    RLGRUPO: TRLGroup;
    RLBand9: TRLBand;
    RLLabel6: TRLLabel;
    RLSystemInfo5: TRLSystemInfo;
    RLDBText2: TRLDBText;
    RLSystemInfo6: TRLSystemInfo;
    RLLabel5: TRLLabel;
    rl_cab: TRLLabel;
    rl_periodo: TRLLabel;
    rl_status: TRLLabel;
    RLBand10: TRLBand;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLBand11: TRLBand;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    Qr_CRecCFONE01: TStringField;
    TotTit: TRLLabel;
    TotJur: TRLLabel;
    TotEnt: TRLLabel;
    TotAPag: TRLLabel;
    TotGAberto: TRLLabel;
    RLLabel7: TRLLabel;
    RLSystemInfo7: TRLSystemInfo;
    RLBand12: TRLBand;
    rl_banner: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    Label39: TLabel;
    edt_codusr_cx: TEdit;
    lbx_codusr_cx: TListBox;
    OMITIR_USR_CX: TCheckBox;
    ts_total: TTabSheet;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    Label17: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label16: TLabel;
    TOTABRVCT: TStaticText;
    TOTABRAVENC: TStaticText;
    TOTABR: TStaticText;
    TOTCHQP: TStaticText;
    TOTPAG: TStaticText;
    DESCFIN: TStaticText;
    DEVOL: TStaticText;
    JUROS: TStaticText;
    TOTGER: TStaticText;
    codcc: TEdit;
    lbx_codcc: TListBox;
    OMITIR_CC: TCheckBox;
    Label40: TLabel;
    coddep: TEdit;
    lbx_coddep: TListBox;
    OMITIR_DEP: TCheckBox;
    Label41: TLabel;
    sbn_codcc: TSpeedButton;
    sbc_coddep: TSpeedButton;
    cb_RazSocNomFan: TCheckBox;
    rl_nomgrupo: TRLLabel;
    RLVALGRUPO: TRLDBText;
    RLLabel21: TRLLabel;
    LBLGRUPO: TRLLabel;
    RLLabel9: TRLLabel;
    rl_documento: TRLLabel;
    rl_nf: TRLLabel;
    rl_tipo: TRLLabel;
    rl_pedido: TRLLabel;
    rl_emissao: TRLLabel;
    rl_vencimento: TRLLabel;
    rl_total: TRLLabel;
    rl_juros: TRLLabel;
    rl_aberto: TRLLabel;
    rl_entrada: TRLLabel;
    TotTitGeral: TRLLabel;
    StaticText4: TStaticText;
    EDT_CODREG: TEdit;
    lbx_CODREG: TListBox;
    OMITIR_CODREG: TCheckBox;
    RLLabel16: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    Qr_CRecmulta: TFloatField;
    Qr_CRecCRQTDDM: TFloatField;
    Qr_CRecjurosemulta: TFloatField;
    Qr_CRecender: TStringField;
    Qr_CReccemail: TStringField;
    lbl_endereco: TRLLabel;
    Qr_CRecCCEP: TStringField;
    sbn_gerarplanilha: TSpeedButton;
    SaveDialog1: TSaveDialog;
    Qr_CRecCCNPJ: TFloatField;
    Qr_CRecCCPF: TFloatField;
    Qr_CRecVCPF: TFloatField;
    cb_totaisLiquido: TCheckBox;
    sbn_gerarplanilhaMod02: TSpeedButton;
    bb_exportar: TBitBtn;
    Label42: TLabel;
    cb_caucao: TComboBox;
    procedure bbSairClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbAplicarClick(Sender: TObject);
    procedure Qr_CRecCalcFields(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bbFpgtoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbSitCliClick(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODTELExit(Sender: TObject);
    procedure CODTELKeyPress(Sender: TObject; var Key: Char);
    procedure CODSUPExit(Sender: TObject);
    procedure CODSUPKeyPress(Sender: TObject; var Key: Char);
    procedure CODREDExit(Sender: TObject);
    procedure CODREDKeyPress(Sender: TObject; var Key: Char);
    procedure CODCVExit(Sender: TObject);
    procedure CODCVKeyPress(Sender: TObject; var Key: Char);
    procedure CODCOBExit(Sender: TObject);
    procedure CODCOBKeyPress(Sender: TObject; var Key: Char);
    procedure CODLOCExit(Sender: TObject);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codtelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codcobKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codsupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codredKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codcvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codlocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CB_MATRICIALClick(Sender: TObject);
    procedure CLB_TIPODOCClick(Sender: TObject);
    procedure CLB_TIPOCOBClick(Sender: TObject);
    procedure clb_simplesClick(Sender: TObject);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure CB_SEMBORDAClick(Sender: TObject);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RG_TIPORELClick(Sender: TObject);
    procedure CODFPKeyPress(Sender: TObject; var Key: Char);
    procedure CODFPExit(Sender: TObject);
    procedure lbx_codfpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure bbMedPgVctoClick(Sender: TObject);
    procedure DATAPGTOExit(Sender: TObject);
    procedure DTCHQPExit(Sender: TObject);
    procedure sbSalvarPadraoClick(Sender: TObject);
    procedure cb_tppExit(Sender: TObject);
    procedure clb_protestoClick(Sender: TObject);
    procedure RLGroup1AfterPrint(Sender: TObject);
    procedure CB_TIPORELClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CLB_STATUSCLIClick(Sender: TObject);
    procedure CODASSEExit(Sender: TObject);
    procedure CODASSEKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codasseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CLB_STATUSClick(Sender: TObject);
    procedure lotrem_iniExit(Sender: TObject);
    procedure lotrem_fimExit(Sender: TObject);
    procedure CODBCOExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand11BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand11AfterPrint(Sender: TObject);
    procedure RLBand12BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlmod06BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure edt_codusr_cxExit(Sender: TObject);
    procedure edt_codusr_cxKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codusr_cxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure codccExit(Sender: TObject);
    procedure sbn_codccClick(Sender: TObject);
    procedure sbc_coddepClick(Sender: TObject);
    procedure coddepExit(Sender: TObject);
    procedure lbx_codccKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_coddepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure CB_TIPORELChange(Sender: TObject);
    procedure EDT_CODREGExit(Sender: TObject);
    procedure EDT_CODREGKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_CODREGKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbn_gerarplanilhaClick(Sender: TObject);
    procedure bb_exportarClick(Sender: TObject);
  private
    { Private declarations }
    function fRcRecTotais(pTipo: Integer): boolean;
    function fAtualizaPadrao(pTipo: Integer): Boolean;
    Function fImprimirModelo04(pTipo: Integer): Boolean;
    Function fImprimirModelo05(pTipo: Integer): Boolean;
    function fModelo05Cab(pTipo: Integer):Boolean;
    function fModelo05tot(pTipo: Integer):Boolean;

    procedure fGerarPlanilha;


    procedure fGerarPlanilhaMod02;

    function fCamposQueEramCalculados(pSql: String): String;

    function fSqlIncluirSegundosCampos(pSql: String): String;
    function fSqlIncluirTerceirosCampos(pSql: String): String;


  public
    Form_impres_Rcrec: TFrm_impres;
    Form_SelEmp: TFrm_SelEmp;
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
    function fImprimeResumoCarteira(pItem: Integer): Boolean;

    { Public declarations }
  end;

function FImprimeTitulo_Fortes(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
function fCalcularBanco(pCodbco, pValor, pPagas, pVenc, pAvenc: Real): Boolean;

var
  Frm_RCRec: TFrm_RCRec;
  mDataPesq: String;
  mTotgDup: Real=0;
  mTotGPag: Real=0;

  mTotGArec_Venc: Real=0;
  mTotGArec_Avenc : Real=0;

  mTotGeral_Acu: Real =0;

  mTotGChqDev_Pag: Real=0;
  mTotGChqDev_APag: Real=0;

  mTotGJuros_Pag: Real=0;
  mTotGJuros_APag: Real=0;

  mQtdGJuros_Pag: Real=0;
  mQtdGJuros_APag: Real=0;

  mTotGChqPre: Real=0;
  mQtdGChqPre: Integer=0;


  mTotGOutros_Pag: Real=0;
  mTotGOutros_APag: Real=0;

  mQtdGOutros_Pag: Real=0;
  mQtdGOutros_APag: Real=0;




  mTotGNC_Pag: Real=0;
  mTotGNC_APag: Real=0;

  mQtdGNC_Pag: Real=0;
  mQtdGNC_APag: Real=0;


  mQtdGChqDev_Pag: Real=0;
  mQtdGChqDev_APag: Real=0;

//  mTotGDesc: Real=0;
  mTotGJuros: Real=0;
  mQtdGTit_Arec_Venc: Integer;
  mQtdGTit_Arec_AVenc: Integer;
  mQtdGTit_Pag: Integer;

  mTotTDup_Venc: Real=0;
  mTotTDup_AVenc: Real=0;
  mTotTPag: Real=0;
  mTotTArec_Venc: Real=0;
  mTotTArec_Avenc: Real=0;
//  mTotTDesc: Real=0;
  mTotTJuros: Real=0;
  mQtdTTit_Arec_Venc: Integer;
  mQtdTTit_Arec_Avenc: Integer;
  mQtdTTit_Pag: Integer;

  mlinha,mcomplin,mvalant: String;
  mtotjd, mtotjg, mtotdd,mtotdg, mtotgd, mtotdevd,mtotdevg, mtotpg,mtotpd,mtotad,mtotag,mtotgg: Real;
  mtotgrudescfin_aberto: real;
  mtotgrudescfin_conc: real;


  mtotjdia: Real;
  mqtdGJurRec, mqtdTJurRec: Integer;
  mTotGJurRec, mTotTJurRec: Real;
  mqtdGDesc,   mqtdTDesc: Integer;
  mTotGDesc,   mTotTDesc: Real;

  mqtdGDev,   mqtdTDev: Integer;
  mTotGDev,   mTotTDev: Real;

  mdtp: String;
  mDataPag:TDateTime;
implementation

uses S_SQL, S_DM4, S_DM2, S_FPag, S_MedVenPgt, s_FormaPgto, func_excecoes,
  Func2;

{$R *.DFM}

procedure TFrm_RCRec.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_RCRec.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      mdt1.SetFocus;
      end;
   end;
end;

procedure TFrm_RCRec.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      mdt2.SetFocus;
      end;
   end;
end;

procedure TFrm_RCRec.bbImprimirClick(Sender: TObject);


      procedure fImprimirDadosPagamentos(pNumero: Real; pDesd: String; pCodEmp, pTipo: Integer;  pDtemis:tDatetime);
      var
      query_lotes: TQuery;
      query_tit: TQuery;
      query_fpag: TQuery;
      mdados_tit: string;
      mdados_doc: string;
      mqtdtit: integer;

         procedure pfechartudo;
         begin
         query_lotes.close;
         freeandnil(query_lotes);
         query_tit.close;
         freeandnil(query_tit);
         query_fpag.close;
         freeandnil(query_fpag);
         end;

      begin
      query_tit:=TQuery.create(nil);
      query_lotes:=TQuery.create(nil);
      query_fpag:=TQuery.Create(nil);
      query_tit.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
      query_lotes.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
      query_fpag.DatabaseName:=DM1.SG_ASSOC.DatabaseName;


      Query_lotes.sql.add('Select FPLOTSEQ,FPLOTE,FPCODEMP from FPCRDUP where  FPNUMERO=:NUMERO'
                       +' and FPDESD=:DESD'
                       +' and FPTIPO=:TIPO'
                       +' and FPDTEMIS=:DTEMIS'
                       +' and FPDUP_CODEMP=:CODEMP'
                       +' group by FPLOTSEQ,FPLOTE,FPCODEMP ');

      Query_lotes.ParamByName('NUMERO').AsFloat:=pNumero;
      Query_lotes.ParamByName('DESD').AsString :=pDesd;
      Query_lotes.ParamByName('TIPO').AsInteger :=ptipo;
      Query_lotes.ParamByName('DTEMIS').AsDateTime:=pDtemis;
      Query_lotes.ParamByName('CODEMP').Asinteger:=pCodEmp;
      try
         query_lotes.open;
      except on e : exception do
         begin
         ex_erroSql_Novo(query_lotes,418,'SGE','FPCRDUP');
         pfechartudo;
         exit;
         end;
         end;
      if query_lotes.IsEmpty then
         begin
         fGerarEvento('446 - lote vazio ');
         ex_erroSql_Novo(query_lotes,418,'SGE','FPCRDUP');
         end
      else
         fGerarEvento('450 - quantidade lotes '+Inttostr(query_lotes.RecordCount));

      while not query_lotes.Eof do
         begin
         query_tit.close;
         query_tit.SQL.clear;
         query_tit.sql.add('Select FPDUP_CODEMP,  FPNUMERO,  FPDESD,    FPDTEMIS,  FPTIPO,  FPVALOR,  FPVALOR, '
                            +'  FPJUROS,  FPDESC,  FPDTVCTO from FPCRDUP where  FPLOTSEQ=:LOTSEQ'
                          +' and FPLOTE=:LOTE'
                          +' and FPCODEMP=:CODEMP '
                          +' ORDER BY FPDTVCTO ');
         query_tit.ParamByName('LOTSEQ').AsFloat:=query_lotes.fieldbyname('FPLOTSEQ').AsInteger;
         query_tit.ParamByName('LOTE').AsFloat:=query_lotes.fieldbyname('FPLOTE').AsInteger;
         query_tit.ParamByName('CODEMP').AsFloat:=query_lotes.fieldbyname('FPCODEMP').AsInteger;
         try
            query_tit.open;
         except on e : exception do
            begin
            ex_erroSql_Novo(query_tit,448,'SGE'+E.Message,'FPCRDUP');
            pfechartudo;
            exit;
            end;
            end;
         fGerarEvento('456 - titulos '+Inttostr(query_tit.RecordCount));

         if query_tit.IsEmpty then
            begin
            fGerarEvento('476 - lote vazio ');
            ex_erroSql_Novo(query_tit,476,'SGE','FPCRDUP');
            end;

         mqtdtit:=query_tit.RecordCount;
         query_fpag.close;
         query_fpag.SQL.clear;
         query_fpag.SQL.add('select FPDATA,FPFORMA,FPDESC AS NOMFORMA,FPNUMERO, FPBANCO,FPSERIE,FPVALOR,FPCAIXA,FPCODLDR '
                            +', DATAREAL '
                            +' FROM '

                           +'FPCR,CADFP,CADLDR WHERE FPCODIGO(+)=FPFORMA and  FPLOTSEQ=:LOTSEQ'
                          +' and FPLOTE=:LOTE'
                          +' and FPCODEMP=:CODEMP '
                          +' and CODEMP=FPCODEMP '
                          +' and CODLDR=FPCODLDR '
                          +' ORDER BY FPDATA  ');
         query_fpag.ParamByName('LOTSEQ').AsFloat:=query_lotes.fieldbyname('FPLOTSEQ').AsInteger;
         query_fpag.ParamByName('LOTE').AsFloat:=query_lotes.fieldbyname('FPLOTE').AsInteger;
         query_fpag.ParamByName('CODEMP').AsFloat:=query_lotes.fieldbyname('FPCODEMP').AsInteger;
         try
            query_fpag.open;
         except on e : exception do
            begin
            ex_erroSql_Novo(query_fpag,472,'SGE'+E.Message,'FPCRDUP');
            pfechartudo;
            exit;
            end;
            end;
         if query_fpag.IsEmpty then
            begin
            fGerarEvento('504 - fpagvazio ');
            ex_erroSql_Novo(query_fpag,476,'SGE','FPCRDUP');
            end
         else
             fGerarEvento('513 - documentos '+Inttostr(query_fpag.RecordCount));


         While (not query_tit.eof) and (not query_fpag.eof) do
            begin
            fGerarEvento('511 - esta no while ');

            mdados_tit:='';
            mdados_doc:='';
            if (mqtdtit>1) and (not query_tit.Eof) then
               begin
               mdados_tit:='Titulo: '+insere(query_tit.fieldbyname('FPNUMERO').AsString+'/'+query_tit.fieldbyname('FPDESD').asstring
                           +'-'+query_tit.fieldbyname('FPDUP_CODEMP').asstring ,' ',11)
                           +' Valor: '+insere(formatfloat(mcasas, query_tit.fieldbyname('FPVALOR').asfloat),' ',10)
                           +insere(
                           +iif(query_tit.fieldbyname('FPJUROS').asfloat<>0,
                                 'Juros '+formatfloat(mcasas, query_tit.fieldbyname('FPJUROS').Asfloat)
                                 ,' '),' ',12)
                           +insere(
                           +iif(query_tit.fieldbyname('FPDESC').asfloat<>0,
                                 'Descontos '+formatfloat(mcasas, query_tit.fieldbyname('FPDESC').Asfloat)
                                 ,' '),' ',12);
               query_tit.next;
               end
            else
               query_tit.next;

            if (not query_fpag.Eof) then
               begin
               mdados_doc:='Data: '+formatdatetime(fdt2, query_fpag.fieldbyname('FPDATA').Asdatetime)
                          +' '+insere2(query_fpag.fieldbyname('NOMFORMA').asstring,' ',20)
                          +insere(formatfloat(mcasas, query_fpag.fieldbyname('FPVALOR').asfloat),' ',12)
                          +' Dt.Cx: '+formatdatetime(fdt2, query_fpag.fieldbyname('DATAREAL').Asdatetime);
               query_fpag.next;
               end;
            mlinha:=insere2(mdados_tit,' ',60)+' '+insere2(mdados_doc,' ',70);
            Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
            Form_impres_Rcrec.rdprint1.impf(Form_impres_Rcrec.mlin,01, mlinha,mreduz);
            fGerarEvento('516 - dados titulo '+mdados_tit+' dados doc' +mdados_doc);
            end;
         query_lotes.next;
         end;
      pfechartudo;
      end;


Begin
mtotjd:=0; mtotjg:=0; mtotdd:=0;mtotdg:=0; mtotgd:=0; mtotgg:=0;
mtotpg:=0; mtotpd:=0; mtotag:=0;mtotdevd:=0;mtotdevg:=0;
mtotjdia:=0;

//if Qr_CRec.Eof then
   bbAplicar.Click;
if Qr_CRec.IsEmpty then
   begin
   fmensagem('Nada a ser impresso na condição solicitada!',0,['0'],0);
   exit;
   end;
Qr_CRec.First;
mvalant:='';
if not CB_MATRICIAL.Checked then
   begin
   RLReport1.DefaultFilter:=nil;
   RLBand4.Font.Name:='Arial';
   end
else
   begin
   RLReport1.DefaultFilter:=Matricial;
   RLBand4.Font.Name:='Courier New';
   end;
if CB_TIPOREL.ItemIndex=5 then
  begin
  rl_cab.Caption:='Relação Analitica de Titulos a Receber por ';
  if cb_tpp.ItemIndex=0 then
    rl_cab.Caption:=rl_cab.Caption+' Data de Emissão'
  else if cb_tpp.ItemIndex=1 then
    rl_cab.Caption:=rl_cab.Caption+' Vencimento'
  else if cb_tpp.ItemIndex=2 then
    rl_cab.Caption:=rl_cab.Caption+' Data da Baixa'
  else if cb_tpp.ItemIndex=3 then
    rl_cab.Caption:=rl_cab.Caption+' Data do Pgto'
  else if cb_tpp.ItemIndex=3 then
    rl_cab.Caption:=rl_cab.Caption+' Data do Pedido';
  if (Trim(MDT1.Text)='/  /') and (Trim(MDT2.Text)='/  /') then
    rl_periodo.Caption:='Período..: sem data predefinida!'
  else if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)='/  /') then
    rl_periodo.Caption:='Período..: a partir de '+MDT1.Text
  else if (Trim(MDT1.Text)='/  /') and (Trim(MDT2.Text)<>'/  /') then
    rl_periodo.Caption:='Período..: até '+MDT2.Text
  else if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
    rl_periodo.Caption:='Período..: Entre '+MDT1.Text+' è '+MDT2.Text;
  rl_status.Caption:='Status ..:'+CBTD.Text; 
  rlmod06.PreviewModal;
  Abort;
  end
else if CB_TIPOREL.ItemIndex=4 then
   fImprimirModelo05(0)
else if CB_TIPOREL.ItemIndex=3 then
   fImprimirModelo04(0)
else if CB_TIPOREL.ItemIndex=0 then
   begin
   testeform := TFrm_RcRec(FindGlobalComponent('Form_impres_Rcrec.'));
   if (testeform=nil)  then
      begin
      Application.CreateForm(Tfrm_Impres, Form_impres_Rcrec);
      end;
   Form_impres_Rcrec.mlin:=0;
   Form_impres_Rcrec.mpag:=0;
   Form_impres_Rcrec.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
   While not Qr_CRec.Eof do
      begin
      if Trim(mvalant)='' then
         mvalant:=Qr_CRecNOMGRU.AsString;
      if Form_impres_Rcrec.mlin=0 then
         begin
         mcinst4:='DUPLICATAS A RECEBER. ';
         if cb_tpp.ItemIndex=0 then
            mcinst4:=mcinst4+'Pesquisa Feita por Emissão.'
         else if cb_tpp.ItemIndex=1 then
            mcinst4:=mcinst4+'Pesquisa Feita por  Vencimento.'
         else if cb_tpp.ItemIndex=2 then
            mcinst4:=mcinst4+'Pesquisa Feita por Data de Baixa.'
         else
            mcinst4:=mcinst4+'Pesquisa Feita por Data de Pagamento.';
         Form_impres_Rcrec.mlin:=Form_impres_Rcrec.fImprimirCabecalho(136,mcinst4);
         Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
         if (Trim(mdt1.Text)='/  /') and (Trim(mdt2.Text)='/  /') then
            Form_impres_Rcrec.Rdprint1.Impf(03,01,Centra('TODAS AS DATAS.',' ',80),mneg)
         else if (Trim(mdt1.Text)='/  /') and (Trim(mdt2.Text)<>'/  /') then
            Form_impres_Rcrec.Rdprint1.impf(03,01,Centra('ATE: '+MDT2.Text,' ',80),mneg)
         else if (Trim(mdt1.Text)<>'/  /') and (Trim(mdt2.Text)='/  /') then
            Form_impres_Rcrec.Rdprint1.impf(03,01,Centra('A PARTIR DE: '+MDT1.Text,' ',80),mneg)
         else
            Form_impres_Rcrec.Rdprint1.impf(03,01,Centra('PERIODO DE: '+MDT1.Text+' A '+MDT2.Text,' ',60),mneg);
         Form_impres_Rcrec.mlin:=3;
         if CBTD.ItemIndex=1 then
            begin
            Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
            Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,Centra('Somente Duplicatas Pagas',' ',60),mneg);
            end
         else if CBTD.ItemIndex=2 then
            begin
            Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
            Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,Centra('Somente Duplicatas em abertas',' ',60),mneg);
            end;
         if cb_caucao.ItemIndex=1 then
            begin
            Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
            Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,Centra('Somente Titulos Caucionados',' ',60),mneg);
            end
         else if cb_caucao.ItemIndex=2 then
            begin
            Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
            Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,Centra('Somente Titulos Sem Caucionamento',' ',60),mneg);
            end;


         if lbx_codcli.Count>0 then
            FImprimeTitulo('Cliente',lbx_codcli,OMITIR_CLI);
         if lbx_codasse.Count>0 then
            FImprimeTitulo('Assessor',lbx_codasse,OMITIR_ASS);

         if cb_separado.ItemIndex<>20 then
            begin
            if lbx_codven.Count>0 then
               FImprimeTitulo('Vendedor',lbx_codven,OMITIR_VEN);
            end;
         if lbx_codcob.Count>0 then
            FImprimeTitulo('Cobranca',lbx_codcob,OMITIR_COB);

         if lbx_codbco.Count>0 then
            FImprimeTitulo('Banco/Caixa',lbx_codbco,OMITIR_BCO);

         if lbx_codfp.Count>0 then
            FImprimeTitulo('Forma Pgto',lbx_codfp,OMITIR_FP);
         if lbx_codred.Count>0 then
            FImprimeTitulo('Rede de Cliente',lbx_codred,OMITIR_RED);
         if lbx_codcv.Count>0 then
            FImprimeTitulo('Convenio',lbx_codcv,OMITIR_CV);
         if lbx_codloc.Count>0 then
            FImprimeTitulo('Cidade',lbx_codloc,OMITIR_LOC);
         if lbx_codtel.Count>0 then
            FImprimeTitulo('Televendas',lbx_codtel,OMITIR_TEL);
         if lbx_codsup.Count>0 then
            FImprimeTitulo('Supervisor',lbx_codsup,OMITIR_SUP);
         Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
//         if CBTD.ItemIndex=2 then
            Form_impres_Rcrec.Rdprint1.Impf(Form_impres_Rcrec.mlin,01,'Numero      Razao Social               Dt.Emis. Vlr Titulo Valor Pago Em Aberto Dt.Vcto. Dt Pgto. Descto NF ACUM Doc    Chave Bco Vend',mreduz);
//         else
//            Form_impres_Rcrec.Rdprint1.Impf(Form_impres_Rcrec.mlin,01,'Numero      Razao Social               Dt.Emis. Vlr Titulo Valor Pago Em Aberto Dt.Vcto. Dt Pgto.     Descto    Juros Doc  Chave Bco Vend',mreduz);

//Numero    Razao Social                       Dt.Emis. Vlr Titulo Valor Pago Em Aberto Dt.Vcto. Dt Pgto. Descto   Juros Doc Chave P Bco

   //    Form_impres_Rcrec.Rdprint1.Impf(Form_impres_Rcrec.mlin,01,'Numero    Razao Social                       Dt.Emis. Vlr Titulo Valor Pago Em Aberto Dt.Vcto. Dt Pgto. Desconto     Juros Documento',mreduz);
         end;

      if Qr_CRecCRDUP.Value=5 then
         begin
         mtotjd:=mtotjd-Qr_CRecCRJUROS.Value;
         mtotjg:=mtotjg-Qr_CRecCRJUROS.Value;

         mtotjdia:=mtotjdia+Qr_CRecCRJURD.Value;

         mtotdd:=mtotdd-Qr_CRecCRDESC.Value;
         mtotdg:=mtotdg-Qr_CRecCRDESC.Value;

         mtotdevd:=mtotdevd-Qr_CRecCRDEVOL.Value;
         mtotdevg:=mtotdevg-Qr_CRecCRDEVOL.Value;

         mtotgd:=mtotgd-Qr_CRecCRVALOR.Value;
         mtotgg:=mtotgg-Qr_CRecCRVALOR.Value;

         mtotpd:=mtotpd-Qr_CRecCRVALPAG.Value;
         mtotpg:=mtotpg-Qr_CRecCRVALPAG.Value;

         mtotad:=mtotad-(Qr_CRecCRVALOR.Value-(Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value));
         mtotag:=mtotag-(Qr_CRecCRVALOR.Value-(Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value));
         end
      else
         begin
         mtotjd:=mtotjd+Qr_CRecCRJUROS.Value;
         mtotjg:=mtotjg+Qr_CRecCRJUROS.Value;
         
         mtotjdia:=mtotjdia+Qr_CRecCRJURD.Value;

         mtotdd:=mtotdd+Qr_CRecCRDESC.Value;
         mtotdg:=mtotdg+Qr_CRecCRDESC.Value;

         mtotdevd:=mtotdevd+Qr_CRecCRDEVOL.Value;
         mtotdevg:=mtotdevg+Qr_CRecCRDEVOL.Value;

         mtotgd:=mtotgd+Qr_CRecCRVALOR.Value;
         mtotgg:=mtotgg+Qr_CRecCRVALOR.Value;

         mtotpd:=mtotpd+Qr_CRecCRVALPAG.Value;
         mtotpg:=mtotpg+Qr_CRecCRVALPAG.Value;

         mtotad:=mtotad+Qr_CRecCRVALOR.Value-(Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value);
         mtotag:=mtotag+Qr_CRecCRVALOR.Value-(Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value);
         end;

      mdtp:=' ';
      if cb_tpp.ItemIndex=2 then
         begin
         if (Qr_CRecCRDTBX.IsNull) or  (Qr_CRecCRDTBX.Value<StrToDate('01/01/1990')) then
            mdtp:=' '
         else
            mdtp:=FormatDateTime(fdt3, Qr_CRecCRDTBX.Value);
         end
      else
         begin
         if (Qr_CRecCRDTPAG.IsNull) or  (Qr_CRecCRDTPAG.Value<StrToDate('01/01/1990')) then
            mdtp:=' '
         else
            mdtp:=FormatDateTime(fdt3, Qr_CRecCRDTPAG.Value);
         end;


      Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
//      Form_impres_Rcrec.mlinha:=insere2(FormatFloat('000000',Qr_CRecCRNUMERO.Value)+'-',' ',07)
//              +insere2(Qr_CRecCRDESD.Value,' ',2)+' '

      mlinha:=insere2(Qr_CRecnumero_calc.AsString,' ',12)
              +insere2(Qr_CRecCRCODCLI.AsString+'-'+Trim(Qr_CRecCRAZAO.Value) ,' ',26)+' '
              +FormatDateTime(fdt3,Qr_CRecCRDTEMIS.Value)
              +insere(FormatFloat(mcasas,Qr_CRecCRVALOR.Value),' ',11)
              +insere(FormatFloat(mcasas,Qr_CRecCRVALPAG.Value),' ',11)
              +insere(FormatFloat(mcasas,(Qr_CRecCRVALOR.Value - (Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value) ) ),' ',10)+' '
              +FormatDateTime(fdt3,Qr_CRecCRDTVCTO.Value)+' ';
{      if cb_formapag.Checked then
         begin
         mcomplin:=insere(FormatFloat(mcasas,Qr_CRecCRDESC.Value),' ',7);
//         if CBTD.ItemIndex=2 then
            mcomplin:=mcomplin+insere(Qr_CRecCRNFACUM.AsString,' ',10);
//         else
//            mcomplin:=mcomplin+insere(FormatFloat(mcasas,Qr_CRecCRJUROS.Value),' ',11);

         mcomplin:=mcomplin+' '
                   +Insere2(ptpdoc[Qr_CRecCRDUP.AsInteger],' ',3)+' '
                   +insere(Qr_CRecCRNPED.AsString,'0',05);
         if Qr_CRecCRCODBCO.AsFloat=0 then
            mcomplin:=mcomplin+' Car'
         else
            mcomplin:=mcomplin+' '+Formatfloat('000',Qr_CRecCRCODBCO.Value);
         mcomplin:=mcomplin+' '+FormatFloat('00000', Qr_CRecVCODVEN.Value);

         DM1.Query2.Close;
         DM1.Query2.sql.Clear;
         DM1.Query2.SQL.Add('Select FPLOTSEQ,FPLOTE from FPCRDUP where '
                           +iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'','  FPCODEMP=0'+Qr_CRecCRCODEMP.AsString+' and ')
                           +' FPNUMERO=0'+Qr_CRecCRNUMERO.AsString
                           +' and FPDESD='+chr(39)+Qr_CRecCRDESD.Value+chr(39)
                           +' and FPTIPO=0'+Qr_CRecCRDUP.AsString
                           +' and FPDTEMIS='+chr(39)+FormatDatetime(fdt, Qr_CRecCRDTEMIS.Value)+chr(39)
                           +' group by FPLOTSEQ,FPLOTE ');

         DM1.Query2.Open;
   //      DM1.Query2.sql.savetofile(mpastatemp + 'SQL.txt');
         if DM1.Query2.Eof then
            begin
            mlinha:=mlinha+insere2(mdtp,' ',8)+mcomplin;
            end
         else
            begin
            While not DM1.Query2.Eof do
               begin
               DM1.Query3.Close;
               DM1.Query3.SQL.Clear;
               DM1.query3.SQL.add('Select * from FPCR where '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADDAR',[]),'',' FPCODEMP=0'+Qr_CRecCRCODEMP.AsString+' and ')
                                 +' FPLOTSEQ=0'+DM1.Query2.FieldByName('FPLOTSEQ').AsString
                                 +' and  FPLOTE=0'+DM1.Query2.FieldByName('FPLOTE').AsString);
               DM1.Query3.Open;
               if DM1.Query3.Eof then
                  begin
                  mlinha:=mlinha+insere2(mdtp,' ',8)+mcomplin;
                  end
               else
                  begin
                  if DM1.Query3.FieldByName('FPDATA').IsNull then
                     mdtp:='  /  /  '
                  else
                     mdtp:=FormatDatetime(fdt3, DM1.Query3.fieldbyName('FPDATA').AsDateTime);
                  mlinha:=mlinha+insere2(mdtp,' ',8)+mcomplin;
                  DM1.Query3.Next;
                  if not DM1.Query3.Eof then
                     begin
                     Form_impres_Rcrec.rdprint1.impf(Form_impres_Rcrec.mlin,01,mlinha,mreduz);
                     mcomplin:='';
                     Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
                     mlinha:=insere2(' ',' ',89);
                     end;
                  While not DM1.Query3.eof do
                     begin
                     if DM1.Query3.FieldByName('FPDATA').IsNull then
                        mdtp:='  /  /  '
                     else
                        mdtp:=FormatDatetime(fdt3, DM1.Query3.fieldbyName('FPDATA').AsDateTime);
                     mlinha:=mlinha+insere2(mdtp,' ',8)+mcomplin;
                     DM1.Query3.Next;
                     if not DM1.Query3.Eof then
                        begin
                        Form_impres_Rcrec.rdprint1.impf(Form_impres_Rcrec.mlin,01,mlinha,mreduz);
                        mcomplin:='';
                        Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
                        mlinha:=insere2(' ',' ',89);
                        end;
                     end;
                  end;
               mcomplin:='';
               DM1.Query2.Next;
               if not DM1.Query2.Eof then
                  begin
                  Form_impres_Rcrec.rdprint1.impf(Form_impres_Rcrec.mlin,01,mlinha,mreduz);
                  Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
                  mlinha:=insere2(' ',' ',89);
                  end;
               end;
            end;
         end
      else
}
         begin


         mlinha:=mlinha+insere2(mdtp,' ',8)
              +insere(FormatFloat(mcasas,Qr_CRecCRDESC.Value),' ',7);

//         if CBTD.ItemIndex=2 then
            mlinha:=mlinha+insere(Qr_CRecCRNFACUM.AsString,' ',11);
//         else
//            mlinha:=mlinha+insere(FormatFloat(mcasas,Qr_CRecCRJUROS.Value),' ',11);

         mlinha:=mlinha+' '+Insere2(ptpdoc[Qr_CRecCRDUP.AsInteger],' ',3)+' '
              +insere(Qr_CRecCRNPED.AsString,'0',05);
         if Qr_CRecCRCODBCO.AsFloat=0 then
            mlinha:=mlinha+' Car'
         else
            mlinha:=mlinha+' '+Formatfloat('000',Qr_CRecCRCODBCO.Value);
         mlinha:=mlinha+' '+FormatFloat('00000', Qr_CRecVCODVEN.Value);

         end;

      Form_impres_Rcrec.rdprint1.impf(Form_impres_Rcrec.mlin,01,mlinha,mreduz);

    if (cb_formapag.Checked) AND (Qr_CRecCRSTATUS.AsInteger>0) then
      begin
      fGerarEvento('735 vai gerar pagamentos');
      fImprimirDadosPagamentos(Qr_CRecCRNUMERO.asfloat,Qr_CRecCRDESD.asstring,
                            Qr_CRecCRCODEMP.AsInteger,
                            Qr_CRecCRDUP.asinteger,
                            Qr_CRecCRDTEMIS.Asdatetime);
      end;

      Qr_CRec.Next;
      if Qr_CRec.Eof then
         begin
         Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
         if cb_separado.ItemIndex<>14 then
            begin
            Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
            Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('- '+mvalant,'.',40)+': Total'
                                    +insere(FormatFloat(mcasas,mtotgd),' ',13)+' -Pagos '
                                    +insere(FormatFloat(mcasas,mtotpd),' ',13)+' -Abertos '
                                    +insere(FormatFloat(mcasas,mtotad),' ',13)+' -Desc. '
                                    +insere(FormatFloat(mcasas,mtotdd),' ',07)+' -Juros '
                                    +insere(FormatFloat(mcasas,mtotjd),' ',07),mreduz);
            mtotgd:=0; mtotpd:=0;mtotad:=0;mtotdd:=0; mtotjd:=0;
            end;

         Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
         Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,'Total Geral -Titulos -->'
                                 +insere(FormatFloat(mcasas,mtotgg),' ',13)+' -Pagos -->'
                                 +insere(FormatFloat(mcasas,mtotpg),' ',13)+' -Abertos -->'
                                 +insere(FormatFloat(mcasas,mtotag),' ',13)+' -Desc. Fin. -->'
                                 +insere(FormatFloat(mcasas,mtotdg),' ',07)+' -Juros -->'
                                 +insere(FormatFloat(mcasas,mtotjg),' ',07),mreduz);
         Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
         Form_impres_Rcrec.Rdprint1.Impf(Form_impres_Rcrec.mlin,01,'Fim'+insere('-','-',77),mnormal);
         if CB_VISREL.Checked then
            begin
            if Form_impres_Rcrec.RDprint1.Setup then Form_impres_Rcrec.Rdprint1.Fechar;
            end
         else
            Form_impres_Rcrec.RDprint1.Fechar;
         Form_impres_Rcrec.Free;
         Form_impres_Rcrec:=nil;
         break;
         end;
      if cb_separado.ItemIndex<>14 then
         begin
         if mvalant<>Qr_CRecNOMGRU.Value then
            begin
            Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
            Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('- '+mvalant,'.',40)+': Total'
                                    +insere(FormatFloat(mcasas,mtotgd),' ',13)+' -Pagos '
                                    +insere(FormatFloat(mcasas,mtotpd),' ',13)+' -Abertos '
                                    +insere(FormatFloat(mcasas,mtotad),' ',13)+' -Desc. '
                                    +insere(FormatFloat(mcasas,mtotdd),' ',07)+' -Juros '
                                    +insere(FormatFloat(mcasas,mtotjd),' ',07),mreduz);
            mtotgd:=0; mtotpd:=0;mtotad:=0;mtotdd:=0; mtotjd:=0;mtotdevd:=0;

            mvalant:=Qr_CRecNOMGRU.Value;
            if CB_AVANCPAG.Checked then
               begin
               Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
               Form_impres_Rcrec.Rdprint1.Impf(Form_impres_Rcrec.mlin,01,'Continua...'+insere('-','-',69),mnormal);
               Form_impres_Rcrec.Rdprint1.Novapagina;
               Form_impres_Rcrec.mlin:=0;
               end;
//               Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,Qr_CRecNOMGRU.AsString,mneg)
            end;
         end;
      if Form_impres_Rcrec.mlin>57 then
         begin
         Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
         Form_impres_Rcrec.Rdprint1.Impf(Form_impres_Rcrec.mlin,01,'Continua...'+insere('-','-',69),mnormal);
         Form_impres_Rcrec.Rdprint1.Novapagina;
         Form_impres_Rcrec.mlin:=0;
         end;

      end;
   end
//else if RG_TIPOREL.ItemIndex>=1 then
else
   begin
   lbl_titulo02.Caption:='Contas a Receber. ' +fperiodo(0,MDT1.Text,MDT2.Text);

   if cb_tpp.ItemIndex=0 then
      lbl_titulo.Caption:='Pesquisa Feita por Emissão.'
   else if cb_tpp.ItemIndex=1 then
      lbl_titulo.Caption:='Pesquisa Feita por  Vencimento.'
   else if cb_tpp.ItemIndex=2 then
      lbl_titulo.Caption:='Pesquisa Feita por Data de Baixa.'
   else if cb_tpp.ItemIndex=3 then
      lbl_titulo.Caption:='Pesquisa Feita por Data de Pagamento.';
   if CBTD.ItemIndex=1 then
      lbl_titulo.Caption:=lbl_titulo.Caption+'Somente Duplicatas Pagas'
   else if CBTD.ItemIndex=2 then
      lbl_titulo.Caption:=lbl_titulo.Caption+'Somente Duplicatas em abertas';
   filtros.Lines.Clear;
   if lbx_codcli.Count>0 then
      FImprimeTitulo_Fortes('Cliente',lbx_codcli,OMITIR_CLI);
   if lbx_codasse.Count>0 then
      FImprimeTitulo_Fortes('Assessor',lbx_codasse,OMITIR_ASS);

   if cb_separado.ItemIndex<>20 then
      begin
      if lbx_codven.Count>0 then
         FImprimeTitulo_Fortes('Vendedor',lbx_codven,OMITIR_VEN);
      end;
   if lbx_codcob.Count>0 then
      FImprimeTitulo_Fortes('Cobranca',lbx_codcob,OMITIR_COB);

   if lbx_codbco.Count>0 then
      FImprimeTitulo_Fortes('Banco/Caixa',lbx_codbco,OMITIR_BCO);

   if lbx_codfp.Count>0 then
      FImprimeTitulo_Fortes('Forma Pgto',lbx_codfp,OMITIR_FP);
   if lbx_codred.Count>0 then
      FImprimeTitulo_Fortes('Rede de Cliente',lbx_codred,OMITIR_RED);
   if lbx_codcv.Count>0 then
      FImprimeTitulo_Fortes('Convenio',lbx_codcv,OMITIR_CV);
   if lbx_codloc.Count>0 then
      FImprimeTitulo_Fortes('Cidade',lbx_codloc,OMITIR_LOC);
   if lbx_codtel.Count>0 then
      FImprimeTitulo_Fortes('Televendas',lbx_codtel,OMITIR_TEL);
   if lbx_codsup.Count>0 then
      FImprimeTitulo_Fortes('Supervisor',lbx_codsup,OMITIR_SUP);
   if CB_VISREL.Checked then
      begin
      RLReport1.PreviewModal;
      end
   else
      RLReport1.Print;

   end;




{
Numero       Razao Social                             Dt.Emissão          Valor   Dt.Vcto. Data Pgto.   Desconto      Juros     Lote
123456789-10 1234567890123456789012345679801234567890 10/09/2000 zzz.zzz.zz9,99 15/05/5001 10/09/2002zzzz.zz9,99zzzz.zz9,99 12345678
- Total do dia..................................................               1234567890123456789012


Numero    Razao Social                       Dt.Emis. Vlr Titulo Valor Pago Em Aberto Dt.Vcto. Dt Pgto. Desconto     Juros Documento
123456-10 1234567890123456789012345679801234 10/09/20zzzz.zz9,99zzzz.zz9,99zzz.zz9,99 15/05/50 10/09/20zz.zz9,99zzz.zz9,99 Nota Prom
- Total do dia......................................zzzzz.zz9,99zzzz.zz9,99zzz.zz9,99                 zzz.zz9,99zzz.zz9,99

 }
end;

procedure TFrm_RCRec.FormCreate(Sender: TObject);
var
x: Integer;
begin
   pAGEcONTROL1.ActivePage := TabSheet1;
tsRelatorio.TabVisible:=false;
ts_new.TabVisible:=false;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

CLB_TIPODOC.Items.Clear;
for x:=0 to high(ptpdoc) do
   begin
   CLB_TIPODOC.Items.Add(ptpdoc[x]);
   end;
//CLB_TIPODOC.Items.Add('Cheque Balcão');
//CLB_TIPODOC.Checked[x-1]:=true;

RG_TIPOPED.Items.Clear;
for x:=1 to high(tab_tped) do
   begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
   end;

Qr_CRecCRDTEMIS.DisplayFormat :=fdt3;
Qr_CRecCRDTVCTO.DisplayFormat :=fdt3;
Qr_CRecCRDTBX.DisplayFormat   :=fdt3;
Qr_CRecCRDTPAG.DisplayFormat  :=fdt3;
Qr_CRecCRDESC.DisplayFormat   :=mcasas;
Qr_CRecvalorjuros.DisplayFormat:=mcasas;
Qr_CRecCRJUROS.DisplayFormat  :=mcasas;
Qr_CRecCRVALOR.DisplayFormat  :=mcasas;
Qr_CRecCRVALPAG.DisplayFormat :=mcasas;
Qr_CRecvalapagar.DisplayFormat:=mcasas;

DTCHQP.Text                   :=FormatDatetime(fdt2, date-7);
fAtualizaPadrao(0);
if not CLB_TIPOCOB.Checked[CLB_TIPOCOB.Items.Count-1] then
   begin
   mboolean:=true;
   for x:=0 to CLB_TIPOCOB.Items.Count-1 do
      begin
      if CLB_TIPOCOB.Checked[x] then
         mboolean:=false;
      end;
   if mboolean then
      CLB_TIPOCOB.Checked[CLB_TIPOCOB.Items.Count-1]:=true;
   end;
if CLB_TIPODOC.Checked[CLB_TIPODOC.Items.Count-1] then
   CLB_TIPODOCClick(self);

MDT1.Text:=FormatDatetime(fdt2, date-7);
mDataPag:=date;
DATAPGTO.Text:=FormatDatetime(fdt2, mDataPag);

end;

procedure TFrm_RCRec.bbAplicarClick(Sender: TObject);
var
mCampoGrupo,mGrupoChq: String;
mOrdemGrupo: String;
mCampoNome: String;
x: Integer;
begin
if cb_RazSocNomFan.Checked then
  mCampoNome:='CDENOM'
else
  mCampoNome:='CRAZAO';
if valint(lotrem_ini.Text)>valint(lotrem_fim.Text) then
   begin
   fmensagem('Lote inicial maior que final!',0,['0'],0);
   PageControl1.ActivePage:=ts_outrosfiltros;
   lotrem_ini.SetFocus;
   exit;
   end;
if trim(DATAPGTO.Text)='/  /' then
   begin
   mDataPag:=date;
   DATAPGTO.Text:=FormatDatetime(fdt2, mDataPag);
   end;
if CB_TIPOREL.ItemIndex<>4 then
   begin
   mDataPag:=date;
   DATAPGTO.Text:=FormatDatetime(fdt2, mDataPag);
   end;


if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      fmensagem('Data Inicial maior que Final, Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
if cb_tpp.ItemIndex=4 then
   mDataPesq:='CRDATPED'
else if cb_tpp.ItemIndex=3 then
   mDataPesq:='CRDTPAG'
else if cb_tpp.ItemIndex=2 then
   mDataPesq:='CRDTBX'
else if cb_tpp.ItemIndex=1 then
   mDataPesq:='CRDTVCTO'
else
   mDataPesq:='CRDTEMIS';
mCampoGrupo:=chr(39)+insere2(' ',' ',40)+chr(39)+' AS NOMGRU';
mGrupoChq  :=chr(39)+insere2(' ',' ',40)+chr(39)+' AS NOMGRU';
mOrdemGrupo:='';

if cb_separado.ItemIndex=0 then
   begin
   mOrdemGrupo:='CRDTEMIS';
   mGrupoChq  :='TO_CHAR(CHDTEMIS,'+chr(39)+'yyyy'+chr(39)+') AS NOMGRU'
               +', TO_CHAR(CHDTEMIS,'+chr(39)+'yyyy'+chr(39)+') AS CAMPOORDEM ';
   mCampoGrupo:='TO_CHAR(CRDTEMIS,'+chr(39)+'yyyy'+chr(39)+') AS NOMGRU'
               +',TO_CHAR(CRDTEMIS,'+chr(39)+'yyyy'+chr(39)+') AS CAMPOORDEM ';
   end
else if cb_separado.ItemIndex=1 then
   begin
   mOrdemGrupo:='CRDTVCTO ';
   mGrupoChq  :='TO_CHAR(CHDTDEP,'+chr(39)+'yyyy'+chr(39)+') AS NOMGRU'
               +',TO_CHAR(CHDTDEP,'+chr(39)+'yyyy'+chr(39)+') AS CAMPOORDEM ';
   mCampoGrupo:='TO_CHAR(CRDTVCTO,'+chr(39)+'yyyy'+chr(39)+') AS NOMGRU'
               +',TO_CHAR(CRDTVCTO,'+chr(39)+'yyyy'+chr(39)+') AS CAMPOORDEM ';


   end
else if cb_separado.ItemIndex=2 then
   begin
   mOrdemGrupo:='CRCODBCO ';
   mCampoGrupo:='BCBANCO ||'+chr(39)+' '+chr(39)+'||TO_CHAR('+mOrdemGrupo+') AS NOMGRU '
               +', BCCODBCO AS CAMPOORDEM ';
   mGrupoChq  :='TO_CHAR(CHBANCO) AS NOMGRU'
               +', CHBANCO AS CAMPOORDEM ';

   end
else if cb_separado.ItemIndex=3 then
   begin
   mOrdemGrupo:='CUF,CCIDADE ';
   mCampoGrupo:= 'CUF ||'+chr(39)+'-'+chr(39)+'|| CCIDADE  AS NOMGRU '
               +', CUF || CCIDADE AS CAMPOORDEM ';

   mGrupoChq:= 'CUF ||'+chr(39)+'-'+chr(39)+'|| CCIDADE  AS NOMGRU '
               +', CUF || CCIDADE AS CAMPOORDEM ';

   end
else if cb_separado.ItemIndex=4 then
   begin
   mOrdemGrupo:=mCampoNome;
   mCampoGrupo:=' TO_CHAR(CCODCLI)  AS NOMGRU  '
                  +', CRAZAO AS CAMPOORDEM ';
//               +', CCODCLI AS CAMPOORDEM ';

   mGrupoChq:= 'TO_CHAR(CCODCLI)  AS NOMGRU  '
             +' , CRAZAO AS CAMPOORDEM ';
//             +', CCODCLI AS CAMPOORDEM ';


   if CB_CONSUMIDOR.Checked then
      begin
      mOrdemGrupo:=' decode(CFRAZAO,null,'+mCampoNome+',CFRAZAO) as NOMGRU '
                 +', decode(CFRAZAO,null,'+mCampoNome+',CFRAZAO) AS CAMPOORDEM ';

      mOrdemGrupo:=' decode(CFRAZAO,null,'+mCampoNome+',CFRAZAO) as NOMGRU '
                  +', decode(CFRAZAO,null,'+mCampoNome+',CFRAZAO) AS CAMPOORDEM ';

      end;
   end
else if cb_separado.ItemIndex=5 then
   begin
   mOrdemGrupo:='CRCODCV ';
   mCampoGrupo:= 'TO_CHAR(CRCODCV) AS NOMGRU  '
               +', CRCODCV AS CAMPOORDEM ';

   mGrupoChq  :=chr(39)+insere2(' ',' ',40)+chr(39)+' AS NOMGRU '
               +', 0 AS CAMPOORDEM ';

   end
else if cb_separado.ItemIndex=6 then
   begin
   mOrdemGrupo:=' CRDTEMIS ';
   mCampoGrupo:='TO_CHAR(CRDTEMIS,'+chr(39)+fdt2+chr(39)+')  AS NOMGRU '
             +', CRDTEMIS AS CAMPOORDEM ';
   mGrupoChq  :='TO_CHAR(CHDTEMIS,'+chr(39)+fdt2+chr(39)+')  AS NOMGRU '
             +', CHDTEMIS AS CAMPOORDEM ';
   end
else if cb_separado.ItemIndex=7 then
   begin
   mOrdemGrupo:=' CRDTPAG ';
   mCampoGrupo:='TO_CHAR(CRDTPAG,'+chr(39)+fdt2+chr(39)+')  AS NOMGRU '
               +', CRDTPAG AS CAMPOORDEM ';

   mGrupoChq  :='TO_CHAR(CHDTDEP,'+chr(39)+fdt2+chr(39)+')  AS NOMGRU '
                +', CHDTDEP AS CAMPOORDEM ';
   end
else if cb_separado.ItemIndex=8 then
   begin
   mOrdemGrupo:=' CRDTVCTO ';
   mCampoGrupo:='TO_CHAR(CRDTVCTO,'+chr(39)+fdt2+chr(39)+')  AS NOMGRU '
             +', CRDTVCTO AS CAMPOORDEM ';
   mGrupoChq  :='TO_CHAR(CHDTDEP,'+chr(39)+fdt2+chr(39)+')  AS NOMGRU '
               +', CHDTDEP AS CAMPOORDEM ';
   end
else if cb_separado.ItemIndex=9 then
   begin
   mOrdemGrupo:='CUF ';
   mCampoGrupo:= 'CUF  AS NOMGRU '
               +', CUF AS CAMPOORDEM ';

   mGrupoChq  := 'CUF  AS NOMGRU '
               +', CUF AS CAMPOORDEM ';

   end
else if cb_separado.ItemIndex=10 then
   begin
   mOrdemGrupo:=' CRNOMFPGTO ';

   mCampoGrupo:=' CRNOMFPGTO ||'+chr(39)+' '+chr(39)+'|| TO_CHAR(CRCODFPGTO)  AS NOMGRU '
               +', CRCODFPGTO AS CAMPOORDEM ';


   mGrupoChq:=' TO_CHAR(CHCODFPGTO)  AS NOMGRU '
             +', CHCODFPGTO AS CAMPOORDEM ';

   end


else if cb_separado.ItemIndex=11 then
   begin
   mOrdemGrupo:='CRDTEMIS';
   mCampoGrupo:='TO_CHAR(CRDTEMIS,'+chr(39)+'yyyymm'+chr(39)+') AS NOMGRU'
                +',TO_CHAR(CRDTEMIS,'+chr(39)+'yyyymm'+chr(39)+') AS CAMPOORDEM ';
   mGrupoChq:='TO_CHAR(CHDTEMIS,'+chr(39)+'yyyymm'+chr(39)+') AS NOMGRU '
             +',TO_CHAR(CHDTEMIS,'+chr(39)+'yyyymm'+chr(39)+') AS CAMPOORDEM ';

   end
else if cb_separado.ItemIndex=12 then
   begin
   mOrdemGrupo:='CRDTVCTO';
   mCampoGrupo:='TO_CHAR(CRDTVCTO,'+chr(39)+'yyyymm'+chr(39)+') AS NOMGRU '
               +',TO_CHAR(CRDTVCTO,'+chr(39)+'yyyymm'+chr(39)+') AS CAMPOORDEM';

   mGrupoChq:='TO_CHAR(CHDTDEP,'+chr(39)+'yyyymm'+chr(39)+') AS NOMGRU'
              +',TO_CHAR(CHDTDEP,'+chr(39)+'yyyymm'+chr(39)+') AS CAMPOORDEM';
   end
else if cb_separado.ItemIndex=13 then
   begin
   mOrdemGrupo:='CNOMRED ';
   mCampoGrupo:= 'CNOMRED  ||'+chr(39)+'-'+chr(39)+'|| TO_CHAR(CCODRED) AS NOMGRU  '
                 +',CNOMRED AS CAMPOORDEM';

   mGrupoChq  := 'CNOMRED  ||'+chr(39)+' '+chr(39)+'|| TO_CHAR(CCODRED) AS NOMGRU  '
                 +',CNOMRED AS CAMPOORDEM';
   end
else if cb_separado.ItemIndex=14 then
   begin
   mCampoGrupo:=chr(39)+insere2(' ',' ',40)+chr(39)+' AS NOMGRU '
                 +','+chr(39)+insere2(' ',' ',40)+chr(39)+' CAMPOORDEM';

   mOrdemGrupo:='';
   mGrupoChq:=chr(39)+insere2(' ',' ',40)+chr(39)+' AS NOMGRU '
                 +','+chr(39)+insere2(' ',' ',40)+chr(39)+' CAMPOORDEM';

   end
else if cb_separado.ItemIndex=15 then
   begin
   mOrdemGrupo:='VCODSUP ';
   mCampoGrupo:= 'TO_CHAR(VCODSUP) AS NOMGRU  '
               +',VCODSUP AS CAMPOORDEM ';

   mGrupoChq:=chr(39)+insere2(' ',' ',40)+chr(39)+' AS NOMGRU '
              +',0 CAMPOORDEM';

   end
else if cb_separado.ItemIndex=16 then
   begin
   mOrdemGrupo:='CRCODTLV ';
   mCampoGrupo:= 'TO_CHAR(CRCODTLV) AS NOMGRU  '
                +',CRCODTLV AS CAMPOORDEM ';

   mGrupoChq:=chr(39)+insere2(' ',' ',40)+chr(39)+' AS NOMGRU '
             +', 0 AS CAMPOORDEM';

   end
else if cb_separado.ItemIndex=17 then
   begin
   mOrdemGrupo:='CRTCB ';
   mCampoGrupo:= 'TO_CHAR(CRTCB) AS NOMGRU  '
               +',CRTCB AS CAMPOORDEM ';

   mGrupoChq:=chr(39)+insere2(' ',' ',40)+chr(39)+' AS NOMGRU '
             +', 0 AS CAMPOORDEM';

   end
else if cb_separado.ItemIndex=18 then
   begin
   mOrdemGrupo:='CRCODORI ';
   mCampoGrupo:= 'TO_CHAR(CRCODORI) AS NOMGRU  '
               +',CRCODORI AS CAMPOORDEM ';

   mGrupoChq:=chr(39)+insere2(' ',' ',40)+chr(39)+' AS NOMGRU '
             +', 0 AS  CAMPOORDEM';

   end
else if cb_separado.ItemIndex=19 then
   begin
   mOrdemGrupo:='CRDUP ';
   mCampoGrupo:= 'TO_CHAR(CRDUP) AS NOMGRU  '
                +',to_char(CRDUP) AS CAMPOORDEM ';

   mGrupoChq:=chr(39)+insere2('Cheques Pre-Datados',' ',40)+chr(39)+' AS NOMGRU '
              +','+chr(39)+insere2('Cheques Pre-Datados',' ',40)+chr(39)+' AS CAMPOORDEM ';

   end
else if cb_separado.ItemIndex=20 then
   begin
   mOrdemGrupo:='CRCODVEN ';
   mCampoGrupo:='TO_CHAR(CRCODVEN) ||'+chr(39)+' '+chr(39)+'|| VNOME AS NOMGRU'
               +',CRCODVEN AS CAMPOORDEM ';

   mGrupoChq  :=chr(39)+insere2(' ',' ',40)+chr(39)+' AS NOMGRU '
               +',0 AS  CAMPOORDEM';

   end
else if cb_separado.ItemIndex=21 then
   begin
   mOrdemGrupo := 'CRNFACUM ';
   mCampoGrupo := 'CRNFACUM AS NOMGRU '
                 +',CRNFACUM AS CAMPOORDEM ';

   mGrupoChq   := chr(39)+insere2(' ',' ',40)+chr(39)+' AS NOMGRU '
                 +','+chr(39)+insere2(' ',' ',40)+chr(39)+' CAMPOORDEM';
   end;


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','CRCODEMP','CCODCLI','CRCODCLI');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';

//fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADVEN' ,'VCODEMP','CRCODEMP' ,'VCODVEN' ,'CRCODVEN');
fInnerJoin(0,'CADVEN' ,'VCODEMP','CRCODEMP' ,'VCODVEN' ,'CRCODVEN');


if CB_CONSUMIDOR.Checked then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin3(0,'CADCSF' ,'CFCODEMP','CRCODEMP' ,'CFLOTSEQ' ,'CRLOTSEQ_CP','CFCHAVEP' ,'CRNPED');
   end;

IF CB_INIBIR_DEVOL.Checked then
   begin
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin4(0,'CADP01D','P1DCODEMP_OR','CRCODEMP','P1DLS_OR','CRLOTSEQ_CP','P1DCH_OR','CRNPED'
                   ,'P1DOR_OR','CRORDEM');
   la_instrucao:=la_instrucao+' and (P1DCH_OR is null)';
   end;

if cb_separado.ItemIndex=2 then
   begin
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADBCO' ,'BCCODEMP','CRCODEMP' ,'BCCODBCO' ,'CRCODBCO');

   end;

la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
if trim(mOrdemGrupo)<>'' then
   mOrdemGrupo:=mOrdemGrupo+',';


Qr_CRec.Close;
Qr_CRec.SQL.Clear;
Qr_CRec.SQL.Add('Select CRNUMERO,CRQTDDM, CRDESD, CRDTEMIS, CRDTVCTO, '
               +'       CRDTBX, CRDESC, NVL(CRJUROS,0) AS CRJUROS, CRVALOR,CRCODCLI, '
               +'       CRJURD,  cricmsr,crtotipi, '
               +iif(CB_CONSUMIDOR.Checked,' decode(CFRAZAO,null,CDENOM,CFRAZAO)',mCampoNome)+' as CRAZAO'
               +'       , CFONE01 '
               +'       ,CCODLOC,CCIDADE,CUF '




               +'       ,CCODBAI,CBAIRRO, '

               +' clog || '
               +' case when nvl(ccompl,'+QuotedStr('')+')='+QuotedStr('')+' then '+QuotedStr('')+' else '+QuotedStr(' ')+' || ccompl end || '
               +'case when nvl(cnum,'+QuotedStr('')+')='+QuotedStr('')+' then '+QuotedStr('')+' else '+QuotedStr(' ')+' || cnum end '
               +' as ender '
               +', cemail '
                 +',ccep '
                 +',CCNPJ,CCPF,VCPF'

               +'       ,CRLOTE,(NVL(CRDEVOL,0)+CRVALPAG) AS CRVALPAG,CRDUP,CRDTPAG, '
               +'       CRNPED,CRORDEM,CRLOTSEQ_LB, '
               +'       CRCODEMP,CRCODBCO,CRSTATUS, '
               +'       '+mCampoGrupo+','
               +'       VCODVEN,VNOME, '
               +'       CRCODCC AS CODCCU, '
               +'       CRCODFPGTO,CRNOMFPGTO, '
               +'       CRNOMCC AS NOMCCU '
               +'       ,CRDESCF '
               +'       ,CRTCB '
               +'       ,CRTITPROT '
               +'       ,CRDTDESCF,CRDESCD,CRMULTA,CRDEVOL,CRNUMPARC,CRQTDPARC,CRNFACUM '
               +'  from CADDAR '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' CRSTATUS<9 ');

if cb_caucao.itemindex=1 then
   Qr_CRec.SQL.add(' and CRLOTE_CAUCAO>0 ')
else if cb_caucao.itemindex=2 then
   Qr_CRec.SQL.add(' and CRLOTE_CAUCAO=0 ');

mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRCODCLI '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codusr_cx,OMITIR_USR_CX);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRCODUSR '+mcinst2);


mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRCODVEN '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codasse,OMITIR_ASS);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRCODASSE '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codtel,OMITIR_TEL);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRCODTLV '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and VCODSUP '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codreg,OMITIR_CODREG);
if trim(mcinst2)<>'' then QR_Crec.sql.Add(' and CROTA '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CCODRED '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codcv,OMITIR_CV);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRCODCV '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codcob,OMITIR_COB);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRCODBCO '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRCODCTA '+mcinst2);

if trim(NOTA_ORIGEM.Text)<>'' then
   begin
   Qr_CRec.SQL.add(' and CRNFACUM like :NFACUM ');
   Qr_CRec.ParamByName('NFACUM').AsString:=NOTA_ORIGEM.Text;
   end;
mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CCODLOC '+mcinst2);

mcinst2:=fItensListBox(1,lbx_codcc,OMITIR_CC);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRCODCC '+mcinst2);

mcinst2:=fItensListBox(1,lbx_coddep,OMITIR_DEP);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRCODDEP '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codfp,OMITIR_FP);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRCODFPGTO '+mcinst2);
if valint(lotrem_ini.Text)>0 then
   Qr_CRec.SQL.Add(' and CRLEMAT>=0'+Trim(lotrem_ini.Text));
if valint(lotrem_fim.Text)>0 then
   Qr_CRec.SQL.Add(' and CRLEMAT<=0'+Trim(lotrem_fim.Text));


if trim(MDT1.Text)<>'/  /' then
   Qr_CRec.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text)));

if trim(MDT2.Text)<>'/  /' then
   Qr_CRec.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,FALSE,strtodate(mdt2.text)));
if CBTD.ItemIndex=1 then
   Qr_CRec.SQL.Add(' and CRSTATUS>0')
else if CBTD.ItemIndex=2 then
   Qr_CRec.SQL.Add(' and CRSTATUS<2');
if Trim(FILTRO.Text)<>'' then
   begin
   Qr_CRec.SQL.Add(' and '+FILTRO.Text);
   end;


if not (CLB_TIPOCOB.Checked[CLB_TIPOCOB.Items.Count-1]) then
   begin
   mcinst:=' and ( ';
   mcinst2:='';
   if CLB_TIPOCOB.Checked[0]=true then
      begin
      mcinst2:=mcinst2+mcinst+' (CRCODBCO=0) ';
      mcinst:= ' or ';
      end;
   if CLB_TIPOCOB.Checked[1]=true then
      begin
      mcinst2:=mcinst2+mcinst+' (CRCODBCO<>0) ';
      mcinst:=' or ';
      end;

   if CLB_TIPOCOB.Checked[2]=true then
      begin
      mcinst2:=mcinst2+mcinst+' (CRTCB=2) ';
      mcinst:=' or ';
      end;

   if CLB_TIPOCOB.Checked[3] then
      begin
      mcinst2:=mcinst2+mcinst+' (CRTCB=3) ';
      mcinst:=' or ';
      end;
   if trim(mcinst)='or' then
      mcinst2:=mcinst2+' )';
   Qr_CRec.SQL.Add(mcinst2);

   end;




mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRCODORI '+mcinst2);

mcinst2:=fItenstCheckListBox(0,CLB_TIPODOC);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRDUP '+mcinst2);

mcinst2:=fItenstCheckListBox(0,CLB_STATUSCLI);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CSITCLI '+mcinst2);

mcinst2:=fItenstCheckListBox(0,CLB_STATUS);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CSTATUS '+mcinst2);

mcinst2:=fItenstCheckListBox(0,clb_simples);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRTIPCOB '+mcinst2);

mcinst2:=fItenstCheckListBox(0,clb_protesto);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRTITPROT '+mcinst2);

/// CHEQUES
if (CLB_TIPODOC.Checked[6]) or (CLB_TIPODOC.Checked[16])  then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(1,'CADCLI','CCODEMP','CHCODEMP','CCODCLI','CHCODCLI');
   la_Empresas:=fEmpresas_Selecionadas('CADCHQ','CHCODEMP',Form_SelEmp.CLB_EMPRESAS);
   Qr_CRec.SQL.Add(' union all ');
   Qr_CRec.SQL.Add('Select CHNUMERO AS CRNUMERO, 0 AS CRQTDDM,'
                  +chr(39)+'A'+chr(39)+' as CRDESD, '
                  +' CHDTEMIS AS CRDTEMIS, '
                  +' CHDTDEP  AS CRDTVCTO, '
                  +' CHDTBX   AS CRDTBX, '
                  +' (CHVALOR-CHVALOR) AS CRDESC, '
                  +' (CHVALOR-CHVALOR) AS CRJUROS, '
                  +' CHVALOR           AS CRVALOR, '
                  +' CHCODCLI          AS CHCODCLI, '
                  +' (CHVALOR-CHVALOR) AS CRJURD,'
                  +' (CHVALOR-CHVALOR) AS cricmsr,'
                  +' (CHVALOR-CHVALOR) AS crtotipi, '
                  +mCampoNome+'        AS CRAZAO, '
                  +' CFONE01           AS CFONE01, '
                  +' CCODLOC           AS CCODLOC, '
                  +' CCIDADE           AS CCIDADE,  '
                  +' CUF               AS CUF,'
                  +' CCODBAI           AS CCODBAI, '


                  +' CBAIRRO           AS CBAIRRO,'




               +' clog || '
               +' case when nvl(ccompl,'+QuotedStr('')+')='+QuotedStr('')+' then '+QuotedStr('')+' else '+QuotedStr(' ')+' || ccompl end || '
               +'case when nvl(cnum,'+QuotedStr('')+')='+QuotedStr('')+' then '+QuotedStr('')+' else '+QuotedStr(' ')+' || cnum end '
               +' as ender '
               +', cemail '
                 +',ccep '
                 +',CCNPJ,CCPF,0 AS VCPF'



                  +',CHLOTE            AS CRLOTE, '
                  +' (CHVALOR-CHVALOR) AS CRVALPAG, '
                  +' (CHVALOR-CHVALOR)+DECODE(CHDEPOSITO,1,16,6) AS CRDUP, '
                  +' (CHDTBX)          AS CRDTPAG, '
                  +' (CHNUMERO-CHNUMERO) AS CRNPED, '
                  +' (CHNUMERO-CHNUMERO) AS CRORDEM, '
                  +' (CHNUMERO-CHNUMERO) AS CRLOTSEQ_LB, '
                  +' CHCODEMP            AS CRCODEMP, '
                  +' CHBANCO             AS CRCODBCO, '
                  +' (CHSTATUS-CHSTATUS) AS CRSTATUS, '
                  +'       '+mGrupoChq+','
                  +' (CHNUMERO-CHNUMERO) AS VCODVEN, '
                  +' '+chr(39)+insere(' ',' ',40)+chr(39)+' as VNOME, '
                  +' '+chr(39)+insere(' ',' ',10)+chr(39)+' as CODCCU, '
                  +' (CHNUMERO-CHNUMERO) AS CRCODFPGTO, '
                  +' '+chr(39)+insere(' ',' ',40)+chr(39)+' as CRNOMFPGTO, '
                  +' '+chr(39)+insere(' ',' ',40)+chr(39)+' as NOMCCU '
                  +' ,(CHNUMERO-CHNUMERO) AS    CRDESCF '
                  +' ,(CHNUMERO-CHNUMERO) AS    CRTCB '
                  +' ,(CHNUMERO-CHNUMERO) AS    CRTITPROT '
                  +' , TO_DATE('+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')  AS CRDTDESCF '
                  +', (CHNUMERO-CHNUMERO) AS CRDESCD '
                  +',(CHNUMERO-CHNUMERO) AS CRMULTA'
                  +', (CHNUMERO-CHNUMERO) AS CRDEVOL,1 AS CRNUMPARC,1 AS CRQTDPARC,'+chr(39)+' '+chr(39)+' AS CRNFACUM '
                  +'  from CADCHQ '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' CHSTATUS<9 ');


    mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
    if trim(mcinst2)<>'' then
       Qr_CRec.SQL.Add(' and CHCODCLI '+mcinst2);
   if CBTD.ItemIndex=2 then
      begin
      Qr_CRec.SQL.Add(' and (CHSTATUS<1) ');
//      Qr_CRec.SQL.Add(' and (CHSTATUS<1 or  CHDTDEP>='+chr(39)+FormatDateTime(fdt, Date-DM1.Tb_PargerPPRZCOMP.AsInteger)+chr(39)+')');
      end
  else if CBTD.ItemIndex=1 then
      begin
      Qr_CRec.SQL.Add(' and (CHSTATUS=1)');
      end;



   if trim(MDT1.Text)<>'/  /' then
      begin
      Qr_CRec.SQL.Add(fFormatdatetimeParaConsulta('CHDTDEP',true,strtodate(mdt1.text)));
      end;
   if trim(MDT2.Text)<>'/  /' then

      begin
      Qr_CRec.SQL.Add(fFormatdatetimeParaConsulta('CHDTDEP',true,strtodate(mdt2.text)));
      end;

   mcinst2:=fItenstCheckListBox(0,CLB_STATUSCLI);
   if trim(mcinst2)<>'' then
      Qr_CRec.SQL.Add(' and CSITCLI '+mcinst2);

   mcinst2:=fItenstCheckListBox(0,CLB_STATUS);
   if trim(mcinst2)<>'' then
      Qr_CRec.SQL.Add(' and CSTATUS '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codreg,OMITIR_CODREG);
    if trim(mcinst2)<>'' then Qr_CRec.sql.Add(' and CROTA '+mcinst2);


   if not (CLB_TIPODOC.Checked[6]) then
      Qr_CRec.SQL.Add(' and CHDEPOSITO=1 ');
   if not (CLB_TIPODOC.Checked[16]) then
      Qr_CRec.SQL.Add(' and CHDEPOSITO<>1 ');
   end;
Qr_CRec.SQL.Add(' order by CAMPOORDEM, NOMGRU');
if CBORDEM.ItemIndex=0 then
   Qr_CRec.SQL.Add(',CRDTVCTO, CRAZAO')
else if CBORDEM.ItemIndex=1 then
   Qr_CRec.SQL.Add(',CRDTEMIS, CRNUMERO')
else if CBORDEM.ItemIndex=2 then
   Qr_CRec.SQL.Add(', CRAZAO, CRNUMERO')
else if CBORDEM.ItemIndex=3 then
   Qr_CRec.SQL.Add(',CRVALOR')
else if CBORDEM.ItemIndex=4 then
   Qr_CRec.SQL.Add(',CRVALOR DESC')
else if CBORDEM.ItemIndex=5 then
   Qr_CRec.SQL.Add(',CRDTBX, CRAZAO')
else if CBORDEM.ItemIndex=6 then
   Qr_CRec.SQL.Add(',CRDTPAG, CRAZAO')
else if CBORDEM.ItemIndex=7 then
   Qr_CRec.SQL.Add(',VCODVEN,CRDTVCTO, CRAZAO')
else if CBORDEM.ItemIndex=8 then
   Qr_CRec.SQL.Add(',CRCODEMP,CRDTEMIS, CRAZAO')
else if CBORDEM.ItemIndex=9 then
  Qr_CRec.SQL.Add(',CRCODEMP,CRDTVCTO, CRAZAO')
else if CBORDEM.ItemIndex=10 then
  Qr_CRec.SQL.Add(',CRNPED')
else if CBORDEM.ItemIndex=11 then
  Qr_CRec.SQL.Add(',CRNUMERO');


Qr_Crec.SQL.Text:=
           fSqlIncluirTerceirosCampos(
           fSqlIncluirSegundosCampos(
           fCamposQueEramCalculados(Qr_CRec.SQL.Text)
           )
           );

try
   Qr_CRec.Open;
except on e : exception do
   begin
   if trim(FILTRO.Text)<>'' then
      begin
      fmensagem('Outros filtros escritos de Maneira incorreta!',0,['0'],0);
      exit;
      end
   else
      ex_erroSql_Novo(qr_CRec,1774,'frm_mcodp','caddar');
   end;
   end;

//Qr_CRec.SQL.SaveToFile(mpastatemp + 'SQL2.txt');


fRcRecTotais(0);



end;

function tFrm_RcRec.fCamposQueEramCalculados(pSql: String): String;
var
mComando: String;
xDoc: integer;
begin
mComando:=', case when CRCODBCO>0 then '
          +' nvl( (select max(BCBANCO) from cadbco where BCCODBCO=CRCODBCO), '+QuotedStr('Não Cadastrado')+') '
          +' else '+QuotedStr('Carteira')
          +' end as nombco ';

mComando := mComando
          +', case ';
for xDoc:=0 to 17 do
   begin
   mComando:=mComando +' when CRDUP='+IntToStr(xDoc) +' then '+QuotedStr(ptpdoc[xDoc]);
   end;


mComando:=mComando +' else '+QuotedStr('Indefinido')+' end  as tipdup ';

mComando:=mComando +', case when CRDTEMIS is null then '+QuotedStr('/   /')
                   +' else TO_CHAR(CRDTEMIS, '+QuotedStr('DD/MM/YYYY')+') end as  dtemis';

mComando:=mComando +', case when CRDTVCTO is null then '+QuotedStr('/   /')
                   +' else TO_CHAR(CRDTVCTO, '+QuotedStr('DD/MM/YYYY')+') end as  dtvcto';

mComando:=mComando +', case when CRDTBX is null then '+QuotedStr('/   /')
                   +' else TO_CHAR(CRDTBX, '+QuotedStr('DD/MM/YYYY')+') end as  dtbx';

mComando:=mComando +', case when CRDTPAG is null then '+QuotedStr('/   /')
                   +' else TO_CHAR(CRDTPAG, '+QuotedStr('DD/MM/YYYY')+') end as  dtpag';


mComando:=mComando +', case when CRSTATUS>1  then '
                   +'  case when ( CRDTPAG  - CRDTVCTO) < 0 then 0 else CRDTPAG  - CRDTVCTO end  '
                   +' else '
                   +' case when TO_DATE('+QuotedStr( FormatdateTime(fdt2, mDataPag))+ ') - CRDTVCTO < 0 then 0 '
                   +' else TO_DATE('+QuotedStr(FormatdateTime(fdt2, mDataPag)) + ') - CRDTVCTO end '
                   +' end as atraso ';


mComando:=mComando +', TO_CHAR(CRNUMERO) || '+Quotedstr('-')+' || CRDESD  AS numdoc ';



mComando:=mComando +', CRAZAO || '+Quotedstr('-')+' || TO_CHAR(CRCODCLI)   AS razao_codigo ';

mComando:=mComando +', CRVALOR -(CRVALPAG+CRDESC)+CRJUROS  AS valapagar ';


mComando:=mComando +', TO_CHAR(CRNUMERO) || '+QuotedStr('-')+' || CRDESD || '+Quotedstr(' ')
                 +' || TO_CHAR(CRNUMPARC) || '+QuotedStr('/')+' || TO_CHAR(CRQTDPARC) '
                 +' || case when CRCODEMP>99 then '+QuotedStr('*')+' else '+QuotedStr('')+' end '
                 +' as numero_calc ';

mComando := 'Select T0.* '+ mComando +' from (' +  pSql
          + ' ) T0 ';

result := mComando;
end;

function tFrm_RcRec.fSqlIncluirSegundosCampos(pSql: String): String;
var
mComando: String;
begin
mComando := ', case when atraso>0 then '
         +  '       case when crjurd<>0 then round( (crjurd * atraso), 2) '
         +  '            else round( ( ('+mudavp(iif(valfloat(DM4.Tb_Par01PJURM.AsString)=0, '1',DM4.Tb_Par01PJURM.AsString)+'/ 30) ')
                      +' * atraso)),2) end '
         +' else 0 end as valorjuros ';



mComando := mComando + ', case when atraso>CRQTDDM then '
         +  '       CRMULTA else 0 end as multa ';

mComando := 'Select T1.* '+ mComando +' from ('  + pSql
          + ' ) T1 ';
result := mComando;


end;

function tFrm_RcRec.fSqlIncluirTerceirosCampos(pSql: String): String;
var
mComando: String;

begin

mComando := ', valorjuros + multa as jurosemulta ';

mComando := 'Select T2.* '+ mComando +' from ('  + pSql
          + ' ) T2 ';
result :=  mComando;

end;


procedure TFrm_RCRec.Qr_CRecCalcFields(DataSet: TDataSet);
begin
{
if Qr_CRecCRCODBCO.AsInteger>0 then
   begin
   if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',Qr_CRecCRCODBCO.AsString) then
      Qr_CRecnombco.Value:=DM1.query1.Fields[0].AsString
   else
      Qr_CRecnombco.Value:='Não Cadastrado!';
   end
else
   Qr_CRecnombco.Value:='Carteira';

Qr_CRectipdup.Value:=ptpdoc[Qr_CRecCRDUP.AsInteger];


if Qr_CRecCRDTEMIS.AsDateTime<=pdatanula then
   Qr_CRecdtemis.Value:='/  /'
else
   Qr_CRecdtemis.Value:=FormatDatetime(fdt3,Qr_CRecCRDTEMIS.Value);

if Qr_CRecCRDTVCTO.AsDateTime<=pdatanula then
   Qr_CRecdtvcto.Value:='/  /'
else
   Qr_CRecdtvcto.Value:=FormatDatetime(fdt3,Qr_CRecCRDTVCTO.Value);

if Qr_CRecCRDTBX.AsDateTime<=pdatanula then
   Qr_CRecdtbx.Value:='/  /'
else
   Qr_CRecdtbx.Value:=FormatDatetime(fdt3,Qr_CRecCRDTBX.Value);

if Qr_CRecCRDTPAG.AsDateTime<=pdatanula then
   Qr_CRecdtpag.Value:='/  /'
else
   Qr_CRecdtpag.Value:=FormatDatetime(fdt3,Qr_CRecCRDTPAG.Value);
if Qr_CRecCRSTATUS.Value>1 then
   Qr_CRecatraso.Value:=Qr_CRecCRDTPAG.AsDateTime-Qr_CRecCRDTVCTO.AsDateTime
else
   Qr_CRecatraso.Value:=mDataPag-Qr_CRecCRDTVCTO.AsDateTime;
if Qr_CRecatraso.Value<0 then
   Qr_CRecatraso.Value:=0;
Qr_CRecmulta.AsFloat:=0;

if (Qr_CRecatraso.Value>0) then
   begin
   if (Qr_CRecCRJURD.AsFloat<>0) then
      Qr_CRecvalorjuros.Value:=Arredonda(Qr_CRecCRJURD.Value*Qr_CRecatraso.Value,DM1.Tb_PargerPCASAS.AsInteger)
   else
      Qr_CRecvalorjuros.Value:=Arredonda((DM4.Tb_Par01PJURM.AsFloat/30)*Qr_CRecatraso.Value,DM1.Tb_PargerPCASAS.AsInteger);
   if Qr_CRecatraso.AsFloat>0 then
      begin
      if Qr_CRecatraso.AsFloat>=qr_crecCRQTDDM.AsFloat then
         begin
         Qr_CRecmulta.AsFloat:=Qr_CRecCRMULTA.AsFloat;
         end;
      end;


   end;

Qr_CRecjurosemulta.Value:=Qr_CRecvalorjuros.AsFloat+Qr_CRecmulta.AsFloat;


Qr_CRecnumdoc.Value:=Qr_CRecCRNUMERO.AsString+'-'+Qr_CRecCRDESD.AsString;
Qr_CRecrazao_codigo.Value:=Qr_CRecCRAZAO.Value+'-'+Qr_CRecCRCODCLI.AsString;


Qr_CRecvalapagar.Value:=Qr_CRecCRVALOR.Value
                       -(Qr_CRecCRVALPAG.Value+Qr_CRecCRDESC.Value)
                       +Qr_CRecCRJUROS.Value;



Qr_CRecnumero_calc.AsString:=Qr_CRecCRNUMERO.AsString+'-'+Qr_CRecCRDESD.AsString
                            +' '+Qr_CRecCRNUMPARC.AsString+'/'+Qr_CRecCRQTDPARC.AsString
                            +iif(Qr_CRecCRCODEMP.AsInteger>99,'*','');
}                            
end;

function TFrm_RCRec.fRcRecTotais(pTipo: Integer): boolean;
begin


if CLB_TIPODOC.Checked[6] then
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADCHQ','CHCODEMP',Form_SelEmp.CLB_EMPRESAS);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select sum(CHVALOR) as VALOR '
                     +' from CADCHQ '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' CHSTATUS<9 ');

   mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and CHCODCLI '+mcinst2);

   if CBTD.ItemIndex=2 then
      begin
      DM1.Query1.SQL.Add(' and (CHSTATUS<1 or  CHDTDEP>='+chr(39)+FormatDateTime(fdt, Date-DM1.Tb_PargerPPRZCOMP.AsInteger)+chr(39)+')');
      end
  else if CBTD.ItemIndex=1 then
      begin
      DM1.Query1.SQL.Add(' and (CHSTATUS=1 and  CHDTDEP<'+chr(39)+FormatDateTime(fdt, Date-DM1.Tb_PargerPPRZCOMP.AsInteger)+chr(39)+')');
      end;


   if trim(MDT1.Text)<>'/  /' then
      begin
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('CHDTDEP',true,strtodate(mdt1.text)));

      end;

   if trim(MDT2.Text)<>'/  /' then
      begin
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('CHDTDEP',false,strtodate(mdt2.text)));
      end;

   DM1.Query1.Open;
   TOTCHQP.Caption:=Formatfloat(mcasas, DM1.Query1.Fields[0].AsFloat);
   end
else
   TOTCHQP.Caption:=Formatfloat(mcasas, 0);


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','CRCODEMP','CCODCLI','CRCODCLI');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADVEN' ,'VCODEMP','CRCODEMP' ,'VCODVEN' ,'CRCODVEN');

la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
// inicio vencidos


IF CB_INIBIR_DEVOL.Checked then
   begin
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin4(0,'CADP01D','P1DCODEMP_OR','CRCODEMP','P1DLS_OR','CRLOTSEQ_CP','P1DCH_OR','CRNPED'
                   ,'P1DOR_OR','CRORDEM');
   la_instrucao:=la_instrucao+' and (P1DCH_OR is null)';
   end;
la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select sum(CRVALOR)  as VALOR, '
               +'       sum(CRVALPAG+NVL(CRDEVOL,0)) as VALPAG, '
               +'       sum(CRDEVOL)  as DEVOL, '
               +'       sum(nvl(CRJUROS,0))  as JUROS, '
               +'       sum(CRDESC)   as DESCONTO, '
               +'       CRSTATUS,CRDUP from CADDAR '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' CRSTATUS<9 ');


mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRCODCLI '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codusr_cx,OMITIR_USR_CX);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRCODUSR '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRCODVEN '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codasse,OMITIR_ASS);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRCODASSE '+mcinst2);


   mcinst2:=fItensListBox(0,lbx_codreg,OMITIR_CODREG);
   if trim(mcinst2)<>'' then DM1.Query1.sql.Add(' and CROTA '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codtel,OMITIR_TEL);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRCODTLV '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and VCODSUP '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CCODRED '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codcv,OMITIR_CV);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRCODCV '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codcob,OMITIR_COB);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRCODBCO '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRCODCTA '+mcinst2);

if trim(NOTA_ORIGEM.Text)<>'' then
   begin
   DM1.Query1.SQL.add(' and CRNFACUM like :NFACUM ');
   DM1.Query1.ParamByName('NFACUM').AsString:=NOTA_ORIGEM.Text;
   end;


mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CCODLOC '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codfp,OMITIR_FP);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRCODFPGTO '+mcinst2);
if valint(lotrem_ini.Text)>0 then
   DM1.Query1.SQL.Add(' and CRLEMAT>=0'+Trim(lotrem_ini.Text));
if valint(lotrem_fim.Text)>0 then
   DM1.query1.SQL.Add(' and CRLEMAT<=0'+Trim(lotrem_fim.Text));

mcinst2:=fItenstCheckListBox(0,CLB_STATUSCLI);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CSITCLI '+mcinst2);

mcinst2:=fItenstCheckListBox(0,CLB_STATUS);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CSTATUS '+mcinst2);

if trim(MDT1.Text)<>'/  /' then
   DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mdatapesq,true,strtodate(mdt1.text)));

if trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mdatapesq,false,strtodate(mdt2.text)));
if CBTD.ItemIndex=1 then
   DM1.Query1.SQL.Add(' and CRSTATUS>0')
else if CBTD.ItemIndex=2 then
   DM1.Query1.SQL.Add(' and CRSTATUS<2');
DM1.Query1.SQL.Add(' and CRDTVCTO<='+chr(39)+FormatDateTime(fdt, date)+chr(39));

if Trim(FILTRO.Text)<>'' then
   begin
   DM1.Query1.SQL.Add(' and '+FILTRO.Text);
   end;

mcinst2:=fItenstCheckListBox(0,CLB_TIPODOC);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRDUP '+mcinst2);

mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRCODORI '+mcinst2);

mcinst2:=fItenstCheckListBox(0,CLB_TIPOCOB);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRTCB '+mcinst2);


mcinst2:=fItenstCheckListBox(0,clb_simples);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRTIPCOB '+mcinst2);

mcinst2:=fItenstCheckListBox(0,clb_protesto);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRTITPROT '+mcinst2);

//   DM1.Query1.Sql.SaveTofile(mpastatemp + 'SQL.txt');




DM1.Query1.sql.add(' Group by CRSTATUS,CRDUP');
try
   DM1.Query1.Open;
except
   DM1.Query1.Sql.SaveTofile(mpastatemp + 'SQL.txt');
   fmensagem('Erro ao Totalizar Titulos!',0,['0'],0);
   result:=false;
   exit;
   end;

//DM1.Query1.Sql.SaveTofile(mpastatemp + 'SQL.txt');
TOTABRVCT.Caption  :=FormatFloat(mcasas, 0);
TOTABRAVENC.Caption:=FormatFloat(mcasas, 0);
TOTABR.Caption     :=FormatFloat(mcasas, 0);
TOTPAG.Caption     :=FormatFloat(mcasas, 0);
DESCFIN.Caption    :=FormatFloat(mcasas, 0);
DEVOL.Caption      :=FormatFloat(mcasas, 0);
JUROS.Caption      :=FormatFloat(mcasas, 0);


While not DM1.Query1.Eof do
   begin
   if DM1.Query1.fieldByName('CRDUP').AsInteger=8 then
      begin
      TOTABRVCT.Caption  :=FormatFloat(mcasas, ValFloat(TOTABRVCT.Caption)-
                          (DM1.Query1.fieldbyName('VALOR').AsFloat
                           +
                           (DM1.Query1.fieldbyName('VALPAG').AsFloat
                           -DM1.Query1.fieldbyName('DEVOL').AsFloat
                           -DM1.Query1.fieldbyName('DESCONTO').AsFloat
                           +DM1.Query1.fieldbyName('JUROS').AsFloat)
                           ) );
      TOTPAG.Caption     :=FormatFloat(mcasas, valFloat(TOTPAG.Caption)-DM1.Query1.fieldbyName('VALPAG').AsFloat);
      DESCFIN.Caption    :=FormatFloat(mcasas, ValFloat(DESCFIN.Caption)-DM1.Query1.fieldbyName('DESCONTO').AsFloat);
      DEVOL.Caption      :=FormatFloat(mcasas, ValFloat(DEVOL.Caption)-DM1.Query1.fieldbyName('DEVOL').AsFloat);
      JUROS.Caption      :=FormatFloat(mcasas, ValFloat(JUROS.Caption)-DM1.Query1.fieldbyName('JUROS').AsFloat);
      end
   else
      begin
      TOTABRVCT.Caption  :=FormatFloat(mcasas, ValFloat(TOTABRVCT.Caption)+
                          (DM1.Query1.fieldbyName('VALOR').AsFloat

                           -
                            (DM1.Query1.fieldbyName('VALPAG').AsFloat
                           +DM1.Query1.fieldbyName('DEVOL').AsFloat
                           -DM1.Query1.fieldbyName('DESCONTO').AsFloat)
                           +DM1.Query1.fieldbyName('JUROS').AsFloat
                           )
                           );
      TOTPAG.Caption     :=FormatFloat(mcasas, valFloat(TOTPAG.Caption)+DM1.Query1.fieldbyName('VALPAG').AsFloat);
      DESCFIN.Caption    :=FormatFloat(mcasas, ValFloat(DESCFIN.Caption)+DM1.Query1.fieldbyName('DESCONTO').AsFloat);
      DEVOL.Caption      :=FormatFloat(mcasas, ValFloat(DEVOL.Caption)+DM1.Query1.fieldbyName('DEVOL').AsFloat);
      JUROS.Caption      :=FormatFloat(mcasas, ValFloat(JUROS.Caption)+DM1.Query1.fieldbyName('JUROS').AsFloat);
      end;
   DM1.Query1.Next;
   end;
result:=true;

// termino vencidos



// inicio a vencer

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select sum(CRVALOR)  as VALOR, '
               +'       sum(CRVALPAG+NVL(CRDEVOL,0)) as VALPAG, '
               +'       sum(NVL(CRDEVOL,0))  as DEVOL, '
               +'       sum(NVL(CRJUROS,0))  as JUROS, '
               +'       sum(CRDESC)   as DESCONTO, '
               +'       CRSTATUS,CRDUP from CADDAR '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' CRSTATUS<9 ');


mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRCODCLI '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRCODVEN '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codasse,OMITIR_ASS);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRCODASSE '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codusr_cx,OMITIR_USR_CX);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRCODUSR '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codtel,OMITIR_TEL);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRCODTLV '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and VCODSUP '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CCODRED '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codcv,OMITIR_CV);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRCODCV '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codcob,OMITIR_COB);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRCODBCO '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codreg,OMITIR_CODREG);
   if trim(mcinst2)<>'' then DM1.Query1.sql.Add(' and CROTA '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRCODCTA '+mcinst2);

if trim(NOTA_ORIGEM.Text)<>'' then
   begin
   DM1.Query1.SQL.add(' and CRNFACUM like :NFACUM ');
   DM1.Query1.ParamByName('NFACUM').AsString:=NOTA_ORIGEM.Text;
   end;

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CCODLOC '+mcinst2);

DM1.Query1.SQL.Add(' and CRDTVCTO>'+chr(39)+FormatDateTime(fdt, date)+chr(39));

if trim(MDT1.Text)<>'/  /' then
    DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mdatapesq,true,strtodate(mdt1.text)));
if trim(MDT2.Text)<>'/  /' then
   DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mdatapesq,false,strtodate(mdt2.text)));
if CBTD.ItemIndex=1 then
   DM1.Query1.SQL.Add(' and CRSTATUS>0')
else if CBTD.ItemIndex=2 then
   DM1.Query1.SQL.Add(' and CRSTATUS<2');
if Trim(FILTRO.Text)<>'' then
   begin
   DM1.Query1.SQL.Add(' and '+FILTRO.Text);
   end;
mcinst2:=fItenstCheckListBox(0,CLB_TIPODOC);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRDUP '+mcinst2);

mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRCODORI '+mcinst2);

mcinst2:=fItenstCheckListBox(0,CLB_TIPOCOB);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRTCB '+mcinst2);


mcinst2:=fItenstCheckListBox(0,clb_simples);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRTIPCOB '+mcinst2);

mcinst2:=fItenstCheckListBox(0,clb_protesto);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRTITPROT '+mcinst2);

mcinst2:=fItenstCheckListBox(0,CLB_STATUSCLI);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CSITCLI '+mcinst2);
mcinst2:=fItenstCheckListBox(0,CLB_STATUS);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CSTATUS '+mcinst2);


DM1.Query1.sql.add(' Group by CRSTATUS,CRDUP');

try
   DM1.Query1.Open;
except
   DM1.Query1.Sql.SaveTofile(mpastatemp + 'SQL.txt');
   fmensagem('Erro ao Totalizar Titulos!',0,['0'],0);
   result:=false;
   exit;
   end;

While not DM1.Query1.Eof do
   begin
   if DM1.Query1.Fieldbyname('CRDUP').AsInteger=8 then
      begin
      TOTABRAVENC.Caption  :=FormatFloat(mcasas, ValFloat(TOTABRAVENC.Caption)-
                        (DM1.Query1.fieldbyName('VALOR').AsFloat
                        +
                        (DM1.Query1.fieldbyName('VALPAG').AsFloat
                        -DM1.Query1.fieldbyName('DEVOL').AsFloat
                        -DM1.Query1.fieldbyName('DESCONTO').AsFloat)
                        +DM1.Query1.fieldbyName('JUROS').AsFloat)  );
      TOTPAG.Caption     :=FormatFloat(mcasas, valFloat(TOTPAG.Caption)-DM1.Query1.fieldbyName('VALPAG').AsFloat);
      DESCFIN.Caption    :=FormatFloat(mcasas, ValFloat(DESCFIN.Caption)-DM1.Query1.fieldbyName('DESCONTO').AsFloat);
      DEVOL.Caption      :=FormatFloat(mcasas, ValFloat(DEVOL.Caption)-DM1.Query1.fieldbyName('DEVOL').AsFloat);
      JUROS.Caption      :=FormatFloat(mcasas, ValFloat(JUROS.Caption)-DM1.Query1.fieldbyName('JUROS').AsFloat);
      end
   else
      begin
      TOTABRAVENC.Caption  :=FormatFloat(mcasas, ValFloat(TOTABRAVENC.Caption)+
                        (DM1.Query1.fieldbyName('VALOR').AsFloat
                        -
                        (DM1.Query1.fieldbyName('VALPAG').AsFloat
                        +DM1.Query1.fieldbyName('DEVOL').AsFloat
                        +DM1.Query1.fieldbyName('DESCONTO').AsFloat)
                        -DM1.Query1.fieldbyName('JUROS').AsFloat));
      TOTPAG.Caption     :=FormatFloat(mcasas, valFloat(TOTPAG.Caption)+DM1.Query1.fieldbyName('VALPAG').AsFloat);
      DESCFIN.Caption    :=FormatFloat(mcasas, ValFloat(DESCFIN.Caption)+DM1.Query1.fieldbyName('DESCONTO').AsFloat);
      DEVOL.Caption      :=FormatFloat(mcasas, ValFloat(DEVOL.Caption)+DM1.Query1.fieldbyName('DEVOL').AsFloat);
      JUROS.Caption      :=FormatFloat(mcasas, ValFloat(JUROS.Caption)+DM1.Query1.fieldbyName('JUROS').AsFloat);
      end;

   DM1.Query1.Next;
   end;

TOTABR.Caption  :=FormatFloat(mcasas, ValFloat(TOTABRVCT.Caption)+ValFloat(TOTABRAVENC.Caption));
TOTGER.Caption  :=FormatFloat(mcasas, ValFloat(TOTABR.Caption)
                                      +ValFloat(TOTCHQP.Caption)
                                      +ValFloat(TOTPAG.Caption)
                                      -ValFloat(DEVOL.Caption)
                                      -ValFloat(DESCFIN.Caption)
                                      +ValFloat(JUROS.Caption));

result:=true;

// termino a vencer


end;

procedure TFrm_RCRec.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (Qr_CRecatraso.Value>0) and (Qr_CRecCRSTATUS.Value<2) and (Qr_CRecCRDUP.AsInteger<>5) then
   begin
   DBGrid1.Canvas.Font.Color:=clRed;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if Qr_CRecCRSTATUS.Value=1 then
   begin
   DBGrid1.Canvas.Font.Color:=clBlue;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;
if (Qr_CRecCRTITPROT.AsInteger=1) then
   begin
   DBGrid1.Canvas.Brush.Color:=$000080FF;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if (Qr_CRecCRDUP.Value=6) then
   begin
   DBGrid1.Canvas.Brush.Color:=$00EBEBEB;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if (Qr_CRecCRTCB.AsInteger>1) then
   begin
   DBGrid1.Canvas.Brush.Color:=$00DDFFBB;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if (Qr_CRecCRDUP.AsInteger=5) then
   begin
   DBGrid1.Canvas.Brush.Color:=clGreen;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

end;

function TFrm_RCRec.fAtualizaPadrao(pTipo: Integer): Boolean;
var
mform: String;
x: Integer;
begin
mform:='_RCREC';

flfilpad(0,mForm,'');


DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'FILTRO']),[]) then
   FILTRO.Text:=DM4.Tb_FilPadFPVALOR.Value;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CBORDEM']),[]) then
   CBORDEM.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);


if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_FORMAPAG']),[]) then
   cb_formapag.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   cb_formapag.Checked:=false;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CBTD']),[]) then
   CBTD.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_TIPOREL']),[]) then
   CB_TIPOREL.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
CB_TIPORELClick(self);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_SEMBORDA']),[]) then
   CB_SEMBORDA.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   CB_SEMBORDA.Checked:=true;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_MATRICIAL']),[]) then
   CB_MATRICIAL.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   CB_MATRICIAL.Checked:=true;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_INIBIR_DEVOL']),[]) then
   CB_INIBIR_DEVOL.Checked:=DM4.Tb_FilPadFPVALOR.Value='true';

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_RAZSOCNOMFAN']),[]) then
   cb_RazSocNomFan.Checked:=DM4.Tb_FilPadFPVALOR.Value='true';
{
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_OMITIRDIA']),[]) then
   CB_OMITIRDIA.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   CB_OMITIRDIA.Checked:=false;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_CARTEIRA']),[]) then
   CB_CARTEIRA.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   CB_CARTEIRA.Checked:=false;
}
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_VISREL']),[]) then
   CB_VISREL.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   CB_VISREL.Checked:=true;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_TPP']),[]) then
   cb_tpp.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_SEPARADO']),[]) then
   cb_separado.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_AVANCPAG']),[]) then
   CB_AVANCPAG.Checked:=DM4.Tb_FilPadFPVALOR.Value='true';


if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RCREC','CLB_TIPODOC']),[]) then
   begin
   mcinst:='';
   for x:=1 to length(DM4.Tb_FilPadFPVALOR.Value) do
      begin
      if DM4.Tb_FilPadFPVALOR.Value[x]=',' then
         begin
         CLB_TIPODOC.Checked[ValInt(mcinst)]:=true;
         mcinst:='';
         end
      else
         mcinst:=mcinst+DM4.Tb_FilPadFPVALOR.Value[x];
      end;
   if trim(mcinst)<>'' then
      CLB_TIPODOC.Checked[ValInt(mcinst)]:=true;
   end
else
   begin
   for x:=0 to CLB_TIPODOC.Items.Count-1 do
      begin
      CLB_TIPODOC.Checked[x]:=True;
      end;
   CLB_TIPODOC.Checked[6]:=false;
   end;


if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RCREC','CLB_TIPOCOB']),[]) then
   begin
   mcinst:='';
   for x:=1 to length(DM4.Tb_FilPadFPVALOR.Value) do
      begin
      if DM4.Tb_FilPadFPVALOR.Value[x]=',' then
         begin
         CLB_TIPOCOB.Checked[ValInt(mcinst)]:=true;
         mcinst:='';
         end
      else
         mcinst:=mcinst+DM4.Tb_FilPadFPVALOR.Value[x];
      end;
   if trim(mcinst)<>'' then
      CLB_TIPOCOB.Checked[ValInt(mcinst)]:=true;
   end
else
   begin
   for x:=0 to CLB_TIPOCOB.Items.Count-1 do
      begin
      CLB_TIPOCOB.Checked[x]:=True;
      end;
   end;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RCREC','CLB_SIMPLES']),[]) then
   begin
   mcinst:='';
   for x:=1 to length(DM4.Tb_FilPadFPVALOR.Value) do
      begin
      if DM4.Tb_FilPadFPVALOR.Value[x]=',' then
         begin
         clb_simples.Checked[ValInt(mcinst)]:=true;
         mcinst:='';
         end
      else
         mcinst:=mcinst+DM4.Tb_FilPadFPVALOR.Value[x];
      end;
   if trim(mcinst)<>'' then
      clb_simples.Checked[ValInt(mcinst)]:=true;
   end
else
   begin
   for x:=0 to clb_simples.Items.Count-1 do
      begin
      clb_simples.Checked[x]:=True;
      end;
   end;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RCREC','CLB_PROTESTO']),[]) then
   begin
   mcinst:='';
   for x:=1 to length(DM4.Tb_FilPadFPVALOR.Value) do
      begin
      if DM4.Tb_FilPadFPVALOR.Value[x]=',' then
         begin
         clb_protesto.Checked[ValInt(mcinst)]:=true;
         mcinst:='';
         end
      else
         mcinst:=mcinst+DM4.Tb_FilPadFPVALOR.Value[x];
      end;
   if trim(mcinst)<>'' then
      clb_protesto.Checked[ValInt(mcinst)]:=true;
   end
else
   begin
   for x:=0 to clb_protesto.Items.Count-1 do
      begin
      clb_protesto.Checked[x]:=True;
      end;
   end;

result:=True;
end;

procedure TFrm_RCRec.bbFpgtoClick(Sender: TObject);
var
mqtdd,mqtdf,mini:Integer;
Form_forma_pag:tFrm_FormaPgto;

begin
if not Qr_CRec.Active then
   begin
   fmensagem('Favor Aplicar a Seleção!',0,['0'],0);
   exit;
   end;
if Qr_CRecCRSTATUS.Value<1 then
   begin
   fmensagem('Título Em Aberto!',0,['0'],0);
   exit;
   end;
Application.CreateForm(TFrm_FormaPgto, Form_Forma_Pag);
Form_forma_pag.lbl_obs.Caption:='Titulo '+Qr_CRecCRNUMERO.AsString+'/'+Qr_CRecCRDESD.AsString+' Valor: '+formatFloat(mcasas, Qr_CRecCRVALOR.AsFloat)
                              +' Vencimento '+FormatDateTime(fdt2, Qr_CRecCRDTVCTO.AsDateTime);
Form_Forma_Pag.fCarregarFormas(0,Qr_CRecCRNUMERO.AsFloat,Qr_CRecCRCODCLI.AsFloat,Qr_CRecCRDESD.Asstring,Qr_CRecCRDUP.Asinteger
,Qr_CRecCRCODEMP.asinteger,0,Qr_CRecCRDTEMIS.AsDateTime);
Form_Forma_Pag.ShowModal;
Freeandnil(Form_Forma_pag);

end;

procedure TFrm_RCRec.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
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
{         if ce_qtdemp<2 then
           begin
           lbl_cheio.Visible:=true;
           end
        else
           begin
           lbl_cheio.Visible:=false;
           end; }
         if Form_SelEmp.WindowState=wsMinimized then
            Form_SelEmp.WindowState:=wsNormal
         else
            Form_SelEmp.Show;
         end;
      end;
   end;
end;

procedure TFrm_RCRec.bbSitCliClick(Sender: TObject);
begin
{
if lbx_codcli.Items.Count<1 then

   begin

   fmensagem('Favor Selecionar um Cliente!',0,['0'],0);
   exit;
   end;
if lbx_codcli.ItemIndex<0 then
   lbx_codcli.ItemIndex:=0;

CODCLI.Text:=fdeixanum2( copy(lbx_codcli.Items[lbx_codcli.ItemIndex],1,fPosCaractere('-',lbx_codcli.items[lbx_codcli.ItemIndex])-1));
}
CODCLI.Text:=Qr_CRecCRCODCLI.AsString;
if trim(CODCLI.Text)='' then
   begin
   fmensagem('Favor Selecionar um Cliente!',0,['0'],0);
   exit;
   end;


Application.CreateForm(TFrm_SitCre, Frm_SitCre);
Frm_SitCre.CODCLI.Text:=Trim(CODCLI.text);
Frm_Sitcre.BBAPLICAR.Click;
Frm_SitCre.ShowModal;
FreeAndNil(Frm_SitCre);
CODCLI.Text:='';
end;

procedure TFrm_RCRec.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if not fLerGenerico_query('CADCLI','CRAZAO','CCODCLI=0'+CODCLI.Text,query_consulta) then
      begin
      fmensagem('Cliente não cadastrado!',0,['0'],0);
      CODCLI.SetFocus;
      exit;
      end
   else
      begin
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.Text))
                                    +' - '+query_consulta.Fields[0].AsString);
      CODCLI.text := '';
      CODCLI.SetFocus;
      end;
   end;

end;

procedure TFrm_RCRec.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_DestPro',key);
   key:=#0;
   CODCLIExit(Self);
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_RCRec.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if not flqr1('VNOME','V','CADVEN','N','VCODVEN',Trim(CODVEN.Text)) then
      begin
      fmensagem('Vendedor não cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      begin
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODVEN.text := '';
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end;
   end;


end;

procedure TFrm_RCRec.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_RCRec',Key);
   CODVENExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_RCRec.CODTELExit(Sender: TObject);
begin
CODTEL.Text:=fdeixanum2(CODTEL.Text);
if Trim(CODTEL.Text)<>'' then
   begin
   if not flqr1('NOMUSR','','CADUSR','N','CODUSR',CODTEL.Text) then
      begin
      fmensagem('Televendas não cadastrado!',0,['0'],0);
      CODTEL.SetFocus;
      end
   else
      begin
      lbx_codtel.Items.Add(FormatFloat('0000000',StrToFloat(CODTEL.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODTEL.text := '';
      CODTEL.SetFocus;
      end;
   end;
end;

procedure TFrm_RCRec.CODTELKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTEL.Text:=fChamaUsr(0,'frm_RCRec',Key);
   CODTELExit(Self);
   key:=#0;
   end;
end;

procedure TFrm_RCRec.CODSUPExit(Sender: TObject);
begin

CODSUP.Text:=fdeixanum2(CODSUP.Text);
if Trim(CODSUP.Text)<>'' then
   begin
   if not flqr1('SNOME','S','CADSUP','N','SCODSUP',CODSUP.Text) then
      begin
      fmensagem('Supervisor não Cadastrado cadastrado!',0,['0'],0);
      CODSUP.SetFocus;
      end
   else
      begin
      lbx_codsup.Items.Add(FormatFloat('0000000',StrToFloat(CODSUP.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODSUP.text := '';
      if CODSUP.Enabled then
         CODSUP.SetFocus;
      end;
   end;
end;

procedure TFrm_RCRec.CODSUPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODSUP.Text:=fChamaSup(0,'frm_RCRec',Key);
   CODSUPExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_RCRec.CODREDExit(Sender: TObject);
begin
CODRED.Text:=fdeixanum2(CODRED.Text);
if Trim(CODRED.Text)<>'' then
   begin
   if not flqr1('RDNOME','RD','CADRED','N','RDCODRED',CODRED.Text) then
      begin
      fmensagem('Rede não cadastrada!',0,['0'],0);
      CODRED.SetFocus;
      end
   else
      begin
      lbx_codred.Items.Add(FormatFloat('0000000',StrToFloat(CODRED.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODRED.text := '';
      CODRED.SetFocus;
      end;
   end;


end;

procedure TFrm_RCRec.CODREDKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRED.Text:=fChamaRedCli(0,'frm_rcrec',key);
   CODREDExit(self);
   key:=#0;
   end;


end;

procedure TFrm_RCRec.CODCVExit(Sender: TObject);
begin
CODCV.Text:=fdeixanum2(CODCV.Text);

if Trim(CODCV.Text)<>'' then
   begin
   if not flqr1('CVRAZAO','CV','CADCV','N','CVCODCV',CODCV.Text) then
      begin
      fmensagem('Convênio não cadastrada!',0,['0'],0);
      CODCV.SetFocus;
      end
   else
      begin
      lbx_codcv.Items.Add(FormatFloat('0000000',StrToFloat(CODCV.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODCV.text := '';
      CODCV.SetFocus;
      end;
   end;

end;

procedure TFrm_RCRec.CODCVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCV.Text:=fChamaCV(0,'frm_rcrec',key);
   CODCVExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_RCRec.CODCOBExit(Sender: TObject);
begin

CODCOB.Text:=fdeixanum2(CODCOB.Text);
if Trim(CODCOB.Text)<>'' then
   begin
   if not flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',CODCOB.Text) then
      begin
      fmensagem('Banco de Cobranca não cadastrada!',0,['0'],0);
      CODCOB.SetFocus;
      end
   else
      begin
      lbx_codcob.Items.Add(FormatFloat('0000000',StrToFloat(CODCOB.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODCOB.text := '';
      CODCOB.SetFocus;
      end;
   end;


end;

procedure TFrm_RCRec.CODCOBKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCOB.Text:=fChamaBco(0,'frm_RCRac',Key);
   CODCOBExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_RCRec.CODLOCExit(Sender: TObject);
begin

CODLOC.Text:=fdeixanum2(CODLOC.Text);
if Trim(CODLOC.Text)<>'' then
   begin
   if not flqr1('LNOME','L','CADLOC','N','LCODLOC',CODLOC.Text) then
      begin
      fmensagem('Localidade não cadastrada!',0,['0'],0);
      CODLOC.SetFocus;
      end
   else
      begin
      lbx_codloc.Items.Add(FormatFloat('0000000',StrToFloat(CODLOC.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODLOC.text := '';
      CODLOC.SetFocus;
      end;
   end;


end;

procedure TFrm_RCRec.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text:=fChamaLoc(0,'frm_RCRec',Key);
   CODLOCExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_RCRec.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   begin
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);
   end;
end;

procedure TFrm_RCRec.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_RCRec.lbx_codtelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codtel.ItemIndex>=0 then
      lbx_codtel.Items.Delete(lbx_codtel.ItemIndex);

end;

procedure TFrm_RCRec.lbx_codcobKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codcob.ItemIndex>=0 then
      lbx_codcob.Items.Delete(lbx_codcob.ItemIndex);

end;

procedure TFrm_RCRec.lbx_codsupKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codsup.ItemIndex>=0 then
      lbx_codsup.Items.Delete(lbx_codsup.ItemIndex);

end;

procedure TFrm_RCRec.lbx_codredKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codred.ItemIndex>=0 then
      lbx_codred.Items.Delete(lbx_codred.ItemIndex);

end;

procedure TFrm_RCRec.lbx_codcvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codcv.ItemIndex>=0 then
      lbx_codcv.Items.Delete(lbx_codcv.ItemIndex);

end;

procedure TFrm_RCRec.lbx_codlocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);

end;

procedure TFrm_RCRec.CB_MATRICIALClick(Sender: TObject);
begin
if not CB_MATRICIAL.Checked then
   begin
   RLReport1.DefaultFilter:=nil;
   RLBand4.Font.Name:='Arial';
   end
else
   begin
   RLReport1.DefaultFilter:=Matricial;
   RLBand4.Font.Name:='Courier New';
   end;

end;

procedure TFrm_RCRec.CLB_TIPODOCClick(Sender: TObject);
begin
CLB_TIPODOC:=Valida_CheckList(CLB_TIPODOC);

end;

procedure TFrm_RCRec.CLB_TIPOCOBClick(Sender: TObject);
begin
CLB_TIPOCOB:=Valida_CheckList(CLB_TIPOCOB);

end;

procedure TFrm_RCRec.clb_simplesClick(Sender: TObject);
begin
clb_simples:=Valida_CheckList(clb_simples);

end;

procedure TFrm_RCRec.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_RCRec.CB_SEMBORDAClick(Sender: TObject);
begin
if CB_SEMBORDA.Checked then
   begin
   mboolean:=False;
   lbl_cabNumdoc.Alignment  :=taLeftJustify;
   lbl_cabRazSoc.Alignment  :=taLeftJustify;
   lbl_CabJuros.Alignment  :=taRightJustify;
   end
else
   begin
   mboolean:=true;
   lbl_cabNumdoc.Alignment  :=taCenter;
   lbl_cabRazSoc.Alignment  :=taCenter;
   lbl_CabJuros.Alignment   :=taCenter;
   end;

lbl_cabNumdoc.Borders.DrawRight   :=mboolean;
lbl_Numdoc.Borders.DrawRight      :=mboolean;
//lblg_numdoc.Borders.DrawRight     :=mboolean;

lbl_cabRazSoc.Borders.DrawRight   :=mboolean;
lbl_RazSoc.Borders.DrawRight      :=mboolean;
lblg_RazSoc.Borders.DrawRight     :=mboolean;
//lblt_RazSoc.Borders.DrawRight     :=mboolean;

lbl_cabDtEmis.Borders.DrawRight   :=mboolean;
lbl_DtEmiss.Borders.DrawRight     :=mboolean;
//lblg_DtEmis.Borders.DrawRight     :=mboolean;
//lblt_DtEmis.Borders.DrawRight     :=mboolean;

lbl_cabValDup.Borders.DrawRight   :=mboolean;
lbl_ValDup.Borders.DrawRight      :=mboolean;
lblg_ValDup.Borders.DrawRight     :=mboolean;
//lblt_ValDup.Borders.DrawRight     :=mboolean;

lbl_cabValPag.Borders.DrawRight   :=mboolean;
lbl_ValPag.Borders.DrawRight      :=mboolean;
lblg_ValPag.Borders.DrawRight     :=mboolean;
//lblt_ValPag.Borders.DrawRight     :=mboolean;

lbl_cabArec.Borders.DrawRight     :=mboolean;
lbl_Arec.Borders.DrawRight        :=mboolean;
lblg_Arec.Borders.DrawRight       :=mboolean;
//lblt_Arec.Borders.DrawRight       :=mboolean;

lbl_CabDtVcto.Borders.DrawRight   :=mboolean;
lbl_DtVcto.Borders.DrawRight      :=mboolean;
//lblg_DtVcto.Borders.DrawRight     :=mboolean;
//lblt_DtVcto.Borders.DrawRight     :=mboolean;

lbl_cabDatPgto.Borders.DrawRight  :=mboolean;
lbl_DatPgto.Borders.DrawRight     :=mboolean;
//lblg_DatPgto.Borders.DrawRight    :=mboolean;
//lblt_DatPgto.Borders.DrawRight    :=mboolean;

lbl_cabDesc.Borders.DrawRight     :=mboolean;
lbl_Desc.Borders.DrawRight        :=mboolean;
lblg_Desc.Borders.DrawRight       :=mboolean;
lblt_Desc.Borders.DrawRight       :=mboolean;

lbl_CabJuros.Borders.DrawRight    :=mboolean;
lbl_Juros.Borders.DrawRight       :=mboolean;
lblg_Juros.Borders.DrawRight      :=mboolean;
lblt_Juros.Borders.DrawRight      :=mboolean;

lbl_cabdoc.Borders.DrawRight      :=mboolean;
lbl_doc.Borders.DrawRight         :=mboolean;
lblg_doc.Borders.DrawRight        :=mboolean;
//lblt_doc.Borders.DrawRight        :=mboolean;

lbl_cabChave.Borders.DrawRight    :=mboolean;
lbl_Chave.Borders.DrawRight       :=mboolean;
lblg_Chave.Borders.DrawRight      :=mboolean;
//lblt_Chave.Borders.DrawRight      :=mboolean;


RLGroup1.Borders.DrawTop         :=mboolean;
RLGroup1.Borders.DrawLeft        :=mboolean;
RLGroup1.Borders.DrawRight       :=mboolean;
RLGroup1.Borders.DrawBottom      :=mboolean;

RLband4.Borders.DrawTop          :=mboolean;
RLband4.Borders.DrawBottom       :=mboolean;
RLBand6.Borders.DrawTop          :=mboolean;


end;

procedure TFrm_RCRec.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lblg_ValDup.Caption:=FormatFloat(mcasas, mTotgDup);
lblg_ValPag.Caption:=FormatFloat(mcasas, mTotGPag);
lblg_Arec.Caption  :=FormatFloat(mcasas, mTotGArec_Avenc);
lblg_Desc.Caption  :=FormatFloat(mcasas, mTotGDesc);
lblg_Juros.Caption :=FormatFloat(mcasas, mTotGJuros);
//lblg_numdoc.Caption:='';
lblg_RazSoc.Caption:='Qtd..:'+IntToStr(mQtdGTit_Arec_AVenc);

mQtdGTit_Arec_AVenc  :=0;
mTotGDup  :=0;
mTotGPag  :=0;
mTotGArec_Avenc :=0;
mTotGDesc :=0;
mTotGJuros:=0;

end;

procedure TFrm_RCRec.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if Qr_CRecCRDUP.AsInteger<>5 then
  begin
  mTotgDup  :=mTotgDup+Qr_CRecCRVALOR.Value;
  mTotGPag  :=mTotGPag+Qr_CRecCRVALPAG.Value;
  mTotGArec_Avenc :=mTotGArec_Avenc+Qr_CRecvalapagar.Value;
  mTotGDesc :=mTotGDesc+Qr_CRecCRDESC.Value;
  mTotGJuros:=mTotGJuros+Qr_CRecCRJUROS.Value;
  mTotTDup_AVenc  :=mTotTDup_AVenc+Qr_CRecCRVALOR.Value;
  mTotTPag  :=mTotTPag+Qr_CRecCRVALPAG.Value;
  mTotTArec_Avenc :=mTotTArec_Avenc+Qr_CRecvalapagar.Value;
  mTotTDesc :=mTotTDesc+Qr_CRecCRDESC.Value;
  mTotTJuros:=mTotTJuros+Qr_CRecCRJUROS.Value;
  mTotGeral_Acu:=mTotGeral_Acu+Qr_CRecCRVALOR.Value;
  end
else if Qr_CRecCRDUP.AsInteger=5 then
  begin
  mTotgDup  :=mTotgDup-Qr_CRecCRVALOR.Value;
  mTotGPag  :=mTotGPag-Qr_CRecCRVALPAG.Value;
  mTotGArec_Avenc :=mTotGArec_Avenc-Qr_CRecvalapagar.Value;
  mTotGDesc :=mTotGDesc-Qr_CRecCRDESC.Value;
  mTotGJuros:=mTotGJuros-Qr_CRecCRJUROS.Value;
  mTotTDup_AVenc  :=mTotTDup_AVenc-Qr_CRecCRVALOR.Value;
  mTotTPag  :=mTotTPag-Qr_CRecCRVALPAG.Value;
  mTotTArec_Avenc :=mTotTArec_Avenc-Qr_CRecvalapagar.Value;
  mTotTDesc :=mTotTDesc-Qr_CRecCRDESC.Value;
  mTotTJuros:=mTotTJuros-Qr_CRecCRJUROS.Value;
  mTotGeral_Acu:=mTotGeral_Acu-Qr_CRecCRVALOR.Value;
  end;
mQtdGTit_Arec_AVenc  :=mQtdGTit_Arec_AVenc+1;
mQtdTTit_Arec_Avenc  :=mQtdTTit_Arec_Avenc+1;
end;

procedure TFrm_RCRec.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  mTotgDup  :=0;
  mTotGPag  :=0;
  mTotGArec_Avenc :=0;
  mTotGDesc :=0;
  mTotGJuros:=0;
  mTotTDup_AVenc  :=0;
  mTotTPag  :=0;
  mTotTArec_Avenc :=0;
  mTotTDesc :=0;
  mTotTJuros:=0;
  mQtdGTit_Arec_AVenc  :=0;
  mQtdTTit_Arec_Avenc  :=0;

end;

procedure TFrm_RCRec.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lblt_ValDup.Caption:=FormatFloat(mcasas, mTotTDup_AVenc);
lblt_ValPag.Caption:=FormatFloat(mcasas, mTotTPag);
lblt_Arec.Caption  :=FormatFloat(mcasas, mTotTArec_Avenc);
lblt_Desc.Caption  :=FormatFloat(mcasas, mTotTDesc);
lblt_Juros.Caption :=FormatFloat(mcasas, mTotTJuros);
//lblt_numdoc.Caption:='';
//lblt_RazSoc.Caption:='Total '+IntToStr(mQtdTTit_Arec_Avenc);

mTotTDup_AVenc  :=0;
mTotTPag  :=0;
mTotTArec_Avenc :=0;
mTotTDesc :=0;
mTotTJuros:=0;

end;

procedure TFrm_RCRec.RG_TIPORELClick(Sender: TObject);
begin
if CB_TIPOREL.ItemIndex=2 then
   begin

   lbl_cabValPag.Lines.Clear;
   lbl_cabValPag.Lines.Add('Cod.C.Custo');
   lbl_ValPag.DataField  :='CODCCU';
   lbl_ValPag.Alignment  :=taLeftJustify;
   lblt_ValPag.Visible   :=false;
   lblg_ValPag.Visible   :=false;

   lbl_cabArec.Lines.Clear;
   lbl_cabArec.Lines.Add('Centro de Custo');
   lbl_CabArec.Width      :=200;
   lblt_Arec.Visible   :=false;
   lblg_Arec.Visible   :=false;

   lbl_Arec.DataField  :='NOMCCU';
   lbl_Arec.Alignment  :=taLeftJustify;



   lbl_cabDatPgto.Visible  :=false;
   lbl_DatPgto.Visible     :=false;
//   lblg_DatPgto.Visible    :=false;
//   lblt_DatPgto.Visible    :=false;


   lbl_cabDesc.Visible  :=false;
   lbl_Desc.Visible     :=false;
   lblg_Desc.Visible    :=false;
   lblt_Desc.Visible    :=false;

   lbl_CabJuros.Visible  :=false;
   lbl_Juros.Visible     :=false;
   lblg_Juros.Visible    :=false;
   lblt_Juros.Visible    :=false;

   lbl_cabChave.Visible  :=false;
   lbl_Chave.Visible     :=false;
   lblg_Chave.Visible    :=false;
//   lblt_Chave.Visible    :=false;

   lbl_cabDtvcto.Left    :=650;
   lbl_cabdoc.Left       :=700;


   end
else
   begin
   lbl_cabValPag.Lines.Clear;
   lbl_cabValPag.Lines.Add('Valor Pago');
   lbl_ValPag.DataField  :='CRVALPAG';
   lbl_ValPag.Alignment  :=taRightJustify;
   lblt_ValPag.Visible   :=true;
   lblg_ValPag.Visible   :=true;


   lbl_cabArec.Lines.Clear;
   lbl_cabArec.Lines.Add('Valor Em Aberto');
   lbl_CabArec.Width    :=57;
   lbl_Arec.DataField  :='valapagar';
   lbl_Arec.Alignment  :=taRightJustify;
   lblt_Arec.Visible   :=true;
   lblg_Arec.Visible   :=true;

   lbl_cabDatPgto.Visible  :=true;
   lbl_DatPgto.Visible     :=true;
//   lblg_DatPgto.Visible    :=true;
//   lblt_DatPgto.Visible    :=true;


   lbl_cabDesc.Visible  :=true;
   lbl_Desc.Visible     :=true;
   lblg_Desc.Visible    :=true;
   lblt_Desc.Visible    :=true;

   lbl_CabJuros.Visible  :=true;
   lbl_Juros.Visible     :=true;
   lblg_Juros.Visible    :=true;
   lblt_Juros.Visible    :=true;

   lbl_cabChave.Visible  :=true;
   lbl_Chave.Visible     :=true;
   lblg_Chave.Visible    :=true;
//   lblt_Chave.Visible    :=true;

   lbl_cabDtvcto.Left    :=459;
   lbl_cabdoc.Left       :=661;

   end;

if CB_TIPOREL.ItemIndex=4 then
   begin
   lbl_datapgto.Visible:=true;
   DATAPGTO.Visible    :=true;
   end
else
   begin
   lbl_datapgto.Visible:=false;
   DATAPGTO.Visible    :=false;
   end;




end;

procedure TFrm_RCRec.CODFPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFP.Text:=fChamaFPag(0,'frm_rcrec',key);
   CODFPExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_RCRec.CODFPExit(Sender: TObject);
begin
CODFP.Text:=fdeixanum2(CODFP.Text);
if Trim(CODFP.Text)<>'' then
   begin
   DM1.Tb_FP.Close;
   DM1.Tb_FP.SQL.Clear;
   DM1.Tb_FP.SQL.add('Select * from CADFP ');
   if trim(CODFP.Text)<>'' then
      DM1.Tb_FP.SQL.Add(' where FPCODIGO=0'+Trim(CODFP.Text));
   DM1.Tb_FP.Open;
   if DM1.Tb_FP.Eof then
      begin
      fmensagem('Forma de Pagamento não Cadastrado!',0,['0'],0);
      CODFP.SetFocus;
      end
   else
      begin
      lbx_codfp.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_FPFPCODIGO.ASSTRING))
                                    +' - '+DM1.Tb_FPFPDESC.Value);

      CODFP.text := '';
      CODFP.SetFocus;
      end;
   end;


end;

procedure TFrm_RCRec.lbx_codfpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfp.ItemIndex>=0 then
      lbx_codfp.Items.Delete(lbx_codfp.ItemIndex);

end;

procedure TFrm_RCRec.DBGrid1DblClick(Sender: TObject);
var
mant_codemp: Integer;
machou: boolean;
form_dar: tFrm_Dar;
form_mchq: tFrm_Mchq;
begin
if not Qr_CRecCRNUMERO.IsNull then
   begin
   mant_codemp:=codemp;
   codemp:=Qr_CRecCRCODEMP.AsInteger;
   Application.CreateForm(TFrm_Dar, Form_Dar);
   Form_Dar.FormStyle:=fsNormal;
   Form_Dar.Visible:=False;

   dar_ori:='frm_rcrec';
   mtipo:=1;
   machou:=false;
   Form_Dar.Edit1.Text:=Qr_CRecCRNUMERO.AsString;
   if Form_Dar.flcaddar_form(8,Qr_CRecCRCODEMP.AsInteger,0,0,0,Qr_CRecCRNUMERO.AsString,
                     Qr_CRecCRDESD.AsString,
                     Qr_CRecCRDUP.AsString,
                     Qr_CRecCRDTEMIS.AsDateTime,'') then
      begin
      Form_Dar.Tb_Dar.Locate('CRNUMERO;CRDESD;CRCODCLI;CRVALOR;CRDTEMIS',vararrayof([Qr_CRecCRNUMERO.AsFloat,
                Qr_CRecCRDESD.AsString,Qr_CRecCRCODCLI.AsFloat,Qr_CRecCRVALOR.AsFloat
                ,Qr_CRecCRDTEMIS.AsDateTime
                ]),[]);

      Form_Dar.ShowModal;
      machou:=true;
      end;
{
   if Form_Dar.Tb_Dar.Filtered then
      begin
      DM1.Tb_Dar.Filter:='';
      DM1.Tb_Dar.Filtered:=false;
      end;
}      
   freeandnil(Form_Dar);

   mtipo:=0;
   if (Qr_CRecCRDUP.AsInteger=6) and not (machou) then
      begin
      Application.CreateForm(TFrm_MChq, Form_MChq);
      Form_MChq.formstyle:=fsNormal;
      Form_MChq.Visible:=False;
      mtipo:=1;
      machou:=false;
      Form_MChq.Edit1.Text:=Qr_CRecCRNUMERO.AsString;

      if flcadchq(0,0,0,0,Qr_CRecCRCODEMP.AsInteger,Qr_CRecCRNUMERO.AsString,pvazio,pvazio,pvazio,pvazio,Form_SelEmp.CLB_EMPRESAS) then
         begin
         if DM1.Tb_Chq.Locate('CHCODCLI',Qr_CRecCRCODCLI.AsFloat,[]) then
            begin
            Form_MChq.ShowModal;
            machou:=true;
            end;
         end;
      freeandnil(Form_MChq);
      if DM1.Tb_Chq.Filtered then
         begin
         DM1.Tb_Chq.Filter:='';
         DM1.Tb_Chq.Filtered:=false;
         end;
      end;
   codemp:=mant_codemp;
   mtipo:=0;
   end;

end;

procedure TFrm_RCRec.bbMedPgVctoClick(Sender: TObject);
begin

if Frm_MedVenPgt=nil then
   Application.CreateForm(TFrm_MedVenPgt, Frm_MedVenPgt)
else
   begin
   Frm_MedVenPgt.Free;
   Frm_MedVenPgt:=nil;
   Application.CreateForm(TFrm_MedVenPgt, Frm_MedVenPgt);
   end;

Frm_MedVenPgt.Tb_Titulos.Close;
Frm_MedVenPgt.Tb_Titulos.Open;
if (Qr_CRec.Active) and not (Qr_CRec.IsEmpty) then
   begin
   Qr_CRec.First;
   While not Qr_CRec.Eof do
      begin
      if Qr_CRecCRSTATUS.Value>1 then
         begin
         Qr_CRec.Next;
         continue;
         end;

      Frm_MedVenPgt.Tb_Titulos.Append;
      Frm_MedVenPgt.Tb_TitulosVALOR.Value   :=Qr_CRecvalapagar.Value;
      Frm_MedVenPgt.Tb_TitulosDATA_DOC.Value:=Qr_CRecCRDTVCTO.Value;
      Frm_MedVenPgt.Tb_Titulos.Post;
      Qr_CRec.Next;
      end;
   Qr_CRec.First;
   end;

Frm_MedVenPgt.Tb_Documentos.Close;
Frm_MedVenPgt.Tb_Documentos.Open;

Frm_MedVenPgt.OBS.Text:=Qr_CRecCRCODCLI.AsString+' - '+Qr_CRecCRAZAO.AsString;
Frm_MedVenPgt.Show;

end;
Function TFrm_RCrec.fImprimirModelo05(pTipo: Integer): Boolean;
var
x: Integer;
mTotalBruto: Real;
begin
mvalant:='';
testeform := TFrm_RcRec(FindGlobalComponent('Form_impres_Rcrec.'));
if (testeform=nil)  then
   begin
   Application.CreateForm(Tfrm_Impres, Form_impres_Rcrec);
   end;


Form_impres_Rcrec.fimpresajustaimp(4,160,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
Qr_CRec.First;
Form_impres_Rcrec.mlin:=0;
Form_impres_Rcrec.mpag:=0;

mTotgDup  :=0;
mTotGPag  :=0;
mTotGArec_Avenc :=0;
mTotGArec_Venc :=0;
mTotGDesc :=0;
mTotGJuros:=0;
mTotalBruto:=0;
mTotTDup_AVenc  :=0;
mTotTDup_Venc   :=0;

mtotgrudescfin_aberto:=0;
mtotgrudescfin_conc  :=0;


mTotTPag  :=0;
mTotTArec_Avenc :=0;
mTotTArec_Venc  :=0;

mTotTDesc :=0;
mTotTJuros:=0;
mQtdGTit_Arec_AVenc  :=0;
mQtdTTit_Arec_Avenc  :=0;

mQtdGTit_Arec_Venc  :=0;
mQtdTTit_Arec_Venc  :=0;

mQtdGTit_Pag  :=0;
mQtdTTit_Pag  :=0;

mTotGChqDev_Pag :=0;
mTotGChqDev_APag:=0;
mQtdGChqDev_Pag :=0;
mQtdGChqDev_APag:=0;

mTotGChqPre     :=0;
mQtdGChqPre     :=0;


mTotGJuros_Pag :=0;
mTotGJuros_APag:=0;

mQtdGJuros_Pag :=0;
mQtdGJuros_APag:=0;


mTotGOutros_Pag :=0;
mTotGOutros_APag:=0;
mQtdGOutros_Pag :=0;
mQtdGOutros_APag:=0;
mTotGNC_Pag     :=0;
mTotGNC_APag    :=0;
mQtdGNC_Pag     :=0;
mQtdGNC_APag    :=0;


mtotjd:=0;
mtotjg:=0;

//mtotjg

mtotdd:=0;
mtotdg:=0;

mtotdevd:=0;
mtotdevg:=0;


mtotgd:=0;
mtotgg:=0;


mtotpd:=0;
mtotpg:=0;

mtotad:=mtotad- ((Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0))- (Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value));
mtotag:=mtotag- ((Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0))-(Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value));



mqtdGJurRec:=0; mqtdTJurRec:=0;
mTotGJurRec:=0; mTotTJurRec:=0;
mqtdGDesc  :=0; mqtdTDesc  :=0;
mTotGDesc  :=0; mTotTDesc  :=0;

mqtdGDev   :=0; mqtdTDev   :=0;
mTotGDev   :=0;  mTotTDev  :=0;

for x:=0 to STG_TOTCAR.RowCount do
   begin
   Frm_RCRec.STG_TOTCAR.Rows[x].Clear;
   end;
Frm_RCRec.STG_TOTCAR.RowCount:=0;


While not Qr_CRec.Eof do
   begin
   if Trim(mvalant)='' then
      mvalant:=Qr_CRecNOMGRU.AsString;
   if Form_impres_Rcrec.mlin=0 then
      begin
      fModelo05Cab(0);
     end;
   Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
   mcinst4:=insere2(Formatfloat('000000', Qr_CRecCRCODCLI.Value)
                                          +'-'+Qr_CRecCRAZAO.Value,' ',42)+' ';
   mcinst4:=mcinst4+insere(FormatFloat('000000', Qr_CRecCRNPED.Value)+'/'+FormatFloat('00',Qr_CRecCRORDEM.Value),' ',09);
   mcinst4:=mcinst4+iif(Qr_CRecCRCODEMP.AsInteger>100,'*',' ')
                                          +insere2(FormatFloat('0000000',Qr_CRecCRNUMERO.Value)+'-'+Qr_CRecCRDESD.Value,' ',10);
   mcinst4:=mcinst4+insere(Qr_CRectipdup.Value,' ',03)+'  ';
   mcinst4:=mcinst4+FormatDateTime(fdt3, Qr_CRecCRDTEMIS.Value)+' '
                   +FormatDateTime(fdt3, Qr_CRecCRDTVCTO.Value);
   mcinst4:=mcinst4+insere(FormatFloat(mcasas, Qr_CRecCRVALOR.Value),' ',12);
   mcinst4:=mcinst4+insere(Qr_CRecatraso.AsString,' ',05);
   mcinst4:=mcinst4+insere(FormatFloat(mcasas, Qr_CRecvalorjuros.Value+Qr_CRecmulta.Value ),' ',09);
   if Qr_CRecCRDESCF.Value=0 then
      mcinst4:=mcinst4+insere(' ',' ',08)
   else
      mcinst4:=mcinst4+insere(FormatFloat(mcasas, Qr_CRecCRDESCF.Value),' ',08);

   mcinst4:=mcinst4+' ';
   if (Qr_CRecCRDTDESCF.IsNull) or  ( (Qr_CRecCRDTDESCF.AsDateTime<=pdatanula) and (cb_totaisLiquido.Checked=false) )
      or (Qr_CRecCRDESCF.Value=0) then
      mcinst4:=mcinst4+insere(' ',' ',08)
   else
      begin
      mcinst4:=mcinst4+insere(FormatDateTime(fdt3, Qr_CRecCRDTDESCF.Value),' ',08);
      if Qr_CRecCRSTATUS.AsInteger<2 then
         begin
         mtotgrudescfin_aberto:=mtotgrudescfin_aberto+Qr_CRecCRDESCF.AsFloat;
         end
      else
         begin
         mtotgrudescfin_conc:=mtotgrudescfin_conc+Qr_CRecCRDESCF.AsFloat;
         end;
      end;
   mcinst4:=mcinst4+insere(FormatFloat(mcasas, Qr_CRecCRDESC.Value),' ',08);
   mcinst4:=mcinst4+insere(FormatFloat(mcasas, Qr_CRecCRDEVOL.Value),' ',09);
   mcinst4:=mcinst4+insere(FormatFloat(mcasas, Qr_CRecCRVALPAG.Value),' ',10);
   mcinst4:=mcinst4+' ';
   if Qr_CRecCRCODBCO.AsFloat=0 then
      mcinst4:=mcinst4+' C '
   else
      mcinst4:=mcinst4+Insere2(Qr_CRecCRCODBCO.AsString,' ',03);

   if Qr_CRecCRDUP.Value=5 then
      begin
      mTotGNC_Pag :=mTotGNC_Pag+Qr_CRecCRVALPAG.Value;
      mTotGNC_APag:=mTotGNC_APag+( (Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0))-(Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value));
      if Qr_CRecCRSTATUS.Value=2 then
         mQtdGNC_Pag :=mQtdGNC_Pag+1
      else
         mQtdGNC_APag:=mQtdGNC_APag+1;
      mtotpd:=mtotpd+Qr_CRecCRVALPAG.Value;
      mtotpg:=mtotpg+Qr_CRecCRVALPAG.Value;

      end
   else if Qr_CRecCRDUP.Value=6 then
      begin
      mTotGChqPre:=mTotGChqPre+((Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0))
                           -(Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value));
      mQtdGChqPre:=mQtdGChqPre+1;
      mtotpd:=mtotpd+Qr_CRecCRVALPAG.Value;
      mtotpg:=mtotpg+Qr_CRecCRVALPAG.Value;

      end
   else if Qr_CRecCRDUP.Value=3 then
      begin
      mTotGJuros_Pag :=mTotGJuros_Pag+Qr_CRecCRVALPAG.Value;
      mTotGJuros_APag:=mTotGJuros_APag+((Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0))
                             -(Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value));
      if Qr_CRecCRSTATUS.Value=2 then
         mQtdGJuros_Pag :=mQtdGJuros_Pag+1
      else
         mQtdGJuros_APag:=mQtdGJuros_APag+1;
      mtotdevd:=mtotdevd+Qr_CRecCRDEVOL.Value;
      mtotdevg:=mtotdevg+Qr_CRecCRDEVOL.Value;
      mtotdd:=mtotdd+Qr_CRecCRDESC.Value;
      mtotdg:=mtotdg+Qr_CRecCRDESC.Value;
      mtotpd:=mtotpd+Qr_CRecCRVALPAG.Value;
      mtotpg:=mtotpg+Qr_CRecCRVALPAG.Value;

      end
   else if (Qr_CRecCRDUP.Value=1) or
      (Qr_CRecCRDUP.Value=2) then
      begin
      mTotGChqDev_Pag :=mTotGChqDev_Pag+Qr_CRecCRVALPAG.Value;
      mTotGChqDev_APag:=mTotGChqDev_APag+((Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0))
                             -(Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value));
      if Qr_CRecCRSTATUS.Value=2 then
         mQtdGChqDev_Pag :=mQtdGChqDev_Pag+1
      else
         begin
         mQtdGChqDev_APag:=mQtdGChqDev_APag+1;
         mtotjd:=mtotjd+Qr_CRecvalorjuros.Value+Qr_CRecmulta.asfloat;
         mtotjg:=mtotjg+Qr_CRecvalorjuros.Value+Qr_CRecmulta.asfloat;;
         end;
      mtotdevd:=mtotdevd+Qr_CRecCRDEVOL.Value;
      mtotdevg:=mtotdevg+Qr_CRecCRDEVOL.Value;
      mtotdd:=mtotdd+Qr_CRecCRDESC.Value;
      mtotdg:=mtotdg+Qr_CRecCRDESC.Value;

//      mtotjd:=mtotjd+Qr_CRecCRJUROS.Value;
//      mtotjg:=mtotjg+Qr_CRecCRJUROS.Value;

      mtotpd:=mtotpd+Qr_CRecCRVALPAG.Value;
      mtotpg:=mtotpg+Qr_CRecCRVALPAG.Value;
      end
   else
      begin
      if Qr_CRecCRDUP.AsInteger=0 then
         begin
         if Qr_CRecCRSTATUS.AsInteger<2 then
            begin
            if Qr_CRecCRDTVCTO.AsDateTime>mDataPag then
               begin

               mTotTArec_Avenc:=mTotTArec_Avenc +((Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0))
               -(Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value));
               mTotGArec_Avenc :=mTotGArec_Avenc+(
               (Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0))
               -(Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value));
               mQtdTTit_Arec_Avenc :=mQtdTTit_Arec_Avenc +1;
               mQtdGTit_Arec_AVenc :=mQtdGTit_Arec_AVenc+1;
               fCalcularBanco(Qr_CRecCRCODBCO.Value,
               (Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0)),0,0,
               (Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0))
               -(Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value));
               end
            else
               begin
               mTotTArec_Venc:=mTotTArec_Venc +((Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0))
               -(Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value));
               mTotGArec_Venc:=mTotGArec_Venc+(
               (Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0))
               -(Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value));
               mQtdTTit_Arec_venc :=mQtdTTit_Arec_venc +1;
               mQtdGTit_Arec_Venc :=mQtdGTit_Arec_Venc+1;

               fCalcularBanco(Qr_CRecCRCODBCO.Value,
               (Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0)),0,
               (Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0))
                            -(Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value)
                            ,0);
               end;
            end
         else
            begin
            mTotTPag:=mTotTPag+(Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value);
            mTotGPag:=mTotGPag+(Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value);
            mQtdTTit_Pag:=mQtdTTit_Pag+1;
            mQtdGTit_Pag:=mQtdGTit_Pag+1;
            fCalcularBanco(Qr_CRecCRCODBCO.Value,(Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0)),
                            Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value
                            ,0,0);

            end;
         end
      else
         begin
         mTotGOutros_APag:=mTotGOutros_APag+(
         (Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0))
         -(Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value));
         mTotGOutros_Pag :=mTotGOutros_Pag+Qr_CRecCRVALPAG.Value;
         if Qr_CRecCRSTATUS.Value=2 then
            mQtdGOutros_Pag:=mQtdGOutros_Pag+1
         else
            mQtdGOutros_APag:=mQtdGOutros_APag+1;
         end;

      if Qr_CRecCRSTATUS.Value<>2 then
         begin
         mtotjd:=mtotjd+Qr_CRecvalorjuros.Value+Qr_CRecmulta.asfloat;
         mtotjg:=mtotjg+Qr_CRecvalorjuros.Value+Qr_CRecmulta.asfloat;
         end;

      mtotdd:=mtotdd+Qr_CRecCRDESC.Value;
      mtotdg:=mtotdg+Qr_CRecCRDESC.Value;

      mtotdevd:=mtotdevd+Qr_CRecCRDEVOL.Value;
      mtotdevg:=mtotdevg+Qr_CRecCRDEVOL.Value;

      mtotgd:=mtotgd+(Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0));
      mtotgg:=mtotgg+(Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0));

      mTotalBruto:=mTotalBruto+Qr_CRecCRVALOR.Value;


      mtotpd:=mtotpd+Qr_CRecCRVALPAG.Value;
      mtotpg:=mtotpg+Qr_CRecCRVALPAG.Value;

      mtotad:=mtotad+(Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0))-(Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value);
      mtotag:=mtotag+(Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0))-(Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value);
      end;
   Form_impres_Rcrec.rdprint1.impf(Form_impres_Rcrec.mlin,01,mcinst4,m20ccp);
   if Qr_CRecCRJUROS.AsFloat>0 then
      begin
      mqtdGJurRec:=mqtdGJurRec+1;
      mTotGJurRec:=mTotGJurRec+Qr_CRecCRJUROS.AsFloat;

      mqtdTJurRec:=mqtdTJurRec+1;
      mTotTJurRec:=mTotTJurRec+Qr_CRecCRJUROS.AsFloat;
      end;

   if Qr_CRecCRDESC.AsFloat>0 then
      begin
      mqtdGDesc:=mqtdGDesc+1;
      mTotGDesc:=mTotGDesc+Qr_CRecCRDESC.AsFloat;

      mqtdTDesc:=mqtdTDesc+1;
      mTotTDesc:=mTotTDesc+Qr_CRecCRDESC.AsFloat;
      end;

   if Qr_CRecCRDEVOL.AsFloat>0 then
      begin
      mqtdGDev:=mqtdGDev+1;
      mTotGDev:=mTotGDev+Qr_CRecCRDEVOL.AsFloat;

      mqtdTDev:=mqtdTDev+1;
      mTotTDev:=mTotTDesc+Qr_CRecCRDEVOL.AsFloat;
      end;



   Qr_CRec.Next;
   if Qr_CRec.Eof then
      begin
      Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
      fModelo05tot(0);
//      Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
//      Form_impres_Rcrec.Rdprint1.Impf(Form_impres_Rcrec.mlin,01,'Fim'+insere('-','-',157),m20ccp);
      if CB_VISREL.Checked then
         begin
         if Form_impres_Rcrec.RDprint1.Setup then Form_impres_Rcrec.Rdprint1.Fechar;
         end
      else
         Form_impres_Rcrec.RDprint1.Fechar;
      Form_impres_Rcrec.free;
      Form_impres_Rcrec:=nil;
      break;
      end;
   if cb_separado.ItemIndex<>14 then
      begin
      if mvalant<>Qr_CRecNOMGRU.Value then
         begin
         fModelo05tot(0);
         for x:=0 to STG_TOTCAR.RowCount do
            begin
            Frm_RCRec.STG_TOTCAR.Rows[x].Clear;
            end;
         Frm_RCRec.STG_TOTCAR.RowCount:=0;
         end;
      end;

   if Form_impres_Rcrec.mlin>57 then
      begin
      Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
      Form_impres_Rcrec.Rdprint1.Impf(Form_impres_Rcrec.mlin,01,'Continua...'+insere('-','-',149),m20ccp);
      Form_impres_Rcrec.Rdprint1.Novapagina;
      Form_impres_Rcrec.mlin:=0;
      end;

   end;
result:=true;
end;


Function TFrm_RCrec.fImprimirModelo04(pTipo: Integer): Boolean;
begin
mvalant:='';
testeform := TFrm_RcRec(FindGlobalComponent('Form_impres_Rcrec.'));
if (testeform=nil)  then
   begin
   Application.CreateForm(Tfrm_Impres, Form_impres_Rcrec);
   end;


Form_impres_Rcrec.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
Qr_CRec.First;
Form_impres_Rcrec.mlin:=0;
Form_impres_Rcrec.mpag:=0;
While not Qr_CRec.Eof do
   begin
   if Trim(mvalant)='' then
      mvalant:=Qr_CRecNOMGRU.AsString;
   if Form_impres_Rcrec.mlin=0 then
      begin
      Form_impres_Rcrec.mpag:=Form_impres_Rcrec.mpag+1;
      Form_impres_Rcrec.RDprint1.ImpF(01,01,FormatDatetime(fdt2, date)+centra(DM1.Tb_EmpRAZAO_CAB.Value,' ',62)+FormatDateTime(fhr, time),mnormal);
      Form_impres_Rcrec.RDprint1.ImpF(02,01,insere2('Relatorio de Contas a Receber. '+fperiodo(0,MDT1.Text,MDT2.Text),' ',125)+'Pagina: '+FormatFloat('0000',Form_impres_Rcrec.mpag),mreduz);
      Form_impres_Rcrec.RDprint1.ImpF(03,01,insere('-','-',80),mnormal);
      Form_impres_Rcrec.mlin:=3;

      if lbx_codcli.Count>0 then
         FImprimeTitulo('Cliente',lbx_codcli,OMITIR_CLI);
      if cb_separado.ItemIndex<>20 then
         begin
         if lbx_codven.Count>0 then
            FImprimeTitulo('Vendedor',lbx_codven,OMITIR_VEN);
         end;
      if lbx_codasse.Count>0 then
         FImprimeTitulo('Assessor',lbx_codasse,OMITIR_ASS);

      if lbx_codcob.Count>0 then
         FImprimeTitulo('Cobranca/Bco',lbx_codcob,OMITIR_COB);

      if lbx_codbco.Count>0 then
         FImprimeTitulo('Banco/Caixa',lbx_codcob,OMITIR_COB);

      if lbx_codfp.Count>0 then
         FImprimeTitulo('Forma Pgto',lbx_codfp,OMITIR_FP);
      if lbx_codred.Count>0 then
         FImprimeTitulo('Rede de Cliente',lbx_codred,OMITIR_RED);
      if lbx_codcv.Count>0 then
         FImprimeTitulo('Convenio',lbx_codcv,OMITIR_CV);
      if lbx_codloc.Count>0 then
         FImprimeTitulo('Cidade',lbx_codloc,OMITIR_LOC);
      if lbx_codtel.Count>0 then
         FImprimeTitulo('Televendas',lbx_codtel,OMITIR_TEL);
      if lbx_codsup.Count>0 then
         FImprimeTitulo('Supervisor',lbx_codsup,OMITIR_SUP);

      if cb_separado.ItemIndex<>4 then
         begin
         Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
         Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,Qr_CRecNOMGRU.AsString,mreduz);
         Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
         Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,insere('-','-',80),mnormal);
         end;
      Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
      Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,'Cliente                              Numero   Dt.Emis. Dt.Vcto  Dt.Pgto.        Vlr.Titulo         Vlr.Pago  Jurus/Dia  ST+IPI No.Pedido',mreduz);

{
Cliente                              Numero   Dt.Emis. Dt.Vcto  Dt.Pgto.  Vlr.Titulo    Vlr.Pago  Juros/Dia Atras Bco S ST+IPI No.Pedido
001534-1234567890123456789012345678 *123456/a 20/09/20 10/09/20 10/09/20 zzzz.zz9,99 zzzz.zz9,99 zzz.zz9,99 12345 Bco S ST+IPI 027169/01
}     end;
   Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
   mcinst4:=insere2(Formatfloat('000000', Qr_CRecCRCODCLI.Value)
                                          +'-'+Qr_CRecCRAZAO.Value,' ',35)+' '
                                          +iif(Qr_CRecCRCODEMP.AsInteger>100,'*',' ')
                                          +insere2(FormatFloat('000000',Qr_CRecCRNUMERO.Value)+'-'+Qr_CRecCRDESD.Value,' ',9)
                                          +FormatDateTime(fdt3, Qr_CRecCRDTEMIS.Value)+' '
                                          +FormatDateTime(fdt3, Qr_CRecCRDTVCTO.Value)+' ';
   if (Qr_CRecCRDTPAG.IsNull) or (Qr_CRecCRDTPAG.AsDateTime<=pdatanula) then
      mcinst4:=mcinst4+insere2(' ',' ',08)
   else
      mcinst4:=mcinst4+FormatDatetime(fdt3, Qr_CRecCRDTPAG.Value);
   mcinst4:=mcinst4+insere(FormatFloat(mcasas, Qr_CRecCRVALOR.Value),' ',18);
   mcinst4:=mcinst4+insere(FormatFloat(mcasas, Qr_CRecCRVALPAG.Value),' ',17);
   mcinst4:=mcinst4+insere(FormatFloat(mcasas, Qr_CRecCRJURD.Value),' ',11);
//   mcinst4:=mcinst4+insere(Qr_CRecatraso.AsString,' ',05);
//   mcinst4:=mcinst4+' ';
//   if Qr_CRecCRCODBCO.AsFloat=0 then
//      mcinst4:=mcinst4+' C '
//   else
//      mcinst4:=mcinst4+Insere2(Qr_CRecCRCODBCO.AsString,' ',03);
//   mcinst4:=mcinst4+' ';
   mcinst4:=mcinst4+insere(FormatFloat(mcasas, Qr_CRecCRICMSR.Value+Qr_CRecCRTOTIPI.Value),' ',08);
   mcinst4:=mcinst4+' ';
   mcinst4:=mcinst4+insere(FormatFloat('000000', Qr_CRecCRNPED.Value)+'/'+FormatFloat('00',Qr_CRecCRORDEM.Value),' ',09);

   if Qr_CRecCRDUP.Value=5 then
      begin
      mtotjd:=mtotjd-Qr_CRecCRJUROS.Value+Qr_CRecmulta.asfloat;
      mtotjg:=mtotjg-Qr_CRecCRJUROS.Value+Qr_CRecmulta.asfloat;;

      mtotjdia:=mtotjdia-Qr_CRecCRJURD.Value;

      mtotdd:=mtotdd-Qr_CRecCRDESC.Value;
      mtotdg:=mtotdg-Qr_CRecCRDESC.Value;

      mtotdevd:=mtotdevd-Qr_CRecCRDEVOL.Value;
      mtotdevg:=mtotdevg-Qr_CRecCRDEVOL.Value;
      mtotgd:=mtotgd-(Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0));
      mtotgg:=mtotgg-(Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0));

      mtotpd:=mtotpd-Qr_CRecCRVALPAG.Value;
      mtotpg:=mtotpg-Qr_CRecCRVALPAG.Value;

      mtotad:=mtotad- ((Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0))-(Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value));
      mtotag:=mtotag- ((Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0))-(Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value));
      end
   else
      begin
      mtotjd:=mtotjd+Qr_CRecCRJUROS.Value+Qr_CRecmulta.asfloat;;
      mtotjg:=mtotjg+Qr_CRecCRJUROS.Value+Qr_CRecmulta.asfloat;;

     mtotjdia:=mtotjdia+Qr_CRecCRJURD.Value;

      mtotdd:=mtotdd+Qr_CRecCRDESC.Value;
      mtotdg:=mtotdg+Qr_CRecCRDESC.Value;

      mtotdevd:=mtotdevd+Qr_CRecCRDEVOL.Value;
      mtotdevg:=mtotdevg+Qr_CRecCRDEVOL.Value;

      mtotgd:=mtotgd+(Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0));
      mtotgg:=mtotgg+(Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0));

      mtotpd:=mtotpd+Qr_CRecCRVALPAG.Value;
      mtotpg:=mtotpg+Qr_CRecCRVALPAG.Value;

      mtotad:=mtotad+(Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0))
                 -(Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value);
      mtotag:=mtotag+(Qr_CRecCRVALOR.Value-iif(cb_totaisLiquido.Checked=true,Qr_CRecCRDESCF.AsFloat,0))
      -(Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value);
      end;

   Form_impres_Rcrec.rdprint1.impf(Form_impres_Rcrec.mlin,01,mcinst4,mreduz);
   Qr_CRec.Next;
   if Qr_CRec.Eof then
      begin
      Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
      if cb_separado.ItemIndex<>14 then
         begin
         Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
         Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('-','-',136),mreduz);
         Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('- Total '+cb_separado.Text,'.',30)+' Geral:'
                                 +insere(FormatFloat(mcasas,mtotgd),' ',11)
                                 +' - Em Aberto.: '
                                 +insere(FormatFloat(mcasas,mtotad),' ',11)
                                 +' Pago..: '
                                 +insere(FormatFloat(mcasas,mtotpd),' ',10),mreduz);
         mtotgd:=0; mtotpd:=0;mtotad:=0;mtotdd:=0; mtotjd:=0; mtotdevd:=0;
         end
      else
        begin
        Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
        Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,'- Total Geral '
                              +insere(FormatFloat(mcasas,mtotgg),' ',15)
                              +insere(' ',' ',15)
                              +' - Total Pago..: '+insere(FormatFloat(mcasas,mtotpg),' ',15)
//                              +insere(FormatFloat(mcasas,mtotag),' ',10)
                              +insere(' ',' ',15)
//                              +insere(FormatFloat(mcasas,mtotdg),' ',08)
                              +'- Total de Juros..: '+insere(FormatFloat(mcasas,mtotjdia),' ',15),mreduz);
        Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
        end;

      Form_impres_Rcrec.Rdprint1.Impf(Form_impres_Rcrec.mlin,01,'Fim'+insere('-','-',133),mreduz);
      if CB_VISREL.Checked then
         begin
         if Form_impres_Rcrec.RDprint1.Setup then Form_impres_Rcrec.Rdprint1.Fechar;
         end
      else
         Form_impres_Rcrec.RDprint1.Fechar;
      Form_impres_Rcrec.free;
      Form_impres_Rcrec:=nil;   
      break;
      end;
   if cb_separado.ItemIndex<>14 then
      begin
      if mvalant<>Qr_CRecNOMGRU.Value then
         begin
         Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
         Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('-','-',136),mreduz);
         Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
         Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('- Total '+cb_separado.Text,'.',30)+' Geral:'
                                 +insere(FormatFloat(mcasas,mtotgd),' ',11)
                                 +' - Em Aberto.: '
                                 +insere(FormatFloat(mcasas,mtotad),' ',11)
                                 +' Pago..: '
                                 +insere(FormatFloat(mcasas,mtotpd),' ',10),mreduz);
         mtotgd:=0; mtotpd:=0;mtotad:=0;mtotdd:=0; mtotjd:=0; mtotdevd:=0;

         mvalant:=Qr_CRecNOMGRU.Value;
         Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
         Form_impres_Rcrec.Rdprint1.Impf(Form_impres_Rcrec.mlin,01,insere('-','-',136),mreduz);
         Form_impres_Rcrec.Rdprint1.Novapagina;
         Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
         Form_impres_Rcrec.mlin:=0;
         Form_impres_Rcrec.mpag:=0;
         end;
      end;
   if Form_impres_Rcrec.mlin>57 then
      begin
      Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
      Form_impres_Rcrec.Rdprint1.Impf(Form_impres_Rcrec.mlin,01,'Continua...'+insere('-','-',125),mreduz);
      Form_impres_Rcrec.Rdprint1.Novapagina;
      Form_impres_Rcrec.mlin:=0;
      end;

   end;
result:=true;
end;

procedure TFrm_RCRec.DATAPGTOExit(Sender: TObject);
begin
if trim(DATAPGTO.Text)='/  /' then
   begin
   mDataPag:=date;
   DATAPGTO.Text:=FormatDatetime(fdt2, mDataPag);
   end;
if Trim(DATAPGTO.Text)<>'/  /' then
   begin
   Try
      DATAPGTO.Text:=FormatDateTime(fdt2,StrtoDate(DATAPGTO.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      DATAPGTO.SetFocus;
      end;
   end;
mDataPag:=StrToDate(DATAPGTO.Text);

end;

function TFrm_RCrec.fModelo05Cab(pTipo: Integer):Boolean;
begin
result:=true;
Form_impres_Rcrec.mpag:=Form_impres_Rcrec.mpag+1;
Form_impres_Rcrec.RDprint1.ImpF(01,01,FormatDatetime(fdt2, date)+centra(DM1.Tb_EmpRAZAO_CAB.Value,' ',62)+FormatDateTime(fhr, time),mnormal);
Form_impres_Rcrec.RDprint1.ImpF(02,01,insere2('Relatorio de Documentos. '+fperiodo(0,MDT1.Text,MDT2.Text),' ',125)+'Pagina: '+FormatFloat('0000',Form_impres_Rcrec.mpag),mreduz);
Form_impres_Rcrec.RDprint1.ImpF(03,01,centra('Juros Calculados até: '+DATAPGTO.Text,' ',80),mneg);
Form_impres_Rcrec.RDprint1.ImpF(04,01,insere('-','-',80),mnormal);
Form_impres_Rcrec.mlin:=4;
if lbx_codcli.Count>0 then
   FImprimeTitulo('Cliente',lbx_codcli,OMITIR_CLI);
if cb_separado.ItemIndex<>20 then
   begin
   if lbx_codven.Count>0 then
      FImprimeTitulo('Vendedor',lbx_codven,OMITIR_VEN);
   end;
if lbx_codasse.Count>0 then
   FImprimeTitulo('Assessor',lbx_codasse,OMITIR_ASS);

if lbx_codcob.Count>0 then
   FImprimeTitulo('Cobranca/Bco',lbx_codcob,OMITIR_COB);

if lbx_codbco.Count>0 then
   FImprimeTitulo('Banco/Caixa',lbx_codbco,OMITIR_BCO);

if lbx_codfp.Count>0 then
   FImprimeTitulo('Forma Pgto',lbx_codfp,OMITIR_FP);
if lbx_codred.Count>0 then
   FImprimeTitulo('Rede de Cliente',lbx_codred,OMITIR_RED);
if lbx_codcv.Count>0 then
   FImprimeTitulo('Convenio',lbx_codcv,OMITIR_CV);
if lbx_codloc.Count>0 then
   FImprimeTitulo('Cidade',lbx_codloc,OMITIR_LOC);
if lbx_codtel.Count>0 then
   FImprimeTitulo('Televendas',lbx_codtel,OMITIR_TEL);
if lbx_codsup.Count>0 then
   FImprimeTitulo('Supervisor',lbx_codsup,OMITIR_SUP);



if cb_separado.ItemIndex<>14 then
   begin
   Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
   Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,cb_separado.Text+': '+mvalant,mreduz);
   Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
   Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,insere('-','-',80),mnormal);
   end;



Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,'Cliente                                    No.Pedido Numero   Tipo   Dt.Emis. Dt.Vcto  Vlr.Titulo  atr Jur/Mora Des.Fin.   Ate     Desc.   Devol.  Vlr.Pago Bco',m20ccp);


{
Cliente                                    No.Pedido Numero   Tipo   Dt.Emis. Dt.Vcto  Vlr.Titulo  atr  Jur/Dia  Des.Fin.   Ate     Desc.   Devol.  Vlr.Pago Bco
001534-12345678901234567890123456789012345 027169/01*123456/a 123456 20/09/20 10/09/20 zzz.zz9,99 1234 z.zz9,99 z.zz9,99 01/08/07 zzz9,99 z.zz9,99 zz.zz9,99 123
}

end;
function TFrm_RCrec.fModelo05tot(pTipo: Integer):Boolean;
var
y,x: Integer;

begin
Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+2;
Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('- Total Geral '+cb_separado.Text,'.',86)
                        +insere(FormatFloat(mcasas,
                        (mTotGArec_Venc+mTotGArec_Avenc+mTotGPag
                        +mTotGJuros_Pag
                        +mTotGJuros_APag
                        +mTotGChqDev_Pag
                        +mTotGChqDev_APag
                        +mTotGOutros_Pag
                        +mTotGOutros_APag
                        +mTotGChqPre)-(mTotGNC_Pag+mTotGNC_Apag)

                         ),' ',11)
                        +'   '
                        +insere(FormatFloat(mcasas,mtotjd),' ',11)
                        +insere(FormatFloat(mcasas,mtotgrudescfin_aberto+mtotgrudescfin_conc),' ',11)

//                        +insere2(' ',' ',11)
                        +insere(FormatFloat(mcasas,mtotdd),' ',14)
                        +insere(FormatFloat(mcasas,mtotdevd),' ',09)
                        +insere(FormatFloat(mcasas,mtotpg),' ',10) ,m20ccp);
Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
if Form_impres_Rcrec.mlin>60 then
   begin
   Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('Continua','.',80),mnormal);
   Form_impres_Rcrec.RDprint1.Novapagina;
   fModelo05Cab(0);
   Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
   end;
Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2(' Duplicatas/Titulos....('+FormatFloat('000000', mQtdGTit_Arec_AVenc+mQtdGTit_Arec_Venc+mQtdGTit_Pag)+')..: ',' ',42)+insere(FormatFloat(mcasas, mTotGArec_Venc+mTotGArec_Avenc+mTotGPag),' ',14),mreduz);
Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,80,'   Valores de Pagamentos', mreduz);
Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
if Form_impres_Rcrec.mlin>60 then
   begin
   Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('Continua','.',80),mnormal);
   Form_impres_Rcrec.RDprint1.Novapagina;
   fModelo05Cab(0);
   Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
   end;
Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('   Pagas...............('+FormatFloat('000000', mQtdGTit_Pag)+')..: ',' ',42)+insere(FormatFloat(mcasas, mTotGPag),' ',14),mreduz);
Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,80,insere2('Juros Pagos.........('+FormatFloat('000000', mqtdGJurRec)+')..: ',' ',42)+insere(FormatFloat(mcasas, mTotGJurRec),' ',14),mreduz);
Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
if Form_impres_Rcrec.mlin>60 then
   begin
   Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('Continua','.',80),mnormal);
   Form_impres_Rcrec.RDprint1.Novapagina;
   fModelo05Cab(0);
   Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
   end;
Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('   Vencidas............('+FormatFloat('000000', mQtdGTit_Arec_Venc )+')..: ',' ',42)+insere(FormatFloat(mcasas, mTotGArec_Venc),' ',14),mreduz);
Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,80,insere2('Descontos...........('+FormatFloat('000000', mqtdGDesc)+')..: ',' ',42)+insere(FormatFloat(mcasas, mTotGDesc),' ',14),mreduz);

Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
if Form_impres_Rcrec.mlin>60 then
   begin
   Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('Continua','.',80),mnormal);
   Form_impres_Rcrec.RDprint1.Novapagina;
   fModelo05Cab(0);
   Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
   end;
Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('   A Vencer............('+FormatFloat('000000', mQtdGTit_Arec_AVenc )+')..: ',' ',42)+insere(FormatFloat(mcasas, mTotGArec_Avenc),' ',14),mreduz);
Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,80,insere2('Devolucao...........('+FormatFloat('000000', mqtdGDev)+')..: ',' ',42)+insere(FormatFloat(mcasas, mTotGDev),' ',14),mreduz);
Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
if Form_impres_Rcrec.mlin>60 then
   begin
   Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('Continua','.',80),mnormal);
   Form_impres_Rcrec.RDprint1.Novapagina;
   fModelo05Cab(0);
   Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
   end;
Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2(' Cheques devolvidos....('+FormatFloat('000000', mQtdGChqDev_Pag+mQtdGChqDev_APag)+')..: ',' ',42)+insere(FormatFloat(mcasas, mTotGChqDev_Pag+mTotGChqDev_APag),' ',14),mreduz);

Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
if Form_impres_Rcrec.mlin>60 then
   begin
   Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('Continua','.',80),mnormal);
   Form_impres_Rcrec.RDprint1.Novapagina;
   fModelo05Cab(0);
   Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
   end;
Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('   Pagos...............('+FormatFloat('000000', mQtdGChqDev_Pag)+')..: ',' ',42)+insere(FormatFloat(mcasas, mTotGChqDev_Pag),' ',14),mreduz);
Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,80,'Resumo Carteira   Tit. Pagos  Tit.Vencidos  Tit.a Vencer',mreduz);
Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
if Form_impres_Rcrec.mlin>60 then
   begin
   Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('Continua','.',80),mnormal);
   Form_impres_Rcrec.RDprint1.Novapagina;
   fModelo05Cab(0);
   Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
   end;
Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('   Em Aberto...........('+FormatFloat('000000', mQtdGChqDev_APag)+')..: ',' ',42)+insere(FormatFloat(mcasas, mTotGChqDev_APag),' ',14),mreduz);
x:=0;
if fImprimeResumoCarteira(x) then
   x:=x+1;
Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
if Form_impres_Rcrec.mlin>60 then
   begin
   Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('Continua','.',80),mnormal);
   Form_impres_Rcrec.RDprint1.Novapagina;
   fModelo05Cab(0);
   Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
   end;
Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2(' Juros Pendentes.......('+FormatFloat('000000', mQtdGJuros_Pag+mQtdGJuros_APag)+')..: ',' ',42)+insere(FormatFloat(mcasas, mTotGJuros_Pag+mTotGJuros_APag),' ',14),mreduz);

if fImprimeResumoCarteira(x) then
   x:=x+1;

Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
if Form_impres_Rcrec.mlin>60 then
   begin
   Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('Continua','.',80),mnormal);
   Form_impres_Rcrec.RDprint1.Novapagina;
   fModelo05Cab(0);
   Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
   end;

Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('   Pagos...............('+FormatFloat('000000', mQtdGJuros_Pag)+')..: ',' ',42)+insere(FormatFloat(mcasas, mTotGJuros_Pag),' ',14),mreduz);
if fImprimeResumoCarteira(x) then
   x:=x+1;

Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
if Form_impres_Rcrec.mlin>60 then
   begin
   Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('Continua','.',80),mnormal);
   Form_impres_Rcrec.RDprint1.Novapagina;
   fModelo05Cab(0);
   Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
   end;
Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('   Em Aberto...........('+FormatFloat('000000', mQtdGJuros_APag)+')..: ',' ',42)+insere(FormatFloat(mcasas, mTotGJuros_APag),' ',14),mreduz);
if fImprimeResumoCarteira(x) then
   x:=x+1;


Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
if Form_impres_Rcrec.mlin>60 then
   begin
   Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('Continua','.',80),mnormal);
   Form_impres_Rcrec.RDprint1.Novapagina;
   fModelo05Cab(0);
   Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
   end;
Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2(' Outros Debitos........('+FormatFloat('000000', mQtdGOutros_Pag+mQtdGOutros_APag)+')..: ',' ',42)+insere(FormatFloat(mcasas, mTotGOutros_Pag+mTotGOutros_APag),' ',14),mreduz);
if fImprimeResumoCarteira(x) then
   x:=x+1;

Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
if Form_impres_Rcrec.mlin>60 then
   begin
   Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('Continua','.',80),mnormal);
   Form_impres_Rcrec.RDprint1.Novapagina;
   fModelo05Cab(0);
   Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
   end;
Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('   Pagos...............('+FormatFloat('000000', mQtdGOutros_Pag)+')..: ',' ',42)+insere(FormatFloat(mcasas, mTotGOutros_Pag),' ',14),mreduz);
if fImprimeResumoCarteira(x) then
   x:=x+1;

Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
if Form_impres_Rcrec.mlin>60 then
   begin
   Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('Continua','.',80),mnormal);
   Form_impres_Rcrec.RDprint1.Novapagina;
   fModelo05Cab(0);
   Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
   end;
Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('   Em Aberto...........('+FormatFloat('000000', mQtdGOutros_APag)+')..: ',' ',42)+insere(FormatFloat(mcasas, mTotGOutros_APag),' ',14),mreduz);
Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
if Form_impres_Rcrec.mlin>60 then
   begin
   Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('Continua','.',80),mnormal);
   Form_impres_Rcrec.RDprint1.Novapagina;
   fModelo05Cab(0);
   Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
   end;
Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2(' Cheques Pre-Datados.('+FormatFloat('000000', mQtdGChqPre)+')..: ',' ',42)+insere(FormatFloat(mcasas, mTotGChqPre),' ',14),mreduz);

if fImprimeResumoCarteira(x) then
   x:=x+1;
Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
if Form_impres_Rcrec.mlin>60 then
   begin
   Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('Continua','.',80),mnormal);
   Form_impres_Rcrec.RDprint1.Novapagina;
   fModelo05Cab(0);
   Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
   end;
Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2(' Notas de Creditos.....('+FormatFloat('000000', mQtdGNC_Pag+mQtdGNC_APag)+')..: ',' ',42)+insere(FormatFloat(mcasas, mTotGNC_Pag+mTotGNC_APag),' ',14),mreduz);
if fImprimeResumoCarteira(x) then
   x:=x+1;
Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
if Form_impres_Rcrec.mlin>60 then
   begin
   Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('Continua','.',80),mnormal);
   Form_impres_Rcrec.RDprint1.Novapagina;
   fModelo05Cab(0);
   Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
   end;
Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('   Pagos...............('+FormatFloat('000000', mQtdGNC_Pag)+')..: ',' ',42)+insere(FormatFloat(mcasas, mTotGNC_Pag),' ',14),mreduz);
if fImprimeResumoCarteira(x) then
   x:=x+1;

Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
if Form_impres_Rcrec.mlin>60 then
   begin
   Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('Continua','.',80),mnormal);
   Form_impres_Rcrec.RDprint1.Novapagina;
   fModelo05Cab(0);
   Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
   end;
Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('   Em Aberto...........('+FormatFloat('000000', mQtdGNC_APag)+')..: ',' ',42)+insere(FormatFloat(mcasas, mTotGNC_APag),' ',14),mreduz);
if fImprimeResumoCarteira(x) then
   x:=x+1;

Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
if Form_impres_Rcrec.mlin>60 then
   begin
   Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('Continua','.',80),mnormal);
   Form_impres_Rcrec.RDprint1.Novapagina;
   fModelo05Cab(0);
   Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
   end;
Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2(' ',' ',42)+insere('-','-',14),mreduz);
if fImprimeResumoCarteira(x) then
   x:=x+1;
Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
if Form_impres_Rcrec.mlin>60 then
   begin
   Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('Continua','.',80),mnormal);
   Form_impres_Rcrec.RDprint1.Novapagina;
   fModelo05Cab(0);
   Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
   end;
Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('Debitos em Aberto......('+FormatFloat('000000',
  mQtdGTit_Arec_AVenc+mQtdGTit_Arec_Venc+mQtdGChqDev_APag+mQtdGJuros_APag
  +mQtdGOutros_APag+mQtdGChqPre)+')..: ',' ',42)+insere(FormatFloat(mcasas,
  mTotGArec_Venc
  +mTotGArec_Avenc
  +mTotGJuros_APag
  +mTotGChqDev_APag
  +mTotGOutros_APag
  +mTotGChqPre),' ',14),mreduz);





{                        mTotGArec_Venc
                        +mTotGArec_Avenc
                        +mTotGJuros_APag
                        +mTotGChqDev_APag
                        +mTotGOutros_APag
                        +mTotGChqPre)-(mTotGNC_Pag+mTotGNC_Apag)
}
if fImprimeResumoCarteira(x) then
   x:=x+1;
Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
if Form_impres_Rcrec.mlin>60 then
   begin
   Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('Continua','.',80),mnormal);
   Form_impres_Rcrec.RDprint1.Novapagina;
   fModelo05Cab(0);
   Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
   end;
Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('Creditos em Aberto.....('
+FormatFloat('000000', mQtdGNC_APag)+')..: ',' ',42)+insere(FormatFloat(mcasas, mTotGNC_APag),' ',14),mreduz);
Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
if fImprimeResumoCarteira(x) then
   x:=x+1;
if Form_impres_Rcrec.mlin>60 then
   begin
   Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('Continua','.',80),mnormal);
   Form_impres_Rcrec.RDprint1.Novapagina;
   fModelo05Cab(0);
   Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
   end;
Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('Total Juros+multa Titulos em Aberto.'
,'.',34)+'        '+insere(FormatFloat(mcasas, mtotjg),' ',14),mreduz);

Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
if Form_impres_Rcrec.mlin>60 then
   begin
   Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('Continua','.',80),mnormal);
   Form_impres_Rcrec.RDprint1.Novapagina;
   fModelo05Cab(0);
   Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
   end;
Form_impres_Rcrec.Rdprint1.ImpF(Form_impres_Rcrec.mlin,01,insere2('Total em Aberto...............'
,'.',34)+'        '+insere(FormatFloat(mcasas,
(mTotGArec_Venc+mTotGArec_Avenc+
//mTotGChqDev_APag+mTotGJuros_APag+mTotGOutros_APag+mTotGChqPre)
mTotGChqDev_APag+mTotGJuros_APag+mTotGOutros_APag+mTotGChqPre+mtotjg)
-mTotGNC_APag),' ',14),mreduz);



if fImprimeResumoCarteira(x) then
   x:=x+1;

mtotgd:=0; mtotpd:=0;mtotad:=0;mtotdd:=0; mtotjd:=0; mtotdevd:=0;
mTotGArec_Venc:=0;mTotGArec_Avenc:=0;mTotGPag:=0;
mQtdGTit_Arec_AVenc  :=0;  mQtdTTit_Arec_Venc  :=0;
mTotGJuros_Pag :=0; mTotGJuros_APag:=0; mQtdGJuros_Pag :=0; mQtdGJuros_APag:=0;
mTotGOutros_Pag :=0;mTotGOutros_APag:=0;mQtdGOutros_Pag :=0;mQtdGOutros_APag:=0;
mTotGNC_Pag     :=0;mTotGNC_APag    :=0;mQtdGNC_Pag     :=0;mQtdGNC_APag    :=0;
mTotGChqPre     :=0;mQtdGChqPre     :=0; mQtdGTit_Arec_Venc:=0;
mqtdGJurRec:=0; mqtdTJurRec:=0;
mTotGJurRec:=0; mTotTJurRec:=0;
mqtdGDesc  :=0; mqtdTDesc  :=0;
mTotGDesc  :=0; mTotTDesc  :=0;
mqtdGDev   :=0; mqtdTDev   :=0;
mTotGDev   :=0;  mTotTDev  :=0;
mtotjd     :=0;
mtotjg     :=0;
mtotgrudescfin_aberto :=0;
mtotgrudescfin_conc   :=0;



mvalant:=Qr_CRecNOMGRU.Value;
Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
Form_impres_Rcrec.Rdprint1.Impf(Form_impres_Rcrec.mlin,01,insere('-','-',160),m20ccp);
Form_impres_Rcrec.Rdprint1.Novapagina;
Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
Form_impres_Rcrec.mlin:=0;
Form_impres_Rcrec.mpag:=0;
result:=true;
end;

procedure TFrm_RCRec.DTCHQPExit(Sender: TObject);
begin
if Trim(DTCHQP.Text)<>'/  /' then
   begin
   Try
      DTCHQP.Text:=FormatDateTime(fdt2,StrtoDate(DTCHQP.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      DTCHQP.SetFocus;
      end;
   end;

end;

procedure TFrm_RCRec.sbSalvarPadraoClick(Sender: TObject);
var
x: Integer;
begin

fDeletaPadroes(codusr,uppercase(copy(Screen.ActiveForm.Name,4,length(Screen.ActiveForm.Name)-3)),'');

// Screen.ac  '_RCREC');
{
if Trim(CODCLI.Text)<>'' then
   fGravaPadroes(codusr,'CODCLI'     ,'text'       ,'_RCREC',CODCLI.Text);
if Trim(CODVEN.Text)<>'' then
   fGravaPadroes(codusr,'CODVEN'     ,'text'       ,'_RCREC',CODVEN.Text);
if Trim(CODTEL.Text)<>'' then
   fGravaPadroes(codusr,'CODTEL'     ,'text'      ,'_RCREC',CODTEL.Text);
if Trim(CODSUP.Text)<>'' then
   fGravaPadroes(codusr,'CODSUP'     ,'text'      ,'_RCREC',CODSUP.Text);
if Trim(CODRED.Text)<>'' then
   fGravaPadroes(codusr,'CODRED'     ,'text'      ,'_RCREC',CODRED.Text);
if Trim(CODCV.Text)<>'' then
   fGravaPadroes(codusr,'CODCV'      ,'text'      ,'_RCREC',CODCV.Text);
if Trim(CODBCO.Text)<>'' then
   fGravaPadroes(codusr,'CODBCO'     ,'text'      ,'_RCREC',CODBCO.Text);
if Trim(CODLOC.Text)<>'' then
   fGravaPadroes(codusr,'CODLOC'     ,'text'      ,'_RCREC',CODLOC.Text);
if Trim(FILTRO.Text)<>'' then
   fGravaPadroes(codusr,'FILTRO'     ,'text'      ,'_RCREC',FILTRO.Text);
if Trim(CODSUP.Text)<>'' then
   fGravaPadroes(codusr,'CODSUP'     ,'text'      ,'_RCREC',CODSUP.Text);
}
fGravaPadroes(codusr,'CB_FORMAPAG'    ,'checked'   ,'_RCREC',iif(cb_formapag.Checked,'true','false'));
fGravaPadroes(codusr,'CBTD'           ,'itemindex' ,'_RCREC',IntTostr(CBTD.ItemIndex));
fGravaPadroes(codusr,'CB_TIPOREL'     ,'itemindex' ,'_RCREC',IntTostr(CB_TIPOREL.ItemIndex));
fGravaPadroes(codusr,'CBORDEM'        ,'itemindex' ,'_RCREC',IntTostr(CBORDEM.ItemIndex));
fGravaPadroes(codusr,'CB_SEMBORDA'    ,'checked'   ,'_RCREC',iif(CB_SEMBORDA.Checked,'true','false'));
fGravaPadroes(codusr,'CB_MATRICIAL'   ,'checked'   ,'_RCREC',iif(CB_MATRICIAL.Checked,'true','false'));
fGravaPadroes(codusr,'CB_VISREL'      ,'checked'   ,'_RCREC',iif(CB_VISREL.Checked,'true','false'));
fGravaPadroes(codusr,'CB_TPP'         ,'itemindex' ,'_RCREC',IntTostr(cb_tpp.ItemIndex));
fGravaPadroes(codusr,'CB_SEPARADO'    ,'itemindex' ,'_RCREC',IntTostr(cb_separado.ItemIndex));
fGravaPadroes(codusr,'CB_AVANCPAG'    ,'checked'   ,'_RCREC',iif(CB_AVANCPAG.Checked,'true','false'));
fGravaPadroes(codusr,'CB_INIBIR_DEVOL','checked'   ,'_RCREC',iif(CB_INIBIR_DEVOL.Checked,'true','false'));
fGravaPadroes(codusr,'CB_RAZSOCNOMFAN','checked'   ,'_RCREC',iif(cb_RazSocNomFan.Checked,'true','false'));

mcinst2:='';
for x:=0 to CLB_TIPODOC.Items.Count-1 do
   begin
   if CLB_TIPODOC.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLB_TIPODOC'          ,'itemindex' ,'_RCREC',mcinst2);

mcinst2:='';
for x:=0 to CLB_TIPOCOB.Items.Count-1 do
   begin
   if CLB_TIPOCOB.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLB_TIPOCOB'          ,'itemindex' ,'_RCREC',mcinst2);
mcinst2:='';
for x:=0 to clb_simples.Items.Count-1 do
   begin
   if clb_simples.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLB_SIMPLES'          ,'itemindex' ,'_RCREC',mcinst2);

mcinst2:='';
for x:=0 to clb_protesto.Items.Count-1 do
   begin
   if clb_protesto.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLB_PROTESTO'          ,'itemindex' ,'_RCREC',mcinst2);

fmensagem('Gravado!',0,['0'],0);

end;

procedure TFrm_RCRec.cb_tppExit(Sender: TObject);
begin
with cb_tpp do ItemIndex:=Items.IndexOf(cb_tpp.Text);

end;


function TFrm_RCrec.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin

if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      Form_impres_Rcrec.mlin:=Form_impres_Rcrec.mlin+1;
      Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,01,Centra(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x],' ',80),mneg);
      end;
   end;
result:=true;

end;

function FImprimeTitulo_Fortes(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin
if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      Frm_RCRec.filtros.Lines.Add(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x]);
      end;
   end;
result:=true;
end;


procedure TFrm_RCRec.clb_protestoClick(Sender: TObject);
begin
clb_protesto:=Valida_CheckList(clb_protesto);

end;

procedure TFrm_RCRec.RLGroup1AfterPrint(Sender: TObject);
begin
if CB_AVANCPAG.Checked then
   RLReport1.NewPage;
end;

function fCalcularBanco(pCodbco, pValor, pPagas, pVenc, pAvenc: Real): Boolean;
var
x: Integer;
mAchou: Boolean;
begin
mAchou:=false;
for x:=0 to Frm_RCRec.STG_TOTCAR.RowCount-1 do
   begin
   if ValFloat(Frm_RCRec.STG_TOTCAR.Cells[0,x])=pCodbco then
      begin
      Frm_RCRec.STG_TOTCAR.Cells[1,x]:=FloatToStr(
                                       ValFloat(Frm_RCRec.STG_TOTCAR.Cells[1,x])
                                       +pValor);

      Frm_RCRec.STG_TOTCAR.Cells[2,x]:=FloatToStr(
                                       ValFloat(Frm_RCRec.STG_TOTCAR.Cells[2,x])
                                       +pPagas);
      Frm_RCRec.STG_TOTCAR.Cells[3,x]:=FloatToStr(
                                       ValFloat(Frm_RCRec.STG_TOTCAR.Cells[3,x])
                                       +pVenc);

      Frm_RCRec.STG_TOTCAR.Cells[4,x]:=FloatToStr(
                                       ValFloat(Frm_RCRec.STG_TOTCAR.Cells[4,x])
                                       +pAvenc);

      mAchou:=true;
      end;
   end;
if not mAchou then
   begin
   x:=Frm_RCRec.STG_TOTCAR.RowCount;
   Frm_RCRec.STG_TOTCAR.Rows[x].Clear;
   Frm_RCRec.STG_TOTCAR.RowCount:=x+1;
   Frm_RCRec.STG_TOTCAR.Cells[0,x]:=FloatToStr(pCodbco);
   Frm_RCRec.STG_TOTCAR.Cells[1,x]:=FloatToStr(pValor);
   Frm_RCRec.STG_TOTCAR.Cells[2,x]:=FloatToStr(pPagas);
   Frm_RCRec.STG_TOTCAR.Cells[3,x]:=FloatToStr(pVenc);
   Frm_RCRec.STG_TOTCAR.Cells[4,x]:=FloatToStr(pAvenc);
   end;
result:=true;


end;

function TFrm_RcRec.fImprimeResumoCarteira(pItem: Integer): Boolean;
begin
if Frm_RCRec.STG_TOTCAR.RowCount>pItem then
   begin
   if ValFloat(Frm_RCRec.STG_TOTCAR.Cells[0,pitem])=0 then
      mcinst4:=insere2('Carteira','.',14)
   else
      mcinst4:=insere2('Banco: '+Frm_RCRec.STG_TOTCAR.Cells[0,pitem],'.',14);
   mcinst4:=mcinst4+insere(FormatFloat(mcasas, ValFloat(Frm_RCRec.STG_TOTCAR.Cells[2,pItem])),' ',14)
                   +insere(FormatFloat(mcasas, ValFloat(Frm_RCRec.STG_TOTCAR.Cells[3,pItem])),' ',14)
                   +insere(FormatFloat(mcasas, ValFloat(Frm_RCRec.STG_TOTCAR.Cells[4,pItem])),' ',14);
   Form_impres_Rcrec.RDprint1.ImpF(Form_impres_Rcrec.mlin,80,mcinst4,mreduz);
   result:=true;
   end
else
   result:=false;
end;
procedure TFrm_RCRec.CB_TIPORELClick(Sender: TObject);
begin
if CB_TIPOREL.ItemIndex=4 then
   begin
   lbl_datapgto.Visible:=true;
   DATAPGTO.Visible   :=true;
   cb_totaisLiquido.Visible:=true;
   end
else
   begin
   cb_totaisLiquido.visible:=false;
   cb_totaisLiquido.Checked:=false;

   lbl_datapgto.Visible:=false;
   DATAPGTO.Visible   :=false;
   end;



end;

procedure TFrm_RCRec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_RCRec.CLB_STATUSCLIClick(Sender: TObject);
begin
CLB_STATUSCLI:=Valida_CheckList(CLB_STATUSCLI);

end;

procedure TFrm_RCRec.CODASSEExit(Sender: TObject);
begin
CODASSE.Text:=fdeixanum2(CODASSE.Text);
if Trim(CODASSE.Text)<>'' then
   begin
   if not flcadassessor(1,0,CODASSE.Text) then
      begin
      fmensagem('Assessor não Cadastrado!',0,['0'],0);
      CODASSE.SetFocus;
      end
   else
      begin
      lbx_codasse.Items.Add(FormatFloat('0000000',StrToFloat(DM2.Tb_AssessorCACODASS.ASSTRING))
                                    +' - '+DM2.Tb_AssessorCARAZAO.Value);

      CODASSE.text := '';
      if CODASSE.Enabled then
         CODASSE.SetFocus;
      end;
   end;

end;

procedure TFrm_RCRec.CODASSEKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODASSE.Text:=fChamaAssessor(0,'frm_proabc',Key);
   if trim(CODASSE.Text)<>'' then
      CODASSEExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_RCRec.lbx_codasseKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codasse.ItemIndex>=0 then
      lbx_codasse.Items.Delete(lbx_codasse.ItemIndex);

end;

procedure TFrm_RCRec.CLB_STATUSClick(Sender: TObject);
begin
CLB_STATUS:=Valida_CheckList(CLB_STATUS);

end;

procedure TFrm_RCRec.lotrem_iniExit(Sender: TObject);
begin
lotrem_ini.Text:=fdeixanum2(lotrem_ini.Text);
end;

procedure TFrm_RCRec.lotrem_fimExit(Sender: TObject);
begin
lotrem_fim.Text:=fdeixanum2(lotrem_fim.Text);
end;

procedure TFrm_RCRec.CODBCOExit(Sender: TObject);
begin

CODBCO.Text:=fdeixanum2(CODBCO.Text);
if Trim(CODBCO.Text)<>'' then
   begin
   if not flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',CODBCO.Text) then
      begin
      fmensagem('Banco não cadastrada!',0,['0'],0);
      CODBCO.SetFocus;
      end
   else
      begin
      lbx_codbco.Items.Add(FormatFloat('0000000',StrToFloat(CODBCO.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODBCO.text := '';
      CODCOB.SetFocus;
      end;
   end;



end;

procedure TFrm_RCRec.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_RCRac',Key);
   CODBCOExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_RCRec.lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);

end;

procedure TFrm_RCRec.FormActivate(Sender: TObject);
begin
PageControl1.ActivePageIndex:=0;
if log_coddep_cx=''  then
   begin
   CODDEP.Enabled    :=true;
   lbx_coddep.Enabled:=true;
   OMITIR_DEP.Enabled:=true;
   end
else
   begin
   CODDEP.Enabled    :=false;
   lbx_coddep.Enabled:=false;
   OMITIR_DEP.Enabled:=false;
   CODDEP.Text       :=log_coddep_cx;
   CODDEPExit(self);
   end;


end;

procedure TFrm_RCRec.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
{Ano da Emissão
Ano do Vencimento
Banco
Cidade
Cliente
Convenio
Data de Emissão
Data de Pagamento
Data de Vencimento
Estado
Forma de Pagamento
Mês da Emissão
Mês do Vencimento
Rede de Clientes
Sem Separar
Supervisor
Televendas
Tipo de Cobrança
Tipo de Pedido
Tipo do Documento
Vendedor
NF de Origem}
if cb_separado.ItemIndex<>4 then
  begin
  rl_nomgrupo.Caption:=cb_separado.Text+'..: '+Qr_CRecNOMGRU.AsString;
  RLVALGRUPO.DataField:='CRAZAO';
  LBLGRUPO.Caption    :='CLIENTE';
  lbl_endereco.Caption:= ' ' ;

  end
else
  begin
  lbl_endereco.Caption:= ' ' ;

  if cb_separado.ItemIndex=14 then
    begin
    rl_nomgrupo.Caption:='Sem Separar';
    end
  else
    begin
    rl_nomgrupo.Caption:='Cliente..: '+Qr_CRecCRCODCLI.AsString+' - '+Qr_CRecCRAZAO.AsString+iif(trim(Qr_CRecCFONE01.AsString)<>'',' / Telefone..: '+Qr_CRecCFONE01.AsString,'');
    RLVALGRUPO.DataField:='VNOME';
    LBLGRUPO.Caption    :='VENDEDOR';

  lbl_endereco.Caption:='Endereco: '+Qr_CRecender.AsString+' Bairro: '+Qr_CRecCBAIRRO.AsString
  +' Cidade '+Qr_CRecCCIDADE.AsString+'-'+Qr_CRecCUF.AsString+' CEP: '+qr_crecCCEP.asstring;
  if trim(Qr_CReccemail.AsString)<>'' then
     lbl_endereco.Caption:=lbl_endereco.Caption+' E-Mail: '+Qr_CReccemail.AsString;


    end;
  end;
end;

procedure TFrm_RCRec.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if Qr_CRecCRDUP.AsInteger<>5 then
  begin
  mTotgDup  :=mTotgDup+Qr_CRecCRVALOR.AsFloat;
  mTotGPag  :=mTotGPag+Qr_CRecCRVALPAG.AsFloat;
  mTotGArec_Avenc :=mTotGArec_Avenc+Qr_CRecvalapagar.AsFloat;
  mTotGJuros:=mTotGJuros+Qr_CRecvalorjuros.AsFloat;

  mtottit   :=mtottit+Qr_CRecCRVALOR.AsFloat;
  mTotTPag  :=mTotTPag+Qr_CRecCRVALPAG.AsFloat;;
  mTotTArec_Avenc :=mTotTArec_Avenc+Qr_CRecvalapagar.AsFloat;
  mTotTJuros:=mTotTJuros+Qr_CRecvalorjuros.AsFloat;
  mTotGeral_Acu:=mTotGeral_Acu+Qr_CRecCRVALOR.AsFloat;
  end
else if Qr_CRecCRDUP.AsInteger=5 then
  begin
  mTotgDup  :=mTotgDup-Qr_CRecCRVALOR.AsFloat;
  mTotGPag  :=mTotGPag-Qr_CRecCRVALPAG.AsFloat;
  mTotGArec_Avenc :=mTotGArec_Avenc-Qr_CRecvalapagar.AsFloat;
  mTotGJuros:=mTotGJuros-Qr_CRecvalorjuros.AsFloat;

  mtottit   :=mtottit-Qr_CRecCRVALOR.AsFloat;
  mTotTPag  :=mTotTPag-Qr_CRecCRVALPAG.AsFloat;;
  mTotTArec_Avenc :=mTotTArec_Avenc-Qr_CRecvalapagar.AsFloat;
  mTotTJuros:=mTotTJuros-Qr_CRecvalorjuros.AsFloat;
  mTotGeral_Acu:=mTotGeral_Acu-Qr_CRecCRVALOR.AsFloat;
  end;
end;

procedure TFrm_RCRec.RLBand11BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
TotTit.Caption:=FormatFloat(mcasas,mtottit);
TotJur.Caption:=FormatFloat(mcasas,mTotTJuros);
TotEnt.Caption:=FormatFloat(mcasas,mTotTPag);
TotAPag.Caption:=FormatFloat(mcasas,mTotTArec_Avenc);
TotTitGeral.Caption:=FormatFloat(mcasas,mTotGeral_Acu);
TotGAberto.Caption:=FormatFloat(mcasas,mTotGArec_Avenc);
end;

procedure TFrm_RCRec.RLBand11AfterPrint(Sender: TObject);
begin
mtottit:=0;
mTotTJuros:=0;
mTotTPag:=0;
mTotTArec_Avenc:=0;
end;

procedure TFrm_RCRec.RLBand12BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_banner.Caption:=pBanner_Intersys;
end;

procedure TFrm_RCRec.rlmod06BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mTotgDup  :=0;
mTotGPag  :=0;
mTotGArec_Avenc :=0;
mTotGJuros:=0;
mTotGeral_Acu:=0;
end;

procedure TFrm_RCRec.edt_codusr_cxExit(Sender: TObject);
begin
edt_codusr_cx.Text:=fdeixanum2(edt_codusr_cx.Text);
if Trim(edt_codusr_cx.Text)<>'' then
   begin
   if not flqr1('NOMUSR','','CADUSR','N','CODUSR',edt_codusr_cx.Text) then
      begin
      fmensagem('Usuario não cadastrado!',0,['0'],0);
      edt_codusr_cx.SetFocus;
      end
   else
      begin
      lbx_codusr_cx.Items.Add(FormatFloat('0000000',StrToFloat(edt_codusr_cx.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      edt_codusr_cx.text := '';
      edt_codusr_cx.SetFocus;
      end;
   end;

end;

procedure TFrm_RCRec.edt_codusr_cxKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codusr_cx.Text:=fChamaUsr(0,'frm_RCRec',Key);
   edt_codusr_cxExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_RCRec.lbx_codusr_cxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codusr_cx.ItemIndex>=0 then
      lbx_codusr_cx.Items.Delete(lbx_codusr_cx.ItemIndex);

end;

procedure TFrm_RCRec.codccExit(Sender: TObject);
begin
if Trim(CODCC.Text)<>'' then
  begin
  if flqr1('CCNAT,CCNOME','CC','CADCCU','C','CCCODCCU',CODCC.Text) then
    begin
    lbx_codcc.Items.Add(CODCC.TEXT
                                  +'-'+DM1.Query1.Fields[1].AsString+'-'+DM1.Query1.Fields[0].AsString);
    CODCC.text := '';
    CODCC.SetFocus;
    end
  else
    begin
    fmensagem('Centro de Custo não Cadastrado!',0,['0'],0);
    CODCC.text := '';
    CODCC.SetFocus;
    end;
  end;
end;

procedure TFrm_RCRec.sbn_codccClick(Sender: TObject);
begin
codcc.Text:=fChamaCCU(0,'frm_rcprel','');
if trim(codcc.Text)<>'' then
   codccExit(self);
end;

procedure TFrm_RCRec.sbc_coddepClick(Sender: TObject);
begin
CODDEP.Text :=fChamaDeptoCX(0,'frm_RcPReal','');
if trim(CODDEP.Text)<>'' then
   CODDEPExit(Self);
end;

procedure TFrm_RCRec.coddepExit(Sender: TObject);
begin
if Trim(CODDEP.Text)<>'' then
  begin
  if flqr1('DNOME','D','CADDEP','C','DCODDEP',CODDEP.Text) then
    begin
    lbx_coddep.Items.Add(CODDEP.TEXT
                                  +'-'+DM1.Query1.Fields[0].AsString);
    CODDEP.text := '';
      if (CODDEP.Visible=true) and (CODDEP.Enabled=true) then
         CODDEP.SetFocus;
    end
  else
    begin
    fmensagem('Departamento não Cadastrado!',0,['0'],0);
    CODDEP.text := '';
      if (CODDEP.Visible=true) and (CODDEP.Enabled=true) then
         CODDEP.SetFocus;
    end;
  end;
end;

procedure TFrm_RCRec.lbx_codccKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codcc.ItemIndex>=0 then
      lbx_codcc.Items.Delete(lbx_codcc.ItemIndex);

end;

procedure TFrm_RCRec.lbx_coddepKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_coddep.ItemIndex>=0 then
      lbx_coddep.Items.Delete(lbx_coddep.ItemIndex);

end;

procedure TFrm_RCRec.FormShow(Sender: TObject);
begin
if log_codven=0 then
   begin
   CODVEN.Enabled    :=true;
   lbx_codven.Enabled:=True;
   OMITIR_VEN.Enabled:=True;
   end
else
   begin
   CODVEN.Enabled    :=false;
   lbx_codven.Enabled:=false;
   OMITIR_VEN.Enabled:=false;
   CODVEN.Text       :=FloatToStr(log_codven);
   CODVENExit(self);
   end;

end;

procedure TFrm_RCRec.CB_TIPORELChange(Sender: TObject);
begin
{if CB_TIPOREL.ItemIndex=5 then
  begin
  cb_separado.Enabled:=False;
  cb_separado.ItemIndex:=4;
  end
else
  begin
  cb_separado.Enabled:=True;
  end;                      }
end;

procedure TFrm_RCRec.EDT_CODREGExit(Sender: TObject);
begin

edt_codreg.Text:=fdeixanum2(edt_codreg.Text);
if Trim(edt_codreg.Text)<>'' then
   begin
   if flqr1('CR_NOMREG','CR_','CADREGIAO','N','CR_CODREG',edt_codreg.Text) then
      begin
      lbx_codreg.Items.Add(FormatFloat('0000000',StrToFloat(edt_codreg.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codreg.ItemIndex:=lbx_codreg.Items.Count-1;
      edt_codreg.text := '';
      edt_codreg.SetFocus;
      end
   else
      begin
      fmensagem('Região Não Cadastrado!',0,['0'],0);
      edt_codreg.text := '';
      edt_codreg.SetFocus;
      end;
   end;



end;

procedure TFrm_RCRec.EDT_CODREGKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codreg.Text:=fdeixanum(fChamaRegiao(0,'frm_rped',key));
   edt_codregExit(self);
   key:=#0;
   end;


end;

procedure TFrm_RCRec.lbx_CODREGKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_CODREG.ItemIndex>=0 then
      lbx_CODREG.Items.Delete(lbx_CODREG.ItemIndex);

end;

procedure TFrm_RCRec.fGerarPlanilha;
var
mNomeSaida: String;
mPlanilha: TStringList;
mlinha_dados: string;
x_tent: Integer;
begin
if (Qr_CRec.Active=false) then
   bbAplicarClick(self);
if Qr_CRec.IsEmpty=true then
   begin
   MessageDlg('Não ha registros na condição solicitada!',mtWarning,[mbOk],0);
   exit;
   end;
SaveDialog1.filename:=mpastaaplicacao+'CONTAS.CSV';
if SaveDialog1.Execute then
   begin
   mNomeSaida:=fRetiraExtensao(SaveDialog1.FileName)+'.CSV';

   mPlanilha:=TStringList.create;
   mlinha_dados:='CNPJ_empresa_credora';
   mlinha_dados:=mLinha_dados+';Razao_social_empresa_credora';
   mlinha_dados:=mLinha_dados+';CNPJCPF_CLIENTE';
   mlinha_dados:=mLinha_dados+';Nome_Cliente';
   mlinha_dados:=mLinha_dados+';Endereco_Cobranca';
   mlinha_dados:=mLinha_dados+';Bairro';
   mlinha_dados:=mLinha_dados+';Cidade';
   mlinha_dados:=mLinha_dados+';UF';
   mlinha_dados:=mLinha_dados+';CEP';
   mlinha_dados:=mLinha_dados+';TELEFONE';
   mlinha_dados:=mLinha_dados+';ESPECIE DO TITULO';
   mlinha_dados:=mLinha_dados+';NUMERO DO TITULO';
   mlinha_dados:=mLinha_dados+';PARCELA';
   mlinha_dados:=mLinha_dados+';DATA EMISSAO';
   mlinha_dados:=mLinha_dados+';DATA VENCIMENTO';
   mlinha_dados:=mLinha_dados+';VALOR EM ABERTO';
   mlinha_dados:=mLinha_dados+';VALOR PROTESTO';
   mlinha_dados:=mLinha_dados+';OBSERVACOES';
   mlinha_dados:=mLinha_dados+';CODIGO CLIENTE';
   mlinha_dados:=mLinha_dados+';NOME DO REPRESENTANTE';
   mlinha_dados:=mLinha_dados+';CNPJCPF_CLIENTE';
   mlinha_dados:=mLinha_dados+';FONE REPRESENTANTE';
   mPlanilha.add(mlinha_dados);
   Qr_CRec.First;
   While not Qr_CRec.eof do
      begin
      mlinha_dados:=DM1.Tb_Empcnpj_masc.AsString;
      mlinha_dados:=mLinha_dados+';'+DM1.Tb_EmpRAZAO.AsString;
      if Qr_CRecCCNPJ.AsFloat>0 then
         mlinha_dados:=mLinha_dados+';'+MaskCPFCNPJ(Qr_CRecCCNPJ.AsString)
      else
         mlinha_dados:=mLinha_dados+';'+MaskCPFCNPJ(Qr_CRecCCPF.AsString);
      mlinha_dados:=mLinha_dados+';'+Qr_CRecCRAZAO.AsString;
      mlinha_dados:=mLinha_dados+';'+Qr_CRecender.AsString;
      mlinha_dados:=mLinha_dados+';'+Qr_CRecCBAIRRO.AsString;
      mlinha_dados:=mLinha_dados+';'+qr_creccCidade.AsString;
      mlinha_dados:=mLinha_dados+';'+qr_crecCUF.AsString;
      mlinha_dados:=mLinha_dados+';'+qr_crecCCEP.AsString;
      mlinha_dados:=mLinha_dados+';'+Qr_CRecCFONE01.AsString;
      mlinha_dados:=mLinha_dados+';DM';
      mlinha_dados:=mLinha_dados+';'+Qr_CRecnumdoc.AsString;
      mlinha_dados:=mLinha_dados+';'+Qr_CRecCRNUMPARC.AsString+'/'+Qr_CRecCRQTDPARC.AsString;
      mlinha_dados:=mLinha_dados+';'+FormatDateTime(fdt2, Qr_CRecCRDTEMIS.AsDateTime);
      mlinha_dados:=mLinha_dados+';'+FormatDateTime(fdt2, Qr_CRecCRDTVCTO.AsDateTime);
      mlinha_dados:=mLinha_dados+';'+FormatFloat(mcasas, Qr_CRecvalapagar.AsFloat);
      mlinha_dados:=mLinha_dados+';'+FormatFloat(mcasas, Qr_CRecCRMULTA.AsFloat);
      mlinha_dados:=mLinha_dados+';';
      mlinha_dados:=mLinha_dados+';'+Qr_CRecCRCODCLI.AsString;
      mlinha_dados:=mLinha_dados+';'+Qr_CRecVNOME.AsString;
      mlinha_dados:=mLinha_dados+';'+MaskCPFCNPJ( Qr_CRecVCPF.AsString);
      mPlanilha.add(mlinha_dados);
      Qr_CRec.Next;
      end;
   While x_tent<100 do
      begin
      try
         mPlanilha.SaveToFile(mNomeSaida+iif(x_tent=0,'','('+inttostr(x_tent)+')'));
         break;
      except
         x_tent:=x_tent+1;
         end; 
      end;
   if x_tent>99 then
      MessageDlg('Nao foi possivel salvar o arquivo como '+mNomeSaida,mtError,[mbOk],0)
   else
      MessageDlg('Arquivo salvo como '+ mNomeSaida+iif(x_tent=0,'','('+inttostr(x_tent)+')'),mtInformation,[mbOk],0);
   FreeAndNil(mPlanilha);
   end;
end;

procedure TFrm_RCRec.sbn_gerarplanilhaClick(Sender: TObject);
begin
fGerarPlanilhaMod02;

end;


procedure TFrm_RCRec.fGerarPlanilhaMod02;
var
mNomeSaida: String;
mPlanilha: TStringList;
mlinha_dados: string;
x_tent: Integer;
begin
if (Qr_CRec.Active=false) then
   bbAplicarClick(self);
if Qr_CRec.IsEmpty=true then
   begin
   MessageDlg('Não ha registros na condição solicitada!',mtWarning,[mbOk],0);
   exit;
   end;
SaveDialog1.filename:=mpastaaplicacao+'CONTAS.CSV';
if SaveDialog1.Execute then
   begin
   mNomeSaida:=fRetiraExtensao(SaveDialog1.FileName)+'.CSV';

   mPlanilha:=TStringList.create;
   mlinha_dados:='Numero';
   mlinha_dados:=mLinha_dados+';Razao Social';
   mlinha_dados:=mLinha_dados+';Data de Emissao';
   mlinha_dados:=mLinha_dados+';Valor Titulo';
   mlinha_dados:=mLinha_dados+';Valor Pago';
   mlinha_dados:=mLinha_dados+';Restante';
   mlinha_dados:=mLinha_dados+';Data de Vencimento';
   mlinha_dados:=mLinha_dados+';Valor Desconto';
   mlinha_dados:=mLinha_dados+';Nf Acumuladas';
   mlinha_dados:=mLinha_dados+';Tp.Doc';
   mlinha_dados:=mLinha_dados+';Número Pedido';
   mlinha_dados:=mLinha_dados+';Banco';
   mlinha_dados:=mLinha_dados+';Código Vend';
   mPlanilha.add(mlinha_dados);
   Qr_CRec.First;
   While not Qr_CRec.eof do
      begin
      mlinha_dados:=Qr_CRecnumero_calc.AsString;
      mlinha_dados:=mLinha_dados+';'+Qr_CRecCRCODCLI.AsString+'-'+Trim(Qr_CRecCRAZAO.Value);
      mlinha_dados:=mLinha_dados+';'+FormatDateTime(fdt3,Qr_CRecCRDTEMIS.Value);
      mlinha_dados:=mLinha_dados+';'+FormatFloat(mcasas,Qr_CRecCRVALOR.Value);
      mlinha_dados:=mLinha_dados+';'+FormatFloat(mcasas,Qr_CRecCRVALPAG.Value);
      mlinha_dados:=mLinha_dados+';'+FormatFloat(mcasas,(Qr_CRecCRVALOR.Value - (Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value) ) );
      mlinha_dados:=mLinha_dados+';'+FormatDateTime(fdt3,Qr_CRecCRDTVCTO.Value);
      mlinha_dados:=mLinha_dados+';'+FormatFloat(mcasas,Qr_CRecCRDESC.Value);
      mlinha_dados:=mLinha_dados+';'+Qr_CRecCRNFACUM.AsString;
      mlinha_dados:=mLinha_dados+';'+ptpdoc[Qr_CRecCRDUP.AsInteger];
      mlinha_dados:=mLinha_dados+';'+Qr_CRecCRNPED.AsString;
      if Qr_CRecCRCODBCO.AsFloat=0 then
         mlinha_dados:=mLinha_dados+';'+' Car'
      else
         mlinha_dados:=mLinha_dados+';'+Formatfloat('000',Qr_CRecCRCODBCO.Value);

      mlinha_dados:=mLinha_dados+';'+FormatFloat('00000', Qr_CRecVCODVEN.Value);
      mPlanilha.add(mlinha_dados);
      Qr_CRec.Next;
      end;
   While x_tent<100 do
      begin
      try
         mPlanilha.SaveToFile(mNomeSaida+iif(x_tent=0,'','('+inttostr(x_tent)+')'));
         break;
      except
         x_tent:=x_tent+1;
         end; 
      end;
   if x_tent>99 then
      MessageDlg('Nao foi possivel salvar o arquivo como '+mNomeSaida,mtError,[mbOk],0)
   else
      MessageDlg('Arquivo salvo como '+ mNomeSaida+iif(x_tent=0,'','('+inttostr(x_tent)+')'),mtInformation,[mbOk],0);
   FreeAndNil(mPlanilha);
   end;
end;



procedure TFrm_RCRec.bb_exportarClick(Sender: TObject);
var
Campos: Array of string;

begin
SetLength(Campos,08);
Campos[00]:= Qr_CRecCRAZAO.DisplayLabel;
Campos[01]:=Qr_CRecnumero_calc.DisplayLabel;
Campos[02]:=Qr_CRectipdup.DisplayLabel;
Campos[03]:=Qr_CRecCRNPED.DisplayLabel;
Campos[04]:=Qr_CRecdtemis.DisplayLabel;
Campos[05]:=Qr_CRecdtvcto.DisplayLabel;
Campos[06]:=Qr_CRecCRVALOR.DisplayLabel;
Campos[07]:=Qr_CRecvalorjuros.DisplayLabel;


fGerarPlanilhaExcel(campos,Src_CRec);

end;

end.

