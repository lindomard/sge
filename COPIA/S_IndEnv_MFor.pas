unit S_IndEnv_MFor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, Grids, DBGrids, DBTables,
  DB, DBCtrls,func,lerarq,RichEdit, Mask, WPRTEDefs, WPCTRMemo, WPCTRRich,
  WPTbar, WPUtil, OleCtnrs,ADODB,S_BKP, OleServer, WordXP, RxDBComb,
  dbcgrids,s_lerarq_geral, RLReport, RLRichFilter, RLPDFFilter, RLFilters,
  RLXLSFilter, RxMemDS, Word2000;


{
   s_DM3,db,dbtables,func, Mask, DBCtrls,
    dbcgrids,lerarq,  QRCtrls, QuickRpt,
  jpeg, RLReport, RLRichText, RLFilters, RLDraftFilter,RichEdit, ShellAPI,S_Impres;
}

type
  TFrm_IndEnv_MFor = class(TForm)
    GroupBox1: TGroupBox;
    PageControl1: TPageControl;
    TsFormula: TTabSheet;
    Panel1: TPanel;
    gbMatPrima: TGroupBox;
    gb_matEmb: TGroupBox;
    Gb_Embarque: TGroupBox;
    Label1: TLabel;
    CODPRO: TEdit;
    bbAtualizar: TBitBtn;
    TsCusto: TTabSheet;
    Tb_Comp_MP: TQuery;
    Tb_Comp_MPCPCODEMP: TFloatField;
    Tb_Comp_MPCPORDEM: TFloatField;
    Tb_Comp_MPCPCODPRO: TFloatField;
    Tb_Comp_MPCPCODMAT: TFloatField;
    Tb_Comp_MPCPQUANT: TFloatField;
    Tb_Comp_MPCPPU: TFloatField;
    Tb_Comp_MPCPNUMERO: TStringField;
    Tb_Comp_MPCPMPNUM: TStringField;
    Tb_Comp_MPCPCODPRO_ACAB: TFloatField;
    Tb_Comp_MPCPALICMSCRED: TFloatField;
    Tb_Comp_MPCPICMSCRED: TFloatField;
    Tb_Comp_MPCPVLRINC: TFloatField;
    Tb_Comp_MPCPALIQORI: TFloatField;
    Tb_Comp_MPtotal: TFloatField;
    Tb_Comp_MPtotalliq: TFloatField;
    Tb_Comp_MPCPPERCENT: TFloatField;
    Tb_Comp_MPCPPERCENT_REST: TFloatField;
    Tb_Comp_MPCPTIPO: TFloatField;
    Tb_Comp_MPCPQTD_PAD: TFloatField;
    Tb_Comp_MPPDNOME: TStringField;
    Tb_Comp_MPPDUND: TStringField;
    Tb_Comp_MPobservacao: TStringField;
    Tb_Comp_MPprodenvase: TStringField;
    Src_Comp_MP: TDataSource;
    U_Comp_MP: TUpdateSQL;
    DBGrid_MP: TDBGrid;
    DBNavigator2: TDBNavigator;
    DBNavigator1: TDBNavigator;
    DBNavigator3: TDBNavigator;
    DBGrid_emb: TDBGrid;
    Tb_Comp_Emb: TQuery;
    Src_Comp_Emb: TDataSource;
    U_Comp_Emb: TUpdateSQL;
    Tb_Comp_EmbCPCODEMP: TFloatField;
    Tb_Comp_EmbCPORDEM: TFloatField;
    Tb_Comp_EmbCPCODPRO: TFloatField;
    Tb_Comp_EmbCPNUMERO: TStringField;
    Tb_Comp_EmbCPCODMAT: TFloatField;
    Tb_Comp_EmbCPCODPRO_ACAB: TFloatField;
    Tb_Comp_EmbCPMPNUM: TStringField;
    Tb_Comp_EmbCPQUANT: TFloatField;
    Tb_Comp_EmbCPPU: TFloatField;
    Tb_Comp_EmbCPVLRINC: TFloatField;
    Tb_Comp_EmbCPALIQORI: TFloatField;
    Tb_Comp_EmbCPALICMSCRED: TFloatField;
    Tb_Comp_EmbCPICMSCRED: TFloatField;
    Tb_Comp_EmbCPTIPO: TFloatField;
    Tb_Comp_EmbCPQTD_PAD: TFloatField;
    Tb_Comp_EmbCPPERCENT: TFloatField;
    Tb_Comp_EmbCPPERCENT_REST: TFloatField;
    Tb_Comp_EmbPDNOME: TStringField;
    Tb_Comp_EmbPDUND: TStringField;
    DBGrid_fec: TDBGrid;
    Tb_Comp_Fec: TQuery;
    Src_Comp_Fec: TDataSource;
    U_Comp_Fec: TUpdateSQL;
    Tb_Comp_FecCPCODEMP: TFloatField;
    Tb_Comp_FecCPORDEM: TFloatField;
    Tb_Comp_FecCPCODPRO: TFloatField;
    Tb_Comp_FecCPNUMERO: TStringField;
    Tb_Comp_FecCPCODMAT: TFloatField;
    Tb_Comp_FecCPCODPRO_ACAB: TFloatField;
    Tb_Comp_FecCPMPNUM: TStringField;
    Tb_Comp_FecCPQUANT: TFloatField;
    Tb_Comp_FecCPPU: TFloatField;
    Tb_Comp_FecCPVLRINC: TFloatField;
    Tb_Comp_FecCPALIQORI: TFloatField;
    Tb_Comp_FecCPALICMSCRED: TFloatField;
    Tb_Comp_FecCPICMSCRED: TFloatField;
    Tb_Comp_FecCPTIPO: TFloatField;
    Tb_Comp_FecCPQTD_PAD: TFloatField;
    Tb_Comp_FecCPPERCENT: TFloatField;
    Tb_Comp_FecCPPERCENT_REST: TFloatField;
    Tb_Comp_FecPDNOME: TStringField;
    Tb_Comp_FecPDUND: TStringField;
    bbFechar: TBitBtn;
    UNDMED: TEdit;
    Label3: TLabel;
    UND: TEdit;
    Label6: TLabel;
    tsTexto_Word: TTabSheet;
    gb_subst: TGroupBox;
    Label5: TLabel;
    GroupBox4: TGroupBox;
    MNOMARQDOC2: TEdit;
    gb_macros: TGroupBox;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    tbs_configuracao: TTabSheet;
    wp_bar: TWPToolBar;
    wp_texto: TWPRichText;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    bbSalvarPadrao: TBitBtn;
    tsOP_Word: TTabSheet;
    gbop_especifica: TGroupBox;
    bbop_esp_visedit: TBitBtn;
    bbop_esp_adq: TBitBtn;
    bbop_esp_excluir: TBitBtn;
    gbop_geral: TGroupBox;
    bbop_ger_visedit: TBitBtn;
    bbop_ger_adq: TBitBtn;
    Opd1: TOpenDialog;
    WordApp: TWordApplication;
    WordDoc: TWordDocument;
    CB_NOMPRO: TComboBox;
    Label2: TLabel;
    tsLegendas: TTabSheet;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Tb_TabOP01: TQuery;
    Src_TabOP01: TDataSource;
    U_TabOP01: TUpdateSQL;
    Tb_TabOP01OPT01_CODEMP: TFloatField;
    Tb_TabOP01OPT01_NOMREL: TStringField;
    Tb_TabOP01OPT01_OBS: TMemoField;
    Tb_TabOP01OPT01_QTDCOL: TFloatField;
    Tb_TabOP01OPT01_QTDLINCAB: TFloatField;
    Tb_TabOP01OPT01_TABELA: TFloatField;
    Tb_TabOP01OPT01_FORMAGRADE: TFloatField;
    dbgrid_TabOP01: TDBGrid;
    Panel_digtab: TPanel;
    Label4: TLabel;
    DBEdit_nomrel: TDBEdit;
    Label8: TLabel;
    DBEdit_QTDCOL: TDBEdit;
    Label20: TLabel;
    DBEdit_QTDLINCAB: TDBEdit;
    TRxDBCB_TABELA: TRxDBComboBox;
    Label21: TLabel;
    Label22: TLabel;
    RxDBCB_TAMCOLAUT0: TRxDBComboBox;
    Label23: TLabel;
    DBMemo_OBS: TDBMemo;
    Tb_TabOP02: TQuery;
    Src_TabOP02: TDataSource;
    U_TabOP02: TUpdateSQL;
    Tb_TabOP02OPT02_CODEMP: TFloatField;
    Tb_TabOP02OPT02_NOMREL: TStringField;
    Tb_TabOP02OPT02_POSICAO: TStringField;
    Tb_TabOP02OPT02_COLUNA: TFloatField;
    Tb_TabOP02OPT02_TIPOCAMPO: TFloatField;
    Tb_TabOP02OPT02_CAMPOOUTEXTO: TStringField;
    Tb_TabOP02OPT02_TAMANHO: TFloatField;
    Tb_TabOP02OPT02_ALINHAMENTO: TFloatField;
    Tb_TabOP02OPT02_FORMATO: TStringField;
    Tb_TabOP02OPT02_FUNDO: TFloatField;
    Tb_TabOP02_res: TQuery;
    Tb_TabOP02_resOPT02_POSICAO: TStringField;
    src_TabOP02_res: TDataSource;
    Label24: TLabel;
    Tb_TabOP02lbl_campoouvalor: TStringField;
    INCLUIR: TBitBtn;
    ALTERAR: TBitBtn;
    EXCLUIR: TBitBtn;
    GRAVAR: TBitBtn;
    CANCELAR: TBitBtn;
    DBNavigator_tabop01: TDBNavigator;
    SAIR: TBitBtn;
    Panel4: TPanel;
    Label30: TLabel;
    edt_nomrel: TEdit;
    bbatutabop: TBitBtn;
    Panel_digitens: TPanel;
    GroupBox2: TGroupBox;
    DBGrid_TabOP02_res: TDBGrid;
    DBCtrlGrid1: TDBCtrlGrid;
    Label25: TLabel;
    Label26: TLabel;
    DBText_campoouvalor: TDBText;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DBE_Coluna: TDBEdit;
    RxDBCB_TIPOCAMPO: TRxDBComboBox;
    RxDBCB_ALINHAMENTO: TRxDBComboBox;
    RxDB_FUNDO: TRxDBComboBox;
    DBCB_CAMPOOUTEXTO: TDBComboBox;
    DBCB_FORMATO: TDBComboBox;
    Label31: TLabel;
    DBE_tamanho: TDBEdit;
    Tb_TabOP01OPT01_TAMANHO: TFloatField;
    Tb_TabOP01OPT01_ALINHAMENTO: TFloatField;
    Tb_TabOP01OPT01_QTDLINROD: TFloatField;
    Tb_TabOP01OPT01_TAMCOLAUT0: TFloatField;
    Label32: TLabel;
    DBE_QTDLINROD: TDBEdit;
    Tb_TabOP02OPT02_DATATYPE: TFloatField;
    lbl_nompro_op: TLabel;
    Tb_TabOP01OPT01_ETAPA: TFloatField;
    Label33: TLabel;
    DBCB_ETAPA: TRxDBComboBox;
    TabSheet3: TTabSheet;
    Memo1: TMemo;
    Panel3: TPanel;
    Label34: TLabel;
    Tb_TabOP02_resOPT02_MESCLAR_INI: TFloatField;
    Tb_TabOP02_resOPT02_MESCLAR_FIN: TFloatField;
    edt_mesclar_fin: TEdit;
    Label35: TLabel;
    Tb_TabOP02OPT02_MESCLAR_INI: TFloatField;
    Tb_TabOP02OPT02_MESCLAR_FIN: TFloatField;
    edt_mesclar_ini: TEdit;
    bbImprimir: TBitBtn;
    TsImprimir: TTabSheet;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel3: TRLLabel;
    Tb_Comp: TQuery;
    Tb_CompPDNOME: TStringField;
    Tb_CompPDUND: TStringField;
    Src_Comp: TDataSource;
    sbnAtuCusto: TSpeedButton;
    RLXLSFilter1: TRLXLSFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLRichFilter1: TRLRichFilter;
    rlband_detail: TRLBand;
    RLLabel5: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLSubDetail_mp: TRLSubDetail;
    Tb_CompPDCODPRO: TFloatField;
    RLBandmp_cabgru: TRLBand;
    rlNomGru: TRLLabel;
    RLBand_mpcabdet: TRLBand;
    rlcab_CPCODMAT: TRLLabel;
    rlcab_PDNOME: TRLLabel;
    rlcab_PDUND: TRLLabel;
    rlcab_CPPERCENT_REST: TRLLabel;
    rlcab_CPQUANT: TRLLabel;
    rlcab_CPPU: TRLLabel;
    rlcab_total: TRLLabel;
    RLBand_mp_det: TRLBand;
    RLDB_CPCODMAT: TRLDBText;
    rldet_PDNOME: TRLDBText;
    rldet_PDUND: TRLDBText;
    rldet_CPQUANT: TRLDBText;
    rldet_CPPU: TRLDBText;
    rldet_total: TRLDBText;
    rldet_CPPERCENT_REST: TRLDBText;
    RLBand2: TRLBand;
    rlrod_CPCODMAT: TRLLabel;
    rlrod_PDNOME: TRLLabel;
    rlrod_PDUND: TRLLabel;
    rlrod_CPPERCENT_REST: TRLLabel;
    rlrod_CPQUANT: TRLLabel;
    rlrod_CPPU: TRLLabel;
    rlrod_total: TRLLabel;
    RLSubDetail_emb: TRLSubDetail;
    RLBand3: TRLBand;
    rlcab_nomemb: TRLLabel;
    RLBand4: TRLBand;
    rlcabemb_CPCODMAT: TRLLabel;
    rlcabemb_PDNOME: TRLLabel;
    rlcabemb_PDUND: TRLLabel;
    rlcabemb_CPQUANT: TRLLabel;
    rlcabemb_CPPU: TRLLabel;
    rlcabemb_total: TRLLabel;
    RLBand5: TRLBand;
    rldetemb_CPCODMAT: TRLDBText;
    rldetemb_PDNOME: TRLDBText;
    rldetemb_PDUND: TRLDBText;
    rldetemb_CPQUANT: TRLDBText;
    rldetemb_CPPU: TRLDBText;
    rldetemb_total: TRLDBText;
    RLBand6: TRLBand;
    rlrodemb_CPCODMAT: TRLLabel;
    rlrodemb_PDNOME: TRLLabel;
    rlrodemb_PDUND: TRLLabel;
    rlrodemb_CPQUANT: TRLLabel;
    rlrodemb_CPPU: TRLLabel;
    rlrodemb_total: TRLLabel;
    RLSubDetail_fec: TRLSubDetail;
    RLBand7: TRLBand;
    rlcab_nomfec: TRLLabel;
    RLBand8: TRLBand;
    rlcabfec_CPCODMAT: TRLLabel;
    rlcabfec_PDNOME: TRLLabel;
    rlcabfec_PDUND: TRLLabel;
    rlcabfec_CPQUANT: TRLLabel;
    rlcabfec_CPPU: TRLLabel;
    rlcabfec_total: TRLLabel;
    RLBand9: TRLBand;
    rldetfec_CPCODMAT: TRLDBText;
    rldetfec_PDNOME: TRLDBText;
    rldetfec_PDUND: TRLDBText;
    rldetfec_CPQUANT: TRLDBText;
    rldetfec_CPPU: TRLDBText;
    rldetfec_total: TRLDBText;
    RLBand10: TRLBand;
    rlrodfec_CPCODMAT: TRLLabel;
    rlrodfec_PDNOME: TRLLabel;
    rlrodfec_PDUND: TRLLabel;
    rlrodfec_CPQUANT: TRLLabel;
    rlrodfec_CPPU: TRLLabel;
    rlrodfec_total: TRLLabel;
    RLSubDetail_apur_preco: TRLSubDetail;
    RLBand11: TRLBand;
    rlcab_nomapur: TRLLabel;
    RLBand12: TRLBand;
    rlcabapur_nome: TRLLabel;
    rlcabapur_perc: TRLLabel;
    rlcabapur_valor: TRLLabel;
    rlcabapur_valor_acumulado: TRLLabel;
    RLBand13: TRLBand;
    rldetapur_nome: TRLDBText;
    rldetapur_valor: TRLDBText;
    rldetapur_valor_acumulado: TRLDBText;
    rldetapur_perc: TRLDBText;
    RLBand14: TRLBand;
    rlrodapur_nome: TRLLabel;
    rlrodapur_perc: TRLLabel;
    rlrodapur_valor: TRLLabel;
    rlrodapur_valor_acumulado: TRLLabel;
    src_precos: TDataSource;
    Tb_Comp_Embtotal: TFloatField;
    Tb_Comp_Fectotal: TFloatField;
    tb_precos: TQuery;
    tb_precosPERC: TFloatField;
    tb_precosVALOR_INICIAL: TFloatField;
    tb_precosVALOR: TFloatField;
    tb_precosVALOR_ACUMULADO: TFloatField;
    tb_precosNOME: TStringField;
    src_pro_custo: TDataSource;
    tb_pro_custo: TQuery;
    u_pro_custo: TUpdateSQL;
    gb_custo: TGroupBox;
    Edit1: TEdit;
    tb_pro_custoPDNOME: TStringField;
    tb_pro_custoPDUND: TStringField;
    tb_pro_custoPDPRECO2: TFloatField;
    tb_pro_custoPDPRECO1: TFloatField;
    tb_pro_custoPDPRECO3: TFloatField;
    tb_pro_custoPDPCOFAB: TFloatField;
    tb_pro_custoPDPCOMC: TFloatField;
    tb_pro_custoPDPMC: TFloatField;
    tb_pro_custoPDUCPR: TFloatField;
    tb_pro_custoPDPRECOC: TFloatField;
    tb_pro_custoPDC_CODEMP: TFloatField;
    tb_pro_custoPDC_CODPRO: TFloatField;
    tb_pro_custoPDC_CUS_MARKETING_PERC: TFloatField;
    tb_pro_custoPDC_CUS_MARKETING_VALOR: TFloatField;
    tb_pro_custoPDC_CUS_VALOR_INI: TFloatField;
    tb_pro_custoPDC_CUS_VALOR_FINAL: TFloatField;
    tb_pro_custoPDC_CUS_COMISSOES_PERC: TFloatField;
    tb_pro_custoPDC_CUS_COMISSOES_VALOR: TFloatField;
    tb_pro_custoPDC_CUS_FRETEVDA_PERC: TFloatField;
    tb_pro_custoPDC_CUS_FRETEVDA_VALOR: TFloatField;
    tb_pro_custoPDC_CUS_ST_VENDA_PERC: TFloatField;
    tb_pro_custoPDC_CUS_ST_VENDA_VALOR: TFloatField;
    tb_pro_custoPDC_CUS_IPI_VENDA_PERC: TFloatField;
    tb_pro_custoPDC_CUS_IPI_VENDA_VALOR: TFloatField;
    tb_pro_custoPDC_CUS_ICMS_VENDA_PERC: TFloatField;
    tb_pro_custoPDC_CUS_ICMS_VENDA_VALOR: TFloatField;
    tb_pro_custoPDC_CUS_EMBALAGEM_PERC: TFloatField;
    tb_pro_custoPDC_CUS_EMBALAGEM_VALOR: TFloatField;
    tb_pro_custoPDC_CUS_DESPOPER_PERC: TFloatField;
    tb_pro_custoPDC_CUS_DESPOPER_VALOR: TFloatField;
    tb_pro_custoPDC_CUS_OUTDESP_PERC: TFloatField;
    tb_pro_custoPDC_CUS_OUTDESP_VALOR: TFloatField;
    tb_pro_custoPDC_CUS_OUTCRED_VALOR: TFloatField;
    tb_pro_custoPDC_CUS_OUTCRED_PERC: TFloatField;
    tb_pro_custoPDC_VDA_VALOR_INI: TFloatField;
    tb_pro_custoPDC_VDA_VALOR_FINAL: TFloatField;
    tb_pro_custoPDC_VDA_LUCRO_VALOR: TFloatField;
    tb_pro_custoPDC_VDA_LUCRO_PERC: TFloatField;
    tb_pro_custoPDC_VDA_RISCOPERDAS_PERC: TFloatField;
    tb_pro_custoPDC_VDA_RISCOPERDAS_VALOR: TFloatField;
    tb_pro_custoPDC_VDA_OUTDESP_PERC: TFloatField;
    tb_pro_custoPDC_VDA_OUTDESP_VALOR: TFloatField;
    tb_pro_custoPDC_VDA_OUTCRED_PERC: TFloatField;
    tb_pro_custoPDC_VDA_OUTCRED_VALOR: TFloatField;
    tb_pro_custoPDC_FIN_PCOMIN_PERC: TFloatField;
    tb_pro_custoPDC_FIN_PCOMIN_VALOR: TFloatField;
    tb_pro_custoPDC_FIN_PCOATACADO_PERC: TFloatField;
    tb_pro_custoPDC_FIN_PCOATACADO_VALOR: TFloatField;
    tb_pro_custoPDC_FIN_PCOVAREJO_PERC: TFloatField;
    tb_pro_custoPDC_FIN_PCOVAREJO_VALOR: TFloatField;
    tb_pro_custoPDC_FIN_PCOINTERNET_PERC: TFloatField;
    tb_pro_custoPDC_FIN_PCOINTERNET_VALOR: TFloatField;
    tb_pro_custoPDC_PRECO_NOTA_ATUALIZAR: TStringField;
    tb_pro_custoPDC_PRECO_COMPRA_ATUALIZAR: TStringField;
    tb_pro_custoPDC_PRECO_CUSTO_ATUALIZAR: TStringField;
    tb_pro_custoPDC_PRECO_MINIMO_VDA_ATUALIZAR: TStringField;
    tb_pro_custoPDC_PRECO_ATACADO_ATUALIZAR: TStringField;
    tb_pro_custoPDC_PRECO_VAREJO_ATUALIZAR: TStringField;
    tb_pro_custoPDC_PRECO_INTERNET_ATUALIZAR: TStringField;
    tb_pro_custoPDC_CUS_MARKETING_ACUM: TFloatField;
    tb_pro_custoPDC_CUS_COMISSOES_ACUM: TFloatField;
    tb_pro_custoPDC_CUS_FRETEVDA_ACUM: TFloatField;
    tb_pro_custoPDC_CUS_ST_VENDA_ACUM: TFloatField;
    tb_pro_custoPDC_CUS_IPI_VENDA_ACUM: TFloatField;
    tb_pro_custoPDC_CUS_ICMS_VENDA_ACUM: TFloatField;
    tb_pro_custoPDC_CUS_EMBALAGEM_ACUM: TFloatField;
    tb_pro_custoPDC_CUS_DESPOPER_ACUM: TFloatField;
    tb_pro_custoPDC_CUS_OUTDESP_ACUM: TFloatField;
    tb_pro_custoPDC_CUS_OUTCRED_ACUM: TFloatField;
    tb_pro_custoPDC_VDA_RISCOPERDAS_ACUM: TFloatField;
    tb_pro_custoPDC_VDA_LUCRO_ACUM: TFloatField;
    tb_pro_custoPDC_VDA_OUTDESP_ACUM: TFloatField;
    tb_pro_custoPDC_VDA_OUTCRED_ACUM: TFloatField;
    tb_pro_custoPDC_PRECO_NOTA_NOV: TFloatField;
    tb_pro_custoPDC_PRECO_NOTA_DIG: TFloatField;
    tb_pro_custoPDC_PRECO_COMPRA_NOV: TFloatField;
    tb_pro_custoPDC_PRECO_COMPRA_DIG: TFloatField;
    tb_pro_custoPDC_PRECO_CUSTO_NOV: TFloatField;
    tb_pro_custoPDC_PRECO_CUSTO_DIG: TFloatField;
    tb_pro_custoPDC_PRECO_MINIMO_VDA_NOV: TFloatField;
    tb_pro_custoPDC_PRECO_ATACADO_NOV: TFloatField;
    tb_pro_custoPDC_PRECO_VAREJO_NOV: TFloatField;
    tb_pro_custoPDC_PRECO_INTERNET_NOV: TFloatField;
    tb_pro_custoPDC_PRECO_MINIMO_VDA_DIG: TFloatField;
    tb_pro_custoPDC_PRECO_ATACADO_DIG: TFloatField;
    tb_pro_custoPDC_PRECO_VAREJO_DIG: TFloatField;
    tb_pro_custoPDC_PRECO_INTERNET_DIG: TFloatField;
    tb_pro_custoPRECO_COMPRA_ORIGEM: TFloatField;
    DBE_PDC_CUS_OUTDESP_PERC: TDBEdit;
    GroupBox3: TGroupBox;
    Edit2: TEdit;
    DBE_PDC_VDA_LUCRO_PERC: TDBEdit;
    bbGravar: TBitBtn;
    RLBand15: TRLBand;
    lbl_totalmp: TRLLabel;
    Tb_Comp_MPPDPU: TFloatField;
    Tb_Comp_EmbPDPU: TFloatField;
    Tb_Comp_FecPDPU: TFloatField;
    procedure CODPROEnter(Sender: TObject);
    procedure CODPROExit(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure Tb_Comp_MPAfterInsert(DataSet: TDataSet);
    procedure Tb_Comp_MPAfterCancel(DataSet: TDataSet);
    procedure c(DataSet: TDataSet);
    procedure Tb_Comp_MPAfterEdit(DataSet: TDataSet);
    procedure Tb_Comp_MPBeforeEdit(DataSet: TDataSet);
    procedure Tb_Comp_MPBeforePost(DataSet: TDataSet);
    procedure DBGrid_MPColExit(Sender: TObject);
    procedure DBGrid_MPExit(Sender: TObject);
    procedure DBGrid_MPKeyPress(Sender: TObject; var Key: Char);
    procedure Tb_Comp_MPCalcFields(DataSet: TDataSet);
    procedure Tb_Comp_MPBeforeDelete(DataSet: TDataSet);
    procedure Tb_Comp_EmbAfterInsert(DataSet: TDataSet);
    procedure Tb_Comp_EmbAfterCancel(DataSet: TDataSet);
    procedure Tb_Comp_EmbAfterEdit(DataSet: TDataSet);
    procedure Tb_Comp_EmbBeforeEdit(DataSet: TDataSet);
    procedure Tb_Comp_EmbBeforePost(DataSet: TDataSet);
    procedure Tb_Comp_FecAfterCancel(DataSet: TDataSet);
    procedure Tb_Comp_FecAfterEdit(DataSet: TDataSet);
    procedure Tb_Comp_FecAfterInsert(DataSet: TDataSet);
    procedure Tb_Comp_FecBeforeEdit(DataSet: TDataSet);
    procedure Tb_Comp_FecBeforePost(DataSet: TDataSet);
    procedure DBGrid_embColExit(Sender: TObject);
    procedure DBGrid_embExit(Sender: TObject);
    procedure DBGrid_fecExit(Sender: TObject);
    procedure DBGrid_fecColExit(Sender: TObject);
    procedure DBGrid_embKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_fecKeyPress(Sender: TObject; var Key: Char);
    procedure bbFecharClick(Sender: TObject);
    procedure UNDMEDEnter(Sender: TObject);
    procedure UNDMEDExit(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure bbSalvarPadraoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbop_esp_adqClick(Sender: TObject);
    procedure bbop_esp_viseditClick(Sender: TObject);
    procedure bbop_esp_excluirClick(Sender: TObject);
    procedure CB_NOMPROClick(Sender: TObject);
    procedure bbatutabopClick(Sender: TObject);
    procedure Src_TabOP01DataChange(Sender: TObject; Field: TField);
    procedure src_TabOP02_resDataChange(Sender: TObject; Field: TField);
    procedure INCLUIRClick(Sender: TObject);
    procedure Tb_TabOP02CalcFields(DataSet: TDataSet);
    procedure Tb_TabOP01BeforePost(DataSet: TDataSet);
    procedure Tb_TabOP02BeforeEdit(DataSet: TDataSet);
    procedure Tb_TabOP02BeforeInsert(DataSet: TDataSet);
    procedure Panel_digtabExit(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure Tb_TabOP01AfterPost(DataSet: TDataSet);
    procedure SAIRClick(Sender: TObject);
    procedure DBCtrlGrid1Exit(Sender: TObject);
    procedure RxDBCB_TIPOCAMPOExit(Sender: TObject);
    procedure Src_TabOP02DataChange(Sender: TObject; Field: TField);
    procedure Tb_TabOP02BeforePost(DataSet: TDataSet);
    procedure Tb_TabOP01AfterInsert(DataSet: TDataSet);
    procedure Tb_TabOP01BeforeEdit(DataSet: TDataSet);
    procedure edt_mesclar_iniExit(Sender: TObject);
    procedure edt_mesclar_finExit(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure bbImprimirClick(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure sbnAtuCustoClick(Sender: TObject);
    procedure Tb_Comp_FecCalcFields(DataSet: TDataSet);
    procedure Tb_Comp_EmbCalcFields(DataSet: TDataSet);
    procedure DBE_PDC_CUS_OUTDESP_PERCChange(Sender: TObject);
    procedure DBE_PDC_VDA_LUCRO_PERCChange(Sender: TObject);
    procedure bbGravarClick(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand_mp_detAfterPrint(Sender: TObject);
    procedure RLBand5AfterPrint(Sender: TObject);
    procedure RLBand9AfterPrint(Sender: TObject);
    procedure RLBand13AfterPrint(Sender: TObject);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand15BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure DBGrid_MPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);


  private
    { Private declarations }

    mcampopreco : string;
     mNomRel_Tab01_Ant: string;
    tab_mp  :array[0..28,0..4] of string;
    tab_MatEmb  :array[0..22,0..4] of string;
    tab_totais  :array[0..20,0..4] of string;

    mTotQtdMP: Real;
    mTotalMP: Real;

    mQtdEmb: Real;
    mTotalEmb: Real;

    mQtdFec: Real;
    mTotalFec: Real;

    mQtdApur: Real;
    mTotalApur: Real;

    mTotalGeralMP: Real;

    function fIncluirOP(pCodPro: Real;pNomeOri:String;pQtdReg:Integer): Boolean;
    function fLerTabop02_Res(pNomeRel: String): Boolean;
    function fLerTabop02(pNomeRel,pPosicao: String): Boolean;
    function FRetornaTipoCampo(pNomCampo: String): string;

    function fGravarInfoMesclar(pMesclar_Ini,pMesclar_Fin: Integer): Boolean;


    function fLerNovamente: Boolean;


    function fLerCadpro_Custos: Boolean;

    function fincluir_pro_custo: Boolean;

  public
    { Public declarations }

  end;
const mMaxIens_mp = 28;
const mMaxIens_MatEmb = 23;
const mMaxItens_Totais = 20;


var
  Frm_IndEnv_MFor: TFrm_IndEnv_MFor;

  mOrdem_item:Integer=0;
  mOper_item : Integer=0;
  mCodMat_ant: Real =0;
  mAlterouTabela: Boolean;
  mQtdZerado_ant: Integer=0;
  mQtdZerado: Integer=0;
  mTotQsp: Real;
  mPerc_ant    : Real;
  f: TextFile;
  mSalvouTexto: Boolean;
  mTextoTemp: String;
  mImpMp: Integer=0;
  mImpEmb: Integer=0;
  mAvancPag : Integer=0;
  mTotalCusto: Real = 0;
  mUniMed_Ant: String;
  Form_Bkp: TFrm_Bkp;
implementation

uses S_DM1, Math, S_DM1_ADO, func_excecoes;
resourcestring
  sColRowInfo = 'Linha: %3d   Coluna: %3d';

{$R *.dfm}

procedure TFrm_IndEnv_MFor.CODPROEnter(Sender: TObject);
begin
if Tb_Comp_MP.Active then  Tb_Comp_MP.Close;
if Tb_Comp_Fec.Active then  Tb_Comp_Fec.Close;
if Tb_Comp_Emb.Active then  Tb_Comp_Emb.Close;

end;

procedure TFrm_IndEnv_MFor.CODPROExit(Sender: TObject);
begin
CODPRO.Text:=fdeixanum2(CODPRO.Text);
lbl_nompro_op.Caption:='Todos os Produtos Sem formula especifica';

if (trim(CODPRO.Text)='') then
   exit;
if not flcadpro(1,0,0,CODPRO.Text) then
   begin
   FMensagem('Produto não Cadastrado!',0,['0'],0);
   CODPRO.SetFocus;
   exit;
   end
else
   begin
   CB_NOMPRO.Text:=FormatFloat('00000', DM1.Tb_ProPDCODPRO.asfloat)+'|'+ DM1.Tb_ProPDNOME.Value+'|'+DM1.Tb_ProPDUND.Value;
   lbl_nompro_op.Caption:='Especifica para o Produto '+DM1.Tb_ProPDCODPRO.AsString+' '+DM1.Tb_ProPDNOME.AsString;
   UND.Text   :=DM1.Tb_ProPDUND.AsString;
   UNDMED.Text:=FormatFloat('0.000', DM1.Tb_ProPDQTDGRML.AsFloat);
   fLerCadpro_Custos;

   if valfloat(UNDMED.Text)=0 then
      begin
      UNDMED.Text :=FormatFloat('0.000', ValFloat(DM1.Tb_ProPDNOME.Value));
      if valfloat(UNDMED.Text)>999999999 then
         UNDMED.Text :=FormatFloat('0.000', ValFloat(copy(undmed.Text,1,3)));
      if valfloat(UNDMED.Text)=0 then
         UNDMED.Text:='1';

      if valfloat(UNDMED.Text)<>0 then
         begin
         DM1.Query2.Close;
         DM1.Query2.SQL.Clear;
         DM1.Query2.SQL.Add('Update CADPRO set PDQTDGRML=0'+mudavp(UNDMED.Text)
                           +' where '
                           +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntToStr(codemp)+' and ')
                           +' PDCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString);
         try
            DM1.Query2.ExecSQL;
            fdm1StartCommit;
         except
            end;
         flcadpro(1,0,0,CODPRO.Text);
         end;
      end;
   bbAtualizarClick(SELF);
   end;

end;

procedure TFrm_IndEnv_MFor.bbAtualizarClick(Sender: TObject);
begin
if not flcadpro(1,0,0,CODPRO.Text) then
  begin
  FMensagem('Produto não Cadastrado!',0,['0'],0);
  CODPRO.SetFocus;
  exit;
  end;
fLerNovamente;
sbnAtuCusto.Enabled:=false;

end;
function TFrm_IndEnv_MFor.fLerNovamente: Boolean;
begin

Tb_Comp.Close;
Tb_Comp.SQL.Clear;
Tb_Comp.SQL.Add('Select  PDNOME, '
                +'      PDUND '
                +',PDCODPRO '
                +' from CADPRO '
                +' where PDCODPRO=:CODPRO '
                +' order by PDNOME ');
Tb_Comp.ParamByName('CODPRO').asstring:=CODPRO.text;
try
   Tb_Comp.open;
except
   Tb_Comp.sql.savetofile('C:\SQL.TXT');
   end;

Tb_Comp_MP.Close;
Tb_Comp_MP.SQL.Clear;
Tb_Comp_MP.SQL.Add('Select CPCODEMP, '
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
               +'       PDNOME, '
               +'       PDUND '
               +'       ,'+mcampopreco+' AS PDPU '
               +' from CADCOMP,CADPRO where '
               +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                   ' CPCODEMP=0'+IntToStr(codemp)+' and PDCODEMP(+)=CPCODEMP and ')
               +' PDCODPRO(+)=CPCODMAT and (CPTIPO=0 or CPTIPO is null) '
               +' and CPCODPRO=0'+CODPRO.Text
               +' ORDER BY CPCODPRO_ACAB,CPORDEM ');
try
   Tb_Comp_MP.open;
except
   Tb_Comp_MP.sql.savetofile('C:\SQL.TXT');
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(CPORDEM) as ORDEM, ');
DM1.Query1.SQL.Add('       sum(CPQUANT) as CPQUANT, ');
DM1.Query1.SQL.Add('       sum(CPICMSCRED) as CPICMSCRED, ');
DM1.Query1.SQL.Add('       sum(CPQUANT*'+mcampopreco+') as CPTOTAL, ');
DM1.Query1.SQL.Add('       sum(DECODE(CPPERCENT,0,0,CPPERCENT_REST)) as QSP, ');
DM1.Query1.SQL.Add('       count(*)  as QTDREG from CADCOMP,CADPRO where '+iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+InttoStr(codemp)+' and ')
                  +' CPCODPRO=0'+CODPRO.Text
                  +' and (CPTIPO=0 or CPTIPO is null) '
                  +' and PDCODPRO=CPCODMAT '
                  );
DM1.Query1.open;


mOrdem_item :=DM1.query1.Fields[0].AsInteger+1;
mTotQsp:=100-DM1.query1.FieldbyName('QSP').AsFloat;


Tb_Comp_Emb.Close;
Tb_Comp_Emb.SQL.Clear;
Tb_Comp_Emb.SQL.Add('Select CPCODEMP, '
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
               +'       PDNOME, '
               +'       PDUND '
               +'       ,'+mcampopreco+' AS PDPU '
               +' from CADCOMP,CADPRO where '
               +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                   ' CPCODEMP=0'+IntToStr(codemp)+' and PDCODEMP=CPCODEMP and ')
               +' PDCODPRO=CPCODMAT and (CPTIPO=1) '
               +' and CPCODPRO=0'+CODPRO.Text
               +' ORDER BY CPCODPRO_ACAB,CPORDEM ');
try
   Tb_Comp_Emb.open;
except
   Tb_Comp_Emb.sql.savetofile('C:\SQL.TXT');
   end;


Tb_Comp_Fec.Close;
Tb_Comp_Fec.SQL.Clear;
Tb_Comp_Fec.SQL.Add('Select CPCODEMP, '
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
               +'       PDNOME, '
               +'       PDUND '
               +'       ,'+mcampopreco+' AS PDPU '

               +' from CADCOMP,CADPRO where '
               +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                   ' CPCODEMP=0'+IntToStr(codemp)+' and PDCODEMP=CPCODEMP and ')
               +' PDCODPRO=CPCODMAT and (CPTIPO=2) '
               +' and CPCODPRO=0'+CODPRO.Text
               +' ORDER BY CPCODPRO_ACAB,CPORDEM ');
try
   Tb_Comp_Fec.open;
except
   Tb_Comp_Fec.sql.savetofile('C:\SQL.TXT');
   end;


mQtdZerado:=0;
While not Tb_Comp_MP.Eof do
   begin
   if ((Tb_Comp_MPCPPERCENT.IsNull) or (Tb_Comp_MPCPPERCENT.Value=0)) then
      begin
      mQtdZerado:=mQtdZerado+1;
      end;
   Tb_Comp_MP.Next;
   end;
Tb_Comp_MP.First;
if not DirectoryExists(Banco_Servidor+'\PASTADOCS\'+Banco_usuario) then
   CreateDir(Banco_Servidor+'\PASTADOCS\'+Banco_usuario);
MNOMARQDOC2.Text:=Banco_Servidor+'\PASTADOCS\'+Banco_usuario+'\PD'+FloatToStr(fSonumero(CODPRO.Text))+'.RTF';
if FileExists(MNOMARQDOC2.Text) then
   begin
   wp_texto.Clear;
   wp_texto.LoadFromFile(MNOMARQDOC2.Text);
   end
else if FileExists(Banco_Servidor+'\PASTADOCS\'+Banco_usuario+'\PD_PADRAO.RTF') then
   begin
   wp_texto.Clear;
   wp_texto.LoadFromFile(Banco_Servidor+'\PASTADOCS\'+Banco_usuario+'\PD_PADRAO.RTF');
   end;
result:=true;


end;

procedure TFrm_IndEnv_MFor.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) then
   begin
//   DM1.Tb_Pro.Filter:='PDNIVEL=0 OR PDNIVEL=3';
//   DM1.Tb_Pro.Filtered:=True;
   CODPRO.Text:=fChamaPro(0,'frm_indenv_mfor',key);
   key:=#0;
   DM1.Tb_pro.Filter:='';
   DM1.Tb_pro.Filtered:=False;
   end;

end;

procedure TFrm_IndEnv_MFor.Tb_Comp_MPAfterInsert(DataSet: TDataSet);
begin
mPerc_ant    :=0;
mQtdZerado_ant:=0;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(CPORDEM) from CADCOMP '
                  +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                   ' CPCODEMP=0'+IntToStr(codemp)+' and  ')
                  +' (CPTIPO=0 or CPTIPO is null) '
                  +' and CPCODPRO=0'+CODPRO.Text);
DM1.Query1.Open;

mOrdem_item:=DM1.Query1.Fields[0].AsInteger;
Tb_Comp_MPCPORDEM.AsInteger   :=mOrdem_item;
Tb_Comp_MPCPCODEMP.Value      :=codemp;
Tb_Comp_MPCPCODPRO.Value      :=ValFloat(CODPRO.Text);
Tb_Comp_MPCPCODPRO_ACAB.Value :=0;
Tb_Comp_MPCPTIPO.AsInteger    :=0;

mOper_item:=0;
Tb_Comp_MPCPCODMAT.Value      :=0;
Tb_Comp_MPCPPU.Value          :=0;
Tb_Comp_MPCPNUMERO.Value      :=' ';
Tb_Comp_MPCPMPNUM.Value       :=' ';
Tb_Comp_MPCPPERCENT_REST.Value:=0;
Tb_Comp_MPCPPERCENT.Value     :=0;
Tb_Comp_MPCPQUANT.Value       :=0;

end;

procedure TFrm_IndEnv_MFor.Tb_Comp_MPAfterCancel(DataSet: TDataSet);
begin
mOper_item    :=0;
mCodMat_ant   :=0;
mPerc_Ant     :=0;

end;

procedure TFrm_IndEnv_MFor.c(DataSet: TDataSet);
begin
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   FMensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
   end;

end;

procedure TFrm_IndEnv_MFor.Tb_Comp_MPAfterEdit(DataSet: TDataSet);
begin


mOper_item:=1;
mCodMat_ant  :=Tb_Comp_MPCPCODMAT.Value;
mPerc_Ant    :=Tb_Comp_MPCPPERCENT.Value;
if (Tb_Comp_MPCPPERCENT.AsFloat=0) then
   mQtdZerado_ant:=1
else
   mQtdZerado_ant:=0;


end;

procedure TFrm_IndEnv_MFor.Tb_Comp_MPBeforeEdit(DataSet: TDataSet);
begin
mCodMat_ant    :=Tb_Comp_MPCPCODMAT.AsFloat;

end;

procedure TFrm_IndEnv_MFor.Tb_Comp_MPBeforePost(DataSet: TDataSet);
begin
if Tb_Comp_MPCPCODPRO_ACAB.IsNull then
   Tb_Comp_MPCPCODPRO_ACAB.Value:=0;



if Tb_Comp_MPCPCODMAT.Asfloat=0 then
   begin
   Tb_Comp_MP.Cancel;
   DBGrid_MP.SelectedField:=Tb_Comp_MPCPCODMAT;
   Abort;
   exit;
   end;


if not flcadpro(1,0,0,Tb_Comp_MPCPCODMAT.AsString) then
   begin
   FMensagem('Favor Selecionar um Código de Matéria Prima Válido!',0,['0'],0);
   DBGrid_MP.SelectedField:=Tb_Comp_MPCPCODMAT;
   abort;
   exit;
   end;
sbnAtuCusto.Enabled:=true;

if (mOper_item=0) or
   (
    (mCodMat_ant<>0)
     and  (mCodMat_ant<>Tb_Comp_MPCPCODMAT.AsFloat) )
       then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select count(*) from CADCOMP where '
                     +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+IntToStr(codemp)+' and ')
                     +' CPCODPRO=0'+trim(codpro.Text)
                     );
   DM1.Query1.SQL.Add(' and CPCODMAT=0'+Tb_Comp_MPCPCODMAT.AsString);
   if mCodMat_ant<>0 then
      DM1.Query1.SQL.Add(' and CPCODMAT<>0'+Tb_Comp_MPCPCODMAT.AsString);
   DM1.Query1.SQL.Add(' and (CPTIPO=0 or CPTIPO is null) ');

   DM1.Query1.Open;
   if DM1.Query1.Fields[0].AsInteger>0 then
      begin
      fmensagem('Esta Materia Prima ja Existe nesta formula!',0,['0'],0);
      DBGrid_MP.SelectedField:=Tb_Comp_MPCPCODMAT;
      Tb_Comp_MP.Cancel;
      abort;
      exit;
      end;
   end;


if ((mQtdZerado-mQtdZerado_ant)>0) and (Tb_Comp_MPCPPERCENT.AsFloat=0) then
   begin
   FMensagem('Favor Selecionar um percentual válido!',0,['0'],0);
   DBGrid_mp.SelectedField:=Tb_Comp_MPCPQUANT;
   abort;
   exit;
   end;



if (Tb_Comp_MPCPPERCENT.IsNull) or (Tb_Comp_MPCPPERCENT.AsFloat<0) then
   Tb_Comp_MPCPPERCENT.Value:=0;
Tb_Comp_MPCPPERCENT.Value:=Arredonda(Tb_Comp_MPCPPERCENT.Value,DM1.Tb_PargerPCASIND.AsInteger);
Tb_Comp_MPCPTIPO.Value:=0;

mOper_item:=0;

mQtdZerado:=mQtdZerado-mQtdZerado_ant;
if (Tb_Comp_MPCPPERCENT.AsFloat=0) then
   mQtdZerado:=mQtdZerado+1;

if Tb_Comp_MPCPPERCENT.AsFloat<>0 then
   begin
   Tb_Comp_MPCPPERCENT_REST.Value:=Tb_Comp_MPCPPERCENT.Value;
   mTotQsp:=mTotQsp-Tb_Comp_MPCPPERCENT_REST.Value+mPerc_Ant;
   end
else
   mTotQsp:=mTotQsp+mPerc_Ant;

if (valfloat(UNDMED.Text)>0) and (Tb_Comp_MPCPPERCENT_REST.AsFloat<>0) then
   begin
   Tb_Comp_MPCPQTD_PAD.AsFloat:= (valfloat(UNDMED.Text)*Tb_Comp_MPCPPERCENT_REST.AsFloat)/100;
{   Tb_Comp_MPCPQTD_PAD.AsFloat:=arredonda( (valfloat(UNDMED.Text)*Tb_Comp_MPCPPERCENT_REST.AsFloat)/100 ,6);

 Showmessage('qtd padrao '+ Tb_Comp_MPCPQTD_PAD.AsString
            +#13+'unidade de medida '+UNDMED.Text
            +#13+'PERCENTUAL REstante '+Tb_Comp_MPCPPERCENT_REST.asstring
            +#13+' resultado '+floattostr((valfloat(UNDMED.Text)*Tb_Comp_MPCPPERCENT_REST.AsFloat)/100)
            );
}
   end
else
   Tb_Comp_MPCPQTD_PAD.AsFloat:=0;


mPerc_Ant:=0;

mCodMat_ant:=0;
mAlterouTabela:=true;


end;

procedure TFrm_IndEnv_MFor.DBGrid_MPColExit(Sender: TObject);
begin

if Tb_Comp_MP.State in [dsInsert,dsEdit] then
   begin
   if (DBGrid_MP.SelectedField=Tb_Comp_MPCPCODMAT) then
      begin
      if not flcadpro(1,0,0,Tb_Comp_MPCPCODMAT.AsString) then
         begin
         FMensagem('Matéria Prima não Cadastrada!',0,['0'],0);
         Abort;
         exit;
         end
      else
         begin
         Tb_Comp_MPPDNOME.Value      :=DM1.Tb_ProPDNOME.Value;
         Tb_Comp_MPPDUND.Value       :=DM1.Tb_ProPDUND.Value;
         if Tb_Comp_MPPDPU.Value=0 then
            begin
            if DM1.Tb_ProPDPRECOC.AsFloat>0 then
               Tb_Comp_MPPDPU.Value       :=DM1.Tb_ProPDPRECOC.Value
            else
               Tb_Comp_MPPDPU.Value       :=DM1.Tb_ProPDPRECO1.Value;
            end;
         end
      end;
   end;

end;

procedure TFrm_IndEnv_MFor.DBGrid_MPExit(Sender: TObject);
var
mQtdUnd, mQtdPer: Real;
begin
if Tb_Comp_MP.State in [dsEdit, dsInsert] then
   begin
   if (Tb_Comp_MPCPCODMAT.AsFloat>0) and
      ( (Tb_Comp_MPCPQUANT.AsFloat>0) or (Tb_Comp_MPCPPERCENT.Asfloat<>0)) then
      Tb_Comp_MP.Post
   else
      Tb_Comp_MP.Cancel;
   end;
mQtdUnd:=0;
mQtdPer:=0;
if mAlterouTabela then
   begin
   Tb_Comp_MP.First;
   While not Tb_Comp_MP.Eof do
      begin
      mQtdUnd:=mQtdUnd+Tb_Comp_MPCPQUANT.AsFloat;
      mQtdPer:=mQtdPer+Tb_Comp_MPCPPERCENT.AsFloat;
      Tb_Comp_MP.Next;
      end;
   if DM1.Tb_PargerPIND_TPFORMULA.Asfloat>0 then
      begin
      mQtdUnd:=Arredonda(100-mQtdPer,DM1.Tb_PargerPCASIND.AsInteger);

      if (mQtdUnd+mQtdPer)<>100 then
         mQtdUnd:=mQtdUnd+(100-mQtdPer);
      Tb_Comp_MP.First;
      While not Tb_Comp_MP.Eof do
         begin
         Tb_Comp_MP.Edit;
         Tb_Comp_MPCPPERCENT_REST.Value:=mQtdUnd;
         Tb_Comp_MP.Post;
         Tb_Comp_MP.Next;
         end;
      end;
   end;
mAlterouTabela:=false;

end;

procedure TFrm_IndEnv_MFor.DBGrid_MPKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (Tb_Comp_MP.State in [dsEdit,dsInsert]) then
   begin
   if Tb_Comp_MPCPCODPRO.IsNull then
      Tb_Comp_MP.Append
   else
      Tb_Comp_MP.Edit;
   end;

if Tb_Comp_MP.State in [dsEdit,dsInsert] then
   begin
   if key in ['.',','] then
      begin
      if (DBGrid_MP.SelectedField=Tb_Comp_MPCPPERCENT) then
          key:=DecimalSeparator;
      end
   else if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      if (DBGrid_MP.SelectedField=Tb_Comp_MPCPCODMAT) then
         begin
//         DM1.Tb_Pro.Filter  :='PDNIVEL>0';
//         DM1.Tb_Pro.Filtered:=True;
         Tb_Comp_MPCPCODMAT.Value:=ValFloat(fChamaPro(0,'frm_indenv_mfor',key));
         key:=#0;
         DM1.Tb_Pro.Filter  :='';
         DM1.Tb_Pro.Filtered:=False;
         end;
      end;
   end;


end;

procedure TFrm_IndEnv_MFor.Tb_Comp_MPCalcFields(DataSet: TDataSet);
begin
if (Tb_Comp_MPCPCODMAT.AsFloat>0) then
   begin
   if Tb_Comp_MPCPPERCENT.AsFloat=0 then
      Tb_Comp_MPObservacao.Value:='QSP '+FormatFloat(mcasind, mTotQsp)+'%'
   else
      Tb_Comp_MPObservacao.Value:=FormatFloat(mcasind, Tb_Comp_MPCPPERCENT.Value)+'%';
   end;
Tb_Comp_MPtotal.AsFloat:=Arredonda( (Tb_Comp_MPPDPU.AsFloat*Tb_Comp_MPCPQTD_PAD.AsFloat),3);

end;

procedure TFrm_IndEnv_MFor.Tb_Comp_MPBeforeDelete(DataSet: TDataSet);
begin
mAlterouTabela:=true;
if (Tb_Comp_MPCPPERCENT.Value=0) then
   begin
   mQtdZerado:=mQtdZerado-1;
   end;
mTotQsp:=mTotQsp+Tb_Comp_MPCPPERCENT_REST.Value;


end;

procedure TFrm_IndEnv_MFor.Tb_Comp_EmbAfterInsert(DataSet: TDataSet);
begin

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(CPORDEM) from CADCOMP '
                  +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                   ' CPCODEMP=0'+IntToStr(codemp)+' and  ')
                  +' (CPTIPO=1) '
                  +' and CPCODPRO=0'+CODPRO.Text);
DM1.Query1.Open;

mOrdem_item:=DM1.Query1.Fields[0].AsInteger;
Tb_Comp_EmbCPORDEM.AsInteger   :=mOrdem_item;
Tb_Comp_EmbCPCODEMP.Value      :=codemp;
Tb_Comp_EmbCPTIPO.AsInteger    :=1;
Tb_Comp_EmbCPCODPRO.Value      :=ValFloat(CODPRO.Text);
Tb_Comp_EmbCPCODPRO_ACAB.Value :=0;
mOper_item:=0;
Tb_Comp_EmbCPCODMAT.Value      :=0;
Tb_Comp_EmbCPPU.Value          :=0;
Tb_Comp_EmbCPNUMERO.Value      :=' ';
Tb_Comp_EmbCPMPNUM.Value       :=' ';
Tb_Comp_EmbCPPERCENT_REST.Value:=0;
Tb_Comp_EmbCPPERCENT.Value     :=0;
Tb_Comp_EmbCPQUANT.Value       :=0;


end;

procedure TFrm_IndEnv_MFor.Tb_Comp_EmbAfterCancel(DataSet: TDataSet);
begin
mOper_item    :=0;
mCodMat_ant   :=0;

end;

procedure TFrm_IndEnv_MFor.Tb_Comp_EmbAfterEdit(DataSet: TDataSet);
begin


mOper_item:=1;
mCodMat_ant  :=Tb_Comp_EmbCPCODMAT.Value;
mPerc_Ant    :=Tb_Comp_EmbCPPERCENT.Value;


end;

procedure TFrm_IndEnv_MFor.Tb_Comp_EmbBeforeEdit(DataSet: TDataSet);
begin
mCodMat_ant    :=Tb_Comp_EmbCPCODMAT.AsFloat;

end;

procedure TFrm_IndEnv_MFor.Tb_Comp_EmbBeforePost(DataSet: TDataSet);
begin
if Tb_Comp_EmbCPCODPRO_ACAB.IsNull then
   Tb_Comp_EmbCPCODPRO_ACAB.Value:=0;



if Tb_Comp_EmbCPCODMAT.Asfloat=0 then
   begin
   Tb_Comp_Emb.Cancel;
   DBGrid_emb.SelectedField:=Tb_Comp_EmbCPCODMAT;
   Abort;
   exit;
   end;


if not flcadpro(1,0,0,Tb_Comp_EmbCPCODMAT.AsString) then
   begin
   FMensagem('Favor Selecionar um Código de Matéria Prima Válido!',0,['0'],0);
   DBGrid_emb.SelectedField:=Tb_Comp_EmbCPCODMAT;
   abort;
   exit;
   end;
sbnAtuCusto.Enabled:=true;
if (mOper_item=0) or
   (
    (mCodMat_ant<>0)
     and  (mCodMat_ant<>Tb_Comp_EmbCPCODMAT.AsFloat) )
       then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select count(*) from CADCOMP where '
                     +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+IntToStr(codemp)+' and ')
                     +' CPCODPRO=0'+trim(codpro.Text)
                     );
   DM1.Query1.SQL.Add(' and CPCODMAT=0'+Tb_Comp_EmbCPCODMAT.AsString);
   if mCodMat_ant<>0 then
      DM1.Query1.SQL.Add(' and CPCODMAT<>0'+Tb_Comp_EmbCPCODMAT.AsString);
   DM1.Query1.SQL.Add(' and CPTIPO=1 ');

   DM1.Query1.Open;
   if DM1.Query1.Fields[0].AsInteger>0 then
      begin
      fmensagem('Esta Embalagem ja Existe nesta formula!',0,['0'],0);
      DBGrid_emb.SelectedField:=Tb_Comp_EmbCPCODMAT;
      Tb_Comp_Emb.Cancel;
      abort;
      exit;
      end;
   end;

if (Tb_Comp_EmbCPQUANT.IsNull) or (Tb_Comp_EmbCPQUANT.AsFloat=0) then
   Tb_Comp_EmbCPQUANT.Value:=0;

mOper_item:=0;




end;

procedure TFrm_IndEnv_MFor.Tb_Comp_FecAfterCancel(DataSet: TDataSet);
begin
mOper_item    :=0;
mCodMat_ant   :=0;


end;

procedure TFrm_IndEnv_MFor.Tb_Comp_FecAfterEdit(DataSet: TDataSet);
begin


mOper_item:=1;
mCodMat_ant  :=Tb_Comp_FecCPCODMAT.Value;
mPerc_Ant    :=Tb_Comp_FecCPPERCENT.Value;


end;

procedure TFrm_IndEnv_MFor.Tb_Comp_FecAfterInsert(DataSet: TDataSet);
begin

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(CPORDEM) from CADCOMP '
                  +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                   ' CPCODEMP=0'+IntToStr(codemp)+' and  ')
                  +' (CPTIPO=2) '
                  +' and CPCODPRO=0'+CODPRO.Text);
DM1.Query1.Open;

mOrdem_item:=DM1.Query1.Fields[0].AsInteger;
Tb_Comp_FecCPORDEM.AsInteger   :=mOrdem_item;
Tb_Comp_FecCPTIPO.AsInteger    :=2;
Tb_Comp_FecCPCODEMP.Value      :=codemp;
Tb_Comp_FecCPCODPRO.Value      :=ValFloat(CODPRO.Text);
Tb_Comp_FecCPCODPRO_ACAB.Value :=0;
mOper_item:=0;
Tb_Comp_FecCPCODMAT.Value      :=0;
Tb_Comp_FecCPPU.Value          :=0;
Tb_Comp_FecCPNUMERO.Value      :=' ';
Tb_Comp_FecCPMPNUM.Value       :=' ';
Tb_Comp_FecCPPERCENT_REST.Value:=0;
Tb_Comp_FecCPPERCENT.Value     :=0;
Tb_Comp_FecCPQUANT.Value       :=0;


end;

procedure TFrm_IndEnv_MFor.Tb_Comp_FecBeforeEdit(DataSet: TDataSet);
begin
mCodMat_ant    :=Tb_Comp_FecCPCODMAT.AsFloat;

end;

procedure TFrm_IndEnv_MFor.Tb_Comp_FecBeforePost(DataSet: TDataSet);
begin
if Tb_Comp_FecCPCODPRO_ACAB.IsNull then
   Tb_Comp_FecCPCODPRO_ACAB.Value:=0;



if Tb_Comp_FecCPCODMAT.Asfloat=0 then
   begin
   Tb_Comp_Fec.Cancel;
   DBGrid_Fec.SelectedField:=Tb_Comp_FecCPCODMAT;
   Abort;
   exit;
   end;


if not flcadpro(1,0,0,Tb_Comp_FecCPCODMAT.AsString) then
   begin
   FMensagem('Favor Selecionar um Código de Matéria Prima Válido!',0,['0'],0);
   DBGrid_Fec.SelectedField:=Tb_Comp_FecCPCODMAT;
   abort;
   exit;
   end;
sbnAtuCusto.Enabled:=true;
   
if (mOper_item=0) or
   (
    (mCodMat_ant<>0)
     and  (mCodMat_ant<>Tb_Comp_FecCPCODMAT.AsFloat) )
       then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select count(*) from CADCOMP where '
                     +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+IntToStr(codemp)+' and ')
                     +' CPCODPRO=0'+trim(codpro.Text)
                     );
   DM1.Query1.SQL.Add(' and CPCODMAT=0'+Tb_Comp_FecCPCODMAT.AsString);
   if mCodMat_ant<>0 then
      DM1.Query1.SQL.Add(' and CPCODMAT<>0'+Tb_Comp_FecCPCODMAT.AsString);
   DM1.Query1.SQL.Add(' and CPTIPO=2 ');

   DM1.Query1.Open;
   if DM1.Query1.Fields[0].AsInteger>0 then
      begin
      fmensagem('Esta Embalagem ja Existe nesta formula!',0,['0'],0);
      DBGrid_Fec.SelectedField:=Tb_Comp_FecCPCODMAT;
      Tb_Comp_Fec.Cancel;
      abort;
      exit;
      end;
   end;

if (Tb_Comp_FecCPQUANT.IsNull) or (Tb_Comp_FecCPQUANT.AsFloat=0) then
   begin
   if DM1.Tb_ProPDEMBPAD.AsFloat>0 then
      Tb_Comp_FecCPQUANT.Value:=DM1.Tb_ProPDEMBPAD.AsFloat
   else
      Tb_Comp_FecCPQUANT.Value:=0;
   end;
mOper_item:=0;



end;

procedure TFrm_IndEnv_MFor.DBGrid_embColExit(Sender: TObject);
begin

if Tb_Comp_Emb.State in [dsInsert,dsEdit] then
   begin
   if (DBGrid_emb.SelectedField=Tb_Comp_EmbCPCODMAT) then
      begin
      if not flcadpro(1,0,0,Tb_Comp_EmbCPCODMAT.AsString) then
         begin
         FMensagem('Matéria Prima não Cadastrada!',0,['0'],0);
         Abort;
         exit;
         end
      else
         begin
         Tb_Comp_EmbPDNOME .Value      :=DM1.Tb_ProPDNOME.Value;
         Tb_Comp_EmbPDUND.Value       :=DM1.Tb_ProPDUND.Value;
         if Tb_Comp_EmbPDPU.Value=0 then
            begin
            if DM1.Tb_ProPDPRECOC.AsFloat>0 then
               Tb_Comp_EmbPDPU.Value       :=DM1.Tb_ProPDPRECOC.Value
            else
               Tb_Comp_EmbPDPU.Value       :=DM1.Tb_ProPDPRECO1.Value;
            end;

         end
      end;
   end;


end;

procedure TFrm_IndEnv_MFor.DBGrid_embExit(Sender: TObject);
begin
if Tb_Comp_Emb.State in [dsEdit, dsInsert] then
   begin
   if (Tb_Comp_EmbCPCODMAT.AsFloat>0) and
      ( (Tb_Comp_EmbCPQUANT.AsFloat>0) or (Tb_Comp_EmbCPPERCENT.Asfloat<>0)) then
      Tb_Comp_Emb.Post
   else
      Tb_Comp_Emb.Cancel;
   end;

end;

procedure TFrm_IndEnv_MFor.DBGrid_fecExit(Sender: TObject);
begin
if Tb_Comp_fec.State in [dsEdit, dsInsert] then
   begin
   if (Tb_Comp_FecCPCODMAT.AsFloat>0) and
      ( (Tb_Comp_FecCPQUANT.AsFloat>0) or (Tb_Comp_FecCPPERCENT.Asfloat<>0)) then
      Tb_Comp_Fec.Post
   else
      Tb_Comp_Fec.Cancel;
   end;

end;

procedure TFrm_IndEnv_MFor.DBGrid_fecColExit(Sender: TObject);
begin

if Tb_Comp_Fec.State in [dsInsert,dsEdit] then
   begin
   if (DBGrid_Fec.SelectedField=Tb_Comp_FecCPCODMAT) then
      begin
      if not flcadpro(1,0,0,Tb_Comp_FecCPCODMAT.AsString) then
         begin
         FMensagem('Matéria Prima não Cadastrada!',0,['0'],0);
         Abort;
         exit;
         end
      else
         begin
         Tb_Comp_FecPDNOME .Value      :=DM1.Tb_ProPDNOME.Value;
         Tb_Comp_FecPDUND.Value        :=DM1.Tb_ProPDUND.Value;
         if Tb_Comp_FecPDPU.Value=0 then
            begin
            if DM1.Tb_ProPDPRECOC.AsFloat>0 then
               Tb_Comp_FecPDPU.Value       :=DM1.Tb_ProPDPRECOC.Value
            else
               Tb_Comp_FecPDPU.Value       :=DM1.Tb_ProPDPRECO1.Value;
            end;

         end
      end;
   end;


end;

procedure TFrm_IndEnv_MFor.DBGrid_embKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (Tb_Comp_Emb.State in [dsEdit,dsInsert]) then
   begin
   if Tb_Comp_EmbCPCODPRO.IsNull then
      Tb_Comp_Emb.Append
   else
      Tb_Comp_Emb.Edit;
   end;

if Tb_Comp_Emb.State in [dsEdit,dsInsert] then
   begin
   if key in ['.',','] then
      begin
      if (DBGrid_Emb.SelectedField=Tb_Comp_EmbCPQUANT) then
          key:=DecimalSeparator;
      end
   else if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      if (DBGrid_Emb.SelectedField=Tb_Comp_EmbCPCODMAT) then
         begin
//         DM1.Tb_Pro.Filter  :='PDNIVEL>0';
//         DM1.Tb_Pro.Filtered:=True;
         Tb_Comp_EmbCPCODMAT.Value:=ValFloat(fChamaPro(0,'frm_indenv_mfor',key));
         key:=#0;
         DM1.Tb_Pro.Filter  :='';
         DM1.Tb_Pro.Filtered:=False;
         end;
      end;
   end;



end;

procedure TFrm_IndEnv_MFor.DBGrid_fecKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (Tb_Comp_Fec.State in [dsEdit,dsInsert]) then
   begin
   if Tb_Comp_FecCPCODPRO.IsNull then
      Tb_Comp_Fec.Append
   else
      Tb_Comp_Fec.Edit;
   end;

if Tb_Comp_Fec.State in [dsEdit,dsInsert] then
   begin
   if key in ['.',','] then
      begin
      if (DBGrid_Fec.SelectedField=Tb_Comp_FecCPQUANT) then
          key:=DecimalSeparator;
      end
   else if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      if (DBGrid_Fec.SelectedField=Tb_Comp_FecCPCODMAT) then
         begin
//         DM1.Tb_Pro.Filter  :='PDNIVEL>0';
//         DM1.Tb_Pro.Filtered:=True;
         Tb_Comp_FecCPCODMAT.Value:=ValFloat(fChamaPro(0,'frm_indenv_mfor',key));
         key:=#0;
         DM1.Tb_Pro.Filter  :='';
         DM1.Tb_Pro.Filtered:=False;
         end;
      end;
   end;

end;

procedure TFrm_IndEnv_MFor.bbFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrm_IndEnv_MFor.UNDMEDEnter(Sender: TObject);
begin
mUniMed_Ant:=UNDMED.Text;
end;

procedure TFrm_IndEnv_MFor.UNDMEDExit(Sender: TObject);
begin
UNDMED.Text:=mudapv(UNDMED.Text);
if valfloat(UNDMED.Text)<>ValFloat(mUniMed_Ant) then
   begin
   if valfloat(UNDMED.Text)>999999999 then
      UNDMED.Text :=FormatFloat('0.000', 999999999);
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Update CADPRO set PDQTDGRML=0'+mudavp(UNDMED.Text)
                     +' where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntToStr(codemp)+' and ')
                     +' PDCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString);
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      end;
   mAlterouTabela:=true;

   DBGrid_MPExit(self);
   end;
Tb_Comp_MP.First;
While not Tb_Comp_MP.Eof do
   begin
   Tb_Comp_MP.Edit;
   Tb_Comp_MP.Post;
   Tb_Comp_MP.Next;
   end;

end;

procedure TFrm_IndEnv_MFor.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePage=tbs_configuracao then
   bbSalvarPadrao.Visible:=true
else
   bbSalvarPadrao.Visible:=false;
IF PageControl1.ActivePage=tsLegendas then
   bbatutabopClick(self);
end;

procedure TFrm_IndEnv_MFor.bbSalvarPadraoClick(Sender: TObject);
begin
wp_texto.SaveToFile(MNOMARQDOC2.Text);
fmensagem('Texto Gravado!',0,['0'],0);

end;

procedure TFrm_IndEnv_MFor.FormCreate(Sender: TObject);
var
Query_Cons: TQuery;
mLinha: Integer;

begin
mcampopreco := 'case when PDPRECOC>0 THEN PDPRECOC else PDPRECO1 end ';

// Tb_Comp_MPCPQTD_PAD.DisplayFormat:='#,###.#####';
//TsCusto.TabVisible:=false;
tsTexto_Word.TabVisible:=false;
tsImprimir.tabvisible:=false;
tbs_configuracao.TabVisible:=false;
//Tb_Comptotal.DisplayFormat:=mcasaspu;
//Tb_CompCPQUANT.DisplayFormat:=mcasqtd;
mLinha:=0;

tab_totais[mLinha,00]:='MP_QTDITENS';
tab_totais[mLinha,01]:='Quantidades de Itens Materias Primas';
tab_totais[mLinha,02]:='Inteiro';
tab_totais[mLinha,03]:='0';
tab_totais[mLinha,04]:='0'; // formato

mLinha:=mLinha+1; // 01

tab_totais[mLinha,00]:='MP_QTD_PAD';
tab_totais[mLinha,01]:='Soma das Quantidades Padroes';
tab_totais[mLinha,02]:='real';
tab_totais[mLinha,03]:='0';
tab_totais[mLinha,04]:=mcasqtd; // formato
mLinha:=mLinha+1; // 02


tab_totais[mLinha,00]:='MP_QTDPERC';
tab_totais[mLinha,01]:='Totais dos Percentuais das Materias Primas';
tab_totais[mLinha,02]:='real';
tab_totais[mLinha,03]:='0';
tab_totais[mLinha,04]:=mcasas_pct; // formato
mLinha:=mLinha+1; // 03

tab_totais[mLinha,00]:='MP_QTDPERC_REST';
tab_totais[mLinha,01]:='Totais dos Percentuais das Materias Primas Restantes';
tab_totais[mLinha,02]:='real';
tab_totais[mLinha,03]:='0';
tab_totais[mLinha,04]:=mcasas_pct; // formato
mLinha:=mLinha+1; // 04

tab_totais[mLinha,00]:='MP_QTDPREV';
tab_totais[mLinha,01]:='Totais das Quantidades Previstas das Materias Primas ';
tab_totais[mLinha,02]:='real';
tab_totais[mLinha,03]:='0';
tab_totais[mLinha,04]:=mcasqtd; // formato
mLinha:=mLinha+1; // 05


tab_totais[mLinha,00]:='MP_QTDUTIL';
tab_totais[mLinha,01]:='Totais das Quantidades Utilizadas das Materias Primas';
tab_totais[mLinha,02]:='real';
tab_totais[mLinha,03]:='0';
tab_totais[mLinha,04]:=mcasqtd; // formato
mLinha:=mLinha+1; // 06


tab_totais[mLinha,00]:='EMB_QTDITENS';
tab_totais[mLinha,01]:='Quantidades de Itens Embalagens';
tab_totais[mLinha,02]:='Inteiro';
tab_totais[mLinha,03]:='0';
tab_totais[mLinha,04]:='0'; // formato

mLinha:=mLinha+1; // 07


tab_totais[mLinha,00]:='EMB_QTDPAD';
tab_totais[mLinha,01]:='Totais das Quantidades Padrão das Embalagens';
tab_totais[mLinha,02]:='real';
tab_totais[mLinha,03]:='0';
tab_totais[mLinha,04]:=mcasqtd; // formato
mLinha:=mLinha+1; // 08


tab_totais[mLinha,00]:='EMB_QTDPREV';
tab_totais[mLinha,01]:='Totais das Quantidades Quantidade Previstas';
tab_totais[mLinha,02]:='real';
tab_totais[mLinha,03]:='0';
tab_totais[mLinha,04]:=mcasqtd; // formato
mLinha:=mLinha+1; // 09

tab_totais[mLinha,00]:='EMB_QTDUTIL';
tab_totais[mLinha,01]:='Totais das Quantidades Quantidade Utilizadas';
tab_totais[mLinha,02]:='real';
tab_totais[mLinha,03]:='0';
tab_totais[mLinha,04]:=mcasqtd; // formato



mLinha:=mLinha+1; // 10
Tab_totais[mLinha,00]:='EMB_TOTVLR_PREV';
Tab_totais[mLinha,01]:='Total em Valor Previstos';
Tab_totais[mLinha,02]:='real';
Tab_totais[mLinha,03]:='0';
Tab_totais[mLinha,04]:=mcasas; // formato


mLinha:=mLinha+1; // 11
Tab_totais[mLinha,00]:='EMB_TOTVLR_UTIL';
Tab_totais[mLinha,01]:='Total em Valor Utilizados';
Tab_totais[mLinha,02]:='real';
Tab_totais[mLinha,03]:='0';
Tab_totais[mLinha,04]:=mcasas; // formato


mLinha:=mLinha+1; // 12
Tab_totais[mLinha,00]:='MP_TOTVLR_PREV';
Tab_totais[mLinha,01]:='Total em Valor Previstos';
Tab_totais[mLinha,02]:='real';
Tab_totais[mLinha,03]:='0';
Tab_totais[mLinha,04]:=mcasas; // formato


mLinha:=mLinha+1; // 13
Tab_totais[mLinha,00]:='MP_TOTVLR_UTIL';
Tab_totais[mLinha,01]:='Total em Valor Utilizados';
Tab_totais[mLinha,02]:='real';
Tab_totais[mLinha,03]:='0';
Tab_totais[mLinha,04]:=mcasas; // formato



mLinha:=mLinha+1; // 14
Tab_totais[mLinha,00]:='MPEMB_QTDITENS';
Tab_totais[mLinha,01]:='Número de Itens entre materia primas e embalagens';
Tab_totais[mLinha,02]:='real';
Tab_totais[mLinha,03]:='0';
Tab_totais[mLinha,04]:=mcasqtd; // formato


mLinha:=mLinha+1; // 15
Tab_totais[mLinha,00]:='MPEMB_QTD_PAD';
Tab_totais[mLinha,01]:='Totais das Quantidades Padrao entre materia primas e embalagens';
Tab_totais[mLinha,02]:='real';
Tab_totais[mLinha,03]:='0';
Tab_totais[mLinha,04]:=mcasqtd; // formato

mLinha:=mLinha+1; // 16
Tab_totais[mLinha,00]:='MPEMB_QTDPREV';
Tab_totais[mLinha,01]:='Totais das Quantidades Previstas entre materia primas e embalagens';
Tab_totais[mLinha,02]:='real';
Tab_totais[mLinha,03]:='0';
Tab_totais[mLinha,04]:=mcasqtd; // formato

mLinha:=mLinha+1; // 17
Tab_totais[mLinha,00]:='MPEMB_QTDUTIL';
Tab_totais[mLinha,01]:='Totais das Quantidades Utilizadas entre materia primas e embalagens';
Tab_totais[mLinha,02]:='real';
Tab_totais[mLinha,03]:='0';
Tab_totais[mLinha,04]:=mcasqtd; // formato

mLinha:=mLinha+1; // 18
Tab_totais[mLinha,00]:='MPEMB_TOTVLR_PREV';
Tab_totais[mLinha,01]:='Totais em valores previstos entre materia primas e embalagens';
Tab_totais[mLinha,02]:='real';
Tab_totais[mLinha,03]:='0';
Tab_totais[mLinha,04]:=mcasqtd; // formato


mLinha:=mLinha+1; // 19
Tab_totais[mLinha,00]:='MPEMB_TOTVLR_UTIL';
Tab_totais[mLinha,01]:='Totais em valores utilizados entre materia primas e embalagens';
Tab_totais[mLinha,02]:='real';
Tab_totais[mLinha,03]:='0';
Tab_totais[mLinha,04]:=mcasqtd; // formato



mLinha:=mLinha+1; // 20
Tab_totais[mLinha,00]:='MPEMB_PERC_PERDAS';
Tab_totais[mLinha,01]:='Totais percentuais das perdas';
Tab_totais[mLinha,02]:='real';
Tab_totais[mLinha,03]:='0';
Tab_totais[mLinha,04]:=mcasqtd; // formato


mLinha:=0;
tab_MatEmb[mLinha,00]:='EMB_CODEMP';
tab_MatEmb[mLinha,01]:='Código Empresa';
tab_MatEmb[mLinha,02]:='Inteiro';
tab_MatEmb[mLinha,03]:='0';
tab_MatEmb[mLinha,04]:='000'; // formato
mLinha:=mLinha+1; // 01
tab_MatEmb[mLinha,00]:='EMB_ORDEM';
tab_MatEmb[mLinha,01]:='Ordem';
tab_MatEmb[mLinha,02]:='Inteiro';
tab_MatEmb[mLinha,03]:='0';
tab_MatEmb[mLinha,04]:='00'; // formato

mLinha:=mLinha+1; // 02

tab_MatEmb[mLinha,00]:='EMB_CODMAT';
tab_MatEmb[mLinha,01]:='Código do Material de Embalagem';
tab_MatEmb[mLinha,02]:='Real';
tab_MatEmb[mLinha,03]:='0';
tab_MatEmb[mLinha,04]:=''; // formato
mLinha:=mLinha+1; // 03

tab_MatEmb[mLinha,00]:='EMB_PU';
tab_MatEmb[mLinha,01]:='Código Empresa';
tab_MatEmb[mLinha,02]:='Real';
tab_MatEmb[mLinha,03]:='0';
tab_MatEmb[mLinha,04]:=mcasaspu; // formato

mLinha:=mLinha+1; // 04
tab_MatEmb[mLinha,00]:='EMB_TIPO';
tab_MatEmb[mLinha,01]:='Tipo 0-MP 1-Emb Unitario 2-Emb Padrao';
tab_MatEmb[mLinha,02]:='inteiro';
tab_MatEmb[mLinha,03]:='0';
tab_MatEmb[mLinha,04]:='0'; // formato

mLinha:=mLinha+1; // 05
tab_MatEmb[mLinha,00]:='EMB_QTD_PAD';
tab_MatEmb[mLinha,01]:='Quantidade Padrão';
tab_MatEmb[mLinha,02]:='Real';
tab_MatEmb[mLinha,03]:='0';
tab_MatEmb[mLinha,04]:=mcasqtd; // formato

mLinha:=mLinha+1; // 06
tab_MatEmb[mLinha,00]:='EMB_PERCENT';
tab_MatEmb[mLinha,01]:='Percentual %';
tab_MatEmb[mLinha,02]:='Real';
tab_MatEmb[mLinha,03]:='0';
tab_MatEmb[mLinha,04]:=mcasas_pct; // formato

mLinha:=mLinha+1; // 07
tab_MatEmb[mLinha,00]:='EMB_PERCENT_REST';
tab_MatEmb[mLinha,01]:='Percentual Restante';
tab_MatEmb[mLinha,02]:='Real';
tab_MatEmb[mLinha,03]:='0';
tab_MatEmb[mLinha,04]:=mcasas_pct; // formato


mLinha:=mLinha+1; // 08
tab_MatEmb[mLinha,00]:='EMB_NOMPRO';
tab_MatEmb[mLinha,01]:='Descrição do Produto';
tab_MatEmb[mLinha,02]:='string';
tab_MatEmb[mLinha,03]:='60';
tab_MatEmb[mLinha,04]:=''; // formato

mLinha:=mLinha+1; // 09
tab_MatEmb[mLinha,00]:='EMB_NOMPRO2';
tab_MatEmb[mLinha,01]:='Descrição 2 do Produto';
tab_MatEmb[mLinha,02]:='string';
tab_MatEmb[mLinha,03]:='60';
tab_MatEmb[mLinha,04]:=''; // formato


mLinha:=mLinha+1; // 10
tab_MatEmb[mLinha,00]:='EMB_UNDPRO';
tab_MatEmb[mLinha,01]:='Unidade do Produto';
tab_MatEmb[mLinha,02]:='string';
tab_MatEmb[mLinha,03]:='3';
tab_MatEmb[mLinha,04]:=''; // formato


mLinha:=mLinha+1; // 11
tab_MatEmb[mLinha,00]:='EMB_QTDPREV';
tab_MatEmb[mLinha,01]:='Quantidade Prevista';
tab_MatEmb[mLinha,02]:='real';
tab_MatEmb[mLinha,03]:='0';
tab_MatEmb[mLinha,04]:=mcasqtd; // formato


mLinha:=mLinha+1; // 12
tab_MatEmb[mLinha,00]:='EMB_QTDUTIL';
tab_MatEmb[mLinha,01]:='Quantidade Utilizada';
tab_MatEmb[mLinha,02]:='real';
tab_MatEmb[mLinha,03]:='0';
tab_MatEmb[mLinha,04]:=mcasqtd; // formato



mLinha:=mLinha+1; // 13
tab_MatEmb[mLinha,00]:='EMB_PU';
tab_MatEmb[mLinha,01]:='Preço Unitário';
tab_MatEmb[mLinha,02]:='real';
tab_MatEmb[mLinha,03]:='0';
tab_MatEmb[mLinha,04]:=mcasaspu; // formato


mLinha:=mLinha+1; // 14
tab_MatEmb[mLinha,00]:='EMB_LOTE';
tab_MatEmb[mLinha,01]:='Lote da Materia Prima';
tab_MatEmb[mLinha,02]:='string';
tab_MatEmb[mLinha,03]:='20';
tab_MatEmb[mLinha,04]:=''; // formato



mLinha:=mLinha+1; // 15
tab_MatEmb[mLinha,00]:='EMB_DTVCTO';
tab_MatEmb[mLinha,01]:='Data de Vencimento';
tab_MatEmb[mLinha,02]:='data';
tab_MatEmb[mLinha,03]:='10';
tab_MatEmb[mLinha,04]:=fdt2; // formato



mLinha:=mLinha+1; // 16
tab_MatEmb[mLinha,00]:='EMB_LOTE_RE';
tab_MatEmb[mLinha,01]:='Registro de Entrada';
tab_MatEmb[mLinha,02]:='string';
tab_MatEmb[mLinha,03]:='20';
tab_MatEmb[mLinha,04]:=''; // formato


mLinha:=mLinha+1; // 17
tab_MatEmb[mLinha,00]:='EMB_TOTVLR_PREV';
tab_MatEmb[mLinha,01]:='Total em Valor Previstos';
tab_MatEmb[mLinha,02]:='real';
tab_MatEmb[mLinha,03]:='0';
tab_MatEmb[mLinha,04]:=mcasas; // formato


mLinha:=mLinha+1; // 18
tab_MatEmb[mLinha,00]:='EMB_TOTVLR_UTIL';
tab_MatEmb[mLinha,01]:='Total em Valor Utilizados';
tab_MatEmb[mLinha,02]:='real';
tab_MatEmb[mLinha,03]:='0';
tab_MatEmb[mLinha,04]:=mcasas; // formato


mLinha:=mLinha+1; // 19
tab_MatEmb[mLinha,00]:='EMB_NOMDCB';
tab_MatEmb[mLinha,01]:='Nome do DCB';
tab_MatEmb[mLinha,02]:='string';
tab_MatEmb[mLinha,03]:='40';
tab_MatEmb[mLinha,04]:=mcasqtd; // formato


mLinha:=mLinha+1; // 20
tab_MatEmb[mLinha,00]:='EMB_CODDCB';
tab_MatEmb[mLinha,01]:='Código do DCB';
tab_MatEmb[mLinha,02]:='string';
tab_MatEmb[mLinha,03]:='10';
tab_MatEmb[mLinha,04]:=mcasqtd; // formato



mLinha:=mLinha+1; // 21
tab_MatEmb[mLinha,00]:='EMB_PERC_PERDAS';
tab_MatEmb[mLinha,01]:='Percentual de Perdas';
tab_MatEmb[mLinha,02]:='string';
tab_MatEmb[mLinha,03]:='10';
tab_MatEmb[mLinha,04]:=mcasqtd; // formato



mLinha:=mLinha+1; // 22
tab_MatEmb[mLinha,00]:='EMB_QTDPREV_DECIMAIS';
tab_MatEmb[mLinha,01]:='Quantidad e prevista com decimais a direita';
tab_MatEmb[mLinha,02]:='string';
tab_MatEmb[mLinha,03]:='20';
tab_MatEmb[mLinha,04]:=mcasqtd; // formato


mLinha:=mLinha+1; // 23
tab_MatEmb[mLinha,00]:='EMB_QTDUTIL_DECIMAIS';
tab_MatEmb[mLinha,01]:='Quantidade UTILIZADA com decimais a direita';
tab_MatEmb[mLinha,02]:='string';
tab_MatEmb[mLinha,03]:='20';
tab_MatEmb[mLinha,04]:=mcasqtd; // formato





mLinha:=0; // 0

tab_mp[mLinha,00]:='MP_CODEMP';
tab_mp[mLinha,01]:='Código Empresa';
tab_mp[mLinha,02]:='Inteiro';
tab_mp[mLinha,03]:='0';
tab_mp[mLinha,04]:='000'; // formato

mLinha:=mLinha+1; // 01


tab_mp[mLinha,00]:='MP_ORDEM';
tab_mp[mLinha,mLinha]:='Ordem';
tab_mp[mLinha,02]:='Inteiro';
tab_mp[mLinha,03]:='0';
tab_mp[mLinha,04]:='000'; // formato

mLinha:=mLinha+1; // 02

tab_mp[mLinha,00]:='MP_CODPRO';
tab_mp[mLinha,01]:='Código Produto';
tab_mp[mLinha,mLinha]:='Real';
tab_mp[mLinha,03]:='0';  // tamanho
tab_mp[mLinha,04]:='000'; // formato
mLinha:=mLinha+1; // 03

tab_mp[mLinha,00]:='MP_CODMAT';
tab_mp[mLinha,01]:='Código Materia Prima';
tab_mp[mLinha,02]:='Real';
tab_mp[mLinha,mLinha]:='0';  // tamanho
tab_mp[mLinha,04]:='000'; // formato

mLinha:=mLinha+1; // 04

tab_mp[mLinha,00]:='MP_QUANT';
tab_mp[mLinha,01]:='Quantidadce';
tab_mp[mLinha,02]:='Real';
tab_mp[mLinha,03]:='0';  // tamanho
tab_mp[mLinha,mLinha]:=mcasqtd; // formato

mLinha:=mLinha+1; // 05

tab_mp[mLinha,00]:='MP_PU';
tab_mp[mLinha,01]:='Preco Unitario';
tab_mp[mLinha,02]:='Real';
tab_mp[mLinha,03]:='0';  // tamanho
tab_mp[mLinha,04]:=mcasaspu; // formato
mLinha:=mLinha+1; // 06

tab_mp[mLinha,00]:='MP_QTD_PAD';
tab_mp[mLinha,01]:='Quantidade Padrao';
tab_mp[mLinha,02]:='Real';
tab_mp[mLinha,03]:='0';  // tamanho
tab_mp[mLinha,04]:=mcasqtd; // formato

mLinha:=mLinha+1; // 07

tab_mp[mLinha,00]:='MP_NOMPRO';
tab_mp[mLinha,01]:='Nome do Produto';
tab_mp[mLinha,02]:='string';
tab_mp[mLinha,03]:='60';  // tamanho
tab_mp[mLinha,04]:=''; // formato

mLinha:=mLinha+1; // 08

tab_mp[mLinha,00]:='MP_UNDPRO';
tab_mp[mLinha,01]:='Unidade';
tab_mp[mLinha,02]:='string';
tab_mp[mLinha,03]:='03';  // tamanho
tab_mp[mLinha,04]:=''; // formato

mLinha:=mLinha+1; // 09

tab_mp[mLinha,00]:='MP_NOMPRO2';
tab_mp[mLinha,01]:='Nome Generico';
tab_mp[mLinha,02]:='string';
tab_mp[mLinha,03]:='60';  // tamanho
tab_mp[mLinha,04]:=''; // formato

mLinha:=mLinha+1; // 10
tab_mp[mLinha,00]:='MP_QTDPREV';
tab_mp[mLinha,01]:='Quantidade Prevista';
tab_mp[mLinha,02]:='Real';
tab_mp[mLinha,03]:='0';  // tamanho
tab_mp[mLinha,04]:=mcasqtd; // formato

mLinha:=mLinha+1; // 11

tab_mp[mLinha,00]:='MP_QTDUTIL';
tab_mp[mLinha,01]:='Quantidade Utilizada';
tab_mp[mLinha,02]:='Real';
tab_mp[mLinha,03]:='0';  // tamanho
tab_mp[mLinha,04]:=mcasqtd; // formato

mLinha:=mLinha+1; // 12

tab_mp[mLinha,00]:='MP_PU';
tab_mp[mLinha,01]:='Preço Unitario';
tab_mp[mLinha,02]:='Real';
tab_mp[mLinha,03]:='0';  // tamanho
tab_mp[mLinha,04]:=mcasaspu; // formato

mLinha:=mLinha+1; // 12

tab_mp[mLinha,00]:='MP_LOTE';
tab_mp[mLinha,01]:='Lote do Produto';
tab_mp[mLinha,02]:='string';
tab_mp[mLinha,03]:='20';  // tamanho
tab_mp[mLinha,04]:=''; // formato

mLinha:=mLinha+1; // 14

tab_mp[mLinha,00]:='MP_DTVCTO';
tab_mp[mLinha,01]:='Data de Vencimento';
tab_mp[mLinha,02]:='DateTime';
tab_mp[mLinha,03]:='10';  // tamanho
tab_mp[mLinha,04]:=fdt2; // formato

mLinha:=mLinha+1; // 15

tab_mp[mLinha,00]:='MP_LOTE_RE';
tab_mp[mLinha,01]:='(RE) - Registro de Entrada';
tab_mp[mLinha,02]:='string';
tab_mp[mLinha,03]:='20';  // tamanho
tab_mp[mLinha,04]:=''; // formato

mLinha:=mLinha+1; // 16

Tab_mp[mLinha,00]:='MP_TOTVLR_PREV';
Tab_mp[mLinha,01]:='Total em Valor Previstos';
Tab_mp[mLinha,02]:='real';
Tab_mp[mLinha,03]:='0';
Tab_mp[mLinha,04]:=mcasas; // formato


mLinha:=mLinha+1; // 17

Tab_mp[mLinha,00]:='MP_TOTVLR_UTIL';
Tab_mp[mLinha,01]:='Total em Valor Utilizados';
Tab_mp[mLinha,02]:='real';
Tab_mp[mLinha,03]:='0';
Tab_mp[mLinha,04]:=mcasas; // formato




mLinha:=mLinha+1; // 18

Tab_mp[mLinha,00]:='MP_PERCENT';
Tab_mp[mLinha,01]:='% da formula';
Tab_mp[mLinha,02]:='real';
Tab_mp[mLinha,03]:='0';
Tab_mp[mLinha,04]:=mcasas; // formato

mLinha:=mLinha+1; // 19

Tab_mp[mLinha,00]:='MP_QTD_PAD';
Tab_mp[mLinha,01]:='% Quantidade Padrao';
Tab_mp[mLinha,02]:='real';
Tab_mp[mLinha,03]:='0';
Tab_mp[mLinha,04]:=mcasqtd; // formato

mLinha:=mLinha+1; // 20
Tab_mp[mLinha,00]:='MP_PERCENT_REST';
Tab_mp[mLinha,01]:='% Restande (Quando o Produto é QSP)';
Tab_mp[mLinha,02]:='real';
Tab_mp[mLinha,03]:='0';
Tab_mp[mLinha,04]:=mcasqtd; // formato

mLinha:=mLinha+1; // 21
Tab_mp[mLinha,00]:='MP_NOMDCB';
Tab_mp[mLinha,01]:='Nome do DCB';
Tab_mp[mLinha,02]:='string';
Tab_mp[mLinha,03]:='40';
Tab_mp[mLinha,04]:=mcasqtd; // formato


mLinha:=mLinha+1; // 22
Tab_mp[mLinha,00]:='MP_CODDCB';
Tab_mp[mLinha,01]:='Código do DCB';
Tab_mp[mLinha,02]:='string';
Tab_mp[mLinha,03]:='10';
Tab_mp[mLinha,04]:=mcasqtd; // formato


mLinha:=mLinha+1; // 23
Tab_mp[mLinha,00]:='MP_PERC_PERDAS';
Tab_mp[mLinha,01]:='Percentual de Perdas';
Tab_mp[mLinha,02]:='string';
Tab_mp[mLinha,03]:='10';
Tab_mp[mLinha,04]:=mcasqtd; // formato




mLinha:=mLinha+1; // 24
Tab_mp[mLinha,00]:='MP_QTDPREV_DECIMAIS';
Tab_mp[mLinha,01]:='Quantidad e prevista com decimais a direita';
Tab_mp[mLinha,02]:='string';
Tab_mp[mLinha,03]:='20';
Tab_mp[mLinha,04]:=mcasqtd; // formato


mLinha:=mLinha+1; // 25
Tab_mp[mLinha,00]:='MP_QTDUTIL_DECIMAIS';
Tab_mp[mLinha,01]:='Quantidade UTILIZADA com decimais a direita';
Tab_mp[mLinha,02]:='string';
Tab_mp[mLinha,03]:='20';
Tab_mp[mLinha,04]:=mcasqtd; // formato



mLinha:=mLinha+1; // 26
Tab_mp[mLinha,00]:='MP_QTD_PAD_DECIMAL';
Tab_mp[mLinha,01]:='Quantidade Padrao com decimais a direita';
Tab_mp[mLinha,02]:='string';
Tab_mp[mLinha,03]:='20';
Tab_mp[mLinha,04]:=mcasqtd; // formato



mLinha:=mLinha+1; // 27
Tab_mp[mLinha,00]:='MP_PERCENT_DECIMAL';
Tab_mp[mLinha,01]:='Percentual com decimal a direita';
Tab_mp[mLinha,02]:='string';
Tab_mp[mLinha,03]:='20';
Tab_mp[mLinha,04]:=mcasqtd; // formato



mLinha:=mLinha+1; // 28
Tab_mp[mLinha,00]:='MP_PERCENT_REST_DECIMAL';
Tab_mp[mLinha,01]:='Percentual com decimal a direita';
Tab_mp[mLinha,02]:='string';
Tab_mp[mLinha,03]:='20';
Tab_mp[mLinha,04]:=mcasqtd; // formato



Tb_Comp_MPCPPU.displayformat:=mcasaspu;
Tb_Comp_MPPDPU.displayformat:=mcasaspu;
//Tb_Comp_MPtotal.displayformat:=mcasas;

Tb_Comp_Fectotal.displayformat:=mcasas;
Tb_Comp_fecCPPU.displayformat:=mcasaspu;
Tb_Comp_fecPDPU.displayformat:=mcasaspu;

Tb_Comp_Embtotal.displayformat:=mcasas;
Tb_Comp_EmbCPPU.displayformat:=mcasas;
Tb_Comp_EmbPDPU.displayformat:=mcasas;
tb_precosVALOR_ACUMULADO.displayformat:=mcasas;
tb_precosVALOR.displayformat:=mcasas;
tb_precosPERC.displayformat:=mcasas;

PageControl1.ActivePage:=TsFormula;
Query_Cons:=TQuery.Create(nil);
Query_Cons.DatabaseName:='SG_ASSOC';
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
   Query_Cons.sql.savetofile('C:\SQL.TXT');
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

//if codusr<>1111 then
//   TsCusto.TabVisible:=false;
Application.CreateForm(TFrm_bkp,form_bkp);

end;

procedure TFrm_IndEnv_MFor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
FreeAndNil(Form_Bkp);
end;

procedure TFrm_IndEnv_MFor.bbop_esp_adqClick(Sender: TObject);
var
mArqSai: String;
mQtdReg: Integer;
x: Integer;
pArquivosCompactar: TStrings;

begin
If Opd1.Execute then
   begin
   if (UPPERCASE(ExtractFileExt(Opd1.FileName)) <> '.DOC') and
      (UPPERCASE(ExtractFileExt(Opd1.FileName)) <> '.DOCX') then
      begin
      verteclado(0);
      MessageDlg('O Arquivo '+Opd1.FileName+' não é um arquivo do tipo word valido!',mtWarning,[mbOk],0);
      exit;
      end;
   end;



mArqSai:='C:\SGE\TEMP\PD'+Floattostr(fsonumero(CODPRO.Text));
if FileExists(mArqSai+'.DOC') then
   DeleteFile(mArqSai+'.DOC');
copyfile(pchar(Opd1.fileName),pchar(marqsai+'.DOC'),false);

//mArqSai:='C:\SGE\TEMP\'+fRetiraExtensao(Fnomearq_Pasta(0,opd1.FileName))+'.ZIP';
pArquivosCompactar:=TStringList.Create;

pArquivosCompactar.Add(mArqSai+'.DOC');
fZiparArquivos(pArquivosCompactar,mArqSai+'.ZIP','');
FreeAndNil(pArquivosCompactar);
mQtdReg:=fPartionarArquivo(mArqSai+'.ZIP');
fIncluirOP(fsonumero(CODPRO.Text),mArqSai,mQtdReg);
DeleteFile(mArqSai+'.DOC');
DeleteFile(mArqSai+'.ZIP');
for x:=1 to mQtdReg do
   begin
   DeleteFile(mArqSai+'PARTE'+IntToStr(x)+'.DAT');
   end;

end;

function TFrm_IndEnv_MFor.fIncluirOP(pCodPro: Real;pNomeOri:String;pQtdReg:Integer): Boolean;
var
Ado_Cadop: TADOQuery;
x: Integer;
begin
Ado_Cadop:=TADOQuery.Create(NIL);
Ado_Cadop.Connection:=DM1_ADO.ADOConnection1;
Ado_Cadop.Close;
Ado_Cadop.SQL.Clear;
Ado_Cadop.SQL.Add('Select * from CADOP_CFG where OP_CODEMP=:CODEMP and OP_CODPRO=:CODPRO');
Ado_Cadop.Parameters.ParamByName('CODEMP').Value:=codemp;
Ado_Cadop.Parameters.ParamByName('CODPRO').Value:=pCodPro;
Ado_Cadop.Open;
//if Ado_Cadop.fields[0].AsInteger>0 then
if not Ado_Cadop.IsEmpty then
   begin
   Ado_Cadop.Close;
   Ado_Cadop.SQL.Clear;
   Ado_Cadop.SQL.Add('Delete from CADOP_CFG where OP_CODEMP=:CODEMP and OP_CODPRO=:CODPRO');
   Ado_Cadop.Parameters.ParamByName('CODEMP').Value:=codemp;
   Ado_Cadop.Parameters.ParamByName('CODPRO').Value:=pCodPro;
   Ado_Cadop.ExecSQL;
   fdm1StartCommit;
   end;
for x:=1 to pQtdReg do
   begin
   if not FileExists(pNomeOri+'PARTE'+IntToStr(x)+'.DAT') then
      continue;
   Ado_Cadop.Close;
   Ado_Cadop.SQL.Clear;
   Ado_Cadop.SQL.Add('Insert into CADOP_CFG ('
                    +' OP_CODEMP'
                    +',OP_CODPRO'
                    +',OP_ORDEM'
                    +',OP_DADOS'
                    +') values ('
                    +' :OP_CODEMP'
                    +',:OP_CODPRO'
                    +',:OP_ORDEM'
                    +',:OP_DADOS'
                    +')');
   Ado_Cadop.Parameters.ParamByName('OP_CODEMP').Value:=codemp;
   Ado_Cadop.Parameters.ParamByName('OP_CODPRO').Value:=pCodPro;
   Ado_Cadop.Parameters.ParamByName('OP_ORDEM').Value:=X;
   Ado_Cadop.Parameters.ParamByName('OP_DADOS').LoadFromFile(pNomeOri+'PARTE'+IntToStr(x)+'.DAT',ftBlob);
   try
      Ado_Cadop.ExecSQL;
      fdm1StartCommit;
   except
      verteclado(0);
      MessageDlg('Erro ao Gravar no Banco de Dados!',mtWarning,[mbOk],0);
      FreeAndNil(Ado_Cadop);
      result:=false;
      exit;
      end;
   end;
FreeAndNil(Ado_Cadop);

result:=true;

end;

procedure TFrm_IndEnv_MFor.bbop_esp_viseditClick(Sender: TObject);

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
Ado_Cadop.SQL.Add('Select * from CADOP_CFG where OP_CODEMP=:CODEMP and OP_CODPRO=:CODPRO'
                 +' order by OP_ORDEM ' );
Ado_Cadop.Parameters.ParamByName('CODEMP').Value:=codemp;
Ado_Cadop.Parameters.ParamByName('CODPRO').Value:=fsonumero(CODPRO.Text);
Ado_Cadop.Open;
if Ado_Cadop.IsEmpty then
   begin
   MessageDlg('Não foi encontrado a ordem de produção do Produto'+CB_NOMPRO.Text,mtWarning,[mbOk],0);
   FreeAndNil(Ado_Cadop);
   exit;
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
WordDoc.ConnectTo(WordApp.Documents.Add(DocOrigem,EmptyParam,EmptyParam,EmptyParam));


FreeAndNil(Ado_Cadop);

end;

procedure TFrm_IndEnv_MFor.bbop_esp_excluirClick(Sender: TObject);
var
Ado_Cadop: TADOQuery;

begin
Ado_Cadop:=TADOQuery.Create(NIL);
Ado_Cadop.Connection:=DM1_ADO.ADOConnection1;
Ado_Cadop.Close;
Ado_Cadop.SQL.Clear;
Ado_Cadop.SQL.Add('Select * from CADOP_CFG where OP_CODEMP=:CODEMP and OP_CODPRO=:CODPRO'
                 +' order by OP_ORDEM ' );
Ado_Cadop.Parameters.ParamByName('CODEMP').Value:=codemp;
Ado_Cadop.Parameters.ParamByName('CODPRO').Value:=fsonumero(CODPRO.Text);
Ado_Cadop.Open;
if Ado_Cadop.IsEmpty then
   begin
   MessageDlg('Não foi encontrado a ordem de produção do Produto'+CB_NOMPRO.Text,mtWarning,[mbOk],0);
   FreeAndNil(Ado_Cadop);
   exit;
   end;
if Application.MessageBox(pchar('Quer Realmente Excluir a Ordem de Produção do Produto '+CB_NOMPRO.text),'',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;

Ado_Cadop.Connection:=DM1_ADO.ADOConnection1;
Ado_Cadop.Close;
Ado_Cadop.SQL.Clear;
Ado_Cadop.SQL.Add('Delete from CADOP_CFG where OP_CODEMP=:CODEMP and OP_CODPRO=:CODPRO'
                 +' ' );
Ado_Cadop.Parameters.ParamByName('CODEMP').Value:=codemp;
Ado_Cadop.Parameters.ParamByName('CODPRO').Value:=fsonumero(CODPRO.Text);
try
   Ado_Cadop.ExecSQL;
   fdm1StartCommit;
except
   FreeAndNil(Ado_Cadop);
   exit;
   end;
verteclado(0);
MessageDlg('Ordem de Produção Excluida!',mtWarning,[mbOk],0);
end;

procedure TFrm_IndEnv_MFor.CB_NOMPROClick(Sender: TObject);
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

procedure TFrm_IndEnv_MFor.bbatutabopClick(Sender: TObject);
begin
Tb_TabOP01.Close;
Tb_TabOP01.SQL.clear;
Tb_TabOP01.SQL.add('Select * FROM CADOP_TAB01 where '
                  +' OPT01_CODEMP=:CODEMP '
                  +' and OPT01_NOMREL like :NOMREL ');
Tb_TabOP01.ParamByName('CODEMP').AsInteger:=codemp;
Tb_TabOP01.ParamByName('NOMREL').AsString :=edt_nomrel.Text+'%';
try
   Tb_TabOP01.Open;
except
   Tb_TabOP01.sql.savetofile('C:\SQL.TXT');
   end;





end;

procedure TFrm_IndEnv_MFor.Src_TabOP01DataChange(Sender: TObject;
  Field: TField);
begin
if not (Tb_TabOP01.State in [dsEdit,dsInsert]) then
   begin
   fLerTabop02_Res(Tb_TabOP01OPT01_NOMREL.AsString);
   end;
end;
function TFrm_IndEnv_MFor.fLerTabop02_Res(pNomeRel: String): Boolean;
begin
Tb_TabOP02_res.Close;
Tb_TabOP02_res.SQL.clear;
Tb_TabOP02_res.SQL.add('Select max(OPT02_MESCLAR_INI) as OPT02_MESCLAR_INI '
                      +'       ,max(OPT02_MESCLAR_FIN) as OPT02_MESCLAR_FIN '
                      +'       ,max(OPT02_POSICAO) as OPT02_POSICAO '
                      +' FROM CADOP_TAB02 where '
                  +' OPT02_CODEMP=:CODEMP '
                  +' and OPT02_NOMREL = :NOMREL '
                  +' group by OPT02_POSICAO order by OPT02_POSICAO' );
Tb_TabOP02_res.ParamByName('CODEMP').AsInteger:=codemp;
Tb_TabOP02_res.ParamByName('NOMREL').AsString :=pNomeRel;
Tb_TabOP02_res.Open;

end;


function TFrm_IndEnv_MFor.fLerTabop02(pNomeRel,pPosicao: String): Boolean;
begin
Tb_TabOP02.Close;
Tb_TabOP02.SQL.clear;
Tb_TabOP02.SQL.add('Select * FROM CADOP_TAB02 where '
                  +' OPT02_CODEMP=:CODEMP '
                  +' and OPT02_NOMREL = :NOMREL '
                  +' and OPT02_POSICAO = :POSICAO '
                  +' order by OPT02_COLUNA ');
Tb_TabOP02.ParamByName('CODEMP').AsInteger:=codemp;
Tb_TabOP02.ParamByName('NOMREL').AsString :=pNomeRel;
Tb_TabOP02.ParamByName('POSICAO').AsString :=pPosicao;
Tb_TabOP02.Open;
edt_mesclar_ini.Text:=Tb_TabOP02OPT02_MESCLAR_INI.AsString;
edt_mesclar_fin.Text:=Tb_TabOP02OPT02_MESCLAR_FIN.AsString;

end;

procedure TFrm_IndEnv_MFor.src_TabOP02_resDataChange(Sender: TObject;
  Field: TField);
begin
//if not (Tb_TabOP01.State in [dsEdit,dsInsert]) then
//   begin
   fLerTabop02(Tb_TabOP01OPT01_NOMREL.AsString,Tb_TabOP02_resOPT02_POSICAO.AsString);
//   end;

end;

procedure TFrm_IndEnv_MFor.INCLUIRClick(Sender: TObject);
begin
if not Tb_TabOP01.Active then
  bbatutabopClick(self);
mNomRel_Tab01_Ant:='';

Tb_TabOP01.Append;
Tb_TabOP01OPT01_QTDCOL.Value:=1;
Tb_TabOP01OPT01_QTDLINCAB.Value:=1;
Tb_TabOP01OPT01_TABELA.Value:=0;
Tb_TabOP01OPT01_FORMAGRADE.Value:=0;
Tb_TabOP01OPT01_CODEMP.Value:=codemp;

Panel_digtab.Enabled:=true;
DBNavigator_tabop01.Enabled:=false;
PageControl2.ActivePage:=TabSheet1;
DBEdit_nomrel.SetFocus;
INCLUIR.Enabled:=false;
ALTERAR.Enabled:=false;
EXCLUIR.Enabled:=false;
GRAVAR.Enabled:=true;


end;

procedure TFrm_IndEnv_MFor.Tb_TabOP02CalcFields(DataSet: TDataSet);
begin
if Tb_TabOP02OPT02_TIPOCAMPO.AsInteger=0 then
   Tb_TabOP02lbl_campoouvalor.Value:='Texto: '
else
   Tb_TabOP02lbl_campoouvalor.Value:='Campo: ';


end;

procedure TFrm_IndEnv_MFor.Tb_TabOP01BeforePost(DataSet: TDataSet);
var
Query_tst: TQuery;
begin


if (Tb_TabOP01OPT01_NOMREL.AsString)='' then
   begin
   MessageDlg('Nome do Relatório Campo Obrigatório!',mtWarning,[mBOk],0);
   DBEdit_nomrel.SetFocus;
   abort;
   exit;
   end;
Query_tst:=TQuery.Create(nil);
Query_tst.DatabaseName:='SG_ASSOC';

if (trim(mNomRel_Tab01_Ant)<>'') and (mNomRel_Tab01_Ant<>Tb_TabOP01OPT01_NOMREL.AsString) then
   begin
   Query_tst.Close;
   Query_tst.sql.clear;
   Query_tst.sql.Add('Select count(*) from CADOP_TAB01 where OPT01_CODEMP=0'+IntToStr(codemp)
                    +' and OPT01_NOMREL=:NOMREL ');
   Query_tst.ParamByName('NOMREL').AsString:=Tb_TabOP01OPT01_NOMREL.Text;
   try
      Query_tst.Open;
   except
      end;
   if Query_tst.Fields[0].AsInteger>0 then
      begin
      MessageDlg('Ja Existe um Relatorio com o Nome de '+Tb_TabOP01OPT01_NOMREL.AsString+' Favor Trocar o nome ou cancelar!',mtWarning,[mBOk],0);
      DBEdit_nomrel.SetFocus;
      FreeAndNil(Query_tst);
      abort;
      exit;
      end;
   end;   
FreeAndNil(Query_tst);

if Tb_TabOP01OPT01_CODEMP.AsInteger=0 then
   Tb_TabOP01OPT01_CODEMP.Value:=codemp;

if Tb_TabOP01OPT01_QTDCOL.AsInteger=0 then
   Tb_TabOP01OPT01_QTDCOL.Value:=1;
if Tb_TabOP01OPT01_QTDLINCAB.AsInteger=0 then
   Tb_TabOP01OPT01_QTDLINCAB.Value:=0;

if Tb_TabOP01OPT01_FORMAGRADE.AsInteger=0 then
   Tb_TabOP01OPT01_FORMAGRADE.Value:=1;


end;


procedure TFrm_IndEnv_MFor.Tb_TabOP02BeforeEdit(DataSet: TDataSet);
begin
if Panel_digtab.Enabled=false then
   abort;
end;

procedure TFrm_IndEnv_MFor.Tb_TabOP02BeforeInsert(DataSet: TDataSet);
begin
if Panel_digtab.Enabled=false then
   abort;

end;

procedure TFrm_IndEnv_MFor.Panel_digtabExit(Sender: TObject);
begin
if Tb_TabOP01.State in [dsEdit,dsInsert] then
   begin
   Tb_TabOP01.Post;
   Tb_TabOP01.Edit;
   end;
end;

procedure TFrm_IndEnv_MFor.GRAVARClick(Sender: TObject);
begin
Tb_TabOP01.Post;
Panel_digtab.Enabled:=false;
DBNavigator_tabop01.Enabled:=true;
INCLUIR.Enabled:=true;
ALTERAR.Enabled:=true;
EXCLUIR.Enabled:=true;
GRAVAR.Enabled:=false;

end;

procedure TFrm_IndEnv_MFor.ALTERARClick(Sender: TObject);
begin
if not Tb_TabOP01.Active then
   exit;
mNomRel_Tab01_Ant:=Tb_TabOP01OPT01_NOMREL.AsString;
Tb_TabOP01.Edit;
Panel_digtab.Enabled:=true;
DBNavigator_tabop01.Enabled:=false;
PageControl2.ActivePage:=TabSheet1;
DBEdit_nomrel.SetFocus;
INCLUIR.Enabled:=false;
ALTERAR.Enabled:=false;
EXCLUIR.Enabled:=false;
GRAVAR.Enabled:=true;

end;

procedure TFrm_IndEnv_MFor.EXCLUIRClick(Sender: TObject);
var
query_exe: tQuery;
begin
if not Tb_TabOP01.Active then
   exit;
if Application.MessageBox(pchar('Quer Realmente Excluir o Relatorio '+Tb_TabOP01OPT01_NOMREL.asstring+'?'),'',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;

INCLUIR.Enabled:=true;
if Tb_TabOP01.IsEmpty then
   begin
   ALTERAR.Enabled:=false;
   EXCLUIR.Enabled:=false;
   end
else
   begin
   ALTERAR.Enabled:=true;
   EXCLUIR.Enabled:=true;
   end;
GRAVAR.Enabled:=false;
query_exe:=TQuery.Create(nil);
query_exe.DatabaseName:='SG_ASSOC';
query_exe.SQL.Clear;
query_exe.SQL.add('Delete FROM CADOP_TAB02 where '
                  +' OPT02_CODEMP=:CODEMP '
                  +' and OPT02_NOMREL = :NOMREL ');
query_exe.ParamByName('CODEMP').AsInteger:=codemp;
query_exe.ParamByName('NOMREL').AsString :=Tb_TabOP01OPT01_NOMREL.AsString;
try
   query_exe.ExecSQL;
   fdm1StartCommit;
except
   end;
query_exe.Close;
query_exe.SQL.Clear;
query_exe.SQL.add('Delete FROM CADOP_TAB01 where '
                  +' OPT01_CODEMP=:CODEMP '
                  +' and OPT01_NOMREL = :NOMREL ');
query_exe.ParamByName('CODEMP').AsInteger:=codemp;
query_exe.ParamByName('NOMREL').AsString :=Tb_TabOP01OPT01_NOMREL.AsString;
try
   query_exe.ExecSQL;
   fdm1StartCommit;
except
   end;

FreeAndNil(query_exe);
bbatutabopClick(self);

end;

procedure TFrm_IndEnv_MFor.CANCELARClick(Sender: TObject);
begin
INCLUIR.Enabled:=true;
if Tb_TabOP01.IsEmpty then
   begin
   ALTERAR.Enabled:=false;
   EXCLUIR.Enabled:=false
   end
else
   begin
   ALTERAR.Enabled:=true;
   EXCLUIR.Enabled:=true;
   end;
Panel_digtab.Enabled:=false;
DBNavigator_tabop01.Enabled:=true;
GRAVAR.Enabled:=false;

end;

procedure TFrm_IndEnv_MFor.Tb_TabOP01AfterPost(DataSet: TDataSet);
var
query_cons: TQuery;
query_exe: TQuery;
mPos: String;
mQtdLin: Integer;
mQtdRod,mQtdDet_MP,mQtdDet_EMB,mQtdCab: Integer;
mQtdCol: Integer;
xCol: Integer;
xlin: Integer;
x_Pos: Integer;
mExige: Boolean;
mFiltros: String;
mVirg: String;
begin

c(Tb_TabOP01);


query_cons:=TQuery.Create(nil);
query_cons.DatabaseName:='SG_ASSOC';

query_exe:=TQuery.Create(nil);
query_exe.DatabaseName:='SG_ASSOC';

mQtdCab:=Tb_TabOP01OPT01_QTDLINCAB.AsInteger;  // quantidade de cabecalho + 1 de detalhe
mQtdRod:=Tb_TabOP01OPT01_QTDLINROD.AsInteger;  // quantidade de cabecalho + 1 de detalhe
if (Tb_TabOP01OPT01_TABELA.AsInteger=0) or (Tb_TabOP01OPT01_TABELA.AsInteger=2) then
   mQtdDet_MP:=1  // quantidade de cabecalho + 1 de detalhe
else
   mQtdDet_MP:=0;
if (Tb_TabOP01OPT01_TABELA.AsInteger=1) or (Tb_TabOP01OPT01_TABELA.AsInteger=2) then 
   mQtdDet_EMB:=1  // quantidade de cabecalho + 1 de detalhe
else
   mQtdDet_EMB:=0;  // quantidade de cabecalho + 1 de detalhe


mQtdCol:=Tb_TabOP01OPT01_QTDCOL.AsInteger;


{
query_cons.close;
query_cons.SQL.Clear;
query_cons.SQL.Add('Select OPT02_COLUNA from CADOP_TAB02 '
                  +' where OPT02_CODEMP=:CODEMP '
                  +' and OPT02_NOMREL=:NOMREL '
                  +' and OPT02_COLUNA>:COLUNA ');
query_cons.ParamByName('CODEMP').AsInteger:=Tb_TabOP01OPT01_CODEMP.AsInteger;
query_cons.ParamByName('NOMREL').AsString :=Tb_TabOP01OPT01_NOMREL.AsString;
query_cons.ParamByName('COLUNA').AsInteger:=Tb_TabOP01OPT01_QTDCOL.AsInteger;
try
   query_cons.ExecSQL;
   fdm1StartCommit;
except
   end;
}
query_cons.close;
query_cons.SQL.Clear;
query_cons.SQL.Add('Delete from CADOP_TAB02 '
                  +' where OPT02_CODEMP=:CODEMP '
                  +' and OPT02_NOMREL=:NOMREL '
                  +' and OPT02_COLUNA>:COLUNA ');
query_cons.ParamByName('CODEMP').AsInteger:=Tb_TabOP01OPT01_CODEMP.AsInteger;
query_cons.ParamByName('NOMREL').ASstring :=Tb_TabOP01OPT01_NOMREL.AsString;
query_cons.ParamByName('COLUNA').AsInteger:=Tb_TabOP01OPT01_QTDCOL.AsInteger;
try
   query_cons.ExecSQL;
   fdm1StartCommit;
except
   end;
query_cons.close;
query_cons.SQL.Clear;
query_cons.SQL.Add('Select OPT02_POSICAO from CADOP_TAB02 '
                  +' where OPT02_CODEMP=:CODEMP '
                  +' and OPT02_NOMREL=:NOMREL '
                  +' group by OPT02_POSICAO'
                  +' order by OPT02_POSICAO ');
query_cons.ParamByName('CODEMP').AsInteger:=Tb_TabOP01OPT01_CODEMP.AsInteger;
query_cons.ParamByName('NOMREL').ASstring :=Tb_TabOP01OPT01_NOMREL.AsString;
try
   query_cons.Open;
except
   end;
mVirg:='';
mfiltros:='';
for x_pos:=1 to mQtdCab do
   begin
   mFiltros:=mFiltros+mVirg+QuotedStr('CAB'+FormatFloat('00',x_pos));
   mvirg:=',';
   end;

for x_pos:=1 to mQtdDet_MP do
   begin
   mFiltros:=mFiltros+mVirg+QuotedStr('DET_MP'+FormatFloat('00',x_pos));
   mvirg:=',';
   end;

for x_pos:=1 to mQtdDet_EMB do
   begin
   mFiltros:=mFiltros+mVirg+QuotedStr('DET_EMB'+FormatFloat('00',x_pos));
   mvirg:=',';
   end;

for x_pos:=1 to mQtdRod do
   begin
   mFiltros:=mFiltros+mVirg+QuotedStr('ROD'+FormatFloat('00',x_pos));
   mvirg:=',';
   end;

if trim(mfiltros)<>'' then
   begin
   query_exe.close;
   query_exe.SQL.Clear;
   query_exe.SQL.Add('Delete from CADOP_TAB02 '
                     +' where OPT02_CODEMP=:CODEMP '
                     +' and OPT02_NOMREL=:NOMREL '
                     +' and not OPT02_POSICAO in('+mFiltros+')' );
   query_exe.ParamByName('CODEMP').AsInteger:=Tb_TabOP01OPT01_CODEMP.AsInteger;
   query_exe.ParamByName('NOMREL').ASstring :=Tb_TabOP01OPT01_NOMREL.AsString;
   try
      query_exe.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end;

for x_pos:=1 to 4 do
   begin
   if x_pos=1 then
      begin
      mPos:='CAB';
      mQtdLin:=mQtdCab;
      end
   else if x_pos=2 then
      begin
      mpos:='DET_MP';
      mQtdLin:=mQtdDet_MP;
      end
   else if x_pos=3 then
      begin
      mpos:='DET_EMB';
      mQtdLin:=mQtdDet_EMB;
      end
   else
      begin
      mpos:='ROD';
      mQtdLin:=mQtdRod;
      end;
   for xlin:=1 to mQtdLin do
      begin
      for xCol:=1 to mQtdCol do
         begin
         query_cons.close;
         query_cons.SQL.Clear;
         query_cons.SQL.Add('Select count(*) from CADOP_TAB02 '
                           +' where OPT02_CODEMP=:CODEMP '
                           +' and OPT02_NOMREL=:NOMREL '
                           +' and OPT02_COLUNA=:COLUNA '
                           +' and OPT02_POSICAO=:POSICAO '
                           );
         query_cons.ParamByName('CODEMP').AsInteger:=Tb_TabOP01OPT01_CODEMP.AsInteger;
         query_cons.ParamByName('NOMREL').AsString :=Tb_TabOP01OPT01_NOMREL.AsString;
         query_cons.ParamByName('COLUNA').AsInteger:=xCol;
         query_cons.ParamByName('POSICAO').AsString:=mpos+FormatFloat('00',xLin);
         try
            query_cons.Open;
         except
            end;
         if query_cons.Fields[0].AsInteger<1 then
            begin
            query_exe.Close;
            query_exe.SQL.Clear;
            query_exe.SQL.Add('insert into CADOP_TAB02 ('
                             +'OPT02_CODEMP '
                             +',OPT02_NOMREL '
                             +',OPT02_POSICAO '
                             +',OPT02_COLUNA '
                             +',OPT02_TIPOCAMPO '
                             +',OPT02_CAMPOOUTEXTO '
                             +',OPT02_TAMANHO '
                             +',OPT02_ALINHAMENTO '
                             +',OPT02_FORMATO '
                             +',OPT02_FUNDO '
                             +') values ('
                             +':OPT02_CODEMP '
                             +',:OPT02_NOMREL '
                             +',:OPT02_POSICAO '
                             +',:OPT02_COLUNA '
                             +',:OPT02_TIPOCAMPO '
                             +',:OPT02_CAMPOOUTEXTO '
                             +',:OPT02_TAMANHO '
                             +',:OPT02_ALINHAMENTO '
                             +',:OPT02_FORMATO '
                             +',:OPT02_FUNDO '
                             +')');
            query_exe.ParamByName('OPT02_CODEMP').AsInteger      :=Tb_TabOP01OPT01_CODEMP.AsInteger;
            query_exe.ParamByName('OPT02_NOMREL').AsString       :=Tb_TabOP01OPT01_NOMREL.AsString;
            query_exe.ParamByName('OPT02_POSICAO').AsString      :=mpos+FormatFloat('00',xLin);
            query_exe.ParamByName('OPT02_COLUNA').AsInteger      :=xcol;
            query_exe.ParamByName('OPT02_TIPOCAMPO').AsInteger   :=0;
            query_exe.ParamByName('OPT02_CAMPOOUTEXTO').AsString :='Coloque campo ou valor aqui';
            query_exe.ParamByName('OPT02_TAMANHO').AsInteger     :=20;
            query_exe.ParamByName('OPT02_ALINHAMENTO').AsInteger :=1; // centro
            query_exe.ParamByName('OPT02_FORMATO').AsString      :='';
            query_exe.ParamByName('OPT02_FUNDO').AsInteger       :=0; // NAO
            try
               query_exe.ExecSQL;
               fdm1StartCommit;
            Except
               end;
            end;
         end;
      end;
   end;

fLerTabop02_Res(Tb_TabOP01OPT01_NOMREL.AsString);

end;

procedure TFrm_IndEnv_MFor.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_IndEnv_MFor.DBCtrlGrid1Exit(Sender: TObject);
begin
if Tb_TabOP02.State in [dsEdit,dsInsert] then
   Tb_TabOP02.Post;

end;

procedure TFrm_IndEnv_MFor.RxDBCB_TIPOCAMPOExit(Sender: TObject);

var
Query_temp: TQuery;
x: Integer;

begin

DBCB_CAMPOOUTEXTO.Items.Clear;

if Tb_TabOP02OPT02_TIPOCAMPO.AsInteger=1 then
   begin
   if (copy(Tb_TabOP02OPT02_POSICAO.AsString,1,3)='ROD') or
      (copy(Tb_TabOP02OPT02_POSICAO.AsString,1,3)='CAB') then
      begin
      for x:=0 to mMaxIens_mp do
         begin
         DBCB_CAMPOOUTEXTO.Items.Add(tab_totais[x,00]);
         end
      end
   else  if Tb_TabOP01OPT01_TABELA.AsInteger=0 then
      begin
      for x:=0 to mMaxIens_mp do
         begin
         DBCB_CAMPOOUTEXTO.Items.Add(tab_mp[x,00]);
         end
      end
   else if Tb_TabOP01OPT01_TABELA.AsInteger=1 then
      begin
      for x:=0 to mMaxIens_MatEmb do
         begin
         DBCB_CAMPOOUTEXTO.Items.Add(tab_MatEmb[x,00]);
         end;
      end
   else if Tb_TabOP01OPT01_TABELA.AsInteger=3 then
      begin
      for x:=0 to mMaxItens_Totais do
         begin
         DBCB_CAMPOOUTEXTO.Items.Add(tab_totais[x,00]);
         end;
      end;
{

   if copy(Tb_TabOP02OPT02_POSICAO.AsString,1,3)='DET_MP' then
      begin
      for x:=0 to mMaxIens_mp do
         begin
         DBCB_CAMPOOUTEXTO.Items.Add(tab_mp[x,00]);
         end;
      end
   else if copy(Tb_TabOP02OPT02_POSICAO.AsString,1,3)='DET_EMB' then
      begin
      for x:=0 to mMaxIens_MatEmb do
         begin
         DBCB_CAMPOOUTEXTO.Items.Add(tab_MatEmb[x,00]);
         end;
      end
   else
      begin
      for x:=0 to mMaxItens_Totais do
         begin
         DBCB_CAMPOOUTEXTO.Items.Add(tab_totais[x,00]);
         end;
      end;
}
   end;

end;

procedure TFrm_IndEnv_MFor.Src_TabOP02DataChange(Sender: TObject;
  Field: TField);
begin
RxDBCB_TIPOCAMPOExit(self);
end;

procedure TFrm_IndEnv_MFor.Tb_TabOP02BeforePost(DataSet: TDataSet);
var
mRetorno: String;
begin
if Tb_TabOP02OPT02_COLUNA.IsNull then
   begin
   Tb_TabOP02.Cancel;
   abort;
   end;
if Tb_TabOP02OPT02_TIPOCAMPO.AsInteger=1 then
   begin
   mRetorno:=FRetornaTipoCampo(Tb_TabOP02OPT02_CAMPOOUTEXTO.AsString);
   if trim(mRetorno)<>'' then
      Tb_TabOP02OPT02_DATATYPE.AsInteger:=valint(fBuscarValor(1,mRetorno))
   else
      Tb_TabOP02OPT02_TIPOCAMPO.AsInteger:=0;   



   end;
end;

function tFrm_IndEnv_MFor.FRetornaTipoCampo(pNomCampo: String): string; // 1)-POSICAO 2)-TIPO EM VALOR SENDO 0-String 1-Integer 2-Float 3-Data
                                                                       // 3)-FORMATO 4)-TAMANHO
var
mPos: Integer;
x: Integer;
mResult:string;
begin
if trim(pNomCampo)='' then
   begin
   result:='';
   exit;
   end;
mResult:='';
for x:=0 to mMaxIens_mp do
   begin
   if pNomCampo=tab_mp[x,00] then
      begin
      mResult:=intToStr(x)+'|';
      if uppercase(tab_mp[x,02])='INTEIRO' then
         mResult:=mResult+'1|'
      else if uppercase(tab_mp[x,02])='REAL' then
         mResult:=mResult+'2|'
      else if uppercase(tab_mp[x,02])='DATA' then
         mResult:=mResult+'3|'
      else
         mResult:=mResult+'0|';
      mResult:=mResult+tab_mp[x,04]+'|' ; // FORMATO
      mResult:=mResult+tab_mp[x,03]+'|' ; // TAMANHO
      mResult:=mResult+tab_mp[x,01]+'|' ; // COMENTARIO
      break;
      end;
   end;
if trim(mresult)='' then
   begin
   for x:=0 to mMaxIens_mp do
      begin
      if pNomCampo=tab_matemb[x,00] then
         begin
         mResult:=intToStr(x)+'|';
         if uppercase(tab_matemb[x,02])='INTEIRO' then
            mResult:=mResult+'1|'
         else if uppercase(tab_matemb[x,02])='REAL' then
            mResult:=mResult+'2|'
         else if uppercase(tab_matemb[x,02])='DATA' then
            mResult:=mResult+'3|'
         else
            mResult:=mResult+'0|';
         mResult:=mResult+tab_matemb[x,04]+'|' ; // FORMATO
         mResult:=mResult+tab_matemb[x,03]+'|' ; // TAMANHO
         mResult:=mResult+tab_matemb[x,01]+'|' ; // COMENTARIO
         break;
         end;
      end;
   end;

if trim(mresult)='' then
   begin
   for x:=0 to mMaxIens_mp do
      begin
      if pNomCampo=tab_totais[x,00] then
         begin
         mResult:=intToStr(x)+'|';
         if uppercase(tab_totais[x,02])='INTEIRO' then
            mResult:=mResult+'1|'
         else if uppercase(tab_totais[x,02])='REAL' then
            mResult:=mResult+'2|'
         else if uppercase(tab_totais[x,02])='DATA' then
            mResult:=mResult+'3|'
         else
            mResult:=mResult+'0|';
         mResult:=mResult+tab_totais[x,04]+'|' ; // FORMATO
         mResult:=mResult+tab_totais[x,03]+'|' ; // TAMANHO
         mResult:=mResult+tab_totais[x,01]+'|' ; // COMENTARIO
         break;
         end;
      end;
   end;
result:=mResult;
end;
procedure TFrm_IndEnv_MFor.Tb_TabOP01AfterInsert(DataSet: TDataSet);
begin
mNomRel_Tab01_Ant:='';
end;

procedure TFrm_IndEnv_MFor.Tb_TabOP01BeforeEdit(DataSet: TDataSet);
begin
mNomRel_Tab01_Ant:=Tb_TabOP01OPT01_NOMREL.AsString;
end;

procedure TFrm_IndEnv_MFor.edt_mesclar_iniExit(Sender: TObject);
begin
edt_mesclar_ini.Text:=fdeixanum(edt_mesclar_ini.Text);
if valint(edt_mesclar_fin.Text)<valint(edt_mesclar_ini.Text) then
   edt_mesclar_fin.Text:=fdeixanum(edt_mesclar_ini.Text);
   
fGravarInfoMesclar(valint(edt_mesclar_ini.Text),valint(edt_mesclar_fin.Text));

end;

procedure TFrm_IndEnv_MFor.edt_mesclar_finExit(Sender: TObject);
begin
edt_mesclar_fin.Text:=fdeixanum(edt_mesclar_fin.Text);
if valint(edt_mesclar_fin.Text)<valint(edt_mesclar_ini.Text) then
   edt_mesclar_ini.Text:=fdeixanum(edt_mesclar_fin.Text);
fGravarInfoMesclar(valint(edt_mesclar_ini.Text),valint(edt_mesclar_fin.Text));

end;


function tFrm_IndEnv_MFor.fGravarInfoMesclar(pMesclar_Ini,pMesclar_Fin: Integer): Boolean;
var
Query_Temp: TQuery;
begin

if length(Tb_TabOP01OPT01_NOMREL.AsString)>1 then
   begin
   if (pMesclar_Ini>0) or (pMesclar_Fin>0) then
      begin
      if pMesclar_Ini>Tb_TabOP01OPT01_QTDCOL.AsInteger then
         pMesclar_Ini:=Tb_TabOP01OPT01_QTDCOL.AsInteger;
      if pMesclar_Fin>Tb_TabOP01OPT01_QTDCOL.AsInteger then
         pMesclar_Fin:=Tb_TabOP01OPT01_QTDCOL.AsInteger;
      if pMesclar_Ini>pMesclar_Fin then
         pMesclar_Ini:=pMesclar_Fin;
      if pMesclar_Ini=0 then
         pMesclar_Ini:=pMesclar_Fin;
      if pMesclar_Fin=0 then
         pMesclar_Fin:=pMesclar_Ini;
      end;
   Query_Temp:=TQuery.Create(nil);
   Query_Temp.DatabaseName:='SG_ASSOC';
   Query_Temp.SQL.Clear;
   Query_Temp.SQL.Add('Update CADOP_TAB02 set OPT02_MESCLAR_INI=:MESCLAR_INI, OPT02_MESCLAR_FIN=:MESCLAR_FIN '
                     +'  where '
                     +' OPT02_CODEMP=:CODEMP '
                     +' and OPT02_NOMREL = :NOMREL '
                     +' and OPT02_POSICAO = :POSICAO ');
   Query_Temp.ParamByName('MESCLAR_INI').AsInteger:=pMesclar_Ini;
   Query_Temp.ParamByName('MESCLAR_FIN').AsInteger:=pMesclar_Fin;
   Query_Temp.ParamByName('CODEMP').AsInteger     :=codemp;
   Query_Temp.ParamByName('NOMREL').AsString      :=Tb_TabOP01OPT01_NOMREL.AsString;
   Query_Temp.ParamByName('POSICAO').AsString     :=Tb_TabOP02OPT02_POSICAO.AsString;
   try
      Query_Temp.execsql;
      fdm1startcommit;
   except on e : exception do
      ex_erroSql_Novo(query_Temp,111,'func Erro:'+e.Message ,'CADEST');
      end;
   FreeandNil(Query_Temp);
   end;
result:=true;
end;

procedure TFrm_IndEnv_MFor.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
Begin
//if ((Tb_CompCPTIPO.IsNull) or (Tb_CompCPTIPO.AsInteger=0) or (Tb_CompCPTIPO.AsInteger=1)) then
//  rlNomGru.Caption:='Relação Matéria-Prima'
//else
//  rlNomGru.Caption:='Outros';
end;

procedure TFrm_IndEnv_MFor.bbImprimirClick(Sender: TObject);
var
mtot_valor_evento: real;
mtot_total_evento: real;
mtot_Acumulado: real;

begin

RLSubDetail_mp.Borders.DrawBottom    :=true;

rlNomGru.Borders.DrawBottom          :=true;
rlNomGru.Borders.Drawtop            :=true;
rlcab_PDNOME.Borders.DrawLeft        :=true;
rlcab_PDUND.Borders.DrawLeft         :=true;
rlcab_CPPERCENT_REST.Borders.DrawLeft:=true;
rlcab_CPQUANT.Borders.DrawLeft       :=true;
rlcab_CPPU.Borders.DrawLeft          :=true;
rlcab_total.Borders.DrawLeft         :=true;


rldet_PDNOME.Borders.DrawLeft        :=true;
rldet_PDUND.Borders.DrawLeft         :=true;
rldet_CPPERCENT_REST.Borders.DrawLeft:=true;
rldet_CPQUANT.Borders.DrawLeft       :=true;
rldet_CPPU.Borders.DrawLeft          :=true;
rldet_total.Borders.DrawLeft         :=true;

rlrod_PDNOME.Borders.DrawLeft        :=true;
rlrod_PDUND.Borders.DrawLeft         :=true;
rlrod_CPPERCENT_REST.Borders.DrawLeft:=true;
rlrod_CPQUANT.Borders.DrawLeft       :=true;
rlrod_CPPU.Borders.DrawLeft          :=true;
rlrod_total.Borders.DrawLeft         :=true;

// emb

RLSubDetail_emb.Borders.DrawBottom    :=true;
rlcab_nomemb.Borders.DrawBottom       :=true;
rlcab_nomemb.Borders.Drawtop          :=true;

rlcabemb_PDNOME.Borders.DrawLeft        :=true;
rlcabemb_PDUND.Borders.DrawLeft         :=true;

rlcabemb_CPQUANT.Borders.DrawLeft       :=true;
rlcabemb_CPPU.Borders.DrawLeft          :=true;
rlcabemb_total.Borders.DrawLeft         :=true;


rldetemb_PDNOME.Borders.DrawLeft        :=true;
rldetemb_PDUND.Borders.DrawLeft         :=true;
rldetemb_CPQUANT.Borders.DrawLeft       :=true;
rldetemb_CPPU.Borders.DrawLeft          :=true;
rldetemb_total.Borders.DrawLeft         :=true;

rlrodemb_PDNOME.Borders.DrawLeft        :=true;
rlrodemb_PDUND.Borders.DrawLeft         :=true;
rlrodemb_CPQUANT.Borders.DrawLeft       :=true;
rlrodemb_CPPU.Borders.DrawLeft          :=true;
rlrodemb_total.Borders.DrawLeft         :=true;


// emb





RLSubDetail_fec.Borders.DrawBottom    :=true;

rlcab_nomfec.Borders.DrawBottom       :=true;
rlcab_nomfec.Borders.Drawtop          :=true;

rlcabfec_PDNOME.Borders.DrawLeft        :=true;
rlcabfec_PDUND.Borders.DrawLeft         :=true;

rlcabfec_CPQUANT.Borders.DrawLeft       :=true;
rlcabfec_CPPU.Borders.DrawLeft          :=true;
rlcabfec_total.Borders.DrawLeft         :=true;


rldetfec_PDNOME.Borders.DrawLeft        :=true;
rldetfec_PDUND.Borders.DrawLeft         :=true;
rldetfec_CPQUANT.Borders.DrawLeft       :=true;
rldetfec_CPPU.Borders.DrawLeft          :=true;
rldetfec_total.Borders.DrawLeft         :=true;

rlrodfec_PDNOME.Borders.DrawLeft        :=true;
rlrodfec_PDUND.Borders.DrawLeft         :=true;
rlrodfec_CPQUANT.Borders.DrawLeft       :=true;
rlrodfec_CPPU.Borders.DrawLeft          :=true;
rlrodfec_total.Borders.DrawLeft         :=true;

// apur





RLSubDetail_fec.Borders.DrawBottom    :=true;

rlcab_nomapur.Borders.DrawBottom       :=true;
rlcab_nomapur.Borders.Drawtop          :=true;

rlcabapur_NOME.Borders.DrawLeft        :=true;
rlcabapur_valor.Borders.DrawLeft         :=true;
rlcabapur_perc.Borders.DrawLeft         :=true;
rlcabapur_valor_acumulado.Borders.DrawLeft          :=true;


rldetapur_NOME.Borders.DrawLeft        :=true;
rldetapur_valor.Borders.DrawLeft         :=true;
rldetapur_perc.Borders.DrawLeft         :=true;
rldetapur_valor_acumulado.Borders.DrawLeft          :=true;



rlrodapur_NOME.Borders.DrawLeft        :=true;
rlrodapur_valor.Borders.DrawLeft         :=true;
rlrodapur_perc.Borders.DrawLeft         :=true;
rlrodapur_valor_acumulado.Borders.DrawLeft          :=true;
RLSubDetail_apur_preco.Borders.Drawbottom      :=true;

fLerNovamente;


Tb_Comp_MP.First;
mTotalGeralMP:=0;

While not Tb_Comp_MP.Eof do
   begin
   mTotalGeralMP:=mTotalGeralMP+Tb_Comp_MPtotal.AsFloat;
   Tb_Comp_MP.Next;
   end;

Tb_Comp_Emb.First;

While not Tb_Comp_Emb.Eof do
   begin
   mTotalGeralMP:=mTotalGeralMP+Tb_Comp_Embtotal.AsFloat;
   Tb_Comp_Emb.Next;
   end;

Tb_Comp_Fec.First;

While not Tb_Comp_Fec.Eof do
   begin
   mTotalGeralMP:=mTotalGeralMP+Tb_Comp_Fectotal.AsFloat;
   Tb_Comp_fec.Next;
   end;
Tb_Comp_MP.First;
Tb_Comp_Emb.First;
Tb_Comp_Fec.First;


tb_precos.close;
tb_precos.SQL.clear;

mtot_valor_evento:=mTotalGeralMP*tb_pro_custoPDC_CUS_OUTDESP_PERC.AsFloat/100;
mtot_Acumulado   :=mTotalGeralMP+mtot_valor_evento;

mtot_total_evento:=mtot_valor_evento;

tb_precos.SQL.Add('Select 01 as ordem, '+QuotedStr('Impostos')+' as nome '
                 +','+mudaVP(tb_pro_custoPDC_CUS_OUTDESP_PERC.AsString)+' as PERC '
                 +','+mudaVP(FloatToStr(mTotalGeralMP)) + ' as VALOR_INICIAL '
                 +','+mudaVP(FloatToStr(mtot_valor_evento))+' as VALOR '
                 +','+mudaVP(FloatToStr(mtot_Acumulado))+' as VALOR_ACUMULADO '
                 +' from DUAL ');
Tb_Precos.sql.add(' union ');



mtot_valor_evento:=mTotalGeralMP*tb_pro_custoPDC_VDA_LUCRO_PERC.AsFloat/100;
mtot_Acumulado   :=mtot_Acumulado+mtot_valor_evento;

mtot_total_evento:=mtot_total_evento+mtot_valor_evento;


tb_precos.SQL.Add('Select 02 as ordem,'+QuotedStr('% Lucro')+' as nome '
                 +','+mudaVP(tb_pro_custoPDC_VDA_LUCRO_PERC.AsString)+' as PERC '
                 +','+mudaVP(FloatToStr(mTotalGeralMP)) + ' as VALOR_INICIAL '
                 +','+mudaVP(FloatToStr(mtot_valor_evento))+' as VALOR '
                 +','+mudaVP(FloatToStr(mtot_Acumulado))+' as VALOR_ACUMULADO '
                 +' from DUAL ');
tb_precos.sql.add(' order by ordem ');

try
   tb_precos.open;
except on e : exception do
   begin
   ex_erroSql_Novo(tb_precos,3324,'frm lrs'+e.Message ,'CADEST');
   end;
   end;
rlrodapur_nome.Caption:='Preço de Venda do Produto ';
rlrodapur_valor_acumulado.Caption:=formatfloat(mcasas, mTotalGeralMP+mtot_total_evento);

RLReport1.PreviewModal;
end;

procedure TFrm_IndEnv_MFor.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rlrod_PDNOME.Caption:='-Totais.............';
rlrod_CPQUANT.Caption:=FloatToStr(mTotQtdMP);

rlrod_total.Caption:=FormatFloat(mcasas, mTotalGeralMP);

mTotalGeralMP:=mTotalGeralMP+mTotalMP;

mTotQtdMP:=0;
mTotalMP :=0;

end;

procedure TFrm_IndEnv_MFor.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//rlCusto.Caption:=FormatFloat(mcasas,mTotalCusto);
end;

procedure TFrm_IndEnv_MFor.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//rlNOMPRO.Caption:=Tb_CompNOMPRO_ORI.AsString;
end;

procedure TFrm_IndEnv_MFor.sbnAtuCustoClick(Sender: TObject);
begin
{
var
query: TQuery;

begin


fLerNovamente;
mTotalCusto:=0;
Tb_Comp.First;
While not Tb_Comp.Eof do
   begin
   mTotalCusto := mTotalCusto + Tb_Comptotal.AsFloat;
   Tb_Comp.Next;
   end;
query:=TQuery.Create(nil);
query.DatabaseName:='SG_ASSOC';
query.SQL.add('Update cadpro set PDPRECOC=:PRECOC where PDCODPRO=:CODPRO '
             +' and (PDCODEMP=:CODEMP or PDCODEMP=:CODEMP_FILIAL) ');
query.parambyName('PRECOC').Value:=Arredonda(mTotalCusto, DM1.Tb_PargerPCASASPU.AsInteger);
query.parambyName('CODEMP').Value:=codemp;
if codemp>100 then
  query.parambyName('CODEMP_FILIAL').Value:=codemp-100
else
  query.parambyName('CODEMP_FILIAL').Value:=codemp+100;

query.parambyName('CODPRO').Value:=fsonumero(CODPRO.text);
try
   Query.execsql;
   fdm1StartCommit;
except
   Query.sql.savetofile('c:\sqlpro.txt');
   end;
freeandnil(query);
sbnAtuCusto.Enabled:=false;


}

end;

procedure TFrm_IndEnv_MFor.Tb_Comp_FecCalcFields(DataSet: TDataSet);
begin
Tb_Comp_Fectotal.Value:=Arredonda( (Tb_Comp_FecPDPU.AsFloat*Tb_Comp_FecCPQUANT.AsFloat),3);
end;

procedure TFrm_IndEnv_MFor.Tb_Comp_EmbCalcFields(DataSet: TDataSet);
begin
if (Tb_Comp_EmbPDPU.AsFloat=0) or (Tb_Comp_EmbCPQUANT.AsFloat=0) then
   Tb_Comp_Embtotal.Value:=0
else
   begin
   try

      Tb_Comp_Embtotal.Value:=Arredonda( (Tb_Comp_EmbPDPU.AsFloat*Tb_Comp_EmbCPQUANT.AsFloat),3);
//      Tb_Comp_Embtotal.Value:=Arredonda( (Tb_Comp_EmbCPPU.AsFloat/Tb_Comp_EmbCPQUANT.AsFloat),3);
   except
      end;
   end;

end;

procedure TFrm_IndEnv_MFor.DBE_PDC_CUS_OUTDESP_PERCChange(Sender: TObject);
begin
if DBE_PDC_CUS_OUTDESP_PERC.Modified then
   bbGravar.Enabled:=true;
end;

procedure TFrm_IndEnv_MFor.DBE_PDC_VDA_LUCRO_PERCChange(Sender: TObject);
begin
if DBE_PDC_VDA_LUCRO_PERC.Modified then
   bbGravar.Enabled:=true;

end;

function TFrm_IndEnv_MFor.fLerCadpro_Custos: Boolean;
begin
tb_pro_custo.Close;
tb_pro_custo.ParamByName('CODPRO').AsFloat:=ValFloat(CODPRO.Text);
tb_pro_custo.Open;
if tb_pro_custo.IsEmpty then
   fincluir_pro_custo;

result:=true;
end;

function TFrm_IndEnv_MFor.fincluir_pro_custo: Boolean;
begin
tb_pro_custo.Insert;
tb_pro_custoPDC_CODEMP.value:=1;
tb_pro_custoPDC_CODPRO.value:=valfloat(codpro.Text);
tb_pro_custo.Post;
result:=true;

end;
procedure TFrm_IndEnv_MFor.bbGravarClick(Sender: TObject);
begin
if tb_pro_custo.State in [dsedit,dsinsert] then
   tb_pro_custo.Post;
bbGravar.Enabled:=false;

end;

procedure TFrm_IndEnv_MFor.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
    mTotQtdMP:=0;
    mTotalMP :=0;
   mTotalGeralMP:=0;

    mQtdEmb  :=0;
    mTotalEmb:=0;

    mQtdFec  :=0;
    mTotalFec:=0;

    mQtdApur  :=0;
    mTotalApur:=0;

    mTotalMP:=0;


end;

procedure TFrm_IndEnv_MFor.RLBand_mp_detAfterPrint(Sender: TObject);
begin
    mTotQtdMP:=mTotQtdMP+Tb_Comp_MPCPQTD_PAD.AsFloat;
    mTotalMP :=mTotalMP +Tb_Comp_MPtotal.AsFloat;

end;

procedure TFrm_IndEnv_MFor.RLBand5AfterPrint(Sender: TObject);
begin
    mQtdEmb  :=mQtdEmb+Tb_Comp_EmbCPQUANT.AsFloat;
    mTotalEmb:=mTotalEmb+Tb_Comp_Embtotal.AsFloat;

end;

procedure TFrm_IndEnv_MFor.RLBand9AfterPrint(Sender: TObject);
begin

    mQtdFec  :=mQtdFec+Tb_Comp_FecCPQUANT.AsFloat;
    mTotalFec:=mTotalFec+Tb_Comp_Fectotal.AsFloat;


end;

procedure TFrm_IndEnv_MFor.RLBand13AfterPrint(Sender: TObject);
begin
    mQtdApur  :=mQtdApur+Tb_Comp_FecCPQUANT.AsFloat;
    mTotalApur:=mTotalApur+Tb_Comp_Fectotal.AsFloat;

end;

procedure TFrm_IndEnv_MFor.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rlrodemb_PDNOME.Caption:='-Totais.............';
rlrodemb_CPQUANT.Caption:=FloatToStr(mQtdEmb);

rlrodemb_total.Caption:=FormatFloat(mcasas, mTotalEmb);


mTotalGeralMP:=mTotalGeralMP+mTotalEmb;

mTotalEmb:=0;
mQtdEmb :=0;


end;

procedure TFrm_IndEnv_MFor.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rlrodfec_PDNOME.Caption:='-Totais.............';
rlrodfec_CPQUANT.Caption:=FloatToStr(mQtdfec);

rlrodfec_total.Caption:=FormatFloat(mcasas, mTotalfec);

mTotalGeralMP:=mTotalGeralMP+mTotalFec;

mTotalfec:=0;
mQtdfec :=0;

end;

procedure TFrm_IndEnv_MFor.RLBand15BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_totalmp.Caption:='Valor Total das Materias Primas '+FormatFloat(mcasas,mTotalGeralMP);

end;

procedure TFrm_IndEnv_MFor.DBGrid_MPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
mQtd: Real;
mPercPadrao: Real;
begin
if key=114 then
   begin
   if valfloat(UNDMED.Text)=0 then
      UNDMED.Text:='1';
   if not Tb_Comp_MPCPCODPRO.IsNull then
      begin
      mQtd:=valfloat(mudapv( InputBox('Quantidade Padrão','Informe a Quantidade Padrão','0,000')));
      if mqtd>0 then
         begin

         mPercPadrao:=(mqtd*100)/valfloat(UNDMED.Text);
         if not (Tb_Comp_MP.State in [dsedit,dsinsert]) then
            Tb_Comp_MP.Edit;
         Tb_Comp_MPCPPERCENT.asfloat:=mPercPadrao;
         end;
      end;
   end;
end;

end.
