unit S_Pfor01_02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, ToolEdit, CurrEdit, ComCtrls, S_SelEmp,
  Grids, DBGrids, DB, DBTables, RxMemDS, DateUtils, QRExport, ShellApi, S_Impres, s_lerarq_geral;

type
  Tfrm_Pfor01_02 = class(TForm)
    Panel_cabecalho: TPanel;
    btn_incluir: TBitBtn;
    btn_localizar: TBitBtn;
    btn_alterar: TBitBtn;
    btn_gravar: TBitBtn;
    btn_confirmar: TBitBtn;
    btn_calcular: TBitBtn;
    btn_excluir: TBitBtn;
    btn_cancelar: TBitBtn;
    btn_sair: TBitBtn;
    pnl_pedidocompra: TPanel;
    Bevel1: TBevel;
    StaticText1: TStaticText;
    CHAVE: TComboEdit;
    StaticText2: TStaticText;
    DATAP: TDateEdit;
    StaticText3: TStaticText;
    CODFOR: TComboEdit;
    NOMFOR: TEdit;
    stc_desconto: TStaticText;
    DESC01: TComboEdit;
    DESC02: TComboEdit;
    VALDES: TCurrencyEdit;
    cb_origem: TCheckBox;
    StaticText5: TStaticText;
    CB_CASASD: TComboBox;
    StaticText6: TStaticText;
    CB_LOCAL: TComboBox;
    StaticText7: TStaticText;
    CB_TIPO: TComboBox;
    StaticText8: TStaticText;
    txt_modo: TEdit;
    StaticText9: TStaticText;
    txt_fase: TEdit;
    StaticText10: TStaticText;
    txt_situacao: TEdit;
    pnl_itens: TPanel;
    pgc_detalhes: TPageControl;
    tbs_mercadorias: TTabSheet;
    tbs_complementares: TTabSheet;
    tbs_duplicatas: TTabSheet;
    tbs_previsao: TTabSheet;
    tbs_configuracao: TTabSheet;
    lbl_dtvcto: TStaticText;
    lbl_codpro: TStaticText;
    lbl_lote: TStaticText;
    lbl_descricao: TStaticText;
    CODPRO: TComboEdit;
    LOTE: TComboEdit;
    DATAV: TMaskEdit;
    NOMPRO: TEdit;
    lbl_und: TStaticText;
    UND: TEdit;
    lbl_quantidade: TStaticText;
    lbl_precounitario: TStaticText;
    Grid: TDBGrid;
    StaticText11: TStaticText;
    CFOP: TComboEdit;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    StaticText17: TStaticText;
    LISTA: TComboEdit;
    CB_BARRAS: TCheckBox;
    bbSugestao: TBitBtn;
    GroupBox1: TGroupBox;
    btn_imprimir: TBitBtn;
    btn_exportar: TBitBtn;
    btn_importar: TBitBtn;
    StaticText18: TStaticText;
    Label1: TLabel;
    Label2: TLabel;
    StaticText16: TStaticText;
    StaticText19: TStaticText;
    StaticText20: TStaticText;
    StaticText21: TStaticText;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    StaticText24: TStaticText;
    StaticText25: TStaticText;
    GroupBox2: TGroupBox;
    Label14: TLabel;
    Label66: TLabel;
    Label36: TLabel;
    Label44: TLabel;
    Label86: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label53: TLabel;
    NUMNF: TEdit;
    DATAENT: TMaskEdit;
    MBASEN: TEdit;
    OUTRAS: TEdit;
    OUTRAS_PERC: TEdit;
    Label85: TLabel;
    TOTAL_BC: TEdit;
    MBASER: TEdit;
    VALFRE: TEdit;
    IPI: TEdit;
    TOTINA: TEdit;
    TOTNOT: TEdit;
    CODTRA: TEdit;
    NOMTRA: TEdit;
    Label20: TLabel;
    SERIE: TEdit;
    Label32: TLabel;
    Label33: TLabel;
    SUBSERIE: TEdit;
    Label35: TLabel;
    DATAE: TMaskEdit;
    Label38: TLabel;
    ICMSN: TEdit;
    OUTRAS_IMP: TEdit;
    Label87: TLabel;
    TOTAL_ICMS: TEdit;
    Label39: TLabel;
    MICMSR: TEdit;
    PIPIFRETE: TEdit;
    Label73: TLabel;
    SEGURO: TEdit;
    Label42: TLabel;
    TOTPOS: TEdit;
    Label47: TLabel;
    Label60: TLabel;
    STATUS: TEdit;
    Label21: TLabel;
    NUMPED_ORI: TEdit;
    PAG_ORI: TEdit;
    Label34: TLabel;
    MODELO: TEdit;
    Label82: TLabel;
    SUBMOD: TEdit;
    Label46: TLabel;
    TOTMER: TEdit;
    Label22: TLabel;
    OUTNINC: TEdit;
    Label75: TLabel;
    OUTDESP: TEdit;
    TOTNEG: TEdit;
    Label50: TLabel;
    ISENTAS: TEdit;
    Label52: TLabel;
    DESC: TEdit;
    Label45: TLabel;
    IPIFRETE: TEdit;
    Label74: TLabel;
    GB_SIV: TGroupBox;
    Label23: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    SIV_FRETE: TEdit;
    SIV_DARE: TEdit;
    SIV_OUTROS: TEdit;
    Bevel3: TBevel;
    CB_NFCF: TCheckBox;
    CB_GNF: TCheckBox;
    CONDPAG: TEdit;
    Label72: TLabel;
    Label54: TLabel;
    CODBCO: TEdit;
    NOMBCO: TEdit;
    CB_BOLETO: TCheckBox;
    Label64: TLabel;
    NUMDUP: TEdit;
    Label65: TLabel;
    DESD: TEdit;
    CB_GDP: TCheckBox;
    Label76: TLabel;
    OUTVDUP: TEdit;
    panel_prazo: TPanel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    PRAZO: TEdit;
    QTDP: TEdit;
    INT: TEdit;
    bbGerarDuplic: TBitBtn;
    Label55: TLabel;
    DTVENC: TMaskEdit;
    Label70: TLabel;
    VALDESCF: TEdit;
    VALDESCFOUT: TEdit;
    bbDupGravar: TBitBtn;
    bbdup_editar: TBitBtn;
    bbdup_cancelar: TBitBtn;
    bbdup_excluir: TBitBtn;
    Label71: TLabel;
    DTDESCF: TMaskEdit;
    Label57: TLabel;
    VALDUP: TEdit;
    CB_VDES_CODEMP: TCheckBox;
    memo_totdup: TMemo;
    Bevel4: TBevel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    PERCFRE: TEdit;
    DTPENT: TMaskEdit;
    DTPFAT: TMaskEdit;
    RGFRETEPC: TRadioGroup;
    Bevel5: TBevel;
    Grid_Duplicata: TDBGrid;
    btn_vernota: TBitBtn;
    Qr_Pf01: TQuery;
    Qr_Pf01PF1CODEMP: TFloatField;
    Qr_Pf01PF1CHAVE: TFloatField;
    Qr_Pf01PF1CODFOR: TFloatField;
    Qr_Pf01PF1DATA: TDateTimeField;
    Qr_Pf01PF1OBS: TMemoField;
    Qr_Pf01PF1DESC01: TFloatField;
    Qr_Pf01PF1DESC02: TFloatField;
    Qr_Pf01PF1DESC03: TFloatField;
    Qr_Pf01PF1TOTDES: TFloatField;
    Qr_Pf01PF1TOTBRU: TFloatField;
    Qr_Pf01PF1TOTLIQ: TFloatField;
    Qr_Pf01PF1STATUS: TFloatField;
    Qr_Pf01PF1CODUSR: TFloatField;
    Qr_Pf01PF1HORDIG: TStringField;
    Qr_Pf01PF1USRMOD: TFloatField;
    Qr_Pf01PF1DTMOD: TDateTimeField;
    Qr_Pf01PF1HRMOD: TStringField;
    Qr_Pf01PF1TOTMER: TFloatField;
    Qr_Pf01PF1TOTPOS: TFloatField;
    Qr_Pf01PF1TOTNEG: TFloatField;
    Qr_Pf01PF1TOTINA: TFloatField;
    Qr_Pf01PF1TOTFRE: TFloatField;
    Qr_Pf01PF1TOTSEG: TFloatField;
    Qr_Pf01PF1BASEN: TFloatField;
    Qr_Pf01PF1BASER: TFloatField;
    Qr_Pf01PF1ICMSN: TFloatField;
    Qr_Pf01PF1ICMSR: TFloatField;
    Qr_Pf01PF1CODLDR: TFloatField;
    Qr_Pf01PF1BASENR: TFloatField;
    Qr_Pf01PF1ICMSNR: TFloatField;
    Qr_Pf01PF1ISENTAS: TFloatField;
    Qr_Pf01PF1TOTOUT: TFloatField;
    Qr_Pf01PF1TOTIPI: TFloatField;
    Qr_Pf01PF1DATANF: TDateTimeField;
    Qr_Pf01PF1NUMNF: TFloatField;
    Qr_Pf01PF1SERIE: TStringField;
    Qr_Pf01PF1SUBSER: TStringField;
    Qr_Pf01PF1CODPV: TFloatField;
    Qr_Pf01PF1CODBCO: TFloatField;
    Qr_Pf01PF1CODTRA: TFloatField;
    Qr_Pf01PF1MODELO: TStringField;
    Qr_Pf01PF1NUMDUP: TFloatField;
    Qr_Pf01PF1DESD: TStringField;
    Qr_Pf01PF1GRAVNF: TFloatField;
    Qr_Pf01PF1GRAVDP: TFloatField;
    Qr_Pf01PF1CASASD: TFloatField;
    Qr_Pf01PF1TABPV: TStringField;
    Qr_Pf01PF1DATAENT: TDateTimeField;
    Qr_Pf01PF1DTPFAT: TDateTimeField;
    Qr_Pf01PF1DTPENT: TDateTimeField;
    Qr_Pf01PF1PERCFRE: TFloatField;
    Qr_Pf01PF1FRETEPC: TFloatField;
    Qr_Pf01PF1CONDPAG: TStringField;
    Qr_Pf01PF1PIPIFRETE: TFloatField;
    Qr_Pf01PF1IPIFRETE: TFloatField;
    Qr_Pf01PF1LOTSEQ: TFloatField;
    Qr_Pf01PF1TEMBOL: TFloatField;
    Qr_Pf01PF1LEMAT: TFloatField;
    Qr_Pf01PF1CODEMP_ORI: TFloatField;
    Qr_Pf01PF1NUMPED_ORI: TFloatField;
    Qr_Pf01PF1PAG_ORI: TFloatField;
    Qr_Pf01PF1ORIGEM: TFloatField;
    Qr_Pf01PF1OUTNINC: TFloatField;
    Qr_Pf01PF1OUTDESP: TFloatField;
    Qr_Pf01PF1NFCF: TFloatField;
    Qr_Pf01PF1TOTLIQOUT: TFloatField;
    Qr_Pf01PF1TOTPBT: TFloatField;
    Qr_Pf01PF1FORMACE: TFloatField;
    Qr_Pf01PF1SITPED: TFloatField;
    Qr_Pf01PF1QTDMAN: TFloatField;
    Qr_Pf01PF1TOTDESOUT: TFloatField;
    Qr_Pf01PF1TOTBRUOUT: TFloatField;
    Qr_Pf01PF1TOTFREOUT: TFloatField;
    Qr_Pf01PF1OUTROS: TFloatField;
    Qr_Pf01PF1NUMDUPOUT: TFloatField;
    Qr_Pf01PF1TIPO: TFloatField;
    Qr_Pf01PF1SIV_FRETE: TFloatField;
    Qr_Pf01PF1SIV_DARE: TFloatField;
    Qr_Pf01PF1SIV_OUTROS: TFloatField;
    Qr_Pf01PF1OUTVDUP: TFloatField;
    Qr_Pf01dtpfat: TStringField;
    Qr_Pf01dtpent: TStringField;
    Qr_Pf01PF1PRAZO: TFloatField;
    Qr_Pf01PF1INT: TFloatField;
    Qr_Pf01PF1QTDP: TFloatField;
    Qr_Pf01PF1LOCAL: TFloatField;
    Qr_Pf01PF1SUBMOD: TStringField;
    Qr_Pf01PF1TOTOUT_ALIQ: TFloatField;
    Qr_Pf01PF1TOTOUT_IMP: TFloatField;
    Qr_Pf01PF1LOTE_ENTRADA: TStringField;
    Qr_Pf01PF1REGENT: TStringField;
    Qr_Pf01PF1SITPROD: TFloatField;
    UFFOR: TEdit;
    StaticText26: TStaticText;
    CB_CALCPU: TCheckBox;
    Qr_PF02: TQuery;
    Qr_PF02PF2CODEMP: TFloatField;
    Qr_PF02PF2CHAVE: TFloatField;
    Qr_PF02PF2ITEM: TFloatField;
    Qr_PF02PF2CODPRO: TFloatField;
    Qr_PF02PF2LOTE: TStringField;
    Qr_PF02PF2DATAV: TDateTimeField;
    Qr_PF02PF2QTDP: TFloatField;
    Qr_PF02PF2PU: TFloatField;
    Qr_PF02PF2DESC01: TFloatField;
    Qr_PF02PF2DESC02: TFloatField;
    Qr_PF02PF2DESC03: TFloatField;
    Qr_PF02PF2SIT: TStringField;
    Qr_PF02PF2ALIQ: TFloatField;
    Qr_PF02PF2ALIQNR: TFloatField;
    Qr_PF02PF2BASEN: TFloatField;
    Qr_PF02PF2ICMSN: TFloatField;
    Qr_PF02PF2BASER: TFloatField;
    Qr_PF02PF2ICMSR: TFloatField;
    Qr_PF02PF2STATUS: TFloatField;
    Qr_PF02PF2TAB: TStringField;
    Qr_PF02PF2LISTA: TFloatField;
    Qr_PF02PF2PCOTAB: TFloatField;
    Qr_PF02PF2TOTDES: TFloatField;
    Qr_PF02PF2BASENR: TFloatField;
    Qr_PF02PF2ICMSNR: TFloatField;
    Qr_PF02PF2ISENTAS: TFloatField;
    Qr_PF02PF2ALIPI: TFloatField;
    Qr_PF02PF2IPI: TFloatField;
    Qr_PF02PF2CFO: TFloatField;
    Qr_PF02PF2DESCRAT: TFloatField;
    Qr_PF02undpro: TStringField;
    Qr_PF02totdes: TFloatField;
    Qr_PF02totliq: TFloatField;
    Qr_PF02totbru: TFloatField;
    Qr_PF02PF2LOTSEQ: TFloatField;
    Qr_PF02PF2PMC: TFloatField;
    Qr_PF02PF2VALDES: TFloatField;
    Qr_PF02PF2OUTRAS: TFloatField;
    Qr_PF02PF2ORIGEM: TFloatField;
    Qr_PF02PF2STATUS_PF1: TFloatField;
    Qr_PF02PF2PUOUT: TFloatField;
    Qr_PF02PF2PBT: TFloatField;
    Qr_PF02PF2FRERAT: TFloatField;
    Qr_PF02PF2QTDREC: TFloatField;
    Qr_PF02PF2VALDESOUT: TFloatField;
    Qr_PF02PF2FRERATOUT: TFloatField;
    Qr_PF02PF2DESCRATOUT: TFloatField;
    Qr_PF02PF2TOTDESOUT: TFloatField;
    Qr_PF02PF2SIV_OUTROS: TFloatField;
    Qr_PF02PF2PREDICMNOR: TFloatField;
    Qr_PF02PF2CFOP_COMP: TStringField;
    Qr_PF02PF2LOTE_RE: TStringField;
    Qr_PF02PF2DTENTRADA: TDateTimeField;
    Qr_Pf01V: TQuery;
    Qr_Pf01VPF1VCODEMP: TFloatField;
    Qr_Pf01VPF1VCHAVE: TFloatField;
    Qr_Pf01VPF1VCODIGO: TFloatField;
    Qr_Pf01VPF1VDATAV: TDateTimeField;
    Qr_Pf01VPF1VVALOR: TFloatField;
    Qr_Pf01VPF1VTABPV: TStringField;
    Qr_Pf01VPF1VDESCF: TFloatField;
    Qr_Pf01VPF1VDTDESCF: TDateTimeField;
    Qr_Pf01VPF1VLOTSEQ: TFloatField;
    Qr_Pf01VPF1VVALOUT: TFloatField;
    Qr_Pf01VPF1VDESCFOUT: TFloatField;
    Qr_Pf01VPF1VDES_CODEMP: TFloatField;
    StaticText27: TStaticText;
    SITTRI: TEdit;
    PCOUNI: TEdit;
    ALICMS: TEdit;
    PREDICMNOR: TEdit;
    ALIPI: TEdit;
    MDESCI01: TEdit;
    MDESCI02: TEdit;
    MDESCI03: TEdit;
    Qr_Itens: TRxMemoryData;
    Timer1: TTimer;
    QTD: TEdit;
    Ds_Itens: TDataSource;
    Qr_Capa: TRxMemoryData;
    Qr_ItensCODPRO: TFloatField;
    Qr_ItensQTD: TFloatField;
    Qr_ItensUND: TStringField;
    Qr_ItensNOMPRO: TStringField;
    Qr_ItensBASER: TFloatField;
    Qr_ItensICMSR: TFloatField;
    Qr_ItensTOTDES: TFloatField;
    Qr_ItensTOTALI_COMP: TFloatField;
    Qr_ItensOUT_TOTDES: TFloatField;
    Qr_ItensICMSN: TFloatField;
    Qr_ItensVALIPI: TFloatField;
    Qr_ItensTOTALI: TFloatField;
    Qr_ItensOUTRAS: TFloatField;
    Qr_ItensDESCRAT: TFloatField;
    Qr_ItensBASEN: TFloatField;
    Qr_ItensPCOUNI: TFloatField;
    Qr_ItensDESC01: TFloatField;
    Qr_ItensDESC02: TFloatField;
    Qr_ItensDESC03: TFloatField;
    Qr_ItensVALDESI: TFloatField;
    Qr_ItensLOTE: TStringField;
    Qr_ItensDATAV: TStringField;
    Qr_ItensSITTRI: TStringField;
    Qr_ItensTABICM: TStringField;
    Qr_ItensCFOP: TStringField;
    Qr_ItensCFOP_COMP: TStringField;
    Qr_ItensALIPI: TFloatField;
    Qr_ItensALICMS: TFloatField;
    Qr_ItensPRECO1: TFloatField;
    Qr_ItensCODFOR: TFloatField;
    Qr_ItensBASENR: TFloatField;
    Qr_ItensICMSNR: TFloatField;
    Qr_ItensPMC: TFloatField;
    Qr_ItensFRERAT: TFloatField;
    Qr_ItensVALPBT: TFloatField;
    Qr_ItensPCOUNI_COMP: TFloatField;
    Qr_ItensVALDESI_COMP: TFloatField;
    Qr_ItensOUT_FRETERAT: TFloatField;
    Qr_ItensOUT_DESCRAT: TFloatField;
    Qr_ItensPREDICMNOR: TFloatField;
    Qr_ItensLOTE_RE: TStringField;
    Qr_ItensLISTA: TStringField;
    Qr_ItensISENTAS: TFloatField;
    CB_TABPV: TComboBox;
    CODPV: TEdit;
    Label4: TLabel;
    OBSERVACAO: TEdit;
    Label18: TLabel;
    CODEMP_ORI: TEdit;
    Edit1: TEdit;
    Label3: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    CODDIG: TEdit;
    NOMDIG: TEdit;
    USRMOD: TEdit;
    Label63: TLabel;
    Label62: TLabel;
    NOMUSRM: TEdit;
    DTMOD: TMaskEdit;
    HRMOD: TEdit;
    HORDIG: TEdit;
    Qr_Duplicatas: TRxMemoryData;
    QTDITEM: TStaticText;
    TOTDES: TCurrencyEdit;
    VALIPI: TCurrencyEdit;
    TOTITEM: TStaticText;
    TOTFRE: TCurrencyEdit;
    TOTAL: TCurrencyEdit;
    TOTLIQ: TCurrencyEdit;
    ICMSR: TCurrencyEdit;
    Qr_DuplicatasDTVCTO: TStringField;
    Qr_DuplicatasVALOR: TFloatField;
    Qr_DuplicatasDESCFIN: TFloatField;
    Qr_DuplicatasPGTODT: TStringField;
    Qr_DuplicatasVLROUT: TFloatField;
    Qr_DuplicatasDESCFINOUT: TFloatField;
    Ds_Duplicata: TDataSource;
    Qr_DuplicatasEXTRA: TStringField;
    BitBtn1: TBitBtn;
    QR_Dup: TRxMemoryData;
    QR_DupDTVCTO: TStringField;
    QR_DupVALOR: TFloatField;
    QR_DupDESCFIN: TFloatField;
    QR_DupPGTODT: TStringField;
    QR_DupVLROUT: TFloatField;
    QR_DupDESCFINOUT: TFloatField;
    QR_DupEXTRA: TStringField;
    RG_TIPOIMPRES: TRadioGroup;
    RG_IMP: TRadioGroup;
    TOTALI: TEdit;
    Qr_PF02PF2OBS: TStringField;
    Qr_PF02PF2NOMPRO: TStringField;
    procedure btn_incluirClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure DATAPExit(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure DESC01Exit(Sender: TObject);
    procedure DESC02Exit(Sender: TObject);
    procedure VALDESExit(Sender: TObject);
    procedure DESC01KeyPress(Sender: TObject; var Key: Char);
    procedure DESC02KeyPress(Sender: TObject; var Key: Char);
    procedure VALDESKeyPress(Sender: TObject; var Key: Char);
    procedure CB_CASASDClick(Sender: TObject);
    procedure CB_LOCALExit(Sender: TObject);
    procedure CB_LOCALEnter(Sender: TObject);
    procedure CB_TIPOEnter(Sender: TObject);
    procedure CB_TIPOExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CB_CALCPUClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn_localizarClick(Sender: TObject);
    procedure bbSugestaoClick(Sender: TObject);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROEnter(Sender: TObject);
    procedure CODPROKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure QTDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PCOUNIExit(Sender: TObject);
    procedure PCOUNIKeyPress(Sender: TObject; var Key: Char);
    procedure SITTRIExit(Sender: TObject);
    procedure SITTRIKeyPress(Sender: TObject; var Key: Char);
    procedure CFOPExit(Sender: TObject);
    procedure CFOPKeyPress(Sender: TObject; var Key: Char);
    procedure ALICMSExit(Sender: TObject);
    procedure ALICMSKeyPress(Sender: TObject; var Key: Char);
    procedure PREDICMNORExit(Sender: TObject);
    procedure PREDICMNORKeyPress(Sender: TObject; var Key: Char);
    procedure ALIPIExit(Sender: TObject);
    procedure MDESCI01Exit(Sender: TObject);
    procedure MDESCI02Exit(Sender: TObject);
    procedure MDESCI03Exit(Sender: TObject);
    procedure btn_vernotaClick(Sender: TObject);
    procedure btn_importarClick(Sender: TObject);
    procedure btn_exportarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure NUMNFExit(Sender: TObject);
    procedure NUMNFKeyPress(Sender: TObject; var Key: Char);
    procedure SERIEExit(Sender: TObject);
    procedure SERIEKeyPress(Sender: TObject; var Key: Char);
    procedure SUBSERIEExit(Sender: TObject);
    procedure SUBSERIEKeyPress(Sender: TObject; var Key: Char);
    procedure MODELOExit(Sender: TObject);
    procedure MODELOKeyPress(Sender: TObject; var Key: Char);
    procedure SUBMODExit(Sender: TObject);
    procedure SUBMODKeyPress(Sender: TObject; var Key: Char);
    procedure DATAENTExit(Sender: TObject);
    procedure MBASENEnter(Sender: TObject);
    procedure MBASENExit(Sender: TObject);
    procedure MBASENKeyPress(Sender: TObject; var Key: Char);
    procedure OUTRASExit(Sender: TObject);
    procedure OUTRASKeyPress(Sender: TObject; var Key: Char);
    procedure OUTRAS_PERCExit(Sender: TObject);
    procedure OUTRAS_PERCKeyPress(Sender: TObject; var Key: Char);
    procedure TOTAL_BCExit(Sender: TObject);
    procedure TOTAL_BCKeyPress(Sender: TObject; var Key: Char);
    procedure MBASEREnter(Sender: TObject);
    procedure MBASERExit(Sender: TObject);
    procedure MBASERKeyPress(Sender: TObject; var Key: Char);
    procedure VALFREExit(Sender: TObject);
    procedure VALFREKeyPress(Sender: TObject; var Key: Char);
    procedure VALFRE_COMPExit(Sender: TObject);
    procedure VALFRE_COMPKeyPress(Sender: TObject; var Key: Char);
    procedure IPIEnter(Sender: TObject);
    procedure IPIExit(Sender: TObject);
    procedure IPIKeyPress(Sender: TObject; var Key: Char);
    procedure TOTINAEnter(Sender: TObject);
    procedure TOTINAExit(Sender: TObject);
    procedure TOTINAKeyPress(Sender: TObject; var Key: Char);
    procedure TOTNOTExit(Sender: TObject);
    procedure TOTNOTKeyPress(Sender: TObject; var Key: Char);
    procedure CODTRAExit(Sender: TObject);
    procedure CODTRAKeyPress(Sender: TObject; var Key: Char);
    procedure DATAEExit(Sender: TObject);
    procedure ICMSNEnter(Sender: TObject);
    procedure ICMSNExit(Sender: TObject);
    procedure ICMSNKeyPress(Sender: TObject; var Key: Char);
    procedure OUTRAS_IMPExit(Sender: TObject);
    procedure OUTRAS_IMPKeyPress(Sender: TObject; var Key: Char);
    procedure TOTAL_ICMSExit(Sender: TObject);
    procedure TOTAL_ICMSKeyPress(Sender: TObject; var Key: Char);
    procedure MICMSREnter(Sender: TObject);
    procedure MICMSRExit(Sender: TObject);
    procedure MICMSRKeyPress(Sender: TObject; var Key: Char);
    procedure PIPIFRETEExit(Sender: TObject);
    procedure PIPIFRETEKeyPress(Sender: TObject; var Key: Char);
    procedure SEGUROExit(Sender: TObject);
    procedure SEGUROKeyPress(Sender: TObject; var Key: Char);
    procedure TOTPOSEnter(Sender: TObject);
    procedure TOTPOSExit(Sender: TObject);
    procedure TOTPOSKeyPress(Sender: TObject; var Key: Char);
    procedure OUTNINCExit(Sender: TObject);
    procedure OUTNINCKeyPress(Sender: TObject; var Key: Char);
    procedure OUTDESPExit(Sender: TObject);
    procedure OUTDESPKeyPress(Sender: TObject; var Key: Char);
    procedure IPIFRETEExit(Sender: TObject);
    procedure IPIFRETEKeyPress(Sender: TObject; var Key: Char);
    procedure DESCEnter(Sender: TObject);
    procedure DESCExit(Sender: TObject);
    procedure DESCKeyPress(Sender: TObject; var Key: Char);
    procedure ISENTASEnter(Sender: TObject);
    procedure ISENTASExit(Sender: TObject);
    procedure ISENTASKeyPress(Sender: TObject; var Key: Char);
    procedure TOTNEGEnter(Sender: TObject);
    procedure TOTNEGExit(Sender: TObject);
    procedure TOTNEGKeyPress(Sender: TObject; var Key: Char);
    procedure SIV_FRETEExit(Sender: TObject);
    procedure SIV_FRETEKeyPress(Sender: TObject; var Key: Char);
    procedure SIV_OUTROSExit(Sender: TObject);
    procedure SIV_OUTROSKeyPress(Sender: TObject; var Key: Char);
    procedure SIV_DAREExit(Sender: TObject);
    procedure SIV_DAREKeyPress(Sender: TObject; var Key: Char);
    procedure NUMPED_ORIExit(Sender: TObject);
    procedure NUMPED_ORIKeyPress(Sender: TObject; var Key: Char);
    procedure PAG_ORIExit(Sender: TObject);
    procedure PAG_ORIKeyPress(Sender: TObject; var Key: Char);
    procedure CONDPAGExit(Sender: TObject);
    procedure CONDPAGKeyPress(Sender: TObject; var Key: Char);
    procedure CODBCOExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure NUMDUPExit(Sender: TObject);
    procedure NUMDUPKeyPress(Sender: TObject; var Key: Char);
    procedure NUMDUPOUTKeyPress(Sender: TObject; var Key: Char);
    procedure DESDExit(Sender: TObject);
    procedure DESDKeyPress(Sender: TObject; var Key: Char);
    procedure OUTVDUPExit(Sender: TObject);
    procedure OUTVDUPKeyPress(Sender: TObject; var Key: Char);
    procedure PRAZOExit(Sender: TObject);
    procedure PRAZOKeyPress(Sender: TObject; var Key: Char);
    procedure QTDPExit(Sender: TObject);
    procedure QTDPKeyPress(Sender: TObject; var Key: Char);
    procedure INTExit(Sender: TObject);
    procedure INTKeyPress(Sender: TObject; var Key: Char);
    procedure DTVENCExit(Sender: TObject);
    procedure VALDUPExit(Sender: TObject);
    procedure VALDUPOUTExit(Sender: TObject);
    procedure VALDESCFExit(Sender: TObject);
    procedure VALDESCFOUTExit(Sender: TObject);
    procedure DTDESCFExit(Sender: TObject);
    procedure DTPFATExit(Sender: TObject);
    procedure DTPENTExit(Sender: TObject);
    procedure PERCFREExit(Sender: TObject);
    procedure PERCFREKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure bbGerarDuplicClick(Sender: TObject);
    procedure TOTLIQExit(Sender: TObject);
    procedure TOTLIQKeyPress(Sender: TObject; var Key: Char);
    procedure Qr_PF02CalcFields(DataSet: TDataSet);
    procedure btn_confirmarClick(Sender: TObject);
    procedure bbDupGravarClick(Sender: TObject);
    procedure bbdup_editarClick(Sender: TObject);
    procedure bbdup_cancelarClick(Sender: TObject);
    procedure bbdup_excluirClick(Sender: TObject);
    procedure btn_imprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btn_gravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_calcularClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure MDESCI01KeyPress(Sender: TObject; var Key: Char);
    procedure MDESCI02KeyPress(Sender: TObject; var Key: Char);
    procedure MDESCI03KeyPress(Sender: TObject; var Key: Char);
    procedure LOTEExit(Sender: TObject);
    procedure LOTEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LOTEKeyPress(Sender: TObject; var Key: Char);
    procedure DATAVExit(Sender: TObject);
    procedure DATAVKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QTDExit(Sender: TObject);
    procedure PCOUNIKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QTDKeyPress(Sender: TObject; var Key: Char);
    procedure GridDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function fLerPF1(ptipo: Integer; pCodEmp,pLotSeq,pChave: Real): Boolean;
    function fPfor01lerant(ptipo: Integer):Boolean;
    function fLerPF1V(ptipo: Integer; pCodEmp,pLotSeq,pChave: Real): Boolean;
    function fLerPF2(ptipo: Integer; pCodEmp,pLotSeq,pChave: Real): Boolean;
    function fTotdupDig(pTipo:Integer): boolean;
    function Fpf01camposRestritos(pTipo:Integer):Boolean;
    function FAjustarValores(pCampo:Integer; pTotCalc, pTotDig:Real):Boolean;
    function fcalcnf(ptipo:Integer):Boolean;
    function fAtualizaPedidoTemp(pTipo: Integer): Boolean;
    function fGravaItem(pTipo: Integer): Boolean;
    function fRatearSIV(ptipo: Integer): Boolean;
    function fAtualizaItemPedido(pTipo: Integer): Boolean;
    function fBuscaPedAnterior(pTipo: Integer): Boolean;
    function fcalcular(ptipo:Integer):Boolean;
    function fexcluir(ptipo: Integer):Boolean;
    function fgravarped(ptipo: Integer): Boolean;
    function fgravap2(pItem,pgcodemp,pglista,pgtipo,pgchave,pgordem: Integer;
                      pgqtd,pgpu,pgpmc,pgdesc01,pgdesc02,pgvaldes,
                      pgdesci01,pgdesci02,pgdesci03,pgvaldesi,pgipi,pgpcotab,pgcodfab,pgcodpro,pgicms: Real;
                      pgsit,pgtabela,pglote,pgdatav,pgcfo,pgCfo_Comp,pgLote_Re,pgnompro:String; pgbasen, pgicmsn,
                      pgbaser,pgicmsr,pgalicms,pgbasenr,pgicmsnr,pgisentas,pgoutras,pgvalipi,pgtotdes,
                      pgdescrat,pgvalpbt,pgfrerat,pgvaldesi_comp,pgout_totdes,pgout_freterat,pgout_descrat,
                      pgpredicmnor: Real): String;
    function fgravap1(ptipo,pcodemp:Integer):Boolean;
    function fgvencto(ptipo,pcodemp,pchave,pordem: Integer; ptotdup,ptotdup_comp: Real; pdatae: tDateTime): Boolean;
    function fpf01implaser(ptipo: Integer): Boolean;
    function fpf01imphtml(ptipo: Integer): Boolean;
    function fpf01imprime(ptipo: Integer): Boolean;
    {---Procedimentos Utilizados---}
  public
    { Public declarations }
    Form_Impres_mFor01_02 : tFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

  function fpf01gant(ptipo: Integer): Boolean;
  function fpf01tvlr(pvalor: Real): Boolean;


var
  frm_Pfor01_02: Tfrm_Pfor01_02;
  mTemp_gueda           : Boolean=false;
  mAceita_pergunta      : Boolean=True;
  mpd_RestaurandoPedido : Boolean=false;
  mPd_Oper_Ped          : Integer=0;
  pfor_lotseq : Integer=0;
  moper       : Integer=0;
  mop         : Integer=0;
  mopd        : Integer=0;
  mqtd        : integer=0;
  mcfog       : Real=0;
  mcfog_comp  : string;
  mOrigem_PF  : Integer=0;
  mchave_pf   : Integer=0;
  mitem       : Integer;
  pfor_ori    : String;
  bbalt_true  : Boolean=True;
  bbinc_true  : Boolean=True;
  bbexc_true  : Boolean=True;
  bbrel_true  : Boolean=True;
  mpavdes     : Real;
  mpavfre     : Real;
  mpavfreout  : Real;
  mvalfre     : real;
  mvalfreout  : Real;
  mcalculo    : String;
  pf01_casqtd : String;
  pf01_caspu  : String;
  mVlrAnt     : Real;
  mQtdMan     : Real=0;
  mcodpro_ant : Real=0;
  mSitProd    : Integer=0;

  mcolpf_codpro :Integer=00;
  mcolpf_qtd    :Integer=01;
  mcolpf_und    :Integer=02;

  mcolpf_nompro :Integer=03;
  mcolpf_pcouni :Integer=04;

  mcolpf_desc01 :Integer=06;
  mcolpf_desc02 :Integer=07;
  mcolpf_valdesi:Integer=42;
  mcolpf_lote   :Integer=08;
  mcolpf_datav  :Integer=09;
  mcolpf_baser  :Integer=10;
  mcolpf_icmsr  :Integer=11;
  mcolpf_basen  :Integer=38;

  mcolpf_icmsn  :Integer=13;
  mcolpf_totdes :Integer=14;
  mcolpf_sittri :Integer=15;
  mcolpf_tabicm :Integer=16;
  mcolpf_lista  :Integer=17;
  mcolpf_cfop   :Integer=18;
  mcolpf_alipi  :Integer=19;
  mcolpf_valipi :Integer=20;
  mcolpf_alicms :Integer=21;
  mcolpf_preco1 :Integer=22;
  mcolpf_codfor :Integer=23;
  mcolpf_basenr :Integer=24;
  mcolpf_icmsnr :Integer=25;
  mcolpf_isentas:Integer=28;
  mcolpf_desc03 :Integer=27;
  mcolpf_pmc    :Integer=28;
  mcolpf_descrat         :Integer=29;

  mcolpf_valpbt          :Integer=30;
  mcolpf_frerat          :Integer=31;
  mcolpf_pcouni_comp     :Integer=32;

  mcolpf_valdesi_comp    :Integer=33;
  mcolpf_totali_comp     :Integer=34;

  mcolpf_Out_totdes      :Integer=35;
  mcolpf_Out_freteRat    :Integer=36;
  mcolpf_Out_DescRat     :Integer=37;

  mcolpf_QtdRec          :Integer=12;

  mcolpf_OutSIncRat      :Integer=39;
  mcolpf_outras          :Integer=40;

  mcolpf_PRedIcmNor      :Integer=41;

  mcolpf_totali          :Integer=05;
  mcolpf_cfop_comp       :Integer=43;
  mcolpf_lote_re         :Integer=44;
  mPd_Incluiu_Pedido     :Boolean=False;
  mPd_UltAtuPed01        :TDateTime;
  mPd_DatHor_Eve         :TDateTime;
  mpd_chave              : Integer;
  ant_integer            : Real=0;
  mtotu                  : Real = 0;
  mtotb                  : Real = 0;
  mtotd                  : Real = 0;
  mtoticm                : Real = 0;
  mtotb_out              : Real = 0;
  mtotd_out              : Real = 0;
  mtotise                : Real = 0;
  mtotipi                : Real = 0;
  mvalipi                : Real = 0;
  mvalipi2               : Real = 0;
  mtotout                : Real = 0;
  micmsn                 : Real = 0;
  basen                  : Real = 0;
  baser                  : Real = 0;
  mtotpos                : Real = 0;
  mtotneg                : Real = 0;
  mtotina                : Real = 0;
  mbasenrp               : Real = 0;
  mbasenri               : Real = 0;
  mbasenrn               : Real = 0;
  micmsnrp               : Real = 0;
  micmsnri               : Real = 0;
  micmsnrn               : Real = 0;
  mipiina                : Real = 0;
  mipipos                : Real = 0;
  mipineg                : Real = 0;
  mPd_Oper_item          : Integer = 0;
  mPd_NomeComputador     : String = '';

implementation

uses func, S_DM1, lerarq, S_DM2, S_Pcus, S_DM4, func_excecoes, S_Pfor01_PedAut, S_PFor01_Exp,
     S_PFor01_Imp, Func2, S_Pfor01, S_PForLoc, S_Agde, S_UltCPR, S_CFO,
     S_VisNF, SR_PFor, SR_PFor01;

{$R *.dfm}

procedure Tfrm_Pfor01_02.btn_incluirClick(Sender: TObject);
begin
   if DM1.Tb_EmpBLOQ.Value = 1 then begin
      Fmensagem('Esta Empresa esta com os movimentos de vendas suspensos!',0,['0'],0);
      exit;
   end;

   if mOrigem_PF = 4 then begin
      Fmensagem('Para Inclusão Favor Utilizar Cadastro=>Pedido de Compra=>Manutenção!',0,['0'],0);
      exit;
   end;

   moper := 4;
   LimpaEdits(Self);
   Qr_Itens.Active := False;
   flcadpv(1,0,'1','');
   Qr_Duplicatas.Active := False;
   QR_Dup.Active        := False;

   pgc_detalhes.ActivePageIndex := 0;

   QTDITEM.Caption := '0,00';
   TOTDES.Value    := 0;
   VALIPI.Value    := 0;
   TOTITEM.Caption := '0,00';
   TOTFRE.Value    := 0;
   TOTAL.Value     := 0;
   ICMSR.Value     := 0;
   TOTLIQ.value    := 0;

   DATAP.Text  := FormatDateTime(fdt2, pdatasis);
   DATAENT.Text:= FormatDateTime(fdt2, pdatasis);
   DATAE.Text  := FormatDateTime(fdt2, pdatasis);

   txt_MODO.Text      :='Inclusão';
   txt_fase.Text      :='Digitando';
   txt_Situacao.Text  :='Digitando';
   DESD.Text          := 'A';
   QTDP.Text          := '1';

   CB_GNF.Checked     := True;
   CB_GDP.Checked     := True;
   mPd_Incluiu_Pedido := False;

   btn_incluir.Enabled  := False;
   btn_localizar.Enabled:= False;
   btn_importar.Enabled := False;
   btn_alterar.Enabled  := False;
   btn_excluir.Enabled  := False;
   btn_gravar.Enabled   := True;
   btn_imprimir.Enabled := False;
   btn_vernota.Enabled  := False;
   btn_exportar.Enabled := False;
   btn_cancelar.Enabled := True;

   bbDupGravar.Enabled   := True;
   bbdup_editar.Enabled  := True;
   bbdup_cancelar.Enabled:= True;
   bbdup_excluir.Enabled := True;

   btn_calcular.Enabled  := True;
   btn_confirmar.Enabled := False;
   pnl_itens.Enabled     := True;
   GroupBox2.Enabled     := True;
   Qr_Itens.Active       := True;

   if not mpd_RestaurandoPedido then begin
      mPd_DatHor_Eve        := now;
      DATAP.SetFocus;
   end;   

      
   moper := 0;
end;

procedure Tfrm_Pfor01_02.btn_sairClick(Sender: TObject);
begin
   mTemp_gueda := true;
   Close;
end;

procedure Tfrm_Pfor01_02.btn_alterarClick(Sender: TObject);
begin
   if (Trim(CHAVE.Text) = '') then begin
      FMensagem('Favor Localizar Pedido para Alteração!',0,['0'],0);
      Exit;
   end;

   if not fLerPF1(0,codemp,pfor_lotseq,mchave_pf) then begin
      Fmensagem('Este Pedido foi excluido por outro usuario!',0,['0'],0);
      exit;
   end;

   if ((Qr_Pf01PF1STATUS.Value>0) and (MOrigem_PF<>8) and (MOrigem_PF<>4)) or (Qr_Pf01PF1STATUS.Value=7) then begin
      Fmensagem('Pedido ja Confirmado. Nao Pode Ser Alterado!',0,['0'],0);
      exit;
   end;

   if Qr_Pf01PF1SITPED.AsInteger=1 then begin
      Fmensagem('Este Pedido Esta em Manutenção em outra estação!',0,['0'],0);
      exit;
   end;

   if Qr_Pf01PF1QTDMAN.AsInteger>mQtdMan then begin
      moper:=3;
      btn_localizar.Click;
   end;

   fBloqueiaLibera(1,Qr_Pf01PF1CODEMP.Value,Qr_Pf01PF1LOTSEQ.Value,Qr_Pf01PF1CHAVE.Value);

   if Valint(copy(mpseg,4,2))=01 then begin   // baixar lotes de mercadorias
      lote.Visible   :=True;
      DATAV.Visible  :=True;
   end;

   moper                := 1;
   mQtdMan              := Qr_Pf01PF1QTDMAN.AsFloat+1;
   GroupBox2.Enabled    :=True;
   btn_incluir.Enabled  :=False;
   btn_localizar.Enabled:=False;
   btn_importar.Enabled :=False;

   btn_alterar.Enabled  :=False;
   btn_excluir.Enabled  :=False;
   btn_gravar.Enabled   :=True;
   btn_imprimir.Enabled :=False;
   btn_vernota.Enabled  :=False;
   btn_exportar.Enabled :=false;

   bbDupGravar.Enabled   := True;
   bbdup_editar.Enabled  := True;
   bbdup_cancelar.Enabled:= True;
   bbdup_excluir.Enabled := True;

   btn_calcular.Enabled :=true;
   btn_confirmar.Enabled:=False;
   pfor_lotseq          := Qr_Pf01PF1LOTSEQ.AsInteger;
   txt_MODO.Text        :='Alteracao';
   Qr_Itens.Active      := True;

   mPd_DatHor_Eve       := Now;

   if Qr_Pf01PF1SITPROD.AsInteger=1 then
      txt_fase.Text    :='Analisando'
   else if Qr_Pf01PF1SITPROD.AsInteger=2 then
      txt_fase.Text    :='Rejeitado'
   else
      txt_fase.Text    :='Liberado';

   if Qr_Pf01PF1STATUS.AsInteger>0 then
      txt_Situacao.Text:='Confirmado'
   else
      txt_Situacao.Text:='Pendente';


   if mOrigem_PF = 4 then
      Fpf01camposRestritos(2)
   else
      CODFOR.SetFocus;

end;

function Tfrm_Pfor01_02.fLerPF1(ptipo: Integer; pCodEmp, pLotSeq, pChave: Real): Boolean;
begin
  Qr_Pf01.Close;
  Qr_Pf01.Sql.Clear;
  Qr_Pf01.sQl.add('Select PF1CODEMP, '
                 +'       PF1CHAVE,'
                 +'       PF1DATA, '
                 +'       PF1OBS, '
                 +'       PF1CASASD, '
                 +'       PF1LOCAL, '
                 +'       PF1DESC01, '
                 +'       PF1DESC02, '
                 +'       PF1DESC03, '
                 +'       PF1STATUS, '
                 +'       PF1CODUSR, '
                 +'       PF1HORDIG, '
                 +'       PF1USRMOD, '
                 +'       PF1DTMOD, '
                 +'       PF1HRMOD, '
                 +'       PF1TOTMER, '
                 +'       PF1TOTPOS, '
                 +'       PF1TOTNEG, '
                 +'       PF1TOTINA, '
                 +'       PF1TOTSEG, '
                 +'       PF1BASEN, '
                 +'       PF1BASER, '
                 +'       PF1ICMSN, '
                 +'       PF1ICMSR, '
                 +'       PF1CODLDR, '
                 +'       PF1BASENR, '
                 +'       PF1ICMSNR, '
                 +'       PF1ISENTAS, '
                 +'       PF1TOTOUT, '
                 +'       PF1TOTOUT_ALIQ, '
                 +'       PF1TOTOUT_IMP, '
                 +'       PF1TOTIPI, '
                 +'       PF1DATANF, '
                 +'       PF1NUMNF, '
                 +'       PF1SERIE, '
                 +'       PF1SUBSER, '
                 +'       PF1CODPV, '
                 +'       PF1CODBCO, '
                 +'       PF1CODTRA, '
                 +'       PF1MODELO, '
                 +'       PF1SUBMOD, '
                 +'       PF1NUMDUP, '
                 +'       PF1NUMDUPOUT, '
                 +'       PF1DESD, '
                 +'       PF1GRAVNF, '
                 +'       PF1GRAVDP, '
                 +'       PF1TABPV, '
                 +'       PF1CONDPAG, '
                 +'       PF1PIPIFRETE, '
                 +'       PF1IPIFRETE, '
                 +'       PF1DATAENT, '
                 +'       PF1DTPFAT, '
                 +'       PF1DTPENT, '
                 +'       PF1PERCFRE, '
                 +'       PF1FRETEPC, '
                 +'       PF1LOTSEQ, '
                 +'       PF1ORIGEM, '
                 +'       PF1OUTNINC, '
                 +'       PF1TEMBOL, '
                 +'       PF1LEMAT, '
                 +'       PF1CODEMP_ORI, '
                 +'       PF1NUMPED_ORI, '
                 +'       PF1PAG_ORI, '
                 +'       PF1OUTDESP, '
                 +'       PF1NFCF, '
                 +'       PF1CODFOR, '
                 +'       PF1TOTLIQOUT, '
                 +'       PF1TOTPBT, '
                 +'       PF1FORMACE, '
                 +'       PF1SITPED, '
                 +'       PF1QTDMAN, '
                 +'       PF1TOTDESOUT, '
                 +'       PF1TOTBRUOUT, '
                 +'       PF1TOTFREOUT, '
                 +'       PF1OUTROS, '
                 +'       PF1TIPO, '
                 +'       PF1SIV_FRETE,'
                 +'       PF1SIV_DARE,'
                 +'       PF1SIV_OUTROS,'
                 +'       PF1OUTVDUP,'
                 +'       PF1PRAZO,'
                 +'       PF1INT,'
                 +'       PF1QTDP,'
                 );


   if ptipo=2 then begin
     Qr_Pf01.sQl.add(' PF1TOTDES+PF1TOTDESOUT AS PF1TOTDES, '
                    +' PF1TOTBRU+PF1TOTBRUOUT AS PF1TOTBRU, '
                    +' PF1TOTLIQ+PF1TOTLIQOUT AS PF1TOTLIQ, '
                    +' PF1TOTFRE+PF1TOTFREOUT AS PF1TOTFRE ')
   end else if ptipo=1 then begin
     Qr_Pf01.sQl.add(' PF1TOTDESOUT AS PF1TOTDES, '
                    +' PF1TOTBRUOUT AS PF1TOTBRU, '
                    +' PF1TOTLIQOUT AS PF1TOTLIQ, '
                    +' PF1TOTFREOUT AS PF1TOTFRE ')
   end else begin
     Qr_Pf01.sQl.add('       PF1TOTDES,'
                    +'       PF1TOTBRU, '
                    +'       PF1TOTLIQ, '
                    +'       PF1TOTFRE ');
   end;

   Qr_Pf01.sQl.add(' ,PF1LOTE_ENTRADA ' );
   Qr_Pf01.sQl.add(' ,PF1REGENT');
   Qr_Pf01.sQl.add(' ,PF1SITPROD');

   Qr_Pf01.sQl.add(' from CADPF1 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' PF1CODEMP=0'+FloatTostr(pCodEmp)+' and ')
                  +'       PF1LOTSEQ=0'+FloatToStr(pLotSeq)
                  +' and PF1CHAVE=0'+FloatToStr(pChave)
                  );
   try
     Qr_PF01.Open;
   except
     Qr_PF01.Sql.SaveToFile('C:\SQL.TXT');
   end;

   if Qr_Pf01.Eof then
      result:=false
   else
      result:=true;
end;

procedure Tfrm_Pfor01_02.DATAPExit(Sender: TObject);
begin
   try
     DATAP.Text:=FormatDateTime(fdt2,StrToDate(DATAP.Text));
   except
     fmensagem('Data Invalida!',0,['0'],0);
     DATAP.SetFocus;
     exit;
   end;
end;

procedure Tfrm_Pfor01_02.CODFORExit(Sender: TObject);
begin
   CODFOR.Text := fdeixanum(CODFOR.Text);

   if not flcadfor(1,1,CODFOR.Text) then begin
      Fmensagem('Fornecedor não Cadastrado!',0,['0'],0);
      CODFOR.SetFocus;
      exit;
   end;

   NOMFOR.Text:=DM1.Tb_ForFRAZAO.Value;
   UFFOR.Text :=DM1.Tb_ForFUF.Value;
end;

procedure Tfrm_Pfor01_02.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
   if (Length(CODFOR.Text)>10) and (key<>#8) then
      key:=#0
   else if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then begin
      CODFOR.Text:=fChamaFor(0,'frm_pfor0',key);
      if valfloat(codfor.Text)<>0 then
         CODFORExit(Self);
      key:=#0;
   end;
end;

procedure Tfrm_Pfor01_02.DESC01Exit(Sender: TObject);
begin
   if ValFloat(DESC01.Text) > 99 then begin
      Fmensagem('Desconto tem que ser menor que 99%!',0,['0'],0);
      DESC01.SetFocus;
      exit;
   end;

   DESC01.Text:=FormatFloat(mcasas,ValFloat(DESC01.Text));
   btn_calcular.Click;
end;

procedure Tfrm_Pfor01_02.DESC02Exit(Sender: TObject);
begin
   if ValFloat(DESC02.Text) > 99 then begin
      Fmensagem('Desconto tem que ser menor que 99%!',0,['0'],0);
      DESC02.SetFocus;
      exit;
   end;

   DESC02.Text:=FormatFloat(mcasas,ValFloat(DESC02.Text));
   btn_calcular.Click;
end;

procedure Tfrm_Pfor01_02.VALDESExit(Sender: TObject);
begin
   VALDES.Text := FormatFloat(mcasas,ValFloat(VALDES.Text));
   if ValFloat(VALDES.Text) <> 0 then begin
      if ValFloat(VALDES.Text) >= ValFloat(TOTLIQ.Text) then begin
         Fmensagem('Desconto tem que ser menor que o total líquido',0,['0'],0);
         VALDES.SetFocus;
         exit;
      end;
   end;

   if valfloat(VALDES.Text) < 0 then begin
      Fmensagem('Valor do Desconto não pode ser menor que zero!',0,['0'],0);
      VALDES.SetFocus;
      exit;
   end;

   btn_calcular.Click;
end;

procedure Tfrm_Pfor01_02.DESC01KeyPress(Sender: TObject; var Key: Char);
begin
   if key in ['.',','] then
      key := DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key := #0;
end;

procedure Tfrm_Pfor01_02.DESC02KeyPress(Sender: TObject; var Key: Char);
begin
   if key in ['.',','] then
      key:=DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.VALDESKeyPress(Sender: TObject; var Key: Char);
begin
   if key in ['.',','] then
      key:=DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.CB_CASASDClick(Sender: TObject);
begin
   if CB_CASASD.ItemIndex = 0 then begin
      if DM1.Tb_PargerPCASPUIND.Value > mQtdCas_arredpu then begin
         pf01_caspu:=mcaspuind;
         CB_CASASD.ItemIndex:=(DM1.Tb_PargerPCASPUIND.AsInteger-1)
      end else begin
         pf01_caspu:=mcasaspu;
         CB_CASASD.ItemIndex:=(DM1.Tb_PargerPCASASPU.AsInteger-1)
      end
   end else begin
      pf01_caspu:='#,##0.0'+Insere2('0','0',CB_CASASD.ItemIndex);
   end;

   {---Referente as Casas Decimais das Duplicatas---}
   Qr_DuplicatasVALOR.DisplayFormat      := pf01_caspu;
   Qr_DuplicatasDESCFIN.DisplayFormat    := pf01_caspu;
   Qr_DuplicatasVLROUT.DisplayFormat     := pf01_caspu;
   Qr_DuplicatasDESCFINOUT.DisplayFormat := pf01_caspu;

   {---Referente as Casas Decimais do Pedido de Compra---}
   Qr_ItensQTD.DisplayFormat         := pf01_caspu;
   Qr_ItensBASER.DisplayFormat       := pf01_caspu;
   Qr_ItensICMSR.DisplayFormat       := pf01_caspu;
   Qr_ItensTOTDES.DisplayFormat      := pf01_caspu;
   Qr_ItensTOTALI_COMP.DisplayFormat := pf01_caspu;
   Qr_ItensOUT_TOTDES.DisplayFormat  := pf01_caspu;
   Qr_ItensICMSN.DisplayFormat       := pf01_caspu;
   Qr_ItensVALIPI.DisplayFormat      := pf01_caspu;
   Qr_ItensTOTALI.DisplayFormat      := pf01_caspu;
   Qr_ItensOUTRAS.DisplayFormat      := pf01_caspu;
   Qr_ItensDESCRAT.DisplayFormat     := pf01_caspu;
   Qr_ItensBASEN.DisplayFormat       := pf01_caspu;
   Qr_ItensPCOUNI.DisplayFormat      := pf01_caspu;
   Qr_ItensDESC01.DisplayFormat      := pf01_caspu;
   Qr_ItensDESC02.DisplayFormat      := pf01_caspu;
   Qr_ItensDESC03.DisplayFormat      := pf01_caspu;
   Qr_ItensVALDESI.DisplayFormat     := pf01_caspu;
   Qr_ItensALIPI.DisplayFormat       := pf01_caspu;
   Qr_ItensALICMS.DisplayFormat      := pf01_caspu;
   Qr_ItensPRECO1.DisplayFormat      := pf01_caspu;
   Qr_ItensBASENR.DisplayFormat      := pf01_caspu;
   Qr_ItensICMSNR.DisplayFormat      := pf01_caspu;
   Qr_ItensPMC.DisplayFormat         := pf01_caspu;
   Qr_ItensFRERAT.DisplayFormat      := pf01_caspu;
   Qr_ItensVALPBT.DisplayFormat      := pf01_caspu;
   Qr_ItensPCOUNI_COMP.DisplayFormat := pf01_caspu;
   Qr_ItensVALDESI_COMP.DisplayFormat:= pf01_caspu;
   Qr_ItensOUT_FRETERAT.DisplayFormat:= pf01_caspu;
   Qr_ItensOUT_DESCRAT.DisplayFormat := pf01_caspu;
   Qr_ItensPREDICMNOR.DisplayFormat  := pf01_caspu;
   Qr_ItensISENTAS.DisplayFormat     := pf01_caspu;  
end;

procedure Tfrm_Pfor01_02.CB_LOCALExit(Sender: TObject);
begin
   with CB_LOCAL do ItemIndex := Items.IndexOf(CB_LOCAL.Text);

   if CB_LOCAL.ItemIndex <> ant_integer then begin
      if fValidaSenha(0,codusr,46,0,0,0,0,0, 'Senha para Confirmar a alteração do Local das Mercadorias','') <> 0 then begin
         fMensagem('Alteração não Aceita!',0,['0'],0);
         CB_LOCAL.ItemIndex:=valint(FloatTostr(ant_integer));
         exit;
      end;
   end;
end;

procedure Tfrm_Pfor01_02.CB_LOCALEnter(Sender: TObject);
begin
   ant_integer := CB_LOCAL.ItemIndex;
end;

procedure Tfrm_Pfor01_02.CB_TIPOEnter(Sender: TObject);
begin
   ant_integer := CB_TIPO.ItemIndex;
end;

procedure Tfrm_Pfor01_02.CB_TIPOExit(Sender: TObject);
begin
   with CB_TIPO do ItemIndex := Items.IndexOf(CB_TIPO.Text);

   CB_TIPO.Text := CB_TIPO.Items[CB_TIPO.Itemindex];

   if (ant_integer = 1) and (CB_TIPO.ItemIndex <> 1) then
      CB_GDP.Checked := true
   else if CB_TIPO.ItemIndex=1 then
      CB_GDP.Checked := false;
end;

procedure Tfrm_Pfor01_02.FormCreate(Sender: TObject);
begin

   Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

   mTemp_gueda        := True;



   if codusr=1111 then begin
      tbs_Configuracao.TabVisible := true;
      BitBtn1.Visible := True;
   end else begin
      tbs_Configuracao.TabVisible := false;
      BitBtn1.Visible := False;
   end;

   CB_BARRAS.Checked := dm1.Tb_PargerPLEITORPF.Value=1;


   flcadpar01(0,iif(codemp>100,codemp-100,codemp),'1');

   if (DM4.Tb_Par01PPFDC01.Value = 1) and (DM4.Tb_Par01PPFDC02.Value = 1) and (DM4.Tb_Par01PPFDVLR.Value = 1) then begin
      stc_desconto.Visible := False;
   end;

   if (DM4.Tb_Par01PPFDC01.Value = 1) then
     DESC01.Visible := False;
   if (DM4.Tb_Par01PPFDC02.Value = 1) then
     DESC02.Visible := False;
   if (DM4.Tb_Par01PPFDVLR.Value = 1) then
     VALDES.Visible:=False;

   pfor_ori := '';

   if StrToInt('0'+copy(mpseg,4,2)) = 02 then begin  // Grades cores tamanhos
      lote.Visible   :=True;
   end else if StrToInt('0'+copy(mpseg,4,2)) = 01 then begin // lotes
      DATAV.Visible  :=True;
      Lote.Visible   :=True;
   end;

   if flcadactab(0,0,IntToStr(codcar),'CADPFOR') then begin
      if DM4.Tb_AcTabAT_INC.Value=1 then
         bbinc_true:=False;
      if DM4.Tb_AcTabAT_ALT.Value=1 then
         bbalt_true:=False;
      if DM4.Tb_AcTabAT_EXC.Value=1 then
         bbexc_true:=False;
      if DM4.Tb_AcTabAT_REL.Value=1 then
         bbrel_true:=False;
   end else begin
      bbinc_true:=true;
      bbalt_true:=true;
      bbexc_true:=true;
      bbrel_true:=true;
   end;

   pfor_lotseq := ls_numpf;
   btn_incluir.Enabled := bbinc_true;
   fCarregaDadosCaixa('CADDAP0');

   if flfilpad(0,'_PFOR01','') then begin
      if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CALCPU',[]) then
         CB_CALCPU.Checked:=DM4.Tb_FilPad2FPVALOR.AsString = 'true';
   end;

   if codusr=1111 then
      CB_CALCPU.Visible := true
   else
      CB_CALCPU.Visible := false;

   CB_CALCPUClick(SELF);

   if DM4.Tb_Par01PATUACUS.Value = 1 then begin
      if Frm_Pcus=nil then
         Application.CreateForm(TFrm_Pcus, Frm_Pcus)
      else begin
         Frm_Pcus.Free;
         Frm_Pcus:=nil;
         Application.CreateForm(TFrm_Pcus, Frm_Pcus);
      end;
   end;

   mPd_Incluiu_Pedido    := False;
   //mPd_DatHor_Eve        := now;

   btn_incluir.Enabled   := True;
   btn_localizar.Enabled := True;
   btn_alterar.Enabled   := False;
   btn_gravar.Enabled    := False;
   btn_confirmar.Enabled := False;
   btn_calcular.Enabled  := False;
   btn_excluir.Enabled   := False;
   btn_cancelar.Enabled  := False;
   bbDupGravar.Enabled   := False;
   bbdup_editar.Enabled  := False;
   bbdup_cancelar.Enabled:= False;
   bbdup_excluir.Enabled := False;

   LimpaEdits(Self);

   mPd_NomeComputador    := NomeComputador;
   mPd_Oper_Ped          := 0;

   fBuscaPedAnterior(0);

end;

procedure Tfrm_Pfor01_02.CB_CALCPUClick(Sender: TObject);
begin
   fDeletaPadroes(0,'_PFOR01','CB_CALCPU');
   fGravaPadroes(0,'CB_CALCPU'   ,'checked'   ,'_PFOR01',iif(CB_CALCPU.Checked,'true','false'));
   if CB_CALCPU.Checked then
      TOTALI.Enabled:=true
   else
      TOTALI.Enabled:=false;
end;

procedure Tfrm_Pfor01_02.FormActivate(Sender: TObject);
begin
   if pfor_ori = 'consulta' then begin
      moper := 3;
      btn_localizar.Click;
   end;
end;

procedure Tfrm_Pfor01_02.btn_localizarClick(Sender: TObject);
var
  x,
  mqtd,
  mcodemp : Integer;
begin
  VALIPI.Value := 0;
  mvalipi2     := 0;
  
  if moper <> 3 then begin
     if Frm_PForLoc = nil then
        Application.CreateForm(TFrm_PForLoc, Frm_PForLoc)
     else begin
        Frm_PForLoc.Free;
        Frm_PForLoc:=nil;
        Application.CreateForm(TFrm_PForLoc, Frm_PForLoc);
     end;
     Frm_PForLoc.ShowModal;
     mchave_pf   := ValInt(Frm_PForLoc.chaveI.Text);
     pfor_lotseq := Valint(Frm_PForLoc.MLOTSEQ.Text);
     Frm_PForLoc.Free;
     Frm_PForLoc := nil;
  end;

  if (mchave_pf > 0) or (pfor_ori = 'consulta') then begin
     Application.CreateForm(TFrm_Agde, Frm_Agde);
     Frm_Agde.Label1.Caption:='Carregando os dados. Aguarde';
     Frm_Agde.Show;
     Frm_Agde.Update;

     if pfor_ori = 'consulta' then begin
        fPfor01lerant(0);
     end else begin
        btn_incluir.Enabled   := bbinc_true;
        btn_localizar.Enabled := True;
        btn_importar.Enabled  := true;

        btn_alterar.Enabled  := bbalt_true;
        btn_excluir.Enabled  := bbexc_true;
        btn_gravar.Enabled   := False;
        btn_imprimir.Enabled := bbrel_true;
        btn_calcular.Enabled := true;
        btn_vernota.Enabled  := true;
        btn_exportar.Enabled := TRUE;
        btn_excluir.Enabled  := true;

        if not fLerPF1(0,codemp,pfor_lotseq,mchave_pf) then begin
           Fmensagem('Chave não encontrada!',0,['0'],0);
           Frm_Agde.Free;
           Exit;
        end;

        if (Qr_Pf01PF1STATUS.Value<1) or (Qr_Pf01PF1STATUS.Value=8) or (mOrigem_PF=8) then
            btn_confirmar.Enabled:=True
        else
            btn_confirmar.Enabled:=False;

        if (Qr_Pf01PF1STATUS.Value>0) then
            txt_Situacao.Text:='Confirmado'
        else
            txt_Situacao.Text:='Pendente';

        txt_MODO.Text  :='Espera';

        if Qr_Pf01PF1SITPROD.AsInteger=0 then
           txt_fase.Text:='Liberado'
        else if Qr_Pf01PF1SITPROD.AsInteger=1 then
           txt_fase.Text:='Analisando'
        else if Qr_Pf01PF1SITPROD.AsInteger=2 then
           txt_fase.Text:='Rejeitado';

        CB_CASASD.ItemIndex:=Qr_Pf01PF1CASASD.AsInteger;
        CB_CASASDClick(self);
        CB_LOCAL.ItemIndex :=Qr_Pf01PF1LOCAL.AsInteger;

        if CB_CASASD.ItemIndex=0 then begin
           if DM1.Tb_PargerPCASPUIND.Value>mQtdCas_arredpu then begin
              pf01_caspu:=mcaspuind;
              CB_CASASD.ItemIndex:=(DM1.Tb_PargerPCASPUIND.AsInteger-1)
           end else begin
              pf01_caspu:=mcasaspu;
              CB_CASASD.ItemIndex:=(mQtdCas_arredpu-1)
           end
        end else begin
           pf01_caspu:='#,##0.0'+Insere2('0','0',CB_CASASD.ItemIndex);
        end;

        fLerPF1V(0,codemp,pfor_lotseq,mchave_pf);
        fLerPF2(0,codemp,pfor_lotseq,mchave_pf);
     end;


     {---Carrega os Itens do Pedido de Compra---}
     mcodemp := Qr_PF02PF2CODEMP.AsInteger;
     Qr_Itens.Close;
     Qr_Itens.Active := True;
     

     While not Qr_PF02.Eof do begin

        Qr_Itens.Insert;
        Qr_ItensCODPRO.Value  := ValFloat(Qr_PF02PF2CODPRO.AsString);
        Qr_ItensQTD.Value     := ValFloat(FormatFloat(pf01_casqtd,Qr_PF02PF2QTDP.Value));
        Qr_ItensUND.Value     := Qr_PF02undpro.Value;
        Qr_ItensNOMPRO.Value  := Qr_PF02PF2NOMPRO.Value;
        Qr_ItensPCOUNI.Value  := Qr_PF02PF2PU.Value;
        Qr_ItensDESC01.Value  := ValFloat(Formatfloat(mcasas,Qr_PF02PF2DESC01.Value));
        Qr_ItensDESC02.Value  := ValFloat(Formatfloat(mcasas,Qr_PF02PF2DESC02.Value));
        Qr_ItensDESC03.Value  := ValFloat(FormatFloat(mcasas,Qr_PF02PF2DESC03.Value));
        Qr_ItensVALDESI.Value := ValFloat(Formatfloat(mcasas,Qr_PF02PF2VALDES.Value));
        Qr_ItensTOTALI.Value  := (Qr_PF02PF2QTDP.Value*Qr_PF02PF2PU.Value);
        Qr_ItensLOTE.AsString := Qr_PF02PF2LOTE.Value;

        if (Qr_PF02PF2DATAV.IsNull) or (Qr_PF02PF2DATAV.Value<=pdatanula) then
           Qr_ItensDATAV.AsString := ''
        else
           Qr_ItensDATAV.AsString := FormatDatetime(fdt2,Qr_PF02PF2DATAV.Value);

        Qr_ItensBASER.Value         := ValFloat(FormatFloat(mcasas,Qr_PF02PF2BASER.Value));
        Qr_ItensICMSR.Value         := ValFloat(Formatfloat(mcasas,Qr_PF02PF2ICMSR.Value));
        Qr_ItensBASEN.Value         := ValFloat(Formatfloat(mcasas,Qr_PF02PF2BASEN.Value));
        Qr_ItensICMSN.Value         := ValFloat(Formatfloat(mcasas,Qr_PF02PF2ICMSN.Value));
        Qr_ItensTOTDES.Value        := ValFloat(Formatfloat(mcasas,Qr_PF02PF2TOTDES.Value-Qr_PF02PF2DESCRAT.Value));
        Qr_ItensSITTRI.value        := Qr_PF02PF2SIT.Value;
        Qr_ItensTABICM.Value        := Qr_PF02PF2TAB.Value;
        Qr_ItensLISTA.Value         := Formatfloat('0',Qr_PF02PF2LISTA.Value);
        Qr_ItensCFOP.Value          := Formatfloat('0000',Qr_PF02PF2CFO.Value);
        Qr_ItensCFOP_COMP.Value     := Qr_PF02PF2CFOP_COMP.AsString;
        Qr_ItensALIPI.Value         := ValFloat(Formatfloat(mcasas,Qr_PF02PF2ALIPI.Value));
        Qr_ItensVALIPI.Value        := ValFloat(Formatfloat(mcasas,Qr_PF02PF2IPI.Value));
        mvalipi2                    := mvalipi2 + Qr_PF02PF2IPI.Value;
        Qr_ItensALICMS.Value        := ValFloat(Formatfloat(mcasas,Qr_PF02PF2ALIQ.Value));
        Qr_ItensBASENR.Value        := ValFloat(Formatfloat(mcasas,Qr_PF02PF2BASENR.Value));
        Qr_ItensICMSNR.Value        := ValFloat(Formatfloat(mcasas,Qr_PF02PF2ICMSNR.Value));
        Qr_ItensISENTAS.Value       := ValFloat(Formatfloat(mcasas,Qr_PF02PF2ISENTAS.Value));
        Qr_ItensPMC.Value           := ValFloat(Formatfloat(mcasas,Qr_PF02PF2PMC.Value));
        Qr_ItensDESCRAT.Value       := ValFloat(Formatfloat(mcasas,Qr_PF02PF2DESCRAT.Value));
        Qr_ItensOUTRAS.Value        := ValFloat(Formatfloat(mcasas,Qr_PF02PF2OUTRAS.Value));
        Qr_ItensVALPBT.Value        := ValFloat(Formatfloat(mcasas,Qr_PF02PF2PBT.Value));
        Qr_ItensFRERAT.Value        := ValFloat(Formatfloat(mcasas,Qr_PF02PF2FRERAT.Value));
        Qr_ItensPCOUNI.Value        := ValFloat(Formatfloat(mcasas,Qr_PF02PF2PUOUT.Value));
        Qr_ItensVALDESI_COMP.Value  := ValFloat(Formatfloat(mcasas,Qr_PF02PF2VALDESOUT.Value));
        Qr_ItensTOTALI_COMP.Value   := ValFloat(Formatfloat(mcasas,Qr_PF02PF2PUOUT.Value*Qr_PF02PF2QTDP.Value));
        Qr_ItensOUT_TOTDES.value    := ValFloat(Formatfloat(mcasas,Qr_PF02PF2TOTDESOUT.Value));
        Qr_ItensOUT_FRETERAT.Value  := ValFloat(Formatfloat(mcasas,Qr_PF02PF2FRERATOUT.Value));
        Qr_ItensOUT_DESCRAT.Value   := ValFloat(Formatfloat(mcasas,Qr_PF02PF2DESCRATOUT.Value));
        Qr_ItensPREDICMNOR.Value    := ValFloat(Formatfloat(mcasas,Qr_PF02PF2PREDICMNOR.AsFloat));
        Qr_ItensLOTE_RE.Value       := Qr_PF02PF2LOTE_RE.AsString;

        Qr_Itens.Post;
        mqtd:=mqtd+1;
        Qr_PF02.Next;
     end;

     {---Inicia os Vencimentos da Duplicatas---}
     fRatearSIV(0);

     Qr_Duplicatas.Close;
     Qr_Duplicatas.Active := True;
     While not Qr_PF01v.Eof do begin

        Qr_Duplicatas.Insert;
        Qr_DuplicatasDTVCTO.Value := FormatDateTime(fdt2,Qr_PF01vPF1VDATAV.Value);
        Qr_DuplicatasVALOR.Value  := Qr_PF01vPF1VVALOR.Value;
        Qr_DuplicatasDESCFIN.Value:= Qr_Pf01VPF1VDESCF.Value;

        if (Qr_Pf01VPF1VDTDESCF.IsNull) or (Qr_Pf01VPF1VDESCF.Value<=pdatanula) then
           Qr_DuplicatasPGTODT.Value := '/  /'
        else
           Qr_DuplicatasPGTODT.Value := FormatDateTime(fdt2,Qr_Pf01VPF1VDTDESCF.Value);

        Qr_DuplicatasVLROUT.Value     := Qr_Pf01VPF1VVALOUT.Value;
        Qr_DuplicatasDESCFINOUT.Value := Qr_Pf01VPF1VDESCFOUT.Value;
        Qr_DuplicatasEXTRA.Value      := iif(Qr_Pf01VPF1VDES_CODEMP.AsFloat>0,'X','');
        Qr_Duplicatas.Post;

        Qr_PF01v.Next;
     end;

     fTotdupDig(0);

     flcadfor(1,0,Qr_PF01PF1CODFOR.AsString);
     CHAVE.Text  :=Qr_PF01PF1CHAVE.AsString;
     mSitProd    :=Qr_Pf01PF1SITPROD.AsInteger;
     CODFOR.Text :=Qr_PF01Pf1CODFOR.AsString;
     CONDPAG.Text:=Qr_Pf01PF1CONDPAG.Value;
     NOMFOR.Text:=DM1.Tb_ForFRAZAO.Value;
     UFFOR.Text :=DM1.Tb_ForFUF.Value;
     DATAP.Text :=FormatDatetime(fdt2,Qr_Pf01PF1DATA.Value);

     if (Qr_Pf01PF1DATANF.IsNull) or (Qr_Pf01PF1DATANF.Value<=pdatanula) then
        DATAE.Text:='/  /'
     else
        DATAE.Text:=FormatDateTime(fdt2,Qr_Pf01PF1DATANF.Value);

     if (Qr_Pf01PF1DATAENT.IsNull) or (Qr_Pf01PF1DATAENT.Value<=pdatanula) then
        DATAENT.Text:=FormatDateTime(fdt2, pdatasis)
     else
        DATAENT.Text:=FormatDateTime(fdt2,Qr_Pf01PF1DATAENT.Value);

     NUMNF.Text      :=Qr_Pf01PF1NUMNF.AsString;
     SERIE.Text      :=Qr_Pf01PF1SERIE.Value;
     SUBSERIE.Text   :=Qr_Pf01PF1SUBSER.Value;
     MODELO.Text     :=Qr_Pf01PF1MODELO.Value;
     SUBMOD.Text:=FormatFloat('000',StrTofloat('0'+PalNum_Sis(Qr_Pf01PF1SUBMOD.Value)));
     TOTMER.Text     :=FormatFloat(mcasas,Qr_Pf01PF1TOTMER.Value);
     MBASEN.Text     :=FormatFloat(mcasas,Qr_Pf01PF1BASEN.Value);
     ICMSN.Text      :=FormatFloat(mcasas,Qr_Pf01PF1ICMSN.Value);
     MBASER.Text     :=FormatFloat(mcasas,Qr_Pf01PF1BASER.Value);
     MICMSR.Text     :=FormatFloat(mcasas,Qr_Pf01PF1ICMSR.Value);
     OUTDESP.Text    :=FormatFloat(mcasas,Qr_Pf01PF1OUTDESP.Value);

     OUTRAS.Text     :=FormatFloat(mcasas,Qr_Pf01PF1TOTOUT.Value);
     OUTRAS_PERC.Text:=FormatFloat(mcasas,Qr_Pf01PF1TOTOUT_ALIQ.Value);
     OUTRAS_IMP.Text :=FormatFloat(mcasas,Qr_Pf01PF1TOTOUT_IMP.Value);
     TOTAL_BC.Text   :=FormatFloat(mcasas,Qr_Pf01PF1TOTOUT.AsFloat+Qr_Pf01PF1BASEN.AsFloat);
     TOTAL_ICMS.Text :=FormatFloat(mcasas,Qr_Pf01PF1ICMSN.AsFloat+Qr_Pf01PF1TOTOUT_IMP.AsFloat);

     OUTNINC.Text    :=FormatFloat(mcasas,Qr_Pf01PF1OUTNINC.Value);
     VALFRE.Text     :=FormatFloat(mcasas,Qr_Pf01PF1TOTFRE.Value);
     IPIFRETE.Text   :=FormatFloat(mcasas,Qr_Pf01PF1IPIFRETE.Value);
     PIPIFRETE.Text  :=FormatFloat(mcasas,Qr_Pf01PF1PIPIFRETE.Value);
     IPI.Text        :=FormatFloat(mcasas,Qr_Pf01PF1TOTIPI.Value);
     VALIPI.Text     :=FormatFloat(mcasas,mvalipi2);
     SEGURO.Text     :=FormatFloat(mcasas,Qr_Pf01PF1TOTSEG.Value);
     DESC.Text       :=FormatFloat(mcasas,Qr_Pf01PF1TOTDES.Value);
     ISENTAS.Text    :=FormatFloat(mcasas,Qr_Pf01PF1ISENTAS.Value);
     TOTINA.Text     :=FormatFloat(mcasas,Qr_Pf01PF1TOTINA.Value);
     TOTPOS.Text     :=FormatFloat(mcasas,Qr_Pf01PF1TOTPOS.Value);
     TOTNEG.Text     :=FormatFloat(mcasas,Qr_Pf01PF1TOTNEG.Value);
     TOTNOT.Text     :=FormatFloat(mcasas,Qr_Pf01PF1TOTLIQ.Value);
     PERCFRE.Text    :=FormatFloat(mcasas,Qr_Pf01PF1PERCFRE.Value);

     if Qr_Pf01PF1TIPO.AsInteger<2 then
        CB_TIPO.ItemIndex:=Qr_Pf01PF1TIPO.AsInteger
     else if Qr_Pf01PF1TIPO.AsInteger=10 then
        CB_TIPO.ItemIndex:=2;

     SIV_FRETE.Text  :=FormatFloat(mcasas, Qr_Pf01PF1SIV_FRETE.Value);
     SIV_DARE.Text   :=FormatFloat(mcasas, Qr_Pf01PF1SIV_DARE.Value);
     SIV_OUTROS.Text :=FormatFloat(mcasas, Qr_Pf01PF1SIV_OUTROS.Value);
     PAG_ORI.Text    :=Qr_Pf01PF1PAG_ORI.AsString;

     if (Qr_Pf01PF1DTPFAT.IsNull) or (Qr_Pf01PF1DTPFAT.Value<=pdatanula) then
        DTPFAT.Text:=FormatDateTime(fdt2, pdatasis)
     else
        DTPFAT.Text:=FormatDateTime(fdt2,Qr_Pf01PF1DTPFAT.Value);

     if (Qr_Pf01PF1DTPENT.IsNull) or (Qr_Pf01PF1DTPENT.Value<=pdatanula) then
        DTPENT.Text:=FormatDateTime(fdt2, pdatasis)
     else
        DTPENT.Text:=FormatDateTime(fdt2,Qr_Pf01PF1DTPENT.Value);

     if Qr_Pf01PF1FRETEPC.IsNull then
        RGFRETEPC.ItemIndex:=0
     else
        RGFRETEPC.ItemIndex:=Qr_Pf01PF1FRETEPC.AsInteger-1;

     NUMDUP.Text     :=Qr_Pf01PF1NUMDUP.AsString;
     OUTVDUP.Text    :=Formatfloat(mcasas, Qr_Pf01PF1OUTVDUP.Value);

     DESD.Text       :=Qr_Pf01PF1DESD.AsString;
     CB_GNF.Checked  :=Qr_Pf01PF1GRAVNF.Value=1;
     CB_GDP.Checked  :=Qr_Pf01PF1GRAVDP.Value=1;

     if Trim(DESD.Text)='' then
        DESD.Text:='A';

     STATUS.Text :=Qr_PF01PF1STATUS.AsString;
     flcadusr(1,0,Qr_PF01PF1CODUSR.AsString);

     DESC01.Text   :=FormatFloat(mcasas,Qr_PF01PF1DESC01.Value);
     DESC02.Text   :=FormatFloat(mcasas,Qr_PF01PF1DESC02.Value);
     VALDES.Text   :=FormatFloat(mcasas,Qr_Pf01PF1DESC03.Value);

     if Qr_PF01PF1CODTRA.IsNull then begin
        CODTRA.Text:='';
        NOMTRA.Text:='';
     end else begin
        CODTRA.Text:=Qr_PF01PF1CODTRA.AsString;
        flcadtra(1,0,Qr_PF01PF1CODTRA.AsString);
        NOMTRA.Text:=DM1.Tb_TraTRRAZTRA.Value;
     end;

     VALFRE.Text        :=Formatfloat(mcasas, Qr_Pf01PF1TOTFRE.Value);
     CODBCO.Text        :=Qr_Pf01PF1CODBCO.AsString;
     mcodldr            :=Qr_Pf01PF1CODLDR.AsInteger;
     CB_BOLETO.Checked  :=Qr_Pf01PF1TEMBOL.AsInteger=0;
     mQtdMan            :=Qr_Pf01PF1QTDMAN.AsInteger;
     PRAZO.Text         :=Qr_Pf01PF1PRAZO.AsString;
     QTDP.Text          :=Qr_Pf01PF1QTDP.AsString;
     INT.Text           :=Qr_Pf01PF1INT.AsString;
     fcalcular(1);
     Frm_Agde.Free;
  end;
end;

function Tfrm_Pfor01_02.fPfor01lerant(ptipo: Integer): Boolean;
var
  x,
  mcod: Integer;
  minstru: String;
  v: String;
begin
  minstru:=' Select ';
  v:='';

  for x:=0 to Qr_PF01.FieldCount-1 do begin
      if Qr_PF01.Fields[x].FieldKind=fkCalculated then
         Continue;

       minstru:=minstru+v+Qr_PF01.Fields[x].FieldName;
       v:=',';
  end;
  minstru:=minstru+' from OLD_CADPF1 where PF1CODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
  Qr_PF01.Close;
  Qr_PF01.SQL.Clear;
  Qr_PF01.SQL.add(minstru);
  Qr_PF01.Open;

  minstru:=' Select ';
  v:='';

  for x:=0 to Qr_Pf01V.FieldCount-1 do begin
     if Qr_Pf01V.Fields[x].FieldKind=fkCalculated then
        Continue;

     minstru:=minstru+v+Qr_Pf01V.Fields[x].FieldName;
     v:=',';
  end;

  minstru:=minstru+' from OLD_CADPF1V where PF1VCODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
  Qr_Pf01V.Close;
  Qr_Pf01V.SQL.Clear;
  Qr_Pf01V.SQL.add(minstru);
  Qr_Pf01V.Open;

  minstru:=' Select ';
  v:='';

  for x:=0 to Qr_PF02.FieldCount-1 do begin
     if Qr_PF02.Fields[x].FieldKind=fkCalculated then
        Continue;

     minstru:=minstru+v+Qr_PF02.Fields[x].FieldName;
     v:=',';
  end;

  minstru:=minstru+' from OLD_CADPF2 where PF2CODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
  Qr_PF02.Close;
  Qr_PF02.SQL.Clear;
  Qr_PF02.SQL.add(minstru);
  Qr_PF02.Open;

  btn_incluir.Enabled  :=False;
  btn_localizar.Enabled:=False;
  btn_importar.Enabled :=False;

  btn_alterar.Enabled  :=False;
  btn_excluir.Enabled  :=False;
  btn_gravar.Enabled   :=False;
  btn_imprimir.Enabled :=False;
  btn_vernota.Enabled  :=False;
  btn_exportar.Enabled :=False;

  btn_calcular.Enabled :=False;
  btn_confirmar.Enabled:=False;
  Result:=True;
end;

function Tfrm_Pfor01_02.fLerPF1V(ptipo: Integer; pCodEmp, pLotSeq, pChave: Real): Boolean;
begin
  Qr_Pf01V.Close;
  Qr_Pf01V.Sql.Clear;
  Qr_Pf01V.Sql.Add('Select PF1VCODEMP, '
                  +'       PF1VCHAVE, '
                  +'       PF1VCODIGO, '
                  +'       PF1VDATAV, '
                  +'       PF1VTABPV, '
                  +'       PF1VDTDESCF, '
                  +'       PF1VLOTSEQ, '
                  +'       PF1VVALOUT, '
                  +'       PF1VDESCFOUT, '
                  +'       PF1VDES_CODEMP, ');

   if ptipo=2 then begin
      Qr_Pf01V.Sql.add(' PF1VVALOR+PF1VVALOUT    AS PF1VVALOR, '
                      +' PF1VDESCF+PF1VDESCFOUT AS PF1VDESCF ')
   end else if ptipo=1 then begin
      Qr_Pf01V.Sql.add(' PF1VVALOUT    AS PF1VVALOR, '
                      +' PF1VDESCFOUT AS PF1VDESCF ');
   end else begin
      Qr_Pf01V.Sql.add(' PF1VVALOR, '
                      +' PF1VDESCF ');
   end;

   Qr_Pf01V.Sql.add('  from CADPF1V where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' PF1VCODEMP=0'+FloatToStr(pCodEmp)+' and ')
                   +' PF1VLOTSEQ=0'+Floattostr(pLotSeq)
                   +' and PF1VCHAVE=0'+Floattostr(pChave)
                   +' order by PF1VCODEMP,PF1VLOTSEQ,PF1VDATAV');
   try
     Qr_PF01V.Open;
   except
     Qr_PF01V.Sql.SaveToFile('C:\SQL.TXT');
   end;

   if Qr_PF01V.Eof then
      result:=false
   else
      result:=true;
end;

function Tfrm_Pfor01_02.fLerPF2(ptipo: Integer; pCodEmp, pLotSeq, pChave: Real): Boolean;
begin
   Qr_Pf02.Close;
   Qr_Pf02.Sql.Clear;
   Qr_Pf02.Sql.Add('Select PF2CODEMP, '
                  +'       PF2CHAVE, '
                  +'       PF2ITEM, '
                  +'       PF2CODPRO, '
                  +'       PF2LOTE, '
                  +'       PF2DATAV, '
                  +'       PF2QTDP, '
                  +'       PF2DESC01, '
                  +'       PF2DESC02, '
                  +'       PF2DESC03, '
                  +'       PF2SIT, '
                  +'       PF2ALIQ, '
                  +'       PF2ALIQNR, '
                  +'       PF2BASEN, '
                  +'       PF2ICMSN, '
                  +'       PF2BASER, '
                  +'       PF2ICMSR, '
                  +'       PF2STATUS, '
                  +'       PF2TAB, '
                  +'       PF2LISTA, '
                  +'       PF2PCOTAB, '
                  +'       PF2BASENR, '
                  +'       PF2ICMSNR, '
                  +'       PF2ISENTAS, '
                  +'       PF2ALIPI, '
                  +'       PF2IPI, '
                  +'       PF2CFO, '
                  +'       PF2CFOP_COMP, '
                  +'       PF2LOTSEQ, '
                  +'       PF2PMC, '
                  +'       PF2OUTRAS, '
                  +'       PF2ORIGEM, '
                  +'       PF2STATUS_PF1, '
                  +'       PF2PUOUT, '
                  +'       PF2PBT, '
                  +'       PF2QTDREC, '
                  +'       PF2FRERATOUT, '
                  +'       PF2DESCRATOUT, '
                  +'       PF2VALDESOUT, '
                  +'       PF2TOTDESOUT, '
                  +'       NVL(TRIM(PF2NOMPRO),PDNOME) AS PF2NOMPRO, '
                  +'       PF2OBS, '
                  +'       PF2SIV_OUTROS, ');

   if ptipo=2 then begin
      Qr_Pf02.Sql.Add(' PF2PU+PF2PUOUT AS  PF2PU, '
                     +' PF2FRERAT+PF2FRERATOUT AS PF2FRERAT, '
                     +' PF2TOTDES+PF2TOTDESOUT AS PF2TOTDES, '
                     +' PF2VALDES+PF2VALDESOUT AS PF2VALDES, '
                     +' PF2DESCRAT+PF2DESCRATOUT AS PF2DESCRAT ');
   end else if ptipo=1 then begin
      Qr_Pf02.Sql.Add(' PF2PUOUT AS  PF2PU, '
                     +' PF2FRERATOUT AS PF2FRERAT, '
                     +' PF2TOTDESOUT AS PF2TOTDES, '
                     +' PF2VALDESOUT AS PF2VALDES, '
                     +' PF2DESCRATOUT AS PF2DESCRAT ');
   end else begin
      Qr_Pf02.Sql.Add('     PF2PU, '
                     +'       PF2FRERAT, '
                     +'       PF2TOTDES, '
                     +'       PF2VALDES, '
                     +'       PF2DESCRAT ');
   end;

   Qr_Pf02.Sql.Add(', PF2PREDICMNOR ');
   Qr_Pf02.Sql.Add(', PF2LOTE_RE ');
   Qr_Pf02.Sql.Add(', PF2DTENTRADA ');

   Qr_Pf02.Sql.Add(' from CADPF2 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' PF2CODEMP=0'+FloatToStr(pCodEmp)+' and ')
                  +' PF2LOTSEQ=0'+Floattostr(pLotSeq)
                  +' and PF2CHAVE=0'+Floattostr(pChave)
                  +' order by PF2CODEMP,PF2LOTSEQ,PF2CHAVE');

   try
     Qr_PF02.Open;
   except
     Qr_PF02.Sql.SaveToFile('C:\SQL.TXT');
   end;

   if Qr_PF02.Eof then
      result:=false
   else
     result:=true;
end;

function Tfrm_Pfor01_02.fTotdupDig(pTipo: Integer): boolean;
var
  x : Integer;
  mTotdup: real;
  mQtdDup: Integer;
begin
  mTotdup:=0;
  mQtdDup:=0;

  Qr_Duplicatas.First;
  for x := 1 to Qr_Duplicatas.RecordCount do begin
      if Qr_DuplicatasVALOR.value > 0 then begin
         mTotdup := mTotdup+Qr_DuplicatasVALOR.Value;
         mQtdDup := mQtdDup+1;
      end;
  end;

  memo_totdup.Lines.Clear;
  memo_totdup.Lines.Add('Total Das ');
  memo_totdup.Lines.Add('Duplicatas ');
  memo_totdup.Lines.Add(Formatfloat(mcasas,mTotdup));
  memo_totdup.Lines.Add('Qtd.: '+FloatToStr(mQtdDup));
  result := true;
end;

function Tfrm_Pfor01_02.fcalcular(ptipo: Integer): Boolean;
var
  x          : Integer;
begin
  mtotu     := 0;
  mtotb     := 0;
  mtotb_out := 0;
  mtotd     := 0;
  mtoticm   := 0;
  basen     := 0;
  micmsn    := 0;
  baser     := 0;
  mtotipi   := 0;
  mvalipi   := 0;
  mtotise   := 0;
  mtotout   := 0;
  mtotpos   := 0;
  mtotneg   := 0;
  mtotina   := 0;
  mpavdes   := 0;
  mpavfre   := 0;
  mpavfreout:= 0;

  if not Qr_Itens.IsEmpty then begin
      Qr_Itens.First;
      //Qr_Itens.Edit;
      while not Qr_Itens.Eof do begin
         if Qr_ItensCODPRO.AsFloat = 0 then
            Continue;

         mtotu     := mtotu+Qr_ItensQTD.AsFloat;
         mtotb     := mtotb+frm_Pfor01_02.Qr_ItensTOTALI.AsFloat;

         mtotb_out := mtotb_out+frm_Pfor01_02.Qr_ItensTOTALI_COMP.AsFloat;
         mtotd_out := mtotd_out+frm_Pfor01_02.Qr_ItensOUT_TOTDES.AsFloat;

         mtotd     := mtotd+frm_Pfor01_02.Qr_ItensTOTDES.AsFloat;
         mtoticm   := mtoticm+frm_Pfor01_02.Qr_ItensICMSR.AsFloat;
         basen     := basen+frm_Pfor01_02.Qr_ItensBASEN.AsFloat;
         micmsn    := micmsn+frm_Pfor01_02.Qr_ItensICMSN.AsFloat;
         baser     := baser+frm_Pfor01_02.Qr_ItensBASER.AsFloat;
         mtotipi   := mtotipi+frm_Pfor01_02.Qr_ItensVALIPI.AsFloat;
         mvalipi   := mvalipi+frm_Pfor01_02.Qr_ItensVALIPI.AsFloat;
         mtotise   := mtotise+frm_Pfor01_02.Qr_ItensISENTAS.AsFloat;
         mtotout   := mtotout+frm_Pfor01_02.Qr_ItensOUTRAS.AsFloat;

         if Trim(frm_Pfor01_02.Qr_ItensLISTA.AsString) = '1' then
            mtotpos  := mtotpos+frm_Pfor01_02.Qr_ItensTOTALI.AsFloat-frm_Pfor01_02.Qr_ItensTOTDES.AsFloat-frm_Pfor01_02.Qr_ItensDESCRAT.AsFloat
         else if Trim(frm_Pfor01_02.Qr_ItensLISTA.AsString) = '2' then
            mtotneg  := mtotneg+frm_Pfor01_02.Qr_ItensTOTALI.AsFloat-frm_Pfor01_02.Qr_ItensTOTDES.AsFloat-frm_Pfor01_02.Qr_ItensDESCRAT.AsFloat
         else
            mtotina  := mtotina+frm_Pfor01_02.Qr_ItensTOTALI.AsFloat-frm_Pfor01_02.Qr_ItensTOTDES.AsFloat-frm_Pfor01_02.Qr_ItensDESCRAT.AsFloat;

         frm_Pfor01_02.Qr_Itens.Next;
      end;
   end;

   mpavdes := (mtotb+mtotb_out)-(mtotd+mtotd_out);

   if (mpavdes<>0) and (valFloat(VALDES.Text) <> 0) then begin
      mpavdes := (valfloat(VALDES.Text)*100)/mpavdes;
      mpavdes := mpavdes+0.01;
   end else
      mpavdes := 0;

   mpavdes := Arredonda(mpavdes,3);

   mpavfre := (mtotb+mtotb_out)-(mtotd+mtotd_out);

   if (mpavfre<>0) and (valFloat(VALFRE.Text)<>0) then begin
      mpavfre := (valfloat(VALFRE.Text)*100)/mpavfre;
      mpavfre := mpavfre+0.01;
   end else
      mpavfre := 0;

   mpavfre    := Arredonda(mpavfre,3);

   mpavfreout := (mtotb+mtotb_out)-(mtotd+mtotd_out);


   mpavfreout := Arredonda(mpavfreout,3);

   {if ValFloat(MOUTROS.Text)<>0 then begin
      mtotd_out := mtotd_out+(Arredonda( (ValFloat(VALDES.Text)*ValFloat(MOUTROS.Text)/100),DM1.Tb_PargerPCASAS.AsInteger));
      mtotd     := mtotd+(ValFloat(VALDES.Text)-
                  (Arredonda( (ValFloat(VALDES.Text)*ValFloat(MOUTROS.Text)/100),DM1.Tb_PargerPCASAS.AsInteger)));
   end else
      mtotd := mtotd+(ValFloat(VALDES.Text));}

   TOTITEM.Caption := insere(formatFloat(pf01_casqtd,mtotu),' ',10);
   QTDITEM.Caption := insere(InttoStr(Qr_Itens.RecordCount),' ',10);
   TOTAL.Text      := insere(FormatFloat(mcasas,mtotb),' ',12);

   OUTNINC.Text    := FormatFloat(mcasas,mtotout);

   if ptipo<>1 then begin

      TOTDES.Text      := insere(FormatFloat(mcasas,mtotd),' ',12);
      TOTFRE.Text      := VALFRE.Text;
      IPI.Text         := FormatFloat(mcasas,mtotipi);
      VALIPI.Text      := FormatFloat(mcasas,mvalipi);
      ICMSR.Text       := insere(FormatFloat(mcasas,mtoticm),' ',12);
      MBASEN.Text      := FormatFloat(mcasas,basen);
      ICMSN.Text       := FormatFloat(mcasas,micmsn);

      MBASER.Text      := FormatFloat(mcasas,baser);
      MICMSR.Text      := FormatFloat(mcasas,mtoticm);
      DESC.Text        := FormatFloat(mcasas,mtotd);
      ISENTAS.Text     := FormatFloat(mcasas,mtotise);
      TOTINA.Text      := FormatFloat(mcasas,mtotina);
      TOTPOS.Text      := FormatFloat(mcasas,mtotpos);
      TOTNEG.Text      := FormatFloat(mcasas,mtotneg);
      TOTMER.Text      := FormatFloat(mcasas,mtotb);
      TOTLIQ.Text      := insere(FormatFloat(mcasas,mtotb-mtotd+Valfloat(MICMSR.Text)
                          +Valfloat(VALFRE.Text)+Valfloat(IPI.Text)
                          +Valfloat(IPIFRETE.Text)+ValFloat(OUTRAS.Text)
                          +ValFloat(OUTDESP.Text)+ValFloat(SEGURO.Text)),' ',12);
      TOTNOT.Text      := FormatFloat(mcasas,ValFloat(TOTLIQ.Text));
   end else begin
      ICMSR.Text       := MICMSR.Text;
      TOTFRE.Text      := VALFRE.Text;
      TOTDES.Text      := DESC.Text;
      TOTLIQ.Text      := insere(FormatFloat(mcasas,mtotb-mtotd+Valfloat(MICMSR.Text)+Valfloat(VALFRE.Text)+Valfloat(IPI.Text)+Valfloat(IPIFRETE.Text)+ValFloat(OUTRAS.Text)+ValFloat(OUTDESP.Text)+ValFloat(SEGURO.Text)),' ',12);
   end;
   result := True;
end;

procedure Tfrm_Pfor01_02.bbSugestaoClick(Sender: TObject);
begin
   if Frm_Pfor01_PedAut=nil then
      Application.CreateForm(TFrm_Pfor01_PedAut, Frm_Pfor01_PedAut)
   else begin
      Frm_Pfor01_PedAut.Free;
      Frm_Pfor01_PedAut:=nil;
      Application.CreateForm(TFrm_Pfor01_PedAut, Frm_Pfor01_PedAut);
   end;

   if trim(CODFOR.Text)<>'' then begin
      if flcadfor(1,1,CODFOR.Text) then begin
         Frm_Pfor01_PedAut.CODFOR.Text:=CODFOR.Text;
         Frm_Pfor01_PedAut.NOMFOR.Text:=NOMFOR.Text;
         Frm_Pfor01_PedAut.MDT2.Text  :=FormatDatetime(fdt2, fdatafinal(-1,pdatasis));
         Frm_Pfor01_PedAut.MDT2.Text  :=FormatDatetime(fdt2, fultdiames(StrToDate(Frm_Pfor01_PedAut.MDT2.Text)));
         Frm_Pfor01_PedAut.MDT1.Text  :=FormatDatetime(fdt2, fdatafinal(-2,StrToDateTime(Frm_Pfor01_PedAut.MDT2.Text)));
         Frm_Pfor01_PedAut.MDT1.Text  :=FormatDateTime(fdt2, StrtodAte('01/'+FormatDatetime('mm/yyyy',
                                                       StrToDate(Frm_Pfor01_PedAut.MDT1.Text))));
         Frm_Pfor01_PedAut.bbGerar.click;
      end;
   end;

   if Frm_Pfor01_PedAut.ShowModal=mrok then begin
      Frm_Pfor01_PedAut.Tb_PFor.First;

      While not Frm_Pfor01_PedAut.Tb_PFor.Eof do begin
         if Frm_Pfor01_PedAut.Tb_PForQTDPED.AsFloat<=0 then begin
            Frm_Pfor01_PedAut.Tb_PFor.Next;

            Continue;
         end;
         CODPRO.Text:=Frm_Pfor01_PedAut.Tb_PForCODPRO.AsString;
         QTD.Text   :=FormatFloat(mcasqtd, Frm_Pfor01_PedAut.Tb_PForQTDPED.AsFloat);
         CODPROExit(Self);

         if ValFloat(CFOP.Text)=0 then begin
            DM1.Query1.Close;
            DM1.query1.SQL.Clear;
            DM1.Query1.SQL.Add('Select CFCODCFO,CFNOME from CADCFO where '
                              +iif(DM1.Qr_tid.Locate('TINOME','CADCFO',[]),'',' CFCODEMP=0'+intTostr(codemp)+' and ')
                              +' CFNOME like '+chr(39)+'COMPR%'+chr(39));

            if DM1.Tb_ForFUF.AsString=DM1.Tb_EmpUF.AsString then
               DM1.query1.SQL.Add(' and CFCODCFO>=1000 and CFCODCFO<2000')
            else
               DM1.query1.SQL.Add(' and CFCODCFO>=2000 and CFCODCFO<3000');

            DM1.Query1.Open;

            if DM1.Query1.IsEmpty then begin
               if DM1.Tb_ForFUF.AsString=DM1.Tb_EmpUF.AsString then
                  CFOP.Text:='1102'
               else
                  CFOP.Text:='2102';
            end else begin
               CFOP.Text   :=DM1.Query1.fieldbyName('CFCODCFO').AsString;
            end;
         end;

         SITTRI.Text:=Frm_Pfor01_PedAut.Tb_PForSITTRI.AsString;
         TOTALI.Text:=FormatFloat(mcasas,ValFloat(PCOUNI.Text)*ValFloat(QTD.Text));

         fGravaItem(0);
         Frm_Pfor01_PedAut.Tb_PFor.Next;
      end;
   end;

   if Trim(mnomeView)<>'' then begin
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

procedure Tfrm_Pfor01_02.CODPROExit(Sender: TObject);
begin
   if not flcadpro(1,0,0,fdeixanum(CODPRO.Text)) then begin
      CODPRO.Text:=FloatToStr(fAchaCodigoOri(CODPRO.Text));
      if not flcadpro(1,0,0,CODPRO.Text) then begin
         if not (LOTE.Focused) and not (DATAV.Focused) and not (QTD.Focused) then
            Exit
         else begin
            verteclado(0);
            fMensagem('Produto não cadastrado!',0,['0'],0);
            CODPRO.SetFocus;
            exit;
         end;
      end;

      CODPRO.Text:=DM1.Tb_ProPDCODPRO.AsString;

      if CB_BARRAS.Checked then begin
         if ValFloat(QTD.Text)<=0 then begin
            if pRet_Qtd=0 then
               QTD.Text:=FormatFloat(mcasqtd, 1)
            else
               QTD.Text:=FormatFloat(mcasqtd, pRet_Qtd);
         end
      end;

      LOTE.Text:=pRet_Lote;

      if pRet_DtVcto<=pdatanula then
         DATAV.Text:='/  /'
      else
         DATAV.Text:=formatDatetime(fdt2, pRet_DtVcto);
   end;

   CODPRO.Text:=DM1.Tb_ProPDCODPRO.AsString;
   NOMPRO.Text:=DM1.Tb_ProPDNOME.Value;
   UND.Text   :=DM1.Tb_ProPDUND.Value;

   if (mop=0) or ((mop=1) and (ValFloat(PCOUNI.Text)=0)) then begin
      if DM1.Tb_ProPDPCOFAB.Value>0 then
         PCOUNI.Text:=Formatfloat(pf01_caspu,DM1.Tb_ProPDPCOFAB.Value)
      else if DM1.Tb_ProPDPRECOC.Value>0 then
         PCOUNI.Text:=Formatfloat(pf01_caspu,DM1.Tb_ProPDPRECOC.Value)
      else
         PCOUNI.Text:=Formatfloat(pf01_caspu,DM1.Tb_ProPDPRECO1.Value);
   end;

   if (mcodpro_ant<>0) and (ValFloat(CODPRO.Text)<>DM1.Tb_ProPDCODPRO.Value) then begin
      ALIPI.Text :=Formatfloat(mcasas,DM1.Tb_ProPDIPI.Value);
      SITTRI.Text:=DM1.Tb_ProPDSIT.Value;
      LISTA.Text:=FormatFloat('0', DM1.Tb_ProPDLISTA.AsInteger);
   end else if mcodpro_ant=0 then begin
      ALIPI.Text :=Formatfloat(mcasas,DM1.Tb_ProPDIPI.Value);
      SITTRI.Text:=DM1.Tb_ProPDSIT.Value;
      LISTA.Text:=FormatFloat('0', DM1.Tb_ProPDLISTA.AsInteger);
   end;
end;

procedure Tfrm_Pfor01_02.CODPROEnter(Sender: TObject);
begin
   if fsonumero(CODFOR.Text) = 0 then begin
      Fmensagem('Favor Selecionar um Fornecedor!',0,['0'],0);
      CODFOR.SetFocus;
      exit;
   end;

   mcodpro_ant := ValFloat(CODPRO.Text);

   if Trim(CODPRO.Text) <> '' then begin
      if DM1.Tb_PargerPCODPROPADFAT.Value = 2 then begin
         if flcadpro(1,0,0,Trim(CODPRO.Text)) then
            CODPRO.Text := DM1.Tb_ProPDMARCA.AsString;
      end else if DM1.Tb_PargerPCODPROPADFAT.Value = 1 then begin
         if flcadpro(1,0,0,Trim(CODPRO.Text)) then
            CODPRO.Text := DM1.Tb_ProPDCODBAR.AsString;
      end;
   end;
end;

procedure Tfrm_Pfor01_02.CODPROKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if key = 113 then begin
      if DM1.Tb_PargerPCODPROPADFAT.Value = 2 then
         CODPRO.Text := fChamaPro(3,'Frm_Pfor01','')
      else if DM1.Tb_PargerPCODPROPADFAT.Value = 1 then
         CODPRO.Text := fChamaPro(1,'Frm_Pfor01','')
      else if DM1.Tb_PargerPPCOGRA.Value = 1 then
         CODPRO.Text := fChamaPro(2,'Frm_Pfor01','')
      else
         CODPRO.Text:=fChamaPro(0,'Frm_Pfor01','');
      key := 0;
      CODPROExit(Self);
   end;
end;

procedure Tfrm_Pfor01_02.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
   if (Length(CODPRO.Text) > 14) and (key <> #8) then
      key := #0
   else if (DM1.Tb_PargerPCODPROPADFAT.Value <> 2) and  (key in ['A'..'Z']) or (key in ['a'..'z']) then begin
      if (DM1.Tb_PargerPPCOGRA.Value = 1) then begin
         CODPRO.Text := fChamaPro(2,'Frm_Ped',key)
      end else begin
         CODPRO.Text := fChamaPro(iif(CB_BARRAS.Checked,1,0),'Frm_pesqprod',key);
      end;

      key := #0;
      CODPROExit(self);
   end;
end;

procedure Tfrm_Pfor01_02.QTDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if (key=113) and (ValFloat(CODPRO.Text) > 0) then begin
      if Frm_UltCPR = nil then
         Application.CreateForm(TFrm_UltCPR, Frm_UltCPR)
      else begin
         Frm_UltCPR.Free;
         Frm_UltCPR:=nil;
         Application.CreateForm(TFrm_UltCPR, Frm_UltCPR);
      end;

      Frm_UltCPR.ShowModal;
      Frm_UltCPR.Free;
      Frm_UltCPR:=nil;
   end;
end;

procedure Tfrm_Pfor01_02.PCOUNIExit(Sender: TObject);
begin
   PCOUNI.Text := FormatFloat(pf01_caspu,ValFloat(PCOUNI.Text));
   TOTALI.Text := FormatFloat(mcasas,ValFloat(PCOUNI.Text)*ValFloat(QTD.Text));

   if not fpf01tvlr(ValFloat(PCOUNI.Text)) then
      PCOUNI.SetFocus
   else if DM4.Tb_Par01PATUACUS.Value = 1 then begin
      Frm_Pcus.CODPRO.Text := Trim(CODPRO.Text);
      Frm_Pcus.Atualizar.Click;
      mori_pcus := 'frm_pfor01';
      Frm_Pcus.NPCOCOM.Text := PCOUNI.Text;
      Frm_Pcus.NPCOCOMExit(SELF);
      Frm_Pcus.ActiveControl:=Frm_Pcus.NPCOCOM;

      Frm_Pcus.ShowModal;
   end;
end;

procedure Tfrm_Pfor01_02.PCOUNIKeyPress(Sender: TObject; var Key: Char);
begin
   if key in ['.',','] then
      key := DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.SITTRIExit(Sender: TObject);
begin
   SITTRI.Text := FormatFloat('000',ValFloat(SITTRI.Text));
   if Length(SITTRI.Text) > 3 then
      SITTRI.Text:=copy(SITTRI.Text,1,3);
end;

procedure Tfrm_Pfor01_02.SITTRIKeyPress(Sender: TObject; var Key: Char);
begin
   if (length(SITTRI.Text)>3) and (key<>#8) then
      key := #0
   else if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.CFOPExit(Sender: TObject);
begin
   CFOP.Text := FormatFloat('0000',ValFloat(CFOP.Text));
   if ValFloat(CFOP.Text) > 4999 then begin
      if flcadcfo(1,1,CFOP.Text) then begin
         if DM1.Tb_CfoCFCFOENT.Value > 0 then
            CFOP.Text:=FormatFloat('0000',DM1.Tb_CfoCFCFOENT.Value);
      end;
   end;

   CFOP.Text := FormatFloat('0000',ValFloat(CFOP.Text));

   if not flcadcfo(1,1,CFOP.Text) then begin
      if  ALICMS.Focused then begin
          Fmensagem('CFOP não Cadastrado!',0,['0'],0);
          CFOP.SetFocus;
          exit;
       end
    else
       CFOP.Text:='';
   end;
end;

procedure Tfrm_Pfor01_02.CFOPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CFOP.Text:=fChamacfop(0,'frm_cfo',key);
   key := #0;
   end;
end;

procedure Tfrm_Pfor01_02.ALICMSExit(Sender: TObject);
begin
   ALICMS.Text := FormatFloat('##.##',ValFloat(ALICMS.Text));
   if ValFloat(ALICMS.Text) > 50 then begin
      Fmensagem('Percentual de alíquota invalido!',0,['0'],0);
      ALICMS.SetFocus;
   end else if ValFloat(ALICMS.Text) < 0 then begin
      Fmensagem('Este Valor Tem que ser positivo!',0,['0'],0);
      ALICMS.SetFocus;
   end;
end;

procedure Tfrm_Pfor01_02.ALICMSKeyPress(Sender: TObject; var Key: Char);
begin
   if key in ['.',','] then
      key := DecimalSeparator
   else if not (key in ['0'..'9']) and (key <> #8) then
      key := #0;
end;

procedure Tfrm_Pfor01_02.PREDICMNORExit(Sender: TObject);
begin
   PREDICMNOR.Text := FormatFloat('##.##',ValFloat(PREDICMNOR.Text));
   if ValFloat(PREDICMNOR.Text) > 100 then begin
      Fmensagem('Percentual de Redutor de ICMS invalido!',0,['0'],0);
      PREDICMNOR.SetFocus;
   end else if ValFloat(PREDICMNOR.Text) < 0 then begin
      Fmensagem('Este Valor Tem que ser positivo!',0,['0'],0);
      PREDICMNOR.SetFocus;
   end;
end;

procedure Tfrm_Pfor01_02.PREDICMNORKeyPress(Sender: TObject; var Key: Char);
begin
   if key in ['.',','] then
      key := DecimalSeparator
   else if not (key in ['0'..'9']) and (key <> #8) then
      key := #0;
end;

procedure Tfrm_Pfor01_02.ALIPIExit(Sender: TObject);
begin
   ALIPI.Text := FormatFloat('##.##',ValFloat(ALIPI.Text));
   if ValFloat(ALIPI.Text) > 550 then begin
      Fmensagem('Percentual de alíquota invalido!',0,['0'],0);
      ALIPI.SetFocus;
   end else if ValFloat(ALIPI.Text) < 0 then begin
      Fmensagem('Este Valor Tem que ser positivo!',0,['0'],0);
      ALIPI.SetFocus;
   end;
end;

procedure Tfrm_Pfor01_02.MDESCI01Exit(Sender: TObject);
begin
   if ValFloat(MDESCI01.Text) > 99 then begin
      Fmensagem('Desconto tem que ser menor que 99%!',0,['0'],0);
      MDESCI01.SetFocus;
      exit;
   end else if ValFloat(MDESCI01.Text) < 0 then begin
      Fmensagem('Este Valor Tem que ser positivo!',0,['0'],0);
      MDESCI01.SetFocus;
   end;
   MDESCI01.Text := FormatFloat(mcasas,ValFloat(MDESCI01.Text));
end;

procedure Tfrm_Pfor01_02.MDESCI02Exit(Sender: TObject);
begin
   if ValFloat(MDESCI02.Text) > 99 then begin
      Fmensagem('Desconto tem que ser menor que 99%!',0,['0'],0);
      MDESCI02.SetFocus;
      exit;
   end else if ValFloat(MDESCI02.Text) < 0 then begin
      Fmensagem('Este Valor Tem que ser positivo!',0,['0'],0);
      MDESCI02.SetFocus;
   end;
   MDESCI02.Text := FormatFloat(mcasas,ValFloat(MDESCI02.Text));
end;

procedure Tfrm_Pfor01_02.MDESCI03Exit(Sender: TObject);
begin
   if ValFloat(MDESCI03.Text) > 99 then begin
      Fmensagem('Desconto tem que ser menor que 99%!',0,['0'],0);
      MDESCI03.SetFocus;
      exit;
   end else if ValFloat(MDESCI03.Text) < 0 then begin
      Fmensagem('Este Valor Tem que ser positivo!',0,['0'],0);
      MDESCI03.SetFocus;
   end;
   MDESCI03.Text := FormatFloat(mcasas,ValFloat(MDESCI03.Text));

   fGravaItem(0);
end;

function Tfrm_Pfor01_02.Fpf01camposRestritos(pTipo: Integer): Boolean;
// PTipo 0-Cabecalho 1-Itens 2-Geral
begin
   if pTipo<>1 then begin
      CHAVE.Enabled    :=False;
      DATAP.Enabled    :=False;
      CODFOR.Enabled   :=False;
      DESC01.Enabled   :=False;
      DESC02.Enabled   :=False;
      VALDES.Enabled   :=False;
      CB_CASASD.Enabled:=False;
      NUMNF.Enabled    :=False;
      SERIE.Enabled    :=False;
      SUBSERIE.Enabled :=False;
      MODELO.Enabled   :=False;
      DATAENT.Enabled  :=False;
      DATAE.Enabled    :=False;
      MBASEN.Enabled   :=False;
      ICMSN.Enabled    :=False;
      MBASER.Enabled   :=False;
      MICMSR.Enabled   :=False;
      OUTRAS.Enabled   :=False;
      OUTNINC.Enabled  :=False;
      VALFRE.Enabled   :=False;
      PIPIFRETE.Enabled:=False;
      IPI.Enabled      :=False;
      SEGURO.Enabled   :=False;
      DESC.Enabled     :=False;
      ISENTAS.Enabled  :=False;
      TOTINA.Enabled   :=False;
      TOTPOS.Enabled   :=False;
      TOTNEG.Enabled   :=False;
      TOTNOT.Enabled   :=False;
      CODTRA.Enabled   :=False;
      CB_GNF.Enabled   :=False;
      CONDPAG.Enabled  :=False;
      CODBCO.Enabled   :=False;
      CB_BOLETO.Enabled:=False;
      NUMDUP.Enabled   :=False;
      DESD.Enabled     :=False;
      CB_GDP.Enabled   :=False;
      DTVENC.Enabled   :=False;
      VALDUP.Enabled   :=False;
      VALDESCF.Enabled :=False;
      DTDESCF.Enabled  :=False;
      bbDupGravar.Enabled  :=False;
      bbdup_editar.Enabled  :=False;
      bbdup_cancelar.Enabled  :=False;
      bbdup_excluir.Enabled  :=False;
      DTPFAT.Enabled   :=False;
      DTPENT.Enabled   :=False;
      RGFRETEPC.Enabled:=False;
      PERCFRE.Enabled  :=False;
   end;

   if ptipo<>0 then begin
      CODPRO.Enabled      :=False;
      LOTE.Enabled        :=False;
      DATAV.Enabled       :=False;
      QTD.Enabled         :=False;
      PCOUNI.Enabled      :=False;

      MDESCI01.Enabled    :=False;
      MDESCI02.Enabled    :=False;
      MDESCI03.Enabled    :=False;
      ALICMS.Enabled      :=False;
      ALIPI.Enabled       :=False;
      LISTA.Enabled       :=False;
      CB_BARRAS.Enabled   :=False;
   end;

   result := True;
end;

procedure Tfrm_Pfor01_02.btn_vernotaClick(Sender: TObject);
begin
    if Frm_VisNF=nil then
       Application.CreateForm(TFrm_VisNF, Frm_VisNF)
    else begin
       Frm_VisNF.Free;
       Frm_VisNF:=nil;
       Application.CreateForm(TFrm_VisNF, Frm_VisNF);
    end;

    Frm_VisNF.Qr_Dup.Close;
    Frm_VisNF.Qr_Dup.SQL.Clear;
    Frm_VisNF.Qr_Dup.SQL.Add('Select PF1VDATAV AS DTVENC '
                                +'      ,PF1VVALOR AS VALOR '
                                +'      ,PF1VDESCF AS DESCF '
                                +'      ,PF1VDTDESCF AS DTDESCF '
                                +' from CADPF1V where '
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' PF1VCODEMP=0'+Qr_Pf01PF1CODEMP.AsString+' and ')
                      +' PF1VLOTSEQ=0'+Qr_Pf01PF1LOTSEQ.AsString
                      +' and PF1VCHAVE=0'+Qr_Pf01PF1CHAVE.AsString);

    Frm_VisNF.Qr_Dup.Open;


    Frm_VisNF.Qr_TotAliq.Close;
    Frm_VisNF.Qr_TotAliq.SQL.Clear;
    Frm_VisNF.Qr_TotAliq.SQL.Add('Select PF2ALIQ,sum((PF2PU*PF2QTDP)-PF2TOTDES) as TOTLIQ '
                                 +'       ,sum(PF2BASEN+PF2BASENR) AS BCICMS '
                                 +'        ,sum(PF2ICMSN+PF2ICMSNR) AS ICMS '
                                 +'        ,sum(PF2BASER)           AS BASER '
                                 +'        ,sum(PF2ICMSR)           AS ICMSR '
                                 +'        ,sum(PF2TOTDES)          AS DESCONTO '
                                 +'        ,sum(PF2ISENTAS)         AS TOTISEN '
                                 +'        ,sum(PF2IPI)             AS VLRIPI '
                                 +' from CADPF2 where '
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' PF2CODEMP=0'+Qr_Pf01PF1CODEMP.AsString+' and ')
                      +' PF2LOTSEQ=0'+Qr_Pf01PF1LOTSEQ.AsString
                      +' and PF2CHAVE=0'+Qr_Pf01PF1CHAVE.AsString
                      +' group by PF2ALIQ ');
    Frm_VisNF.Qr_TotAliq.Open;

    Frm_VisNF.Qr_TotSitTri.Close;
    Frm_VisNF.Qr_TotSitTri.SQL.Clear;
    Frm_VisNF.Qr_TotSitTri.SQL.Add('Select PF2SIT,sum((PF2PU*PF2QTDP)-PF2TOTDES) as TOTLIQ '
                                 +'       ,sum(PF2BASEN+PF2BASENR) AS BCICMS '
                                 +'        ,sum(PF2ICMSN+PF2ICMSNR) AS ICMS '
                                 +'        ,sum(PF2BASER)           AS BASER '
                                 +'        ,sum(PF2ICMSR)           AS ICMSR '
                                 +'        ,sum(PF2TOTDES)          AS DESCONTO '
                                 +'        ,sum(PF2ISENTAS)         AS TOTISEN '
                                 +'        ,sum(PF2IPI)             AS VLRIPI '
                                 +' from CADPF2 where '
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' PF2CODEMP=0'+Qr_Pf01PF1CODEMP.AsString+' and ')
                      +' PF2LOTSEQ=0'+Qr_Pf01PF1LOTSEQ.AsString
                      +' and PF2CHAVE=0'+Qr_Pf01PF1CHAVE.AsString
                      +' group by PF2SIT ');
    Frm_VisNF.Qr_TotSitTri.Open;


    Frm_VisNF.Qr_TotLista.Close;
    Frm_VisNF.Qr_TotLista.SQL.Clear;
    Frm_VisNF.Qr_TotLista.SQL.Add('Select PF2LISTA,sum((PF2PU*PF2QTDP)-PF2TOTDES) as TOTLIQ '
                                 +'       ,sum(PF2BASEN+PF2BASENR) AS BCICMS '
                                 +'        ,sum(PF2ICMSN+PF2ICMSNR) AS ICMS '
                                 +'        ,sum(PF2BASER)           AS BASER '
                                 +'        ,sum(PF2ICMSR)           AS ICMSR '
                                 +'        ,sum(PF2TOTDES)          AS DESCONTO '
                                 +'        ,sum(PF2ISENTAS)         AS TOTISEN '
                                 +'        ,sum(PF2IPI)             AS VLRIPI '
                                 +' from CADPF2 where '
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' PF2CODEMP=0'+Qr_Pf01PF1CODEMP.AsString+' and ')
                      +' PF2LOTSEQ=0'+Qr_Pf01PF1LOTSEQ.AsString
                      +' and PF2CHAVE=0'+Qr_Pf01PF1CHAVE.AsString

                      +' group by PF2LISTA ');
    Frm_VisNF.Qr_TotLista.Open;

    Frm_VisNF.Qr_TotCFOP.Close;
    Frm_VisNF.Qr_TotCFOP.SQL.Clear;
    Frm_VisNF.Qr_TotCFOP.SQL.Add('Select PF2CFO,sum((PF2PU*PF2QTDP)-PF2TOTDES) as TOTLIQ '
                                +'       ,sum(PF2BASEN+PF2BASENR) AS BCICMS '
                                +'       ,sum(PF2ICMSN+PF2ICMSNR) AS ICMS '
                                +'       ,sum(PF2BASER)           AS BASER '
                                +'       ,sum(PF2ICMSR)           AS ICMSR '
                                +'       ,sum(PF2TOTDES)          AS DESCONTO '
                                +'       ,sum(PF2ISENTAS)         AS TOTISEN '
                                +'       ,sum(PF2IPI)             AS VLRIPI '
                                +'  from CADPF2 where '
                      +' PF2LOTSEQ=0'+Qr_Pf01PF1LOTSEQ.AsString
                      +' and PF2CHAVE=0'+Qr_Pf01PF1CHAVE.AsString
                      +' group by PF2CFO ');
    Frm_VisNF.Qr_TotCFOP.Open;
    Frm_VisNF.natop.Caption:='';
    mcinst:='';
    While not Frm_VisNF.Qr_TotCFOP.Eof do begin
       Frm_VisNF.natop.Caption:=Frm_VisNF.natop.Caption+mcinst+FormatFloat('0000',Frm_VisNF.Qr_TotCFOPPF2CFO.Value);
       mcinst:='/';
       Frm_VisNF.Qr_TotCFOP.Next;
    end;

    Frm_VisNF.Qr_TotCFOP.First;

    Frm_VisNF.Qr_nf02.Close;
    Frm_VisNF.Qr_nf02.SQL.Clear;
    Frm_VisNF.Qr_nf02.SQL.add('Select PF2CODPRO   AS CODPROD '
                         +'       ,PF2CFO     AS CFOP '
                         +'       ,PF2QTDP    AS QUANTIDADE '
                         +'       ,PF2ITEM    AS ITEM '
                         +'       ,PF2PU      AS VLPRODUTO '
                         +'       ,PF2ALIQ    AS ALIQ '
                         +'       ,PF2LOTE    AS LOTE '
                         +'       ,PF2DATAV   AS DATAV '
                         +'       ,PF2DESC01  AS PDESC01 '
                         +'       ,PF2DESC02  AS PDESC02 '
                         +'       ,PF2DESC03  AS PDESC03 '
                         +'       ,PF2SIT     AS SITTRI '
                         +'       ,PF2ALIQ    AS ALIQN '
                         +'       ,PF2ALIQNR  AS ALIQNR '
                         +'       ,PF2BASEN   AS BASEN '
                         +'       ,PF2ICMSN   AS ICMSN '
                         +'       ,PF2BASER   AS BASER '
                         +'       ,PF2ICMSR   AS ICMSR '
                         +'       ,PF2TAB     AS TABICM '
                         +'       ,PF2LISTA   AS LISTA '
                         +'       ,PF2TOTDES  AS TOTDES '
                         +'       ,PF2BASENR  AS BASENR '
                         +'       ,PF2ICMSNR  AS ICMSNR '
                         +'       ,PF2ISENTAS AS ISENTAS '
                         +'       ,PF2ALIPI   AS ALIPI'
                         +'       ,PF2IPI     AS VALIPI '
                         +'       ,PF2PMC     AS PMC '
                         +'       ,NVL(TRIM(PF2NOMPRO),PDNOME)  AS DESCRICAO '
                         +'       ,PDUND      AS UNID '
                         +' from CADPF2,CADPRO where '
                         +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' PF2CODEMP=0'+Qr_Pf01PF1CODEMP.AsString+' and ')
                         +' PF2LOTSEQ=0'+Qr_Pf01PF1LOTSEQ.AsString
                         +' and PF2CHAVE=0'+Qr_Pf01PF1CHAVE.AsString
                         +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=PF2CODEMP ')
                         +' and PDCODPRO=PF2CODPRO ');
    Frm_VisNF.Qr_nf02.Open;

    Frm_VisNF.Qr_nf01.Close;
    Frm_VisNF.Qr_nf01.SQL.Clear;
    Frm_VisNF.Qr_nf01.SQL.add('Select (PF1CODEMP-PF1CODEMP) AS FORCLI '
                         +',PF1CODFOR  AS CODIGO '
                         +',PF1DATA    AS DATAPED '
                         +',PF1DESC01  AS PDESC01 '
                         +',PF1DESC02  AS PDESC02 '
                         +',(PF1DESC03-PF1DESC03) AS PDESC03 '
                         +', PF1DESC03 AS DESCVLR '
                         +',PF1TOTDES  AS TOTDES '
                         +',PF1TOTBRU  AS TOTMER '
                         +',PF1TOTLIQ  AS TOTLIQ '
                         +',PF1STATUS  AS STATUS '
                         +',PF1TOTPOS  AS TOTPOS '
                         +',PF1TOTNEG  AS TOTNEG '
                         +',PF1TOTINA  AS TOTINA '
                         +',PF1TOTFRE  AS VALFRE '
                         +',PF1TOTSEG  AS VALSEG '
                         +',PF1BASEN   AS BASEN '
                         +',PF1BASER   AS BASER '
                         +',PF1ICMSN   AS ICMSN '
                         +',PF1ICMSR   AS ICMSR '
                         +',PF1BASENR  AS BASENR '
                         +',PF1ICMSNR  AS ICMSNR '
                         +',PF1ISENTAS AS ISENTAS '
                         +',(PF1TOTOUT+PF1OUTDESP)  AS TOTOUT '
                         +',PF1TOTIPI  AS TOTIPI '
                         +',PF1DATANF  AS DATANF '
                         +',PF1NUMNF   AS NUMNF '
                         +',PF1SERIE   AS SERIE '
                         +',PF1SUBSER  AS SUBSER '
                         +',PF1MODELO  AS MODELO '
                         +',PF1CODBCO  AS CODBCO '
                         +',PF1CODTRA  AS CODTRA '
                         +',PF1PIPIFRETE AS PERCIPIFRE '
                         +',PF1IPIFRETE  AS IPIFRETE '
                         +' from CADPF1 where '
                         +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' PF1CODEMP=0'+Qr_Pf01PF1CODEMP.AsString+' and ')
                         +' PF1LOTSEQ=0'+Qr_Pf01PF1LOTSEQ.AsString
                         +' and PF1CHAVE=0'+Qr_Pf01PF1CHAVE.AsString);

    Frm_VisNF.Qr_nf01.Open;
    Frm_VisNF.Cb_Saida.Checked  :=False;
    Frm_VisNF.Cb_Entrada.Checked:=True;
    Frm_VisNF.ShowModal;
    Frm_VisNF.Free;
    Frm_VisNF:=nil;
end;

procedure Tfrm_Pfor01_02.btn_importarClick(Sender: TObject);
begin
   if Frm_PFor01_Imp=nil then
      Application.CreateForm(TFrm_PFor01_Imp, Frm_PFor01_Imp)
   else begin
      Frm_PFor01_Imp.Free;
      Frm_PFor01_Imp:=nil;
      Application.CreateForm(TFrm_PFor01_Imp, Frm_PFor01_Imp);
   end;

   Frm_PFor01_Imp.ShowModal;
   Frm_PFor01_Imp.Free;
   Frm_PFor01_Imp:=nil;
end;

procedure Tfrm_Pfor01_02.btn_exportarClick(Sender: TObject);
begin
   if Frm_PFor01_Exp=nil then
      Application.CreateForm(TFrm_PFor01_Exp, Frm_PFor01_Exp)
   else begin
      Frm_PFor01_Exp.Free;
      Frm_PFor01_Exp:=nil;
      Application.CreateForm(TFrm_PFor01_Exp, Frm_PFor01_Exp);
   end;

   if valfloat(CHAVE.TEXT)<>0 then begin
      Frm_Pfor01_Exp.MCHAVEI.Text:=CHAVE.Text;
      Frm_Pfor01_Exp.MCHAVEF.Text:=CHAVE.Text;
   end else begin
      Frm_Pfor01_Exp.MDT1.Text:=FormatDatetime(fdt2, date);
      Frm_Pfor01_Exp.MDT2.Text:=FormatDatetime(fdt2, date);
   end;

   Frm_PFor01_Exp.ShowModal;
   Frm_PFor01_Exp.Free;
   Frm_PFor01_Exp:=nil;
end;

procedure Tfrm_Pfor01_02.btn_cancelarClick(Sender: TObject);
var
  x : Integer;
begin
  if (moper<>4) and (not Qr_Itens.IsEmpty) then begin
     if fMensagem('Quer realmente cancelar a operação?',0,['1','2'],2)<>mrYes then
        exit;
  end;

  if Qr_Pf01PF1CHAVE.AsFloat <> 0 then {---Cancelamento--}
     fBloqueiaLibera(0,Qr_Pf01PF1CODEMP.Value,Qr_Pf01PF1LOTSEQ.Value,Qr_Pf01PF1CHAVE.Value);

  Qr_Itens.Active      := False;
  Qr_Capa.Active       := False;
  Qr_Duplicatas.Active := False;
  Qr_Dup.Active        := False;
  LimpaEdits(Self);

  QTDITEM.Caption := '0,00';
  TOTDES.Value    := 0;
  VALIPI.Value    := 0;
  TOTITEM.Caption := '0,00';
  TOTFRE.Value    := 0;
  TOTAL.Value     := 0;
  ICMSR.Value     := 0;
  TOTLIQ.value    := 0;

  CHAVE.Text         :='';
  CODFOR.Text        :='';
  NOMFOR.Text        :='';
  UFFOR.Text         :='';
  DATAP.Text         :='/  /';
  DATAE.Text         :='/  /';
  DATAENT.Text       :='/  /';
  NUMNF.Text         :='';
  SERIE.Text         :='';
  SUBSERIE.Text      :='';
  MODELO.Text        :='';
  SUBMOD.Text        :='';
  STATUS.Text        :='';
  DESC01.Text        :='';
  DESC02.Text        :='';
  VALDES.Text        :='';
  CODTRA.Text        :='';
  NOMTRA.Text        :='';
  VALFRE.Text        :='';
  CODBCO.Text        :='';
  PRAZO.Text         :='';
  QTDP.Text          :='1';
  INT.Text           :='';
  CB_GNF.Checked     :=True;
  CB_GDP.Checked     :=True;
  NUMNF.Text         :='';
  SERIE.Text         :='';
  SUBSERIE.Text      :='';
  MODELO.Text        :='';
  SUBMOD.Text        :='';
  TOTMER.Text        :='';
  MBASEN.Text        :='';
  ICMSN.Text         :='';
  MBASER.Text        :='';
  MICMSR.Text        :='';
  OUTDESP.Text       :='';
  OUTRAS.Text        :='';
  OUTRAS_PERC.Text   :='';
  OUTRAS_IMP.Text    :='';
  OUTNINC.Text       :='';
  VALFRE.Text        :='';
  IPI.Text           :='';
  SEGURO.Text        :='';
  DESC.Text          :='';
  ISENTAS.Text       :='';
  TOTINA.Text        :='';
  TOTPOS.Text        :='';
  TOTNEG.Text        :='';
  TOTNOT.Text        :='';
  NUMDUP.Text        :='';
  OUTVDUP.Text       :='';
  DESD.Text          :='A';
  STATUS.Text        :='';
  CONDPAG.Text       :='';
  NUMPED_ORI.Text    :='';
  SIV_FRETE.Text     :='';
  SIV_DARE.Text      :='';
  SIV_OUTROS.Text    :='';
  PAG_ORI.Text       :='';
  pfor_lotseq        :=ls_numpf;
  mcfog              :=0;
  mcfog_comp         :='';
  txt_MODO.Text      :='';
  txt_Fase.Text      :='';
  txt_Situacao.Text  :='';

  mcodldr            :=0;
  CB_CASASD.ItemIndex:=0;
  mQtdMan            :=0;
  memo_totdup.Lines.Clear;
  memo_totdup.Lines.Add('Total Das ');
  memo_totdup.Lines.Add('Duplicatas ');
  memo_totdup.Lines.Add(Formatfloat(mcasas,0));
  memo_totdup.Lines.Add('Qtd.: '+FloatToStr(0));

  btn_incluir.Enabled  := bbinc_true;
  CB_TIPO.ItemIndex    := 0;

  btn_localizar.Enabled:=True;
  btn_importar.Enabled :=true;

  btn_alterar.Enabled  :=bbalt_true;
  btn_excluir.Enabled  :=bbexc_true;
  btn_gravar.Enabled   :=False;
  btn_imprimir.Enabled :=False;
  btn_vernota.Enabled  :=False;
  btn_exportar.Enabled :=False;
  btn_cancelar.Enabled :=False;

  bbDupGravar.Enabled   := False;
  bbdup_editar.Enabled  := False;
  bbdup_cancelar.Enabled:= False;
  bbdup_excluir.Enabled := False;

  GroupBox2.Enabled  :=false;


  btn_calcular.Enabled :=False;
  btn_confirmar.Enabled:=False;
  if DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value then
     pf01_casqtd:=mcasind
  else
     pf01_casqtd:=mcasqtd;

  if DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value then begin
     pf01_caspu:=mcaspuind;
     CB_CASASD.ItemIndex:=(DM1.Tb_PargerPCASPUIND.AsInteger-1)
  end else begin
     pf01_caspu:=mcasaspu;
     CB_CASASD.ItemIndex:=(DM1.Tb_PargerPCASASPU.AsInteger-1)
  end;
end;

procedure Tfrm_Pfor01_02.NUMNFExit(Sender: TObject);
begin
   NUMNF.Text:=fdeixanum2(NUMNF.Text);

   if (Trim(NUMNF.Text)<>'')  then begin
      NUMDUP.Text:=NUMNF.Text;
   end;

   if ValFloat(NUMNF.Text)>999999999 then begin
      Fmensagem('O número não pode ser maior que 999999999',0,['0'],0);
      NUMNF.SetFocus;
      exit;
   end;
end;

procedure Tfrm_Pfor01_02.NUMNFKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.SERIEExit(Sender: TObject);
begin
   if (Length(SERIE.Text)>3) then
      SERIE.Text:=copy(SERIE.Text,1,3);
end;

procedure Tfrm_Pfor01_02.SERIEKeyPress(Sender: TObject; var Key: Char);
begin
   if (Length(SERIE.Text)>2) and (key<>#8) then begin
      Fmensagem('Número de Sub-Série nao pode ter mas que 3 digitos!',0,['0'],0);
      key:=#0;
   end;
end;

procedure Tfrm_Pfor01_02.SUBSERIEExit(Sender: TObject);
begin
   if (Length(SUBSERIE.Text)>1) then
      SUBSERIE.Text:=copy(SUBSERIE.Text,1,3);
end;

procedure Tfrm_Pfor01_02.SUBSERIEKeyPress(Sender: TObject; var Key: Char);
begin
if (Length(SUBSERIE.Text)>3) and (key<>#8) then
   begin
   Fmensagem('Número de Sub-Série nao pode ter mas que 3 digitos!',0,['0'],0);
   key:=#0;
   end;
end;

procedure Tfrm_Pfor01_02.MODELOExit(Sender: TObject);
begin
if (Length(MODELO.Text)>1) then
   MODELO.Text:=copy(MODELO.Text,1,2);
if Length(trim(MODELO.Text))>2 then
   begin
   Fmensagem('Modelo tem que ter ser um campo de até dois digitos!',0,['0'],0);
   MODELO.SetFocus;
   exit;
   end;
end;

procedure Tfrm_Pfor01_02.MODELOKeyPress(Sender: TObject; var Key: Char);
begin
if (Length(MODELO.Text)>3) and (key<>#8) then
   begin
   Fmensagem('Modelo nao pode ter mas que 3 digitos!',0,['0'],0);
   key:=#0;
   end;
end;

procedure Tfrm_Pfor01_02.SUBMODExit(Sender: TObject);
begin
   SUBMOD.Text:=fdeixanum2(SUBMOD.Text);
   if ValFloat(SUBMOD.Text)>100 then
      SUBMOD.Text:='100'
   else if Valfloat(SUBMOD.Text)<0 then
      SUBMOD.Text:='000';
   SUBMOD.Text:=FormatFloat('000',Valfloat(SUBMOD.Text));
end;

procedure Tfrm_Pfor01_02.SUBMODKeyPress(Sender: TObject; var Key: Char);
begin
   if (Length(MODELO.Text)>2) and (key<>#8) then begin
      Fmensagem('Modelo nao pode ter mas que 3 digitos!',0,['0'],0);
      key:=#0;
   end;
end;

procedure Tfrm_Pfor01_02.DATAENTExit(Sender: TObject);
begin
   if Trim(DATAENT.Text)<>'/  /' then begin
      try
        DATAENT.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(DATAENT.Text));
      except
        fmensagem('Data Invalida',0,['0'],0);
        DATAENT.SetFocus;
        exit;
      end;
   end;
end;

procedure Tfrm_Pfor01_02.MBASENEnter(Sender: TObject);
begin
   mVlrAnt:=ValFloat(MBASEN.Text);
end;

procedure Tfrm_Pfor01_02.MBASENExit(Sender: TObject);
begin
   MBASEN.Text:=FormatFloat(mcasas,ValFloat(MBASEN.Text));
   if ValFloat(MBASEN.Text)>999999999 then begin
      Fmensagem('O Valor não pode ser maior que 999999999',0,['0'],0);
      MBASEN.SetFocus;
   end else begin
      if ValFloat(MBASEN.Text)<>mVlrAnt then begin
         FAjustarValores(0,mVlrAnt,ValFloat(MBASEN.Text));
         fcalcular(0);
      end;
   end;
   TOTAL_BC.Text:=FormatFloat(mcasas, Valfloat(MBASEN.Text)+ValFloat(OUTRAS.Text));

end;

procedure Tfrm_Pfor01_02.MBASENKeyPress(Sender: TObject; var Key: Char);
begin
   if key in [',','.'] then
      key:=DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.OUTRASExit(Sender: TObject);
begin
   OUTRAS.Text:=FormatFloat(mcasas,ValFloat(OUTRAS.Text));
   if not fpf01tvlr(ValFloat(OUTRAS.Text)) then
      OUTRAS.SetFocus;
   fcalcnf(0);
   if ( vaLfloat(OUTRAS.Text)>0 ) and (ValFloat(OUTRAS_PERC.Text)=0) then
     OUTRAS.Text:=FormatFloat(mcasas,DM1.Tb_ForFALIQ.AsFloat);
   TOTAL_BC.Text:=FormatFloat(mcasas, Valfloat(MBASEN.Text)+ValFloat(OUTRAS.Text));
end;

procedure Tfrm_Pfor01_02.OUTRASKeyPress(Sender: TObject; var Key: Char);
begin
   if key in [',','.'] then
      key:=DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.OUTRAS_PERCExit(Sender: TObject);
begin
   OUTRAS_PERC.Text:=FormatFloat(mcasas,ValFloat(OUTRAS_PERC.Text));
   if (vaLfloat(OUTRAS.Text)<>0 ) and (ValFloat(OUTRAS_PERC.Text)<>0) and (ValFloat(OUTRAS_IMP.Text)=0) then
      OUTRAS_IMP.Text:=FormatFloat(mcasas,
                                  (  ValFloat(      OUTRAS.Text)
                                     *ValFloat(OUTRAS_PERC.Text)
                                   )   /100);
end;

procedure Tfrm_Pfor01_02.OUTRAS_PERCKeyPress(Sender: TObject; var Key: Char);
begin
   if key in [',','.'] then
      key:=DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
     key:=#0;
end;

function Tfrm_Pfor01_02.FAjustarValores(pCampo: Integer; pTotCalc,pTotDig: Real): Boolean;
var
 x         : Integer;
 mDif,
 mValor    : Real;
 micmsc,
 micmsd    : Real;
 mConcluiu : Boolean;
 mSit      : String;
 mPercDif  : Real;
begin
 mDif := pTotDig-pTotCalc;
 if mDif=0 then begin
   result:=true;
   exit;
 end;

 if pTotCalc=0 then
    mPercDif:=100
 else if pTotDig=0 then
    mPercDif:=-100
 else begin
    mPercDif:=((ptotdig-pTotCalc)*100)/pTotCalc;
 end;

 Qr_Itens.Edit;
 // PRIMEIRA TENTATIVA TENTA EM PERCENTUAL
 Qr_Itens.First;
 while not Qr_Itens.Eof do begin // Roda todos os Registros
     if Qr_ItensCODPRO.AsFloat = 0 then
        Continue;

     if mDif=0 then
        break;

     mSit := FormatFloat('000',ValInt(Qr_ItensSITTRI.AsString));

     if pCampo = 0 then begin  // Base do Icms Normal
        if msit[2]='4' then
           Continue;

        if Qr_ItensALICMS.AsFloat = 0 then begin
           Continue;
        end;

        mValor := Qr_ItensBASEN.AsFloat*mPercDif/100;
        mValor := arredonda(mvalor,DM1.Tb_PargerPCASAS.Asinteger);

        if mvalor=0 then
           Continue;

        if mDif > 0 then begin  // Aumentar o Valor
           if mValor > mDif then
              mValor := mDif;
        end else begin
           if mvalor < mDif then
              mValor := mDif;
        end;

        if (mValor+Qr_ItensBASEN.AsFloat) <= 0 then begin
            mValor := Qr_ItensBASEN.AsFloat*-1;
        end;

        Qr_ItensPREDICMNOR.Value  := 0;
        Qr_ItensBASEN.Value       := Qr_ItensBASEN.AsFloat + mValor; // base do icms normal

        if Qr_ItensBASEN.AsFloat < 0 then begin // base do icms normal
           mValor              := mValor+Qr_ItensBASEN.AsFloat;
           Qr_ItensBASEN.Value := 0;   // base do icms normal
        end;

        if Qr_ItensBASEN.AsFloat > Qr_ItensTOTALI.AsFloat then begin    // base do icms normal
           mValor              := mValor+(Qr_ItensTOTALI.AsFloat-Qr_ItensBASEN.asFloat);
           qr_ItensBASEN.Value := Qr_ItensTOTALI.AsFloat;   // base do icms normal
        end;


        mdif:=mDif-mValor;
        Qr_ItensOUTRAS.AsFloat := Qr_ItensTOTALI.AsFloat - Qr_ItensTOTDES.AsFloat - Qr_ItensBASEN.AsFloat - Qr_ItensDESCRAT.asFloat;

        if Qr_ItensOUTRAS.AsFloat <> 0 then begin
           try
              Qr_ItensPREDICMNOR.AsFloat := Arredonda((Qr_ItensOUTRAS.AsFloat)*100/(Qr_ItensBASEN.AsFloat+Qr_ItensOUTRAS.AsFloat),DM1.Tb_PargerPCASAS.AsInteger);
           except
              Qr_ItensPREDICMNOR.AsFloat := 0;
             end;
        end else
           Qr_ItensPREDICMNOR.AsFloat := 0;

     end else if pCampo = 1 then begin // Valor do Icms Normal
        if msit[2] = '4' then
           Continue;

        mValor := Arredonda(Qr_ItensICMSN.AsFloat*mPercDif/100 ,DM1.Tb_PargerpCASAS.Asinteger) ;

        if mvalor = 0 then
           Continue;

        if mDif > 0 then begin // Aumentar o Valor
           if mValor > mDif then
              mValor := mDif;
        end else begin
           if mvalor < mDif then
              mValor := mDif;
        end;

        if (mValor+Qr_ItensICMSN.AsFloat) <= 0 then begin
           mValor := Qr_ItensICMSN.AsFloat*-1;
        end;

        Qr_ItensICMSN.AsFloat := Qr_ItensICMSN.AsFloat+mValor;   // valor do icms normal

        if Qr_ItensICMSN.AsFloat < 0 then begin // base do icms normal
           mValor                := mValor+Qr_ItensICMSN.AsFloat;
           Qr_ItensICMSN.AsFloat := 0;   // base do icms normal
        end;

        mdif := mDif-mValor;
     end else if pCampo = 2 then begin // Base do Icms Retido
        if not (msit[2] in ['1','6']) then
           Continue;

        mValor := Qr_ItensBASER.asFloat*mPercDif/100;
        mValor := arredonda(mvalor,DM1.Tb_PargerPCASAS.Asinteger);

        if mDif > 0 then begin // Aumentar o Valor
           if mValor > mDif then
              mValor := mDif;
        end else begin
           if mvalor < mDif then
              mValor := mDif;
        end;

        if (mValor+Qr_ItensBASER.AsFloat) <= 0 then begin
           mValor := Qr_ItensBASER.AsFloat*-1;
        end;

        Qr_ItensBASER.AsFloat := Qr_ItensBASER.AsFloat+mValor;   // base do icms normal do retido

        if  Qr_ItensBASER.AsFloat < 0 then begin // base do icms normal
            mValor                := mValor+Qr_ItensBASER.AsFloat;
            Qr_ItensBASER.AsFloat := 0;   // base do icms normal
        end;

        mdif := mDif-mValor;
     end else if pCampo = 3 then begin // Valor do Icms Retido
        if not (msit[2] in ['1','6']) then
           Continue;

        mValor := Qr_ItensICMSR.AsFloat*mPercDif/100;
        mValor := arredonda(mvalor,DM1.Tb_PargerPCASAS.Asinteger);

        if mDif > 0 then begin // Aumentar o Valor
           if mValor > mDif then
              mValor := mDif;
        end else begin
           if mvalor < mDif then
              mValor := mDif;
        end;

        if (mValor+Qr_ItensICMSR.AsFloat) <= 0 then begin
           mValor := Qr_ItensICMSR.AsFloat*-1;
        end;

        Qr_ItensICMSR.AsFloat := Qr_ItensICMSR.AsFloat+mValor;   // valor do icms retido

        if Qr_ItensICMSR.AsFloat < 0 then begin   // base do icms normal
           mValor                := mValor+Qr_ItensICMSR.AsFloat;
           Qr_ItensICMSR.AsFloat := 0;   // base do icms normal
        end;

        mdif := mDif-mValor;
     end else if pCampo = 4 then begin // Valor do Desconto
       // nao tenta desconto por aqui
     end else if pCampo = 5 then begin // Valor de Isentas
        // nao sera ajustado isentas nesta opcao
     end else if pCampo = 6 then begin // Valor do IPI
        //tambem nao sera sjustado ipi
     end;

    Qr_Itens.Next;
 end;
 // TERMINO DA PRIMEIRA TENTATIVA

 if mDif <> 0 then begin
    Qr_Itens.Edit;
    Qr_Itens.First;
    while not Qr_Itens.Eof do begin // Roda todos os Registros
       if Qr_ItensCODPRO.AsFloat = 0 then
          Continue;
       if mDif = 0 then
          break;

       mSit := FormatFloat('000',Qr_ItensSITTRI.AsFloat);
       if pCampo = 0 then begin // Base do Icms Normal
          if msit[2] = '4' then
             Continue;

          if Qr_ItensALICMS.AsFloat = 0 then begin
             Continue;
          end;


          if mDif > 0 then begin // Aumentar o Valor
             mValor := Qr_ItensTOTALI.Value - Qr_ItensBASEN.AsFloat;
             if mValor <= 0 then begin
                Continue;
             end;

             if mValor > Mdif then begin
                Qr_ItensBASEN.AsFloat := Qr_ItensBASEN.AsFloat+mdif;   // base do icms normal
                mdif                  := 0;
             end else begin
                Qr_ItensBASEN.AsFloat := Qr_ItensBASEN.AsFloat+mValor; // base do icms normal
                mdif                  := mdif-mValor;
             end;
          end else if Mdif <= 0 then begin // Diminuir o Valor
             mValor := Qr_ItensBASEN.AsFloat - Qr_ItensTOTALI.Value;
             if mValor <= 0 then  begin//lindomar
                Continue;
             end;

             if mValor < Mdif then begin
                Qr_ItensBASEN.AsFloat := Qr_ItensBASEN.AsFloat+mdif;   // base do icms normal
                mdif                  := 0;
             end else begin
                Qr_ItensBASEN.AsFloat := Qr_ItensBASEN.AsFloat-mValor;  // base do icms normal
                mdif                  := mdif+mValor;
             end;
          end;

          Qr_ItensOUTRAS.AsFloat := Qr_ItensTOTALI.Value - Qr_ItensTOTDES.AsFloat - Qr_ItensBASEN.AsFloat - Qr_ItensDESCRAT.aSFloat;

          if Qr_ItensOUTRAS.AsFloat > 0 then begin
             try
               Qr_ItensPREDICMNOR.AsFloat := Arredonda((Qr_ItensOUTRAS.AsFloat*100)/(Qr_ItensBASEN.AsFloat+Qr_ItensOUTRAS.AsFloat),DM1.Tb_PargerPCASAS.Asinteger);
             except
               Qr_ItensPREDICMNOR.AsFloat := 0;
             end;
          end else
             Qr_ItensPREDICMNOR.AsFloat   := 0;
          end else if pCampo = 1 then begin // Valor do Icms Normal
             if msit[2] = '4' then begin
                Continue;
             end;

             if mDif > 0 then begin // Aumentar o Valor
                mValor := ((Qr_ItensBASEN.AsFloat*Qr_ItensALICMS.asFloat)/100)-Qr_ItensICMSN.AsFloat;
                mValor := arredonda(mvalor,DM1.Tb_PargerPCASAS.Asinteger);

             if mValor <= 0 then begin
                Continue;
             end;

             if mValor > Mdif then begin
                Qr_ItensICMSN.AsFloat := Qr_ItensICMSN.AsFloat+mdif;   //Valor do icms normal
                mdif                  := 0;
             end else begin
                Qr_ItensICMSN.AsFloat := Qr_ItensICMSN.AsFloat+mValor; // Valor do icms normal
                mdif                  := mdif-mValor;
             end;
          end else if Mdif <= 0 then begin // Diminuir o Valor
             mValor :=((Qr_ItensBASEN.AsFloat*Qr_ItensALICMS.AsFloat)/100)-Qr_ItensICMSN.AsFloat;
             mValor := arredonda(mvalor,DM1.Tb_PargerPCASAS.Asinteger);

             if mValor <= 0 then begin//lindomar
                Continue;
             end;

             if mValor < Mdif then begin
                Qr_ItensICMSN.AsFloat := Qr_ItensICMSN.AsFloat+mdif;   // Valor do icms normal
                mdif                  := 0;
             end else begin
                Qr_ItensICMSN.AsFloat := Qr_ItensICMSN.AsFloat-mValor; // base do icms normal
                mdif                  := mdif+mValor;
             end;
          end;

       end else if pCampo = 2 then begin // Base do Icms Retido

          if not (msit[2] in ['1','6']) then begin
             Continue;
          end;

          if mDif > 0 then begin // Aumentar o Valor
             if DM1.Tb_ForFRETLIQ.Value = 1 then
                mValor := Qr_ItensTOTALI.Value - Qr_ItensTOTDES.asFloat
             else
                mValor := Qr_ItensTOTALI.Value;

             if DM1.Tb_ForFTCALC.Value = 1 then
                mValor := Qr_ItensPMC.asFloat*Qr_ItensPMC.AsFloat
             else if ValInt(Qr_ItensLISTA.AsString) = 2 then
                mValor := mValor+(mValor*DM1.Tb_ForFIVANEG.Value/100)
             else if ValInt(Qr_ItensLISTA.AsString) = 1 then
                mValor := mValor+(mValor*DM1.Tb_ForFIVAPOS.Value/100)
             else
                mValor := mValor+(mValor*DM1.Tb_ForFIVAINA.Value/100);

             mValor := mValor-(mValor*DM1.Tb_ForFRBCIR.Value/100);
             mValor := arredonda(mValor,2);
             mvalor := mvalor-Qr_ItensBASER.AsFloat;

             if mValor <= 0 then begin
                Continue;
             end;

             if mValor > Mdif then begin
                mvalor := mvalor-Qr_ItensBASER.AsFloat+mdif;   //Valor do icms normal
                mdif                         := 0;
             end else begin
                mvalor := mvalor-Qr_ItensBASER.AsFloat+mValor; // Valor do icms normal
                mdif   := mdif-mValor;
             end;
          end else if Mdif <= 0 then begin // Diminuir o Valor
             if DM1.Tb_ForFRETLIQ.Value = 1 then
                mValor := Qr_ItensTOTALI.Value-Qr_ItensTOTDES.AsFloat
             else
                mValor := Qr_ItensTOTALI.Value;

             if DM1.Tb_ForFTCALC.Value = 1 then
                mValor := Qr_ItensPMC.AsFloat*Qr_ItensPMC.AsFloat
             else if ValInt(Qr_ItensLISTA.AsString) = 2 then
                mValor := mValor+(mValor*DM1.Tb_ForFIVANEG.Value/100)
             else if ValInt(Qr_ItensLISTA.AsString) = 1 then
                mValor := mValor+(mValor*DM1.Tb_ForFIVAPOS.Value/100)
             else
                mValor := mValor+(mValor*DM1.Tb_ForFIVAINA.Value/100);

             mValor := mValor-(mValor*DM1.Tb_ForFRBCIR.Value/100);
             mValor := arredonda(mValor,2);
             mvalor := mvalor-Qr_ItensBASER.AsFloat;
             if mValor <= 0 then begin//lindomar
                Continue;
             end;

             if mValor < Mdif then begin
                Qr_ItensBASER.AsFloat := Qr_ItensBASER.AsFloat+mdif;   // Valor do icms normal
                mdif                  := 0;
             end else begin
                Qr_ItensBASER.AsFloat := Qr_ItensBASER.AsFloat-mValor; // base do icms normal
                mdif                  := mdif+mValor;
             end;
          end;

       end else if pCampo = 3 then begin // Valor do Icms Retido
          if not (msit[2] in ['1','6']) then begin
             Continue;
          end;

          if mDif > 0 then begin // Aumentar o Valor
             micmsd := (Qr_ItensBASER.AsFloat*DM1.Tb_ForFICMSD.Value)/100;
             micmsc := Qr_ItensTOTALI.Value-Qr_ItensTOTDES.asFloat;
             micmsc := micmsc*DM1.Tb_ForFICMSC.Value/100;
             mvalor := Arredonda((micmsd-micmsc),2);

             if mvalor < 0 then
                mvalor := 0;

             mvalor := mvalor-Qr_ItensICMSR.AsFloat;

             if mValor <= 0 then begin
                Continue;
             end;

             if mValor > Mdif then begin
                Qr_ItensICMSR.AsFloat := Qr_ItensICMSR.AsFloat+mdif;   //Valor do icms normal
                mdif                  := 0;
             end else begin
                Qr_ItensICMSR.AsFloat := Qr_ItensICMSR.AsFloat+mValor; // Valor do icms normal
                mdif                  := mdif-mValor;
             end;
          end else if Mdif <= 0 then begin // Diminuir o Valor
              micmsd := (Qr_ItensBASER.AsFloat*DM1.Tb_ForFICMSD.Value)/100;
              micmsc := Qr_ItensTOTALI.Value-Qr_ItensTOTDES.AsFloat;
              micmsc := micmsc*DM1.Tb_ForFICMSC.Value/100;
              mvalor := Arredonda((micmsd-micmsc),2);

              if mvalor < 0 then
                 mvalor := 0;

              mvalor := mvalor-Qr_ItensICMSR.AsFloat;

              if mValor <= 0 then begin//lindomar
                 Continue;
              end;

              if mValor < Mdif then begin
                 Qr_ItensICMSR.AsFloat := Qr_ItensICMSR.AsFloat+mdif;   // Valor do icms normal
                 mdif                  := 0;
              end else begin
                 Qr_ItensICMSR.AsFloat := Qr_ItensICMSR.AsFloat-mValor; // base do icms normal
                 mdif                  := mdif+mValor;
              end;
           end;
       end else if pCampo = 4 then begin // Valor do Desconto
           if mDif > 0 then begin // Aumentar o Valor
              mValor := Qr_ItensVALDESI.AsFloat;
              mValor := mValor+ ( (Qr_ItensVALDESI.AsFloat-mValor) * Qr_ItensDESC01.AsFloat/100) ;
              mValor := mValor+ ( (Qr_ItensVALDESI.AsFloat-mValor) * Qr_ItensDESC02.AsFloat/100) ;
              mValor := mValor+ ( (Qr_ItensVALDESI.AsFloat-mValor) * Qr_ItensDESC03.AsFloat/100) ;

              mValor := mValor+ ( (Qr_ItensVALDESI.AsFloat-mValor) * Qr_ItensDESC01.AsFloat/100) ;
              mValor := mValor+ ( (Qr_ItensVALDESI.asFloat-mValor) * Qr_ItensDESC02.AsFloat/100) ;
              mValor := Arredonda(mvalor,2);
              mValor := mValor+(Qr_ItensDESCRAT.AsFloat);

              if mvalor < 0 then
                 mvalor := 0;

              mvalor := mvalor-Qr_ItensTOTDES.AsFloat;

              if mValor <= 0 then begin
                 Continue;
              end;

              if mValor > Mdif then begin
                 Qr_ItensTOTDES.AsFloat := Qr_ItensTOTDES.AsFloat+mdif;   //Total dos Descontos
                 mdif                   := 0;
              end else begin
                 Qr_ItensTOTDES.AsFloat := Qr_ItensTOTDES.AsFloat+mValor;   // Total dos Descontos
                 mdif                   := mdif-mValor;
              end;
           end else if Mdif <= 0 then begin // Diminuir o Valor
              mValor := Qr_ItensVALDESI.asFloat;
              mValor := mValor+ ( (Qr_ItensVALDESI.AsFloat-mValor) * Qr_ItensDESC01.asFloat/100) ;
              mValor := mValor+ ( (Qr_ItensVALDESI.AsFloat-mValor) * Qr_ItensDESC02.asFloat/100) ;
              mValor := mValor+ ( (Qr_ItensVALDESI.asFloat-mValor) * Qr_ItensDESC03.AsFloat/100) ;

              mValor := mValor+ ( (Qr_ItensVALDESI.AsFloat-mValor) * Qr_ItensDESC01.asFloat/100) ;
              mValor := mValor+ ( (Qr_ItensVALDESI.AsFloat-mValor) * Qr_ItensDESC02.AsFloat/100) ;
              mValor := Arredonda(mvalor,2);
              mValor := mValor+(Qr_ItensDESCRAT.AsFloat);

              if mvalor < 0 then
                 mvalor := 0;

              mvalor := mvalor-Qr_ItensTOTDES.ASFloat;

              if mValor <= 0 then begin//lindomar
                 Continue;
              end;

              if mValor < Mdif then begin
                 Qr_ItensTOTDES.AsFloat := Qr_ItensTOTDES.AsFloat+mdif;   // Total dos Descontos
                 mdif                   := 0;
              end else begin
                 Qr_ItensTOTDES.AsFloat := Qr_ItensTOTDES.AsFloat-mValor; // Total dos Descontos
                 mdif                   := mdif+mValor;
              end;
           end;
       end else if pCampo = 5 then begin // Valor de Isentas
           if msit[2] <> '4' then begin
              Continue;
           end;

           if mDif > 0 then begin // Aumentar o Valor
              mValor := Qr_ItensTOTALI.Value-Qr_ItensTOTDES.AsFloat;

              if mvalor < 0 then
                 mvalor := 0;

              mvalor := mvalor-Qr_ItensISENTAS.AsFloat;

              if mValor <= 0 then begin
                 Continue;
              end;

              if mValor > Mdif then begin
                 Qr_ItensISENTAS.AsFloat := Qr_ItensISENTAS.AsFloat+mdif;   //Total dos Descontos
                 mdif                    := 0;
              end else begin
                 Qr_ItensISENTAS.AsFloat := Qr_ItensISENTAS.AsFloat+mValor; // Total dos Descontos
                 mdif                    := mdif-mValor;
              end;
           end else if Mdif <= 0 then begin // Diminuir o Valor
              mValor := Qr_ItensTOTALI.Value-Qr_ItensTOTDES.AsFloat;

              if mvalor < 0 then
                 mvalor := 0;

              mvalor := mvalor-Qr_ItensISENTAS.AsFloat;

              if mValor <= 0 then begin
                 Continue;
              end;

              if mValor <= 0 then begin//lindomar
                 Continue;
              end;

              if mValor < Mdif then begin
                 Qr_ItensISENTAS.AsFloat := Qr_ItensISENTAS.AsFloat+mdif;   // Total das Isentas
                 mdif := 0;
              end else begin
                 Qr_ItensISENTAS.AsFloat := Qr_ItensISENTAS.AsFloat-mValor; // Total das Isentas
                 mdif                    := mdif+mValor;
              end;
           end;
       end else if pCampo = 6 then begin // Valor do IPI
           if Qr_ItensALIPI.AsFloat <= 0 then begin
              Continue;
           end;

           if mDif > 0 then begin // Aumentar o Valor
              mValor := ((Qr_ItensTOTALI.Value*Qr_ItensALIPI.AsFloat)/100-Qr_ItensALIPI.AsFloat);
              Mvalor := Arredonda(mvalor,DM1.Tb_PargerPCASAS.Asinteger);

              if mValor <= 0 then begin
                 Continue;
              end;

              if mValor > Mdif then begin
                 Qr_ItensALIPI.AsFloat := Qr_ItensALIPI.AsFloat+mdif;   //Valor do IPI
                 mdif                  := 0;
              end else begin
                 Qr_ItensALIPI.AsFloat := Qr_ItensALIPI.AsFloat+mValor; // Valor do IPI
                 mdif                  := mdif-mValor;
              end;
           end else if Mdif <= 0 then begin // Diminuir o Valor
              mValor := ((Qr_ItensTOTALI.Value*Qr_ItensALIPI.AsFloat)/100)-Qr_ItensALIPI.ASFloat;

              if mValor <= 0 then begin //lindomar
                 Continue;
              end;

              if mValor < Mdif then begin
                 Qr_ItensALIPI.AsFloat := Qr_ItensALIPI.AsFloat+mdif;   // Valor do IPI
                 mdif                  := 0;
              end else begin
                 Qr_ItensALIPI.AsFloat := Qr_ItensALIPI.AsFloat-mValor; // base do IPI
                 mdif                  := mdif+mValor;
              end;
           end;

       end;

       Qr_Itens.Next;
    end;
 end;

 if mDif <> 0 then begin // Se Mesmo assim houver diferença
   Qr_Itens.Edit;
   Qr_Itens.First;
   while not Qr_Itens.Eof do begin // Roda todos os Registros
      if Qr_ItensCODPRO.AsFloat = 0 then
         Continue;

      if mDif=0 then
         break;

      mSit := FormatFloat('000',ValInt(Qr_ItensSITTRI.AsString));
      if pCampo = 0 then begin // Base do Icms Normal
         if msit[2] = '4' then
            Continue;

         if mDif > 0 then begin // Aumentar o Valor
            Qr_ItensBASEN.AsFloat := Qr_ItensBASEN.AsFloat+mdif;   // base do icms normal
            mdif                  := 0;
         end else if Mdif <= 0 then begin // Diminuir o Valor
            if (Qr_ItensBASEN.AsFloat+mDif < 0) then begin
               mdif                  := mdif+Qr_ItensBASEN.asFloat;
               Qr_ItensBASEN.AsFloat := 0;   // base do icms normal
            end else begin
               Qr_ItensBASEN.asFloat := Qr_ItensBASEN.AsFloat+mdif;   // base do icms normal
               mdif                  := 0;
            end;
         end;

         Qr_ItensOUTRAS.asFloat      := Qr_ItensTOTALI.Value - Qr_ItensTOTDES.AsFloat - Qr_ItensBASEN.AsFloat - Qr_ItensDESCRAT.AsFloat;

         if Qr_ItensOUTRAS.AsFloat <> 0 then begin
            try
              Qr_ItensPREDICMNOR.AsFloat := Arredonda((Qr_ItensOUTRAS.AsFloat*100)/(Qr_ItensBASEN.AsFloat+Qr_ItensOUTRAS.AsFloat), DM1.Tb_PargerPCASAS.AsInteger);
            except
              Qr_ItensPREDICMNOR.AsFloat := 0;
            end;
         end else
            Qr_ItensPREDICMNOR.AsFloat   := 0;

      end else if pCampo = 1 then begin // Valor do Icms Normal
         if msit[2] = '4' then
            Continue;

         if mDif > 0 then begin // Aumentar o Valor
            Qr_ItensICMSN.AsFloat := Qr_ItensICMSN.AsFloat+mdif;   // Valor do icms normal
            mdif                  := 0;
         end else if Mdif <= 0 then begin // Diminuir o Valor
            if (Qr_ItensICMSN.AsFloat+mDif < 0) then begin
               mdif                  := mdif+Qr_ItensICMSN.AsFloat;
               Qr_ItensICMSN.ASFloat := 0;   // Valor do icms normal
            end else begin
               Qr_ItensICMSN.AsFloat := Qr_ItensICMSN.AsFloat+mdif;   // base do icms normal
               mdif                  := 0;
            end;
         end;
      end else if pCampo = 2 then begin // Base do Icms de Substituição Tributaria
         if not (msit[2] in ['1','6']) then
            Continue;

         if mDif > 0 then begin // Aumentar o Valor
            Qr_ItensBASER.AsFloat := Qr_ItensBASER.AsFloat+mdif;   // Valor do icms normal
            mdif                  := 0;
         end else if Mdif <= 0 then begin // Diminuir o Valor
            if (Qr_ItensBASER.ASFloat+mDif < 0) then begin
               mdif                  := mdif+Qr_ItensBASER.AsFloat;
               Qr_ItensBASER.AsFloat := 0;   // Valor do icms normal
            end else begin
               Qr_ItensBASER.ASFloat := Qr_ItensBASER.AsFloat+mdif;   // base do icms normal
               mdif                  := 0;
            end;
         end;
      end else if pCampo = 3 then begin // Valor do Icms de Substituição Tributaria
         if not (msit[2] in ['1','6']) then
            Continue;
         if mDif > 0 then begin // Aumentar o Valor
            Qr_ItensICMSR.AsFloat := Qr_ItensICMSR.AsFloat+mdif;   // Valor do icms normal
            mdif                  := 0;
         end else if Mdif <= 0 then begin // Diminuir o Valor
            if (Qr_ItensICMSR.AsFloat+mDif < 0) then begin
               mdif                  := mdif+Qr_ItensICMSR.AsFloat;
               Qr_ItensICMSR.AsFloat := 0;   // Valor do icms normal
            end else begin
               Qr_ItensICMSR.AsFloat := Qr_ItensICMSR.AsFloat+mdif;   // base do icms normal
               mdif                  := 0;
            end;
         end;
      end else if pCampo = 4 then begin // Total dos Descontos
         if mDif > 0 then begin // Aumentar o Valor
            Qr_ItensTOTDES.AsFloat := Qr_ItensTOTDES.AsFloat+mdif;   // Total dos Descontos
            mdif                   := 0;
         end else if Mdif <= 0 then begin // Diminuir o Valor
            if (Qr_ItensTOTDES.AsFloat+mDif < 0) then begin
               mdif                   := mdif + Qr_ItensTOTDES.AsFloat;
               Qr_ItensTOTDES.ASFloat := 0;   // Total dos Descontos
            end else begin
               Qr_ItensTOTDES.AsFloat := Qr_ItensTOTDES.AsFloat+mdif;   // Total dos Descontos
               mdif                   := 0;
            end;
         end;
      end else if pCampo = 5 then begin // Total das Isentas
         if mDif > 0 then begin // Aumentar o Valor
            Qr_ItensISENTAS.AsFloat := Qr_ItensISENTAS.AsFloat+mdif;   // Total das Isentas
            mdif                    := 0;
         end else if Mdif <= 0 then begin // Diminuir o Valor
            if (Qr_ItensISENTAS.AsFloat+mDif < 0) then begin
               mdif                    := mdif+Qr_ItensISENTAS.AsFloat;
               Qr_ItensISENTAS.AsFloat := 0;   // Total das Isentas
            end else begin
               Qr_ItensISENTAS.AsFloat := Qr_ItensISENTAS.AsFloat+mdif;   // Total das Isentas
               mdif                    := 0;
            end;
         end;
      end else if pCampo = 6 then begin // Valor do ipi
         if Qr_ItensALIPI.AsFloat = 0 then
            Continue;
         if mDif > 0 then begin // Aumentar o Valor
            Qr_ItensALIPI.AsFloat := Qr_ItensALIPI.AsFloat+mdif;   // Valor do ipi
            mdif                  := 0;
         end else if Mdif <= 0 then begin // Diminuir o Valor
            if (Qr_ItensALIPI.AsFloat+mDif < 0) then begin
               mdif                  := mdif+Qr_ItensALIPI.AsFloat;
               Qr_ItensALIPI.AsFloat := 0;   // Valor do ipi
            end else begin
               Qr_ItensALIPI.AsFloat := Qr_ItensALIPI.AsFloat+mdif;   // valor do ipi
               mdif                  := 0;
            end;
         end;
      end;

      Qr_Itens.Next;
   end;
 end;

 Qr_Itens.Post;

 if mdif <> 0 then
    result := false
 else
   result  := True;
end;

function Tfrm_Pfor01_02.fcalcnf(ptipo: Integer): Boolean;
var
  mtotnf: Real;
begin
  mtotnf:=ValFloat(TOTMER.Text)
         +ValFloat(MICMSR.Text)
         +ValFloat(OUTRAS.Text)
         +ValFloat(VALFRE.Text)
         +ValFloat(SEGURO.Text)
         +ValFloat(OUTDESP.Text)
         +ValFloat(IPI.Text)
         +ValFloat(IPIFRETE.Text)
         +ValFloat(SIV_FRETE.Text)
         +ValFloat(SIV_DARE.Text)
         +ValFloat(SIV_OUTROS.Text)
         -ValFloat(DESC.Text) ;
  TOTNOT.Text:=FormatFloat(mcasas,mtotnf);
  fcalcular(1);
  result:=True;
end;

procedure Tfrm_Pfor01_02.TOTAL_BCExit(Sender: TObject);
begin
   TOTAL_BC.Text:=FormatFloat(mcasas,ValFloat(TOTAL_BC.Text));
   if not fpf01tvlr(ValFloat(TOTAL_BC.Text)) then
      TOTAL_BC.SetFocus;
   mVlrAnt:=ValFloat(MBASEN.Text);
   MBASEN.Text:=FormatFloat(mcasas, ValFloat(TOTAL_BC.Text)-Valfloat(OUTRAS.Text));
   MBASENExit(self);
end;

procedure Tfrm_Pfor01_02.TOTAL_BCKeyPress(Sender: TObject; var Key: Char);
begin
   if key in [',','.'] then
      key:=DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.MBASEREnter(Sender: TObject);
begin
   mVlrAnt:=ValFloat(MBASER.Text);
end;

procedure Tfrm_Pfor01_02.MBASERExit(Sender: TObject);
begin
   MBASER.Text:=FormatFloat(mcasas,ValFloat(MBASER.Text));
   if ValFloat(MBASER.Text)>999999999 then begin
      Fmensagem('O Valor não pode ser maior que 999999999',0,['0'],0);
      MBASER.SetFocus;
   end else begin
      if ValFloat(MBASER.Text)<>mVlrAnt then
         FAjustarValores(2,mVlrAnt,ValFloat(MBASER.Text));
   end;
end;

procedure Tfrm_Pfor01_02.MBASERKeyPress(Sender: TObject; var Key: Char);
begin
   if key in [',','.'] then
      key:=DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.VALFREExit(Sender: TObject);
begin
   VALFRE.Text:=FormatFloat(mcasas,ValFloat(VALFRE.Text));
   fcalcnf(0);
   if not fpf01tvlr(ValFloat(VALFRE.Text)) then
      VALFRE.SetFocus;
end;

procedure Tfrm_Pfor01_02.VALFREKeyPress(Sender: TObject; var Key: Char);
begin
   if key in [',','.'] then
      key:=DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.VALFRE_COMPExit(Sender: TObject);
begin
   VALFRE.Text:=FormatFloat(mcasas,ValFloat(VALFRE.Text));
   fcalcnf(0);
   if not fpf01tvlr(ValFloat(VALFRE.Text)) then
      VALFRE.SetFocus;
end;

procedure Tfrm_Pfor01_02.VALFRE_COMPKeyPress(Sender: TObject; var Key: Char);
begin
  if key in [',','.'] then
     key:=DecimalSeparator
  else if not (key in ['0'..'9']) and (key<>#8) then
     key:=#0;
end;

procedure Tfrm_Pfor01_02.IPIEnter(Sender: TObject);
begin
   mVlrAnt:=ValFloat(IPI.Text);
end;

procedure Tfrm_Pfor01_02.IPIExit(Sender: TObject);
begin
   IPI.Text:=FormatFloat(mcasas,ValFloat(IPI.Text));
   fcalcnf(0);
   if not fpf01tvlr(ValFloat(IPI.Text)) then
     IPI.SetFocus
   else begin
     if ValFloat(IPI.Text)<>mVlrAnt then
        FAjustarValores(6,mVlrAnt,ValFloat(IPI.Text));
   end;
end;

procedure Tfrm_Pfor01_02.IPIKeyPress(Sender: TObject; var Key: Char);
begin
  if key in [',','.'] then
     key:=DecimalSeparator
  else if not (key in ['0'..'9']) and (key<>#8) then
     key:=#0;
end;

procedure Tfrm_Pfor01_02.TOTINAEnter(Sender: TObject);
begin
   mVlrAnt:=ValFloat(TOTINA.Text);
end;

procedure Tfrm_Pfor01_02.TOTINAExit(Sender: TObject);
begin
   TOTINA.Text:=FormatFloat(mcasas,ValFloat(TOTINA.Text));
   if not fpf01tvlr(ValFloat(TOTINA.Text)) then
      TOTINA.SetFocus;
end;

procedure Tfrm_Pfor01_02.TOTINAKeyPress(Sender: TObject; var Key: Char);
begin
   if key in [',','.'] then
      key:=DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.TOTNOTExit(Sender: TObject);
begin
  TOTNOT.Text:=FormatFloat(mcasas,ValFloat(TOTNOT.Text));
  if not fpf01tvlr(ValFloat(TOTNOT.Text)) then
     TOTNOT.SetFocus;
end;

procedure Tfrm_Pfor01_02.TOTNOTKeyPress(Sender: TObject; var Key: Char);
begin
   if key in [',','.'] then
      key:=DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.CODTRAExit(Sender: TObject);
begin
   if fsonumero(CODTRA.Text)=0 then
      CODTRA.Text:=''
   else
      CODTRA.Text:=fdeixanum2(CODTRA.text);

   if Trim(CODTRA.Text)<>'' then begin
      if not flcadtra(1,0,Trim(CODTRA.Text)) then  begin
         fmensagem('Transportadora não cadastrada!',0,['0'],0);
         CODTRA.SetFocus;
         exit;
      end;
      NOMTRA.Text:=DM1.Tb_TraTRRAZTRA.Value;
   end;
end;

procedure Tfrm_Pfor01_02.CODTRAKeyPress(Sender: TObject; var Key: Char);
begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then begin
      CODTRA.Text:=fChamaTra(0,'frm_pfor01',key);
      if valfloat(CODTRA.Text)<>0 then
         CODTRAExit(self);
   end;
end;

procedure Tfrm_Pfor01_02.DATAEExit(Sender: TObject);
begin
   if Trim(DATAE.Text)<>'/  /' then begin
      try
        DATAE.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(DATAE.Text));
      except
        fmensagem('Data Invalida',0,['0'],0);
        DATAE.SetFocus;
        exit;
      end;
   end;
end;

procedure Tfrm_Pfor01_02.ICMSNEnter(Sender: TObject);
begin
   mVlrAnt:=ValFloat(ICMSN.Text);
end;

procedure Tfrm_Pfor01_02.ICMSNExit(Sender: TObject);
begin
   ICMSN.Text:=FormatFloat(mcasas,ValFloat(ICMSN.Text));
   if ValFloat(ICMSN.Text)>999999999 then begin
      Fmensagem('O Valor não pode ser maior que 999999999',0,['0'],0);
      ICMSN.SetFocus;
   end else begin
      if ValFloat(ICMSN.Text)<>mVlrAnt then
         FAjustarValores(1,mVlrAnt,ValFloat(ICMSN.Text));
      fcalcular(0);
   end;
   TOTAL_ICMS.Text:=FormatFloat(mcasas, Valfloat(ICMSN.Text)+ValFloat(OUTRAS_IMP.Text));
end;

procedure Tfrm_Pfor01_02.ICMSNKeyPress(Sender: TObject; var Key: Char);
begin
   if key in [',','.'] then
      key:=DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.OUTRAS_IMPExit(Sender: TObject);
begin
   OUTRAS_IMP.Text:=FormatFloat(mcasas,ValFloat(OUTRAS_IMP.Text));
   if ValFloat(OUTRAS_IMP.Text)>999999999 then begin
      Fmensagem('O Valor não pode ser maior que 999999999',0,['0'],0);
      OUTRAS_IMP.SetFocus;
   end;
   TOTAL_ICMS.Text:=FormatFloat(mcasas, Valfloat(ICMSN.Text)+ValFloat(OUTRAS_IMP.Text));
end;

procedure Tfrm_Pfor01_02.OUTRAS_IMPKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key in [',','.'] then
      key:=DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.TOTAL_ICMSExit(Sender: TObject);
begin
   TOTAL_ICMS.Text:=FormatFloat(mcasas,ValFloat(TOTAL_ICMS.Text));
   if not fpf01tvlr(ValFloat(TOTAL_ICMS.Text)) then
      TOTAL_ICMS.SetFocus;
   mVlrAnt:=ValFloat(ICMSN.Text);
   ICMSN.Text:=FormatFloat(mcasas, ValFloat(TOTAL_ICMS.Text)-Valfloat(OUTRAS_IMP.Text));
   ICMSNExit(self);
end;

procedure Tfrm_Pfor01_02.TOTAL_ICMSKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key in [',','.'] then
      key:=DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.MICMSREnter(Sender: TObject);
begin
   mVlrAnt:=ValFloat(MICMSR.Text);
end;

procedure Tfrm_Pfor01_02.MICMSRExit(Sender: TObject);
begin
   MICMSR.Text:=FormatFloat(mcasas,ValFloat(MICMSR.Text));
   if ValFloat(MICMSR.Text)>999999999 then begin
      Fmensagem('O Valor não pode ser maior que 999999999',0,['0'],0);
      MICMSR.SetFocus;
      exit;
   end else begin
      if ValFloat(MICMSR.Text)<>mVlrAnt then
         FAjustarValores(3,mVlrAnt,ValFloat(MICMSR.Text));
   end;

fcalcnf(0);
end;

procedure Tfrm_Pfor01_02.MICMSRKeyPress(Sender: TObject; var Key: Char);
begin
   if key in [',','.'] then
      key:=DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.PIPIFRETEExit(Sender: TObject);
begin
   PIPIFRETE.Text:=FormatFloat(mcasas,ValFloat(PIPIFRETE.Text));
   if not fpf01tvlr(ValFloat(PIPIFRETE.Text)) then
      PIPIFRETE.SetFocus;
   IPIFRETE.Text:=FormatFloat(mcasas, ValFloat(VALFRE.Text)*ValFloat(PIPIFRETE.Text)/100);
   fcalcnf(0);
end;

procedure Tfrm_Pfor01_02.PIPIFRETEKeyPress(Sender: TObject; var Key: Char);
begin
   if key in [',','.'] then
      key:=DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.SEGUROExit(Sender: TObject);
begin
   SEGURO.Text:=FormatFloat(mcasas,ValFloat(SEGURO.Text));
   if not fpf01tvlr(ValFloat(SEGURO.Text)) then
      SEGURO.SetFocus;
   fcalcnf(0);
end;

procedure Tfrm_Pfor01_02.SEGUROKeyPress(Sender: TObject; var Key: Char);
begin
   if key in [',','.'] then
      key:=DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.TOTPOSEnter(Sender: TObject);
begin
   mVlrAnt:=ValFloat(TOTPOS.Text);
end;

procedure Tfrm_Pfor01_02.TOTPOSExit(Sender: TObject);
begin
   TOTPOS.Text:=FormatFloat(mcasas,ValFloat(TOTPOS.Text));
   if not fpf01tvlr(ValFloat(TOTPOS.Text)) then
      TOTPOS.SetFocus;
end;

procedure Tfrm_Pfor01_02.TOTPOSKeyPress(Sender: TObject; var Key: Char);
begin
   if key in [',','.'] then
      key:=DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.OUTNINCExit(Sender: TObject);
begin
   OUTNINC.Text:=FormatFloat(mcasas,ValFloat(OUTNINC.Text));
   if not fpf01tvlr(ValFloat(OUTNINC.Text)) then
      OUTNINC.SetFocus;
end;

procedure Tfrm_Pfor01_02.OUTNINCKeyPress(Sender: TObject; var Key: Char);
begin
   if key in [',','.'] then
      key:=DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.OUTDESPExit(Sender: TObject);
begin
   OUTDESP.Text:=FormatFloat(mcasas,ValFloat(OUTDESP.Text));
   if not fpf01tvlr(ValFloat(OUTDESP.Text)) then
      OUTDESP.SetFocus;
   fcalcnf(0);
end;

procedure Tfrm_Pfor01_02.OUTDESPKeyPress(Sender: TObject; var Key: Char);
begin
   if key in [',','.'] then
      key:=DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.IPIFRETEExit(Sender: TObject);
begin
   IPI.Text:=FormatFloat(mcasas,ValFloat(IPI.Text));
   fcalcnf(0);
   if not fpf01tvlr(ValFloat(IPI.Text)) then
      IPI.SetFocus
   else begin
     if ValFloat(IPI.Text)<>mVlrAnt then
        FAjustarValores(6,mVlrAnt,ValFloat(IPI.Text));
   end;
end;

procedure Tfrm_Pfor01_02.IPIFRETEKeyPress(Sender: TObject; var Key: Char);
begin
   if key in [',','.'] then
      key:=DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.DESCEnter(Sender: TObject);
begin
   mVlrAnt:=ValFloat(DESC.Text);
end;

procedure Tfrm_Pfor01_02.DESCExit(Sender: TObject);
begin
   DESC.Text:=FormatFloat(mcasas,ValFloat(DESC.Text));
   if not fpf01tvlr(ValFloat(DESC.Text)) then
      DESC.SetFocus
   else  begin
     if ValFloat(DESC.Text)<>mVlrAnt then
        FAjustarValores(4,mVlrAnt,ValFloat(DESC.Text));
   end;
   fcalcnf(0);
end;

procedure Tfrm_Pfor01_02.DESCKeyPress(Sender: TObject; var Key: Char);
begin
   if key in [',','.'] then
      key:=DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.ISENTASEnter(Sender: TObject);
begin
   mVlrAnt:=ValFloat(ISENTAS.Text);
end;

procedure Tfrm_Pfor01_02.ISENTASExit(Sender: TObject);
begin
   ISENTAS.Text:=FormatFloat(mcasas,ValFloat(ISENTAS.Text));
   if not fpf01tvlr(ValFloat(ISENTAS.Text)) then
     ISENTAS.SetFocus
   else begin
     if ValFloat(ISENTAS.Text)<>mVlrAnt then
        FAjustarValores(5,mVlrAnt,ValFloat(ISENTAS.Text));
   end;
end;

procedure Tfrm_Pfor01_02.ISENTASKeyPress(Sender: TObject; var Key: Char);
begin
   if key in [',','.'] then
      key:=DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.TOTNEGEnter(Sender: TObject);
begin
   mVlrAnt:=ValFloat(TOTNEG.Text);
end;

procedure Tfrm_Pfor01_02.TOTNEGExit(Sender: TObject);
begin
   TOTNEG.Text:=FormatFloat(mcasas,ValFloat(TOTNEG.Text));
   if not fpf01tvlr(ValFloat(TOTNEG.Text)) then
      TOTNEG.SetFocus;
end;

procedure Tfrm_Pfor01_02.TOTNEGKeyPress(Sender: TObject; var Key: Char);
begin
   if key in [',','.'] then
      key:=DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.SIV_FRETEExit(Sender: TObject);
begin
   SIV_FRETE.Text:=FormatFloat(mcasas,ValFloat(SIV_FRETE.Text));
   if not fpf01tvlr(ValFloat(SIV_FRETE.Text)) then
      SIV_FRETE.SetFocus;
   fcalcnf(0);
end;

procedure Tfrm_Pfor01_02.SIV_FRETEKeyPress(Sender: TObject; var Key: Char);
begin
   if key in [',','.'] then
      key:=DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.SIV_OUTROSExit(Sender: TObject);
begin
   SIV_DARE.Text:=FormatFloat(mcasas,ValFloat(SIV_DARE.Text));
   if not fpf01tvlr(ValFloat(SIV_DARE.Text)) then
      SIV_DARE.SetFocus;
   fcalcnf(0);
end;

procedure Tfrm_Pfor01_02.SIV_OUTROSKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key in [',','.'] then
     key:=DecimalSeparator
  else if not (key in ['0'..'9']) and (key<>#8) then
     key:=#0;
end;

procedure Tfrm_Pfor01_02.SIV_DAREExit(Sender: TObject);
begin
   SIV_OUTROS.Text:=FormatFloat(mcasas,ValFloat(SIV_OUTROS.Text));
   if not fpf01tvlr(ValFloat(SIV_OUTROS.Text)) then
      SIV_OUTROS.SetFocus;
   fcalcnf(0);
end;

procedure Tfrm_Pfor01_02.SIV_DAREKeyPress(Sender: TObject; var Key: Char);
begin
  if key in [',','.'] then
     key:=DecimalSeparator
  else if not (key in ['0'..'9']) and (key<>#8) then
     key:=#0;
end;

procedure Tfrm_Pfor01_02.NUMPED_ORIExit(Sender: TObject);
begin
   NUMPED_ORI.Text:=fdeixanum(NUMPED_ORI.Text);
   if ValFloat(NUMPED_ORI.Text)<=0 then
      NUMPED_ORI.Text:='';
   if ValFloat(NUMPED_ORI.Text)>99999999 then
      NUMPED_ORI.Text:='';
end;

procedure Tfrm_Pfor01_02.NUMPED_ORIKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key in [',','.'] then
     key:=DecimalSeparator
  else if not (key in ['0'..'9']) and (key<>#8) then
     key:=#0;
end;

procedure Tfrm_Pfor01_02.PAG_ORIExit(Sender: TObject);
begin
   PAG_ORI.Text:=fdeixanum(PAG_ORI.Text);
   if ValFloat(PAG_ORI.Text)<=0 then
      PAG_ORI.Text:='';
   if ValFloat(PAG_ORI.Text)>99 then
      PAG_ORI.Text:='';
end;

procedure Tfrm_Pfor01_02.PAG_ORIKeyPress(Sender: TObject; var Key: Char);
begin
   if key in [',','.'] then
      key:=DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.CONDPAGExit(Sender: TObject);
begin
  if Length(CONDPAG.Text)>29 then
     CONDPAG.Text:=copy(CONDPAG.Text,1,30);
end;

procedure Tfrm_Pfor01_02.CONDPAGKeyPress(Sender: TObject; var Key: Char);
begin
   if (Length(CONDPAG.Text)>29) and (key<>#8) then begin
      Fmensagem('Condiçoes de Pagamento  nao pode ter mas que 30 digitos!',0,['0'],0);
      key:=#0;
   end;
end;

procedure Tfrm_Pfor01_02.CODBCOExit(Sender: TObject);
begin
  CODBCO.Text:=fdeixanum2(CODBCO.text);
  if (trim(CODBCO.Text)='') then begin
      NOMBCO.Text:='Carteira';
      exit;
  end;
  flcadbco(1,0,0,CODBCO.Text);
  if DM1.Tb_Bco.Eof then begin
     fmensagem('Banco nao Cadastrado',0,['0'],0);
     CODBCO.SetFocus;
  end else
     NOMBCO.Text:=DM1.Tb_BcoBCBANCO.Value;
end;

procedure Tfrm_Pfor01_02.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then begin
      CODBCO.Text:=fChamaBco(0,'frm_pfor01',key);
      if valfloat(CODBCO.Text)<>0 then
         CODBCOExit(self);
      key:=#0;
   end;
end;

procedure Tfrm_Pfor01_02.NUMDUPExit(Sender: TObject);
begin
  NUMDUP.Text:=fdeixanum2(NUMDUP.Text);
  if not fpf01tvlr(ValFloat(NUMDUP.Text)) then
     NUMDUP.SetFocus;
end;

procedure Tfrm_Pfor01_02.NUMDUPKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.NUMDUPOUTKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.DESDExit(Sender: TObject);
begin
   if not fTestaTam(0,2,DESD.Text,'') then
      DESD.Text:=copy(DESD.Text,1,2);
end;

procedure Tfrm_Pfor01_02.DESDKeyPress(Sender: TObject; var Key: Char);
begin
   if not fTestaTam(1,2,DESD.Text,key) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.OUTVDUPExit(Sender: TObject);
begin
   OUTVDUP.Text:=FormatFloat(mcasas,ValFloat(OUTVDUP.Text));
   if ValFloat(OUTVDUP.Text)>999999999 then begin
      Fmensagem('O Valor não pode ser maior que 999999999',0,['0'],0);
      OUTVDUP.SetFocus;
   end;
end;

procedure Tfrm_Pfor01_02.OUTVDUPKeyPress(Sender: TObject; var Key: Char);
begin
   if key in ['.',','] then
      key:=DecimalSeparator
   else if not (key in ['0'..'9','-']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.PRAZOExit(Sender: TObject);
begin
   PRAZO.Text:=fdeixanum2(PRAZO.Text);
   if fsonumero(PRAZO.Text)>99999 then begin
      fmensagem('Prazo valor Muito grande!',0,['0'],0);
      PRAZO.SetFocus;
   end;
end;

procedure Tfrm_Pfor01_02.PRAZOKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.QTDPExit(Sender: TObject);
begin
   QTDP.Text:=fdeixanum2(QTDP.Text);
   if fsonumero(QTDP.Text)>99999 then begin
      fmensagem('Quantidade de Parcelas valor Muito grande!',0,['0'],0);
      QTDP.SetFocus;
   end;
end;

procedure Tfrm_Pfor01_02.QTDPKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.INTExit(Sender: TObject);
begin
   INT.Text:=fdeixanum2(INT.Text);
   if fsonumero(INT.Text)>99999 then begin
      fmensagem('Intervalo valor Muito grande!',0,['0'],0);
      INT.SetFocus;
   end;
end;

procedure Tfrm_Pfor01_02.INTKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.DTVENCExit(Sender: TObject);
begin
   if Trim(DTVENC.Text)<>'/  /' then begin
      Try
        DTVENC.Text:=FormatDateTime(fdt2, StrToDate(DTVENC.Text));
      except
        Fmensagem('Data Invalida!',0,['0'],0);
        DTVENC.SetFocus;
        exit;
      end;
   end;
end;

procedure Tfrm_Pfor01_02.VALDUPExit(Sender: TObject);
begin
  VALDUP.Text:=FormatFloat(mcasas,ValFloat(VALDUP.Text));
  if not fpf01tvlr(ValFloat(VALDUP.Text)) then
     VALDUP.SetFocus;
end;

procedure Tfrm_Pfor01_02.VALDUPOUTExit(Sender: TObject);
begin
   VALDUP.Text:=FormatFloat(mcasas,ValFloat(VALDUP.Text));
   if not fpf01tvlr(ValFloat(VALDUP.Text)) then
      VALDUP.SetFocus;
end;

procedure Tfrm_Pfor01_02.VALDESCFExit(Sender: TObject);
begin
   VALDESCF.Text:=FormatFloat(mcasas,ValFloat(VALDESCF.Text));
   if not fpf01tvlr(ValFloat(VALDESCF.Text)) then
      VALDESCF.SetFocus;
end;

procedure Tfrm_Pfor01_02.VALDESCFOUTExit(Sender: TObject);
begin
   VALDESCF.Text:=FormatFloat(mcasas,ValFloat(VALDESCF.Text));
   if not fpf01tvlr(ValFloat(VALDESCF.Text)) then
      VALDESCF.SetFocus;
end;

procedure Tfrm_Pfor01_02.DTDESCFExit(Sender: TObject);
begin
   if Trim(DTDESCF.Text)<>'/  /' then begin
      Try
        DTDESCF.Text:=FormatDateTime(fdt2, StrToDate(DTDESCF.Text));
      except
        Fmensagem('Data Invalida!',0,['0'],0);
        DTDESCF.SetFocus;
        exit;
      end;
   end;
end;

procedure Tfrm_Pfor01_02.DTPFATExit(Sender: TObject);
begin
   if Trim(DTPFAT.Text)<>'/  /' then begin
      try
        DTPFAT.Text:=FormatDateTime(fdt2,StrToDate(DTPFAT.Text));
      except
        Fmensagem('Data Invalida!',0,['0'],0);
        DTPFAT.SetFocus;
        exit;
      end;
   end;
end;

procedure Tfrm_Pfor01_02.DTPENTExit(Sender: TObject);
begin
   if Trim(DTPENT.Text)<>'/  /' then begin
      try
        DTPENT.Text:=FormatDateTime(fdt2,StrToDate(DTPENT.Text));
      except
        Fmensagem('Data Invalida!',0,['0'],0);
        DTPENT.SetFocus;
        exit;
      end;
   end;
end;

procedure Tfrm_Pfor01_02.PERCFREExit(Sender: TObject);
begin
   PERCFRE.Text:=FormatFloat(mcasas,ValFloat(PERCFRE.Text));
   if (ValFloat(PERCFRE.Text)<0) or (ValFloat(PERCFRE.Text)>99) then begin
      Fmensagem('Percentual de Frete Invalido',0,['0'],0);
      PERCFRE.SetFocus;
   end;
end;

procedure Tfrm_Pfor01_02.PERCFREKeyPress(Sender: TObject; var Key: Char);
begin
   if key in [',','.'] then
      key:=DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key:=#0;
end;

procedure Tfrm_Pfor01_02.Timer1Timer(Sender: TObject);
begin
   if (btn_gravar.Enabled) and (mPd_Incluiu_Pedido) then begin
      if MinutesBetween(now,mPd_UltAtuPed01)>0 then begin
         fAtualizaPedidoTemp(1);
      end;
   end;
end;

function Tfrm_Pfor01_02.fAtualizaPedidoTemp(pTipo: Integer): Boolean;
begin
  if ptipo = 0 then begin
     DM1.Query1.Close;
     DM1.Query1.SQL.Clear;
     DM1.Query1.SQL.Add(' INSERT INTO CADPF1_TEMP(   '+
                        '   PF1CODEMP,               '+
                        '   PF1CHAVE,                '+
                        '   PF1CODFOR,               '+
                        '   PF1LOCAL,                '+
                        '   PF1TIPO,                 '+
                        '   PF1DATA,                 '+
                        '   PF1SITPED,               '+
                        '   PF1QTDMAN,               '+
                        '   PF1PRAZO,                '+
                        '   PF1QTDP,                 '+
                        '   PF1INT,                  '+
                        '   PF1OBS,                  '+
                        '   PF1CONDPAG,              '+
                        '   PF1CASASD,               '+
                        '   PF1DESC01,               '+
                        '   PF1DESC02,               '+
                        '   PF1TOTDES,               '+
                        '   PF1TOTDESOUT,            '+
                        '   PF1TOTBRU,               '+
                        '   PF1TOTBRUOUT,            '+
                        '   PF1TOTLIQ,               '+
                        '   PF1TOTLIQOUT,            '+
                        '   PF1TOTPBT,               '+
                        '   PF1STATUS,               '+
                        '   PF1CODUSR,               '+
                        '   PF1HORDIG,               '+
                        '   PF1TOTMER,               '+
                        '   PF1TOTPOS,               '+
                        '   PF1TOTNEG,               '+
                        '   PF1TOTINA,               '+
                        '   PF1TOTFRE,               '+
                        '   PF1TOTFREOUT,            '+
                        '   PF1PIPIFRETE,            '+
                        '   PF1IPIFRETE,             '+
                        '   PF1BASEN,                '+
                        '   PF1BASER,                '+
                        '   PF1ICMSN,                '+
                        '   PF1ICMSR,                '+
                        '   PF1CODLDR,               '+
                        '   PF1BASENR,               '+
                        '   PF1ICMSNR,               '+
                        '   PF1ISENTAS,              '+
                        '   PF1TOTOUT,               '+
                        '   PF1TOTOUT_ALIQ,          '+
                        '   PF1TOTOUT_IMP,           '+
                        '   PF1OUTDESP,              '+
                        '   PF1OUTNINC,              '+
                        '   PF1TOTIPI,               '+
                        '   PF1DATAENT,              '+
                        '   PF1DATANF,               '+
                        '   PF1DTPFAT,               '+
                        '   PF1DTPENT,               '+
                        '   PF1PERCFRE,              '+
                        '   PF1FRETEPC,              '+
                        '   PF1NFCF,                 '+
                        '   PF1NUMNF,                '+
                        '   PF1SERIE,                '+
                        '   PF1SUBSER,               '+
                        '   PF1TABPV,                '+
                        '   PF1CODPV,                '+
                        '   PF1CODBCO,               '+
                        '   PF1FORMACE,              '+
                        '   PF1OUTROS,               '+
                        '   PF1CODTRA,               '+
                        '   PF1MODELO,               '+
                        '   PF1LOTE_ENTRADA,         '+
                        '   PF1REGENT,               '+
                        '   PF1SITPROD,              '+
                        '   PF1SUBMOD,               '+
                        '   PF1NUMDUP,               '+
                        '   PF1NUMDUPOUT,            '+
                        '   PF1DESD,                 '+
                        '   PF1GRAVNF,               '+
                        '   PF1GRAVDP,               '+
                        '   PF1TEMBOL,               '+
                        '   PF1CODEMP_ORI,           '+
                        '   PF1SIV_FRETE,            '+
                        '   PF1SIV_DARE,             '+
                        '   PF1SIV_OUTROS,           '+
                        '   PF1NUMPED_ORI,           '+
                        '   PF1PAG_ORI,              '+
                        '   PF1OUTVDUP,              '+
                        '   PF1TERM,                 '+
                        '   PF1DATHOR_MAN,           '+
                        '   PF1TIP_EVE,              '+
                        '   PF1DATHOR)               '+
                        ' VALUES(                    '+
                        '   :PF1CODEMP,              '+
                        '   :PF1CHAVE,               '+
                        '   :PF1CODFOR,              '+
                        '   :PF1LOCAL,               '+
                        '   :PF1TIPO,                '+
                        '   :PF1DATA,                '+
                        '   :PF1SITPED,              '+
                        '   :PF1QTDMAN,              '+
                        '   :PF1PRAZO,               '+
                        '   :PF1QTDP,                '+
                        '   :PF1INT,                 '+
                        '   :PF1OBS,                 '+
                        '   :PF1CONDPAG,             '+
                        '   :PF1CASASD,              '+
                        '   :PF1DESC01,              '+
                        '   :PF1DESC02,              '+
                        '   :PF1TOTDES,              '+
                        '   :PF1TOTDESOUT,           '+
                        '   :PF1TOTBRU,              '+
                        '   :PF1TOTBRUOUT,           '+
                        '   :PF1TOTLIQ,              '+
                        '   :PF1TOTLIQOUT,           '+
                        '   :PF1TOTPBT,              '+
                        '   :PF1STATUS,              '+
                        '   :PF1CODUSR,              '+
                        '   :PF1HORDIG,              '+
                        '   :PF1TOTMER,              '+
                        '   :PF1TOTPOS,              '+
                        '   :PF1TOTNEG,              '+
                        '   :PF1TOTINA,              '+
                        '   :PF1TOTFRE,              '+
                        '   :PF1TOTFREOUT,           '+
                        '   :PF1PIPIFRETE,           '+
                        '   :PF1IPIFRETE,            '+
                        '   :PF1BASEN,               '+
                        '   :PF1BASER,               '+
                        '   :PF1ICMSN,               '+
                        '   :PF1ICMSR,               '+
                        '   :PF1CODLDR,              '+
                        '   :PF1BASENR,              '+
                        '   :PF1ICMSNR,              '+
                        '   :PF1ISENTAS,             '+
                        '   :PF1TOTOUT,              '+
                        '   :PF1TOTOUT_ALIQ,         '+
                        '   :PF1TOTOUT_IMP,          '+
                        '   :PF1OUTDESP,             '+
                        '   :PF1OUTNINC,             '+
                        '   :PF1TOTIPI,              '+
                        '   :PF1DATAENT,             '+
                        '   :PF1DATANF,              '+
                        '   :PF1DTPFAT,              '+
                        '   :PF1DTPENT,              '+
                        '   :PF1PERCFRE,             '+
                        '   :PF1FRETEPC,             '+
                        '   :PF1NFCF,                '+
                        '   :PF1NUMNF,               '+
                        '   :PF1SERIE,               '+
                        '   :PF1SUBSER,              '+
                        '   :PF1TABPV,               '+
                        '   :PF1CODPV,               '+
                        '   :PF1CODBCO,              '+
                        '   :PF1FORMACE,             '+
                        '   :PF1OUTROS,              '+
                        '   :PF1CODTRA,              '+
                        '   :PF1MODELO,              '+
                        '   :PF1LOTE_ENTRADA,        '+
                        '   :PF1REGENT,              '+
                        '   :PF1SITPROD,             '+
                        '   :PF1SUBMOD,              '+
                        '   :PF1NUMDUP,              '+
                        '   :PF1NUMDUPOUT,           '+
                        '   :PF1DESD,                '+
                        '   :PF1GRAVNF,              '+
                        '   :PF1GRAVDP,              '+
                        '   :PF1TEMBOL,              '+
                        '   :PF1CODEMP_ORI,          '+
                        '   :PF1SIV_FRETE,           '+
                        '   :PF1SIV_DARE,            '+
                        '   :PF1SIV_OUTROS,          '+
                        '   :PF1NUMPED_ORI,          '+
                        '   :PF1PAG_ORI,             '+
                        '   :PF1OUTVDUP,             '+
                        '   :PF1TERM,                '+
                        '   :PF1DATHOR_MAN,          '+
                        '   :PF1TIP_EVE,             '+
                        '   :PF1DATHOR)              ');

     DM1.Query1.ParamByName('PF1DATHOR').AsDateTime := mPd_DatHor_Eve;
  end else if (ptipo = 1) then begin
     DM1.Query1.Close;
     DM1.Query1.SQL.Clear;
     DM1.Query1.Sql.Add(' UPDATE CADPF1_TEMP SET                    '+
                        '   PF1CHAVE       =:PF1CHAVE,              '+
                        '   PF1CODFOR      =:PF1CODFOR,             '+
                        '   PF1LOCAL       =:PF1LOCAL,              '+
                        '   PF1TIPO        =:PF1TIPO,               '+
                        '   PF1DATA        =:PF1DATA,               '+
                        '   PF1SITPED      =:PF1SITPED,             '+
                        '   PF1QTDMAN      =:PF1QTDMAN,             '+
                        '   PF1PRAZO       =:PF1PRAZO,              '+
                        '   PF1QTDP        =:PF1QTDP,               '+
                        '   PF1INT         =:PF1INT,                '+
                        '   PF1OBS         =:PF1OBS,                '+
                        '   PF1CONDPAG     =:PF1CONDPAG,            '+
                        '   PF1CASASD      =:PF1CASASD,             '+
                        '   PF1DESC01      =:PF1DESC01,             '+
                        '   PF1DESC02      =:PF1DESC02,             '+
                        '   PF1TOTDES      =:PF1TOTDES,             '+
                        '   PF1TOTDESOUT   =:PF1TOTDESOUT,          '+
                        '   PF1TOTBRU      =:PF1TOTBRU,             '+
                        '   PF1TOTBRUOUT   =:PF1TOTBRUOUT,          '+
                        '   PF1TOTLIQ      =:PF1TOTLIQ,             '+
                        '   PF1TOTLIQOUT   =:PF1TOTLIQOUT,          '+
                        '   PF1TOTPBT      =:PF1TOTPBT,             '+
                        '   PF1STATUS      =:PF1STATUS,             '+
                        '   PF1USRMOD      =:PF1USRMOD,             '+
                        '   PF1DTMOD       =:PF1DTMOD,              '+
                        '   PF1HRMOD       =:PF1HRMOD,              '+
                        '   PF1TOTMER      =:PF1TOTMER,             '+
                        '   PF1TOTPOS      =:PF1TOTPOS,             '+
                        '   PF1TOTNEG      =:PF1TOTNEG,             '+
                        '   PF1TOTINA      =:PF1TOTINA,             '+
                        '   PF1TOTFRE      =:PF1TOTFRE,             '+
                        '   PF1TOTFREOUT   =:PF1TOTFREOUT,          '+
                        '   PF1PIPIFRETE   =:PF1PIPIFRETE,          '+
                        '   PF1IPIFRETE    =:PF1IPIFRETE,           '+
                        '   PF1BASEN       =:PF1BASEN,              '+
                        '   PF1BASER       =:PF1BASER,              '+
                        '   PF1ICMSN       =:PF1ICMSN,              '+
                        '   PF1ICMSR       =:PF1ICMSR,              '+
                        '   PF1CODLDR      =:PF1CODLDR,             '+
                        '   PF1BASENR      =:PF1BASENR,             '+
                        '   PF1ICMSNR      =:PF1ICMSNR,             '+
                        '   PF1ISENTAS     =:PF1ISENTAS,            '+
                        '   PF1TOTOUT      =:PF1TOTOUT,             '+
                        '   PF1TOTOUT_ALIQ =:PF1TOTOUT_ALIQ,        '+
                        '   PF1TOTOUT_IMP  =:PF1TOTOUT_IMP,         '+
                        '   PF1OUTDESP     =:PF1OUTDESP,            '+
                        '   PF1OUTNINC     =:PF1OUTNINC,            '+
                        '   PF1TOTIPI      =:PF1TOTIPI,             '+
                        '   PF1DATAENT     =:PF1DATAENT,            '+
                        '   PF1DATANF      =:PF1DATANF,             '+
                        '   PF1DTPFAT      =:PF1DTPFAT,             '+
                        '   PF1DTPENT      =:PF1DTPENT,             '+
                        '   PF1PERCFRE     =:PF1PERCFRE,            '+
                        '   PF1FRETEPC     =:PF1FRETEPC,            '+
                        '   PF1NFCF        =:PF1NFCF,               '+
                        '   PF1NUMNF       =:PF1NUMNF,              '+
                        '   PF1SERIE       =:PF1SERIE,              '+
                        '   PF1SUBSER      =:PF1SUBSER,             '+
                        '   PF1TABPV       =:PF1TABPV,              '+
                        '   PF1CODPV       =:PF1CODPV,              '+
                        '   PF1CODBCO      =:PF1CODBCO,             '+
                        '   PF1FORMACE     =:PF1FORMACE,            '+
                        '   PF1OUTROS      =:PF1OUTROS,             '+
                        '   PF1CODTRA      =:PF1CODTRA,             '+
                        '   PF1MODELO      =:PF1MODELO,             '+
                        '   PF1LOTE_ENTRADA=:PF1LOTE_ENTRADA,       '+
                        '   PF1REGENT      =:PF1REGENT,             '+
                        '   PF1SITPROD     =:PF1SITPROD,            '+
                        '   PF1SUBMOD      =:PF1SUBMOD,             '+
                        '   PF1NUMDUP      =:PF1NUMDUP,             '+
                        '   PF1NUMDUPOUT   =:PF1NUMDUPOUT,          '+
                        '   PF1DESD        =:PF1DESD,               '+
                        '   PF1GRAVNF      =:PF1GRAVNF,             '+
                        '   PF1GRAVDP      =:PF1GRAVDP,             '+
                        '   PF1TEMBOL      =:PF1TEMBOL,             '+
                        '   PF1CODEMP_ORI  =:PF1CODEMP_ORI,         '+
                        '   PF1SIV_FRETE   =:PF1SIV_FRETE,          '+
                        '   PF1SIV_DARE    =:PF1SIV_DARE,           '+
                        '   PF1SIV_OUTROS  =:PF1SIV_OUTROS,         '+
                        '   PF1NUMPED_ORI  =:PF1NUMPED_ORI,         '+
                        '   PF1PAG_ORI     =:PF1PAG_ORI,            '+
                        '   PF1OUTVDUP     =:PF1OUTVDUP,            '+
                        '   PF1DATHOR_MAN  =:PF1DATHOR_MAN,         '+
                        '   PF1CODUSR      =:PF1CODUSR,             '+
                        '   PF1HORDIG      =:PF1HORDIG,             '+
                        '   PF1TIP_EVE     =:PF1TIP_EVE             '+
                        ' WHERE                                     '+
                        '   PF1CODEMP =:PF1CODEMP AND               '+
                        '   PF1TERM   =:PF1TERM                     ');

      DM1.Query1.ParamByName('PF1USRMOD').AsString      := Trim(USRMOD.Text);
      if Trim(DTMOD.Text)<>Trim('  /  /    ')  then
         DM1.Query1.ParamByName('PF1DTMOD').AsDateTime  := StrToDate(DTMOD.Text)
      else
         DM1.Query1.ParamByName('PF1DTMOD').AsDateTime  := pdatanula;

      DM1.Query1.ParamByName('PF1HRMOD').AsString       := Trim(HRMOD.Text);
  end;

  DM1.Query1.ParamByName('PF1CODEMP').AsFloat      := codemp;
  DM1.Query1.ParamByName('PF1CHAVE').AsFloat       := ValFloat(CHAVE.Text);
  DM1.Query1.ParamByName('PF1CODFOR').AsFloat      := ValFloat(CODFOR.Text);
  DM1.Query1.ParamByName('PF1LOCAL').AsFloat       := CB_LOCAL.ItemIndex;
  DM1.Query1.ParamByName('PF1TIPO').AsString       := iif(CB_TIPO.ItemIndex=10,'10',IntToStr(CB_TIPO.ItemIndex));
  DM1.Query1.ParamByName('PF1DATA').AsString       := FormatDateTime(fdt,StrtoDate(DATAP.Text));
  DM1.Query1.ParamByName('PF1SITPED').AsString     := '0';
  DM1.Query1.ParamByName('PF1QTDMAN').AsFloat      := mQtdMan;
  DM1.Query1.ParamByName('PF1PRAZO').AsFloat       := ValFloat(PRAZO.Text);
  DM1.Query1.ParamByName('PF1QTDP').AsFloat        := ValFloat(QTDP.Text);
  DM1.Query1.ParamByName('PF1INT').AsFloat         := Iif(Trim(INT.Text)<>'',ValFloat(INT.Text),1);
  DM1.Query1.ParamByName('PF1OBS').AsString        := OBSERVACAO.Text;
  DM1.Query1.ParamByName('PF1CONDPAG').AsString    := CONDPAG.Text;
  DM1.Query1.ParamByName('PF1CASASD').AsFloat      := CB_CASASD.ItemIndex;
  DM1.Query1.ParamByName('PF1DESC01').AsFloat      := ValFloat(DESC01.Text);
  DM1.Query1.ParamByName('PF1DESC02').AsFloat      := ValFloat(DESC02.Text);
  DM1.Query1.ParamByName('PF1TOTDES').AsFloat      := ValFloat(TOTDES.Text);
  DM1.Query1.ParamByName('PF1TOTDESOUT').AsFloat   := ValFloat('0');
  DM1.Query1.ParamByName('PF1TOTBRU').AsFloat      := ValFloat(TOTAL.Text);//mtotbru;
  DM1.Query1.ParamByName('PF1TOTBRUOUT').AsFloat   := ValFloat('0');
  DM1.Query1.ParamByName('PF1TOTLIQ').AsFloat      := ValFloat(TOTLIQ.Text);
  DM1.Query1.ParamByName('PF1TOTLIQOUT').AsFloat   := ValFloat('0');
  DM1.Query1.ParamByName('PF1TOTPBT').AsFloat      := ValFloat('0');
  DM1.Query1.ParamByName('PF1STATUS').AsString     := Trim(STATUS.Text);
  DM1.Query1.ParamByName('PF1TOTPOS').AsFloat      := mtotpos;
  DM1.Query1.ParamByName('PF1TOTNEG').AsFloat      := mtotneg;
  DM1.Query1.ParamByName('PF1TOTINA').AsFloat      := mtotina;
  DM1.Query1.ParamByName('PF1TOTFRE').AsFloat      := ValFloat(TOTFRE.Text);
  DM1.Query1.ParamByName('PF1TOTFREOUT').AsFloat   := ValFloat('0');
  DM1.Query1.ParamByName('PF1BASEN').AsFloat       := ValFloat(MBASEN.Text);
  DM1.Query1.ParamByName('PF1BASER').AsFloat       := ValFloat(MBASER.Text);
  DM1.Query1.ParamByName('PF1ICMSN').AsFloat       := micmsn;
  DM1.Query1.ParamByName('PF1ICMSR').AsFloat       := ValFloat(MICMSR.Text);
  DM1.Query1.ParamByName('PF1CODLDR').AsFloat      := mCodLdr;
  DM1.Query1.ParamByName('PF1BASENR').AsFloat      := mbasenrp+mbasenri+mbasenrn;
  DM1.Query1.ParamByName('PF1ICMSNR').AsFloat      := micmsnrp+micmsnri+micmsnrn;
  DM1.Query1.ParamByName('PF1ISENTAS').AsFloat     := ValFloat(ISENTAS.Text);
  DM1.Query1.ParamByName('PF1TOTOUT').AsFloat      := ValFloat(OUTRAS.Text);
  DM1.Query1.ParamByName('PF1TOTOUT_ALIQ').AsFloat := ValFloat(OUTRAS_PERC.Text);
  DM1.Query1.ParamByName('PF1TOTOUT_IMP').AsFloat  := ValFloat(OUTRAS_IMP.Text);
  DM1.Query1.ParamByName('PF1OUTDESP').AsFloat     := ValFloat(OUTDESP.Text);
  DM1.Query1.ParamByName('PF1OUTNINC').AsFloat     := ValFloat(OUTNINC.Text);
  DM1.Query1.ParamByName('PF1TOTIPI').AsFloat      := mipiina+mipipos+mipineg;
  DM1.Query1.ParamByName('PF1TOTMER').AsFloat      := mtotb;
  DM1.Query1.ParamByName('PF1PIPIFRETE').AsFloat   := ValFloat(PIPIFRETE.Text);
  DM1.Query1.ParamByName('PF1IPIFRETE').AsFloat    := ValFloat(IPIFRETE.Text);
  DM1.Query1.ParamByName('PF1PERCFRE').AsFloat     := ValFloat(PERCFRE.Text);

  if Trim(DATAENT.Text) <> Trim('  /  /    ')  then
     DM1.Query1.ParamByName('PF1DATAENT').AsDateTime  := StrToDate(DATAENT.Text)
  else
     DM1.Query1.ParamByName('PF1DATAENT').AsDateTime  := pdatanula;

  if Trim(DATAE.Text) <> Trim('  /  /    ')  then
     DM1.Query1.ParamByName('PF1DATANF').AsDateTime   := StrToDate(DATAE.Text)
  else
     DM1.Query1.ParamByName('PF1DATANF').AsDateTime   := pdatanula;

  if Trim(DTPFAT.Text) <> Trim('  /  /    ')  then
     DM1.Query1.ParamByName('PF1DTPFAT').AsDateTime   := StrToDate(DTPFAT.Text)
  else
     DM1.Query1.ParamByName('PF1DTPFAT').AsDateTime   := pdatanula;

  if Trim(DTPENT.Text) <> Trim('  /  /    ')  then
     DM1.Query1.ParamByName('PF1DTPENT').AsDateTime   := StrToDate(DTPENT.Text)
  else
     DM1.Query1.ParamByName('PF1DTPENT').AsDateTime   := pdatanula;

  DM1.Query1.ParamByName('PF1FRETEPC').AsFloat        := RGFRETEPC.ItemIndex;
  DM1.Query1.ParamByName('PF1NFCF').AsFloat           := Iif(CB_NFCF.Checked,1,0);
  DM1.Query1.ParamByName('PF1NUMNF').AsFloat          := ValFloat(NUMNF.Text);
  DM1.Query1.ParamByName('PF1SERIE').AsString         := SERIE.Text;
  DM1.Query1.ParamByName('PF1SUBSER').AsString        := SUBSERIE.Text;
  DM1.Query1.ParamByName('PF1TABPV').AsString         := CB_TABPV.Text;
  DM1.Query1.ParamByName('PF1CODPV').AsFloat          := ValFloat(CODPV.Text);
  DM1.Query1.ParamByName('PF1CODBCO').AsFloat         := ValFloat(CODBCO.Text);
  DM1.Query1.ParamByName('PF1FORMACE').AsFloat        := ValFloat('0');
  DM1.Query1.ParamByName('PF1OUTROS').AsFloat         := ValFloat('0');
  DM1.Query1.ParamByName('PF1CODTRA').AsFloat         := ValFloat(CODTRA.Text);
  DM1.Query1.ParamByName('PF1MODELO').AsString        := MODELO.Text;
  DM1.Query1.ParamByName('PF1LOTE_ENTRADA').AsString  := '';
  DM1.Query1.ParamByName('PF1REGENT').AsString        := '';
  DM1.Query1.ParamByName('PF1SITPROD').AsFloat        := mSitProd;
  DM1.Query1.ParamByName('PF1SUBMOD').AsString        := NumPal_Sis(FormatFloat('000',fsonumero(SUBMOD.Text)));
  DM1.Query1.ParamByName('PF1NUMDUP').AsFloat         := ValFloat(NUMDUP.Text);
  DM1.Query1.ParamByName('PF1NUMDUPOUT').AsFloat      := ValFloat('0');
  DM1.Query1.ParamByName('PF1DESD').AsString          := DESD.Text;
  DM1.Query1.ParamByName('PF1GRAVNF').AsFloat         := iif(CB_GNF.Checked,1,0);
  DM1.Query1.ParamByName('PF1GRAVDP').AsFloat         := iif(CB_GDP.Checked,1,0);
  DM1.Query1.ParamByName('PF1TEMBOL').AsFloat         := iif(CB_BOLETO.Checked,0,1);
  DM1.Query1.ParamByName('PF1CODEMP_ORI').AsString    := iif(trim(CODEMP_ORI.Text)='','0',CODEMP_ORI.Text);
  DM1.Query1.ParamByName('PF1SIV_FRETE').AsFloat      := ValFloat(SIV_FRETE.Text);
  DM1.Query1.ParamByName('PF1SIV_DARE').AsFloat       := ValFloat(SIV_DARE.Text);
  DM1.Query1.ParamByName('PF1SIV_OUTROS').AsFloat     := ValFloat(SIV_OUTROS.Text);
  DM1.Query1.ParamByName('PF1NUMPED_ORI').AsFloat     := ValFloat(NUMPED_ORI.Text);
  DM1.Query1.ParamByName('PF1PAG_ORI').AsString       := iif(trim(PAG_ORI.Text)='','0',PAG_ORI.Text);
  DM1.Query1.ParamByName('PF1OUTVDUP').AsFloat        := ValFloat(OUTVDUP.Text);
  DM1.Query1.ParamByName('PF1TERM').AsString          := mPd_NomeComputador;
  DM1.Query1.ParamByName('PF1DATHOR_MAN').Value       := now;
  DM1.Query1.ParamByName('PF1CODUSR').AsFloat         := codusr;
  DM1.Query1.ParamByName('PF1HORDIG').AsString        := FormatDateTime('HH:MM:SS',now);
  DM1.Query1.ParamByName('PF1TIP_EVE').AsInteger      := mPd_Oper_Ped;

  try
    DM1.Query1.ExecSQL;
    fdm1StartCommit;
  except
    ex_erroSql_Novo(DM1.Query1,16937,'Frm_Pfor01_02','CADPF1_TEMP');
  end;

  mPd_Incluiu_Pedido := True;
  Result  := True;
end;

procedure Tfrm_Pfor01_02.bbGerarDuplicClick(Sender: TObject);
var
  x,mqtdd              : Integer;
  mdif,mdif_comp,
  mvaldup,mvaldup_comp : Real;
  mtotdup,mtotdup_comp :real;
  mdatav               : TDateTime;
begin
   mtotdup:=valfloat(TOTNOT.Text)+ValFloat(OUTVDUP.Text);

   if Trim(QTDP.Text) <> '' then
      mqtdd :=ValInt(QTDP.Text)
   else
      mqtdd := 1;

   mvaldup:= mtotdup/mqtdd;
   mvaldup:=arredonda(mvaldup,2);
   mdif:=mvaldup*mqtdd;
   mdif:=mtotdup-mdif;
   mdif:=arredonda(mdif,2);

   mvaldup_comp:=mtotdup_comp/mqtdd;
   mvaldup_comp:=arredonda(mvaldup_comp,2);
   mdif_comp:=mvaldup_comp*mqtdd;
   mdif_comp:=mtotdup_comp-mdif_comp;
   mdif_comp:=arredonda(mdif_comp,2);


   if trim(DATAP.Text)='/  /' then
      DATAP.Text:=FormatDateTime(fdt2, date);
   if trim(DATAE.Text)='/  /' then
      mdatav:=StrToDate(DATAP.Text)
   else
      mdatav:=StrToDate(DATAE.Text);
   mdatav:=mdatav+ValInt(PRAZO.Text);


   Qr_Duplicatas.Close;
   Qr_Duplicatas.Active := True;
   for x := 1 to mqtdd do begin
       Qr_Duplicatas.Insert;
       Qr_DuplicatasDTVCTO.AsString := FormatDatetime(fdt2,mdatav);
       Qr_DuplicatasVALOR.Value     := mvaldup+mdif;
       Qr_DuplicatasDESCFIN.Value   := 0;
       Qr_DuplicatasPGTODT.Value    := '/  /';
       Qr_DuplicatasVLROUT.Value    := mvaldup_comp+mdif_comp;
       Qr_DuplicatasDESCFINOUT.Value:= 0;
       Qr_DuplicatasEXTRA.Value     := '';
       Qr_Duplicatas.Post;

       if Trim(INT.Text) <> '' then
          mdatav             := mdatav+ValInt(INT.Text)
       else
          mdatav             := mdatav+1;
       mdif               := 0;
       mdif_comp          := 0;
   end;

   Qr_Dup.Close;
   Qr_Dup.Active := True;
   for x := 1 to mqtdd do begin
      Qr_Dup.Insert;
      Qr_DupDTVCTO.AsString := FormatDateTime(fdt2,mdatav);
      Qr_DupVALOR.Value     := mvaldup+mdif;
      Qr_DupDESCFIN.Value   := 0;
      Qr_DupPGTODT.AsString := '/  /';
      Qr_DupVLROUT.Value    := mvaldup_comp+mdif_comp;
      Qr_DupDESCFINOUT.Value:= 0;
      Qr_DupEXTRA.Value     := '';
      Qr_Dup.Post;
   end;

   fTotdupDig(0);
end;

procedure Tfrm_Pfor01_02.TOTLIQExit(Sender: TObject);
begin
   TOTALI.Text := FormatFloat(mcasas,ValFloat(TOTALI.Text));
   if not fpf01tvlr(ValFloat(TOTALI.Text)) then
      TOTALI.SetFocus;
   if (ValFloat(TOTALI.Text) <> 0) and (ValFloat(QTD.Text) <> 0) then begin
      if ValFloat(TOTALI.Text)<>ValFloat(PCOUNI.Text)*ValFloat(QTD.Text) then begin
         if (NumeroDecimais(ValFloat(TOTALI.Text)/ValFloat(QTD.Text)) > CB_CASASD.ItemIndex+1) then begin
            if NumeroDecimais(ValFloat(TOTALI.Text)/ValFloat(QTD.Text)) > 7 then begin
               CB_CASASD.ItemIndex:=7;
               CB_CASASDClick(Self);
            end else begin
               CB_CASASD.ItemIndex:=(NumeroDecimais(ValFloat(TOTALI.Text)/ValFloat(QTD.Text))-1);
               CB_CASASDClick(Self);
            end
         end
      end;

      PCOUNI.Text:= FormatFloat(pf01_caspu,ValFloat(TOTALI.Text)/ValFloat(QTD.Text));
   end;
   TOTALI.Text:=FormatFloat(mcasas,ValFloat(PCOUNI.Text)*ValFloat(QTD.Text));
end;

procedure Tfrm_Pfor01_02.TOTLIQKeyPress(Sender: TObject; var Key: Char);
begin
   if key in ['.',','] then
      key := DecimalSeparator
   else if not (key in ['0'..'9']) and (key<>#8) then
      key := #0;
end;


function Tfrm_Pfor01_02.fGravaItem(pTipo: Integer): Boolean;
{ 0 - Insere Novo Item do Pedido
  1 - Atualiza Item do Pedido }
begin
  if Trim(SERIE.Text)='' then
     SERIE.Text:='1';
  if Trim(SUBSERIE.Text)='' then
     SUBSERIE.Text:='1';
  if Trim(MODELO.Text)='' then
     MODELO.Text:='1';

  if pTipo = 0 then begin
     if (Trim(CODPRO.Text)='') or (Trim(NOMPRO.Text)='') then begin
        Fmensagem('Favor Digitar um código Valido!',0,['0'],0);
        CODPRO.SetFocus;
        exit;
     end;

     if ValFloat(QTD.Text)< 0 then begin
        Fmensagem('Favor Digitar uma Quantidade Valida!',0,['0'],0);
        QTD.SetFocus;
        exit;
     end;

     if ValFloat(PCOUNI.Text)< 0 then begin
        Fmensagem('Favor Digitar um preco Valido! ',0,['0'],0);
        PCOUNI.SetFocus;
        exit;
     end;

     if ValFloat(CFOP.Text)>4999 then begin
        if flcadcfo(1,1,CFOP.Text) then begin
           if DM1.Tb_CfoCFCFOENT.Value>0 then
              CFOP.Text:=FormatFloat('0000',DM1.Tb_CfoCFCFOENT.Value);
        end;
     end;

     if fsonumero(CFOP.Text)=0 then begin
          Fmensagem('Favor Digitar o CFOP!',0,['0'],0);
          CFOP.SetFocus;
          exit;
     end;

     if UFFOR.Text=DM1.Tb_EmpUF.Value then begin
        if (CFOP.Text[1]<>'1') and (CFOP.Text[1]<>'5') then begin
            Fmensagem('CFOP de Entrada para o Mesmo estado o primeiro digito é 1'+#13
                     +'favor corrigir!',0,['0'],0);
            CFOP.SetFocus;
            exit;
        end;
     end else begin
        if (CFOP.Text[1]<>'2') and (CFOP.Text[1]<>'6') then begin
            Fmensagem('CFOP de Entrada de Outro estado o primeiro digito é 2'+#13
                     +'favor corrigir!',0,['0'],0);
            CFOP.SetFocus;
            exit;
        end;
     end;

     if trim(SITTRI.Text) = '' then begin
        Fmensagem('Situação Tributária Campo Obrigatório!',0,['0'],0);
        SITTRI.SetFocus;
        exit;
     end;

     if (DM1.Tb_ProPDFRACAO.Value<>1) and (mcasqtd<>'0') then begin
        if Round(ValFloat(QTD.Text))<>ValFloat(QTD.Text) then begin
           Fmensagem('Não é permitido fracionar este produto!',0,['0'],0);
           QTD.SetFocus;
           exit;
        end;
     end;



     if ValFloat(VALDES.Text) > 0 then begin
        if ValFloat(VALDES.Text)>=ValFloat(TOTLIQ.Text) then begin
           Fmensagem('O Valor do desconto tem que ser menor que o valor total do produto!',0,['0'],0);
           VALDES.SetFocus;
           exit;
        end;
     end;

     if ValFloat(TOTALI.Text)<0 then begin
        Fmensagem('O Total dos Produtos não pode ser Negativo!',0,['0'],0);
        CODPRO.SetFocus;
        exit;
     end;

     if fsonumero(LISTA.Text)<=0 then
        LISTA.Text:='0';

     mcalculo := fcalcped(0,valint(lista.Text),0,ValFloat(QTD.Text),
                          ValFloat(PCOUNI.Text),0,ValFloat(DESC01.Text),ValFloat(DESC02.Text),
                          0,ValFloat(MDESCI01.Text),ValFloat(MDESCI02.Text),ValFloat(MDESCI03.Text),
                          0,ValFloat(ALIPI.Text),ValFloat(ALICMS.Text),ValFloat(PREDICMNOR.Text),
                          valFloat(VALDES.Text),
                          0,
                          0,
                          0,
                          valFloat(VALFRE.Text),
                          0,
                          0,
                          0,
                          0,
                          SITTRI.Text,DM1.Tb_ProPDTABICM.Value,CFOP.Text);

     if Qr_Itens.Locate('CODPRO',CODPRO.Text,[loCaseInsensitive]) then begin
        Qr_Itens.Edit;
        mPd_Oper_item  := 1;
     end else begin
        Qr_Itens.Insert;
        mPd_Oper_item  := 0;
     end;

     Qr_ItensCODPRO.Value    := ValFloat(CODPRO.Text);
     Qr_ItensQTD.Value       := ValFloat(QTD.Text);
     Qr_ItensNOMPRO.Value    := Trim(NOMPRO.Text);
     Qr_ItensUND.Value       := Trim(UND.Text);
     Qr_ItensPCOUNI.Value    := ValFloat(PCOUNI.Text);
     Qr_ItensDESC01.Value    := ValFloat(MDESCI01.Text);
     Qr_ItensDESC02.Value    := ValFloat(MDESCI02.Text);
     Qr_ItensDESC03.Value    := ValFloat(MDESCI03.Text);
     Qr_ItensVALDESI.Value   := ValFloat(VALDES.Text);
     Qr_ItensTOTALI.Value    := ValFloat(TOTALI.Text);
     Qr_ItensLOTE.Value      := Trim(LOTE.Text);
     Qr_ItensDATAV.Value     := Iif(DATAV.Text = '  /  /    ','',Trim(DATAV.Text));
     Qr_ItensBASER.Value     := ValFloat(copy(mcalculo,16,15));   // base do icms retido
     Qr_ItensICMSR.Value     := ValFloat(copy(mcalculo,1,15));    // valor do icms retido
     Qr_ItensBASEN.Value     := ValFloat(copy(mcalculo,31,15));   // base do icms normal
     Qr_ItensICMSN.Value     := ValFloat(copy(mcalculo,46,15));   // Valor do icms normal
     Qr_ItensTOTDES.Value    := ValFloat(copy(mcalculo,61,15));   // Total do desconto
     Qr_ItensSITTRI.Value    := Trim(SITTRI.Text);
     Qr_ItensTABICM.Value    := DM1.Tb_ProPDTABICM.AsString;
     Qr_ItensLISTA.Value     := Trim(LISTA.Text);
     Qr_ItensCFOP.Value      := copy(mcalculo,136,4);             // cfo codigo fiscal
     Qr_ItensCFOP_COMP.Value := copy(mcalculo,136,4);             // cfo codigo fiscal
     Qr_ItensALIPI.value     := ValFloat(ALIPI.Text);
     Qr_ItensVALIPI.Value    := ValFloat(copy(mcalculo,76,15));   // Valor do IPI
     Qr_ItensALICMS.Value    := ValFloat(copy(mcalculo,156,15));  // Aliquota de icms
     Qr_ItensPRECO1.Value    := DM1.Tb_ProPDPRECO1.Value;
     Qr_ItensCODFOR.Value    := DM1.Tb_ProPDCODFOR.Value;
     Qr_ItensBASENR.Value    := ValFloat(copy(mcalculo,106,15));  // Base Calculo Icms normal do retido
     Qr_ItensICMSNR.Value    := ValFloat(copy(mcalculo,91,15));   // Icms normal do Retido

     if SITTRI.Text[2]='4'then
        Qr_ItensISENTAS.Value := Qr_ItensTOTALI.Value - Qr_ItensTOTDES.value
     else
        Qr_ItensISENTAS.Value := 0;

     Qr_ItensDESC03.Value    := ValFloat(MDESCI03.Text);
     Qr_ItensPMC.Value       := 0;
     Qr_ItensDESCRAT.Value   := ValFloat(copy(mcalculo,231,15));  // Desconto Rateado

     if SITTRI.Text[2] = '0' then begin
        Qr_ItensOUTRAS.Value := Qr_ItensTOTALI.Value - Qr_ItensTOTDES.Value - Qr_ItensBASEN.Value - Qr_ItensDESCRAT.Value;
     end else begin
        Qr_ItensOUTRAS.Value := 0;
     end;


     Qr_ItensVALPBT.Value      := DM1.Tb_ProPDPRECOC.Value;
     Qr_ItensPCOUNI_COMP.Value := 0;
     Qr_ItensFRERAT.Value      := ValFloat(copy(mcalculo,276,15)); // frete rateado
     Qr_ItensVALDESI_COMP.Value:= 0;
     Qr_ItensTOTALI_COMP.Value := 0;
     Qr_ItensOUT_TOTDES.Value  := ValFloat(copy(mcalculo,246,15)); // total de desconto outros
     Qr_ItensOUT_FRETERAT.Value:= ValFloat(copy(mcalculo,291,15)); // frete rateado outros
     Qr_ItensOUT_DESCRAT.Value := ValFloat(copy(mcalculo,261,15)); // desconto rateado outros
     Qr_ItensPREDICMNOR.Value  := ValFloat(PREDICMNOR.Text);       // percentual de redutor de icms normal
     Qr_ItensLOTE_RE.Value     := '';                              // Lote do Registro de Entrada
     Qr_Itens.Post;

     Qr_Itens.Bookmark;


     if mcfog = 0 then
        mcfog := mcolpf_cfop;
     if trim(mcfog_comp) = '' then
        mcfog_comp := mcfog_comp;

     fcalcular(0);

     mop := 0;

     if not mpd_RestaurandoPedido then begin
        if mOrigem_PF = 4 then begin
           Fpf01camposRestritos(1);
           CFOP.SetFocus;
        end else
           CODPRO.SetFocus;
     end;

     //--Grava Registros da Tabela Temporaria

     if not mpd_RestaurandoPedido then begin
        if not mPd_Incluiu_Pedido then
           fAtualizaPedidoTemp(0)
        else
           fAtualizaPedidoTemp(1);

        if mPd_Oper_item = 0 then
           fAtualizaItemPedido(0)
        else
           fAtualizaItemPedido(1);
     end;      

     CODPRO.Text      :='';
     QTD.Text         :='';
     UND.Text         :='';
     NOMPRO.Text      :='';
     PCOUNI.Text      :='';
     MDESCI01.Text    :='';
     MDESCI02.Text    :='';
     MDESCI03.Text    :='';
     VALDES.Text      :='';
     TOTALI.Text      :='';
     LOTE.Text        :='';
     DATAV.Text       :='';
     ALIPI.Text       :='';
  end;
end;

procedure Tfrm_Pfor01_02.Qr_PF02CalcFields(DataSet: TDataSet);
begin
   if flqr1('PDUND','PD','CADPRO','N','PDCODPRO',Qr_PF02PF2CODPRO.AsString) then begin
      Qr_PF02undpro.Value:=DM1.Query1.Fields[0].AsString;
   end;

   Qr_PF02totbru.Value:=Qr_PF02PF2PU.Value*Qr_PF02PF2QTDP.Value;
   Qr_PF02totdes.Value:=(Qr_PF02PF2TOTDES.Value);
   Qr_PF02totliq.Value:=Qr_PF02totbru.Value-Qr_PF02totdes.Value;
end;

procedure Tfrm_Pfor01_02.btn_confirmarClick(Sender: TObject);
var
  mQuantDup,mqtdd: Integer;
  mLote_Re,mPercFrete, mpu, mtotd,mtotdup_out: Real;
  mdtv: String;
  mDataDup: TDateTime;
  mExisteDupPag: Boolean;
  moper_ne: Integer;

  mant_codfor: Real;
  mant_numero: Real;
  mant_serie: string;
  mant_subserie: string;
  mant_modelo: string;
  mant_cfop: Real;
  mant_dtent: TdateTime;
  mant_dtemis: TdateTime;
begin
  if not fLerPF1(0,codemp,pfor_lotseq,mchave_pf) then begin
     Fmensagem('Este Pedido foi excluido por outro usuario!',0,['0'],0);
     exit;
  end;

  if Qr_Pf01PF1SITPED.AsInteger = 1 then begin
     Fmensagem('Este Pedido Esta em Manutenção em outra estação!',0,['0'],0);
     exit;
  end;

  if Qr_Pf01PF1QTDMAN.AsInteger>mQtdMan then begin
     moper:=3;
     btn_localizar.Click;
  end;

  if ((Qr_Pf01PF1STATUS.Value>0) and (MOrigem_PF<>8)) or (Qr_Pf01PF1STATUS.Value=7) then begin
     Fmensagem('Pedido ja Confirmado. Nao Pode Ser Alterado!',0,['0'],0);
     exit;
  end;

  if mOrigem_PF=4 then begin
     Fmensagem('Para Confirmação Favor Utilizar Cadastro=>Pedido de Compra=>Manutenção!',0,['0'],0);
     exit;
  end;

  if CB_GNF.Checked then begin
   if ValFloat(NUMNF.Text)<=0 Then begin
      Fmensagem('Número da nota fiscal tem que ser colocado!',0,['0'],0);
      pgc_detalhes.ActivePage := tbs_complementares;
      if btn_alterar.Enabled then
         btn_alterar.Click;
      NUMNF.SetFocus;
      exit;
   end;

   if Trim(SERIE.Text)='' Then begin
      Fmensagem('Número de série da nota campo obrigatório!',0,['0'],0);
      pgc_detalhes.ActivePage := tbs_complementares;
      if btn_alterar.Enabled then
         btn_alterar.Click;
      SERIE.SetFocus;
      exit;
   end;

   if Trim(DATAE.Text)='/  /' Then begin
      Fmensagem('Data da nota fiscal tem que ser colocado!',0,['0'],0);
      pgc_detalhes.ActivePage := tbs_complementares;
      if btn_alterar.Enabled then
         btn_alterar.Click;
      DATAE.SetFocus;
      exit;
   end;

   if Trim(SERIE.Text)='' then
      SERIE.Text:=' ';
   if Trim(SUBSERIE.Text)='' then
      SUBSERIE.Text:=' ';
   if Trim(MODELO.Text)='' then
      MODELO.Text:=' ';
   if mOrigem_PF<>8 then begin
      if flcadne(3,Qr_Pf01PF1CODFOR.AsString,Qr_Pf01PF1NUMNF.AsString,Trim(Qr_Pf01PF1SERIE.AsString),Trim(Qr_Pf01PF1SUBSER.AsString),Trim(Qr_Pf01PF1MODELO.AsString),FormatDateTime(fdt,StrToDate(Qr_Pf01PF1DATANF.AsString)),'') then Begin
         if fMensagem('Ja Existe Nota de Entradas c/Mesmas Caracteristicas'+#13
                 +'Deseja Continuar a Operação?',0,['1','2'],2)<>mrYes then exit;
      end;
   end;
  end;

  
  if CB_GDP.Checked then begin
     if ValFloat(NUMDUP.Text)<=0 then begin
        Fmensagem('Número da duplicata tem que ser colocado!',0,['0'],0);
        exit;
     end;

     if Trim(DESD.Text)='' then begin
        Fmensagem('Desdobamento/parcela tem que ser colocado!',0,['0'],0);
        exit;
     end;

     //INICIO
     mtotd:=0;
     mtotdup_out:=0;
     Qr_Pf01V.First;
     while not Qr_Pf01V.eof  do begin
        mtotd      :=mtotd+Qr_Pf01VPF1VVALOR.Value;
        mtotdup_out:=mtotdup_out+Qr_Pf01VPF1VVALOUT.Value;
        Qr_Pf01v.Next;
     end;

     if Arredonda(mtotd,2)<>Arredonda((Qr_Pf01PF1TOTLIQ.Value+Qr_PF01PF1OUTVDUP.Value) ,2) then begin
        Fmensagem('Total das Duplicatas.: '+Formatfloat(mcasas, mtotd)+#13
                 +'Total do Pedido......: '+FormatFloat(mcasas, Qr_Pf01PF1TOTLIQ.Value)+#13
                 +'Favor Corrigir!',0,['0'],0);
        exit;
     end;

     if Arredonda(mtotdup_out,2)<>Arredonda(Qr_Pf01PF1TOTLIQOUT.Value,2) then begin
        Fmensagem('Total das Duplicatas outras.: '+Formatfloat(mcasas, mtotdup_out)+#13
                 +'Total do Pedido outras......: '+FormatFloat(mcasas, Qr_Pf01PF1TOTLIQOUT.Value)+#13
                 +'Favor Corrigir!',0,['0'],0);
        exit;
     end;
    // FIM

    if mOrigem_PF<>8 then begin
       if flcaddap(6,codemp,0,Qr_Pf01PF1NUMDUP.AsString,Trim(Qr_Pf01PF1DESD.Value),Qr_Pf01PF1CODFOR.AsString,FormatDateTime(fdt2,Qr_Pf01PF1DATANF.Value),'0','') then begin
          if fMensagem('Foi Encontrado uma Duplicata com as Mesmas Caracteristicas'+#13
                      +'Deseja Continuar a Operação?',0,['1','2'],2)<>mrYes then exit;
       end;

       if Qr_Pf01PF1OUTROS.AsFloat<>0 then begin
          codemp_ant:=codemp;

          if codemp>100 then
             codemp:=codemp-100
          else
             codemp:=codemp+100;
          if flcaddap(6,codemp,0,Qr_Pf01PF1NUMDUPOUT.AsString,Trim(Qr_Pf01PF1DESD.Value),Qr_Pf01PF1CODFOR.AsString,FormatDateTime(fdt2,Qr_Pf01PF1DATANF.Value),'0','') then begin
             if fMensagem('Foi Encontrado uma Duplicata com as Mesmas Caracteristicas'+#13
                         +'Deseja Continuar a Operação?',0,['1','2'],2)<>mrYes then exit;
          end;

          codemp:=codemp_ant;

       end;
    end;
  end;

  if fMensagem('Quer realmente Confirmar o Pedido?',0,['1','2'],2)<>mrYes then
     exit;


  if mcfog=0 then
     mcfog:=ValFloat(Qr_ItensCFOP.AsString);

  if trim(mcfog_comp)='' then
     mcfog_comp := Qr_ItensCFOP_COMP.AsString;

  mPercFrete:=((Qr_Pf01PF1TOTFRE.AsFloat*100)/Qr_Pf01PF1TOTLIQ.AsFloat);

  if Qr_Pf01PF1GRAVNF.Value=1 then begin
     if flcadne(5,Qr_Pf01PF1LOTSEQ.AsString,Qr_Pf01PF1CHAVE.AsString,'','','','','') then begin
        dm1.tb_ne.edit;
        moper_ne:=9;
        mant_codfor :=DM1.Tb_NENECODFOR.AsFloat;
        mant_numero :=DM1.Tb_NENENUMERO.AsFloat;
        mant_serie  :=DM1.Tb_NENESERIE.AsString;
        mant_subserie:=DM1.Tb_NENESUBSER.AsString;
        mant_modelo  :=DM1.Tb_NENEMODELO.AsString;
        mant_cfop    :=DM1.Tb_NENECFO.AsFloat;
        mant_dtent   :=DM1.Tb_NENEDTENT.AsDateTime;
        mant_dtemis  :=DM1.Tb_NENEDTEMIS.AsDateTime;
     end else begin
        moper_ne:=0;
        DM1.Tb_NE.Append;
     end;

     DM1.Tb_NENECODEMP.Value   :=codemp;
     DM1.Tb_NENECODFOR.Value   :=Qr_Pf01PF1CODFOR.Value;
     DM1.Tb_NENEALIQ.Value     :=0;
     DM1.Tb_NENETIPO.Value     :=Qr_Pf01PF1NFCF.Value;
     DM1.Tb_NENENUMERO.Value   :=Qr_Pf01PF1NUMNF.Value;
     DM1.Tb_NENESERIE.Value    :=Trim(Qr_Pf01PF1SERIE.Value);
     DM1.Tb_NENECFO.Value      :=mcfog;
     DM1.Tb_NENECFOP_COMP.Value:=mcfog_comp;
     DM1.Tb_NENEMODELO.Value   :=Trim(Qr_Pf01PF1MODELO.Value);
     DM1.Tb_NENEDTEMIS.Value   :=Qr_Pf01PF1DATANF.Value;
     DM1.Tb_NENEDTENT.Value    :=Qr_Pf01PF1DATAENT.Value;
     DM1.Tb_NENESUBSER.Value   :=Trim(Qr_Pf01PF1SUBSER.Value);
     DM1.Tb_NENEBASEN.Value    :=Qr_Pf01PF1BASEN.Value;
     DM1.Tb_NENEICMSN.Value    :=Qr_Pf01PF1ICMSN.Value;
     DM1.Tb_NENEBASER.Value    :=Qr_Pf01PF1BASER.Value;
     DM1.Tb_NENEICMSR.Value    :=Qr_Pf01PF1ICMSR.Value;
     DM1.Tb_NENEIPIFRETE.Value :=Qr_Pf01PF1IPIFRETE.Value;
     DM1.Tb_NENEFRETE.Value    :=Qr_Pf01PF1TOTFRE.Value;
     DM1.Tb_NENEFRETEPC.Value   :=Qr_Pf01PF1FRETEPC.Value;
     DM1.Tb_NENESEG.Value       :=Qr_Pf01PF1TOTSEG.Value;
     DM1.Tb_NENEOUTRAS.Value    :=Qr_Pf01PF1TOTOUT.Value;
     DM1.Tb_NENEOUTRAS_ALIQ.Value :=Qr_Pf01PF1TOTOUT_ALIQ.Value;
     DM1.Tb_NENEOUTRAS_IMP.Value  :=Qr_Pf01PF1TOTOUT_IMP.Value;
     DM1.Tb_NENEOUTDESP.Value   :=Qr_Pf01PF1OUTDESP.Value;
     DM1.Tb_NENEOUTNINC.Value   :=Qr_Pf01PF1OUTNINC.Value;
     DM1.Tb_NENEIPI.Value       :=Qr_Pf01PF1TOTIPI.Value;
     DM1.Tb_NENETOTMER.Value    :=Qr_Pf01PF1TOTMER.Value;
     DM1.Tb_NENETOTNOT.Value    :=Qr_Pf01PF1TOTLIQ.Value;
     DM1.Tb_NENETOTDES.Value    :=Qr_Pf01PF1TOTDES.Value;
     DM1.Tb_NENETOTPOS.Value    :=Qr_Pf01PF1TOTPOS.Value;
     DM1.Tb_NENETOTNEG.Value    :=Qr_Pf01PF1TOTNEG.Value;
     DM1.Tb_NENEISENTAS.Value   :=Qr_Pf01PF1ISENTAS.Value;
     DM1.Tb_NENETOTINA.Value    :=Qr_Pf01PF1TOTINA.Value;
     DM1.Tb_NENELOTSEQ_CP.Value :=Qr_Pf01PF1LOTSEQ.Value;
     DM1.Tb_NENECHAVEP.Value    :=Qr_Pf01PF1CHAVE.Value;
     DM1.Tb_NENESIV_FRETE.Value :=Qr_Pf01PF1SIV_FRETE.Value;
     DM1.Tb_NENESIV_DARE.Value  :=Qr_Pf01PF1SIV_DARE.Value;
     DM1.Tb_NENESIV_OUTROS.Value:=Qr_Pf01PF1SIV_OUTROS.Value;
     if Qr_Pf01PF1TABPV.Value='AV' then
        DM1.Tb_NENEAVAP.Value:=0
     else
        DM1.Tb_NENEAVAP.Value:=1;

     DM1.Tb_NENEALIQ.Value     :=0 ;

     if moper_ne=0 then begin
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
     end else begin
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
  end;

  if trim(DM1.Tb_ForFDESCMVD.AsString)='' then
     mdesc_mov:=pldr_descmov
  else
     mdesc_mov:=DM1.Tb_ForFDESCMVD.Value;

  if Trim(DM1.Tb_ForFCODCCD.AsString)='' then begin
     mcodccu :=pldr_codccu;
     mnomccu :=pldr_nomccu;
     mnatdc  :=pldr_natdc;
  end else begin
     mcodccu :=DM1.Tb_ForFCODCCD.Value;
     mnomccu :=DM1.Tb_ForFNOMCCD.Value;

     if (DM1.Tb_ForFNATDCD.AsString)='' then
        mnatdc:='D'
     else
        mnatdc:=DM1.Tb_ForFNATDCD.AsString;
  end;

  if trim(DM1.Tb_ForFCODDEPD.AsString)='' then begin
     mcoddep :=pldr_coddep;
     mnomdep :=pldr_nomdep;
  end else begin
     mcoddep:=DM1.Tb_ForFCODDEPD.Value;
     mnomdep:=DM1.Tb_ForFNOMDEPD.Value;
  end;

  mqtdd:=0;
  mQuantDup:=0;

  // inicio do financeiro

  if (Qr_Pf01PF1GRAVDP.Value=1)  then begin
     mQuantDup:=Qr_Pf01V.RecordCount;
     Qr_Pf01V.First;
     while not Qr_Pf01V.eof  do begin
        if (Qr_Pf01PF1DATANF.IsNull) or (Qr_Pf01PF1DATANF.Value<=pdatanula) then
           mDataDup:=Qr_Pf01PF1DATA.Value
        else
           mDataDup:=Qr_Pf01PF1DATANF.Value;

        mExisteDupPag :=False;

        if not flcaddap(6,codemp,0,Qr_Pf01pf1numdup.AsString,chr(Integer(Qr_Pf01PF1DESD.Value[1])+mqtdd),Qr_Pf01pf1codfor.AsString,FormatDateTime(fdt2,mDataDup),'0','') then begin
           DM1.Tb_CP.Append;

           if Qr_Pf01VPF1VDES_CODEMP.AsFloat>0 then
              DM1.Tb_CPCACODEMP.Value:=Qr_Pf01VPF1VDES_CODEMP.AsFloat
           else
              DM1.Tb_CPCACODEMP.Value:=codemp;
        end else begin
           DM1.Tb_CP.Edit;

           if (DM1.Tb_CPCASTATUS.AsInteger>0) and (DM1.Tb_CPCASTATUS.AsInteger<9)  then
              mExisteDupPag:=true;
        end;

        DM1.Tb_CPCANUMERO.Value:=Qr_Pf01PF1NUMDUP.Value;
        if length(Qr_pf01PF1DESD.AsString)>1 then
           DM1.Tb_CPCADESD.Value  :=Qr_Pf01PF1DESD.AsString[1]+chr(Integer(Qr_Pf01PF1DESD.Value[2])+mqtdd)
        else
           DM1.Tb_CPCADESD.Value  :=chr(Integer(Qr_Pf01PF1DESD.Value[1])+mqtdd);

        DM1.Tb_CPCANUMPARC.Value  :=mqtdd+1;
        DM1.Tb_CPCAQTDPARC.Value  :=mQuantDup;
        DM1.Tb_CPCACODFOR.Value:=Qr_Pf01PF1CODFOR.Value;
        DM1.Tb_CPCADTEMIS.Value:=mDataDup;
        DM1.Tb_CPCAVALOR.Value :=Qr_Pf01VPF1VVALOR.Value;
        DM1.Tb_CPCADTVCTO.Value:=Qr_Pf01VPF1VDATAV.Value;
        DM1.Tb_CPCADTDESC.Value:=Qr_Pf01VPF1VDTDESCF.Value;

        if not mExisteDupPag then begin
           DM1.Tb_CPCADESC.Value  :=0;
           DM1.Tb_CPCASTATUS.Value:=0;
           DM1.Tb_CPCAVALDES.Value:=Qr_Pf01VPF1VDESCF.Value;;
           DM1.Tb_CPCAJUROS.Value :=0;
           DM1.Tb_CPCABANCO.Value :=Qr_Pf01PF1CODBCO.Value;
           DM1.Tb_CPCATEMBOL.Value:=Qr_Pf01PF1TEMBOL.Value;
           DM1.Tb_CPCALOTE.Value  :=0;
           DM1.Tb_CPCADTALT.Value :=now;
           DM1.Tb_CPCACODCTA.Value   :=now;
           DM1.Tb_CPCACODCC.Value    :=mcodccu;
           DM1.Tb_CPCACODDEP.Value   :=mcoddep;
           DM1.Tb_CPCADESCMV.Value   :=mdesc_mov;
           DM1.Tb_CPCANOMCTA.Value   :=pldr_nombco;
           DM1.Tb_CPCANOMCC.Value    :=mnomccu;
           DM1.Tb_CPCANOMDEP.Value   :=mnomdep;
           DM1.Tb_CPCANATDC.Value    :=mnatdc;

           if DM4.Tb_Par01PCXAUTO.Value=0 then begin
              if flcadldr(0,0,DM1.Tb_CPCALOTSEQ_FC.AsInteger,'0'+Trim(DM1.Tb_CPCACODLDR.AsString)) then begin
                 DM1.Tb_LDR.Edit
              end else begin
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
              DM1.Tb_LDRNOME.Value  :=NOMFOR.Text;
              DM1.Tb_LDRLOCDEP.Value:=1;
              DM1.Tb_LDRDESCMV.Value:=pldr_descmov;
              DM1.Tb_LDRCODCC.Value :=pldr_codccu;
              DM1.Tb_LDRCODDEP.Value:=pldr_coddep;
              DM1.Tb_LDRNOMBCO.Value:=pldr_nombco;
              DM1.Tb_LDRNOMDEP.Value:=pldr_nomdep;
              DM1.Tb_LDRNOMCCU.Value:=pldr_nomccu;
              DM1.Tb_LDRNATDC.Value :=pldr_natdc;
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
           end else begin
              DM1.Tb_CPCACODLDR.Value:=0;
              DM1.Tb_CPCALOTSEQ_FC.Value:=0;
           end;
       end;

      DM1.Tb_CPCADTINC.Value :=now;
      DM1.Tb_CPCACHAVEP.Value:=Qr_Pf01PF1CHAVE.Value;
      DM1.Tb_CPCALOTSEQ_CP.Value:=Qr_Pf01PF1LOTSEQ.Value;
      DM1.Tb_CP.Post;
      Qr_Pf01v.Next;
      mqtdd:=mqtdd+1;
    end;
 end;
 // termino do financeiro

 if Qr_Pf01PF1OUTROS.AsFloat>0 then begin
   // inicio do financeiro OUTROS
   mqtdd:=0;
   codemp_ant:=codemp;

   if codemp>100 then
      codemp:=codemp-100
   else
      codemp:=codemp+100;

   if (Qr_Pf01PF1GRAVDP.Value=1) then begin
      Qr_Pf01V.First;
      while not Qr_Pf01V.eof  do begin
         if (Qr_Pf01PF1DATANF.IsNull) or (Qr_Pf01PF1DATANF.Value<=pdatanula) then
            mDataDup:=Qr_Pf01PF1DATA.Value
         else
            mDataDup:=Qr_Pf01PF1DATANF.Value;
         if not flcaddap(6,codemp,0,Qr_Pf01PF1NUMDUPOUT.AsString,chr(Integer(Qr_Pf01PF1DESD.Value[1])+mqtdd),Qr_Pf01pf1codfor.AsString,FormatDateTime(fdt2,mDataDup),'0','') then begin
            DM1.Tb_CP.Append;
            DM1.Tb_CPCACODEMP.Value:=codemp;
         end else begin
            DM1.Tb_CP.Edit;
         end;
         DM1.Tb_CPCANUMERO.Value:=Qr_Pf01PF1NUMDUPOUT.Value;
         DM1.Tb_CPCADESD.Value  :=chr(Integer(Qr_Pf01PF1DESD.Value[1])+mqtdd);
         DM1.Tb_CPCACODFOR.Value:=Qr_Pf01PF1CODFOR.Value;
         DM1.Tb_CPCADTEMIS.Value:=mDataDup;
         DM1.Tb_CPCAVALOR.Value :=Qr_Pf01VPF1VVALOUT.Value;
         DM1.Tb_CPCADTVCTO.Value:=Qr_Pf01VPF1VDATAV.Value;
         DM1.Tb_CPCADTDESC.Value:=Qr_Pf01VPF1VDTDESCF.Value;
         DM1.Tb_CPCADESC.Value  :=0;
         DM1.Tb_CPCASTATUS.Value:=0;
         DM1.Tb_CPCAVALDES.Value:=Qr_Pf01VPF1VDESCFOUT.Value;;
         DM1.Tb_CPCAJUROS.Value :=0;
         DM1.Tb_CPCABANCO.Value :=Qr_Pf01PF1CODBCO.Value;
         DM1.Tb_CPCATEMBOL.Value:=Qr_Pf01PF1TEMBOL.Value;
         DM1.Tb_CPCALOTE.Value  :=0;
         DM1.Tb_CPCADTALT.Value :=now;
         DM1.Tb_CPCADTINC.Value :=now;
         DM1.Tb_CPCACHAVEP.Value:=Qr_Pf01PF1CHAVE.Value;
         DM1.Tb_CPCALOTSEQ_CP.Value:=Qr_Pf01PF1LOTSEQ.Value;
         DM1.Tb_CPCACODCTA.Value   :=codcai;
         DM1.Tb_CPCACODCC.Value    :=mcodccu;
         DM1.Tb_CPCACODDEP.Value   :=mcoddep;
         DM1.Tb_CPCADESCMV.Value   :=mdesc_mov;
         DM1.Tb_CPCANOMCTA.Value   :=pldr_nombco;
         DM1.Tb_CPCANOMCC.Value    :=mnomccu;
         DM1.Tb_CPCANOMDEP.Value   :=mnomdep;
         DM1.Tb_CPCANATDC.Value    :=mnatdc;
         if DM4.Tb_Par01PCXAUTO.Value=0 then begin
            if flcadldr(0,Qr_Pf01VPF1VDES_CODEMP.AsInteger,DM1.Tb_CPCALOTSEQ_FC.AsInteger,'0'+Trim(DM1.Tb_CPCACODLDR.AsString)) then begin
               DM1.Tb_LDR.Edit
            end else begin
               DM1.Tb_LDR.Append;
                if Qr_Pf01VPF1VDES_CODEMP.AsInteger>0 then
                   DM1.Tb_LDRCODEMP.Value :=Qr_Pf01VPF1VDES_CODEMP.AsInteger
                else
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
            DM1.Tb_LDRNOME.Value  :=NOMFOR.Text;
            DM1.Tb_LDRLOCDEP.Value:=1;
            DM1.Tb_LDRDESCMV.Value:=pldr_descmov;
            DM1.Tb_LDRCODCC.Value :=pldr_codccu;
            DM1.Tb_LDRCODDEP.Value:=pldr_coddep;
            DM1.Tb_LDRNOMBCO.Value:=pldr_nombco;
            DM1.Tb_LDRNOMDEP.Value:=pldr_nomdep;
            DM1.Tb_LDRNOMCCU.Value:=pldr_nomccu;
            DM1.Tb_LDRNATDC.Value :=pldr_natdc;
            DM1.Tb_LDRLOTMOV.Value:=lotmov;
            DM1.Tb_LDRCODBCO.Value:=codcai;
            if Trim(DM1.Tb_LDRNUMDOC.AsString)<>'' then
               DM1.Tb_LDRDESCMV.Value:=trim(DM1.Tb_LDRDESCMV.Value)+' No.'+DM1.Tb_LDRNUMDOC.Value
            else
               DM1.Tb_LDRDESCMV.Value:=trim(DM1.Tb_LDRDESCMV.Value);
            DM1.Tb_LDRDESCMV.Value:=Trim(DM1.Tb_LDRDESCMV.Value)+' '+DM1.Tb_LDRNOME.Value;
            if length(DM1.Tb_LDRDESCMV.Value)>50 then
               DM1.Tb_LDRDESCMV.Value:=copy(DM1.Tb_LDRDESCMV.Value,1,50);
            DM1.Tb_LDRDESCMV.Value  :=DM1.Tb_LDRDESCMV.Value;

            DM1.Tb_LDR.Post;
            DM1.Tb_CPCACODLDR.Value   :=DM1.Tb_LDRCODLDR.Value;
            DM1.Tb_CPCALOTSEQ_FC.Value:=DM1.Tb_LDRLOTSEQ.Value;
         end else begin
            DM1.Tb_CPCACODLDR.Value:=0;
            DM1.Tb_CPCALOTSEQ_FC.Value:=0;
         end;

         DM1.Tb_CP.Post;

         Qr_Pf01v.Next;
         mqtdd:=mqtdd+1;
      end;
    end;

    codemp:=codemp_ant;
 end;
 // termino do financeiro OUTROS

 if (mOrigem_PF<>8)  and (CB_TIPO.ItemIndex<>2) then begin
    Qr_PF02.First;
    while not Qr_Pf02.Eof do begin
       mpu:=Qr_PF02PF2QTDP.Value*Qr_PF02PF2PU.Value;
       mpu:=mpu-Qr_PF02PF2TOTDES.Value+Qr_PF02PF2IPI.AsFloat;

       mpu:=mpu/Qr_PF02PF2QTDP.Value;
       mpu:=Arredonda(mpu,mQtdCas_arredpu);

       if flcadpro(1,0,0,Qr_PF02PF2CODPRO.AsString) then begin
          DM1.Tb_Pro.Edit;
          if DM1.Tb_PargerPATPCOFABENT.AsInteger=1 then
             DM1.Tb_ProPDPCOFAB.Value    :=mpu;

          DM1.Tb_ProPDUCPR.Value    :=mpu;
          DM1.Tb_ProPDDTULTENT.Value:=Qr_Pf01PF1DATAENT.Value;
          DM1.Tb_ProPDUNOMFOR.Value :=NOMFOR.Text;
          DM1.Tb_ProPDUCODFOR.Value :=Qr_Pf01PF1CODFOR.Value;

          if DM4.Tb_Par01PATUACUS.AsInteger=2 then begin
             DM1.Tb_ProPDPRECOC.AsFloat:=arredonda( (mpu+(mpu*mPercFrete/100)),mQtdCas_arredpu);
             if DM1.Tb_ProPDPCOMC.AsFloat=0 then
                DM1.Tb_ProPDPCOMC.Value:=DM1.Tb_ProPDPRECOC.AsFloat
             else begin
               DM1.Tb_ProPDPCOMC.Value:=Arredonda( ((DM1.Tb_ProPDPCOMC.Value+DM1.Tb_ProPDPRECOC.AsFloat)/2)
                                                    , mQtdCas_arredpu);
             end;
          end;

          DM1.Tb_Pro.Post;

          if (DM4.Tb_Par01PATUACUS.AsInteger=2) and (DM1.Tb_PargerPATUPCUSACABMP.AsFloat=1) then begin
             Application.Createform(TFrm_Agde, Frm_Agde);
             Frm_Agde.Label1.Caption:='Aguarde enquanto e atualizado os precos de custos dos produtos acabados!';
             Frm_Agde.Show;
             Frm_Agde.Update;

             DM1.Query4.Close;
             DM1.Query4.SQL.Clear;
             DM1.Query4.SQL.Add('Select CPCODPRO '
                               +'  from CADCOMP where '
                               +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+InttoStr(codemp)+' and ')
                               +' (CPTIPO<>2 or CPTIPO is null) '
                               +' and CPCODMAT=0'+DM1.Tb_ProPDCODPRO.AsString);
             DM1.Query4.Open;

             while not DM1.Query4.Eof do begin
                DM1.Query3.Close;
                DM1.Query3.SQL.Clear;
                DM1.Query3.SQL.Add('Select CPCODPRO_ACAB,PDQTDGRML '
                                  +'   from CADCOMP,CADPRO where '
                                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+InttoStr(codemp)+' and PDCODEMP=CPCODEMP and ')
                                  +' (CPTIPO<>2 or CPTIPO is null) '
                                  +' and CPCODPRO=0'+DM1.Query4.fieldbyName('CPCODPRO').AsString
                                  +' and CPCODPRO_ACAB>0 '
                                  +' and PDCODPRO=CPCODPRO_ACAB ');
                DM1.Query3.Open;

                while not DM1.Query3.Eof do begin
                   mpreco:=fPcusCaptura(DM1.Query3.fieldbyName('CPCODPRO_ACAB').AsFloat,
                                        DM1.Query3.fieldbyName('PDQTDGRML').AsFloat);

                   if mpreco<>0 then begin
                      DM1.Query1.Close;
                      DM1.Query1.SQL.Clear;
                      DM1.Query1.SQL.Add('Update CADPRO set PDPRECOC='+mudavp(FloatToStr(mpreco))
                                        +',PDUCPR='+mudavp(FloatToStr(mpreco))
                                        +', PDPCOMC=( '
                                        +' DECODE( PDPCOMC,0, '
                                        +'     DECODE(PDPRECOC,0,'+mudavp(FloatToStr(mpreco))+',PDPRECOC) '
                                        +'     ,PDPCOMC) '
                                        +'      + '+mudavp(FloatToStr(mpreco))+') / 2 '
                                        +' where '
                                        +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+InttoStr(codemp)+' and ')
                                        +' PDCODPRO=0'+DM1.Query3.fieldbyName('CPCODPRO_ACAB').AsString);
                      try
                         DM1.Query1.Execsql;
                         fdm1startcommit;
                      except
                      end;

                   end;

                   DM1.Query3.Next;
                  end;

                  DM1.Query4.Next;
              end;

              Frm_Agde.free;
          end;
       end;

       flbaientpen(1,0,Qr_PF02PF2CODPRO.AsString,Qr_PF02PF2QTDP.Value);
       if DM1.Tb_ProPDNIVEL.AsInteger=0 then
          mLote_Re:=flBuscarChave(0,Qr_Pf01PF1CODEMP.AsInteger,'LOTE_RE_OUTPRO')
       else
          mLote_Re:=flBuscarChave(0,Qr_Pf01PF1CODEMP.AsInteger,'LOTE_RE');
       DM1.Query4.Close;
       DM1.Query4.SQL.Clear;
       DM1.Query4.SQL.Add('Update CADPF2 set PF2LOTE_RE='
                         +FloatToStr(mLote_Re)
                         +' where '
                         +iif(DM1.Qr_TID.Locate('TINOME','CADPF2',[]),'',' PF2CODEMP=0'+Qr_PF02PF2CODEMP.AsString+' and ')
                         +' PF2CHAVE=0'+Qr_PF02PF2CHAVE.AsString
                         +' and PF2LOTSEQ=0'+Qr_PF02PF2LOTSEQ.AsString
                         +' and PF2ITEM=0'+Qr_PF02PF2ITEM.AsString);
       try
          DM1.Query4.ExecSQL;
          fdm1StartCommit;
       except
         DM1.Query4.SQL.SaveToFile('c:\sqlPF2.txt');
       end;

       if (Qr_PF02PF2DATAV.IsNull) or (Qr_PF02PF2DATAV.Value<=pdatanula) then
           mdtv:='/  /'
       else
           mdtv:=FormatDateTime(fdt, Qr_PF02PF2DATAV.Value);

       if (Qr_Pf01PF1DATAENT.IsNull) or (Qr_Pf01PF1DATAENT.Value<=pdatanula) then
          mcinst2:='/  /'
       else
          mcinst2:=FormatDateTime(fdt, Qr_Pf01PF1DATAENT.Value);

       if DM4.Tb_ParGer02PG2UTILCQ.AsInteger=1 then begin
          fInsereCadpro_Bloq(codemp,Qr_PF02PF2CODPRO.AsFloat,0,Qr_PF02PF2QTDP.AsFloat,
                             Qr_Pf01PF1CHAVE.AsFloat,Qr_Pf01PF1CODEMP.AsFloat,
                             Qr_PF02PF2LOTE.AsString,mdtv,FloatToStr(mLote_Re)
                             ,mcinst2,'Entrada');
       end;

       if Qr_Pf01PF1ORIGEM.AsInteger=1 then
          flbaiest(0,CB_LOCAL.ItemIndex,30,0,Qr_PF02PF2CODPRO.AsString,'frm_pFOR01_4365_',Qr_PF02PF2QTDP.Value)
       else
          flbaiest(0,CB_LOCAL.ItemIndex,0,0,Qr_PF02PF2CODPRO.AsString,'frm_pFOR01_4367_',Qr_PF02PF2QTDP.Value);
       if StrToInt('0'+copy(mpseg,4,2))>0 then begin   // Grades cores tamanhos
          if (Qr_PF02PF2DATAV.IsNull) or (Qr_PF02PF2DATAV.Value<=pdatanula) then
             mdtv:='/  /'
          else
             mdtv:=FormatDateTime(fdt, Qr_PF02PF2DATAV.Value);
          mcinst4:=Qr_PF02PF2LOTE.Value;

          if Qr_Pf01PF1ORIGEM.AsInteger=1 then
             flbailgc(0,CB_LOCAL.ItemIndex,30,0,Qr_PF02PF2CODPRO.AsString,mcinst4,mdtv,Qr_PF02PF2LOTE_RE.AsString,formatDateTime(fdt2, Qr_Pf01PF1DATAENT.Value),Qr_PF02PF2QTDP.Value)
          else
             flbailgc(0,CB_LOCAL.ItemIndex,0,0,Qr_PF02PF2CODPRO.AsString,mcinst4,mdtv,Qr_PF02PF2LOTE_RE.AsString,formatDateTime(fdt2, Qr_Pf01PF1DATAENT.Value),Qr_PF02PF2QTDP.Value);
       end;
      Qr_Pf02.Next;
   end;
 end else begin
   Qr_PF02.First;
   while not Qr_Pf02.Eof do begin
      flbaientpen(1,0,Qr_PF02PF2CODPRO.AsString,Qr_PF02PF2QTDP.Value);
      Qr_PF02.Next;
   end;
 end;

 if (mOrigem_PF<>8) and (mOrigem_PF<>4) then begin
    DM1.Query1.Close;
    DM1.Query1.SQL.Clear;
    DM1.query1.SQL.add('Update CADPF1 set PF1STATUS=1 '
                      +', PF1DATCONF='+chr(39)+FormatDatetime(fdt, pdatasis)+chr(39)
                      +'    where '
                      +iif(DM1.Qr_TID.Locate('TINOME','CADPF',[]),'',' PF1CODEMP=0'+InttoStr(codemp)+' and ')
                      +' PF1LOTSEQ=0'+Qr_Pf01PF1LOTSEQ.AsString
                      +' and PF1CHAVE=0'+Qr_Pf01PF1CHAVE.AsString);
    try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
    except
      Fmensagem('Erro ao confirmar a entrada CADPF1: 4128',0,['0'],0);
    end;
 end;

 moper:=4;
 LimpaEdits(Self);

 QTDITEM.Caption := '0,00';
 TOTDES.Value    := 0;
 VALIPI.Value    := 0;
 TOTITEM.Caption := '0,00';
 TOTFRE.Value    := 0;
 TOTAL.Value     := 0;
 ICMSR.Value     := 0;
 TOTLIQ.value    := 0;

 fmensagem('Concluido!',0,['0'],0);
 Qr_Itens.Close;
 Qr_Duplicatas.Close;
 QR_Dup.close;

end;

procedure Tfrm_Pfor01_02.bbDupGravarClick(Sender: TObject);
var
  mdatav : TDateTime;
begin
   if Trim(DTVENC.Text)='/  /' then begin
      fmensagem('Data de Vencimento Invalida!',0,['0'],0);
      DTVENC.SetFocus;
      exit;
   end;

   if Trim(DTDESCF.Text)='/  /' then begin
     fmensagem('Data de Pagamento inválida!',0,['0'],0);
     DTDESCF.SetFocus;
     Exit;
   end;

   if ValFloat(VALDUP.Text)<=0 then begin
      fmensagem('Favor Digitar um Valor Valido!',0,['0'],0);
      VALDUP.SetFocus;
      exit;
   end;

   if mopd=1 then begin
     mqtd:=Qr_Duplicatas.RecordCount;
     mqtd:=mqtd+1;
   end else begin
     mqtd:=Qr_Duplicatas.RecordCount;
   end;

   if Qr_Duplicatas.Locate('DTVCTO',DTVENC.Text,[loCaseInsensitive]) then begin
      mdatav                        := StrToDate(DTDESCF.Text);
      Qr_Duplicatas.Edit;
      Qr_DuplicatasDTVCTO.Value     := Qr_DuplicatasDTVCTO.Value;
      Qr_DuplicatasVALOR.Value      := Qr_DuplicatasVALOR.Value;
      Qr_DuplicatasDESCFIN.Value    := ValFloat(VALDESCF.Text);
      Qr_DuplicatasPGTODT.Value     := FormatDatetime(fdt2,mdatav);
      Qr_DuplicatasVLROUT.Value     := 0;
      Qr_DuplicatasDESCFINOUT.Value := ValInt(VALDESCFOUT.Text);
      Qr_DuplicatasEXTRA.Value      := iif(CB_VDES_CODEMP.checked,'X','');
   end;


   DTVENC.Text           :='/  /';
   VALDUP.Text           :='';
   DTDESCF.Text          :='/  /';
   VALDESCF.Text         :='';
   VALDESCFOUT.Text      :='';
   CB_VDES_CODEMP.Checked:=false;

   CB_TIPO.Enabled:=true;
   fTotdupDig(0);
   mopd:=0;
   DTVENC.SetFocus;
end;

function Tfrm_Pfor01_02.fRatearSIV(ptipo: Integer): Boolean;
var
 x               : Integer;
 mPerc, mValRest : Real;
begin
   mPerc    := 0;
   mValRest := (ValFloat(SIV_DARE.Text)+ValFloat(SIV_FRETE.Text)+ValFloat(SIV_OUTROS.Text));

   if (mValRest>0) and (ValFloat(TOTLIQ.Text)<>0) then begin
       mPerc := (mValRest*100)/ValFloat(TOTLIQ.Text);
       mPerc := mPerc+0.10;
   end else
       mValRest := 0;

   Qr_Itens.First;    
   while not Qr_Itens.Eof do begin

      if Qr_ItensCODPRO.Value = 0 then
         Continue;

      {if mValRest = 0 then
         Qr_ItensOUT_DESCRAT.Value   := 0
      else begin
         try
           Qr_ItensOUT_DESCRAT.Value := ((Qr_ItensTOTALI.Value - Qr_ItensVALDESI.Value + Qr_ItensDESCRAT.Value)*mPerc)/100;
         except
           Qr_ItensOUT_DESCRAT.Value := 0;
         end;

         if mValRest < Qr_ItensOUT_DESCRAT.Value then begin
            Qr_ItensOUT_DESCRAT.Value := mValRest;
            mValRest := 0;
         end else begin
            mValRest := mValRest-Qr_ItensOUT_DESCRAT.Value;
         end;
      end;}
      Qr_Itens.Next;
   end;

   result := true;
end;

procedure Tfrm_Pfor01_02.bbdup_editarClick(Sender: TObject);
begin
   mopd                   := 1;
   DTVENC.Text            := Qr_DuplicatasDTVCTO.Value;
   VALDUP.Text            := FloatToStr(Qr_DuplicatasVALOR.AsFloat);
   VALDESCF.Text          := FloatToStr(Qr_DuplicatasDESCFIN.Value);
   DTDESCF.Text           := Qr_DuplicatasPGTODT.Value;
   VALDESCFOUT.Text       := FloatToStr(Qr_DuplicatasDESCFINOUT.Value);
   CB_VDES_CODEMP.Checked := Qr_DuplicatasEXTRA.Value='X';

   DTVENC.SetFocus;
end;

procedure Tfrm_Pfor01_02.bbdup_cancelarClick(Sender: TObject);
begin
   DTVENC.Text      := '/  /';
   VALDUP.Text      := '';
   VALDESCF.Text    := '';
   VALDESCFOUT.Text := '';
   DTDESCF.Text     := '/  /';

   mopd := 0;
end;

procedure Tfrm_Pfor01_02.bbdup_excluirClick(Sender: TObject);
var
  x : Integer;
begin

  if (Qr_DuplicatasDTVCTO.Value = '') then
     exit;
  if fMensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
     exit;

  Qr_Duplicatas.Delete;

  fTotdupDig(0);
end;

procedure Tfrm_Pfor01_02.btn_imprimirClick(Sender: TObject);
begin
   if (MOrigem_PF=8) then begin
      fmensagem('Impressão Valida Somente pela opão CADASTRO->PRODUTOS->PEDIDOS DE COMPRA!',0,['0'],0);
      exit;
   end;

   Qr_Pf01.First;

   if RG_TIPOIMPRES.ItemIndex > 0 then begin
      fLerPF1(RG_TIPOIMPRES.ItemIndex,Qr_Pf01PF1CODEMP.Value,Qr_Pf01PF1LOTSEQ.Value,Qr_Pf01PF1CHAVE.Value);
      fLerPF1V(RG_TIPOIMPRES.ItemIndex,Qr_Pf01PF1CODEMP.Value,Qr_Pf01PF1LOTSEQ.Value,Qr_Pf01PF1CHAVE.Value);
      fLerPF2(RG_TIPOIMPRES.ItemIndex,Qr_Pf01PF1CODEMP.Value,Qr_Pf01PF1LOTSEQ.Value,Qr_Pf01PF1CHAVE.Value);
   end;

   btn_imprimir.Enabled:=False;

   if RG_IMP.ItemIndex=1 then
      fpf01implaser(0)
   else if RG_IMP.ItemIndex=2 then
      fpf01imphtml(0)
   else
      fpf01imprime(0);

   Qr_Pf01.First;

   if RG_TIPOIMPRES.ItemIndex > 0 then begin
      fLerPF1(0,Qr_Pf01PF1CODEMP.Value,Qr_Pf01PF1LOTSEQ.Value,Qr_Pf01PF1CHAVE.Value);
      fLerPF1V(0,Qr_Pf01PF1CODEMP.Value,Qr_Pf01PF1LOTSEQ.Value,Qr_Pf01PF1CHAVE.Value);
      fLerPF2(0,Qr_Pf01PF1CODEMP.Value,Qr_Pf01PF1LOTSEQ.Value,Qr_Pf01PF1CHAVE.Value);
   end;

   btn_imprimir.Enabled := true;
end;

function Tfrm_Pfor01_02.fAtualizaItemPedido(pTipo: Integer): Boolean;
begin
   if pTipo = 0 then begin
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.Add(' INSERT INTO CADPF2_TEMP(     '+
                         '   PF2CODEMP,                 '+
                         '   PF2CHAVE,                  '+
                         '   PF2ITEM,                   '+
                         '   PF2CODPRO,                 '+
                         '   PF2NOMPRO,                 '+
                         '   PF2LOTE,                   '+
                         '   PF2LOTE_RE,                '+
                         '   PF2DTENTRADA,              '+
                         '   PF2DATAV,                  '+
                         '   PF2QTDP,                   '+
                         '   PF2QTDREC,                 '+
                         '   PF2PU,                     '+
                         '   PF2PUOUT,                  '+
                         '   PF2PBT,                    '+
                         '   PF2DESC01,                 '+
                         '   PF2DESC02,                 '+
                         '   PF2DESC03,                 '+
                         '   PF2VALDES,                 '+
                         '   PF2VALDESOUT,              '+
                         '   PF2SIT,                    '+
                         '   PF2ALIQ,                   '+
                         '   PF2PREDICMNOR,             '+
                         '   PF2ALIQNR,                 '+
                         '   PF2BASEN,                  '+
                         '   PF2ICMSN,                  '+
                         '   PF2BASER,                  '+
                         '   PF2ICMSR,                  '+
                         '   PF2STATUS,                 '+
                         '   PF2LISTA,                  '+
                         '   PF2TOTDES,                 '+
                         '   PF2TOTDESOUT,              '+
                         '   PF2BASENR,                 '+
                         '   PF2ICMSNR,                 '+
                         '   PF2ISENTAS,                '+
                         '   PF2OUTRAS,                 '+
                         '   PF2ALIPI,                  '+
                         '   PF2IPI,                    '+
                         '   PF2CFO,                    '+
                         '   PF2CFOP_COMP,              '+
                         '   PF2DESCRAT,                '+
                         '   PF2FRERAT,                 '+
                         '   PF2FRERATOUT,              '+
                         '   PF2DESCRATOUT,             '+
                         '   PF2SIV_OUTROS,             '+
                         '   PF2ORIGEM,                 '+
                         '   PF2STATUS_PF1,             '+
                         '   PF2TERM,                   '+
                         '   PF2DATHOR_MAN,             '+
                         '   PF2TIP_EVE,                '+
                         '   PF2DATHOR)                 '+
                         ' VALUES(                      '+
                         '   :PF2CODEMP,                '+
                         '   :PF2CHAVE,                 '+
                         '   :PF2ITEM,                  '+
                         '   :PF2CODPRO,                '+
                         '   :PF2NOMPRO,                '+
                         '   :PF2LOTE,                  '+
                         '   :PF2LOTE_RE,               '+
                         '   :PF2DTENTRADA,             '+
                         '   :PF2DATAV,                 '+
                         '   :PF2QTDP,                  '+
                         '   :PF2QTDREC,                '+
                         '   :PF2PU,                    '+
                         '   :PF2PUOUT,                 '+
                         '   :PF2PBT,                   '+
                         '   :PF2DESC01,                '+
                         '   :PF2DESC02,                '+
                         '   :PF2DESC03,                '+
                         '   :PF2VALDES,                '+
                         '   :PF2VALDESOUT,             '+
                         '   :PF2SIT,                   '+
                         '   :PF2ALIQ,                  '+
                         '   :PF2PREDICMNOR,            '+
                         '   :PF2ALIQNR,                '+
                         '   :PF2BASEN,                 '+
                         '   :PF2ICMSN,                 '+
                         '   :PF2BASER,                 '+
                         '   :PF2ICMSR,                 '+
                         '   :PF2STATUS,                '+
                         '   :PF2LISTA,                 '+
                         '   :PF2TOTDES,                '+
                         '   :PF2TOTDESOUT,             '+
                         '   :PF2BASENR,                '+
                         '   :PF2ICMSNR,                '+
                         '   :PF2ISENTAS,               '+
                         '   :PF2OUTRAS,                '+
                         '   :PF2ALIPI,                 '+
                         '   :PF2IPI,                   '+
                         '   :PF2CFO,                   '+
                         '   :PF2CFOP_COMP,             '+
                         '   :PF2DESCRAT,               '+
                         '   :PF2FRERAT,                '+
                         '   :PF2FRERATOUT,             '+
                         '   :PF2DESCRATOUT,            '+
                         '   :PF2SIV_OUTROS,            '+
                         '   :PF2ORIGEM,                '+
                         '   :PF2STATUS_PF1,            '+
                         '   :PF2TERM,                  '+
                         '   :PF2DATHOR_MAN,            '+
                         '   :PF2TIP_EVE,               '+
                         '   :PF2DATHOR)                ');
      DM1.Query1.ParamByName('PF2CODEMP').AsFloat    := codemp;
      DM1.Query1.ParamByName('PF2CHAVE').AsFloat     := ValFloat(CHAVE.Text);
   end else begin
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.Add(' UPDATE CADPF2_TEMP SET           '+
                         '   PF2CHAVE     =:PF2CHAVE,       '+
                         '   PF2CODPRO    =:PF2CODPRO,      '+
                         '   PF2NOMPRO    =:PF2NOMPRO,      '+
                         '   PF2ITEM      =:PF2ITEM,        '+
                         '   PF2LOTE      =:PF2LOTE,        '+
                         '   PF2LOTE_RE   =:PF2LOTE_RE,     '+
                         '   PF2DTENTRADA =:PF2DTENTRADA,   '+
                         '   PF2DATAV     =:PF2DATAV,       '+
                         '   PF2QTDP      =:PF2QTDP,        '+
                         '   PF2QTDREC    =:PF2QTDREC,      '+
                         '   PF2PU        =:PF2PU,          '+
                         '   PF2PUOUT     =:PF2PUOUT,       '+
                         '   PF2PBT       =:PF2PBT,         '+
                         '   PF2DESC01    =:PF2DESC01,      '+
                         '   PF2DESC02    =:PF2DESC02,      '+
                         '   PF2DESC03    =:PF2DESC03,      '+
                         '   PF2VALDES    =:PF2VALDES,      '+
                         '   PF2VALDESOUT =:PF2VALDESOUT,   '+
                         '   PF2SIT       =:PF2SIT,         '+
                         '   PF2ALIQ      =:PF2ALIQ,        '+
                         '   PF2PREDICMNOR=:PF2PREDICMNOR,  '+
                         '   PF2ALIQNR    =:PF2ALIQNR,      '+
                         '   PF2BASEN     =:PF2BASEN,       '+
                         '   PF2ICMSN     =:PF2ICMSN,       '+
                         '   PF2BASER     =:PF2BASER,       '+
                         '   PF2ICMSR     =:PF2ICMSR,       '+
                         '   PF2STATUS    =:PF2STATUS,      '+
                         '   PF2LISTA     =:PF2LISTA,       '+
                         '   PF2TOTDES    =:PF2TOTDES,      '+
                         '   PF2TOTDESOUT =:PF2TOTDESOUT,   '+
                         '   PF2BASENR    =:PF2BASENR,      '+
                         '   PF2ICMSNR    =:PF2ICMSNR,      '+
                         '   PF2ISENTAS   =:PF2ISENTAS,     '+
                         '   PF2OUTRAS    =:PF2OUTRAS,      '+
                         '   PF2ALIPI     =:PF2ALIPI,       '+
                         '   PF2IPI       =:PF2IPI,         '+
                         '   PF2CFO       =:PF2CFO,         '+
                         '   PF2CFOP_COMP =:PF2CFOP_COMP,   '+
                         '   PF2DESCRAT   =:PF2DESCRAT,     '+
                         '   PF2FRERAT    =:PF2FRERAT,      '+
                         '   PF2FRERATOUT =:PF2FRERATOUT,   '+
                         '   PF2DESCRATOUT=:PF2DESCRATOUT,  '+
                         '   PF2SIV_OUTROS=:PF2SIV_OUTROS,  '+
                         '   PF2ORIGEM    =:PF2ORIGEM,      '+
                         '   PF2STATUS_PF1=:PF2STATUS_PF1,  '+
                         '   PF2DATHOR_MAN  =:PF2DATHOR_MAN,'+
                         '   PF2TIP_EVE   =:PF2TIP_EVE,     '+
                         '   PF2DATHOR    =:PF2DATHOR       '+
                         ' WHERE                            '+
                         '   PF2CODEMP =:PF2CODEMP AND      '+
                         '   PF2TERM   =:PF2TERM            ');
   end;

   DM1.Query1.ParamByName('PF2CODEMP').AsFloat    := codemp;
   DM1.Query1.ParamByName('PF2CHAVE').AsFloat     := ValFloat(CHAVE.Text);
   DM1.Query1.ParamByName('PF2ITEM').AsFloat      := mitem;
   DM1.Query1.ParamByName('PF2CODPRO').AsFloat    := ValFloat(CODPRO.Text);
   DM1.Query1.ParamByName('PF2NOMPRO').AsFloat    := ValFloat(NOMPRO.Text);
   DM1.Query1.ParamByName('PF2LOTE').AsString     := Trim(LOTE.Text);

   DM1.Query1.ParamByName('PF2LOTE_RE').AsString  := '';

   if Trim(DATAV.Text) <> Trim('  /  /    ') then
      DM1.Query1.ParamByName('PF2DTENTRADA').AsDateTime := StrtoDate(DATAV.Text)
   else
      DM1.Query1.ParamByName('PF2DTENTRADA').AsDateTime := pdatanula;

   if Trim(DATAV.Text) <> Trim('  /  /    ') then
      DM1.Query1.ParamByName('PF2DATAV').AsDateTime     := StrToDate(DATAV.Text)
   else
      DM1.Query1.ParamByName('PF2DATAV').AsDateTime     := pdatanula;

   DM1.Query1.ParamByName('PF2QTDP').AsFloat      := ValFloat(QTD.Text);
   DM1.Query1.ParamByName('PF2QTDREC').AsFloat    := ValFloat('0');
   DM1.Query1.ParamByName('PF2PU').AsFloat        := ValFloat(PCOUNI.Text);
   DM1.Query1.ParamByName('PF2PUOUT').AsFloat     := ValFloat('0');
   DM1.Query1.ParamByName('PF2PBT').AsFloat       := DM1.Tb_ProPDPRECOC.Value;
   DM1.Query1.ParamByName('PF2DESC01').AsFloat    := ValFloat(MDESCI01.Text);
   DM1.Query1.ParamByName('PF2DESC02').AsFloat    := ValFloat(MDESCI02.Text);
   DM1.Query1.ParamByName('PF2DESC03').AsFloat    := ValFloat(MDESCI03.Text);
   DM1.Query1.ParamByName('PF2VALDES').AsFloat    := ValFloat(VALDES.Text);
   DM1.Query1.ParamByName('PF2VALDESOUT').AsFloat := ValFloat('0');
   DM1.Query1.ParamByName('PF2SIT').AsString      := Trim(SITTRI.Text);
   DM1.Query1.ParamByName('PF2ALIQ').AsFloat      := ValFloaT(ALICMS.Text);
   DM1.Query1.ParamByName('PF2PREDICMNOR').AsFloat:= ValFloat('0');
   DM1.Query1.ParamByName('PF2ALIQNR').AsFloat    := ValFloat('0');
   DM1.Query1.ParamByName('PF2BASEN').AsFloat     := ValFloat(copy(mcalculo,31,15));
   DM1.Query1.ParamByName('PF2ICMSN').AsFloat     := ValFloat(copy(mcalculo,46,15));
   DM1.Query1.ParamByName('PF2BASER').AsFloat     := ValFloat(copy(mcalculo,16,15));
   DM1.Query1.ParamByName('PF2ICMSR').AsFloat     := ValFloat(copy(mcalculo,1,15));
   DM1.Query1.ParamByName('PF2STATUS').AsFloat    := ValFloat('0');
   DM1.Query1.ParamByName('PF2LISTA').AsString    := Trim(Lista.Text);
   DM1.Query1.ParamByName('PF2TOTDES').AsFloat    := ValFloat(copy(mcalculo,61,15));
   DM1.Query1.ParamByName('PF2TOTDESOUT').AsFloat := ValFloat('0');
   DM1.Query1.ParamByName('PF2BASENR').AsFloat    := ValFloat(copy(mcalculo,106,15));
   DM1.Query1.ParamByName('PF2ICMSNR').AsFloat    := ValFloat(copy(mcalculo,91,15));
   if SITTRI.Text[2]='4'then
      DM1.Query1.ParamByName('PF2ISENTAS').AsFloat := Qr_ItensTOTALI.Value - Qr_ItensTOTDES.value
   else
      DM1.Query1.ParamByName('PF2ISENTAS').AsFloat := 0;
   if SITTRI.Text[2] = '0' then begin
      DM1.Query1.ParamByName('PF2OUTRAS').AsFloat  := Qr_ItensTOTALI.Value - Qr_ItensTOTDES.Value - Qr_ItensBASEN.Value - Qr_ItensDESCRAT.Value;
   end else begin
      DM1.Query1.ParamByName('PF2OUTRAS').AsFloat  := 0;
   end;
   DM1.Query1.ParamByName('PF2ALIPI').AsFloat     := ValFloat(copy(mcalculo,76,15));
   DM1.Query1.ParamByName('PF2IPI').AsFloat       := ValFloat(ALIPI.Text);
   DM1.Query1.ParamByName('PF2CFO').AsString      := copy(mcalculo,136,4);
   DM1.Query1.ParamByName('PF2CFOP_COMP').AsString:= copy(mcalculo,136,4);
   DM1.Query1.ParamByName('PF2DESCRAT').AsFloat   := ValFloat(copy(mcalculo,231,15));
   DM1.Query1.ParamByName('PF2FRERAT').AsFloat    := ValFloat(copy(mcalculo,276,15));
   DM1.Query1.ParamByName('PF2FRERATOUT').AsFloat := ValFloat('0');
   DM1.Query1.ParamByName('PF2DESCRATOUT').AsFloat:= ValFloat('0');
   DM1.Query1.ParamByName('PF2SIV_OUTROS').asFloat:= ValFloat('0');
   DM1.Query1.ParamByName('PF2ORIGEM').AsFloat    := ValFloat('0');
   DM1.Query1.ParamByName('PF2STATUS_PF1').AsFloat:= ValFloat('0');
   DM1.Query1.ParamByName('PF2TERM').AsString     := mPd_NomeComputador;
   DM1.Query1.ParamByName('PF2DATHOR_MAN').Value  := now;
   DM1.Query1.ParamByName('PF2TIP_EVE').AsFloat   := 0; //Exclusão Somente quando ha alteração
   DM1.Query1.ParamByName('PF2DATHOR').Value      := mPd_DatHor_Eve;

   try
     DM1.Query1.ExecSQL;
     fdm1StartCommit;
   except

   end;

   mPd_Incluiu_Pedido := True;
   Result := True;
end;

function Tfrm_Pfor01_02.fBuscaPedAnterior(pTipo: Integer): Boolean;
var
  mItemPen : Integer;
begin
  mpd_RestaurandoPedido := True;
  mPd_Incluiu_Pedido    := True;
  if pTipo = 0 then begin
     DM1.Query4.Close;
     DM1.Query4.SQL.Clear;
     DM1.Query4.SQL.Add('SELECT * FROM CADPF1_TEMP '
                       +' WHERE (PF1TERM =:TERM or PF1CODUSR=:CODUSR )'
                       +' and trunc(  (SYSDATE-PF1DATHOR_MAN)*24*60) >= 1  ');
     DM1.Query4.ParamByName('TERM').AsString   := mPd_NomeComputador;
     DM1.Query4.ParamByName('CODUSR').AsString := IntToStr(codusr);

     try
       DM1.Query4.Open;
     except
       ex_erroSql_Novo(DM1.Query4,16937,'Frm_Pfor01_02','CADF1_TEMP');
     end;

     if not DM1.Query4.IsEmpty then begin
        Application.CreateForm(Tfrm_Agde, Frm_Agde);
        Frm_Agde.Show;
        Frm_Agde.Label1.Caption:='Aguarde Enquanto é Restaurado Pedido de Compra Interrompido!!!';
        verteclado(0);
        mPd_Oper_Ped := DM1.Query4.FieldByName('PF1TIP_EVE').AsInteger;

        if (DM1.Query4.FieldByName('PF1TIP_EVE').AsInteger = 1) and (mpd_chave > 0) then begin
           mpd_chave     := DM1.Query4.FieldByName('PF1CHAVE').AsInteger;
           mPd_Oper_Ped  := 3;
           btn_localizarClick(Self);
           btn_alterarClick(Self);
        end else begin
           btn_incluirClick(Self);
        end;

        DATAP.Date            := DM1.Query4.FieldByName('PF1DATA').AsDateTime;
        CODFOR.Text           := DM1.Query4.FieldByName('PF1CODFOR').AsString;
        CODFORExit(Self);
        DESC01.Text           := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1DESC01').AsFloat);
        DESC02.Text           := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1DESC02').AsFloat);
        VALDES.Text           := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1TOTDES').AsFloat);
        CB_CASASD.ItemIndex   := DM1.Query4.FieldByName('PF1CASASD').AsInteger;
        CB_LOCAL.ItemIndex    := DM1.Query4.FieldByName('PF1LOCAL').AsInteger;
        CB_TIPO.ItemIndex     := DM1.Query4.FieldByName('PF1TIPO').AsInteger;
        CB_NFCF.Checked       := IIF(DM1.Query4.FieldByName('PF1NFCF').AsInteger = 1,True,False);
        NUMNF.Text            := FloatToStr(DM1.Query4.FieldByName('PF1NUMNF').AsFloat);
        SERIE.Text            := DM1.Query4.FieldByName('PF1SERIE').AsString;
        SUBSERIE.Text         := DM1.Query4.FieldByName('PF1SUBSER').AsString;
        MODELO.Text           := DM1.Query4.FieldByName('PF1MODELO').AsString;
        SUBMOD.Text           := DM1.Query4.FieldByName('PF1SUBMOD').AsString;
        DATAENT.Text          := DM1.Query4.FieldByName('PF1DATAENT').AsString;
        DATAE.Text            := DM1.Query4.FieldByName('PF1DATANF').AsString;
        TOTMER.Text           := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1TOTMER').AsFloat);
        MBASEN.Text           := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1BASEN').AsFloat);
        ICMSN.Text            := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1ICMSN').AsFloat);
        OUTNINC.Text          := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1OUTNINC').AsFloat);
        OUTRAS.Text           := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1TOTOUT').AsFloat);
        OUTRAS_PERC.Text      := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1TOTOUT_ALIQ').AsFloat);
        OUTRAS_IMp.Text       := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1TOTOUT_IMP').AsFloat);
        OUTDESP.Text          := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1OUTDESP').AsFloat);
        MBASER.Text           := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1BASER').AsFloat);
        MICMSR.Text           := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1ICMSR').AsFloat);
        PIPIFRETE.Text        := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1PIPIFRETE').AsFloat);
        IPIFRETE.Text         := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1IPIFRETE').AsFloat);
        DESC.Text             := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1ISENTAS').AsFloat);
        TOTINA.Text           := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1TOTINA').AsFloat);
        TOTPOS.Text           := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1TOTPOS').AsFloat);
        TOTNEG.Text           := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1TOTNEG').AsFloat);
        TOTNOT.Text           := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1TOTLIQ').AsFloat);
        STATUS.Text           := DM1.Query4.FieldByName('PF1STATUS').AsString;
        CODTRA.Text           := DM1.Query4.FieldByName('PF1CODTRA').AsString;
        CODTRAExit(Self);
        CB_GNF.Checked        := Iif(DM1.Query4.FieldByName('PF1GRAVNF').AsInteger = 1, True, False);
        NUMPED_ORI.Text       := FloatToStr(DM1.Query4.FieldByName('PF1NUMPED_ORI').AsFloat);
        SIV_FRETE.Text        := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1SIV_FRETE').AsFloat);
        SIV_DARE.Text         := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1SIV_DARE').AsFloat);
        SIV_OUTROS.Text       := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1SIV_OUTROS').AsFloat);
        //TOTDES.Text           := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1TOTDES').AsFloat);
        TOTFRE.Text           := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1TOTFRE').AsFloat);
        TOTAL.Text            := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1TOTBRU').AsFloat);
        ICMSR.Text            := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1ICMSR').AsFloat);
        TOTLIQ.Text           := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1TOTLIQ').AsFloat);
        VALIPI.Text           := FormatFloat(mcasas,DM1.Query4.FieldByName('PF1TOTIPI').AsFloat);
        mPd_DatHor_Eve        := DM1.Query4.FieldByName('PF1DATHOR').AsDateTime;


        {---Carrega os Itens do Pedido de Compra----}
        DM1.Query5.Close;
        DM1.Query5.SQL.Clear;
        DM1.Query5.SQL.Add('SELECT * FROM CADPF2_TEMP WHERE PF2TERM =:TERM '
                          +' and PF2DATHOR=:DATHOR ');
        DM1.Query5.ParamByName('TERM').AsString     := DM1.Query4.fieldbyName('PF1TERM').AsString;
        DM1.Query5.ParamByName('DATHOR').AsDateTime := DM1.Query4.fieldbyName('PF1DATHOR').AsDateTime;
        try
           DM1.Query5.Open;
        except
           ex_erroSql_Novo(DM1.Query5,16937,'Frm_Pfor01_02','CADPF2_TEMP');
        end;

        DM1.Query5.First;

        while not DM1.Query5.Eof do begin
           if DM1.Query5.FieldByName('PF2TIP_EVE').AsInteger <> 0 then begin
              DM1.Query5.Next;
              Continue;
           end;

           CODPRO.Text       := DM1.Query5.FieldByName('PF2CODPRO').AsString;
           CODPROExit(Self);
           NOMPRO.Text       := DM1.Query5.FieldByName('PF2NOMPRO').AsString;
           if trim(NOMPRO.Text)='' then
             CODPROExit(Self);

           LOTE.Text         := DM1.Query5.FieldByName('PF2LOTE').AsString;

           if DM1.Query5.FieldByName('PF2DATAV').AsDateTime > pdatanula then
              DATAV.Text     := FormatDateTime(fdt2,  DM1.Query5.FieldByName('PF2DATAV').AsDateTime)
           else
              DATAV.Text     := '/  /';

           QTD.Text          := DM1.Query5.FieldByName('PF2QTDP').AsString;
           PCOUNI.Text       := FormatFloat(mcasas,DM1.Query5.FieldByName('PF2PU').AsFloat);
           SITTRI.Text       := DM1.Query5.FieldByName('PF2SIT').AsString;
           CFOP.Text         := DM1.Query5.FieldByName('PF2CFO').AsString;
           ALICMS.Text       := FormatFloat(mcasas,DM1.Query5.FieldByName('PF2ALIQ').AsFloat);
           PREDICMNOR.Text   := FormatFloat(mcasas,DM1.Query5.FieldByName('PF2PREDICMNOR').AsFloat);
           ALIPI.Text        := FormatFloat(mcasas,DM1.Query5.FieldByName('PF2ALIPI').AsFloat);
           LISTA.Text        := DM1.Query5.FieldByName('PF2LISTA').AsString;
           MDESCI01.Text     := FormatFloat(mcasas,DM1.Query5.FieldByName('PF2DESC01').AsFloat);
           MDESCI02.Text     := FormatFloat(mcasas,DM1.Query5.FieldByName('PF2DESC02').AsFloat);
           MDESCI03.Text     := FormatFloat(mcasas,DM1.Query5.FieldByName('PF2DESC03').AsFloat);
           TOTALI.Text       := FormatFloat(mcasas,DM1.Query5.FieldByName('PF2PU').AsFloat*ValInt(DM1.Query5.FieldByName('PF2QTDP').AsString));
           MDESCI03Exit(Self);

           DM1.Query5.Next;
        end;

        Frm_Agde.free;
        Frm_Agde:=nil;
     end;
  end else if pTipo = 1 then begin
  end;

  mpd_RestaurandoPedido := False;
  mPd_Incluiu_Pedido    := True;
end;

procedure Tfrm_Pfor01_02.BitBtn1Click(Sender: TObject);
begin
   mTemp_gueda           :=false;
   Application.Terminate;
end;

procedure Tfrm_Pfor01_02.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if mTemp_gueda then begin
     if (btn_gravar.Enabled) then begin
        case fMensagem('O registro atual não está gravado!'+#13
                      +'Deseja gravar agora?',1,['1','2','3'],0) of
             mrYes: begin
                btn_gravarClick(self);
                exit;
             end;

             mrNo: begin
               mAceita_pergunta  :=False;
               btn_cancelarClick(Self);
               DATAP.Text        := FormatDatetime(fdt2,pdatasis);
               mAceita_pergunta  :=true;
               exit;
            end;
        end;
     end else begin
         CanClose:=True;
         exit;
     end;
  end else begin
      CanClose:=true;;
  end;
  
end;

procedure Tfrm_Pfor01_02.btn_gravarClick(Sender: TObject);
var
  y,
  x          : integer;
  mhorai,
  mhoraf     : String;
  mtotd      : Real;
  mqtdd      : Integer;
  mvaldup,
  mvaldupout : Real;
  xDataVenc  : String;
begin
  if (Qr_Duplicatas.Active = False) or (Qr_Duplicatas.IsEmpty) then begin
     fmensagem('Favor informar Duplicata!',0,['0'],0);
     pgc_detalhes.ActivePage := tbs_duplicatas;
     CONDPAG.SetFocus;
     Exit;
  end;

  if fsonumero(CODFOR.Text)=0 then begin
     Fmensagem('Favor selecionar um fornecedor!',0,['0'],0);
     CODFOR.SetFocus;
     exit;
  end;

  if ValFloat(TOTLIQ.Text)<0 then begin
     Fmensagem('O total do pedido tem que ser positivo!',0,['0'],0);
     exit;
  end;

  if ValFloat(TOTLIQ.Text)>999999999 then begin
     Fmensagem('Valor muito grande para este Pedido. Invalido!',0,['0'],0);
     exit;
  end;

  if CB_TIPO.ItemIndex=1 then
     CB_GDP.Checked:=false;

  if (ValFloat(CODPV.Text)=0) or (CB_TABPV.Text='PO') then begin
     mqtdd := 0;

     Qr_Duplicatas.First;
     if Qr_DuplicatasVALOR.AsFloat > 0 then begin
        mvaldup    := 0;
        mvaldupout := 0;

        while not Qr_Duplicatas.Eof do begin
           if Qr_DuplicatasVALOR.AsFloat > 0 then
              mvaldup := mvaldup+Qr_DuplicatasVALOR.AsFloat;
           if Qr_DuplicatasVLROUT.AsFloat>0 then
              mvaldupout := mvaldupout+Qr_DuplicatasVLROUT.AsFloat;

           Qr_Duplicatas.Next;
        end;

        mvaldup    := Arredonda(mvaldup,dm1.Tb_Pargerpcasas.Asinteger);
        mvaldupout := Arredonda(mvaldupout,dm1.Tb_Pargerpcasas.Asinteger);

        if mvaldup <> (Arredonda( valFloat(TOTLIQ.Text)
                                 +valFloat(OUTVDUP.Text)  ,dm1.Tb_Pargerpcasas.Asinteger) ) then begin
            Fmensagem('Total do Pedido......: '+FormatFloat(mcasas, ValFloat(TOTLIQ.Text)+valFloat(OUTVDUP.Text))+#13
                     +'Total das Duplicatas.: '+FormatFloat(mcasas, mvaldup)+#13
                     +'Inválido!',0,['0'],0);
            exit;
        end;
     end;
  end;

  if (CB_GDP.Checked) and (Trim(CB_TABPV.Text)='PO') and (Trim(CODPV.Text)='99') then begin

      Qr_Duplicatas.First;

      while not Qr_Duplicatas.Eof do begin
          if Trim(Qr_DuplicatasDTVCTO.AsString) = '' then
             continue;

          Qr_Dup.First;
          while not Qr_Dup.Eof do begin
             if Trim(Qr_DupDTVCTO.AsString) = '' then
                Continue;

             if Qr_DuplicatasDTVCTO.AsString = Qr_DupDTVCTO.AsString then
                Continue;

             if Qr_DuplicatasDTVCTO.AsString = Qr_DupDTVCTO.AsString then begin
                fmensagem('Exite mais de uma Duplicata com o mesmo vencimento: '+Qr_DuplicatasDTVCTO.AsString
                         +' é inválido!',0,['0'],0);
                Exit;
             end;
             Qr_Dup.Next;
          end;

          Qr_Duplicatas.Next;
      end;

      mtotd      := 0;
      mvaldupout := 0;

      Qr_Duplicatas.First;
      while not Qr_Duplicatas.Eof do begin
         if Trim(Qr_DuplicatasDTVCTO.AsString) = '' then
            Continue;


         mtotd      := mtotd+Qr_DuplicatasVALOR.AsFloat;
         mvaldupout := mvaldupout+Qr_DuplicatasVLROUT.AsFloat;
         Qr_Duplicatas.Next;
      end;

      if arredonda(mtotd,2)<>arredonda(valfloat(TOTLIQ.Text),2) then  begin
         Fmensagem('O Total das Duplicatas não confere com o total da nota!',0,['0'],0);
         exit
      end;
  end;

  mhorai := FormatDateTime('hh:nn:ss',time);
  Application.CreateForm(TFrm_Agde, Frm_Agde);
  Frm_Agde.Label1.Caption := 'Gravando Pedido. Aguarde';
  Frm_Agde.Show;
  Frm_Agde.Update;
  fRatearSIV(0);

  if moper = 0 then begin
     mchave_pf := 0;
     HORDIG.Text:=FormatDatetime('hh:nn:ss',time);
  end else begin
     fpf01gant(8);
     HRMOD.Text:=FormatDatetime('hh:nn:ss',time);
     fexcluir(0);  // excluir os pedidos existentes
  end;

  fgravarped(0); // mercadorias
  CHAVE.Text          := Inttostr(mchave_pf);
  btn_incluir.Enabled   := bbinc_true;
  btn_localizar.Enabled := True;
  btn_importar.Enabled  := true;

  btn_alterar.Enabled  :=False;
  btn_excluir.Enabled  :=False;
  btn_gravar.Enabled   :=False;
  btn_imprimir.Enabled :=False;
  btn_vernota.Enabled  :=False;
  btn_exportar.Enabled :=False;

  bbDupGravar.Enabled   := False;
  bbdup_editar.Enabled  := False;
  bbdup_cancelar.Enabled:= False;
  bbdup_excluir.Enabled := False;

  btn_calcular.Enabled :=False;
  btn_confirmar.Enabled:=False;
  GroupBox2.Enabled    :=False;
  Frm_Agde.free;
  mhoraf := FormatDateTime('hh:nn:ss',time);
  mitem  := 0;


  DM1.Query1.Close;
  DM1.Query1.Sql.Clear;
  DM1.Query1.Sql.Add('DELETE FROM CADPF2_TEMP WHERE ');
  DM1.query1.SQL.add('  PF2TERM=:P2TERM');
  DM1.query1.SQL.add(' and PF2DATHOR=:P2DATHOR');
  DM1.Query1.ParamByName('P2TERM').AsString     := mPd_NomeComputador;
  DM1.Query1.ParamByName('P2DATHOR').AsDateTime := mPd_DatHor_Eve;
  try
    DM1.Query1.ExecSQL;
    fDM1StartCommit;
  except
    ex_erroSql_Novo(DM1.Query1,16937,'Frm_Pfor01_02','CADPF1');
  end;

  DM1.Query1.Close;
  DM1.Query1.Sql.Clear;
  DM1.Query1.Sql.Add('DELETE FROM CADPF1_TEMP WHERE ');
  DM1.query1.SQL.add('  PF1TERM=:P1TERM');
  DM1.query1.SQL.add(' and PF1DATHOR=:P1DATHOR');
  DM1.Query1.ParamByName('P1TERM').AsString     := mPd_NomeComputador;
  DM1.Query1.ParamByName('P1DATHOR').AsDateTime := mPd_DatHor_Eve;
  try
    DM1.Query1.ExecSQL;
    fDM1StartCommit;
  except
    ex_erroSql_Novo(DM1.Query1,16937,'Frm_Pfor01_02','CADPF2');
  end;

  if Qr_Pf01PF1CHAVE.AsFloat <> 0 then
     fBloqueiaLibera(0,Qr_Pf01PF1CODEMP.Value,Qr_Pf01PF1LOTSEQ.Value,Qr_Pf01PF1CHAVE.Value);

  if mchave_pf=0 then begin
     AvisoSonoro(0);
     AvisoSonoro(1);
     fmensagem('Nao havia estoque das mercadorias Pedidas. Pedido nao Gravado',0,['0'],0);
  end else begin
     moper := 3;
     btn_localizar.Click;
     fmensagem('Pedido Gravado. Inicio.: '+mhorai+#13
               +'                Término: '+mhoraf,0,['0'],0);
     moper:=0;
  end;


end;

procedure Tfrm_Pfor01_02.FormShow(Sender: TObject);
begin
  if mpd_RestaurandoPedido then
     CODPRO.SetFocus;

  CB_CASASDClick(Self);   
end;

function Tfrm_Pfor01_02.fexcluir(ptipo: Integer): Boolean;
{
Parametros ptipo= 0-Nao Atualiza estoque
                  1-Atualiza estoque
}
var
  mdtv : String;
begin
  if ptipo = 1 then begin
     Qr_PF02.First;
     while not Qr_PF02.Eof do begin
         if (Qr_PF02PF2DATAV.IsNull) or (Qr_PF02PF2DATAV.Value<=pdatanula) then
             mdtv := '/  /'
         else
             mdtv := FormatDateTime(fdt, Qr_PF02PF2DATAV.Value);

         if StrToInt('0'+copy(mpseg,4,2))>0  then begin // controle do CADLGC
            mcinst4 := Qr_PF02PF2LOTE.Value;

            if Qr_Pf01PF1ORIGEM.AsInteger = 1 then
               flbailgc(0,CB_LOCAL.ItemIndex,31,0,Qr_PF02PF2CODPRO.AsString,mcinst4,mdtv,'','',Qr_PF02PF2QTDP.Value)
            else
               flbailgc(0,CB_LOCAL.ItemIndex,1,0,Qr_PF02PF2CODPRO.AsString,mcinst4,mdtv,'','',Qr_PF02PF2QTDP.Value);
            end;

            if Qr_Pf01PF1ORIGEM.AsInteger = 1 then
               flbaiest(0,CB_LOCAL.ItemIndex,31,0,Qr_PF02PF2CODPRO.AsString,'frm_pFOR01_2877_',Qr_PF02PF2QTDP.Value)
            else
              flbaiest(0,CB_LOCAL.ItemIndex,1,0,Qr_PF02PF2CODPRO.AsString,'frm_pFOR01_2879_',Qr_PF02PF2QTDP.Value);

            flbaientpen(1,0,Qr_PF02PF2CODPRO.AsString,Qr_PF02PF2QTDP.Value);

         Qr_PF02.Next;
     end;
  end else begin
     Qr_PF02.First;

     while not Qr_PF02.Eof do begin
        flbaientpen(1,0,Qr_PF02PF2CODPRO.AsString,Qr_PF02PF2QTDP.Value);
        Qr_PF02.Next;
     end;
  end;

  Qr_PF01.First;
  while not Qr_PF01.Eof do begin
     if mOrigem_PF = 0 then begin
        DM1.Query1.Close;
        DM1.Query1.Sql.clear;
        DM1.query1.Sql.Add('Delete from CADNE where '
                          +iif(DM1.Qr_TID.Locate('TINOME','CADNE',[]),' ',' NECODEMP=0'+IntTostr(codemp)+' and ')
                          +' NELOTSEQ_CP=0'+Qr_Pf01PF1LOTSEQ.AsString
                          +' and NECHAVEP=0'+Qr_Pf01PF1CHAVE.AsString);
        try
          DM1.Query1.ExecSQL;
          fdm1StartCommit;
        except
          ex_erroSql(01,4027,'Frm_PFor01','CADNE');
        end;

        flcaddap(4,codemp,0,Qr_Pf01PF1CHAVE.AsString,Qr_Pf01PF1LOTSEQ.AsString,'','',pvazio,'');
        DM1.Tb_CP.First;

        while not DM1.Tb_cp.Eof do begin
           DM1.Query1.Close;
           DM1.Query1.SQl.Clear;
           DM1.Query1.SQL.Add('Delete from CADLDR where '
                             +iif(DM1.Qr_Tid.Locate('TINOME','CADLDR',[]),' ',' CODEMP=0'+IntTostr(codemp)+' and ')
                             +' LOTSEQ=0'+DM1.Tb_CPCALOTSEQ_FC.AsString
                             +' and CODLDR=0'+DM1.Tb_CPCACODLDR.AsString);
           try
             DM1.Query1.ExecSQL;
             fdm1StartCommit;
           except
             ex_erroSql(01,1770,'Frm_PFor01','CADLDR');
           end;

           DM1.Tb_CP.Next;
        end;

        DM1.Query1.Close;
        DM1.Query1.SQL.Clear;
        DM1.Query1.SQL.Add('Delete from CADDAP where '
                          +iif(DM1.Qr_tid.Locate('TINOME','CADDAP',[]),' ',' CACODEMP=0'+IntTostr(codemp)+' and ')
                          +' CALOTSEQ_CP=0'+Qr_Pf01PF1LOTSEQ.AsString
                          +' and CACHAVEP=0'+Qr_Pf01PF1CHAVE.AsString);

        try
          DM1.Query1.ExecSQL;
          fdm1StartCommit;
        except
          ex_erroSql(01,4027,'Frm_PFor01','CADDAP');
        end;

        if Qr_Pf01PF1OUTROS.AsFloat > 0 then begin
           codemp_ant := codemp;
           if codemp > 100 then
              codemp  := codemp-100
           else
              codemp  := codemp+100;

           flcaddap(4,codemp,0,Qr_Pf01PF1CHAVE.AsString,Qr_Pf01PF1LOTSEQ.AsString,'','',pvazio,'');

           DM1.Tb_CP.First;
           while not DM1.Tb_cp.Eof do begin
              DM1.Query1.Close;
              DM1.Query1.SQl.Clear;
              DM1.Query1.SQL.Add('Delete from CADLDR where '
                                +iif(DM1.Qr_Tid.Locate('TINOME','CADLDR',[]),' ',' CODEMP=0'+IntTostr(codemp)+' and ')
                                +' LOTSEQ=0'+DM1.Tb_CPCALOTSEQ_FC.AsString
                               +' and CODLDR=0'+DM1.Tb_CPCACODLDR.AsString);
              try
                DM1.Query1.ExecSQL;
                fdm1StartCommit;
              except
                ex_erroSql(01,1770,'Frm_PFor01','CADLDR');
              end;

              DM1.Tb_CP.Next;
           end;

           DM1.Query1.Close;
           DM1.Query1.SQL.Clear;
           DM1.Query1.SQL.Add('Delete from CADDAP where '
                             +iif(DM1.Qr_tid.Locate('TINOME','CADDAP',[]),' ',' CACODEMP=0'+IntTostr(codemp)+' and ')
                             +' CALOTSEQ_CP=0'+Qr_Pf01PF1LOTSEQ.AsString
                             +' and CACHAVEP=0'+Qr_Pf01PF1CHAVE.AsString);

           try
             DM1.Query1.ExecSQL;
             fdm1StartCommit;
           except
             ex_erroSql(01,4027,'Frm_PFor01','CADDAP');
           end;

           codemp:=codemp_ant;
        end;
     end;

     DM1.Query1.Close;
     DM1.Query1.Sql.Clear;
     DM1.Query1.Sql.add('Delete From CADPF2 where PF2CODEMP=0'+Qr_PF01PF1CODEMP.AsString
                       +' and PF2LOTSEQ=0'+Qr_Pf01PF1LOTSEQ.AsString
                       +' and PF2CHAVE=0'+Qr_PF01PF1CHAVE.AsString);
     try
       DM1.Query1.ExecSQL;
       fdm1StartCommit;
     except
       ex_erroSql(01,1795,'Frm_PFor01','CADPF2');
     end;

     DM1.Query1.Close;
     DM1.Query1.Sql.Clear;
     DM1.Query1.Sql.add('Delete From CADPF1V where PF1VCODEMP=0'+Qr_PF01PF1CODEMP.AsString
                       +' and PF1VLOTSEQ=0'+Qr_Pf01PF1LOTSEQ.AsString
                       +' and PF1VCHAVE=0'+
                       Qr_PF01PF1CHAVE.AsString);
     try
       DM1.Query1.ExecSQL;
       fdm1StartCommit;
     except
       ex_erroSql(01,4027,'Frm_PFor01','CADPF1V');
     end;

     DM1.Query1.Close;
     DM1.Query1.Sql.Clear;
     DM1.Query1.Sql.add('Delete From CADPF1 where PF1CODEMP=0'+Qr_PF01PF1CODEMP.AsString
                       +' and PF1LOTSEQ=0'+Qr_Pf01PF1LOTSEQ.AsString
                       +' and PF1CHAVE=0'+Qr_PF01PF1CHAVE.AsString);
     try
       DM1.Query1.ExecSQL;
       fdm1StartCommit;
     except
       ex_erroSql(01,1819,'Frm_PFor01','CADPF1');
     end;

     Qr_PF01.Next;
  end;
end;

function Tfrm_Pfor01_02.fgravarped(ptipo: Integer): Boolean;
var
  x    : Integer;
  mqtd : Real;
begin

  Qr_Itens.First;
  while not Qr_Itens.Eof do begin
     if Qr_ItensCODPRO.AsFloat <= 0 then
        Continue;
     mqtd := Qr_ItensQTD.Value;

     if mqtd <= 0 then
        Continue;

     fgravap2(x,
              codemp,
              StrtoInt('0'+Qr_ItensLISTA.AsString), // lista
              0, //tipo
              0,//chave
              0, // ordem
              mqtd, // quantidade
              ValFloat(FormatFloat(mcasas,Qr_ItensPCOUNI.Value)), // preco unitario
              Qr_ItensPMC.Value, // preco maximo consumidor
              ValFloat(DESC01.Text), // desconto 1
              ValFloat(DESC02.Text), // desconto 2
              ValFloat(VALDES.Text), // valor do desconto
              Qr_ItensDESC01.Value, // desconto do item 1
              Qr_ItensDESC02.Value, // desconto do item 2
              Qr_ItensDESC03.Value, // desconto do item 3
              Qr_ItensVALDESI.Value,
              Qr_ItensALIPI.Value,
              Qr_ItensPRECO1.value,
              Qr_ItensCODFOR.Value,
              Qr_ItensCODPRO.Value,
              Qr_ItensALICMS.Value,
              Qr_ItensSITTRI.value,
              Qr_ItensTABICM.Value,
              Qr_ItensLOTE.Value,
              Qr_ItensDATAV.Value,
              Qr_ItensCFOP.Value,
              Qr_ItensCFOP_COMP.Value,
              Qr_ItensLOTE_RE.Value,
              Qr_ItensNOMPRO.Value,
              Qr_ItensBASEN.Value,
              Qr_ItensICMSN.Value,
              Qr_ItensBASER.Value,
              Qr_ItensICMSR.Value,
              Qr_ItensALICMS.Value,
              Qr_ItensBASENR.Value,
              Qr_ItensICMSNR.Value,
              Qr_ItensISENTAS.Value,
              Qr_ItensOUTRAS.Value,
              Qr_ItensVALIPI.Value,
              Qr_ItensTOTDES.Value,
              Qr_ItensDESCRAT.Value,
              Qr_ItensVALPBT.Value,
              Qr_ItensFRERAT.Value,
              Qr_ItensVALDESI_COMP.Value,
              Qr_ItensOUT_TOTDES.Value,
              Qr_ItensOUT_FRETERAT.Value,
              Qr_ItensDESCRAT.Value,
              Qr_ItensPREDICMNOR.Value);

     Qr_Itens.Next;
  end;

  if mitem > 0 then
     fgravap1(ptipo,codemp);
end;

function Tfrm_Pfor01_02.fgravap2(pItem,pgcodemp,pglista,pgtipo,pgchave,pgordem: Integer;
        pgqtd,pgpu,pgpmc,pgdesc01,pgdesc02,pgvaldes,
        pgdesci01,pgdesci02,pgdesci03,pgvaldesi,pgipi,pgpcotab,pgcodfab,pgcodpro,pgicms: Real;
        pgsit,pgtabela,pglote,pgdatav,pgcfo,pgCfo_Comp,pgLote_Re,pgnompro:String; pgbasen, pgicmsn,
        pgbaser,pgicmsr,pgalicms,pgbasenr,pgicmsnr,pgisentas,pgoutras,pgvalipi,pgtotdes,
        pgdescrat,pgvalpbt,pgfrerat,pgvaldesi_comp,pgout_totdes,pgout_freterat,pgout_descrat,
        pgpredicmnor: Real): String;


var
  mitemad : Integer;
  y,
  mlid    : Integer;
begin

  if mchave_pf = 0 then begin
     begin
     mchave_pf := fbuscaNUMPF(0);
     fbuscarSequencia('PEDFOR_'+'0');
     end;
  end;

  mitem := mitem+1;

  flbaientpen(0,0,FloatToStr(pgcodpro),pgqtd);
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.query1.Params.Clear;
  DM1.Query1.Params.CreateParam(ftstring,'LOTE',ptinput);
  DM1.Query1.Params.CreateParam(ftstring,'DATAV',ptinput);
  DM1.Query1.Params.CreateParam(ftstring,'LOTE_RE',ptinput);
  DM1.Query1.Params.CreateParam(ftstring,'DTENTRADA',ptinput);
  DM1.Query1.SQL.add('Insert Into CADPF2 ('
                    +' PF2CODEMP, '
                    +' PF2LOTSEQ, '
                    +' PF2CHAVE, '
                    +' PF2CODPRO, '
                    +' PF2NOMPRO, '
                    +' PF2ITEM, '
                    +' PF2QTDP, '
                    +' PF2PU, '
                    +' PF2DESC01, '
                    +' PF2DESC02, '
                    +' PF2DESC03, '
                    +' PF2VALDES, '
                    +' PF2SIT, '
                    +' PF2ALIQ, '
                    +' PF2BASEN, '
                    +' PF2ICMSN, '
                    +' PF2BASER, '
                    +' PF2ICMSR, '
                    +' PF2STATUS, '
                    +' PF2TAB, '
                    +' PF2LISTA, '
                    +' PF2PCOTAB, '
                    +' PF2ALIQNR, '
                    +' PF2BASENR, '
                    +' PF2ICMSNR, '
                    +' PF2ISENTAS, '
                    +' PF2OUTRAS, '
                    +' PF2ALIPI, '
                    +' PF2IPI, '
                    +' PF2CFO, '
                    +' PF2CFOP_COMP, '
                    +' PF2TOTDES, '
                    +' PF2DESCRAT, '
                    +' PF2ORIGEM, '
                    +' PF2STATUS_PF1, '
                    +' PF2PUOUT, '
                    +' PF2PBT, '
                    +' PF2FRERAT, '
                    +' PF2QTDREC, '
                    +' PF2VALDESOUT, '
                    +' PF2TOTDESOUT, '
                    +' PF2FRERATOUT, '
                    +' PF2DESCRATOUT, '
                    +' PF2SIV_OUTROS, '
                    +' PF2PREDICMNOR, '
                    +' PF2LOTE, '
                    +' PF2DATAV '
                    +' ,PF2LOTE_RE '
                    +' ,PF2DTENTRADA '
                    +') values ('
                    +iif(pgcodemp>0,InttoStr(pgcodemp),Inttostr(codemp))+','
                    +IntToStr(pfor_lotseq)+','
                    +IntToStr(mchave_pf)+','
                    +FloatTostr(pgcodpro)+','
                    +chr(39)+pgnompro+chr(39)+','
                    +intTostr(mitem)+','
                    +mudavp(FloatToStr(pgqtd))+','
                    +mudavp(FloatTostr(pgpu))+','
                    +mudavp(FloatToStr(pgdesci01))+','
                    +mudavp(FloatTostr(pgdesci02))+','
                    +mudaVP(FloatToStr(pgdesci03))+','
                    +mudavp(FloatTostr(pgvaldesi))+','
                    +chr(39)+pgsit+chr(39)+','
                    +mudavp(FloatTostr(pgicms))+',' //Aliq.ICMS;
                    +mudavp(FloatTostr(pgbasen))+',' //Base Icms';
                    +mudavp(FloatTostr(pgicmsn))+',' //Icms Normal';
                    +mudavp(FloatTostr(pgbaser))+',' //Base Retido';
                    +mudavp(FloatTostr(pgicmsr))+',' //Icms Retido';
                    +'0'+','
                    +chr(39)+pgtabela+chr(39)+','
                    +Inttostr(pglista)+','
                    +mudavp(Floattostr(pgpcotab))+','
                    +mudavp(FloatTostr(pgalicms))+',' //Aliq.ICMS;
                    +mudavp(FloatTostr(pgbasenr))+',' //BC.Icms N.Ret';
                    +mudavp(FloatTostr(pgicmsnr))+',' //Icms N.Ret';
                    +mudavp(FloatTostr(pgisentas))+',' //Isentas';
                    +mudavp(FloatTostr(pgoutras))+',' //Outras';
                    +mudavp(FloatTostr(pgipi))+','
                    +mudavp(FloatTostr(pgvalipi))+',' //Valor IPI';
                    +chr(39)+fdeixanum(pgcfo)+chr(39)+','
                    +chr(39)+pgCfo_Comp+chr(39)+','
                    +mudavp(FloatTostr(pgtotdes+pgdescrat))+',' //Total Desc.';
                    +mudavp(FloatTostr(pgdescrat))+','   // Total do desconto Rateado
                    +iif(cb_origem.Checked,'1','0')+','
                    +'0'+Trim(STATUS.Text) +','
                    +mudavp(FloatTostr(pgpu))+','   // preco unitario outros
                    +mudavp(FloatTostr(pgvalpbt))+','   // VALOR PBT
                    +mudavp(FloatTostr(pgfrerat))+','   // VALOR DO FRETE RATEADO
                    +mudavp(FloatTostr(0))+','   //  QTD JA RECEBIDA
                    +mudavp(FloatTostr(pgvaldesi_comp))+','   // VALOR DO DESCONTO OUTROS
                    +mudavp(FloatTostr(pgout_totdes))+','   // TOTAL DO DESCONTO OUTROS
                    +mudavp(FloatTostr(pgout_freterat))+','   // FRETE RATEADO OUTROS
                    +mudavp(FloatTostr(pgout_descrat))+','   // DESCONTO RATEADO OUTROS
                    +mudavp(FloatTostr(0))+','   // OUTROS VALORES RATEADO SEM INCIDENCIA
                    +mudavp(FloatTostr(pgpredicmnor))+','   // Redutor de Icms normal
                    +' :LOTE, :DATAV,:LOTE_RE,:DTENTRADA)');
  DM1.Query1.Params[0].AsString := pglote;

  if (Trim(pgdatav)<>'') and (Trim(pgdatav)<>'/  /') then
     DM1.Query1.params[1].AsString:=FormatDateTime(fdt,StrtoDate(pgdatav));

  DM1.Query1.params[2].AsString:=pgLote_Re;
  DM1.Query1.params[3].AsString:=FormatDateTime(fdt,Qr_Pf01PF1DATAENT.Value);

  try
    DM1.Query1.ExecSQL;
    fdm1StartCommit;
  except
    ex_erroSql(01,2077,'Frm_PFor01','CADPF2');
  end;

  Result := ' ';
end;

function Tfrm_Pfor01_02.fgravap1(ptipo, pcodemp: Integer): Boolean;
var
  mtotb,mtotl,mbasen,micmsn,mbaser,micmsr,mbasenp,mbasenn,mbaseni: Real;
  micmsnp, micmsnn, micmsni,mbaserp,mbasern,mbaseri: Real;
  micmsrp, micmsrn, micmsri,mbasenrp,mbasenri,mbasenrn: Real;
  micmsnrp, micmsnrn, micmsnri, mipiina, mipipos, mipineg : Real;
  mtottri, mtotret, mtotise, mtotout, mtotpos, mtotneg, mtotina: Real;
  mbissqn, mvissqn, mpiscofn, mpiscofr, mtotdes,mtotpbt: Real;
  mTotdesOut: Real;
begin
  mtotb   :=0; mtotl   :=0; mbasen  :=0; micmsn  :=0; mbaser  :=0; micmsr  :=0; mbasenp:=0; mbasenn:=0; mbaseni:=0;
  micmsnp :=0; micmsnn :=0; micmsni :=0; mbaserp :=0; mbasern :=0; mbaseri :=0;
  micmsrp :=0; micmsrn :=0; micmsri :=0; mbasenrp:=0; mbasenri:=0; mbasenrn:=0;
  micmsnrp:=0; micmsnrn:=0; micmsnri:=0; mipiina :=0; mipipos :=0; mipineg :=0;
  mtottri :=0; mtotret :=0; mtotise :=0; mtotpos :=0; mtotneg :=0; mtotina :=0;
  mpiscofn:=0; mpiscofr:=0; mtotdes :=0; mbissqn :=0; mvissqn :=0; mtotout :=0;
  mtotpbt   :=0;
  mTotdesOut:=0;

  if Trim(SERIE.Text)='' then
     SERIE.Text:='1';
  if Trim(SUBSERIE.Text)='' then
     SUBSERIE.Text:='1';
  if Trim(MODELO.Text)='' then
     MODELO.Text:='1';

  fLerPF2(0,pcodemp,pfor_lotseq,mchave_pf);

  Qr_Itens.First;
  while not Qr_Itens.Eof do begin
     mTotdesOut := mTotdesOut+0;
     mtotpbt    := mtotpbt+Arredonda((Qr_ItensQTD.Value*Qr_ItensPCOUNI.Value),DM1.Tb_PargerPCASAS.AsInteger);
     mtotb      := mtotb+(Qr_ItensPCOUNI.Value*Qr_ItensQTD.Value);
     mbasen     := mbasen+Qr_ItensBASEN.Value;
     micmsn     := micmsn+Qr_ItensICMSN.Value;
     mbaser     := mbaser+Qr_ItensBASER.Value;
     micmsr     := micmsr+Qr_ItensICMSR.Value;
     mtotise    := mtotise+Qr_ItensISENTAS.Value;
     mtotout    := mtotout+Qr_ItensOUTRAS.Value;

     if Qr_ItensLISTA.Value = '1' then begin
        mbasenp := mbasenp+Qr_ItensBASEN.Value;
        micmsnp := micmsnp+Qr_ItensICMSN.Value;
        mbaserp := mbaserp+Qr_ItensBASER.Value;
        micmsrp := micmsrp+Qr_ItensICMSR.Value;
        mbasenrp:= mbasenrp+Qr_ItensBASENR.Value;
        micmsnrp:= micmsnrp+Qr_ItensICMSNR.Value;
        mipipos := mipipos+Qr_ItensALIPI.Value;
     end else if Qr_ItensLISTA.Value = '2' then begin
        mbasenn := mbasenn+Qr_ItensBASEN.Value;
        micmsnn := micmsnn+Qr_ItensICMSN.Value;
        mbasern := mbasern+Qr_ItensBASER.Value;
        micmsrn := micmsrn+Qr_ItensICMSR.Value;
        mbasenrn:= mbasenrn+Qr_ItensBASENR.Value;
        micmsnrn:= micmsnrn+Qr_ItensICMSNR.Value;
        mipineg := mipineg+Qr_ItensALIPI.Value;
     end else begin
        mbaseni := mbaseni+Qr_ItensBASEN.Value;
        micmsni := micmsni+Qr_ItensICMSN.Value;
        mbaseri := mbaseri+Qr_ItensBASER.Value;
        micmsri := micmsri+Qr_ItensICMSR.Value;
        mbasenri:= mbasenri+Qr_ItensBASENR.Value;
        micmsnri:= micmsnri+Qr_ItensICMSNR.Value;
        mipiina := mipiina+Qr_ItensALIPI.Value;
     end;

     if Qr_ItensSITTRI.Value[2] in ['1','6'] then begin
        mtotret  := mtotret+(Qr_ItensPCOUNI.Value*Qr_ItensQTD.Value)-Qr_ItensTOTDES.Value;
        mpiscofr := mpiscofr+(Qr_ItensPCOUNI.Value*Qr_ItensQTD.Value)-Qr_ItensTOTDES.Value;
     end else if Qr_ItensSITTRI.Value[2] in ['4'] then begin
        mpiscofn := mpiscofn+(Qr_ItensPCOUNI.Value*Qr_ItensQTD.Value)-Qr_ItensTOTDES.Value;
     end else begin
        mpiscofn := mpiscofn+(Qr_ItensPCOUNI.Value*Qr_ItensQTD.Value)-Qr_ItensTOTDES.Value;
        mtottri  := mtottri+(Qr_ItensPCOUNI.Value*Qr_ItensQTD.Value)-Qr_ItensTOTDES.Value
     end;

     mtotdes := mtotdes+(Qr_ItensTOTDES.Value-Qr_ItensDESCRAT.Value);
     Qr_Itens.Next;
  end;

  mtotdes := mtotdes+ValFloat(VALDES.Text);

  mtotl   := valfloat(TOTNOT.Text);

  DM1.Query1.Params.Clear;
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query2.Close;
  DM1.Query2.Sql.Clear;
  DM1.Query2.Sql.add('Select PF1CHAVE from CADPF1 where '
                    +' PF1CODEMP=0'+IntTostr(pcodemp)
                    +' and PF1LOTSEQ=0'+IntTostr(pfor_lotseq)
                    +' and PF1CHAVE=0'+IntTostr(mchave_pf)
                    +' order by PF1CODEMP,PF1CHAVE');
  DM1.Query2.Open;

  if ValFloat(STATUS.Text)<=0 then
     STATUS.Text:='0';
  if DM1.query2.Eof then begin
     DM1.Query1.SQL.Add('Insert into CADPF1 ('
                       +' PF1CODEMP, '
                       +' PF1LOTSEQ, '
                       +' PF1CHAVE, '
                       +' PF1CODFOR, '
                       +' PF1DATA, '
                       +' PF1DESC01, '
                       +' PF1DESC02, '
                       +' PF1DESC03, '
                       +' PF1TOTDES, '
                       +' PF1TOTBRU, '
                       +' PF1STATUS, '
                       +' PF1CASASD, '
                       +' PF1LOCAL, '
                       +' PF1CODUSR, '
                       +' PF1TOTMER, '
                       +' PF1TOTPOS, '
                       +' PF1TOTNEG, '
                       +' PF1TOTINA, '
                       +' PF1BASEN, '
                       +' PF1BASER, '
                       +' PF1ICMSN, '
                       +' PF1ICMSR, '
                       +' PF1CODLDR, '
                       +' PF1BASENR, '
                       +' PF1ICMSNR, '
                       +' PF1ISENTAS, '
                       +' PF1TOTLIQ, '
                       +' PF1NFCF, '
                       +' PF1NUMNF, '
                       +' PF1TABPV, '
                       +' PF1CODPV, '
                       +' PF1CODTRA, '
                       +' PF1TOTFRE, '
                       +' PF1PIPIFRETE, '
                       +' PF1IPIFRETE, '
                       +' PF1CODBCO, '
                       +' PF1PRAZO, '
                       +' PF1QTDP, '
                       +' PF1INT, '
                       +' PF1TEMBOL, '
                       +' PF1TOTOUT, '
                       +' PF1TOTOUT_ALIQ, '
                       +' PF1TOTOUT_IMP, '
                       +' PF1OUTDESP, '
                       +' PF1OUTNINC, '
                       +' PF1TOTIPI, '
                       +' PF1NUMDUP, '
                       +' PF1NUMDUPOUT, '
                       +' PF1PERCFRE, '
                       +' PF1FRETEPC, '
                       +' PF1GRAVNF, '
                       +' PF1GRAVDP, '
                       +' PF1ORIGEM, '
                       +' PF1OBS, '
                       +' PF1HORDIG, '
                       +' PF1DTMOD, '
                       +' PF1HRMOD, '
                       +' PF1USRMOD, '
                       +' PF1DATANF, '
                       +' PF1SERIE, '
                       +' PF1SUBSER, '
                       +' PF1MODELO, '
                       +' PF1SUBMOD, '
                       +' PF1DESD,'
                       +' PF1DTPFAT,'
                       +' PF1DTPENT,'
                       +' PF1DATAENT,'
                       +' PF1CONDPAG,'
                       +' PF1CODEMP_ORI, '
                       +' PF1NUMPED_ORI, '
                       +' PF1PAG_ORI, '
                       +' PF1TOTLIQOUT, '
                       +' PF1TOTPBT,'
                       +' PF1FORMACE,'
                       +' PF1SITPED,'
                       +' PF1QTDMAN,'
                       +' PF1TOTDESOUT,'
                       +' PF1TOTBRUOUT,'
                       +' PF1TOTFREOUT,'
                       +' PF1OUTROS, '
                       +' PF1TIPO '
                       +' ,PF1SIV_FRETE'
                       +' ,PF1SIV_DARE'
                       +' ,PF1SIV_OUTROS'
                       +' ,PF1OUTVDUP '
                       +' ,PF1LOTE_ENTRADA'
                       +' ,PF1REGENT'
                       +' ,PF1SITPROD'
                       +') Values ('
                       +IntTostr(pcodemp)+','
                       +IntTostr(pfor_lotseq)+','
                       +IntTostr(mchave_pf)+','
                       +CODFOR.Text+','
                       +chr(39)+FormatDateTime(fdt,StrtoDate(DATAP.Text))+chr(39)+','
                       +mudavp(FloatToStr(ValFloat(DESC01.Text)))+','
                       +mudavp(FloatToStr(ValFloat(DESC02.Text)))+','
                       +mudavp(FloatToStr(ValFloat(VALDES.Text)))+','
                       +mudavp(FloattoStr(mtotdes))+','
                       +mudavp(FloattoStr(mtotb))+','
                       +Trim(STATUS.text)+','
                       +IntToStr(CB_CASASD.ItemIndex)+','
                       +IntToStr(CB_LOCAL.ItemIndex)+','
                       +InttoStr(codusr)+','
                       +mudavp(FloattoStr(mtotb))+','
                       +mudavp(FloattoStr(ValFloat(TOTPOS.Text)))+','
                       +mudavp(FloattoStr(ValFloat(TOTNEG.Text)))+','
                       +mudavp(FloattoStr(ValFloat(TOTINA.Text)))+','
                       +mudavp(FloattoStr(ValFloat(Frm_PFor01_02.MBASEN.Text)))+','
                       +mudavp(FloattoStr(ValFloat(Frm_PFor01_02.MBASER.Text)))+','
                       +mudavp(FloattoStr(ValFloat(Frm_PFor01_02.ICMSN.Text)))+','
                       +mudavp(FloattoStr(ValFloat(Frm_PFor01_02.ICMSR.Text)))+','
                       +FloatTostr(mcodldr)+','  // Codigo do fluxo de caixa
                       +mudavp(FloattoStr(mbasenrp+mbasenrn+mbasenri))+','
                       +mudavp(FloattoStr(micmsnrp+micmsnrn+micmsnri))+','
                       +mudavp(FloattoStr(ValFloat(ISENTAS.Text)))+','
                       +mudavp(FloattoStr(mtotl))+','
                       +iif(CB_NFCF.Checked,'1','0')+','
                       +FloatToStr(valfloat(NUMNF.Text))+','
                       +chr(39)+trim(CB_TABPV.Text)+chr(39)+','
                       +FloatToStr(valfloat(CODPV.Text))+','
                       +FloatToStr(Valfloat(CODTRA.Text))+','
                       +mudavp(FloatToStr(ValFloat(VALFRE.Text)))+','
                       +mudavp(FloatToStr(ValFloat(PIPIFRETE.Text)))+','
                       +mudavp(FloatToStr(ValFloat(IPIFRETE.Text)))+','
                       +FloatToStr(ValFloat(CODBCO.Text))+','
                       +FloatToStr(ValFloat(PRAZO.Text))+','
                       +FloatToStr(ValFloat(qtdp.Text))+','
                       +Iif(Trim(INT.Text) <> '',INT.Text,'1')+','
                       +iif(CB_BOLETO.Checked,'0','1')+','
                       +mudavp(FloatToStr(ValFloat(OUTRAS.Text)))+','
                       +mudavp(FloatToStr(ValFloat(OUTRAS_PERC.Text)))+','
                       +mudavp(FloatToStr(ValFloat(OUTRAS_IMP.Text)))+','
                       +mudavp(FloatToStr(ValFloat(OUTDESP.Text)))+','
                       +mudavp(FloatToStr(ValFloat(OUTNINC.Text)))+','
                       +mudavp(Floattostr(mipiina+mipipos+mipineg))+','
                       +mudavp(FloatToStr(ValFloat(NUMDUP.Text)))+','
                       +mudavp(FloatToStr(0))+','
                       +mudavp(FloatToStr(ValFloat(PERCFRE.Text)))+','
                       +InttoStr(RGFRETEPC.ItemIndex+1)+','
                       +iif(CB_GNF.Checked,'1','0')+','
                       +iif(CB_GDP.Checked,'1','0')+','
                       +iif(cb_origem.Checked,'1','0')+','
                       +' :OBS, '
                       +' :HORDIG, '
                       +' :DTMOD, '
                       +' :HRMOD, '
                       +' :USRMOD, '
                       +' :DATANF, '
                       +' :SERIE, '
                       +' :SUBSER, '
                       +' :MODELO, '
                       +' :SUBMOD, '
                       +' :DESD,'
                       +' :DTPFAT,'
                       +' :DTPENT,'
                       +' :DATAENT,'
                       +' :CONDPAG,'
                       +'0'+Trim(CODEMP_ORI.Text)+','
                       +'0'+Trim(NUMPED_ORI.Text)+','
                       +'0'+Trim(PAG_ORI.Text)+','
                       +mudavp(FloatTostr(0))+','
                       +mudavp(FloatToStr(mtotpbt))+','
                       +'0'+',' // formace
                       +'0'+',' // sitped
                       +FloatToStr(mQtdMan)+','
                       +mudavp(FloatTostr(mTotdesOut))+','
                       +mudavp(FloatTostr(0
                                         +0
                                         -0) )+','
                       +mudavp(FloatTostr(0))+','
                       +mudavp(FloatTostr(0))+','
                       +iif(CB_TIPO.ItemIndex=10,'10',IntToStr(CB_TIPO.ItemIndex))+','
                       +mudavp(FloatTostr(ValFloat(SIV_FRETE.Text)))+','
                       +mudavp(FloatTostr(ValFloat(SIV_DARE.Text)))+','
                       +mudavp(FloatTostr(ValFloat(SIV_OUTROS.Text)))+','
                       +mudavp(FloatTostr(ValFloat(OUTVDUP.Text)))
                       +' ,:PF1LOTE_ENTRADA'
                       +' ,:PF1REGENT'
                       +','+IntToStr(mSitProd)
                       +')');
  end else begin
     DM1.Query1.SQL.Add('Update CADPF1 SET '
                       +' PF1CODEMP=0'+IntTostr(pcodemp)+','
                       +' PF1CHAVE=0'+IntTostr(mchave_pf)+','
                       +' PF1LOTSEQ=0'+IntTostr(pfor_lotseq)+','
                       +' PF1CODFOR=0'+Trim(CODFOR.Text)+','
                       +' PF1DATA='+chr(39)+FormatDateTime(fdt, StrtoDate(DATAP.Text))+chr(39)+','
                       +' PF1DESC01=0'+mudavp(DESC01.Text)+','
                       +' PF1DESC02=0'+mudavp(DESC02.Text)+','
                       +' PF1VLRDES=0'+mudavp(VALDES.Text)+','
                       +' PF1TOTDES=0'+mudavp(FloattoStr(mtotdes))+','
                       +' PF1TOTBRU=0'+mudavp(FloattoStr(mtotb))+','
                       +' PF1STATUS=0'+Trim(STATUS.Text) +','
                       +' PF1CASASD=0'+IntTostr(CB_CASASD.ItemIndex)+','
                       +' PF1LOCAL=0'+IntTostr(CB_LOCAL.ItemIndex)+','
                       +' PF1CODUSR=0'+IntTostr(codusr)         +','
                       +' PF1HORDIG=:HORDIG, '
                       +' PF1USRMOD=:USRMMOD,'
                       +' PF1DTMOD=:DTMOD, '
                       +' PF1HDMOD=:HRMOD, '
                       +' PF1TOTMER=0'+mudavp(FloattoStr(mtotb))+','
                       +' PF1TOTPOS=0'+mudavp(FloatTostr(mtotpos))+','
                       +' PF1TOTNEG=0'+mudavp(FloatTostr(mtotneg))+','
                       +' PF1TOTINA=0'+mudavp(FloatTostr(mtotina))+','
                       +' PF1BASEN =0'+mudavp(FloatTostr(mbasen))+','
                       +' PF1BASER =0'+mudavp(FloatTostr(mbaser))+','
                       +' PF1ICMSN =0'+mudavp(FloatTostr(micmsn))+','
                       +' PF1ICMSR =0'+mudavp(FloatTostr(micmsr))+','
                       +' PF1CODLDR=0'+mudavp(FloatTostr(mcodldr))+','
                       +' PF1BASENR=0'+mudavp(FloatTostr(mbasenrp+mbasenri+mbasenrn))+','
                       +' PF1ICMSNR=0'+mudavp(FloatTostr(micmsnrp+micmsnri+micmsnrn))+','
                       +' PF1ISENTAS=0'+mudavp(FloatTostr(ValFloat(ISENTAS.Text)))+','
                       +' PF1TOTLIQ=0'+mudavp(FloatTostr(mtotl))+','
                       +' PF1DATANF=:DATANF,'
                       +' PF1NFCF=0'+iif(CB_NFCF.Checked,'1','0')+','
                       +' PF1NUMNF=0'+mudavp(FloatToStr(ValFloat(NUMNF.Text)))+','
                       +' PF1SERIE=:SERIE,'
                       +' PF1SUBSER=:SUBSER,'
                       +' PF1MODELO=:MODELO,'
                       +' PF1SUBMOD=:SUBMOD,'
                       +' PF1TABPV=0'+chr(39)+trim(CB_TABPV.Text)+chr(39)+','
                       +' PF1CODPV=0'+mudavp(FloatToStr(ValFloat(CODPV.Text)))+','
                       +' PF1CODTRA=0'+mudavp(FloatToStr(ValFloat(CODTRA.Text)))+','
                       +' PF1TOTFRE=0'+mudavp(FloatToStr(ValFloat(VALFRE.Text)))+','
                       +' PF1PIPIFRETE=0'+mudavp(FloatToStr(ValFloat(PIPIFRETE.Text)))+','
                       +' PF1IPIFRETE=0'+mudavp(FloatToStr(ValFloat(IPIFRETE.Text)))+','
                       +' PF1CODBCO=0'+mudavp(FloatToStr(ValFloat(CODBCO.Text)))+','
                       +' PF1PRAZO=0'+mudavp(FloatToStr(ValFloat(PRAZO.Text)))+','
                       +' PF1QTDP=0'+mudavp(FloatToStr(ValFloat(QTDP.Text)))+','
                       +' PF1INT=0'+mudavp(Iif(Trim(INT.Text) <> '',INT.Text,'1'))+','
                       +' PF1TEMBOL=0'+iif(CB_BOLETO.Checked,'0','1')+','
                       +' PF1TOTOUT=0'+mudavp(FloatToStr(ValFloat(OUTRAS.Text)))+','
                       +' PF1TOTOUT_ALIQ=0'+mudavp(FloatToStr(ValFloat(OUTRAS_PERC.Text)))+','
                       +' PF1TOTOUT_IMP=0'+mudavp(FloatToStr(ValFloat(OUTRAS_IMP.Text)))+','
                       +' PF1OUTDESP=0'+mudavp(FloatToStr(ValFloat(OUTDESP.Text)))+','
                       +' PF1OUTNINC=0'+mudavp(FloatToStr(ValFloat(OUTNINC.Text)))+','
                       +' PF1TOTIPI=0'+mudavp(FloatTostr(mipiina+mipipos+mipineg))+','
                       +' PF1NUMDUP=0'+iif(trim(NUMDUP.Text)='','0',NUMDUP.Text)+','
                       +' PF1NUMDUPOUT=0'+Trim('0')+','
                       +' PF1PERCFRE=0'+mudavp(FloatTostr(ValFloat(PERCFRE.Text)))+','
                       +' PF1TOTLIQOUT=0'+mudavp(FloatTostr(0))+','
                       +' PF1TOTPBT=0'+mudavp(FloatTostr(0))+','
                       +' PF1QTDMAN=0'+FloatToStr(mQtdMan)+','
                       +' PF1TOTDESOUT=0'+mudavp(FloatTostr(mTotdesOut))+','
                       +' PF1TOTBRUOUT=0'+mudavp(FloatTostr(0
                                         +0
                                         -0))+','
                       +' PF1TOTFREOUT=0'+mudavp(FloatTostr(0))+','
                       +' PF1OUTROS=0'+mudavp(FloatTostr(0))+','
                       +' PF1FRETEPC=0'+IntTostr(RGFRETEPC.ItemIndex+1)+','
                       +' PF1DESD=:DESD, '
                       +' PF1DATAENT=:DATAENT,'
                       +' PF1DTPFAT=:DTPFAT,'
                       +' PF1DTPENT  =:DTPENT,'
                       +' PF1CONDPAGT=:CONDPAG,'
                       +' PF1GRAVNF='+iif(CB_GNF.Checked,'1','0')+','
                       +' PF1GRAVDP='+iif(CB_GDP.Checked,'1','0')+','
                       +' PF1ORIGEM='+iif(cb_origem.Checked,'1','0')+','
                       +' PF1CODEMP_ORI=0'+iif(trim(CODEMP_ORI.Text)='','0',CODEMP_ORI.Text)+','
                       +' PF1NUMPED_ORI=0'+iif(trim(NUMPED_ORI.Text)='','0',NUMPED_ORI.Text)+','
                       +' PF1PAG_ORI=0'+iif(trim(PAG_ORI.Text)='','0',PAG_ORI.Text)+','
                       +' PF1TIPO=0'+iif(CB_TIPO.ItemIndex=10,'10',IntToStr(CB_TIPO.ItemIndex))+','
                       +' PF1OBS=:OBS, '
                       +' PF1HORDIG=:HORDIG, '
                       +' PF1DTMOD=:DTMOD, '
                       +' PF1HRMOD=:HRMOD, '
                       +' PF1DATANF=:DATANF, '
                       +' PF1SERIE=:SERIE, '
                       +' PF1SUBSER=:SUBSER, '
                       +' PF1MODELO=:MODELO, '
                       +' PF1SUBMOD=:SUBMOD, '
                       +' PF1DESD=:DESD,'
                       +' PF1DTFAR=:DTPFAT,'
                       +' PF1DTPEND=:DTPENT,'
                       +' PF1DATAENT=:DATAENT,'
                       +' PF1CONDPAG=:CONDPAG'
                       +' ,PF1SIV_FRETE=0'+mudavp(FloatTostr(ValFloat(SIV_FRETE.Text)))+','
                       +' ,PF1SIV_DARE =0'+mudavp(FloatTostr(ValFloat(SIV_DARE.Text)))+','
                       +' ,PF1SIV_OUTROS=0'+mudavp(FloatTostr(ValFloat(SIV_OUTROS.Text)))
                       +' ,PF1OUTVDUP=0'+mudavp(FloatTostr(ValFloat(OUTVDUP.Text)))+','
                       +' ,PF1LOTE_ENTRADA=:PF1LOTE_ENTRADA'
                       +' ,PF1REGENT=:PF1REGENT'
                       +' ,PF1SITPROD=0'+InttoStr(mSitProd)
                       +' where PF1CODEMP=0'+IntTostr(pcodemp)
                       +' and PF1LOTSEQ=0'+inttostr(pfor_lotseq)
                       +' and PF1CHAVE=0'+inttostr(mchave_pf));
  end;

  DM1.Query1.ParamByName('OBS').AsString        :=OBSERVACAO.Text;
  DM1.Query1.ParamByName('HORDIG').AsString     :=HORDIG.Text;

  if Trim(DTMOD.Text)<>'/  /'  then
     DM1.Query1.ParamByName('DTMOD').AsDateTime  :=StrToDate(DTMOD.Text)
  else
     DM1.Query1.ParamByName('DTMOD').AsDateTime  :=pdatanula;

  DM1.Query1.ParamByName('HRMOD').AsString      :=HRMOD.Text;
  DM1.Query1.ParamByName('USRMOD').AsString      :=trim(USRMOD.Text);

  if Trim(DATAE.Text)<>'/  /'  then
     DM1.Query1.ParamByName('DATANF').AsDateTime  :=StrToDate(DATAE.Text)
  else
     DM1.Query1.ParamByName('DATANF').AsDateTime  :=pdatanula;

  if Trim(DTPFAT.Text)<>'/  /'  then
     DM1.Query1.ParamByName('DTPFAT').AsDateTime  :=StrToDate(DTPFAT.Text)
  else
     DM1.Query1.ParamByName('DTPFAT').AsDateTime  :=pdatanula;

  if Trim(DTPENT.Text)<>'/  /'  then
     DM1.Query1.ParamByName('DTPENT').AsDateTime  :=StrToDate(DTPENT.Text)
  else
     DM1.Query1.ParamByName('DTPENT').AsDateTime  :=pdatanula;

  DM1.Query1.ParamByName('SERIE').AsString      :=SERIE.Text;
  DM1.Query1.ParamByName('SUBSER').AsString     :=SUBSERIE.Text;
  DM1.Query1.ParamByName('MODELO').AsString     :=MODELO.Text;
  DM1.Query1.ParamByName('SUBMOD').AsString     :=NumPal_Sis(FormatFloat('000',fsonumero(SUBMOD.Text)));

  if trim(DESD.Text)='' then
     DESD.Text:='A';

  DM1.Query1.ParamByName('DESD').AsString       :=DESD.Text;

  if Trim(DATAENT.Text)<>'/  /'  then
     DM1.Query1.ParamByName('DATAENT').AsDateTime:=StrToDate(DATAENT.Text)
  else
     DM1.Query1.ParamByName('DATAENT').AsDateTime:=pdatanula;

  DM1.Query1.ParamByName('CONDPAG').AsString    :=CONDPAG.Text;
  DM1.Query1.ParamByName('PF1LOTE_ENTRADA').AsString :='';
  DM1.Query1.ParamByName('PF1REGENT').AsString       :='';

  try
     DM1.Query1.ExecSQL;
     fdm1StartCommit;
  except
     ex_erroSql(01,2413,'Frm_PFor01','CADPF1');
  end;

  DM1.Query1.Params.Clear;

  if (trim(DATAE.Text)<>'/  /') and (trim(DATAE.Text)<>'') then
     fgvencto(0,pcodemp,mchave_pf,0,valfloat(TOTNOT.Text)+ValFloat(OUTVDUP.Text),0, StrToDate(DATAE.Text))
  else
     fgvencto(0,pcodemp,mchave_pf,0,valfloat(TOTNOT.Text)+ValFloat(OUTVDUP.Text),0,StrToDate(DATAP.Text));

  mitem := 0;
  result:= True;
end;

function Tfrm_Pfor01_02.fgvencto(ptipo, pcodemp, pchave, pordem: Integer; ptotdup, ptotdup_comp: Real; pdatae: tDateTime): Boolean;
var
  x,
  mqtdd         : Integer;
  mvaldup_comp,
  mvaldup,
  mdif,
  mdif_comp     : Real;
  mdtv          : TDateTime;
begin
  mqtdd        := 0;
  ptotdup      := Arredonda(ptotdup,2);
  ptotdup_comp := Arredonda(ptotdup_comp,2);
  Qr_Dup.Close;

  if ValFloat(Qr_DuplicatasDTVCTO.AsString)>0 then begin
     mvaldup      := 0;
     mvaldup_comp := 0;

     Qr_Duplicatas.First;
     while not Qr_Duplicatas.Eof do begin
        if ValFloat(Qr_DuplicatasDTVCTO.AsString)>0 then begin
           mvaldup     := mvaldup+Qr_DuplicatasVALOR.Value;
           mvaldup_comp:= mvaldup_comp+Qr_DuplicatasVLROUT.Value;
         end;

         Qr_Duplicatas.Next;
     end;

     mvaldup     := Arredonda(mvaldup,2);
     mvaldup_comp:= Arredonda(mvaldup_comp,2);

     if mvaldup <> ptotdup then mqtdd := 0;
     if mvaldup_comp <> ptotdup_comp then mqtdd := 0;
  end;

  QR_Dup.Active := True;

  if mqtdd = 0 then begin
     mqtdd := Qr_Duplicatas.RecordCount;

     if mqtdd < 1 then
        mqtdd := 1;

     mvaldup:= ptotdup/mqtdd;
     mvaldup:= arredonda(mvaldup,2);
     mdif   := mvaldup*mqtdd;
     mdif   := ptotdup-mdif;
     mdif   := arredonda(mdif,2);

     mvaldup_comp := ptotdup_comp/mqtdd;
     mvaldup_comp := arredonda(mvaldup_comp,2);
     mdif_comp    := mvaldup_comp*mqtdd;
     mdif_comp    := ptotdup_comp-mdif_comp;
     mdif_comp    := arredonda(mdif_comp,2);

     Qr_Duplicatas.First;

     if not Qr_Duplicatas.Eof then  begin
        while not Qr_Duplicatas.Eof do  begin
           x                         := Qr_Duplicatas.RecordCount;
           Qr_Dup.Insert;
           Qr_DupDTVCTO.Value     := FormatDatetime(fdt2,pdatae+ValInt(Prazo.Text));
           Qr_DupVALOR.Value      := mvaldup+mdif;
           Qr_DupDESCFIN.Value    := 0;
           Qr_DupPGTODT.Value     := '/  /';
           Qr_DupVLROUT.Value     := mvaldup_comp+mdif_comp;
           Qr_DupDESCFINOUT.Value := 0;
           Qr_DupEXTRA.Value      := '';
           Qr_Dup.Post;

           Qr_Duplicatas.Next;
           mdif     :=0;
           mdif_comp:=0;
        end;
     end else begin
           x                             := Qr_Duplicatas.RecordCount;
           Qr_Dup.Insert;
           Qr_DupDTVCTO.Value     := FormatDatetime(fdt2,pdatae+ValInt(Prazo.Text));
           Qr_DupVALOR.Value      := mvaldup+mdif;
           Qr_DupDESCFIN.Value    := 0;
           Qr_DupPGTODT.Value     := '/  /';
           Qr_DupVLROUT.Value     := mvaldup_comp+mdif_comp;
           Qr_DupDESCFINOUT.Value := 0;
           Qr_DupEXTRA.Value      := '';
           Qr_Dup.Post;
           mdif:=0;
           mdif_comp:=0;
     end;
  end;

  fTotdupDig(0);
  DM1.Query1.Close;
  DM1.Query1.SQl.clear;
  DM1.Query1.Sql.add('Delete from CADPF1V where '
                    +' PF1VCODEMP=0'+IntTostr(pcodemp)
                    +' and PF1VLOTSEQ=0'+Inttostr(pfor_lotseq)
                    +' and PF1VCHAVE=0'+Inttostr(pchave));
  try
    DM1.Query1.ExecSQL;
    fdm1StartCommit;
  except
    ex_erroSql(01,4027,'Frm_PFor01','CADDAP');
  end;

  Qr_Duplicatas.First;
  while not Qr_Duplicatas.Eof do begin
     if ValFloat(Qr_DuplicatasDTVCTO.AsString) = 0 then
        continue;

     DM1.Query1.Close;
     DM1.Query1.SQL.clear;

     if trim(Qr_DuplicatasPGTODT.AsString)<>'/  /' then
        mdtv := StrTodate(Qr_DuplicatasPGTODT.AsString)
     else
        mdtv := pdatanula;

     if trim(Qr_DuplicatasEXTRA.AsString) = '' then
        mcinst2 := '0'
     else begin
        if codemp > 100 then
           mcinst2 := IntTostr(codemp-100)
        else
           mcinst2 := IntToStr(codemp+100);
     end;

     DM1.query1.SQL.Add('Insert into CADPF1V ('
                       +' PF1VCODEMP,'
                       +' PF1VLOTSEQ, '
                       +' PF1VCHAVE, '
                       +' PF1VDATAV, '
                       +' PF1VVALOR, '
                       +' PF1VCODIGO,'
                       +' PF1VDESCF, '
                       +' PF1VVALOUT, '
                       +' PF1VDESCFOUT, '
                       +' PF1VDTDESCF, '
                       +' PF1VTABPV,'
                       +' PF1VDES_CODEMP) values ('
                       +inttostr(pcodemp)+','
                       +IntTostr(pfor_lotseq)+','
                       +IntTostr(mchave_pf)+','
                       +chr(39)+FormatDatetime(fdt,StrToDate(Qr_DuplicatasDTVCTO.AsString))+chr(39)+','
                       +mudavp(FloatToStr(Qr_DuplicatasVALOR.Value))+','
                       +'0'+trim(CODPV.Text)+','
                       +mudavp(FloatToStr(Qr_DuplicatasDESCFIN.Value))+','
                       +mudavp(FloatToStr(Qr_DuplicatasVLROUT.Value))+','
                       +mudavp(FloatToStr(Qr_DuplicatasDESCFINOUT.Value))+','
                       +chr(39)+FormatDatetime(fdt,mdtv)+chr(39)+','
                       +chr(39)+trim(CB_TABPV.Text)+chr(39)+','
                       +mcinst2
                       +')');

     try
       DM1.Query1.ExecSQL;
       fdm1StartCommit;
     except
       ex_erroSql(01,2530,'Frm_PFor01','CADPF1V');
     end;

     Qr_Duplicatas.Next;
  end;

  Result := True;
end;

procedure Tfrm_Pfor01_02.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure Tfrm_Pfor01_02.btn_calcularClick(Sender: TObject);
var
  x        : Integer;
  mVlrDesc : Real;
begin
  mpavdes := (ValFloat(TOTAL.Text)+0);

  if (mpavdes<>0) and (valFloat(VALDES.Text)<>0) then begin
     mpavdes := (valfloat(VALDES.Text)*100)/mpavdes;
     mpavdes := mpavdes+0.01;
  end else
     mpavdes := 0;

  mpavdes := Arredonda(mpavdes,3);

  mpavfre := (ValFloat(TOTAL.Text)+0);

  if (mpavfre<>0) and (valFloat(VALFRE.Text)<>0) then begin
      mpavfre := (valfloat(VALFRE.Text)*100)/mpavfre;
      mpavfre := mpavfre+0.01;
  end else
      mpavfre := 0;

  mpavfre := Arredonda(mpavfre,3);

  mpavfreout := (ValFloat(TOTAL.Text)+0);

  if mpavfreout <> 0 then begin
      mpavfreout := (0*100)/mpavfreout;
      mpavfreout := mpavfreout+0.01;
  end else
      mpavfreout := 0;

  mpavfreout := Arredonda(mpavfreout,3);

  mVlrDesc   := ValFloat(VALDES.Text);
  mvalfre    := ValFloat(VALFRE.Text);
  mvalfreout := 0;

  Qr_Itens.First;
  while not Qr_Itens.Eof do begin
     if Qr_ItensCODPRO.AsFloat <= 0 then
        Continue;

     mcalculo:=fcalcped(0, //tipo parametro
                       ValInt(Qr_ItensLISTA.AsString), // lista
                       0,   // tipo
                       Qr_ItensQTD.Value, //quantidade
                       Qr_ItensPCOUNI.Value, // preco unitario
                       Qr_ItensPMC.Value, // Preco Maximo Consumidor
                       ValFloat(DESC01.Text),
                       ValFloat(DESC02.Text),
                       mpavdes,
                       Qr_ItensDESC01.Value, // desconto 01 item
                       Qr_ItensDESC02.Value, // desconto 02 item
                       Qr_ItensDESC03.Value, // desconto 03 item
                       Qr_ItensVALDESI.Value, // valor do desconto
                       Qr_ItensALIPI.Value, // Aliquota de IPI
                       Qr_ItensALICMS.Value, // Aliquota de icms
                       Qr_ItensPREDICMNOR.Value, // Redu;'ao de Icms Aliquota de icms
                       mVlrDesc,
                       Qr_ItensPCOUNI_COMP.Value, // preco unitario outros
                       Qr_ItensVALDESI_COMP.Value, // valor do desconto outros
                       mpavfre, // PERCENTUAL DE FRETE
                       mvalfre, // VALOR DO FRETE
                       mpavfreout, // PERCENTUAL DE FRETE OUTROS
                       mvalfreout, // VALOR DO FRETE OUTROS
                       0,
                       0,
                       Qr_ItensSITTRI.AsString, // Situação Tributaria
                       Qr_ItensTABICM.AsString, // Tabela de Icms
                       Qr_ItensCFOP.AsString); // cfop
     Qr_Itens.Edit;
     Qr_ItensBASER.Value       := ValFloat(copy(mcalculo,16,15));   // base do icms retido
     Qr_ItensICMSR.Value       := ValFloat(copy(mcalculo,1,15));   // valor do icms retido
     Qr_ItensBASEN.Value       := ValFloat(copy(mcalculo,31,15));   // base do icms normal
     Qr_ItensICMSN.Value       := ValFloat(copy(mcalculo,46,15));   // Valor do icms normal
     Qr_ItensTOTDES.Value      := ValFloat(copy(mcalculo,61,15));   // Total do desconto
     Qr_ItensCFOP.Value        := copy(mcalculo,136,4); // cfo codigo fiscal
     Qr_ItensVALIPI.Value      := ValFloat(copy(mcalculo,76,15));   // Valor do IPI
     Qr_ItensALICMS.Value      := ValFloat(copy(mcalculo,156,15));   // Aliquota de icms
     Qr_ItensBASENR.Value      := ValFloat(copy(mcalculo,106,15));   // Base Calculo Icms normal do retido
     Qr_ItensICMSNR.Value      := ValFloat(copy(mcalculo,91,15));   // Icms normal do Retido
     Qr_ItensDESCRAT.Value     := ValFloat(copy(mcalculo,231,15));   // Desconto Rateado
     Qr_ItensOUT_DESCRAT.Value := ValFloat(copy(mcalculo,246,15));   // total do desconto
     Qr_ItensOUT_DESCRAT.Value := ValFloat(copy(mcalculo,261,15));   // Desconto Rateado
     Qr_ItensFRERAT.Value      := ValFloat(copy(mcalculo,271,15));   // frete rateado
     Qr_ItensOUT_FRETERAT.Value:= ValFloat(copy(mcalculo,291,15));   // frete rateado outros

     mVlrDesc := mVlrDesc-ValFloat(copy(mcalculo,231,15))
                                   -ValFloat(copy(mcalculo,261,15));   // Desconto Rateado


     mvalfre    := mvalfre-ValFloat(copy(mcalculo,276,15));   // frete Rateado
     mvalfreout := mvalfreout-ValFloat(copy(mcalculo,291,15));   // frete Rateado outros

     if copy(Qr_ItensSITTRI.AsString,2,1)='0' then begin  // Situação Tributaria
        Qr_ItensOUTRAS.Value := (Qr_ItensTOTALI.Value-Qr_ItensTOTDES.Value-Qr_ItensBASEN.Value-Qr_ItensDESCRAT.Value);

        if Qr_ItensOUTRAS.Value <> 0 then begin
           try
             Qr_ItensPREDICMNOR.Value := Arredonda((Qr_ItensOUTRAS.Value)*100/(Qr_ItensBASEN.Value+Qr_ItensOUTRAS.Value),DM1.Tb_PargerPCASAS.AsInteger);
           except
             Qr_ItensPREDICMNOR.Value := 0;
           end;
        end;
     end else begin
        Qr_ItensOUTRAS.Value := 0;
     end;
     Qr_Itens.Post;

     Qr_Itens.Next;
  end;
  fcalcular(0);
end;

procedure Tfrm_Pfor01_02.btn_excluirClick(Sender: TObject);
var
  diaaju,
  mesaju,
  anoaju   : Word;
  diaatu,
  mesatu,
  anoatu   : Word;
  pcodemp  : Integer;
begin

  if not fLerPF1(0,codemp,pfor_lotseq,mchave_pf) then begin
     Fmensagem('Este Pedido foi excluido por outro usuario!',0,['0'],0);
     exit;
  end;

  if Qr_Pf01PF1SITPED.AsInteger=1 then begin
     Fmensagem('Este Pedido Esta em Manutenção em outra estação!',0,['0'],0);
     exit;
  end;

  if Qr_Pf01PF1QTDMAN.AsInteger>mQtdMan then begin
     moper:=3;
     btn_localizar.Click;
  end;

  if (Qr_Pf01PF1STATUS.Value>6) and (mOrigem_PF<>8) then begin
     Fmensagem('Favor Utilizar Outro Recurso para Esta Exclusão!',0,['0'],0);
     exit;
  end else if (Qr_Pf01PF1STATUS.Value<7) and (mOrigem_PF=8) then begin
     Fmensagem('Favor Utilizar Outro Recurso para Esta Exclusão!',0,['0'],0);
     exit;
  end;

  if mOrigem_PF=4 then begin
     Fmensagem('Para Exclusões Favor Utilizar Cadastro=>Pedido de Compra=>Manutenção!',0,['0'],0);
     exit;
  end;

  if Qr_Pf01PF1STATUS.Value>0 then begin
     if Qr_Pf01PF1OUTROS.AsFloat<>0 then begin
        codemp_ant:=codemp;
        if codemp>100 then
           codemp:=codemp-100
        else
           codemp:=codemp+100;

        flcaddap(4,codemp,0,Qr_Pf01PF1CHAVE.AsString,Qr_Pf01PF1LOTSEQ.AsString,'','',pvazio,'');

        while not DM1.Tb_CP.Eof do begin
           if DM1.Tb_CPCASTATUS.AsInteger>0 then begin
              Fmensagem('O titulo número: '+DM1.Tb_CPCANUMERO.AsString+'-'+DM1.Tb_CPCADESD.AsString+' Valor: '+Formatfloat(mcasas, DM1.Tb_CPCAVALOR.Value)+'/'+DM1.Tb_CPCACODEMP.AsString+#13
                       +'Encontra-se baixado/Pago, primeiro excluir os pagamentos'+#13
                       +'para depois excluir o pedido!',0,['0'],0);
              exit;
           end;

           DM1.Tb_CP.Next;
        end;

        codemp:=codemp_ant;
     end;

     flcaddap(4,codemp,0,Qr_Pf01PF1CHAVE.AsString,Qr_Pf01PF1LOTSEQ.AsString,'','',pvazio,'');

     while not DM1.Tb_CP.Eof do begin
        if DM1.Tb_CPCASTATUS.AsInteger>0 then begin
           Fmensagem('O titulo número: '+DM1.Tb_CPCANUMERO.AsString+'-'+DM1.Tb_CPCADESD.AsString+' Valor: '+Formatfloat(mcasas, DM1.Tb_CPCAVALOR.Value)+'/'+DM1.Tb_CPCACODEMP.AsString+#13
                    +'Encontra-se baixado/Pago, primeiro excluir os pagamentos'+#13
                    +'para depois excluir o pedido!',0,['0'],0);
           exit;
        end;

        DM1.Tb_CP.Next;
     end;
  end;

  if (Qr_Pf01PF1STATUS.Value>0) and (mOrigem_PF<>8) then begin
     flcadpar02(1,0,codusr,'12');
     if DM4.Tb_Par02PA2PDSN.Value='S' then begin
        if fValidaSenha(0,codusr,12,0,DM1.Tb_CliCCODCLI.Value,0,0,0, 'Senha para excluir o pedido apos confirmado','')<>0 then
           exit;
     end else begin
        if fMensagem('Quer realmente excluir o Pedido?',0,['1','2'],2)<>mrYes then
           exit;
     end;
  end else begin
     if fMensagem('Quer realmente excluir o Pedido?',0,['1','2'],2)<>mrYes then
        exit;
  end;

  fpf01gant(9);

  if (Qr_Pf01PF1STATUS.Value>0) and (mOrigem_PF<>8) then begin
     if Qr_Pf01PF1TIPO.AsInteger=10 then
        fexcluir(0)
     else
        fexcluir(1);
  end else
     fexcluir(0);

  moper:=4;
  LimpaEdits(Self);
  Qr_Itens.Close;
  Qr_Duplicatas.Close;
  Qr_Dup.Close;
  mTemp_gueda := False;
  fmensagem('Pedido Excluido',0,['0'],0);

  QTDITEM.Caption := '0,00';
  TOTDES.Value    := 0;
  VALIPI.Value    := 0;
  TOTITEM.Caption := '0,00';
  TOTFRE.Value    := 0;
  TOTAL.Value     := 0;
  ICMSR.Value     := 0;
  TOTLIQ.value    := 0;

end;

function fpf01gant(ptipo: Integer): Boolean;
var
  x,mcod: Integer;
  minstru: String;
  v: String;
begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.add('Select max(PF1CODNOV) from OLD_CADPF1');
  DM1.Query1.Open;
  mcod:=DM1.Query1.Fields[0].AsInteger+1;
  minstru:='Insert into OLD_CADPF1 (';
  v:='';

  for x:=0 to DM1.Tb_PF1.FieldCount-1 do begin
     if DM1.Tb_PF1.Fields[x].FieldKind=fkCalculated then
        Continue;
     minstru:=minstru+v+DM1.Tb_PF1.Fields[x].FieldName;
     v:=',';
  end;

  minstru:=minstru+',PF1CODNOV';
  minstru:=minstru+',PF1CODUSR_EVE';
  minstru:=minstru+',PF1DATHOR';
  minstru:=minstru+',PF1TIPEVE';
  minstru:=minstru+',PF1LOCAL_EVENTO';
  minstru:=minstru+') Select ';
  v:='';

  for x:=0 to DM1.Tb_PF1.FieldCount-1 do begin
     if DM1.Tb_PF1.Fields[x].FieldKind=fkCalculated then
        Continue;
     if DM1.Tb_PF1.Fields[x].FieldName='PF1STATUS' then
        minstru:=minstru+v+FormatFloat('0',ptipo)+' as PF1STATUS '
     else if DM1.Tb_PF1.Fields[x].FieldName='PF1USRMOD' then
        minstru:=minstru+v+FormatFloat('00000',codusr)+' as PF1USRMOD '
     else if DM1.Tb_PF1.Fields[x].FieldName='PF1DTMOD' then
        minstru:=minstru+v+chr(39)+Formatdatetime(fdt,date)+chr(39)+' as PF1DTMOD '
     else if DM1.Tb_PF1.Fields[x].FieldName='PF1HRMOD' then
        minstru:=minstru+v+chr(39)+Formatdatetime(fhr,time)+chr(39)+' as PF1HRMOD '
     else
        minstru:=minstru+v+DM1.Tb_PF1.Fields[x].FieldName;
        v:=',';
  end;

  minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as PF1CODNOV ';

  minstru:=minstru+v+IntToStr(codusr)+' as PF1CODUSR_EVE ';
  minstru:=minstru+v+' SYSDATE as PF1DATHOR';
  minstru:=minstru+v+IntTostr(ptipo)+' as PF1TIPEVE';

  if mOrigem_PF=4 then
     minstru:=minstru+v+chr(39)+'CORRECAO DE PEDIDO-LF'+chr(39)+' as PF1LOCAL_EVENTO'
  else if mOrigem_PF=8 then
     minstru:=minstru+v+chr(39)+'LIVRO DE ENTRADA'+chr(39)+' as PF1LOCAL_EVENTO'
  else
     minstru:=minstru+v+chr(39)+'NORMAL'+chr(39)+' as PF1LOCAL_EVENTO';


     minstru:=minstru+' from CADPF1 where PF1CODEMP=0'+Frm_PFor01_02.Qr_Pf01PF1CODEMP.AsString
                     +' and PF1LOTSEQ=0'+Frm_PFor01_02.Qr_Pf01PF1LOTSEQ.AsString
                     +' and PF1CHAVE=0'+Frm_PFor01_02.Qr_Pf01PF1CHAVE.AsString;
     DM1.Query1.Close;
     DM1.Query1.SQL.Clear;
     DM1.Query1.SQL.add(minstru);

     Try
       DM1.Query1.ExecSQL;
       fdm1StartCommit;
     except
       ex_erroSql(01,4027,'Frm_PFor01','CADPF1_OLD');
     end;

     minstru:='Insert into OLD_CADPF1V (';
     v:='';

     for x:=0 to DM1.Tb_PF1V.FieldCount-1 do begin
        if DM1.Tb_PF1V.Fields[x].FieldKind=fkCalculated then
           Continue;

        minstru:=minstru+v+DM1.Tb_PF1V.Fields[x].FieldName;
        v:=',';
     end;


     minstru:=minstru+',PF1VCODNOV) Select ';
     v:='';

     for x:=0 to DM1.Tb_PF1V.FieldCount-1 do begin
        if DM1.Tb_PF1V.Fields[x].FieldKind=fkCalculated then
           Continue;

        minstru:=minstru+v+DM1.Tb_PF1V.Fields[x].FieldName;
        v:=',';
     end;

     minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as PF1VCODNOV ';
     minstru:=minstru+' from CADPF1V where PF1VCODEMP=0'+Frm_PFor01_02.Qr_Pf01PF1CODEMP.AsString
                     +' and PF1VLOTSEQ=0'+Frm_PFor01_02.Qr_Pf01PF1LOTSEQ.AsString
                     +' and PF1VCHAVE=0'+Frm_PFor01_02.Qr_Pf01PF1CHAVE.AsString;
     DM1.Query1.Close;
     DM1.Query1.SQL.Clear;
     DM1.Query1.SQL.add(minstru);
     Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
     except
      ex_erroSql(01,3399,'Frm_PFor01','CADPF1V');
     end;

     minstru:='Insert into OLD_CADPF2 (';
     v:='';

     for x:=0 to DM1.Tb_Pf2.FieldCount-1 do begin
       if DM1.Tb_Pf2.Fields[x].FieldKind=fkCalculated then
          Continue;
       minstru:=minstru+v+DM1.Tb_Pf2.Fields[x].FieldName;
       v:=',';
     end;

     minstru:=minstru+',PF2CODNOV) Select ';
     v:='';

     for x:=0 to DM1.Tb_Pf2.FieldCount-1 do begin
        if DM1.Tb_Pf2.Fields[x].FieldKind=fkCalculated then
           Continue;

        minstru:=minstru+v+DM1.Tb_Pf2.Fields[x].FieldName;
        v:=',';
     end;

     minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as PF2CODNOV ';
     minstru:=minstru+' from CADPF2 where PF2CODEMP=0'+Frm_PFor01_02.Qr_Pf01PF1CODEMP.AsString
                     +' and PF2LOTSEQ=0'+Frm_PFor01_02.Qr_Pf01PF1LOTSEQ.AsString
                     +' and PF2CHAVE=0'+Frm_PFor01_02.Qr_Pf01PF1CHAVE.AsString;
     DM1.Query1.Close;
     DM1.Query1.SQL.Clear;
     DM1.Query1.SQL.add(minstru);

     try
       DM1.Query1.ExecSQL;
       fdm1StartCommit;
     except
       ex_erroSql(01,3433,'Frm_PFor01','CADPF2');
     end;
     result:=True;
end;

function fpf01tvlr(pvalor: Real): Boolean;
begin
  if pvalor>999999999 then begin
     Fmensagem('Valor não pode ser maior que 999999999',0,['0'],0);
     result:=False;
  end else if pvalor<0 then begin
     Fmensagem('Este Valor não pode ser Negativo!',0,['0'],0);
     result:=False;
  end else
     result:=True;
end;

procedure Tfrm_Pfor01_02.MDESCI01KeyPress(Sender: TObject; var Key: Char);
begin
   if key in ['.',','] then
      key := DecimalSeparator
   else if not (key in ['0'..'9']) and (key <> #8) then
      key := #0;
end;

procedure Tfrm_Pfor01_02.MDESCI02KeyPress(Sender: TObject; var Key: Char);
begin
   if key in ['.',','] then
      key := DecimalSeparator
   else if not (key in ['0'..'9']) and (key <> #8) then
      key := #0;
end;

procedure Tfrm_Pfor01_02.MDESCI03KeyPress(Sender: TObject; var Key: Char);
begin
   if key in ['.',','] then
      key := DecimalSeparator
   else if not (key in ['0'..'9']) and (key <> #8) then
      key := #0;
end;


function Tfrm_Pfor01_02.fpf01implaser(ptipo: Integer): Boolean;
var
  AExportFilter : TQRHTMLDocumentFilter;
var
  x : Integer;
begin
  {---Referente as Casas Decimais das Duplicatas---}
  Qr_DuplicatasVALOR.DisplayFormat      := mcasas;
  Qr_DuplicatasDESCFIN.DisplayFormat    := mcasas;
  Qr_DuplicatasVLROUT.DisplayFormat     := mcasas;
  Qr_DuplicatasDESCFINOUT.DisplayFormat := mcasas;

  {---Referente as Casas Decimais dos Itens do Pedido de Compra---}
  Qr_Pf01PF1TOTLIQ.DisplayFormat := mcasas;
  Qr_Pf01PF1DESC01.DisplayFormat := mcasas;
  Qr_Pf01PF1DESC02.DisplayFormat := mcasas;
  Qr_Pf01PF1DESC03.DisplayFormat := mcasas;
  Qr_PF02PF2DESC01.DisplayFormat := mcasas;
  Qr_PF02PF2DESC02.DisplayFormat := mcasas;
  Qr_PF02PF2DESC03.DisplayFormat := mcasas;
  Qr_PF02PF2VALDES.DisplayFormat := mcasas;

  Qr_PF02totbru.DisplayFormat := mcasas;
  Qr_PF02totliq.DisplayFormat := mcasas;

  Qr_PF02totdes.DisplayFormat := mcasas;
  Qr_PF02totbru.DisplayFormat := mcasas;
  Qr_PF02totliq.DisplayFormat := mcasas;
  Qr_PF02PF2QTDP.DisplayFormat:= mcasqtd;
  Qr_PF02PF2PU.DisplayFormat  := mcasaspu;

  if Qr_pfor01=nil then
     Application.CreateForm(TQr_PFor01, Qr_PFor01)
  else begin
     Qr_PFor01.Free;
     Qr_PFor01:=nil;
     Application.CreateForm(TQr_PFor01, Qr_PFor01)
  end;

  if Qr_Pf01PF1FRETEPC.Value=1 then
     Qr_PFor01.FRETE.Caption:=FormatFloat(mcasas, Qr_Pf01PF1PERCFRE.Value)+' (CIF)'
  else
     Qr_PFor01.FRETE.Caption:=FormatFloat(mcasas, Qr_Pf01PF1PERCFRE.Value)+' (FOB)';

  Qr_PFor01.QROBS.Lines.Clear;
  Qr_PFor01.QROBS.Lines.Add(Frm_PFor01_02.OBSERVACAO.Text);

  Qr_PFor01.tipov01.Caption:='';
  Qr_PFor01.tipov02.Caption:='';

  Qr_PFor01.prazo01.Caption:='';
  Qr_PFor01.prazo02.Caption:='';

  Qr_PFor01.datav01.Caption:='';
  Qr_PFor01.datav02.Caption:='';

  Qr_PFor01.desc01.Caption:='';
  Qr_PFor01.desc02.Caption:='';

  Qr_PFor01.enc01.Caption:='';
  Qr_PFor01.enc02.Caption:='';

  flcadusr(1,0,Qr_PF01PF1CODUSR.AsString);
  Qr_PFor01.NOMUSR.Caption:=DM4.Tb_UsrNOMUSR.Value;

  fLerPF2(0,codemp,pfor_lotseq,mchave_pf);
  Qr_PFor01.Src_PFor02.DataSet  := Qr_PF02;

  x:=1;
  Qr_Pf02.first;
  Qr_Pf01v.first;

  if Qr_Pf01v.RecordCount>6 then
     Qr_PFor01.tipov01.Caption:='Diversos'
  else begin
     While not Qr_Pf01V.Eof do begin
         if x=1 then begin
            Qr_PFor01.tipov01.Caption:='Data Opcional';
            Qr_PFor01.prazo01.Caption:=FloatTostr(Qr_Pf01VPF1VDATAV.Value-Qr_Pf01PF1DATA.Value);
            Qr_PFor01.datav01.Caption:=FormatDateTime(fdt2, Qr_Pf01VPF1VDATAV.Value);
            Qr_PFor01.desc01.Caption :=FormatFloat(mcasas, Qr_Pf01VPF1VDESCF.Value);
            Qr_PFor01.enc01.Caption  :=FormatFloat(mcasas, 0);
          end else if x=2 then begin
            Qr_PFor01.tipov02.Caption:='Data Opcional';
            Qr_PFor01.prazo02.Caption:=FloatTostr(Qr_Pf01VPF1VDATAV.Value-Qr_Pf01PF1DATA.Value);
            Qr_PFor01.datav02.Caption:=FormatDateTime(fdt2, Qr_Pf01VPF1VDATAV.Value);
            Qr_PFor01.desc02.Caption :=FormatFloat(mcasas, Qr_Pf01VPF1VDESCF.Value);
            Qr_PFor01.enc02.Caption  :=FormatFloat(mcasas, 0);
          end;{ else if x=3 then begin
            Qr_PFor01.tipov03.Caption:='Data Opcional';
            Qr_PFor01.prazo03.Caption:=FloatTostr(Qr_Pf01VPF1VDATAV.Value-Qr_Pf01PF1DATA.Value);
            Qr_PFor01.datav03.Caption:=FormatDateTime(fdt2, Qr_Pf01VPF1VDATAV.Value);
            Qr_PFor01.desc03.Caption :=FormatFloat(mcasas, Qr_Pf01VPF1VDESCF.Value);
            Qr_PFor01.enc03.Caption  :=FormatFloat(mcasas, 0);
          end else if x=4 then begin
            Qr_PFor01.tipov04.Caption:='Data Opcional';
            Qr_PFor01.prazo04.Caption:=FloatTostr(Qr_Pf01VPF1VDATAV.Value-Qr_Pf01PF1DATA.Value);
            Qr_PFor01.datav04.Caption:=FormatDateTime(fdt2, Qr_Pf01VPF1VDATAV.Value);
            Qr_PFor01.desc04.Caption :=FormatFloat(mcasas, Qr_Pf01VPF1VDESCF.Value);
            Qr_PFor01.enc04.Caption  :=FormatFloat(mcasas, 0);
          end else if x=5 then begin
            Qr_PFor01.tipov05.Caption:='Data Opcional';
            Qr_PFor01.prazo05.Caption:=FloatTostr(Qr_Pf01VPF1VDATAV.Value-Qr_Pf01PF1DATA.Value);
            Qr_PFor01.datav05.Caption:=FormatDateTime(fdt2, Qr_Pf01VPF1VDATAV.Value);
            Qr_PFor01.desc05.Caption :=FormatFloat(mcasas, Qr_Pf01VPF1VDESCF.Value);
            Qr_PFor01.enc05.Caption  :=FormatFloat(mcasas, 0);
          end else if x=6 then begin
            Qr_PFor01.tipov06.Caption:='Data Opcional';
            Qr_PFor01.prazo06.Caption:=FloatTostr(Qr_Pf01VPF1VDATAV.Value-Qr_Pf01PF1DATA.Value);
            Qr_PFor01.datav06.Caption:=FormatDateTime(fdt2, Qr_Pf01VPF1VDATAV.Value);
            Qr_PFor01.desc06.Caption :=FormatFloat(mcasas, Qr_Pf01VPF1VDESCF.Value);
            Qr_PFor01.enc06.Caption  :=FormatFloat(mcasas, 0);
          end; }
          Qr_Pf01V.Next;
          x:=x+1;
      end;
  end;
  Qr_PFor01.endereco.Caption:=Trim(DM1.Tb_EmpENDERECO.Value)+' '+Trim(DM1.Tb_EmpBAIRRO.Value);
  Qr_PFor01.cidade.Caption  :=Trim(DM1.Tb_EmpCIDADE.Value)+'-'+Trim(DM1.Tb_EmpUF.Value);
  Qr_PFor01.CHAVE.Caption   :=FormatDateTime('mmdd',Qr_Pf01PF1DATA.Value)+'.'+FormatDateTime('yyyy',Qr_Pf01PF1DATA.Value)
                           +'/'+Qr_Pf01PF1CHAVE.AsString;
  DM4.Tb_LogoSis.Close;
  DM4.Tb_LogoSis.SQL.Clear;
  DM4.Tb_LogoSis.Sql.add('Select * from CADLOGSIS '
                        +' where LSCHAVE='+chr(39)+'LOGO1'+chr(39));
  if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
     DM4.Tb_LogoSis.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                           +' or LSCODEMP is null )');

  DM4.Tb_LogoSis.Open;

  if not DM4.Tb_LogoSis.Eof then begin
     if not (DM4.Tb_LogoSisLSLOGO.IsNull)  and  (DM4.Tb_LogoSisLSLOGO.Value<>'') then
        DM4.Tb_LogoSisLSLOGO.SaveToFile('C:\SGE\LOGO1.JPG');
  end;

  if FileExists(DM1.Tb_PargerPCAMINHO.Value+'LOGO1.JPG') then begin
     Qr_PFor01.QR_IMGLOGO.Picture.LoadFromFile(DM1.Tb_PargerPCAMINHO.Value+'LOGO1.JPG');
     Qr_PFor01.QR_IMGLOGO.Enabled:=True;
  end else begin
     Qr_PFor01.QR_IMGLOGO.Enabled:=False;
     mcinst:='para que seja impresso o logotipo da empresa é necessário que'+#13
           +'o mesmo esteja gravado em jpg na pasta '+DM1.Tb_PargerPCAMINHO.Value+#13
           +'com o nome de LOGO1.JPG, deseja sair para fazer isso agora?';

     if fmensagem(mcinst,0,['1','2'],2)=mrYes then begin
        Qr_PFor01.Free;
        exit;
     end;
  end;

  verteclado(0);
  Qr_PFor01.modelo01.Preview;
  Qr_PFor01.Free;
  Qr_PFor01:=Nil;
  result:=true;
end;

function Tfrm_Pfor01_02.fpf01imphtml(ptipo: Integer): Boolean;
var
  f : TextFile;
  mcomando,mnome: String;
begin
  mnome:='C:\teste.html';
  AssignFile(F,mnome);
  ReWrite(F);
  Writeln(F,'<HTML>');
  Writeln(F,'<HEAD><TITLE>'+DM1.Tb_EmpFANTASIA.Value+'</TITLE></HEAD>');
  WriteLn(f,'<BODY BGCOLOR="#FFFF80">');
  Writeln(F,'<CENTER>');
  WriteLn(F,'<FONT FACE="Arial" COLOR="#80FF80" SIZE="7">'+DM1.Tb_EmpFANTASIA.Value+'</FONT><BR>');
  WriteLn(F,'<FONT FACE="Arial" COLOR="#80FF80" SIZE="4">'+DM1.Tb_EmpRAZAO.Value+'</FONT><BR>');
  WriteLn(F,'<FONT FACE="Arial" COLOR="#80FF80" SIZE="4">'+DM1.Tb_EmpENDERECO.Value+' '+DM1.Tb_EmpBAIRRO.Value+'</FONT><BR>');
  WriteLn(F,'<FONT FACE="Arial" COLOR="#80FF80" SIZE="4">Fone/Fax: '+DM1.Tb_EmpFONE.Value+'</FONT><BR>');
  WriteLn(F,'<FONT FACE="Arial" COLOR="#80FF80" SIZE="4">Fone/Fax: '+DM1.Tb_EmpE_MAIL.Value+'</FONT><BR>');
  WriteLn(F,'<FONT FACE="Arial" COLOR="#80FF80" SIZE="4"></FONT><BR>');
  WriteLn(F,'</CENTER>');
  WriteLn(F,'<P>');

  WriteLn(F,'<TD WIDTH="200%"><FONT FACE="Arial" COLOR="#080000" SIZE="2"><B>Dados do Comprador                                                     Dados da Ordem de Compra</B></FONT></TD>');
  WriteLn(F,'</TR>');
  WriteLn(F,'<TR>');


  WriteLn(F,'<TABLE BORDER="1" BGCOLOR="#FFFF80">');
  WriteLn(F,'<TR>');

{
Descricao                                Preco Assumed  Preco Farmacia % Dif.
1234567890123456789012345678901234567890 ZZZ.ZZZ.ZZ9,99 ZZZ.ZZZ.ZZ9,99 ZZZ.ZZ%
}
  WriteLn(F,'<FONT FACE="Arial" COLOR="#080000" SIZE="2"><P>');
  WriteLn(F,'</FONT>');
  WriteLn(F,'</BODY>');
  WriteLn(F,'</HTML>');
  Closefile(f);
  mcomando:=PCHAR(mnome);
  ShellExecute(handle, 'open', pchar(mcomando), nil, nil, SW_SHOWNORMAL);
end;

function Tfrm_Pfor01_02.fpf01imprime(ptipo: Integer): Boolean;
var
mqtdp    :Real;
mqtdb    :Real;
mv1      :Real;
mtotdesc :Real;
mtotliq  :Real;
mcodpro: String;

begin
testeform := Tfrm_Pfor01_02(FindGlobalComponent('Form_Impres_mFor01_02'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, Form_Impres_mFor01_02);

Form_Impres_mFor01_02.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
Form_Impres_mFor01_02.mlin:=1;
Form_Impres_mFor01_02.mpag:=1;
Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,insere2(DM1.Tb_EmpRAZAO.Value,' ',40)+Centra('** O R D E M    D E    C O M P R A **'+' Data '+FormatDateTime(fdt2,Qr_Pf01PF1DATA.Value),' ',80)+ 'Pag.: '+FormatFloat('0000',Form_Impres_mFor01_02.mpag),mreduz);
Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,Insere('=','=',131),mreduz);
Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,Insere2('Dados do Fornecedor',' ',69)+'Dados da Ordem de Compra',mreduz);
Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,Insere2('+','-',63)+'+'+'     '+Insere2('+','-',61)+'+',mreduz);
Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,'| Codigo.........: '
                        +FormatFloat('000000',Qr_Pf01PF1CODFOR.Value)
                        +Insere2('     Telefone: '+DM1.Tb_ForFFONEC01.Value,' ',38)+'|     '
                        +'| Numero do Pedido...: '
                        +Insere2(FormatFloat('000000',Qr_Pf01PF1CHAVE.Value),' ',38)+'|',mreduz);
Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,'| Nome...........: '
                  +Insere2(DM1.Tb_ForFRAZAO.Value,' ',44)+'|     '
                  +'| Valor do Pedido....: '
                  +Insere2(Insere(FormatFloat('#,##0.00',Qr_Pf01PF1TOTLIQ.Value),' ',15),' ',38)+'|',mreduz);
Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
mcinst2:='| Endereco.......: '
                  +Insere2(DM1.Tb_ForFNLOG.Value,' ',44)+'|     '
                  +'| Data Prevista para Faturamento..: ';
mcinst2:=mcinst2+Qr_Pf01dtpfat.Value;
mcinst2:=mcinst2+insere(' ',' ',15);

Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,mcinst2+'|',mreduz);
Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;

mcinst2:='| Bairro.........: '
                  +Insere2(DM1.Tb_ForFBAIRRO.Value,' ',44)+'|     '
                  +'| Data Prevista para Entrega......: ';
mcinst2:=mcinst2+Qr_Pf01dtpent.Value;
mcinst2:=mcinst2+insere(' ',' ',15);
Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,mcinst2+'|',mreduz);
Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;

Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,'| Cidade.........: '
                  +Insere2(DM1.Tb_ForFCIDADE.Value,' ',44)+'|     '
                  +'| Frete (CIF / FOB): '+Insere2(Insere(FormatFloat('#,##0.000',Qr_Pf01PF1PERCFRE.Value)+'%',' ',10)+iif(Qr_Pf01PF1FRETEPC.Value=1,'(FOB)','(CIF)'),' ',40)+'|',mreduz);
Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,'| C.N.P.J........: '
                  +FormatFloat('00"."000"."000/0000-00',ValFloat(DM1.Tb_ForFCGC.AsString))
                  +'   CEP....: '+Insere2(DM1.Tb_ForFCEP.Value,' ',14)+'|     '
                  +'| Observacao......: '+Insere2(Qr_Pf01PF1OBS.Value,' ',41)+'|',mreduz);
Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,'| Insc. Estadual.: '
                  +Insere2(DM1.Tb_ForFIE.Value,' ',44)+'|     '
                  +'| Funcionario.....: '+Insere2(FormatFloat('000000',Qr_Pf01PF1CODUSR.Value),' ',41)+'|',mreduz);
Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,'| Representante..: '
                  +Insere2(DM1.Tb_ForFCONT01.Value,' ',44)+'|     |'
                  +Insere('|',' ',61),mreduz);
Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,'| Telefone.......: '
                  +Insere2(DM1.Tb_ForFCONT01.Value,' ',44)+'|     '
                  +'| Transportadora..: '+Insere2(FormatFloat('00000', Qr_Pf01PF1CODTRA.Value)+'-'+NOMTRA.Text,' ',40)+'|' ,mreduz);
Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,'                   '
                  +Insere2(' ',' ',44)+'      '
                  +'                    '+Insere2(FormatFloat('00000', Qr_Pf01PF1CODTRA.Value)+'-'+NOMTRA.Text,' ',40)+'|' ,mreduz);

Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,Insere2('+','-',63)+'+'+'     '+Insere2('+','-',61)+'+',mreduz);
Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,'Dados Financeiros',mreduz);
Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,'+-------------------------+--------+----------+----------+----------+',mreduz);
Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,'| Tipo de Vencimento      | Prazos |   Data   |  %Desc.  | %Encarg. |',mreduz);
Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,'+-------------------------+--------+----------+----------+----------+',mreduz);
Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,'| Data Opcional           |',mreduz);
Qr_Pf01V.First;
While not Qr_Pf01V.Eof do
   begin
   Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,'| Data Opcional           |'+Insere(FloatToStr(Qr_Pf01VPF1VDATAV.Value-Qr_Pf01PF1DATA.Value),' ',7)+' | '
                  +FormatDateTime('dd/mm/yy',Qr_Pf01VPF1VDATAV.Value)
                  +' |'+Insere(FormatFloat('#,##0.000',0),' ',9)
                  +' |          |',mreduz);
   Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
   Qr_Pf01V.Next;
   end;
Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,'|                         |        |          |          |          |',mreduz);
Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,'+-------------------------+--------+----------+----------+----------+',mreduz);
Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,Insere('=','=',131),mreduz);
Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+2;
Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,'                                                                    -----Descontos-----   Repasse',mreduz);
Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
//Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,'Descricao do Produto               Codigo Und Qtd.Ped. Pc.Unitario   Fixo    Adicionais   de ICMS  Bon.  Total Bruto  Total Liquido',mreduz);

Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,'Codigo     Qtd.Ped. Und Descricao do Produto           Pc.Unitario   Fixo    Adicionais   de ICMS  Bon.  Total Bruto  Total Liquido',mreduz);


Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,Insere('=','=',131),mreduz);
Qr_PF02.First;
mqtdp    :=0;
mqtdb    :=0;
mv1      :=0;
mtotdesc :=0;
mtotliq  :=0;

While not Qr_Pf02.Eof do
   begin
   Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
   mqtdp:=mqtdp+Qr_PF02PF2QTDP.Value;
   mqtdb:=mqtdb+0;
   //
   mv1:=Qr_PF02PF2QTDP.Value*Qr_PF02PF2PU.Value;
   mtotdesc := (mv1*Qr_PF02PF2DESC01.Value/100);
   mv1:=mv1-mtotdesc;
   mtotdesc := (mv1*Qr_PF02PF2DESC02.Value/100);
   mv1:=mv1-mtotdesc;
   mtotdesc := (mv1*Qr_PF02PF2DESC03.Value/100);
   mtotdesc := mtotdesc + Qr_PF02PF2VALDES.Value;
   mv1:=mv1-mtotdesc;
//   mtotdesc := (mv1*Qr_Pf02pf2 DM4.Tb_PF2PF2REPAS.Value/100);
//         mv1:=mv1-mtotdesc;
   mtotliq:=mv1;
         //
   flqr1('PDUND','PD','CADPRO','N','PDCODPRO',Qr_PF02PF2CODPRO.AsString);
   if ValInt(copy(mpseg,4,2))=2 then
      mcodpro:=Qr_PF02PF2CODPRO.AsString+'/'+Trim(Qr_PF02PF2LOTE.Value)
   else
      mcodpro:=Formatfloat('000000', Qr_PF02PF2CODPRO.Value);



   Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,insere2(mcodpro,' ',12)+' '
            +Insere(FormatFloat(pf01_casqtd,Qr_PF02PF2QTDP.Value),' ',8)
            +' '+Insere2(DM1.Query1.Fields[1].AsString,' ',4)
            +    Insere2(Qr_PF02PF2NOMPRO.AsString,' ',30)
            +    Insere(FormatFloat(pf01_caspu,Qr_PF02PF2PU.Value),' ',12)
            +' '+Insere(FormatFloat(mcasas,Qr_PF02PF2DESC01.Value),' ',6)
            +' '+Insere(FormatFloat(mcasas,Qr_PF02PF2DESC02.Value),' ',6)
            +' '+Insere(FormatFloat(mcasas,Qr_PF02PF2VALDES.Value),' ',6)
            +' '+Insere(FormatFloat(mcasas,0),' ',9) // repasse
            +' '+Insere(FormatFloat(mcasas,0),' ',5) // quantidade bonificada
            +Insere(FormatFloat(mcasas,Qr_PF02PF2PU.Value*Qr_PF02PF2QTDP.Value),' ',13)
            +Insere(FormatFloat(mcasas,mtotliq),' ',15),mreduz);   // .
    If Form_Impres_mFor01_02.mlin>=58 then
       begin
       Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
       Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,'Continua...',mreduz);
       Form_Impres_mFor01_02.mlin:=1;
       Form_Impres_mFor01_02.RDprint1.Novapagina;
       Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,'Continuação...',mreduz);
       Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
       end;
    Qr_PF02.Next;
    end;
Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
If Form_Impres_mFor01_02.mlin>=56 then
   begin
   Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,'Continua...',mreduz);
   Form_Impres_mFor01_02.mlin:=1;
   Form_Impres_mFor01_02.RDprint1.Novapagina;
   Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,'Continuação...',mreduz);
   Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
   end;
Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,'Total:'
//'       T o t a l    d o    P e d i d o '
// 123456789012345678901234567890123456789
         +Insere(FormatFloat(mcasqtd,mqtdp),' ',15)
         +insere2(' ',' ',33)
         +Insere(FormatFloat(mcasqtd,mqtdb),' ',49)
         +Insere(FormatFloat(mcasas,Qr_Pf01PF1TOTBRU.Value),' ',13)
         +Insere(FormatFloat(mcasas,Qr_Pf01PF1TOTLIQ.Value),' ',15),mreduz);
Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+3;
Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,'--------------------------------------          -------------------------------------',mreduz);
Form_Impres_mFor01_02.mlin:=Form_Impres_mFor01_02.mlin+1;
Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,'       Assinatura do Fornecedor                 '+Centra(DM1.Tb_EmpRAZAO.Value,' ',37),mreduz);
//Form_Impres_mFor01_02.RDprint1.ImpF(Form_Impres_mFor01_02.mlin,01,'       Assinatura do Fornecedor                        Assinatura do Comprador',mreduz);

if Form_Impres_mFor01_02.RDprint1.Setup then Form_Impres_mFor01_02.RDprint1.Fechar;
Form_Impres_mFor01_02.free;
Form_Impres_mFor01_02:=nil;
result:=true;
end;

procedure Tfrm_Pfor01_02.LOTEExit(Sender: TObject);
var
  x : Integer;
begin
  if Length(LOTE.Text)>20 then
     lote.Text:=copy(LOTE.text,1,20);
  if StrToInt('0'+copy(mpseg,4,2))=02 then begin // grade cores tamanho
     if not flcadlgc(0,1,0,CODPRO.Text,lote.Text,'') then begin
        if fmensagem('Grade não encontrada. Posso incluir?',0,['1','2'],2)=mrYes then begin
           DM1.Tb_LGC.Insert;
           DM1.Tb_LGCCLCODPRO.Value:=dm1.Tb_ProPDCODPRO.Value;
           DM1.Tb_LGCCLNUMERO.Value:=LOTE.Text;
           DM1.Tb_LGCCLQTD.Value   :=0;
           DM1.Tb_LGC.Post;
           flcadlgc(0,1,0,CODPRO.Text,lote.Text,'')
        end else begin
           CODPRO.SetFocus;
           Exit
        end;
     end;
  end else begin
     DATAV.Enabled := True;
     DATAV.SetFocus;
     Exit;
  end;
end;
{begin
   if Trim(Lote.Text) <> '' then begin
      DATAV.Enabled := True;
      DATAV.SetFocus;
   end else begin
      DATAV.Enabled := False;
   end;
end;}

procedure Tfrm_Pfor01_02.LOTEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if (key=113) and (ValFloat(CODPRO.Text)>0) then begin
      if Frm_UltCPR=nil then
         Application.CreateForm(TFrm_UltCPR, Frm_UltCPR)
      else begin
         Frm_UltCPR.Free;
         Frm_UltCPR:=nil;
         Application.CreateForm(TFrm_UltCPR, Frm_UltCPR);
      end;

      Frm_UltCPR.ShowModal;
      Frm_UltCPR.Free;
      Frm_UltCPR:=nil;
   end;
end;

procedure Tfrm_Pfor01_02.LOTEKeyPress(Sender: TObject; var Key: Char);
begin
   if Length(LOTE.Text)>19 then begin
      Fmensagem('Número do lote não pode ter mas que 20 digitos!',0,['0'],0);
      key:=#0;
   end;
end;

procedure Tfrm_Pfor01_02.DATAVExit(Sender: TObject);
begin
   if Trim(DATAV.Text)<>'/  /' then begin
      Try
        DATAV.Text:=FormatDateTime(fdt2, StrtoDate(DATAV.Text));
      except
        Fmensagem('Data invalida!',0,['0'],0);
        DATAV.SetFocus;
        exit;
      end;

      if DM1.Tb_PargerPQTDDIAV.Value>0 then begin
         if Date+DM1.Tb_PargerPQTDDIAV.AsInteger>=StrtoDate(DATAV.Text) then begin
            fmensagem('Produto com vencimento até '+FormatDatetime(fdt2, date+DM1.Tb_PargerPQTDDIAV.AsInteger),
                      0,['0'],0);
         end;
      end;
   end;
end;

procedure Tfrm_Pfor01_02.DATAVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (key=113) and (ValFloat(CODPRO.Text)>0) then begin
      if Frm_UltCPR=nil then
         Application.CreateForm(TFrm_UltCPR, Frm_UltCPR)
      else begin
         Frm_UltCPR.Free;
         Frm_UltCPR:=nil;
         Application.CreateForm(TFrm_UltCPR, Frm_UltCPR);
      end;

      Frm_UltCPR.ShowModal;
      Frm_UltCPR.Free;
      Frm_UltCPR:=nil;
   end;
end;

procedure Tfrm_Pfor01_02.QTDExit(Sender: TObject);
begin
   QTD.Text := FormatFloat(pf01_casqtd,ValFloat(QTD.Text));

   if (valfloat(QTD.Text) <= 0) AND (PCOUNI.Focused)  then begin
      Fmensagem('Favor Digitar uma Quantidade Valida!',0,['0'],0);
      QTD.SetFocus;
      exit;
   end;

   if (DM1.Tb_ProPDFRACAO.Value <> 1) and (mcasqtd <> '0') then begin
      if Round(ValFloat(QTD.Text)) <> ValFloat(QTD.Text) then begin
         Fmensagem('Não é permitido fracionar este produto!',0,['0'],0);
         QTD.SetFocus;
         exit;
      end;
   end;

   TOTALI.Text:=FormatFloat(mcasas,Valfloat(PCOUNI.Text)*ValFloat(QTD.Text));

   if not fpf01tvlr(ValFloat(QTD.Text)) then
      QTD.SetFocus;
end;

procedure Tfrm_Pfor01_02.PCOUNIKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (key = 113) and (ValFloat(CODPRO.Text) > 0) then begin
      if Frm_UltCPR = nil then
         Application.CreateForm(TFrm_UltCPR, Frm_UltCPR)
      else begin
         Frm_UltCPR.Free;
         Frm_UltCPR:=nil;
         Application.CreateForm(TFrm_UltCPR, Frm_UltCPR);
      end;

      Frm_UltCPR.ShowModal;
      Frm_UltCPR.Free;
      Frm_UltCPR:=nil;
   end;
end;

procedure Tfrm_Pfor01_02.QTDKeyPress(Sender: TObject; var Key: Char);
begin
   if key in ['.',','] then
      key := DecimalSeparator
   else if not (key in ['0'..'9']) and (key <> #8) then
      key := #0;
end;

procedure Tfrm_Pfor01_02.GridDblClick(Sender: TObject);
begin
   if (not btn_incluir.Enabled) and (not btn_alterar.Enabled) then begin
      CODPRO.Text     := FloatToStr(Qr_ItensCODPRO.Value);
      LOTE.Text       := Qr_ItensLOTE.AsString;
      DATAV.Text      := Qr_ItensDATAV.AsString;
      NOMPRO.Text     := Qr_ItensNOMPRO.AsString;
      UND.Text        := Qr_ItensUND.AsString;
      QTD.Text        := FormatFloat(pf01_casqtd,Qr_ItensQTD.Value);
      PCOUNI.Text     := FormatFloat(mcasas,Qr_ItensPCOUNI.Value);
      SITTRI.Text     := Qr_ItensSITTRI.AsString;
      CFOP.Text       := Qr_ItensCFOP.AsString;
      ALICMS.Text     := FormatFloat(mcasas,Qr_ItensALICMS.Value);
      PREDICMNOR.Text := FormatFloat(mcasas,Qr_ItensPREDICMNOR.Value);
      ALIPI.Text      := FormatFloat(mcasas,Qr_ItensALIPI.Value);
      LISTA.Text      := Qr_ItensLISTA.AsString;
      MDESCI01.Text   := FormatFloat(mcasas,Qr_ItensDESC01.Value);
      MDESCI02.Text   := FormatFloat(mcasas,Qr_ItensDESC02.Value);
      MDESCI03.Text   := FormatFloat(mcasas,Qr_ItensDESC03.Value);
      TOTALI.Text     := FormatFloat(mcasas,Qr_ItensTOTALI.Value);
      CODPRO.SetFocus;
   end;
end;

procedure Tfrm_Pfor01_02.FormKeyDown(Sender: TObject; var Key: Word;
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
         if Form_SelEmp.WindowState=wsMinimized then
            Form_SelEmp.WindowState:=wsNormal
         else
            Form_SelEmp.Show;
         end;
      end;
   end;

end;

end.
