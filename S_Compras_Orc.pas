unit S_Compras_Orc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, jpeg, ExtCtrls, ImgList, ComCtrls, Mask,
  StdCtrls, DB, DBClient, Grids, DBGrids, FMTBcd, SqlExpr, Provider, S_Compras_GravarPedido,
  DBCtrls, S_Compras_Orc_ImpXml, RxDBComb, ToolEdit, DBTables, CurrEdit,
  RxMemDS,s_lerarq_geral,ADODB,S_Pcus, Func2;

type
  TFrm_Compras_Orc = class(TForm)
    Panel_butons: TPanel;
    Image_buttons: TImage;
    sbnIncluir: TSpeedButton;
    sbnLocalizar: TSpeedButton;
    sbnAlterar: TSpeedButton;
    sbnGravar: TSpeedButton;
    sbnCancelar: TSpeedButton;
    sbnExcluir: TSpeedButton;
    bbSair: TSpeedButton;
    Panel_direito: TPanel;
    pcCabecalho: TPageControl;
    tsCabecalho: TTabSheet;
    tsOutros: TTabSheet;
    edt_chave: TEdit;
    Edit1: TEdit;
    Edit3: TEdit;
    edt_codfor: TEdit;
    edt_nomfor: TEdit;
    Edit5: TEdit;
    edt_datap: TDateEdit;
    Edit6: TEdit;
    edt_codCondPag: TEdit;
    edt_nomcond: TEdit;
    Edit16: TEdit;
    Memo_ObsPed: TMemo;
    pcProdServ: TPageControl;
    tsProdutos: TTabSheet;
    Panel1: TPanel;
    Edit2: TEdit;
    edt_TotProdServ: TEdit;
    Edit19: TEdit;
    edt_descItens: TEdit;
    Edit21: TEdit;
    Edit24: TEdit;
    edt_vlricmsst: TEdit;
    Edit28: TEdit;
    edt_percfrete: TEdit;
    edt_valfre: TEdit;
    Edit31: TEdit;
    edt_TotDesGer: TEdit;
    edt_bcicmsst: TEdit;
    Edit36: TEdit;
    edt_bcicms: TEdit;
    edt_vlricms: TEdit;
    Edit39: TEdit;
    Edit40: TEdit;
    Edit41: TEdit;
    edt_totliq: TEdit;
    Edit18: TEdit;
    edt_totPromo: TEdit;
    Edit22: TEdit;
    edt_Imp_Imp_Valor: TEdit;
    edt_perDesGer: TEdit;
    DBGrid_itens: TDBGrid;
    Src_Pfor02_orc: TDataSource;
    src_pfor01_parc: TDataSource;
    edt_pDesc01: TEdit;
    edt_vlrdes_ped1_perc: TEdit;
    Edit4: TEdit;
    edt_desc_valor: TEdit;
    Panel_rod_Itens: TPanel;
    Label1: TLabel;
    bbExcluir_item: TBitBtn;
    StaticText1: TStaticText;
    DBMemo1: TDBMemo;
    Edit12: TEdit;
    edt_codfp: TEdit;
    edt_nomfp: TEdit;
    TabSheet1: TTabSheet;
    Panel_outros: TPanel;
    StaticText5: TStaticText;
    DBE_ICMS_PRED: TDBEdit;
    StaticText6: TStaticText;
    DBEdit1: TDBEdit;
    DBEdit10: TDBEdit;
    rxdbcb_modbcst: TRxDBComboBox;
    StaticText8: TStaticText;
    DBE_ST_IVA: TDBEdit;
    StaticText9: TStaticText;
    DBE_PRECO_MAXCONS: TDBEdit;
    StaticText10: TStaticText;
    DBE_ST_REDUT: TDBEdit;
    StaticText13: TStaticText;
    DBEdit2: TDBEdit;
    StaticText11: TStaticText;
    DBE_ST_ICMSDEB: TDBEdit;
    StaticText12: TStaticText;
    DBE_ST_ICMSCRED: TDBEdit;
    StaticText14: TStaticText;
    DBEdit3: TDBEdit;
    StaticText15: TStaticText;
    DBE_ICMSSN_Valor: TDBEdit;
    StaticText17: TStaticText;
    DBE_CST_IPI: TDBEdit;
    StaticText18: TStaticText;
    DBE_IPI_VALOR: TDBEdit;
    StaticText19: TStaticText;
    DBE_PIS_CST: TDBEdit;
    StaticText20: TStaticText;
    StaticText21: TStaticText;
    DBE_PIS_VALOR: TDBEdit;
    StaticText22: TStaticText;
    DBE_COFINS_CST: TDBEdit;
    StaticText23: TStaticText;
    DBE_COFINS_PERC: TDBEdit;
    StaticText24: TStaticText;
    DBE_COFINS_VALOR: TDBEdit;
    sbnMaisDados: TSpeedButton;
    Edit7: TEdit;
    edt_bcPIS: TEdit;
    edt_vlrPIS: TEdit;
    Edit8: TEdit;
    edt_bcCOFINS: TEdit;
    edt_vlrCOFINS: TEdit;
    sbnImpOutro: TSpeedButton;
    sbnImpXML: TSpeedButton;
    sbnImprimir: TSpeedButton;
    tb_pfor02_orc: TQuery;
    tb_pfor01_parc: TQuery;
    tb_pfor01_parcPF1VCODEMP: TFloatField;
    tb_pfor01_parcPF1VCHAVE: TFloatField;
    tb_pfor01_parcPF1VLOTSEQ: TFloatField;
    tb_pfor01_parcPF1VDATAV: TDateTimeField;
    tb_pfor01_parcPF1VVALOR: TFloatField;
    tb_pfor01_parcPF1VCODIGO: TFloatField;
    tb_pfor01_parcPF1VPRAZO: TFloatField;
    tb_pfor01_parcPF1VCODFP: TFloatField;
    tb_pfor01_parcPF1VNOMFP: TStringField;
    tb_pfor01_parcPF1VQTDPARC: TFloatField;
    tb_pfor01_parcPF1VBAIXA: TStringField;
    tb_pfor01_parcPF1VDESCF: TFloatField;
    tb_pfor01_parcPF1VDTDESCF: TDateTimeField;
    u_pfor02_orc: TUpdateSQL;
    U_pfor01_parc: TUpdateSQL;
    cb_mod_las: TComboBox;
    gb_vencimentos: TGroupBox;
    DBGrid_lotes: TDBGrid;
    tsFPgto: TTabSheet;
    Tb_PF2_Lotes: TQuery;
    U_Pf2_Lotes: TUpdateSQL;
    Src_PF2_Lotes: TDataSource;
    Tb_PF2_LotesPF2L_CODEMP: TFloatField;
    Tb_PF2_LotesPF2L_CODPRO: TFloatField;
    Tb_PF2_LotesPF2L_LOTSEQ: TFloatField;
    Tb_PF2_LotesPF2L_CHAVE: TFloatField;
    Tb_PF2_LotesPF2L_ITEM: TFloatField;
    Tb_PF2_LotesPF2L_LOTE: TStringField;
    Tb_PF2_LotesPF2L_DTFAB: TDateTimeField;
    Tb_PF2_LotesPF2L_DTVCTO: TDateTimeField;
    Tb_PF2_LotesPF2L_QTD: TFloatField;
    edt_Imp_Imp_Aliq: TEdit;
    bbConfEntrada: TSpeedButton;
    Edit10: TEdit;
    edt_codtra: TEdit;
    edt_nomtra: TEdit;
    RGFRETEPC: TComboBox;
    Edit15: TEdit;
    Edit17: TEdit;
    edt_siv_frete: TEdit;
    Edit29: TEdit;
    CB_CASASD: TComboBox;
    Edit30: TEdit;
    CB_TIPO: TComboBox;
    Edit32: TEdit;
    edt_datent: TDateEdit;
    Edit34: TEdit;
    edt_numnf: TEdit;
    edt_nfe_chave: TMaskEdit;
    Edit37: TEdit;
    Edit35: TEdit;
    edt_serie: TEdit;
    Edit38: TEdit;
    CB_MODELO: TComboBox;
    Edit42: TEdit;
    edt_datanf: TDateEdit;
    edt_siv_dare: TCurrencyEdit;
    Edit43: TEdit;
    Edit44: TEdit;
    edt_valseg: TEdit;
    Edit46: TEdit;
    edt_valseg_icms_aliq: TEdit;
    Edit48: TEdit;
    edt_valseg_icms_valor: TEdit;
    GroupBox1: TGroupBox;
    DBGrid_fpgto: TDBGrid;
    Panel3: TPanel;
    lbl_restamFP: TLabel;
    bbExluir_FP: TBitBtn;
    Edit20: TEdit;
    edt_outdesp: TEdit;
    Edit50: TEdit;
    edt_outdesp_icms_aliq: TEdit;
    Edit52: TEdit;
    edt_outdesp_icms_valor: TEdit;
    Edit33: TEdit;
    edt_totipi: TEdit;
    Edit54: TEdit;
    edt_PIPIFRETE: TEdit;
    Edit56: TEdit;
    edt_IPIFRETE: TEdit;
    Edit26: TEdit;
    edt_valfre_icms_aliq: TEdit;
    Edit58: TEdit;
    edt_valfre_icms_valor: TEdit;
    Edit60: TEdit;
    Edit9: TEdit;
    Edit66: TEdit;
    Edit67: TEdit;
    Edit68: TEdit;
    Edit69: TEdit;
    Edit70: TEdit;
    Edit71: TEdit;
    Edit72: TEdit;
    Edit73: TEdit;
    Edit11: TEdit;
    edt_qtditem: TEdit;
    Edit61: TEdit;
    edt_qtdund: TEdit;
    Edit45: TEdit;
    cb_gravardp: TCheckBox;
    edt_numdup: TEdit;
    Label65: TLabel;
    edt_desd: TEdit;
    Label76: TLabel;
    Label88: TLabel;
    txt_MODO: TEdit;
    Label89: TLabel;
    txt_Situacao: TEdit;
    tb_pfor02_orcPF2CODEMP: TFloatField;
    tb_pfor02_orcPF2CHAVE: TFloatField;
    tb_pfor02_orcPF2LOTSEQ: TFloatField;
    tb_pfor02_orcPF2ITEM: TFloatField;
    tb_pfor02_orcPF2QTDP: TFloatField;
    tb_pfor02_orcPF2DESC_PERC01: TFloatField;
    tb_pfor02_orcPF2DESC_PERC02: TFloatField;
    tb_pfor02_orcPF2CODPRO_INT: TFloatField;
    tb_pfor02_orcPF2DESC_PERC03: TFloatField;
    tb_pfor02_orcPF2PU_INT: TFloatField;
    tb_pfor02_orcPF2SIT: TStringField;
    tb_pfor02_orcPF2CSOSN: TStringField;
    tb_pfor02_orcPF2CFO: TFloatField;
    tb_pfor02_orcPF2DESC_COMPL: TMemoField;
    tb_pfor02_orcVALOR_TOTAL: TFloatField;
    tb_pfor02_orcPF2CSOSN_ORI: TFloatField;
    tb_pfor02_orcPF2ICMS_PRED: TFloatField;
    tb_pfor02_orcPF2MODBCST: TFloatField;
    tb_pfor02_orcPF2ST_IVA: TFloatField;
    tb_pfor02_orcPF2ST_PERCRED: TFloatField;
    tb_pfor02_orcPF2ST_ICMSCRED: TFloatField;
    tb_pfor02_orcPF2ST_ICMSDEB: TFloatField;
    tb_pfor02_orcPF2PRECO_MAXCONS: TFloatField;
    tb_pfor02_orcPF2IPI_PERC: TFloatField;
    tb_pfor02_orcPF2ICMS_PERC: TFloatField;
    tb_pfor02_orcPF2COFINS_PERC: TFloatField;
    tb_pfor02_orcPF2PIS_PERC: TFloatField;
    tb_pfor02_orcPF2ICMSSN_PERC: TFloatField;
    tb_pfor02_orcPF2IPI_CST: TStringField;
    tb_pfor02_orcPF2PIS_CST: TStringField;
    tb_pfor02_orcPF2COFINS_CST: TStringField;
    tb_pfor02_orcPF2IPI_VALOR: TFloatField;
    tb_pfor02_orcPF2ST_BASE: TFloatField;
    tb_pfor02_orcPF2ST_ICMS: TFloatField;
    tb_pfor02_orcPF2ICMS_BASE: TFloatField;
    tb_pfor02_orcPF2ICMS_VALOR: TFloatField;
    tb_pfor02_orcPF2ICMS_RED_VLR: TFloatField;
    tb_pfor02_orcPF2DESC_CABEC: TFloatField;
    tb_pfor02_orcPF2DESC_TOTDES: TFloatField;
    tb_pfor02_orcPF2PIS_VALOR: TFloatField;
    tb_pfor02_orcPF2TOTLIQ: TFloatField;
    tb_pfor02_orcPF2ICMSSN_VALOR: TFloatField;
    tb_pfor02_orcPF2COFINS_VALOR: TFloatField;
    tb_pfor02_orcPF2DESC_VALOR: TFloatField;
    tb_pfor02_orcNOMPRO_FOR: TStringField;
    tb_pfor02_orcUNDPRO_FOR: TStringField;
    tb_pfor02_orcNOMPRO_INT: TStringField;
    tb_pfor02_orcUNDPRO_INT: TStringField;
    tb_pfor02_orcPF2CODBAR: TFloatField;
    tb_pfor02_orcPF2CODPRO_EXT: TStringField;
    tb_pfor02_orcPF2QTDP_EXT: TFloatField;
    tb_pfor02_orcPF2PU_EXT: TFloatField;
    Tb_PF2_LotesPF2L_LOTE_RE: TStringField;
    Edit13: TEdit;
    edt_siv_outros: TCurrencyEdit;
    tb_pfor02_orcPDNIVEL: TFloatField;
    StaticText2: TStaticText;
    CB_FILIAL: TComboBox;
    mem_cst_csosn: TRxMemoryData;
    mem_cst_csosncsosn: TStringField;
    mem_cst_csosncst: TStringField;
    Label2: TLabel;
    sbnPreco: TSpeedButton;
    edt_outvdup: TCurrencyEdit;
    tb_pfor02_orcPF2IPIQTDUNID: TFloatField;
    tb_pfor02_orcPF2IPIVUNID: TFloatField;
    tb_pfor02_orcPF2PISQTDUNID: TFloatField;
    tb_pfor02_orcPF2PISVUNID: TFloatField;
    tb_pfor02_orcPF2COFINSQTDUNID: TFloatField;
    tb_pfor02_orcPF2COFINSVUNID: TFloatField;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText16: TStaticText;
    StaticText26: TStaticText;
    StaticText27: TStaticText;
    StaticText28: TStaticText;
    StaticText29: TStaticText;
    StaticText25: TStaticText;
    StaticText7: TStaticText;
    DBE_IPIQTDUNID: TDBEdit;
    DBE_IPI_PERC: TDBEdit;
    DBE_IPIVUNID: TDBEdit;
    StaticText30: TStaticText;
    StaticText31: TStaticText;
    DBe_PISQTDUNID: TDBEdit;
    DBE_PIS_PERC: TDBEdit;
    DBE_PISVUNID: TDBEdit;
    StaticText32: TStaticText;
    StaticText33: TStaticText;
    DBE_COFINSQTDUNID: TDBEdit;
    StaticText34: TStaticText;
    DBE_COFINSVUNID: TDBEdit;
    tb_pfor02_orcPF2FRERAT: TFloatField;
    TabSheet2: TTabSheet;
    Edit14: TEdit;
    edt_DtPrevEnt: TDateEdit;
    Edit23: TEdit;
    edt_DtPrevFat: TDateEdit;
    sbnSugestaoCpr: TSpeedButton;
    tb_pfor02_orcPDMARCA: TStringField;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Timer_alteracao: TTimer;
    Edit25: TEdit;
    CB_SIV_OUTROS_TIPO: TComboBox;
    tsMaster: TTabSheet;
    Edit27: TEdit;
    Edit47: TEdit;
    CB_SIV_OUTROS_TIPO_PADRAO: TComboBox;
    sbndadosfiscais: TSpeedButton;
    tb_pfor02_orcPF2CODNCM: TStringField;
    tb_pfor02_orcPF2CEST: TStringField;
    TabSheet3: TTabSheet;
    Label4: TLabel;
    edt_chave_id: TEdit;
    lbl_resultado: TLabel;
    BitBtn1: TBitBtn;
    sbn_corrigir_lotes: TSpeedButton;
    tb_pfor02_orcPF2VICMSDESON: TFloatField;
    lbl_valor_difal: TLabel;
    tsEventos: TTabSheet;
    Edit49: TEdit;
    edt_coddig: TEdit;
    edt_nomdig: TEdit;
    Edit51: TEdit;
    edt_codalt: TEdit;
    edt_nomalt: TEdit;
    Edit57: TEdit;
    edt_datadig: TDateEdit;
    Edit59: TEdit;
    edt_horadig: TEdit;
    Edit62: TEdit;
    edt_datalt: TDateEdit;
    Edit63: TEdit;
    edt_horaalt: TEdit;
    Edit65: TEdit;
    edt_codeve: TEdit;
    edt_nomeve: TEdit;
    Edit76: TEdit;
    edt_dateve: TDateEdit;
    Edit77: TEdit;
    edt_horaeve: TEdit;
    tb_pfor02_orcPF2IPI_PRED: TFloatField;
    cb_lotesAoInvesDescontoMod03: TCheckBox;
    tsDocAnexados: TTabSheet;
    Src_PF_imagem: TDataSource;
    Tb_PF_imagem: TADOQuery;
    GroupBox7: TGroupBox;
    DBGrid3: TDBGrid;
    Panel5: TPanel;
    sbn_nova: TSpeedButton;
    sbn_alterar: TSpeedButton;
    sbnRenomear: TSpeedButton;
    sbn_excluir: TSpeedButton;
    Tb_PF_imagemPF_ROWID: TStringField;
    Tb_PF_imagemPF_SEQ: TFloatField;
    Tb_PF_imagemPF_OBS: TStringField;
    Tb_PF_imagemPF_IMAGEM: TBlobField;
    Tb_PF_imagemPF_NOMEORI: TStringField;
    sbnGerarOrcamentoVendas: TSpeedButton;
    tb_pfor01_parcPF1V_ID_NEW: TFloatField;
    tb_pfor01_parcPF1V_ID_PF01_NEW: TFloatField;
    tb_pfor02_orcPF2ID_PF01_NEW: TFloatField;
    tb_pfor02_orcPF2ID_NEW: TFloatField;
    Tb_PF2_LotesPF2L_ID_NEW: TFloatField;
    Tb_PF2_LotesPF2L_ID_PF02_NEW: TFloatField;
    Tb_PF_imagemPF_ID_NEW: TFloatField;
    Tb_PF_imagemPF_ID_PF01_NEW: TFloatField;
    tb_pfor02_orcPF2CBENEF: TStringField;
    StaticText35: TStaticText;
    DBEdit5: TDBEdit;
    GroupBox8: TGroupBox;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBE_P2CBS_CST: TDBEdit;
    DBE_P2CODCLASSTRIB: TDBEdit;
    DBE_P2CBS_ALIQ: TDBEdit;
    DBE_P2IBS_MUN_ALIQ: TDBEdit;
    DBE_P2IBS_UF_ALIQ: TDBEdit;
    Label5: TLabel;
    DBE_PF2CBS_BC: TDBEdit;
    tb_pfor02_orcPF2CBS_BC: TFloatField;
    tb_pfor02_orcPF2CBS_CST: TStringField;
    tb_pfor02_orcPF2CBS_ALIQ: TFloatField;
    tb_pfor02_orcPF2CBS_VALOR: TFloatField;
    tb_pfor02_orcPf2IBS_MUN_VALOR: TFloatField;
    tb_pfor02_orcPf2CBS_DEV_TRIB: TFloatField;
    tb_pfor02_orcPf2IBS_UF_ALIQ: TFloatField;
    tb_pfor02_orcPF2IBS_UF_VALOR: TFloatField;
    tb_pfor02_orcPF2IBS_MUN_ALIQ: TFloatField;
    tb_pfor02_orcPF2CODCLASSTRIB: TStringField;
    Label6: TLabel;
    DBE_PF2CBS_VALOR: TDBEdit;
    Label7: TLabel;
    PF2IBS_Mun_VALOR: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    lbl_desoneracao: TEdit;
    edt_desoneracao: TEdit;
    tb_pfor02_orcPF2DESONERACAO_DEDUZ: TFloatField;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    DBE_PF2VICMSDESON: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    Label10: TLabel;
    DBCheckBox1: TDBCheckBox;
    tb_pfor02_orcPF2DESONERACAO_MOTIVO: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure sbnIncluirClick(Sender: TObject);
    procedure edt_codforExit(Sender: TObject);
    procedure edt_codforKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codCondPagExit(Sender: TObject);
    procedure DBGrid_itensColExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid_itensKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_itensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_itensExit(Sender: TObject);
    procedure DBGrid_itensMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Memo_ObsPedEnter(Sender: TObject);
    procedure Memo_ObsPedExit(Sender: TObject);
    procedure DBGrid_itensColEnter(Sender: TObject);
    procedure edt_datapExit(Sender: TObject);
    procedure edt_valsegExit(Sender: TObject);
    procedure edt_valfreExit(Sender: TObject);
    procedure edt_bcicmsstExit(Sender: TObject);
    procedure edt_vlricmsstExit(Sender: TObject);
    procedure edt_bcicmsExit(Sender: TObject);
    procedure edt_vlricmsExit(Sender: TObject);
    procedure edt_pDesc01Exit(Sender: TObject);
    procedure edt_datapChange(Sender: TObject);
    procedure edt_codforChange(Sender: TObject);
    procedure edt_codCondPagChange(Sender: TObject);
    procedure Memo_ObsPedChange(Sender: TObject);
    procedure edt_pDesc01Change(Sender: TObject);
    procedure edt_valsegChange(Sender: TObject);
    procedure edt_Imp_Imp_ValorChange(Sender: TObject);
    procedure edt_percfreteChange(Sender: TObject);
    procedure edt_valfreChange(Sender: TObject);
    procedure edt_bcicmsstChange(Sender: TObject);
    procedure edt_vlricmsstChange(Sender: TObject);
    procedure edt_bcicmsChange(Sender: TObject);
    procedure edt_vlricmsChange(Sender: TObject);
    procedure edt_pDesc01Enter(Sender: TObject);
    procedure edt_desc_valorChange(Sender: TObject);
    procedure edt_desc_valorExit(Sender: TObject);
    procedure sbnCancelarClick(Sender: TObject);
    procedure sbnGravarClick(Sender: TObject);
    procedure bbExluir_FPClick(Sender: TObject);
    procedure DBGrid_fpgtoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_fpgtoExit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure sbnAlterarClick(Sender: TObject);
    procedure edt_chaveExit(Sender: TObject);
    procedure bbExcluir_itemClick(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure edt_codfpChange(Sender: TObject);
    procedure edt_codfpExit(Sender: TObject);
    procedure edt_codfpKeyPress(Sender: TObject; var Key: Char);
    procedure sbnMaisDadosClick(Sender: TObject);
    procedure DBGrid_fpgtoColExit(Sender: TObject);
    procedure sbnLocalizarClick(Sender: TObject);
    procedure tb_pfor02_orcBeforeEdit(DataSet: TDataSet);
    procedure tb_pfor02_orcBeforeInsert(DataSet: TDataSet);
    procedure edt_codCondPagKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tb_pfor01_parcAfterInsert(DataSet: TDataSet);
    procedure tb_pfor01_parcAfterDelete(DataSet: TDataSet);
    procedure tb_pfor01_parcAfterEdit(DataSet: TDataSet);
    procedure tb_pfor01_parcAfterPost(DataSet: TDataSet);
    procedure tb_pfor01_parcBeforePost(DataSet: TDataSet);
    procedure tb_pfor02_orcAfterEdit(DataSet: TDataSet);
    procedure tb_pfor02_orcAfterInsert(DataSet: TDataSet);
    procedure tb_pfor02_orcBeforeDelete(DataSet: TDataSet);
    procedure tb_pfor02_orcBeforePost(DataSet: TDataSet);
    procedure sbnImpXMLClick(Sender: TObject);
    procedure sbnImprimirClick(Sender: TObject);
    procedure Tb_PF2_LotesBeforePost(DataSet: TDataSet);
    procedure c(DataSet: TDataSet);
    procedure gb_vencimentosExit(Sender: TObject);
    procedure gb_vencimentosEnter(Sender: TObject);
    procedure Tb_PF2_LotesAfterInsert(DataSet: TDataSet);
    procedure Tb_PF2_LotesAfterEdit(DataSet: TDataSet);
    procedure Tb_PF2_LotesBeforeDelete(DataSet: TDataSet);
    procedure Src_Pfor02_orcDataChange(Sender: TObject; Field: TField);
    procedure Tb_PF2_LotesBeforeEdit(DataSet: TDataSet);
    procedure Tb_PF2_LotesAfterPost(DataSet: TDataSet);
    procedure GroupBox1Enter(Sender: TObject);
    procedure GroupBox1Exit(Sender: TObject);
    procedure tb_pfor01_parcBeforeDelete(DataSet: TDataSet);
    procedure edt_Imp_Imp_ValorExit(Sender: TObject);
    procedure edt_Imp_Imp_AliqExit(Sender: TObject);
    procedure edt_Imp_Imp_AliqChange(Sender: TObject);
    procedure edt_percfreteExit(Sender: TObject);
    procedure edt_bcPISExit(Sender: TObject);
    procedure edt_vlrPISExit(Sender: TObject);
    procedure edt_bcCOFINSExit(Sender: TObject);
    procedure edt_vlrCOFINSExit(Sender: TObject);
    procedure edt_bcicmsstEnter(Sender: TObject);
    procedure edt_bcicmsEnter(Sender: TObject);
    procedure edt_vlricmsstEnter(Sender: TObject);
    procedure edt_vlricmsEnter(Sender: TObject);
    procedure edt_bcPISEnter(Sender: TObject);
    procedure edt_vlrPISEnter(Sender: TObject);
    procedure edt_bcCOFINSEnter(Sender: TObject);
    procedure edt_vlrCOFINSEnter(Sender: TObject);
    procedure edt_codfpEnter(Sender: TObject);
    procedure DBGrid_lotesExit(Sender: TObject);
    procedure edt_outdespChange(Sender: TObject);
    procedure edt_outdespExit(Sender: TObject);
    procedure edt_totipiChange(Sender: TObject);
    procedure edt_totipiEnter(Sender: TObject);
    procedure edt_totipiExit(Sender: TObject);
    procedure edt_valseg_icms_aliqChange(Sender: TObject);
    procedure edt_valseg_icms_aliqExit(Sender: TObject);
    procedure edt_valseg_icms_valorChange(Sender: TObject);
    procedure edt_valseg_icms_valorExit(Sender: TObject);
    procedure edt_valfre_icms_aliqChange(Sender: TObject);
    procedure edt_valfre_icms_valorExit(Sender: TObject);
    procedure edt_valfre_icms_aliqExit(Sender: TObject);
    procedure edt_PIPIFRETEExit(Sender: TObject);
    procedure sbnExcluirClick(Sender: TObject);
    procedure CB_TIPOExit(Sender: TObject);
    procedure bbConfEntradaClick(Sender: TObject);
    procedure edt_numnfChange(Sender: TObject);
    procedure tb_pfor02_orcAfterDelete(DataSet: TDataSet);
    procedure edt_Imp_Imp_ValorEnter(Sender: TObject);
    procedure edt_outdesp_icms_aliqExit(Sender: TObject);
    procedure edt_outdesp_icms_valorExit(Sender: TObject);
    procedure edt_IPIFRETEExit(Sender: TObject);
    procedure RGFRETEPCClick(Sender: TObject);
    procedure edt_siv_freteChange(Sender: TObject);
    procedure edt_nfe_chaveChange(Sender: TObject);
    procedure CB_MODELOClick(Sender: TObject);
    procedure edt_datentChange(Sender: TObject);
    procedure edt_datanfChange(Sender: TObject);
    procedure cb_gravarnfClick(Sender: TObject);
    procedure CB_CASASDClick(Sender: TObject);
    procedure edt_codtraExit(Sender: TObject);
    procedure edt_codtraChange(Sender: TObject);
    procedure edt_codtraKeyPress(Sender: TObject; var Key: Char);
    procedure RGFRETEPCExit(Sender: TObject);
    procedure edt_nfe_chaveExit(Sender: TObject);
    procedure edt_numnfExit(Sender: TObject);
    procedure edt_serieChange(Sender: TObject);
    procedure edt_serieExit(Sender: TObject);
    procedure edt_datentExit(Sender: TObject);
    procedure edt_datanfExit(Sender: TObject);
    procedure tb_pfor01_parcBeforeEdit(DataSet: TDataSet);
    procedure tb_pfor01_parcBeforeInsert(DataSet: TDataSet);
    procedure edt_numdupChange(Sender: TObject);
    procedure edt_numdupExit(Sender: TObject);
    procedure cb_gravardpClick(Sender: TObject);
    procedure cb_gravardpExit(Sender: TObject);
    procedure edt_desdChange(Sender: TObject);
    procedure edt_desdExit(Sender: TObject);
    procedure edt_outvdup0Exit(Sender: TObject);
    procedure edt_siv_freteExit(Sender: TObject);
    procedure edt_siv_dareChange(Sender: TObject);
    procedure edt_siv_dareExit(Sender: TObject);
    procedure edt_siv_outrosExit(Sender: TObject);
    procedure edt_siv_outrosChange(Sender: TObject);
    procedure Tb_PF2_LotesBeforeInsert(DataSet: TDataSet);
    procedure CB_FILIALEnter(Sender: TObject);
    procedure CB_FILIALExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid_lotesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codCondPagEnter(Sender: TObject);
    procedure edt_desc_valorEnter(Sender: TObject);
    procedure cb_gravardpEnter(Sender: TObject);
    procedure DBGrid_fpgtoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure sbnPrecoClick(Sender: TObject);
    procedure CB_TIPOClick(Sender: TObject);
    procedure edt_outvdupChange(Sender: TObject);
    procedure edt_outvdupExit(Sender: TObject);
    procedure DBE_ICMS_PREDExit(Sender: TObject);
    procedure Panel_outrosExit(Sender: TObject);
    procedure edt_DtPrevEntExit(Sender: TObject);
    procedure edt_DtPrevFatExit(Sender: TObject);
    procedure edt_DtPrevEntChange(Sender: TObject);
    procedure edt_DtPrevFatChange(Sender: TObject);
    procedure sbnSugestaoCprClick(Sender: TObject);
    procedure CB_TIPOEnter(Sender: TObject);
    procedure Timer_alteracaoTimer(Sender: TObject);
    procedure CB_SIV_OUTROS_TIPOClick(Sender: TObject);
    procedure CB_SIV_OUTROS_TIPO_PADRAOClick(Sender: TObject);
    procedure CB_SIV_OUTROS_TIPOExit(Sender: TObject);
    procedure sbndadosfiscaisClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure sbn_corrigir_lotesClick(Sender: TObject);
    procedure cb_lotesAoInvesDescontoMod03Click(Sender: TObject);
    procedure sbn_novaClick(Sender: TObject);
    procedure sbn_alterarClick(Sender: TObject);
    procedure sbnRenomearClick(Sender: TObject);
    procedure sbn_excluirClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure sbnGerarOrcamentoVendasClick(Sender: TObject);
  private
   { Private declarations }
    HintRect : TRect;
    HintWindow : THintWindow;
    mImportando: Boolean;
    mlocalizando_pedido:boolean;
    mant_Imp_Imp_Valor: Real;
    mant_filial: Integer;
    mant_ped1_gravdp:  integer;
    mtipo_ant: Integer;
    form_pcus_pfor:tFrm_PCus;
    mChavePf: tChavePF;

//    mqtdchange: integer;

//    mant_valseg_icms_valor: Real;
    mcst_csosn_ant_trib: string;
    mcst_csosn_ant_ret: string;

    mcfop_ant_trib: string;
    mcfop_ant_ret: string;

    mped02_itemexcluido: Integer;
    mped1_cfop_nor      :Integer;
    mped1_cfop_isen     :Integer;
    mped1_cfop_st       :Integer;

    mped1_csosn_nor     :Integer;
    mped1_csosn_isen    :Integer;
    mped1_csosn_ret     :Integer;

    mCodpv_ant: String;
    muf_for: string;
    mped1_csosn_nor_ori :Integer;
    mped1_csosn_isen_ori:Integer;
    mped1_csosn_ret_ori :Integer;

//    mped1_tpPed :Integer;
    mped1_tpPed_VendaNormal :String;

    mPed1Serv_Cfop      :Integer;
    mPed1Serv_CfopSubECF:Integer;
    mAnt_VlrTot: Real;


   mQtdCas_arredpu: Integer;

   mDisplayFormatPU: String;


    mPed_Desc: Real;
    mPed_MobBcST: Integer; // Modalidade 0-PMC 1-Negativa 2-Positiva 3-neutra 4-Iva 5 Pauta'
    mPed_Cli_ICMSST: String; // icms st N-Nao S-Sim
    mPed_Cli_Consfin: String; // icms st N-Nao S-Sim
    mCodpro_Ant: String;
    mItem_Ant: Integer;
    mQtd_Ant: Real;

    mPed_Desc_Ant: Real;

    mPed_Item: Integer;

    mParcela_Ant: Integer;

    mPed1_CodFP_Ant: Integer;

    mPed_DescGer_Ant: Real;
    mPed_PDesc01_Ant: Real;

   mCampoP_TotDes: Boolean;
   mCampoP_VII: Boolean;
   mCampoP_IPI: Boolean;
   mCampoP_VIOF: Boolean;
   mCampoP_TARBAN: Boolean;
   mCampoP_OutDesp: Boolean;
   mCampoP_Siv_OutDesp: Boolean;
   mCampoP_ValSeg: Boolean;
   mCampoP_ValFre: Boolean;
   mCampoP_icmsr: Boolean;



   function fLerImagem(pIfPfNew: Integer): Boolean;

    function fLimparCampos(pTipo: Integer): Boolean;
    function fAtualizarBotoes(pTipo: Integer): Boolean;
    function fApresentaHint(pMensagem: String;pTop,pLeft: Integer): Boolean;
    function fPosicao(ptipo: Integer): Boolean;
    function fTotais(pTipo: Integer): Boolean;
    function fLerFormaPag(pTipo: Integer): Boolean;
    function fBloquearLiberarCampos(pLibera: Boolean): Boolean;
    function fRecalcularPedido(pTipo: Integer;pAaltdup: String): Boolean;

    function fSomarFPgto(pTipo:Integer): Real;
    function fVerificarOrdemFPgto(ptipo: Integer): Boolean;
    function fBloqueiaLiberaPedido(ptipo: Integer): Boolean;
    function fLerPedidoGeral(pCodEmp,pChave,pChave_ano: Integer): Boolean;
    function fpf01implaser01(ptipo, pcasas: Integer): Boolean;
    function fpf01implaser02(ptipo, pcasas: Integer): Boolean;
    function fpf01implaser03(ptipo, pcasas: Integer): Boolean;
    function fpf01implaser04(ptipo, pcasas: Integer): Boolean;

    function fpf01implaser05(ptipo, pcasas: Integer): Boolean;

    function fBuscarLotes(pCodpro: String;pQtd: Real): boolean;
    function fLerCadpF2_Lotes: boolean;

    function FLimparValoresDigitados: Boolean;

    function fexcluir(ptipo,pStatus: Integer):Boolean;

    function fGerarOld(pTipo: Integer): Boolean;

    function flimparTemp(pTipo: Integer): Boolean;

    function fRenomearItem(pItemRemovido: Integer):Boolean;

    function fLercadpf02(ptipo: Integer): boolean;


    function fCalcularPfor02(ptipo: Integer): boolean;

    function fAdicionarQtdMan(ptipo: Integer): Boolean;




    function fValidarQuantidadesLote(pItem: Integer):boolean;

    procedure fAjustarBotoes;


    procedure fBuscarValorDifal;


    procedure fPegarDadosDoCadastroEstado(pUf: String);


    function fValidarSenhaEntrada(pCodSenha: integer; pTexto: String; out pTemValidacao: boolean): boolean;


    function fLerCadCbenef(pCBenef: String): boolean;



    procedure fAtualizarCadEmailXml(pChaveNfe: String; pConfirmar:boolean; pChaveIdNew: integer);


    function fValidarVencimentosDocumentos(pCodcli: Real): boolean;



    function fValidarSenha(pTexto: string; pCodBloq,pcodSen: integer):boolean;

  public
    { Public declarations }
    mtab_cadpf1: string;
    mtab_cadpf1v: string;
    mtab_cadpf2: string;
    mtab_cadpf2_lotes: string;
    mtab_cadnov: real;

    mFor_CRT: Integer;
    mFor_UF: String;
    mCorrecaodoPedido: Boolean;

    mCompras_GP: TFrm_Compras_GravarPedido;
    mOperacao_Normal: boolean;
    mValidar_lote: boolean;
    mPed_UF_Cli: String;

    mNC_UF_AliqDebSt :String; //  UF_ALIQ_INT
    mNC_UF_Red_IcmsSt:String; //  UF_ICMS_PRED_INT
    mNC_UF_IcmsSTIVA:String;  // UF_ICMSST_IVA_INT

    mNC_Reg_AliqCredST:String;  // UF_ALIQ_SUL
    mNC_Reg_IcmsSTPRed:String;   // UF_ICMS_PRED_SUL
    mNC_Reg_IcmsSTIVA:String;  // UF_ICMSST_IVA_SUL



    mUF_AliqDebSt :Real; //  UF_ALIQ_INT
    mUF_Red_IcmsSt:Real; //  UF_ICMS_PRED_INT
    mUF_IcmsSTIVA:Real;  // UF_ICMSST_IVA_INT
    mUF_IcmsSN: Real; // % icms de credito do simples nacional

    mReg_AliqCredST:Real;  // UF_ALIQ_SUL
    mReg_IcmsSTPRed:Real;   // UF_ICMS_PRED_SUL
    mReg_IcmsSTIVA:Real;  // UF_ICMSST_IVA_SUL

    mped_Alterou_Cab: Boolean;
    mLote_qtdFalta: Real;
    mAnt_qtdLote: Real;
    mAnt_LoteNum: String;
    mAnt_LoteCodPro: Real;
    mAnt_fpgto_datav:TDateTime;
    mAnt_fpgto_valor:Real;
    mAnt_Fpgto_prazo   : Integer;

    mFpgto_VlrFalta: Real;

    mAnt_TotIPI: Real;

    mAnt_ICMSST_Base: Real;
    mAnt_ICMSST_Valor: Real;

    mAnt_ICMS_Base: Real;
    mAnt_ICMS_Valor: Real;

    mAnt_PIS_Base: Real;
    mAnt_PIS_Valor: Real;

    mAnt_Cofins_Base: Real;
    mAnt_Cofins_Valor: Real;

  end;

var
  Frm_Compras_Orc: TFrm_Compras_Orc;

implementation

uses S_DM1,  LerArq, func, S_Compras_Orc_Localizar, func_excecoes,
  SR_PFor01, S_DM4, S_Info, S_Ocorrencias, S_Agde,
   Math, S_Compras_Orc_Precos, S_Aviso, S_DM1_ADO, S_Pfor01_PedAut,
  s_Compras_dados_Fiscais, s_Corrigir_Lotes_Compras, s_Imagem_WebCam,
  S_Fig_TelaCheia, s_Compras_Orc_GerarOrcVendas;

{$R *.dfm}

procedure TFrm_Compras_Orc.FormActivate(Sender: TObject);
begin
top:=0;

if Log_TipoLote=1 then
   Panel_rod_Itens.Height:=99
else
   Panel_rod_Itens.Height:=72;
end;

procedure TFrm_Compras_Orc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

FreeAndNil(mCompras_GP);

if form_pcus_pfor<>nil then
   freeandnil(form_pcus_pfor);


end;

procedure TFrm_Compras_Orc.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
Query_Exe: TQuery;
begin


If (sbnGravar.Enabled) and (valfloat( edt_totliq.Text)>0) then
   begin
   verteclado(1);

   Case fmensagem('O Pedido atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],0) of
      mrYes: sbnGravar.Click;
      mrNo : begin
             sbnCancelar.Click;
             exit;
             end;
      else
         begin
         CanClose:=False;
         exit;
         end;
      end;
   end;



Query_Exe:=TQuery.Create(nil);
Query_Exe.DatabaseName:='SG_ASSOC';

if mCompras_GP.mped1_Chave>0 then
   begin
   if mped_Alterou_Cab then
      begin
      mCompras_GP.fGravarPed01(1);
      fRecalcularPedido(3,'S');
      mped_Alterou_Cab:=false;
      end;
   Query_Exe.Close;
   Query_Exe.SQL.Clear;
   Query_Exe.SQL.Add('Delete from CADPF2_ORC_TEMP '                       
                             +' where PF2T_CODEMP=:CODEMP '
                             +' and   PF2T_CHAVE=:CHAVE '
                             +' and   PF2T_CHAVE_ANO=:CHAVE_ANO '
                               );
   Query_exe.ParamByName('CODEMP').AsInteger:=mCompras_GP.mPed1_Codemp;
   Query_exe.ParamByName('CHAVE').AsInteger:=mCompras_GP.mped1_Chave;
   Query_exe.ParamByName('CHAVE_ANO').AsInteger:=mCompras_GP.mPed1_Chave_ano;

   try
      Query_exe.ExecSQL;
      fDM1StartCommit;
   except
      if not fVerificaRedeAtiva(true) then
         begin
         end
      else
         begin
         ex_erroSql_Novo(Query_Exe,802,'_lerarq','cadpf2_orc');
         end;
      end;
   fAtualizarBotoes(1);
   fBloquearLiberarCampos(false);
   end;
FreeAndNil(Query_Exe);
end;

procedure TFrm_Compras_Orc.FormCreate(Sender: TObject);
begin



if flfilpad(-1,'_compras_orc_precos','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IPI',[]) then
      mCampoP_IPI:=DM4.Tb_FilPad2FPVALOR.AsString='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_VII',[]) then
      mCampoP_VII:=DM4.Tb_FilPad2FPVALOR.AsString='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_VIOF',[]) then
      mCampoP_VIOF:=DM4.Tb_FilPad2FPVALOR.AsString='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_TARBAN',[]) then
      mCampoP_TARBAN:=DM4.Tb_FilPad2FPVALOR.AsString='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_OUTDESP',[]) then
      mCampoP_OutDesp:=DM4.Tb_FilPad2FPVALOR.AsString='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_VALFRE',[]) then
      mCampoP_ValFre:=DM4.Tb_FilPad2FPVALOR.AsString='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_VALSEG',[]) then
      mCampoP_ValSeg:=DM4.Tb_FilPad2FPVALOR.AsString='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_VALDES',[]) then
      mCampoP_TotDes:=DM4.Tb_FilPad2FPVALOR.AsString='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ICMSR',[]) then
      mCampoP_icmsr:=DM4.Tb_FilPad2FPVALOR.AsString='true';

   end;






    mtab_cadpf1 :='CADPF1';
    mtab_cadpf1v:='CADPF1V';
    mtab_cadpf2 :='CADPF2';
    mtab_cadpf2_lotes :='CADPF2_LOTES_ORC';
    mtab_cadnov:=0;
if codusr<>1111 then
   tsMaster.TabVisible:=false;

sbn_corrigir_lotes.Visible:=Log_TipoLote=1;

Application.CreateForm(TFrm_Pcus,form_pcus_pfor);
form_pcus_pfor.FormStyle:=fsNormal;
form_pcus_pfor.Visible  :=False;
form_pcus_pfor.origem:='exportar';


mCorrecaodoPedido:=false;
pcCabecalho.ActivePage:=tsCabecalho;
pcProdServ.ActivePage:=tsProdutos;

mOperacao_Normal:=true;
mValidar_lote   :=true;
mlocalizando_pedido:=false;
edt_nfe_chave.editMask:= pEditMascChave_Acesso;

HintWindow:=THintWindow.Create(tsCabecalho);
//Application.HintPause := 15;
tb_pfor02_orcPF2QTDP.DisplayFormat        :=mcasqtd;
tb_pfor02_orcPF2DESC_PERC01.DisplayFormat:=mCasas;
tb_pfor02_orcPF2DESC_PERC02.DisplayFormat:=mCasas;
tb_pfor02_orcPF2DESC_PERC03.DisplayFormat:=mCasas;
mDisplayFormatPU:=mCasasPU;

tb_pfor02_orcPF2PU_INT.DisplayFormat     :=mDisplayFormatPU;
tb_pfor02_orcPF2PU_EXT.DisplayFormat     :=mDisplayFormatPU;
tb_pfor02_orcVALOR_TOTAL.DisplayFormat   :=mCasas;

tb_pfor02_orcPF2ICMS_PRED.DisplayFormat:=mcasasPRedut;
tb_pfor02_orcPF2ST_IVA.DisplayFormat:=mCasas;
tb_pfor02_orcPF2ST_PERCRED.DisplayFormat:=mCasas;
tb_pfor02_orcPF2ST_ICMSCRED.DisplayFormat:=mCasas;
tb_pfor02_orcPF2ST_ICMSDEB.DisplayFormat:=mCasas;
tb_pfor02_orcPF2PRECO_MAXCONS.DisplayFormat:=mCasas;
tb_pfor02_orcPF2IPI_PERC.DisplayFormat:=mCasas;
tb_pfor02_orcPF2ICMS_PERC.DisplayFormat:=mCasas;
tb_pfor02_orcPF2COFINS_PERC.DisplayFormat:=mCasas;
tb_pfor02_orcPF2PIS_PERC.DisplayFormat:=mCasas;
tb_pfor02_orcPF2ICMSSN_PERC.DisplayFormat:=mCasas;
tb_pfor02_orcPF2ST_BASE.DisplayFormat:=mCasas;
tb_pfor02_orcPF2ST_BASE.DisplayFormat:=mCasas;
tb_pfor02_orcPF2ST_ICMS.DisplayFormat:=mCasas;
tb_pfor02_orcPF2ST_BASE.DisplayFormat:=mCasas;
tb_pfor02_orcPF2ICMSSN_PERC.DisplayFormat:=mCasas;
tb_pfor02_orcPF2ICMSSN_VALOR.DisplayFormat:=mCasas;
tb_pfor02_orcPF2ICMSSN_PERC.DisplayFormat:=mCasas;
tb_pfor02_orcPF2IPI_PERC.DisplayFormat:=mCasas;
tb_pfor02_orcPF2IPI_VALOR.DisplayFormat:=mCasas;
tb_pfor02_orcPF2COFINS_PERC.DisplayFormat:=mCasas;
tb_pfor02_orcPF2COFINS_VALOR.DisplayFormat:=mCasas;
tb_pfor02_orcPF2ICMS_BASE.DisplayFormat:=mCasas;
tb_pfor02_orcPF2ICMS_VALOR.DisplayFormat:=mCasas;
//tb_pfor02_orcPF2ICMS_PRED.DisplayFormat:=mCasas;

Application.CreateForm(TFrm_Compras_GravarPedido, mCompras_GP);
fLimparCampos(0);
fBloquearLiberarCampos(false);

tb_pfor01_parcPF1VVALOR.DisplayFormat        :=mCasas;
tb_pfor01_parcPF1VDATAV.DisplayFormat        :=fdt2;

tb_pfor01_parcPF1VDESCF.DisplayFormat:=mCasas;
tb_pfor01_parcPF1VDATAV.DisplayFormat :=fdt2;

mPed_MobBcST:=0;
//tsOutros.TabVisible:=False;
if Log_TipoLote=1 then // usa lotes de mercadorias
   gb_vencimentos.Visible:=true
else
   gb_vencimentos.Visible:=false;
Tb_PF2_LotesPF2L_DTVCTO.EditMask:= pEditMascData;
Tb_PF2_LotesPF2L_DTFAB.EditMask:= pEditMascData;
Tb_PF2_LotesPF2L_QTD.DisplayFormat:= mcasqtd;

tb_pfor01_parcPF1VDATAV.EditMask:= pEditMascData;
tb_pfor01_parcPF1VVALOR.DisplayFormat:=mcasas;
tb_pfor01_parcPF1VDESCF.DisplayFormat:=mcasas;
tb_pfor01_parcPF1VDTDESCF.EditMask:= pEditMascData;

sbnImpOutro.Caption:='Importar de'+#13+'Outro Pedido';
sbnImpXML.Caption  :='Gerar Através'+#13+'de um XML';
bbConfEntrada.Caption  :='Confirmar'+#13+'Entrada';



if flfilpad(-1,'_COMPRAS_ORC','CB_SIV_OUTROS_TIPO_PADRAO') then
  CB_SIV_OUTROS_TIPO_PADRAO.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.AsString);

if flfilpad(-1,'_COMPRAS_ORC','lotesAoInvesDescontoMod03') then
  CB_lotesAoInvesDescontoMod03.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';


end;

procedure TFrm_Compras_Orc.Memo_ObsPedChange(Sender: TObject);
begin
if (Memo_ObsPed.Modified) and (mCompras_GP.mped1_Chave>0)  then
   begin
   mped_Alterou_Cab:=true;
   if (not tb_pfor02_orc.IsEmpty) then
       mCompras_GP.mPed1_AltDup:='N';
   end;

end;

procedure TFrm_Compras_Orc.Memo_ObsPedEnter(Sender: TObject);
var
pRect:TRect;
begin
GetWindowRect(Memo_ObsPed.Handle,pRect);

fApresentaHint( 'Pressione [TAB] ou utilize o Mouse para Sair',pRect.Top,pRect.Left);

end;
function tFrm_Compras_Orc.fApresentaHint(pMensagem: String;pTop,pLeft: Integer): Boolean;
var
sHint: String;
begin
sHint:=pMensagem;
HintRect := HintWindow.CalcHintRect(400,'*',nil);
HintRect.Top :=  pTop-20;
HintRect.Left := pLeft;
HintRect.Right := HintRect.Left + (Length(sHint)*6);
HintRect.Bottom := HintRect.Top + 15;
HintWindow.ActivateHint(HintRect,sHint);
result:=true;
end;

procedure TFrm_Compras_Orc.Memo_ObsPedExit(Sender: TObject);
begin
if Assigned(HintWindow) then
HintWindow.ReleaseHandle;
mCompras_GP.mPed1_Obs_Ped:=Memo_ObsPed.Text;

end;

procedure TFrm_Compras_Orc.sbnAlterarClick(Sender: TObject);
var
query_pfor01: tQuery;
mSemSaldo: Boolean;
begin
mCompras_GP.mPed1_DatHor_UEVE:=now();

query_pfor01:=tQuery.Create(nil);
query_pfor01.DatabaseName:='SG_ASSOC';
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
fInnerJoin(1,'CADFOR','FCODEMP','PF1CODEMP','FCODFOR','FCODFOR');

query_pfor01.Close;
query_pfor01.SQL.Clear;
query_pfor01.SQL.add('Select PF1CODEMP,PF1CHAVE,PF1CODFOR,PF1DATA,PF1OBS  '
                    +',PF1CASASD,PF1DESC01,PF1DESC02,PF1DESC03,PF1TOTDES  '
                    +',PF1TOTBRU,PF1TOTLIQ,PF1STATUS,PF1CODUSR,PF1HORDIG  '
                    +',PF1USRMOD,PF1DTMOD,PF1HRMOD,PF1TOTMER,PF1TOTPOS  '
                    +',PF1TOTNEG,PF1TOTINA,PF1TOTFRE,PF1TOTSEG,PF1BASEN '
                    +',PF1BASER,PF1ICMSN,PF1ICMSR,PF1CODLDR, PF1BASENR '
                    +',PF1ICMSNR,PF1ISENTAS,PF1TOTOUT,PF1TOTIPI,PF1DATANF '
                    +',PF1NUMNF,PF1SERIE,PF1SUBSER,PF1TABPV,PF1CODPV,PF1CODBCO '
                    +',PF1CODTRA,PF1MODELO,PF1NUMDUP,PF1DESD,PF1GRAVNF,PF1GRAVDP, '
                    +'PF1DATAENT,PF1LOTSEQ, PF1CONDPAG,PF1PIPIFRETE,PF1IPIFRETE, '
                    +'PF1DTPFAT,PF1DTPENT,PF1PERCFRE,PF1FRETEPC,PF1TEMBOL, '
                    +'PF1LEMAT,PF1CODEMP_ORI,PF1NUMPED_ORI,PF1PAG_ORI,PF1ORIGEM,'
                    +'PF1OUTNINC,PF1OUTDESP,PF1NFCF, PF1SITPED,PF1QTDMAN,'
                    +'PF1TOTDESOUT,PF1TOTBRUOUT,PF1TOTLIQOUT,PF1TOTPBT,'
                    +'PF1TOTFREOUT,PF1FORMACE,PF1OUTROS,PF1NUMDUPOUT,PF1TIPO, '
                    +'PF1SIV_FRETE,PF1SIV_DARE,PF1SIV_OUTROS,PF1SIV_OUTROS_TIPO,PF1OUTVDUP,'
                    +'PF1PRAZO,PF1QTDP,PF1INT,PF1LOCAL,PF1DATCONF, '
                    +'PF1SUBMOD,PF1TOTOUT_ALIQ,PF1TOTOUT_IMP, PF1LOTE_ENTRADA, '
                    +'PF1REGENT,PF1SITPROD,PF1ALIQ_FRETE,PF1ICMS_FRETE,PF1DATHOR_REP, '
                    +'PF1INCFRE,PF1_DATAPROT,PF1_NFE_CHAVE,PF1DATHOR_UEVE,'
                    +'PF1CODUSR_UEVE,PF1DATHOR_DIG,PF1OBS_PED,PF1CODFP,'
                    +'PF1COMP_UEVE,PF1PERCFRETE,PF1IMP_IMP_ALIQ,PF1IMP_IMP_VALOR,'
                    +'PF1INCOUTROS,PF1TOTSEG_ICMS_ALIQ,PF1TOTSEG_ICMS_VALOR,'
                    +'PF1OUTDESP_ICMS_ALIQ,PF1OUTDESP_ICMS_VALOR,FRAZAO '
                    +' from '+mtab_cadpf1+' '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +'  (PF1CODEMP=:CODEMP ) '
                 +' and PF1CHAVE=:CHAVE '
                 +' and PF1LOTSEQ=:LOTSEQ ');
query_pfor01.ParamByName('CODEMP').AsInteger:=mCompras_GP.mPed1_CodEmp;
Query_pfor01.ParamByName('CHAVE').AsInteger:=mCompras_GP.mped1_Chave;
Query_pfor01.ParamByName('LOTSEQ').AsInteger:=mCompras_GP.mPed1_Chave_ano;
try
   Query_pfor01.Open;
except
   if not fVerificaRedeAtiva(true) then
      begin
      end
   else
      begin
      ex_erroSql_Novo(Query_pfor01,4292,'_lerarq','CADPF1');
      end;
   end;

if query_pfor01.IsEmpty then
   begin
   Fmensagem('Este Pedido foi excluido por outro usuario!',0,['0'],0);
   FreeAndNil(query_pfor01);
   exit;
   end;

if not fValida_PedidoCompra(mCompras_GP.mped1_Chave,mCompras_GP.mped1_Chave_ano,mCompras_GP.mped1_codemp) then
   begin
   query_pfor01.close;
   FreeAndNil(query_pfor01);
   exit;
   end;

if Query_pfor01.FieldByName('PF1SITPED').AsInteger=1 then
   begin
   Fmensagem('Este Pedido Esta em Manutenção em outra estação!',0,['0'],0);
   FreeAndNil(query_pfor01);
   exit;
   end;

if Query_pfor01.FieldByName('PF1QTDMAN').AsInteger>mCompras_GP.mPed1_QtdMan then
   begin
   if not fLerPedidoGeral(codemp,valint(edt_chave.Text),0) then
      begin
      Fmensagem('Este Pedido foi excluido por outro usuario!',0,['0'],0);
      FreeAndNil(query_pfor01);
      exit;
      end;
   end;

if not mCorrecaodoPedido then
   begin
   if ((query_pfor01.fieldbyName('PF1STATUS').Value>0) or (not mOperacao_Normal)) then
      begin
      Fmensagem('Pedido ja Confirmado. Nao Pode Ser Alterado!',0,['0'],0);
      exit;
      end;
   end;


fGerarOld(8);
txt_Situacao.Text  :='Alterando';

fBloquearLiberarCampos(true);
fAtualizarBotoes(2);
FreeAndNil(query_pfor01);
fBloqueiaLiberaPedido(1);
fAdicionarQtdMan(0);

mped_Alterou_Cab:=false;


end;

procedure TFrm_Compras_Orc.sbnCancelarClick(Sender: TObject);
begin
fBloqueiaLiberaPedido(0);

fAtualizarBotoes(0);
flimpartemp(0);
fLimparCampos(0);
fBloquearLiberarCampos(false);
Timer_alteracao.enabled:=false;
end;

procedure TFrm_Compras_Orc.sbnGravarClick(Sender: TObject);
begin
Self.Perform(WM_NEXTDLGCTL,0,0);

DBGrid_fpgtoExit(self);
cb_gravardpClick(self);
cb_gravardpExit(Self);


if (Log_TipoLote=1) and (DBGrid_lotes.Visible) then
   DBGrid_lotesExit(Self);
if tb_pfor02_orc.State in [dsEdit,dsInsert] then
   begin
   if length(tb_pfor02_orcPF2CODPRO_INT.AsString)>0 then
      tb_pfor02_orc.Post
   else
      tb_pfor02_orc.Cancel;
   end;

   Panel_butons.SetFocus;
   if not Panel_butons.Focused then
      abort;


if mped_Alterou_Cab then
   begin
   mCompras_GP.fGravarPed01(1);
   fRecalcularPedido(3,'N');
   end;
fAtualizarBotoes(1);
flimpartemp(0);
fBloqueiaLiberaPedido(0);
fBloquearLiberarCampos(false);
end;

procedure TFrm_Compras_Orc.sbnIncluirClick(Sender: TObject);
begin
//mqtdchange:=0;


fLimparCampos(0);
mCompras_GP.mPed1_DatHor_Dig:=now();
mCompras_GP.mPed1_DatHor_UEVE:=now();
mCompras_GP.mPed1_CodUsr_Dig:=codusr;

CB_CASASDClick(Self);

FLimparValoresDigitados;

txt_MODO.Text  :='Incluindo';

mPed_UF_Cli:=mGer_Emp_UF;

pcCabecalho.ActivePage:=tsCabecalho;
edt_datent.Date := now;

pcProdServ.ActivePage:=tsProdutos;
Tb_Pfor02_orc.Close;
Tb_Pfor02_orc.SQL.Clear;
Tb_Pfor02_orc.SQL.Add('select PF2CODEMP,PF2CHAVE,PF2LOTSEQ,PF2ITEM,PF2QTDP '
                     +',PF2DESC01 AS PF2DESC_PERC01'
                     +',PF2DESC02 AS PF2DESC_PERC02'
                     +',PF2CODPRO AS PF2CODPRO_INT,'
                     +'PF2DESC03 AS PF2DESC_PERC03'
                     +',PF2FRERAT'
                     +',PF2PU AS PF2PU_INT ,PF2SIT, PF2CSOSN'
                     +',PF2CFO, Pf2DESC_COMPL, round( (PF2QTDP*PF2PU), 2) AS VALOR_TOTAL'
                     +',PF2CSOSN_ORI, PF2PREDICMNOR AS PF2ICMS_PRED,'
                     +' PF2MODBCST, PF2ST_IVA,  PF2ST_PERCRED, PF2ST_ICMSCRED, PF2ST_ICMSDEB,'
                     +' PF2PMC AS PF2PRECO_MAXCONS , PF2ALIPI AS PF2IPI_PERC'
                     +', PF2IPI_PRED AS PF2IPI_PRED '
                     +', PF2ALIQ AS PF2ICMS_PERC, PF2COFINS_PERC'
                     +',PF2PIS_PERC AS PF2PIS_PERC, PF2ICMSSN_PERC'
                     +',PF2CST_IPI AS PF2IPI_CST, PF2CST_PIS AS PF2PIS_CST, PF2CST_COFINS AS PF2COFINS_CST,PF2IPI AS PF2IPI_VALOR'
                     +',PF2BASER AS PF2ST_BASE,PF2ICMSR AS PF2ST_ICMS,PF2BASEN AS  PF2ICMS_BASE'
                     +',PF2ICMSN AS PF2ICMS_VALOR'
                     +',PF2ICMS_RED_VLR,PF2DESC_RATEADO AS PF2DESC_CABEC,'
                     +'PF2TOTDES AS PF2DESC_TOTDES, PF2PIS_VALOR,PF2TOTLIQ'
                     +',PF2ICMSSN_VALOR,PF2COFINS_VALOR,PF2VALDES AS  PF2DESC_VALOR,'
                     +'PDNOME AS NOMPRO_FOR,PDNOME AS UNDPRO_FOR,PDNOME AS NOMPRO_INT'
                     +',PDUND AS UNDPRO_INT,PF2CODPRO AS PF2CODBAR'
                     +',CASE WHEN PF2CODNCM is null THEN PDCODNCM ELSE PF2CODNCM END AS PF2CODNCM  '
                     +',CASE WHEN PF2CEST is null THEN PDCEST ELSE PF2CEST END AS PF2CEST  '
                     +',to_char(PF2CODPRO) AS PF2CODPRO_EXT ,PF2QTDP AS PF2QTDP_EXT'
                     +',PF2PU AS PF2PU_EXT  '
                     +',PDNIVEL '
                     +' ,PF2IPIQTDUNID '
                     +',PF2IPIVUNID '
                     +',PF2PISQTDUNID '
                     +',PF2PISVUNID '
                     +',PF2CBENEF'
                     +',PF2COFINSQTDUNID '
                     +',PF2COFINSVUNID     '
                     +',PDMARCA '

                     +',PF2VICMSDESON '
                     +',PF2ID_NEW '
                     +',PF2ID_PF01_NEW '
                     +',PF2CBS_BC'
                     +',PF2CBS_CST    '
                     +',PF2CBS_ALIQ'
                     +',PF2CBS_VALOR'
                     +',Pf2IBS_MUN_VALOR'
                     +',Pf2CBS_DEV_TRIB'
                     +',Pf2IBS_UF_ALIQ'
                     +',PF2IBS_UF_VALOR'
                     +',PF2IBS_MUN_ALIQ'
                     +',PF2CODCLASSTRIB'
                     +',PF2DESONERACAO_DEDUZ '
                     +',PF2DESONERACAO_MOTIVO '



                     +' FROM '+mtab_cadpf2
                     +' left join CADPRO  on (PDCODPRO =PF2CODPRO '
                     +'          and PDCODEMP=PF2CODEMP) '
                     +' where PF2CODEMP=-9999');
try
   Tb_Pfor02_orc.Open;
except
   tb_pfor02_orc.SQL.SaveToFile(mpastatemp +'sql.TXT');
   if fVerificaRedeAtiva(true) then
      ex_erroSql_Novo(Tb_Pfor02_orc,208,'frm_venda_pre','cadpf2_orc')
   else
      fFecharTudo(0);
   end;
// servico


// termino servico


edt_datap.Date:=Date;
mCompras_GP.mPed1_Datap:=edt_datap.Date;

fLerFormaPag(1);

fBloquearLiberarCampos(true);

mPed_Item:=1;

fAtualizarBotoes(2);
edt_codfor.SetFocus;
end;

function TFrm_Compras_Orc.flimparTemp(pTipo: Integer): Boolean;
var
Query_exe: TQuery;
begin
if mCompras_GP.mped1_Chave=0 then
   begin
   result:=true;
   exit;
   end;
Query_exe := TQuery.Create(nil);
Query_exe.DatabaseName:='SG_ASSOC';

Query_exe.Close;
Query_exe.SQL.Clear;
Query_exe.SQL.Add('Delete from CADPF2_ORC_TEMP '
                          +' where PF2T_CODEMP=:CODEMP '
                          +' and   PF2T_CHAVE=:CHAVE '
                          +' and   PF2T_CHAVE_ANO=:CHAVE_ANO '
                            );
Query_exe.ParamByName('CODEMP').AsInteger:=mCompras_GP.mPed1_Codemp;
Query_exe.ParamByName('CHAVE').AsInteger:=mCompras_GP.mped1_Chave;
Query_exe.ParamByName('CHAVE_ANO').AsInteger:=mCompras_GP.mPed1_Chave_ano;

try
   Query_exe.ExecSQL;
   fDM1StartCommit;
except
   if not fVerificaRedeAtiva(true) then
      begin
      end
   else
      begin
      ex_erroSql_Novo(Query_exe,1257,'_lerarq','cadpf2_orc');
      end;
   end;
FreeAndNil(Query_exe);
   
result:=true;
end;
procedure TFrm_Compras_Orc.sbnLocalizarClick(Sender: TObject);
begin
Application.CreateForm(TFrm_Compras_Orc_Localizar,Frm_Compras_Orc_Localizar);
Frm_Compras_Orc_Localizar.ShowModal;
if Frm_Compras_Orc_Localizar.mChave_Sel>0 then
   begin
   edt_chave.Text:=InttoStr(Frm_Compras_Orc_Localizar.mChave_Sel);
   edt_chaveExit(self);
   end;
FreeAndNil(Frm_Compras_Orc_Localizar);
end;
procedure TFrm_Compras_Orc.fBuscarValorDifal;
var
query_difal: TQuery;
begin
lbl_valor_difal.caption:='';
query_difal:=TQuery.Create(nil);
query_difal.databasename:=dm1.sg_assoc.databasename;
Query_Difal.sql.add('select sum(PF2DIFAL_VALOR) as total_difal from '
                   +' cadpf2 where PF2CHAVE='+fdeixanum(edt_chave.text)
                   +' and PF2LOTSEQ=0'
                   +' and PF2CODEMP='+Inttostr(codemp));
try
   query_difal.open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_difal,1307,'func Erro:'+e.Message ,'CADPF2');
   end;
   end;
if query_difal.fieldbyname('total_difal').asfloat>0 then
   begin
   lbl_valor_difal.caption:='Total do Difal '+Formatfloat(mcasas, query_difal.fieldbyname('total_difal').asfloat);
   end;
lbl_valor_difal.visible:=DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger<>3;

query_difal.close;
freeandnil(query_difal);


end;
procedure TFrm_Compras_Orc.sbnMaisDadosClick(Sender: TObject);
begin
if Panel_outros.Visible then
   begin
   sbnMaisDados.Caption:='+';
   Panel_outros.Visible:=false;

   end
else
   begin
   sbnMaisDados.Caption:='-';
   Panel_outros.Visible:=true;
   end;

end;

function TFrm_Compras_Orc.fLerFormaPag(pTipo: Integer): Boolean;
begin
lbl_restamFP.Caption:='';
Tb_pfor01_parc.Close;
Tb_pfor01_parc.SQL.Clear;
Tb_pfor01_parc.SQL.Add('SELECT PF1VCODEMP,PF1VCHAVE,PF1VLOTSEQ,'
                      +'PF1VDATAV,PF1VVALOR,PF1VCODIGO, PF1VPRAZO '
                      +', PF1VCODFP, PF1VNOMFP,0 AS PF1VQTDPARC,PF1VBAIXA '
                      +',PF1VDESCF,PF1VDTDESCF '
                      +',PF1V_ID_NEW,PF1V_ID_PF01_NEW '
                      +' FROM '+mtab_cadpf1v
                      +' where PF1VCODEMP=:CODEMP');
if ptipo=1 then
   Tb_pfor01_parc.ParamByName('CODEMP').AsInteger:=-9999
else
   Tb_pfor01_parc.ParamByName('CODEMP').AsInteger:=mCompras_GP.mPed1_Codemp;
if mtab_cadnov>0 then
   begin
   Tb_pfor01_parc.SQL.Add(' and PF1VCODNOV=:CODNOV  ');
   Tb_pfor01_parc.ParamByName('CODNOV').AsFloat     :=mtab_cadnov;
   end
else
   begin
   Tb_pfor01_parc.SQL.Add(' and PF1VCHAVE=:CHAVE '
             +' and PF1VLOTSEQ=:CHAVE_ANO ');
   Tb_pfor01_parc.ParamByName('CHAVE').AsInteger:=mCompras_GP.mped1_Chave;
   Tb_pfor01_parc.ParamByName('CHAVE_ANO').AsInteger:=mCompras_GP.mPed1_Chave_ano;
   end;
Tb_pfor01_parc.SQL.Add(' order by PF1VDATAV,PF1VCODIGO ');

try
   Tb_pfor01_parc.Open;
   result:=true;
except
   if fVerificaRedeAtiva(true) then
      begin
      ex_erroSql_Novo(Tb_pfor01_parc,221,'frm_venda_pre','CADPF1V');
      result:=false;
      exit;
      end
   else
      begin
      fFecharTudo(0);
      result:=false;
      exit;
      end;
   end;
if tb_pfor01_parc.IsEmpty then
   result:=false
else
   result:=true;
fSomarFPgto(0);
end;



function TFrm_Compras_Orc.fLimparCampos(pTipo: Integer): Boolean;
begin
edt_coddig.Clear;
edt_nomdig.CLEAR;
edt_datadig.Clear;
edt_horadig.Clear;


edt_codalt.Clear;
edt_nomalt.CLEAR;
edt_datalt.Clear;
edt_horaalt.Clear;

edt_codeve.Clear;
edt_nomeve.CLEAR;
edt_dateve.Clear;
edt_horaeve.Clear;

txt_MODO.Clear;
txt_Situacao.Clear;
lbl_restamFP.Caption:='';
edt_chave.Clear;
edt_datap.Clear;
edt_codCondPag.Clear;
edt_nomcond.Clear;
Memo_ObsPed.Clear;
edt_codfor.Clear;
edt_nomfor.Clear;
edt_codtra.Clear;
edt_numdup.Clear;
cb_gravardp.Checked:=true;
cb_gravardpEnter(Self);
edt_desd.Text:='A';

edt_outvdup.Clear;


edt_nomtra.Clear;
RGFRETEPC.ItemIndex:=0;
edt_siv_frete.clear;
edt_siv_dare.clear;
edt_siv_outros.clear;
edt_nfe_chave.clear;
cb_modelo.Itemindex:=29;
edt_datent.clear;
edt_datanf.clear;
edt_DtPrevEnt.Clear;
edt_DtPrevFat.Clear;
//cb_gravarnf.checked:=true;
cb_gravarDP.checked:=true;
cb_gravardpEnter(Self);


edt_serie.clear;



edt_numnf.Clear;
Tb_Pfor02_orc.Close;
tb_pfor02_orc.Close;

Tb_pfor01_parc.Close;
tb_pfor01_parc.Close;
edt_TotProdServ.Clear;
edt_qtditem.Clear;
edt_qtdund.Clear;
edt_descItens.Clear;
edt_totPromo.Clear;
edt_pDesc01.Clear;
edt_vlrdes_ped1_perc.Clear;
edt_desc_valor.Clear;

edt_perDesGer.Clear;
edt_TotDesGer.Clear;
edt_valseg.Clear;

edt_Imp_Imp_Aliq.Clear;
edt_Imp_Imp_Valor.Clear;

edt_valseg.Clear;
edt_valseg_icms_aliq.Clear;
edt_valseg_icms_valor.Clear;

edt_outdesp.Clear;
edt_outdesp_icms_aliq.Clear;
edt_outdesp_icms_valor.Clear;



edt_totipi.Clear;
edt_PIPIFRETE.Clear;
edt_IPIFRETE.Clear;


edt_percfrete.Clear;
edt_valfre.Clear;
edt_valfre_icms_aliq.Clear;
edt_valfre_icms_valor.Clear;

edt_bcicms.Clear;
edt_vlricms.Clear;


edt_bcicmsst.Clear;
edt_vlricmsst.Clear;
edt_bcPIS.Clear;
edt_vlrPIS.Clear;

edt_bcCOFINS.Clear;
edt_vlrCOFINS.Clear;

edt_totliq.Clear;


edt_codfp.Clear;
edt_nomfp.Clear;
CB_SIV_OUTROS_TIPO.ItemIndex:=CB_SIV_OUTROS_TIPO_PADRAO.ItemIndex;
edt_siv_frete.Clear;
edt_siv_dare.Clear;
edt_siv_outros.Clear;



mped_Alterou_Cab:=false;


mCompras_GP.fLimparCampos(0);

FLimparValoresDigitados;

CB_TIPO.ITEMINDEX:=mCompras_GP.mped1_tipo;
result:=true;



end;



function TFrm_Compras_Orc.fBloquearLiberarCampos(pLibera: Boolean): Boolean;

begin
if pLibera then
   Timer_alteracao.enabled:=true
else
   Timer_alteracao.enabled:=false;

edt_chave.Enabled:=iif(pLibera,false,true);

edt_datap.Enabled:=pLibera;
edt_codfor.Enabled:=pLibera;
Memo_ObsPed.ReadOnly:=pLibera=false;
edt_codCondPag.Enabled:=pLibera;
edt_codfp.Enabled:=pLibera=true;
CB_CASASD.Enabled:=pLibera=true;
CB_TIPO.Enabled:=pLibera=true;
CB_FILIAL.Enabled:=pLibera=true;
edt_TotProdServ.Enabled:=pLibera;
edt_pDesc01.Enabled:=pLibera;
edt_desc_valor.Enabled:=pLibera;
edt_Imp_Imp_Aliq.Enabled:=pLibera;
edt_Imp_Imp_Valor.Enabled:=pLibera;
edt_valseg.Enabled:=pLibera;
edt_valseg_icms_aliq.Enabled:=pLibera;
edt_valseg_icms_valor.Enabled:=pLibera;
edt_outdesp.Enabled:=pLibera;
edt_outdesp_icms_aliq.Enabled:=pLibera;
edt_outdesp_icms_valor.Enabled:=pLibera;
edt_totipi.Enabled:=pLibera;
edt_valfre.Enabled:=pLibera;
edt_valfre_icms_aliq.Enabled:=pLibera;
edt_valfre_icms_valor.Enabled:=pLibera;
edt_PIPIFRETE.Enabled:=pLibera;
edt_IPIFRETE.Enabled:=pLibera;
edt_bcicms.Enabled:=pLibera;
edt_vlricms.Enabled:=pLibera;
edt_bcicmsst.Enabled:=pLibera;
edt_vlricmsst.Enabled:=pLibera;
edt_bcPIS.Enabled:=pLibera;
edt_vlrPIS.Enabled:=pLibera;
edt_bcCOFINS.Enabled:=pLibera;
edt_vlrCOFINS.Enabled:=pLibera;
edt_percfrete.Enabled:=pLibera;







edt_descItens.Enabled:=pLibera;
edt_totPromo.Enabled:=pLibera;
edt_vlrdes_ped1_perc.Enabled:=pLibera;
edt_perDesGer.Enabled:=pLibera;
edt_TotDesGer.Enabled:=pLibera;



edt_codtra.Enabled:=pLibera;
RGFRETEPC.Enabled:=pLibera=true;
edt_NFE_CHAVE.Enabled:=plibera;
edt_NUMNF.Enabled:=plibera;
edt_SERIE.Enabled:=plibera;
edt_DATENT.Enabled:=plibera;
edt_DATANF.Enabled:=plibera;
edt_DtPrevEnt.Enabled:=pLibera;
edt_DtPrevFat.Enabled:=pLibera;

edt_SIV_FRETE.Enabled:=plibera;
edt_SIV_DARE.Enabled:=plibera;
edt_SIV_OUTROS.Enabled:=plibera;
CB_MODELO.Enabled:=pLibera=true;
//cb_gravarnf.Enabled:=pLibera=true;


CB_GRAVARDP.Enabled:=pLibera=true;
edt_NUMDUP.Enabled:=pLibera;
edt_DESD.Enabled:=pLibera;
edt_OUTVDUP.Enabled:=pLibera;










//DBGrid_itens.ReadOnly:=iif(pLibera,false,true);

result:=true;



end;



procedure TFrm_Compras_Orc.bbExcluir_itemClick(Sender: TObject);
begin
if sbnGravar.Enabled=false then
   begin
   abort;
   exit;
   end;

if (not tb_pfor02_orc.Active) or (tb_pfor02_orcPF2QTDP.IsNull) then
   exit;
if Application.MessageBox(pchar('Quer Realmente Excluir '+tb_pfor02_orcPF2CODPRO_INT.AsString+'-'+tb_pfor02_orcNOMPRO_INT.AsString+' Quantidade: '+formatFloat(mcasqtd, tb_pfor02_orcPF2QTDP.Value)),'',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
tb_pfor02_orc.Delete;
end;

procedure TFrm_Compras_Orc.bbExluir_FPClick(Sender: TObject);
begin
if sbnGravar.Enabled=false then
   exit;
if (not tb_pfor01_parc.Active) or (tb_pfor01_parcPF1VVALOR.IsNull) then
   exit;
if Application.MessageBox(pchar('Quer Realmente Excluir Valor: '+formatFloat(mcasas, tb_pfor01_parcPF1VVALOR.Value)),'',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
tb_pfor01_parc.Delete;
end;

procedure TFrm_Compras_Orc.bbSairClick(Sender: TObject);
begin
close;
end;

function TFrm_Compras_Orc.fSomarFPgto(pTipo:Integer): Real;
var
Query: TQuery;
begin

Query:=TQuery.Create(nil);
Query.DatabaseName:='SG_ASSOC';
Query.Close;
Query.SQL.Clear;
Query.SQL.Add('Select sum(PF1VVALOR) as valor, count(*) as qtd from '+mtab_cadpf1v
                          +' where PF1VCODEMP=:CODEMP '
                          +' and   PF1VCHAVE=:CHAVE '
                          +' and   PF1VLOTSEQ=:CHAVE_ANO ');
Query.ParamByName('CODEMP').AsInteger:=mCompras_GP.mPed1_Codemp;
Query.ParamByName('CHAVE').AsInteger:=mCompras_GP.mped1_Chave;
Query.ParamByName('CHAVE_ANO').AsInteger:=mCompras_GP.mPed1_Chave_ano;
try
   Query.Open;
   result:=Query.Fields[0].AsFloat;
   if Query.Fields[0].AsInteger<2 then
      lbl_restamFP.Caption:='Exite '+Query.Fields[1].AsString+' Titulo. '
   else
      lbl_restamFP.Caption:='Exitem '+Query.Fields[1].AsString+' Titulos. ';
   mFpgto_VlrFalta:=0;
   if Arredonda(Query.Fields[0].AsFloat,2)>Arredonda(ValFloat(edt_totliq.Text)+ValFloat(edt_outvdup.Text)+ValFloat(edt_siv_frete.Text),2) then
      begin
      mFpgto_VlrFalta:=Query.Fields[0].AsFloat-ValFloat(edt_totliq.Text)-ValFloat(edt_outvdup.Text)-ValFloat(edt_siv_frete.Text);
      lbl_restamFP.Caption:=lbl_restamFP.Caption+'Passam '+FormatFloat(mCasas,Query.Fields[0].AsFloat-ValFloat(edt_totliq.Text)-ValFloat(edt_outvdup.Text)-ValFloat(edt_siv_frete.Text));
      lbl_restamFP.Font.Color:=clRed;
      end
   else if Arredonda(Query.Fields[0].AsFloat,2)<Arredonda(ValFloat(edt_totliq.Text)+ValFloat(edt_outvdup.Text)+ValFloat(edt_siv_frete.Text),2) then
      begin
      lbl_restamFP.Caption:=lbl_restamFP.Caption+'Restam '+FormatFloat(mCasas,ValFloat(edt_outvdup.Text)+ValFloat(edt_siv_frete.Text)+ValFloat(edt_totliq.Text)-Query.Fields[0].AsFloat);
      mFpgto_VlrFalta :=ValFloat(edt_outvdup.Text)+ValFloat(edt_siv_frete.Text)+ValFloat(edt_totliq.Text)-Query.Fields[0].AsFloat;
      lbl_restamFP.Font.Color:=clWindowText;
      end;
except
   result:=0;
   if not fVerificaRedeAtiva(true) then
      begin
      end
   else
      begin
      ex_erroSql_Novo(Query,1642,'_lerarq','CADPF1V');
      end;
   end;
FreeAndNil(query);
end;




procedure TFrm_Compras_Orc.DBGrid_fpgtoColExit(Sender: TObject);
var
mDataRef: tDatetime;
begin
if tb_pfor01_parc.State in [dsEdit,dsInsert] then
   begin
   if DBGrid_fpgto.SelectedField=tb_pfor01_parcPF1VCODFP then
      begin
      if fLCadFP(0,tb_pfor01_parcPF1VCODFP.Asstring,'') then
         tb_pfor01_parcPF1VNOMFP.AsString:=DM1.Tb_FPFPDESC.AsString
      else
         begin
         MessageDlg('Forma de Pagamento '+tb_pfor01_parcPF1VCODFP.AsString+' não encontrada!',mtWarning,[mbOk],0);
         DBGrid_fpgto.SelectedField:=tb_pfor01_parcPF1VCODFP;
         DBGrid_fpgto.SetFocus;
         abort;
         end;
      end;
   if DBGrid_fpgto.SelectedField=tb_pfor01_parcPF1VPRAZO then
      begin
      if (mAnt_Fpgto_prazo<>tb_pfor01_parcPF1VPRAZO.AsInteger) then
         begin
         if mCompras_GP.mPed1_DataNF<=pdatanula then
            begin
            if mCompras_GP.mPed1_Datap<=pdatanula then
               mCompras_GP.mPed1_Datap:=date;
            mDataRef:=mCompras_GP.mPed1_Datap;
            end
         else
            mDataRef:=mCompras_GP.mPed1_DataNF;
         Tb_Pfor01_ParcPF1VDATAV.AsDateTime:=mDataRef+tb_pfor01_parcPF1VPRAZO.AsInteger;
         end;
      end;
   end;

end;

procedure TFrm_Compras_Orc.DBGrid_fpgtoExit(Sender: TObject);
begin
if tb_pfor01_parc.State in [dsEdit,dsInsert] then
   begin
   if (tb_pfor01_parcPF1VVALOR.AsFloat>0)  then
      tb_pfor01_parc.Post
   else
      tb_pfor01_parc.Cancel;
   end;
fVerificarOrdemFPgto(0);

end;

procedure TFrm_Compras_Orc.DBGrid_fpgtoKeyPress(Sender: TObject; var Key: Char);
begin


if (key in ['0'..'9']) and
   (DBGrid_fpgto.SelectedField=tb_pfor01_parcPF1VVALOR) and
   (tb_pfor01_parc.State in [dsBrowse]) then
   begin
   if tb_pfor01_parcPF1VVALOR.IsNull then
      begin
      tb_pfor01_parc.Append;
     end;
   end
else if (DBGrid_fpgto.SelectedField=tb_pfor01_parcPF1VCODFP) and
     ( (key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%')) then
   begin
   if not (tb_pfor01_parc.State in [dsEdit,dsInsert]) then
      if tb_pfor01_parcPF1VVALOR.IsNull then
         tb_pfor01_parc.Append
      else
         tb_pfor01_parc.edit;
   tb_pfor01_parcPF1VCODFP.AsInteger:=valint(fChamafpag(0,'_compra_orc',key));
   edt_codfpExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Compras_Orc.DBGrid_itensColEnter(Sender: TObject);
var
pRect:TRect;
begin


{
if sbnGravar.Enabled then
   begin
   GetWindowRect(DBGrid_itens.Handle,pRect);
   if DBGrid_itens.SelectedField=tb_pfor02_orcPF2CODPRO then
      fApresentaHint( 'Digite o Codigo do Produto ou Pressione F2-p/Consultar',pRect.Top,pRect.Left);
   end;
}
if DBGrid_itens.SelectedField=tb_pfor02_orcVALOR_TOTAL then
    mAnt_VlrTot:=tb_pfor02_orcVALOR_TOTAL.Asfloat;

end;

procedure TFrm_Compras_Orc.DBGrid_itensColExit(Sender: TObject);
var
mCst: String;
begin
{if Assigned(HintWindow) then
HintWindow.ReleaseHandle;
}
if tb_pfor02_orc.State in [dsEdit,dsInsert] then
   begin
   if DBGrid_itens.SelectedField=tb_pfor02_orcPF2QTDP then
      begin
      if tb_pfor02_orcPF2QTDP.IsNull then
         begin
         DBGrid_itens.SelectedField:=tb_pfor02_orcPF2QTDP;
         DBGrid_itens.SetFocus;
         abort;
         end
      else if Log_TipoLote=1 then
         begin
         fBuscarLotes(tb_pfor02_orcPF2CODPRO_INT.AsString,tb_pfor02_orcPF2QTDP.AsFloat);
         end;
      end
   else if DBGrid_itens.SelectedField=tb_pfor02_orcPF2CBENEF then
      begin
      if trim(tb_pfor02_orcPF2CBENEF.AsString)<>'' then
         begin
         if not fLerCadCbenef(Tb_PFOR02_orcPF2CBENEF.AsString) then
            begin
            MessageDlg('Código do Beneficio '+tb_pfor02_orcPF2CBENEF.AsString+' não Cadastrado!',mtWarning,[mbOk],0);
            DBGrid_itens.SelectedField := tb_pfor02_orcPF2CBENEF;
            abort;
            end;
         end;
      end
   else if DBGrid_itens.SelectedField=tb_pfor02_orcPF2CODPRO_INT then
      begin
      if tb_pfor02_orcPF2CODPRO_INT.AsString='' then
         begin
         DBGrid_itens.SelectedField:=tb_pfor02_orcPF2CODPRO_INT;
         DBGrid_itens.SetFocus;
         abort;
         end
      else
         begin
         if not flcadpro(1,0,0,tb_pfor02_orcPF2CODPRO_INT.AsString) then
            begin
            if fSonumero(tb_pfor02_orcPF2CODPRO_INT.AsString)>0 then
               tb_pfor02_orcPF2CODPRO_INT.AsString:=FloatToStr(fAchaCodigoOri(tb_pfor02_orcPF2CODPRO_INT.AsString));
            end;
            
         if flcadpro(1,0,0,tb_pfor02_orcPF2CODPRO_INT.AsString) then
            begin
            if DM1.Tb_ProPDUCPR.AsFloat>0 then
               tb_pfor02_orcPF2PU_INT.Value:=Arredonda( DM1.Tb_ProPDUCPR.Value , mCompras_GP.mPed1_QtdDec)
            else
               tb_pfor02_orcPF2PU_INT.Value:=Arredonda( DM1.Tb_ProPDPRECO1.Value , mCompras_GP.mPed1_QtdDec);
            tb_pfor02_orcNOMPRO_INT.Value  :=DM1.Tb_ProPDNOME.Value;
            tb_pfor02_orcUNDPRO_INT.Value  :=DM1.Tb_ProPDUND.Value;

            if muf_for=DM1.Tb_EmpUF.AsString then
               tb_pfor02_orcPF2SIT.Value  :=DM1.Tb_ProPDFIS_ORIGEM.Value+DM1.Tb_ProPDFIS_CST_ICMS_EST_REV.AsString
            else
               tb_pfor02_orcPF2SIT.Value  :=DM1.Tb_ProPDFIS_ORIGEM.Value+DM1.Tb_ProPDFIS_CST_ICMS_INT_REV.AsString;

            if (fsonumero(DM1.Tb_ProPDCODNCM.AsString)>0) and (fsonumero(DM1.Tb_ProPDCODNCM.AsString)<>12345678) then
               tb_pfor02_orcPF2CODNCM.Value:=DM1.Tb_ProPDCODNCM.Value;
            mCst:=copy(FormatFloat('000', valint(tb_pfor02_orcPF2SIT.Value)),2,1);
            if mCst='4' then
               tb_pfor02_orcPF2CFO.Value:=mped1_cfop_isen
            else if (mCst='1') or (mcst='6') then
               tb_pfor02_orcPF2CFO.Value:=mped1_cfop_st
            else
               tb_pfor02_orcPF2CFO.Value:=mped1_cfop_nor;


            tb_pfor02_orcPF2CBS_CST.Value   :=DM1.Tb_ProPDCBS_CST.AsString;
            tb_pfor02_orcPF2CODCLASSTRIB.Value   :=DM1.Tb_ProPDCODCLASSTRIB.AsString;

             if DM1.Tb_ProPDSTATUS.Value=8 then
                begin
                MessageDlg('Produto Com Venda Bloqueada pelo Cadastro de Produto!',mtWarning,[mbOk],0);
                DBGrid_itens.SetFocus;
                abort;
                end
              else if (DM1.Tb_ProPDSTATUS.AsInteger=9) and (CB_TIPO.ItemIndex<>2)  then
                 begin
                 MessageDlg('Produto inativo não é permitido fazer pedido!!!!'
                              ,mtWarning,[mbOk],0);
                 DBGrid_itens.SetFocus;
                 abort;
                 end;

            if (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=1) or (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=2) then
               begin
               if ((mCst='1') or (mcst='6')) then
                  begin
                  if trim(mcst_csosn_ant_ret)<>'' then
                      tb_pfor02_orcPF2CSOSN.Value:=mcst_csosn_ant_ret;
                  if tb_pfor02_orcPF2CFO.AsInteger=0 then
                     tb_pfor02_orcPF2CFO.AsInteger:=valint(mcfop_ant_ret);
                  end
               else
                  begin
                  if trim(mcst_csosn_ant_trib)<>'' then
                      tb_pfor02_orcPF2CSOSN.Value:=mcst_csosn_ant_trib;
                  if tb_pfor02_orcPF2CFO.AsInteger=0 then
                     tb_pfor02_orcPF2CFO.AsInteger:=valint(mcfop_ant_trib);
                  end;
               end
            else
               begin
               if ((mCst='1') or (mcst='6')) then
                  begin
                  if  trim(mcst_csosn_ant_ret)<>'' then
                      tb_pfor02_orcPF2SIT.Value:=mcst_csosn_ant_ret;
                  if tb_pfor02_orcPF2CFO.AsInteger=0 then
                     tb_pfor02_orcPF2CFO.AsInteger:=valint(mcfop_ant_ret);

                  end

               else
                  begin
                  if trim(mcst_csosn_ant_trib)<>'' then
                      tb_pfor02_orcPF2SIT.Value:=mcst_csosn_ant_trib;
                  if tb_pfor02_orcPF2CFO.AsInteger=0 then
                     tb_pfor02_orcPF2CFO.AsInteger:=valint(mcfop_ant_trib);

                  end;
               end;


            tb_pfor02_orcPF2ICMS_PERC.AsFloat  :=0;
            tb_pfor02_orcPF2ICMS_PRED.AsFloat :=0;
            tb_pfor02_orcPF2ICMSSN_PERC.AsFloat:=0;
            tb_pfor02_orcPF2ST_IVA.AsFloat     :=0;
            tb_pfor02_orcPF2ST_PERCRED.AsFloat   :=0;
            tb_pfor02_orcPF2ST_ICMSCRED.AsFloat:=0;
            tb_pfor02_orcPF2ST_ICMSDEB.AsFloat :=0;
            tb_pfor02_orcPF2MODBCST.AsInteger  :=mPed_MobBcST;
            if (mPed_Cli_ICMSST='S') and
              ( (tb_pfor02_orcPF2MODBCST.AsInteger=0) or
                (tb_pfor02_orcPF2MODBCST.AsInteger=5) )
                and (mcst[1] in ['1','6','3','7']) then
               begin
               if DM1.Tb_ProPDPMC.AsFloat=0 then
                  begin
                  verteclado(0);
                  MessageDlg('o Produto '+DM1.Tb_ProPDCODPRO.AsString+'-'+DM1.Tb_ProPDNOME.AsString
                           +' Não Possui o PMC/Pauta ST, entre no cadastro de Produto e coloque!',mtWarning,[mbOk],0);
                  DBGrid_itens.SetFocus;
                  abort;
                  end
               else
                  tb_pfor02_orcPF2PRECO_MAXCONS.AsFloat:=DM1.Tb_ProPDPMC.AsFloat;
               end;

            if mGer_Emp_UF=mPed_UF_Cli then
               begin
               tb_pfor02_orcPF2ICMS_PERC.AsFloat  :=DM1.Tb_ProPDICMSCRED.AsFloat;
               tb_pfor02_orcPF2ICMS_PRED.AsFloat  :=0;
               tb_pfor02_orcPF2ICMSSN_PERC.AsFloat:=0;
//               tb_pfor02_orcPF2ICMSSN_PERC.AsFloat:=mGer_Emp_IcmsCred_SN;

//               if (mGer_Emp_CRT=1) and (mCst<>'4') then
//                  tb_pfor02_orcPF2ICMSSN_PERC.AsFloat:=mGer_Emp_IcmsCred_SN;

               tb_pfor02_orcPF2ST_IVA.AsFloat     :=0;
               tb_pfor02_orcPF2ST_PERCRED.AsFloat   :=0;
               tb_pfor02_orcPF2ST_ICMSCRED.AsFloat:=0;
               tb_pfor02_orcPF2ST_ICMSDEB.AsFloat :=0;
               tb_pfor02_orcPF2MODBCST.AsInteger  :=mPed_MobBcST;
               if tb_pfor02_orcPF2ICMS_PERC.AsFloat=0 then
                  begin
                  if (mCst<>'4')  then
                     begin
                     if mUF_AliqDebSt>0 then
                       tb_pfor02_orcPF2ICMS_PERC.AsFloat:=mUF_AliqDebSt;
                     end;
                  end;
               if tb_pfor02_orcPF2ICMS_PRED.AsFloat=0 then
                  begin
                  if (mCst<>'4')  then
                     begin
                     if mUF_Red_IcmsSt>0 then
                       tb_pfor02_orcPF2ICMS_PRED.AsFloat:=mUF_Red_IcmsSt;
                     end;
                  end;
               if tb_pfor02_orcPF2ST_IVA.AsFloat=0 then
                  begin
                  if (mCst='1') or (mcst='6') or (mCst='3') or (mcst='7') then
                     begin
                     if mReg_IcmsSTIVA>0 then
                       tb_pfor02_orcPF2ST_IVA.AsFloat:=mReg_IcmsSTIVA;
                     end;
                  end;
               if tb_pfor02_orcPF2ST_PERCRED.AsFloat=0 then
                  begin
                  if (mCst='1') or (mcst='6') or (mCst='3') or (mcst='7') then
                     begin
                     if mReg_IcmsSTPRed>0 then
                       tb_pfor02_orcPF2ST_PERCRED.AsFloat:=mReg_IcmsSTPRed;
                     end;
                  end;

               if tb_pfor02_orcPF2ST_ICMSDEB.AsFloat=0 then
                  begin
                  if (mCst='1') or (mcst='6') or (mCst='3') or (mcst='7') then
                     begin
                     if mUF_AliqDebSt>0 then
                       tb_pfor02_orcPF2ST_ICMSDEB.AsFloat:=mUF_AliqDebSt;
                     end;
                  end;

               if tb_pfor02_orcPF2ST_ICMSCRED.AsFloat=0 then
                  begin
                  if (mCst='1') or (mcst='6') or (mCst='3') or (mcst='7') then
                     begin
                     if mReg_AliqCredST>0 then
                       tb_pfor02_orcPF2ST_ICMSCRED.AsFloat:=mReg_AliqCredST;
                     end;
                  end;
               end
            end
         else
            begin
            MessageDlg('Produto '+tb_pfor02_orcPF2CODPRO_INT.AsString+' não encontrado!',mtWarning,[mbOk],0);
            DBGrid_itens.SelectedField:=tb_pfor02_orcPF2CODPRO_INT;
            tb_pfor02_orcPF2CODPRO_INT.Value:=0;
            DBGrid_itens.SetFocus;
            abort;
            end;
         end;
      end;
   if (tb_pfor02_orcPF2QTDP.AsFloat>0) and (tb_pfor02_orcPF2PU_INT.AsFloat>0) then
      begin

      tb_pfor02_orcVALOR_TOTAL.AsFloat:=Arredonda(  (tb_pfor02_orcPF2QTDP.AsFloat*tb_pfor02_orcPF2PU_INT.AsFloat),2);
      end
   else
      begin
      tb_pfor02_orcVALOR_TOTAL.AsFloat:=0;
      end;
   if DBGrid_itens.SelectedField<>tb_pfor02_orcVALOR_TOTAL then
      mAnt_VlrTot:=tb_pfor02_orcVALOR_TOTAL.AsFloat;
   fCalcularPfor02(0);
   end;



end;

procedure TFrm_Compras_Orc.DBGrid_itensExit(Sender: TObject);
begin
if Assigned(HintWindow) then
HintWindow.ReleaseHandle;

if tb_pfor02_orc.State in [dsEdit,dsInsert] then
   begin
   if not DBMemo1.Focused then
      begin
      if length(tb_pfor02_orcPF2CODPRO_INT.AsString)>0 then
         tb_pfor02_orc.Post
      else
         tb_pfor02_orc.Cancel;
      end;
   end;
end;

procedure TFrm_Compras_Orc.DBGrid_itensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin


if (key=113) and
  (DBGrid_itens.SelectedField=tb_pfor02_orcPF2CODPRO_INT) then
   begin
   if not (tb_pfor02_orc.State in [dsEdit,dsInsert]) then
      begin
      if tb_pfor02_orcPF2CODPRO_INT.IsNull then
         tb_pfor02_orc.Append
      else
         tb_pfor02_orc.Edit;
      end;
   tb_pfor02_orcPF2CODPRO_INT.AsString:=fChamaPro(0,'_venda','');
   end;

end;

procedure TFrm_Compras_Orc.DBGrid_itensKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['0'..'9']) and
   (DBGrid_itens.SelectedField=tb_pfor02_orcPF2CODPRO_INT) and
   (tb_pfor02_orc.State in [dsBrowse]) then
   begin
   if tb_pfor02_orcPF2CODPRO_INT.IsNull then
      begin
      tb_pfor02_orc.Append;
     end;
   end
else if ((key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%'))
   and (DBGrid_itens.SelectedField=tb_pfor02_orcPF2CODPRO_INT) then
   begin
   if not (tb_pfor02_orc.State in [dsEdit,dsInsert]) then
      begin
      if tb_pfor02_orcPF2CODPRO_INT.IsNull then
         tb_pfor02_orc.Append
      else
         tb_pfor02_orc.Edit;
      end;
   tb_pfor02_orcPF2CODPRO_INT.AsString:=fChamaPro(0,'_compra',key);
   if (tb_pfor02_orcPF2CODPRO_INT.AsString)<>'' then
      begin
      DBGrid_itens.SelectedField:=tb_pfor02_orcPF2QTDP;
      end;
   end;



end;

procedure TFrm_Compras_Orc.DBGrid_itensMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//Para adicionar um hint numa determinada linha e/ou coluna de um DBGrid
{Coloque este comando no evento OnMouseMove do DBGrid
Obs: X representa o nº da coluna (column) e Y representa o nº da linha (row)}
//if (DBGrid_CADPRO_KIT.MouseCoord(X, Y).X in [2]) and (DBGrid_CADPRO_KIT.MouseCoord(X, Y).Y in [5]) then
{
if (DBGrid_itens.MouseCoord(X, Y).X in [0])  then
   begin
   DBGrid_itens.Hint := 'Digite o Codigo do Produto '+#13
                  +'ou Comece a Digitar o Nome Para Consultar';
   end
else if (DBGrid_itens.MouseCoord(X, Y).X in [3])  then
   begin
   DBGrid_itens.Hint := 'Digite o Quantidade de Itens que Compoe o KIT';
   end
else
   begin
   DBGrid_itens.Hint := 'Para Excluir Click o Botão '+#13+'do Lado Direito do Mouse';
   end
}



end;

procedure TFrm_Compras_Orc.DBMemo1Exit(Sender: TObject);
begin

if tb_pfor02_orc.State in [dsEdit,dsInsert] then
   begin
   if not DBGrid_itens.Focused then
      begin
      if length(tb_pfor02_orcPF2CODPRO_INT.AsString)>0 then
         tb_pfor02_orc.Post
      else
         tb_pfor02_orc.Cancel;
      end;
   end;
end;

procedure TFrm_Compras_Orc.edt_bcicmsChange(Sender: TObject);
begin
if (edt_bcicms.Modified) and (mCompras_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Compras_Orc.edt_bcicmsExit(Sender: TObject);
begin
edt_bcicms.Text:=Formatfloat(mcasas, valfloat(edt_bcicms.Text));

mCompras_GP.mPed1_Icms_Base:=valfloat(edt_bcicms.Text);

if mAnt_ICMS_Base<>mCompras_GP.mPed1_Icms_Base then
   begin
   mCompras_GP.mPed1_VD_ICMS_BASE:=mCompras_GP.mPed1_Icms_Base;
   mCompras_GP.mPed1_Icms_Base:=ValFloat(edt_bcicms.Text);
   fRecalcularPedido(3,'S');
   end;

end;

procedure TFrm_Compras_Orc.edt_bcicmsstChange(Sender: TObject);
begin
if (edt_bcicmsst.Modified) and (mCompras_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Compras_Orc.edt_bcicmsstExit(Sender: TObject);
begin
edt_bcicmsst.Text:=Formatfloat(mcasas, valfloat(edt_bcicmsst.Text));
mCompras_GP.mPed1_ST_base:=valfloat(edt_bcicmsst.Text);
if mAnt_ICMSST_Base<>mCompras_GP.mPed1_ST_base then
   begin
   mCompras_GP.mPed1_VD_ICMSST_BASE:=mCompras_GP.mPed1_ST_base;
   fRecalcularPedido(3,'S');
   mped_Alterou_Cab:=true;
   end;


end;

procedure TFrm_Compras_Orc.edt_chaveExit(Sender: TObject);
begin
if (valint(edt_chave.Text)>0) OR (mtab_cadnov>0) then
   begin
   mlocalizando_pedido:=true;
   if not fLerPedidoGeral(codemp,valint(edt_chave.Text),0) then
      begin
      edt_chave.Text:='';
      edt_chave.SetFocus;
      end
   else
      begin
      fAtualizarBotoes(1);
      end;
   mlocalizando_pedido:=false;
   tb_pfor02_orc.First;
   end;
end;

procedure TFrm_Compras_Orc.edt_codforChange(Sender: TObject);
begin
if (edt_codfor.Modified) and (mCompras_GP.mped1_Chave>0)  then
   begin
   mped_Alterou_Cab:=true;
   if (not tb_pfor02_orc.IsEmpty) then
      mCompras_GP.mPed1_AltDup:='N';

   end;

end;

procedure TFrm_Compras_orc.fPegarDadosDoCadastroEstado(pUf: String);
begin

mCompras_GP.mPed1_IcmsSobreIPI:=false;

if flqr1('PICMSIPI','P','CADUF','C','PUF',Trim(pUf)) then
   begin
   mCompras_GP.mPed1_IcmsSobreIPI:=DM1.Query1.fieldbyname('PICMSIPI').asinteger=1;
   end

end;


procedure TFrm_Compras_Orc.edt_codforExit(Sender: TObject);
var
  msg_cq: String;
  x_grid: Integer;
begin
msg_cq:='';
edt_codfor.Text:=fdeixanum(edt_codfor.Text);
edt_nomfor.Text:='';
if Trim(edt_codfor.Text)='' then
   exit;
if not flcadfor(1,0,edt_codfor.Text) then
   begin
   if edt_codfor.Enabled then
      begin
      verteclado(0);
      MessageDlg('Fornecedor não Cadastrado!',mtWarning,[mbOk],0);
      edt_codfor.SetFocus;
      exit;
      end;
   end;
muf_for:=DM1.Tb_ForFUF.AsString;


if (DM1.Tb_ForFSITFOR.AsInteger=1) or (DM1.Tb_ForFSITFOR.AsInteger=2) then
  begin
  MessageDlg('Fornecedor Bloqueado!',mtWarning,[mbOk],0);
  edt_codfor.SetFocus;
  exit;
  end;

fPegarDadosDoCadastroEstado(muf_for);

if Copy(mpseg,1,2)='01' then
  begin
  Application.createform(TFrm_Aviso, Frm_Aviso);
  Frm_Aviso.RichEdit1.Lines.Clear;
  if trim(DM1.Tb_ForFCODBLOQ.AsString)<>'' then
    if (DM1.Tb_ForFCODBLOQ.AsInteger=1) then
      Frm_Aviso.RichEdit1.Lines.add('Fornecedor Desqualificado.'+#13+'Motivo '+DM1.TB_FORFMOTBLOQ.AsString);
  if trim(DM1.Tb_ForFNUMAFE.AsString)<>'' then
    if ((DM1.Tb_ForFDTVAFE.AsDateTime>=StrToDate('01/01/1900')) and (DM1.Tb_ForFDTVAFE.AsDateTime<Now)) then
      Frm_Aviso.RichEdit1.Lines.add('Data AFE Anvisa Venc. '+FormatDateTime('dd/mm/yyyy',DM1.Tb_ForFDTVAFE.AsDateTime));
  if trim(DM1.Tb_ForFVSANIT.AsString)<>'' then
    if ((DM1.Tb_ForFDTVSANIT.AsDateTime>=StrToDate('01/01/1900')) and (DM1.Tb_ForFDTVSANIT.AsDateTime<Now)) then
      Frm_Aviso.RichEdit1.Lines.add('Data Alvara Sanitário Venc. '+FormatDateTime('dd/mm/yyyy',DM1.Tb_ForFDTVSANIT.AsDateTime));
  if trim(DM1.Tb_ForFNUMAE.AsString)<>'' then
    if ((DM1.Tb_ForFDTVAE.AsDateTime>=StrToDate('01/01/1900')) and (DM1.Tb_ForFDTVAE.AsDateTime<Now)) then
      Frm_Aviso.RichEdit1.Lines.add('Data AE Anvisa Venc. '+FormatDateTime('dd/mm/yyyy',DM1.Tb_ForFDTVAE.AsDateTime));
  if trim(DM1.Tb_ForFNUMCRT.AsString)<>'' then
    if ((DM1.Tb_ForFDTVCRT.AsDateTime>=StrToDate('01/01/1900')) and (DM1.Tb_ForFDTVCRT.AsDateTime<Now)) then
      Frm_Aviso.RichEdit1.Lines.add('Data CRT Venc. '+FormatDateTime('dd/mm/yyyy',DM1.Tb_ForFDTVCRT.AsDateTime));
  if trim(DM1.Tb_ForFNUMCBPF.AsString)<>'' then
    if ((DM1.Tb_ForFDTVCBPF.AsDateTime>=StrToDate('01/01/1900')) and (DM1.Tb_ForFDTVCBPF.AsDateTime<Now)) then
      Frm_Aviso.RichEdit1.Lines.add('Data CBPF Venc. '+FormatDateTime('dd/mm/yyyy',DM1.Tb_ForFDTVCBPF.AsDateTime));
  if trim(DM1.Tb_ForFNUMCC.AsString)<>'' then
    if ((DM1.Tb_ForFDTVCC.AsDateTime>=StrToDate('01/01/1900')) and (DM1.Tb_ForFDTVCC.AsDateTime<Now)) then
      Frm_Aviso.RichEdit1.Lines.add('Data Cart. Cred. Venc. '+FormatDateTime('dd/mm/yyyy',DM1.Tb_ForFDTVCC.AsDateTime));

  if (Frm_Aviso.RichEdit1.Text<>'') then
    begin
    verteclado(0);
    Frm_Aviso.FormStyle:=fsNormal;
    Frm_Aviso.Visible:=false;
    fAtualizaForm(0);
    Frm_Aviso.ShowModal;
    end;
  Frm_Aviso.Free;
  Frm_Aviso:=nil;
  end;             

mped1_cfop_nor :=DM1.Tb_ForFCFOTRI.AsInteger;
mped1_cfop_isen:=DM1.Tb_ForFCFOTRI.AsInteger;
mped1_cfop_st  :=DM1.Tb_ForFCFOST.AsInteger;

if mped1_cfop_nor=0 then
   begin
   if  muf_for=dm1.Tb_EmpUF.AsString then
      mped1_cfop_nor:=1102
   else
      mped1_cfop_nor:=2102;
   end;
if mped1_cfop_isen=0 then
   mped1_cfop_isen:=mped1_cfop_nor;


if mped1_cfop_st=0 then
   begin
   if muf_for=dm1.Tb_EmpUF.AsString then
      mped1_cfop_st:=1403
   else
      mped1_cfop_st:=2403;
   end;


if DM1.Tb_ForFTCALC.AsInteger=1 then
   mPed_MobBcST :=4
else
   mPed_MobBcST :=0;


mUF_AliqDebSt   :=DM1.tb_forFICMSD.AsFloat;
mUF_Red_IcmsSt  :=DM1.tb_forFRBCIR.AsFloat;
mReg_IcmsSTIVA  :=DM1.Tb_ForFIVAINA.AsFloat;
mReg_IcmsSTPRed :=DM1.tb_forFRBCIR.AsFloat;
mUF_AliqDebSt   :=DM1.tb_forFICMSD.AsFloat;
mReg_AliqCredST :=DM1.tb_forFICMSC.AsFloat;

// mped1_ cfop_st  :=DM1.Tb_ForFCFOST.AsInteger;



edt_nomfor.Text :=DM1.Tb_ForFRAZAO.AsString;
mPed_UF_Cli     :=DM1.Tb_ForFUF.AsString;
mCompras_GP.mPed1_Codfor:=valfloat(edt_codfor.Text);
mFor_CRT:=DM1.Tb_ForFCRT.AsInteger;
mFor_UF :=DM1.Tb_ForFUF.AsString;
if mFor_CRT in [1] then
   begin
   for x_grid:=0 to DBGrid_itens.Columns.Count-1 do
      begin
      if DBGrid_itens.Columns[x_grid].Field=tb_pfor02_orcPF2SIT then
         DBGrid_itens.Columns[x_grid].Visible:=false
      else if DBGrid_itens.Columns[x_grid].Field=tb_pfor02_orcPF2CSOSN then
         DBGrid_itens.Columns[x_grid].Visible:=true
      else if DBGrid_itens.Columns[x_grid].Field=tb_pfor02_orcPF2CSOSN_ORI then
         DBGrid_itens.Columns[x_grid].Visible:=true;
      end;
   end
else
   begin
   for x_grid:=0 to DBGrid_itens.Columns.Count-1 do
      begin
      if DBGrid_itens.Columns[x_grid].Field=tb_pfor02_orcPF2SIT then
         DBGrid_itens.Columns[x_grid].Visible:=true
      else if DBGrid_itens.Columns[x_grid].Field=tb_pfor02_orcPF2CSOSN then
         DBGrid_itens.Columns[x_grid].Visible:=false
      else if DBGrid_itens.Columns[x_grid].Field=tb_pfor02_orcPF2CSOSN_ORI then
         DBGrid_itens.Columns[x_grid].Visible:=false;
      end;
   end;



end;

procedure TFrm_Compras_Orc.edt_codforKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%') then
   begin
   edt_codfor.Text:=fChamafor(0,'_venda',key);
   edt_codforExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Compras_Orc.edt_codCondPagChange(Sender: TObject);
begin
if (edt_codCondPag.Modified) and (mCompras_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Compras_Orc.edt_codCondPagExit(Sender: TObject);
var
mAlterou_Pfgto: Boolean;
begin
edt_codCondPag.Text:=trim(edt_codCondPag.Text);
mAlterou_Pfgto:=false;


if Trim(edt_codCondPag.Text)='' then
   exit;
if Trim(edt_codCondPag.Text)='PO99' then
   begin
//   edt_codCondPag.Text:='(Plano Opcional) - Conforme digitado abaixo';
   edt_nomcond.Text:='(Plano Opcional) - Conforme digitado abaixo';
   end
else
   begin
  if not flcadpv(1,0,copy(edt_codCondPag.Text,1,2),copy(edt_codCondPag.Text,3,length(edt_codcondpag.text)-2)) then
      begin
      if edt_codCondPag.Enabled then
         begin
         verteclado(0);
         MessageDlg('Condições de Pagamento Não Encontrada!',mtWarning,[mbOk],0);
         edt_codCondPag.SetFocus;
         exit;
         end;
      end;
    edt_nomcond.Text:=DM1.Tb_PVPVNOME.AsString;
    mCompras_GP.mPed1_CodPV:=DM1.Tb_PVPVCODPV.AsInteger;
    mCompras_GP.mPed1_TabPV:=DM1.Tb_PVPVCODTIP.asString;

    if (not mlocalizando_pedido) or (mCompras_GP.mped1_QtdParc<1) then
       begin
       if mCodpv_ant<>mCompras_GP.mPed1_TabPV+IntTostr(mCompras_GP.mPed1_CodPV) then
          begin
          mAlterou_Pfgto:=true;
          mped_Alterou_Cab:=true;
          end;
       if (tb_pfor01_parc.IsEmpty) and ( not tb_pfor02_orc.IsEmpty) then
          begin
          mCompras_GP.mped1_QtdParc:=1;
          mCompras_GP.mPed1_Parcelas:=insere('0','0',4);
          end
       else
          begin
          if (not mAlterou_Pfgto)  then
             begin
             if not tb_pfor01_parc.Active then
                fLerFormaPag(0);
             tb_pfor01_parc.First;
             mCompras_GP.mPed1_Parcelas:=insere(tb_pfor01_parcPF1VPRAZO.AsString,'0',4);
             tb_pfor01_parc.Next;
             while not tb_pfor01_parc.Eof do
                begin
                mCompras_GP.mPed1_Parcelas:=mCompras_GP.mPed1_Parcelas+insere(tb_pfor01_parcPF1VPRAZO.AsString,'0',4);
                tb_pfor01_parc.Next;
                end;
            mCompras_GP.mped1_QtdParc:=tb_pfor01_parc.RecordCount;
            end
         else
            begin
            DM1.Tb_PV2.First;
            mCompras_GP.mPed1_Parcelas:=insere(DM1.Tb_PV2PV2PRAZO.AsString,'0',4);
            DM1.Tb_PV2.Next;
            while not DM1.Tb_PV2.Eof do
               begin
               mCompras_GP.mPed1_Parcelas:=mCompras_GP.mPed1_Parcelas+insere( DM1.Tb_PV2PV2PRAZO.AsString,'0',4);
               DM1.Tb_PV2.Next;
               end;
            mCompras_GP.mped1_QtdParc:=DM1.Tb_PV2.RecordCount;
            end;
         end;
      end;

   if (mAlterou_Pfgto) and (not mlocalizando_pedido)  then
      begin
      if (not tb_pfor02_orc.IsEmpty)  then
         begin
         mCompras_GP.mPed1_AltDup:='S';
         mCompras_GP.mPed1_QtdParc_ant:=-1;
         fRecalcularPedido(0,'S');

//         fRecalcularformas(0);
         fLerFormaPag(0);
         end;
      end;
   end;
 {

if (mped_Alterou_Cab) then
   begin
   if (not tb_pfor02_orc.IsEmpty)  then
      begin
      mCompras_GP.mPed1_AltDup:='S';
      mCompras_GP.mPed1_QtdParc_ant:=-1;
      fRecalcularPedido(0);
      end;
   end;
}
end;

procedure TFrm_Compras_Orc.edt_codfpChange(Sender: TObject);
begin
if (edt_codfp.Modified) and (mCompras_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Compras_Orc.edt_codfpExit(Sender: TObject);
var
Query_AjustaFP: TQuery;

begin


edt_codfp.Text:=fdeixanum(edt_codfp.Text);
if Trim(edt_codfp.Text)='' then
   exit;
if not fLCadFP(0,edt_codfp.Text,'') then
   begin
   if valint(edt_codfp.Text)=0 then
      begin
      edt_codfp.Text:='';
      exit;
      end
   else
      begin
      if edt_codfp.Enabled then
         begin
         verteclado(0);
         MessageDlg('Forma de Pagamento não Cadastrado!',mtWarning,[mbOk],0);
         edt_codfp.SetFocus;
         exit;
         end;
      end;
   end;
edt_nomfp.Text:=DM1.Tb_FPFPDESC.AsString;
mCompras_GP.mPed1_CodFP:=valint(edt_codfp.Text);
mCompras_GP.mPed1_nomfp:=DM1.Tb_FPFPDESC.AsString;
mCompras_GP.mPed1_BaixaFP:='N';
mCompras_GP.mPed1_QtdParc_ant:=-1;
if mPed1_CodFP_Ant<>mCompras_GP.mPed1_CodFP then
   begin
   mped_Alterou_Cab:=true;
   if (not tb_pfor02_orc.IsEmpty) then
      mCompras_GP.mPed1_AltDup:='N';
   Query_AjustaFP:=TQuery.Create(nil);
   Query_AjustaFP.DatabaseName:='SG_ASSOC';
   Query_AjustaFP.Close;
   Query_AjustaFP.SQL.Clear;
   Query_AjustaFP.SQL.Add('Update '+mtab_cadpf1v+' set PF1VCODFP=:FORMA, PF1VNOMFP=:NOMFOR where PF1VCHAVE=:CHAVE '
                             +' AND PF1VLOTSEQ=:CHAVE_ANO '
                             +' AND (PF1VCODEMP=:CODEMP ) ');
   Query_AjustaFP.ParamByName('FORMA').AsInteger:=mCompras_GP.mPed1_CodFP;
   Query_AjustaFP.ParamByName('NOMFOR').AsString:=copy(edt_nomfP.Text,1,20);
   Query_AjustaFP.ParamByName('CHAVE').AsInteger:=mCompras_GP.mped1_Chave;
   Query_AjustaFP.ParamByName('CHAVE_ANO').AsInteger:=mCompras_GP.mPed1_Chave_ano;
   Query_AjustaFP.ParamByName('CODEMP').AsInteger:=mCompras_GP.mPed1_Codemp;

   try
      Query_AjustaFP.ExecSql;
      fdm1StartCommit;
   except
      end;
   FreeAndNil(Query_AjustaFP);
   end;


mped_Alterou_Cab:=true;

end;

procedure TFrm_Compras_Orc.edt_codfpKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%') then

   begin
   edt_codfp.Text:=fChamafpag(0,'_venda',key);
   edt_codfpExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Compras_Orc.edt_datapChange(Sender: TObject);
begin
if (edt_datap.Modified) and (mCompras_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Compras_Orc.edt_datapExit(Sender: TObject);
begin
mCompras_GP.mPed1_Datap:=edt_datap.Date;

end;

procedure TFrm_Compras_Orc.edt_desc_valorChange(Sender: TObject);
begin
if (edt_desc_valor.Modified) and (mCompras_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Compras_Orc.edt_desc_valorExit(Sender: TObject);
begin
if ( valfloat(edt_desc_valor.Text)<0) or (valfloat(edt_desc_valor.Text)>99999999999) then
   edt_desc_valor.Text:=Formatfloat(mcasas, 0);
mCompras_GP.mPed1_Desc_Rateado:=ValFloat(edt_desc_valor.Text);
edt_desc_valor.Text:=FormatFloat(mCasas, valfloat(edt_desc_valor.Text));


if (not mlocalizando_pedido) and (mPed_Desc_Ant<>mCompras_GP.mPed1_Desc_Rateado) then
   begin
   mCompras_GP.fGravarPed01(1);
   fRecalcularPedido(3,'S');
   end;


end;

procedure TFrm_Compras_Orc.edt_pDesc01Change(Sender: TObject);
begin
if (edt_pDesc01.Modified) and (mCompras_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Compras_Orc.edt_pDesc01Enter(Sender: TObject);
begin
    mPed_PDesc01_Ant:=ValFloat(edt_pDesc01.Text);

end;

procedure TFrm_Compras_Orc.edt_pDesc01Exit(Sender: TObject);
begin
if ( valfloat(edt_pDesc01.Text)<0) or (valfloat(edt_pDesc01.Text)>99) then
   edt_pDesc01.Text:=Formatfloat(mcasas, 0);
mCompras_GP.mPed1_pDesc01:=ValFloat(edt_pDesc01.Text);
edt_pDesc01.Text:=Formatfloat(mcasas, mCompras_GP.mPed1_pDesc01);

if ValFloat(edt_pDesc01.Text)=0 then
   begin
   edt_vlrdes_ped1_perc.Text:=FormatFloat(mcasas, 0);
   end
else
   edt_vlrdes_ped1_perc.Text:=FormatFloat(mcasas,
    ((mCompras_GP.mPed1_TotMer)-
    (mCompras_GP.mPed1_DescPed02_Perc+mCompras_GP.mPed1_Desc_Rateado))
                                       *mCompras_GP.mPed1_pDesc01/100);

mCompras_GP.mPed1_pDesc01_Valor:=valfloat(edt_vlrdes_ped1_perc.Text);
if (not mlocalizando_pedido) and (mPed_PDesc01_Ant<>mCompras_GP.mPed1_pDesc01_Valor) then
   begin
   mCompras_GP.fGravarPed01(1);
   fRecalcularPedido(3,'S');
   end;
end;

procedure TFrm_Compras_Orc.edt_percfreteChange(Sender: TObject);
begin
if (edt_percfrete.Modified) and (mCompras_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Compras_Orc.edt_Imp_Imp_ValorChange(Sender: TObject);
begin
if (edt_Imp_Imp_Valor.Modified) and (mCompras_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Compras_Orc.edt_valfreChange(Sender: TObject);
begin
if (edt_valfre.Modified) and (mCompras_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Compras_Orc.edt_valfreExit(Sender: TObject);
begin
edt_valfre.Text:=Formatfloat(mcasas, valfloat(edt_valfre.Text));
if mCompras_GP.mPed1_ValFre<>valfloat(edt_valfre.Text) then
   begin
   mCompras_GP.mPed1_ValFre:=valfloat(edt_valfre.Text);
   mped_Alterou_Cab:=true;
   fRecalcularPedido(3,'S');
   end;


end;

procedure TFrm_Compras_Orc.edt_valsegChange(Sender: TObject);
begin
if (edt_valfre.Modified) and (mCompras_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Compras_Orc.edt_valsegExit(Sender: TObject);
begin
edt_valseg.Text:=Formatfloat(mcasas, valfloat(edt_valseg.Text));

if (mCompras_GP.mPed1_ValSeg_icms_aliq<>0) then
   edt_valseg_icms_aliqExit(self)
else
   begin
   if mCompras_GP.mPed1_ValSeg<>valfloat(edt_valseg.Text) then
      begin
      mCompras_GP.mPed1_ValSeg:=valfloat(edt_valseg.Text);
      fRecalcularPedido(3,'S');
      mped_Alterou_Cab:=true;
      end;
   end;

end;

procedure TFrm_Compras_Orc.edt_vlricmsChange(Sender: TObject);
begin
if (edt_vlricms.Modified) and (mCompras_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Compras_Orc.edt_vlricmsExit(Sender: TObject);
begin
edt_vlricms.Text:=Formatfloat(mcasas, valfloat(edt_vlricms.Text));
mCompras_GP.mPed1_Icms_Valor:=ValFloat(edt_vlricms.Text);

if mAnt_ICMS_Valor<>mCompras_GP.mPed1_Icms_Valor then
   begin
   mCompras_GP.mPed1_VD_ICMS_VALOR:=mCompras_GP.mPed1_Icms_Valor;
   fRecalcularPedido(3,'S');
   end;


end;

procedure TFrm_Compras_Orc.edt_vlricmsstChange(Sender: TObject);
begin
if (edt_vlricmsst.Modified) and (mCompras_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Compras_Orc.edt_vlricmsstExit(Sender: TObject);
begin
edt_vlricmsst.Text:=Formatfloat(mcasas, valfloat(edt_vlricmsst.Text));
mCompras_GP.mPed1_ST_Icms:=valfloat(edt_vlricmsst.Text);

if mAnt_ICMSST_Valor<>mCompras_GP.mPed1_ST_Icms then
   begin
   mCompras_GP.mPed1_VD_ICMSST_VALOR:=mCompras_GP.mPed1_ST_Icms;
   fRecalcularPedido(3,'S');
   mped_Alterou_Cab:=true;
   end;

end;

function TFrm_Compras_Orc.fTotais(pTipo: Integer): Boolean;
var
mpDescMedio: Real;
begin
edt_TotProdServ.Text:=FormatFloat(mCasas, mCompras_GP.mPed1_TotMer);

edt_qtditem.Text        :=FormatFloat(mCasas, mCompras_GP.mPed1_QtdItem);
edt_vlrdes_ped1_perc.Text:=FormatFloat(mCasas, mCompras_GP.mPed1_pDesc01_Valor);
edt_qtdund.Text         :=FormatFloat(mCasas, mCompras_GP.mPed1_QtdUnd);

edt_descItens.Text  :=FormatFloat(mCasas, mCompras_GP.mPed1_DescPed02_Perc);

edt_desoneracao.Text:=FormatFloat(mcasas, mCompras_GP.mPed1_totalDesoneracao);
edt_TotDesGer.Text :=FormatFloat(mCasas,mCompras_GP.mPed1_pDesc01_Valor+mCompras_GP.mPed1_DescPed02_Perc+mCompras_GP.mPed1_Desc_Rateado);
if  (  (Valfloat(edt_TotDesGer.Text)>0) and ((mCompras_GP.mPed1_TotMer)=0) )
    or   ((mCompras_GP.mPed1_TotMer)=0) then
   edt_perDesGer.Text := FormatFloat(mCasas,0)
else
   begin
   edt_perDesGer.Text := FormatFloat(mCasas,
                                    ((mCompras_GP.mPed1_pDesc01_Valor+mCompras_GP.mPed1_DescPed02_Perc
                                    +mCompras_GP.mPed1_Desc_Rateado)*100) /

                                    (mCompras_GP.mPed1_TotMer) );
   end;


edt_Imp_Imp_Aliq.Text   :=FormatFloat(mCasas, mCompras_GP.mPed1_Imp_Imp_Aliq);
edt_Imp_Imp_Valor.Text  :=FormatFloat(mCasas, mCompras_GP.mPed1_Imp_Imp_Valor);



edt_valseg.Text             :=FormatFloat(mCasas, mCompras_GP.mPed1_ValSeg);
edt_valseg_ICMS_ALIQ.Text   :=FormatFloat(mCasas, mCompras_GP.mPed1_ValSeg_ICMS_ALIQ);
edt_valseg_ICMS_VALOR.Text  :=FormatFloat(mCasas, mCompras_GP.mPed1_ValSeg_ICMS_VALOR);


edt_outdesp.Text   :=FormatFloat(mCasas, mCompras_GP.mPed1_OutDesp);
edt_outdesp_icms_aliq.Text   :=FormatFloat(mCasas, mCompras_GP.mPed1_OutDesp_icms_aliq);
edt_outdesp_icms_valor.Text   :=FormatFloat(mCasas, mCompras_GP.mPed1_OutDesp_icms_valor);



edt_totipi.Text    :=FormatFloat(mCasas, mCompras_GP.mPed1_TotIPI);
edt_percfrete.Text :=FormatFloat(mCasas, mCompras_GP.mPed1_Perc_Frete);

edt_valfre_icms_aliq.Text :=FormatFloat(mCasas, mCompras_GP.mPed1_ValFre_Icms_Aliq);
edt_valfre_icms_valor.Text :=FormatFloat(mCasas, mCompras_GP.mPed1_ValFre_Icms_Valor);

edt_bcicmsst.Text  :=FormatFloat(mCasas, mCompras_GP.mPed1_ST_base);
edt_vlricmsst.Text :=FormatFloat(mCasas, mCompras_GP.mPed1_ST_Icms);
edt_bcicms.Text    :=FormatFloat(mCasas, mCompras_GP.mPed1_Icms_Base);
edt_vlricms.Text   :=FormatFloat(mCasas, mCompras_GP.mPed1_Icms_Valor);
edt_vlrPIS.Text    :=FormatFloat(mCasas, mCompras_GP.mPed1_PIS_Valor);
edt_vlrCOFINS.Text :=FormatFloat(mCasas, mCompras_GP.mPed1_Cofins_Valor);
edt_bcPIS.Text     :=FormatFloat(mCasas, mCompras_GP.mPed1_PIS_Base);
edt_bcCOFINS.Text  :=FormatFloat(mCasas, mCompras_GP.mPed1_Cofins_Base);


edt_totliq.Text:=FormatFloat(mCasas, (valfloat(edt_TotProdServ.Text)
                            +valfloat(edt_Imp_Imp_Valor.Text)
                            +valfloat(edt_valseg.Text)
                            +valfloat(edt_outdesp.Text)
                            +valfloat(edt_totipi.Text)
                            +valfloat(edt_valfre.Text)
                            +valfloat(edt_vlricmsst.Text))
                            -(ValFloat(edt_TotDesGer.Text) + valfloat(edt_desoneracao.text))
                             );
mCompras_GP.mPed1_Totall:=valfloat(edt_totliq.Text);

result:=true;
end;

function TFrm_Compras_Orc.fAtualizarBotoes(pTipo: Integer): Boolean;
{
pTipo = 0 Pronto para inicializar uma nova inclusao sem nenhum selecionado
        1 Pronto para inicializar uma ação de inclusao/alteração/exclusao/impressao com pedido selecionado
        2 em estado de inclusao ou alteração
        3 bloqueia todos

}
begin

if ptipo=3 then // bloqueia todos
   begin
   sbnIncluir.Enabled      := false;
   sbnLocalizar.Enabled    := False;
   sbnAlterar.Enabled      := False;
   sbnSugestaoCpr.Enabled  := False;
   bbConfEntrada.Enabled   := False;
   sbnGravar.Enabled       := False;
   sbnExcluir.Enabled      := False;
   end
else if ptipo=2 then // inclusao ou alteracao
   begin
   sbnIncluir.Enabled      := false;
   sbnLocalizar.Enabled    := False;
   sbnAlterar.Enabled      := False;
   sbnSugestaoCpr.Enabled  := True;
   bbConfEntrada.Enabled   := False;
   sbnGravar.Enabled       := True;
   sbnExcluir.Enabled      := False;
   end
else if ptipo=0 then
   begin
   sbnIncluir.Enabled      :=iif(mCorrecaodoPedido,false,true);
   sbnLocalizar.Enabled    :=iif(mCorrecaodoPedido,false,true);
   sbnSugestaoCpr.Enabled  := False;
   sbnAlterar.Enabled      := False;
   bbConfEntrada.Enabled   := False;
   sbnGravar.Enabled       := False;
   sbnExcluir.Enabled      := False;
   end
else if ptipo=1 then
   begin
   sbnIncluir.Enabled      :=iif(mCorrecaodoPedido,false,true);
   sbnLocalizar.Enabled    :=iif(mCorrecaodoPedido,false,true);
   sbnAlterar.Enabled      :=true;
   sbnSugestaoCpr.Enabled  :=False;
   bbConfEntrada.Enabled   :=iif(mCorrecaodoPedido,false,true);
   sbnGravar.Enabled       :=False;
   sbnExcluir.Enabled      :=iif(mCorrecaodoPedido,false,true);
   end;
result:=true;

end;

function TFrm_Compras_Orc.fPosicao(ptipo: Integer): Boolean;
var
pRect:TRect;
x,i: Integer;
begin
GetWindowRect(Memo_ObsPed.Handle,pRect);
x:=pRect.left; // -->>>posicao em relação a esquerda em relação a tela
i:=pRect.Top; //-->>>posicao em relação ao Top
end;


function tFrm_Compras_Orc.fRecalcularPedido(pTipo: Integer;pAaltdup: String): Boolean;
begin
mChavePF.pf01IdNew:=mCompras_GP.mped1_id_new;
mChavePF.pf02IdNew:=0;

mCompras_GP.mPed1_AltDup:=pAaltdup;
mCompras_GP.fGravarItem(0 // item
                      ,mItem_Ant
                      ,0 //tb_pfor02_orcP2CFOP_ECF.AsInteger,
                      ,0 //tb_pfor02_orcP2CFOP_NF.AsInteger
                      ,0 //tb_pfor02_orcP2MODBCST.AsInteger,
                      ,0 // situacao
                      ,0 // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta
                      ,mCompras_GP.mPed1_CodFP
                      ,3 // tipo do evento 3-apenas calcular
                      ,'' //tb_pfor02_orcP2CODPRO.AsString,
                      ,mCodpro_Ant // codigo anterior
                      ,0 //tb_pfor02_orcP2QTD.AsFloat,
                      ,mQtd_Ant
                      ,0 //tb_pfor02_orcP2DESC_PERC01.AsFloat,
                      ,0 //tb_pfor02_orcP2DESC_PERC02.AsFloat,
                      ,0 //Tb_Pfor02_orc.AsFloat,
                      ,0 // desconto em valor
                      ,0 //tb_pfor02_orcP2PRECO.AsFloat,
                      ,0 //repasse de icms
                      ,0 // lista neutra positiva negativa
                      ,0 //tb_pfor02_orcP2PRECO_TAB.AsFloat,
                      ,0 //tb_pfor02_orcP2PRECO_TAB.AsFloat, // preco da forma de pagamento
                      ,0 //tb_pfor02_orcP2PRECO_UCPR.AsFloat,
                      ,0 //tb_pfor02_orcP2PRECO_CUS.AsFloat,
                      ,0 //tb_pfor02_orcP2PRECO_MAXCONS.AsFloat,
                      ,0 //tb_pfor02_orcP2IPI_PERC.AsFloat,
                      ,0 //tb_pfor02_orcP2IPI_PERC.AsFloat,
                      ,0 //tb_pfor02_orcP2ICMS_PERC.AsFloat,
                      ,0 // percentual de comissao
                      ,0 //tb_pfor02_orcP2PIS_PERC.AsFloat,
                      ,0 //tb_pfor02_orcP2COFINS_PERC.AsFloat,
                      ,0 //tb_pfor02_orcP2DESCFIN_PERC.AsFloat,
                      ,0 // percentual de acrescimos
                      ,0 //tb_pfor02_orcP2ICMS_PPRED.AsFloat,
                      ,0 //tb_pfor02_orcP2ST_IVA.AsFloat,
                      ,0 //tb_pfor02_orcP2ST_REDUT.AsFloat,
                      ,0 //tb_pfor02_orcP2ST_REDUT.AsFloat,
                      ,0 //tb_pfor02_orcP2ST_ICMSDEB.AsFloat,
                      ,0 // tb_pfor02_orcP2ICMSSN_PERC.AsFloat,
                      ,valfloat(edt_desc_valor.Text)
                      ,0 // ACRESCIMOS RATEADO
                      ,valfloat(edt_valseg.Text)
                      ,ValFloat(edt_valfre.Text)
                      ,0 //ValFloat(edt_tarban.Text)
                      ,valfloat(edt_outdesp.Text)
                      ,0
                      ,0
                      ,'' //tb_pfor02_orcP2CST.AsString,
                      ,'' //tb_pfor02_orcP2CST_pis.AsString,
                      ,'' //tb_pfor02_orcP2CST_cofins.AsString,
                      ,'' //tb_pfor02_orcP2CST_ipi.AsString,


                      ,'' //tb_pfor02_orcP2AMBIENTE.AsString,
                      ,'' //tb_pfor02_orcP2DESC_COMP.AsString,
                      ,'' //tb_pfor02_orcP2CSOSN.AsString,
                      ,'' //tb_pfor02_orcP2csosn_ori.AsString
                      ,'' //tb_pfor02_orcP2PROMOCAO.AsString
                      ,mCompras_GP.mPed1_NomFP,mCompras_GP.mPed1_BaixaFP
                      ,0 // tb_pfor02_orcPF2IPIQTDUNID.AsFloat
                     ,0 // tb_pfor02_orcPF2IPIVUNID.AsFloat
                     ,0 // tb_pfor02_orcPF2PISQTDUNID.AsFloat
                     ,0 // tb_pfor02_orcPF2PISVUNID.AsFloat
                     ,'0' // tb_pfor02_orcPF2CBENEF
                     ,0 // tb_pfor02_orcPF2COFINSQTDUNID.AsFloat
                     ,0 // tb_pfor02_orcPF2COFINSVUNID.AsFloat
                     ,0// PF2VICMSDESON
                     ,'' // codncm
                     ,'' // codCEST
                     ,mChavePf
                     ,'' // pPF2CBS_CST
                     ,'' // pPF2CODCLASSTRIB : string;
                     ,0 // pPF2CBS_BC
                     ,0 //pF2CBS_ALIQ
                     ,0 //pPF2CBS_VALOR
                     ,0 //pPf2IBS_MUN_VALOR
                     ,0 //pPf2CBS_DEV_TRIB
                     ,0 //pPf2IBS_UF_ALIQ
                     ,0 //pPF2IBS_UF_VALOR
                     ,0 //pPF2IBS_MUN_ALIQ : Real
                     ,1 //PF2DESONERACAO_DEDUZ : integer
                     ,9 //PF2DESONERACAO_MOTIVO : String



 );
fTotais(0);
fLerFormaPag(0);
end;


function TFrm_Compras_Orc.fVerificarOrdemFPgto(ptipo: Integer): Boolean;

var
mOrdemFP,mQtdParc: Integer;
Query_Cons: TQuery;
Query_Cons_02: TQuery;

begin
Query_Cons:=TQuery.Create(nil);
Query_Cons.DatabaseName:='SG_ASSOC';
Query_Cons_02:=TQuery.Create(nil);
Query_Cons_02.DatabaseName:='SG_ASSOC';

Query_Cons.Close;
Query_Cons.SQL.Clear;
Query_Cons.SQL.Add('SELECT PF1VCODEMP,PF1VCHAVE,PF1VLOTSEQ, '
                  +'PF1VDATAV,PF1VVALOR,PF1VCODIGO, PF1VPRAZO'
                  +', PF1VCODFP, PF1VNOMFP,0 AS PF1VQTDPARC,PF1VBAIXA '
                  +',PF1VDESCF,PF1VDTDESCF '
                  +'FROM '+mtab_cadpf1v
                          +' where PF1VCODEMP='+IntTostr(mCompras_GP.mPed1_Codemp)
                          +' and   PF1VCHAVE='+IntTostr(mCompras_GP.mped1_Chave)
                          +' and   PF1VLOTSEQ='+IntTostr(mCompras_GP.mPed1_Chave_ano)
                          +' order by PF1VDATAV,PF1VCODIGO ');
try
   Query_Cons.Open;
except
   result:=false;
   exit;
   end;
mOrdemFP:=0;
mQtdParc:=Query_Cons.RecordCount;
while not Query_Cons.Eof do
   begin
   mOrdemFP:=mOrdemFP+1;
   if (Query_Cons.FieldByName('PF1VCODIGO').AsInteger<>mOrdemFP) or
      (Query_Cons.FieldByName('PF1VQTDPARC').AsInteger<>mQtdParc) then
      begin
      Query_Cons_02.Close;
      Query_Cons_02.SQL.Clear;
      Query_Cons_02.SQL.Add('Update '+mtab_cadpf1v+' set PF1VCODIGO=:PARCELA '
                                +', PF1VQTDPARC=:QTDPARC '
                                +' where PF1VCODEMP=:CODEMP '
                                +' and   PF1VCHAVE=:CHAVE '
                                +' and   PF1VLOTSEQ=:CHAVE_ANO '
                                +' and   PF1VCODIGO=:PARCELA_ANT '
                                +' and   PF1VQTDPARC=:QTDPARC_ANT ');
      Query_Cons_02.ParamByName('PARCELA').AsInteger:=mOrdemFP;
      Query_Cons_02.ParamByName('QTDPARC').AsInteger:=mQtdParc;
      Query_Cons_02.ParamByName('CODEMP').AsInteger:=mCompras_GP.mPed1_Codemp;
      Query_Cons_02.ParamByName('CHAVE').AsInteger:=mCompras_GP.mped1_Chave;
      Query_Cons_02.ParamByName('CHAVE_ANO').AsInteger:=mCompras_GP.mPed1_Chave_ano;
      Query_Cons_02.ParamByName('PARCELA_ANT').AsInteger:=Query_Cons.FieldByName('PF1VCODIGO').AsInteger;
      Query_Cons_02.ParamByName('QTDPARC_ANT').AsInteger:=Query_Cons.FieldByName('PF1VQTDPARC').AsInteger;
      try
         Query_Cons_02.ExecSQL;
         fDM1StartCommit;
      except
         result:=false;
         exit;
         end;
      end;
   Query_Cons.Next;
   end;
result:=true;

end;


function TFrm_Compras_Orc.fBloqueiaLiberaPedido(ptipo: Integer): Boolean;
// ptipo=0-libera
//       1-bloqueio
var
Query_exe: TQuery;
begin
if mCompras_GP.mped1_Chave=0  then
   begin
   result:=true;
   exit;
   end;

Query_exe:= TQuery.Create(nil);

Query_exe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
Query_exe.Close;
Query_exe.SQL.Clear;
Query_exe.SQL.Add('Update '+mtab_cadpf1+' set PF1SITPED=:SITUACAO '
               +',PF1DATHOR_UEVE=SYSDATE '
                  +',PF1CODUSR_UEVE=:CODUSR_ULTEVE '
                  +',PF1COMP_UEVE=:COMP_ULTEVE '
                          +' where PF1CODEMP=:CODEMP '
                          +' and   PF1CHAVE=:CHAVE '
                          +' and   PF1LOTSEQ=:CHAVE_ANO '
                          +' and   PF1SITPED<>9 ' );
Query_exe.ParamByName('SITUACAO').AsInteger:=ptipo;
Query_exe.ParamByName('CODUSR_ULTEVE').asinteger:=codusr;
Query_exe.ParamByName('COMP_ULTEVE').asString:=Nomecomputador;
Query_exe.ParamByName('CODEMP').AsInteger:=mCompras_GP.mPed1_Codemp;
Query_exe.ParamByName('CHAVE').AsInteger:=mCompras_GP.mped1_Chave;
Query_exe.ParamByName('CHAVE_ANO').AsInteger:=mCompras_GP.mPed1_Chave_ano;


try
   Query_exe.ExecSQL;
   fDM1StartCommit;
except
   if not fVerificaRedeAtiva(true) then
      begin
      end
   else
      begin
      ex_erroSql_Novo(Query_exe,3011,'_lerarq','cadpf01_orc');
      end;
   end;
Query_exe.close;
freeandnil(query_exe);
result:=true;
end;



function TFrm_Compras_Orc.fAdicionarQtdMan(ptipo: Integer): Boolean;
// ptipo=0-libera
//       1-bloqueio
var
Query_exe: TQuery;
begin
Query_exe:= TQuery.Create(nil);
Query_exe.DatabaseName:='SG_ASSOC';
if mCompras_GP.mped1_Chave>0  then
   begin
   Query_exe.Close;
   Query_exe.SQL.Clear;
   Query_exe.SQL.Add('Update '+mtab_cadpf1+' set PF1QTDMAN=PF1QTDMAN+1 '
                             +' where PF1CODEMP=:CODEMP '
                             +' and   PF1CHAVE=:CHAVE '
                             +' and   PF1LOTSEQ=:CHAVE_ANO '
                             +' and   PF1SITPED<>9 ' );
   Query_exe.ParamByName('CODEMP').AsInteger:=mCompras_GP.mPed1_Codemp;
   Query_exe.ParamByName('CHAVE').AsInteger:=mCompras_GP.mped1_Chave;
   Query_exe.ParamByName('CHAVE_ANO').AsInteger:=mCompras_GP.mPed1_Chave_ano;

   try
      Query_exe.ExecSQL;
      fDM1StartCommit;
   except
      if not fVerificaRedeAtiva(true) then
         begin
         end
      else
         begin
         ex_erroSql_Novo(Query_exe,3051,'_lerarq','cadpf01_orc');
         end;
      end;
   end;
result:=true;
end;


function TFrm_Compras_Orc.fLerImagem(pIfPfNew: Integer): Boolean;


begin
if pIfPfNew=0 then
   begin
   Tb_PF_imagem.close;
   exit;
   end;
{
if not fLerGenerico_query('CADPF1','ROWID',' PF1CHAVE='+inttostr(pchave)+' and PF1CODEMP='+inttostr(pcodemp),query_consulta) then
   begin
   exit;
   end;
mIdCli:=query_consulta.fieldbyname('ROWID').asstring;
}
if DM1_ADO.ADOConnection1.connected=false then
   begin
   DM1_ADO.ADOConnection1.Close;
   DM1_ADO.ADOConnection1.ConnectionString:='Provider=MSDAORA.1;Password=DEZENOVE;User ID='+Banco_usuario+';Data Source='+Banco_ServerName+';Persist Security Info=True';
   DM1_ADO.ADOConnection1.Open;
   end;

Tb_PF_imagem.close;
Tb_PF_imagem.Connection:=DM1_ADO.ADOConnection1;
Tb_PF_imagem.Parameters.ParamByName('PF_ID_PF01_NEW').Value    :=pIfPfNew;
Tb_PF_imagem.open;

end;


function TFrm_Compras_Orc.fLerPedidoGeral(pCodEmp,pChave,pChave_ano: Integer): Boolean;
// ptipo=0-libera
//       1-bloqueio
var
Query_cons: TQuery;
x_mod: Integer;
begin
Query_cons:= TQuery.Create(nil);
Query_cons.DatabaseName:='SG_ASSOC';


Query_cons.Close;
Query_cons.SQL.Clear;
Query_cons.SQL.Add('Select * from '+mtab_cadpf1+' where '
                          +'       PF1CODEMP=:CODEMP ');
Query_cons.ParamByName('CODEMP').AsInteger   :=pCodEmp;

if mtab_cadnov>0 then
   begin
   Query_cons.sql.add(' and PF1CODNOV=:CODNOV ');
   Query_cons.ParamByName('CODNOV').AsFloat   :=mtab_cadnov
   end
else
   begin
   Query_cons.sql.add(' and   PF1CHAVE=:CHAVE '
                          +' and   PF1LOTSEQ=:CHAVE_ANO ');
   Query_cons.ParamByName('CHAVE').AsInteger    :=pChave;
   Query_cons.ParamByName('CHAVE_ANO').AsInteger:=pChave_ano;
   end;
try
   Query_cons.Open;
except
   if not fVerificaRedeAtiva(true) then
      begin
      end
   else
      begin
      ex_erroSql_Novo(query_cons,3096,'_lerarq','CADPF1');
      end;
   end;
if Query_cons.IsEmpty then
   begin
   MessageDlg('Pedido '+IntToStr(pChave)+'/'+IntToStr(pChave_ano)+' Empresa: '+IntToStr(pCodEmp)+' Não Encontrado!',mtWarning,[mbOk],0);
   Result:=false;
   exit;
   end;
fLimparCampos(0);


mCompras_GP.mPed1_Codemp        :=Query_cons.FieldByName('PF1CODEMP').AsInteger;
mCompras_GP.mped1_Chave         :=Query_cons.FieldByName('PF1CHAVE').AsInteger;
mCompras_GP.mped1_id_new        :=Query_cons.FieldByName('PF1ID_NEW').AsInteger;
mCompras_GP.mPed1_Chave_ano     :=Query_cons.FieldByName('PF1LOTSEQ').AsInteger;
mCompras_GP.mPed1_Codfor        :=Query_cons.FieldByName('PF1CODFOR').AsFloat;
mCompras_GP.mPed1_BASER_IPI     :=Query_cons.FieldByName('PF1BASER_IPI').AsInteger;
mCompras_GP.fRatearDescontosAcrescimos(0,0,0,0,0,0,0);

mCompras_GP.mPed1_filial        :=Query_cons.FieldByName('PF1FILIAL').Asinteger;
if mCompras_GP.mped1_Filial<1 then
   mCompras_GP.mped1_Filial:=log_filial_padrao;

mCompras_GP.mPed1_siv_frete        :=Query_cons.FieldByName('PF1SIV_FRETE').AsFloat;
mCompras_GP.mPed1_siv_dare        :=Query_cons.FieldByName('PF1SIV_DARE').AsFloat;
mCompras_GP.mPed1_siv_outros        :=Query_cons.FieldByName('PF1SIV_OUTROS').AsFloat;
mCompras_GP.mPed1_siv_outros_tipo   :=Query_cons.FieldByName('PF1SIV_OUTROS_TIPO').AsString;


mCompras_GP.mPed1_CodTra        := Query_cons.FieldByName('PF1CODTRA').AsInteger;

mCompras_GP.mped1_numdup        := Query_cons.FieldByName('PF1NUMDUP').AsFloat;
edt_numdup.text                 := Query_cons.FieldByName('PF1NUMDUP').Asstring;

mCompras_GP.mped1_gravdp        := Query_cons.FieldByName('PF1GRAVDP').AsInteger;
if mCompras_GP.mped1_gravdp = 0 then
  cb_gravardp.Checked := False
else
  cb_gravardp.Checked := True;
cb_gravardpEnter(self);


mCompras_GP.mPed1_OutVDup       := Query_cons.FieldByName('PF1OUTVDUP').AsFloat;
mCompras_GP.mped1_desd          := Query_cons.FieldByName('PF1DESD').AsString;

mCompras_GP.mPed1_DataEnt       := Query_cons.FieldByName('PF1DATAENT').AsDateTime;
mCompras_GP.mPed1_DataNF        := Query_cons.FieldByName('PF1DATANF').AsDateTime;
mCompras_GP.mPed1_DataPrevFat   := Query_cons.FieldByName('PF1DTPFAT').AsDateTime;
mCompras_GP.mPed1_DataPrevEnt   := Query_cons.FieldByName('PF1DTPENT').AsDateTime;

mCompras_GP.mped1_tipo          :=Query_cons.FieldbyName('PF1TIPO').asInteger;

mCompras_GP.mPed1_Nfe_Chave     :=Query_cons.FieldbyName('PF1_NFE_CHAVE').AsString;
mCompras_GP.mPed1_Serie         :=Query_cons.FieldbyName('PF1SERIE').AsString;
mCompras_GP.mPed1_Modelo        :=Query_cons.FieldbyName('PF1MODELO').AsString;

mCompras_GP.mPed1_CodUsr_Dig    :=Query_cons.FieldByName('PF1CODUSR').AsInteger;
mCompras_GP.mPed1_CodPV         :=Query_cons.FieldByName('PF1CODPV').AsInteger;
mCompras_GP.mPed1_TabPV         :=Query_cons.FieldByName('PF1TABPV').AsString;
mCompras_GP.mPed1_CodFP         :=Query_cons.FieldByName('PF1CODFP').AsInteger;
mCompras_GP.mPed1_CodTra        :=Query_cons.FieldByName('PF1CODTRA').AsInteger;
mCompras_GP.mPed1_Frete_CIFFOB  :=Query_cons.FieldByName('PF1FRETEPC').AsInteger;


mCompras_GP.mPed1_Situacao      :=Query_cons.FieldByName('PF1STATUS').AsInteger;
mCompras_GP.mPed1_CodUsr_UEVE   :=Query_cons.FieldByName('PF1CODUSR_UEVE').AsInteger;
mCompras_GP.mPed1_QtdMan        :=Query_cons.FieldByName('PF1QTDMAN').AsInteger;
mCompras_GP.mPed1_QtdDec        :=Query_cons.FieldByName('PF1CASASD').AsInteger;
mCompras_GP.mPed1_TotMer        :=Query_cons.FieldByName('PF1TOTMER').AsFloat;
mCompras_GP.mPed1_ValSeg        :=Query_cons.FieldByName('PF1TOTSEG').AsFloat;
mCompras_GP.mPed1_ValSeg_ICMS_ALIQ   :=Query_cons.FieldByName('PF1TOTSEG_ICMS_ALIQ').AsFloat;
mCompras_GP.mPed1_ValSeg_ICMS_VALOR  :=Query_cons.FieldByName('PF1TOTSEG_ICMS_VALOR').AsFloat;
fLerImagem(mCompras_GP.mped1_id_new);

edt_coddig.Clear;
edt_nomdig.CLEAR;
edt_datadig.Clear;
edt_horadig.Clear;

edt_codalt.Clear;
edt_nomalt.CLEAR;
edt_datalt.Clear;
edt_horaalt.Clear;

edt_codeve.Clear;
edt_nomeve.CLEAR;
edt_dateve.Clear;
edt_horaeve.Clear;




if Query_cons.FieldByName('PF1CODUSR').AsFloat>0 then
   begin
   edt_coddig.Text:=Query_cons.FieldByName('PF1CODUSR').AsString;
   if Query_cons.FieldByName('PF1CODUSR').AsFloat=1111 then
      edt_nomdig.Text:='Programador'
   else if Query_cons.FieldByName('PF1CODUSR').AsFloat>0 then
      begin
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',Query_cons.FieldByName('PF1CODUSR').AsString) then
         edt_nomdig.Text:=DM1.query1.fieldbyname('NOMUSR').asstring;
      end;
   if Query_cons.fieldbyname('PF1DATHOR_DIG').AsDateTime>pdatanula then
      begin
      edt_datadig.text := Formatdatetime(fdt2, Query_cons.fieldbyname('PF1DATHOR_DIG').AsDateTime);
      edt_horadig.Text := Formatdatetime(fhr, Query_cons.fieldbyname('PF1DATHOR_DIG').AsDateTime);
      end;
   end;


if Query_cons.FieldByName('PF1USRMOD').AsFloat>0 then
   begin
   edt_codalt.Text:=Query_cons.FieldByName('PF1USRMOD').AsString;
   if Query_cons.FieldByName('PF1USRMOD').AsFloat=1111 then
      edt_nomalt.Text:='Programador'
   else if Query_cons.FieldByName('PF1USRMOD').AsFloat>0 then
      begin
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',Query_cons.FieldByName('PF1USRMOD').AsString) then
         edt_nomalt.Text:=DM1.query1.fieldbyname('NOMUSR').asstring;
      end;
   if Query_cons.fieldbyname('PF1DTMOD').AsDateTime>pdatanula then
      begin
      edt_datalt.text := Formatdatetime(fdt2, Query_cons.fieldbyname('PF1DTMOD').AsDateTime);
      end;

   if fsonumero(Query_cons.fieldbyname('PF1HRMOD').AsString)>0 then
      begin
      edt_horaalt.text := Query_cons.fieldbyname('PF1HRMOD').AsString;
      end;
   end;


if Query_cons.FieldByName('PF1CODUSR_UEVE').AsFloat>0 then
   begin
   edt_codeve.Text:=Query_cons.FieldByName('PF1CODUSR_UEVE').AsString;
   if Query_cons.FieldByName('PF1CODUSR_UEVE').AsFloat=1111 then
      edt_nomeve.Text:='Programador'
   else if Query_cons.FieldByName('PF1CODUSR_UEVE').AsFloat>0 then
      begin
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',Query_cons.FieldByName('PF1CODUSR_UEVE').AsString) then
         edt_nomeve.Text:=DM1.query1.fieldbyname('NOMUSR').asstring;
      end;
   if Query_cons.fieldbyname('PF1DATHOR_UEVE').AsDateTime>pdatanula then
      begin
      edt_dateve.text  := Formatdatetime(fdt2, Query_cons.fieldbyname('PF1DATHOR_UEVE').AsDateTime);
      edt_horaeve.text := Formatdatetime(fhr, Query_cons.fieldbyname('PF1DATHOR_UEVE').AsDateTime);
      end;
   end;


mDisplayFormatPU:='#,##0';
if mCompras_GP.mPed1_QtdDec>0 then
   mDisplayFormatPU:=mDisplayFormatPU+'.'+insere('0','0',mCompras_GP.mPed1_QtdDec+1);

CB_CASASD.ItemIndex:=mCompras_GP.mPed1_QtdDec-1;
// inicio
fTotais(0);

mCompras_GP.mPed1_VD_PIS_BASE :=mCompras_GP.mPed1_PIS_Base;
mCompras_GP.mPed1_VD_PIS_VALOR:=mCompras_GP.mPed1_PIS_Valor;;

mCompras_GP.mPed1_VD_COFINS_BASE :=mCompras_GP.mPed1_Cofins_Base;
mCompras_GP.mPed1_VD_COFINS_VALOR:=mCompras_GP.mPed1_cofins_Valor;
// termino

if (Query_cons.FieldByName('PF1STATUS').Value>0) then
   txt_Situacao.Text:='Confirmado'
else
    txt_Situacao.Text:='Pendente';
txt_MODO.Text  :='Espera';


mCompras_GP.mPed1_OutDesp       :=Query_cons.FieldByName('PF1OUTDESP').AsFloat;

mCompras_GP.mPed1_Imp_Imp_Valor :=Query_cons.FieldByName('PF1IMP_IMP_VALOR').AsFloat;
mCompras_GP.mPed1_Imp_Imp_Aliq  :=Query_cons.FieldByName('PF1IMP_IMP_ALIQ').AsFloat;

mCompras_GP.mPed1_ValFre        :=Query_cons.FieldByName('PF1TOTFRE').AsFloat;

mCompras_GP.mPed1_ValFre_Icms_Aliq  :=Query_cons.FieldByName('PF1ALIQ_FRETE').AsFloat;
mCompras_GP.mPed1_ValFre_Icms_Valor :=Query_cons.FieldByName('PF1ICMS_FRETE').AsFloat;


mCompras_GP.mPed1_ValFre_pipi       := Query_cons.FieldByName('PF1PIPIFRETE').AsFloat;
mCompras_GP.mPed1_ValFre_ipi        := Query_cons.FieldByName('PF1IPIFRETE').AsFloat;


mCompras_GP.mPed1_Perc_Frete    :=Query_cons.FieldByName('PF1PERCFRETE').AsFloat;


mCompras_GP.mPed1_pDesc01       :=Query_cons.FieldByName('PF1DESC01').AsFloat;
mCompras_GP.mPed1_pDesc02       :=Query_cons.FieldByName('PF1DESC02').AsFloat;
mCompras_GP.mPed1_pDesc03       :=0;
mCompras_GP.mPed1_CodFP         :=Query_cons.FieldByName('PF1CODFP').AsInteger;

mCompras_GP.mPed1_pDesc01_Valor :=0;
//mCompras_GP.mPed1_Desc_Rateado  :=Query_cons.FieldByName('PF1DESC03').AsFloat;

mCompras_GP.mped1_Filial        :=Query_cons.FieldByName('PF1FILIAL').AsInteger;
mCompras_GP.mPed1_Totall        :=Query_cons.FieldByName('PF1TOTLIQ').AsFloat;

if mCompras_GP.mped1_Filial=0 then
   mCompras_GP.mped1_Filial:=log_filial_padrao;
CB_FILIAL.Text:=fRetonaNomeFilial(mCompras_GP.mped1_Filial);
with CB_FILIAL do
  ItemIndex := Items.IndexOf(CB_FILIAL.Text);


// Query_cons.FieldByName('PF1TOTDES').AsFloat;
mCompras_GP.mPed1_Desc_Cab      :=0;
mCompras_GP.mPed1_Obs_Ped       :=Query_cons.FieldByName('PF1OBS_PED').AsString;
mCompras_GP.mPed1_Comp_UEVE     :=Query_cons.FieldByName('PF1COMP_UEVE').AsString;
mCompras_GP.mPed1_Datap         :=Query_cons.FieldByName('PF1DATA').AsDateTime;
mCompras_GP.mPed1_DatHor_Dig    :=Query_cons.FieldByName('PF1DATHOR_DIG').AsDateTime;
mCompras_GP.mPed1_DatHor_UEVE   :=Query_cons.FieldByName('PF1DATHOR_UEVE').AsDateTime;
mCompras_GP.mPed1_pDesc01_Ant   :=0;
mCompras_GP.mPed1_pDesc02_Ant   :=0;
mCompras_GP.mPed1_pDesc03_Ant   :=0;
mCompras_GP.mPed1_QtdItem       :=0;
mCompras_GP.mPed1_QtdUnd        :=0;

edt_chave.Text     :=IntTostr(mCompras_GP.mped1_Chave);
edt_datap.Date     :=mCompras_GP.mPed1_Datap;
edt_codfor.Text    :=FloatTostr(mCompras_GP.mPed1_Codfor);


edt_siv_frete.Text :=FormatFloat(mcasas,  Query_cons.FieldByName('PF1SIV_FRETE').AsFloat);

edt_siv_dare.Text :=FormatFloat(mcasas,  Query_cons.FieldByName('PF1SIV_DARE').AsFloat);
edt_siv_outros.Text :=FormatFloat(mcasas,  Query_cons.FieldByName('PF1SIV_OUTROS').AsFloat);
if Query_cons.FieldByName('PF1SIV_OUTROS_TIPO').AsString='Q' then
   CB_SIV_OUTROS_TIPO.ItemIndex:=0
else
   CB_SIV_OUTROS_TIPO.ItemIndex:=1;

edt_codtra.Text    :=FloatToStr(mCompras_GP.mPed1_CodTra);


edt_outvdup.Text    :=FormatFloat(mcasas, mCompras_GP.mPed1_OutVDup);
mCompras_GP.mPed1_NumNF:=Query_cons.FieldByName('PF1NUMNF').AsFloat;

edt_desd.Text      :=mCompras_GP.mped1_desd;
edt_numnf.Text     :=FloatTostr(mCompras_GP.mPed1_NumNF);

edt_datanf.Text    :=FormatDateTime(fdt2, mCompras_GP.mPed1_DataNF);
edt_datent.Text    :=FormatDateTime(fdt2, mCompras_GP.mPed1_DataEnt);
edt_DtPrevEnt.Text :=FormatDateTime(fdt2, mCompras_GP.mPed1_DataPrevEnt);
edt_DtPrevFat.Text :=FormatDateTime(fdt2, mCompras_GP.mPed1_DataPrevFat);


edt_nfe_chave.Text :=Copy(mCompras_GP.mPed1_Nfe_Chave,1,4)+'.'
                       +Copy(mCompras_GP.mPed1_Nfe_Chave,5,4)+'.'
                       +Copy(mCompras_GP.mPed1_Nfe_Chave,9,4)+'.'
                       +Copy(mCompras_GP.mPed1_Nfe_Chave,13,4)+'.'
                       +Copy(mCompras_GP.mPed1_Nfe_Chave,17,4)+'.'
                       +Copy(mCompras_GP.mPed1_Nfe_Chave,21,4)+'.'
                       +Copy(mCompras_GP.mPed1_Nfe_Chave,25,4)+'.'
                       +Copy(mCompras_GP.mPed1_Nfe_Chave,29,4)+'.'
                       +Copy(mCompras_GP.mPed1_Nfe_Chave,33,4)+'.'
                       +Copy(mCompras_GP.mPed1_Nfe_Chave,37,4)+'.'
                       +Copy(mCompras_GP.mPed1_Nfe_Chave,41,4);

edt_serie.Text     :=mCompras_GP.mPed1_Serie;
CB_MODELO.Text     :=mCompras_GP.mPed1_Modelo;
with CB_MODELO do
  ItemIndex := Items.IndexOf(CB_MODELO.Text);

for x_mod:=0 to CB_MODELO.Items.Count-1 do
   begin
   if copy(CB_MODELO.Items[x_mod],1,2)=mCompras_GP.mPed1_Modelo then
      begin
      CB_MODELO.ItemIndex:=x_mod;
      break;
      end;
   end;



edt_codCondPag.Text:=mCompras_GP.mPed1_TabPV+IntTostr(mCompras_GP.mPed1_CodPV);
edt_codfp.Text     :=IntTostr(mCompras_GP.mPed1_CodFP);
CB_TIPO.ItemIndex  :=mCompras_GP.mPed1_Tipo;

Memo_ObsPed.Text   :=mCompras_GP.mPed1_Obs_Ped;

edt_codforExit(self);
edt_codforExit(self);
mped_Alterou_Cab:=false;
edt_codCondPagExit(self);
mCompras_GP.mPed1_QtdParc_ant:=mCompras_GP.mped1_QtdParc;
edt_pDesc01.Text     :=Formatfloat(mCasas, mCompras_GP.mPed1_pDesc01);
edt_desc_valor.Text  :=Formatfloat(mcasas, mCompras_GP.mPed1_Desc_Rateado);
edt_valseg.Text      :=Formatfloat(mcasas, mCompras_GP.mPed1_ValSeg);
edt_valseg_icms_aliq.Text      :=Formatfloat(mcasas, mCompras_GP.mPed1_ValSeg_icms_aliq);
edt_valseg_icms_valor.Text      :=Formatfloat(mcasas, mCompras_GP.mPed1_ValSeg_icms_valor);
edt_outdesp.Text     :=Formatfloat(mcasas, mCompras_GP.mPed1_OutDesp);
edt_Imp_Imp_Valor.Text :=Formatfloat(mcasas, mCompras_GP.mPed1_Imp_Imp_Valor);
edt_Imp_Imp_Aliq.Text      :=Formatfloat(mcasas_pct, mCompras_GP.mPed1_Imp_Imp_Aliq);
edt_totliq.Text      :=Formatfloat(mcasas, mCompras_GP.mPed1_Totall);

edt_valfre.Text:=FormatFloat(mcasas,mCompras_GP.mPed1_ValFre);
edt_valfre_icms_aliq.Text:=FormatFloat(mcasas,mCompras_GP.mPed1_ValFre_Icms_Aliq);
edt_valfre_icms_valor.Text:=FormatFloat(mcasas,mCompras_GP.mPed1_ValFre_Icms_Valor);
edt_PIPIFRETE.Text := FormatFloat(mcasas, mCompras_GP.mPed1_ValFre_pipi);
edt_IPIFRETE.Text  := FormatFloat(mcasas, mCompras_GP.mPed1_ValFre_ipi);


edt_percfrete.Text := FormatFloat(mcasas, mCompras_GP.mPed1_Perc_Frete);




edt_pDesc01Exit(self);

if mCompras_GP.mped1_gravdp = 0 then
  cb_gravardp.Checked := true
else
  cb_gravardp.Checked := false;
cb_gravardpExit(Self);

{mCompras_GP.mped1_gravnf        := Query_cons.FieldByName('PF1GRAVNF').AsInteger;
if mCompras_GP.mped1_gravnf = 0 then
  cb_gravarnf.Checked := False
else
  cb_gravarnf.Checked := True;}

flercadpf02(0);

mPed_Item:=tb_pfor02_orcPF2ITEM.AsInteger+1;
// servico

// inicio


Query_cons.Close;
Query_cons.SQL.Clear;
Query_cons.SQL.Add('Select count(*) from  '+mtab_cadpf2_lotes
                +' where      PF2L_CODEMP=:CODEMP '
                +' and   PF2L_CHAVE=:CHAVE '
                +' and   PF2L_LOTSEQ=:CHAVE_ANO '
                +' and PF2L_LOTE is null ');
Query_cons.ParamByName('CODEMP').AsInteger   :=pCodEmp;
Query_cons.ParamByName('CHAVE').AsInteger    :=pChave;
Query_cons.ParamByName('CHAVE_ANO').AsInteger:=pChave_ano;
Query_cons.Open;
if Query_cons.fields[0].AsInteger>0 then
   begin
   Query_cons.Close;
   Query_cons.SQL.Clear;
   Query_cons.SQL.Add('Update '+mtab_cadpf2_lotes+' set PF2L_LOTE='+QuotedStr(' ')+'  '
                   +' where      PF2L_CODEMP=:CODEMP '
                   +' and   PF2L_CHAVE=:CHAVE '
                   +' and   PF2L_LOTSEQ=:CHAVE_ANO '
                   +' and PF2L_LOTE is null ');
   Query_cons.ParamByName('CODEMP').AsInteger   :=pCodEmp;
   Query_cons.ParamByName('CHAVE').AsInteger    :=pChave;
   Query_cons.ParamByName('CHAVE_ANO').AsInteger:=pChave_ano;
   try
      Query_cons.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end;


CB_CASASDClick(Self);

// termino

FreeAndNil(Query_cons);
//DBGrid_itens.ReadOnly:=true;




mCompras_GP.fRatearDescontosAcrescimos(0,0,0,0,0,0,0);

fLerFormaPag(0);
fSomarFPgto(0);
fTotais(0);
fBuscarValorDifal;
result:=true;

end;


function tFrm_Compras_Orc.fLercadpf02(ptipo: Integer): boolean;
begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
fInnerJoin(1,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO');

edt_codfpExit(self);
Tb_Pfor02_orc.Close;
Tb_Pfor02_orc.SQL.Clear;
Tb_Pfor02_orc.SQL.Add('select PF2CODEMP,PF2CHAVE,PF2LOTSEQ,PF2ITEM,PF2QTDP '
                     +',PF2DESC01 AS PF2DESC_PERC01'
                     +',PF2DESC02 AS PF2DESC_PERC02'
                     +',PF2CODPRO AS PF2CODPRO_INT,'
                     +'PF2DESC03 AS PF2DESC_PERC03'
                     +',PF2FRERAT'
                     +',PF2PU AS PF2PU_INT ,PF2SIT, PF2CSOSN'
                     +',PF2CFO, Pf2DESC_COMPL, PF2QTDP*PF2PU AS VALOR_TOTAL'
                     +',PF2CSOSN_ORI, PF2PREDICMNOR AS PF2ICMS_PRED,'
                     +' PF2MODBCST, PF2ST_IVA,  PF2ST_PERCRED, PF2ST_ICMSCRED, PF2ST_ICMSDEB,'
                     +' PF2PMC AS PF2PRECO_MAXCONS , PF2ALIPI AS PF2IPI_PERC'
                     +', PF2IPI_PRED AS PF2IPI_PRED '

                     +', PF2ALIQ AS PF2ICMS_PERC, PF2COFINS_PERC'
                     +',PF2PIS_PERC AS PF2PIS_PERC, PF2ICMSSN_PERC'
                     +',PF2CST_IPI AS PF2IPI_CST, PF2CST_PIS AS PF2PIS_CST, PF2CST_COFINS AS PF2COFINS_CST,PF2IPI AS PF2IPI_VALOR'
                     +',PF2BASER AS PF2ST_BASE,PF2ICMSR AS PF2ST_ICMS,PF2BASEN AS  PF2ICMS_BASE'
                     +',PF2ICMSN AS PF2ICMS_VALOR'
                     +',PF2ICMS_RED_VLR,PF2DESC_RATEADO AS PF2DESC_CABEC,'
                     +'PF2TOTDES AS PF2DESC_TOTDES, PF2PIS_VALOR,PF2TOTLIQ'
                     +',PF2ICMSSN_VALOR,PF2COFINS_VALOR,PF2VALDES AS  PF2DESC_VALOR,'
                     +'PDNOME AS NOMPRO_FOR,PDNOME AS UNDPRO_FOR,PDNOME AS NOMPRO_INT'
                     +',PDUND AS UNDPRO_INT,PF2CODPRO AS PF2CODBAR'
                     +',CASE WHEN PF2CODNCM is null THEN PDCODNCM ELSE PF2CODNCM END AS PF2CODNCM  '
                     +',CASE WHEN PF2CEST is null THEN PDCEST ELSE PF2CEST END AS PF2CEST  '

                     +',to_char(PF2CODPRO) AS PF2CODPRO_EXT ,PF2QTDP AS PF2QTDP_EXT'
                     +',PF2PU AS PF2PU_EXT  '
                     +',PDNIVEL '

                     +',PF2IPIQTDUNID '
                     +',PF2IPIVUNID '
                     +',PF2PISQTDUNID '
                     +',PF2PISVUNID '
                     +',PF2CBENEF '


                     +',PF2COFINSQTDUNID '
                     +',PF2COFINSVUNID '
                     +',PDMARCA '
                     +',PF2VICMSDESON'
                     +',PF2ID_NEW'
                     +',PF2ID_PF01_NEW'

                     +',PF2CBS_BC'
                     +',PF2CBS_CST '
                     +',PF2CBS_ALIQ'
                     +',PF2CBS_VALOR'
                     +',Pf2IBS_MUN_VALOR'
                     +',Pf2CBS_DEV_TRIB'
                     +',Pf2IBS_UF_ALIQ'
                     +',PF2IBS_UF_VALOR'
                     +',PF2IBS_MUN_ALIQ'
                     +',PF2CODCLASSTRIB'
                     +',PF2DESONERACAO_DEDUZ '
                     +',PF2DESONERACAO_MOTIVO '




                     +' FROM '+mtab_cadpf2+' '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +'  (PF2CODEMP=:CODEMP ) '
                 );
Tb_Pfor02_orc.ParamByName('CODEMP').AsInteger   :=mCompras_GP.mPed1_CodEmp;

IF mtab_cadnov>0 then
   begin
   Tb_Pfor02_orc.SQL.Add(' and PF2CODNOV=:CODNOV ');
   Tb_Pfor02_orc.ParamByName('CODNOV').AsFloat    :=mtab_cadnov;
   end
else
   begin
   Tb_Pfor02_orc.SQL.Add(' and PF2CHAVE=:CHAVE '
                 +' and PF2LOTSEQ=:CHAVE_ANO ');
   Tb_Pfor02_orc.ParamByName('CHAVE').AsInteger    :=mCompras_GP.mped1_Chave;
   Tb_Pfor02_orc.ParamByName('CHAVE_ANO').AsInteger:=mCompras_GP.mPed1_Chave_ano;

   end;



   Tb_Pfor02_orc.SQL.add(' order by PF2ITEM ');
//Tb_Pfor02_orc.SQL.savetofile(mpastatemp +'sqlpf2.txt');

try
   Tb_Pfor02_orc.Open;
except
   Tb_Pfor02_orc.SQL.savetofile(mpastatemp +'sqlpf2.txt');
   if not fVerificaRedeAtiva(true) then
      begin
      end
   else
      begin
      ex_erroSql_Novo(Tb_Pfor02_orc,2312,'_lerarq','CADP02');
      end;
   end;

if not tb_pfor02_orc.Active then
   tb_pfor02_orc.Open;
tb_pfor02_orc.Last;

end;




procedure TFrm_Compras_Orc.tb_pfor02_orcBeforeEdit(DataSet: TDataSet);
begin
if mlocalizando_pedido then
   exit;

if not sbnGravar.Enabled then
   abort;

end;

procedure TFrm_Compras_Orc.tb_pfor02_orcBeforeInsert(DataSet: TDataSet);
begin
if not sbnGravar.Enabled then
   abort
else if mCorrecaodoPedido then
   begin
   MessageDlg('Não é permitido incluir item em modo de correção!',mtInformation,[mbOk],0);
   abort;
   exit;
   end;


end;

procedure TFrm_Compras_Orc.edt_codCondPagKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 113 then
   begin
   edt_codcondpag.Text:=fChamaPV(1,'Frm_Venda_Pre.','');
   edt_codCondPagExit(Self);
   end;


end;

procedure TFrm_Compras_Orc.tb_pfor01_parcAfterInsert(DataSet: TDataSet);
var
Query_Cons: TQuery;
begin

mAnt_fpgto_datav:=pDataNula;
mAnt_fpgto_Valor:=0;


Query_Cons:= TQuery.Create(nil);
Query_Cons.DatabaseName:='SG_ASSOC';

Query_Cons.Close;
Query_Cons.SQL.Clear;
Query_Cons.SQL.Add('Select sum(PF1VVALOR) as TOT, max(PF1VCODIGO) AS PARCELA from '+mtab_cadpf1v
                          +' where PF1VCODEMP=:CODEMP '
                          +' and   PF1VCHAVE=:CHAVE '
                          +' and   PF1VLOTSEQ=:CHAVE_ANO ');
Query_Cons.ParamByName('CODEMP').AsInteger:=mCompras_GP.mPed1_Codemp;
Query_Cons.ParamByName('CHAVE').AsInteger:=mCompras_GP.mped1_Chave;
Query_Cons.ParamByName('CHAVE_ANO').AsInteger:=mCompras_GP.mPed1_Chave_ano;
try
   Query_Cons.Open;
   if Query_Cons.IsEmpty then
      begin
      tb_pfor01_parcPF1VCODIGO.AsInteger:=1;
      tb_pfor01_parcPF1VVALOR.AsFloat    :=ValFloat(edt_totliq.Text);
      end
   else
      begin
      tb_pfor01_parcPF1VCODIGO.AsInteger:=Query_Cons.FieldByName('PARCELA').AsInteger+1;
      tb_pfor01_parcPF1VVALOR.AsFloat    :=ValFloat(edt_totliq.Text)-Query_Cons.FieldByName('TOT').AsFloat;
      end;
except
  end;
tb_pfor01_parcPF1VCODEMP.Value   :=mCompras_GP.mPed1_Codemp;
tb_pfor01_parcPF1VCHAVE.Value    :=mCompras_GP.mped1_Chave;
tb_pfor01_parcPF1VDATAV.AsDateTime:=mCompras_GP.mPed1_Datap;
tb_pfor01_parcPF1VCODFP.AsInteger :=mCompras_GP.mPed1_CodFP;
tb_pfor01_parcPF1VLOTSEQ.Value:=mCompras_GP.mPed1_Chave_ano;
tb_pfor01_parcPF1V_ID_NEW.Value      :=fBuscarProximoId('CADPF1V_SEQ');
tb_pfor01_parcPF1V_ID_PF01_NEW.Value :=mCompras_GP.mped1_id_new;

if tb_pfor01_parcPF1VVALOR.AsFloat<0 then
   tb_pfor01_parcPF1VVALOR.AsFloat:=0;

end;

procedure TFrm_Compras_Orc.tb_pfor01_parcAfterDelete(DataSet: TDataSet);
begin
c(tb_pfor01_parc);
fVerificarOrdemFPgto(0);
fSomarFPgto(0);

end;

procedure TFrm_Compras_Orc.tb_pfor01_parcAfterEdit(DataSet: TDataSet);
begin
mAnt_fpgto_datav:=tb_pfor01_parcPF1VDATAV.AsDatetime;
mAnt_fpgto_valor:=tb_pfor01_parcPF1VVALOR.AsFloat;
mAnt_Fpgto_prazo   :=tb_pfor01_parcPF1VPRAZO.AsInteger;

end;

procedure TFrm_Compras_Orc.tb_pfor01_parcAfterPost(DataSet: TDataSet);
begin
c(tb_pfor01_parc);

//mFpgto_VlrFalta:=Arredonda(  ( (mFpgto_VlrFalta-mAnt_fpgto_Valor)-tb_pfor01_parcPF1VVALOR.Asfloat) ,2);
mCompras_GP.mPed1_QtdParc_ant:=-1;
mAnt_fpgto_datav:=pdatanula;
mAnt_fpgto_valor:=0;
fSomarFPgto(0);
end;

procedure TFrm_Compras_Orc.tb_pfor01_parcBeforePost(DataSet: TDataSet);
var
mDataRef: Tdatetime;
i: Integer;
begin
if tb_pfor01_parcPF1VVALOR.AsFloat=0 then
   begin
   tb_pfor01_parc.Cancel;
   Abort;
   exit;
   end;
if mCompras_GP.mPed1_DataNF<=pdatanula then
   begin
   if mCompras_GP.mPed1_Datap<=pdatanula then
      mCompras_GP.mPed1_Datap:=date;
   mDataRef:=mCompras_GP.mPed1_Datap;
   end
else
   mDataRef:=mCompras_GP.mPed1_DataNF;


if (mAnt_fpgto_valor<>0) then
   begin


   if (mAnt_Fpgto_prazo=tb_pfor01_parcPF1VPRAZO.AsInteger) and (mAnt_fpgto_datav<>tb_pfor01_parcPF1VDATAV.AsDateTime) then
      tb_pfor01_parcPF1VPRAZO.AsInteger:=round(tb_pfor01_parcPF1VDATAV.AsDateTime-mDataRef)
   else if (mAnt_Fpgto_prazo<>tb_pfor01_parcPF1VPRAZO.AsInteger) and (mAnt_fpgto_datav=Tb_Pfor01_ParcPF1VDATAV.AsDateTime) then
      Tb_Pfor01_ParcPF1VDATAV.AsDateTime:=mDataRef+tb_pfor01_parcPF1VPRAZO.AsInteger;
   end
else if Tb_Pfor01_ParcPF1VDATAV.AsDateTime<=pdatanula then
   Tb_Pfor01_ParcPF1VDATAV.AsDateTime:=mDataRef+Tb_Pfor01_ParcPF1VPRAZO.AsDateTime
else
   tb_pfor01_parcPF1VPRAZO.AsInteger:=round(Tb_Pfor01_ParcPF1VDATAV.AsDateTime-mDataRef);


if tb_pfor01_parcPF1VCODFP.IsNull then
   tb_pfor01_parcPF1VCODFP.AsInteger:=0;
if not mImportando then
   begin
   if tb_pfor01_parcPF1VDATAV.AsDateTime<date then
      begin
      if Application.MessageBox('a Data de Vencimento do titulo Esta Inferior a Data Atual Continua?','',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
         begin
         abort;
         exit;
         end;
      end;
   if tb_pfor01_parcPF1VDTDESCF.AsDateTime>tb_pfor01_parcPF1VDATAV.AsFloat then
      begin
      verteclado(0);
      MessageDlg('Data Limite para desconto não pode ser superior a data de vencimento!',mtWarning,[mbok],0);
      DBGrid_fpgto.SelectedField:=tb_pfor01_parcPF1VDTDESCF;
      DBGrid_fpgto.SetFocus;
      abort;
      exit;
      end;

   if flcadfp(0,tb_pfor01_parcPF1VCODFP.Asstring,'') then
      tb_pfor01_parcPF1VNOMFP.AsString:=DM1.Tb_FPFPDESC.asstring
   else
      begin
      verteclado(0);
      MessageDlg('Forma de Pagamento Não Encontrado!',mtWarning,[mbok],0);
      abort;
      exit;
      end;

   end;

if tb_pfor01_parcPF1VDESCF.AsFloat>=tb_pfor01_parcPF1VVALOR.AsFloat then
   begin
   verteclado(0);
   MessageDlg('Valor do Desconto Financeiro tem que ser menor que o valor do titulo!',mtWarning,[mbok],0);
   DBGrid_fpgto.SelectedField:=tb_pfor01_parcPF1VDESCF;
   DBGrid_fpgto.SetFocus;
   abort;
   exit;
   end;




For i:=0 to tb_pfor01_parc.FieldCount-1 do
   begin
   if not tb_pfor01_parc.Fields[i].IsNull then
      Continue;
   if tb_pfor01_parc.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      tb_pfor01_parc.Fields[i].Value:=0
   else if tb_pfor01_parc.Fields[i].DataType in [ftString,ftMemo] then
      tb_pfor01_parc.Fields[i].Value:=' ';
   end;



end;

procedure TFrm_Compras_Orc.tb_pfor02_orcAfterEdit(DataSet: TDataSet);
begin
if mlocalizando_pedido then
   exit;

    mCodpro_Ant:=tb_pfor02_orcPF2CODPRO_INT.AsString;
    mItem_Ant  :=tb_pfor02_orcPF2ITEM.AsInteger;
    mQtd_Ant   :=tb_pfor02_orcPF2QTDP.AsFloat;

end;

procedure TFrm_Compras_Orc.tb_pfor02_orcAfterInsert(DataSet: TDataSet);
var
Query_Item: Tquery;
begin
if mlocalizando_pedido then
   exit;


if mCompras_GP.mped1_Chave=0 then
   begin
   mPed_Item:=1;
   tb_pfor02_orcPF2ITEM.Value:=mPed_Item;
   end
else
   begin
   Query_Item:=TQuery.Create(nil);
   Query_Item.DatabaseName:='SG_ASSOC';
   Query_Item.Close;
   Query_Item.SQL.Clear;
   Query_Item.SQL.Add('select max(PF2ITEM) from '+mtab_cadpf2+' where  '
                  +' (PF2CODEMP=:CODEMP)'
                  +' and PF2CHAVE=:CHAVE '
                  +' and PF2LOTSEQ=:LOTSEQ ');
   Query_Item.ParamByName('CODEMP').AsInteger:=mCompras_GP.mPed1_Codemp;
   Query_Item.ParamByName('CHAVE').AsInteger:=mCompras_GP.mped1_Chave;
   Query_Item.ParamByName('LOTSEQ').AsInteger:=mCompras_GP.mPed1_Chave_ano;
   try
      Query_Item.Open;
      mPed_Item:=Query_item.fields[0].AsInteger+1;
      tb_pfor02_orcPF2ITEM.Value:=mPed_Item;
   except
      tb_pfor02_orcPF2ITEM.Value:=mPed_Item;
      mPed_Item:=mPed_Item+1;
      end;
   FreeAndNil(Query_item);
   end;
mCodpro_Ant:='';
mItem_Ant  :=0;
mQtd_Ant   :=0;
if mped1_csosn_nor=0 then
   mped1_csosn_nor:=101;

tb_pfor02_orcPF2CSOSN.Value:=FormatFloat('000',mped1_csosn_nor);
if valint(mcst_csosn_ant_trib)=0 then
   tb_pfor02_orcPF2SIT.Value:='000'
else
   tb_pfor02_orcPF2SIT.Value:=mcst_csosn_ant_trib;

tb_pfor02_orcPF2DESONERACAO_MOTIVO.value:=9;

end;

procedure TFrm_Compras_Orc.tb_pfor02_orcBeforeDelete(DataSet: TDataSet);
begin
if mlocalizando_pedido then
   exit;

if not sbnGravar.Enabled then
   begin
   abort;
   exit;
   end;


if mCorrecaodoPedido then
   begin
   MessageDlg('Não é permitido excluir item em modo de correção!',mtInformation,[mbOk],0);
   abort;
   exit;
   end;
mChavePF.pf01IdNew:=mCompras_GP.mped1_id_new;
if (tb_pfor02_orcPF2ID_NEW.AsInteger=0) then
   mChavePF.pf02IdNew:=fBuscarproximoId('CADPF2_SEQ')
else
   mChavePF.pf02IdNew:=tb_pfor02_orcPF2ID_NEW.AsInteger;


mCompras_GP.fGravarItem(tb_pfor02_orcPF2ITEM.AsInteger,mItem_Ant,tb_pfor02_orcPF2CFO.AsInteger,
                      tb_pfor02_orcPF2CFO.AsInteger ,tb_pfor02_orcPF2MODBCST.AsInteger,
                      0, // situacao
                      iif(CB_TIPO.ITEMINDEX<2,2,1), // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta
                      mCompras_GP.mPed1_CodFP,
                      2, // exclusao
                      tb_pfor02_orcPF2CODPRO_INT.AsString,
                      mCodpro_Ant, // codigo anterior
                      tb_pfor02_orcPF2QTDP.AsFloat,
                      mQtd_Ant,
                      tb_pfor02_orcPF2DESC_PERC01.AsFloat,
                      tb_pfor02_orcPF2DESC_PERC02.AsFloat,
                      tb_pfor02_orcPF2DESC_PERC03.AsFloat,
                      tb_pfor02_orcPF2DESC_VALOR.AsFloat, // desconto em valor
                      tb_pfor02_orcPF2PU_INT.AsFloat,
                      0, //repasse de icms
                      0, // lista neutra positiva negativa
                      tb_pfor02_orcPF2PU_INT.AsFloat,  // PRECO DE TABELA
                      tb_pfor02_orcPF2PU_INT.AsFloat, // preco da forma de pagamento
                      tb_pfor02_orcPF2PU_INT.AsFloat,   // ULTIMO PRECO DE COMPRA
                      tb_pfor02_orcPF2PU_INT.AsFloat,   // PRECO DE CUSTO
                      tb_pfor02_orcPF2PRECO_MAXCONS.AsFloat,
                      tb_pfor02_orcPF2IPI_PERC.AsFloat,
                      tb_pfor02_orcPF2IPI_PRED.AsFloat,

                      tb_pfor02_orcPF2ICMS_PERC.AsFloat,
                      0, // percentual de comissao
                      tb_pfor02_orcPF2PIS_PERC.AsFloat,
                      tb_pfor02_orcPF2COFINS_PERC.AsFloat,
                      0, // desconto financeiro
                      0, // percentual de acrescimos
                      tb_pfor02_orcPF2ICMS_PRED.AsFloat,
                      tb_pfor02_orcPF2ST_IVA.AsFloat,
                      tb_pfor02_orcPF2ST_PERCRED.AsFloat,
                      tb_pfor02_orcPF2ST_PERCRED.AsFloat,
                      tb_pfor02_orcPF2ST_ICMSDEB.AsFloat,
                      tb_pfor02_orcPF2ICMSSN_PERC.AsFloat,
                      valfloat(edt_desc_valor.Text),
                      0, // ACRESCIMOS RATEADO
                      valfloat(edt_valseg.Text),
                      ValFloat(edt_valfre.Text),
                      0, //ValFloat(edt_tarban.Text),
                      valfloat(edt_outdesp.Text),
                      tb_pfor02_orcPF2ST_BASE.AsFloat,
                      tb_pfor02_orcPF2ST_ICMS.AsFloat,
                      tb_pfor02_orcPF2SIT.AsString,
                      tb_pfor02_orcPF2PIS_CST.AsString,
                      tb_pfor02_orcPF2COFINS_CST.AsString,
                      tb_pfor02_orcPF2IPI_CST.AsString,
                      '', // ambiente
                      tb_pfor02_orcPf2DESC_COMPL.AsString,
                      tb_pfor02_orcPF2CSOSN.AsString,
                      tb_pfor02_orcPF2CSOSN_ORI.AsString,
                      '' // PROMOCAO
                      ,mCompras_GP.mPed1_NomFP,mCompras_GP.mPed1_BaixaFP
                      ,tb_pfor02_orcPF2IPIQTDUNID.AsFloat
                     ,tb_pfor02_orcPF2IPIVUNID.AsFloat
                     ,tb_pfor02_orcPF2PISQTDUNID.AsFloat
                     ,tb_pfor02_orcPF2PISVUNID.AsFloat
                     ,tb_pfor02_orcPF2CBENEF.AsString
                     ,tb_pfor02_orcPF2COFINSQTDUNID.AsFloat
                     ,tb_pfor02_orcPF2COFINSVUNID.AsFloat
                     ,tb_pfor02_orcPF2VICMSDESON.asfloat

                     ,tb_pfor02_orcPF2CODNCM.asstring
                     ,tb_pfor02_orcPF2CEST.asstring
                     ,mChavePf

                     ,'' // pPF2CBS_CST
                     ,'' // pPF2CODCLASSTRIB : string;
                     ,0 // pPF2CBS_BC
                     ,0 //pF2CBS_ALIQ
                     ,0 //pPF2CBS_VALOR
                     ,0 //pPf2IBS_MUN_VALOR
                     ,0 //pPf2CBS_DEV_TRIB
                     ,0 //pPf2IBS_UF_ALIQ
                     ,0 //pPF2IBS_UF_VALOR
                     ,0 //pPF2IBS_MUN_ALIQ : Real
                     ,0 //PF2DESONERACAO_DEDUZ : integer
                     ,9 //PF2DESONERACAO_MOTIVO : String

                      );

mped02_itemexcluido:=tb_pfor02_orcPF2ITEM.AsInteger;



fTotais(0);
fLerFormaPag(0);




end;

procedure TFrm_Compras_Orc.tb_pfor02_orcBeforePost(DataSet: TDataSet);
var
mTexto_Retorno: string;
begin
if mlocalizando_pedido then
   exit;

if length(tb_pfor02_orcPF2CODPRO_INT.AsString)<1 then
   begin
   tb_pfor02_orc.Cancel;
   Abort;
   end
else if length(tb_pfor02_orcNOMPRO_INT.AsString)<1 then
   begin
   MessageDlg('Código do Produto Invalida! '+tb_pfor02_orcPF2CODPRO_INT.AsString ,mtWarning,[mbOk],0);
   DBGrid_itens.SelectedField:=tb_pfor02_orcPF2CODPRO_INT;
   DBGrid_itens.SetFocus;
   Abort;
   end
else if (tb_pfor02_orcPF2QTDP.AsFloat<=0) and (mImportando=false) then
   begin
   MessageDlg('Quantidade Invalida!',mtWarning,[mbOk],0);
   DBGrid_itens.SelectedField:=tb_pfor02_orcPF2QTDP;
   DBGrid_itens.SetFocus;
   Abort;
   end
else if (tb_pfor02_orcPF2PU_INT.AsFloat<=0) and (mImportando=false) then
   begin
   if Application.MessageBox(pchar('O Produto '+tb_pfor02_orcNOMPRO_INT.asstring+'-'+tb_pfor02_orcPF2CODPRO_INT.Asstring+' esta sem preço, deseja continuar?'),'Confirmação', MB_YESNO+MB_DEFBUTTON2)<>mryes then
      begin
      DBGrid_itens.SelectedField:=tb_pfor02_orcPF2PU_INT;
      DBGrid_itens.SetFocus;
      Abort;
      end;
   end;
if Tb_Pfor02_OrcPF2CFO.AsInteger>4999 then
   begin
   Tb_Pfor02_OrcPF2CFO.AsInteger:=fCFOP_Entrada(Tb_Pfor02_OrcPF2CFO.AsInteger);
   end;



if tb_pfor02_orcPF2CFO.AsFloat<=999 then
   begin
   verteclado(0);
   MessageDlg('CFOP '+tb_pfor02_orcPF2CFO.AsString+' não é válido!',mtWarning,[mbOk],0);
   DBGrid_itens.SelectedField:=tb_pfor02_orcPF2CFO;
   DBGrid_itens.SetFocus;
   Abort;
   end;

if mFor_CRT in [1] then
   begin
   if not LocalizaArray(mcsosn_valido,tb_pfor02_orcPF2CSOSN.AsString) then
      begin
      MessageDlg('CSOSN '+tb_pfor02_orcPF2CSOSN.AsString,mtWarning,[mbOk],0);
      DBGrid_itens.SelectedField:=tb_pfor02_orcPF2CSOSN;
      DBGrid_itens.SetFocus;
      Abort;
      end;
   end
else
   begin
   if not LocalizaArray(mcst_icms_valido,copy(tb_pfor02_orcPF2SIT.AsString,2,2)) then
      begin
      MessageDlg('CST '+tb_pfor02_orcPF2SIT.AsString,mtWarning,[mbOk],0);
      abort;
      exit;
      end;
   end;
{if (mFor_CRT>0) and (mFor_CRT<2) then
   begin
   if not fValidarCfop(-1,tb_pfor02_orcPF2CFO.AsString
                       ,mFor_UF
                       ,tb_pfor02_orcPF2CSOSN_ORI.AsString
                       ,'CSOSN' //pTipoCST_CSOSN
                       ,tb_pfor02_orcPF2CSOSN.AsString
                       ,mTexto_Retorno) then
      begin
      fmensagem(mTexto_Retorno,0,['0'],0);
      DBGrid_itens.SelectedField:=tb_pfor02_orcPF2CSOSN;
      DBGrid_itens.SetFocus;
      Abort;
      end;
   end
else
   begin
   if not fValidarCfop(-1,tb_pfor02_orcPF2CFO.AsString
                       ,mFor_UF
                       ,copy(tb_pfor02_orcPF2SIT.AsString,1,1)
                       ,'CST' //pTipoCST_CSOSN
                       ,copy(tb_pfor02_orcPF2SIT.Asstring,2,2)
                       ,mTexto_Retorno) then
      begin
      fmensagem(mTexto_Retorno,0,['0'],0);
      DBGrid_itens.SelectedField:=tb_pfor02_orcPF2SIT;
      DBGrid_itens.SetFocus;
      Abort;
      end;
   end;  }

if Length(tb_pfor02_orcPF2SIT.AsString)<>0 then
    tb_pfor02_orcPF2SIT.Value:=formatfloat('000', valint(tb_pfor02_orcPF2SIT.Value));
if (Length(tb_pfor02_orcPF2CSOSN_ori.AsString)<0) or
   (Length(tb_pfor02_orcPF2CSOSN_ori.AsString)>7) then
   tb_pfor02_orcPF2CSOSN_ori.Value:=0;
if (Length(tb_pfor02_orcPF2SIT.AsString)>0) and (Length(tb_pfor02_orcPF2CSOSN.Value)=0) then
   begin
   if not mem_cst_csosn.Locate('cst',copy(tb_pfor02_orcPF2SIT.AsString,2,2),[]) then
      begin
      MessageDlg('CST '+tb_pfor02_orcPF2SIT.AsString+' não é válido!',mtWarning,[mbOk],0);
      DBGrid_itens.SelectedField:=tb_pfor02_orcPF2SIT;
      DBGrid_itens.SetFocus;
      Abort;
      end
   else
      tb_pfor02_orcPF2CSOSN.Value:=mem_cst_csosncsosn.AsString;
   end
else if (Length(tb_pfor02_orcPF2SIT.AsString)=0) and (Length(tb_pfor02_orcPF2CSOSN.Value)>0) then
   begin
   if not mem_cst_csosn.Locate('csosn',tb_pfor02_orcPF2CSOSN.AsString,[]) then
      begin
      MessageDlg('CSOSN '+tb_pfor02_orcPF2CSOSN.AsString+' não é válido!',mtWarning,[mbOk],0);
      DBGrid_itens.SelectedField:=tb_pfor02_orcPF2CSOSN;
      DBGrid_itens.SetFocus;
      Abort;
      end
   else
      tb_pfor02_orcPF2SIT.Value:=FormatFloat('0', tb_pfor02_orcPF2CSOSN_ORI.Value)+mem_cst_csosncst.AsString;
   end;


//if (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=1) or (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=2) then
if (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=1) then
   begin
   if not mem_cst_csosn.Locate('csosn',tb_pfor02_orcPF2CSOSN.AsString,[]) then
      begin
      verteclado(0);
      MessageDlg('CSOSN '+tb_pfor02_orcPF2CSOSN.AsString+' não é válido!',mtWarning,[mbOk],0);
      DBGrid_itens.SelectedField:=tb_pfor02_orcPF2CSOSN;
      DBGrid_itens.SetFocus;
      Abort;
      end
   end
else
   begin
   if (length(Trim(tb_pfor02_orcPF2SIT.AsString))<3) or ((length(Trim(tb_pfor02_orcPF2SIT.AsString))>3)) then
      begin
      if not mem_cst_csosn.Locate('cst',copy(tb_pfor02_orcPF2SIT.AsString,2,2),[]) then
         begin
         verteclado(0);
         MessageDlg('CST '+tb_pfor02_orcPF2SIT.AsString+' não é válido!',mtWarning,[mbOk],0);
         DBGrid_itens.SelectedField:=tb_pfor02_orcPF2SIT;
         DBGrid_itens.SetFocus;
         Abort;
         end;
      end;
   end;

if length(tb_pfor02_orcPF2SIT.AsString)<>3 then
   tb_pfor02_orcPF2SIT.Value:=copy( Formatfloat('000', valint(tb_pfor02_orcPF2SIT.Value)) ,1 , 3);



// inicio decimais

if (mAnt_Vlrtot<>tb_pfor02_orcVALOR_TOTAL.Asfloat) and (tb_pfor02_orcPF2QTDP.Asfloat<>0) then
   begin
   if tb_pfor02_orcVALOR_TOTAL.Asfloat<>Arredonda( (tb_pfor02_orcPF2PU_INT.asFloat*tb_pfor02_orcPF2QTDP.Asfloat),2) then
      begin
      if (NumeroDecimais(tb_pfor02_orcVALOR_TOTAL.Asfloat/tb_pfor02_orcPF2QTDP.Asfloat) >  mCompras_GP.mPed1_QtdDec) then
         begin
         if NumeroDecimais(tb_pfor02_orcVALOR_TOTAL.Asfloat/tb_pfor02_orcPF2QTDP.Asfloat) > 7 then
            begin
            CB_CASASD.ItemIndex:=7;
            CB_CASASDClick(Self);
            end
         else
            begin
            try
               CB_CASASD.ItemIndex:=(NumeroDecimais(tb_pfor02_orcVALOR_TOTAL.Asfloat/tb_pfor02_orcPF2QTDP.Asfloat)-1);
            except
               end;
            CB_CASASDClick(Self);
            end
         end
      else if dbgrid_itens.SelectedField=tb_pfor02_orcPF2PU_INT then
         tb_pfor02_orcVALOR_TOTAL.Asfloat:=Arredonda( (tb_pfor02_orcPF2PU_INT.asFloat*tb_pfor02_orcPF2QTDP.Asfloat),2)
      else if dbgrid_itens.SelectedField=tb_pfor02_orcVALOR_TOTAL then
         begin
         try
            tb_pfor02_orcPF2PU_INT.AsFloat:=Arredonda( (tb_pfor02_orcVALOR_TOTAL.Asfloat/tb_pfor02_orcPF2QTDP.Asfloat) , mQtdCas_arredpu) ;
         except
            tb_pfor02_orcPF2PU_INT.AsFloat:=0;
            end;
         end;
      end;
   end;

if (tb_pfor02_orcPF2QTDP.AsFloat>0) and (tb_pfor02_orcPF2PU_INT.AsFloat>0) then
   tb_pfor02_orcVALOR_TOTAL.AsFloat:=Arredonda( (tb_pfor02_orcPF2QTDP.AsFloat*tb_pfor02_orcPF2PU_INT.AsFloat),2)
else
   tb_pfor02_orcVALOR_TOTAL.AsFloat:=0;


// termino decimais




if mCompras_GP.mped1_Chave=0 then
   begin
   mCompras_GP.fGravarPed01(0);
   edt_chave.Text:=Inttostr(mCompras_GP.mped1_Chave);
   fBloqueiaLiberaPedido(1);
   end
else if mped_Alterou_Cab then
   begin
   mCompras_GP.fGravarPed01(1);
   mped_Alterou_Cab:=false;
   end;


FLimparValoresDigitados;

mChavePF.pf01IdNew:=mCompras_GP.mped1_id_new;
if (tb_pfor02_orcPF2ID_NEW.AsInteger=0) then
    tb_pfor02_orcPF2ID_NEW.AsInteger:=fBuscarproximoId('CADPF2_SEQ');

mChavePF.pf02IdNew:=tb_pfor02_orcPF2ID_NEW.AsInteger;

tb_pfor02_orcPF2DESONERACAO_MOTIVO.Value := iif(tb_pfor02_orcPF2DESONERACAO_MOTIVO.asinteger<1, 9, tb_pfor02_orcPF2DESONERACAO_MOTIVO.Value);

mCompras_GP.fGravarItem(tb_pfor02_orcPF2ITEM.AsInteger,mItem_Ant,tb_pfor02_orcPF2CFO.AsInteger,
                      tb_pfor02_orcPF2CFO.AsInteger ,tb_pfor02_orcPF2MODBCST.AsInteger,
                      0, // situacao
                      iif(CB_TIPO.ITEMINDEX<2,0,2), // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta
                      mCompras_GP.mPed1_CodFP,iif(mItem_ant=0,0,1),
                      tb_pfor02_orcPF2CODPRO_INT.AsString,
                      mCodpro_Ant, // codigo anterior
                      tb_pfor02_orcPF2QTDP.AsFloat,
                      mQtd_Ant,
                      tb_pfor02_orcPF2DESC_PERC01.AsFloat,
                      tb_pfor02_orcPF2DESC_PERC02.AsFloat,
                      tb_pfor02_orcPF2DESC_PERC03.AsFloat,
                      tb_pfor02_orcPF2DESC_VALOR.AsFloat, // desconto em valor
                      tb_pfor02_orcPF2PU_INT.AsFloat,
                      0, //repasse de icms
                      0, // lista neutra positiva negativa
                      tb_pfor02_orcPF2PU_INT.AsFloat,  // PRECO DE TABELA
                      tb_pfor02_orcPF2PU_INT.AsFloat, // preco da forma de pagamento
                      tb_pfor02_orcPF2PU_INT.AsFloat,   // ULTIMO PRECO DE COMPRA
                      tb_pfor02_orcPF2PU_INT.AsFloat,   // PRECO DE CUSTO
                      tb_pfor02_orcPF2PRECO_MAXCONS.AsFloat,
                      tb_pfor02_orcPF2IPI_PERC.AsFloat,
                      tb_pfor02_orcPF2IPI_PRED.AsFloat,

                      tb_pfor02_orcPF2ICMS_PERC.AsFloat,
                      0, // percentual de comissao
                      tb_pfor02_orcPF2PIS_PERC.AsFloat,
                      tb_pfor02_orcPF2COFINS_PERC.AsFloat,
                      0, // desconto financeiro
                      0, // percentual de acrescimos
                      tb_pfor02_orcPF2ICMS_PRED.AsFloat,
                      tb_pfor02_orcPF2ST_IVA.AsFloat,
                      tb_pfor02_orcPF2ST_PERCRED.AsFloat,
                      tb_pfor02_orcPF2ST_PERCRED.AsFloat,
                      tb_pfor02_orcPF2ST_ICMSDEB.AsFloat,
                      tb_pfor02_orcPF2ICMSSN_PERC.AsFloat,
                      iif(mImportando,0,valfloat(edt_desc_valor.Text)),
                      0, // ACRESCIMOS RATEADO
                      valfloat(edt_valseg.Text),
                      valfloat(edt_valfre.Text),
                      0, //ValFloat(edt_tarban.Text),
                      valfloat(edt_outdesp.Text),
                      tb_pfor02_orcPF2ST_BASE.AsFloat,
                      tb_pfor02_orcPF2ST_ICMS.AsFloat,
                      tb_pfor02_orcPF2SIT.AsString,

                      tb_pfor02_orcPF2PIS_CST.AsString,
                      tb_pfor02_orcPF2COFINS_CST.AsString,
                      tb_pfor02_orcPF2IPI_CST.AsString,

                      '', // ambiente
                      tb_pfor02_orcPf2DESC_COMPL.AsString,
                      tb_pfor02_orcPF2CSOSN.AsString,
                      tb_pfor02_orcPF2CSOSN_ORI.AsString,
                      '' // PROMOCAO
                      ,mCompras_GP.mPed1_NomFP,mCompras_GP.mPed1_BaixaFP
                      ,tb_pfor02_orcPF2IPIQTDUNID.AsFloat
                     ,tb_pfor02_orcPF2IPIVUNID.AsFloat
                     ,tb_pfor02_orcPF2PISQTDUNID.AsFloat
                     ,tb_pfor02_orcPF2PISVUNID.AsFloat
                     ,tb_pfor02_orcPF2CBENEF.AsString
                     ,tb_pfor02_orcPF2COFINSQTDUNID.AsFloat
                     ,tb_pfor02_orcPF2COFINSVUNID.AsFloat
                     ,tb_pfor02_orcPF2VICMSDESON.asfloat
                     ,tb_pfor02_orcPF2CODNCM.AsString
                     ,tb_pfor02_orcPF2CEST.AsString
                      ,mChavePf

                     ,tb_pfor02_orcPF2CBS_CST.Asstring
                     ,tb_pfor02_orcPF2CODCLASSTRIB.Asstring
                     ,tb_pfor02_orcPF2CBS_BC.Asfloat
                     ,tb_pfor02_orcpF2CBS_ALIQ.asfloat
                     ,tb_pfor02_orcPF2CBS_VALOR.asfloat
                     ,tb_pfor02_orcPf2IBS_MUN_VALOR.asfloat
                     ,tb_pfor02_orcPf2CBS_DEV_TRIB.asfloat
                     ,tb_pfor02_orcPf2IBS_UF_ALIQ.asfloat
                     ,tb_pfor02_orcPF2IBS_UF_VALOR.asfloat
                     ,tb_pfor02_orcPF2IBS_MUN_ALIQ.asfloat
                     ,tb_pfor02_orcPF2DESONERACAO_DEDUZ.AsInteger
                     ,tb_pfor02_orcPF2DESONERACAO_MOTIVO.AsInteger



                      );



tb_pfor02_orcPF2CODEMP.Value := mCompras_GP.mPed1_CodEmp;
tb_pfor02_orcPF2CHAVE.Value  := mCompras_GP.mped1_Chave;
tb_pfor02_orcPF2LOTSEQ.Value := mCompras_GP.mPed1_Chave_ano;

tb_pfor02_orcPF2IPI_VALOR.Value:=mCompras_GP.mItem_IPI_VALOR;
tb_pfor02_orcPF2ST_BASE.Value:=mCompras_GP.mItem_ST_BASE;
tb_pfor02_orcPF2ST_ICMS.Value:=mCompras_GP.mItem_ST_ICMS;
tb_pfor02_orcPF2ICMS_BASE.Value:=mCompras_GP.mItem_ICMS_BASE;
tb_pfor02_orcPF2ICMS_VALOR.Value:=mCompras_GP.mItem_ICMS_VALOR;
tb_pfor02_orcPF2ICMS_RED_VLR.Value:=mCompras_GP.mItem_ICMS_RED_VLR;
tb_pfor02_orcPF2DESC_CABEC.Value:=mCompras_GP.mItem_DESC_CABEC;
tb_pfor02_orcPF2IPI_VALOR.Value:=mCompras_GP.mItem_IPI_VALOR;
tb_pfor02_orcPF2DESC_TOTDES.Value:=mCompras_GP.mItem_DESC_TOTDES;
tb_pfor02_orcPF2PIS_VALOR.Value:=mCompras_GP.mItem_PIS_VALOR;
tb_pfor02_orcPF2COFINS_VALOR.Value:=mCompras_GP.mItem_Cofins_VALOR;
tb_pfor02_orcPF2TOTLIQ.Value:=mCompras_GP.mItem_TOTLIQ;
tb_pfor02_orcPF2ICMSSN_VALOR.Value:=mCompras_GP.mItem_ICMSSN_VALOR;

//if (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=1) or (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=2) then
if (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=1)  then
   begin
   if tb_pfor02_orcPF2SIT.Value[2] in ['1','6','3','7'] then
      begin
      mcst_csosn_ant_ret:=tb_pfor02_orcPF2CSOSN.Value;
      mcfop_ant_ret:=tb_pfor02_orcPF2CFO.asstring;
      end
   else
      begin
      mcst_csosn_ant_trib:=tb_pfor02_orcPF2CSOSN.Value;
      mcfop_ant_trib:=tb_pfor02_orcPF2CFO.asstring;
      end;
   end
else
   begin
   if tb_pfor02_orcPF2SIT.Value[2] in ['1','6','3','7'] then
      begin
      mcst_csosn_ant_ret:=tb_pfor02_orcPF2SIT.Value;
      mcfop_ant_ret:=tb_pfor02_orcPF2CFO.asstring;
      end
   else
      begin
      mcst_csosn_ant_trib:=tb_pfor02_orcPF2SIT.Value;
      mcfop_ant_trib:=tb_pfor02_orcPF2CFO.asstring;
      end;
   end;

mped1_csosn_nor:=valint(tb_pfor02_orcPF2CSOSN.Asstring);



fTotais(0);
fLerFormaPag(0);


end;

procedure TFrm_Compras_Orc.sbnImpXMLClick(Sender: TObject);
var
  form_agde: TFrm_Agde;
  //mDadosExcel: tStrings;
  Query_FP: TQuery;
  Query_temp: TQuery;
  adoQuery_temp: TADOQuery;
begin
fBloqueiaLiberaPedido(0);
//mDadosExcel:=tStringlist.create;

fAtualizarBotoes(0);
fLimparCampos(0);

fBloquearLiberarCampos(false);

Application.CreateForm(Tfrm_compras_orc_impxml,frm_compras_orc_impxml);
frm_compras_orc_impxml.ShowModal;
if frm_compras_orc_impxml.mIncluirPedido=true then
   begin
   mImportando:=true;
   sbnIncluirClick(self);
   if fsonumero(frm_compras_orc_impxml.edt_tra_cnpjtra.Text)=0 then
      begin
      edt_codtra.Text:='';
      edt_nomtra.Text:='';
      end
   else
      begin
      edt_codtra.Text:=frm_compras_orc_impxml.edt_tra_codtra.Text;
      edt_nomtra.Text:=frm_compras_orc_impxml.edt_nomtra.Text;
      end;
   mCompras_GP.mPed1_CodTra:=fSonumero(edt_codtra.Text);
   RGFRETEPC.ItemIndex:=frm_compras_orc_impxml.RGFRETEPC.ItemIndex;
   mCompras_GP.mPed1_OutDesp:=valfloat(frm_compras_orc_impxml.edt_outdesp.Text);
   edt_outdesp.Text:=frm_compras_orc_impxml.edt_outdesp.Text;

   mCompras_GP.mPed1_ValSeg :=valfloat(frm_compras_orc_impxml.edt_valseg.Text);
   edt_valseg.Text          :=frm_compras_orc_impxml.edt_valseg.Text;
   mCompras_GP.mPed1_ValFre :=valfloat(frm_compras_orc_impxml.edt_valfre.Text);
   edt_valfre.Text          :=frm_compras_orc_impxml.edt_valfre.Text;

   CB_CASASD.ItemIndex:=frm_compras_orc_impxml.mcasaspu_ped-1;
   CB_CASASDClick(self);
//   fRecalcularPedido(3,'S');



   mCompras_GP.mPed1_Frete_CIFFOB:=valint(copy(RGFRETEPC.Text,1,1));

   edt_nfe_chave.Text:=frm_compras_orc_impxml.edt_nfe_chave.Text;
   mCompras_GP.mPed1_Nfe_Chave:=fdeixanum(frm_compras_orc_impxml.edt_nfe_chave.Text);


   CB_MODELO.ItemIndex      :=frm_compras_orc_impxml.CB_MODELONF.ItemIndex;
   mCompras_GP.mPed1_Modelo :=copy(CB_MODELO.Text,1,2) ;

   edt_numnf.Text:=frm_compras_orc_impxml.edt_numnf.Text;
   mCompras_GP.mPed1_NumNF   :=fsonumero(edt_numnf.Text);

   edt_serie.Text  :=frm_compras_orc_impxml.edt_serie.Text;
   mCompras_GP.mPed1_Serie   :=edt_serie.Text;


   edt_datent.Date :=Date;
   mCompras_GP.mPed1_DataEnt   :=edt_datent.Date;

   edt_datanf.Date :=frm_compras_orc_impxml.edt_datanf.Date;
   mCompras_GP.mPed1_DataNF   :=edt_datanf.Date;

   edt_numdup.Text :=frm_compras_orc_impxml.edt_numnf.Text;
   mCompras_GP.mped1_numdup   :=fsonumero( edt_numdup.Text);

   edt_desd.Text   :='A';
   mCompras_GP.mped1_desd   := edt_desd.Text;


   edt_codfor.Text:=frm_compras_orc_impxml.edt_codfor.Text;
   edt_codforExit(self);
   frm_compras_orc_impxml.Tb_Pfor02_Orc.First;

   if length(frm_compras_orc_impxml.CB_CRT.Text)<1 then
      begin
      if frm_compras_orc_impxml.Tb_Pfor02_OrcPF2CSOSN.AsInteger>0 then
         frm_compras_orc_impxml.CB_CRT.Text:='1'
      else
         frm_compras_orc_impxml.CB_CRT.Text:='3';
      end;
   if mFor_CRT<>valint(frm_compras_orc_impxml.CB_CRT.Text[1]) then
      begin
      mFor_CRT:=valint(frm_compras_orc_impxml.CB_CRT.Text[1]);
      Query_FP:=TQuery.Create(nil);
      Query_FP.DatabaseName:='SG_ASSOC';
      query_fp.Close;
      query_fp.sql.clear;
      query_fp.sql.Add(' Update cadfor set FCRT=:CRT where FCODFOR=:CODFOR ');
      Query_FP.ParamByName('CRT').AsInteger :=mFor_CRT;
      Query_FP.ParamByName('CODFOR').AsFloat:=fsonumero(edt_codfor.Text);
      try
         Query_FP.ExecSQL;
         fdm1StartCommit;
      except
         end;
      freeandnil(Query_temp);
      edt_codtraExit(self);
      end;
   mCompras_GP.mPed1_TabPV :='PO';
   mCompras_GP.mPed1_CodPV := 99;
   edt_codCondPag.Text:=mCompras_GP.mPed1_TabPV+IntTostr(mCompras_GP.mPed1_CodPV);
   edt_codCondPagExit(Self);

   DBGrid_itens.DataSource:=nil;
   frm_compras_orc_impxml.tb_pfor02_orc.First;
   Application.CreateForm(TFrm_Agde, form_agde);
   form_agde.mag_qtdreg:=frm_compras_orc_impxml.tb_pfor02_orc.RecordCount;
   form_agde.mag_qtdlis:=0;
   form_agde.Label1.Caption:='Aguarde enquanto é inserido os produtos...';
   form_agde.Label1.Visible:=true;
   form_agde.gb_progres.Visible:=true;
   form_agde.Show;
   while not Frm_Compras_Orc_impxml.tb_pfor02_orc.Eof do
      begin
      form_agde.mag_qtdlis:=form_agde.mag_qtdlis+1;
      form_agde.Gauge1.Progress:=form_agde.mag_qtdlis*100 div form_agde.mag_qtdreg;
      verteclado(0);
      tb_pfor02_orc.Append;
      tb_pfor02_orcPF2QTDP.Value         := frm_compras_orc_impxml.tb_pfor02_orcPF2QTDPED_INT.AsFloat;
      tb_pfor02_orcPF2FRERAT.Value       := frm_compras_orc_impxml.tb_pfor02_orcPF2FRERAT.Value;
      tb_pfor02_orcPF2DESC_PERC01.Value  := 0;
      tb_pfor02_orcPF2DESC_PERC02.Value  := 0;
      tb_pfor02_orcPF2DESC_PERC03.Value  := 0;
      tb_pfor02_orcPF2DESC_VALOR.AsFloat := frm_compras_orc_impxml.Tb_Pfor02_OrcPF2DESC_VALOR.Value;
//      IF frm_compras_orc_impxml.tb_pfor02_orcPF2CODPRO_INT.AsFloat=7641 THEN
//         ShowMessage('Este e o Codigo ');

      if (frm_compras_orc_impxml.Tb_Pfor02_OrcPF2IPI_VALOR.AsFloat>0) and (frm_compras_orc_impxml.Tb_Pfor02_OrcPF2ST_ICMS.AsFloat>0) then
         begin

         if frm_compras_orc_impxml.Tb_Pfor02_OrcPF2MODBCST.AsInteger=4 then
            begin
            if (frm_compras_orc_impxml.Tb_Pfor02_OrcPF2QTDP.AsFloat*frm_compras_orc_impxml.Tb_Pfor02_OrcPF2PU.AsFloat)+
               (
               (frm_compras_orc_impxml.Tb_Pfor02_OrcPF2QTDP.AsFloat*frm_compras_orc_impxml.Tb_Pfor02_OrcPF2PU.AsFloat)*
                frm_compras_orc_impxml.Tb_Pfor02_OrcPF2ST_IVA.AsFloat/100) < frm_compras_orc_impxml.tb_pfor02_orcPF2ST_BASE.asfloat then
                mCompras_GP.mPed1_Baser_IPI:=1;
            end;
         end;
      tb_pfor02_orcPF2CODPRO_INT.Value   :=frm_compras_orc_impxml.tb_pfor02_orcPF2CODPRO_INT.AsFloat;
      tb_pfor02_orcPF2PU_INT.Value       :=frm_compras_orc_impxml.tb_pfor02_orcpcouni_int.AsFloat;
      tb_pfor02_orcPF2PU_INT.Value       :=frm_compras_orc_impxml.tb_pfor02_orcPF2PU_INT.Asfloat;
      tb_pfor02_orcPF2SIT.Value          :=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2SIT.AsString;
      tb_pfor02_orcPF2CSOSN.Value        :=frm_compras_orc_impxml.tb_pfor02_orcPF2CSOSN.AsString;
      tb_pfor02_orcPF2CFO.Value          :=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2CFO.AsInteger;
      tb_pfor02_orcPf2DESC_COMPL.Value   :=frm_compras_orc_impxml.tb_pfor02_orcPf2DESC_COMPL.AsString;
      tb_pfor02_orcVALOR_TOTAL.Value     :=frm_compras_orc_impxml.tb_pfor02_orcVALOR_TOTAL.AsFloat;
      tb_pfor02_orcPF2ICMS_PRED.Value    :=frm_compras_orc_impxml.tb_pfor02_orcPF2ICMS_PRED.AsFloat;
      tb_pfor02_orcPF2MODBCST.Value      :=frm_compras_orc_impxml.tb_pfor02_orcPF2MODBCST.AsInteger;
      tb_pfor02_orcPF2ST_IVA.Value       :=frm_compras_orc_impxml.tb_pfor02_orcPF2ST_IVA.AsFloat;
      tb_pfor02_orcPF2ST_PERCRED.Value   :=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2ST_PERCRED.AsFloat;
      tb_pfor02_orcPF2ST_ICMSCRED.Value  :=frm_compras_orc_impxml.tb_pfor02_orcPF2ST_ICMSCRED.AsFloat;
      tb_pfor02_orcPF2ST_ICMSDEB.Value   :=frm_compras_orc_impxml.tb_pfor02_orcPF2ST_ICMSDEB.AsFloat;
      tb_pfor02_orcPF2ST_BASE.Value      :=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2ST_BASE.AsFloat;
      tb_pfor02_orcPF2ST_ICMS.Value      :=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2ST_ICMS.AsFloat;
      tb_pfor02_orcPF2DESC_TOTDES.Value  :=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2DESC_TOTDES.AsFloat;

      tb_pfor02_orcPF2PRECO_MAXCONS.Value:=frm_compras_orc_impxml.tb_pfor02_orcPF2PRECO_MAXCONS.AsFloat;
      tb_pfor02_orcPF2ICMS_PERC.Value    :=frm_compras_orc_impxml.tb_pfor02_orcPF2ICMS_PERC.AsFloat;
      tb_pfor02_orcPF2COFINS_PERC.Value  :=frm_compras_orc_impxml.tb_pfor02_orcPF2COFINS_PERC.AsFloat;
      tb_pfor02_orcPF2PIS_PERC.Value     :=frm_compras_orc_impxml.tb_pfor02_orcPF2PIS_PERC.AsFloat;
      tb_pfor02_orcPF2PIS_CST.Value      :=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2PIS_CST.AsString;
      tb_pfor02_orcPF2COFINS_CST.Value   :=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2COFINS_CST.AsString;
      tb_pfor02_orcNOMPRO_INT.Value      :=frm_compras_orc_impxml.tb_pfor02_orcNOMPRO_INT.AsString;
      tb_pfor02_orcPF2CODNCM.AsString       :=frm_compras_orc_impxml.Tb_Pfor02_OrcCODNCM.AsString;
      tb_pfor02_orcPF2CEST.AsString       :=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2CEST.AsString;
      tb_pfor02_orcUNDPRO_INT.Value      :=frm_compras_orc_impxml.tb_pfor02_orcUNDPRO_INT.AsString;
      tb_pfor02_orcPF2CSOSN_ORI.Value    :=frm_compras_orc_impxml.tb_pfor02_orcPF2CSOSN_ORI.AsInteger;
      tb_pfor02_orcPF2ICMSSN_PERC.Value  :=frm_compras_orc_impxml.tb_pfor02_orcPF2ICMSSN_PERC.AsFloat;
      tb_pfor02_orcPF2IPI_CST.Value      :=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2IPI_CST.AsString;
      tb_pfor02_orcPF2IPI_VALOR.Value    :=frm_compras_orc_impxml.tb_pfor02_orcPF2IPI_VALOR.AsFloat;
      tb_pfor02_orcPF2IPI_PERC.Value     :=frm_compras_orc_impxml.tb_pfor02_orcPF2IPI_PERC.AsFloat;
      tb_pfor02_orcPF2IPI_PRED.Value     :=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2IPI_PRED.AsFloat;
      tb_pfor02_orcPF2IPIQTDUNID.Value   :=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2IPIQTDUNID.AsFloat;
      tb_pfor02_orcPF2IPIVUNID.Value     :=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2IPIVUNID.AsFloat;
      tb_pfor02_orcPF2VICMSDESON.Value   :=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2VICMSDESON.AsFloat;
      tb_pfor02_orcPF2ITEM.Value         :=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2ITEM.AsFloat;

      if frm_compras_orc_impxml.tb_pfor02_orcPF2IPI_VALOR.AsFloat=0 then
         begin

         tb_pfor02_orcPF2IPI_PERC.Value     :=frm_compras_orc_impxml.tb_pfor02_orcPF2IPI_PERC.AsFloat;
         tb_pfor02_orcPF2IPIQTDUNID.Value   :=0;
         tb_pfor02_orcPF2IPIVUNID.Value     :=0;
         end;


      tb_pfor02_orcPF2ICMS_BASE.Value    :=frm_compras_orc_impxml.tb_pfor02_orcPF2ICMS_BASE.AsFloat;
      tb_pfor02_orcPF2ICMS_VALOR.Value   :=frm_compras_orc_impxml.tb_pfor02_orcPF2ICMS_VALOR.AsFloat;
      tb_pfor02_orcPF2ICMS_PERC.Value    :=frm_compras_orc_impxml.tb_pfor02_orcPF2ICMS_PERC.AsFloat;
      tb_pfor02_orcPF2ICMS_RED_VLR.Value :=frm_compras_orc_impxml.tb_pfor02_orcPF2ICMS_RED_VLR.AsFloat;
      tb_pfor02_orcPF2DESC_CABEC.Value   :=0;
      tb_pfor02_orcPF2DESC_PERC01.Value  := frm_compras_orc_impxml.Tb_Pfor02_OrcPF2DESC_PERC01.AsFloat;
      tb_pfor02_orcPF2PIS_VALOR.Value    :=Frm_compras_orc_impxml.tb_pfor02_orcPF2PIS_VALOR.AsFloat;
      tb_pfor02_orcPF2TOTLIQ.Value       :=frm_compras_orc_impxml.tb_pfor02_orcPF2TOTLIQ.AsFloat;
      tb_pfor02_orcPF2ICMSSN_VALOR.Value :=frm_compras_orc_impxml.tb_pfor02_orcPF2ICMSSN_VALOR.AsFloat;
      tb_pfor02_orcPF2ICMSSN_PERC.Value  :=frm_compras_orc_impxml.tb_pfor02_orcPF2ICMSSN_PERC.AsFloat;

      tb_pfor02_orcPF2COFINSQTDUNID.Value :=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2COFINSQTDUNID.AsFloat;
      tb_pfor02_orcPF2COFINSVUNID.Value   :=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2COFINSVUNID.AsFloat;

      tb_pfor02_orcPF2PISQTDUNID.Value  :=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2PISQTDUNID.AsFloat;
      tb_pfor02_orcPF2PISVUNID.Value    :=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2PISVUNID.AsFloat;
      tb_pfor02_orcPF2CBENEF.AsString   :=frm_compras_orc_impxml.Tb_pfor02_orcPF2CBENEF.asString;



      tb_pfor02_orcPF2CBS_CST.AsString   :=frm_compras_orc_impxml.Tb_pfor02_orcPF2CBS_CST.asString;
      tb_pfor02_orcPF2CODCLASSTRIB.AsString   :=frm_compras_orc_impxml.Tb_pfor02_orcPF2CODCLASSTRIB.asString;


      tb_pfor02_orcPF2PISVUNID.Value    :=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2PISVUNID.AsFloat;
      tb_pfor02_orcPF2CBS_BC.Value    :=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2CBS_BC.AsFloat;
      tb_pfor02_orcpF2CBS_ALIQ.Value    :=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2CBS_ALIQ.AsFloat;
      tb_pfor02_orcPF2CBS_VALOR.Value    :=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2CBS_VALOR.AsFloat;
      tb_pfor02_orcPf2IBS_MUN_VALOR.Value    :=frm_compras_orc_impxml.Tb_Pfor02_OrcPf2IBS_MUN_VALOR.AsFloat;
      tb_pfor02_orcPF2CBS_DEV_TRIB.Value    :=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2CBS_DEV_TRIB.AsFloat;
      tb_pfor02_orcPF2IBS_UF_ALIQ.Value    :=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2IBS_UF_ALIQ.AsFloat;

      tb_pfor02_orcPF2IBS_UF_VALOR.Value    :=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2IBS_UF_VALOR.AsFloat;
      tb_pfor02_orcPF2IBS_MUN_ALIQ.Value    :=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2IBS_MUN_ALIQ.AsFloat;





      tb_pfor02_orc.Post;
      if Log_TipoLote=1 then
         begin
         if frm_compras_orc_impxml.Tb_PF2_Lotes.Locate('PF2L_ITEM',frm_compras_orc_impxml.Tb_Pfor02_OrcPF2ITEM.AsInteger,[]) then
            begin
            While (not frm_compras_orc_impxml.Tb_PF2_Lotes.Eof) and
               (frm_compras_orc_impxml.Tb_PF2_LotesPF2L_ITEM.AsInteger=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2ITEM.AsInteger) do
               begin
               Tb_PF2_Lotes.Append;
               Tb_PF2_LotesPF2L_CODEMP.AsInteger:=codemp;
               Tb_PF2_LotesPF2L_CODPRO.AsFloat  :=frm_compras_orc.tb_pfor02_orcPF2CODPRO_INT.AsFloat;
               Tb_PF2_LotesPF2L_LOTSEQ.AsFloat  :=frm_compras_orc.tb_pfor02_orcPF2LOTSEQ.AsFloat;
               Tb_PF2_LotesPF2L_CHAVE.AsFloat   :=frm_compras_orc.tb_pfor02_orcPF2CHAVE.AsFloat;
               Tb_PF2_LotesPF2L_ITEM.AsFloat    :=frm_compras_orc.tb_pfor02_orcPF2ITEM.AsFloat;
               Tb_PF2_LotesPF2L_LOTE.Value      :=trim(frm_compras_orc_impxml.Tb_PF2_LotesPF2L_LOTE.Value);

               if Tb_PF2_LotesPF2L_LOTE.Value='' then
                  Tb_PF2_LotesPF2L_LOTE.Value:=' ';

               Tb_PF2_LotesPF2L_DTFAB.Value     :=frm_compras_orc_impxml.Tb_PF2_LotesPF2L_DTFAB.Value;
               Tb_PF2_LotesPF2L_DTVCTO.Value    :=frm_compras_orc_impxml.Tb_PF2_LotesPF2L_DTVCTO.Value;
               Tb_PF2_LotesPF2L_QTD.Value       :=frm_compras_orc_impxml.Tb_PF2_LotesPF2L_QTD.Value;
               Tb_PF2_Lotes.Post;
               Frm_Compras_Orc_impxml.Tb_PF2_Lotes.Next;
               end;
            end;
         end;
      frm_compras_orc_impxml.tb_pfor02_orc.Next;
      end;




   if Arredonda(mCompras_GP.mPed1_Icms_Base-valfloat(frm_compras_orc_impxml.edt_bcicms.Text),2)<>0 then
      mCompras_GP.mPed1_VD_ICMS_BASE:=valfloat(Frm_Compras_Orc_impxml.edt_bcicms.Text);

   if Arredonda(mCompras_GP.mPed1_Icms_Valor-valfloat(Frm_Compras_Orc_impxml.edt_vlricms.Text),2)<>0 then
      mCompras_GP.mPed1_VD_ICMS_VALOR:=valfloat(Frm_Compras_Orc_impxml.edt_vlricms.Text);

   if Arredonda(mCompras_GP.mPed1_IPI_Valor-valfloat(frm_compras_orc_impxml.edt_totipi.Text),2)<>0 then
      mCompras_GP.mPed1_VD_IPI_Valor:=valfloat(Frm_Compras_Orc_impxml.edt_totipi.Text);

   if Arredonda(mCompras_GP.mPed1_ST_base-valfloat(frm_compras_orc_impxml.edt_bcicmsst.Text),2)<>0 then
      mCompras_GP.mPed1_VD_ICMSST_BASE:=valfloat(Frm_Compras_Orc_impxml.edt_bcicmsst.Text);

   if Arredonda(mCompras_GP.mPed1_ST_Icms-valfloat(frm_compras_orc_impxml.edt_vlricmsst.Text),2)<>0 then
      mCompras_GP.mPed1_VD_ICMSST_VALOR:=valfloat(Frm_Compras_Orc_impxml.edt_vlricmsst.Text);

   if Arredonda( mCompras_GP.mPed1_PIS_Valor-valfloat(frm_compras_orc_impxml.edt_vlrPIS.Text),2)<>0 then
      mCompras_GP.mPed1_VD_PIS_VALOR:=valfloat(Frm_Compras_Orc_impxml.edt_vlrPIS.Text);

   if Arredonda(mCompras_GP.mPed1_PIS_Base-valfloat(frm_compras_orc_impxml.edt_bcPIS.Text),2)<>0 then
      mCompras_GP.mPed1_VD_PIS_BASE:=valfloat(Frm_Compras_Orc_impxml.edt_bcPIS.Text);

   if Arredonda(mCompras_GP.mPed1_Cofins_Valor-valfloat(frm_compras_orc_impxml.edt_vlrCofins.Text),2)<>0 then
      mCompras_GP.mPed1_VD_Cofins_VALOR:=valfloat(Frm_Compras_Orc_impxml.edt_vlrCofins.Text);

   if Arredonda(mCompras_GP.mPed1_Cofins_Base-valfloat(frm_compras_orc_impxml.edt_bcCofins.Text),2)<>0 then
      mCompras_GP.mPed1_VD_Cofins_BASE:=valfloat(Frm_Compras_Orc_impxml.edt_bcCofins.Text);


   //edt_desc_valor.Text:=Frm_Compras_Orc_impxml.edt_descItens.Text;
   //edt_desc_valorExit(self);

   fLercadpf02(0);

   FreeandNil(form_agde);
   mImportando:=false;
   DBGrid_itens.DataSource:=Src_Pfor02_orc;
   fRecalcularPedido(3,'S');


   frm_compras_orc_impxml.tb_vcto.First;
   fLerFormaPag(0);
   if frm_compras_orc_impxml.tb_vcto.IsEmpty then
      begin
      Query_FP:=TQuery.Create(nil);
      Query_FP.DatabaseName:='SG_ASSOC';
      query_fp.Close;
      query_fp.sql.clear;
      query_fp.sql.Add('      select * from ( '
                      +'select rownum as coluna,fp.* '
                      +' from '
                      +' ( '
                      +' select fpcodigo,fpdesc from cadfp '
                      +' order by fpcodigo) fp '
                      +' ) '
                      +'  where coluna < 2 ');
       query_fp.Open;

      tb_pfor01_parc.Append;
      tb_pfor01_parcPF1VCODEMP.Value:=mCompras_GP.mPed1_Codemp;
      tb_pfor01_parcPF1VLOTSEQ.Value:=mCompras_GP.mPed1_Chave_ano;
      tb_pfor01_parcPF1VCHAVE.Value :=mCompras_GP.mped1_Chave;
      tb_pfor01_parcPF1VDATAV.Value :=date;
      tb_pfor01_parcPF1VVALOR.Value :=mCompras_GP.mPed1_Totall;
      tb_pfor01_parcPF1VPRAZO.Value :=0;
      if query_fp.IsEmpty  then
         begin
         tb_pfor01_parcPF1VCODFP.Value :=0;
         tb_pfor01_parcPF1VNOMFP.Value :='DINHEIRO';
         end
      else
         tb_pfor01_parcPF1VCODFP.Value :=query_fp.fieldbyname('fpcodigo').AsInteger;
         tb_pfor01_parcPF1VNOMFP.Value :=query_fp.fieldbyname('fpdesc').AsString;

      tb_pfor01_parcPF1VQTDPARC.Value :=1;
      tb_pfor01_parcPF1VBAIXA.Value :='N';
      tb_pfor01_parcPF1VDESCF.Value :=0;
      tb_pfor01_parcPF1VDTDESCF.Value :=pdatanula;
      tb_pfor01_parc.Post;
      end
   else
      begin
      While not frm_compras_orc_impxml.tb_vcto.eof do
         begin
         tb_pfor01_parc.Append;
         tb_pfor01_parcPF1VCODEMP.Value:=mCompras_GP.mPed1_Codemp;
         tb_pfor01_parcPF1VLOTSEQ.Value:=mCompras_GP.mPed1_Chave_ano;
         tb_pfor01_parcPF1VCHAVE.Value :=mCompras_GP.mped1_Chave;
         tb_pfor01_parcPF1VDATAV.Value :=frm_compras_orc_impxml.tb_vctoPF1VDATAV.Value;
         tb_pfor01_parcPF1VVALOR.Value :=frm_compras_orc_impxml.tb_vctoPF1VVALOR.Value;
         tb_pfor01_parcPF1VPRAZO.Value :=frm_compras_orc_impxml.tb_vctoPF1VPRAZO.Value;
         tb_pfor01_parcPF1VCODFP.Value :=frm_compras_orc_impxml.tb_vctoPF1VCODFP.Value;
         tb_pfor01_parcPF1VNOMFP.Value :=frm_compras_orc_impxml.tb_vctoPF1VNOMFP.Value;
         if length(tb_pfor01_parcPF1VNOMFP.AsString)=0  then
            begin
            if  fLCadFP(0,tb_pfor01_parcPF1VCODFP.AsString,'') then
                tb_pfor01_parcPF1VNOMFP.AsString:=DM1.Tb_FPFPDESC.AsString;
            end;

         tb_pfor01_parcPF1VQTDPARC.Value :=frm_compras_orc_impxml.tb_vctoPF1VQTDPARC.Value;
         tb_pfor01_parcPF1VBAIXA.Value :=frm_compras_orc_impxml.tb_vctoPF1VBAIXA.Value;
         tb_pfor01_parcPF1VDESCF.Value :=frm_compras_orc_impxml.tb_vctoPF1VDESCF.Value;
         tb_pfor01_parcPF1VDTDESCF.Value :=frm_compras_orc_impxml.tb_vctoPF1VDTDESCF.Value;
         tb_pfor01_parc.Post;
         frm_compras_orc_impxml.tb_vcto.Next;
         end;
      end;


   {
   tb_pfor02_orc.First;
   While not tb_pfor02_orc.Eof do
      begin
      if frm_compras_orc_impxml.tb_pfor02_orc.Locate('PF2ITEM',tb_pfor02_orcPF2ITEM.AsInteger,[]) then
         begin
         if Arredonda( tb_pfor02_orcVALOR_TOTAL.AsFloat,2)<>Arredonda( frm_compras_orc_impxml.Tb_Pfor02_OrcVALOR_TOTAL.AsFloat,2) then
            begin
//            tb_pfor02_orc.Edit;
//            tb_pfor02_orcPF2PU_INT.AsFloat:=frm_compras_orc_impxml.Tb_Pfor02_OrcVALOR_TOTAL.AsFloat/tb_pfor02_orcPF2QTDP.AsFloat;
//            tb_pfor02_orc.Post;
                mDadosExcel.Add(tb_pfor02_orcPF2CODPRO_INT.AsString+';'+tb_pfor02_orcVALOR_TOTAL.AsString+';'+frm_compras_orc_impxml.Tb_Pfor02_OrcVALOR_TOTAL.AsString);
            end;
         end;
      tb_pfor02_orc.Next;
      end;

}
   FreeandNil(form_agde);
   mImportando:=false;
   DBGrid_itens.DataSource:=Src_Pfor02_orc;

//  ShowMessage('salvando xml 4293');

  if Copy(Banco_Servidor,length(Banco_Servidor)-2,1)<>'\' then
    Banco_Servidor := Banco_Servidor+'\';
  if not DirectoryExists(Banco_Servidor+'COMPRAS') then
    CreateDir(Banco_Servidor+'COMPRAS');
  if not DirectoryExists(Banco_Servidor+'COMPRAS\'+FormatDateTime('mm-yyyy',mCompras_GP.mPed1_DataNF)) then
    CreateDir(Banco_Servidor+'COMPRAS\'+FormatDateTime('mm-yyyy',mCompras_GP.mPed1_DataNF));
  frm_compras_orc_impxml.vXMLDoc.SaveToFile(Banco_Servidor+'COMPRAS\'+FormatDateTime('mm-yyyy',mCompras_GP.mPed1_DataNF)+'\'+mCompras_GP.mPed1_Nfe_Chave+'.xml');


{  adoQuery_temp:=TADOQuery.Create(nil);
  adoQuery_temp.Connection:=DM1_ADO.ADOConnection1;
  adoQuery_temp.Close;
  adoQuery_temp.SQL.Clear;
  adoQuery_temp.SQL.Add('Update CADPF1 set'
                       +' PF1NFE_XML_FORNECEDOR=:NFE_XML_FORNECEDOR ');
  adoQuery_temp.SQL.Add(' where PF1CHAVE=:CHAVE '
                       +' and PF1LOTSEQ=:CHAVE_ANO '
                       +' and PF1CODEMP=:CODEMP ');
  adoQuery_temp.Parameters.ParamByName('NFE_XML_FORNECEDOR').Value := frm_compras_orc_impxml.vXMLDoc.XML.Text;
  adoQuery_temp.Parameters.ParamByName('CHAVE').Value:=mCompras_GP.mped1_Chave;
  adoQuery_temp.Parameters.ParamByName('CHAVE_ANO').Value:=mCompras_GP.mPed1_Chave_ano;
  adoQuery_temp.Parameters.ParamByName('CODEMP').Value:=mCompras_GP.mPed1_Codemp;
  try
     adoQuery_temp.ExecSQL;
     fdm1StartCommit;
  except
     end;
  FreeAndNil(adoQuery_temp);  }
 //  mDadosExcel.savetofile('c:\pedfor.csv');
 //  freeandnil(mDadosExcel);

   fAtualizarCadEmailXml(edt_nfe_chave.Text,true,mCompras_GP.mped1_id_new);

   end;

FreeAndNil(frm_compras_orc_impxml);

end;

procedure TFrm_Compras_Orc.fAtualizarCadEmailXml(pChaveNfe: String; pConfirmar:boolean; pChaveIdNew: integer);

var
query_email: tquery;
begin
query_email := tquery.create(nil);
query_email.DatabaseName:=dm1.SG_ASSOC.DatabaseName;
if pConfirmar then
   begin
   query_email.sql.add('update CADEMAIL_REC_ANEXO set ERA_STATUS=1,ERA_DATHOR_IMP=sysdate '
                   +', ERA_CHAVE_PED_DEST='+IntToStr(pChaveIdNew)
                   +' where ERA_CHV_NFE='+QuotedStr(pChaveNfe));
   end
else
   begin
   query_email.sql.add('update CADEMAIL_REC_ANEXO set ERA_STATUS=0,ERA_DATHOR_IMP=null '
                   +', ERA_CHAVE_PED_DEST=0'
                   +' where ERA_CHV_NFE='+QuotedStr(pChaveNfe));
   end;


try
   query_email.ExecSQL;
   fdm1StartCommit;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_email,4981,'_stru '+e.message,'user');
   end;
   end;
query_email.close;
freeandnil(query_email);


end;


procedure TFrm_Compras_Orc.sbnImprimirClick(Sender: TObject);
begin
sbnIMPRIMIR.Enabled:=false;
testeform := TFrm_Compras_Orc(FindGlobalComponent('qr_pfor01'));
if (testeform=nil) then
   Application.CreateForm(TQr_PFor01, Qr_PFor01)
else
   begin
   Qr_PFor01.Free;
   Qr_PFor01 := nil;
   Application.CreateForm(TQr_PFor01, Qr_PFor01);
   end;
Qr_PFor01.pfor01_pcoven:=false;
Qr_PFor01.fLerPF1(0,mCompras_GP.mPed1_CodEmp,mCompras_GP.mPed1_Chave_ano,mCompras_GP.mped1_Chave,mtab_cadnov);
Qr_PFor01.fLerPF1V(0,mCompras_GP.mPed1_CodEmp,mCompras_GP.mPed1_Chave_ano,mCompras_GP.mped1_Chave,mtab_cadnov);
Qr_PFor01.fLerPF2(0,mCompras_GP.mPed1_CodEmp,mCompras_GP.mPed1_Chave_ano,mCompras_GP.mped1_Chave,mtab_cadnov);

if cb_mod_las.ItemIndex=0 then
  begin
  fpf01implaser01(0,CB_CASASD.ItemIndex+1);
  end
else if cb_mod_las.ItemIndex=1 then
  begin
  fpf01implaser02(0,CB_CASASD.ItemIndex+1);
  end
else if cb_mod_las.ItemIndex=2 then
  begin
  fpf01implaser03(0,CB_CASASD.ItemIndex+1);
  end
else if cb_mod_las.ItemIndex=3 then
  begin
  fpf01implaser04(0,CB_CASASD.ItemIndex+1);
  end
else if cb_mod_las.ItemIndex=4 then
  begin
  fpf01implaser05(0,CB_CASASD.ItemIndex+1);
  end;
Qr_PFor01.Free;
Qr_PFor01:=Nil;
sbnIMPRIMIR.Enabled:=true;

end;

function tFrm_Compras_Orc.fpf01implaser01(ptipo, pcasas: Integer): Boolean;
var
//  AExportFilter : TQRHTMLDocumentFilter;
//  TipovTemp, PrazovTemp, DatavTemp, DescvTemp, EncvTemp: TRLLabel;
  nome: TWinControl;
var
x: Integer;
mcasas2: String;
begin
mcasas2:=Ajusta_Casas(pcasas);

Qr_PFor01.Query_Pf01PF1TOTLIQ.DisplayFormat :=mcasas;
Qr_PFor01.Query_Pf01PF1DESC01.DisplayFormat :=mcasas;
Qr_PFor01.Query_Pf01PF1DESC02.DisplayFormat :=mcasas;
Qr_PFor01.Query_Pf01PF1DESC03.DisplayFormat :=mcasas;
Qr_PFor01.Qr_PF02PF2DESC01.DisplayFormat :=mcasas;
Qr_PFor01.Qr_PF02PF2DESC02.DisplayFormat :=mcasas;
Qr_PFor01.Qr_PF02PF2DESC03.DisplayFormat :=mcasas;
Qr_PFor01.Qr_PF02PF2VALDES.DisplayFormat :=mcasas;

Qr_PFor01.Qr_PF02totbru.DisplayFormat :=mcasas;
Qr_PFor01.Qr_PF02totliq.DisplayFormat :=mcasas;

Qr_PFor01.Qr_PF02totdes.DisplayFormat :=mcasas;
Qr_PFor01.Qr_PF02totbru.DisplayFormat :=mcasas;
Qr_PFor01.Qr_PF02totliq.DisplayFormat :=mcasas;
Qr_PFor01.Qr_PF02PF2QTDP.DisplayFormat:=mcasqtd;
//Qr_PFor01.Qr_PF02PF2PU.DisplayFormat  :=mcasaspu;
Qr_PFor01.Qr_PF02PF2PU.DisplayFormat  :=mcasas2;
Qr_PFor01.Qr_PF02pcoimp.DisplayFormat :=mcasas2;

//fmensagem('cHAVE:'+FloatToStr(mchave_pf)+' qr:'+ Query_Pf01PF1CHAVE.asstring+' 2 ' +Qr_PFor01.Qr_PF02PF2CHAVE.asstring);



Qr_PFor01.Src_PFor02.DataSet := Qr_PFor01.Qr_PF02;

if mCompras_GP.mPed1_Frete_CIFFOB = 1 then
   Qr_PFor01.FRETE.Caption := FormatFloat(mcasas, valfloat(edt_percfrete.Text))+' (CIF)'
else
   Qr_PFor01.FRETE.Caption := FormatFloat(mcasas, valfloat(edt_percfrete.Text))+' (FOB)';


Qr_PFor01.QROBS.Lines.Clear;
Qr_PFor01.QROBS.Lines.Add(Memo_ObsPed.Text);

Qr_PFor01.tipov01.Caption:='';
Qr_PFor01.tipov02.Caption:='';
Qr_PFor01.tipov03.Caption:='';
Qr_PFor01.tipov04.Caption:='';
Qr_PFor01.tipov05.Caption:='';
Qr_PFor01.tipov06.Caption:='';
Qr_PFor01.tipov07.Caption:='';
Qr_PFor01.tipov08.Caption:='';
Qr_PFor01.tipov09.Caption:='';
Qr_PFor01.tipov10.Caption:='';
Qr_PFor01.tipov11.Caption:='';
Qr_PFor01.tipov12.Caption:='';


Qr_PFor01.prazo01.Caption:='';
Qr_PFor01.prazo02.Caption:='';
Qr_PFor01.prazo03.Caption:='';
Qr_PFor01.prazo04.Caption:='';
Qr_PFor01.prazo05.Caption:='';
Qr_PFor01.prazo06.Caption:='';
Qr_PFor01.prazo07.Caption:='';
Qr_PFor01.prazo08.Caption:='';
Qr_PFor01.prazo09.Caption:='';
Qr_PFor01.prazo10.Caption:='';
Qr_PFor01.prazo11.Caption:='';
Qr_PFor01.prazo12.Caption:='';

Qr_PFor01.datav01.Caption:='';
Qr_PFor01.datav02.Caption:='';
Qr_PFor01.datav03.Caption:='';
Qr_PFor01.datav04.Caption:='';
Qr_PFor01.datav05.Caption:='';
Qr_PFor01.datav06.Caption:='';
Qr_PFor01.datav07.Caption:='';
Qr_PFor01.datav08.Caption:='';
Qr_PFor01.datav09.Caption:='';
Qr_PFor01.datav10.Caption:='';
Qr_PFor01.datav11.Caption:='';
Qr_PFor01.datav12.Caption:='';

Qr_PFor01.desc01.Caption:='';
Qr_PFor01.desc02.Caption:='';
Qr_PFor01.desc03.Caption:='';
Qr_PFor01.desc04.Caption:='';
Qr_PFor01.desc05.Caption:='';
Qr_PFor01.desc06.Caption:='';
Qr_PFor01.desc07.Caption:='';
Qr_PFor01.desc08.Caption:='';
Qr_PFor01.desc09.Caption:='';
Qr_PFor01.desc10.Caption:='';
Qr_PFor01.desc11.Caption:='';
Qr_PFor01.desc12.Caption:='';

Qr_PFor01.enc01.Caption:='';
Qr_PFor01.enc02.Caption:='';
Qr_PFor01.enc03.Caption:='';
Qr_PFor01.enc04.Caption:='';
Qr_PFor01.enc05.Caption:='';
Qr_PFor01.enc06.Caption:='';
Qr_PFor01.enc07.Caption:='';
Qr_PFor01.enc08.Caption:='';
Qr_PFor01.enc09.Caption:='';
Qr_PFor01.enc10.Caption:='';
Qr_PFor01.enc11.Caption:='';
Qr_PFor01.enc12.Caption:='';


flcadusr(1,0,InttoStr(mCompras_GP.mPed1_CodUsr_Dig));
Qr_PFor01.NOMUSR.Caption := DM4.Tb_UsrNOMUSR.AsString;

x:=1;
Qr_PFor01.Qr_Pf02.first;
Qr_PFor01.Qr_Pf01v.first;
//fmensagem('cHAVE:'+FloatToStr(mchave_pf)+' qr:'+ Query_Pf01PF1CHAVE.asstring+' 2 ' +Qr_PF02PF2CHAVE.asstring);

//if Query_Pf01PF1STATUS.Value>0 then
//   begin
While not Qr_PFor01.Qr_Pf01v.Eof do
  begin
  if x=1 then
    begin
    Qr_PFor01.tipov01.Caption:='Data Opcional';
    Qr_PFor01.prazo01.Caption:=FloatTostr(Qr_PFor01.Qr_Pf01vPF1VDATAV.Value-mCompras_GP.mPed1_Datap);
    Qr_PFor01.datav01.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_Pf01vPF1VDATAV.Value);
    Qr_PFor01.desc01.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_Pf01vPF1VDESCF.Value);
    Qr_PFor01.enc01.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_Pf01vPF1VVALOR.Value);
    end
  else if x=2 then
    begin
    Qr_PFor01.tipov02.Caption:='Data Opcional';
    Qr_PFor01.prazo02.Caption:=FloatTostr(Qr_PFor01.Qr_Pf01vPF1VDATAV.Value-mCompras_GP.mPed1_Datap);
    Qr_PFor01.datav02.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_Pf01vPF1VDATAV.Value);
    Qr_PFor01.desc02.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_Pf01vPF1VDESCF.Value);
    Qr_PFor01.enc02.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_Pf01vPF1VVALOR.Value);
    end
  else if x=3 then
    begin
    Qr_PFor01.tipov03.Caption:='Data Opcional';
    Qr_PFor01.prazo03.Caption:=FloatTostr(Qr_PFor01.Qr_Pf01vPF1VDATAV.Value-mCompras_GP.mPed1_Datap);
    Qr_PFor01.datav03.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_Pf01vPF1VDATAV.Value);
    Qr_PFor01.desc03.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_Pf01vPF1VDESCF.Value);
    Qr_PFor01.enc03.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_Pf01vPF1VVALOR.Value);
    end
  else if x=4 then
    begin
    Qr_PFor01.tipov04.Caption:='Data Opcional';
    Qr_PFor01.prazo04.Caption:=FloatTostr(Qr_PFor01.Qr_Pf01vPF1VDATAV.Value-mCompras_GP.mPed1_Datap);
    Qr_PFor01.datav04.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_Pf01vPF1VDATAV.Value);
    Qr_PFor01.desc04.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_Pf01vPF1VDESCF.Value);
    Qr_PFor01.enc04.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_Pf01vPF1VVALOR.Value);
    end
  else if x=5 then
    begin
    Qr_PFor01.tipov05.Caption:='Data Opcional';
    Qr_PFor01.prazo05.Caption:=FloatTostr(Qr_PFor01.Qr_Pf01vPF1VDATAV.Value-mCompras_GP.mPed1_Datap);
    Qr_PFor01.datav05.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_Pf01vPF1VDATAV.Value);
    Qr_PFor01.desc05.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_Pf01vPF1VDESCF.Value);
    Qr_PFor01.enc05.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_Pf01vPF1VVALOR.Value);
    end
  else if x=6 then
    begin
    Qr_PFor01.tipov06.Caption:='Data Opcional';
    Qr_PFor01.prazo06.Caption:=FloatTostr(Qr_PFor01.Qr_Pf01vPF1VDATAV.Value-mCompras_GP.mPed1_Datap);
    Qr_PFor01.datav06.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_Pf01vPF1VDATAV.Value);
    Qr_PFor01.desc06.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_Pf01vPF1VDESCF.Value);
    Qr_PFor01.enc06.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_Pf01vPF1VVALOR.Value);
    end
  else if x=7 then
    begin
    Qr_PFor01.tipov07.Caption:='Data Opcional';
    Qr_PFor01.prazo07.Caption:=FloatTostr(Qr_PFor01.Qr_Pf01vPF1VDATAV.Value-mCompras_GP.mPed1_Datap);
    Qr_PFor01.datav07.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_Pf01vPF1VDATAV.Value);
    Qr_PFor01.desc07.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_Pf01vPF1VDESCF.Value);
    Qr_PFor01.enc07.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_Pf01vPF1VVALOR.Value);
    end
  else if x=8 then
    begin
    Qr_PFor01.tipov08.Caption:='Data Opcional';
    Qr_PFor01.prazo08.Caption:=FloatTostr(Qr_PFor01.Qr_Pf01vPF1VDATAV.Value-mCompras_GP.mPed1_Datap);
    Qr_PFor01.datav08.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_Pf01vPF1VDATAV.Value);
    Qr_PFor01.desc08.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_Pf01vPF1VDESCF.Value);
    Qr_PFor01.enc08.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_Pf01vPF1VVALOR.Value);
    end
  else if x=9 then
    begin
    Qr_PFor01.tipov09.Caption:='Data Opcional';
    Qr_PFor01.prazo09.Caption:=FloatTostr(Qr_PFor01.Qr_Pf01vPF1VDATAV.Value-mCompras_GP.mPed1_Datap);
    Qr_PFor01.datav09.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_Pf01vPF1VDATAV.Value);
    Qr_PFor01.desc09.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_Pf01vPF1VDESCF.Value);
    Qr_PFor01.enc09.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_Pf01vPF1VVALOR.Value);
    end
  else if x=10 then
    begin
    Qr_PFor01.tipov10.Caption:='Data Opcional';
    Qr_PFor01.prazo10.Caption:=FloatTostr(Qr_PFor01.Qr_Pf01vPF1VDATAV.Value-mCompras_GP.mPed1_Datap);
    Qr_PFor01.datav10.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_Pf01vPF1VDATAV.Value);
    Qr_PFor01.desc10.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_Pf01vPF1VDESCF.Value);
    Qr_PFor01.enc10.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_Pf01vPF1VVALOR.Value);
    end
  else if x=11 then
    begin
    Qr_PFor01.tipov11.Caption:='Data Opcional';
    Qr_PFor01.prazo11.Caption:=FloatTostr(Qr_PFor01.Qr_Pf01vPF1VDATAV.Value-mCompras_GP.mPed1_Datap);
    Qr_PFor01.datav11.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_Pf01vPF1VDATAV.Value);
    Qr_PFor01.desc11.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_Pf01vPF1VDESCF.Value);
    Qr_PFor01.enc11.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_Pf01vPF1VVALOR.Value);
    end
  else if x=12 then
    begin
    Qr_PFor01.tipov12.Caption:='Data Opcional';
    Qr_PFor01.prazo12.Caption:=FloatTostr(Qr_PFor01.Qr_Pf01vPF1VDATAV.Value-mCompras_GP.mPed1_Datap);
    Qr_PFor01.datav12.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_Pf01vPF1VDATAV.Value);
    Qr_PFor01.desc12.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_Pf01vPF1VDESCF.Value);
    Qr_PFor01.enc12.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_Pf01vPF1VVALOR.Value);
    end;
  Qr_PFor01.Qr_Pf01v.Next;
  x:=x+1;
  end;
//   end;
Qr_Pfor01.endereco.Caption:=Trim(DM1.Tb_EmpENDERECO.Value)+' '+Trim(DM1.Tb_EmpBAIRRO.Value);
Qr_Pfor01.cidade.Caption  :=Trim(DM1.Tb_EmpCIDADE.Value)+'-'+Trim(DM1.Tb_EmpUF.Value);
Qr_Pfor01.CHAVE.Caption   :=FormatDateTime('dd',mCompras_GP.mPed1_Datap)+'.'+FormatDateTime('mm',mCompras_GP.mPed1_Datap)+'.'+FormatDateTime('yyyy',mCompras_GP.mPed1_Datap)
                         +'/'+IntTostr( mCompras_GP.mped1_Chave);
fSalvarImagem('LOGO1','C:\SGE\LOGO1.JPG');

if FileExists('C:\SGE\LOGO1.JPG') then
   begin
   Qr_PFor01.QR_IMGLOGO.Picture.LoadFromFile('C:\SGE\LOGO1.JPG');
   Qr_PFor01.QR_IMGLOGO.Enabled:=True;
   end
else
   begin
   Qr_PFor01.QR_IMGLOGO.Enabled:=False;
   mcinst:='para que seja impresso o logotipo da empresa é necessário que'+#13
         +'o mesmo esteja gravado em jpg na pasta '+DM1.Tb_PargerPCAMINHO.Value+#13
         +'com o nome de LOGO1.JPG, deseja sair para fazer isso agora?';
   if fmensagem(mcinst,0,['1','2'],2)=mrYes then
      begin
      Qr_PFor01.Free;
      Qr_PFor01:=nil;
      exit;
      end;
    end;
verteclado(0);
SetWindowPos (Handle,HWND_NOTOPMOST, Left, Top, Width, Height, SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
Qr_PFor01.modelo01.PreviewModal;
//fmensagem('cHAVE:'+FloatToStr(mchave_pf)+' qr:'+ Query_Pf01PF1CHAVE.asstring+' 2 ' +Qr_PF02PF2CHAVE.asstring);

//Qr_Pfor.ExportToFilter(TQRHTMLDocumentFilter.Create('C:\TESTE.HTML'));
result:=true;
end;

function TFrm_Compras_Orc.fpf01implaser02(ptipo, pcasas: Integer): Boolean;
//var
//AExportFilter : TQRHTMLDocumentFilter;
var
x: Integer;
mcasas2: String;
begin
mcasas2:=Ajusta_Casas(pcasas);

Qr_PFor01.Query_Pf01PF1TOTLIQ.DisplayFormat :=mcasas;
Qr_PFor01.Query_Pf01PF1DESC01.DisplayFormat :=mcasas;
Qr_PFor01.Query_Pf01PF1DESC02.DisplayFormat :=mcasas;
Qr_PFor01.Query_Pf01PF1DESC03.DisplayFormat :=mcasas;
Qr_PFor01.Qr_PF02PF2DESC01.DisplayFormat :=mcasas;
Qr_PFor01.Qr_PF02PF2DESC02.DisplayFormat :=mcasas;
Qr_PFor01.Qr_PF02PF2DESC03.DisplayFormat :=mcasas;
Qr_PFor01.Qr_PF02PF2VALDES.DisplayFormat :=mcasas;

Qr_PFor01.Qr_PF02totbru.DisplayFormat :=mcasas;
Qr_PFor01.Qr_PF02totliq.DisplayFormat :=mcasas;

Qr_PFor01.Qr_PF02totdes.DisplayFormat :=mcasas;
Qr_PFor01.Qr_PF02totbru.DisplayFormat :=mcasas;
Qr_PFor01.Qr_PF02totliq.DisplayFormat :=mcasas;
Qr_PFor01.Qr_PF02PF2QTDP.DisplayFormat:=mcasqtd;
//Qr_PFor01.Qr_PF02PF2PU.DisplayFormat  :=mcasaspu;
Qr_PFor01.Qr_PF02PF2PU.DisplayFormat  :=mcasas2;


Qr_PFor01.Src_PFor02.DataSet := Qr_PFor01.Qr_PF02;

if Qr_PFor01.Query_Pf01PF1FRETEPC.Value = 1 then
  Qr_PFor01.fretem02.Caption := FormatFloat(mcasas, Qr_PFor01.Query_Pf01PF1PERCFRE.Value)+' (CIF)'
else
  Qr_PFor01.fretem02.Caption := FormatFloat(mcasas, Qr_PFor01.Query_Pf01PF1PERCFRE.Value)+' (FOB)';

Qr_PFor01.qrobsm02.Lines.Clear;
Qr_PFor01.qrobsm02.Lines.Add(Memo_ObsPed.Text);

Qr_PFor01.tipov01m02.Caption:='';
Qr_PFor01.tipov02m02.Caption:='';
Qr_PFor01.tipov03m02.Caption:='';
Qr_PFor01.tipov04m02.Caption:='';
Qr_PFor01.tipov05m02.Caption:='';
Qr_PFor01.tipov06m02.Caption:='';

Qr_PFor01.prazo01m02.Caption:='';
Qr_PFor01.prazo02m02.Caption:='';
Qr_PFor01.prazo03m02.Caption:='';
Qr_PFor01.prazo04m02.Caption:='';
Qr_PFor01.prazo05m02.Caption:='';
Qr_PFor01.prazo06m02.Caption:='';

Qr_PFor01.datav01m02.Caption:='';
Qr_PFor01.datav02m02.Caption:='';
Qr_PFor01.datav03m02.Caption:='';
Qr_PFor01.datav04m02.Caption:='';
Qr_PFor01.datav05m02.Caption:='';
Qr_PFor01.datav06m02.Caption:='';

Qr_PFor01.desc01m02.Caption:='';
Qr_PFor01.desc02m02.Caption:='';
Qr_PFor01.desc03m02.Caption:='';
Qr_PFor01.desc04m02.Caption:='';
Qr_PFor01.desc05m02.Caption:='';
Qr_PFor01.desc06m02.Caption:='';

Qr_PFor01.enc01m02.Caption:='';
Qr_PFor01.enc02m02.Caption:='';
Qr_PFor01.enc03m02.Caption:='';
Qr_PFor01.enc04m02.Caption:='';
Qr_PFor01.enc05m02.Caption:='';
Qr_PFor01.enc06m02.Caption:='';
flcadusr(1,0,Qr_PFor01.Query_Pf01PF1CODUSR.AsString);
Qr_PFor01.nomusrm02.Caption := DM4.Tb_UsrNOMUSR.AsString;

x:=1;
Qr_PFor01.Qr_PF02.first;
Qr_PFor01.Qr_Pf01v.first;
   if Qr_PFor01.Qr_PF01v.RecordCount>6 then
      Qr_PFor01.tipov01m02.Caption:='Diversos'
   else
      begin
      While not Qr_PFor01.Qr_PF01v.Eof do
         begin
         if x=1 then
            begin
            Qr_PFor01.tipov01m02.Caption:='Data Opcional';
            Qr_PFor01.prazo01m02.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_Pf01PF1DATA.Value);
            Qr_PFor01.datav01m02.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
            Qr_PFor01.desc01m02.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
            Qr_PFor01.enc01m02.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
            end
         else if x=2 then
            begin
            Qr_PFor01.tipov02m02.Caption:='Data Opcional';
            Qr_PFor01.prazo02m02.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_Pf01PF1DATA.Value);
            Qr_PFor01.datav02m02.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
            Qr_PFor01.desc02m02.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
            Qr_PFor01.enc02m02.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
            end
         else if x=3 then
            begin
            Qr_PFor01.tipov03m02.Caption:='Data Opcional';
            Qr_PFor01.prazo03m02.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_Pf01PF1DATA.Value);
            Qr_PFor01.datav03m02.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
            Qr_PFor01.desc03m02.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
            Qr_PFor01.enc03m02.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
            end
         else if x=4 then
            begin
            Qr_PFor01.tipov04m02.Caption:='Data Opcional';
            Qr_PFor01.prazo04m02.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_Pf01PF1DATA.Value);
            Qr_PFor01.datav04m02.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
            Qr_PFor01.desc04m02.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
            Qr_PFor01.enc04m02.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
            end
         else if x=5 then
            begin
            Qr_PFor01.tipov05m02.Caption:='Data Opcional';
            Qr_PFor01.prazo05m02.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_Pf01PF1DATA.Value);
            Qr_PFor01.datav05m02.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
            Qr_PFor01.desc05m02.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
            Qr_PFor01.enc05m02.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
            end
        else if x=6 then
            begin
            Qr_PFor01.tipov06m02.Caption:='Data Opcional';
            Qr_PFor01.prazo06m02.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_Pf01PF1DATA.Value);
            Qr_PFor01.datav06m02.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
            Qr_PFor01.desc06m02.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
            Qr_PFor01.enc06m02.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
            end;
         Qr_PFor01.Qr_PF01v.Next;
         x:=x+1;
         end;
      end;
//   end;
Qr_Pfor01.enderecom02.Caption:=Trim(DM1.Tb_EmpENDERECO.Value)+' '+Trim(DM1.Tb_EmpBAIRRO.Value);
Qr_Pfor01.cidadem02.Caption  :=Trim(DM1.Tb_EmpCIDADE.Value)+'-'+Trim(DM1.Tb_EmpUF.Value);
Qr_Pfor01.chavem02.Caption   :=FormatDateTime('mmdd',Qr_PFor01.Query_Pf01PF1DATA.Value)+'.'+FormatDateTime('yyyy',Qr_PFor01.Query_Pf01PF1DATA.Value)
                         +'/'+Qr_PFor01.Query_Pf01PF1CHAVE.AsString;
fSalvarImagem('LOGO1','C:\SGE\LOGO1.JPG');

if FileExists('C:\SGE\LOGO1.JPG') then
   begin
   Qr_PFor01.qr_imglogom02.Picture.LoadFromFile('C:\SGE\LOGO1.JPG');
   Qr_PFor01.qr_imglogom02.Enabled:=True;
   end
else
   begin
   Qr_PFor01.qr_imglogom02.Enabled:=False;
   mcinst:='para que seja impresso o logotipo da empresa é necessário que'+#13
         +'o mesmo esteja gravado em jpg na pasta '+DM1.Tb_PargerPCAMINHO.Value+#13
         +'com o nome de LOGO1.JPG, deseja sair para fazer isso agora?';
   if fmensagem(mcinst,0,['1','2'],2)=mrYes then
      begin
      Qr_PFor01.Free;
      Qr_PFor01:=nil;
      exit;
      end;
    end;
verteclado(0);
SetWindowPos (Handle,HWND_NOTOPMOST, Left, Top, Width, Height, SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
Qr_PFor01.modelo02.PreviewModal;
result:=true;
end;

function TFrm_Compras_Orc.fpf01implaser03(ptipo, pcasas: Integer): Boolean;
//var
//AExportFilter : TQRHTMLDocumentFilter;
var
x: Integer;
mcasas2: String;
begin
mcasas2:=Ajusta_Casas(pcasas);

Qr_PFor01.lotesAoInvesDescontoMod03 := cb_lotesAoInvesDescontoMod03.Checked;
Qr_PFor01.Query_PF01PF1TOTLIQ.DisplayFormat :=mcasas;
Qr_PFor01.Query_PF01PF1DESC01.DisplayFormat :=mcasas;
Qr_PFor01.Query_PF01PF1DESC02.DisplayFormat :=mcasas;
Qr_PFor01.Query_PF01PF1DESC03.DisplayFormat :=mcasas;


Qr_PFor01.Qr_PF02PF2DESC01.DisplayFormat :=mcasas;
Qr_PFor01.Qr_PF02PF2DESC02.DisplayFormat :=mcasas;
Qr_PFor01.Qr_PF02PF2DESC03.DisplayFormat :=mcasas;
Qr_PFor01.Qr_PF02PF2VALDES.DisplayFormat :=mcasas;

Qr_PFor01.Qr_PF02totbru.DisplayFormat :=mcasas;
Qr_PFor01.Qr_PF02totliq.DisplayFormat :=mcasas;

Qr_PFor01.Qr_PF02totdes.DisplayFormat :=mcasas;
Qr_PFor01.Qr_PF02totbru.DisplayFormat :=mcasas;
Qr_PFor01.Qr_PF02totliq.DisplayFormat :=mcasas;
Qr_PFor01.Qr_PF02PF2QTDP.DisplayFormat:=mcasqtd;
//Qr_PFor01.Qr_PF02PF2PU.DisplayFormat  :=mcasaspu;
Qr_PFor01.Qr_PF02PF2PU.DisplayFormat:=mcasas2;


Qr_PFor01.Src_PFor02.DataSet := Qr_PFor01.Qr_PF02;

if Qr_PFor01.Query_PF01PF1FRETEPC.Value = 1 then
  Qr_PFor01.FRETE.Caption := FormatFloat(mcasas, Qr_PFor01.Query_PF01PF1PERCFRE.Value)+' (CIF)'
else
  Qr_PFor01.FRETE.Caption := FormatFloat(mcasas, Qr_PFor01.Query_PF01PF1PERCFRE.Value)+' (FOB)';

Qr_PFor01.qrobsm03.Lines.Clear;
Qr_PFor01.qrobsm03.Lines.Add(Memo_ObsPed.Text);

Qr_PFor01.tipov01m03.Caption:='';
Qr_PFor01.tipov02m03.Caption:='';
Qr_PFor01.tipov03m03.Caption:='';
Qr_PFor01.tipov04m03.Caption:='';
Qr_PFor01.tipov05m03.Caption:='';
Qr_PFor01.tipov06m03.Caption:='';

Qr_PFor01.prazo01m03.Caption:='';
Qr_PFor01.prazo02m03.Caption:='';
Qr_PFor01.prazo03m03.Caption:='';
Qr_PFor01.prazo04m03.Caption:='';
Qr_PFor01.prazo05m03.Caption:='';
Qr_PFor01.prazo06m03.Caption:='';

Qr_PFor01.datav01m03.Caption:='';
Qr_PFor01.datav02m03.Caption:='';
Qr_PFor01.datav03m03.Caption:='';
Qr_PFor01.datav04m03.Caption:='';
Qr_PFor01.datav05m03.Caption:='';
Qr_PFor01.datav06m03.Caption:='';

Qr_PFor01.desc01m03.Caption:='';
Qr_PFor01.desc02m03.Caption:='';
Qr_PFor01.desc03m03.Caption:='';
Qr_PFor01.desc04m03.Caption:='';
Qr_PFor01.desc05m03.Caption:='';
Qr_PFor01.desc06m03.Caption:='';

Qr_PFor01.enc01m03.Caption:='';
Qr_PFor01.enc02m03.Caption:='';
Qr_PFor01.enc03m03.Caption:='';
Qr_PFor01.enc04m03.Caption:='';
Qr_PFor01.enc05m03.Caption:='';
Qr_PFor01.enc06m03.Caption:='';

flcadusr(1,0,Qr_PFor01.Query_PF01PF1CODUSR.AsString);
Qr_PFor01.nomusrm03.Caption := DM4.Tb_UsrNOMUSR.AsString;

x:=1;
Qr_PFor01.Qr_PF02.first;
Qr_PFor01.Qr_PF01v.first;

if Qr_PFor01.Qr_PF01v.RecordCount>6 then
  begin
  Qr_PFor01.tipov01m03.Caption:='Diversos';
  Qr_PFor01.tipov01m05.Caption:='Diversos';
  end
else
  begin
  While not Qr_PFor01.Qr_PF01v.Eof do
    begin
    if x=1 then
      begin
      Qr_PFor01.tipov01m03.Caption:='Data Opcional';
      Qr_PFor01.prazo01m03.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_PF01PF1DATA.Value);
      Qr_PFor01.datav01m03.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
      Qr_PFor01.desc01m03.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
      Qr_PFor01.enc01m03.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
      Qr_PFor01.tipov01m05.Caption:='Data Opcional';
      Qr_PFor01.prazo01m05.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_PF01PF1DATA.Value);
      Qr_PFor01.datav01m05.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
      Qr_PFor01.desc01m05.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
      Qr_PFor01.enc01m05.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
      end
    else if x=2 then
      begin
      Qr_PFor01.tipov02m03.Caption:='Data Opcional';
      Qr_PFor01.prazo02m03.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_PF01PF1DATA.Value);
      Qr_PFor01.datav02m03.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
      Qr_PFor01.desc02m03.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
      Qr_PFor01.enc02m03.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
      Qr_PFor01.tipov02m05.Caption:='Data Opcional';
      Qr_PFor01.prazo02m05.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_PF01PF1DATA.Value);
      Qr_PFor01.datav02m05.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
      Qr_PFor01.desc02m05.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
      Qr_PFor01.enc02m05.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
      end
    else if x=3 then
      begin
      Qr_PFor01.tipov03m03.Caption:='Data Opcional';
      Qr_PFor01.prazo03m03.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_PF01PF1DATA.Value);
      Qr_PFor01.datav03m03.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
      Qr_PFor01.desc03m03.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
      Qr_PFor01.enc03m03.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
      Qr_PFor01.tipov03m05.Caption:='Data Opcional';
      Qr_PFor01.prazo03m05.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_PF01PF1DATA.Value);
      Qr_PFor01.datav03m05.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
      Qr_PFor01.desc03m05.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
      Qr_PFor01.enc03m05.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
      end
    else if x=4 then
      begin
      Qr_PFor01.tipov04m03.Caption:='Data Opcional';
      Qr_PFor01.prazo04m03.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_PF01PF1DATA.Value);
      Qr_PFor01.datav04m03.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
      Qr_PFor01.desc04m03.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
      Qr_PFor01.enc04m03.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
      Qr_PFor01.tipov04m05.Caption:='Data Opcional';
      Qr_PFor01.prazo04m05.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_PF01PF1DATA.Value);
      Qr_PFor01.datav04m05.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
      Qr_PFor01.desc04m05.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
      Qr_PFor01.enc04m05.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
      end
    else if x=5 then
      begin
      Qr_PFor01.tipov05m03.Caption:='Data Opcional';
      Qr_PFor01.prazo05m03.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_PF01PF1DATA.Value);
      Qr_PFor01.datav05m03.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
      Qr_PFor01.desc05m03.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
      Qr_PFor01.enc05m03.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
      Qr_PFor01.tipov05m05.Caption:='Data Opcional';
      Qr_PFor01.prazo05m05.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_PF01PF1DATA.Value);
      Qr_PFor01.datav05m05.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
      Qr_PFor01.desc05m05.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
      Qr_PFor01.enc05m05.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
      end
    else if x=6 then
      begin
      Qr_PFor01.tipov06m03.Caption:='Data Opcional';
      Qr_PFor01.prazo06m03.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_PF01PF1DATA.Value);
      Qr_PFor01.datav06m03.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
      Qr_PFor01.desc06m03.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
      Qr_PFor01.enc06m03.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
      Qr_PFor01.tipov06m05.Caption:='Data Opcional';
      Qr_PFor01.prazo06m05.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_PF01PF1DATA.Value);
      Qr_PFor01.datav06m05.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
      Qr_PFor01.desc06m05.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
      Qr_PFor01.enc06m05.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
      end;
    Qr_PFor01.Qr_PF01v.Next;
    x:=x+1;
    end;
  end;
Qr_Pfor01.enderecom03.Caption:=Trim(DM1.Tb_EmpENDERECO.Value)+' '+Trim(DM1.Tb_EmpBAIRRO.Value);
Qr_Pfor01.cidadem03.Caption  :=Trim(DM1.Tb_EmpCIDADE.Value)+'-'+Trim(DM1.Tb_EmpUF.Value);
Qr_Pfor01.CHAVEm03.Caption   :=FormatDateTime('mmdd',Qr_PFor01.Query_PF01PF1DATA.Value)+'.'+FormatDateTime('yyyy',Qr_PFor01.Query_PF01PF1DATA.Value)
                         +'/'+Qr_PFor01.Query_PF01PF1CHAVE.AsString;
fSalvarImagem('LOGO1','C:\SGE\LOGO1.JPG');

if FileExists('C:\SGE\LOGO1.JPG') then
   begin
   Qr_PFor01.qr_imglogom03.Picture.LoadFromFile('C:\SGE\LOGO1.JPG');
   Qr_PFor01.qr_imglogom03.Enabled:=True;
   end
else
   begin
   Qr_PFor01.qr_imglogom03.Enabled:=False;
   mcinst:='para que seja impresso o logotipo da empresa é necessário que'+#13
         +'o mesmo esteja gravado em jpg na pasta '+DM1.Tb_PargerPCAMINHO.Value+#13
         +'com o nome de LOGO1.JPG, deseja sair para fazer isso agora?';
   if fmensagem(mcinst,0,['1','2'],2)=mrYes then
      begin
      Qr_PFor01.Free;
      Qr_PFor01:=nil;
      exit;
      end;
    end;
verteclado(0);
Qr_PFor01.RL_EMP.Caption:='EXCLUSIVO DA EMPRESA..: '+DM1.Tb_EmpRAZAO.AsString;
SetWindowPos (Handle,HWND_NOTOPMOST, Left, Top, Width, Height, SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
Qr_PFor01.modelo03.PreviewModal;
result:=true;
end;

function TFrm_Compras_Orc.fpf01implaser04(ptipo, pcasas: Integer): Boolean;
{var
  AExportFilter : TQRHTMLDocumentFilter;
  TipovTemp, PrazovTemp, DatavTemp, DescvTemp, EncvTemp: TRLLabel;
  nome: TWinControl;
  }
var
x: Integer;
mcasas2: String;
begin
mcasas2:=Ajusta_Casas(pcasas);

Qr_PFor01.Qr_PF02pcoimp.DisplayFormat :=mcasas2;

Qr_PFor01.Src_PFor02.DataSet := Qr_PFor01.Qr_PF02;
Qr_PFor01.Qr_PF02.first;
Qr_PFor01.modelo04.PreviewModal;
result:=true;
end;

function TFrm_Compras_Orc.fpf01implaser05(ptipo, pcasas: Integer): Boolean;
{var
  AExportFilter : TQRHTMLDocumentFilter;
  TipovTemp, PrazovTemp, DatavTemp, DescvTemp, EncvTemp: TRLLabel;
  nome: TWinControl;}
var
x: Integer;
mcasas2: String;
begin
mcasas2:=Ajusta_Casas(pcasas);
Qr_PFor01.Tb_Lucro.Close;
Qr_PFor01.Tb_Lucro.SQL.Clear;
Qr_PFor01.Tb_Lucro.SQL.Add(' select pf2codpro, NVL(TRIM(PF2NOMPRO),PDNOME) as pf2nompro, round(pf2qtdp,2) as QTD, round(pf2pu,2) as Compra, round(pdpreco1,2) as Preco ,  '
              +' round((pdpreco1-pf2pu)*100/pf2pu+0.01,2) as lucro                                                          '
              +' from '+mtab_cadpf2+', cadpro                                                                                        '
              +' where pf2codpro=pdcodpro and pf2chave='+Qr_PFor01.Query_PF01PF1CHAVE.AsString+' and pf2codemp='+Qr_PFor01.Query_PF01PF1CODEMP.AsString);
Qr_PFor01.Tb_Lucro.Open;
Qr_PFor01.Tb_LucroCOMPRA.DisplayFormat :=mcasaspu;
Qr_PFor01.Tb_LucroPRECO.DisplayFormat  :=mcasaspu;
Qr_PFor01.Tb_LucroLUCRO.DisplayFormat  :=mcasaspu;




Qr_PFor01.tipov01m05.Caption:='';
Qr_PFor01.tipov02m05.Caption:='';
Qr_PFor01.tipov03m05.Caption:='';
Qr_PFor01.tipov04m05.Caption:='';
Qr_PFor01.tipov05m05.Caption:='';
Qr_PFor01.tipov06m05.Caption:='';

Qr_PFor01.prazo01m05.Caption:='';
Qr_PFor01.prazo02m05.Caption:='';
Qr_PFor01.prazo03m05.Caption:='';
Qr_PFor01.prazo04m05.Caption:='';
Qr_PFor01.prazo05m05.Caption:='';
Qr_PFor01.prazo06m05.Caption:='';

Qr_PFor01.datav01m05.Caption:='';
Qr_PFor01.datav02m05.Caption:='';
Qr_PFor01.datav03m05.Caption:='';
Qr_PFor01.datav04m05.Caption:='';
Qr_PFor01.datav05m05.Caption:='';
Qr_PFor01.datav06m05.Caption:='';

Qr_PFor01.desc01m05.Caption:='';
Qr_PFor01.desc02m05.Caption:='';
Qr_PFor01.desc03m05.Caption:='';
Qr_PFor01.desc04m05.Caption:='';
Qr_PFor01.desc05m05.Caption:='';
Qr_PFor01.desc06m05.Caption:='';

Qr_PFor01.enc01m05.Caption:='';
Qr_PFor01.enc02m05.Caption:='';
Qr_PFor01.enc03m05.Caption:='';
Qr_PFor01.enc04m05.Caption:='';
Qr_PFor01.enc05m05.Caption:='';
Qr_PFor01.enc06m05.Caption:='';

x:=1;
Qr_PFor01.Qr_PF02.first;
Qr_PFor01.Qr_PF01v.first;

if Qr_PFor01.Qr_PF01v.RecordCount>6 then
  begin
  Qr_PFor01.tipov01m03.Caption:='Diversos';
  Qr_PFor01.tipov01m05.Caption:='Diversos';
  end
else
  begin
  While not Qr_PFor01.Qr_PF01v.Eof do
    begin
    if x=1 then
      begin
      Qr_PFor01.tipov01m03.Caption:='Data Opcional';
      Qr_PFor01.prazo01m03.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_PF01PF1DATA.Value);
      Qr_PFor01.datav01m03.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
      Qr_PFor01.desc01m03.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
      Qr_PFor01.enc01m03.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
      Qr_PFor01.tipov01m05.Caption:='Data Opcional';
      Qr_PFor01.prazo01m05.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_PF01PF1DATA.Value);
      Qr_PFor01.datav01m05.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
      Qr_PFor01.desc01m05.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
      Qr_PFor01.enc01m05.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
      end
    else if x=2 then
      begin
      Qr_PFor01.tipov02m03.Caption:='Data Opcional';
      Qr_PFor01.prazo02m03.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_PF01PF1DATA.Value);
      Qr_PFor01.datav02m03.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
      Qr_PFor01.desc02m03.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
      Qr_PFor01.enc02m03.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
      Qr_PFor01.tipov02m05.Caption:='Data Opcional';
      Qr_PFor01.prazo02m05.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_PF01PF1DATA.Value);
      Qr_PFor01.datav02m05.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
      Qr_PFor01.desc02m05.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
      Qr_PFor01.enc02m05.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
      end
    else if x=3 then
      begin
      Qr_PFor01.tipov03m03.Caption:='Data Opcional';
      Qr_PFor01.prazo03m03.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_PF01PF1DATA.Value);
      Qr_PFor01.datav03m03.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
      Qr_PFor01.desc03m03.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
      Qr_PFor01.enc03m03.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
      Qr_PFor01.tipov03m05.Caption:='Data Opcional';
      Qr_PFor01.prazo03m05.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_PF01PF1DATA.Value);
      Qr_PFor01.datav03m05.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
      Qr_PFor01.desc03m05.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
      Qr_PFor01.enc03m05.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
      end
    else if x=4 then
      begin
      Qr_PFor01.tipov04m03.Caption:='Data Opcional';
      Qr_PFor01.prazo04m03.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_PF01PF1DATA.Value);
      Qr_PFor01.datav04m03.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
      Qr_PFor01.desc04m03.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
      Qr_PFor01.enc04m03.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
      Qr_PFor01.tipov04m05.Caption:='Data Opcional';
      Qr_PFor01.prazo04m05.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_PF01PF1DATA.Value);
      Qr_PFor01.datav04m05.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
      Qr_PFor01.desc04m05.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
      Qr_PFor01.enc04m05.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
      end
    else if x=5 then
      begin
      Qr_PFor01.tipov05m03.Caption:='Data Opcional';
      Qr_PFor01.prazo05m03.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_PF01PF1DATA.Value);
      Qr_PFor01.datav05m03.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
      Qr_PFor01.desc05m03.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
      Qr_PFor01.enc05m03.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
      Qr_PFor01.tipov05m05.Caption:='Data Opcional';
      Qr_PFor01.prazo05m05.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_PF01PF1DATA.Value);
      Qr_PFor01.datav05m05.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
      Qr_PFor01.desc05m05.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
      Qr_PFor01.enc05m05.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
      end
    else if x=6 then
      begin
      Qr_PFor01.tipov06m03.Caption:='Data Opcional';
      Qr_PFor01.prazo06m03.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_PF01PF1DATA.Value);
      Qr_PFor01.datav06m03.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
      Qr_PFor01.desc06m03.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
      Qr_PFor01.enc06m03.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
      Qr_PFor01.tipov06m05.Caption:='Data Opcional';
      Qr_PFor01.prazo06m05.Caption:=FloatTostr(Qr_PFor01.Qr_PF01vPF1VDATAV.Value-Qr_PFor01.Query_PF01PF1DATA.Value);
      Qr_PFor01.datav06m05.Caption:=FormatDateTime(fdt2, Qr_PFor01.Qr_PF01vPF1VDATAV.Value);
      Qr_PFor01.desc06m05.Caption :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VDESCF.Value);
      Qr_PFor01.enc06m05.Caption  :=FormatFloat(mcasas, Qr_PFor01.Qr_PF01vPF1VVALOR.Value);
      end;
    Qr_PFor01.Qr_PF01v.Next;
    x:=x+1;
    end;
  end;
Qr_PFor01.rlchavem5.Caption   :=FormatDateTime('mmdd',Qr_PFor01.Query_PF01PF1DATA.Value)+'.'+FormatDateTime('yyyy',Qr_PFor01.Query_PF01PF1DATA.Value)
                         +'/'+Qr_PFor01.Query_PF01PF1CHAVE.AsString;

Qr_PFor01.modelo05.PreviewModal;
result:=true;
end;

procedure TFrm_Compras_Orc.Tb_PF2_LotesBeforePost(DataSet: TDataSet);
var
  Query_Lote: TQuery;
i:Integer;

begin

if Tb_PF2_LotesPF2L_QTD.AsFloat<=0 then
   begin
   verteclado(0);
   if Tb_PF2_Lotes.State in [dsInsert] then
      begin
      if Tb_PF2_LotesPF2L_LOTE.IsNull and Tb_PF2_LotesPF2L_DTVCTO.IsNull then
         begin
         Tb_PF2_Lotes.Cancel;
         abort;
         exit;
         end
      else
         begin
         MessageDlg('Favor Digitar uma quantidade válida ou [ESC] - para cancelar!',mtWarning,[mbOk],0);
         DBGrid_lotes.SelectedField:=Tb_PF2_LotesPF2L_QTD;
         DBGrid_lotes.SetFocus;
         Abort;
         end;
      end;
   end;

if (mAnt_LoteCodPro=0) or ( (mAnt_LoteCodPro>0) and (mAnt_LoteCodPro<>Tb_PF2_LotesPF2L_CODPRO.AsFloat) ) then
   begin
   Query_Lote:=TQuery.Create(nil);
   Query_Lote.DatabaseName:='SG_ASSOC';
   Query_Lote.SQL.Clear;
   Query_Lote.SQL.Add('Select * from '+mtab_cadpf2_lotes
                     +'  where (PF2L_CODEMP=:CODEMP ) '
                     +'    and PF2L_CHAVE=:CHAVE '
                     +'    and PF2L_LOTSEQ=:LOTSEQ '
                     +'    and PF2L_ITEM=:ITEM '
                     +'    and PF2L_CODPRO=:CODPRO ');
   Query_Lote.ParamByName('CODEMP').AsInteger:=mCompras_GP.mPed1_CodEmp;
   Query_Lote.ParamByName('CHAVE').AsInteger:=mCompras_GP.mped1_Chave;
   Query_Lote.ParamByName('LOTSEQ').AsInteger:=mCompras_GP.mPed1_Chave_ano;
   Query_Lote.ParamByName('ITEM').AsInteger:=tb_pfor02_orcPF2ITEM.AsInteger;
   Query_Lote.ParamByName('CODPRO').AsFloat:=tb_pfor02_orcPF2CODPRO_INT.AsFloat;
   if trim(Tb_PF2_LotesPF2L_LOTE.AsString)=''  then
      begin
      Query_Lote.Sql.Add(' and (PF2L_LOTE is null or PF2L_LOTE=:LOTE )');
      Query_Lote.ParamByName('LOTE').AsString:=' ';
      end
   else
      begin
      Query_Lote.Sql.Add(' and PF2L_LOTE=:LOTE ');
      Query_Lote.ParamByName('LOTE').AsString:=trim(Tb_PF2_LotesPF2L_LOTE.AsString);
      end;
   Query_Lote.Open;
   if Query_Lote.RecordCount>0 then
     begin
     Tb_PF2_LotesPF2L_QTD.AsFloat:=Tb_PF2_LotesPF2L_QTD.AsFloat+Query_Lote.FieldByName('PF2L_QTD').AsFloat;
     Query_Lote.Close;
     Query_Lote.SQL.Clear;
     Query_Lote.SQL.Add('delete from '+mtab_cadpf2_lotes
                       +'  where (PF2L_CODEMP=:CODEMP ) '
                       +'    and PF2L_CHAVE=:CHAVE '
                       +'    and PF2L_LOTSEQ=:LOTSEQ '
                       +'    and PF2L_ITEM=:ITEM '
                       +'    and PF2L_CODPRO=:CODPRO ');
     Query_Lote.ParamByName('CODEMP').AsInteger:=mCompras_GP.mPed1_CodEmp;
     Query_Lote.ParamByName('CHAVE').AsInteger:=mCompras_GP.mped1_Chave;
     Query_Lote.ParamByName('LOTSEQ').AsInteger:=mCompras_GP.mPed1_Chave_ano;
     Query_Lote.ParamByName('ITEM').AsInteger:=tb_pfor02_orcPF2ITEM.AsInteger;
     Query_Lote.ParamByName('CODPRO').AsFloat:=tb_pfor02_orcPF2CODPRO_INT.AsFloat;
     if trim(Tb_PF2_LotesPF2L_LOTE.AsString)=''  then
       begin
       Query_Lote.Sql.Add(' and (PF2L_LOTE is null or PF2L_LOTE=:LOTE )');
       Query_Lote.ParamByName('LOTE').AsString:=' ';
       end
     else
       begin
       Query_Lote.Sql.Add(' and PF2L_LOTE=:LOTE ');
       Query_Lote.ParamByName('LOTE').AsString:=trim(Tb_PF2_LotesPF2L_LOTE.AsString);
       end;
     Query_Lote.ExecSQL;
{      verteclado(0);
      MessageDlg('Não Pode Haver Lotes repetidos!',mtWarning,[mbok],0);
      FreeAndNil(Query_Lote);
      abort;
      exit;}
      end;
   FreeAndNil(Query_Lote);
   end;



Tb_PF2_LotesPF2L_CODEMP.AsInteger:=mCompras_GP.mPed1_CodEmp;
Tb_PF2_LotesPF2L_LOTSEQ.AsInteger:=mCompras_GP.mPed1_Chave_ano;
Tb_PF2_LotesPF2L_CHAVE.AsInteger :=mCompras_GP.mped1_Chave;
Tb_PF2_LotesPF2L_ITEM.AsInteger  :=tb_pfor02_orcPF2ITEM.AsInteger;
Tb_PF2_LotesPF2L_CODPRO.AsFloat  :=tb_pfor02_orcPF2CODPRO_INT.AsFloat;
if Tb_PF2_LotesPF2L_LOTE.IsNull then
  Tb_PF2_LotesPF2L_LOTE.AsString:=' ';
if Tb_PF2_LotesPF2L_DTVCTO.IsNull then
  Tb_PF2_LotesPF2L_DTVCTO.AsDateTime:=StrToDate('01/01/1900');
mLote_qtdFalta:=(mLote_qtdFalta+mAnt_qtdLote)-Tb_PF2_LotesPF2L_QTD.AsFloat;
mAnt_qtdLote:=0;
if mLote_qtdFalta=0 then
   gb_vencimentos.Caption:='Lotes/Vencimentos'
else
   begin
   if mLote_qtdFalta>0 then
      gb_vencimentos.Caption:='Lotes/Vencimentos. Esta Passando '+FormatFloat(mcasqtd, Tb_PF2_LotesPF2L_QTD.AsFloat)
      +' '+tb_pfor02_orcUNDPRO_INT.AsString
   else
      gb_vencimentos.Caption:='Lotes/Vencimentos. Esta Faltando '+FormatFloat(mcasqtd, Tb_PF2_LotesPF2L_QTD.AsFloat)
      +' '+tb_pfor02_orcUNDPRO_INT.AsString;
   end;
mAnt_qtdLote   :=0;
mAnt_LoteNum   :='';
mAnt_LoteCodPro:=0;        
For i:=0 to Tb_PF2_Lotes.FieldCount-1 do
   begin
   if not Tb_PF2_Lotes.Fields[i].IsNull then
      Continue;
   if Tb_PF2_Lotes.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      Tb_PF2_Lotes.Fields[i].Value:=0
   else if Tb_PF2_Lotes.Fields[i].DataType in [ftString,ftMemo] then
      Tb_PF2_Lotes.Fields[i].Value:=' ';
   end;



end;


function TFrm_Compras_Orc.fBuscarLotes(pCodpro: String;pQtd: Real): boolean;
var
mQtdFalta: Real;
begin
if mCompras_GP.mped1_Chave=0 then
   begin
   mCompras_GP.fGravarPed01(0);
   edt_chave.Text:=Inttostr(mCompras_GP.mped1_Chave);
   end;

Tb_PF2_Lotes.Close;
Tb_PF2_Lotes.SQL.Clear;
Tb_PF2_Lotes.SQL.Add('SELECT  PF2L_CODEMP, '
                    +'  PF2L_CODPRO, '
                    +'  PF2L_LOTSEQ, '
                    +'  PF2L_CHAVE,  PF2L_ITEM,  PF2L_LOTE, '
                    +'  CASE WHEN PF2L_DTFAB < '+QuotedStr('01/01/1901')
                    +' THEN null else PF2L_DTFAB end as PF2L_DTFAB, '

                    +'  CASE WHEN PF2L_DTVCTO < '+QuotedStr('01/01/1901')
                    +' THEN null else PF2L_DTVCTO end as PF2L_DTVCTO, '

                    +'  PF2L_QTD,  PF2L_LOTE_RE '
                    +', PF2L_ID_NEW '
                    +', PF2L_ID_PF02_NEW '

                    +' FROM '+mtab_cadpf2_lotes
                  +'  where (PF2L_CODEMP=:CODEMP ) '
                  +'    and PF2L_CHAVE=:CHAVE '
                  +'    and PF2L_LOTSEQ=:LOTSEQ '
                  +'    and PF2L_ITEM=:ITEM ');
Tb_PF2_Lotes.ParamByName('CODEMP').AsInteger:=mCompras_GP.mPed1_CodEmp;
Tb_PF2_Lotes.ParamByName('CHAVE').AsInteger:=mCompras_GP.mped1_Chave;
Tb_PF2_Lotes.ParamByName('LOTSEQ').AsInteger:=mCompras_GP.mPed1_Chave_ano;
Tb_PF2_Lotes .ParamByName('ITEM').AsInteger:=tb_pfor02_orcPF2ITEM.AsInteger;
try
   Tb_PF2_Lotes.open;
except
   ex_erroSql_Novo(Tb_PF2_Lotes,3268,'compras_orc','CADPF2_LOTES');
   result:=false;
   exit;
   end;
mQtdFalta:=pQtd;

While not Tb_PF2_Lotes.Eof do
   begin
   if Tb_PF2_Lotes.fieldbyName('PF2L_QTD').AsFloat>mqtdfalta then
      begin
      if mQtdFalta<=0 then
         Tb_PF2_Lotes.Delete
      else
         begin
         Tb_PF2_Lotes.Edit;
         Tb_PF2_LotesPF2L_QTD.AsFloat:=mQtdFalta;
         Tb_PF2_Lotes.Post;
         end;
      mQtdFalta:=0;
      end
   else
      mQtdFalta:=mQtdFalta-Tb_PF2_Lotes.fieldbyName('PF2L_QTD').AsFloat;
   mQtdFalta:=Arredonda( mQtdFalta , DM1.Tb_PargerPCASQTD.AsInteger);
   if Tb_PF2_LotesPF2L_CODPRO.AsFloat<>tb_pfor02_orcPF2CODPRO_INT.AsFloat then
      begin
      Tb_PF2_Lotes.Edit;
      Tb_PF2_LotesPF2L_CODPRO.Value:=tb_pfor02_orcPF2CODPRO_INT.AsFloat;
      Tb_PF2_Lotes.Post;
      end;

   Tb_PF2_Lotes.Next;
   end;
if mQtdFalta>0 then
   begin
   Tb_PF2_Lotes.First;
   While (not Tb_PF2_Lotes.Eof) and (mQtdFalta<>0) do
      begin
      if (trim(Tb_PF2_LotesPF2L_LOTE.AsString)='') and (Tb_PF2_LotesPF2L_DTVCTO.AsDateTime<=pdatanula) then
         begin
         Tb_PF2_Lotes.Edit;
         Tb_PF2_LotesPF2L_QTD.AsFloat:=Tb_PF2_LotesPF2L_QTD.AsFloat+mQtdFalta;
         mQtdFalta:=0;
         Tb_PF2_Lotes.Post;
         end;
      Tb_PF2_Lotes.Next;
      end;
   end;


if mQtdFalta>0 then
   begin
   Tb_PF2_Lotes.Insert;
   Tb_PF2_LotesPF2L_QTD.AsFloat:=mQtdFalta;
   Tb_PF2_Lotes.Post;
   end;
mLote_qtdFalta:=0;

gb_vencimentos.Caption:='Lotes/Vencimentos';

result:=true;
end;
procedure TFrm_Compras_Orc.c(DataSet: TDataSet);
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

procedure TFrm_Compras_Orc.gb_vencimentosExit(Sender: TObject);
begin
if mLote_qtdFalta<>0 then
   begin
   verteclado(0);
   if mLote_qtdFalta>0 then
      begin
      MessageDlg('Esta Passando '+FormatFloat(mcasqtd, mLote_qtdFalta)+' '+tb_pfor02_orcUNDPRO_INT.AsString+' Favor corrigir!',mtWarning,[mbOk],0);
      DBGrid_lotes.SetFocus;
      exit;
      end
   else
      begin
      MessageDlg('Esta Faltando '+FormatFloat(mcasqtd, mLote_qtdFalta*-1)+' '+tb_pfor02_orcUNDPRO_INT.AsString+' Favor corrigir!',mtWarning,[mbOk],0);
      DBGrid_lotes.SetFocus;
      exit;
      end
   end;
end;

procedure TFrm_Compras_Orc.gb_vencimentosEnter(Sender: TObject);
begin
mLote_qtdFalta:=0;
end;

procedure TFrm_Compras_Orc.Tb_PF2_LotesAfterInsert(DataSet: TDataSet);
begin
Tb_PF2_LotesPF2L_QTD.AsFloat:=mLote_qtdFalta;
mAnt_qtdLote   :=0;
mAnt_LoteNum   :='';
mAnt_LoteCodPro:=0;
Tb_PF2_LotesPF2L_ID_PF02_NEW.AsFloat  :=frm_compras_orc.tb_pfor02_orcPF2ID_NEW.AsFloat;
Tb_PF2_LotesPF2L_ID_NEW.AsFloat       :=fBuscarProximoId('CADPF2_LOTES_ORC_SEQ');


end;

procedure TFrm_Compras_Orc.Tb_PF2_LotesAfterEdit(DataSet: TDataSet);
begin

mAnt_qtdLote   :=Tb_PF2_LotesPF2L_QTD.AsFloat;
mAnt_LoteNum   :=trim(Tb_PF2_LotesPF2L_LOTE.AsString);
mAnt_LoteCodPro:=Tb_PF2_LotesPF2L_CODPRO.AsFloat;
end;

procedure TFrm_Compras_Orc.Tb_PF2_LotesBeforeDelete(DataSet: TDataSet);
begin
if mCorrecaodoPedido then
   begin
   MessageDlg('Não é permitido alterar a forma de pagamento em modo de correção!',mtInformation,[mbOk],0);
   abort;
   exit;
   end;
if not sbnGravar.Enabled then
   begin
   abort;
   exit;
   end;


mLote_qtdFalta:=mLote_qtdFalta-Tb_PF2_LotesPF2L_QTD.AsFloat;
if mLote_qtdFalta=0 then
   gb_vencimentos.Caption:='Lotes/Vencimentos'
else
   begin
   if mLote_qtdFalta>0 then
      gb_vencimentos.Caption:='Lotes/Vencimentos. Esta Passando '+FormatFloat(mcasqtd, Tb_PF2_LotesPF2L_QTD.AsFloat)
      +' '+tb_pfor02_orcUNDPRO_INT.AsString
   else
      gb_vencimentos.Caption:='Lotes/Vencimentos. Esta Faltando '+FormatFloat(mcasqtd, Tb_PF2_LotesPF2L_QTD.AsFloat)
      +' '+tb_pfor02_orcUNDPRO_INT.AsString;
   end;

end;

procedure TFrm_Compras_Orc.Src_Pfor02_orcDataChange(Sender: TObject;
  Field: TField);
begin
if mlocalizando_pedido then
   exit;


if (not (tb_pfor02_orc.State in [dsEdit,dsInsert]))  then
   begin
{
                     +',PF2T_VD_IPI_Valor'
                     +',PF2T_VD_ICMSST_BASE'
                     +',PF2T_VD_ICMSST_VALOR'
                     +',PF2T_VD_ICMS_BASE'
                     +',PF2T_VD_ICMS_VALOR'
                     +',PF2T_VD_PIS_BASE'
                     +',PF2T_VD_PIS_VALOR'
                     +',PF2T_VD_COFINS_BASE'
                     +',PF2T_VD_COFINS_VALOR'

   mCompras_GP.mPed1_VD_IPI_Valor   := tb_pfor02_orc.ParamByName('PF2T_VD_IPI_Valor').AsFloat;
   mCompras_GP.mPed1_VD_ICMSST_BASE := tb_pfor02_orc.ParamByName('PF2T_VD_ICMSST_BASE').AsFloat;
   mCompras_GP.mPed1_VD_ICMSST_VALOR:= tb_pfor02_orc.ParamByName('PF2T_VD_ICMSST_VALOR').AsFloat;
   mCompras_GP.mPed1_VD_ICMS_BASE   := tb_pfor02_orc.ParamByName('PF2T_VD_ICMS_BASE').AsFloat;
   mCompras_GP.mPed1_VD_ICMS_VALOR  := tb_pfor02_orc.ParamByName('PF2T_VD_ICMS_VALOR').AsFloat;
   mCompras_GP.mPed1_VD_PIS_BASE    := tb_pfor02_orc.ParamByName('PF2T_VD_PIS_BASE').AsFloat;
   mCompras_GP.mPed1_VD_PIS_VALOR   := tb_pfor02_orc.ParamByName('PF2T_VD_PIS_VALOR').AsFloat;
   mCompras_GP.mPed1_VD_COFINS_BASE := tb_pfor02_orc.ParamByName('PF2T_VD_COFINS_BASE').AsFloat;
   mCompras_GP.mPed1_VD_COFINS_VALOR:= tb_pfor02_orc.ParamByName('PF2T_VD_COFINS_VALOR').AsFloat;
 }
   fLerCadpF2_Lotes;

   end
else if tb_pfor02_orcPF2ITEM.IsNull then
   Tb_PF2_Lotes.Close;
//mqtdchange:=mqtdchange+1;
//lbl_qtdchange.caption:=inttostr(mqtdchange);
end;

function tFrm_Compras_Orc.fLerCadpF2_Lotes: boolean;
begin
   Tb_PF2_Lotes.Close;
   Tb_PF2_Lotes.SQL.Clear;
   Tb_PF2_Lotes.SQL.Add('SELECT  PF2L_CODEMP, '
                    +'  PF2L_CODPRO, '
                    +'  PF2L_LOTSEQ, '
                    +'  PF2L_CHAVE,  PF2L_ITEM,  PF2L_LOTE, '

                    +'  CASE WHEN PF2L_DTFAB < '+QuotedStr('01/01/1901')
                    +' THEN null else PF2L_DTFAB end as PF2L_DTFAB, '

                    +'  CASE WHEN PF2L_DTVCTO < '+QuotedStr('01/01/1901')
                    +' THEN null else PF2L_DTVCTO end as PF2L_DTVCTO, '
                    +'  PF2L_QTD,  PF2L_LOTE_RE '
                    +', PF2L_ID_NEW '
                    +', PF2L_ID_PF02_NEW '
                    +' FROM '+mtab_cadpf2_lotes
                     +'  where (PF2L_CODEMP=:CODEMP ) '
                     +'    and PF2L_CHAVE=:CHAVE '
                     +'    and PF2L_LOTSEQ=:LOTSEQ '
                     +'    and PF2L_ITEM=:ITEM ');
   Tb_PF2_Lotes.ParamByName('CODEMP').AsInteger:=mCompras_GP.mPed1_CodEmp;
   Tb_PF2_Lotes.ParamByName('CHAVE').AsInteger:=mCompras_GP.mped1_Chave;
   Tb_PF2_Lotes.ParamByName('LOTSEQ').AsInteger:=mCompras_GP.mPed1_Chave_ano;
   Tb_PF2_Lotes .ParamByName('ITEM').AsInteger:=tb_pfor02_orcPF2ITEM.AsInteger;
   try
      Tb_PF2_Lotes.open;
      result:=true;
   except
      ex_erroSql_Novo(Tb_PF2_Lotes,3268,'compras_orc','CADPF2_LOTES');
      result:=false;
      exit;
      end;

end;
procedure TFrm_Compras_Orc.Tb_PF2_LotesBeforeEdit(DataSet: TDataSet);
begin
if sbnGravar.Enabled=false then
   begin
   abort;
   exit;
   end;

if mCorrecaodoPedido then
   begin
   MessageDlg('Não é permitido alterar a forma de pagamento em modo de correção!',mtInformation,[mbOk],0);
   abort;
   exit;
   end;
   
mAnt_LoteNum:=trim(Tb_PF2_LotesPF2L_LOTE.AsString);
mAnt_qtdLote:=Tb_PF2_LotesPF2L_QTD.AsFloat;
mAnt_LoteCodPro:=Tb_PF2_LotesPF2L_CODPRO.AsFloat;

end;

procedure TFrm_Compras_Orc.Tb_PF2_LotesAfterPost(DataSet: TDataSet);
begin
c(Tb_PF2_Lotes);
if Tb_PF2_LotesPF2L_QTD.AsFloat<=0 then
   Tb_PF2_Lotes.Delete
else fValidarQuantidadesLote(Tb_PF2_LotesPF2L_ITEM.AsInteger);

end;

procedure TFrm_Compras_Orc.GroupBox1Enter(Sender: TObject);
begin
mFpgto_VlrFalta:=0;

end;

procedure TFrm_Compras_Orc.GroupBox1Exit(Sender: TObject);
begin
if mFpgto_VlrFalta<>0 then
   begin
   verteclado(0);
   if mFpgto_VlrFalta>0 then
      begin
      MessageDlg('Esta Passando R$'+FormatFloat(mcasas, mFpgto_VlrFalta)+' Favor corrigir!',mtWarning,[mbOk],0);
      DBGrid_fpgto.SetFocus;
      exit;
      end
   else
      begin
      MessageDlg('Esta Faltando R$'+FormatFloat(mcasas, mFpgto_VlrFalta*-1)+' Favor corrigir!',mtWarning,[mbOk],0);
      DBGrid_fpgto.SetFocus;
      exit;
      end
   end;

tb_pfor01_parc.First;
mCompras_GP.mped1_QtdParc:=1;
mCompras_GP.mPed1_Parcelas:=insere(tb_pfor01_parcPF1VPRAZO.AsString,'0',4);
tb_pfor01_parc.Next;

While not tb_pfor01_parc.Eof do
   begin
   mCompras_GP.mped1_QtdParc :=mCompras_GP.mped1_QtdParc+1;
   mCompras_GP.mPed1_Parcelas:=mCompras_GP.mPed1_Parcelas+insere(tb_pfor01_parcPF1VPRAZO.AsString,'0',4);
   tb_pfor01_parc.Next;
   end;
end;

procedure TFrm_Compras_Orc.tb_pfor01_parcBeforeDelete(DataSet: TDataSet);
begin

if not sbnGravar.Enabled then
   begin
   abort;
   exit;
   end;

if mCorrecaodoPedido then
   begin
   MessageDlg('Não é permitido alterar a forma de pagamento em modo de correção!',mtInformation,[mbOk],0);
   abort;
   exit;
   end;

mFpgto_VlrFalta:=Arredonda(   (mFpgto_VlrFalta-tb_pfor01_parcPF1VVALOR.Asfloat) ,2);

end;

procedure TFrm_Compras_Orc.edt_Imp_Imp_ValorExit(Sender: TObject);
begin
edt_Imp_Imp_Valor.Text:=Formatfloat(mcasas, valfloat(edt_Imp_Imp_Valor.Text));
mCompras_GP.mPed1_Imp_Imp_Valor:=ValFloat(edt_Imp_Imp_Valor.Text);
if mant_Imp_Imp_Valor<>valfloat(edt_Imp_Imp_Valor.Text) then
   begin
   mCompras_GP.mPed1_Imp_Imp_Aliq:=0;
   edt_Imp_Imp_Aliq.Text:=Formatfloat(mcasas, mCompras_GP.mPed1_Imp_Imp_Aliq);
   fRecalcularPedido(3,'S');
   end;


//fTotais(0);

end;

procedure TFrm_Compras_Orc.edt_Imp_Imp_AliqExit(Sender: TObject);
begin
if ( valfloat(edt_Imp_Imp_Aliq.Text)<0) or (valfloat(edt_Imp_Imp_Aliq.Text)>9999) then
   edt_Imp_Imp_Aliq.Text:=Formatfloat(mcasas, 0);

if ValFloat(edt_Imp_Imp_Aliq.Text)=0 then
   begin
   edt_Imp_Imp_Valor.Text:=FormatFloat(mcasas, 0);
   end
else
   edt_Imp_Imp_Valor.Text:=FormatFloat(mcasas,
    ((mCompras_GP.mPed1_TotMer)-
    (mCompras_GP.mPed1_DescPed02_Perc+mCompras_GP.mPed1_Desc_Rateado))
                                       *mCompras_GP.mPed1_Imp_Imp_Aliq/100);
if mCompras_GP.mPed1_Imp_Imp_Aliq<>valfloat(edt_Imp_Imp_Aliq.Text) then
   begin
   mCompras_GP.mPed1_Imp_Imp_Aliq:=valfloat(edt_Imp_Imp_Aliq.Text);
   mCompras_GP.mPed1_Imp_Imp_Aliq:=ValFloat(edt_Imp_Imp_Aliq.Text);
   edt_Imp_Imp_Aliq.Text:=Formatfloat(mcasas, mCompras_GP.mPed1_Imp_Imp_Aliq);
//mCompras_GP.fGravarPed01(1);
   fRecalcularPedido(3,'S');
   end;

end;

procedure TFrm_Compras_Orc.edt_Imp_Imp_AliqChange(Sender: TObject);
begin
if (edt_Imp_Imp_Aliq.Modified) and (mCompras_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Compras_Orc.edt_percfreteExit(Sender: TObject);
begin
if ( valfloat(edt_percfrete.Text)<0) or (valfloat(edt_percfrete.Text)>99) then
   edt_percfrete.Text:=Formatfloat(mcasas, 0);

if mCompras_GP.mPed1_Perc_Frete<>ValFloat(edt_percfrete.Text) then
   begin
   mCompras_GP.mPed1_Perc_Frete:=ValFloat(edt_percfrete.Text);
   edt_percfrete.Text:=Formatfloat(mcasas, mCompras_GP.mPed1_Perc_Frete);

   if ValFloat(edt_percfrete.Text)=0 then
      begin
      edt_valfre.Text:=FormatFloat(mcasas, 0);
      end
   else
      begin

      edt_valfre.Text:=FormatFloat(mcasas,
       ((mCompras_GP.mPed1_TotMer)-
       (mCompras_GP.mPed1_DescPed02_Perc+mCompras_GP.mPed1_Desc_Rateado))
                                          *mCompras_GP.mPed1_Perc_Frete/100);
      mCompras_GP.mPed1_ValFre:=ValFloat(edt_ValFre.Text);

      end;
   fRecalcularPedido(3,'S');
   end;

//mCompras_GP.fGravarPed01(1);

end;

procedure TFrm_Compras_Orc.edt_bcPISExit(Sender: TObject);
begin
edt_bcPIS.Text:=Formatfloat(mcasas, valfloat(edt_bcPIS.Text));
mCompras_GP.mPed1_PIS_Base:=ValFloat(edt_bcPIS.Text);
if mAnt_PIS_Base<>mCompras_GP.mPed1_PIS_Base then
   begin
   mCompras_GP.mPed1_VD_PIS_BASE:=mCompras_GP.mPed1_PIS_Base;
   fRecalcularPedido(3,'S');
   end;


end;

procedure TFrm_Compras_Orc.edt_vlrPISExit(Sender: TObject);
begin
edt_vlrPIS.Text:=Formatfloat(mcasas, valfloat(edt_vlrPIS.Text));
mCompras_GP.mPed1_PIS_Valor:=ValFloat(edt_vlrPIS.Text);
if mAnt_PIS_Valor<>mCompras_GP.mPed1_PIS_Valor then
   begin
   mCompras_GP.mPed1_VD_PIS_VALOR:=mCompras_GP.mPed1_PIS_Valor;
   fRecalcularPedido(3,'S');
   end;

end;

procedure TFrm_Compras_Orc.edt_bcCOFINSExit(Sender: TObject);
begin
edt_bcCOFINS.Text:=Formatfloat(mcasas, valfloat(edt_bcCOFINS.Text));
mCompras_GP.mPed1_Cofins_Base:=ValFloat(edt_bcCOFINS.Text);
if mAnt_Cofins_Valor<>mCompras_GP.mPed1_Cofins_Valor then
   begin
   mCompras_GP.mPed1_VD_COFINS_VALOR:=mCompras_GP.mPed1_Cofins_Valor;
   fRecalcularPedido(3,'S');
   end;


end;

procedure TFrm_Compras_Orc.edt_vlrCOFINSExit(Sender: TObject);



begin
edt_vlrCOFINS.Text:=Formatfloat(mcasas, valfloat(edt_vlrCOFINS.Text));
mCompras_GP.mPed1_Cofins_Valor:=ValFloat(edt_vlrCOFINS.Text);

if mAnt_Cofins_Valor<>mCompras_GP.mPed1_Cofins_Valor then
   begin
   mCompras_GP.mPed1_VD_COFINS_VALOR:=mCompras_GP.mPed1_Cofins_Valor;
   fRecalcularPedido(3,'S');
   end;
end;

function tFrm_Compras_Orc.FLimparValoresDigitados: Boolean;
begin
mCompras_GP.mPed1_VD_IPI_Valor   :=0;
mCompras_GP.mPed1_VD_ICMSST_BASE :=0;
mCompras_GP.mPed1_VD_ICMSST_VALOR:=0;
mCompras_GP.mPed1_VD_ICMS_BASE   :=0;
mCompras_GP.mPed1_VD_ICMS_VALOR  :=0;
mCompras_GP.mPed1_VD_PIS_BASE    :=0;
mCompras_GP.mPed1_VD_PIS_VALOR   :=0;
mCompras_GP.mPed1_VD_COFINS_BASE :=0;
mCompras_GP.mPed1_VD_COFINS_VALOR:=0;
result:=true;
end;
procedure TFrm_Compras_Orc.edt_bcicmsstEnter(Sender: TObject);
begin
mAnt_ICMSST_Base:=valfloat(edt_bcicmsst.Text);

end;

procedure TFrm_Compras_Orc.edt_bcicmsEnter(Sender: TObject);
begin
mAnt_ICMS_Base:=valfloat(edt_bcicms.Text);

end;

procedure TFrm_Compras_Orc.edt_vlricmsstEnter(Sender: TObject);
begin
mAnt_ICMSST_Valor:=valfloat(edt_vlricmsst.Text);

end;

procedure TFrm_Compras_Orc.edt_vlricmsEnter(Sender: TObject);
begin
mAnt_ICMS_Valor:=valfloat(edt_vlricms.Text);

end;

procedure TFrm_Compras_Orc.edt_bcPISEnter(Sender: TObject);
begin
mAnt_PIS_Base:=valfloat(edt_bcPIS.Text);

end;

procedure TFrm_Compras_Orc.edt_vlrPISEnter(Sender: TObject);
begin
if mAnt_PIS_Valor<>mCompras_GP.mPed1_PIS_Valor then
   mCompras_GP.mPed1_VD_PIS_VALOR:=mCompras_GP.mPed1_PIS_Valor;

end;

procedure TFrm_Compras_Orc.edt_bcCOFINSEnter(Sender: TObject);
begin
mAnt_Cofins_Base:=valfloat(edt_bcCOFINS.Text);

end;

procedure TFrm_Compras_Orc.edt_vlrCOFINSEnter(Sender: TObject);
begin
mAnt_Cofins_Valor:=valfloat(edt_vlrCOFINS.Text);

end;

procedure TFrm_Compras_Orc.edt_codfpEnter(Sender: TObject);
begin
mPed1_CodFP_Ant:=valint(edt_codfp.text);
end;

procedure TFrm_Compras_Orc.DBGrid_lotesExit(Sender: TObject);
var
mQtdLote: Real;
begin
if not Tb_PF2_Lotes.Active then
   fLerCadpF2_Lotes;
if Tb_PF2_Lotes.State in [dsedit,dsinsert] then
  if (Tb_PF2_LotesPF2L_LOTE.AsString='') and (Tb_PF2_LotesPF2L_QTD.AsInteger<=0) then
    Tb_PF2_Lotes.Cancel
  else
    Tb_PF2_Lotes.Post;
Tb_PF2_Lotes.First;
mQtdLote:=0;
While not Tb_PF2_Lotes.Eof do
   begin
   mQtdLote:=mQtdLote+Tb_PF2_LotesPF2L_QTD.AsFloat;
   Tb_PF2_Lotes.Next;
   end;
if mQtdLote<>tb_pfor02_orcPF2QTDP.AsFloat then
   begin
   MessageDlg('Quantidade no Lote '+FormatFloat(mcasqtd, mQtdLote)+' No Pedido '+FormatFloat(mcasqtd, tb_pfor02_orcPF2QTDP.AsFloat)+' não pode ser diferente!',mtWarning,[mbOk],0);
   DBGrid_lotes.SetFocus;
   Abort;
   exit;
   end;
end;

procedure TFrm_Compras_Orc.edt_outdespChange(Sender: TObject);
begin
if (edt_outdesp.Modified) and (mCompras_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Compras_Orc.edt_outdespExit(Sender: TObject);
begin
edt_outdesp.Text:=Formatfloat(mcasas, valfloat(edt_outdesp.Text));
if mCompras_GP.mPed1_OutDesp<>valfloat(edt_outdesp.Text) then
   begin
   mCompras_GP.mPed1_OutDesp:=valfloat(edt_outdesp.Text);

   if (mCompras_GP.mPed1_OutDesp<>0) then
      edt_outdesp_icms_aliqExit(self);
   fRecalcularPedido(3,'S');
   mped_Alterou_Cab:=true;
   end;

end;

procedure TFrm_Compras_Orc.edt_totipiChange(Sender: TObject);
begin
if (edt_totipi.Modified) and (mCompras_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;


end;

procedure TFrm_Compras_Orc.edt_totipiEnter(Sender: TObject);
begin
mAnt_TotIPI:=valfloat(edt_totipi.Text);

end;

procedure TFrm_Compras_Orc.edt_totipiExit(Sender: TObject);
begin
edt_totipi.Text:=Formatfloat(mcasas, valfloat(edt_totipi.Text));
if mCompras_GP.mPed1_TotIPI<>valfloat(edt_totipi.Text) then
   begin
   mCompras_GP.mPed1_TotIPI:=valfloat(edt_totipi.Text);

   if mAnt_TotIPI<>mCompras_GP.mPed1_TotIPI then
      mCompras_GP.mPed1_VD_IPI_Valor:=mCompras_GP.mPed1_TotIPI;

   fRecalcularPedido(0,'S');
   mped_Alterou_Cab:=true;
   end;


end;

procedure TFrm_Compras_Orc.edt_valseg_icms_aliqChange(Sender: TObject);
begin
if (edt_valfre_icms_aliq.Modified) and (mCompras_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;


end;

procedure TFrm_Compras_Orc.edt_valseg_icms_aliqExit(Sender: TObject);
begin
edt_valseg_icms_aliq.Text:=Formatfloat(mcasas, valfloat(edt_valseg_icms_aliq.Text));
if mCompras_GP.mPed1_ValSeg_icms_aliq<>valfloat(edt_valseg_icms_aliq.Text) then
   begin
   mCompras_GP.mPed1_ValSeg_icms_aliq:=valfloat(edt_valseg_icms_aliq.Text);
   if (mCompras_GP.mPed1_ValSeg_icms_aliq>0) and (mCompras_GP.mPed1_ValSeg>0) then
      begin
      mCompras_GP.mPed1_ValSeg_icms_valor:=Arredonda( (mCompras_GP.mPed1_ValSeg*mCompras_GP.mPed1_ValSeg_icms_aliq/100) ,2);
      edt_valseg_icms_valor.Text:=Formatfloat(mcasas, mCompras_GP.mPed1_ValSeg_icms_valor);
      end;
   fRecalcularPedido(3,'S');
   end;
mped_Alterou_Cab:=true;

end;

procedure TFrm_Compras_Orc.edt_valseg_icms_valorChange(Sender: TObject);
begin
if (edt_valfre_icms_valor.Modified) and (mCompras_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Compras_Orc.edt_valseg_icms_valorExit(Sender: TObject);
begin
edt_valseg_icms_valor.Text:=Formatfloat(mcasas, valfloat(edt_valseg_icms_valor.Text));
if mCompras_GP.mPed1_ValSeg_icms_valor<>valfloat(edt_valseg_icms_valor.Text) then
   begin
   mCompras_GP.mPed1_ValSeg_icms_valor:=valfloat(edt_valseg_icms_valor.Text);
   fRecalcularPedido(3,'S');
   mped_Alterou_Cab:=true;
   end;

end;

procedure TFrm_Compras_Orc.edt_valfre_icms_aliqChange(Sender: TObject);
begin
if (edt_valfre_icms_aliq.Modified) and (mCompras_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Compras_Orc.edt_valfre_icms_valorExit(Sender: TObject);
begin

edt_valfre_icms_valor.Text:=Formatfloat(mcasas, valfloat(edt_valfre_icms_valor.Text));
if mCompras_GP.mPed1_ValFre_Icms_Valor<>valfloat(edt_valfre_icms_valor.Text) then
   begin
   mCompras_GP.mPed1_ValFre_Icms_Valor:=valfloat(edt_valfre_icms_valor.Text);
   mped_Alterou_Cab:=true;
   fRecalcularPedido(3,'S');
   end;

end;

procedure TFrm_Compras_Orc.edt_valfre_icms_aliqExit(Sender: TObject);
begin
edt_valfre_icms_aliq.Text:=Formatfloat(mcasas, valfloat(edt_valfre_icms_aliq.Text));
if mCompras_GP.mPed1_ValFre_Icms_Aliq<>valfloat(edt_valfre_icms_aliq.Text) then
   begin
   mCompras_GP.mPed1_ValFre_Icms_Aliq:=valfloat(edt_valfre_icms_aliq.Text);
   if (mCompras_GP.mPed1_ValFre_Icms_Aliq=0) or (mCompras_GP.mPed1_ValFre=0) then
      mCompras_GP.mPed1_ValFre_Icms_Valor:=0
   else
      mCompras_GP.mPed1_ValFre_Icms_Valor:=Arredonda( (mCompras_GP.mPed1_ValFre*mCompras_GP.mPed1_ValFre_icms_aliq/100) ,2);
   edt_valfre_icms_valor.Text:=FormatFloat(mcasas, mCompras_GP.mPed1_ValFre_Icms_Valor);
   mped_Alterou_Cab:=true;
   fRecalcularPedido(3,'S');
   end;


end;

procedure TFrm_Compras_Orc.edt_PIPIFRETEExit(Sender: TObject);
begin


edt_PIPIFRETE.Text:=Formatfloat(mcasas, valfloat(edt_PIPIFRETE.Text));
if mCompras_GP.mPed1_ValFre_PIPI<>valfloat(edt_PIPIFRETE.Text) then
   begin
   mCompras_GP.mPed1_ValFre_PIPI:=valfloat(edt_PIPIFRETE.Text);
   if (mCompras_GP.mPed1_ValFre_pipi>0) and (mCompras_GP.mPed1_ValFre>0) then
      mCompras_GP.mPed1_ValFre_IPI:=Arredonda((mCompras_GP.mPed1_ValFre*mCompras_GP.mPed1_ValFre_pipi/100),2)
   else
      mCompras_GP.mPed1_ValFre_ipi:=0;
   edt_IPIFRETE.Text:=FormatFloat(mcasas, mCompras_GP.mPed1_ValFre_ipi);


   fRecalcularPedido(3,'S');
   end;

end;

procedure TFrm_Compras_Orc.sbnExcluirClick(Sender: TObject);
var
  query_pfor01: tQuery;
  mSemSaldo: Boolean;
  query_estoque: tQuery;
begin
mCompras_GP.mPed1_DatHor_UEVE:=now();
query_pfor01:=tQuery.Create(nil);
query_pfor01.DatabaseName:='SG_ASSOC';
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
fInnerJoin(1,'CADFOR','FCODEMP','PF1CODEMP','FCODFOR','FCODFOR');

query_pfor01.Close;
query_pfor01.SQL.Clear;
query_pfor01.SQL.add('Select PF1CODEMP,PF1CHAVE,PF1CODFOR,PF1DATA,PF1OBS  '
                    +',PF1CASASD,PF1DESC01,PF1DESC02,PF1DESC03,PF1TOTDES  '
                    +',PF1TOTBRU,PF1TOTLIQ,PF1STATUS,PF1CODUSR,PF1HORDIG  '
                    +',PF1USRMOD,PF1DTMOD,PF1HRMOD,PF1TOTMER,PF1TOTPOS  '
                    +',PF1TOTNEG,PF1TOTINA,PF1TOTFRE,PF1TOTSEG,PF1BASEN '
                    +',PF1BASER,PF1ICMSN,PF1ICMSR,PF1CODLDR, PF1BASENR '
                    +',PF1ICMSNR,PF1ISENTAS,PF1TOTOUT,PF1TOTIPI,PF1DATANF '
                    +',PF1NUMNF,PF1SERIE,PF1SUBSER,PF1TABPV,PF1CODPV,PF1CODBCO '
                    +',PF1CODTRA,PF1MODELO,PF1NUMDUP,PF1DESD,PF1GRAVNF,PF1GRAVDP, '
                    +'PF1DATAENT,PF1LOTSEQ, PF1CONDPAG,PF1PIPIFRETE,PF1IPIFRETE, '
                    +'PF1DTPFAT,PF1DTPENT,PF1PERCFRE,PF1FRETEPC,PF1TEMBOL, '
                    +'PF1LEMAT,PF1CODEMP_ORI,PF1NUMPED_ORI,PF1PAG_ORI,PF1ORIGEM,'
                    +'PF1OUTNINC,PF1OUTDESP,PF1NFCF, PF1SITPED,PF1QTDMAN,'
                    +'PF1TOTDESOUT,PF1TOTBRUOUT,PF1TOTLIQOUT,PF1TOTPBT,'
                    +'PF1TOTFREOUT,PF1FORMACE,PF1OUTROS,PF1NUMDUPOUT,PF1TIPO, '
                    +'PF1SIV_FRETE,PF1SIV_DARE,PF1SIV_OUTROS,PF1SIV_OUTROS_TIPO,PF1OUTVDUP,'
                    +'PF1PRAZO,PF1QTDP,PF1INT,PF1LOCAL,PF1DATCONF, '
                    +'PF1SUBMOD,PF1TOTOUT_ALIQ,PF1TOTOUT_IMP, PF1LOTE_ENTRADA, '
                    +'PF1REGENT,PF1SITPROD,PF1ALIQ_FRETE,PF1ICMS_FRETE,PF1DATHOR_REP, '
                    +'PF1INCFRE,PF1_DATAPROT,PF1_NFE_CHAVE,PF1DATHOR_UEVE,'
                    +'PF1CODUSR_UEVE,PF1DATHOR_DIG,PF1OBS_PED,PF1CODFP,'
                    +'PF1COMP_UEVE,PF1PERCFRETE,PF1IMP_IMP_ALIQ,PF1IMP_IMP_VALOR,'
                    +'PF1INCOUTROS,PF1TOTSEG_ICMS_ALIQ,PF1TOTSEG_ICMS_VALOR,'
                    +'PF1OUTDESP_ICMS_ALIQ,PF1OUTDESP_ICMS_VALOR,FRAZAO '
                    +' from '+mtab_cadpf1+' '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +'  (PF1CODEMP=:CODEMP ) '
                 +' and PF1CHAVE=:CHAVE '
                 +' and PF1LOTSEQ=:LOTSEQ ');
query_pfor01.ParamByName('CODEMP').AsInteger:=mCompras_GP.mPed1_CodEmp;
Query_pfor01.ParamByName('CHAVE').AsInteger:=mCompras_GP.mped1_Chave;
Query_pfor01.ParamByName('LOTSEQ').AsInteger:=mCompras_GP.mPed1_Chave_ano;
try
   Query_pfor01.Open;
except
   if not fVerificaRedeAtiva(true) then
      begin
      end
   else
      begin
      ex_erroSql_Novo(Query_pfor01,4292,'_lerarq','CADPF1');
      end;
   end;



if query_pfor01.IsEmpty then
   begin
   Fmensagem('Este Pedido foi excluido por outro usuario!',0,['0'],0);
   FreeAndNil(query_pfor01);
   exit;
   end;
if Query_pfor01.FieldByName('PF1SITPED').AsInteger=1 then
   begin
   Fmensagem('Este Pedido Esta em Manutenção em outra estação!',0,['0'],0);
   FreeAndNil(query_pfor01);
   exit;
   end;

if Query_pfor01.FieldByName('PF1QTDMAN').AsInteger>mCompras_GP.mPed1_QtdMan then
   begin
   if not fLerPedidoGeral(codemp,valint(edt_chave.Text),0) then
      begin
      Fmensagem('Este Pedido foi excluido por outro usuario!',0,['0'],0);
      FreeAndNil(query_pfor01);
      exit;
      end;
   end;


if Query_pfor01.FieldByName('PF1STATUS').Value>0 then
   begin
   flcaddap(4,codemp,0,Query_Pfor01.fieldbyName('PF1CHAVE').AsString,Query_Pfor01.fieldbyName('PF1LOTSEQ').AsString,'','',pvazio,'');

   if flcadfor(1,1,edt_codfor.Text) then
      fTestarParCaixaforDap(1,0,'CADDAP0');
   While not DM1.Tb_CP.Eof do
      begin
      if DM1.Tb_CPCANUMERO.AsFloat<>Query_Pfor01.fieldbyName('PF1NUMDUP').AsFloat then
         begin
         DM1.Tb_CP.Next;
         continue;
         end;
      if DM1.Tb_CPCASTATUS.AsInteger>0 then
          begin
          Fmensagem('O titulo número: '+DM1.Tb_CPCANUMERO.AsString+'-'+DM1.Tb_CPCADESD.AsString+' Valor: '+Formatfloat(mcasas, DM1.Tb_CPCAVALOR.Value)+'/'+DM1.Tb_CPCACODEMP.AsString+#13
                +'Encontra-se baixado/Pago, primeiro excluir os pagamentos'+#13
                +'para depois excluir o pedido!',0,['0'],0);
          exit;
          end;
      DM1.Tb_CP.Next;
      end;
   if (mOperacao_Normal) and (mCompras_GP.mPed1_tipo<>2) then
      begin
      if DM4.Tb_Par01PFATMZ.AsInteger<>1 then
         begin
         if StrToInt('0'+copy(mpseg,4,2))<1  then  // se nao controle do CADLGC
            begin
            query_estoque:=tQuery.create(nil);
            query_estoque.DatabaseName:='SG_ASSOC';
            query_estoque.close;
            query_estoque.sql.Clear;
            query_estoque.sql.Add('SELECT PF2CHAVE,PDNOME,PDUND,PDCODPRO,PF2QTDP AS PF2L_QTD,CESALDO AS ESTOQUE '
                                 +' ,NVL(CESALDO,0) AS CLQTD FROM '+mtab_cadpf2+',CADEST,CADPRO '
                                 +' where CECODPRO(+)=PF2CODPRO '
                                 +' AND PDCODPRO(+)=PF2CODPRO '
                                 +' AND NVL(CESALDO,0)<PF2QTDP '
                                 +' AND PF2CHAVE=:CHAVE '
                                 +' AND PF2LOTSEQ=:LOTSEQ ');
            query_estoque.ParamByName('CHAVE').AsInteger:=mCompras_GP.mped1_Chave;
            query_estoque.ParamByName('LOTSEQ').AsInteger:=mCompras_GP.mPed1_Chave_ano;
            query_estoque.open;
            end
         else
            begin
            query_estoque:=tQuery.create(nil);
            query_estoque.DatabaseName:='SG_ASSOC';
            query_estoque.close;
            query_estoque.sql.Clear;
            query_estoque.sql.Add('SELECT PF2L_CHAVE,PDNOME,PDUND,PDCODPRO,PF2L_QTD,PF2L_LOTE,PF2L_DTVCTO,PF2L_DTFAB,PF2L_QTD,CLQTD AS ESTOQUE '
                                 +',NVL(CLQTD,0) AS CLQTD FROM '+mtab_cadpf2_lotes+',CADLGC,CADPRO '
                                 +' where CLCODPRO(+)=PF2L_CODPRO '
                                 +' AND CLNUMERO(+)=PF2L_LOTE '
                                 +' AND PDCODPRO(+)=PF2L_CODPRO '
                                 +' AND PF2L_CHAVE=:CHAVE '
                                 +' AND PF2L_LOTSEQ=:LOTSEQ '
                                 +' and NVL(CLQTD,0)<PF2L_QTD ');
            query_estoque.ParamByName('CHAVE').AsInteger:=mCompras_GP.mped1_Chave;
            query_estoque.ParamByName('LOTSEQ').AsInteger:=mCompras_GP.mPed1_Chave_ano;
            query_estoque.open;

         end;


         While not query_estoque.eof do
            begin
            if Frm_Info=nil then
               begin
               Application.CreateForm(TFrm_Info, Frm_Info);
               Frm_Info.bbReeNFE.Visible:=false;
               Frm_Info.RichEdit1.Lines.Clear;
               end;
            Frm_Info.RichEdit1.Lines.Add('O Produto: '+Insere2(query_estoque.fieldbyName('PDCODPRO').AsString,' ',14)+' '
                                        +query_estoque.fieldbyName('PDNOME').AsString
                                   +' ja foi vendido. Este Pedido: '+Formatfloat(mcasqtd, query_estoque.fieldbyName('PF2L_QTD').AsFloat)
                                   +' Estoque Atual: '+Formatfloat(mcasqtd, query_estoque.fieldbyName('ESTOQUE').AsFloat));
            mSemSaldo:=true;
            Frm_Info.RichEdit1.Lines.Add(' ');
            query_estoque.Next;
            end;
       if mSemSaldo then
          begin
          Frm_Info.RichEdit1.Lines.Add(' ');
          Frm_Info.RichEdit1.Lines.Add(' Favor Excluir os Pedidos de Vendas ou Ajustar o Estoque!!!!!!! ');
          Frm_Info.ShowModal;
          Frm_Info.Free;
          Frm_Info:=nil;
          exit;
          end;
        end;
      end;
   end;
flcadpar02(1,0,codusr,'12');
if DM4.Tb_Par02PA2PDSN.Value='S' then
   begin
   mValidarSenha.pTipo:=0;
   mValidarSenha.pCodusr:=codusr;
   mValidarSenha.pCodSen:=12;
   mValidarSenha.pCodEmp:=0;
   mValidarSenha.pCodCli:=0;
   mValidarSenha.pLotSeq:=0;
   mValidarSenha.pChave :=0;
   mValidarSenha.pOrdem :=0;
   mValidarSenha.pTexto :='Senha para excluir o pedido de Compra';
   mValidarSenha.pChave_St:='';
   mValidarSenha.pDesc_requisitado :=0;

   if fValidaSenha(mValidarSenha)<>0 then
      exit;
   end
else
   begin
   if fMensagem('Quer realmente excluir o Pedido?',0,['1','2'],2)<>mrYes then
      exit;
   end;

fGerarOld(9);


if (query_pfor01.FieldByName('PF1STATUS').AsInteger>0) and (mOperacao_Normal) and (mCompras_GP.mped1_tipo<>2) then
   begin
   if query_pfor01.FieldByName('PF1TIPO').AsInteger=10 then
      fexcluir(0,query_pfor01.fieldbyName('PF1STATUS').AsInteger )
   else
      fexcluir(1,query_pfor01.fieldbyName('PF1STATUS').AsInteger);
   end
else
   fexcluir(0,query_pfor01.fieldbyName('PF1STATUS').AsInteger);
fAtualizarCadEmailXml(edt_nfe_chave.Text,false,mCompras_GP.mped1_id_new);

fAdicionarQtdMan(0);
sbnCancelarClick(self);
fmensagem('Pedido Excluido',0,['0'],0);


end;

procedure TFrm_Compras_Orc.CB_TIPOExit(Sender: TObject);
var
Query_Teste: TQuery;
  form_ocorrencias: TFrm_Ocorrencias;

begin
if (mtipo_ant<>cb_tipo.itemindex) and (mTipo_ant=2) then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(1,'CADPRO' ,'PDCODEMP','PF2CODEMP' ,'PDCODPRO' ,'PF2CODPRO');

   Query_Teste:=TQuery.Create(nil);
   Query_Teste.DatabaseName:='SG_ASSOC';
   query_teste.SQL.add('SELECT PF2ITEM,PDNOME,PDCODPRO,PDSTATUS '
                      +' FROM '+mtab_cadpf2+' '+iif(la_tabelas='','',',')+la_tabelas
                           +'       '+la_Join
                           +'  where '+la_instrucao+iif(la_instrucao='','',' and ')
                           +'   PF2CODEMP=0'+IntToStr(codemp)
                           +' and   PF2LOTSEQ=0'+IntToStr(mCompras_GP.mPed1_Chave_ano)
                           +' and   PF2CHAVE=0'+FloatToStr(mCompras_GP.mped1_Chave)
                           +' and PDSTATUS=9');
   try
      Query_Teste.open;
   except
      if not Query_Teste.IsEmpty then
         begin
         Application.CreateForm(TFrm_Ocorrencias, form_ocorrencias);
         form_ocorrencias.ListView1.Clear;
         Form_Ocorrencias.mErros:=true;
         Form_Ocorrencias.mPosicaoItem:=0;
         While not Query_Teste.Eof do
            begin
            Form_Ocorrencias.adicionaItemListView('Item '+Query_Teste.fieldbyName('PF2ITEM').AsString+' Produto '+Query_Teste.fieldbyname('PDCODPRO').AsString
                                           +'-'+Query_Teste.fieldbyName('PDNOME').asstring+' Esta inativo!');
            Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=3;
            Query_Teste.Next;
            end;
         end;
      form_ocorrencias.ShowModal;
      FreeAndNil(form_ocorrencias);
      CB_TIPO.ItemIndex:=mtipo_ant;
      exit;
      end;
   end;
cb_gravardp.Checked:=true;

if (CB_TIPO.ItemIndex<>1) then
   begin
   cb_gravardp.Checked:=true;
   cb_gravardpEnter(Self);
   end
else if CB_TIPO.ItemIndex=1 then
   begin
   CB_gravardp.Checked:=false;
   cb_gravardpEnter(Self);
   end;

mCompras_GP.mped1_tipo:=cb_tipo.ItemIndex;

end;

function TFrm_Compras_Orc.fexcluir(ptipo,pStatus: Integer):Boolean;
{
Parametros ptipo= 0-Nao Atualiza estoque
                  1-Atualiza estoque
}
var
mdtv: String;
Query_Exe: tQuery;
	pBaixar: pBaixarLotes;
begin
if ptipo=1 then
   begin
   tb_pfor02_orc.First;
   While not tb_pfor02_orc.Eof do
      begin
      if StrToInt('0'+copy(mpseg,4,2))<1  then  // mnao controle do CADLGC
         begin


	pBaixar.pCodemp := tb_pfor02_orcPF2CODEMP.Asinteger;
	pBaixar.pFilial := mCompras_GP.mped1_Filial;
	pBaixar.pItem   := tb_pfor02_orcPF2ITEM.Asinteger;
	pBaixar.pDocOri := 01;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad; //ptipoprod;
	pBaixar.pChave   := tb_pfor02_orcPF2CHAVE.AsInteger;
	pBaixar.pChave_ano := tb_pfor02_orcPF2LOTSEQ.asinteger;
	pBaixar.pQtd       := tb_pfor02_orcPF2QTDP.AsfLOAT;
	pBaixar.pCodPro    := tb_pfor02_orcPF2CODPRO_INT.asstring;
	pBaixar.pEstNor       := 'S';
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := '';
	pBaixar.pDtVcto       := 0;
	pBaixar.pDtFab       := 0;
	pBaixar.pLoteRe       := '';

	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := tb_pfor02_orcPF2ID_NEW.AsInteger;

	fBaixarMercadorias(pBaixar);

{
         fBaixarMercadorias(tb_pfor02_orcPF2CODEMP.Asinteger
                  ,mCompras_GP.mped1_Filial
                  ,tb_pfor02_orcPF2ITEM.Asinteger
                  ,01 // docori
                  ,codusr
                  ,0 //pcontesp
                  ,Log_TipoProdPad //ptipoprod
                  ,tb_pfor02_orcPF2CHAVE.AsfLOAT
                  ,tb_pfor02_orcPF2LOTSEQ.AsfLOAT
                  ,tb_pfor02_orcPF2QTDP.AsfLOAT
                  ,tb_pfor02_orcPF2CODPRO_INT.AsString
                  ,'S'
                  ,'N'
                  ,''  // lote
                  ,0  // data de vencimento
                  ,''
                  ,''
                  );
}
         end
      else
         begin
         Tb_PF2_Lotes.First;
         While not Tb_PF2_Lotes.Eof do
            begin


	pBaixar.pCodemp := tb_pfor02_orcPF2CODEMP.Asinteger;
	pBaixar.pFilial := mCompras_GP.mped1_Filial;
	pBaixar.pItem   := tb_pfor02_orcPF2ITEM.Asinteger;
	pBaixar.pDocOri := 01;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad; //ptipoprod;
	pBaixar.pChave   := tb_pfor02_orcPF2CHAVE.Asinteger;
	pBaixar.pChave_ano := tb_pfor02_orcPF2LOTSEQ.asinteger;
	pBaixar.pQtd       := Tb_PF2_LotesPF2L_QTD.AsfLOAT;
	pBaixar.pCodPro    := tb_pfor02_orcPF2CODPRO_INT.asstring;
	pBaixar.pEstNor       := 'S';
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := trim(Tb_PF2_LotesPF2L_LOTE.AsString);

	pBaixar.pDtVcto       := Tb_PF2_LotesPF2L_DTVCTO.AsDateTime;
	pBaixar.pDtFab        := Tb_PF2_LotesPF2L_DTFAB.AsDateTime;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := tb_pfor02_orcPF2ID_NEW.AsInteger;
	fBaixarMercadorias(pBaixar);
{
            fBaixarMercadorias(tb_pfor02_orcPF2CODEMP.Asinteger
                  ,mCompras_GP.mped1_Filial
                  ,tb_pfor02_orcPF2ITEM.Asinteger
                  ,01 // docori
                  ,codusr
                  ,0 //pcontesp
                  ,Log_TipoProdPad //ptipoprod
                  ,tb_pfor02_orcPF2CHAVE.AsfLOAT
                  ,tb_pfor02_orcPF2LOTSEQ.AsfLOAT
                  ,Tb_PF2_LotesPF2L_QTD.AsfLOAT
                  ,tb_pfor02_orcPF2CODPRO_INT.AsString
                  ,'S'
                  ,'N'
                  ,trim(Tb_PF2_LotesPF2L_LOTE.AsString)
                  ,Tb_PF2_LotesPF2L_DTVCTO.AsDateTime
                  ,''
                  ,''
                  );
 }
             Tb_PF2_Lotes.Next;
             end;
          end;
      tb_pfor02_orc.Next;
      end;
   end
else
   begin
   if (pstatus<2) and (mCompras_GP.mped1_tipo<2) and (mOperacao_Normal) then
      begin
      tb_pfor02_orc.First;
      While not tb_pfor02_orc.Eof do
        begin
        if mCompras_GP.mped1_tipo<2 then
            flbaientpen(1,0,tb_pfor02_orcPF2CODPRO_INT.AsString,tb_pfor02_orcPF2QTDP.Value);
        tb_pfor02_orc.Next;
        end;
      end;
   end;
Query_Exe:=tQuery.Create(nil);
Query_Exe.DatabaseName:='SG_ASSOC';


Query_Exe.Close;
Query_Exe.Sql.clear;
Query_Exe.Sql.Add('Delete from CADNE where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADNE',[]),' ',' NECODEMP=0'+IntTostr(codemp)+' and ')
                  +' NELOTSEQ_CP=0'+FloattoStr(mCompras_GP.mPed1_Chave_ano)
                  +' and NECHAVEP=0'+FloatToStr(mCompras_GP.mped1_Chave));
Try
   Query_Exe.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,4027,'Frm_PFor01','CADNE');
   end;
flcaddap(4,codemp,0,FloatToStr(mCompras_GP.mped1_Chave),FloatTostr(mCompras_GP.mPed1_Chave_ano),'','',pvazio,'');
DM1.Tb_CP.First;
While not DM1.Tb_cp.Eof do
   begin
    if DM1.Tb_CPCANUMERO.AsFloat<>mCompras_GP.mped1_numdup then
       begin
       DM1.Tb_CP.Next;
       continue;
       end;



   Query_Exe.Close;
   Query_Exe.SQl.Clear;
   Query_Exe.SQL.Add('Delete from CADLDR where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADLDR',[]),' ',' CODEMP=0'+IntTostr(codemp)+' and ')
                     +' LOTSEQ=0'+DM1.Tb_CPCALOTSEQ_FC.AsString
                     +' and CODLDR=0'+DM1.Tb_CPCACODLDR.AsString);
   Try
      Query_Exe.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,1770,'Frm_PFor01','CADLDR');
      end;
   DM1.Tb_CP.Next;
   end;
Query_Exe.Close;
Query_Exe.SQL.Clear;
Query_Exe.SQL.Add('Delete from CADDAP where '
                  +iif(DM1.Qr_tid.Locate('TINOME','CADDAP',[]),' ',' CACODEMP=0'+IntTostr(codemp)+' and ')
                  +' CALOTSEQ_CP=0'+FloatToStr(mCompras_GP.mPed1_Chave_ano)
                  +' and CACHAVEP=0'+FloatToStr(mCompras_GP.mped1_chave));
Try
   Query_Exe.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,4027,'Frm_PFor01','CADDAP');
   end;


Query_Exe.Close;
Query_Exe.Sql.Clear;
Query_Exe.Sql.add('Delete From '+mtab_cadpf2+' where PF2CODEMP=0'+IntTostr(codemp)
                  +' and PF2LOTSEQ=0'+FloatToStr(mCompras_GP.mPed1_Chave_ano)
                  +' and PF2CHAVE=0'+FloatToStr(mCompras_GP.mped1_chave));
Try
   Query_Exe.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1795,'Frm_PFor01','CADPF2');
   end;

Query_Exe.Close;
Query_Exe.Sql.Clear;
Query_Exe.Sql.add('Delete From '+mtab_cadpf1v+' where PF1VCODEMP=0'+IntTostr(codemp)
                  +' and PF1VLOTSEQ=0'+FloatToStr(mCompras_GP.mPed1_Chave_ano)
                  +' and PF1VCHAVE=0'+FloatToStr(mCompras_GP.mped1_chave));
Try
   Query_Exe.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,4027,'Frm_PFor01','CADPF1V');
   end;

Query_Exe.Close;
Query_Exe.Sql.Clear;
Query_Exe.Sql.add('Delete From '+mtab_cadpf1+' where PF1CODEMP=0'+IntTostr(codemp)
                  +' and PF1LOTSEQ=0'+FloatToStr(mCompras_GP.mPed1_Chave_ano)
                  +' and PF1CHAVE=0'+FloatToStr(mCompras_GP.mped1_chave));
Try
   Query_Exe.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1819,'Frm_PFor01','CADPF1');
   end;

FreeAndNil(Query_Exe);
end;



function TFrm_Compras_Orc.fGerarOld(pTipo: Integer): Boolean;
var
mChave_Old: Integer;
mCondicao_old: String;

begin
mCondicao_old:=' where PF1CODEMP='+IntTostr(mCompras_GP.mPed1_Codemp)
                  +' and PF1CHAVE='+intTostr(mCompras_GP.mped1_Chave)
                  +' and PF1LOTSEQ='+IntTostr(mCompras_GP.mPed1_Chave_ano);

mChave_Old:=fGerarTabelas_Old(pTipo //status
                  ,0 //codigo novo valor chave
                  ,'PF1CODNOV' //nome do campo do novo valor (chave)
                  ,'PF1DATHOR' // nome do campo data e hora do evento
                  ,'PF1CODUSR_EVE' // nome do campo do usuario
                  ,'PF1TIPEVE' // nome do campo de status
                  ,'CADPF1' // nome da tabela
                  ,mCondicao_old);

mCondicao_old:=' where PF2CODEMP='+IntTostr(mCompras_GP.mPed1_Codemp)
                  +' and PF2CHAVE='+intTostr(mCompras_GP.mped1_Chave)
                  +' and PF2LOTSEQ='+IntTostr(mCompras_GP.mPed1_Chave_ano);

mChave_Old:=fGerarTabelas_Old(pTipo //status
                  ,mchave_old //codigo novo valor chave
                  ,'PF2CODNOV' //nome do campo do novo valor (chave)
                  ,'' // nome do campo data e hora do evento
                  ,'' // nome do campo do usuario
                  ,'' // nome do campo de status
                  ,'CADPF2' // nome da tabela
                  ,mCondicao_old);
// LOTES


mCondicao_old:=' where PF2L_CODEMP='+IntTostr(mCompras_GP.mPed1_Codemp)
                  +' and PF2L_CHAVE='+intTostr(mCompras_GP.mped1_Chave)
                  +' and PF2L_LOTSEQ='+IntTostr(mCompras_GP.mPed1_Chave_ano);

mChave_Old:=fGerarTabelas_Old(pTipo //status
                  ,mchave_old //codigo novo valor chave
                  ,'PF2L_CODNOV' //nome do campo do novo valor (chave)
                  ,'' // nome do campo data e hora do evento
                  ,'' // nome do campo do usuario
                  ,'' // nome do campo de status
                  ,'CADPF2_LOTES_ORC' // nome da tabela
                  ,mCondicao_old);

// LOTES TERMINO


mCondicao_old:=' where PF1VCODEMP='+IntTostr(mCompras_GP.mPed1_Codemp)
                  +' and PF1VCHAVE='+intTostr(mCompras_GP.mped1_Chave)
                  +' and PF1VLOTSEQ='+IntTostr(mCompras_GP.mPed1_Chave_ano);



mChave_Old:=fGerarTabelas_Old(pTipo //status
                  ,mchave_old //codigo novo valor chave
                  ,'PF1VCODNOV' //nome do campo do novo valor (chave)
                  ,'' // nome do campo data e hora do evento
                  ,'' // nome do campo do usuario
                  ,'' // nome do campo de status
                  ,'CADPF1V' // nome da tabela
                  ,mCondicao_old);


result:=true;
end;


function tFrm_Compras_orc.fValidarSenhaEntrada(pCodSenha: integer; pTexto: String; out pTemValidacao: boolean): boolean;
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=pCodSenha;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;

mValidarSenha.pCodEmp:=codemp;
mValidarSenha.pLotSeq:=ls_numped;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;

mValidarSenha.pTexto :=pTexto +' Chave do Pedido '+FloatTostr(mCompras_GP.mped1_Chave);
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
    begin
    result:=false;
    end
 else
    result:=true;
pTemvalidacao:=mValidarSenha.pTemValidacao;
end;


procedure TFrm_Compras_Orc.bbConfEntradaClick(Sender: TObject);
var
  adoQuery_temp: TADOQuery;
  query_exe: TQuery;
  query_cons: TQuery;
  query_cons04: TQuery;
  venc_max: Integer;
  query_pfor01: tQuery;
  form_ocorrencias: TFrm_Ocorrencias;
  Query_RE: TQuery;
  mtotDup: Real;
  mOper_Ne: Integer;
  mQtdD,mQtdDup: Integer;
  mcfog: integer;
  mant_codfor: Real;
  mant_numero: Real;
  mant_serie: string;
  mant_subserie: string;
  mant_modelo: string;
  mant_cfop: Real;
  mant_dtent: TdateTime;
  mant_dtemis: TdateTime;
  mLote_Re: String;
  mSigla_Re: String;
  mDataDup      :TDateTime;
  mExisteDupPag : Boolean;
  mpu:Real;
  mBlq_Analise: Boolean;
  mPreco_Calc: Real;
  mpreco_custo: real;
  mpreco_fabrica: Real;

	pBaixar: pBaixarLotes;

  pValidouSenha: boolean;





begin


query_pfor01:=tQuery.Create(nil);
query_pfor01.DatabaseName:='SG_ASSOC';

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
fInnerJoin(1,'CADFOR','FCODEMP','PF1CODEMP','FCODFOR','FCODFOR');

query_pfor01.Close;
query_pfor01.SQL.Clear;
query_pfor01.SQL.add('Select PF1CODEMP,PF1CHAVE,PF1CODFOR,PF1DATA,PF1OBS  '
                    +',PF1CASASD,PF1DESC01,PF1DESC02,PF1DESC03,PF1TOTDES  '
                    +',PF1TOTBRU,PF1TOTLIQ,PF1STATUS,PF1CODUSR,PF1HORDIG  '
                    +',PF1USRMOD,PF1DTMOD,PF1HRMOD,PF1TOTMER,PF1TOTPOS  '
                    +',PF1TOTNEG,PF1TOTINA,PF1TOTFRE,PF1TOTSEG,PF1BASEN '
                    +',PF1BASER,PF1ICMSN,PF1ICMSR,PF1CODLDR, PF1BASENR '
                    +',PF1ICMSNR,PF1ISENTAS,PF1TOTOUT,PF1TOTIPI,PF1DATANF '
                    +',PF1NUMNF,PF1SERIE,PF1SUBSER,PF1TABPV,PF1CODPV,PF1CODBCO '
                    +',PF1CODTRA,PF1MODELO,PF1NUMDUP,PF1DESD,PF1GRAVNF,PF1GRAVDP, '
                    +'PF1DATAENT,PF1LOTSEQ, PF1CONDPAG,PF1PIPIFRETE,PF1IPIFRETE, '
                    +'PF1DTPFAT,PF1DTPENT,PF1PERCFRE,PF1FRETEPC,PF1TEMBOL, '
                    +'PF1LEMAT,PF1CODEMP_ORI,PF1NUMPED_ORI,PF1PAG_ORI,PF1ORIGEM,'
                    +'PF1OUTNINC,PF1OUTDESP,PF1NFCF, PF1SITPED,PF1QTDMAN,'
                    +'PF1TOTDESOUT,PF1TOTBRUOUT,PF1TOTLIQOUT,PF1TOTPBT,'
                    +'PF1TOTFREOUT,PF1FORMACE,PF1OUTROS,PF1NUMDUPOUT,PF1TIPO, '
                    +'PF1SIV_FRETE,PF1SIV_DARE,PF1SIV_OUTROS,PF1SIV_OUTROS_TIPO,PF1OUTVDUP,'
                    +'PF1PRAZO,PF1QTDP,PF1INT,PF1LOCAL,PF1DATCONF, '
                    +'PF1SUBMOD,PF1TOTOUT_ALIQ,PF1TOTOUT_IMP, PF1LOTE_ENTRADA, '
                    +'PF1REGENT,PF1SITPROD,PF1ALIQ_FRETE,PF1ICMS_FRETE,PF1DATHOR_REP, '
                    +'PF1INCFRE,PF1_DATAPROT,PF1_NFE_CHAVE,PF1DATHOR_UEVE,'
                    +'PF1CODUSR_UEVE,PF1DATHOR_DIG,PF1OBS_PED,PF1CODFP,'
                    +'PF1COMP_UEVE,PF1PERCFRETE,PF1IMP_IMP_ALIQ,PF1IMP_IMP_VALOR,'
                    +'PF1INCOUTROS,PF1TOTSEG_ICMS_ALIQ,PF1TOTSEG_ICMS_VALOR,'
                    +'PF1OUTDESP_ICMS_ALIQ,PF1OUTDESP_ICMS_VALOR,FRAZAO,PF1NFE_XML_FORNECEDOR,PF1ID_NEW '
                    +' from '+mtab_cadpf1+' '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +'  (PF1CODEMP=:CODEMP ) '
                 +' and PF1CHAVE=:CHAVE '
                 +' and PF1LOTSEQ=:LOTSEQ ');
query_pfor01.ParamByName('CODEMP').AsInteger:=mCompras_GP.mPed1_CodEmp;
Query_pfor01.ParamByName('CHAVE').AsInteger:=mCompras_GP.mped1_Chave;
Query_pfor01.ParamByName('LOTSEQ').AsInteger:=mCompras_GP.mPed1_Chave_ano;
try
   Query_pfor01.Open;
except
   if not fVerificaRedeAtiva(true) then
      begin
      end
   else
      begin
      ex_erroSql_Novo(Query_pfor01,4292,'_lerarq','CADPF1');
      end;
   end;


if not fValida_PedidoCompra(mCompras_GP.mped1_Chave,mCompras_GP.mped1_Chave_ano,mCompras_GP.mped1_codemp) then

   begin
   query_pfor01.close;
   FreeAndNil(query_pfor01);
   exit;
   end;
if ((not flcadne(6,FloatTostr(mCompras_GP.mPed1_Codfor),FloatTostr(mCompras_GP.mPed1_NumNF),mCompras_GP.mPed1_Serie,'',mCompras_GP.mPed1_Modelo,FormatDateTime(fdt, mCompras_GP.mPed1_DataNF),''))
   and (query_pfor01.fieldbyName('PF1STATUS').Value>0)) then
    begin
  if mcfog=0 then
    mcfog:=tb_pfor02_orcPF2CFO.AsInteger;

   if flcadne(5,query_pfor01.fieldByName('PF1LOTSEQ').AsString,query_pfor01.fieldByName('PF1CHAVE').AsString,'','','','','') then
      begin;
      dm1.tb_ne.edit;
      moper_ne:=9;
      mant_codfor  :=DM1.Tb_NENECODFOR.AsFloat;
      mant_numero  :=DM1.Tb_NENENUMERO.AsFloat;
      mant_serie   :=DM1.Tb_NENESERIE.AsString;
      mant_subserie:=DM1.Tb_NENESUBSER.AsString;
      mant_modelo  :=DM1.Tb_NENEMODELO.AsString;
      mant_cfop    :=DM1.Tb_NENECFO.AsFloat;
      mant_dtent   :=DM1.Tb_NENEDTENT.AsDateTime;
      mant_dtemis  :=DM1.Tb_NENEDTEMIS.AsDateTime;
      end
   else
      begin
      moper_ne:=0;
      DM1.Tb_NE.Append;
      end;
   dm1.Tb_NENEID_PF01_NEW.Value := mCompras_GP.mped1_id_new;

   DM1.Tb_NENECODEMP.Value   :=codemp;
   DM1.Tb_NENECODFOR.Value   :=mCompras_GP.mPed1_Codfor;
   DM1.Tb_NENEALIQ.Value     :=0;
   DM1.Tb_NENETIPO.Value     :=55;
   DM1.Tb_NENENUMERO.Value   :=mCompras_GP.mPed1_NumNF;
   DM1.Tb_NENESERIE.Value    :=trim(mCompras_GP.mPed1_Serie);
   DM1.Tb_NENECFO.Value      :=mcfog;
   DM1.Tb_NENECFOP_COMP.Value:=' ';
   if trim(mCompras_GP.mPed1_Modelo)='' then
      DM1.Tb_NENEMODELO.Value   :='55'
   else
      DM1.Tb_NENEMODELO.Value   :=mCompras_GP.mPed1_Modelo;
   DM1.Tb_NENEDTEMIS.Value   :=mCompras_GP.mPed1_DataNF;
   DM1.Tb_NENEDTENT.Value    :=mCompras_GP.mPed1_DataEnt;
   DM1.Tb_NENESUBSER.Value   :='';
   DM1.Tb_NENEBASEN.Value    :=mCompras_GP.mPed1_Icms_Base;
   DM1.Tb_NENEICMSN.Value    :=mCompras_GP.mPed1_Icms_Valor;
   DM1.Tb_NENEBASER.Value    :=mCompras_GP.mPed1_ST_base;
   DM1.Tb_NENEICMSR.Value    :=mCompras_GP.mPed1_ST_Icms;
   DM1.Tb_NENEIPIFRETE.Value :=mCompras_GP.mPed1_ValFre_PIPI;
   DM1.Tb_NENEPIPIFRETE.Value:=mCompras_GP.mPed1_ValFre_ipi;
   DM1.Tb_NENEFRETE.Value      :=mCompras_GP.mPed1_ValFre;
   DM1.Tb_NENEALIQ_FRETE.Value :=mCompras_GP.mPed1_ValFre_Icms_Aliq;
   DM1.Tb_NENEICMS_FRETE.Value :=mCompras_GP.mPed1_ValFre_Icms_Valor;

   DM1.Tb_NENEFRETEPC.Value   :=mCompras_GP.mPed1_Frete_CIFFOB;
   DM1.Tb_NENESEG.Value       :=mCompras_GP.mPed1_ValSeg;
   DM1.Tb_NENEOUTRAS.Value    :=mCompras_GP.mPed1_OutDesp;
   DM1.Tb_NENEOUTRAS_ALIQ.Value :=mCompras_GP.mPed1_OutDesp_icms_aliq;
   DM1.Tb_NENEOUTRAS_IMP.Value  :=mCompras_GP.mPed1_OutDesp_icms_valor;

   DM1.Tb_NENEOUTDESP.Value   :=0;
   DM1.Tb_NENEOUTNINC.Value   :=0;
   DM1.Tb_NENEIPI.Value       :=mCompras_GP.mPed1_TotIPI;

   DM1.Tb_NENETOTMER.Value    :=mCompras_GP.mPed1_TotMer;

   DM1.Tb_NENETOTNOT.Value    :=mCompras_GP.mPed1_Totall;
   DM1.Tb_NENETOTDES.Value    :=mCompras_GP.mPed1_pDesc01_Valor+mCompras_GP.mPed1_DescPed02_Perc+mCompras_GP.mPed1_Desc_Rateado;
   DM1.Tb_NENETOTPOS.Value    :=0;
   DM1.Tb_NENETOTNEG.Value    :=0;
   DM1.Tb_NENEISENTAS.Value   :=0;
   DM1.Tb_NENETOTINA.Value    :=mCompras_GP.mPed1_Totall;;
   DM1.Tb_NENELOTSEQ_CP.Value :=mCompras_GP.mPed1_Chave_ano;
   DM1.Tb_NENECHAVEP.Value    :=mCompras_GP.mped1_Chave;
   DM1.Tb_NENESIV_FRETE.Value :=0;
   DM1.Tb_NENESIV_DARE.Value  :=0;
   DM1.Tb_NENESIV_OUTROS.Value:=0;
   DM1.Tb_NENENFE_CHAVE.Text  :=mCompras_GP.mPed1_Nfe_Chave;
   DM1.Tb_NENEAVAP.Value:=0;
   DM1.Tb_NENEALIQ.Value     :=0 ;
   if moper_ne=0 then
      begin
      FAtualizaBanco(0,'CADNE','NECODEMP',DM1.Tb_NENECODEMP.AsString
                 ,['NECODEMP','NECODFOR','NENUMERO','NESERIE','NESUBSER','NEMODELO',
                              'NECFO','NEDTENT','NEDTEMIS'],[DM1.Tb_NENECODEMP.AsString,
                               DM1.Tb_NENECODFOR.AsString
                              ,DM1.Tb_NENENUMERO.AsString
                              ,DM1.Tb_NENESERIE.AsString
                              ,DM1.Tb_NENESUBSER.AsString
                              ,DM1.Tb_NENEMODELO.AsString
                              ,DM1.Tb_NENECFO.AsString
                              ,FormatDateTime(fdt,  DM1.Tb_NENEDTENT.Value)
                              ,FormatDateTime(fdt,  DM1.Tb_NENEDTEMIS.Value)]
                  ,DM1.Tb_NE);
      end
   else
      begin
      FAtualizaBanco(1,'CADNE','NECODEMP',DM1.Tb_NENECODEMP.AsString
                 ,['NECODEMP','NECODFOR','NENUMERO','NESERIE','NESUBSER','NEMODELO',
                              'NECFO','NEDTENT','NEDTEMIS'],[DM1.Tb_NENECODEMP.AsString,
                               FloatTostr(mant_codfor)
                              ,FloatTostr(mant_numero)
                              ,mant_serie
                              ,mant_subserie
                              ,mant_modelo
                              ,FloatTostr(mant_cfop)
                              ,FormatDateTime(fdt,  mant_dtent)
                              ,FormatDateTime(fdt,  mant_dtemis)]
                  ,DM1.Tb_NE);
      end;
   DM1.Tb_NE.Post;
   if not query_pfor01.FieldByName('PF1NFE_XML_FORNECEDOR').IsNull then
     begin
     (query_pfor01.FieldByName('PF1NFE_XML_FORNECEDOR') as TMemoField).SaveToFile('C:\SGE\CPR-'+query_pfor01.fieldByName('PF1CHAVE').AsString+'.xml');

     adoQuery_temp:=TADOQuery.Create(nil);
     adoQuery_temp.Connection:=DM1_ADO.ADOConnection1;
     adoQuery_temp.Close;
     adoQuery_temp.SQL.Clear;
     adoQuery_temp.SQL.Add('Update CADNE set '
                          +' NENFE_XML_FORNECEDOR=:NFE_XML_FORNECEDOR '
                          +' where NECHAVEP=:CHAVE '
                          +' and NELOTSEQ_CP=:CHAVE_ANO '
                          +' and NECODEMP=:CODEMP ');
     adoQuery_temp.Parameters.ParamByName('NFE_XML_FORNECEDOR').LoadFromFile('C:\SGE\CPR-'+query_pfor01.fieldByName('PF1CHAVE').AsString+'.xml',ftMemo);
     adoQuery_temp.Parameters.ParamByName('CHAVE').Value    :=mCompras_GP.mped1_Chave;
     adoQuery_temp.Parameters.ParamByName('CHAVE_ANO').Value:=mCompras_GP.mPed1_Chave_ano;
     adoQuery_temp.Parameters.ParamByName('CODEMP').Value   :=codemp;
     try
       adoQuery_temp.ExecSQL;
       fdm1StartCommit;
     except
//        adoQuery_temp.SQL.SaveToFile(SALVA_NOME('Errosql\','EX'));
       ex_erroSql_ado(adoQuery_temp,6904,'S_Compras_Orc','CADNE');
       end;
     DeleteFile('C:\SGE\CPR-'+query_pfor01.fieldByName('PF1CHAVE').AsString+'.xml');
     end;

   FreeAndNil(adoQuery_temp);
   mcfog:=0;
   end;


if query_pfor01.IsEmpty then
   begin
   Fmensagem('Este Pedido foi excluido por outro usuario!',0,['0'],0);
   FreeAndNil(query_pfor01);
   exit;
   end;
if Query_pfor01.FieldByName('PF1SITPED').AsInteger=1 then
   begin
   Fmensagem('Este Pedido Esta em Manutenção em outra estação!',0,['0'],0);
   FreeAndNil(query_pfor01);
   exit;
   end;

if Query_pfor01.FieldByName('PF1QTDMAN').AsInteger>mCompras_GP.mPed1_QtdMan then
   begin
   if not fLerPedidoGeral(codemp,valint(edt_chave.Text),0) then
      begin
      Fmensagem('Este Pedido foi excluido por outro usuario!',0,['0'],0);
      FreeAndNil(query_pfor01);
      exit;
      end
   else if Query_pfor01.FieldByName('PF1SITPED').AsInteger=1 then
      begin
      Fmensagem('Este Pedido Esta em Manutenção em outra estação!',0,['0'],0);
      FreeAndNil(query_pfor01);
      exit;
      end;
   end;
if ((query_pfor01.fieldbyName('PF1STATUS').Value>0) or (not mOperacao_Normal)) then
   begin
   Fmensagem('Pedido ja Confirmado. Nao Pode Ser Alterado!',0,['0'],0);
   exit;
   end;

if not fValidarVencimentosDocumentos(fsonumero(edt_codfor.text)) then
   begin
   exit;
   end;


venc_max:=StrToInt(FormatDateTime('yyyy',Date))+20;
fLercadpf02(0);

Application.CreateForm(TFrm_Ocorrencias, form_ocorrencias);
form_ocorrencias.ListView1.Clear;
Form_Ocorrencias.mErros:=false;
Form_Ocorrencias.mPosicaoItem:=0;

if (codemp < 100 ) and (Length(trim(query_pfor01.fieldbyName('PF1_NFE_CHAVE').AsString))<>44) and (query_pfor01.fieldbyName('PF1MODELO').AsString='55') then
  begin
  Form_Ocorrencias.adicionaItemListView('Chave da nota fiscal invalida ou não preenchida!');
  Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=3;
  Form_Ocorrencias.mErros:=true;
  end;


Query_RE:=TQuery.Create(nil);
Query_RE.DatabaseName:='SG_ASSOC';
Query_Re.SQL.add('Select PRE_TIPOPROD,PRE_SIGLA,PRE_LOTE,PRE_ANALISE,PRE_VALIDAR_LOTE from CADPAR_RE order by PRE_TIPOPROD ');
Query_RE.Open;


if (mValidar_lote) and (query_pfor01.fieldbyName('PF1STATUS').Value=0) then
   begin

   tb_pfor02_orc.First;
   While not tb_pfor02_orc.Eof do
      begin
      While not Tb_PF2_Lotes.Eof do
         begin
         if Query_RE.Locate('PRE_TIPOPROD',FormatFloat('00',tb_pfor02_orcPDNIVEL.AsInteger),[]) then
            begin
            if Query_RE.FieldByName('PRE_VALIDAR_LOTE').AsString='S' then
               begin
               if  ( (trim(Tb_PF2_LotesPF2L_LOTE.AsString)='')
                   or (Tb_PF2_LotesPF2L_DTVCTO.AsDateTime<Date)
                   or (StrToInt(FormatDateTime('yyyy',Tb_PF2_LotesPF2L_DTVCTO.AsDateTime)) > venc_max)) then
                  begin
                  if trim(Tb_PF2_LotesPF2L_LOTE.Asstring)='' then
                     Form_Ocorrencias.adicionaItemListView('Item: '+FormatFloat('000',tb_pfor02_orcPF2ITEM.AsInteger)+' Produto '+ tb_pfor02_orcNOMPRO_INT.AsString+'/'+tb_pfor02_orcPF2CODPRO_INT.AsString+' - '
                                                +' Quantidade '+
                                                FormatFloat(mcasqtd, Tb_PF2_LotesPF2L_QTD.AsFloat)
                                                +' está sem Lote e o preenchimento é obrigatorio!')
                 else if (Tb_PF2_LotesPF2L_DTVCTO.AsDateTime<=pdatanula) then
                     Form_Ocorrencias.adicionaItemListView('Item: '+FormatFloat('000',tb_pfor02_orcPF2ITEM.AsInteger)+' Produto '+ tb_pfor02_orcNOMPRO_INT.AsString+'/'+tb_pfor02_orcPF2CODPRO_INT.AsString+' - '
                                                +' Quantidade '+
                                                FormatFloat(mcasqtd, Tb_PF2_LotesPF2L_QTD.AsFloat)
                                                +' está sem a Data de Vencimento e o preenchimento é obrigatorio!')
                  else if (Tb_PF2_LotesPF2L_DTVCTO.AsDateTime<Date) then
                      Form_Ocorrencias.adicionaItemListView('Item: '+FormatFloat('000',tb_pfor02_orcPF2ITEM.AsInteger)+' Produto '+ tb_pfor02_orcNOMPRO_INT.AsString+'/'+tb_pfor02_orcPF2CODPRO_INT.AsString+' - '
                                                +' Quantidade '+
                                                FormatFloat(mcasqtd, Tb_PF2_LotesPF2L_QTD.AsFloat)
                                                +' está vencido em '+FormatDatetime(fdt2, Tb_PF2_LotesPF2L_DTVCTO.asdateTime)+' é invalido!')
                 else if (StrToInt(FormatDateTime('yyyy',Tb_PF2_LotesPF2L_DTVCTO.AsDateTime)) > venc_max) then
                      Form_Ocorrencias.adicionaItemListView('Item: '+FormatFloat('000',tb_pfor02_orcPF2ITEM.AsInteger)+' Produto '+ tb_pfor02_orcNOMPRO_INT.AsString+'/'+tb_pfor02_orcPF2CODPRO_INT.AsString+' - '
                                                +' Quantidade '+
                                                FormatFloat(mcasqtd, Tb_PF2_LotesPF2L_QTD.AsFloat)
                                                +' Data de Vencimento '+FormatDatetime(fdt2, Tb_PF2_LotesPF2L_DTVCTO.asdateTime)+' é uma data invalida!')
                 else
                  Form_Ocorrencias.adicionaItemListView('Item: '+FormatFloat('000',tb_pfor02_orcPF2ITEM.AsInteger)+' Produto '+ tb_pfor02_orcNOMPRO_INT.AsString+'/'+tb_pfor02_orcPF2CODPRO_INT.AsString+' - '
                                                +' Quantidade '+
                                                FormatFloat(mcasqtd, Tb_PF2_LotesPF2L_QTD.AsFloat)
                                                +' está com o Lote e/ou Vencimento Invalido!');
                  Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=3;
                  Form_Ocorrencias.mErros:=true;
                  end;
               end;
            end;
         Tb_PF2_Lotes.Next;
         end;
      tb_pfor02_orc.Next;
      end;
   end;


{if cb_gravarnf.Checked then
   begin}

   if ValFloat(edt_numnf.Text)<=0 Then
      begin
      Form_Ocorrencias.adicionaItemListView('Número da nota fiscal tem que ser colocado!');
      Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=3;
      Form_Ocorrencias.mErros:=true;
      end;
   if Trim(edt_serie.Text)='' Then
      begin
      Form_Ocorrencias.adicionaItemListView('Número de série da nota campo obrigatório!');
      Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=3;
      Form_Ocorrencias.mErros:=true;
      end;

   if trim(CB_MODELO.Text)='' then
      begin
      Form_Ocorrencias.adicionaItemListView('Modelo da NF tem que ser colocado!');
      Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=3;
      Form_Ocorrencias.mErros:=true;
      end;


  if (mCompras_GP.mPed1_CodEmp < 100 ) and (Length(trim(mCompras_GP.mPed1_Nfe_Chave))<>44) and (mCompras_GP.mPed1_Modelo='55') then
      begin
      Form_Ocorrencias.adicionaItemListView('Chave da NFE invalida ou não preenchida!');
      Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=3;
      Form_Ocorrencias.mErros:=true;
      end;

   if Trim(edt_datanf.Text)='/  /' Then
      begin
      Form_Ocorrencias.adicionaItemListView('Data da nota fiscal tem que ser colocado!');
      Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=3;
      Form_Ocorrencias.mErros:=true;
      end;
   if Trim(edt_datent.Text)='/  /' Then
      begin
      Form_Ocorrencias.adicionaItemListView('Data de entrada da nota fiscal tem que ser colocado!');
      Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=3;
      Form_Ocorrencias.mErros:=true;
      end;

   if Trim(edt_serie.Text)='' then
      edt_serie.Text:=' ';
   if Trim(CB_MODELO.Text)='' then
      CB_MODELO.ItemIndex:=29;
   if mOperacao_Normal then
      begin
      if flcadne(6,FloatTostr(mCompras_GP.mPed1_Codfor),FloatTostr(mCompras_GP.mPed1_NumNF),mCompras_GP.mPed1_Serie,'',mCompras_GP.mPed1_Modelo,FormatDateTime(fdt, mCompras_GP.mPed1_DataNF),'') then
         Begin
         if fMensagem('Ja Existe Nota de Entradas c/Mesmas Caracteristicas'+#13
                 +'Deseja Continuar a Operação?',0,['1','2'],2)<>mrYes then
            begin
            FreeAndNil(form_ocorrencias);
            FreeAndNil(query_pfor01);
            FreeAndNil(Query_RE);
            exit;
            end;
         end;
      end;
//   end;
if (ValFloat(edt_numnf.Text)>0) and (ValFloat(edt_numdup.Text)=0) then
   begin
   edt_numdup.Text:=edt_numnf.Text;
   edt_numdupExit(self);
   end;

if (cb_gravardp.Checked) and (not CB_TIPO.ItemIndex<>1) then
   begin
   if ValFloat(edt_numdup.Text)<=0 then
      begin
      Form_Ocorrencias.adicionaItemListView('Número da duplicata tem que ser colocado!');
      Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=3;
      Form_Ocorrencias.mErros:=true;
      end;
   if Trim(edt_desd.Text)='' then
      begin
      edt_desd.text:='A';
      edt_desdExit(self);
{      Form_Ocorrencias.adicionaItemListView('Desdobamento/parcela tem que ser colocado!');
      Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=3;
      Form_Ocorrencias.mErros:=true;
}
      end;

// INICIO
   mtotDup:=0;
   tb_pfor01_parc.First;
   While not tb_pfor01_parc.eof  do
      begin
      mtotDup      :=mtotDup+tb_pfor01_parcPF1VVALOR.Value;
      tb_pfor01_parc.Next;
      end;
//   if Arredonda(mtotDup,2)<>Arredonda((query_pfor01.fieldbyName('PF1TOTLIQ').Asfloat+query_pfor01.fieldbyName('PF1ICMSR').Asfloat+query_pfor01.fieldbyName('PF1SIV_FRETE').asfloat+query_pfor01.fieldbyName('PF1OUTVDUP').Asfloat) ,2) then
   if Arredonda(mtotDup,2)<>Arredonda(( (query_pfor01.fieldbyName('PF1TOTLIQ').Asfloat+query_pfor01.fieldbyName('PF1OUTVDUP').Asfloat)) ,2) then
      begin
      Form_Ocorrencias.adicionaItemListView('Total das Duplicatas.: '+Formatfloat(mcasas, mtotDup)+' '
                                           +'Total do Pedido......: '+FormatFloat(mcasas, query_pfor01.fieldbyName('PF1TOTLIQ').Asfloat
                                                                                         +query_pfor01.fieldbyName('PF1OUTVDUP').Asfloat
                                                                                         +query_pfor01.fieldbyName('PF1SIV_FRETE').Asfloat)+' '
                                           +'Favor Corrigir!');
      Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=3;
      Form_Ocorrencias.mErros:=true;
      end;


// FIM

   if (mOperacao_Normal) and (not form_ocorrencias.mErros) then
      begin

      if flcaddap(6,codemp,0,query_pfor01.fieldByName('PF1NUMDUP').AsString,Trim(edt_desd.Text),query_pfor01.fieldByName('PF1CODFOR').AsString,FormatDateTime(fdt2,query_pfor01.fieldByName('PF1DATANF').Value),'0','') then
         begin
         if fMensagem('Foi Encontrado uma Duplicata com as Mesmas Caracteristicas'+#13
                 +'Deseja Continuar a Operação?',0,['1','2'],2)<>mrYes then
            begin
            FreeAndNil(form_ocorrencias);
            FreeAndNil(query_pfor01);
            FreeAndNil(Query_RE);
            exit;
            end;
         end;
      end;

   end;


if form_ocorrencias.mErros then
   begin
   form_ocorrencias.ShowModal;
   FreeAndNil(form_ocorrencias);
   FreeAndNil(query_pfor01);
   FreeAndNil(Query_RE);
   exit;
   end;

if  CB_TIPO.ItemIndex=2 then
   begin
   if fMensagem('Este Pedido não Movimentara Estoque é Apenas um complemento quer realmente Confirmar?',0,['1','2'],2)<>mrYes then
      begin
      FreeAndNil(query_pfor01);
      exit;
      end
   end
else
   begin

   if not fValidarSenhaEntrada(72,'Senha para Confirmar a entrada do Pedido de Compras!',pValidouSenha) then
      begin
      FreeAndNil(query_pfor01);
      exit;
      end;



   if (not pValidouSenha) then
      begin
      if (fMensagem('Quer realmente Confirmar o Pedido?',0,['1','2'],2)<>mrYes) then
         begin
         FreeAndNil(query_pfor01);
         exit;
         end;
      end;
   end;

Application.Createform(TFrm_Agde, Frm_Agde);
Frm_Agde.label1.caption:=' aguarde ';
Frm_Agde.Show;
verteclado(0);


query_exe:=tQuery.Create(nil);
query_exe.DatabaseName:='SG_ASSOC';

query_cons:=tQuery.Create(nil);
query_cons.DatabaseName:='SG_ASSOC';

query_cons04:=tQuery.Create(nil);
query_cons04.DatabaseName:='SG_ASSOC';

if mcfog=0 then
   mcfog:=tb_pfor02_orcPF2CFO.AsInteger;

{if query_pfor01.fieldByName('PF1GRAVNF').Asinteger=0 then
   begin}
//   if flcadne(5,query_pfor01.fieldByName('PF1LOTSEQ').AsString,query_pfor01.fieldByName('PF1CHAVE').AsString,'','','','','') then
   if flcadne(6,FloatTostr(mCompras_GP.mPed1_Codfor),FloatTostr(mCompras_GP.mPed1_NumNF),mCompras_GP.mPed1_Serie,'',mCompras_GP.mPed1_Modelo,FormatDateTime(fdt, mCompras_GP.mPed1_DataNF),'') then

      begin;
      dm1.tb_ne.edit;
      moper_ne:=9;
      mant_codfor  :=DM1.Tb_NENECODFOR.AsFloat;
      mant_numero  :=DM1.Tb_NENENUMERO.AsFloat;
      mant_serie   :=DM1.Tb_NENESERIE.AsString;
      mant_subserie:=DM1.Tb_NENESUBSER.AsString;
      mant_modelo  :=DM1.Tb_NENEMODELO.AsString;
      mant_cfop    :=DM1.Tb_NENECFO.AsFloat;
      mant_dtent   :=DM1.Tb_NENEDTENT.AsDateTime;
      mant_dtemis  :=DM1.Tb_NENEDTEMIS.AsDateTime;
      end
   else
      begin
      moper_ne:=0;
      DM1.Tb_NE.Append;


      end;
   DM1.Tb_NENEID_PF01_NEW.AsFloat := mCompras_GP.mped1_id_new;
   DM1.Tb_NENECODEMP.Value   :=codemp;
   DM1.Tb_NENECODFOR.Value   :=mCompras_GP.mPed1_Codfor;
   DM1.Tb_NENEALIQ.Value     :=0;
   DM1.Tb_NENETIPO.Value     :=55;
   DM1.Tb_NENENUMERO.Value   :=mCompras_GP.mPed1_NumNF;
   DM1.Tb_NENESERIE.Value    :=trim(mCompras_GP.mPed1_Serie);
   DM1.Tb_NENECFO.Value      :=mcfog;
   DM1.Tb_NENECFOP_COMP.Value:=' ';
   if trim(mCompras_GP.mPed1_Modelo)='' then
      DM1.Tb_NENEMODELO.Value   :='55'
   else
      DM1.Tb_NENEMODELO.Value   :=mCompras_GP.mPed1_Modelo;
   DM1.Tb_NENEDTEMIS.Value   :=mCompras_GP.mPed1_DataNF;
   DM1.Tb_NENEDTENT.Value    :=mCompras_GP.mPed1_DataEnt;
   DM1.Tb_NENESUBSER.Value   :='';
   DM1.Tb_NENEBASEN.Value    :=mCompras_GP.mPed1_Icms_Base;
   DM1.Tb_NENEICMSN.Value    :=mCompras_GP.mPed1_Icms_Valor;
   DM1.Tb_NENEBASER.Value    :=mCompras_GP.mPed1_ST_base;
   DM1.Tb_NENEICMSR.Value    :=mCompras_GP.mPed1_ST_Icms;
   DM1.Tb_NENEIPIFRETE.Value :=mCompras_GP.mPed1_ValFre_PIPI;
   DM1.Tb_NENEPIPIFRETE.Value:=mCompras_GP.mPed1_ValFre_ipi;
   DM1.Tb_NENEFRETE.Value      :=mCompras_GP.mPed1_ValFre;
   DM1.Tb_NENEALIQ_FRETE.Value :=mCompras_GP.mPed1_ValFre_Icms_Aliq;
   DM1.Tb_NENEICMS_FRETE.Value :=mCompras_GP.mPed1_ValFre_Icms_Valor;
   DM1.Tb_NENEID_PF01_NEW.Value:=mCompras_GP.mPed1_id_new;

   DM1.Tb_NENEFRETEPC.Value   :=mCompras_GP.mPed1_Frete_CIFFOB;
   DM1.Tb_NENESEG.Value       :=mCompras_GP.mPed1_ValSeg;
   DM1.Tb_NENEOUTRAS.Value    :=mCompras_GP.mPed1_OutDesp;
   DM1.Tb_NENEOUTRAS_ALIQ.Value :=mCompras_GP.mPed1_OutDesp_icms_aliq;
   DM1.Tb_NENEOUTRAS_IMP.Value  :=mCompras_GP.mPed1_OutDesp_icms_valor;

   DM1.Tb_NENEOUTDESP.Value   :=0;
   DM1.Tb_NENEOUTNINC.Value   :=0;
   DM1.Tb_NENEIPI.Value       :=mCompras_GP.mPed1_TotIPI;

   DM1.Tb_NENETOTMER.Value    :=mCompras_GP.mPed1_TotMer;

   DM1.Tb_NENETOTNOT.Value    :=mCompras_GP.mPed1_Totall;
   DM1.Tb_NENETOTDES.Value    :=mCompras_GP.mPed1_pDesc01_Valor+mCompras_GP.mPed1_DescPed02_Perc+mCompras_GP.mPed1_Desc_Rateado;
   DM1.Tb_NENETOTPOS.Value    :=0;
   DM1.Tb_NENETOTNEG.Value    :=0;
   DM1.Tb_NENEISENTAS.Value   :=0;
   DM1.Tb_NENETOTINA.Value    :=mCompras_GP.mPed1_Totall;;
   DM1.Tb_NENELOTSEQ_CP.Value :=mCompras_GP.mPed1_Chave_ano;
   DM1.Tb_NENECHAVEP.Value    :=mCompras_GP.mped1_Chave;
   DM1.Tb_NENESIV_FRETE.Value :=0;
   DM1.Tb_NENESIV_DARE.Value  :=0;
   DM1.Tb_NENESIV_OUTROS.Value:=0;
   DM1.Tb_NENENFE_CHAVE.Text  :=mCompras_GP.mPed1_Nfe_Chave;
   DM1.Tb_NENEAVAP.Value:=0;
   DM1.Tb_NENEALIQ.Value     :=0 ;
   if moper_ne=0 then
      begin
      FAtualizaBanco(0,'CADNE','NECODEMP',DM1.Tb_NENECODEMP.AsString
                 ,['NECODEMP','NECODFOR','NENUMERO','NESERIE','NESUBSER','NEMODELO',
                              'NECFO','NEDTENT','NEDTEMIS'],[DM1.Tb_NENECODEMP.AsString,
                               DM1.Tb_NENECODFOR.AsString
                              ,DM1.Tb_NENENUMERO.AsString
                              ,DM1.Tb_NENESERIE.AsString
                              ,DM1.Tb_NENESUBSER.AsString
                              ,DM1.Tb_NENEMODELO.AsString
                              ,DM1.Tb_NENECFO.AsString
                              ,FormatDateTime(fdt,  DM1.Tb_NENEDTENT.Value)
                              ,FormatDateTime(fdt,  DM1.Tb_NENEDTEMIS.Value)]
                  ,DM1.Tb_NE);
      end
   else
      begin
      FAtualizaBanco(1,'CADNE','NECODEMP',DM1.Tb_NENECODEMP.AsString
                 ,['NECODEMP','NECODFOR','NENUMERO','NESERIE','NESUBSER','NEMODELO',
                              'NECFO','NEDTENT','NEDTEMIS'],[DM1.Tb_NENECODEMP.AsString,
                               FloatTostr(mant_codfor)
                              ,FloatTostr(mant_numero)
                              ,mant_serie
                              ,mant_subserie
                              ,mant_modelo
                              ,FloatTostr(mant_cfop)
                              ,FormatDateTime(fdt,  mant_dtent)
                              ,FormatDateTime(fdt,  mant_dtemis)]
                  ,DM1.Tb_NE);
      end;
   DM1.Tb_NE.Post;
   if not query_pfor01.FieldByName('PF1NFE_XML_FORNECEDOR').IsNull then
     begin
     (query_pfor01.FieldByName('PF1NFE_XML_FORNECEDOR') as TMemoField).SaveToFile('C:\SGE\CPR-'+query_pfor01.fieldByName('PF1CHAVE').AsString+'.xml');

     adoQuery_temp:=TADOQuery.Create(nil);
     adoQuery_temp.Connection:=DM1_ADO.ADOConnection1;
     adoQuery_temp.Close;
     adoQuery_temp.SQL.Clear;
     adoQuery_temp.SQL.Add('Update CADNE set '
                          +' NENFE_XML_FORNECEDOR=:NFE_XML_FORNECEDOR '
                          +' where NECHAVEP=:CHAVE '
                          +' and NELOTSEQ_CP=:CHAVE_ANO '
                          +' and NECODEMP=:CODEMP ');
     adoQuery_temp.Parameters.ParamByName('NFE_XML_FORNECEDOR').LoadFromFile('C:\SGE\CPR-'+query_pfor01.fieldByName('PF1CHAVE').AsString+'.xml',ftMemo);
     adoQuery_temp.Parameters.ParamByName('CHAVE').Value    :=mCompras_GP.mped1_Chave;
     adoQuery_temp.Parameters.ParamByName('CHAVE_ANO').Value:=mCompras_GP.mPed1_Chave_ano;
     adoQuery_temp.Parameters.ParamByName('CODEMP').Value   :=codemp;
     try
       adoQuery_temp.ExecSQL;
       fdm1StartCommit;
     except
        adoQuery_temp.SQL.SaveToFile(SALVA_NOME('Errosql\','EX'));
  //     ex_erroSql_Novo(adoQuery_temp,6904,'S_Compras_Orc','CADNE');
       end;
     DeleteFile('C:\SGE\CPR-'+query_pfor01.fieldByName('PF1CHAVE').AsString+'.xml');
     end;

   FreeAndNil(adoQuery_temp);
   //end;

if trim(DM1.Tb_ForFDESCMVD.AsString)='' then
   mdesc_mov:=pldr_descmov
else
   mdesc_mov:=DM1.Tb_ForFDESCMVD.Value;
if Trim(DM1.Tb_ForFCODCCD.AsString)='' then
   begin
   mcodccu :=pldr_codccu;
   mnomccu :=pldr_nomccu;
   mnatdc  :=pldr_natdc;
   end
else
   begin
   mcodccu :=DM1.Tb_ForFCODCCD.Value;
   mnomccu :=DM1.Tb_ForFNOMCCD.Value;
   if (DM1.Tb_ForFNATDCD.AsString)='' then
      mnatdc:='D'
   else
      mnatdc:=DM1.Tb_ForFNATDCD.AsString;
   end;
if trim(DM1.Tb_ForFCODDEPD.AsString)='' then
   begin
   mcoddep :=pldr_coddep;
   mnomdep :=pldr_nomdep;
   end
else
   begin
   mcoddep:=DM1.Tb_ForFCODDEPD.Value;
   mnomdep:=DM1.Tb_ForFNOMDEPD.Value;
   end;

mQtdDup:=0;


if (query_pfor01.fieldByName('PF1GRAVDP').Asinteger=0) and (query_pfor01.fieldByName('PF1TIPO').Asinteger<>1)  then
   begin
   if flcadfor(1,1,edt_codfor.Text) then
      fTestarParCaixaforDap(1,0,'CADDAP0');

   mQtdDup:=tb_pfor01_parc.RecordCount;
   mQtdd:=0;
   tb_pfor01_parc.First;
   While not tb_pfor01_parc.eof  do
      begin
      if (query_pfor01.fieldByName('PF1DATANF').IsNull) or (query_pfor01.fieldByName('PF1DATANF').Value<=pdatanula) then
         mDataDup:=query_pfor01.fieldByName('PF1DATA').Value
      else
         mDataDup:=query_pfor01.fieldByName('PF1DATANF').Value;
      mExisteDupPag :=False;


{
      ShowMessage('Codemp '+IntTostr(codemp)+#13
                 +' NUMDUP '+ query_pfor01.fieldByName('PF1NUMDUP').AsString+#13
                 +' DESD '+chr(Integer(query_pfor01.fieldByName('PF1DESD').Value[1])+mqtdd)+#13
                 +' CODFOR '+query_pfor01.fieldByName('PF1CODFOR').AsString+#13
                 +' DATANF '+FormatDateTime(fdt2, mDataDup));

 }
      if not flcaddap(6,codemp,0,query_pfor01.fieldByName('PF1numdup').AsString,chr(Integer(query_pfor01.fieldByName('PF1DESD').AsString[1])+mqtdd),query_pfor01.fieldByName('PF1codfor').AsString,FormatDateTime(fdt2,mDataDup),'0','') then
         begin
         DM1.Tb_CP.Append;
         if tb_pfor01_parcPF1VCODEMP.AsFloat>0 then
            DM1.Tb_CPCACODEMP.Value:=tb_pfor01_parcPF1VCODEMP.AsFloat
         else
            DM1.Tb_CPCACODEMP.Value:=codemp;
         end
      else
         begin
         DM1.Tb_CP.Edit;
         if (DM1.Tb_CPCASTATUS.AsInteger>0) and (DM1.Tb_CPCASTATUS.AsInteger<9)  then
            mExisteDupPag:=true;
         end;
      DM1.Tb_CPCANUMERO.Value:=query_pfor01.fieldByName('PF1NUMDUP').Value;
      if length(query_pfor01.fieldByName('PF1DESD').AsString)>1 then
         DM1.Tb_CPCADESD.Value  :=query_pfor01.fieldByName('PF1DESD').AsString[1]+chr(Integer(query_pfor01.fieldByName('PF1DESD').Value[2])+mqtdd)
      else
         DM1.Tb_CPCADESD.Value  :=chr(Integer(query_pfor01.fieldByName('PF1DESD').AsString[1])+mqtdd);

      DM1.Tb_CPCANUMPARC.Value  :=mqtdd+1;
      DM1.Tb_CPCAQTDPARC.Value  :=mQtdDup;
      DM1.Tb_CPCACODFOR.Value:=query_pfor01.fieldByName('PF1CODFOR').Value;
      DM1.Tb_CPCADTEMIS.Value:=mDataDup;
      DM1.Tb_CPCAVALOR.Value :=tb_pfor01_parcPF1VVALOR.Value;
      DM1.Tb_CPCADATAINCLUSAO.Value:=NOW;

      DM1.Tb_CPCACHAVEP.Value    :=mCompras_GP.mped1_Chave;

      DM1.Tb_CPCADUP.Value   :=0;
      DM1.Tb_CPCADTVCTO.Value:=tb_pfor01_parcPF1VDATAV.Value;
      DM1.Tb_CPCADTDESC.Value:=tb_pfor01_parcPF1VDTDESCF.Value;
      if not mExisteDupPag then
         begin
         DM1.Tb_CPCADESC.Value  :=0;
         DM1.Tb_CPCASTATUS.Value:=0;
         DM1.Tb_CPCAVALDES.Value:=tb_pfor01_parcPF1VDESCF.Value;;
         DM1.Tb_CPCAJUROS.Value :=0;
         DM1.Tb_CPCABANCO.Value :=0;
         DM1.Tb_CPCATEMBOL.Value:=0;
         DM1.Tb_CPCALOTE.Value  :=0;
         DM1.Tb_CPCADTALT.Value :=now;

         DM1.Tb_CPCACODCTA.Value   :=codcai;
         DM1.Tb_CPCACODCC.Value    :=mcodccu;
         DM1.Tb_CPCACODDEP.Value   :=mcoddep;
         DM1.Tb_CPCADESCMV.Value   :=mdesc_mov;
         DM1.Tb_CPCANOMCTA.Value   :=pldr_nombco;
         DM1.Tb_CPCANOMCC.Value    :=mnomccu;
         DM1.Tb_CPCANOMDEP.Value   :=mnomdep;
         DM1.Tb_CPCANATDC.Value    :=mnatdc;
         if DM4.Tb_Par01PCXAUTO.Value=0 then
            begin
            if flcadldr(0,0,DM1.Tb_CPCALOTSEQ_FC.AsInteger,'0'+Trim(DM1.Tb_CPCACODLDR.AsString)) then
               begin
               DM1.Tb_LDR.Edit
               end
            else
                begin
                DM1.Tb_LDR.Append;
                DM1.Tb_LDRCODEMP.Value :=codemp;
                end;

            DM1.Tb_LDRDATADP.Value :=DM1.Tb_CPCADTVCTO.Value;
            DM1.Tb_LDRDATAREF.Value:=DM1.Tb_CPCADTEMIS.Value;
            DM1.Tb_LDRVALORP.Value :=DM1.Tb_CPCAVALOR.Value;
            DM1.Tb_LDRNUMDOC.Value:='PC-'+FormatFloat('0000000',DM1.Tb_CPCANUMERO.Value)+'-'+DM1.Tb_CPCADESD.Value;
            DM1.Tb_LDRSTATUS.Value:=0;
            DM1.Tb_LDRORIGEM.Value:=03;
            DM1.Tb_LDRTIPO.Value  :='FR';
            DM1.Tb_LDRCODIGO.Value:=DM1.Tb_CPCACODFOR.Value;
            DM1.Tb_LDRNOME.Value  :=edt_nomfor.Text;
            DM1.Tb_LDRLOCDEP.Value:=1;
            DM1.Tb_LDRDESCMV.Value:=mdesc_mov;
            DM1.Tb_LDRCODCC.Value :=mcodccu;
            DM1.Tb_LDRCODDEP.Value:=mcoddep;
            DM1.Tb_LDRNOMBCO.Value:=pldr_nombco;
            DM1.Tb_LDRNOMDEP.Value:=mnomdep;
//            DM1.Tb_LDRNOMCCU.Value:=pldr_nomccu;
            DM1.Tb_LDRNOMCCU.Value:=mnomccu;
            DM1.Tb_LDRNATDC.Value :=mnatdc;
            DM1.Tb_LDRCODBCO.Value:=codcai;

            if Trim(DM1.Tb_LDRNUMDOC.AsString)<>'' then
               DM1.Tb_LDRDESCMV.Value:=trim(DM1.Tb_LDRDESCMV.Value)+' No.'+DM1.Tb_LDRNUMDOC.Value
            else
               DM1.Tb_LDRDESCMV.Value:=trim(DM1.Tb_LDRDESCMV.Value);
            DM1.Tb_LDRDESCMV.Value:=Trim(DM1.Tb_LDRDESCMV.Value)+' '+DM1.Tb_LDRNOME.Value;
            if length(DM1.Tb_LDRDESCMV.Value)>50 then
               DM1.Tb_LDRDESCMV.Value:=copy(DM1.Tb_LDRDESCMV.Value,1,50);
            DM1.Tb_LDRDESCMV.Value  :=DM1.Tb_LDRDESCMV.Value;

            DM1.Tb_LDRLOTMOV.Value:=lotmov;
            DM1.Tb_LDR.Post;
            DM1.Tb_CPCACODLDR.Value   :=DM1.Tb_LDRCODLDR.Value;
            DM1.Tb_CPCALOTSEQ_FC.Value:=DM1.Tb_LDRLOTSEQ.Value;
            end
         else
            begin
            DM1.Tb_CPCACODLDR.Value:=0;
            DM1.Tb_CPCALOTSEQ_FC.Value:=0;
            end;
         end;

      DM1.Tb_CPCADTINC.Value :=now;
      DM1.Tb_CPCACHAVEP.Value:=mCompras_GP.mped1_Chave;
      DM1.Tb_CPCAID_PF01_NEW.Value:=mCompras_GP.mped1_id_new;
      DM1.Tb_CPCAID_LDR_NEW.Value:=dm1.Tb_LDRLDR_ID_NEW.AsFloat;
      DM1.Tb_CPCALOTSEQ_CP.Value:=mCompras_GP.mPed1_Chave_ano;
      try
         DM1.Tb_CP.Post;
      except ON E: Exception do
         begin
         ex_erroSql_Novo(DM1.Tb_CP,7988,'_stru '+e.message,'user');
         end;
         end;
      tb_pfor01_parc.Next;
      mqtdd:=mqtdd+1;
      end;
   end;
// termino do financeiro

if (mOperacao_Normal)  and (mCompras_GP.mPed1_Tipo=0) then
   begin
   tb_pfor02_orc.First;
   While not tb_pfor02_orc.Eof do
      begin
      mpu:=tb_pfor02_orcPF2QTDP.Value*tb_pfor02_orcPF2PU_INT.Value;
      mpu:=mpu-tb_pfor02_orcPF2DESC_TOTDES.Value;// +tb_pfor02_orcPF2IPI_VALOR.AsFloat;
      try
         mpu:=mpu/tb_pfor02_orcPF2QTDP.Value;
      except
         end;
      mpu:=Arredonda(mpu,mQtdCas_arredpu);

      if flcadpro(1,0,0,tb_pfor02_orcPF2CODPRO_INT.AsString) then
         begin

         DM1.Tb_Pro.Edit;
         if DM1.Tb_PargerPATPCOFABENT.AsInteger=1 then
            begin
            DM1.Tb_ProPDPCOFAB.Value  :=mpu;
            end;
         if (fsonumero(tb_pfor02_orcPF2CODNCM.AsString)>0) and (fsonumero(tb_pfor02_orcPF2CODNCM.AsString)<>12345678)  then
            begin
            if fsonumero(DM1.Tb_ProPDCODNCM.AsString)=12345678 then
               DM1.Tb_ProPDCODNCM.Value  :=tb_pfor02_orcPF2CODNCM.AsString;
            if fsonumero(DM1.Tb_ProPDCLAS.AsString)=12345678 then
               DM1.Tb_ProPDCLAS.Value  :=tb_pfor02_orcPF2CODNCM.AsString;
            end;
         DM1.Tb_ProPDUCPR.Value    :=mpu;
         DM1.Tb_ProPDDTULTENT.Value:=query_pfor01.fieldbyName('PF1DATAENT').Value;
         DM1.Tb_ProPDUNOMFOR.Value :=edt_nomfor.Text;
         DM1.Tb_ProPDUCODFOR.Value :=query_pfor01.fieldbyName('PF1CODFOR').Value;

         if DM4.Tb_Par01PATUACUS.AsInteger=2 then
            begin
            mPreco_Calc:=0;
            if mCampoP_IPI then
               begin
               try
                  mPreco_Calc:=mPreco_Calc+(tb_pfor02_orcPF2IPI_VALOR.AsFloat/tb_pfor02_orcPF2QTDP.AsFloat);
               except
                  mPreco_calc:=0;
                  end;
               end;

            if mCampoP_ValFre then
               begin
               try
                  mPreco_Calc:=mPreco_Calc+(tb_pfor02_orcPF2FRERAT.AsFloat/tb_pfor02_orcPF2QTDP.AsFloat);
               except
                  mpreco_calc:=0;
                  end;
               end;

            if mCampoP_icmsr then
               begin
               try
                  mPreco_Calc:=mPreco_Calc+(tb_pfor02_orcPF2ST_ICMS.AsFloat/tb_pfor02_orcPF2QTDP.AsFloat);
               except
                  mpreco_calc:=0;
                  end;
               end;

{
            if mCampoP_TotDes then
               mPreco_Calc:=mPreco_Calc-(tb_pfor02_orcPF2DESC_TOTDES.AsFloat/tb_pfor02_orcPF2QTDP.AsFloat);
 }



            DM1.Tb_ProPDPRECOC.AsFloat:=Arredonda( (mpu+mPreco_Calc ),mQtdCas_arredpu);
            if DM1.Tb_ProPDPCOMC.AsFloat=0 then
               DM1.Tb_ProPDPCOMC.Value:=DM1.Tb_ProPDPRECOC.AsFloat
            else
               begin
               DM1.Tb_ProPDPCOMC.Value:=Arredonda( ((DM1.Tb_ProPDPCOMC.Value+DM1.Tb_ProPDPRECOC.AsFloat)/2)
                                                 , mQtdCas_arredpu);
               end;
            end;
         DM1.Tb_Pro.Post;


         query_exe.Close;
         query_exe.sql.clear;
         query_exe.sql.Add('Update CADPRO set '
                          +'PDPCOFAB=:PCOFAB '
                          +',PDCODNCM=:CODNCM '
                          +',PDCLAS=:CLAS '
                          +',PDUCPR=:UCPR '
                          +',PDDTULTENT=:DTULTENT '
                          +',PDUNOMFOR=:NOMFOR '
                          +',PDCODFOR=:CODFOR '
                          +',PDPCOMC=:PCOMC '
                          +' where PDCODPRO=:CODPRO ');

        query_exe.ParamByName('PCOFAB').AsFloat  := DM1.Tb_ProPDPCOFAB.AsFloat;
        query_exe.ParamByName('CODNCM').AsString := DM1.Tb_ProPDCODNCM.AsString;
        query_exe.ParamByName('CLAS').AsString   := DM1.Tb_ProPDCLAS.AsString;
        query_exe.ParamByName('UCPR').AsFloat    := DM1.Tb_ProPDUCPR.AsFloat;
        query_exe.ParamByName('DTULTENT').AsDateTime    := DM1.Tb_ProPDDTULTENT.AsDateTime;
        query_exe.ParamByName('NOMFOR').AsString        := DM1.Tb_ProPDNOMFOR.AsString;
        query_exe.ParamByName('CODFOR').AsFloat         := DM1.Tb_ProPDCODFOR.AsFloat;
        query_exe.ParamByName('PCOMC').AsFloat         := DM1.Tb_ProPDPCOMC.AsFloat;
        query_exe.ParamByName('CODPRO').AsFloat         := DM1.Tb_ProPDCODPRO.AsFloat;
        try
           query_exe.execsql;
           fdm1startcommit;
        except
           ex_erroSql_Novo(query_exe,7598,'compras_orc','cadpro');
           end;

         if DM4.Tb_Par01PATUACUS.AsInteger=2 then
            begin
            form_pcus_pfor.CODPRO.Text:=dm1.Tb_ProPDCODPRO.AsString;
            form_pcus_pfor.CODPROExit(Self);
            form_pcus_pfor.PCOCOM.Caption:=Formatfloat(mcasas, mpu);
            form_pcus_pfor.NPCOCOM.Text:=dm1.Tb_ProPDPRECOC.AsString;
            form_pcus_pfor.NPCOCOMExit(Self);
{
            form_pcus_pfor.CB_ATUP01.Checked:=false;
            form_pcus_pfor.CB_ATUP02.Checked:=false;
            form_pcus_pfor.CB_ATUP03.Checked:=false;
 }
            form_pcus_pfor.bbGravarClick(Self);
            end;

         if (DM1.Tb_PargerPATUPCUSACABMP.AsFloat=1) then

            begin
            Frm_Agde.Label1.Caption:='Aguarde enquanto e atualizado os precos de custos dos produtos acabados!';
            Frm_Agde.Update;
            if (round(DM1.Tb_PargerPINDUSTRIA.Value)=1) or (round(DM1.Tb_PargerPINDUSTRIA.Value)>3) then
               begin
               query_cons.Close;
               query_cons.SQL.Clear;
               query_cons.SQL.Add('Select CPCODPRO '
                                 +'  from CADCOMP where '
                                 +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+InttoStr(codemp)+' and ')
//                                 +' (CPTIPO<>2 or CPTIPO is null) and '
                                 +' CPCODMAT=0'+DM1.Tb_ProPDCODPRO.AsString
                                 +' GROUP BY CPCODPRO ');
               query_cons.Open;
               While not query_cons.Eof do
                  begin


                  if fLerGenerico_query('dual','fBuscarCustoProduto('+QuotedStr('N')+','+QuotedStr(query_cons.fieldbyName('CPCODPRO').AsString)+')','',query_consulta) then
                      mpreco_custo:=query_consulta.Fields[0].asfLoat
                  else
                      mpreco_custo:=0;


                  if fLerGenerico_query('dual','fBuscarCustoProduto('+QuotedStr('S')+','+QuotedStr(query_cons.fieldbyName('CPCODPRO').AsString)+')','',query_consulta) then
                      mpreco_fabrica:=query_consulta.Fields[0].asfLoat
                  else
                      mpreco_fabrica:=0;



                  if mpreco_fabrica<>0 then
                     begin
                     query_exe.Close;
                     query_exe.SQL.Clear;
                     query_exe.SQL.Add('Update CADPRO set PDPRECOC='+mudavp(FloatToStr(mpreco_custo))
                                       +'                 ,PDPCOFAB='+mudavp(FloatToStr(mpreco_fabrica))
                                       +',PDUCPR='+mudavp(FloatToStr(mpreco_fabrica))
                                       +', PDPCOMC=( '
                                       +' DECODE( PDPCOMC,0, '
                                       +'     DECODE(PDPRECOC,0,'+mudavp(FloatToStr(mpreco_custo))+',PDPRECOC) '
                                       +'     ,PDPCOMC) '
                                       +'      + '+mudavp(FloatToStr(mpreco_custo))+') / 2 '
                                       +' where '
                                       +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+InttoStr(codemp)+' and ')
                                       +' PDCODPRO=0'+query_cons.fieldbyName('CPCODPRO').AsString);
                     try
                        query_exe.Execsql;
                        fdm1startcommit;

{                        if Frm_APcusAcabado=nil then
                           begin
                           Application.CreateForm(TFrm_APcusAcabado, Frm_APcusAcabado);
                           Frm_APcusAcabado.mBloquearMensagem:=true;
                           Frm_APcusAcabado.cb_formulas.checked:=true;
                           end;

                        Frm_APcusAcabado.origem.Caption:='frm_pfor01';
                        Frm_APcusAcabado.codpro.Text:=query_cons.fieldbyname('CPCODPRO').AsString;
                        Frm_APcusAcabado.codproExit(self);
}
                     except
                        end;
                     end;
                  query_cons.Next;
                  end;

               end
            else
               begin
               query_cons04.Close;
               query_cons04.SQL.Clear;
               query_cons04.SQL.Add('Select CPCODPRO '
                                 +'  from CADCOMP where '
                                 +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+InttoStr(codemp)+' and ')
                                 +' (CPTIPO<>2 or CPTIPO is null) '
                                 +' and CPCODMAT=0'+DM1.Tb_ProPDCODPRO.AsString);
               query_cons04.Open;

               While not query_cons04.Eof do
                  begin
                  query_cons.Close;
                  query_cons.SQL.Clear;
                  query_cons.SQL.Add('Select CPCODPRO_ACAB,PDQTDGRML '
                                    +'   from CADCOMP,CADPRO where '
                                    +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+InttoStr(codemp)+' and PDCODEMP=CPCODEMP and ')
                                    +' (CPTIPO<>2 or CPTIPO is null) '
                                    +' and CPCODPRO=0'+query_cons04.fieldbyName('CPCODPRO').AsString
                                    +' and CPCODPRO_ACAB>0 '
                                    +' and PDCODPRO=CPCODPRO_ACAB ');
                  query_cons.Open;

                  While not query_cons.Eof do
                      begin
                      if query_cons.fieldbyName('CPCODPRO_ACAB').AsFloat=tb_pfor02_orcPF2CODPRO_INT.AsFloat then
                         begin
                         query_cons.Next;
                         Continue;
                         end;
                     mpreco:=form_pcus_pfor.fPcusCaptura(query_cons.fieldbyName('CPCODPRO_ACAB').AsFloat,
                                        query_cons.fieldbyName('PDQTDGRML').AsFloat);
                     if mpreco<>0 then
                        begin
                        query_exe.Close;
                        Query_exe.SQL.Clear;
                        Query_exe.SQL.Add('Update CADPRO set PDPRECOC='+mudavp(FloatToStr(mpreco))
                                          +'                 ,PDPCOFAB='+mudavp(FloatToStr(mpreco))
                                          +',PDUCPR='+mudavp(FloatToStr(mpreco))
                                          +', PDPCOMC=( '
                                          +' DECODE( PDPCOMC,0, '
                                          +'     DECODE(PDPRECOC,0,'+mudavp(FloatToStr(mpreco))+',PDPRECOC) '
                                          +'     ,PDPCOMC) '
                                          +'      + '+mudavp(FloatToStr(mpreco))+') / 2 '
                                          +' where '
                                          +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+InttoStr(codemp)+' and ')
                                          +' PDCODPRO=0'+query_cons.fieldbyName('CPCODPRO_ACAB').AsString);
                        try
                           Query_exe.Execsql;
                           fdm1startcommit;
                        except
                           end;

                        end;
                     Query_cons.Next;
                     end;
                  query_cons04.Next;
                  end;
               end;
            end;
         end;
      if mCompras_GP.mPed1_Tipo<2 then
          flbaientpen(1,0,tb_pfor02_orcPF2CODPRO_INT.AsString,tb_pfor02_orcPF2QTDP.Value);

      if StrToInt('0'+copy(mpseg,4,2))<1  then  // se nao controle do CADLGC
         begin


	pBaixar.pCodemp := tb_pfor02_orcPF2CODEMP.Asinteger;
	pBaixar.pFilial := mCompras_GP.mped1_Filial;
	pBaixar.pItem   := tb_pfor02_orcPF2ITEM.Asinteger;
	pBaixar.pDocOri := 01;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad;
	pBaixar.pChave   := tb_pfor02_orcPF2CHAVE.AsInteger;
	pBaixar.pChave_ano := tb_pfor02_orcPF2LOTSEQ.AsInteger;
	pBaixar.pQtd       := tb_pfor02_orcPF2QTDP.AsFloat;
	pBaixar.pCodPro    := tb_pfor02_orcPF2CODPRO_INT.AsString;
	pBaixar.pEstNor       := 'E';
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := '';
	pBaixar.pDtVcto       := 0;
	pBaixar.pDtFab        := 0;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := tb_pfor02_orcPF2ID_NEW.AsInteger;

	fBaixarMercadorias(pBaixar);

  {
         fBaixarMercadorias(tb_pfor02_orcPF2CODEMP.Asinteger
                  ,mCompras_GP.mped1_Filial
                  ,tb_pfor02_orcPF2ITEM.Asinteger
                  ,01 // docori
                  ,codusr
                  ,0 //pcontesp
                  ,Log_TipoProdPad //ptipoprod
                  ,tb_pfor02_orcPF2CHAVE.AsfLOAT
                  ,tb_pfor02_orcPF2LOTSEQ.AsfLOAT
                  ,tb_pfor02_orcPF2QTDP.AsfLOAT
                  ,tb_pfor02_orcPF2CODPRO_INT.AsString
                  ,'E'
                  ,'N'
                  ,''
                  ,0
                  ,''
                  ,''
                  );
}
         end
      else
         begin
         Tb_PF2_Lotes.First;
         While not Tb_PF2_Lotes.Eof do
            begin

	pBaixar.pCodemp := tb_pfor02_orcPF2CODEMP.Asinteger;
	pBaixar.pFilial := mCompras_GP.mped1_Filial;
	pBaixar.pItem   := tb_pfor02_orcPF2ITEM.Asinteger;
	pBaixar.pDocOri := 01;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad;
	pBaixar.pChave   := tb_pfor02_orcPF2CHAVE.AsInteger;
	pBaixar.pChave_ano := tb_pfor02_orcPF2LOTSEQ.AsInteger;
	pBaixar.pQtd       := Tb_PF2_LotesPF2L_QTD.AsfLOAT;
	pBaixar.pCodPro    := tb_pfor02_orcPF2CODPRO_INT.AsString;
	pBaixar.pEstNor       := 'E';
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := Tb_PF2_LotesPF2L_LOTE.AsString;
	pBaixar.pDtVcto       := Tb_PF2_LotesPF2L_DTVCTO.AsDateTime;
	pBaixar.pDtFab        := Tb_PF2_LotesPF2L_DTFAB.AsDateTime;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := Tb_PF2_LotesPF2L_ID_NEW.AsInteger;

	fBaixarMercadorias(pBaixar);

  {
            fBaixarMercadorias(tb_pfor02_orcPF2CODEMP.Asinteger
                  ,mCompras_GP.mped1_Filial
                  ,tb_pfor02_orcPF2ITEM.Asinteger
                  ,01 // docori
                  ,codusr
                  ,0 //pcontesp
                  ,Log_TipoProdPad //ptipoprod
                  ,tb_pfor02_orcPF2CHAVE.AsfLOAT
                  ,tb_pfor02_orcPF2LOTSEQ.AsfLOAT
                  ,Tb_PF2_LotesPF2L_QTD.AsfLOAT
                  ,tb_pfor02_orcPF2CODPRO_INT.AsString
                  ,'E'
                  ,'N'
                  ,Tb_PF2_LotesPF2L_LOTE.AsString
                  ,Tb_PF2_LotesPF2L_DTVCTO.AsDateTime
                  ,''
                  ,''
                  );
}
            Tb_PF2_Lotes.Next;

            end;
         end;
      Tb_Pfor02_orc.Next;
      end;

{
 LINDOMAR
         mBlq_Analise:=false;
         mLote_Re:='';
         if (ValInt('0'+copy(mpseg,1,2))=3) then
            begin
            if (mCompras_GP.mPed1_Tipo<2) then
                begin
               mBlq_Analise:=false;
               if Query_RE.Locate('PRE_TIPOPROD',FormatFloat('00',tb_pfor02_orcPDNIVEL.AsInteger),[]) then
                  begin
                  if Query_RE.FieldByName('PRE_LOTE').AsString='S' then
                     mSigla_Re:=Query_RE.fieldbyName('PRE_SIGLA').AsString+'_'
                  else
                     mSigla_Re:='GERAL_';
                  mBlq_Analise:=Query_RE.FieldByName('PRE_ANALISE').AsString='S';
                  end
               else
                  mSigla_Re:='GERAL_';
               mLote_Re:=mSigla_Re+FormatFloat('0000', fBuscarSequencia(mSigla_Re+FormatDateTime('yyyy',pdatasis)));
               end;

            if DM4.Tb_ParGer02PG2UTILCQ.AsInteger=1 then
               begin
               fInsereCadpro_Bloq(codemp,tb_pfor02_orcPF2CODPRO_INT.AsFloat,0,Tb_PF2_LotesPF2L_QTD.AsFloat,
                            query_pfor01.fieldbyName('PF1CHAVE').AsFloat,query_pfor01.fieldbyName('PF1CODEMP').AsFloat,
                            Tb_PF2_LotesPF2L_LOTE.AsString,mdtv,mLote_Re
                            ,mcinst2,'Entrada');
               end;
            end;

         mcinst4:=Tb_PF2_LotesPF2L_LOTE.Value;
         if query_pfor01.fieldbyName('PF1ORIGEM').AsInteger=1 then
            flbailgc(mCompras_GP.mped1_Filial,mCompras_GP.mPed1_Tipo,30,0,tb_pfor02_orcPF2CODPRO_INT.AsString,mcinst4,mdtv,mLote_RE,formatDateTime(fdt2, query_pfor01.fieldbyName('PF1DATAENT').Value),Tb_PF2_LotesPF2L_QTD.AsFloat)
         else
            flbailgc(mCompras_GP.mped1_Filial,mCompras_GP.mPed1_Tipo,0,0,tb_pfor02_orcPF2CODPRO_INT.AsString,mcinst4,mdtv,mLote_RE,formatDateTime(fdt2, query_pfor01.fieldbyName('PF1DATAENT').Value),Tb_PF2_LotesPF2L_QTD.AsFloat);
         if (ValInt('0'+copy(mpseg,1,2))=3) then
            begin
             query_exe.Close;
             query_exe.SQL.Clear;
             query_exe.SQL.Add('Update CADPF2_LOTES_ORC set PF2L_LOTE_RE='
                               +chr(39)+mLote_Re+chr(39)
                               +' ,PF2L_STATUS_ANALISE='+iif(mBlq_Analise=true,'1','0')
                               +' where '
                               +iif(DM1.Qr_TID.Locate('TINOME','CADPF2',[]),'',' PF2L_CODEMP=0'+tb_pfor02_orcPF2CODEMP.AsString+' and ')
                               +' PF2L_CHAVE=0'+tb_pfor02_orcPF2CHAVE.AsString
                               +' and PF2L_LOTSEQ=0'+tb_pfor02_orcPF2LOTSEQ.AsString
                               +' and PF2L_ITEM=0'+tb_pfor02_orcPF2ITEM.AsString
                               +' and PF2L_LOTE=:LOTE ');
             query_exe.ParamByName('LOTE').asstring:=Tb_PF2_LotesPF2L_LOTE.AsString;
             try
                query_exe.ExecSQL;
                fdm1StartCommit;
             except
                query_exe.SQL.SaveToFile(mpastatemp +'sqlPF2.txt');
                end;

             if mBlq_Analise then
                begin
                la_tabelas  :='';
                la_Join     :='';
                la_instrucao:='';
                la_Empresas :='';
                fInnerJoin3(1,'CADPF1','PF2L_CODEMP','PF1CODEMP','PF2L_LOTSEQ','PF1LOTSEQ','PF2L_CHAVE','PF1CHAVE');
                query_exe.Close;
                query_exe.SQL.Clear;
                query_exe.SQL.Add(' update CADLGC set CLQTD_ANALISE=(Select sum(PF2L_QTD) from CADPF2_LOTES_ORC '
                                 +iif(la_tabelas='','',',')+la_tabelas
                                 +'       '+la_Join
                                 +'       where '+la_instrucao+iif(la_instrucao='','',' and '));
                 if (mCompras_GP.mped1_filial=1) then
                    query_exe.SQL.add(' (PF1FILIAL='+IntTostr(mCompras_GP.mped1_filial)+' or PF1FILIAL is null )')
                 else
                    query_exe.SQL.add(' PF1FILIAL='+IntTostr(mCompras_GP.mped1_filial));
                 query_exe.SQL.add(' and PF1STATUS=1 '
                                 +' and (PF2L_CODEMP=:CODEMP  OR PF2L_CODEMP=:CODEMP_FILIAL ) '
                                 +'       and PF2L_LOTE=:LOTE '
                                 +'       AND PF2L_CODPRO=:CODPRO '
                                 +'       and PF2L_STATUS_ANALISE=1) '
                                 +' where (CLCODEMP=:CODEMP OR CLCODEMP=:CODEMP_FILIAL) and '
                                 +' CLCODPRO=:CODPRO '
                                 +' and  CLFILIAL='+IntTostr(mCompras_GP.mped1_filial)
                                 +' and CLNUMERO=:LOTE ');

                query_exe.ParamByName('CODEMP').asstring:=Tb_PF2_LotesPF2L_CODEMP.AsString;
                if Tb_PF2_LotesPF2L_CODEMP.AsInteger>100 then
                   query_exe.ParamByName('CODEMP_FILIAL').AsInteger:=Tb_PF2_LotesPF2L_CODEMP.AsInteger-100
                else
                   query_exe.ParamByName('CODEMP_FILIAL').AsInteger:=Tb_PF2_LotesPF2L_CODEMP.AsInteger+100;

                query_exe.ParamByName('LOTE').asstring:=Tb_PF2_LotesPF2L_LOTE.AsString;
                query_exe.ParamByName('CODPRO').Value:=Tb_PF2_LotesPF2L_CODPRO.AsFloat;
                try
                   query_exe.ExecSQL;
                   fdm1StartCommit;
                except
                   query_exe.SQL.SaveToFile(mpastatemp +'sqlPF2.txt');
                   end;
// CADEST

                la_tabelas  :='';
                la_Join     :='';
                la_instrucao:='';
                la_Empresas :='';
                fInnerJoin3(1,'CADPF1','PF2L_CODEMP','PF1CODEMP','PF2L_LOTSEQ','PF1LOTSEQ','PF2L_CHAVE','PF1CHAVE');
                query_exe.Close;
                query_exe.SQL.Clear;
                query_exe.SQL.Add(' update CADEST set CEQTD_ANALISE=(Select sum(PF2L_QTD) from CADPF2_LOTES_ORC '
                                 +iif(la_tabelas='','',',')+la_tabelas
                                 +'       '+la_Join
                                 +'       where '+la_instrucao+iif(la_instrucao='','',' and '));
                 if (mCompras_GP.mped1_filial=1) then
                    query_exe.SQL.add(' (PF1FILIAL='+IntTostr(mCompras_GP.mped1_filial)+' or PF1FILIAL is null )')
                 else
                    query_exe.SQL.add(' PF1FILIAL='+IntTostr(mCompras_GP.mped1_filial));
                 query_exe.SQL.add(' and PF1STATUS=1 '
                                 +' and (PF2L_CODEMP=:CODEMP or PF2L_CODEMP=:CODEMP_FILIAL) '
                                 +'       AND PF2L_CODPRO=:CODPRO '
                                 +'       and PF2L_STATUS_ANALISE=1) '
                                 +' where (CECODEMP=:CODEMP or CECODEMP=:CODEMP_FILIAL) and '
                                 +' CECODPRO=:CODPRO '
                                 +' and  CEFILIAL='+IntTostr(mCompras_GP.mped1_filial));

                query_exe.ParamByName('CODEMP').asstring:=Tb_PF2_LotesPF2L_CODEMP.AsString;
                if Tb_PF2_LotesPF2L_CODEMP.AsInteger>100 then
                   query_exe.ParamByName('CODEMP_FILIAL').AsInteger:=Tb_PF2_LotesPF2L_CODEMP.AsInteger-100
                else
                   query_exe.ParamByName('CODEMP_FILIAL').AsInteger:=Tb_PF2_LotesPF2L_CODEMP.AsInteger+100;

                query_exe.ParamByName('CODPRO').Value:=Tb_PF2_LotesPF2L_CODPRO.AsFloat;
                try
                   query_exe.ExecSQL;
                   fdm1StartCommit;
                except
                   query_exe.SQL.SaveToFile(mpastatemp +'sqlPF2.txt');
                   end;

    // CADEST

    // CADPRO

                la_tabelas  :='';
                la_Join     :='';
                la_instrucao:='';
                la_Empresas :='';
                fInnerJoin3(1,'CADPF1','PF2L_CODEMP','PF1CODEMP','PF2L_LOTSEQ','PF1LOTSEQ','PF2L_CHAVE','PF1CHAVE');
                query_exe.Close;
                query_exe.SQL.Clear;
                query_exe.SQL.Add(' update CADPRO set PDQTD_ANALISE=(Select sum(PF2L_QTD) from CADPF2_LOTES_ORC '
                                 +iif(la_tabelas='','',',')+la_tabelas
                                 +'       '+la_Join
                                 +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                                 +' PF1STATUS=1 '
                                 +' and (PF2L_CODEMP=:CODEMP OR PF2L_CODEMP=:CODEMP_FILIAL) '
                                 +'       AND PF2L_CODPRO=:CODPRO '
                                 +'       and PF2L_STATUS_ANALISE=1) '
                                 +' where (PDCODEMP=:CODEMP  OR PDCODEMP=:CODEMP_FILIAL) and '
                                 +' PDCODPRO=:CODPRO ');

                query_exe.ParamByName('CODEMP').asstring:=Tb_PF2_LotesPF2L_CODEMP.AsString;
                if Tb_PF2_LotesPF2L_CODEMP.AsInteger>100 then
                   query_exe.ParamByName('CODEMP_FILIAL').AsInteger:=Tb_PF2_LotesPF2L_CODEMP.AsInteger-100
                else
                   query_exe.ParamByName('CODEMP_FILIAL').AsInteger:=Tb_PF2_LotesPF2L_CODEMP.AsInteger+100;

                query_exe.ParamByName('CODPRO').Value:=Tb_PF2_LotesPF2L_CODPRO.AsFloat;
                try
                   query_exe.ExecSQL;
                   fdm1StartCommit;
                except
                   query_exe.SQL.SaveToFile(mpastatemp +'sqlPF2.txt');
                   end;
                end;

// CADPRO

            end;
         Tb_PF2_Lotes.Next;
         end;

      flcadpro(1,0,codemp,tb_pfor02_orcPF2CODPRO_INT.AsString);
      CMovPro(mCompras_GP.mped1_Filial,tb_pfor02_orcPF2CODPRO_INT.AsFloat,'','S_Pfor01',0,DM1.Tb_Prosaldo_filial.AsFloat,tb_pfor02_orcPF2QTDP.AsFloat,'Pedido de Compra - '+tb_pfor02_orcPF2CHAVE.AsString);

      if query_pfor01.fieldbyName('PF1ORIGEM').AsInteger=1 then
         flbaiest(mCompras_GP.mped1_Filial,mCompras_GP.mPed1_Tipo,30,0,tb_pfor02_orcPF2CODPRO_INT.AsString,
                         'PC;'+
                       FloatToStr(mCompras_GP.mPed1_CodEmp)+';'+
                       FloatToStr(mCompras_GP.mPed1_Chave_ano)+';'+
                       FloatToStr(mCompras_GP.mPed1_Chave)+';'
                       +'Compra Mercadoria;RET;'+'frm_pFOR01_4365_',tb_pfor02_orcPF2QTDP.Value)
      else
         flbaiest(mCompras_GP.mped1_Filial,mCompras_GP.mPed1_Tipo,0,0,tb_pfor02_orcPF2CODPRO_INT.AsString,
                         'PC;'+
                       FloatToStr(mCompras_GP.mPed1_CodEmp)+';'+
                       FloatToStr(mCompras_GP.mPed1_Chave_ano)+';'+
                       FloatToStr(mCompras_GP.mPed1_Chave)+';'
                       +'Compra Mercadoria;RET;'+'frm_pFOR01_4365_',tb_pfor02_orcPF2QTDP.Value);

      tb_pfor02_orc.Next;
      end;
      end;
}
   end
else
   begin
   if mCompras_GP.mPed1_Tipo<2 then
      begin
      tb_pfor02_orc.First;
      While not tb_pfor02_orc.Eof do
        begin
        flbaientpen(1,0,tb_pfor02_orcPF2CODPRO_INT.AsString,tb_pfor02_orcPF2QTDP.Value);
        tb_pfor02_orc.Next;
        end;
      end;
   end;



if (mOperacao_Normal) then
   begin
   query_exe.Close;
   query_exe.SQL.Clear;
   query_exe.SQL.add('Update '+mtab_cadpf1+' set PF1STATUS=1,PF1QTDMAN=PF1QTDMAN+1 '
                     +', PF1DATCONF=:DATCONF'
                     +'    where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPF',[]),'',' PF1CODEMP=0'+InttoStr(codemp)+' and ')
                     +' PF1LOTSEQ=0'+FloatToStr(mCompras_GP.mPed1_Chave_ano)
                     +' and PF1CHAVE=0'+FloatToStr(mCompras_GP.mped1_Chave));
   if pdatasis>Date then
      query_exe.ParamByName('DATCONF').AsDateTime := StrToDateTime(FormatDatetime(fdt, pdatasis)+' '+FormatDateTime('hh:nn:ss', time))
   else
      query_exe.ParamByName('DATCONF').AsDateTime := now;
   try
      query_exe.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_exe,7953,'func Erro:'+e.Message ,'CADPF1');
      end;
      end;
   end;
if Query_RE<>nil then
   FreeAndNil(Query_RE);

FreeAndNil(query_exe);
FreeAndNil(query_cons);
FreeAndNil(query_cons04);
FreeAndNil(frm_ocorrencias);
FreeAndNil(frm_agde);

fmensagem('Concluido!',0,['0'],0);
sbnCancelarClick(self);



end;

procedure TFrm_Compras_Orc.edt_numnfChange(Sender: TObject);
begin
if (edt_numnf.Modified) and (mCompras_GP.mped1_Chave>0)  then
   begin
   mped_Alterou_Cab:=true;
   if (not tb_pfor02_orc.IsEmpty) then
      mCompras_GP.mPed1_AltDup:='N';
   end;

end;

procedure TFrm_Compras_Orc.tb_pfor02_orcAfterDelete(DataSet: TDataSet);
begin
if tb_pfor02_orcPF2ITEM.AsInteger>mped02_itemexcluido then
   fRenomearItem(mped02_itemexcluido);

end;

function TFrm_Compras_Orc.fRenomearItem(pItemRemovido: Integer):Boolean;
var
Query_Item: TQuery;
mpos_reg: TBookmark;
begin
result:=true;
mlocalizando_pedido:=true;
Query_Item:=tQuery.Create(nil);

Query_Item.DatabaseName:='SG_ASSOC';
Query_Item.Close;
Query_Item.SQL.Clear;
Query_Item.SQL.Add('Update '+mtab_cadpf2+' set PF2ITEM=PF2ITEM-1 '
                  +' where PF2CHAVE=:CHAVE '
                  +' and PF2LOTSEQ=:LOTSEQ '
                  +' and PF2CODEMP=:CODEMP'
                  +' and PF2ITEM>=:ITEM ');
Query_Item.ParamByName('CHAVE').AsInteger        :=mCompras_GP.mped1_Chave;
Query_Item.ParamByName('LOTSEQ').AsInteger       :=mCompras_GP.mPed1_Chave_ano;
Query_Item.ParamByName('CODEMP').AsInteger       :=mCompras_GP.mPed1_Codemp;
Query_Item.ParamByName('ITEM').AsInteger         :=pItemRemovido;
try
   Query_Item.ExecSQL;
   fdm1StartCommit;
except
   result:=false;
   end;
if Log_TipoLote=1 then
   begin
   Query_Item.Close;
   Query_Item.SQL.Clear;
   Query_Item.SQL.Add('Update '+mtab_cadpf2_lotes+' set PF2L_ITEM=PF2L_ITEM-1 '
                  +' where PF2L_CHAVE=:CHAVE '
                  +' and PF2L_LOTSEQ=:LOTSEQ '
                  +' and PF2L_CODEMP=:CODEMP '
                  +' and PF2L_ITEM>=:ITEM ');
   Query_Item.ParamByName('CHAVE').AsInteger        :=mCompras_GP.mped1_Chave;
   Query_Item.ParamByName('LOTSEQ').AsInteger       :=mCompras_GP.mPed1_Chave_ano;
   Query_Item.ParamByName('CODEMP').AsInteger       :=mCompras_GP.mPed1_Codemp;
   Query_Item.ParamByName('ITEM').AsInteger         :=pItemRemovido;
   try
      Query_Item.ExecSQL;
      fdm1StartCommit;
   except
      result:=false;
      end;
   end;
// INICIO


// TERMINO


FreeAndNil(Query_item);
mpos_reg:=tb_pfor02_orc.GetBookmark;
While not tb_pfor02_orc.Eof do
   begin
   tb_pfor02_orc.Edit;
   tb_pfor02_orcPF2ITEM.Value:=tb_pfor02_orcPF2ITEM.Value-1;
   tb_pfor02_orc.Post;
   tb_pfor02_orc.Next;
   end;
mlocalizando_pedido:=false;

end;


procedure TFrm_Compras_Orc.edt_Imp_Imp_ValorEnter(Sender: TObject);
begin
mant_Imp_Imp_Valor:=valfloat(edt_Imp_Imp_Valor.Text);
end;

procedure TFrm_Compras_Orc.edt_outdesp_icms_aliqExit(Sender: TObject);
begin
if mCompras_GP.mPed1_OutDesp_icms_aliq<>valfloat(edt_outdesp_icms_aliq.Text) then
   begin
   mCompras_GP.mPed1_OutDesp_icms_aliq:=valfloat(edt_outdesp_icms_aliq.Text);

   edt_outdesp_icms_aliq.Text:=Formatfloat(mcasas, mCompras_GP.mPed1_OutDesp_icms_aliq);

   if (mCompras_GP.mPed1_OutDesp_icms_aliq>0) and (mCompras_GP.mPed1_OutDesp>0) then
      mCompras_GP.mPed1_OutDesp_icms_valor:=Arredonda( (mCompras_GP.mPed1_OutDesp*mCompras_GP.mPed1_OutDesp_icms_aliq/100) ,2)
   else
      mCompras_GP.mPed1_OutDesp_icms_valor:=0;
   edt_outdesp_icms_valor.Text:=Formatfloat(mcasas, mCompras_GP.mPed1_OutDesp_icms_valor);
   fRecalcularPedido(3,'S');
   end;

end;

procedure TFrm_Compras_Orc.edt_outdesp_icms_valorExit(Sender: TObject);
begin
edt_outdesp_icms_valor.Text:=Formatfloat(mcasas, valfloat(edt_outdesp_icms_valor.Text));
if mCompras_GP.mPed1_OutDesp_icms_valor<>valfloat(edt_outdesp_icms_valor.Text) then
   begin
   mCompras_GP.mPed1_OutDesp_icms_valor:=valfloat(edt_outdesp_icms_valor.Text);
   fRecalcularPedido(3,'S');
   mped_Alterou_Cab:=true;
   end;

end;

procedure TFrm_Compras_Orc.edt_IPIFRETEExit(Sender: TObject);
begin
edt_IPIFRETE.Text:=FormatFloat(mcasas,ValFloat(edt_IPIFRETE.Text));
if mCompras_GP.mPed1_ValFre_ipi<>ValFloat(edt_IPIFRETE.Text) then
   begin
   mCompras_GP.mPed1_ValFre_ipi:=ValFloat(edt_IPIFRETE.Text);
   fRecalcularPedido(3,'S');
   end;

end;

procedure TFrm_Compras_Orc.RGFRETEPCClick(Sender: TObject);
begin
   mped_Alterou_Cab:=true;
   if (not tb_pfor02_orc.IsEmpty) then
      mCompras_GP.mPed1_AltDup:='N';

end;

procedure TFrm_Compras_Orc.edt_siv_freteChange(Sender: TObject);
begin
if (edt_siv_frete.Modified) and (mCompras_GP.mped1_Chave>0)  then
   begin
   mped_Alterou_Cab:=true;
   if (not tb_pfor02_orc.IsEmpty) then
      mCompras_GP.mPed1_AltDup:='N';
   end;

end;

procedure TFrm_Compras_Orc.edt_nfe_chaveChange(Sender: TObject);
begin
if (edt_nfe_chave.Modified) and (mCompras_GP.mped1_Chave>0)  then
   begin
   mped_Alterou_Cab:=true;
   if (not tb_pfor02_orc.IsEmpty) then
      mCompras_GP.mPed1_AltDup:='N';

   end;

end;

procedure TFrm_Compras_Orc.CB_MODELOClick(Sender: TObject);
begin
   mped_Alterou_Cab:=true;
   if (not tb_pfor02_orc.IsEmpty) then
      mCompras_GP.mPed1_AltDup:='N';
if CB_MODELO.ItemIndex<0 then
with CB_MODELO do
  ItemIndex := Items.IndexOf(CB_MODELO.Text);
mCompras_GP.mPed1_Modelo:=copy(CB_MODELO.Text,1,2);

end;

procedure TFrm_Compras_Orc.edt_datentChange(Sender: TObject);
begin
if (edt_datent.Modified) and (mCompras_GP.mped1_Chave>0)  then
   begin
   mped_Alterou_Cab:=true;
   if (not tb_pfor02_orc.IsEmpty) then
      mCompras_GP.mPed1_AltDup:='N';

   end;

end;

procedure TFrm_Compras_Orc.edt_datanfChange(Sender: TObject);
begin
if (edt_datanf.Modified) and (mCompras_GP.mped1_Chave>0)  then
   begin
   mped_Alterou_Cab:=true;
   if (not tb_pfor02_orc.IsEmpty) then
      mCompras_GP.mPed1_AltDup:='N';

   end;

end;

procedure TFrm_Compras_Orc.cb_gravarnfClick(Sender: TObject);
begin
{   mped_Alterou_Cab:=true;
   if (not tb_pfor02_orc.IsEmpty) then
      mCompras_GP.mPed1_AltDup:='N';}
end;

procedure TFrm_Compras_Orc.CB_CASASDClick(Sender: TObject);
var
query_pfor01: tQuery;

begin
mped_Alterou_Cab:=true;
if valint(CB_CASASD.text)<1 then
   begin
   mQtdCas_arredpu:=DM1.Tb_PargerPCASASPU.AsInteger;
   mCompras_GP.mPed1_QtdDec:=DM1.Tb_PargerPCASASPU.AsInteger;
   end
else
   begin
   mQtdCas_arredpu:=CB_CASASD.ItemIndex+1;
   mCompras_GP.mPed1_QtdDec:=CB_CASASD.ItemIndex+1;
   end;


mDisplayFormatPU:='#,##0';

if mCompras_GP.mPed1_QtdDec>0 then
   mDisplayFormatPU:=mDisplayFormatPU+'.'+insere('0','0',mCompras_GP.mPed1_QtdDec);

tb_pfor02_orcPF2PU_INT.DisplayFormat     :=mDisplayFormatPU;
tb_pfor02_orcPF2PU_EXT.DisplayFormat     :=mDisplayFormatPU;
if not tb_pfor02_orc.IsEmpty then
   begin
   query_pfor01:=tQuery.Create(nil);
   query_pfor01.DatabaseName:='SG_ASSOC';
   query_pfor01.Close;
   query_pfor01.SQL.Clear;
   query_pfor01.SQL.add('Update '+mtab_cadpf2+' set PF2PU=ROUND(PF2PU,'+IntToStr(mQtdCas_arredpu)+')'
                      +' where '
                      +'  (PF2CODEMP=:CODEMP ) '
                      +' and PF2CHAVE=:CHAVE '
                      +' and PF2LOTSEQ=:LOTSEQ ');
   query_pfor01.ParamByName('CODEMP').AsInteger:=mCompras_GP.mPed1_CodEmp;
   Query_pfor01.ParamByName('CHAVE').AsInteger:=mCompras_GP.mped1_Chave;
   Query_pfor01.ParamByName('LOTSEQ').AsInteger:=mCompras_GP.mPed1_Chave_ano;
   try
      query_pfor01.ExecSQL;
      fdm1StartCommit;
   except
      end;
   fRecalcularPedido(3,'S');

   freeandNil(Query_pfor01);
   end;

end;

procedure TFrm_Compras_Orc.edt_codtraExit(Sender: TObject);
var
  msg_cq: String;
begin
if valint(edt_codtra.Text)=0 then
   edt_nomtra.Text:=''
else
   edt_codtra.Text:=fdeixanum2(edt_codtra.Text);
if Trim(edt_codtra.Text)='' then
   exit;
if not flcadtra(1,0,edt_codtra.Text) then
   begin
   if edt_codtra.Enabled then
      begin
      verteclado(0);
      MessageDlg('Transportadora não Cadastrado!',mtWarning,[mbOk],0);
      edt_codtra.SetFocus;
      exit;
      end;
   end;
edt_nomtra.Text :=DM1.Tb_TraTRRAZTRA.AsString;

if not DM1.Tb_TraTRCODBLOQ.IsNull then
  if (DM1.Tb_TraTRCODBLOQ.AsInteger=1) then
    msg_cq := 'Transportadora Desqualificado.'+#13+'Motivo '+DM1.Tb_TraTRMOTBLOQ.AsString+#13;
if not DM1.Tb_TraTRDTVCE.IsNull then
  if ((DM1.Tb_TraTRDTVCE.AsDateTime>=StrToDate('01/01/1900')) and (DM1.Tb_TraTRDTVCE.AsDateTime<Now)) then
    msg_cq := msg_cq +'Data C.E. Venc. '+FormatDateTime('dd/mm/yyyy',DM1.Tb_TraTRDTVCE.AsDateTime)+#13;
if not DM1.Tb_TraTRDTVCS.IsNull then
  if ((DM1.Tb_TraTRDTVCS.AsDateTime>=StrToDate('01/01/1900')) and (DM1.Tb_TraTRDTVCS.AsDateTime<Now)) then
    msg_cq := msg_cq +'Data C.S. Venc. '+FormatDateTime('dd/mm/yyyy',DM1.Tb_TraTRDTVCS.AsDateTime)+#13;
if not DM1.Tb_TraTRDTVPS.IsNull then
  if ((DM1.Tb_TraTRDTVPS.AsDateTime>=StrToDate('01/01/1900')) and (DM1.Tb_TraTRDTVPS.AsDateTime<Now)) then
    msg_cq := msg_cq +'Data Prod. Saud. Venc. '+FormatDateTime('dd/mm/yyyy',DM1.Tb_TraTRDTVPS.AsDateTime)+#13;
if not DM1.Tb_TraTRDTVS.IsNull then
  if ((DM1.Tb_TraTRDTVS.AsDateTime>=StrToDate('01/01/1900')) and (DM1.Tb_TraTRDTVS.AsDateTime<Now)) then
    msg_cq := msg_cq +'Data Saneantes Venc. '+FormatDateTime('dd/mm/yyyy',DM1.Tb_TraTRDTVS.AsDateTime)+#13;
if not DM1.Tb_TraTRDTAVNUM.IsNull then
  if ((DM1.Tb_TraTRDTAVNUM.AsDateTime>=StrToDate('01/01/1900')) and (DM1.Tb_TraTRDTAVNUM.AsDateTime<Now)) then
    msg_cq := msg_cq +'Data Alv. Sanit. Venc. '+FormatDateTime('dd/mm/yyyy',DM1.Tb_TraTRDTAVNUM.AsDateTime)+#13;
if msg_cq<>'' then
  ShowMessage(msg_cq);



mCompras_GP.mPed1_CodTra:=ValInt(edt_codtra.Text);


end;

procedure TFrm_Compras_Orc.edt_codtraChange(Sender: TObject);
begin
if (edt_codtra.Modified) and (mCompras_GP.mped1_Chave>0)  then
   begin
   mped_Alterou_Cab:=true;
   if (not tb_pfor02_orc.IsEmpty) then
      mCompras_GP.mPed1_AltDup:='N';

   end;

end;

procedure TFrm_Compras_Orc.edt_codtraKeyPress(Sender: TObject;
  var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%') then
   begin
   edt_codtra.Text:=fChamaTra(0,'_venda',key);
   edt_codtraExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Compras_Orc.RGFRETEPCExit(Sender: TObject);
begin
if valint(RGFRETEPC.Text)<0 then
   RGFRETEPC.ItemIndex:=0;
mCompras_GP.mPed1_Frete_CIFFOB:=valint(copy(RGFRETEPC.Text,1,1));

end;

procedure TFrm_Compras_Orc.edt_nfe_chaveExit(Sender: TObject);
begin

if length(fdeixanum(mCompras_GP.mPed1_Nfe_Chave))>2 then
   begin
   if not ValidarChaveNFe(fdeixanum(edt_nfe_chave.Text)) then
      begin
      MessageDlg('Chave da nfe '+edt_nfe_chave.Text+' é invalida !',mtWarning,[mbOk],0);
      edt_nfe_chave.Text := mCompras_GP.mPed1_Nfe_Chave;
      edt_nfe_chave.setfocus;
      exit;
      end;
   end;

mCompras_GP.mPed1_Nfe_Chave:=fdeixanum(edt_nfe_chave.Text);

end;

procedure TFrm_Compras_Orc.edt_numnfExit(Sender: TObject);
begin
edt_numnf.Text:=fdeixanum(edt_numnf.Text);
mCompras_GP.mPed1_NumNF:=fsonumero(edt_numnf.Text);
if (fsonumero(edt_numnf.text)>0) and (fsonumero(edt_numdup.text)=0) then
   begin
   edt_numdup.text:=edt_numnf.text;
   edt_numdupExit(self);
   end;

end;

procedure TFrm_Compras_Orc.edt_serieChange(Sender: TObject);
begin
if (edt_serie.Modified)  then
   begin
   mped_Alterou_Cab:=true;
   if (not tb_pfor02_orc.IsEmpty) then
      mCompras_GP.mPed1_AltDup:='N';
   end;

end;

procedure TFrm_Compras_Orc.edt_serieExit(Sender: TObject);
begin
mCompras_GP.mPed1_Serie:=edt_serie.Text;

end;

procedure TFrm_Compras_Orc.edt_datentExit(Sender: TObject);
begin
mCompras_GP.mPed1_DataEnt:=edt_datent.Date;

end;

procedure TFrm_Compras_Orc.edt_datanfExit(Sender: TObject);
var
  data: TDate;
begin
mCompras_GP.mPed1_DataNF:=edt_datanf.Date;
data := edt_datanf.Date;
mImportando:=True;
tb_pfor01_parc.First;
while not tb_pfor01_parc.Eof do
  begin
  tb_pfor01_parc.Edit;
  tb_pfor01_parcPF1VDATAV.AsDateTime:=data+tb_pfor01_parcPF1VPRAZO.AsFloat;
  tb_pfor01_parc.Post;
  tb_pfor01_parc.Next;
  end;
mImportando:=False;

end;

procedure TFrm_Compras_Orc.tb_pfor01_parcBeforeEdit(DataSet: TDataSet);
begin
if sbnGravar.Enabled=false then
   begin
   abort;
   exit;
   end
else if mCorrecaodoPedido then
   begin
   MessageDlg('Não é permitido alterar a forma de pagamento em modo de correção!',mtInformation,[mbOk],0);
   abort;
   exit;
   end;

end;

procedure TFrm_Compras_Orc.tb_pfor01_parcBeforeInsert(DataSet: TDataSet);
begin
if sbnGravar.Enabled=false then
   begin
   abort;
   exit;
   end
else if mCorrecaodoPedido then
   begin
   MessageDlg('Não é permitido alterar a forma de pagamento em modo de correção!',mtInformation,[mbOk],0);
   abort;
   exit;
   end;

end;

procedure TFrm_Compras_Orc.edt_numdupChange(Sender: TObject);
begin
if (edt_numdup.Modified) and (mCompras_GP.mped1_Chave>0)  then
   begin
   mped_Alterou_Cab:=true;
   if (not tb_pfor02_orc.IsEmpty) then
      mCompras_GP.mPed1_AltDup:='N';
   end;

end;

procedure TFrm_Compras_Orc.edt_numdupExit(Sender: TObject);
begin
edt_numdup.Text:=fdeixanum(edt_numdup.Text);
if mCompras_GP.mped1_numdup<>fsonumero(edt_numdup.Text) then
   begin
   mCompras_GP.mped1_numdup:=fsonumero(edt_numdup.Text);
   if not tb_pfor02_orc.IsEmpty then
      mCompras_GP.fGravarPed01(1);
   fRecalcularPedido(3,'S');
   end;

end;

procedure TFrm_Compras_Orc.cb_gravardpClick(Sender: TObject);
begin
   mped_Alterou_Cab:=true;
   if (not tb_pfor02_orc.IsEmpty) then
      mCompras_GP.mPed1_AltDup:='N';

end;

procedure TFrm_Compras_Orc.cb_gravardpExit(Sender: TObject);
begin


if cb_gravardp.Checked then
   mCompras_GP.mped1_gravdp:=0
else
   mCompras_GP.mped1_gravdp:=1;
if mant_ped1_gravdp <> mCompras_GP.mped1_gravdp then
   begin
   fRecalcularPedido(3,'S');
   end;

end;

procedure TFrm_Compras_Orc.edt_desdChange(Sender: TObject);
begin
if (edt_desd.Modified) and (mCompras_GP.mped1_Chave>0)  then
   begin
   mped_Alterou_Cab:=true;
   if (not tb_pfor02_orc.IsEmpty) then
      mCompras_GP.mPed1_AltDup:='N';
   end;

end;

procedure TFrm_Compras_Orc.edt_desdExit(Sender: TObject);
begin
edt_desd.Text:=trim(edt_desd.Text);
if mCompras_GP.mped1_desd<>edt_desd.Text then
   begin
   mCompras_GP.mped1_desd:=edt_desd.Text;
   if not tb_pfor02_orc.IsEmpty then
      mCompras_GP.fGravarPed01(1);
   fRecalcularPedido(3,'S');
   end;

end;

procedure TFrm_Compras_Orc.edt_outvdup0Exit(Sender: TObject);
begin
edt_outvdup.Text:=fdeixanum(edt_outvdup.Text);

end;

procedure TFrm_Compras_Orc.edt_siv_freteExit(Sender: TObject);
begin
edt_siv_frete.Text:=FormatFloat(mcasas,  ValFloat(edt_siv_frete.Text));
mCompras_GP.mPed1_siv_frete:=ValFloat(edt_siv_frete.Text);
fSomarFPgto(0);


end;

procedure TFrm_Compras_Orc.edt_siv_dareChange(Sender: TObject);
begin
if (edt_siv_dare.Modified) and (mCompras_GP.mped1_Chave>0)  then
   begin
   mped_Alterou_Cab:=true;
   if (not tb_pfor02_orc.IsEmpty) then
      mCompras_GP.mPed1_AltDup:='N';
   end;

end;

procedure TFrm_Compras_Orc.edt_siv_dareExit(Sender: TObject);
begin
edt_siv_dare.Text:=fdeixanum(edt_siv_dare.Text);
mCompras_GP.mPed1_siv_dare:=ValFloat(edt_siv_dare.Text);

end;

procedure TFrm_Compras_Orc.edt_siv_outrosExit(Sender: TObject);
begin
mCompras_GP.mPed1_siv_outros:=ValFloat(edt_siv_outros.Text);
edt_siv_outros.Text:=FormatFloat('#,##0.00',mCompras_GP.mPed1_siv_outros);
end;

procedure TFrm_Compras_Orc.edt_siv_outrosChange(Sender: TObject);
begin
if (edt_siv_outros.Modified) and (mCompras_GP.mped1_Chave>0)  then
   begin
   mped_Alterou_Cab:=true;
   if (not tb_pfor02_orc.IsEmpty) then
      mCompras_GP.mPed1_AltDup:='N';
   end;

end;

procedure TFrm_Compras_Orc.Tb_PF2_LotesBeforeInsert(DataSet: TDataSet);
begin
if sbnGravar.Enabled=false then
   begin
   abort;
   exit;
   end;
if mCorrecaodoPedido then
   begin
   MessageDlg('Não é permitido alterar a forma de pagamento em modo de correção!',mtInformation,[mbOk],0);
   abort;
   exit;
   end;

end;

procedure TFrm_Compras_Orc.CB_FILIALEnter(Sender: TObject);
begin
    mant_filial:=CB_FILIAL.ItemIndex;

end;

procedure TFrm_Compras_Orc.CB_FILIALExit(Sender: TObject);
var
Query_filial: TQuery;
begin
if (CB_FILIAL.ItemIndex<0) and (trim(CB_FILIAL.Text)<>'') then
   begin
   with CB_FILIAL do
      ItemIndex := Items.IndexOf(CB_FILIAL.Text);
  end;


if (mant_filial<>CB_FILIAL.ItemIndex)  then
   begin
   Query_filial:=TQuery.Create(Nil);
   Query_filial.DatabaseName:='SG_ASSOC';
   Query_filial.Close;
   Query_filial.SQL.Clear;
   Query_filial.SQL.Add('Select CFFILIAL,CFNOME from CADPRO_FILIAL where (CFCODEMP=:CODEMP or CFCODEMP=:CODEMP_FILIAL) '
                        +' and CFNOME=:NOME ');
   Query_filial.ParamByName('CODEMP').AsInteger:=codemp;
   if codemp>100 then
      Query_filial.ParamByName('CODEMP_FILIAL').AsInteger:=codemp-100
   else
      Query_filial.ParamByName('CODEMP_FILIAL').AsInteger:=codemp+100;
   Query_filial.ParamByName('NOME').AsString:=CB_FILIAL.Text;
   Query_filial.Open;
   if Query_filial.IsEmpty then
      begin
      MessageDlg('Local de Estoque Não Encontrado!',mtWarning,[mbOk],0);
      CB_FILIAL.ItemIndex:=mant_filial;
      freeandnil(query_filial);
      exit;
      end
   else
      mCompras_GP.mped1_Filial:=Query_filial.fieldbyName('CFFILIAL').AsInteger;
   mped_Alterou_Cab:=true;
   freeandnil(query_filial);
   end;

end;

procedure TFrm_Compras_Orc.FormShow(Sender: TObject);
var
Query_temp: TQuery;
begin
fTestareCriarTriggers;

//mqtdchange:=0;
mImportando:=false;

mem_cst_csosn.Open;
mem_cst_csosn.Append;
mem_cst_csosncst.value:='00';
mem_cst_csosncsosn.value:='101';
mem_cst_csosn.Post;

mem_cst_csosn.Append;
mem_cst_csosncst.value:='00';
mem_cst_csosncsosn.value:='102';
mem_cst_csosn.Post;

mem_cst_csosn.Append;
mem_cst_csosncst.value:='10';
mem_cst_csosncsosn.value:='201';
mem_cst_csosn.Post;

mem_cst_csosn.Append;
mem_cst_csosncst.value:='10';
mem_cst_csosncsosn.value:='202';
mem_cst_csosn.Post;

mem_cst_csosn.Append;
mem_cst_csosncst.value:='20';
mem_cst_csosncsosn.value:='101';
mem_cst_csosn.Post;

mem_cst_csosn.Append;
mem_cst_csosncst.value:='20';
mem_cst_csosncsosn.value:='102';
mem_cst_csosn.Post;


mem_cst_csosn.Append;
mem_cst_csosncst.value:='30';
mem_cst_csosncsosn.value:='201';
mem_cst_csosn.Post;

mem_cst_csosn.Append;
mem_cst_csosncst.value:='30';
mem_cst_csosncsosn.value:='202';
mem_cst_csosn.Post;


mem_cst_csosn.Append;
mem_cst_csosncst.value:='40';
mem_cst_csosncsosn.value:='300';
mem_cst_csosn.Post;

mem_cst_csosn.Append;
mem_cst_csosncst.value:='40';
mem_cst_csosncsosn.value:='400';
mem_cst_csosn.Post;

mem_cst_csosn.Append;
mem_cst_csosncst.value:='41';
mem_cst_csosncsosn.value:='103';
mem_cst_csosn.Post;

mem_cst_csosn.Append;
mem_cst_csosncst.value:='41';
mem_cst_csosncsosn.value:='300';
mem_cst_csosn.Post;

mem_cst_csosn.Append;
mem_cst_csosncst.value:='41';
mem_cst_csosncsosn.value:='400';
mem_cst_csosn.Post;


mem_cst_csosn.Append;
mem_cst_csosncst.value:='50';
mem_cst_csosncsosn.value:='300';
mem_cst_csosn.Post;

mem_cst_csosn.Append;
mem_cst_csosncst.value:='50';
mem_cst_csosncsosn.value:='400';
mem_cst_csosn.Post;


mem_cst_csosn.Append;
mem_cst_csosncst.value:='51';
mem_cst_csosncsosn.value:='300';
mem_cst_csosn.Post;



mem_cst_csosn.Append;
mem_cst_csosncst.value:='60';
mem_cst_csosncsosn.value:='500';
mem_cst_csosn.Post;


mem_cst_csosn.Append;
mem_cst_csosncst.value:='70';
mem_cst_csosncsosn.value:='201';
mem_cst_csosn.Post;

mem_cst_csosn.Append;
mem_cst_csosncst.value:='70';
mem_cst_csosncsosn.value:='202';
mem_cst_csosn.Post;


mem_cst_csosn.Append;
mem_cst_csosncst.value:='90';
mem_cst_csosncsosn.value:='900';
mem_cst_csosn.Post;


Query_temp:=tQuery.Create(nil);
Query_temp.DatabaseName:='SG_ASSOC';
Query_temp.close;
Query_temp.SQL.Clear;
Query_temp.SQL.Add('SELECT CFNOME FROM CADPRO_FILIAL WHERE (CFCODEMP=:CODEMP_MENOR OR CFCODEMP=:CODEMP_MAIOR)  order by CFFILIAL ');
Query_temp.parambyName('CODEMP_MENOR').AsInteger:=codemp;
if codemp>100 then
   Query_temp.parambyName('CODEMP_MAIOR').AsInteger:=codemp-100
else
   Query_temp.parambyName('CODEMP_MAIOR').AsInteger:=codemp+100;


Query_temp.open;
CB_FILIAL.Items.Clear;
While not Query_temp.Eof do
   begin
   CB_FILIAL.Items.Add(Query_temp.fieldbyName('CFNOME').asstring);
   Query_temp.Next;
   end;
FreeAndNil(query_temp);
fAjustarBotoes;

end;

procedure TFrm_Compras_Orc.DBGrid_lotesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key=46 then
  begin
  if not Tb_PF2_LotesPF2L_LOTE.IsNull then
    Tb_PF2_Lotes.Delete;
  end;
end;

procedure TFrm_Compras_Orc.edt_codCondPagEnter(Sender: TObject);
begin
mcodPv_ant:=edt_codcondpag.text;

end;

procedure TFrm_Compras_Orc.edt_desc_valorEnter(Sender: TObject);
begin
mPed_Desc_Ant:=valfloat(edt_desc_valor.text);
end;

procedure TFrm_Compras_Orc.cb_gravardpEnter(Sender: TObject);
begin
mant_ped1_gravdp:=mCompras_GP.mped1_gravdp;
end;

function TFrm_Compras_Orc.fCalcularPfor02(ptipo: Integer): boolean;
var
mValor_Temp: Real;
begin
if Tb_Pfor02_orc.state in [dsedit,dsinsert] then
   begin
   tb_pfor02_orcVALOR_TOTAL.AsFloat:=0;

   if (tb_pfor02_orcPF2QTDP.AsFloat>0) and (tb_pfor02_orcPF2PU_INT.AsFloat>0) then
      tb_pfor02_orcVALOR_TOTAL.AsFloat:=Arredonda( (tb_pfor02_orcPF2QTDP.AsFloat*tb_pfor02_orcPF2PU_INT.AsFloat),2);

   tb_pfor02_orcPF2DESC_TOTDES.AsFloat:=0;
   tb_pfor02_orcPF2ICMS_BASE.Value    :=0;


   if (tb_pfor02_orcVALOR_TOTAL.AsFloat>0) then
       begin
       mValor_Temp:=0;
       if (tb_pfor02_orcPF2DESC_VALOR.AsFloat>0) then
           mValor_Temp:=mValor_Temp+tb_pfor02_orcPF2DESC_VALOR.AsFloat;
       if (tb_pfor02_orcPF2DESC_PERC01.AsFloat>0) then
           begin
           mValor_Temp:=mValor_Temp+
                       Arredonda( ( (tb_pfor02_orcVALOR_TOTAL.AsFloat-mValor_Temp) * tb_pfor02_orcPF2DESC_PERC01.AsFloat/100) ,2) ;
           end;
       if (tb_pfor02_orcPF2DESC_PERC02.AsFloat>0) then
          begin
          mValor_Temp:=mValor_Temp+
                       Arredonda( ( (tb_pfor02_orcVALOR_TOTAL.AsFloat-mValor_Temp) * tb_pfor02_orcPF2DESC_PERC02.AsFloat/100) ,2) ;
          end;

       if (tb_pfor02_orcPF2DESC_PERC03.AsFloat>0) then
          begin
          mValor_Temp:=mValor_Temp+
                      Arredonda( ( (tb_pfor02_orcVALOR_TOTAL.AsFloat-mValor_Temp) * tb_pfor02_orcPF2DESC_PERC03.AsFloat/100) ,2) ;
          end;
       tb_pfor02_orcPF2DESC_TOTDES.AsFloat:=mValor_Temp;


       if (tb_pfor02_orcPF2IPI_PERC.AsFloat>0) then
           tb_pfor02_orcPF2IPI_VALOR.Value:=Arredonda( ((tb_pfor02_orcVALOR_TOTAL.Value) * tb_pfor02_orcPF2IPI_PERC.AsFloat / 100)  ,2) ;

       if (tb_pfor02_orcPF2PIS_PERC.AsFloat>0) then
           begin
            if (tb_pfor02_orcPF2PIS_PERC.AsFloat>99) then
                tb_pfor02_orcPF2PIS_PERC.AsFloat:=0.65;
           tb_pfor02_orcPF2PIS_VALOR.Value:=Arredonda( ((tb_pfor02_orcVALOR_TOTAL.Value-tb_pfor02_orcPF2DESC_TOTDES.AsFloat)
                                              * tb_pfor02_orcPF2PIS_PERC.AsFloat / 100)  ,2) ;
           end;

       
       if (tb_pfor02_orcPF2ICMS_PERC.AsFloat>0) then
          begin
          tb_pfor02_orcPF2ICMS_BASE.Value:=tb_pfor02_orcVALOR_TOTAL.AsFloat-tb_pfor02_orcPF2DESC_TOTDES.AsFloat;

          if mCompras_GP.mPed1_IcmsSobreIPI then
             tb_pfor02_orcPF2ICMS_BASE.Value:=tb_pfor02_orcPF2ICMS_BASE.Value+tb_pfor02_orcPF2IPI_VALOR.AsFloat;
//lindomar12052021
          if tb_pfor02_orcPF2ICMS_PRED.AsFloat>0 then
             begin
             tb_pfor02_orcPF2ICMS_BASE.Value:=tb_pfor02_orcPF2ICMS_BASE.Value
                            - Arredonda(
                           ((tb_pfor02_orcPF2ICMS_BASE.Value * tb_pfor02_orcPF2ICMS_PRED.AsFloat)/100), 2);
             end;
          tb_pfor02_orcPF2ICMS_VALOR.Value:=Arredonda( tb_pfor02_orcPF2ICMS_BASE.Value*(tb_pfor02_orcPF2ICMS_PERC.AsFloat/100) ,2);
          end;
       if (tb_pfor02_orcPF2ICMSSN_PERC.AsFloat>0) then
           tb_pfor02_orcPF2ICMSSN_VALOR.Value:=Arredonda( ((tb_pfor02_orcVALOR_TOTAL.Value-tb_pfor02_orcPF2DESC_TOTDES.AsFloat)
                                              * tb_pfor02_orcPF2ICMSSN_PERC.AsFloat / 100)  ,2) ;


       if (tb_pfor02_orcPF2COFINS_PERC.AsFloat>0) then
           tb_pfor02_orcPF2COFINS_VALOR.Value:=Arredonda( ((tb_pfor02_orcVALOR_TOTAL.Value-tb_pfor02_orcPF2DESC_TOTDES.AsFloat)
                                              * tb_pfor02_orcPF2COFINS_PERC.AsFloat / 100)  ,2) ;
        if ((tb_pfor02_orcPF2MODBCST.AsInteger=0) or (tb_pfor02_orcPF2MODBCST.AsInteger=5))
           and (tb_pfor02_orcPF2PRECO_MAXCONS.AsFloat>0) then
           tb_pfor02_orcPF2ST_BASE.AsFloat:=Arredonda( (tb_pfor02_orcPF2PRECO_MAXCONS.AsFloat*tb_pfor02_orcPF2QTDP.AsFloat),2)
        else if (tb_pfor02_orcPF2ST_IVA.AsFloat>0) then
           tb_pfor02_orcPF2ST_BASE.AsFloat:=Arredonda( (tb_pfor02_orcPF2PU_INT.AsFloat*tb_pfor02_orcPF2QTDP.AsFloat)
                                                      + (( (tb_pfor02_orcPF2PU_INT.AsFloat*tb_pfor02_orcPF2QTDP.AsFloat)*
                                                          tb_pfor02_orcPF2ST_IVA.AsFloat)/100)
                                                     ,2);

        if tb_pfor02_orcPF2ST_BASE.AsFloat>0 then
           begin
           if tb_pfor02_orcPF2ST_PERCRED.AsFloat>0 then
              begin
              tb_pfor02_orcPF2ST_BASE.AsFloat:=Arredonda( (tb_pfor02_orcPF2ST_BASE.AsFloat-
                    (tb_pfor02_orcPF2ST_BASE.AsFloat*tb_pfor02_orcPF2ST_PERCRED.AsFloat/100)),2);
              end;
           if tb_pfor02_orcPF2ST_ICMSCRED.AsFloat>0 then
              begin
              tb_pfor02_orcPF2ST_ICMS.AsFloat:=Arredonda( (((tb_pfor02_orcVALOR_TOTAL.AsFloat-tb_pfor02_orcPF2DESC_TOTDES.AsFloat)
                                               * tb_pfor02_orcPF2ST_ICMSCRED.AsFloat)/100) ,2);
              end;

           if tb_pfor02_orcPF2ST_ICMSDEB.AsFloat>0 then
              begin
              tb_pfor02_orcPF2ST_ICMS.AsFloat:= Arredonda( (((tb_pfor02_orcPF2ST_BASE.AsFloat*tb_pfor02_orcPF2ST_ICMSDEB.AsFloat)/100)
                                              -  tb_pfor02_orcPF2ST_ICMS.AsFloat),2);
              end;
           end;


{
0P.Máx.Cons
1Lista Negat
2ListaPositiva
3Lista neutra
4Iva
5Pauta
}

      end;
   end;

end;

procedure TFrm_Compras_Orc.DBGrid_fpgtoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
StrAux: String;
begin
if (Column.FieldName = 'PF1DATAV') or (Column.FieldName = 'PF1VDTDESCF') then
   begin
   if (Column.Field.IsNull) or (Column.Field.AsDateTime <= pDatanula) then
      begin
      StrAux := '---';
      with (Sender as TDBGrid).Canvas do
         TextRect(Rect, Rect.Right - TextWidth(StrAux) - 2, Rect.Top+3, StrAux);
      end;
   end;
end;

procedure TFrm_Compras_Orc.sbnPrecoClick(Sender: TObject);
var
  query_pfor01: tQuery;
begin
query_pfor01:=tQuery.Create(nil);
query_pfor01.DatabaseName:='SG_ASSOC';

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
query_pfor01.Close;
query_pfor01.SQL.Clear;
query_pfor01.SQL.add('Select PF1CODEMP,PF1CHAVE,PF1CODFOR,PF1DATA,PF1OBS  '
                    +' from '+mtab_cadpf1+' '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +'  (PF1CODEMP=:CODEMP ) '
                 +' and PF1CHAVE=:CHAVE '
                 +' and PF1LOTSEQ=:LOTSEQ ');
query_pfor01.ParamByName('CODEMP').AsInteger:=mCompras_GP.mPed1_CodEmp;
Query_pfor01.ParamByName('CHAVE').AsInteger:=mCompras_GP.mped1_Chave;
Query_pfor01.ParamByName('LOTSEQ').AsInteger:=mCompras_GP.mPed1_Chave_ano;
try
   Query_pfor01.Open;
except
   if not fVerificaRedeAtiva(true) then
      begin
      end
   else
      begin
      ex_erroSql_Novo(Query_pfor01,4292,'_lerarq','CADPF1');
      end;
   end;

if query_pfor01.IsEmpty then
   begin
   Fmensagem('Este Pedido foi excluido por outro usuario!',0,['0'],0);
   FreeAndNil(query_pfor01);
   exit;
   end;
FreeAndNil(query_pfor01);
Application.CreateForm(Tfrm_compras_orc_Precos,frm_compras_orc_Precos);
frm_compras_orc_Precos.mChave :=mCompras_GP.mped1_Chave;
frm_compras_orc_Precos.mCodemp:=mCompras_GP.mPed1_CodEmp;
frm_compras_orc_Precos.mLotSeq:=mCompras_GP.mPed1_Chave_ano;

try
   frm_compras_orc_Precos.fCarregarGrid(frm_compras_orc_Precos.mChave,frm_compras_orc_Precos.mCodEmp,frm_compras_orc_Precos.mLotseq);
except
   end;
frm_compras_orc_Precos.ShowModal;
Freeandnil(Frm_Compras_Orc_Precos);

end;

procedure TFrm_Compras_Orc.CB_TIPOClick(Sender: TObject);
begin
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Compras_Orc.edt_outvdupChange(Sender: TObject);
begin
if (edt_outvdup.Modified) and (mCompras_GP.mped1_Chave>0)  then
   begin
   mped_Alterou_Cab:=true;
   if (not tb_pfor02_orc.IsEmpty) then
      mCompras_GP.mPed1_AltDup:='N';
   end;

end;

procedure TFrm_Compras_Orc.edt_outvdupExit(Sender: TObject);
begin
if mCompras_GP.mPed1_OutVDup<>ValFloat(edt_outvdup.Text) then
   begin
    mCompras_GP.mPed1_OutVDup:=ValFloat(edt_outvdup.Text);
   if not tb_pfor02_orc.IsEmpty then
      mCompras_GP.fGravarPed01(1);
   fRecalcularPedido(3,'S');
   fSomarFPgto(0);
   end;

end;

procedure TFrm_Compras_Orc.DBE_ICMS_PREDExit(Sender: TObject);
begin
fCalcularPfor02(0);
end;

procedure TFrm_Compras_Orc.Panel_outrosExit(Sender: TObject);
begin
if tb_pfor02_orc.State in [dsedit,dsinsert] then
   tb_pfor02_orc.Post;
end;

procedure TFrm_Compras_Orc.edt_DtPrevEntExit(Sender: TObject);
begin
mCompras_GP.mPed1_DataPrevEnt:=edt_DtPrevEnt.Date;
end;

procedure TFrm_Compras_Orc.edt_DtPrevFatExit(Sender: TObject);
begin
mCompras_GP.mPed1_DataPrevFat:=edt_DtPrevFat.Date;

end;

procedure TFrm_Compras_Orc.edt_DtPrevEntChange(Sender: TObject);
begin
if (edt_DtPrevEnt.Modified) and (mCompras_GP.mped1_Chave>0)  then
  begin
  mped_Alterou_Cab:=true;
  if (not tb_pfor02_orc.IsEmpty) then
    mCompras_GP.mPed1_AltDup:='N';
  end;
end;

procedure TFrm_Compras_Orc.edt_DtPrevFatChange(Sender: TObject);
begin
if (edt_DtPrevFat.Modified) and (mCompras_GP.mped1_Chave>0)  then
  begin
  mped_Alterou_Cab:=true;
  if (not tb_pfor02_orc.IsEmpty) then
    mCompras_GP.mPed1_AltDup:='N';
  end;
end;

procedure TFrm_Compras_Orc.sbnSugestaoCprClick(Sender: TObject);
var
  mPreco_Uni: Real;
begin
if ValFloat(edt_codfor.Text)<=0 then
  begin
  fmensagem('Primeiro selecione um fornecedor valido!',0,['0'],0);
  edt_codfor.SetFocus;
  Exit;
  end;

if not tb_pfor02_orc.IsEmpty then
  begin
  fmensagem('Para utilizar esta opção não se pode ter itens digitados!',0,['0'],0);
  edt_codfor.SetFocus;
  Exit;
  end;

if Frm_Pfor01_PedAut=nil then
   Application.CreateForm(TFrm_Pfor01_PedAut, Frm_Pfor01_PedAut)
else
   begin
   Frm_Pfor01_PedAut.Free;
   Frm_Pfor01_PedAut:=nil;
   Application.CreateForm(TFrm_Pfor01_PedAut, Frm_Pfor01_PedAut);
   end;

if trim(edt_codfor.Text)<>'' then
   begin
   if flcadfor(1,1,edt_codfor.Text) then
      begin
      Frm_Pfor01_PedAut.CODFOR.Text:=edt_codfor.Text;
      Frm_Pfor01_PedAut.NOMFOR.Text:=edt_nomfor.Text;
      Frm_Pfor01_PedAut.MDT2.Text  :=FormatDatetime(fdt2, fdatafinal(-1,pdatasis));
      Frm_Pfor01_PedAut.MDT2.Text  :=FormatDatetime(fdt2,
                              fultdiames(StrToDate(Frm_Pfor01_PedAut.MDT2.Text)));
      Frm_Pfor01_PedAut.MDT1.Text  :=FormatDatetime(fdt2, fdatafinal(-2,
                                     StrToDateTime(Frm_Pfor01_PedAut.MDT2.Text)));
      Frm_Pfor01_PedAut.MDT1.Text  :=FormatDateTime(fdt2, StrtodAte('01/'+FormatDatetime('mm/yyyy',
                                     StrToDate(Frm_Pfor01_PedAut.MDT1.Text))));
      Frm_Pfor01_PedAut.bbGerar.click;
      end;
   end;
if Frm_Pfor01_PedAut.ShowModal=mrok then
   begin
   Frm_Pfor01_PedAut.Tb_PFor.First;
   While not Frm_Pfor01_PedAut.Tb_PFor.Eof do
      begin
      if Frm_Pfor01_PedAut.Tb_PForQTDPED.AsFloat<=0 then
         begin
         Frm_Pfor01_PedAut.Tb_PFor.Next;
         Continue;
         end;
      tb_pfor02_orc.Insert;
      DBGrid_itens.SelectedField:=tb_pfor02_orcPF2CODPRO_INT;
      tb_pfor02_orcPF2CODPRO_INT.AsString:=Frm_Pfor01_PedAut.Tb_PForCODPRO.AsString;
      DBGrid_itensColExit(self);
      tb_pfor02_orcPF2QTDP.AsFloat:=Frm_Pfor01_PedAut.Tb_PForQTDPED.AsFloat;
      tb_pfor02_orc.Post;
      Frm_Pfor01_PedAut.Tb_PFor.Next;
      end;
   end;
if Trim(mnomeView)<>'' then
   begin
   DM1.Query2.Close;
   DM1.Query2.Sql.Clear;
   DM1.Query2.SQL.Add('drop view '+mnomeView);
   try
      DM1.Query2.ExecSQL;
   except
      end;
   end;
Frm_Pfor01_PedAut.Free;
Frm_Pfor01_PedAut:=nil;
end;

procedure TFrm_Compras_Orc.CB_TIPOEnter(Sender: TObject);
begin
mtipo_ant:=cb_tipo.itemindex;
end;

procedure TFrm_Compras_Orc.Timer_alteracaoTimer(Sender: TObject);
begin
fBloqueiaLiberaPedido(1);

end;

procedure TFrm_Compras_Orc.CB_SIV_OUTROS_TIPOClick(Sender: TObject);
begin
mped_Alterou_Cab:=true;

try
   mCompras_GP.mPed1_siv_outros_tipo:=CB_SIV_OUTROS_TIPO.Text[1];
except
   mCompras_GP.mPed1_siv_outros_tipo:='V';
   end;


end;

procedure TFrm_Compras_Orc.CB_SIV_OUTROS_TIPO_PADRAOClick(Sender: TObject);
begin
fDeletaPadroes(-1,'_COMPRAS_ORC','CB_SIV_OUTROS_TIPO_PADRAO');
fGravaPadroes(-1,'CB_SIV_OUTROS_TIPO_PADRAO','Combobox','_COMPRAS_ORC',inttostr(CB_SIV_OUTROS_TIPO_PADRAO.ItemIndex));


end;

procedure TFrm_Compras_Orc.CB_SIV_OUTROS_TIPOExit(Sender: TObject);
begin
if mped_Alterou_Cab then
   begin
   mCompras_GP.fGravarPed01(1);
   fRecalcularPedido(3,'N');
   end;

end;


function TFrm_Compras_Orc.fValidarQuantidadesLote(pItem: Integer):boolean;
var
query_temp: tquery;
begin

query_temp:=TQuery.Create(nil);
query_temp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_temp.SQL.Clear;
query_temp.SQL.Add('select sum(PF2L_QTD) from CADPF2_LOTES_ORC '
                  +' where PF2L_CODEMP=:CODEMP '
                  +' and PF2L_CHAVE=:CHAVE '
                  +' and PF2L_LOTSEQ=:LOTSEQ '
                  +' and PF2L_ITEM=:ITEM ');
query_temp.parambyname('CODEMP').AsInteger :=mCompras_GP.mPed1_Codemp;
query_temp.parambyname('CHAVE').AsInteger  :=mCompras_GP.mped1_Chave;
query_temp.parambyname('LOTSEQ').AsInteger :=mCompras_GP.mPed1_Chave_ano;
query_temp.parambyname('ITEM').AsInteger   :=pItem;
try
   query_temp.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_temp,9149,'lerarq:'+e.Message ,'CADPF2_LOTES_ORC');
   end;
   end;
if arredonda(query_temp.Fields[0].AsFloat,3)<>arredonda(tb_pfor02_orcPF2QTDP.AsFloat,3) then
   begin
   if not (tb_pfor02_orc.State in [dsedit,dsinsert]) then
      tb_pfor02_orc.Edit;
   tb_pfor02_orcPF2QTDP.AsFloat:=query_temp.Fields[0].AsFloat;
   DBGrid_itens.SelectedField:=tb_pfor02_orcPF2QTDP;
   DBGrid_itensColExit(self);
   tb_pfor02_orc.Post;
   end;
query_temp.close;
freeandnil(query_temp);

end;

procedure TFrm_Compras_Orc.sbndadosfiscaisClick(Sender: TObject);
begin
if mCompras_GP.mped1_Chave=0 then
   exit;

Application.CreateForm(TFrm_Compras_dados_Fiscais,Frm_Compras_dados_Fiscais);

Frm_Compras_dados_Fiscais.mChave :=mCompras_GP.mped1_Chave;
Frm_Compras_dados_Fiscais.mCodemp:=mCompras_GP.mPed1_CodEmp;
Frm_Compras_dados_Fiscais.mLotSeq:=mCompras_GP.mPed1_Chave_ano;
Frm_Compras_dados_Fiscais.Label1.Caption:=Frm_Compras_dados_Fiscais.Label1.Caption+' Chave '+inttostr(mCompras_GP.mped1_Chave)+' '+edt_nomfor.Text;
Frm_Compras_dados_Fiscais.fLerpedido('N','N','N','N','N','N');
Frm_Compras_dados_Fiscais.ShowModal;
Freeandnil(Frm_Compras_dados_Fiscais);

end;
procedure TFrm_Compras_Orc.fAjustarBotoes;
var
mtop: integer;
begin
mtop:=sbnIncluir.Height;
if sbnLocalizar.Visible=true then
   begin
   sbnLocalizar.Top:=mtop;
   mtop:=mtop+sbnLocalizar.Height;
   end;

if sbnAlterar.Visible=true then
   begin
   sbnAlterar.Top:=mtop;
   mtop:=mtop+sbnAlterar.Height;
   end;

if sbngravar.Visible=true then
   begin
   sbngravar.Top:=mtop;
   mtop:=mtop+sbngravar.Height;
   end;

if sbnCancelar.Visible=true then
   begin
   sbnCancelar.Top:=mtop;
   mtop:=mtop+sbnCancelar.Height;
   end;




if sbnexcluir.Visible=true then
   begin
   sbnexcluir.Top:=mtop;
   mtop:=mtop+sbnexcluir.Height;
   end;


if sbnimpoutro.Visible=true then
   begin
   sbnimpoutro.Top:=mtop;
   mtop:=mtop+sbnimpoutro.Height;
   end;

if sbnSugestaoCPR.Visible=true then
   begin
   sbnSugestaoCPR.Top:=mtop;
   mtop:=mtop+sbnSugestaoCPR.Height;
   end;

if sbnImpXML.Visible=true then
   begin
   sbnImpXML.Top:=mtop;
   mtop:=mtop+sbnImpXML.Height;
   end;

if bbConfEntrada.Visible=true then
   begin
   bbConfEntrada.Top:=mtop;
   mtop:=mtop+bbConfEntrada.Height;
   end;


if sbnImprimir.Visible=true then
   begin
   sbnImprimir.Top:=mtop;
   mtop:=mtop+sbnImprimir.Height;
   end;

if cb_mod_las.Visible=true then
   begin
   cb_mod_las.Top:=mtop;
   mtop:=mtop+cb_mod_las.Height;
   end;

if sbnPreco.Visible=true then
   begin
   sbnPreco.Top:=mtop;
   mtop:=mtop+sbnPreco.Height;
   end;


if sbndadosFiscais.Visible=true then
   begin
   sbndadosFiscais.Top:=mtop;
   mtop:=mtop+sbndadosFiscais.Height;
   end;
if sbn_corrigir_lotes.Visible=true then
   begin
   sbn_corrigir_lotes.Top:=mtop;
   mtop:=mtop+sbn_corrigir_lotes.Height;
   end;

if sbnGerarOrcamentoVendas.Visible=true then
   begin
   sbnGerarOrcamentoVendas.Top:=mtop;
   mtop:=mtop+sbnGerarOrcamentoVendas.Height;
   end;

if bbSair.Visible=true then
   begin
   bbSair.Top:=mtop;
   mtop:=mtop+bbSair.Height;
   end;


end;

procedure TFrm_Compras_Orc.BitBtn1Click(Sender: TObject);
begin
lbl_resultado.caption:='Resultado: '+inttostr(fBuscareTestarID(edt_chave_id.text));

end;

procedure TFrm_Compras_Orc.sbn_corrigir_lotesClick(Sender: TObject);
begin
if mCompras_GP.mped1_Chave=0 then
   exit;
if mCompras_GP.mPed1_Situacao<>1 then
   begin
   MessageDlg('valido somente para pedidos confirmado!',mtWarning,[mbOk],0);
   exit;
   end;



Application.CreateForm(TFrm_Corrigir_Lotes_Compras,Frm_Corrigir_Lotes_Compras);

Frm_Corrigir_Lotes_Compras.mChave :=mCompras_GP.mped1_Chave;
Frm_Corrigir_Lotes_Compras.mCodemp:=mCompras_GP.mPed1_CodEmp;
Frm_Corrigir_Lotes_Compras.mLotSeq:=mCompras_GP.mPed1_Chave_ano;
Frm_Corrigir_Lotes_Compras.fLercadpfor;

Frm_Corrigir_Lotes_Compras.Label1.Caption:=Frm_Corrigir_Lotes_Compras.Label1.Caption+' Chave '+inttostr(mCompras_GP.mped1_Chave)+' '+edt_nomfor.Text;
Frm_Corrigir_Lotes_Compras.ShowModal;
Freeandnil(Frm_Corrigir_Lotes_Compras);

end;

procedure TFrm_Compras_Orc.cb_lotesAoInvesDescontoMod03Click(
  Sender: TObject);
begin
fDeletaPadroes(-1,'_COMPRAS_ORC','lotesAoInvesDescontoMod03');
fGravaPadroes(-1,'lotesAoInvesDescontoMod03','Combobox','_COMPRAS_ORC',iif(CB_lotesAoInvesDescontoMod03.Checked=true,'true','false'));


end;

procedure TFrm_Compras_Orc.sbn_novaClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg: TJPEGImage;

qr_cont_imagem: TQuery;
mChave: Integer;
mIDPF1: String;
begin
  inherited;


if mCompras_GP.mped1_id_new=0 then
   begin
   MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
   exit;
   end;

if not fLerGenerico_query('CADPF1','ROWID',' PF1CHAVE='+fdeixanum(edt_chave.text)+' and PF1CODEMP='+inttostr(codemp),query_consulta) then
   begin
   MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
   exit;
   end;

mIDPF1:=query_consulta.fieldbyname('ROWID').asstring;

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
   qr_cont_imagem.SQL.Add('Select max(PF_SEQ) as cod from CADPF_IMAGEM '
                    +' where PF_ID_PF01_NEW=:ID_PFOR01_NEW ');
   qr_cont_imagem.ParamByName('ID_PFOR01_NEW').AsInteger     :=mCompras_GP.mped1_id_new;
   qr_cont_imagem.open;
   mChave:=qr_cont_imagem.fieldbyName('cod').AsInteger+1;


   qr_cont_imagem.Close;
   qr_cont_imagem.SQL.Clear;
   qr_cont_imagem.SQL.Add('Insert into CADPF_IMAGEM ( '
                    +' PF_ROWID  '
                    +',PF_SEQ    '
                    +',PF_OBS    '
                    +',PF_IMAGEM '
                    +',PF_NOMEORI '
                    +',PF_ID_PF01_NEW '
                    +',PF_ID_NEW '
                    +') values ('
                    +' :PF_ROWID  '
                    +',:PF_SEQ    '
                    +',:PF_OBS    '
                    +',:PF_IMAGEM    '
                    +',:PF_NOMEORI '
                    +',:PF_ID_PF01_NEW    '
                    +',CADPF_IMAGEM_SEQ.NEXTVAL '
                    +')');

   qr_cont_imagem.ParamByName('PF_ROWID').AsString      :=mIDPF1;
   qr_cont_imagem.ParamByName('PF_SEQ').AsInteger      :=mChave;
   if trim(frm_Imagem_WebCam.edt_obs.Text)='' then
      qr_cont_imagem.ParamByName('PF_OBS').AsString    :='IMAGEM: '+IntToStr(mChave)
   else
      qr_cont_imagem.ParamByName('PF_OBS').AsString    :=frm_Imagem_WebCam.edt_obs.Text;

   qr_cont_imagem.ParamByName('PF_IMAGEM').LoadFromStream(imagestream, ftBlob);
   qr_cont_imagem.ParamByName('PF_NOMEORI').AsString    :=Fnomearq_Pasta(0, frm_Imagem_WebCam.mnomearquivo);
   qr_cont_imagem.ParamByName('PF_ID_PF01_NEW').AsInteger      :=mCompras_GP.mped1_id_new;
   try
      qr_cont_imagem.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(qr_cont_imagem,9788,'frm_dar','CADPF_IMAGEM');
      end;
   FreeAndNil(qr_cont_imagem);
   FreeAndNil(imagestream);
   if feImagem(frm_Imagem_WebCam.mNomeArquivo) then
      FreeAndNil(jpg);
   end;
freeandnil(frm_imagem_WebCam);
fLerImagem(mCompras_GP.mped1_id_new);



end;

procedure TFrm_Compras_Orc.sbn_alterarClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg: TJPEGImage;
query_ldr: TQuery;
mIDLC1: String;
begin
  inherited;
if fsonumero(edt_chave.text)=0  then
   exit;
if not fLerGenerico_query('CADPF1','ROWID',' PF1CHAVE='+fdeixanum(edt_chave.text)+' and PF1CODEMP='+Inttostr(codemp),query_consulta) then
      begin
      MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
      exit;
      end;
mIDLC1:=query_consulta.fieldbyname('ROWID').asstring;

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
   query_ldr.SQL.Add('Update CADPF_IMAGEM set '
                    +' PF_OBS=:PF_OBS '
                    +',PF_IMAGEM=:PF_IMAGEM '
                    +',PF_NOMEORI=:PF_NOMEORI '
                    +' where '
                    +' PF_ROWID=:PF_ROWID '
                    +' and PF_SEQ=:PF_SEQ'
                    );

   query_ldr.ParamByName('PF_ROWID').AsString      :=mIDLC1;
   query_ldr.ParamByName('PF_SEQ').AsInteger      :=Tb_PF_imagemPF_SEQ.AsInteger;



   if (trim(frm_Imagem_WebCam.edt_obs.Text)<>'') then
      query_ldr.ParamByName('PF_OBS').AsString:=trim(frm_Imagem_WebCam.edt_obs.Text)
   else if (trim(Tb_PF_imagemPF_OBS.AsString)='') then
      query_ldr.ParamByName('PF_OBS').AsString    :='IMAGEM: '+Tb_PF_imagemPF_OBS.AsString
   else
      query_ldr.ParamByName('PF_OBS').AsString    :=Tb_PF_imagemPF_OBS.AsString;



   query_ldr.ParamByName('PF_IMAGEM').LoadFromStream(imagestream, ftBlob);
   query_ldr.ParamByName('PF_NOMEORI').AsString    :=Fnomearq_Pasta(0, frm_Imagem_WebCam.mnomearquivo);

   try
      query_ldr.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(Query_ldr,9879,'frm_contrato','CADPF_IMAGEM');
      end;
   FreeAndNil(query_ldr);
   FreeAndNil(imagestream);
   if feImagem(frm_Imagem_WebCam.mNomeArquivo) then
      FreeAndNil(jpg);

   end;
freeandnil(frm_imagem_WebCam);


fLerImagem(mCompras_GP.mped1_id_new);



end;

procedure TFrm_Compras_Orc.sbnRenomearClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg: TJPEGImage;
query_ldr: TQuery;
mNovoNome: String;
mIDLC1: String;
begin
  inherited;
if fsonumero(edt_chave.Text)=0 then
   exit;

if not fLerGenerico_query('CADPF1','ROWID',' PF1CHAVE='+fdeixanum(edt_chave.text)+' and PF1CODEMP='+inttostr(codemp),query_consulta) then
   begin
   MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
   exit;
   end;
mIDLC1:=query_consulta.fieldbyname('ROWID').asstring;


mNovoNome:=InputBox('Nome Anterior '+Tb_pf_imagemPF_OBS.AsString , 'Informe o Novo Nome','');
if (trim(mNovoNome)<>'') and (mNovoNome<>Tb_PF_imagemPF_OBS.AsString) then
   begin
   query_ldr:=TQuery.create(Nil);
   query_ldr.databaseName:='SG_ASSOC';
   query_ldr.Close;
   query_ldr.SQL.Clear;
   query_ldr.SQL.Add('Update CADPF_IMAGEM set '
                    +' PF_OBS=:PF_OBS '
                    +' where '
                    +' PF_ROWID=:PF_ROWID '
                    +' and PF_SEQ=:PF_SEQ'
                    );

   query_ldr.ParamByName('PF_ROWID').AsString      :=mIDLC1;
   query_ldr.ParamByName('PF_SEQ').AsInteger      :=Tb_PF_imagemPF_SEQ.AsInteger;

   query_ldr.ParamByName('PF_OBS').AsString       :=mNovoNome;
   try
      query_ldr.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(Query_ldr,9940,'frm_contrato','CADPF_IMAGEM');
      end;
   FreeAndNil(query_ldr);

   end;


fLerImagem(mCompras_GP.mped1_id_new);


end;

procedure TFrm_Compras_Orc.sbn_excluirClick(Sender: TObject);
var
query_ldr: TQuery;
mIDLC1: String;
begin
  inherited;

if fsonumero(edt_chave.Text)=0 then
   exit;

if not fLerGenerico_query('CADPF1','ROWID',' PF1CHAVE='+fdeixanum(edt_chave.text)+' and PF1CODEMP='+inttostr(codemp),query_consulta) then
   begin
   MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
   exit;
   end;
mIDLC1:=query_consulta.fieldbyname('ROWID').asstring;


if Application.MessageBox(pchar( 'Quer Realmente excluir o registro '+Tb_PF_imagemPF_OBS.asstring),'confirmacao',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
query_ldr:=TQuery.create(Nil);
query_ldr.databaseName:='SG_ASSOC';
query_ldr.Close;
query_ldr.SQL.Clear;
query_ldr.SQL.Add('Delete  from CADPF_IMAGEM '
                 +' where PF_ROWID=:PF_ROWID '
                 +' and PF_SEQ=:SEQ ');
query_ldr.ParamByName('PF_ROWID').Asstring   :=mIDLC1;
query_ldr.ParamByName('SEQ').AsInteger     :=Tb_PF_imagemPF_SEQ.AsInteger;
try
   query_ldr.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(Query_ldr,9986,'frm_contrato','CADPF_IMAGEM');
   end;
FreeAndNil(query_ldr);


end;

procedure TFrm_Compras_Orc.DBGrid3DblClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg:TJPEGImage;

begin



if not Tb_PF_imagemPF_IMAGEM.IsNull then
   begin
   imagestream:=TMemoryStream.Create;
   Tb_PF_imagemPF_IMAGEM.SaveToStream(imagestream);
   imagestream.Position := 0;

//   if (trim(Tb_LC_imagemLI_NOMEORI.asstring)='')  or fEImagem(Tb_LC_imagemLI_NOMEORI.asstring) then
   if (trim(Tb_PF_imagemPF_NOMEORI.asstring)='')  then
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
         if trim(Tb_PF_imagemPF_NOMEORI.asstring)<>'' then
            begin
            imagestream.SaveToFile(mcamtmp+'\'+Tb_PF_imagemPF_NOMEORI.asstring);
            fExecutarArquivo(mcamtmp+'\'+Tb_PF_imagemPF_NOMEORI.asstring);
            fAdicionarTempDel(mcamtmp+'\'+Tb_PF_imagemPF_NOMEORI.asstring);
            end
         else
            begin
            messagedlg('nao foi possivel identificar o arquivo!',mterror,[mbOK],0);
            end;

      except
         messagedlg('Não foi possivel gerar o arquivo '+mcamtmp+'\'+Tb_PF_imagemPF_NOMEORI.asstring,mtError,[mbOk],0);
         end;
      end;
   freeandnil(imagestream);


   end;







end;

procedure TFrm_Compras_Orc.sbnGerarOrcamentoVendasClick(Sender: TObject);
begin
if fsonumero(edt_chave.text)>0 then
   begin
   Application.Createform(TFrm_Compras_Orc_GerarOrcVendas, Frm_Compras_Orc_GerarOrcVendas);
   Frm_Compras_Orc_GerarOrcVendas.mPFCodEmp := codemp;
   Frm_Compras_Orc_GerarOrcVendas.mPFChave  := valint(edt_chave.text);
   Frm_Compras_Orc_GerarOrcVendas.showModal;
   freeandnil(Frm_Compras_Orc_GerarOrcVendas);
   
   end;
end;


function TFrm_Compras_Orc.fLerCadCbenef(pCBenef: String): boolean;
begin
end;




function TFrm_Compras_Orc.fValidarVencimentosDocumentos(pCodcli: Real): boolean;
var
query_cli: tQuery;
begin
result:=true;
if (mlocalizando_pedido) then
   exit;





if (pCodcli>0) and  ( (DM1.Tb_PargerPVISA.Value=1) or (DM1.Tb_PargerPANVISA.Value=1) or (DM1.Tb_PargerPVALIDAR_CERT_TECNICO.Value=1) ) then
   begin
   query_cli :=  tQuery.create(nil);
   query_cli.databaseName:=DM1.SG_ASSOC.DatabaseName;
   query_cli.SQL.add('select FDTVSANIT AS CDTVALV, FANVISA_DTVCTO AS CDTANVISA, '
     +' FCERTTECNICO_DTVCTO AS CCERTTECNICO_DTVCTO from CADFOR WHERE FCODFOR='+FloatToStr(pCodCli));
   try
      query_cli.open;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_cli,38419,'func Erro:'+e.Message ,'CADCLI');
      query_cli.close;
      FreeAndNil(query_cli);
      result:=False;
      exit;
      end;
      end;

   if (DM1.Tb_PargerPANVISA.Value=1) and  ( (query_cli.fieldbyname('CDTANVISA').asdatetime<pdatasis) and (query_cli.fieldbyname('CDTANVISA').AsDateTime>pDatanula) ) then
      begin
      if fValidarSenha('Senha Para Liberar a Anvisa"Documentos Pessoas"',8,76) then
         result:=true
      else
         result:=false;
      query_cli.Close;
      freeandnil(query_cli);
      exit;
      end;


   if (DM1.Tb_PargerPVALIDAR_CERT_TECNICO.Value=1) and  ( (query_cli.fieldbyname('CCERTTECNICO_DTVCTO').asdatetime<pdatasis)  and (query_cli.fieldbyname('CCERTTECNICO_DTVCTO').AsDateTime>pDatanula) ) then
      begin
      if fValidarSenha('Senha Para Liberar Certidao Tecnico Vencido"Documentos Pessoas"',9,76) then
         result:=true
      else
         result:=false;

      query_cli.Close;
      freeandnil(query_cli);
      result:=false;
      exit;
      end;



   if (DM1.Tb_PargerPVISA.Value=1) and  ( (query_cli.fieldbyname('CDTVALV').asdatetime<pdatasis) and (query_cli.fieldbyname('CDTVALV').AsDateTime>pDatanula) ) then
      begin
      if fValidarSenha('Senha Para Liberar Alvara vigilancia sanitaria estadual vencido"Documentos Pessoas"',7,76) then
         result:=true
      else
         result:=false;
      query_cli.Close;
      freeandnil(query_cli);
      result:=false;
      exit;
      end;
   query_cli.close;
   freeandnil(query_cli);

   end;

end;



function TFrm_Compras_Orc.fValidarSenha(pTexto: string; pCodBloq,pcodSen: integer):boolean;
var
mPd_CodResp_Senha: integer;
begin

mValidarSenha.pTipo   :=0;
mValidarSenha.pCodusr :=codusr;
mValidarSenha.pCodSen :=pcodSen;
mValidarSenha.pCodEmp:=0;
//mValidarSenha.pCodCli:=fsonumero(edt_codfor.text);
mValidarSenha.pCodCli:=0;
mValidarSenha.pCodEmp:=codemp;
mValidarSenha.pLotSeq:=ls_numpf;
mValidarSenha.pChave :=fsonumero(edt_chave.text );
mValidarSenha.pOrdem :=1;
mValidarSenha.pTexto :='Forncedor'+
DM1.Tb_CliCRAZAO.Asstring +'-'+edt_codfor.Text+pTexto +'. Para liberar digite a senha'
    +' Chave do Pedido '+edt_chave.text;
mPd_CodResp_Senha:=fValidaSenha(mValidarSenha);
if mPd_CodResp_Senha=0 then
   begin
   result := true;
   end
else
   begin
   result:=False;
   exit;
   end;
end;


end.


