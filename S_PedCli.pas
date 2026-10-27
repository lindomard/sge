unit S_PedCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Mask, StdCtrls, Buttons, Grids, DBGrids, DBCtrls, DB,
  DBTables,S_DM1,func,lerarq, ComCtrls,func2,S_Tra,S_InfPed,S_Ven,S_LucroPed,
  RLReport,S_DM2, RLFilters, RLDraftFilter,S_Info, RLXLSFilter,
  RLPDFFilter, RLHTMLFilter, RLRichFilter, S_NFE, CheckLst,S_SelEmp,Printers,
  RxMemDS, Spin, ADODB,dateutils;

type
  TFrm_PedCli = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Src_Ped: TDataSource;
    Tb_Ped: TQuery;
    Tb_PedP1CODEMP: TFloatField;
    Tb_PedP1CHAVE: TFloatField;
    Tb_PedP1ORDEM: TFloatField;
    Tb_PedP1DATAP: TDateTimeField;
    Tb_PedP1TIPO: TFloatField;
    Tb_PedP1DATDOC: TDateTimeField;
    Tb_PedP1CODCLI: TFloatField;
    Tb_PedP1CODVEN: TFloatField;
    Tb_PedP1ORIGEM: TFloatField;
    Tb_PedP1CODTRA: TFloatField;
    Tb_PedP1DATANF: TDateTimeField;
    Tb_PedP1NUMNF: TFloatField;
    Tb_PedP1STATUS: TFloatField;
    Tb_PedP1TOTALB: TFloatField;
    Tb_PedP1TOTALL: TFloatField;
    Tb_PedP1CODUSR: TFloatField;
    Tb_PedP1HORADIG: TStringField;
    Tb_PedP1DTMOD: TDateTimeField;
    Tb_PedP1HRMOD: TStringField;
    Tb_PedP1USRMOD: TFloatField;
    Tb_PedP1CONF: TStringField;
    Tb_PedP1CODCON: TFloatField;
    Tb_PedP1DATCON: TDateTimeField;
    Tb_PedP1HORCON: TStringField;
    Tb_PedP1EMIDOC: TFloatField;
    Tb_PedP1TIPENT: TFloatField;
    Tb_PedP1PREVENT: TDateTimeField;
    Tb_PedP1HPREVENT: TStringField;
    Tb_PedP1CODENT: TFloatField;
    Tb_PedP1DATENT: TDateTimeField;
    Tb_PedP1HORENT: TStringField;
    Tb_PedP1CUPOM: TFloatField;
    Tb_PedP1TOTDES: TFloatField;
    Tb_PedP1QTDVOL: TFloatField;
    Tb_PedP1PESOL: TFloatField;
    Tb_PedP1PESOB: TFloatField;
    Tb_PedP1BANCO: TFloatField;
    Tb_PedP1CODTLV: TFloatField;
    Tb_PedP1ETIVOL: TFloatField;
    Tb_PedP1NUMCF: TFloatField;
    Tb_PedP1CODECF: TFloatField;
    Tb_PedP1DATACF: TDateTimeField;
    Tb_PedP1CODSEP: TFloatField;
    Tb_PedP1DATASEP: TDateTimeField;
    Tb_PedP1HORSEP: TStringField;
    Tb_PedP1CODEMB: TFloatField;
    Tb_PedP1DATAEMB: TDateTimeField;
    Tb_PedP1HOREMB: TStringField;
    Tb_PedP1ACRECONV: TFloatField;
    Tb_PedP1ACREGER: TFloatField;
    Tb_PedP1PACRECONV: TFloatField;
    Tb_PedP1PACREGER: TFloatField;
    Tb_PedCRAZAO: TStringField;
    pc_rodape: TPageControl;
    TabSheet1: TTabSheet;
    DBEdit13: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit15: TDBEdit;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Tb_PedP1ESPECIE: TStringField;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    Tb_PedP1MINUTA: TFloatField;
    Tb_Pednomdig: TStringField;
    Tb_Pednomalt: TStringField;
    Tb_Pednomsep: TStringField;
    Tb_Pednomcon: TStringField;
    Tb_Pednomemb: TStringField;
    Tb_Peddatalt: TStringField;
    Tb_Peddatsep: TStringField;
    Tb_Peddatcon: TStringField;
    Tb_Peddatemb: TStringField;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    Tb_Pednomtra: TStringField;
    DBEdit35: TDBEdit;
    Tb_Peddatanf: TStringField;
    Tb_Peddatacf: TStringField;
    Tb_Pedemitiuls: TIntegerField;
    Tb_Peddatpent: TStringField;
    Tb_Peddatent: TStringField;
    Tb_Pedtipo: TStringField;
    Tb_Peddatdoc: TStringField;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Tb_Pednomven: TStringField;
    Tb_PedP1FORMACE: TFloatField;
    Tab_Mer: TTabSheet;
    Tb_Ped02: TQuery;
    Tb_Ped02P2CODEMP: TFloatField;
    Tb_Ped02P2CHAVE: TFloatField;
    Tb_Ped02P2ORDEM: TFloatField;
    Tb_Ped02P2ITEM: TFloatField;
    Tb_Ped02P2CODPRO: TFloatField;
    Tb_Ped02P2QTD: TFloatField;
    Tb_Ped02P2LOTE: TStringField;
    Tb_Ped02P2DTVCTO: TDateTimeField;
    Tb_Ped02P2DESC1: TFloatField;
    Tb_Ped02P2DESC2: TFloatField;
    Tb_Ped02P2VALDES: TFloatField;
    Tb_Ped02P2PRECO: TFloatField;
    Tb_Ped02P2BASEN: TFloatField;
    Tb_Ped02P2ICMSN: TFloatField;
    Tb_Ped02P2BASER: TFloatField;
    Tb_Ped02P2ICMSR: TFloatField;
    Tb_Ped02P2LISTA: TFloatField;
    Tb_Ped02P2TOTDES: TFloatField;
    Tb_Ped02P2ALIQ: TFloatField;
    Tb_Ped02P2VCOMIS: TFloatField;
    Tb_Ped02P2CFO: TFloatField;
    Tb_Ped02P2TOTLIQ: TFloatField;
    Tb_Ped02P2ACRECONV: TFloatField;
    Tb_Ped02P2ACREGER: TFloatField;
    Tb_Ped02dtvcto: TStringField;
    Src_Ped02: TDataSource;
    Tb_PedP1LOTSEQ: TFloatField;
    Tb_Ped02PDNOME: TStringField;
    Tb_Ped02PDMARCA: TStringField;
    Tb_Ped02PDUND: TStringField;
    DBGrid2: TDBGrid;
    Tb_Pedvalpag: TFloatField;
    Tb_Peddesc: TFloatField;
    Tb_Pedjuros: TFloatField;
    Tb_Pedapagar: TFloatField;
    Tab_Ser: TTabSheet;
    Tb_Ped02S: TQuery;
    DBGrid3: TDBGrid;
    Tb_Ped02SP2SCODEMP: TFloatField;
    Tb_Ped02SP2SCHAVE: TFloatField;
    Tb_Ped02SP2SORDEM: TFloatField;
    Tb_Ped02SP2SITEM: TFloatField;
    Tb_Ped02SP2SCODPRO: TFloatField;
    Tb_Ped02SP2SQTD: TFloatField;
    Tb_Ped02SP2SDESC1: TFloatField;
    Tb_Ped02SP2SDESC2: TFloatField;
    Tb_Ped02SP2SVALDES: TFloatField;
    Tb_Ped02SP2SPRECO: TFloatField;
    Tb_Ped02SP2SSIT: TStringField;
    Tb_Ped02SP2SBCISSQN: TFloatField;
    Tb_Ped02SP2SVISSQN: TFloatField;
    Tb_Ped02SP2SLISTA: TFloatField;
    Tb_Ped02SP2STOTDES: TFloatField;
    Tb_Ped02SP2SALIQ: TFloatField;
    Tb_Ped02SP2SVCOMIS: TFloatField;
    Tb_Ped02SP2SCFO: TFloatField;
    Tb_Ped02SPDNOME: TStringField;
    Tb_Ped02SPDMARCA: TStringField;
    Tb_Ped02SPDUND: TStringField;
    Tb_Ped02Stotal: TFloatField;
    Src_Ped02S: TDataSource;
    pc_cabecalho: TPageControl;
    ts_filtros: TTabSheet;
    Label1: TLabel;
    CODCLI: TEdit;
    NOMCLI: TEdit;
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    RG_FILTRO: TRadioGroup;
    ts_outros: TTabSheet;
    chavedopedido: TLabel;
    CHAVE: TEdit;
    ordempedido: TLabel;
    edt_npedori: TEdit;
    Label35: TLabel;
    PROCESSO: TEdit;
    Label34: TLabel;
    OBS1: TEdit;
    Label36: TLabel;
    NUMNF: TEdit;
    Label37: TLabel;
    NUMCF: TEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    StaticText20: TStaticText;
    StaticText21: TStaticText;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    StaticText24: TStaticText;
    StaticText25: TStaticText;
    Panel_cab: TPanel;
    bbAtualizar: TBitBtn;
    NOMTRA: TEdit;
    CODTRA: TEdit;
    Label38: TLabel;
    Label39: TLabel;
    CODVEN: TEdit;
    NOMVEN: TEdit;
    U_Ped: TUpdateSQL;
    Tb_PedOK: TStringField;
    bbCusMer: TBitBtn;
    Tb_Pedrazsoc: TStringField;
    ts_conhecimento: TTabSheet;
    dbg_conhec: TDBGrid;
    Tb_Ped02P2LOTSEQ: TFloatField;
    Tb_Ped02SP2SLOTSEQ: TFloatField;
    Tb_Ped02P2QTD_ENTREGUE: TFloatField;
    Tb_Ped02P2QTD_ENTREGANDO: TFloatField;
    Tb_Ped02P2QTDDEV: TFloatField;
    StaticText26: TStaticText;
    DBEdit39: TDBEdit;
    bbInfoMin: TBitBtn;
    tsRelatorio: TTabSheet;
    RLReport1: TRLReport;
    RLcabemp: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    rlobs: TRLMemo;
    RLBand1: TRLBand;
    RLLabel12: TRLLabel;
    RLcabcli: TRLBand;
    RLLabel1: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel2: TRLLabel;
    RLcnpjcpf: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLLabel13: TRLLabel;
    RLDBText17: TRLDBText;
    RLLabel16: TRLLabel;
    RLDBText23: TRLDBText;
    RLLabel17: TRLLabel;
    RLDBText24: TRLDBText;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLcabCodpro: TRLLabel;
    RLCabQtd: TRLLabel;
    RLCabUnd: TRLLabel;
    RLCabNome: TRLLabel;
    RLCabMarca: TRLLabel;
    RLCabPU: TRLLabel;
    rlcablote: TRLLabel;
    rlcabdtvcto: TRLLabel;
    RLCabTotal: TRLLabel;
    RLdet_itens: TRLBand;
    RLdetCodpro: TRLDBText;
    RLdetQtd: TRLDBText;
    RLdetUnd: TRLDBText;
    RLdetNome: TRLDBText;
    RLdetMarca: TRLDBText;
    RLdetPU: TRLDBText;
    RLdetTotal: TRLDBText;
    RLdet_impostos: TRLBand;
    RLCabdesc: TRLLabel;
    RLdetdesc: TRLLabel;
    CB_DETPED: TCheckBox;
    Tb_Ped02P2DESC3: TFloatField;
    Tb_Ped02P2CODAGRU: TFloatField;
    Tb_Ped02P2CONSIG: TFloatField;
    Tb_Ped02P2AMBIENTE: TStringField;
    Matricial: TRLDraftFilter;
    RLLabel14: TRLLabel;
    RLDB_numnf: TRLDBText;
    RLLabel15: TRLLabel;
    RLDBText16: TRLDBText;
    RLDBText18: TRLDBText;
    sbInfo: TSpeedButton;
    Tb_Pedprazos: TStringField;
    StaticText27: TStaticText;
    DBEdit40: TDBEdit;
    RLdet_comissoes: TRLBand;
    rl_dados_comissoes: TRLLabel;
    CB_DETCOMIS: TCheckBox;
    Tb_PedCCIDADE: TStringField;
    Tb_PedCUF: TStringField;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    lbl_lotseq: TLabel;
    MLOTSEQ: TEdit;
    obs_lotseq: TLabel;
    StaticText28: TStaticText;
    Tb_Peddadosrec: TStringField;
    Tb_PedP1NOMEREC: TStringField;
    Tb_PedP1DATHORREC: TDateTimeField;
    DBEdit41: TDBEdit;
    Label5: TLabel;
    MCODORI: TEdit;
    MNOMORI: TEdit;
    CB_VLTOTALLIQ: TCheckBox;
    RLSubDetail2_servicos: TRLSubDetail;
    RLBand4: TRLBand;
    RLLabel25: TRLLabel;
    RLBand5: TRLBand;
    RLdetSerNome: TRLDBText;
    RLBand3: TRLBand;
    lbl_baseicms: TRLLabel;
    lbl_icms: TRLLabel;
    lbl_baseicmsst: TRLLabel;
    lbl_icmsst: TRLLabel;
    lbl_totbru: TRLLabel;
    lbl_nomfre: TRLLabel;
    lbl_valfre: TRLLabel;
    lbl_outdes: TRLLabel;
    lbl_totipi: TRLLabel;
    lbl_totnot: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    lbl_codbco: TRLLabel;
    RLDBText22: TRLDBText;
    RLLabel23: TRLLabel;
    RLDBText26: TRLDBText;
    lbl_totnor: TRLLabel;
    RLLabel24: TRLLabel;
    RLcabSerCodpro: TRLLabel;
    RLCabSerQtd: TRLLabel;
    RLCabSerNome: TRLLabel;
    rlcabSercfo: TRLLabel;
    RLCabSerPU: TRLLabel;
    RLCabSerdesc: TRLLabel;
    RLCabSerTotal: TRLLabel;
    cabSer_inss: TRLLabel;
    RLdetSerCodpro: TRLDBText;
    RLdetSerQtd: TRLDBText;
    rldetSercfo: TRLDBText;
    RLdetSerPU: TRLDBText;
    RLdetSerdesc: TRLLabel;
    RLdetSerTotal: TRLDBText;
    RLDBText20: TRLDBText;
    edt_baseicms: TRLLabel;
    edt_icms: TRLLabel;
    edt_baseicmsst: TRLLabel;
    edt_icmsst: TRLLabel;
    edt_totbru: TRLLabel;
    edt_nomfre: TRLLabel;
    edt_valfre: TRLLabel;
    edt_outdes: TRLLabel;
    edt_totipi: TRLLabel;
    edt_totnot: TRLLabel;
    edt_totret: TRLLabel;
    edt_totdes: TRLLabel;
    edt_forma: TRLLabel;
    edt_transp: TRLLabel;
    edt_aliqdeb: TRLLabel;
    tsBloqLib: TTabSheet;
    Label6: TLabel;
    memo_bloqdiv: TMemo;
    memo_bloqlib: TMemo;
    Label7: TLabel;
    PDESCL_USR: TDBEdit;
    PZOLIB_USR: TDBEdit;
    Tb_PedP1CODBLOQ: TStringField;
    Tb_PedP1CODBLOQ_LIB: TStringField;
    Tb_PedP1PZOLIB: TFloatField;
    Tb_PedP1PZOLIB_USR: TFloatField;
    Tb_PedP1PDESCLIB: TFloatField;
    Tb_PedP1PDESCL_USR: TFloatField;
    Tb_Peddesclib: TStringField;
    Tb_Pedprazolib: TStringField;
    Tb_Pedbloqlib: TStringField;
    Tb_PedP1CODUSR_LBLOQ: TFloatField;
    DBMemo1: TDBMemo;
    sb_VendasVend: TSpeedButton;
    bbReeNFE: TBitBtn;
    tbs_timbrado: TTabSheet;
    RLReport2: TRLReport;
    RLBand6: TRLBand;
    RLDBText19: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText25: TRLDBText;
    RLMemo1: TRLMemo;
    RLBand7: TRLBand;
    RLLabel26: TRLLabel;
    RLBand8: TRLBand;
    RLLabel27: TRLLabel;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLLabel28: TRLLabel;
    RLDBText29: TRLDBText;
    RLLabel29: TRLLabel;
    RLDBText30: TRLDBText;
    RLLabel30: TRLLabel;
    RLDBText31: TRLDBText;
    RLLabel31: TRLLabel;
    RLDBText32: TRLDBText;
    RLLabel32: TRLLabel;
    RLDBText33: TRLDBText;
    RLLabel33: TRLLabel;
    RLDBText34: TRLDBText;
    RLLabel34: TRLLabel;
    RLDBText35: TRLDBText;
    RLDBText36: TRLDBText;
    RLLabel35: TRLLabel;
    RLDBText37: TRLDBText;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLDBText38: TRLDBText;
    RLDBText39: TRLDBText;
    RLLabel38: TRLLabel;
    RLDBText40: TRLDBText;
    RLLabel39: TRLLabel;
    RLDBText41: TRLDBText;
    RLLabel40: TRLLabel;
    RLDBText42: TRLDBText;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel43: TRLLabel;
    RLDBText43: TRLDBText;
    RLLabel44: TRLLabel;
    RLDBText44: TRLDBText;
    RLDBText45: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLBand9: TRLBand;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel47: TRLLabel;
    rlCabNome2: TRLLabel;
    rlCabMarca2: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
    RLLabel56: TRLLabel;
    RLLabel57: TRLLabel;
    RLLabel58: TRLLabel;
    RLBand10: TRLBand;
    RLDBText46: TRLDBText;
    RLDBText47: TRLDBText;
    RLDBText48: TRLDBText;
    rlDetNome2: TRLDBText;
    rlDetMarca2: TRLDBText;
    RLDBText53: TRLDBText;
    RLDBText54: TRLDBText;
    RLDBText55: TRLDBText;
    RLDBText56: TRLDBText;
    RLDBText57: TRLDBText;
    RLDBText58: TRLDBText;
    RLLabel59: TRLLabel;
    rldet_impostos2: TRLBand;
    RLLabel60: TRLLabel;
    rldet_comissoes2: TRLBand;
    RLLabel61: TRLLabel;
    RLSubDetail3: TRLSubDetail;
    RLBand13: TRLBand;
    RLLabel62: TRLLabel;
    RLLabel63: TRLLabel;
    RLLabel64: TRLLabel;
    RLLabel65: TRLLabel;
    RLLabel66: TRLLabel;
    RLLabel67: TRLLabel;
    RLLabel68: TRLLabel;
    RLLabel69: TRLLabel;
    RLLabel70: TRLLabel;
    RLBand14: TRLBand;
    RLDBText59: TRLDBText;
    RLDBText60: TRLDBText;
    RLDBText61: TRLDBText;
    RLDBText62: TRLDBText;
    RLDBText63: TRLDBText;
    RLLabel71: TRLLabel;
    RLDBText64: TRLDBText;
    RLDBText65: TRLDBText;
    RLBand15: TRLBand;
    RLLabel72: TRLLabel;
    RLLabel73: TRLLabel;
    RLLabel74: TRLLabel;
    RLLabel75: TRLLabel;
    RLLabel76: TRLLabel;
    RLLabel77: TRLLabel;
    RLLabel78: TRLLabel;
    RLLabel79: TRLLabel;
    RLLabel80: TRLLabel;
    RLLabel81: TRLLabel;
    RLLabel82: TRLLabel;
    RLLabel83: TRLLabel;
    RLLabel84: TRLLabel;
    RLLabel85: TRLLabel;
    RLDBText66: TRLDBText;
    RLLabel86: TRLLabel;
    RLDBText67: TRLDBText;
    lbl_totnor2: TRLLabel;
    RLLabel88: TRLLabel;
    edt_baseicms2: TRLLabel;
    edt_icms2: TRLLabel;
    edt_baseicmsst2: TRLLabel;
    edt_icmsst2: TRLLabel;
    edt_totbru2: TRLLabel;
    edt_nomfre2: TRLLabel;
    edt_valfre2: TRLLabel;
    edt_outdes2: TRLLabel;
    edt_totipi2: TRLLabel;
    edt_totnot2: TRLLabel;
    edt_totret2: TRLLabel;
    edt_totdes2: TRLLabel;
    edt_forma2: TRLLabel;
    edt_transp2: TRLLabel;
    edt_aliqdeb2: TRLLabel;
    bbImprimirTimbrado: TBitBtn;
    Tb_Pedchave_acesso: TStringField;
    Tb_PedP1NFE_ENVXML: TFloatField;
    StaticText29: TStaticText;
    DBEdit42: TDBEdit;
    tsOutFiltros: TTabSheet;
    Label4: TLabel;
    CODTLV: TEdit;
    lbl_semcomp: TLabel;
    SEMCOMP: TEdit;
    bbGerarXML: TBitBtn;
    NOMTLV: TEdit;
    RG_ENTREGUES: TRadioGroup;
    cb_dtnf: TCheckBox;
    rlCabLote2: TRLLabel;
    rlCabDtVcto2: TRLLabel;
    Tb_PedP1ANALISE: TFloatField;
    cb_custoModelo2: TCheckBox;
    mem_chavesel: TRxMemoryData;
    mem_chaveselCHAVE_PED: TIntegerField;
    mem_chaveselORDEM_PED: TIntegerField;
    mem_chaveselLOTSEQ: TIntegerField;
    mem_chaveselCODEMP: TIntegerField;
    rlDetlote: TRLDBMemo;
    rlDETdtvcto: TRLDBMemo;
    Tb_Ped02dtvcto_lote: TStringField;
    Tb_Ped02lote: TStringField;
    rlDetlote2: TRLDBMemo;
    rldetdtvcto2: TRLDBMemo;
    cb_bordasPro: TCheckBox;
    Tb_PedP1SEMCOMP: TStringField;
    tsConfig: TTabSheet;
    cb_ultchave: TCheckBox;
    DBEdit5: TDBEdit;
    Tb_Pedhoralt: TStringField;
    Tb_Pedhoradig: TStringField;
    tsFpgto: TTabSheet;
    DBGrid4: TDBGrid;
    Qr_Fpgto: TQuery;
    Src_Fpgto: TDataSource;
    Qr_FpgtoPFPCODFP: TFloatField;
    Qr_FpgtoPFPVALOR: TFloatField;
    Qr_FpgtoPFPDATA: TDateTimeField;
    Qr_FpgtoPFPCODEMP: TFloatField;
    Qr_FpgtoPFPCHAVE: TFloatField;
    Qr_FpgtoPFPCHAVE_ANO: TFloatField;
    Tb_Ped02P2SIT: TStringField;
    Tb_Ped02P2CSOSN: TFloatField;
    Ts_RelatorioCusto: TTabSheet;
    RLReport3: TRLReport;
    Rl_Cab: TRLBand;
    Rl_Det: TRLBand;
    Ldb_Codigo: TRLDBText;
    Ldb_Descricao: TRLDBText;
    Ldb_Qtd: TRLDBText;
    Ldb_PrecoUnitario: TRLDBText;
    Ldb_ValorTotal: TRLDBText;
    Ldb_PercentDesc: TRLDBText;
    Ldb_Custo: TRLDBText;
    Ldb_TotalCusto: TRLDBText;
    Ldb_ValorLucro: TRLDBText;
    Ldb_PercentLucro: TRLDBText;
    bbImprimirRelCusto: TBitBtn;
    Lbl_Codigo: TRLLabel;
    Lbl_Descricao: TRLLabel;
    Lbl_Qtd: TRLLabel;
    Lbl_PrecoUnitario: TRLLabel;
    Lbl_ValorTotal: TRLLabel;
    Lbl_PercentDesc: TRLLabel;
    Lbl_Custo: TRLLabel;
    Lbl_TotalCusto: TRLLabel;
    Lbl_ValorLucro: TRLLabel;
    Lbl_PercentLucro: TRLLabel;
    Lbl_NomeEmpresa: TRLLabel;
    RLSystemInfo6: TRLSystemInfo;
    RLSystemInfo5: TRLSystemInfo;
    Tb_PedP1OBS1: TMemoField;
    Tb_PedP1OBS2: TMemoField;
    Tb_PedP1OBS3: TMemoField;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    Label40: TLabel;
    TipoPed: TEdit;
    sgTipoPed: TSpeedButton;
    NomTipoPed: TEdit;
    gb_motivo_naoatendimento: TGroupBox;
    DBMemo4: TDBMemo;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    bbCancelar: TBitBtn;
    rlobsped: TRLBand;
    RLLabel48: TRLLabel;
    rlobsnf: TRLBand;
    RLLabel49: TRLLabel;
    rldadostransp: TRLBand;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLLabel87: TRLLabel;
    RLLabel89: TRLLabel;
    RLLabel90: TRLLabel;
    RLMemo_obsped: TRLMemo;
    RLMemo_obsnf: TRLMemo;
    rlrod_qtdvol: TRLLabel;
    rlrod_especie: TRLLabel;
    rlrod_pesob: TRLLabel;
    rlrod_pesol: TRLLabel;
    RLLabel91: TRLLabel;
    rlrod_dathorsai: TRLLabel;
    rlobsped_timbrado: TRLBand;
    RLLabel92: TRLLabel;
    RLMemo_obsped_timbrado: TRLMemo;
    rlobsnf_timbrado: TRLBand;
    RLLabel93: TRLLabel;
    RLMemo_obsnf_timbrado: TRLMemo;
    RLBand16: TRLBand;
    RLLabel94: TRLLabel;
    RLLabel95: TRLLabel;
    RLLabel96: TRLLabel;
    RLLabel97: TRLLabel;
    RLLabel98: TRLLabel;
    rlrod_qtdvol_timbrado: TRLLabel;
    rlrod_especie_timbrado: TRLLabel;
    rlrod_pesob_timbrado: TRLLabel;
    rlrod_pesol_timbrado: TRLLabel;
    RLLabel103: TRLLabel;
    rlrod_dathorsai_timbrado: TRLLabel;
    tsJava: TTabSheet;
    bbimprel: TBitBtn;
    Label8: TLabel;
    cb_impressora: TComboBox;
    bbcampoblob: TBitBtn;
    bbImpvis: TBitBtn;
    Timer_visualizar: TTimer;
    Label9: TLabel;
    cb_ordem_impressao: TComboBox;
    Label10: TLabel;
    cb_modelo: TComboBox;
    Label11: TLabel;
    cb_agrupamento: TComboBox;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    edt_qtdvias: TSpinEdit;
    Label12: TLabel;
    BitBtn2: TBitBtn;
    Label13: TLabel;
    edt_idretorno: TEdit;
    edt_nomcsf: TEdit;
    StaticText30: TStaticText;
    StaticText31: TStaticText;
    DBE_P1NFCE_NUMERO: TDBEdit;
    DBE_P1NFCE_DATA: TDBEdit;
    Tb_PedP1NFCE_DATA: TDateTimeField;
    Tb_PedP1NFCE_NUMERO: TFloatField;
    Tb_PedP1NFCE_CHV_ACESSO: TStringField;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    StaticText32: TStaticText;
    DBEdit36: TDBEdit;
    Label14: TLabel;
    edt_numnfce: TEdit;
    BitBtn3: TBitBtn;
    rl_dadosimp: TRLMemo;
    Tb_Pedp1pedori1: TStringField;
    StaticText33: TStaticText;
    CLB_NFCE: TCheckListBox;
    Panel3: TPanel;
    st_emprestimo: TStaticText;
    st_orcamento: TStaticText;
    st_pendente: TStaticText;
    st_selecionado: TStaticText;
    st_NFCE_contigencia: TStaticText;
    ST_NFCE_com_erros: TStaticText;
    Tb_PedP1NFCE_TPEMIS: TFloatField;
    Tb_PedP1NFCE_NPROT: TStringField;
    bbEnviarNFCE: TBitBtn;
    Tb_PedP1NFCE_SERIE: TStringField;
    Tb_PedP1NFCE_MODELO: TStringField;
    bbImprimirNFCE: TBitBtn;
    Qr_FpgtoP1TABPV: TStringField;
    Qr_FpgtoP1CODPV: TFloatField;
    Qr_FpgtoPVNOME: TStringField;
    bbFormasXTitulos: TBitBtn;
    Tb_Ped02P2ID_NEW: TFloatField;
    Tb_Ped02P2ID_PED01_NEW: TFloatField;
    BitBtn4: TBitBtn;
    bbGerarXMLNFECE: TBitBtn;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Tb_PedCalcFields(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure Src_PedDataChange(Sender: TObject; Field: TField);
    procedure Tb_Ped02CalcFields(DataSet: TDataSet);
    procedure Tb_Ped02SCalcFields(DataSet: TDataSet);
    procedure pc_rodapeChange(Sender: TObject);
    procedure OBS1Exit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure MLOTSEQExit(Sender: TObject);
    procedure edt_npedoriExit(Sender: TObject);
    procedure NUMNFExit(Sender: TObject);
    procedure NUMCFExit(Sender: TObject);
    procedure CODTRAExit(Sender: TObject);
    procedure CODTRAKeyPress(Sender: TObject; var Key: Char);
    procedure TipoPedExit(Sender: TObject);
    procedure CODVENExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure sgTipoPedClick(Sender: TObject);
    procedure bbCusMerClick(Sender: TObject);
    procedure sb_VendasVendClick(Sender: TObject);
    procedure bbInfoMinClick(Sender: TObject);
    procedure CHAVEExit(Sender: TObject);
    procedure RLdet_itensBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure sbInfoClick(Sender: TObject);
    procedure CODTLVKeyPress(Sender: TObject; var Key: Char);
    procedure CODTLVExit(Sender: TObject);
    procedure MCODORIExit(Sender: TObject);
    procedure MCODORIKeyPress(Sender: TObject; var Key: Char);
    procedure CB_VLTOTALLIQClick(Sender: TObject);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLcabempBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure bbReeNFEClick(Sender: TObject);
    procedure SEMCOMPExit(Sender: TObject);
    procedure bbGerarXMLClick(Sender: TObject);
    procedure bbImprimirTimbradoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Tb_PedAfterPost(DataSet: TDataSet);
    procedure cb_bordasProClick(Sender: TObject);
    procedure cb_ultchaveClick(Sender: TObject);
    procedure bbImprimirRelCustoClick(Sender: TObject);
    procedure RLReport3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure Rl_DetAfterPrint(Sender: TObject);
    procedure DBMemo4Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure gb_motivo_naoatendimentoExit(Sender: TObject);
    procedure RLcabcliBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure pc_cabecalhoChange(Sender: TObject);
    procedure bbimprelClick(Sender: TObject);
    procedure bbcampoblobClick(Sender: TObject);
    procedure bbImpvisClick(Sender: TObject);
    procedure Timer_visualizarTimer(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure edt_numnfceExit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CLB_NFCEClick(Sender: TObject);
    procedure bbEnviarNFCEClick(Sender: TObject);
    procedure bbImprimirNFCEClick(Sender: TObject);
    procedure bbFormasXTitulosClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure bbGerarXMLNFECEClick(Sender: TObject);

  private
    { Private declarations }

    mrel_id: integer;

    mlp_QtdeTot: Real;
    mlp_ValorTotal: Real;
    mlp_totalcusto: Real;
    mlp_totalLucro: Real;
    mlp_PerLucro:   Real;
    mlp_ValorLiquido : Real;
    mlp_mediadesc  : Real;

    mlidfp_chave: integer;
    mlidfp_lotseq: Integer;
    mlidfp_codemp: Integer;

   malteroumotivo: boolean;


   procedure fGravarRequisicoes(pTipoEvento,pImpressora_padrao: string;pOrdemImpressao,pAgrupamento,pModelo,pQtdVias:integer);


   procedure fTestareFecharPedido(pChave,pChave_ano,pCodemp: integer);


   function fValidarPedido(pChave,pChave_ano,pCodemp: integer): boolean;

  public
    { Public declarations }
    form_nfe: tFrm_Nfe;
    Form_SelEmp: TFrm_SelEmp;
    ori_pedcli: String;
    mdetped: Integer;
    mdetcomis: Integer;
    maceita_ant: boolean;
    mProcessou: Boolean;
    mBloqueia_Change: Boolean;
    mChave_Sel: Real;
    mCodEmp_Minima: integer;
    mCodEmp_Maxima: integer;
    mAtualizaChaves: Boolean;

    function fPedcliLerCorpo(ptipo: Integer): Boolean;

    function fEmmpresaMinimaMaxima(pChave: Real): Boolean;


  end;


var
  Frm_PedCli: TFrm_PedCli;

implementation

uses S_DM4, S_DM6, S_Vend_Venda, S_Min2, S_OriPed, func_excecoes, S_CUSPED,
  S_NFE_Impressao, S_DM1_ADO, s_nfce, s_Nfe_Aguarde,
  s_FPagComparadoAoTitulo, func_emitir_notas, s_verifica_tef;

{$R *.dfm}

procedure TFrm_PedCli.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2, StrToDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      end;
   end;

end;

procedure TFrm_PedCli.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2, StrToDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      end;
   end;

end;

procedure TFrm_PedCli.bbAtualizarClick(Sender: TObject);
var
mcampodata: string;
mNFCEqtdMarcado: Integer;
x_NFCE: Integer;
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      fmensagem('Data Final Maior que Inicial. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
if (trim(CHAVE.Text)='')    and
   (trim(CODCLI.Text)='')   and
   (trim(mdt1.Text)='/  /') and
   (trim(MDT2.Text)='/  /') and
   (trim(NUMNF.Text)='')    and
   (trim(NUMCF.Text)='')    and
   (trim(edt_numnfce.Text)='')    and
   (trim(codven.Text)='')   and
   (trim(TipoPed.Text)='')  and
   (trim(codtra.Text)='')   and
   (trim(MCODORI.Text)='')   and
   (trim(OBS1.Text)='')     then
   begin
   if fmensagem('Esta Pesquisa pode ser um pouco demorada! '
            +'deseja continuar?',0,['1','2'],0)<>mrYes then
      exit;
   end;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

la_Empresas:=fEmpresas_Selecionadas('CADPED','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
if (fsonumero(codcli.text)=1) and (trim(edt_nomcsf.Text)<>'') then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin3(0,'CADCSF' ,'CFCODEMP','P1CODEMP' ,'CFLOTSEQ' ,'P1LOTSEQ','CFCHAVEP' ,'P1CHAVE');
   end;


Tb_ped.close;
Tb_ped.SQL.Clear;
Tb_Ped.SQL.add('Select '+chr(39)+' '+chr(39)+' AS OK,P1CODEMP,'
              +'           P1CHAVE,P1LOTSEQ,P1ORDEM,P1DATAP, '
              +'           P1DATDOC,P1CODCLI, '
              +'           P1CODVEN,P1ORIGEM,P1CODTRA,P1DATANF, '
              +'           P1NUMNF,P1STATUS,P1TIPO,P1TOTALB,P1TOTALL AS P1TOTALL, '
//              +'           P1NUMNF,P1STATUS,P1TIPO,P1TOTALB,P1TOTALL+P1ICMSR AS P1TOTALL, '
              +'            P1CODUSR,P1HORADIG,P1DTMOD,P1HRMOD, '
              +'            P1USRMOD,P1CONF,P1CODCON,P1DATCON,P1HORCON,P1EMIDOC, '
              +'            P1TIPENT,P1PREVENT,P1HPREVENT, '
              +'            P1CODENT,P1DATENT,P1HORENT, '
              +'            P1CUPOM,P1TOTDES,P1QTDVOL,P1PESOL,P1PESOB, '
              +'            P1BANCO,'
              +'            P1SEPAMB, '
              +'            P1CODTLV,P1ETIVOL,P1NUMCF,P1CODECF,P1DATACF, '
              +'            P1CODSEP,P1DATASEP,P1HORSEP, '
              +'            P1CODEMB,P1DATAEMB,P1HOREMB, '
              +'            P1ACRECONV,P1ACREGER,P1PACRECONV,P1PACREGER, P1ESPECIE,P1MINUTA,'
              +'            P1FORMACE,P1OBS1,P1OBS2,P1OBS3 '
              +'            ,P1NOMEREC,P1DATHORREC '
              +'            ,P1CODBLOQ,P1CODBLOQ_LIB,P1PZOLIB,P1PZOLIB_USR'
              +'            ,P1PDESCLIB,P1PDESCL_USR,P1CODUSR_LBLOQ,P1SEMCOMP '
              +'            ,P1NFE_ENVXML, P1ANALISE '
              +',P1NFCE_DATA,P1NFCE_NUMERO,P1NFCE_CHV_ACESSO'
              +',P1NFCE_TPEMIS,P1NFCE_NPROT '
              +',P1NFCE_SERIE,P1NFCE_MODELO '
             +',p1pedori1 '

              +'            ,CRAZAO,CCIDADE,CUF from CADP01'+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join );
mcinst:=' and ';
Tb_Ped.SQL.add(' where 1=1 ');

if trim(la_Empresas)<>'' then
   begin
   Tb_Ped.SQL.add(mcinst+'('+la_Empresas);
   Tb_Ped.SQL.Add(' or ( P1CODEMP=0'+InttoStr(codemp)+' and P1EMIDOC=0) or (P1CODEMP=0'+InttoStr(iif(codemp>100,codemp-100,codemp+100))+' and P1EMIDOC=0 ) '
                 +'  ) ');
   mcinst:=' and ';
   end;
if Trim(CHAVE.Text)<>'' then
   begin
   if Trim(MLOTSEQ.Text)<>'' then
      Tb_Ped.SQL.add(mcinst+' P1LOTSEQ=0'+Trim(MLOTSEQ.Text))
   else
     Tb_Ped.SQL.add(mcinst+' P1LOTSEQ>=0');
   mcinst:=' and ';
   Tb_Ped.SQL.add(mcinst+ ' P1CHAVE=0'+Trim(CHAVE.Text));
   mcinst:=' and ';
   end;

if Trim(edt_npedori.Text)<>'' then
   begin
   Tb_Ped.SQL.add(mcinst+' P1NPEDORI=0'+Trim(edt_npedori.Text));
   mcinst:=' and ';
   end;

if Trim(CODTLV.Text)<>'' then
   begin
   Tb_Ped.SQL.add(mcinst+' P1CODTLV=0'+Trim(CODTLV.Text));
   mcinst:=' and ';
   end;
if cb_dtnf.Checked then
   mcampodata:='P1DATDOC'
else
   mcampodata:='P1DATAP';



if Trim(MDT1.Text)<>'/  /' then
   begin
   Tb_Ped.SQL.add(fFormatdatetimeParaConsulta(mCampoData,true,StrTodate(MDT1.Text)));

   end;

if Trim(MDT2.Text)<>'/  /' then
   begin
   Tb_Ped.SQL.add(fFormatdatetimeParaConsulta(mCampoData,false,StrTodate(MDT2.Text)));
   end;


if Trim(CODCLI.Text)<>'' then
   begin
   Tb_Ped.SQL.add(mcinst+' P1CODCLI=0'+Trim(codcli.Text));
   mcinst:=' and ';
   end;
if Trim(NUMNF.Text)<>'' then
   begin
   Tb_Ped.SQL.add(mcinst+' P1NUMNF=0'+Trim(NUMNF.Text));
   mcinst:= ' and ';
   end;
if Trim(NUMCF.Text)<>'' then
   begin
   Tb_Ped.SQL.add(mcinst+' P1NUMCF=0'+Trim(NUMCF.Text));
   mcinst:=' and ';
   end;
if Trim(edt_numnfce.Text)<>'' then
   begin
   Tb_Ped.SQL.add(mcinst+' P1NFCE_NUMERO=0'+Trim(edt_numnfce.Text));
   mcinst:=' and ';
   end;

if Trim(CODTRA.Text)<>'' then
   begin
   Tb_Ped.SQL.add(mcinst+' P1CODTRA=0'+Trim(CODTRA.Text));
   mcinst:=' and ';
   end;
if Trim(CODVEN.Text)<>'' then
   begin
   Tb_Ped.SQL.add(mcinst+' P1CODVEN=0'+Trim(CODVEN.Text));
   mcinst:=' and ';
   end;

if Trim(MCODORI.Text)<>'' then
   begin
   Tb_Ped.SQL.add(mcinst+' P1ORIGEM=0'+Trim(MCODORI.Text));
   mcinst:=' and ';
   end;

if RG_FILTRO.ItemIndex=0 then
   begin
   Tb_Ped.SQL.Add(mcinst+' P1EMIDOC=0'+inttostr(RG_FILTRO.ItemIndex));
   mcinst:=' and ';
   end
else if RG_FILTRO.ItemIndex=1 then
   begin
   Tb_Ped.SQL.Add(mcinst+' P1EMIDOC<>0');
   mcinst:=' and ';
   end;

if Trim(OBS1.Text)<>'' then
   begin
   Tb_Ped.SQL.Add(mcinst+' P1OBS1 like '+chr(39)+OBS1.Text+'%'+chr(39));
   mcinst:=' and ';
   end;
if Trim(PROCESSO.Text)<>'' then
   begin
   Tb_Ped.SQl.add(mcinst+' P1PROCESSO like '+chr(39)+Trim(PROCESSO.Text)+'%'+chr(39));
   mcinst:=' and ';
   end;
if trim(TipoPed.text) <> '' then
   begin
   Tb_Ped.Sql.add(mcinst+' P1TIPO = '+TipoPed.Text);
   mcinst:=' and ';
   end;
if Trim(SEMCOMP.Text)<>'' then
   begin
   Tb_Ped.SQL.add(mcinst+' P1SEMCOMP=0'+QuotedStr(Trim(SEMCOMP.Text)));
   mcinst:=' and ';
   end;

Tb_Ped.SQL.Add(mcinst+' P1STATUS<'+mstatus_excluido+'');
if trim(la_instrucao)<>'' then
   Tb_Ped.SQL.Add(' and '+la_instrucao);

if RG_ENTREGUES.ItemIndex=0 then
   Tb_Ped.SQL.Add(' and (P1DATENT is null or P1DATENT<='+chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)+')')
else if RG_ENTREGUES.ItemIndex=1 then
   Tb_Ped.SQL.Add(' and (P1DATENT >'+chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)+')');

Tb_Ped.SQL.Add(' and not P1TOTALL is null ');


if (fsonumero(codcli.text)=1) and (trim(edt_nomcsf.Text)<>'') then
   begin
   Tb_Ped.sql.add(' and CFRAZAO like '+QuotedStr(edt_nomcsf.Text+'%'));
   end;

mNFCEqtdMarcado:=0;

for x_nfce:=0 to 3 do
   begin
   if CLB_NFCE.Checked[x_nfce]=true then
      mNFCEqtdMarcado:=mNFCEqtdMarcado+1;
   end;
if (mNFCEqtdMarcado>0) and (mNFCEqtdMarcado<4) then
   begin
   if CLB_NFCE.Checked[0] then
      begin
      Tb_Ped.SQL.add(' and ( (length(P1NFCE_NPROT)>2  and length(P1NFCE_CONTIGENCIA_XJUST)>2) ');
      if CLB_NFCE.Checked[1] then
         Tb_Ped.SQL.add('  or (length(P1NFCE_NPROT)<2  and P1NFCE_SITUACAO>0) ');
      Tb_Ped.SQL.add('  ) ');
      end
   else if CLB_NFCE.Checked[1] then
      begin
      Tb_Ped.SQL.add(' and ( (length(P1NFCE_NPROT)<2  and length(P1NFCE_CONTIGENCIA_XJUST)>2) ');
      if CLB_NFCE.Checked[2] then
         Tb_Ped.SQL.add(' or (length(P1NFCE_NPROT)>2 ) ');
      Tb_Ped.SQL.add('  ) ');

      end
   else if CLB_NFCE.Checked[2] then
       Tb_Ped.SQL.add(' and (length(P1NFCE_NPROT)>2 ) ');
   end;



Tb_Ped.sql.Add('Order by P1DATAP,P1CHAVE,P1ORDEM');
//Tb_Ped.Sql.SaveToFile(mpastatemp + 'SQLPEDCLI.txt');

TRY
   Tb_Ped.Open;
except on e : exception do
   begin
   fMensagem('Campo Inexistente: '+e.Message+' ' +FTestarCampos(Tb_Ped,['CADP01','CADPRO']),0,['0'],0);
   Tb_Ped.Sql.SaveToFile(mpastatemp + 'SQL.txt');
   end;
   end;

if mAtualizaChaves then
   begin

   if mem_chavesel.Active then
      mem_chavesel.EmptyTable
   else
      mem_chavesel.Open;
   end;

Tb_Ped02.close;
Tb_Ped02S.close;
DM6.Tb_Con03.close;
Qr_Fpgto.Close;


mlidfp_chave :=-1;
mlidfp_lotseq:=-1;
mlidfp_codemp:=-1;

fPedcliLerCorpo(0);
fPedcliLerCorpo(1);
fPedcliLerCorpo(2);
fPedcliLerCorpo(3);




end;

procedure TFrm_PedCli.FormCreate(Sender: TObject);
begin
pc_cabecalho.Height:=130;

pc_rodape.ActivePageIndex:=2;


rlobsped.Borders.DrawLeft  :=true;
rlobsped.Borders.DrawTop   :=true;
rlobsped.Borders.DrawBottom:=true;
rlobsped.Borders.DrawRight :=true;


rlobsnf.Borders.DrawLeft  :=true;
rlobsnf.Borders.DrawTop   :=true;
rlobsnf.Borders.DrawBottom:=true;
rlobsnf.Borders.DrawRight :=true;


rldadostransp.Borders.DrawLeft  :=true;
rldadostransp.Borders.DrawTop   :=true;
rldadostransp.Borders.DrawBottom:=true;
rldadostransp.Borders.DrawRight :=true;



tsRelatorio.TabVisible:=false;
tbs_timbrado.TabVisible:=false;
pc_cabecalho.ActivePageIndex:=0;
Ts_RelatorioCusto.TabVisible:=False;
Rl_Cab.Borders.DrawBottom:=True;
//Rl_Titulo.Borders.DrawBottom:=True;
Rl_Det.Borders.DrawBottom:=True;
Lbl_Descricao.Borders.DrawLeft:=True;
Lbl_Qtd.Borders.DrawLeft:=True;
Lbl_PrecoUnitario.Borders.DrawLeft:=True;
Lbl_ValorTotal.Borders.DrawLeft:=True;
Lbl_PercentDesc.Borders.DrawLeft:=True;
Lbl_Custo.Borders.DrawLeft:=True;
Lbl_TotalCusto.Borders.DrawLeft:=True;
Lbl_ValorLucro.Borders.DrawLeft:=True;
Lbl_PercentLucro.Borders.DrawLeft:=True;
Ldb_Descricao.Borders.DrawLeft:=True;
Ldb_Qtd.Borders.DrawLeft:=True;
Ldb_PrecoUnitario.Borders.DrawLeft:=True;
Ldb_ValorTotal.Borders.DrawLeft:=True;
Ldb_PercentDesc.Borders.DrawLeft:=True;
Ldb_Custo.Borders.DrawLeft:=True;
Ldb_TotalCusto.Borders.DrawLeft:=True;
Ldb_ValorLucro.Borders.DrawLeft:=True;
Ldb_PercentLucro.Borders.DrawLeft:=True;
RLReport3.Borders.DrawLeft:=True;
RLReport3.Borders.DrawTop:=True;
RLReport3.Borders.DrawRight:=True;
RLReport3.Borders.DrawBottom:=True;
mAtualizaChaves:=true;
if codusr=1111 then
  tsConfig.TabVisible:=True
else
  tsConfig.TabVisible:=False;
mBloqueia_Change:=false;
mProcessou:=false;
mdetped    :=1;
mdetcomis  :=1;
maceita_ant:=false;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
if (pconsemp) and (codemp>100) then
   flcadpar01(0,codemp-100,'1')
else
   flcadpar01(0,codemp,'1');
if codusr=1111 then
   bbGerarXML.Visible:=true
else
   bbGerarXML.Visible:=true;
BitBtn4.Visible:=bbGerarXML.Visible;
bbGerarXMLNFECE.Visible:=bbGerarXML.Visible;


if DM1.Tb_PargerPLS_NUMPED.Value=1 then
   begin
   obs_lotseq.Visible:=True;
   lbl_lotseq.Visible:=True;
   MLOTSEQ.Visible   :=True;
   end;

//CHAVE.Text:=FloatToStr(DM4.Tb_Par01PNUMPED.Value-1);
//ORDEM.Text:='';
MLOTSEQ.Text:=IntToStr(ls_numped);


if ValInt(copy(mpseg,7,2))<>01 then  // Prestação de servicos
   Tab_Ser.TabVisible:=False;
if ValInt(copy(mpseg,4,2))=2 then
   begin
   Tb_Ped02P2LOTE.DisplayLabel:='Grade';
   rlcablote.Caption   :='Grade';
   rlDetlote2.Caption  :='Grade';
   DBGrid2.Columns[11].Visible :=false;
   rlcabdtvcto.Visible         :=false;
   rldetdtvcto.Visible         :=false;
   rlcabdtvcto2.Visible         :=false;
   rldetdtvcto2.Visible         :=false;
   rlcablote.Width              :=58;
   rlDetlote2.Width             :=58;
   rlcablote.left               :=348;
   rlcablote2.left              :=348;
   RLCabMarca.Left              :=288;
   RLCabMarca2.Left             :=288;
   RLCabNome.Width              :=200;
   rlcablote.Visible            :=true;
   rldetlote.Visible            :=true;
   rlcablote2.Visible           :=true;
   rldetlote2.Visible           :=true;

   end
else if ValInt(copy(mpseg,4,2))<>1 then
   begin
   rlcabdtvcto.Visible         :=false;
   rldetdtvcto.Visible         :=false;
   rlcablote.Visible           :=false;
   rldetlote.Visible           :=false;
   rlcabdtvcto2.Visible        :=false;
   rldetdtvcto2.Visible        :=false;
   rlcablote2.Visible          :=false;
   rldetlote2.Visible          :=false;
   RLCabMarca.Left             :=317;
   RLCabMarca.Width            :=90;
   RLCabNome.Width             :=200;
   RLCabNome2.Width            :=200;
   end;
Qr_FpgtoPFPVALOR.DisplayFormat :=mcasas;
Qr_FpgtoPFPDATA.DisplayFormat  :=fdt2;

DM2.Qr_Sertotal.DisplayFormat      :=mcasas;
DM2.Qr_SerP2SPRECO.DisplayFormat   :=mcasaspu;


Tb_PedP1DATAP.DisplayFormat     :=fdt2;
Tb_PedP1TOTALB.DisplayFormat    :=mcasas;
Tb_PedP1TOTALL.DisplayFormat    :=mcasas;
Tb_PedP1TOTDES.DisplayFormat    :=mcasas;
Tb_Pedvalpag.DisplayFormat      :=mcasas;
Tb_Pedjuros.DisplayFormat       :=mcasas;
Tb_Peddesc.DisplayFormat        :=mcasas;
Tb_Pedapagar.DisplayFormat      :=mcasas;
Tb_Ped02SP2SQTD.DisplayFormat   :=mcasqtd;
Tb_Ped02SP2SPRECO.DisplayFormat :=mcasaspu;
Tb_Ped02SP2STOTDES.DisplayFormat:=mcasas;
Tb_Ped02Stotal.DisplayFormat    :=mcasas;
Tb_Ped02P2QTD.DisplayFormat     :=mcasqtd;
Tb_Ped02P2PRECO.DisplayFormat   :=mcasaspu;
Tb_Ped02P2TOTDES.DisplayFormat  :=mcasas;
Tb_Ped02P2TOTLIQ.DisplayFormat  :=mcasas;
Tb_Ped02P2QTD_ENTREGANDO.DisplayFormat  :=mcasqtd;
Tb_Ped02P2QTD_ENTREGUE.DisplayFormat    :=mcasqtd;
Tb_Ped02P2QTDDEV.DisplayFormat          :=mcasqtd;

{
if codusr=1111 then
   begin
   sb_VendasVend.Visible:=true;
   sb_ZerarDev.Visible  :=true;
   end;
}


if DM4.Tb_ParGer02PG2USANFE.AsInteger>0 then
   bbReeNFE.visible:=true
else
   bbReeNFE.visible:=false;

sb_VendasVend.Visible:=false;

if (log_codven<>0) and (DM1.Tb_PargerPLOGUSRPED.AsInteger=1) then
   begin
   sb_VendasVend.Visible:=true;
   bbCusMer.Visible     :=false;
   end;
//ori_pedcli:='selecionar';

{
RLDB_baseicms.DisplayMask:=mcasas;
RLDB_icms.DisplayMask    :=mcasas;
RLDB_basest.DisplayMask  :=mcasas;
RLDB_icmsst.DisplayMask  :=mcasas;
RLDB_totprod.DisplayMask :=mcasas;

RLDB_valfre.DisplayMask  :=mcasas;
RLDB_valseg.DisplayMask  :=mcasas;
RLDB_outdes.DisplayMask  :=mcasas;
RLDB_valipi.DisplayMask  :=mcasas;
RLDB_totliq.DisplayMask  :=mcasas;
}

tsRelatorio.TabVisible:=false;
tbs_timbrado.TabVisible:=False;
//end;


if DM4.Tb_ParGer02PG2USA_COMANDA.AsInteger=1 then
   begin
   lbl_semcomp.Visible:=true;
   SEMCOMP.Visible    :=true;
   end
else
   begin
   lbl_semcomp.Visible        :=false;
   SEMCOMP.Visible            :=false;
   DBGrid1.Columns[22].Visible:=false;
   end;

end;


procedure TFrm_PedCli.Tb_PedCalcFields(DataSet: TDataSet);
begin
if Tb_PedP1CODUSR.Value>0 then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',Tb_PedP1CODUSR.AsString) then
      Tb_Pednomdig.Value:=DM1.Query1.Fields[0].AsString;
   end;

if Tb_PedP1USRMOD.Value>0 then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',Tb_PedP1USRMOD.AsString) then
      Tb_Pednomalt.Value:=DM1.Query1.Fields[0].AsString;
   end;

if (Tb_PedP1DTMOD.IsNull) or (Tb_PedP1DTMOD.Value<=pdatanula) then
   Tb_Peddatalt.Value:='Não Definido'
else
   begin
   Tb_Peddatalt.Value:=FormatDateTime(fdt2, Tb_PedP1DTMOD.Value);
   Tb_Pedhoralt.Value:=FormatDateTime(fhr, Tb_PedP1DTMOD.Value);
   if fsonumero(Tb_Pedhoralt.Value)=0 then
      Tb_Pedhoralt.Value:=Tb_PedP1HRMOD.Value;

   end;


Tb_Pedhoralt.Value:=FormatDateTime(fhr, Tb_PedP1DTMOD.Value);
Tb_Pedhoradig.Value:=FormatDateTime(fhr, Tb_PedP1DATAP.Value);
if fsonumero(Tb_PedHoradIG.Value)=0 then
   Tb_PedHoraDig.Value:=Tb_PedP1HORADIG.Value;

if Tb_PedP1CODSEP.Value>0 then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',Tb_PedP1CODSEP.AsString) then
      Tb_Pednomsep.Value:=DM1.Query1.Fields[0].AsString;
   end;

if (Tb_PedP1DATASEP.IsNull) or (Tb_PedP1DATASEP.Value<=pdatanula) then
   Tb_Peddatsep.Value:='Não Definido'
else
   Tb_Peddatsep.Value:=FormatDateTime(fdt2, Tb_PedP1DATASEP.Value);


if Tb_PedP1CODCON.Value>0 then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',Tb_PedP1CODCON.AsString) then
      Tb_Pednomcon.Value:=DM1.Query1.Fields[0].AsString;
   end;

if (Tb_PedP1DATCON.IsNull) or (Tb_PedP1DATCON.Value<=pdatanula) then
   Tb_Peddatcon.Value:='Não Definido'
else
   Tb_Peddatcon.Value:=FormatDateTime(fdt2, Tb_PedP1DATCON.Value);

if Tb_PedP1CODEMB.Value>0 then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',Tb_PedP1CODEMB.AsString) then
      Tb_Pednomemb.Value:=DM1.Query1.Fields[0].AsString;
   end;

if (Tb_PedP1DATAEMB.IsNull) or (Tb_PedP1DATAEMB.Value<=pdatanula) then
   Tb_Peddatemb.Value:='Não Definido'
else
   Tb_Peddatemb.Value:=FormatDateTime(fdt2, Tb_PedP1DATAEMB.Value);

if Tb_PedP1CODTRA.Value>0 then
   begin
   if flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',Tb_PedP1CODTRA.AsString) then
      Tb_Pednomtra.Value:=DM1.Query1.Fields[0].AsString;
   end;
if Tb_PedP1CODVEN.Value>0 then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',Tb_PedP1CODVEN.AsString) then
      Tb_Pednomven.Value:=DM1.Query1.Fields[0].AsString;
   end;

if (Tb_PedP1DATANF.IsNull) or (Tb_PedP1DATANF.Value<=pdatanula) then
   Tb_Peddatanf.Value:='Não Emitiu'
else
   Tb_Peddatanf.Value:=FormatDateTime(fdt2, Tb_PedP1DATANF.Value);

if (Tb_PedP1DATDOC.IsNull) or (Tb_PedP1DATDOC.Value<=pdatanula) then
   Tb_Peddatdoc.Value:='Não Emitiu'
else
   Tb_Peddatdoc.Value:=FormatDateTime(fdt2, Tb_PedP1DATDOC.Value);

if (Tb_PedP1DATACF.IsNull) or (Tb_PedP1DATACF.Value<=pdatanula) then
   Tb_Peddatacf.Value:='Não Emitiu'
else
   Tb_Peddatacf.Value:=FormatDateTime(fdt2, Tb_PedP1DATACF.Value);

if (Tb_PedP1PREVENT.IsNull) or (Tb_PedP1PREVENT.Value<=pdatanula) then
   Tb_Peddatpent.Value:='Não Definida'
else
   Tb_Peddatpent.Value:=FormatDateTime(fdt2, Tb_PedP1PREVENT.Value);

if (Tb_PedP1DATENT.IsNull) or (Tb_PedP1DATENT.Value<=pdatanula) then
   Tb_Peddatent.Value:='Não Definida'
else
   Tb_Peddatent.Value:=FormatDateTime(fdt2, Tb_PedP1DATENT.Value);

if Tb_PedP1STATUS.Value>0 then
   Tb_Pedemitiuls.Value:=1
else
   Tb_Pedemitiuls.Value:=0;
if Tb_PedP1TIPO.Value=0 then
   begin
   Tb_Pedvalpag.Value:=0;
   Tb_Peddesc.Value  :=0;
   Tb_Pedjuros.Value :=0;
   Tb_Pedapagar.Value:=0;

   end
else
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select sum(CRVALPAG),sum(CRDESC),sum(CRJUROS) from CADDAR '
                     +' where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADDAR',[]),'',' CRCODEMP=0'+Tb_PedP1CODEMP.AsString+' and ')
                     +' CRLOTSEQ_CP=0'+Tb_PedP1LOTSEQ.AsString
                     +' and CRNPED=0'+Tb_PedP1CHAVE.AsString
                     +' and CRORDEM=0'+Tb_PedP1ORDEM.AsString);
   DM1.Query1.Open;
   Tb_Pedvalpag.Value:=DM1.Query1.Fields[0].AsFloat;
   Tb_Peddesc.Value  :=DM1.Query1.Fields[1].AsFloat;
   Tb_Pedjuros.Value :=DM1.Query1.Fields[2].AsFloat;
   Tb_Pedapagar.Value:=Tb_PedP1TOTALL.Value-(Tb_Pedvalpag.Value-Tb_Pedjuros.Value+Tb_Peddesc.Value);
   end;

if Tb_PedP1TIPO.Asinteger>25 then
   Tb_Pedtipo.Value:='NF Complementar'
else
   Tb_Pedtipo.Value:=tab_tped[Tb_PedP1TIPO.AsInteger];

Tb_Pedrazsoc.Value:=Tb_PedCRAZAO.Value;
if Tb_PedP1CODCLI.AsInteger<3 then
   begin
   if fLCadCSF2(0,Tb_PedP1CODEMP.AsInteger,Tb_PedP1LOTSEQ.AsFloat,Tb_PedP1CHAVE.AsFloat,0,0) then
      Tb_Pedrazsoc.Value:=DM1.Tb_CSFCFRAZAO.Value;
   end;
if Tb_PedP1DATHORREC.AsDateTime>pdatanula then
   begin
   Tb_Peddadosrec.Value:='Em '+FormatDatetime(fdt2, Tb_PedP1DATHORREC.Value)
                        +' as '+FormatDatetime('hh:nn', Tb_PedP1DATHORREC.Value);
   if trim(Tb_PedP1NOMEREC.Text)<>'' then
      Tb_Peddadosrec.value:=Tb_Peddadosrec.Value+' por '+Tb_PedP1NOMEREC.Value;

   end
else if trim(Tb_PedP1NOMEREC.Text)<>'' then
   Tb_Peddadosrec.value:=Tb_PedP1NOMEREC.Value;

// inicio
Tb_Pedprazos.Value:='';
if DM1.Tb_PargerPAGRUDUP.Value=1 then
   begin
   DM1.Tb_Ped01V.Close;
   DM1.Tb_Ped01V.SQL.Clear;
   DM1.Tb_Ped01V.SQL.Add('Select sum(P1VORDEM-P1VORDEM)+'+Tb_PedP1CODEMP.AsString+' AS P1VORDEM,'
                     +'       sum(P1VSEQ)  AS P1VSEQ, '
                     +'       sum(P1VVALOR) AS P1VVALOR, '
                     +'       sum(P1VCOMISV) AS P1VCOMISV, '
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
                     +'       max(P1VCHAVE_NIVEL) as P1VCHAVE_NIVEL, '
                     +'       P1VCODEMP, '
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
                     +' from CADP01V '
                     +' where P1VCODEMP=0'+Tb_PedP1CODEMP.AsString
                     +' and   P1VLOTSEQ=0'+Tb_PedP1LOTSEQ.AsString
                     +' and   P1VCHAVE=0'+Tb_PedP1CHAVE.AsString
                     +' group by '
                     +' P1VCODEMP, '
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
   end
else
   begin
   DM1.Tb_Ped01V.Close;
   DM1.Tb_Ped01v.SQL.Clear;
   DM1.Tb_Ped01v.SQL.add('Select * from CADP01V where P1VCODEMP=0'+Tb_PedP1CODEMP.AsString
                        +' and P1VLOTSEQ=0'+Tb_PedP1LOTSEQ.AsString
                        +' and P1VCHAVE=0'+Tb_PedP1CHAVE.AsString
                        +' and P1VORDEM=0'+Tb_PedP1ORDEM.AsString
                       +' order by P1VCODEMP,P1VCHAVE,P1VORDEM,P1VDATAV');
   DM1.Tb_Ped01V.Open;
   end;
mcinst:='';
While not DM1.Tb_Ped01v.Eof do
   begin
   if Tb_PedP1DATANF.Value<=pdatanula then
      begin
      if Tb_PedP1DATAP.Value=DM1.Tb_Ped01VP1VDATAV.Value then
         Tb_Pedprazos.value:=Tb_Pedprazos.value+mcinst+'AV'
      else
         Tb_Pedprazos.value:=Tb_Pedprazos.value+mcinst+FloatTostr(DM1.Tb_Ped01VP1VDATAV.Value-Tb_PedP1DATAP.Value);
      end
   else
      begin
      if Tb_PedP1DATANF.Value=DM1.Tb_Ped01VP1VDATAV.Value then
         Tb_Pedprazos.value:=Tb_Pedprazos.value+mcinst+'AV'
      else
         Tb_Pedprazos.value:=Tb_Pedprazos.value+mcinst+FloatTostr(DM1.Tb_Ped01VP1VDATAV.Value-Tb_PedP1DATANF.Value);
      end;
   mcinst:='/';
   DM1.Tb_Ped01v.Next;
   end;


if length(Tb_PedP1CODBLOQ_LIB.AsString)>0 then
   begin
   if Tb_PedP1CODUSR_LBLOQ.AsFloat>0 then
      begin
      Tb_Pedbloqlib.AsString:='Liberado por '+Tb_PedP1CODUSR_LBLOQ.AsString+'-';
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',Tb_PedP1CODUSR_LBLOQ.AsString) then
         Tb_Pedbloqlib.AsString:=Tb_Pedbloqlib.AsString+DM1.Query1.Fields[0].AsString;
      end;
   end;

if Tb_PedP1PDESCLIB.AsFloat>0 then
   begin
   Tb_Peddesclib.AsString:='%Desc.Concedido: '+FormatFloat(mcasas_pct, Tb_PedP1PDESCLIB.AsFloat);
   if Tb_PedP1PDESCL_USR.AsFloat<>Tb_PedP1CODUSR.AsFloat then

   if Tb_PedP1PDESCL_USR.AsFloat>0 then
      begin
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',Tb_PedP1PDESCL_USR.AsString) then
         Tb_Peddesclib.AsString:=Tb_Peddesclib.AsString
                                +' por '+Tb_PedP1PDESCL_USR.AsString
                                +'-'+DM1.Query1.Fields[0].AsString;
      end;
   end;


if Tb_PedP1PZOLIB.AsFloat>0 then
   begin
   Tb_Peddesclib.AsString:='Prazo Concedido: '+Tb_PedP1PZOLIB.AsString;
   if Tb_PedP1PZOLIB_USR.AsFloat<>Tb_PedP1CODUSR.AsFloat then
      begin
      if Tb_PedP1PZOLIB_USR.AsFloat>0 then
         begin
         if flqr1('NOMUSR','','CADUSR','N','CODUSR',Tb_PedP1PZOLIB_USR.AsString) then
            Tb_Pedprazolib.AsString:=Tb_Pedprazolib.AsString
                                    +' por '+Tb_PedP1PZOLIB_USR.AsString
                                    +'-'+DM1.Query1.Fields[0].AsString;
         end;
      end;
   end;

if Tb_PedP1NFE_ENVXML.AsInteger>0 then
   begin
   DM1.Query2.close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Select NSNFE_CHAVEACESSO, NSNFE_DCHAVEACESSO'
                     +' from CADNS where NSCODEMP=0'+Tb_PedP1CODEMP.AsString
                     +' and NSLOTSEQ_CP='+Tb_PedP1LOTSEQ.AsString
                     +' and NSCHAVEP='+Tb_PedP1CHAVE.AsString
                     +' and NSORDEMP='+Tb_PedP1ORDEM.AsString
                            +'  and NSTIPO<2 ' );
   DM1.Query2.Open;
   if not DM1.Query2.IsEmpty then
      Tb_Pedchave_acesso.AsString:=DM1.Query2.fieldbyName('NSNFE_CHAVEACESSO').AsString
                                  +DM1.Query2.fieldbyName('NSNFE_DCHAVEACESSO').AsString;
   end;


end;

procedure TFrm_PedCli.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if Tb_PedP1TIPO.Value=9 then
   begin
   DBGrid1.Canvas.Font.Color:=st_emprestimo.Font.Color;
// DBGrid1.Canvas.Font.Style:=[fsbold];
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if Tb_PedP1TIPO.Value=0 then
   begin
   DBGrid1.Canvas.Font.Color:=st_orcamento.Font.Color;
//   DBGrid1.Canvas.Font.Color:=clLime;
// DBGrid1.Canvas.Font.Style:=[fsbold];
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if Tb_PedP1EMIDOC.Value=0 then
   begin
   DBGrid1.Canvas.Font.Color:=st_pendente.Font.color;
// DBGrid1.Canvas.Font.Style:=[fsbold];
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if Tb_PedP1EMIDOC.Value=0 then
   begin
   DBGrid1.Canvas.Font.Color:=st_pendente.Font.color;
// DBGrid1.Canvas.Font.Style:=[fsbold];
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if (Tb_PedP1NFCE_TPEMIS.AsInteger=9) and (trim(Tb_PedP1NFCE_NPROT.AsString)='') then
   begin
   DBGrid1.Canvas.Brush.Color:=st_NFCE_contigencia.Brush.color;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if (Tb_PedP1NFCE_NUMERO.AsFloat>0) and ((Tb_PedP1NFCE_NPROT.AsString)='') then
   begin
   DBGrid1.Canvas.Brush.Color:=ST_NFCE_com_erros.Brush.color;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

if Tb_PedP1ANALISE.Value=1 then
   begin
   DBGrid1.Canvas.Font.Color:=clPurple;
// DBGrid1.Canvas.Font.Style:=[fsbold];
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

if Tb_PedOK.Value<>'' then
   begin
   DBGrid1.Canvas.Brush.Color := $00DFFFDF;
//         DBGrid1.Canvas.Font.Color  := clInfoBk;
{     end;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);

   DBGrid1.Color. Canvas. Font.Color:=clRed;
// DBGrid1.Canvas.Font.Style:=[fsbold];
}   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

end;

procedure TFrm_PedCli.bbSairClick(Sender: TObject);
begin
if (trim(ori_pedcli)<>'') and  (Tb_PedP1CHAVE.Value>0) and (ValFloat(CHAVE.Text)<=0) then
   begin
   CHAVE.Text:=Tb_PedP1CHAVE.AsString;
   MLOTSEQ.Text:=Tb_PedP1LOTSEQ.AsString;
{
   if (Trim(ORDEM.Text)<>'') and (Tb_Ped.RecordCount>1) then
      begin
      ORDEM.Text:=Tb_PedP1ORDEM.AsString;
      plocemp_pcli   :=Tb_PedP1CODEMP.AsInteger;
      fmensagem('Seleção válida somente para Consultas e Relátorios',0,['0'],0)
      end
   else
      ORDEM.Text:='';

   ORDEM.Text:='';
   }
   end;

close;
end;

procedure TFrm_PedCli.bbImprimirClick(Sender: TObject);
begin
if not fPedCli_AbrePedido(0,Tb_PedP1CODEMP.AsFloat,Tb_PedP1LOTSEQ.AsFloat,
                            Tb_PedP1CHAVE.AsFloat
                            ,Tb_PedP1ORDEM.AsFloat) then
   exit;

bbIMprimir.Enabled:=false;
RLdet_itens.Borders.DrawBottom:=cb_bordasPro.Checked;

if CB_DETPED.Checked then
  begin
  mdetped:=1;
  RLdet_impostos.Visible:=true;
  end
else
  begin
  mdetped:=0;
  RLdet_impostos.Visible:=false;
  end;
if CB_DETCOMIS.Checked then
  begin
  mdetcomis:=1;
  RLdet_comissoes.Visible:=true;
  end
else
  begin
  mdetcomis:=0;
  RLdet_comissoes.Visible:=false;
  end;

lbl_totnor.Caption       :=FormatFloat(mcasas, DM2.Qr_CabP1TOTISE.Value+DM2.Qr_CabP1TOTTRI.Value);
edt_baseicms.Caption     :=FormatFloat(mcasas, DM2.Qr_Cabbaseicms.Value);
edt_icms.Caption         :=FormatFloat(mcasas, DM2.Qr_Cabicms.Value);
edt_baseicmsst.Caption   :=FormatFloat(mcasas, DM2.Qr_CabP1BASER.Value);
edt_icmsst.Caption       :=FormatFloat(mcasas, DM2.Qr_CabP1ICMSR.Value);
edt_totbru.Caption       :=FormatFloat(mcasas, DM2.Qr_CabP1TOTALB.Value);
edt_nomfre.Caption       :=FormatFloat(mcasas, DM2.Qr_CabP1VALFRE.Value);
edt_valfre.Caption       :=FormatFloat(mcasas, DM2.Qr_CabP1VALSEG.Value);
edt_outdes.Caption       :=FormatFloat(mcasas, DM2.Qr_CabP1TARBAN.AsFloat+DM2.Qr_CabP1DESPACES.AsFloat);
edt_totipi.Caption       :=FormatFloat(mcasas, DM2.Qr_Cabvalipi.Value);
edt_totnot.Caption       :=FormatFloat(mcasas, DM2.Qr_CabP1TOTALL.Value);
//edt_totnot.Caption       :=FormatFloat(mcasas, DM2.Qr_CabP1TOTALL.Value+DM2.Qr_CabP1ICMSR.AsFloat );
edt_totret.Caption       :=FormatFloat(mcasas, DM2.Qr_CabP1TOTRET.Value);
edt_totdes.Caption       :=FormatFloat(mcasas, DM2.Qr_CabP1TOTDES.Value);
edt_forma.Caption        :=DM2.Qr_Cabnombco.AsString;
edt_transp.Caption       :=DM2.Qr_Cabnometra.AsString;
edt_aliqdeb.Caption      :=DM2.Qr_CabP1ALIQDEB.AsString;


SetWindowPos (Handle,HWND_NOTOPMOST, Left, Top, Width, Height, SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);

RLReport1.PreviewModal;
bbIMprimir.Enabled:=true;
end;

procedure TFrm_PedCli.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_PedCli',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_PedCli.CODCLIExit(Sender: TObject);
begin
codcli.Text:=fdeixanum2(CODCLI.Text);
if CODCLI.Text='' then
   NOMCLI.Text:='Todos...'
else
   begin
   if not flcadcli(1,0,CODCLI.Text) then
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI.Text:='';
      CODCLI.SetFocus;
      exit;
      end
   else
      begin
      if valfloat(CODCLI.text)=1 then
         begin
         NOMCLI.Width:=222;
         edt_nomcsf.visible:=true;
         end
      else
         begin
         NOMCLI.Width:=412;
         edt_nomcsf.visible:=false;
         end;

      NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
      end;
   end;
end;

procedure TFrm_PedCli.Src_PedDataChange(Sender: TObject; Field: TField);
begin
bbEnviarNFCE.Enabled := ( (Tb_PedP1NFCE_TPEMIS.AsInteger=9) and (trim(Tb_PedP1NFCE_NPROT.AsString)='') );
bbImprimirNFCE.Enabled := not ( (Tb_PedP1STATUS.AsInteger>1) and (Tb_PedP1NFCE_NUMERO.AsInteger<=0) );

pc_rodapeChange(self);
end;

function tFrm_PedCli.fPedcliLerCorpo(ptipo: Integer): Boolean;
begin
if ptipo=0 then
   begin
   if (not  Tb_Ped02.Active) or
      ( Tb_PedP1CODEMP.AsFloat<> Tb_Ped02P2CODEMP.AsFloat) or
      ( Tb_PedP1LOTSEQ.AsFloat<> Tb_Ped02P2LOTSEQ.AsFloat) or
      ( Tb_PedP1CHAVE.AsFloat<> Tb_Ped02P2CHAVE.AsFloat) or
      ( Tb_PedP1ORDEM.AsFloat<> Tb_Ped02P2ORDEM.AsFloat) then
      begin
       Tb_Ped02.Close;
       Tb_Ped02.SQL.Clear;
       Tb_Ped02.SQL.add('Select P2CODEMP,P2CHAVE,P2ORDEM,P2ID_NEW,P2ID_PED01_NEW, '
                   +'       P2ITEM,P2CODPRO,P2QTD,P2LOTSEQ, '
                   +'        P2LOTE,P2DTVCTO, NVL(P2QTD_ENTREGUE,0) AS P2QTD_ENTREGUE,NVL(P2QTD_ENTREGANDO,0) AS P2QTD_ENTREGANDO,NVL(P2QTDDEV,0) AS P2QTDDEV,'
                   +'        P2DESC1,P2DESC2,P2VALDES, '
                   +'        P2DESC3,P2CODAGRU,P2CONSIG,P2AMBIENTE, '
                   +'        P2PRECO,P2SIT,P2CSOSN,P2BASEN,P2ICMSN, '
                   +'        P2PCOTAB, '
                   +'        P2PCOFPG, '
                   +'        P2BASER,P2ICMSR,P2LISTA, '
                   +'        P2TOTDES,P2ALIQ, '
                   +'        P2VCOMIS,P2CFO,P2TOTLIQ,P2ACRECONV,P2ACREGER, '
                   +'        case when length(P2NOMPRO_ORI)>2 then P2NOMPRO_ORI else PDNOME end AS PDNOME,PDMARCA,PDUND '
                   +' from CADP02,CADPRO where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+ Tb_PedP1CODEMP.AsString+' and ')
                   +' P2LOTSEQ=0'+ Tb_PedP1LOTSEQ.AsString
                   +' and P2CHAVE=0'+ Tb_PedP1CHAVE.AsString
                   +' and P2ORDEM=0'+ Tb_PedP1ORDEM.AsString
                   +fla_EmpBaixaAlta(0,'CADPRO',' and ', Tb_PedP1CODEMP.AsInteger,'PDCODEMP','')
                   +' and PDCODPRO=P2CODPRO '
                   +' order by P2CODEMP,P2CHAVE,P2ORDEM,P2ITEM ');
       TB_PED02.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
       Tb_Ped02.Open;
//       TB_PED02.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      end;
   end
else if ptipo=1 then
   begin
   if (not  Tb_Ped02S.Active) or
      ( Tb_PedP1CODEMP.AsFloat<> Tb_Ped02SP2SCODEMP.AsFloat) or
      ( Tb_PedP1LOTSEQ.AsFloat<> Tb_Ped02SP2SLOTSEQ.AsFloat) or
      ( Tb_PedP1CHAVE.AsFloat<> Tb_Ped02SP2SCHAVE.AsFloat) or
      ( Tb_PedP1ORDEM.AsFloat<> Tb_Ped02SP2SORDEM.AsFloat) then
      begin
       Tb_Ped02S.Close;
       Tb_Ped02S.SQL.Clear;
       Tb_Ped02S.SQL.add('Select P2SCODEMP,P2SCHAVE,P2SORDEM,P2SLOTSEQ,'
                    +'       P2SITEM,P2SCODPRO,P2SQTD, '
                    +'       P2SDESC1,P2SDESC2,P2SVALDES, '
                    +'        P2SPRECO,P2SSIT,P2SBCISSQN,P2SVISSQN, '
                    +'        P2SLISTA, '
                    +'        P2STOTDES,P2SALIQ, '
                    +'        P2SVCOMIS,P2SCFO, '
                    +'        PDNOME,PDMARCA,PDUND '
                    +' from CADP02S,CADPRO '
                    +' where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P2SCODEMP=0'+ Tb_PedP1CODEMP.AsString+' and ')
                   +' P2SLOTSEQ=0'+ Tb_PedP1LOTSEQ.AsString
                   +' and P2SCHAVE=0'+ Tb_PedP1CHAVE.AsString
                   +' and P2SORDEM=0'+ Tb_PedP1ORDEM.AsString
                   +fla_EmpBaixaAlta(0,'CADPRO',' and ', Tb_PedP1CODEMP.AsInteger,'PDCODEMP','')
                   +' and PDCODPRO=P2SCODPRO '
                   +' order by P2SCODEMP,P2SCHAVE,P2SORDEM,P2SITEM ');
       Tb_Ped02S.Open;
      end;
   end
else if ptipo=2 then // conhecimento
   begin
   if (not DM6.Tb_Con03.Active) or
      ( Tb_PedP1CHAVE.AsFloat<>DM6.Tb_Con03C03CHAVE_PED.AsFloat) then
      begin
      flcadcon03(0,//tipo
                 0, // codemp
                 0, // codcon
                  Tb_PedP1CODEMP.AsFloat,
                  Tb_Pedp1lotseq.AsFloat,
                  Tb_PedP1CHAVE.AsFloat);
      end;


   end
else if ptipo=3 then
   begin
//   if (not  Qr_Fpgto.Active) or
 if
      ( Tb_PedP1CODEMP.Asinteger<> mlidfp_codemp) or
      ( Tb_PedP1LOTSEQ.Asinteger<> mlidfp_lotseq) or
      ( Tb_PedP1CHAVE.Asinteger<> mlidfp_chave)  then
      begin
      mlidfp_chave :=Tb_PedP1CHAVE.asinteger;
      mlidfp_lotseq:=Tb_PedP1LOTSEQ.asinteger;
      mlidfp_codemp:=Tb_PedP1CODEMP.AsInteger;

      Qr_Fpgto.Close;
      Qr_Fpgto.SQL.Clear;
      Qr_Fpgto.SQL.Add('SELECT PFPCODEMP,PFPCHAVE,PFPLOTSEQ AS PFPCHAVE_ANO,PFPFORMA AS PFPCODFP '
                      +'                ,PFPVALOR                 ,PFPNOMFOR AS PFPNOMFP '
                      +'                 ,PFPDATA '
                      +' ,P1TABPV,P1CODPV , case when P1TABPV='+quotedstr('PO')+' then '+quotedStr('Plano Opocional')+' else PVNOME end as  PVNOME '
                      +'                 FROM CADPFP,CADP01  LEFT JOIN CADPV ON  (PVCODPV = P1CODPV  AND PVCODTIP = P1TABPV ) '
                      +' where '
                      +' PFPCODEMP=:CODEMP and '
                      +' PFPCHAVE=:CHAVE '
                      +' and PFPLOTSEQ=:LOTSEQ '
                      +' AND P1CODEMP=PFPCODEMP '
                      +' AND P1CHAVE=PFPCHAVE '
                      +' AND P1LOTSEQ=PFPLOTSEQ '
                      +' order by PFPDATA,PFPFORMA ');
      Qr_Fpgto.ParamByName('CODEMP').AsInteger:=Tb_PedP1CODEMP.AsInteger;
      Qr_Fpgto.ParamByName('CHAVE').AsFloat    :=Tb_PedP1CHAVE.AsFloat;
      Qr_Fpgto.ParamByName('LOTSEQ').AsFloat    :=Tb_PedP1LOTSEQ.AsFloat;
      try
         Qr_Fpgto.Open;
      except on e : exception do
         begin
         ex_erroSql_Novo(Qr_Fpgto,2041,'SGE','CADVER');
         end;
         end;

      end;
   end;


result:=true;
end;
procedure TFrm_PedCli.Tb_Ped02CalcFields(DataSet: TDataSet);

begin

if (Tb_Ped02P2DTVCTO.IsNull) or (Tb_Ped02P2DTVCTO.Value<=pdatanula) then
   Tb_Ped02dtvcto.Value:=''
else
   Tb_Ped02dtvcto.Value:=FormatDateTime(fdt2, Tb_Ped02P2DTVCTO.Value);
end;

procedure TFrm_PedCli.Tb_Ped02SCalcFields(DataSet: TDataSet);
begin
Tb_Ped02Stotal.Value:=Tb_Ped02SP2SQTD.Value*Tb_Ped02SP2SPRECO.Value;
end;

procedure TFrm_PedCli.pc_rodapeChange(Sender: TObject);
var
x: Integer;
begin
if not mBloqueia_Change then
   begin
   if Tab_Mer.Visible then
      fPedcliLerCorpo(0)
   else if Tab_Ser.Visible then
      fPedcliLerCorpo(1)
   else if ts_conhecimento.Visible then
      fPedcliLerCorpo(2)
   else if tsFpgto.Visible then
      fPedcliLerCorpo(3)
   else if pc_rodape.ActivePage=tsBloqLib then
      begin
      memo_bloqdiv.Lines.Clear;
      if length(Tb_PedP1CODBLOQ.AsString)>0 then
         x:=1
      else
         x:=1;
      if length(Tb_PedP1CODBLOQ.AsString)>0 then
         memo_bloqdiv.Lines.Add('Bloqueios: '+Tb_PedP1CODBLOQ.AsString);
      While x<length(Tb_PedP1CODBLOQ.AsString) do
         begin
         mcinst2:=copy(Tb_PedP1CODBLOQ.Value,x,2);
         if ValInt(mcinst2)=1 then
            memo_bloqdiv.Lines.Add(mcinst2+' - Cliente sem limite de Crédito ')
         else if ValInt(mcinst2)=2 then
            memo_bloqdiv.Lines.Add(mcinst2+' - Cliente Inadimplente')
         else if ValInt(mcinst2)=3 then
            memo_bloqdiv.Lines.Add(mcinst2+' - Cliente com Cheques devolvidos')
         else if ValInt(mcinst2)=4 then
            memo_bloqdiv.Lines.Add(mcinst2+' - Cliente Com titulos Protestado')
         else if ValInt(mcinst2)=5 then
            memo_bloqdiv.Lines.Add(mcinst2+' - Cliente Com Cadastro Bloqueado Pelo Status=7')
         else if ValInt(mcinst2)=6 then
            memo_bloqdiv.Lines.Add(mcinst2+' - Registro Vigilancia Sanitario Municipal Invalido')
         else if ValInt(mcinst2)=7 then
            memo_bloqdiv.Lines.Add(mcinst2+' - Registro Vigilancia Sanitario Municipal Vencido')
         else if ValInt(mcinst2)=8 then
            memo_bloqdiv.Lines.Add(mcinst2+' - Registro Vigilancia Sanitario Federal Invalido')
         else if ValInt(mcinst2)=9 then
            memo_bloqdiv.Lines.Add(mcinst2+' - Registro Vigilancia Sanitario Federal Vencido')
         else if ValInt(mcinst2)=10 then
            memo_bloqdiv.Lines.Add(mcinst2+' - Prazo Maior que o Permitido no Plano de Vendas')
         else if ValInt(mcinst2)=11 then
            memo_bloqdiv.Lines.Add(mcinst2+' - Cliente Inativo Com Cadastro Bloqueado Pelo Status=9')
         else if ValInt(mcinst2)=13 then
            memo_bloqdiv.Lines.Add(mcinst2+' - Cliente Novo(Cadastrado Automaticamente)')
         else if ValInt(mcinst2)=20 then
            memo_bloqdiv.Lines.Add(mcinst2+' - Desconto Maior que o Permitido')
         else if ValInt(mcinst2)=30 then
            memo_bloqdiv.Lines.Add(mcinst2+' - cfop  com problemas')
         else
            memo_bloqdiv.Lines.Add(mcinst2+' - Bloqueio não Identificado');
         x:=x+3;
         end;
      memo_bloqdiv.update;

   // LIBERADOS

      memo_bloqlib.Lines.Clear;
      if length(Tb_PedP1CODBLOQ_LIB.AsString)>0 then
         x:=1
      else
         x:=1;
      if length(Tb_PedP1CODBLOQ_LIB.AsString)>0 then
         begin
         memo_bloqlib.Lines.Add('Liberados: '+Tb_PedP1CODBLOQ_LIB.AsString);
         end;
      While x<length(Tb_PedP1CODBLOQ_LIB.AsString) do
         begin
         mcinst2:=copy(Tb_PedP1CODBLOQ_LIB.Value,x,2);
         if ValInt(mcinst2)=1 then
            memo_bloqlib.Lines.Add(mcinst2+' - Cliente sem limite de Crédito ')
         else if ValInt(mcinst2)=2 then
            memo_bloqlib.Lines.Add(mcinst2+' - Cliente Inadimplente')
         else if ValInt(mcinst2)=3 then
            memo_bloqlib.Lines.Add(mcinst2+' - Cliente com Cheques devolvidos')
         else if ValInt(mcinst2)=4 then
            memo_bloqlib.Lines.Add(mcinst2+' - Cliente Com titulos Protestado')
         else if ValInt(mcinst2)=5 then
            memo_bloqlib.Lines.Add(mcinst2+' - Cliente Com Cadastro Bloqueado Pelo Status=7')
         else if ValInt(mcinst2)=6 then
            memo_bloqlib.Lines.Add(mcinst2+' - Registro Vigilancia Sanitario Municipal Invalido')
         else if ValInt(mcinst2)=7 then
            memo_bloqlib.Lines.Add(mcinst2+' - Registro Vigilancia Sanitario Municipal Vencido')
         else if ValInt(mcinst2)=8 then
            memo_bloqlib.Lines.Add(mcinst2+' - Registro Vigilancia Sanitario Federal Invalido')
         else if ValInt(mcinst2)=9 then
            memo_bloqlib.Lines.Add(mcinst2+' - Registro Vigilancia Sanitario Federal Vencido')
         else if ValInt(mcinst2)=10 then
            memo_bloqlib.Lines.Add(mcinst2+' - Prazo Maior que o Permitido no Plano de Vendas')
         else if ValInt(mcinst2)=11 then
            memo_bloqlib.Lines.Add(mcinst2+' - Cliente Inativo Com Cadastro Bloqueado Pelo Status=9')
         else if ValInt(mcinst2)=13 then
            memo_bloqlib.Lines.Add(mcinst2+' - Cliente Novo(Cadastrado Automaticamente)')
         else if ValInt(mcinst2)=20 then
            memo_bloqlib.Lines.Add(mcinst2+' - Desconto Maior que o Permitido')
         else if ValInt(mcinst2)=30 then
            memo_bloqlib.Lines.Add(mcinst2+' - cfop  com problemas')
         else
            memo_bloqlib.Lines.Add(mcinst2+' - Bloqueio não Identificado');
         x:=x+3;
         end;
      memo_bloqlib.update;
      end;
   end;   

end;

procedure TFrm_PedCli.OBS1Exit(Sender: TObject);
begin
OBS1.Text:=fRetAspas(OBS1.Text);

end;

procedure TFrm_PedCli.DBGrid1DblClick(Sender: TObject);
begin

if Trim(ori_pedcli)<>'' then
   begin
   CHAVE.Text:=Tb_PedP1CHAVE.AsString;
   MLOTSEQ.Text   :=Tb_PedP1LOTSEQ.AsString;
   mAtualizaChaves:=false;
   bbAtualizarClick(SELF);

{
   if (Trim(ORDEM.Text)<>'') and (Tb_Ped.RecordCount>1) then
      begin
      ORDEM.Text     :=Tb_PedP1ORDEM.AsString;
      plocemp_pcli   :=Tb_PedP1CODEMP.AsInteger;
      end
   else
      ORDEM.Text:='';
}
   bbSair.Click;
   end;

end;

procedure TFrm_PedCli.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
mPosReg: TBookmark;
mQtdPed: Integer;

begin
{
  if not Tb_Ped.IsEmpty then begin
     if (Trim(ori_pedcli)<>'')  and (fSonumero(CHAVE.Text)<>0) and (ori_pedcli<>'selecionar') then begin

        la_tabelas  :='';
        la_Join     :='';
        la_instrucao:='';

         La_Empresas:=fEmpresas_Selecionadas('CADPED','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);


//        if plocemp_pcli<>0 then
//          la_empresas:=' P1CODEMP='+IntToStr(plocemp_pcli);

        fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
        Tb_ped.close;
        Tb_ped.SQL.Clear;
        Tb_Ped.SQL.add('Select '+chr(39)+' '+chr(39)+' AS OK,P1CODEMP,'
                      +' P1CHAVE,P1LOTSEQ,P1ORDEM,P1DATAP, '
                      +'           P1DATDOC,P1CODCLI, '
                      +'           P1CODVEN,P1ORIGEM,P1CODTRA,P1DATANF, '
                      +'           P1NUMNF,P1STATUS,P1TIPO,P1TOTALB,P1TOTALL, '
                      +'            P1CODUSR,P1HORADIG,P1DTMOD,P1HRMOD, '
                      +'            P1USRMOD,P1CONF,P1CODCON,P1DATCON,P1HORCON,P1EMIDOC, '
                      +'            P1TIPENT,P1PREVENT,P1HPREVENT, '
                      +'            P1CODENT,P1DATENT,P1HORENT, '
                      +'            P1CUPOM,P1TOTDES,P1QTDVOL,P1PESOL,P1PESOB, '
                      +'            P1BANCO,'
                      +'            P1SEPAMB, '
                      +'            P1CODTLV,P1ETIVOL,P1NUMCF,P1CODECF,P1DATACF, '
                      +'            P1CODSEP,P1DATASEP,P1HORSEP, '
                      +'            P1CODEMB,P1DATAEMB,P1HOREMB, '
                      +'            P1ACRECONV,P1ACREGER,P1PACRECONV,P1PACREGER, P1ESPECIE,P1MINUTA,'
                      +'            P1FORMACE,P1OBS1,P1OBS2,P1OBS3 '
                      +'            ,P1NOMEREC,P1DATHORREC '
                      +'            ,CRAZAO,CCIDADE,CUF'
                      +'            ,P1CODBLOQ,P1CODBLOQ_LIB,P1PZOLIB,P1PZOLIB_USR,P1SEMCOMP'
                       +'       ,P1NFE_ENVXML, P1ANALISE '

                       +'            ,P1PDESCLIB,P1PDESCL_USR,P1CODUSR_LBLOQ from CADP01'+iif(la_tabelas='','',',')+la_tabelas
                      +'       '+la_Join);
        mcinst:=' where ';

        if trim(la_Empresas) <> '' then begin
           Tb_Ped.SQL.add(mcinst+'('+la_Empresas);
           Tb_Ped.SQL.Add(' or ( P1CODEMP=0'+InttoStr(codemp)+' and P1EMIDOC=0) or (P1CODEMP=0'+InttoStr(iif(codemp>100,codemp-100,codemp+100))+' and P1EMIDOC=0 ) '
                         +'  ) ');
           mcinst:=' and ';
        end;

        if Trim(MLOTSEQ.Text)<>'' then begin
           Tb_Ped.SQL.add(mcinst+' P1LOTSEQ=0'+Trim(MLOTSEQ.Text));
           mcinst:=' and ';
        end;

        if Trim(CHAVE.Text)<>'' then begin
           Tb_Ped.SQL.add(mcinst+ ' P1CHAVE=0'+Trim(CHAVE.Text));
           mcinst:=' and ';
        end;

        if Trim(MDT1.Text)<>'/  /' then begin
           Tb_Ped.sql.Add(mcinst+' P1DATAP>='+chr(39)+FormatDatetime(fdt, StrTodate(MDT1.Text))+chr(39));
           mcinst:=' and ';
        end;

        if Trim(MDT2.Text)<>'/  /' then begin
           Tb_Ped.sql.Add(mcinst+' P1DATAP<='+chr(39)+FormatDatetime(fdt, StrTodate(MDT2.Text))+chr(39));
           mcinst:=' and ';
        end;

        if Trim(CODCLI.Text)<>'' then begin
           Tb_Ped.SQL.add(mcinst+' P1CODCLI=0'+Trim(codcli.Text));
           mcinst:=' and ';
        end;

        if Trim(NUMNF.Text)<>'' then begin
           Tb_Ped.SQL.add(mcinst+' P1NUMNF=0'+Trim(NUMNF.Text));
           mcinst:= ' and ';
        end;

        if Trim(NUMCF.Text)<>'' then begin
           Tb_Ped.SQL.add(mcinst+' P1NUMCF=0'+Trim(NUMCF.Text));
           mcinst:=' and ';
        end;

        if Trim(CODTRA.Text)<>'' then begin
           Tb_Ped.SQL.add(mcinst+' P1CODTRA=0'+Trim(CODTRA.Text));
           mcinst:=' and ';
        end;

        if Trim(CODVEN.Text)<>'' then begin
           Tb_Ped.SQL.add(mcinst+' P1CODVEN=0'+Trim(CODVEN.Text));
           mcinst:=' and ';
        end;

        if RG_FILTRO.ItemIndex=0 then begin
           Tb_Ped.SQL.Add(mcinst+' P1EMIDOC=0'+inttostr(RG_FILTRO.ItemIndex));
           mcinst:=' and ';
        end else if RG_FILTRO.ItemIndex=1 then begin
           Tb_Ped.SQL.Add(mcinst+' P1EMIDOC<>0');
           mcinst:=' and ';
        end;

        if Trim(OBS1.Text)<>'' then begin
           Tb_Ped.SQL.Add(mcinst+' P1OBS1 like '+chr(39)+OBS1.Text+'%'+chr(39));
           mcinst:=' and ';
        end;

        if Trim(PROCESSO.Text)<>'' then begin
           Tb_Ped.SQl.add(mcinst+' P1PROCESSO like '+chr(39)+Trim(PROCESSO.Text)+'%'+chr(39));
           mcinst:=' and ';
        end;

        if trim(TipoPed.text) <> '' then begin
           Tb_Ped.Sql.add(mcinst+' P1TIPO = '+TipoPed.Text);
           mcinst:=' and ';
        end;

        Tb_Ped.SQL.Add(mcinst+' P1STATUS<8');

        if trim(la_instrucao)<>'' then
           Tb_Ped.SQL.Add(' and '+la_instrucao);

        if RG_ENTREGUES.ItemIndex=0 then
           Tb_Ped.SQL.Add(' and (P1DATENT is null or P1DATENT<='+chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)+')')
        else if RG_ENTREGUES.ItemIndex=1 then
           Tb_Ped.SQL.Add(' and (P1DATENT >'+chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)+')');

        Tb_Ped.sql.Add('Order by P1DATAP,P1CHAVE,P1ORDEM');

        TRY
         Tb_Ped.Open;
        except
         Tb_Ped.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
        end;

        if tb_ped.eof then
          CHAVE.Text:='';
     end;

     if ori_pedcli='selecionar' then begin
        mPosReg        :=Tb_Ped.GetBookmark;

        Tb_Ped.First;

        mQtdPed:=0;

        While not Tb_Ped.Eof do begin
          if trim(Tb_PedOK.AsString)='' then begin
             Tb_Ped.Next;
             Continue;
          end;

          mQtdPed:=mQtdPed+1;
          Tb_Ped.Next;
        end;

        if mQtdPed=0 then begin
           Tb_Ped.GotoBookmark(mPosReg);

           if not Tb_PedP1CHAVE.IsNull then begin
             Tb_Ped.Edit;
             Tb_PedOK.Value:='X';
             Tb_Ped.Post;
           end;
        end;
     end;

     ori_pedcli     :='';
  end;
  }
if not Tb_Ped.IsEmpty then
  begin
  mchaveped:=Tb_PedP1CHAVE.AsFloat;
  mChave_Sel:=Tb_PedP1CHAVE.AsFloat;
  fEmmpresaMinimaMaxima(mChave_Sel);


  end;
//mProcessou:=true;

end;

procedure TFrm_PedCli.MLOTSEQExit(Sender: TObject);
begin
MLOTSEQ.Text:=fdeixanum2(MLOTSEQ.Text);

end;

procedure TFrm_PedCli.edt_npedoriExit(Sender: TObject);
begin
edt_npedori.Text:=fdeixanum2(edt_npedori.Text);

end;

procedure TFrm_PedCli.NUMNFExit(Sender: TObject);
begin
NUMNF.Text:=fdeixanum2(NUMNF.Text);

end;

procedure TFrm_PedCli.NUMCFExit(Sender: TObject);
begin
NUMCF.Text:=fdeixanum2(NUMCF.Text);

end;

procedure TFrm_PedCli.CODTRAExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
CODTRA.Text:=fdeixanum2(CODTRA.Text);
if Trim(CODTRA.Text)='' then
   NOMTRA.text:='Todos...'
else
   begin
   if not flcadtra(1,0,CODTRA.Text) then
      begin
      fmensagem('Transportadora não Cadastrada!',0,['0'],0);
      CODTRA.SetFocus;
      end
   else
      NOMTRA.Text:=DM1.Tb_TraTRRAZTRA.Value;
   end;


end;

procedure TFrm_PedCli.CODTRAKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTRA.Text:=fChamaTra(0,'frm_PedCli',Key);
   if Trim(CODTRA.Text)<>'' then
      CODTRAExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_PedCli.TipoPedExit(Sender: TObject);
begin
if Trim(TipoPed.Text)<>'' then
   begin
   TipoPed.Text:=fdeixanum2(TipoPed.Text);
   if valint(TipoPed.Text)>high(tab_tped) then
      begin
      fmensagem('Tipo Inexistente!',0,['0'],0);
      TipoPed.SetFocus;
      end
   else
      NomTipoPed.Text := tab_tped[valint(TipoPed.Text)];
   end
else
   NomTipoPed.Text:='Todos...';

end;

procedure TFrm_PedCli.CODVENExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if trim(CODVEN.Text)='' then
   NOMVEN.text:='Todos...'
else
   begin
   if not flcadven(1,0,CODVEN.Text) then
      begin
      fmensagem('Vendedor não Cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      NOMVEN.Text:=DM1.Tb_VenVNOME.Value;
   end;


end;

procedure TFrm_PedCli.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_PedCli',Key);
   key:=#0;
   end;


end;

procedure TFrm_PedCli.sgTipoPedClick(Sender: TObject);
begin
if Frm_InfPed=nil then
   Application.CreateForm(TFrm_InfPed, Frm_InfPed)
else
   begin
   Frm_InfPed.free;
   Frm_InfPed:=nil;
   Application.CreateForm(TFrm_InfPed, Frm_InfPed)
  end;
Frm_InfPed.ShowModal;
TipoPed.Text    := copy(frm_infped.STG1.Cells[0,frm_infped.STG1.Row],1,2);
NomTipoPed.Text := copy(frm_infped.STG1.cells[0,frm_infped.STG1.Row],3,40);
Frm_InfPed.Free;
Frm_InfPed:=nil;

end;

procedure TFrm_PedCli.bbCusMerClick(Sender: TObject);
var
 form_lucroped: TFrm_LucroPed;
begin
if not cb_custoModelo2.Checked then
  begin
  bbCusMer.Enabled:=false;
  if form_lucroped=nil then
     Application.Createform(TFrm_LucroPed, form_lucroped)
  else
     begin
     form_lucroped.Free;
     form_lucroped:=nil;
     Application.Createform(TFrm_LucroPed, form_lucroped)
     end;
{
  if FormStyle=fsMDIForm then
     begin
     form_lucroped.FormStyle:=fsMDIForm;
     form_lucroped.Visible  :=false;
     end;

     form_lucroped.FormStyle:=fsMDIChild;
     form_lucroped.Visible  :=True;
  }
  form_lucroped.MCODEMP.Text:=Tb_PedP1CODEMP.AsString;
  form_lucroped.InstEmp.Text:=IIF(la_Empresas<>'','('+la_Empresas+' or P1CODEMP=0'+InttoStr(iif(codemp>100,codemp-100,codemp+100))+')','');
  form_lucroped.chave.Text:=Tb_PedP1CHAVE.AsString;
  form_lucroped.atualiza.Click;
  form_lucroped.ShowModal;
  bbCusMer.Enabled:=true;
  FreeAndNil(Form_lucroped);

  end
else
  begin
  if ValFloat(Tb_PedP1CHAVE.AsString)>0 then
    begin
    Application.CreateForm(TFrm_CusPed,Frm_CusPed);
    Frm_CusPed.p_chave  :=Tb_PedP1CHAVE.AsString;
    Frm_CusPed.p_lotseq :=Tb_PedP1LOTSEQ.AsString;
    Frm_CusPed.p_ordem  :=Tb_PedP1ORDEM.AsString;
    Frm_CusPed.p_codemp :=Tb_PedP1CODEMP.AsString;
    Frm_CusPed.ShowModal;
    FreeAndNil(Frm_CusPed);
    end;
  end;
end;

procedure TFrm_PedCli.sb_VendasVendClick(Sender: TObject);
begin
if Frm_Vend_Venda=nil then
   Application.CreateForm(TFrm_Vend_Venda, Frm_Vend_Venda)
else
   begin
   Frm_Vend_Venda.Free;
   Frm_Vend_Venda:=nil;
   Application.CreateForm(TFrm_Vend_Venda, Frm_Vend_Venda)
   end;
Frm_Vend_Venda.ShowModal;
Frm_Vend_Venda.Free;
Frm_Vend_Venda:=nil;
end;

procedure TFrm_PedCli.bbInfoMinClick(Sender: TObject);
begin
if Tb_PedP1MINUTA.AsFloat=0 then
   begin
   fmensagem('Não ha Minuta para este pedido!',0,['0'],0);
   exit;
   end
else
   begin
   if Frm_Min2=nil then 
      Application.Createform(TFrm_Min2, Frm_Min2)
   else
      begin
      Frm_Min2.BBLIMPAR.Click;
      Frm_Min2.Free;
      Frm_Min2:=nil;
      Application.Createform(TFrm_Min2, Frm_Min2)
      end;
   Frm_Min2.CHAVE.Text:=Tb_PedP1MINUTA.AsString;
   Frm_Min2.CHAVEExit(Self);
   Frm_Min2.ShowModal;
   Frm_Min2.Free;
   Frm_min2:=nil;
   end;
end;

procedure TFrm_PedCli.CHAVEExit(Sender: TObject);
begin
CHAVE.Text:=fdeixanum2(CHAVE.Text);
if trim(CHAVE.Text)<>'' then
   begin
   MDT1.Text:='/  /';
   MDT2.Text:='/  /';
   bbAtualizarClick(self);
   end;

end;

procedure TFrm_PedCli.RLdet_itensBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
mdadosimp: string;  
begin
mcinst3:='';
mcinst2:='';
if DM2.Qr_CorP2VALDES.AsFloat<>0 then
   begin
   mcinst3:=mcinst3+mcinst2+'$'+DM2.Qr_CorP2VALDES.AsString;
   mcinst2:='+';
   end;

if DM2.Qr_CorP2DESC1.AsFloat<>0 then
   begin
   mcinst3:=mcinst3+mcinst2+DM2.Qr_CorP2DESC1.AsString+'%';
   mcinst2:='+';
   end;
if DM2.Qr_CorP2DESC2.AsFloat<>0 then
   begin
   mcinst3:=mcinst3+mcinst2+DM2.Qr_CorP2DESC2.AsString+'%';
   mcinst2:='+';
   end;

if DM2.Qr_CorP2DESC3.AsFloat<>0 then
   begin
   mcinst3:=mcinst3+mcinst2+DM2.Qr_CorP2DESC3.AsString+'%';
   mcinst2:='+';
   end;

if DM2.Qr_CorP2PDESCF.AsFloat<>0 then
   begin
   mcinst3:=mcinst3+mcinst2+'Fin['+DM2.Qr_CorP2PDESCF.AsString+'%]';
   mcinst2:='+';
   end;
RLdetdesc.Caption:=mcinst3;
mdadosimp:='';

if (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger>0) and (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger<3) then
   mdadosimp:='CSOSN '+Tb_Ped02P2CSOSN.AsString
else
   mdadosimp:='CST '+Tb_Ped02P2SIT.AsString;


mdadosimp:=mdadosimp+' CFOP: '+DM2.Qr_CorP2CFO.AsString;
if DM2.Qr_CorP2ALIQ.AsFloat>0 then
   mdadosimp:=mdadosimp+' Aliq ICMS: '+DM2.Qr_CorP2ALIQ.AsString;
if DM2.Qr_CorP2ALIPI.AsFloat>0 then
   mdadosimp:=mdadosimp+' Aliq IPI: '+DM2.Qr_CorP2ALIPI.AsString;
if trim(DM2.Qr_CorPDCLAS.AsString)<>'' then
   mdadosimp:=mdadosimp+' NCM: '+DM2.Qr_CorPDCLAS.AsString;


if mdetped=1 then
   begin
   if DM2.Qr_CorP2BASER.AsFloat>0 then
      begin
      if DM2.Qr_CorP2ST_IVA.AsFloat>0 then
         mdadosimp:=mdadosimp+' ST: IVA: '+FormatFloat(mcasas, DM2.Qr_CorP2ST_IVA.Value)+'% '
      else
         mdadosimp:=mdadosimp+' ST: PMC: '+FormatFloat(mcasas, DM2.Qr_CorP2PCOMAX.Value);
      mdadosimp:=mdadosimp+' red: '+FormatFloat(mcasas, DM2.Qr_CorP2ST_REDUT.Value)
                          +' Aliq Cred: '+FormatFloat(mcasas, DM2.Qr_CorP2ST_ICMCRED.Value)
                          +' Aliq Deb: '+FormatFloat(mcasas, DM2.Qr_CorP2ST_ICMDEB.Value)
                          +' Base: '+FormatFloat(mcasas, DM2.Qr_CorP2BASER.Value)
                          +' Icms ST: '+FormatFloat(mcasas, DM2.Qr_CorP2ICMSR.Value);
      if DM2.Qr_CorP2ICMSNR.Value>0 then
         begin
         mdadosimp:=mdadosimp+' ICMS NORMAL: Aliq: '+FormatFloat(mcasas, DM2.Qr_CorP2ALIQ.Value)+'%'
                              +iif(DM2.Qr_CorP2REDUTICM.AsFloat>0,' Redut: '+FormatFloat(mcasas, DM2.Qr_CorP2REDUTICM.Value)+'%','')
                              +' Base: '+FormatFloat(mcasas, DM2.Qr_CorP2BCINR.Value)
                              +' Icms: '+FormatFloat(mcasas, DM2.Qr_CorP2ICMSNR.Value);
         end;
      end
   else if DM2.Qr_CorP2ICMSN.AsFloat>0 then
      begin
      mdadosimp:=mdadosimp+' ICMS NORMAL: Aliq: '+FormatFloat(mcasas, DM2.Qr_CorP2ALIQ.Value)+'%'
                              +iif(DM2.Qr_CorP2REDUTICM.AsFloat>0,' Redut: '+FormatFloat(mcasas, DM2.Qr_CorP2REDUTICM.Value)+'%','')
                              +' Base: '+FormatFloat(mcasas, DM2.Qr_CorP2BASEN.Value)
                              +' Icms: '+FormatFloat(mcasas, DM2.Qr_CorP2ICMSN.Value);
      end
   else if DM2.Qr_CorP2ICMSNR.Value>0 then
      begin
      mdadosimp:=mdadosimp+' ICMS NORMAL: Aliq: '+FormatFloat(mcasas, DM2.Qr_CorP2ALIQ.Value)+'%'
                           +iif(DM2.Qr_CorP2REDUTICM.AsFloat>0,' Redut: '+FormatFloat(mcasas, DM2.Qr_CorP2REDUTICM.Value)+'%','')
                           +' Base: '+FormatFloat(mcasas, DM2.Qr_CorP2BCINR.Value)
                           +' Icms: '+FormatFloat(mcasas, DM2.Qr_CorP2ICMSNR.Value);
      end
   else
      mdadosimp:=mdadosimp+' Sem Tributacao';
   if DM2.Qr_CorP2PCREDSN.AsFloat>0 then
      begin
      mdadosimp:=mdadosimp+' ICMS SIMPLES NACIONAL: Aliq: '+FormatFloat(mcasas, DM2.Qr_CorP2PCREDSN.Value)+'%'
                         +' Valor Aproveitamento: '+FormatFloat(mcasas, DM2.Qr_CorP2VLRICMS_SN.Value);

      end;
   end;

if DM2.Qr_CorP2CPUFDEST.AsFloat>0 then
  mdadosimp:=mdadosimp+' % Comb.Pobreza '+DM2.Qr_CorP2CPUFDEST.AsString+'='+DM2.QR_CORP2VFCPUDEST.AsString;

if DM2.Qr_CorP2ICMSUFDEST.AsFloat>0 then
   begin
   mdadosimp:=mdadosimp+' Difal';
   mdadosimp:=mdadosimp+' Base Calc UF Dest: '+DM2.Qr_CorP2VBCUFDEST.AsString+'%';
   mdadosimp:=mdadosimp+'/'+DM2.Qr_CorP2ICMSUFDEST.AsString+'%='+ DM2.Qr_CorP2VICMSUFDEST.AsString;
   mdadosimp:=mdadosimp+' Aliq.Interna: '+DM2.Qr_CorP2ICMSINTER.AsString+'%';
   mdadosimp:=mdadosimp+' Partilha: '+DM2.Qr_CorP2ICMSINTERPART.AsString+'%';
   mdadosimp:=mdadosimp+' Icms Inter UF Remetente: '+DM2.Qr_CorP2VICMSUFREMET.AsString+'%';
   end;

rl_dadosimp.lines.Text:=mdadosimp;

//INICIO
rl_dados_comissoes.Caption:='';
if mdetcomis=1 then
   begin
   if DM2.Qr_CorP2PCOMIS.AsFloat>0 then
      begin
      rl_dados_comissoes.Caption:=rl_dados_comissoes.Caption
                          +' % Comissao: '+FormatFloat(mcasas, DM2.Qr_CorP2PCOMIS.Value);
      end
   else
      rl_dados_comissoes.Caption:='Sem Comissao';
   end;

// TERMINO

RLdetdesc.Caption:='';
mcinst:='';
if DM2.Qr_CorP2DESC1.AsFloat>0 then
   begin
   RLdetdesc.Caption:=RLdetdesc.Caption+mcinst+FormatFloat('#.##',DM2.Qr_CorP2DESC1.Value)+'%';
   mcinst:='+';
   end;
if DM2.Qr_CorP2DESC2.AsFloat>0 then
   begin
   RLdetdesc.Caption:=RLdetdesc.Caption+mcinst+FormatFloat('#.##',DM2.Qr_CorP2DESC2.Value)+'%';
   mcinst:='+';
   end;
if DM2.Qr_CorP2DESC3.AsFloat>0 then
   begin
   RLdetdesc.Caption:=RLdetdesc.Caption+mcinst+FormatFloat('#.##',DM2.Qr_CorP2DESC3.Value)+'%';
   mcinst:='+';
   end;
if DM2.Qr_CorP2VALDES.AsFloat>0 then
   begin
   RLdetdesc.Caption:=RLdetdesc.Caption+mcinst+'$'+FormatFloat('#.##',DM2.Qr_CorP2VALDES.Value);
   mcinst:='+';
   end;

if DM2.Qr_CorP2DESCRAT.AsFloat>0 then
   begin
   RLdetdesc.Caption:=RLdetdesc.Caption+mcinst+'$'+FormatFloat('#.##',DM2.Qr_CorP2DESCRAT.Value);
   mcinst:='+';
   end;

if DM2.Qr_CorP2PDESCF.AsFloat<>0 then
   begin
   RLdetdesc.Caption:=RLdetdesc.Caption+mcinst+'fin['+FormatFloat('#.##',DM2.Qr_CorP2PDESCF.Value)+'%]';
   mcinst:='+';
   end;
end;

procedure TFrm_PedCli.DBGrid1CellClick(Column: TColumn);
begin
if ori_pedcli='selecionar' then
   begin
   Tb_Ped.Edit;
   if trim(Tb_PedOK.AsString)='' then
      Tb_PedOK.Value:='P'
   else
      Tb_PedOK.Value:='';
   Tb_Ped.Post;
   end;
end;

procedure TFrm_PedCli.sbInfoClick(Sender: TObject);
var
query_pedori: tquery;
begin
if ValInt(CHAVE.Text)=0 then
   begin
   fmensagem('Favor Digitar uma Chave para Consulta!',0,['0'],0);
   exit;
   end;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADVEN','VCODEMP','P1CODEMP','VCODVEN','P1CODVEN');
la_Empresas:=fEmpresas_Selecionadas('CADPED','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);


DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.query1.sql.Add('Select P1CHAVE,P1STATUS,max(P1MOTIVO) AS P1MOTIVO,'
                  +'min(P1CODEMP)  AS P1CODEMP,'
                  +'min(P1ORDEM)  AS P1ORDEM,'
                  +'min(P1LOTSEQ) AS P1LOTSEQ,'
                  +'min(P1FORMACE) AS P1FORMACE,'
                  +'max(P1TIPO)  AS P1TIPO,'
                  +'max(P1DATAP)  AS P1DATAP,'
                  +'max(P1USRMOD) AS P1USRMOD,'
                  +'max(P1HRMOD)  AS P1HRMOD,'
                  +'max(P1HORADIG)  AS P1HORADIG,'
                  +'MAX(P1DTMOD)  AS P1DTMOD,'
                  +'MAX(P1CODUSR) AS P1CODUSR,'
                  +'MAX(P1CODCLI) AS P1CODCLI,'
                  +'max(P1CODVEN) AS P1CODVEN,'
                  +'max(CRAZAO)   AS CRAZAO,'
                  +'max(CCIDADE)  AS CCIDADE,'
                  +'max(CUF)      AS CUF,'
                  +'max(VNOME)    AS VNOME, '
                  +'max(P1PEDORI1) AS P1PEDORI1, '
                  +'max(P1CODUSR) AS P1CODUSR,'
                  +'sum(P1TOTALL) AS P1TOTALL  from CADP01 '
                  +iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                  +' P1LOTSEQ=0'+IntToStr(ls_numped));
DM1.Query1.SQL.Add(' and P1CHAVE=0'+Trim(CHAVE.Text));
DM1.Query1.SQL.add(' group by P1CHAVE,P1STATUS ');
//DM1.Query1.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

try
   DM1.Query1.Open;
except
   DM1.Query1.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;

minfo_tipo_ped   :=DM1.Query1.FieldbyName('P1TIPO').AsInteger;
minfo_chave_ped  :=DM1.Query1.FieldbyName('P1CHAVE').AsInteger;
minfo_ordem_ped  :=DM1.Query1.FieldbyName('P1ORDEM').AsInteger;
minfo_codemp_ped :=DM1.Query1.FieldbyName('P1CODEMP').AsInteger;
minfo_lotseq_ped :=DM1.Query1.FieldbyName('P1LOTSEQ').AsInteger;
minfo_formace_ped:=DM1.Query1.FieldbyName('P1FORMACE').AsInteger;
if Frm_Info=nil then
   Application.Createform(TFrm_Info, Frm_Info)
else
   begin
   Frm_Info.Free;
   Frm_Info:=nil;
   Application.Createform(TFrm_Info, Frm_Info)
   end;
Frm_Info.bbReeNFE.Visible:=true;
Frm_Info.BitBtn1.Left:=315;

Frm_Info.RichEdit1.Lines.Clear;
Frm_Info.RichEdit1.Lines.Add('Informações Sobre o Pedido');
Frm_Info.RichEdit1.Lines.Add('Chave do Pedido: '+Trim(CHAVE.Text)+' Data: '+FormatDatetime(fdt2, DM1.Query1.fieldbyName('P1DATAP').AsDateTime)+' Valor Total: '+FormatFloat(mcasas, DM1.Query1.fieldbyName('P1TOTALL').AsFloat));
Frm_Info.RichEdit1.Lines.Add('Cliente: '+DM1.Query1.FieldbyName('P1CODCLI').Asstring+'-'+DM1.Query1.FieldbyName('CRAZAO').AsString);
Frm_Info.RichEdit1.Lines.Add('Cidade: '+DM1.Query1.FieldbyName('CCIDADE').Asstring+'-'+DM1.Query1.FieldbyName('CUF').AsString);
Frm_Info.RichEdit1.Lines.Add('Vendedor: '+DM1.Query1.FieldbyName('P1CODVEN').Asstring+'-'+DM1.Query1.FieldbyName('VNOME').AsString);
Frm_Info.RichEdit1.Lines.Add('');
if DM1.Query1.FieldbyName('P1CODUSR').AsFloat>0 then
   begin
   if flqr2('NOMUSR','','CADUSR','N','CODUSR',DM1.Query1.FieldbyName('P1CODUSR').Asstring) then
      Frm_Info.RichEdit1.Lines.Add('Pedido Digitado por: '+DM1.Query1.FieldbyName('P1CODUSR').Asstring+'-'+DM1.Query2.Fieldbyname('NOMUSR').AsString+' as '+DM1.Query1.Fieldbyname('P1HORADIG').AsString )
   else
      Frm_Info.RichEdit1.Lines.Add('Pedido Digitado por: '+DM1.Query1.FieldbyName('P1CODUSR').Asstring+' as '+DM1.Query1.Fieldbyname('P1HORADIG').AsString )
   end
else
   Frm_Info.RichEdit1.Lines.Add('Pedido Digitado por: '+DM1.Query1.FieldbyName('P1CODUSR').Asstring+' as '+DM1.Query1.Fieldbyname('P1HORADIG').AsString );

Frm_Info.RichEdit1.Lines.Add('');
if DM1.Query1.FieldByName('P1STATUS').AsInteger=9 then
   begin
   if DM1.Query1.FieldbyName('P1USRMOD').AsFloat>0 then
      begin
      if flqr2('NOMUSR','','CADUSR','N','CODUSR',DM1.Query1.FieldbyName('P1USRMOD').Asstring) then
         Frm_Info.RichEdit1.Lines.Add('Pedido Excluido por: '+DM1.Query1.FieldbyName('P1USRMOD').Asstring+'-'+DM1.Query2.Fieldbyname('NOMUSR').AsString
         +' em '+FormatDatetime(fdt2, DM1.Query1.FieldbyName('P1DTMOD').AsDateTime)+' as '+DM1.Query1.Fieldbyname('P1HRMOD').AsString )
      else
         Frm_Info.RichEdit1.Lines.Add('Pedido Excluido por: '+DM1.Query1.FieldbyName('P1USRMOD').Asstring
         +' em '+FormatDatetime(fdt2, DM1.Query1.FieldbyName('P1DTMOD').AsDateTime)+' as '+DM1.Query1.Fieldbyname('P1HRMOD').AsString );
      end
   else
      Frm_Info.RichEdit1.Lines.Add('Pedido Excluido por: '+DM1.Query1.FieldbyName('P1USRMOD').Asstring
      +' em '+FormatDatetime(fdt2, DM1.Query1.FieldbyName('P1DTMOD').AsDateTime)+' as '+DM1.Query1.Fieldbyname('P1HRMOD').AsString );
   Frm_Info.RichEdit1.Lines.Add('Motivo: '+DM1.Query1.FieldbyName('P1MOTIVO').AsString);
   end
else if DM1.Query1.FieldbyName('P1USRMOD').AsFloat>0 then
   begin
   if flqr2('NOMUSR','','CADUSR','N','CODUSR',DM1.Query1.FieldbyName('P1USRMOD').Asstring) then
      Frm_Info.RichEdit1.Lines.Add('Pedido Alterado por: '+DM1.Query1.FieldbyName('P1USRMOD').Asstring+'-'
      +DM1.Query2.Fieldbyname('NOMUSR').AsString
      +' em '+FormatDatetime(fdt2, DM1.Query1.FieldbyName('P1DTMOD').AsDateTime)+' as '+DM1.Query1.Fieldbyname('P1HRMOD').AsString )
   else
      Frm_Info.RichEdit1.Lines.Add('Pedido Alterado por: '+DM1.Query1.FieldbyName('P1USRMOD').Asstring
      +' em '+FormatDatetime(fdt2, DM1.Query1.FieldbyName('P1DTMOD').AsDateTime)+' as '+DM1.Query1.Fieldbyname('P1HRMOD').AsString );
  end;
query_pedori:=tquery.create(nil);
query_pedori.databasename:=DM1.SG_ASSOC.DatabaseName;
query_pedori.Close;
query_pedori.SQL.Clear;
query_pedori.SQL.Add('select P1DATAP,P1CHAVE,P1CODEMP,P1TOTALL,P1CODVEN,P1LOTSEQ , sum(P2QTD) as QTDPEDORI, '
                    +' sum(P2TOTLIQ) AS TOTLIQPEDORI , sum(POPEDORI_QTD) AS QTDFATUR , sum(VALFAT) as VALORFATUR from '
                    +'  ( SELECT P1DATAP,P1CHAVE,P1CODEMP,P1TOTALL,P1CODVEN,P1LOTSEQ,P2QTD,P2TOTLIQ,POPEDORI_QTD '
                    +'   , ROUND (((P2TOTLIQ/P2QTD) * POPEDORI_QTD),2) AS VALFAT FROM CADP01,CADP02 ,CADP02_PEDORI '
                    +'    WHERE P1CODEMP=POPEDORI_CODEMP AND P1CHAVE=POPEDORI_CHAVE AND P2CHAVE = P1CHAVE '

                    +'    AND P2CODEMP=P1CODEMP AND P2LOTSEQ=P1LOTSEQ AND P1LOTSEQ=POPEDORI_CHAVE_ANO '
                    +' and  POCHAVE=:CHAVE '
                    +' AND POCODEMP=:CODEMP '
                    +' AND POCHAVE_ANO=:LOTSEQ '
                    +'     and POPEDORI_ITEM=P2ITEM) '
                    +'      GROUP BY P1DATAP,P1CHAVE,P1CODEMP,P1TOTALL,P1CODVEN,P1LOTSEQ ');

query_pedori.parambyname('CHAVE').AsFloat:=DM1.Query1.fieldbyname('P1CHAVE').AsFloat;
query_pedori.parambyname('CODEMP').AsFloat:=DM1.Query1.fieldbyname('P1CODEMP').AsFloat;
query_pedori.parambyname('LOTSEQ').AsFloat:=DM1.Query1.fieldbyname('P1LOTSEQ').AsFloat;

try
   query_pedori.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_pedori,2857,'SGE','CADVER');
   end;
   end;


if not DM1.Query1.isempty then
   begin
   Frm_Info.RichEdit1.Lines.add(insere('-','-',80));
   Frm_Info.RichEdit1.Lines.add(centra('ORIGEM','-',80));
   Frm_Info.RichEdit1.Lines.add(insere('-','-',80));
   While not query_pedori.Eof do
      begin
      Frm_Info.RichEdit1.Lines.add('Chave: '+FormatFloat('00000000', query_pedori.FieldbyName('P1CHAVE').AsFloat)
                                  +' Data: '+FormatDateTime(fdt2,query_pedori.FieldbyName('P1DATAP').AsFloat)
                                  +' Valor do Pedido : '+insere2(FormatFloat(mcasas, query_pedori.fieldbyName('P1TOTALL').AsFloat),' ',15)
                                  +' Valor Fatrado : '+insere2(FormatFloat(mcasas, query_pedori.fieldbyName('VALORFATUR').AsFloat),' ',15)
                                  +' Vendedor: '+insere2(query_pedori.fieldbyName('P1CODVEN').AsString,' ',6));
      query_pedori.Next;
      end;
   end;
query_pedori.close;
freeandnil(query_pedori);

Frm_Info.ShowModal;
Frm_Info.Free;
Frm_Info:=nil;




end;

procedure TFrm_PedCli.CODTLVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTLV.Text:=fChamaUsr(0,'frm_PedCli',Key);
   if valfloat(CODTLV.Text)<>0 then
      CODTLVExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_PedCli.CODTLVExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
CODTLV.Text:=fdeixanum2(CODTLV.Text);
if trim(CODTLV.Text)='' then
   NOMTLV.text:='Todos...'
else
   begin
   if not flcadusr(1,0,CODTLV.Text) then
      begin
      fmensagem('Televendas não Cadastrado!',0,['0'],0);
      CODTLV.SetFocus;
      end
   else
      NOMTLV.Text:=DM4.Tb_UsrNOMUSR.Value;
   end;



end;

procedure TFrm_PedCli.MCODORIExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
MCODORI.Text:=fdeixanum2(MCODORI.Text);
if Trim(MCODORI.Text)='' then
   MNOMORI.text:='Todos...'
else
   begin
   if not flCadOrPed(1,MCODORI.Text) then
      begin
      fmensagem('Origem do Pedido não Cadastrada!',0,['0'],0);
      MCODORI.SetFocus;
      end
   else
      MNOMORI.Text:=DM6.Tb_OrPedCONOMORI.Value;
   end;

end;

procedure TFrm_PedCli.MCODORIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   MCODORI.Text:=fChamaoriped(0,'pcomvv',key);
   key:=#0;
   end;



end;

procedure TFrm_PedCli.CB_VLTOTALLIQClick(Sender: TObject);
begin
if CB_VLTOTALLIQ.Checked then
   RLdetTotal.DataField:='total_liquido'
else
   RLdetTotal.DataField:='total';

end;

procedure TFrm_PedCli.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mcinst3:='';
mcinst2:='';
if DM2.Qr_SerP2SDESC1.AsFloat<>0 then
   begin
   mcinst3:=mcinst3+mcinst2+DM2.Qr_SerP2SDESC1.AsString+'%';
   mcinst2:='+';
   end;
if DM2.Qr_SerP2SDESC2.AsFloat<>0 then
   begin
   mcinst3:=mcinst3+mcinst2+DM2.Qr_SerP2SDESC2.AsString+'%';
   mcinst2:='+';
   end;

RLdetSerdesc.Caption:=mcinst3;
end;

procedure TFrm_PedCli.RLcabempBeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  rlobs.Caption:='';
  rlobs.Lines.Clear;

  if (length(DM1.Tb_EmpFONE.Value) > 1) then  begin
      if Length(DM1.Tb_EmpFax.Value) > 1 then begin
         if (trim(rlobs.Caption) <> '') then
            rlobs.Caption:=rlobs.Caption+' ';

         rlobs.Caption:=rlobs.Caption+'Fone/Fax: '+DM1.Tb_EmpFONE.Value+'/'+DM1.Tb_EmpFAX.Value;
      end else begin
         if (trim(rlobs.Caption) <> '') then
            rlobs.Caption:=rlobs.Caption+' ';

         rlobs.Caption:=rlobs.Caption+'Fone/Fax: '+DM1.Tb_EmpFONE.Value;
      end;
  end;

  if length(DM1.Tb_EmpE_MAIL.Value) > 1 then begin
     if (trim(rlobs.Caption) <> '') then
         rlobs.Caption:=rlobs.Caption+' ';
     rlobs.Caption:=rlobs.Caption+'e-mail: '+DM1.Tb_EmpE_MAIL.Value;
  end;

  if length(DM1.Tb_EmpHOMEPAGE.Value) > 1 then begin
     if (trim(rlobs.Caption) <> '') then
        rlobs.Caption:=rlobs.Caption+' ';
     rlobs.Caption:=rlobs.Caption+'Home Page: '+DM1.Tb_EmpHOMEPAGE.Value;
  end;

  rlobs.Lines.Add(rlobs.Caption);
end;

procedure TFrm_PedCli.bbReeNFEClick(Sender: TObject);
var
mNomeArq: String;
mMensagem: string;
Query_Cons: TQuery;
begin
if not Tb_ped.Active then
   exit;
if Tb_Pedp1CODEMP.Asinteger>100 then
   exit;

flparger02(0,0,'1');
Application.CreateForm(Tfrm_nfe, form_nfe);
//form_nfe.Logomarca:=False;
fPedCli_AbrePedido(0,Tb_PedP1CODEMP.AsFloat,Tb_PedP1LOTSEQ.AsFloat,
                            Tb_PedP1CHAVE.AsFloat
                            ,Tb_PedP1ORDEM.AsFloat);
if Tb_PedP1CHAVE.AsInteger=0 then
   exit;

DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add(' select * from cadp01 where P1CHAVE='+Tb_PedP1CHAVE.AsString);
DM1.Query5.SQL.Add(' and P1CODEMP='+Tb_PedP1CODEMP.AsString);
DM1.Query5.SQL.Add(' and P1LOTSEQ='+Tb_PedP1LOTSEQ.AsString);
DM1.Query5.SQL.Add(' and P1ORDEM='+Tb_PedP1ORDEM.AsString);
DM1.Query5.Open;

mNomeArq:=dm4.Tb_ParGer02PG2NFEPASTAMASTER.AsString;
mNomeArq:=mNomeArq+'\'+insere(DM1.Tb_EmpCGC.AsString,'0',14);

mNomeArq:=mNomeArq+'\ENVIADOS\'+FormatDatetime('yyyymm',Tb_PedP1DATANF.AsDateTime)+'\VERSAO_CLIENTE\'+Tb_PedP1NUMNF.AsString+'-NFE.XML';



query_Cons := TQuery.Create(nil);
query_Cons.DatabaseName:='SG_ASSOC';
query_Cons.SQL.Clear;
query_Cons.SQL.Add('SeleCT NSNUMERO,NSDTEMIS,NSNFE_CHAVEACESSO,NSNFE_DCHAVEACESSO,NSNFE_NUMPROT '
                  +',NSCODCLI from CADNS WHERE NSCHAVEP=:CHAVE '
                  +' AND NSLOTSEQ_CP=:LOTSEQ '
                  +' AND NSCODEMP=:CODEMP '
                  +' AND not (NSNFE_XML_CLIENTE is null) '
                            +'  and NSTIPO<2 '
                  );
query_Cons.ParamByName('CHAVE').AsInteger:=Tb_PedP1CHAVE.AsInteger;
query_Cons.ParamByName('LOTSEQ').AsInteger:=Tb_PedP1LOTSEQ.Asinteger;
query_Cons.ParamByName('CODEMP').AsInteger:=Tb_PedP1CODEMP.asinteger;
try
   query_Cons.Open;
except
   FreeAndNil(query_cons);
   exit;
   end;
if not query_Cons.isempty then
   begin
   if not DirectoryExists('C:\SGE\DANFE') then
      CreateDir('C:\SGE\DANFE');
   Application.CreateForm(TFrm_NFE_Impressao,Frm_NFE_Impressao);
//   Frm_NFE_Impressao.Logomarca:=False;

    Frm_NFE_Impressao.mLerDadosXml.pSalvarPDFPara:='';
    Frm_NFE_Impressao.mLerDadosXml.pSalvarXmlPara:='';
    Frm_NFE_Impressao.mLerDadosXml.pNomeArq:='';
    Frm_NFE_Impressao.mLerDadosXml.pChave:=Tb_PedP1CHAVE.AsInteger;
    Frm_NFE_Impressao.mLerDadosXml.pChaveAno:=Tb_PedP1LOTSEQ.AsInteger;
    Frm_NFE_Impressao.mLerDadosXml.pCodEmp  :=Tb_PedP1CODEMP.AsInteger;
     Frm_NFE_Impressao.mLerDadosXml.pCodBcoCob :=tb_pedP1BANCO.ASinteger;

    Frm_NFE_Impressao.mLerDadosXml.pEnviar:=true;
    Frm_NFE_Impressao.mLerDadosXml.pModelo:='';



   Frm_NFE_Impressao.fLerdadosXml(Frm_NFE_Impressao.mLerDadosXml,mmensagem);

   FreeandNil(Frm_NFE_Impressao);
   end
else if fileExists(mNomeArq) then
   begin
   Application.CreateForm(TFrm_NFE_Impressao,Frm_NFE_Impressao);
//   Frm_NFE_Impressao.Logomarca:=False;

    Frm_NFE_Impressao.mLerDadosXml.pSalvarPDFPara:='';
    Frm_NFE_Impressao.mLerDadosXml.pSalvarXmlPara:='';
    Frm_NFE_Impressao.mLerDadosXml.pNomeArq:=mNomeArq;
    Frm_NFE_Impressao.mLerDadosXml.pChave:=Tb_PedP1CHAVE.AsInteger;
    Frm_NFE_Impressao.mLerDadosXml.pChaveAno:=Tb_PedP1LOTSEQ.AsInteger;
    Frm_NFE_Impressao.mLerDadosXml.pCodEmp  :=Tb_PedP1CODEMP.AsInteger;
    Frm_NFE_Impressao.mLerDadosXml.pModelo:='';
    Frm_NFE_Impressao.mLerDadosXml.pEnviar:=true;
     Frm_NFE_Impressao.mLerDadosXml.pCodBcoCob :=tb_pedP1BANCO.ASinteger;

   Frm_NFE_Impressao.fLerdadosXml(Frm_NFE_Impressao.mLerDadosXml,mMensagem);

   FreeandNil(Frm_NFE_Impressao);
   end
else
   begin
   form_nfe.EmissaoDanfe(true,0,0,Tb_PedP1NUMNF.AsFloat,Tb_PedP1DATANF.AsDateTime,iif(dm2.Qr_CabP1QTDDECPU.AsInteger>0,dm2.Qr_CabP1QTDDECPU.AsInteger,-1));
   end;
FreeAndNil(form_nfe);
FreeAndNil(query_cons);

end;

procedure TFrm_PedCli.SEMCOMPExit(Sender: TObject);
begin
SEMCOMP.Text:=fdeixanum2(SEMCOMP.Text);

end;

procedure TFrm_PedCli.bbGerarXMLClick(Sender: TObject);
var
mmensagem: string;
query_testar: tQuery;
begin
if Tb_PedP1CHAVE.IsNull then
   begin
   fmensagem('Favor Selecionar um chave válida!',0,['0'],0);
   exit;
   end;
if Tb_PedP1CODEMP.AsFloat>100 then
   begin
   fmensagem('Pedido não Faturado!',0,['0'],0);
   exit;
   end;

query_testar:=tQuery.create(nil);
query_testar.databaseName:=DM1.SG_ASSOC.DatabaseName;
query_testar.SQL.add('select count(*) from cadp02 WHERE P2CHAVE='+Tb_PedP1CHAVE.AsString
                     +' and P2CODEMP='+Tb_PedP1CODEMP.AsString);

try
   query_testar.Open;
   if query_testar.Fields[0].AsInteger<1 then
      begin
      MessageDlg('Nao é um pedido de Produtos valido!',mtWarning,[mbOk],0);
      query_testar.close;
      freeandnil(query_testar);
      exit;
      end;
except on e : exception do
   begin
   ex_erroSql_Novo(query_testar,3267,'SGE '+e.message,'CADP01');
   end;
   end;
query_testar.close;
freeandnil(query_testar);



if not fPedCli_AbrePedido(0,Tb_PedP1CODEMP.AsFloat,Tb_PedP1LOTSEQ.AsFloat,
                            Tb_PedP1CHAVE.AsFloat
                            ,Tb_PedP1ORDEM.AsFloat) then

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select IDECNF,IDENNF,CHAVE_ACESSO,TOTALICMSTOTVNF,CHAVE from NFE_CADCAB '
                     +' WHERE IDECNF =:pChave'
                     +' or    IDENNF =:pChave'
                     +' order by CHAVE DESC ');
DM1.Query1.ParamByName('PCHAVE').asfloat:=Tb_PedP1NUMNF.AsFloat;
DM1.Query1.Open;
if DM1.Query1.IsEmpty then
   begin
   fGerarXMLNFE(false,Tb_PedP1CODEMP.AsFloat,Tb_PedP1LOTSEQ.AsFloat,
                Tb_PedP1CHAVE.AsFloat,
                Tb_PedP1NUMNF.AsFloat,
                true,
                '' // chave acesso zerada
                ,'' // pcnf zerado
                ,'C:\SGE\NFE'+Tb_PedP1CHAVE.AsString,0);
{
   Application.CreateForm(TFrm_NFE_Impressao,Frm_NFE_Impressao);
   Frm_NFE_Impressao.Logomarca:=True;
   try
     Frm_NFE_Impressao.fLerdadosXml('',''
                    ,'C:\SGE\NFE'+Tb_PedP1CHAVE.AsString+'.XML'
                    ,Tb_PedP1CHAVE.AsInteger
                    ,Tb_PedP1LOTSEQ.AsInteger
                    ,Tb_PedP1CODEMP.AsInteger
                    ,True,mmensagem, '');

      FreeandNil(Frm_NFE_Impressao);
   except
      end;
}



//                ,DM4.Tb_ParGer02PG2NFEPASTAIMP.AsString);

   end
else if DM1.Query1.FieldByName('TOTALICMSTOTVNF').AsFloat=0 then
   begin
   fGerarXMLNFE(false,Tb_PedP1CODEMP.AsFloat,Tb_PedP1LOTSEQ.AsFloat,
                Tb_PedP1CHAVE.AsFloat
                ,DM1.Query1.FieldByName('IDENNF').AsFloat
                ,true
                ,DM1.Query1.FieldByName('CHAVE_ACESSO').AsString
                ,DM1.Query1.FieldByName('IDECNF').AsString
                ,'C:\SGE\NFE'+DM1.Query1.FieldByName('IDENNF').AsString,0);

//                ,DM4.Tb_ParGer02PG2NFEPASTAIMP.AsString);
   end
else
   begin
   fGerarXMLNFE(false,Tb_PedP1CODEMP.AsFloat,Tb_PedP1LOTSEQ.AsFloat,
                Tb_PedP1CHAVE.AsFloat
                ,DM1.Query1.FieldByName('IDENNF').AsFloat
                ,true
                ,DM1.Query1.FieldByName('CHAVE_ACESSO').AsString
                ,DM1.Query1.FieldByName('IDECNF').AsString
                ,'C:\SGE\NFE'+DM1.Query1.FieldByName('IDENNF').AsString,0);
    end;


end;

procedure TFrm_PedCli.bbImprimirTimbradoClick(Sender: TObject);
begin
if not fPedCli_AbrePedido(0,Tb_PedP1CODEMP.AsFloat,Tb_PedP1LOTSEQ.AsFloat,
                            Tb_PedP1CHAVE.AsFloat
                            ,Tb_PedP1ORDEM.AsFloat) then
   exit;

bbImprimirTimbrado.Enabled:=false;
RLBand10.Borders.DrawBottom:=cb_bordasPro.Checked;
if CB_DETPED.Checked then
  begin
  mdetped:=1;
  RLdet_impostos2.Visible:=true;
  end
else
  begin
  mdetped:=0;
  RLdet_impostos2.Visible:=false;
  end;
if CB_DETCOMIS.Checked then
  begin
  mdetcomis:=1;
  RLdet_comissoes2.Visible:=true;
  end
else
  begin
  mdetcomis:=0;
  RLdet_comissoes2.Visible:=false;
  end;

lbl_totnor2.Caption       :=FormatFloat(mcasas, DM2.Qr_CabP1TOTISE.Value+DM2.Qr_CabP1TOTTRI.Value);
edt_baseicms2.Caption     :=FormatFloat(mcasas, DM2.Qr_Cabbaseicms.Value);
edt_icms2.Caption         :=FormatFloat(mcasas, DM2.Qr_Cabicms.Value);
edt_baseicmsst2.Caption   :=FormatFloat(mcasas, DM2.Qr_CabP1BASER.Value);
edt_icmsst2.Caption       :=FormatFloat(mcasas, DM2.Qr_CabP1ICMSR.Value);
edt_totbru2.Caption       :=FormatFloat(mcasas, DM2.Qr_CabP1TOTALB.Value);
edt_nomfre2.Caption       :=FormatFloat(mcasas, DM2.Qr_CabP1VALFRE.Value);
edt_valfre2.Caption       :=FormatFloat(mcasas, DM2.Qr_CabP1VALSEG.Value);
edt_outdes2.Caption       :=FormatFloat(mcasas, DM2.Qr_CabP1TOTOUT.Value+DM2.Qr_CabP1TARBAN.AsFloat);
edt_totipi2.Caption       :=FormatFloat(mcasas, DM2.Qr_Cabvalipi.Value);
edt_totnot2.Caption       :=FormatFloat(mcasas, DM2.Qr_CabP1TOTALL.Value);
//edt_totnot2.Caption       :=FormatFloat(mcasas, DM2.Qr_CabP1TOTALL.Value+DM2.Qr_CabP1ICMSR.AsFloat);
edt_totret2.Caption       :=FormatFloat(mcasas, DM2.Qr_CabP1TOTRET.Value);
edt_totdes2.Caption       :=FormatFloat(mcasas, DM2.Qr_CabP1TOTDES.Value);
edt_forma2.Caption        :=DM2.Qr_Cabnombco.AsString;
edt_transp2.Caption       :=DM2.Qr_Cabnometra.AsString;
edt_aliqdeb2.Caption      :=DM2.Qr_CabP1ALIQDEB.AsString;
SetWindowPos (Handle,HWND_NOTOPMOST, Left, Top, Width, Height, SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
RLReport2.PreviewModal;
bbImprimirTimbrado.Enabled:=true;
end;

procedure TFrm_PedCli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_PedCli.FormShow(Sender: TObject);
var
  VENLOG: Boolean;
  mUltChave: Boolean;
  Query_cons: TQuery;

begin
pc_cabecalho.ActivePage:=ts_filtros;
VENLOG := False;
if flfilpad(-10,'_VENDA_PRE','') then
  begin
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_VENLOG',[]) then
     VENLOG:=DM4.Tb_FilPad2FPVALOR.AsString='true';
  end;
if flfilpad(-2,'_PEDCLI','') then
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_BORDASPRO',[]) then
     cb_bordasPro.Checked:=IIF(DM4.Tb_FilPad2FPVALOR.AsString='True',True,False);

if (log_codven<>0) and ((DM1.Tb_PargerPLOGUSRPED.AsInteger=1) or (VENLOG=True)) then
   begin
   if flcadven(1,0,FloatToStr(log_codven)) then
      begin
      CODVEN.Text:=FloattoStr(log_codven);
      NOMVEN.Text:=DM1.Tb_VenVNOME.Value;
      CODVEN.Enabled:=false;
      end
   else
      CODVEN.Enabled:=true;
   end
else
   CODVEN.Enabled:=true;


if (lowercase(Trim(ori_pedcli))='frm_cele') or
   (lowercase(Trim(ori_pedcli))='frm_cele') or
   (lowercase(Trim(ori_pedcli))='selecionar') then
   begin
   bbimprimir.Visible  :=false;
   bbimprimir.Visible  :=false;
   sb_vendasvend.visible:=false;
   bbcusmer.visible:=false;
   cb_detped.visible:=false;
   end;

if ori_pedcli='selecionar' then
   begin
   DBGrid1.Columns[0].Visible:=true;
   end
else
   DBGrid1.Columns[0].Visible:=false;

if (LowerCase(Trim(ori_pedcli))='frm_confirma_entrega') then
  begin
  RG_FILTRO.Enabled:=False;
  RG_FILTRO.ItemIndex:=1;
  RG_ENTREGUES.Enabled:=False;
  RG_ENTREGUES.ItemIndex:=0;
  bbImprimir.Enabled:=False;
  bbCusMer.Enabled:=False;
  bbImprimirTimbrado.Enabled:=False;
  sb_VendasVend.Enabled:=False;
  bbReeNFE.Enabled:=False;
  sbInfo.Enabled:=False;
  end;



// O QUE VAI LER PRIMEIRO
mUltChave:=true;

if flfilpad(-1,'_PEDCLI','CB_ULTCHAVE') then
   mUltChave:=DM4.Tb_FilPad2FPVALOR.AsString='true';
if mUltChave then
   begin
   Query_cons:=TQuery.Create(nil);
   Query_cons.DatabaseName:='SG_ASSOC';
   Query_cons.close;
   Query_cons.SQL.clear;
   Query_cons.SQL.Add('Select max(P1CHAVE) from CADP01 where P1STATUS<8 '
                     +' and (P1CODEMP=:CODEMP or P1CODEMP=:CODEMP_FILIAL)');
   Query_cons.ParamByName('CODEMP').AsInteger:=codemp;
   if codemp>100 then
      Query_cons.ParamByName('CODEMP_FILIAL').AsInteger:=codemp-100
   else
     Query_cons.ParamByName('CODEMP_FILIAL').AsInteger:=codemp+100;
   Query_cons.Open;
   CHAVE.Text:=Query_cons.Fields[0].AsString;
   FreeAndNil(Query_cons);
   end
else
   begin
   MDT1.Text:=FormatDateTime(fdt2, Date);
   MDT2.Text:=FormatDateTime(fdt2, Date);
   CHAVE.Text:='';
   cb_ultchave.Checked:=False;
   end;

bbAtualizarClick(Self);


// TERMINO O QUE VAI LER PRIMEIRO


end;

procedure TFrm_PedCli.FormActivate(Sender: TObject);
begin
// SetWindowPos (Handle, HWND_TOPMOST, Left, Top, Width, Height, SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
// SetWindowPos (Handle, HWND_NOTOPMOST, Left, Top, Width, Height, SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
CHAVE.SetFocus;
end;

procedure TFrm_PedCli.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_PedCli.Tb_PedAfterPost(DataSet: TDataSet);
var
query_motivo: TQuery;
begin
if trim(Tb_PedOK.AsString)='' then
   begin
   if mem_chavesel.locate('CHAVE_PED;LOTSEQ;CODEMP',VarArrayOf([Tb_PedP1CHAVE.asinteger,Tb_pedP1LOTSEQ.asinteger,Tb_PedP1CODEMP.AsInteger]),[]) then
      mem_chavesel.Delete;
   end
else
   begin
   if mem_chavesel.locate('CHAVE_PED;LOTSEQ;CODEMP',VarArrayOf([Tb_PedP1CHAVE.asinteger,Tb_pedP1LOTSEQ.asinteger,Tb_PedP1CODEMP.AsInteger]),[]) then
      mem_chavesel.Edit
   else
      mem_chavesel.Insert;
   mem_chaveselCHAVE_PED.AsInteger:=Tb_PedP1CHAVE.AsInteger;
   mem_chaveselORDEM_PED.AsInteger:=Tb_PedP1ORDEM.AsInteger;
   mem_chaveselLOTSEQ.AsInteger   :=Tb_PedP1LOTSEQ.AsInteger;
   mem_chaveselCODEMP.AsInteger   :=Tb_PedP1CODEMP.AsInteger;
   mem_chavesel.Open;
   end;
if malteroumotivo then
   begin
   query_motivo:=TQuery.create(nil);
   query_motivo.databasename:=DM1.SG_ASSOC.DatabaseName;
   query_motivo.SQL.Clear;
   query_motivo.SQL.Add('Update CADP01 set P1OBS3=:P1OBS3 where P1CHAVE=:CHAVE and P1LOTSEQ=:LOTSEQ and P1CODEMP=:CODEMP ');
   query_motivo.parambyname('P1OBS3').AsMemo:=Tb_PedP1OBS3.AsString;
   query_motivo.parambyname('CHAVE').AsFloat:=Tb_PedP1CHAVE.AsFloat;
   query_motivo.parambyname('LOTSEQ').AsFloat:=Tb_PedP1LOTSEQ.AsFloat;
   query_motivo.parambyname('CODEMP').AsFloat:=Tb_PedP1CODEMP.AsFloat;
   try
      query_motivo.ExecSQL;
      fdm1StartCommit;
    except on e : exception do
       begin
       ex_erroSql_Novo(query_motivo,3207,'SGE '+e.message,'CADP01');
       end;
       end;
    query_motivo.Close;
    freeandnil(query_motivo);
    malteroumotivo:=false;
    end;


end;

procedure TFrm_PedCli.cb_bordasProClick(Sender: TObject);
begin
fDeletaPadroes(-2,'_PEDCLI','');
fGravaPadroes(-2,'CB_BORDASPRO','checked'         ,'_PEDCLI',IIF(cb_bordasPro.Checked,'True','False'));
end;

procedure TFrm_PedCli.cb_ultchaveClick(Sender: TObject);
begin
fDeletaPadroes(-1,'_PEDCLI','');
fGravaPadroes(-1,'CB_ULTCHAVE'     ,'checked'       ,'_PEDCLI',iif(cb_ultchave.Checked,'true','false'));
end;


function TFrm_PedCli.fEmmpresaMinimaMaxima(pChave: Real): Boolean;
begin

if (fsonumero(la_Empresas)=0) or (Tb_PedP1EMIDOC.AsInteger=0) then
   begin
   mCodEmp_Minima:=codemp;
   if codemp>100 then
      mCodEmp_Maxima:=codemp-100
   else
      mCodEmp_Maxima:=codemp+100;
   end
else
   begin
{
   mCodEmp_Minima:=codemp;

   if codemp>100 then
      mCodEmp_Maxima:=codemp-100
   else
      mCodEmp_Maxima:=codemp+100;
}
   mCodEmp_Minima:=valint(copy(la_empresas,pos('=',la_empresas),length(la_Empresas)-pos('=',la_empresas)));
   mCodEmp_Maxima:=mCodEmp_Minima;
   end;

{
While not Tb_Ped.Eof do
   begin
   if Tb_PedP1CHAVE.AsFloat<>pChave then
      begin
      Tb_Ped.Next;
      Continue;
      end;
   if mCodEmp_Minima=0 then
      mCodEmp_Minima:=Tb_PedP1CODEMP.AsInteger;
   if Tb_PedP1CODEMP.AsFloat<mCodEmp_Minima then
      mCodEmp_Minima:=Tb_PedP1CODEMP.AsInteger;

   if Tb_PedP1CODEMP.AsFloat>mCodEmp_Maxima then
      mCodEmp_Maxima:=Tb_PedP1CODEMP.AsInteger;
   Tb_Ped.Next;
   end;
}
result:=True;
end;


procedure TFrm_PedCli.bbImprimirRelCustoClick(Sender: TObject);
begin
  Application.Createform(TFrm_LucroPed, Frm_lucroped);
  Frm_lucroped.MCODEMP.Text:=Tb_PedP1CODEMP.AsString;
  Frm_lucroped.InstEmp.Text:=IIF(la_Empresas<>'','('+la_Empresas+' or P1CODEMP=0'+InttoStr(iif(codemp>100,codemp-100,codemp+100))+')','');
  Frm_lucroped.chave.Text:=Tb_PedP1CHAVE.AsString;
  Frm_lucroped.atualiza.Click;
  Lbl_NomeEmpresa.Caption:=DM1.Tb_EmpRAZAO.AsString;
  RLReport3.PreviewModal;
  FreeAndNil(Frm_LucroPed);
//  Ldb_SumQtd.Caption:='mlp_QtdeTot';
end;

procedure TFrm_PedCli.RLReport3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  mlp_QtdeTot:=0;
  mlp_ValorTotal:=0;
  mlp_totalcusto:=0;
  mlp_totalLucro:=0;
  mlp_PerLucro:=0;
  mlp_ValorLiquido:=0;
  mlp_mediadesc:=0;
end;

procedure TFrm_PedCli.Rl_DetAfterPrint(Sender: TObject);
begin
  mlp_QtdeTot:=mlp_QtdeTot+Frm_LucroPed.Tb_LucroPedP2QTD.AsFloat;
  mlp_ValorTotal:=mlp_ValorTotal+Frm_LucroPed.Tb_LucroPedVALORTOT.AsFloat;
  mlp_totalcusto:=mlp_totalcusto+Frm_LucroPed.Tb_LucroPedTOTCUSTO.AsFloat;
  mlp_totalLucro:=mlp_totalLucro+Frm_LucroPed.Tb_LucroPedLUCRO.AsFloat;
  mlp_PerLucro:=mlp_PerLucro+Frm_LucroPed.Tb_LucroPedPERCLUCRO.AsFloat;
  //:=mlp_ValorLiquido+Frm_LucroPed Real;
  //mlp_mediadesc:=mlp_mediadesc+Frm_LucroPed Real;
end;

procedure TFrm_PedCli.DBMemo4Change(Sender: TObject);
begin
if DBMemo4.Modified then
   malteroumotivo:=true;
end;

procedure TFrm_PedCli.BitBtn1Click(Sender: TObject);
begin
if Tb_Ped.State in [dsinsert, dsedit] then
   Tb_Ped.Post;
end;

procedure TFrm_PedCli.bbCancelarClick(Sender: TObject);
begin
if Tb_Ped.State in [dsinsert, dsedit] then
   Tb_Ped.Cancel;

end;

procedure TFrm_PedCli.gb_motivo_naoatendimentoExit(Sender: TObject);
begin
if Tb_Ped.State in [dsinsert, dsedit] then
   Tb_Ped.post;

end;

procedure TFrm_PedCli.RLcabcliBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

RLMemo_obsped.Lines.clear;
if length(trim(dm2.Qr_CabP1OBS2.AsString))>1 then
   RLMemo_obsped.Lines.Add(DM2.Qr_CabP1OBS2.AsString)
else
   rlobsped.Visible:=false;
if length(trim(dm2.Qr_CabP1OBS1.AsString))>1 then
   RLMemo_obsnf.Lines.Add(DM2.Qr_CabP1OBS1.AsString)
else
   rlobsnf.Visible:=false;


rlrod_qtdvol.Caption:=DM2.Qr_CabP1QTDVOL.AsString;
rlrod_especie.Caption:=DM2.Qr_CabP1ESPECIE.AsString;
rlrod_pesob.Caption:=DM2.Qr_CabP1PESOB.AsString;
rlrod_pesol.Caption:=DM2.Qr_CabP1PESOL.AsString;
if DM2.Qr_CabP1PREVENT.AsDateTime>pDatanula then
   rlrod_dathorsai.Caption := FormatDateTime('dd/mm/yyyy hh:nn ',  DM2.Qr_CabP1PREVENT.asdatetime)
else
   rlrod_dathorsai.Caption := ' ';

end;

procedure TFrm_PedCli.RLReport2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
RLMemo_obsped_timbrado.Lines.clear;
if length(trim(dm2.Qr_CabP1OBS2.AsString))>1 then
   RLMemo_obsped_timbrado.Lines.Add(DM2.Qr_CabP1OBS2.AsString)
else
   rlobsped_timbrado.Visible:=false;
if length(trim(dm2.Qr_CabP1OBS1.AsString))>1 then
   RLMemo_obsnf_timbrado.Lines.Add(DM2.Qr_CabP1OBS1.AsString)
else
   rlobsnf_timbrado.Visible:=false;


rlrod_qtdvol_timbrado.Caption:=DM2.Qr_CabP1QTDVOL.AsString;
rlrod_especie_timbrado.Caption:=DM2.Qr_CabP1ESPECIE.AsString;
rlrod_pesob_timbrado.Caption:=DM2.Qr_CabP1PESOB.AsString;
rlrod_pesol_timbrado.Caption:=DM2.Qr_CabP1PESOL.AsString;
if DM2.Qr_CabP1PREVENT.AsDateTime>pDatanula then
   rlrod_dathorsai_timbrado.Caption := FormatDateTime('dd/mm/yyyy hh:nn ',  DM2.Qr_CabP1PREVENT.asdatetime)
else
   rlrod_dathorsai_timbrado.Caption := ' ';


end;

procedure TFrm_PedCli.pc_cabecalhoChange(Sender: TObject);
var
i: Integer;
begin
if pc_cabecalho.ActivePage=tsJava then
   begin
   cb_impressora.Items.clear;
   for I := 0 to Printer.Printers.Count - 1 do

     begin
        cb_impressora.Items.add(Printer.Printers.Strings[I]);
     end;
   if cb_impressora.Items.Count>0 then
      cb_impressora.ItemIndex:=0;

   end;
end;

procedure TFrm_PedCli.bbimprelClick(Sender: TObject);
begin
fGravarRequisicoes('I',cb_impressora.Text,cb_ordem_impressao.itemindex,cb_agrupamento.ItemIndex,cb_modelo.itemindex,edt_qtdvias.value );

end;



procedure TFrm_PedCli.fGravarRequisicoes(pTipoEvento,pImpressora_padrao: string;pOrdemImpressao,pAgrupamento,pModelo,pQtdVias:integer);

var
query_requisicao: tquery;
begin

if fLerGenerico_query('DUAL','CADP01_REQUISICOES_SEQ.nextval','',query_consulta) then
   mrel_id:=query_consulta.fields[0].AsInteger;

query_requisicao:=tquery.create(nil);
query_requisicao.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_requisicao.sql.clear;
query_requisicao.sql.Add('Insert into CADP01_REQUISICOES ('
                        +' P1R_CHAVE'
                        +',P1R_LOTSEQ '
                        +',P1R_CODEMP'
                        +',P1R_TIPO_EVENTO'
                        +',P1R_IMPRESSORA_PADRAO'
                        +',P1R_ID'
                        +',P1R_DATHOR_REQ'
                        +',P1R_ORDEM_IMPRESSAO'
                        +',P1R_AGRUPAMENTO'
                        +',P1R_MODELO_RELATORIO'
                        +',P1R_QTDVIAS'

                        +') values ('
                        +' :P1R_CHAVE'
                        +',:P1R_LOTSEQ '
                        +',:P1R_CODEMP'
                        +',:P1R_TIPO_EVENTO'
                        +',:P1R_IMPRESSORA_PADRAO'
                        +','+inttostr(mrel_id)
                        +',SYSDATE '
                        +',:ORDEM_IMPRESSAO'
                        +',:AGRUPAMENTO'
                        +',:MODELO_RELATORIO'
                        +',:QTDVIAS'


                        +')');


query_requisicao.ParamByName('P1R_CHAVE').AsFloat :=Tb_PedP1CHAVE.AsFloat;
query_requisicao.ParamByName('P1R_LOTSEQ').AsFloat:=Tb_PedP1LOTSEQ.AsFloat;
query_requisicao.ParamByName('P1R_CODEMP').AsFloat:=Tb_PedP1CODEMP.AsFloat;
query_requisicao.ParamByName('P1R_TIPO_EVENTO').AsString:=pTipoEvento;
query_requisicao.ParamByName('P1R_IMPRESSORA_PADRAO').AsString:=pImpressora_padrao;
query_requisicao.ParamByName('ORDEM_IMPRESSAO').AsInteger:=pOrdemImpressao;
query_requisicao.ParamByName('AGRUPAMENTO').AsInteger      :=pAgrupamento;
query_requisicao.ParamByName('MODELO_RELATORIO').AsInteger :=pModelo;
query_requisicao.ParamByName('QTDVIAS').AsInteger          :=pQtdVias;

try
   query_requisicao.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_requisicao,3540,'func Erro:'+e.Message ,'CADNE');
   end;


query_requisicao.Close;
freeandnil(query_requisicao);

end;

procedure TFrm_PedCli.bbcampoblobClick(Sender: TObject);
begin
fGravarRequisicoes('A','',cb_ordem_impressao.itemindex,cb_agrupamento.ItemIndex,cb_modelo.itemindex,edt_qtdvias.value );
Timer_visualizar.Enabled:=true;


end;

procedure TFrm_PedCli.bbImpvisClick(Sender: TObject);
begin
fGravarRequisicoes('V','',cb_ordem_impressao.itemindex,cb_agrupamento.ItemIndex,cb_modelo.itemindex,edt_qtdvias.value );







end;

procedure TFrm_PedCli.Timer_visualizarTimer(Sender: TObject);

var

imagestream:  TMemoryStream;
query_rel: TADOQuery;


mchave_teste: integer;
begin
  inherited;
Timer_visualizar.Enabled:=false;
query_rel:=TADOQuery.Create(nil);
query_rel.Connection:=DM1_ADO.ADOConnection1;
query_rel.sql.add('select P1R_ARQUIVO_PDF from CADP01_REQUISICOES where '
                 +' P1R_ID=0'+Inttostr(mrel_id));
try
   query_rel.Open;
except
   query_rel.SQL.SaveToFile(mpastatemp + 'SQL.txt');
   end;

if query_rel.IsEmpty=false then 
   begin
   if query_rel.fieldbyname('P1R_ARQUIVO_PDF').IsNull then
      begin
      query_rel.close;
      freeandnil(query_rel);
      Timer_visualizar.Enabled:=true;
      exit;
      end
   else
      begin
      imagestream:=TMemoryStream.Create;
      (query_rel.fieldbyname('P1R_ARQUIVO_PDF') as TBlobField).SaveToStream(imagestream);
      imagestream.Position := 0;
      mchave_teste:=mrel_id;
      while true do
         begin
         if not FileExists(mcamtmp+'\ped'+Inttostr(mchave_teste)+'.pdf') then
            break
         else if deletefile(mcamtmp+'\ped'+Inttostr(mchave_teste)+'.pdf') then
            break;
         mchave_teste:=mchave_teste+1;
         end;
      imagestream.SaveToFile(mcamtmp+'\ped'+Inttostr(mchave_teste)+'.pdf');
      fExecutarArquivo(mcamtmp+'\ped'+Inttostr(mchave_teste)+'.pdf');
      fAdicionarTempDel(mcamtmp+'\ped'+Inttostr(mchave_teste)+'.pdf');
      query_rel.close;
      freeandnil(query_rel);
      end;
   end;



end;

procedure TFrm_PedCli.BitBtn2Click(Sender: TObject);
begin
mrel_id:=valint(edt_idretorno.Text);
Timer_visualizar.Enabled:=true;


end;

procedure TFrm_PedCli.edt_numnfceExit(Sender: TObject);
begin
edt_numnfce.Text:=fdeixanum2(edt_numnfce.Text);

end;

procedure TFrm_PedCli.BitBtn3Click(Sender: TObject);
var
  Query_Cons: TQuery;
  mmensagem: string;
  ParametrosNfce: tParametrosNfce;

begin

query_Cons := TQuery.Create(nil);
query_Cons.DatabaseName:='SG_ASSOC';
query_Cons.SQL.Clear;
query_Cons.SQL.Add('SeleCT NSNUMERO,NSDTEMIS,NSNFE_CHAVEACESSO,NSNFE_DCHAVEACESSO,NSNFE_NUMPROT '
                  +',NSCODCLI from CADNS WHERE NSCHAVEP=:CHAVE '
                  +' AND NSLOTSEQ_CP=:LOTSEQ '
                  +' AND NSCODEMP=:CODEMP '
                  +' AND not (NSNFE_XML_CLIENTE is null) '
                            +'  and NSTIPO=2 '
                  );
query_Cons.ParamByName('CHAVE').AsInteger:=Tb_PedP1CHAVE.AsInteger;
query_Cons.ParamByName('LOTSEQ').AsInteger:=Tb_PedP1LOTSEQ.Asinteger;
query_Cons.ParamByName('CODEMP').AsInteger:=Tb_PedP1CODEMP.asinteger;
try
   query_Cons.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_cons,1884,'xml nfce:'+e.Message ,'xmlnfce');
   FreeAndNil(query_cons);
   exit;
   end;
   end;
if Query_Cons.IsEmpty then
   begin
   MessageDlg('Nao Existe NFSE emitida',mtWarning,[mbOk],0);
   exit;
   end;

ParametrosNfce.pChave := Tb_PedP1CHAVE.AsInteger;
ParametrosNfce.pChave_ano := Tb_PedP1LOTSEQ.AsInteger;
ParametrosNfce.pCodemp := Tb_PedP1CODEMP.AsInteger;
ParametrosNfce.pAceita_confirmacao := false;
parametrosNfce.pAmbiente := iif(DM4.Tb_ParGer02PG2USANFE.AsInteger<2,2,1);


fEmitirNotadeServico(ParametrosNfce);
Query_Cons.Close;
freeandnil(Query_Cons);


end;

procedure TFrm_PedCli.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=115 then
   fTestareFecharPedido(Tb_PedP1CHAVE.AsInteger,Tb_PedP1LOTSEQ.AsInteger,Tb_PedP1CODEMP.AsInteger);
end;
procedure TFrm_PedCli.fTestareFecharPedido(pChave,pChave_ano,pCodemp: integer);
var
mMotivo: string;
query_ped: TQuery;
// inicio


    function fBloqueiaLiberaPedido(ptipo: Integer): Boolean;
    // ptipo=0-libera
    //       1-bloqueio

    var
    Query1: TQuery;
    begin
    if pchave>0  then
       begin
       Query1:=TQuery.Create(nil);
       Query1.DatabaseName:='SG_ASSOC';
       Query1.Close;
       Query1.SQL.Clear;
       Query1.SQL.Add('Update CADP01 set P1SITPED=:SITUACAO, P1QTDMAN=P1QTDMAN + 1, P1DATHOR_ULTEVE=SYSDATE  '
                                 +' where (P1CODEMP=:CODEMP or P1CODEMP=:CODEMP_FILIAL) '
                                 +' and   P1CHAVE=:CHAVE '
                                 +' and   P1LOTSEQ=:CHAVE_ANO ');
    //                             +' and   P1SITPED<>9 ' );
       Query1.ParamByName('SITUACAO').AsInteger:=ptipo;
       Query1.ParamByName('CODEMP').AsInteger:=pcodemp;
       if pcodemp>100 then
          Query1.ParamByName('CODEMP_FILIAL').AsInteger:=pCodEmp-100
       else
          Query1.ParamByName('CODEMP_FILIAL').AsInteger:=pCodEmp+100;

       Query1.ParamByName('CHAVE').AsInteger:=pChave;
       Query1.ParamByName('CHAVE_ANO').AsInteger:=pChave_ano;

       try
          Query1.ExecSQL;
          fDM1StartCommit;
       except
          if not fVerificaRedeAtiva(true) then
             begin
             end
          else
             begin
             query1.close;

    //         ex_erroSql_Novo(Query1,7472,'_lerarq','adp01_pre');
             end;
          end;
       query1.close;

       FreeAndNil(query1);
       end;
    result:=true;
    end;


// termino



   procedure pfechartudo;
   begin
//   fBloqueiaLiberaPedido(0);
   if query_ped.active then
      begin
      query_ped.close;
      freeandnil(query_ped);
      end;
   end;
   procedure pmudarempresa(pCodEmp_Atual: Integer);

   begin
   query_ped.close;
   query_ped.SQL.clear;
   query_ped.sql.add('Update cadpfp set PFPCODEMP='+inttostr(iif(pCodEmp_Atual<100,pCodemp_Atual+100,pcodEmp_Atual-100))
                    +' where PFPCHAVE='+inttostr(pChave)
                    +' and PFPLOTSEQ='+inttostr(pChave_ano)
                    +' and PFPCODEMP='+inttostr(pCodemp));
   try
      query_ped.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_ped,3909,'SGE','CADP01');
      pfechartudo;
      exit;
      end;
      end;

   query_ped.close;
   query_ped.SQL.clear;
   query_ped.sql.add('Update cadp02 set P2CODEMP='+inttostr(iif(pCodEmp_Atual<100,pCodemp_Atual+100,pcodEmp_Atual-100))
                    +' where P2CHAVE='+inttostr(pChave)
                    +' and P2LOTSEQ='+inttostr(pChave_ano)
                    +' and P2CODEMP='+inttostr(pCodemp));
   try
      query_ped.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_ped,3909,'SGE','CADP01');
      pfechartudo;
      exit;
      end;
      end;





   Query_ped.close;
   query_ped.SQL.clear;
   query_ped.sql.add('delete from CADCSF '
                    +' where CFCODEMP=:CODEMP_NOV '
                    +' and  CFCHAVEP=:CHAVE '
                    +' and  CFLOTSEQ=:LOTSEQ ');
   query_ped.ParamByName('CODEMP_NOV').AsInteger := iif(pCodEmp_Atual<100,pCodemp_Atual+100,pcodEmp_Atual-100);
   query_ped.ParamByName('CHAVE').AsInteger      := pChave;
   query_ped.ParamByName('LOTSEQ').AsInteger     := pChave_ANO;
   try
      query_ped.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
       ex_erroSql_Novo(Query_ped,13775,'venda_pre'+e.Message,'CADP01');
       end;



   query_ped.close;
   query_ped.SQL.clear;
   query_ped.sql.add('Update CADCSF set CFCODEMP='+inttostr(iif(pCodEmp_Atual<100,pCodemp_Atual+100,pcodEmp_Atual-100))
                    +' where CFCHAVEP='+inttostr(pChave)
                    +' and CFLOTSEQ='+inttostr(pChave_ano)
                    +' and CFCODEMP='+inttostr(pCodemp));
   try
      query_ped.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_ped,3902,'SGE','CADCSF');
      pfechartudo;
      exit;
      end;
      end;

   end;



begin

query_ped:=tQuery.create(nil);
query_ped.databaseName:=DM1.SG_ASSOC.databasename;

if not fValidarPedido(pChave,pChave_ano,pCodemp) then
   begin
   pfechartudo;
   exit;
   end;

fBloqueiaLiberaPedido(1);


if application.messagebox(pchar('Quer realmente fechar o pedido '+inttostr(pChave)+' cliente '+Tb_PedCRAZAO.AsString+' valor '+formatfloat(mcasas, Tb_PedP1TOTALL.asfloat)+'?'),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   begin
   fBloqueiaLiberaPedido(0);
   pfechartudo;
   exit;
   end;
if pcodemp=1 then
   pmudarempresa(pCodemp);

{
if not fValidarPedido(pChave,pChave_ano,pCodemp) then
   begin
   fBloqueiaLiberaPedido(0);
   pfechartudo;
   exit;
   end;
 }
query_ped.close;
query_ped.SQL.clear;
query_ped.sql.add('Update cadp01 set P1NUMCF=P1CHAVE,P1STATUS=2,P1EMIDOC=1,P1CUPOM=1,P1DATDOC=SYSDATE,P1DATACF=SYSDATE '
                 +',P1CX_CODCAI=:CODCAI ');
if pcodemp=1 then
  query_ped.sql.add(' ,P1CODEMP='+inttostr(pCodemp+100));

query_ped.parambyname('CODCAI').Asinteger := codcai;

query_ped.sql.add(',P1DATANF=SYSDATE '
                 +' where P1CHAVE='+inttostr(pChave)
                 +' and P1LOTSEQ='+inttostr(pChave_ano)
                 +' and P1CODEMP='+inttostr(pCodemp));
try
   query_ped.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(query_ped,3909,'SGE','CADP01');
   fBloqueiaLiberaPedido(0);
   pfechartudo;
   exit;
   end;
   end;
bbAtualizarClick(self);
fBloqueiaLiberaPedido(0);
pfechartudo;
exit;
end;



procedure TFrm_PedCli.CLB_NFCEClick(Sender: TObject);
begin
CLB_NFCE:=Valida_CheckList(CLB_NFCE);

end;

procedure TFrm_PedCli.bbEnviarNFCEClick(Sender: TObject);
var
mDadosNFCEchvAcesso: TDadosNFCEChvAcesso;
mNfcePedCli: tNfce;
begin
mDadosNFCEchvAcesso.pTpEmis :=9;
mDadosNFCEchvAcesso.pServico:=NFCe_Autorizacao_enviar;
mDadosNFCEchvAcesso.pChave:=Tb_PedP1CHAVE.AsInteger;
mDadosNFCEchvAcesso.pChaveAno:=Tb_PedP1LOTSEQ.AsInteger;
mDadosNFCEchvAcesso.pCodEmp:=Tb_PedP1CODEMP.AsInteger;
mDadosNFCEchvAcesso.pNumdoc:=Tb_PedP1NFCE_NUMERO.AsInteger;
mDadosNFCEchvAcesso.pSerieDoc:=Tb_PedP1NFCE_SERIE.AsString;
mDadosNFCEchvAcesso.pModeloDoc:=Tb_PedP1NFCE_MODELO.AsString;


if mNfcePedCli.fEnviarNFCEContigencia(mDadosNFCEChvAcesso) then
   bbAtualizarClick(self);  

end;

procedure TFrm_PedCli.bbImprimirNFCEClick(Sender: TObject);
var
mVerificarTef: tVerificaTef;
begin
if (Tb_PedP1STATUS.AsInteger>1) and (Tb_PedP1NFCE_NUMERO.AsInteger<=0) then
   exit;



mVerificarTef := tVerificaTef.Create;


mVerificarTef.mDadosPedidoBuscar.pChave     :=  Tb_PedP1CHAVE.AsInteger;
mVerificarTef.mDadosPedidoBuscar.pChave_ano :=  Tb_PedP1LOTSEQ.AsInteger;
mVerificarTef.mDadosPedidoBuscar.pcodemp    :=  Tb_PedP1CODEMP.AsInteger;
mVerificarTef.mDadosPedidoBuscar.ptotliq    :=  Tb_PedP1TOTALL.AsFloat;
mVerificarTef.mDadosPedidoBuscar.pcodcli    :=  Tb_PedP1CODCLI.AsFloat;

if mVerificarTef.fEmitirReemitirNFCE(mVerificarTef.mDadosPedidoBuscar) then
   bbAtualizarClick(self);

freeandnil(mVerificarTef);   
end;

procedure TFrm_PedCli.bbFormasXTitulosClick(Sender: TObject);
begin

if (Tb_Ped.Active=true and  (not Tb_PedP1CHAVE.isnull)) then
   begin
   Application.CreateForm(TFrm_FpagComparadoAoTitulo, Frm_FpagComparadoAoTitulo);
   Frm_FpagComparadoAoTitulo.edt_chaveped.text := Tb_PedP1CHAVE.AsString;
   Frm_FpagComparadoAoTitulo.lbl_dadosped.Caption:=Tb_PedCRAZAO.AsString+' Valor do Pedido '+FormatFloat(mcasas , Tb_PedP1TOTALL.AsFloat)+' Data '+FormatDateTime(fdt2, Tb_PedP1DATAP.AsDateTime);
   Frm_FpagComparadoAoTitulo.mCodEmp := Tb_pedP1CODEMP.asinteger;
   Frm_FpagComparadoAoTitulo.mLotSeq := Tb_pedP1LOTSEQ.asinteger;
   Frm_FPagComparadoAoTitulo.fLerCadpfpXCaddar;
   Frm_FPagComparadoAoTitulo.fLerDupAgru;

   Frm_FPagComparadoAoTitulo.ShowModal;
   freeandnil(Frm_FPagComparadoAoTitulo);
   end;

end;


function tFrm_Pedcli.fValidarPedido(pChave,pChave_ano,pCodemp: integer): boolean;
var
query_ped: tQuery;
mMotivo: string;
ParametrosNfce: tParametrosNfce;

   procedure pfechartudo;
   begin
   if (query_ped<>nil) then
      begin
      try
         query_ped.close;
         freeandnil(query_ped);
      except
         end;

      end;
   end;
// mudar empresa


   procedure pmudarempresa(pCodEmp_Atual: Integer);

   begin
   query_ped.close;
   query_ped.SQL.clear;
   query_ped.sql.add('Update cadpfp set PFPCODEMP='+inttostr(iif(pCodEmp_Atual<100,pCodemp_Atual+100,pcodEmp_Atual-100))
                    +' where PFPCHAVE='+inttostr(pChave)
                    +' and PFPLOTSEQ='+inttostr(pChave_ano)
                    +' and PFPCODEMP='+inttostr(pCodemp));
   try
      query_ped.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_ped,3909,'SGE','CADP01');
      pfechartudo;
      exit;
      end;
      end;

   query_ped.close;
   query_ped.SQL.clear;
   query_ped.sql.add('Update cadp02 set P2CODEMP='+inttostr(iif(pCodEmp_Atual<100,pCodemp_Atual+100,pcodEmp_Atual-100))
                    +' where P2CHAVE='+inttostr(pChave)
                    +' and P2LOTSEQ='+inttostr(pChave_ano)
                    +' and P2CODEMP='+inttostr(pCodemp));
   try
      query_ped.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_ped,3909,'SGE','CADP01');
      pfechartudo;
      exit;
      end;
      end;





   Query_ped.close;
   query_ped.SQL.clear;
   query_ped.sql.add('delete from CADCSF '
                    +' where CFCODEMP=:CODEMP_NOV '
                    +' and  CFCHAVEP=:CHAVE '
                    +' and  CFLOTSEQ=:LOTSEQ ');
   query_ped.ParamByName('CODEMP_NOV').AsInteger := iif(pCodEmp_Atual<100,pCodemp_Atual+100,pcodEmp_Atual-100);
   query_ped.ParamByName('CHAVE').AsInteger      := pChave;
   query_ped.ParamByName('LOTSEQ').AsInteger     := pChave_ANO;
   try
      query_ped.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
       ex_erroSql_Novo(Query_ped,13775,'venda_pre'+e.Message,'CADP01');
       end;



   query_ped.close;
   query_ped.SQL.clear;
   query_ped.sql.add('Update CADCSF set CFCODEMP='+inttostr(iif(pCodEmp_Atual<100,pCodemp_Atual+100,pcodEmp_Atual-100))
                    +' where CFCHAVEP='+inttostr(pChave)
                    +' and CFLOTSEQ='+inttostr(pChave_ano)
                    +' and CFCODEMP='+inttostr(pCodemp));
   try
      query_ped.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_ped,3902,'SGE','CADCSF');
      pfechartudo;
      exit;
      end;
      end;

   end;

// mudar empresa


// inicio reabrir


   function pReabrirPedido: boolean;

      procedure fExcluirPagamentos;
      var
      query_excluir: TQuery;
      query_titulos: TQuery;
      query_fpcr: TQuery;
      query_fpcrdup: TQuery;
      begin

      query_titulos:=TQuery.create(nil);
      query_titulos.databasename:=DM1.SG_ASSOC.DatabaseName;

      query_excluir:=TQuery.create(nil);
      query_excluir.databasename:=DM1.SG_ASSOC.DatabaseName;

      query_fpcr:=TQuery.create(nil);
      query_fpcr.databasename:=DM1.SG_ASSOC.DatabaseName;

      query_fpcrdup:=TQuery.create(nil);
      query_fpcrdup.databasename:=DM1.SG_ASSOC.DatabaseName;


      query_ped.first;
      While not query_ped.Eof do
         begin
         query_titulos.Close;
         query_titulos.SQL.clear;
         query_titulos.SQL.Add('Select CRSTATUS,CRNUMERO,CRLOTE,CRCODCLI,CRCODEMP,CRDUP,CRVALOR,CRVALPAG,CRCODECF,'
                       +' CRLOTSEQ_LB,CRNUMERO,CRDESD,CRDUP,CRDTEMIS,CRNPED '
                       +'  from CADDAR where '
                       +iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',' CRCODEMP=0'+query_ped.FieldbyName('P1CODEMP').AsString+' and ')
                       +' CRLOTSEQ_CP=0'+query_ped.FieldbyName('P1LOTSEQ').AsString
                       +' and CRNPED=0'+query_ped.FieldbyName('P1CHAVE').AsString
                       +' and CRORDEM=0'+query_ped.FieldbyName('P1ORDEM').AsString);
         try
            query_titulos.Open;
         except on e : exception do
            begin
            ex_erroSql_Novo(query_titulos,3923,'SGE '+e.message,'CADDAR');
            exit;
            end;
            end;
         while not query_titulos.eof do
            begin
            query_fpcrdup.close;
            query_fpcrdup.sql.clear;
            query_fpcrdup.sql.Add('Select FPLOTE,FPCODEMP,FPLOTSEQ from FPCRDUP '
                                 +' WHERE FPDUP_CODEMP=:CODEMP '
                                 +' and FPCODECF=:CODECF '
                                 +' and FPNUMERO=:NUMDUP '
                                 +' AND FPDESD=:DESD '
                                 +' AND FPTIPO=:TIPO '
                                 +' AND FPDTEMIS=:DTEMIS ');
            query_fpcrdup.parambyname('CODEMP').AsInteger:=query_titulos.fieldbyname('CRCODEMP').AsInteger;
            query_fpcrdup.parambyname('CODECF').AsInteger:=query_titulos.fieldbyname('CRCODECF').AsInteger;
            query_fpcrdup.parambyname('NUMDUP').AsInteger:=query_titulos.fieldbyname('CRNUMERO').AsInteger;
            query_fpcrdup.parambyname('DESD').AsString   :=query_titulos.fieldbyname('CRDESD').AsString;
            query_fpcrdup.parambyname('TIPO').AsInteger:=query_titulos.fieldbyname('CRDUP').AsInteger;
            query_fpcrdup.parambyname('DTEMIS').AsDateTime:=query_titulos.fieldbyname('CRDTEMIS').AsDateTime;
            try
               query_fpcrdup.Open;
            except on e : exception do
               begin
               ex_erroSql_Novo(query_fpcrdup,3956,'SGE '+e.message,'FPCR');
               exit;
               end;
               end;
            While not query_fpcrdup.eof do
               begin
               query_fpcr.close;
               query_fpcr.SQL.clear;
               query_fpcr.SQL.Add('select FPCODLDR,FPLOTSEQ_FC,FPCODEMP from fpcr '
                                 +' where FPLOTE=:LOTE '
                                 +' and FPCODEMP=:CODEMP '
                                 +' AND FPLOTSEQ=:LOTSEQ ');
               query_fpcr.parambyname('CODEMP').AsInteger:=query_fpcrdup.fieldbyname('FPCODEMP').AsInteger;
               query_fpcr.parambyname('LOTE').AsInteger  :=query_fpcrdup.fieldbyname('FPLOTE').AsInteger;
               query_fpcr.parambyname('LOTSEQ').AsInteger:=query_fpcrdup.fieldbyname('FPLOTSEQ').AsInteger;
               try
                  query_fpcr.Open;
               except on e : exception do
                  begin
                  ex_erroSql_Novo(query_fpcr,3975,'SGE '+e.message,'FPCR');
                  exit;
                  end;
                  end;
               While not query_fpcr.eof do
                  begin
                  query_excluir.close;
                  query_excluir.SQL.clear;
                  query_excluir.SQL.add('Delete from CADLDR where CODEMP=:CODEMP '
                                       +' and CODLDR=:CODLDR ');
                  query_excluir.parambyname('CODEMP').AsInteger:=query_fpcr.fieldbyname('FPCODEMP').AsInteger;
                  query_excluir.parambyname('CODLDR').AsInteger:=query_fpcr.fieldbyname('FPCODLDR').AsInteger;
                  try
                     query_excluir.ExecSQL;
                     fdm1StartCommit;
                  except on e : exception do
                     begin
                     ex_erroSql_Novo(query_excluir,3992,'SGE '+e.message,'FPCR');
                     exit;
                     end;
                     end;
                  query_fpcr.next;
                  end;
               query_fpcrdup.next;
               end;
            query_titulos.next;
            end;
         // deletar tudo

mGerarOldCadDar.pStatus:=9;
      mGerarOldCadDar.pNumero:=0;
      mGerarOldCadDar.pCodcli:=0;
      mGerarOldCadDar.pDup:=0;
      mGerarOldCadDar.pDesd:='';
      mGerarOldCadDar.pMotivo:='EXCLUSAO 4140';
      mGerarOldCadDar.pCodEmp   :=query_ped.fieldbyname('P1CODEMP').AsInteger;
      mGerarOldCadDar.pChavePed :=query_ped.fieldbyname('P1CHAVE').AsInteger;
      mGerarOldCadDar.pLotseqPed:=query_ped.fieldbyname('P1LOTSEQ').AsInteger;
      mGerarOldCadDar.pDtEmis:=pdatanula;
   fGerarOldCadDar(mGerarOldCadDar);



         query_excluir.close;
         query_excluir.SQL.clear;
         query_excluir.SQL.add('Delete from CADDAR where CRCODEMP=:CODEMP '
                              +' and CRNPED=:CHAVEPED '
                              +' and CRLOTSEQ_CP=:LOTSEQ ');
         query_excluir.parambyname('CODEMP').AsInteger:=query_ped.fieldbyname('P1CODEMP').AsInteger;
         query_excluir.parambyname('CHAVEPED').AsInteger:=query_ped.fieldbyname('P1CHAVE').AsInteger;
         query_excluir.parambyname('LOTSEQ').AsInteger:=query_ped.fieldbyname('P1LOTSEQ').AsInteger;
         try
            query_excluir.ExecSQL;
            fdm1StartCommit;
         except on e : exception do
            begin
            ex_erroSql_Novo(query_excluir,4016,'SGE '+e.message,'CADDAR');
            exit;
            end;
            end;
// cadns

         query_excluir.close;
         query_excluir.SQL.clear;
         query_excluir.SQL.add('Delete from CADNS where NSCODEMP=:CODEMP '
                              +' and NSCHAVEP=:CHAVEPED '
                              +' and NSLOTSEQ_CP=:LOTSEQ ');
         query_excluir.parambyname('CODEMP').AsInteger:=query_ped.fieldbyname('P1CODEMP').AsInteger;
         query_excluir.parambyname('CHAVEPED').AsInteger:=query_ped.fieldbyname('P1CHAVE').AsInteger;
         query_excluir.parambyname('LOTSEQ').AsInteger:=query_ped.fieldbyname('P1LOTSEQ').AsInteger;
         try
            query_excluir.ExecSQL;
            fdm1StartCommit;
         except on e : exception do
            begin
            ex_erroSql_Novo(query_excluir,4034,'SGE '+e.message,'CADNS');
            exit;
            end;
            end;


// termino cadns


         query_fpcrdup.First;
         While not query_fpcrdup.Eof do
            begin
            query_excluir.close;
            query_excluir.SQL.clear;
            query_excluir.SQL.add('Delete from FPCR where FPCODEMP=:CODEMP '
                                 +' and FPLOTE=:LOTE'
                                 +' and FPLOTSEQ=:LOTSEQ ');
            query_excluir.parambyname('CODEMP').AsInteger :=query_fpcrdup.fieldbyname('FPCODEMP').AsInteger;
            query_excluir.parambyname('LOTE').AsInteger   :=query_fpcrdup.fieldbyname('FPLOTE').AsInteger;
            query_excluir.parambyname('LOTSEQ').AsInteger:=query_fpcrdup.fieldbyname('FPLOTSEQ').AsInteger;
            try
               query_excluir.ExecSQL;
               fdm1StartCommit;
            except on e : exception do
               begin
               ex_erroSql_Novo(query_excluir,4016,'SGE '+e.message,'CADDAR');
               exit;
               end;
               end;

            query_excluir.close;
            query_excluir.SQL.clear;
            query_excluir.SQL.add('Delete from FPCRDUP where FPCODEMP=:CODEMP '
                                 +' and FPLOTE=:LOTE'
                                 +' and FPLOTSEQ=:LOTSEQ ');
            query_excluir.parambyname('CODEMP').AsInteger :=query_fpcrdup.fieldbyname('FPCODEMP').AsInteger;
            query_excluir.parambyname('LOTE').AsInteger   :=query_fpcrdup.fieldbyname('FPLOTE').AsInteger;
            query_excluir.parambyname('LOTSEQ').AsInteger:=query_fpcrdup.fieldbyname('FPLOTSEQ').AsInteger;
            try
               query_excluir.ExecSQL;
               fdm1StartCommit;
            except on e : exception do
               begin
               ex_erroSql_Novo(query_excluir,4055,'SGE '+e.message,'CADDAR');
               exit;
               end;
               end;
           query_fpcrdup.Next;
           end;
        query_ped.next;
        end;
      query_excluir.close;
      freeandnil(query_excluir);

      query_fpcr.close;
      freeandnil(query_fpcr);
      query_fpcrdup.close;
      freeandnil(query_fPcrdup);
      query_titulos.close;
      freeandnil(query_titulos);
      end;










{

       procedure fExcluirTituloseNotas;
       var
       query_excluir: TQuery;
       query_titulos: TQuery;
       begin
       query_titulos:=TQuery.create(nil);
       query_titulos.databasename:=DM1.SG_ASSOC.DatabaseName;

       query_excluir:=TQuery.create(nil);
       query_excluir.databasename:=DM1.SG_ASSOC.DatabaseName;
       query_ped.first;
       While not query_ped.Eof do
            begin

      // EXCLUIR O CADLDR
           query_titulos.Close;
           query_titulos.Sql.Clear;
           query_titulos.Sql.add('Select CRCODEMP,CRCODLDR,CRLOTSEQ_FC FROM CADDAR '
                           +' where CRCODEMP=0'+query_ped.FieldByName('P1CODEMP').AsString
                           +' and CRLOTSEQ_CP=0'+query_ped.FieldByName('P1LOTSEQ').AsString
                           +' and CRNPED=0'+query_ped.FieldByName('P1CHAVE').AsString
                           +' and CRORDEM=0'+query_ped.FieldByName('P1ORDEM').AsString);
           try
              query_titulos.Open;
           except on e : exception do
              begin
              ex_erroSql_Novo(query_titulos,3918,'SGE '+e.message,'CADDAR');
              exit;
              end;
              end;
           While not query_titulos.Eof do
              begin
              query_excluir.Close;
              query_excluir.SQL.Clear;
              query_excluir.SQL.Add('Update CADLDR set STATUS=9, '
                              +' USREXC=0'+IntToStr(codusr)+','
                              +' DTHREXC=:DTHREXC '
                              +' where CODEMP=0'+query_titulos.fieldbyName('CRCODEMP').AsString
                              +' and LOTSEQ=0'+query_titulos.fieldbyName('CRLOTSEQ_FC').AsString
                              +' and CODLDR=0'+query_titulos.fieldbyName('CRCODLDR').AsString);
              query_excluir.ParamByName('DTHREXC').AsDateTime:=now;
              Try
                 query_excluir.ExecSQL;
                 fdm1StartCommit;
              except on e : exception do
                 begin
                 ex_erroSql_Novo(query_excluir,3937,'SGE '+e.message,'CADLDR');
                 exit;
                 end;
                 end;
              query_titulos.next;
              end;

      // TERMINO DO CADLDR
           query_excluir.Close;
           query_excluir.Sql.Clear;
           query_excluir.Sql.add('Update CADDAR SET CRSTATUS=9, '
                           +' CRUSRALT=0'+IntTostr(codusr)+','
                           +' CRDTALT=:DTALT'
                           +' where CRCODEMP=0'+query_ped.FieldByName('P1CODEMP').AsString
                           +' and CRLOTSEQ_CP=0'+query_ped.FieldByName('P1LOTSEQ').AsString
                           +' and CRNPED=0'+query_ped.FieldByName('P1CHAVE').AsString
                           +' and CRORDEM=0'+query_ped.FieldByName('P1ORDEM').AsString);
           query_excluir.ParambyName('DTALT').AsDateTime:=now;
           Try
              query_excluir.ExecSQL;
              fdm1StartCommit;
           except on e : exception do
              begin
              ex_erroSql_Novo(query_excluir,3961,'SGE '+e.message,'CADLDR');
              exit;
              end;
              end;
           query_excluir.Close;
           query_excluir.Sql.Clear;
           query_excluir.Sql.add('Update CADNS SET NSSTATUS=case when NSNUMERO>0 then 9 else NSSTATUS end '
                            +',NSNFCE_SITUACAO=case when NSNFCE_NUMERO>0 then 9 else NSNFCE_SITUACAO end '
                           +' where NSCODEMP=0'+query_ped.FieldByName('P1CODEMP').AsString
                           +' and NSLOTSEQ_CP=0'+query_ped.FieldByName('P1LOTSEQ').AsString
                           +' and NSCHAVEP=0'+query_ped.FieldByName('P1CHAVE').AsString
                           +' and NSORDEMP=0'+query_ped.FieldByName('P1ORDEM').AsString
                                  +'  and NSTIPO<2 ' );
            Try
               query_excluir.ExecSQL;
               fdm1StartCommit;
            except on e : exception do
               begin
               ex_erroSql_Novo(query_excluir,3979,'SGE '+e.message,'CADNS');
               exit;
               end;
               end;
            query_ped.Next;
            end;
       query_excluir.close;
       freeandnil(query_excluir);
       query_titulos.close;
       freeandnil(query_titulos);
       end;
 }
   begin
   if application.messagebox(pchar('Quer realmente abrir o pedido '+inttostr(pChave)+' cliente '+Tb_PedCRAZAO.AsString+' valor '+formatfloat(mcasas, Tb_PedP1TOTALL.asfloat)+'?'),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
      begin
      result:=false;
      exit;
      end;

{
   if not fPed01ExcluiPagamento(0,query_ped) then
      begin
      MessageDlg('Erro ao Colocar os Titulos em Abertos!',mtError,[mbOk],0);
      result:=false;
      exit;
      end;
}
      fExcluirPagamentos;

//   fExcluirTituloseNotas;
   pmudarempresa(pCodemp);

   result:=true;

   query_ped.close;
   query_ped.SQL.clear;
   query_ped.sql.add('Update cadp01 set P1NUMCF=0,P1STATUS=0,P1EMIDOC=0,P1CUPOM=0,P1DATDOC=:PDATADOC,P1DATACF=:PDATADOC');
   query_ped.sql.add(' ,P1CODEMP='+inttostr(pCodemp-100));
   query_ped.sql.add(',P1CX_CODCAI=:CODCAI ');
   query_ped.sql.add(',P1DATANF=:PDATADOC'
                    +' where P1CHAVE='+inttostr(pChave)
                    +' and P1LOTSEQ='+inttostr(pChave_ano)
                    +' and P1CODEMP='+inttostr(pCodemp));
   query_ped.ParamByName('PDATADOC').AsDateTime:=pdatanula;
   query_ped.ParamByName('CODCAI').AsInteger:=codcai;
   try
      query_ped.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_ped,3909,'SGE','CADP01');
      pfechartudo;
      exit;
      end;
      end;
   bbAtualizarClick(self);
   pfechartudo;


   end;

// termino reabrir


begin


result:=false;
query_ped:=TQuery.create(nil);
query_ped.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_ped.SQL.Add('Select P1CODEMP,P1LOTSEQ,P1CHAVE,P1ORDEM,P1TIPO,P1STATUS,P1CODCLI,'
                 +'P1EMIDOC,P1NUMNF,P1SITPED,P1DATHOR_ULTEVE,P1CODUSR_ULTEVE,P1CODUSR,P1COMP_ULTEVE '
                 +',P1NFCE_NUMERO,P1NFCE_NPROT '
                 +' from CADP01 where P1CHAVE='+inttostr(pChave)
                 +' and P1LOTSEQ='+inttostr(pChave_ano)
                 +' and P1CODEMP='+inttostr(pCodemp));
try
   query_ped.open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_ped,3852,'SGE','CADP01');
   pfechartudo;
   exit;
   end;
   end;
if query_ped.fieldbyname('P1TIPO').asinteger=0 then
   begin
   MessageDlg('Pedido é Orcamento, invalido!',mtWarning,[mbOk],0);
   pfechartudo;
   exit;
   end;
if (query_ped.fieldbyname('P1NFCE_NUMERO').asinteger>0) and
   (fsonumero(query_ped.fieldbyname('P1NFCE_NPROT').asString)>0)  then
   begin
   MessageDlg('Possui nfce, invalido!',mtWarning,[mbOk],0);
   pfechartudo;
   exit;
   end;


if (query_ped.FieldByName('P1SITPED').Value = 1)
   and ( (query_ped.FieldByName('P1DATHOR_ULTEVE').AsDateTime>pdatanula)
   and (MinutesBetween(query_ped.FieldByName('P1DATHOR_ULTEVE').AsDateTime,now)<2)) then
   begin
   mcinst2:=query_ped.FieldByName('P1CODUSR_ULTEVE').AsString+' - ';
   if query_ped.FieldByName('P1CODUSR_ULTEVE').AsInteger=1111 then
      mcinst2:=mcinst2+'Programador(Master)'
   else
      begin
      if flcadusr(0,0,query_ped.FieldByName('P1CODUSR').AsString) then
         mcinst2:=mcinst2+DM4.Tb_UsrNOMUSR.AsString;
      end;
   mcinst := 'Pedido em Manutençao no Computador: '+query_ped.FieldByName('P1COMP_ULTEVE').AsString
           + ' Pelo Usuário: '+mcinst2
           + ' Data/Hora: '+Formatdatetime('dd/mm/yyyy hh:nn:ss', query_ped.FieldByName('P1DATHOR_ULTEVE').AsDateTime);
   fMensagem(mcinst,0,['0'],0);
   result:=false;
   pfechartudo;
   exit;
   end;
mMotivo:='';
if query_ped.fieldbyname('P1STATUS').AsInteger>7 then
   mMotivo:=mMotivo+'pedido excluido anteriormente'+#13
else if query_ped.fieldbyname('P1STATUS').AsInteger=2 then
   begin
   mValidarSenha.pTipo:=0;
   mValidarSenha.pCodusr:=codusr;
   mValidarSenha.pCodSen:=4;
   mValidarSenha.pCodEmp:=0;
   mValidarSenha.pCodCli:=query_ped.fieldbyName('P1CODCLI').Value;
   mValidarSenha.pLotSeq:=0;
   mValidarSenha.pChave :=0;
   mValidarSenha.pOrdem :=0;
   mValidarSenha.pTexto :='Senha para Excluir o Pedido apos a emissão da nota fiscal';
   mValidarSenha.pChave_St:='';
   mValidarSenha.pDesc_requisitado :=0;
   if fValidaSenha(mValidarSenha)<>0 then
      begin
      exit;
      end;
   if pCodemp>100 then
      begin
      if pReabrirPedido then
         begin
         pfechartudo;
         exit;
         end;
     end;
   mMotivo:=mMotivo+'pedido ja fechado anteriomente'+#13;
   end
else
   begin
   mValidarSenha.pTipo:=0;
    mValidarSenha.pCodusr:=codusr;
   mValidarSenha.pCodSen:=67;
   mValidarSenha.pCodEmp:=0;
   mValidarSenha.pCodCli:=query_ped.fieldbyName('P1CODCLI').Value;
   mValidarSenha.pLotSeq:=0;
   mValidarSenha.pChave :=0;
   mValidarSenha.pOrdem :=0;
   mValidarSenha.pTexto :='Senha fechar o pedido (emissão da nota fiscal)';
   mValidarSenha.pChave_St:='';
   mValidarSenha.pDesc_requisitado :=0;

   if fValidaSenha(mValidarSenha)<>0 then
      begin
      exit;
      end;

   end;



if query_ped.fieldbyname('P1TIPO').AsInteger=2 then
   mMotivo:=mMotivo+'Tipo do Pedido '+query_ped.fieldbyname('P1TIPO').asstring+' '+tab_tped[query_ped.fieldbyname('P1TIPO').asinteger]+' é invalido para fechamento!'+#13;

if trim(mMotivo)<>'' then
   begin
   MessageDlg(mMotivo,mtError,[mbOk],9);
   pfechartudo;
   exit;
   end;
pfechartudo;
result:=true;
end;

procedure TFrm_PedCli.BitBtn4Click(Sender: TObject);
var
pNomeSaida,pmensagem: string;
query_testar: tQuery;
ParametrosNfce: tParametrosNfce;
begin
if Tb_PedP1CHAVE.IsNull then
   begin
   fmensagem('Favor Selecionar um chave válida!',0,['0'],0);
   exit;
   end;
if Tb_PedP1CODEMP.AsFloat>100 then
   begin
   fmensagem('Pedido não Faturado!',0,['0'],0);
   exit;
   end;

query_testar:=tQuery.create(nil);
query_testar.databaseName:=DM1.SG_ASSOC.DatabaseName;
query_testar.SQL.clear;
query_testar.SQL.add('select count(*) from cadp02s WHERE P2SCHAVE='+Tb_PedP1CHAVE.AsString
                     +' and P2SCODEMP='+Tb_PedP1CODEMP.AsString);

try
   query_testar.Open;
   if query_testar.Fields[0].AsInteger<1 then
      begin
      MessageDlg('Nao é um pedido de Serviços valido!',mtWarning,[mbOk],0);
      query_testar.close;
      freeandnil(query_testar);
      exit;
      end;
except on e : exception do
   begin
   ex_erroSql_Novo(query_testar,4909,'SGE '+e.message,'CADP01');
   end;
   end;
query_testar.close;
freeandnil(query_testar);

pNomeSaida:='C:\SGE\NFSE'+Tb_PedP1CHAVE.AsString+'.XML';
if FileExists(pNomeSaida) then
   DeleteFile(pNomeSaida);
ParametrosNfce.pCodemp:=Tb_PedP1CODEMP.AsInteger;
ParametrosNfce.pChave:=Tb_PedP1CHAVE.AsInteger;
ParametrosNfce.pChave_ano:=Tb_PedP1LOTSEQ.AsInteger;
ParametrosNfce.pNomeSaida:=pNomeSaida;
ParametrosNfce.pSoSalvar:=true;
if flfilpad(0,'_NF_SERVICO','NF_TIPO') then
   begin
   parametrosNfce.pAmbiente := valint(DM4.Tb_FilPad2FPVALOR.AsString);
   end
else
   begin
   MessageDlg('Configurar o Ambiente da Nota Fiscal de Serviços Sistema->parametros->notas/duplicatas->Ambiente Nf Servico',mtInformation,[mbOk],0);
   exit;
   end;





if fGerarXmlNotadeServico(ParametrosNfce).pOk then
   MessageDlg('Salvo como '+ pNomeSaida,mtWarning,[mbOk],0)
else
   MessageDlg('Nao foi Possivel Salvar o Arquivo!'+pNomeSaida,mtError,[mbOk],0);


end;

procedure TFrm_PedCli.bbGerarXMLNFECEClick(Sender: TObject);
var
mDadosNFCEChvAcesso: tDadosNFCEChvAcesso;
mNfceVT: tNfce;

pNomeSaida: String;
begin


mNfceVT :=tNfce.create;


mDadosNFCEChvAcesso.pStatusPed:=-1;
mDadosNFCEChvAcesso.p1Cupom   :=1;

mDadosNFCEChvAcesso.pNumdoc   := Tb_PedP1NFCE_NUMERO.AsInteger;

mDadosNFCEChvAcesso.pchv_acesso :=Tb_PedP1NFCE_CHV_ACESSO.AsString;

mNfceVT.mParamNFCeEnvio.pChave     := Tb_PedP1CHAVE.AsInteger;
mNfceVT.mParamNFCeEnvio.pChave_ano := Tb_PedP1LOTSEQ.AsInteger;
mNfceVT.mParamNFCeEnvio.pCodemp    := Tb_PedP1CODEMP.AsInteger;

mNfceVT.mParamNFCeRetorno:=mNfceVT.fGerarXMLNFCE(mNfceVT.mParamNFCeEnvio);
mDadosNFCEChvAcesso.pXml:=mNfceVT.mParamNFCeRetorno.pXmlNFCe.Text;

pNomeSaida:='C:\SGE\NFSE'+Tb_PedP1CHAVE.AsString+'.XML';
if FileExists(pNomeSaida) then
   DeleteFile(pNomeSaida);
mNfceVT.mParamNFCeRetorno.pXmlNFCe.SaveToFile(pNomeSaida);
messageDlg('Arquivo salvo como '+pNomeSaida,mtinformation,[mbOk],0);
freeandnil(mNfceVT);

end;

end.
