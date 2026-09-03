// left = 264
// width 158  / 259 normal


unit S_Venda_Pre_Farma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, jpeg, ExtCtrls, ImgList, ComCtrls, Mask,
  StdCtrls, DB, DBClient, Grids, DBGrids, FMTBcd, SqlExpr, Provider, S_Vendas_GravarPedido,
  DBCtrls, ToolEdit, DBXpress, DBTables,S_PedCli, ADODB,S_PesqProd, RxMemDS, S_ConsLot,
  RxDBComb, S_Venda_Pre_CMET, CurrEdit,S_SitCre, Menus, S_Venda_Pre_Armas,s_lerarq_geral;

type
  TFrm_Venda_Pre_Farma = class(TForm)
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
    edt_chave: TEdit;
    Edit1: TEdit;
    Edit3: TEdit;
    edt_codcli: TEdit;
    edt_nomcli: TEdit;
    Edit5: TEdit;
    edt_datap: TDateEdit;
    Edit6: TEdit;
    edt_codCondPag: TEdit;
    edt_nomcond: TEdit;
    Edit9: TEdit;
    edt_codven: TEdit;
    edt_nomven: TEdit;
    Edit12: TEdit;
    edt_nomfp: TEdit;
    edt_codfp: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Memo_ObsPed: TMemo;
    Memo_obsNF: TMemo;
    pcProdServ: TPageControl;
    tsProdutos: TTabSheet;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Edit2: TEdit;
    edt_TotProdServ: TEdit;
    Edit19: TEdit;
    edt_descItens: TEdit;
    Edit21: TEdit;
    Edit24: TEdit;
    edt_vlricmsst: TEdit;
    Edit26: TEdit;
    edt_totipi: TEdit;
    Edit28: TEdit;
    edt_percfrete: TEdit;
    edt_valfre: TEdit;
    Edit31: TEdit;
    edt_TotDesGer: TEdit;
    Edit33: TEdit;
    edt_despAces: TEdit;
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
    edt_perDesGer: TEdit;
    Edit20: TEdit;
    edt_valseg: TEdit;
    DBGrid_itens: TDBGrid;
    Src_Ped02_pre: TDataSource;
    DBGrid_fpgto: TDBGrid;
    Src_FP_pre: TDataSource;
    cb_tipoped: TComboBox;
    edt_nomcfops: TEdit;
    edt_pDesc01: TEdit;
    edt_vlrdes_ped1_perc: TEdit;
    Edit4: TEdit;
    edt_desc_valor: TEdit;
    Panel3: TPanel;
    lbl_restamFP: TLabel;
    Panel_rod_Itens: TPanel;
    Label1: TLabel;
    bbExcluir_item: TBitBtn;
    cds_aliquotas: TClientDataSet;
    cds_aliquotasal_tabicm: TStringField;
    cds_aliquotasal_aliqredut: TFloatField;
    cds_aliquotasal_stIcmsCred: TFloatField;
    cds_aliquotasal_stIcmsDeb: TFloatField;
    cds_aliquotastipo_reg: TIntegerField;
    cds_aliquotasal_issqn: TFloatField;
    cds_aliquotasCfo_Indus_Ret: TIntegerField;
    cds_aliquotasCfo_Indus_Trib: TIntegerField;
    cds_aliquotasCfo_Indus_Isento: TIntegerField;
    cds_aliquotasCfo_rev_Ret: TIntegerField;
    cds_aliquotasCfo_rev_Trib: TIntegerField;
    cds_aliquotasCfo_rev_Isento: TIntegerField;
    cds_aliquotasCfo_SubEcf_Ret: TIntegerField;
    cds_aliquotasCfo_SubEcf_Trib: TIntegerField;
    cds_aliquotasCfo_SubEcf_Isento: TIntegerField;
    cds_aliquotascfo_servico: TIntegerField;
    cds_aliquotasal_pis: TFloatField;
    cds_aliquotasal_cofins: TFloatField;
    cds_aliquotasal_IcmsTrib: TFloatField;
    cds_aliquotasal_icmsRet: TIntegerField;
    cds_aliquotasmodBcST: TIntegerField;
    cds_aliquotasal_stIVA_Ina: TFloatField;
    cds_aliquotasal_stIVA_Neg: TFloatField;
    cds_aliquotasal_stAliqRed: TFloatField;
    cds_aliquotasal_inss: TFloatField;
    cds_aliquotasal_inss_pred: TFloatField;
    cds_aliquotasal_irrf: TFloatField;
    cds_aliquotasal_irrf_pred: TFloatField;
    cds_aliquotasal_repasse: TFloatField;
    Tb_FP_pre: TQuery;
    Tb_FP_prePFPCODEMP: TFloatField;
    Tb_FP_prePFPCHAVE: TFloatField;
    Tb_FP_prePFPCHAVE_ANO: TFloatField;
    Tb_FP_prePFPPARCELA: TFloatField;
    Tb_FP_prePFPQTDPARC: TFloatField;
    Tb_FP_prePFPCODBCO_BOL: TFloatField;
    Tb_FP_prePFPCODFP: TFloatField;
    Tb_FP_prePFPBAIXA: TStringField;
    Tb_FP_prePFPVALOR: TFloatField;
    Tb_FP_prePFPNOMFP: TStringField;
    Tb_FP_prePFPDATA: TDateTimeField;
    Tb_FP_prePFPPRAZO: TFloatField;
    Tb_FP_prePFPNUMDOC: TStringField;
    Tb_FP_prePFPCODBCO_DOC: TFloatField;
    Tb_FP_prePFPSERIE_DOC: TStringField;
    Tb_FP_prePFPCC_DOC: TStringField;
    Tb_FP_prePFPCOMP_DOC: TStringField;
    Tb_FP_prePFPAGENCIA_DOC: TStringField;
    Tb_FP_prePFPEMITENTE_DOC: TStringField;
    Tb_FP_prePFPVINCULO_DOC: TFloatField;
    Tb_FP_prePFPCNPJ_CPF_DOC: TFloatField;
    Tb_FP_prePFPIE_RG: TStringField;
    U_FP_pre: TUpdateSQL;
    Tb_Ped02_pre: TQuery;
    U_Ped02_pre: TUpdateSQL;
    Tb_Ped02_preP2ITEM: TFloatField;
    Tb_Ped02_preP2QTD: TFloatField;
    Tb_Ped02_preP2DESC_PERC01: TFloatField;
    Tb_Ped02_preP2DESC_PERC02: TFloatField;
    Tb_Ped02_preP2DESC_PERC03: TFloatField;
    Tb_Ped02_preP2PRECO: TFloatField;
    Tb_Ped02_preP2CST: TStringField;
    Tb_Ped02_preP2CFOP_NF: TFloatField;
    Tb_Ped02_preP2CFOP_ECF: TFloatField;
    Tb_Ped02_preVALOR_TOTAL: TFloatField;
    Tb_Ped02_preP2CSOSN_ORI: TFloatField;
    Tb_Ped02_preP2ICMS_PPRED: TFloatField;
    Tb_Ped02_preP2MODBCST: TFloatField;
    Tb_Ped02_preP2ST_IVA: TFloatField;
    Tb_Ped02_preP2ST_REDUT: TFloatField;
    Tb_Ped02_preP2ST_ICMSCRED: TFloatField;
    Tb_Ped02_preP2ST_ICMSDEB: TFloatField;
    Tb_Ped02_preP2PRECO_TAB: TFloatField;
    Tb_Ped02_preP2PRECO_UCPR: TFloatField;
    Tb_Ped02_preP2PRECO_CUS: TFloatField;
    Tb_Ped02_preP2PRECO_MAXCONS: TFloatField;
    Tb_Ped02_preP2IPI_PERC: TFloatField;
    Tb_Ped02_preP2ICMS_PERC: TFloatField;
    Tb_Ped02_preP2COFINS_PERC: TFloatField;
    Tb_Ped02_preP2PIS_PERC: TFloatField;
    Tb_Ped02_preP2ICMSSN_PERC: TFloatField;
    Tb_Ped02_preP2ALIPI: TFloatField;
    Tb_Ped02_preP2CST_PIS: TStringField;
    Tb_Ped02_preP2CST_COFINS: TStringField;
    Tb_Ped02_preP2CODVEN: TFloatField;
    Tb_Ped02_preP2AMBIENTE: TStringField;
    Tb_Ped02_preP2DESCFIN_PERC: TFloatField;
    Tb_Ped02_prePDNOME: TStringField;
    Tb_Ped02_prePDUND: TStringField;
    Tb_Ped02_preP2PROMOCAO: TStringField;
    src_aliquotas: TDataSource;
    cds_aliquotasal_credsn: TFloatField;
    tsOutrosDados: TTabSheet;
    cb_forma: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    edt_submod: TEdit;
    Tb_Ped02_preP2CSOSN: TFloatField;
    Label5: TLabel;
    sbnNFE: TSpeedButton;
    sbnInutilizar: TSpeedButton;
    sbnlSep: TSpeedButton;
    tsTranportadora: TTabSheet;
    CB_MODORCAM: TCheckBox;
    Edit7: TEdit;
    edt_codtra: TEdit;
    edt_nomtra: TEdit;
    edt_ufpv_desc: TEdit;
    edt_placav: TEdit;
    cb_ufpv: TComboBox;
    Edit8: TEdit;
    CB_FRETEPC: TComboBox;
    Edit10: TEdit;
    edt_qtdvol: TEdit;
    Edit11: TEdit;
    edt_especie: TEdit;
    Edit13: TEdit;
    edt_pesob: TEdit;
    Edit14: TEdit;
    edt_pesol: TEdit;
    Edit23: TEdit;
    edt_datsai: TDateEdit;
    Edit25: TEdit;
    Edit29: TEdit;
    edt_minuta: TEdit;
    cb_etivol: TCheckBox;
    cb_canhoto: TCheckBox;
    tsProcessos: TTabSheet;
    Edit30: TEdit;
    edt_coddig: TEdit;
    edt_nomdig: TEdit;
    edt_datdig: TDateEdit;
    edt_hordig: TMaskEdit;
    Edit32: TEdit;
    edt_codsep: TEdit;
    edt_nomsep: TEdit;
    edt_datsep: TDateEdit;
    edt_horsep: TMaskEdit;
    Edit34: TEdit;
    edt_codemb: TEdit;
    edt_nomemb: TEdit;
    edt_datemb: TDateEdit;
    edt_horemb: TMaskEdit;
    Edit35: TEdit;
    edt_codconf: TEdit;
    edt_nomconf: TEdit;
    edt_datconf: TDateEdit;
    edt_horconf: TMaskEdit;
    Edit37: TEdit;
    edt_codent: TEdit;
    edt_noment: TEdit;
    edt_datent: TDateEdit;
    edt_horent: TMaskEdit;
    tsEmissoes: TTabSheet;
    Edit38: TEdit;
    Edit42: TEdit;
    edt_numcf: TEdit;
    Edit43: TEdit;
    edt_datacf: TDateEdit;
    Edit44: TEdit;
    edt_serieecf: TEdit;
    Edit45: TEdit;
    Edit46: TEdit;
    edt_numnf: TEdit;
    Edit47: TEdit;
    edt_datanf: TDateEdit;
    Edit48: TEdit;
    edt_serienf: TEdit;
    Edit49: TEdit;
    edt_modelo: TEdit;
    Edit50: TEdit;
    Edit51: TEdit;
    edt_numnfs: TEdit;
    Edit53: TEdit;
    edt_datanfs: TDateEdit;
    Edit54: TEdit;
    edt_serie_nfs: TEdit;
    Edit56: TEdit;
    edt_mod_nfs: TEdit;
    StaticText31: TStaticText;
    cb_tppco: TComboBox;
    StaticText98: TStaticText;
    CB_CASASD: TComboBox;
    Edit27: TEdit;
    edt_acrespu: TEdit;
    sbnCalcular: TSpeedButton;
    bbAltFPag: TBitBtn;
    tsFpgto: TTabSheet;
    mem_cadpfp: TRxMemoryData;
    mem_cadpfpPFPFORMA: TIntegerField;
    mem_cadpfpPFPDATA: TDateField;
    mem_cadpfpPFPNUMDOC: TStringField;
    mem_cadpfpPFPVALOR_001: TFloatField;
    mem_cadpfpPFPVALOR_101: TFloatField;
    src_fpgto: TDataSource;
    mem_cadpfpnomfor: TStringField;
    GroupBox2: TGroupBox;
    Panel4: TPanel;
    StaticText8: TStaticText;
    st_totped_001: TStaticText;
    st_totped_101: TStaticText;
    st_forfpgto: TStaticText;
    st_totfpg_001: TStaticText;
    st_totfpg_101: TStaticText;
    StaticText14: TStaticText;
    st_totfalta_001: TStaticText;
    st_totfalta_101: TStaticText;
    bbfpag_gravar: TBitBtn;
    bbFpag_Cancelar: TBitBtn;
    Panel5: TPanel;
    StaticText1: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    DBGrid_mem_fpag: TDBGrid;
    bbExluir_FP: TBitBtn;
    panel_outros: TPanel;
    DBE_CSOSN: TDBEdit;
    StaticText15: TStaticText;
    StaticText10: TStaticText;
    DBE_ICMSSN_PERC: TDBEdit;
    StaticText11: TStaticText;
    StaticText13: TStaticText;
    DBE_ICMS_PPRED: TDBEdit;
    DBE_ICMS_PERC: TDBEdit;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    StaticText23: TStaticText;
    StaticText24: TStaticText;
    StaticText26: TStaticText;
    rxdbcb_modbcst: TRxDBComboBox;
    DBE_ST_IVA: TDBEdit;
    DBE_PRECO_MAXCONS: TDBEdit;
    DBE_ST_REDUT: TDBEdit;
    DBEST_ICMSDEB: TDBEdit;
    DBE_ST_ICMSCRED: TDBEdit;
    StaticText27: TStaticText;
    DBE_CST_IPI: TDBEdit;
    Tb_Ped02_preP2CST_IPI: TStringField;
    StaticText28: TStaticText;
    StaticText29: TStaticText;
    StaticText32: TStaticText;
    StaticText33: TStaticText;
    DBEdit11: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    sbnMaisDados: TSpeedButton;
    Ts_TabRefDev: TTabSheet;
    src_ped01d: TDataSource;
    mem_ped01d: TRxMemoryData;
    mem_ped01dP1DCODEMP: TFloatField;
    mem_ped01dP1DLOTSEQ: TFloatField;
    mem_ped01dP1DCHAVE: TFloatField;
    mem_ped01dP1DORDEM: TFloatField;
    mem_ped01dP1DCODEMP_OR: TFloatField;
    mem_ped01dP1DLS_OR: TFloatField;
    mem_ped01dP1DCH_OR: TFloatField;
    mem_ped01dP1DOR_OR: TFloatField;
    mem_ped01dP1DDATAP: TDateTimeField;
    DBGrid_RefDev: TDBGrid;
    edt_horsai: TMaskEdit;
    Panel8: TPanel;
    Label6: TLabel;
    bbExcPedOri: TBitBtn;
    src_itens_pedori: TDataSource;
    Qr_itens_pedori: TQuery;
    DBGrid_itens_pedori: TDBGrid;
    Qr_itens_pedoriP2QTD: TFloatField;
    Qr_itens_pedoriP2QTDDEV: TFloatField;
    Qr_itens_pedoriP2ITEM: TFloatField;
    Qr_itens_pedoriP2TOTLIQ: TFloatField;
    Qr_itens_pedoriP2TOTDES: TFloatField;
    Qr_itens_pedoriP2CODEMP: TFloatField;
    Qr_itens_pedoriPCOLIQDEV: TFloatField;
    Qr_itens_pedoriP2PRECO: TFloatField;
    Qr_itens_pedoriP2PCOMAX: TFloatField;
    Qr_itens_pedoriP2DESC1: TFloatField;
    Qr_itens_pedoriP2DESC2: TFloatField;
    Qr_itens_pedoriP2DESC3: TFloatField;
    Qr_itens_pedoriP2PDESCF: TFloatField;
    Qr_itens_pedoriP2PCOMIS: TFloatField;
    Qr_itens_pedoriP2PCOM02: TFloatField;
    Qr_itens_pedoriP2PCOM03: TFloatField;
    Qr_itens_pedoriP2VALDES: TFloatField;
    Qr_itens_pedoriP2ST_IVA: TFloatField;
    Qr_itens_pedoriP2ST_REDUT: TFloatField;
    Qr_itens_pedoriP2ST_ICMCRED: TFloatField;
    Qr_itens_pedoriP2ST_ICMDEB: TFloatField;
    Qr_itens_pedoriP2REDUTICM: TFloatField;
    Qr_itens_pedoriP2SIT: TStringField;
    Qr_itens_pedoriP2ALIQ: TFloatField;
    Qr_itens_pedoriP2ALIPI: TFloatField;
    Qr_itens_pedoriP2LOTSEQ: TFloatField;
    Qr_itens_pedoriP2CHAVE: TFloatField;
    Qr_itens_pedoriP2ORDEM: TFloatField;
    Qr_itens_pedoriPDCODPRO: TFloatField;
    Qr_itens_pedoriPDNOME: TStringField;
    Qr_itens_pedoriPDUND: TStringField;
    Qr_itens_pedoriPDMARCA: TStringField;
    U_itens_pedori: TUpdateSQL;
    bbDev_SelTodos: TBitBtn;
    Qr_itens_pedoriQTDSEL: TFloatField;
    bbDev_ZerTodos: TBitBtn;
    bbDev_GerarPed: TBitBtn;
    Qr_itens_pedoriP2DESCRAT: TFloatField;
    Qr_itens_pedoriP2CSOSN_ORI: TFloatField;
    Qr_itens_pedoriP2CSOSN: TFloatField;
    Qr_itens_pedoriP2MODBCST: TFloatField;
    Qr_itens_pedoriP2PCOTAB: TFloatField;
    Qr_itens_pedoriP2UCPR: TFloatField;
    Qr_itens_pedoriP2PCOCUS: TFloatField;
    Qr_itens_pedoriP2ALPIS: TFloatField;
    Qr_itens_pedoriP2ALCOFINS: TFloatField;
    Qr_itens_pedoriP2PCRED_SN: TFloatField;
    Qr_itens_pedoriP2CST_PIS: TStringField;
    Qr_itens_pedoriP2CST_COFINS: TStringField;
    Qr_itens_pedoriP2CST_IPI: TStringField;
    Qr_itens_pedoriP2CODVEN: TFloatField;
    sbnEMail: TSpeedButton;
    sbnDuplicar: TSpeedButton;
    edt_codbco: TEdit;
    edt_nombco: TEdit;
    Edit57: TEdit;
    sbnEMailXML: TSpeedButton;
    gb_imp: TGroupBox;
    bb_merc_imp: TButton;
    Tb_Ped02_prePDMARCA: TStringField;
    st_estpro: TStaticText;
    Tb_Ped02_prePOSICAO: TFloatField;
    Timer_alteracao: TTimer;
    edt_pedori1: TEdit;
    edt_pedori2: TEdit;
    StaticText52: TStaticText;
    TabSheet1: TTabSheet;
    DBGrid_CONFIG: TDBGrid;
    Tb_Ped02_preP2DESC_COMP: TMemoField;
    Memo_complementar: TDBMemo;
    Tb_Ped02_preP2CONTESP: TFloatField;
    Qr_itens_pedoriP2CONTESP: TFloatField;
    Tb_Ped02_preP2DESCPR: TFloatField;
    CB_SEPAMB: TComboBox;
    mem_cadpfpPFPPRAZO: TIntegerField;
    StaticText21: TStaticText;
    StaticText22: TStaticText;
    CB_FILIAL: TComboBox;
    Tb_Ped02_preP2VALDES: TFloatField;
    cds_aliquotasal_stIVA_Pos: TFloatField;
    sbnVendaRapida: TSpeedButton;
    cb_leitor: TCheckBox;
    cb_naoverifica: TCheckBox;
    Tb_Ped02_preP2CODPRO: TStringField;
    Tb_Ped02_preP2CONS_PROPRIO: TFloatField;
    Tb_Ped02_precons_proprio: TStringField;
    sbn_padrao_leitor: TSpeedButton;
    GroupBox3: TGroupBox;
    Edit52: TEdit;
    cb_tipent: TComboBox;
    Edit55: TEdit;
    edt_data_pent: TDateEdit;
    Edit58: TEdit;
    edt_hora_pent: TMaskEdit;
    Edit59: TEdit;
    edt_entrega_cep: TEdit;
    lbl_entrega_ender: TEdit;
    edt_entrega_ender: TEdit;
    Edit60: TEdit;
    edt_entrega_bairro: TEdit;
    Edit61: TEdit;
    edt_entrega_codloc: TEdit;
    Edit62: TEdit;
    edt_entrega_cidade: TEdit;
    Edit63: TEdit;
    edt_entrega_obs: TEdit;
    SbnEnderCep: TSpeedButton;
    edt_entrega_uf: TEdit;
    Edit64: TEdit;
    edt_nfe_chacesso: TEdit;
    Edit66: TEdit;
    edt_nfe_nprot: TEdit;
    Edit65: TEdit;
    edt_nfs_nprot: TEdit;
    sbnNFS: TSpeedButton;
    sbnContrato: TSpeedButton;
    pnloutros_precos: TPanel;
    Label7: TLabel;
    edt_NomPro: TEdit;
    Label8: TLabel;
    edt_pco1: TEdit;
    edt_pco2: TEdit;
    Label9: TLabel;
    edt_pco3: TEdit;
    Label10: TLabel;
    Tb_Ped02_preP2PCOMIS: TFloatField;
    btn_analise: TBitBtn;
    tsConfigMaster: TTabSheet;
    cb_tipopco: TCheckBox;
    Tb_Ped02_preP2TIPO_PCO: TFloatField;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Edit67: TEdit;
    edt_codcv: TEdit;
    edt_nomcv: TEdit;
    edt_fonecsf: TEdit;
    sbn_cadcsf: TSpeedButton;
    StaticText9: TStaticText;
    DBE_IPI_PERC: TDBEdit;
    StaticText12: TStaticText;
    DBE_CST: TDBEdit;
    StaticText16: TStaticText;
    DBE_CFOP: TDBEdit;
    StaticText20: TStaticText;
    DBE_PCOMIS: TDBEdit;
    cb_incluirauto: TCheckBox;
    cb_codvenant: TCheckBox;
    sbnFormaMais: TSpeedButton;
    mem_cadpfpPFPCNPJ_CPF_DOC: TFloatField;
    mem_cadpfpPFPEMITENTE_DOC: TStringField;
    mem_cadpfpPFPCC_DOC: TStringField;
    mem_cadpfpPFPAGENCIA_DOC: TStringField;
    mem_cadpfpPFPCODBCO_DOC: TFloatField;
    Edit22: TEdit;
    edt_tarban_101: TEdit;
    edt_tarban1: TEdit;
    Tb_Ped02_preP2ICMS_BCIPI: TFloatField;
    Tb_Ped02_preP2ICMS_VLIPI: TFloatField;
    Tb_Ped02_preP2ICMS_ALIPI: TFloatField;
    Tb_Ped02_preP2ICMS_PPRED_101: TFloatField;
    Tb_Ped02_preP2MODBCST_101: TFloatField;
    Tb_Ped02_preP2ST_IVA_101: TFloatField;
    Tb_Ped02_preP2ST_REDUT_101: TFloatField;
    Tb_Ped02_preP2ST_ICMSCRED_101: TFloatField;
    Tb_Ped02_preP2ST_ICMSDEB_101: TFloatField;
    Tb_Ped02_prePDSECAO: TStringField;
    Qr_itens_pedoriP2ALIQICMSDES: TFloatField;
    Tb_Ped02_preP2ICMS_DESPERC: TFloatField;
    Tb_Ped02_preP2ALIQAPROXTRIB: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbnIncluirClick(Sender: TObject);
    procedure edt_codcliExit(Sender: TObject);
    procedure edt_codcliKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codCondPagExit(Sender: TObject);
    procedure edt_codfpKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codfpExit(Sender: TObject);
    procedure edt_codvenExit(Sender: TObject);
    procedure edt_codvenKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_itensColExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cb_tipopedExit(Sender: TObject);
    procedure DBGrid_itensKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_itensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_itensExit(Sender: TObject);
    procedure DBGrid_itensMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Memo_ObsPedEnter(Sender: TObject);
    procedure Memo_ObsPedExit(Sender: TObject);
    procedure Memo_obsNFEnter(Sender: TObject);
    procedure DBGrid_itensColEnter(Sender: TObject);
    procedure edt_datapExit(Sender: TObject);
    procedure Memo_obsNFExit(Sender: TObject);
    procedure edt_valsegExit(Sender: TObject);
    procedure edt_despAcesExit(Sender: TObject);
    procedure edt_totipiExit(Sender: TObject);
    procedure edt_valfreExit(Sender: TObject);
    procedure edt_bcicmsstExit(Sender: TObject);
    procedure edt_vlricmsstExit(Sender: TObject);
    procedure edt_bcicmsExit(Sender: TObject);
    procedure edt_vlricmsExit(Sender: TObject);
    procedure edt_pDesc01Exit(Sender: TObject);
    procedure edt_datapChange(Sender: TObject);
    procedure cb_tipopedClick(Sender: TObject);
    procedure edt_codcliChange(Sender: TObject);
    procedure edt_codvenChange(Sender: TObject);
    procedure edt_codfpChange(Sender: TObject);
    procedure Memo_ObsPedChange(Sender: TObject);
    procedure Memo_obsNFChange(Sender: TObject);
    procedure edt_pDesc01Change(Sender: TObject);
    procedure edt_valsegChange(Sender: TObject);
    procedure edt_despAcesChange(Sender: TObject);
    procedure edt_totipiChange(Sender: TObject);
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
    procedure bbSairClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure sbnAlterarClick(Sender: TObject);
    procedure edt_chaveExit(Sender: TObject);
    procedure bbExcluir_itemClick(Sender: TObject);
    procedure edt_codCondPagKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Tb_FP_preAfterDelete(DataSet: TDataSet);
    procedure Tb_FP_preAfterPost(DataSet: TDataSet);
    procedure Tb_Ped02_preAfterCancel(DataSet: TDataSet);
    procedure Tb_Ped02_preAfterEdit(DataSet: TDataSet);
    procedure Tb_Ped02_preAfterInsert(DataSet: TDataSet);
    procedure Tb_Ped02_preAfterPost(DataSet: TDataSet);
    procedure Tb_Ped02_preBeforePost(DataSet: TDataSet);
    procedure Tb_Ped02_preBeforeDelete(DataSet: TDataSet);
    procedure edt_codcliEnter(Sender: TObject);
    procedure edt_codCondPagEnter(Sender: TObject);
    procedure edt_codvenEnter(Sender: TObject);
    procedure edt_codfpEnter(Sender: TObject);
    procedure Tb_FP_preAfterInsert(DataSet: TDataSet);
    procedure edt_submodExit(Sender: TObject);
    procedure cb_formaExit(Sender: TObject);
    procedure edt_submodEnter(Sender: TObject);
    procedure cb_formaEnter(Sender: TObject);
    procedure cb_tipopedEnter(Sender: TObject);
    procedure Tb_Ped02_preBeforeEdit(DataSet: TDataSet);
    procedure Tb_FP_preBeforeEdit(DataSet: TDataSet);
    procedure Tb_FP_preBeforeInsert(DataSet: TDataSet);
    procedure Tb_Ped02_preBeforeInsert(DataSet: TDataSet);
    procedure sbnLocalizarClick(Sender: TObject);
    procedure Tb_FP_preBeforeDelete(DataSet: TDataSet);
    procedure DBGrid_itensEnter(Sender: TObject);
    procedure sbnNFEClick(Sender: TObject);
    procedure sbnExcluirClick(Sender: TObject);
    procedure sbnInutilizarClick(Sender: TObject);
    procedure sbnlSepClick(Sender: TObject);
    procedure edt_coddigExit(Sender: TObject);
    procedure edt_coddigKeyPress(Sender: TObject; var Key: Char);
    procedure edt_coddigChange(Sender: TObject);
    procedure edt_codsepChange(Sender: TObject);
    procedure edt_codsepExit(Sender: TObject);
    procedure edt_codsepKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codembKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codembExit(Sender: TObject);
    procedure edt_codembChange(Sender: TObject);
    procedure edt_codconfChange(Sender: TObject);
    procedure edt_codconfExit(Sender: TObject);
    procedure edt_codconfKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codentKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codentExit(Sender: TObject);
    procedure edt_codentChange(Sender: TObject);
    procedure edt_datdigChange(Sender: TObject);
    procedure edt_datsepChange(Sender: TObject);
    procedure edt_datembChange(Sender: TObject);
    procedure edt_datconfChange(Sender: TObject);
    procedure edt_datentChange(Sender: TObject);
    procedure edt_hordigChange(Sender: TObject);
    procedure edt_horsepChange(Sender: TObject);
    procedure edt_horembChange(Sender: TObject);
    procedure edt_horconfChange(Sender: TObject);
    procedure edt_horentChange(Sender: TObject);
    procedure edt_datdigExit(Sender: TObject);
    procedure edt_codtraEnter(Sender: TObject);
    procedure edt_codtraChange(Sender: TObject);
    procedure edt_codtraExit(Sender: TObject);
    procedure edt_codtraKeyPress(Sender: TObject; var Key: Char);
    procedure cb_ufpvClick(Sender: TObject);
    procedure cb_ufpvExit(Sender: TObject);
    procedure CB_FRETEPCClick(Sender: TObject);
    procedure CB_FRETEPCExit(Sender: TObject);
    procedure edt_qtdvolChange(Sender: TObject);
    procedure edt_qtdvolEnter(Sender: TObject);
    procedure edt_qtdvolExit(Sender: TObject);
    procedure edt_especieChange(Sender: TObject);
    procedure edt_especieEnter(Sender: TObject);
    procedure edt_especieExit(Sender: TObject);
    procedure edt_pesobChange(Sender: TObject);
    procedure edt_pesobEnter(Sender: TObject);
    procedure edt_pesobExit(Sender: TObject);
    procedure edt_pesolChange(Sender: TObject);
    procedure edt_pesolEnter(Sender: TObject);
    procedure edt_pesolExit(Sender: TObject);
    procedure edt_datsaiChange(Sender: TObject);
    procedure edt_datsaiExit(Sender: TObject);
    procedure edt_horsaiChange(Sender: TObject);
    procedure C(DataSet: TDataSet);
    procedure edt_acrespuExit(Sender: TObject);
    procedure cb_tppcoClick(Sender: TObject);
    procedure CB_CASASDClick(Sender: TObject);
    procedure sbnCalcularClick(Sender: TObject);
    procedure bbAltFPagClick(Sender: TObject);
    procedure DBGrid_mem_fpagColExit(Sender: TObject);
    procedure mem_cadpfpAfterEdit(DataSet: TDataSet);
    procedure mem_cadpfpAfterInsert(DataSet: TDataSet);
    procedure mem_cadpfpAfterPost(DataSet: TDataSet);
    procedure mem_cadpfpBeforeDelete(DataSet: TDataSet);
    procedure mem_cadpfpBeforePost(DataSet: TDataSet);
    procedure bbfpag_gravarClick(Sender: TObject);
    procedure bbExluir_FPClick(Sender: TObject);
    procedure GroupBox2Exit(Sender: TObject);
    procedure bbFpag_CancelarClick(Sender: TObject);
    procedure sbnMaisDadosClick(Sender: TObject);
    procedure edt_placavExit(Sender: TObject);
    procedure edt_minutaExit(Sender: TObject);
    procedure edt_horsai2Enter(Sender: TObject);
    procedure edt_horsai2Exit(Sender: TObject);
    procedure DBGrid_RefDevColExit(Sender: TObject);
    procedure DBGrid_RefDevEnter(Sender: TObject);
    procedure mem_ped01dAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure bbDev_SelTodosClick(Sender: TObject);
    procedure bbDev_ZerTodosClick(Sender: TObject);
    procedure DBGrid_itens_pedoriDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure mem_ped01dBeforePost(DataSet: TDataSet);
    procedure bbDev_GerarPedClick(Sender: TObject);
    procedure mem_ped01dAfterInsert(DataSet: TDataSet);
    procedure mem_ped01dAfterEdit(DataSet: TDataSet);
    procedure mem_ped01dAfterDelete(DataSet: TDataSet);
    procedure Qr_itens_pedoriBeforePost(DataSet: TDataSet);
    procedure sbnEMailClick(Sender: TObject);
    procedure bbExcPedOriClick(Sender: TObject);
    procedure sbnDuplicarClick(Sender: TObject);
    procedure edt_codbcoEnter(Sender: TObject);
    procedure edt_codbcoChange(Sender: TObject);
    procedure edt_codbcoExit(Sender: TObject);
    procedure edt_codbcoKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codfpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbnEMailXMLClick(Sender: TObject);
    procedure bb_merc_impClick(Sender: TObject);
    procedure edt_datsepExit(Sender: TObject);
    procedure edt_datembExit(Sender: TObject);
    procedure edt_datconfExit(Sender: TObject);
    procedure edt_datentExit(Sender: TObject);
    procedure Tb_Ped02_preAfterDelete(DataSet: TDataSet);
    procedure Timer_alteracaoTimer(Sender: TObject);
    procedure edt_pedori1Exit(Sender: TObject);
    procedure edt_pedori2Exit(Sender: TObject);

    function fValidarDigitacaoItem: Boolean;
    procedure bbcmet_sairClick(Sender: TObject);
    procedure Tb_Ped02_preBeforeCancel(DataSet: TDataSet);
    procedure edt_nomcliExit(Sender: TObject);
    procedure CB_SEPAMBClick(Sender: TObject);
    procedure CB_SEPAMBExit(Sender: TObject);
    procedure edt_nomcliEnter(Sender: TObject);
    procedure edt_nomcliChange(Sender: TObject);
    procedure CB_FILIALExit(Sender: TObject);
    procedure CB_FILIALEnter(Sender: TObject);
    procedure edt_percfreteExit(Sender: TObject);
    procedure edt_percfreteEnter(Sender: TObject);
    procedure DBGrid_mem_fpagKeyPress(Sender: TObject; var Key: Char);
    procedure edt_desc_valorEnter(Sender: TObject);
    procedure sbnVendaRapidaClick(Sender: TObject);
    procedure cb_tppcoExit(Sender: TObject);
    procedure Tb_Ped02_preCalcFields(DataSet: TDataSet);
    procedure DBGrid_itensDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGrid_itensDblClick(Sender: TObject);
    procedure sbn_padrao_leitorClick(Sender: TObject);
    procedure SbnEnderCepClick(Sender: TObject);
    procedure cb_tipentExit(Sender: TObject);
    procedure edt_entrega_cepExit(Sender: TObject);
    procedure edt_entrega_enderExit(Sender: TObject);
    procedure edt_data_pentChange(Sender: TObject);
    procedure edt_data_pentExit(Sender: TObject);
    procedure edt_hora_pentExit(Sender: TObject);
    procedure edt_entrega_bairroExit(Sender: TObject);
    procedure edt_entrega_codlocExit(Sender: TObject);
    procedure edt_entrega_cidadeExit(Sender: TObject);
    procedure edt_entrega_ufExit(Sender: TObject);
    procedure edt_entrega_obsExit(Sender: TObject);
    procedure edt_entrega_cepChange(Sender: TObject);
    procedure edt_entrega_enderChange(Sender: TObject);
    procedure edt_hora_pentChange(Sender: TObject);
    procedure edt_entrega_bairroChange(Sender: TObject);
    procedure edt_entrega_codlocChange(Sender: TObject);
    procedure edt_entrega_cidadeChange(Sender: TObject);
    procedure edt_entrega_ufChange(Sender: TObject);
    procedure edt_entrega_obsChange(Sender: TObject);
    procedure sbnContratoClick(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure btn_analiseClick(Sender: TObject);
    procedure cb_tipopcoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edt_codcvChange(Sender: TObject);
    procedure edt_codcvEnter(Sender: TObject);
    procedure edt_codcvExit(Sender: TObject);
    procedure edt_codcvKeyPress(Sender: TObject; var Key: Char);
    procedure tsFpgtoEnter(Sender: TObject);
    procedure edt_fonecsfExit(Sender: TObject);
    procedure edt_fonecsfChange(Sender: TObject);
    procedure sbn_cadcsfClick(Sender: TObject);
    procedure edt_fonecsfEnter(Sender: TObject);
    procedure cb_incluirautoClick(Sender: TObject);
    procedure cb_codvenantClick(Sender: TObject);
    procedure sbnFormaMaisClick(Sender: TObject);
    procedure edt_tarban_101Change(Sender: TObject);
    procedure edt_tarban1Change(Sender: TObject);
  private
   { Private declarations }
//   const mcol_totliq = 09;
    pOp: Integer; //1 - Inclusão - Alteração
   fpag_cancelou: Boolean;

   mant_fonecsf: string;
    mfp_altvalor: Boolean;
    HintRect : TRect;
    pOpAddExt: Integer;
    mcol_cfop: Integer;
    mPed1_Importando: Boolean;
    mTpPco_Ant: Integer;
    mAltEmp_Emi: Boolean;
    mped1_tpPed :Integer;
    mped1_tpPed_VendaNormal :String;
    mIgnorar_Restricoes:Boolean;
    mOper_Ped01D: Integer;   // 0 -inclusao 1-alteracao
    mPed1Serv_ISSQN_Aliq:Real;
    mPed1Serv_INSS_Red  :Real;
    mPed1Serv_INSS_Aliq :Real;
    mPed1Serv_IRRF_Red  :Real;
    mPed1Serv_IRRF_Aliq :Real;
    mPed_Cli_ConsFin     :Boolean;
    mPed_Cli_ST : Boolean;
    mPed_Cli_icmsnr: Boolean;
    mPed_Cli_MotDes      : Integer;
    mAceitaAmbiente: Boolean;
    mlocalizando_pedido:boolean;
    mPv_Acrescimo : Real;
    mPd_CodResp_Senha: Integer;
    mlib_mPDescLib: Real;
    mlib_mPDescLib_Usr: Real;
    mlcred: real;
    mlib_limcred: Boolean;


    mlib_codusr_lbloq   : Real;
    mlib_codbloq        : string;
    mlib_codbloq_lib    : string;


    mPed_Cli_REDICMSNOR  :Boolean;
    mPed_Cli_tarban      :Real;
    mPed_Cli_CodLoc      :Real;
    mPed_Cli_CodBai      :Real;
    mPed_Cli_CodRam      :Real;
    mPed_Cli_PCOMV01     :Real;
    mPed_Cli_PCOMV02     :Real;
    mPed_Cli_PCOMV03     :Real;
    mPed_Cli_PCOMV04     :Real;
    mPed_Cli_CodCli      :Real;
    mPed_Cli_Desc01      :Real;
    mPed_Cli_Desc02      :Real;
    mPed_Cli_Desc03      :Real;
    mPed_Cli_DescFin     :Real;
    mPed_Cli_CodRed      :Real;
    mPed_Cli_CRota       :Real;
    mPed_PVTPD1          :Integer;

    mPed_Cli_PCOPRAT     :Integer;
    par_tpp              :Integer;
    mPed_UF_TIPOPCO      :Integer;
    mPed_UF_PCOMV01      :Real;
    mPed_UF_PCOMV02      :Real;
    mPed_UF_PCOMV03      :Real;
    mPed_UF_PCOMV04      :Real;
    mCodpv_ant: String;
    mEventoPendente: String;
    form_PedCli_ped_02                   : TFrm_PedCli;

    mFormace_ant : Integer;
    mSubMOd_ant: Integer;

    mlib_bloqPend: Integer;

    mEstNor_ant       :String;
    mEstCons_ant      :String;
    mEstTerc_ant      :String;
    mEstVenda_ant     :String;



    mPed_Desc: Real;
//    mPed_MobBcST: Integer; // Modalidade 0-PMC 1-Negativa 2-Positiva 3-neutra 4-Iva 5 Pauta'
//    mPed_Cli_ICMSST: String; // icms st N-Nao S-Sim
//    mPed_Cli_Consfin: String; // icms st N-Nao S-Sim
    mPed1_CliCalcIPI: Boolean;
    mPed1_Cli_Tabela: Boolean;

//    mPed1_ICMSRLIQ: Integer;
    mCodpro_Ant: String;
    mContEsp_ant : Integer;

    mCodpro_lid: String;
    mCodpro_pend_Ant: real;
    mItem_Ant: Integer;
    mQtd_Ant: Real;
    mQtd_Cmet: Real;
    mPreco_ant: Real;
    mPcoItem_ant: Real;

    mPd_Venda_Devol: Integer;
    mLib_DescItem: Real;

    mCodCli_ant: real;
    mcodVen_ant: Integer;
    mPed_Item: Integer;
    mPed_Item_Servico: Integer;
    mCodSer_Ant: String;
    mItem_Servico_Ant: Integer;
    mQtd_Servico_Ant: Real;

    mPed1_CodFP_Ant: Integer;
    mPed1_CodBco_Ant: Integer;
//    mCodFP_Ant: Integer;
    mPed_DescGer_Ant: Real;
    mPed_PDesc01_Ant: Real;
    mPed_Desc_Valor_Ant: Real;
    mPed_Frete_Ant: Real;
    mGravando_Item:Boolean;

    mGravando_Encomenda: Boolean;

    mPar_Acres_Ant: Real;
    mPed1_DFCasasPU: String;

    mTotPed_001: Real;
    mTotPed_101: Real;

    mTotFpag_001: Real;
    mTotFpag_101: Real;

    mAnt_Fpgto_prazo: Integer;
    mAnt_Fpgto_dtvcto: tDateTime;

    mAnt_Fpgto_Valor_001: Real;
    mAnt_Fpgto_Valor_101: Real;

    mTotPedLot_001: Real;
    mTotPedLot_101: Real;

    mTotDigLot_001: Real;
    mTotDigLot_101: Real;


    mPed01D_Carregando: Boolean;
    mant_tipoped: Integer;
    mant_filial: Integer;

    mAnt_CodFPgto: Integer;
    form_cmet: TFrm_venda_pre_CMET;
    form_arma: TFrm_venda_pre_armas;
    mped02_itemexcluido: integer;

    procedure fGravarObsNF;

    function fLimparCampos(pTipo: Integer): Boolean;
    function fAtualizarBotoes(pTipo: Integer): Boolean;
    function fApresentaHint(pMensagem: String;pTop,pLeft: Integer): Boolean;
    function fPosicao(ptipo: Integer): Boolean;
    function fTotais(pTipo: Integer): Boolean;
    function fLerFormaPag(pTipo: Integer): Boolean;
    function fGeraFPgto(pTipo,pChave,pLotseq,pCodEmp: Integer): Boolean;

    function fBloquearLiberarCampos(pLibera: Boolean): Boolean;
    function fRecalcularPedido(pTipo: Integer): Boolean;
    function fSomarFPgto(pTipo:Integer): Real;
    function fVerificarOrdemFPgto(ptipo: Integer): Boolean;
    function fBloqueiaLiberaPedido(ptipo: Integer): Boolean;
    function fLerPedidoGeral(pCodEmp,pChave,pChave_ano: Integer): Boolean;

    function fpedtestacfop(ptipo: Integer; PUnd: Real): Boolean;

    function fgravarAliquotas(pTipo_Reg: Integer;pTabIcm: String;
    pAliqTrib,pAliqRet,pAliqRed,pStIcmsCred,pStIcmsDeb,pStIVA_Ina,pStIVA_Pos,pStIVA_Neg,pISSQN
    ,pRepas,pAliqPis,pAliqCofins: Real;
    pCfo_Indus_Ret,pCfo_Indus_Trib,pCfo_Indus_Isento,pCfo_rev_Ret,pCfo_rev_Trib,pCfo_rev_Isento
    ,pCfo_SubEcf_Ret,pCfo_SubEcf_Trib,pCfo_SubEcf_Isento,pcfo_servico,pmodBcST: Integer;
    pal_stAliqRed,pal_inss,pal_inss_pred,pal_irrf,pal_irrf_pred,pStAliqRed: Real): Boolean;

    function RecalcularSubMod(pSubMod_Ant,pSubMod_Atu,pFormace_Ant,pFormace_Atu: Integer;
                             pEstNor_Ant,pEstCons_Ant,pEstTer_Ant,pEstVenda_Ant,
                             pEstNor_Atu,pEstCons_Atu,pEstTer_Atu,pEstVenda_Atu: String): Boolean;







    function fTestaEstoque(pTipo: Integer): Boolean;


    function fChamaPesqPro(pCodSol: Integer; pFormOri,pCarDig: String): String;
    Function fAjustarItensPed(pAjustarPU: Boolean): Boolean;
    function fPegarPrecoProd(pTipo: Integer): Boolean;

    function fpcoliq(ptipo: Integer; pPreco, pDesc01, pDesc02,pDesc03: Real): Real;

    function fMostraTotaisFPag: Boolean;


    function LerPedidodeOrigem(pTipo: Integer): Boolean;

    function fAtualizarPed01D(pTipo: Integer): Boolean;

    function fRegistrarDevolucao: boolean;

    function fAbrirPed02_Pre(pCodEmp,pcodEmp_filial,pChave,pChave_Ano: Integer): Boolean;

    function fCriarNovaChave(ptipo,pEmpresaDestino,pChave_nova: Integer; pChavep01,pChavep02,pChavepfp,pchave01v,pchave_lotes: String): Boolean;




    function fRecalcularformas(pTipo: Integer): Boolean;


    function FbuscaEstoque(pCodPro: Real): Boolean;


    function fVerificaConclusaoProcesso(pChaveAcesso,pSerieNF: String;pChave_Ped,pLotseq,pCodemp,pNumNF: Integer;pValor: Real): Boolean;

    function fRenomearItem(pItemRemovido: Integer):Boolean;

    function fBaixarDevolucao(pTipo: Integer; pCodPro,pLote,pDtVcto: String; pQtd:real): Boolean;


    function fGerarOld(pTipo: Integer): Boolean;


    function fGravarPed01(pTipo: Integer): Boolean;

    function fDeletarCmet(pItem: Integer; pCodpro: Real): Boolean;

    function fDeletarArmas(pItem: Integer; pCodpro: Real): Boolean;

    function fFoiDigitado(ptipo: integer): Boolean;

    function fSomaQtdDev(pCodpro: Real): Real;


    function fValida_Pedido : Boolean;


    function fLerDevPend(pTipo: Integer): Boolean;

    function fGravarCabecalho(pTipo: Integer): Boolean;

    function fValorFormaFixa(pforma: String): Real;


    function fValordaParcela(pAntPerc: Real;pParcela: Integer): Real;


    function fDividirFormasFixas(pAntPerc,pNovoPerc: Real): Boolean;

   function  fGravarDadosCSF: Boolean;



  public
    { Public declarations }
    mProcessamento_Externo: boolean;
    mVenda_GP: TFrm_Vendas_GravarPedido;
    form_SitCre_ped_02                   : Tfrm_SitCre;
    mAmbiente: String;
    mPed_UF_Cli: String;


    mNC_UF_AliqDebSt :String; //  UF_ALIQ_INT
    mNC_UF_Red_IcmsSt:String; //  UF_ICMS_PRED_INT
    mNC_UF_IcmsSTIVA:String;  // UF_ICMSST_IVA_INT

    mNC_Reg_AliqCredST:String;  // UF_ALIQ_SUL
    mNC_Reg_IcmsSTPRed:String;   // UF_ICMS_PRED_SUL
    mNC_Reg_IcmsSTIVA:String;  // UF_ICMSST_IVA_SUL



//    mUF_AliqDebSt :Real; //  UF_ALIQ_INT
//    mUF_Red_IcmsSt:Real; //  UF_ICMS_PRED_INT
//    mUF_IcmsSTIVA:Real;  // UF_ICMSST_IVA_INT
//    mUF_IcmsSN: Real; // % icms de credito do simples nacional

//    mReg_AliqCredST:Real;  // UF_ALIQ_SUL
//    mReg_IcmsSTPRed:Real;   // UF_ICMS_PRED_SUL
//    mReg_IcmsSTIVA:Real;  // UF_ICMSST_IVA_SUL

    mped_Alterou_Cab: Boolean;
    form_venda_pesqprod: Tfrm_pesqprod;
    mQtd_Cal: Real;
    mQtd_Ant_Cal: Real;
    mProcessando_SubProduto: Boolean;

  end;


function fPosArray(pArrayOff: array of string; pTexto: String): Integer;

var
  Frm_Venda_Pre_Farma: TFrm_Venda_Pre_Farma;

implementation

uses S_DM1,  LerArq, func, func_excecoes, S_DM2, S_DM4, Func2,
  S_GerarDuplic, S_NFE_Inutilizar, S_Fatur_OrcGrupo, S_NFE_Impressao,
  S_DM1_ADO, S_Ocorrencias, Math, S_EnviarEmail, s_nfe_Agde, S_DM_MYSQL,
  S_Sintegra_Advert, DateUtils, S_DM6, S_Ped_02_Venda, S_BuscaCep,
  S_Ped_ObsCli, S_Aviso, S_PromVal, S_DadCli,
  s_Venda_pre_Fpgto_Mais;

var
    form_PromVal_ped_02: TFrm_PromVal;

{$R *.dfm}

function TFrm_Venda_Pre_Farma.fValida_Pedido : Boolean;
var
  query_nfe: TQuery;
begin
Result:=False;
if (mVenda_GP.mped1_Chave>0) then
  begin
  query_nfe := TQuery.Create(nil);
  query_nfe.DatabaseName:='SG_ASSOC';
  query_nfe.Close;
  query_nfe.SQL.Clear;
  query_nfe.SQL.Add('SELECT P1TIPO '
                  +',P1CHAVE '
                  +',P1LOTSEQ '
                  +',min(P1SEPAMB) as P1SEPAMB '
                  +',min(P1NUMCF) as P1NUMCF '
                  +',min(P1ECF_SERIE) as P1ECF_SERIE '
                  +',min(P1DATACF) as P1DATACF '
                  +',min(P1TIPENT) as P1TIPENT '
                  +',min(P1DATHOR_PENT) as P1DATHOR_PENT '
                  +',min(P1ENTREGA_CEP) as P1ENTREGA_CEP '
                  +',min(P1ENTREGA_ENDER) as P1ENTREGA_ENDER '
                  +',min(P1ENTREGA_BAIRRO) as P1ENTREGA_BAIRRO '
                  +',min(P1ENTREGA_CIDADE) as P1ENTREGA_CIDADE '
                  +',min(P1ENTREGA_CODLOC) as P1ENTREGA_CODLOC '
                  +',min(P1ENTREGA_UF) as P1ENTREGA_UF '
                  +',min(P1ENTREGA_OBS) as P1ENTREGA_OBS '
                  +',min(P1NUMNF) as P1NUMNF '
                  +',min(P1DATANF) as P1DATANF '
                  +',min(P1SERIE) as P1SERIE '
                  +',min(P1MODELO) as P1MODELO '
                  +', max( (SELECT CFNOME FROM CADPRO_FILIAL WHERE (CFCODEMP=:CODEMP_MENOR OR CFCODEMP=:CODEMP_MAIOR)  AND CFFILIAL=NVL(P1FILIAL,1))) AS FILIAL '
                  +',min(P1CODEMP) as P1CODEMP '
                  +',max(P1FILIAL) as P1FILIAL '
                  +',max(P1CODVEN) as P1CODVEN '
                  +',max(P1CODCLI) as P1CODCLI '
                  +',max(P1CODUSR) as P1CODUSR '
                  +',max(P1DATASEP) AS P1DATASEP '
                  +',max(P1BANCO) as P1BANCO '
                  +',max(P1BASEN) as P1BASEN '
                  +',max(P1ICMSN) as P1ICMSN '
                  +',max(P1CODPV) as P1CODPV '
                  +',max(P1PVDESCF) as P1PVDESCF '
                  +',max(P1PVDIASDESCF) as P1PVDIASDESCF '
                  +',max(P1PVDDESCF) as P1PVDDESCF '
                  +',max(P1TABPV) as P1TABPV '
                  +',max(P1BASER) as P1BASER '
                  +',max(P1ICMSR) as P1ICMSR '
                  +',max(P1CODTRA) as P1CODTRA '
                  +',max(P1FRETEPC) as P1FRETEPC '
                  +',max(P1QTDVOL) as P1QTDVOL '
                  +',max(P1TPPCO) as P1TPPCO'
                  +',max(P1SITPED) as P1SITPED '
                  +',max(P1CODUSR_ULTEVE) as P1CODUSR_ULTEVE '
                  +',max(P1QTDMAN) as P1QTDMAN '
                  +',max(P1BLOQPEND) as P1BLOQPEND '
                  +',max(P1QTDDECPU) as P1QTDDECPU '
                  +',max(P1TARBAN) as P1TARBAN '
                  +',max(P1DESPACES) as P1DESPACES'
                  +',max(P1VALSEG) as P1VALSEG '
                  +',max(P1VALFRE) as P1VALFRE '
                  +',max(P1DESC01) as P1DESC01 '
                  +',max(P1DESC02) as  P1DESC02 '
                  +',max(P1ETIVOL) as P1ETIVOL '
                  +',max(P1PEDORI1) as P1PEDORI1 '
                  +',max(P1PEDORI2) as P1PEDORI2 '
                  +',max(P1MINUTA) as  P1MINUTA '
                  +', 0 AS P1DESC03 '
                  +',max(P1VLRDES) as P1VLRDES '
                  +',MAX(NVL(P1IPIINA,0)+NVL(P1IPIPOS,0)+NVL(P1IPINEG,0)) AS P1TOTIPI '
                  +',max(P1VLRACRE) as P1VLRACRE '
                  +',max(P1PESOB) as P1PESOB '
                  +',max(P1PESOL) as P1PESOL '
                  +',max(P1DESCFIN) as P1DESCFIN '
                  +',max(P1OBS2) as P1OBS2 '
                  +',max(P1OBS1) as P1OBS1 '
                  +',max(P1OBS3) as P1OBS3 '
                  +',max(P1FORMACE) as P1FORMACE '
                  +',max(P1ESPECIE) as P1ESPECIE '
                  +',max(P1UFPV) as P1UFPV '
                  +',max(P1PLACAV) as P1PLACAV '
                  +',max(P1COMP_ULTEVE) as P1COMP_ULTEVE '
                  +',max(P1DATAP) as P1DATAP '
                  +',max(P1PREVENT) as P1PREVENT '
                  +',max(P1DTHRCHEG) as P1DTHRCHEG '
                  +',max(P1DATHOR_UEVE) as P1DATHOR_UEVE '
                  +',max(P1CODSEP) as P1CODSEP '
                  +',max(P1CODEMB) as P1CODEMB '
                  +',max(P1CODCON) as P1CODCON '
                  +',max(P1CODENT) as P1CODENT '
                  +',max(P1DATCON) as P1DATCON '
                  +',max(P1DATENT) as P1DATENT '
                  +',max(P1DATAEMB) as P1DATAEMB '
                  +',max(P1CANHOTO) as P1CANHOTO '
                  +',sum(P1TOTALL) as P1TOTALL '
                  +',sum(P1TOTALB) as P1TOTALB '
                  +',sum(P1TOTSERLIQ) as P1TOTSERLIQ '
                  +',max(P1NFE_CHACESSO) as P1NFE_CHACESSO '
                  +',max(P1NFE_NPROT) as P1NFE_NPROT '
                  +',max(P1DATANF_SERV) as P1DATANF_SERV '
                  +',max(P1SERIE_SERV) as P1SERIE_SERV '
                  +',max(P1NUMNF_SERV) as P1NUMNF_SERV '
                  +',max(P1NFS_SITUACAO) as P1NFS_SITUACAO '
                  +',max(P1NFS_CHACESSO) as P1NFS_CHACESSO '
                  +',max(P1MODELO_SERV) as P1MODELO_SERV '
                  +',max(P1NFS_NPROT) as P1NFS_NPROT '
                  +',(select max(nvl(P1SUBMOD,'+QuotedStr('SSS')+')) FROM CADP01 PED_MENOR where '
                  +'               (P1CODEMP=:CODEMP_MENOR) '
                  +'          and   P1CHAVE=:CHAVE '
                  +'         and   P1LOTSEQ=:CHAVE_ANO '
                  +'         and   P1ORDEM=:ORDEM ) AS SUBMOD_MENOR '
                  +',(select max(nvl(P1SUBMOD,'+QuotedStr('SSS')+')) FROM CADP01 PED_MENOR where '
                  +'               (P1CODEMP=:CODEMP_MAIOR) '
                  +'          and   P1CHAVE=:CHAVE '
                  +'         and   P1LOTSEQ=:CHAVE_ANO '
                  +'         and   P1ORDEM=:ORDEM ) AS SUBMOD_MAIOR '
                  +' FROM CADP01 where '
                  +'       (P1CODEMP=:CODEMP_MENOR or P1CODEMP=:CODEMP_MAIOR) '
                  +' and   P1CHAVE=:CHAVE '
                  +' and   P1LOTSEQ=:CHAVE_ANO '
                  +' and   P1ORDEM=:ORDEM '
                  +' and   P1STATUS<>9 ');
  query_nfe.sql.Add(' group by P1TIPO,P1CHAVE,P1LOTSEQ ');
  query_nfe.sql.Add(' order by P1CODEMP ');
  query_nfe.ParamByName('CODEMP_MENOR').AsInteger   :=mVenda_GP.mPed1_Codemp;
  if mVenda_GP.mPed1_Codemp>100 then
    query_nfe.ParamByName('CODEMP_MAIOR').AsInteger   :=mVenda_GP.mPed1_Codemp-100
  else
    query_nfe.ParamByName('CODEMP_MAIOR').AsInteger   :=mVenda_GP.mPed1_Codemp+100;
  query_nfe.ParamByName('CHAVE').AsInteger    :=mVenda_GP.mped1_Chave;
  query_nfe.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
  query_nfe.ParamByName('ORDEM').AsInteger    :=01;
  query_nfe.Open;
  if not query_nfe.IsEmpty then
    begin
    if (mVenda_GP.mPed1_Totall=query_nfe.FieldByName('P1TOTALL').AsFloat)
       and (mVenda_GP.mPed1_CodCli=query_nfe.FieldByName('P1CODCLI').AsFloat) then
      begin
      Result:=True;
      end;
    end;
  end
else
  begin
  Result:=True;
  end;
end;

procedure TFrm_Venda_Pre_Farma.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
FreeAndNil(mVenda_GP);

if form_cmet<>nil then
   FreeAndNil(form_cmet);
if form_arma<>nil then
   FreeAndNil(form_arma);

if Frm_DadCli<>nil then
   freeandnil(Frm_DadCli);

end;

procedure TFrm_Venda_Pre_Farma.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
If sbnGravar.Enabled then
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


try
if mVenda_GP.mped1_Chave>0 then
   begin
   if mped_Alterou_Cab then
      begin
      mVenda_GP.mped1_submod_grav:=0;
      if mVenda_GP.mped1_submod=100 then
         begin
         mVenda_GP.mped1_submod_grav:=100;
         if codemp>100 then
            mVenda_GP.fGravarPed01(1,-100)
         else
            mVenda_GP.fGravarPed01(1,100);
         end
      else
         begin
         if mVenda_GP.mped1_submod>0 then
            mVenda_GP.mped1_submod_grav:=100-mVenda_GP.mped1_submod;
         mVenda_GP.fGravarPed01(1,0);
         end;
      if (mVenda_GP.mped1_submod>0) and (mVenda_GP.mped1_submod<100) then
         begin
         mVenda_GP.mped1_submod_grav:=mVenda_GP.mped1_submod;
         if codemp>100 then
            mVenda_GP.fGravarPed01(1,-100)
         else
            mVenda_GP.fGravarPed01(1,100);
         end;

      fRecalcularPedido(3);
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from cadp02_pre_temp '
                             +' where P2T_CODEMP=:CODEMP '
                             +' and   P2T_CHAVE=:CHAVE '
                             +' and   P2T_CHAVE_ANO=:CHAVE_ANO '
                               );
   DM1.Query1.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp;
   DM1.Query1.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
   DM1.Query1.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;

   try
      DM1.Query1.ExecSQL;
      fDM1StartCommit;
   except
      if not fVerificaRedeAtiva(true) then
         begin
         end
      else
         begin
         ex_erroSql_Novo(DM1.Query1,20210,'_lerarq','cadp01_pre');
         end;
      end;
   fAtualizarBotoes(1);
   fBloquearLiberarCampos(false);
   pOp:=2;
   sbnCancelarClick(SELF);
   end;

if form_venda_pesqprod<>nil then
   begin
   FreeAndNil(form_venda_pesqprod);
   end;
except
  end;

end;

procedure TFrm_Venda_Pre_Farma.FormCreate(Sender: TObject);
var
  x: Integer;
begin
if codusr<>1111 then
  begin
  TabSheet1.TabVisible     :=False;
  tsConfigMaster.TabVisible:=false;
  end;
mIgnorar_Restricoes:=false;
mcol_cfop:=13;

mAltEmp_Emi:=false;

if flfilpad(0,'_principal','CB_ALTEMP_EMI') then
   begin
   if DM4.Tb_FilPad2FPVALOR.AsString='true' then
      mAltEmp_Emi:=true;
   end;

if flfilpad(0,'_VENDA_PRE','CB_LEITOR') then
   cb_leitor.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

if flfilpad(0,'_VENDA_PRE','CB_TIPOPCO') then
   cb_tipopco.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

if flfilpad(0,'_VENDA_PRE','CB_CODVENANT') then
   cb_codvenant.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

if flfilpad(0,'_VENDA_PRE','CB_INCLUIRAUTO') then
   cb_incluirauto.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';


//cb_tipopco


flcadpar01(0,codemp,'1');
{
if DM4.Tb_Par01PMANDI01.Value=1 then
   begin
   DBGrid_itens.Columns[7].Visible:=False;
   end;
if DM4.Tb_Par01PMANDIV.Value=1 then
   begin
   DBGrid_itens.Columns[8].Visible:=False;
   end;

if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1,2] then
  begin
  DBGrid_itens.Columns[12].FieldName:='P2CSOSN';
  DBGrid_itens.Columns[12].Title.Caption:='CSOSN';
  end;

if ((ValInt('0'+copy(mpseg,1,2))>1) and (ValInt('0'+copy(mpseg,1,2))<4))  then
   begin
   mAceitaAmbiente:=false;
   CB_SEPAMB.Visible:=false;
   end
else
   begin
   mAceitaAmbiente:=true;
   CB_SEPAMB.Visible:=true;
   end;
}
if form_venda_pesqprod=nil then
   begin
   Application.CreateForm(Tfrm_Pesqprod, form_venda_pesqprod);
   form_venda_pesqprod.FormStyle:=fsNormal;
   form_venda_pesqprod.Visible  :=false;
   end;

if codusr=1111 then
   TabSheet1.TabVisible:=TRUE;

mProcessamento_Externo:=false;
//HintWindow:=THintWindow.Create(tsCabecalho);
//Application.HintPause := 15;
// LINDOMAR
pcProdServ.ActivePage:=tsProdutos;
cb_tipoped.Items.Clear;
for x:=0 to high(tab_tped)-1 do
   begin
   if (x=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=1) and (DM1.Tb_PargerPDESTTIP1.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=2) and (DM1.Tb_PargerPDESTTIP2.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=3) and (DM1.Tb_PargerPDESTTIP3.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=4) and (DM1.Tb_PargerPDESTTIP4.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=5) and (DM1.Tb_PargerPDESTTIP5.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=6) and (DM1.Tb_PargerPDESTTIP6.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=7) and (DM1.Tb_PargerPDESTTIP7.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=8) and (DM1.Tb_PargerPDESTTIP8.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=9) and (DM1.Tb_PargerPDESTTIP9.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=10) and (DM1.Tb_PargerPDESTTIP10.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=11) and (DM1.Tb_PargerPDESTTIP11.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=12) and (DM1.Tb_PargerPDESTTIP12.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=13) and (DM1.Tb_PargerPDESTTIP13.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=14) and (DM1.Tb_PargerPDESTTIP14.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=15) and (DM1.Tb_PargerPDESTTIP15.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=16) and (DM1.Tb_PargerPDESTTIP16.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=17) and (DM1.Tb_PargerPDESTTIP17.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=18) and (DM1.Tb_PargerPDESTTIP18.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=19) and (DM1.Tb_PargerPDESTTIP19.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=20) and (DM1.Tb_PargerPDESTTIP20.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=21) and (DM1.Tb_PargerPDESTTIP21.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=22) and (DM1.Tb_PargerPDESTTIP22.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=23) and (DM1.Tb_PargerPDESTTIP23.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=24) and (DM1.Tb_PargerPDESTTIP24.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=25) and (DM1.Tb_PargerPDESTTIP25.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00]);
   end;

mProcessando_SubProduto:=false;
//LINDOMAR FINAL
mGravando_Item:=false;
mlocalizando_pedido:=false;

tsFpgto.TabVisible:=false;
mped1_tpPed :=1;
mped1_tpPed_VendaNormal:=tab_tped_mov[1,00];
tb_ped02_preP2QTD.DisplayFormat          :=mCasQtd;


tb_ped02_preP2DESC_PERC01.DisplayFormat  :=mCasas;
Tb_Ped02_preP2VALDES.DisplayFormat       :=mCasas;

tb_ped02_preP2PRECO.DisplayFormat        :=mPed1_DFCasasPU;
tb_ped02_preP2PRECO_TAB.DisplayFormat    :=mPed1_DFCasasPU;
tb_ped02_preVALOR_TOTAL.DisplayFormat    :=mCasas;



Application.CreateForm(TFrm_Vendas_GravarPedido, mVenda_GP);
cds_aliquotas.CreateDataSet;

Tb_fp_prePFPVALOR.DisplayFormat:=mCasas;
Tb_fp_prePFPDATA.DisplayFormat:=fdt2;

Tb_fp_prePFPDATA.EditMask     := pEditMascData;




mem_cadpfpPFPDATA.DisplayFormat:=fdt2;
mem_cadpfpPFPVALOR_001.DisplayFormat:=mcasas;
mem_cadpfpPFPVALOR_101.DisplayFormat:=mcasas;
mem_cadpfpPFPDATA.EditMask :=pEditMascData;


Ts_TabRefDev.TabVisible:=false;
mem_ped01dP1DDATAP.DisplayFormat      :=fdt2;
Qr_itens_pedoriP2QTD.DisplayFormat    :=mcasqtd;
Qr_itens_pedoriP2QTDDEV.DisplayFormat :=mcasqtd;
Qr_itens_pedoriQTDSEL.DisplayFormat   :=mcasqtd;
Qr_itens_pedoriP2PRECO.DisplayFormat  :=mcasaspu;



//mPed_MobBcST:=0;
//TabSheet2.TabVisible:=False;
end;

procedure TFrm_Venda_Pre_Farma.Memo_obsNFChange(Sender: TObject);
begin
if (Memo_obsNF.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.Memo_obsNFEnter(Sender: TObject);
var
pRect:TRect;
begin
mEventoPendente:='memo_obsnf';

//GetWindowRect(Memo_obsNF.Handle,pRect);

fApresentaHint( 'Pressione [TAB] ou utilize o Mouse para Sair',pRect.Top,pRect.Left);

end;

procedure TFrm_Venda_Pre_Farma.Memo_obsNFExit(Sender: TObject);
begin
mVenda_GP.mPed1_Obs_NF:=Memo_obsNF.Text;
fGravarObsNF;
end;

procedure TFrm_Venda_Pre_Farma.fGravarObsNF;
var
Query_obs: tQuery;
begin
if mVenda_GP.mped1_Chave=0 then
   fGravarPed01(0);
Query_obs:=tQuery.Create(nil);
Query_obs.DatabaseName:='SG_ASSOC';
Query_obs.SQL.Clear;
Query_obs.SQL.Add('Select * from CADP01_ORC where '
                 +' P1ORC_CODEMP=:P1ORC_CODEMP '
                 +' and P1ORC_LOTSEQ=:P1ORC_LOTSEQ '
                 +' and P1ORC_CHAVE=:P1ORC_CHAVE ');
Query_obs.ParamByName('P1ORC_CODEMP').AsInteger:=mVenda_GP.mped1_codemp-iif(mVenda_GP.mped1_codemp>100,100,0);
Query_obs.ParamByName('P1ORC_LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_obs.ParamByName('P1ORC_CHAVE').AsInteger:=mVenda_GP.mPed1_Chave;
try
   Query_obs.Open;
except
   end;
if Query_obs.IsEmpty then
   begin

   Query_obs.Close;
   Query_obs.SQL.Clear;
   Query_obs.SQL.Add('Insert into CADP01_ORC ('
                     +' P1ORC_CODEMP '
                     +',P1ORC_LOTSEQ '
                     +',P1ORC_CHAVE '
                     +',P1ORC_OBSERV'
//                     +',P1ORC_PRAZOENT '
                     +',P1ORC_VALPRO '
                     +',P1ORC_FORMAPAG '
                     +',P1ORC_LETRA '
                     +',P1ORC_FUNDO '
                     +',P1ORC_TAMANHO '
                     +',P1ORC_TABUTE '
                     +',P1ORC_PAPEL '
                     +',P1ORC_QTDROLO '
                     +',P1ORC_MTROLO '
                     +',P1ORC_CONTATO '
                     +' ) values ('
                     +' :P1ORC_CODEMP '
                     +',:P1ORC_LOTSEQ '
                     +',:P1ORC_CHAVE '
                     +',:P1ORC_OBSERV'
//                     +',:P1ORC_PRAZOENT '
                     +',:P1ORC_VALPRO '
                     +',:P1ORC_FORMAPAG '
                     +',:P1ORC_LETRA '
                     +',:P1ORC_FUNDO '
                     +',:P1ORC_TAMANHO '
                     +',:P1ORC_TABUTE '
                     +',:P1ORC_PAPEL '
                     +',:P1ORC_QTDROLO '
                     +',:P1ORC_MTROLO '
                     +',:P1ORC_CONTATO '
                     +' ) ');
   Query_obs.ParamByName('P1ORC_CODEMP').AsInteger :=mVenda_GP.mped1_codemp-iif(mVenda_GP.mped1_codemp>100,100,0);
   Query_obs.ParamByName('P1ORC_LOTSEQ').AsFloat   :=mVenda_GP.mPed1_Chave_ano;
   Query_obs.ParamByName('P1ORC_CHAVE').AsFloat    :=mVenda_GP.mped1_Chave;
   Query_obs.ParamByName('P1ORC_OBSERV').AsString  :=copy(Memo_obsNF.Text,1,3000);
//   Query_obs.ParamByName('P1ORC_PRAZOENT').AsString:=trim(edt_prazoent.Text);
   Query_obs.ParamByName('P1ORC_VALPRO').AsString  :=' ';
   Query_obs.ParamByName('P1ORC_FORMAPAG').AsString:=' ';
   Query_obs.ParamByName('P1ORC_LETRA').AsString   :=' ';
   Query_obs.ParamByName('P1ORC_FUNDO').AsString   :=' ';
   Query_obs.ParamByName('P1ORC_TAMANHO').AsString :=' ';
   Query_obs.ParamByName('P1ORC_TABUTE').AsString  :=' ';
   Query_obs.ParamByName('P1ORC_PAPEL').AsString   :=' ';
   Query_obs.ParamByName('P1ORC_QTDROLO').AsString :=' ';
   Query_obs.ParamByName('P1ORC_MTROLO').AsString  :=' ';
   Query_obs.ParamByName('P1ORC_CONTATO').AsString :=' ';
   try
      Query_obs.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end
else
   begin
   Query_obs.Close;
   Query_obs.SQL.Clear;
   Query_obs.SQL.Add('Update CADP01_ORC set P1ORC_OBSERV=:P1ORC_OBSERV '
//                    +' ,P1ORC_PRAZOENT=:P1ORC_PRAZOENT '
                    +' where '
                    +' P1ORC_CODEMP=:P1ORC_CODEMP  '
                    +' and P1ORC_LOTSEQ=:P1ORC_LOTSEQ  '
                    +' and P1ORC_CHAVE=:P1ORC_CHAVE  ');

   Query_obs.ParamByName('P1ORC_CODEMP').AsInteger :=mVenda_GP.mped1_codemp-iif(mVenda_GP.mped1_codemp>100,100,0);
   Query_obs.ParamByName('P1ORC_LOTSEQ').AsFloat   :=mVenda_GP.mPed1_Chave_ano;
   Query_obs.ParamByName('P1ORC_CHAVE').AsFloat    :=mVenda_GP.mped1_Chave;
   Query_obs.ParamByName('P1ORC_OBSERV').AsString  :=copy(Memo_obsNF.Text,1,3000);
//   Query_obs.ParamByName('P1ORC_PRAZOENT').AsString:=edt_prazoent.Text;   
   try
      Query_obs.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end;
FreeAndNil(Query_obs);


end;

procedure TFrm_Venda_Pre_Farma.Memo_ObsPedChange(Sender: TObject);
begin
if (Memo_ObsPed.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.Memo_ObsPedEnter(Sender: TObject);
var
pRect:TRect;
begin
//GetWindowRect(Memo_ObsPed.Handle,pRect);

fApresentaHint( 'Pressione [TAB] ou utilize o Mouse para Sair',pRect.Top,pRect.Left);
mEventoPendente:='memo_obsped';

end;
function tFrm_Venda_Pre_Farma.fApresentaHint(pMensagem: String;pTop,pLeft: Integer): Boolean;
var
sHint: String;
begin
{
sHint:=pMensagem;
HintRect := HintWindow.CalcHintRect(400,'*',nil);
HintRect.Top :=  pTop-20;
HintRect.Left := pLeft;
HintRect.Right := HintRect.Left + (Length(sHint)*6);
HintRect.Bottom := HintRect.Top + 15;
HintWindow.ActivateHint(HintRect,sHint);}

result:=true;
end;

procedure TFrm_Venda_Pre_Farma.Memo_ObsPedExit(Sender: TObject);
begin
mVenda_GP.mPed1_Obs_Ped:=Memo_ObsPed.Text;
mEventoPendente:='';
fGravarObsNF;
end;

procedure TFrm_Venda_Pre_Farma.sbnAlterarClick(Sender: TObject);
var
query_nfe: TQuery;
begin
pOp:=2;
mAmbiente:='';

query_nfe := TQuery.Create(nil);
query_nfe.DatabaseName:='SG_ASSOC';
//while true do
//  begin
  la_tabelas  :='';
  la_Join     :='';
  la_instrucao:='';
  la_Empresas :='';
  fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');

  query_nfe.SQL.Clear;
  query_nfe.SQL.Add('Select P1CODEMP,P1LOTSEQ,P1CHAVE,P1ORDEM,P1STATUS,P1TIPO,CCNPJ,CCPF,'
                   +'CUF,P1SITPED,P1TABPV,P1CODPV,P1ORDEM,P1PRAZO,P1PVDDESCF,P1PVDIASDESCF'
                   +',P1TOTALL,P1COMIS,P1COMV02,P1COMV03,P1COMV04,P1COMISS'
                   +',P1COMIST,P1SEMCOM,P1COMASSE,P1ICMSR,P1VALFRE,P1TOTEXTCOM'
                   +',P1VALSEG,P1DESCFIN,P1TOTDI01,P1TOTDI02,P1TOTDI03,P1TOTDIVL'
                   +',P1VALDES01,P1VALDES02,P1VLRDES,P1TARBAN,P1DESPACES,P1IPIINA,P1IPIPOS'
                   +',P1IPINEG,P1TOTCGRU,P1TOTSGRU,P1TOTSERLIQ,P1VALENT,P1CODUSR,P1CODUSR_ULTEVE'
                   +',CRAZAO,P1EMITENTE,P1CODSER,P1TOTSERLIQ,P1CODCLI,P1DATANF,P1EMIDOC '
                   +',P1COMP_ULTEVE,P1CODTRA,P1BLOQPEND,P1CODBLOQ_LIB,P1CODBLOQ,P1PREVENT'
                   +',P1NUMNF,P1NUMCF,P1FORMACE,P1DATAP,P1NFE_ENVXML '
                   +',P1QTDMAN as P1QTDMAN,P1CUPOM '
                   +',P1PRAZO_ENT,P1COMIS_EXTRA,P1SUBMOD,P1DATHOR_ULTEVE,P1DATHOR_UEVE from CADP01'+iif(la_tabelas='','',',')+la_tabelas
                   +'       '+la_Join
                   +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                   +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                   +'  (P1CODEMP=:CODEMP OR P1CODEMP=:CODEMP_FILIAL) '
                   +' and P1CHAVE=:CHAVE '
                   +' and P1LOTSEQ=:LOTSEQ '
                   +' and P1ORDEM=:ORDEM '
                   +' order by P1CODEMP ');
  Query_nfe.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
  Query_nfe.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
  Query_nfe.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
  Query_nfe.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
  Query_nfe.ParamByName('ORDEM').AsInteger:=1;
//  query_nfe.SQL.SaveToFile('c:\sql.txt');
  query_nfe.Open;


  if query_nfe.IsEmpty then
     begin
     fmensagem('Chave não encontrada!',0,['0'],0);
     freeandnil(query_nfe);
     exit;
     end;
//  if mVenda_GP.mPed1_QtdMan=query_nfe.FieldByName('P1QTDMAN').AsInteger then
//     break;
//  end;


{if not fValida_Pedido then
  begin
  fmensagem(' Esse pedido foi ou esta sendo alterado em outra estação.'+#13
           +' Por favor re-localizar o mesmo.',0,['0'],0);
  exit;
  end;}
if (mVenda_GP.mPed1_DatHor_UEVE<>query_nfe.FieldByName('P1DATHOR_UEVE').AsDateTime) then
  begin
  edt_chaveExit(Self);
  end;
  
if Query_nfe.FieldbyName('P1STATUS').Value=9 then
   begin
   Fmensagem('Este Pedido foi excluido anteriormente!',0,['0'],0);
   freeandnil(query_nfe);
   exit;
   end;


if (Query_nfe.FieldByName('P1SITPED').Value = 1)
   and ( (Query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime>pdatanula)
   and (MinutesBetween(Query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime,now)<2)) then
   begin
   mcinst2:=Query_nfe.FieldByName('P1CODUSR_ULTEVE').AsString+' - ';
   if Query_nfe.FieldByName('P1CODUSR_ULTEVE').AsInteger=1111 then
      mcinst2:=mcinst2+'Programador(Master)'
   else
      begin
      if flcadusr(0,0,Query_nfe.FieldByName('P1CODUSR').AsString) then
         mcinst2:=mcinst2+DM4.Tb_UsrNOMUSR.AsString;
      end;
   mcinst := 'Pedido em Manutençao no Computador: '+Query_nfe.FieldByName('P1COMP_ULTEVE').AsString
           + ' Pelo Usuário: '+mcinst2
           + ' Data/Hora: '+Formatdatetime('dd/mm/yyyy hh:nn:ss', Query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime);
   fMensagem(mcinst,0,['0'],0);
   freeandnil(query_nfe);
   exit;
   end;


//  fmensagem(' Pedido Atualizado. O Mesmo foi alterado em outra estação.',0,['0'],0);
//  Exit;
//  end;

if Query_nfe.FieldByName('P1CUPOM').Value > 0 then
   begin
   fMensagem('Este pedido ja foi emitido cupom fiscal, Não Pode ser Alterado!',0,['0'],0);
   freeandnil(query_nfe);
   exit;
   end
else if Query_nfe.FieldByName('P1EMIDOC').Value > 0 then
   begin
   if (mAltEmp_Emi) and (Query_nfe.FieldByName('P1TIPO').AsInteger=9) then
   else
      begin
      fMensagem('Pedido ja foi Emitido Documento, Nao Pode Ser Alterado!',0,['0'],0);
      freeandnil(query_nfe);
      exit;
      end;
   end;
sbnVendaRapida.Enabled:=False;
mVenda_GP.mPed1_SitPed:=1;
Timer_alteracao.Enabled:=true;

mVenda_GP.mPed1_QtdMan:=mVenda_GP.mPed1_QtdMan+1;
fGerarOld(8);


fBloquearLiberarCampos(true);
fAtualizarBotoes(2);

//mVenda_GP.mPed1_QtdParc_ant:=-1;
//mVenda_GP.mPed1_AjustaFP:='S';
mVenda_GP.mPed1_QtdParc_ant:=mVenda_GP.mped1_QtdParc;
fBloqueiaLiberaPedido(1);

//DBGrid_itens.Columns[7].ReadOnly:=false;

end;

function tFrm_Venda_Pre_Farma.fGerarOld(pTipo: Integer): Boolean;
var
mChave_Old: Integer;
mCondicao_old: String;

begin
mCondicao_old:=' where (P1CODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_ini)
                  +' or P1CODEMP='+IntToStr(mVenda_GP.mPed1_Codemp_fin)+')'
                  +' and P1CHAVE='+intTostr(mVenda_GP.mped1_Chave)
                  +' and P1LOTSEQ='+IntTostr(mVenda_GP.mPed1_Chave_ano)
                  +' and P1ORDEM=01 ';

mChave_Old:=fGerarTabelas_Old(pTipo //status
                  ,0 //codigo novo valor chave
                  ,'P1CODNOV' //nome do campo do novo valor (chave)
                  ,'P1DTMOD' // nome do campo data e hora do evento
                  ,'P1USRMOD' // nome do campo do usuario
                  ,'P1STATUS' // nome do campo de status
                  ,'CADP01' // nome da tabela
                  ,mCondicao_old);

mCondicao_old:=' where (P2CODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_ini)
                  +' or P2CODEMP='+IntToStr(mVenda_GP.mPed1_Codemp_fin)+')'
                  +' and P2CHAVE='+intTostr(mVenda_GP.mped1_Chave)
                  +' and P2LOTSEQ='+IntTostr(mVenda_GP.mPed1_Chave_ano)
                  +' and P2ORDEM=01 ';

mChave_Old:=fGerarTabelas_Old(pTipo //status
                  ,mchave_old //codigo novo valor chave
                  ,'P2CODNOV' //nome do campo do novo valor (chave)
                  ,'' // nome do campo data e hora do evento
                  ,'' // nome do campo do usuario
                  ,'' // nome do campo de status
                  ,'CADP02' // nome da tabela
                  ,mCondicao_old);

mCondicao_old:=' where (P2SCODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_ini)
                  +' or P2SCODEMP='+IntToStr(mVenda_GP.mPed1_Codemp_fin)+')'
                  +' and P2SCHAVE='+intTostr(mVenda_GP.mped1_Chave)
                  +' and P2SLOTSEQ='+IntTostr(mVenda_GP.mPed1_Chave_ano)
                  +' and P2SORDEM=01 ';


mChave_Old:=fGerarTabelas_Old(pTipo //status
                  ,mchave_old //codigo novo valor chave
                  ,'P2SCODNOV' //nome do campo do novo valor (chave)
                  ,'' // nome do campo data e hora do evento
                  ,'' // nome do campo do usuario
                  ,'' // nome do campo de status
                  ,'CADP02S' // nome da tabela
                  ,mCondicao_old);


mCondicao_old:=' where (PFPCODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_ini)
                  +' or PFPCODEMP='+IntToStr(mVenda_GP.mPed1_Codemp_fin)+')'
                  +' and PFPCHAVE='+intTostr(mVenda_GP.mped1_Chave)
                  +' and PFPLOTSEQ='+IntTostr(mVenda_GP.mPed1_Chave_ano);


mChave_Old:=fGerarTabelas_Old(pTipo //status
                  ,mchave_old //codigo novo valor chave
                  ,'PFPCODNOV' //nome do campo do novo valor (chave)
                  ,'' // nome do campo data e hora do evento
                  ,'' // nome do campo do usuario
                  ,'' // nome do campo de status
                  ,'CADPFP' // nome da tabela
                  ,mCondicao_old);


mCondicao_old:=' where (P1DCODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_ini)
                  +' or P1DCODEMP='+IntToStr(mVenda_GP.mPed1_Codemp_fin)+')'
                  +' and P1DCHAVE='+intTostr(mVenda_GP.mped1_Chave)
                  +' and P1DLOTSEQ='+IntTostr(mVenda_GP.mPed1_Chave_ano)
                  +' and P1DORDEM=01 ';


mChave_Old:=fGerarTabelas_Old(pTipo //status
                  ,mchave_old //codigo novo valor chave
                  ,'P1DCODNOV' //nome do campo do novo valor (chave)
                  ,'' // nome do campo data e hora do evento
                  ,'' // nome do campo do usuario
                  ,'' // nome do campo de status
                  ,'CADP01D' // nome da tabela
                  ,mCondicao_old);

mCondicao_old:=' where (P2LM_CODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_ini)
                  +' or P2LM_CODEMP='+IntToStr(mVenda_GP.mPed1_Codemp_fin)+')'
                  +' and P2LM_CHAVE='+intTostr(mVenda_GP.mped1_Chave)
                  +' and P2LM_LOTSEQ='+IntTostr(mVenda_GP.mPed1_Chave_ano);


mChave_Old:=fGerarTabelas_Old(pTipo //status
                  ,mchave_old //codigo novo valor chave
                  ,'P2LM_CODNOV' //nome do campo do novo valor (chave)
                  ,'' // nome do campo data e hora do evento
                  ,'' // nome do campo do usuario
                  ,'' // nome do campo de status
                  ,'CADP02_LOTES' // nome da tabela
                  ,mCondicao_old);

result:=true;
end;

procedure TFrm_Venda_Pre_Farma.sbnCancelarClick(Sender: TObject);
begin
mAmbiente:='';
Timer_alteracao.Enabled:=false;

fBloqDesPedido(0,mVenda_GP.mPed1_Codemp
                      ,mVenda_GP.mPed1_Chave_ano
                      ,mVenda_GP.mped1_Chave);

fBloqueiaLiberaPedido(0);


fAtualizarBotoes(0);

if ((pOp=1) and (ValFloat(edt_chave.Text)>0)) then
  begin
  sbnExcluirClick(self);
  end;

pOp:=0;
fLimparCampos(0);


fBloquearLiberarCampos(false);



end;

procedure TFrm_Venda_Pre_Farma.sbnGravarClick(Sender: TObject);
var
  mTotFP: Real;
begin

mAmbiente:='';
if tb_ped02_pre.State in [dsEdit,dsInsert] then
  begin
  if length(tb_ped02_preP2CODPRO.AsString)>0 then
    begin
    tb_ped02_pre.Post;
    fAjustarItensPed(false);
    end
  else
    tb_ped02_pre.Cancel;
  end;

if (Tb_Ped02_pre.IsEmpty) and not (mPed1_Importando) then
  begin
  sbnCancelarClick(Self);
  Exit;
  end;

if not mProcessamento_Externo then
   begin
   Panel_butons.SetFocus;
   if not Panel_butons.Focused then
      abort;
   end;

if not Tb_FP_Pre.Active then
   fLerFormaPag(0);
Tb_FP_pre.First;
mTotFP:=0;
While not Tb_FP_pre.Eof do
   begin
   mTotFP:=mTotFP+Tb_FP_prePFPVALOR.AsFloat;
   Tb_FP_pre.Next;
   end;
if Arredonda(mTotFP,2)<>Arredonda(valfloat(edt_totliq.Text),2) then
   begin
   verteclado(0);
   MessageDlg('Total das Formas dos Pagamentos: '+FormatFloat(mcasas, mTotFP)
             +#13+' Valor do Pedido: '+edt_totliq.Text
             +#13+' Diferença: '+FormatFloat(mcasas, valfloat(edt_totliq.Text)-mTotFP)
             +#13+' favor corrigir as formas de pagamento',mtwarning,[mbOk],0);
   DBGrid_fpgto.SetFocus;
   abort;
   exit;
   end;


//Self.Perform(WM_NEXTDLGCTL,0,0);
{if mEventoPendente:='edt_codcli';


DBGrid_fpgtoExit(self);
}

mVenda_GP.mPed1_SitPed:=0;
Timer_alteracao.Enabled:=false;
pOp:=0;

if mped_Alterou_Cab then
   begin
   mVenda_GP.mped1_submod_grav:=0;
   if mVenda_GP.mped1_submod=100 then
      begin
      mVenda_GP.mped1_submod_grav:=100;
      if codemp>100 then
         mVenda_GP.fGravarPed01(1,-100)
      else
         mVenda_GP.fGravarPed01(1,100);
      end
   else
      begin
      if mVenda_GP.mped1_submod>0 then
         mVenda_GP.mped1_submod_grav:=100-mVenda_GP.mped1_submod;
      mVenda_GP.fGravarPed01(1,0);
      end;
   if (mVenda_GP.mped1_submod>0) and (mVenda_GP.mped1_submod<100) then
      begin
      mVenda_GP.mped1_submod_grav:=mVenda_GP.mped1_submod;
      if codemp>100 then
         mVenda_GP.fGravarPed01(1,-100)
      else
         mVenda_GP.fGravarPed01(1,100);
      end;
   fRecalcularPedido(3);
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADP02_PRE_TEMP '
                          +' where P2T_CODEMP=:CODEMP '
                          +' and   P2T_CHAVE=:CHAVE '
                          +' and   P2T_CHAVE_ANO=:CHAVE_ANO '
                            );
DM1.Query1.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp;
DM1.Query1.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
DM1.Query1.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;

try
   DM1.Query1.ExecSQL;
   fDM1StartCommit;
except
   if not fVerificaRedeAtiva(true) then
      begin
      end
   else
      begin
      ex_erroSql_Novo(DM1.Query1,20210,'_lerarq','paf_cadp01_pre');
      end;
   end;
fAtualizarBotoes(1);
fBloqueiaLiberaPedido(0);
if (mVenda_GP.mped1_submod>0) and (mVenda_GP.mped1_submod<100) then
  begin
  if (mVenda_GP.mPed1_Codemp>100) then
    mVenda_GP.mPed1_Codemp:=mVenda_GP.mPed1_Codemp-100
  else
    mVenda_GP.mPed1_Codemp:=mVenda_GP.mPed1_Codemp+100;
  fBloqueiaLiberaPedido(0);
  end;
fBloquearLiberarCampos(false);

if DM4.Tb_Par01PLOCPEDGRAV.AsInteger=0 then
   fLimparCampos(0);

if cb_incluirauto.Checked then
   sbnIncluirClick(self);


end;

procedure TFrm_Venda_Pre_Farma.sbnIncluirClick(Sender: TObject);
begin
mAmbiente:='';
fLimparCampos(0);

mVenda_GP.mPed1_SitPed:=1;
pOp:=1;

Timer_alteracao.Enabled:=true;



cb_tipoped.Text:=tab_tped_mov[DM1.Tb_PargerPTIPPED.Asinteger,00];
 with cb_tipoped do
   ItemIndex := Items.IndexOf(cb_tipoped.Text);
if cb_tipoped.ItemIndex<0 then
   begin
   if trim(mped1_tpPed_VendaNormal)='' then
      cb_tipoped.ItemIndex:=0
   else
      begin
      with cb_tipoped do
         ItemIndex := Items.IndexOf(mped1_tpPed_VendaNormal);
      mped1_tpPed :=1;
      end;
   end;
// inicio

if DM1.Tb_PargerPPVPED.Value = 1 then
   begin
   if flcadpv(1,0,iif(DM1.Tb_PargerPUPVESP.AsInteger=1,'AP','AV'),'01') then
      begin
      edt_codCondPag.Text:=DM1.Tb_PVPVCODTIP.Value+DM1.Tb_PVPVCODPV.AsString;
      end
   else
      begin
      edt_codCondPag.Text:= 'AV01';
      end;
   end;


if (cb_codvenant.Checked=true) and (valint(edt_codven.Text)>0) then
else if DM1.Tb_PargerPVENUSR.Value = 1 then
   begin
   if DM4.Tb_UsrCODUSR.AsInteger <> codusr then
      flcadusr(1,0,IntToStr(codusr));
   edt_codven.Text := DM4.Tb_UsrCODVEN.AsString;
   flcadven(1,0,edt_codven.Text);
   if DM1.Tb_Ven.Eof then
      edt_codven.Text := ''
   else
      edt_nomven.Text := DM1.Tb_VenVNOME.Value;
   end;

edt_coddig.Text  := IntToStr(codusr);

if flcadusr(1,0,edt_coddig.Text) then
   begin
   edt_nomdig.Text := DM4.Tb_UsrNOMUSR.Value;
   end
else
   begin
   edt_nomdig.Text := '';
   end;

if DM1.Tb_PargerPCLIPED.Value = 1 then
   begin
   edt_codcli.Text := '1';
   if flcadcli(1,0,edt_codcli.Text) then
      begin
      edt_codcliExit(self);
      edt_nomcliExit(Self);
      cb_tppcoClick(Self);
      end;
   if fLCadFP(0,'0','') then
      begin
      edt_codfp.Text:='0';
      edt_codfpExit(self);
      end;

   end;
if (DM1.Tb_PargerPVENUSR.Value = 1) and (valint(edt_codven.text)>0) then
   edt_codvenexit(self);

if ( DM1.Tb_PargerPPVPED.Value = 1) and (valint(edt_codcondpag.text)>0) then
   edt_codcondpagexit(self);

// termino

mPed_UF_Cli:=DM1.Tb_CliCUF.AsString;
//VERIFICAR LUIZ FRUTOS 20/12/2012
if codemp>100 then
   mVenda_GP.mPed1_Codemp_ini:=codemp-100
else
   mVenda_GP.mPed1_Codemp_ini:=codemp;
//mVenda_GP.mPed1_Codemp_fin:=mVenda_GP.mPed1_Codemp_ini;
if mVenda_GP.mPed1_Codemp_ini > 100 then
  mVenda_GP.mPed1_Codemp_fin:=mVenda_GP.mPed1_Codemp_ini-100
else
  mVenda_GP.mPed1_Codemp_fin:=mVenda_GP.mPed1_Codemp_ini+100;

cb_tipopedEnter(self);

cb_tipopedExit(self);
pcCabecalho.ActivePage:=tsCabecalho;
pcProdServ.ActivePage:=tsProdutos;

fAbrirPed02_Pre(-999,0,0,0);

// servico
// termino servico

edt_datap.Date:=Date;
mVenda_GP.mPed1_Datap:=edt_datap.Date;

fLerFormaPag(1);

if flfilpad(0,'_VENDA_PRE','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CODFP',[]) then
      begin
      edt_codfp.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
      edt_codfpExit(self);
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CODBCO',[]) then
      begin
      edt_codbco.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
      edt_codbcoExit(self);
      end;
   end;

fBloquearLiberarCampos(true);

mPed_Item:=1;
mPed_Item_Servico:=1;
mVenda_GP.mPed1_CodUsr_Dig:=codusr;
edt_coddig.Text :=inttostr(mVenda_GP.mped1_codusr_dig);
edt_coddigexit(self);
fAtualizarBotoes(2);
if (DM1.Tb_PargerPCLIPED.Value = 1) then
  begin
  if valfloat(edt_codcli.Text)=0 then
     edt_codcli.SetFocus
  else if ValFloat(edt_codven.Text)=0 then
     edt_codven.SetFocus
  else if valfloat(edt_codCondPag.Text)=0 then
     edt_codCondPag.SetFocus
  else
     begin
     DBGrid_itens.SelectedField:=Tb_Ped02_preP2CODPRO;
     DBGrid_itens.SetFocus;
     end;
  end
else
   edt_codcli.SetFocus;
//DBGrid_itens.Columns[7].ReadOnly:=false;

end;

function TFrm_Venda_Pre_Farma.fGeraFPgto(pTipo,pChave,pLotseq,pCodEmp: Integer): Boolean;

var
query_fpgto: Tquery;
mCodFP: String;
mNomeFP: String;

begin

mCodFP:='0';
if flfilpad(0,'_VENDA_PRE','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CODFP',[]) then
      mCodFP:=DM4.Tb_FilPad2FPVALOR.AsString;
   end;
edt_codfp.Text:=fdeixanum(edt_codfp.text);
if fLCadFP(0,edt_codfp.Text,'') then
   mNomeFP:=DM1.Tb_FPFPDESC.AsString
else
   mNomeFP:='DINHEIRO';


query_fpgto:=Tquery.create(nil);
query_fpgto.DatabaseName:='SG_ASSOC';
query_fpgto.Sql.Add('insert into CADPFP '
                   +'(PFPCODEMP,PFPCHAVE,PFPLOTSEQ '
                   +',PFPSEQ,PFPQTDPARC,PFPFORMA,PFPVALOR,PFPBAIXA'
                   +',PFPNOMFOR,PFPPRAZO,PFPDATA'
                   +') Select '
                   +'P1VCODEMP '
                   +',P1VCHAVE '
                   +',P1VLOTSEQ '
                   +',P1VSEQ '
                   +',1 AS QTDFP '
                   +','+mCodFP+' AS PFPFORMA '
                   +',P1VVALOR '
                   +','+QuotedStr('N')
                   +','+QuotedStr(mNomeFP)
                   +',0 as PFPRAZO '
                   +',P1VDATAV from CADP01V '
                   +' where P1VCODEMP='+IntToStr(pCodEmp)
                   +' and P1VCHAVE='+IntTosTr(pChave)
                   +' and P1VLOTSEQ='+IntTosTr(pLotseq));
try
   query_fpgto.ExecSQL;
   fdm1StartCommit;
   if ptipo=0 then
      fLerFormaPag(0);
   result:=true;
except
   query_fpgto.sql.savetofile('c:\sql01.txt');
   end;

end;


function TFrm_Venda_Pre_Farma.fLerFormaPag(pTipo: Integer): Boolean;
var
mQtd_parc: Integer;
begin
Tb_FP_pre.Close;
Tb_FP_pre.SQL.Clear;
Tb_FP_pre.SQL.Add('SELECT min(PFPCODEMP) as PFPCODEMP,PFPCHAVE,PFPLOTSEQ AS PFPCHAVE_ANO,max(PFPSEQ) AS PFPPARCELA '
                 +',max(PFPQTDPARC) AS PFPQTDPARC,0 AS PFPCODBCO_BOL '
                 +',PFPFORMA AS PFPCODFP '
                 +',PFPNOMFOR AS PFPNOMFP'
                 +',PFPDATA '
                 +',PFPPRAZO,PFPNUMDOC,PFPBANCO AS PFPCODBCO_DOC '
                 +',PFPSERIE AS PFPSERIE_DOC,PFPCC AS PFPCC_DOC '
                 +',PFPCOMP AS PFPCOMP_DOC,PFPAGENCIA AS PFPAGENCIA_DOC '
                 +',PFPEMITENTE AS PFPEMITENTE_DOC '
                 +',PFPVINCULO AS PFPVINCULO_DOC '
                 +',PFPCNPF AS PFPCNPJ_CPF_DOC '
                 +',PFPRG AS PFPIE_RG '
                 +',sum(PFPVALOR) as PFPVALOR '
                 +',max(PFPBAIXA) AS PFPBAIXA '
                  +' from CADPFP ');

if ptipo=1 then
   Tb_FP_pre.SQL.Add(' where PFPCODEMP=-9999')
else
   begin
   Tb_FP_pre.SQL.Add(' where (PFPCODEMP='+IntToStr(mVenda_GP.mPed1_Codemp_ini)
                    +' or PFPCODEMP='+IntToStr(mVenda_GP.mPed1_Codemp_fin)+')');
   end;

Tb_FP_pre.SQL.Add(' and PFPCHAVE='+IntTosTr(mVenda_GP.mped1_Chave)
             +' and PFPLOTSEQ='+IntTosTr(mVenda_GP.mped1_Chave_ano));


Tb_FP_pre.SQL.Add('Group by PFPCHAVE,PFPLOTSEQ  '
                 +',PFPFORMA '
                 +',PFPNOMFOR'
                 +',PFPDATA '
                 +',PFPPRAZO,PFPNUMDOC,PFPBANCO '
                 +',PFPSERIE,PFPCC '
                 +',PFPCOMP,PFPAGENCIA '
                 +',PFPEMITENTE '
                 +',PFPVINCULO  '
                 +',PFPCNPF  '
                 +',PFPRG  '
                +' order by PFPDATA,PFPPARCELA ');

//Tb_FP_pre.SQL.SaveToFile('c:\sqlfp.txt');

try
   Tb_FP_pre.Open;
   result:=true;
except
   Tb_FP_pre.SQL.SaveToFile('c:\sqlfp.txt');
   if fVerificaRedeAtiva(true) then
      begin
      MessageDlg('Erro 963 frm_venda_pre paf_cadpfp_pre',mterror,[mbOk],0);
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
mQtd_parc:=Tb_FP_pre.RecordCount;

if mQtd_parc>1 then
   lbl_restamFP.Caption:='Existem '+Inttostr(mQtd_Parc)+' Parcelas '
else
   lbl_restamFP.Caption:='Existe '+Inttostr(mQtd_Parc)+' Parcela ';


if Tb_fp_pre.IsEmpty then
   result:=false
else
   result:=true;
end;



function TFrm_Venda_Pre_Farma.fLimparCampos(pTipo: Integer): Boolean;
begin
CB_FILIAL.Text:=log_filial_padrao_nome;
with CB_FILIAL do ItemIndex:=Items.IndexOf(CB_FILIAL.Text);




cb_tipent.ItemIndex    :=0;
edt_data_pent.Text     :='/  /';
edt_hora_pent.Text     :=':  :';
edt_entrega_obs.Text   :='';
edt_entrega_cep.Text   :='';
edt_entrega_ender.Text :='';
edt_entrega_bairro.Text:='';
edt_entrega_codloc.Text:='';
edt_entrega_cidade.Text:='';
edt_entrega_uf.Text    :='';

edt_codcv.clear;
edt_nomcv.Clear;

edt_acrespu.Text:='0,00';

mem_ped01d.Close;
lbl_restamFP.Caption:='';
cb_tipoped.Text:='';
edt_nombco.Clear;
edt_codbco.Clear;

    mPd_CodResp_Senha:=0;
    mlib_mPDescLib:=0;
    mlib_mPDescLib_Usr:=0;
    mlcred:=0;
    mlib_limcred:=false;

mPd_Venda_Devol:=0;
edt_nomcfops.Clear;
edt_chave.Clear;
edt_datap.Clear;
edt_codCondPag.Clear;
//edt_prazoent.Clear;
edt_nomcond.Clear;
Memo_ObsPed.Clear;
edt_codcli.Clear;
edt_nomcli.Clear;
edt_fonecsf.Clear;
edt_codfp.Clear;
edt_codbco.Clear;
edt_nomfp.Clear;

edt_codtra.Clear;
edt_nomtra.Clear;
cb_ufpv.ItemIndex:=0;
edt_placav.Clear;
CB_FRETEPC.ItemIndex:=0;
edt_qtdvol.Clear;
edt_especie.Clear;
edt_pesob.Clear;
edt_pesol.Clear;
edt_datsai.Clear;
edt_horsai.Clear;
edt_minuta.Clear;
cb_etivol.Checked:=false;
cb_canhoto.Checked:=false;


Memo_obsNF.Clear;
Tb_Ped02_Pre.Close;

Tb_FP_pre.Close;

mem_ped01d.Close;
Qr_itens_pedori.Close;

edt_TotProdServ.Clear;
edt_descItens.Clear;
edt_totPromo.Clear;
edt_pDesc01.Clear;
edt_desc_valor.Clear;
edt_vlrdes_ped1_perc.Clear;
edt_perDesGer.Clear;
edt_TotDesGer.Clear;
edt_tarban_101.Clear;
edt_tarban1.Clear;
edt_valseg.Clear;
edt_despAces.Clear;
edt_totipi.Clear;
edt_percfrete.Clear;
edt_valfre.Clear;
edt_bcicmsst.Clear;
edt_vlricmsst.Clear;
edt_bcicms.Clear;
edt_vlricms.Clear;
edt_totliq.Clear;
mped_Alterou_Cab:=false;
if not cds_aliquotas.Active then
   cds_aliquotas.Open;
cds_aliquotas.EmptyDataSet;
cb_forma.ItemIndex:=0;
edt_submod.Text   :='';
cb_tppco.ItemIndex:=3;
mPv_Acrescimo:=0;
edt_acrespu.Clear;
cb_tppcoClick(self);
mFormace_ant :=0;
mSubMOd_ant  :=0;
mLib_DescItem:=0;
mlib_codusr_lbloq   :=0;
mlib_codbloq        :='';
mlib_codbloq_lib    :='';
mPed01D_Carregando:=false;
mVenda_GP.fLimparCampos(0);
mVenda_GP.mPed1_QtdDec:=DM1.Tb_PargerPCASASPU.AsInteger;
mPed1_DFCasasPU :=mcasaspu;
Tb_Ped02_preP2PRECO.DisplayFormat:=mPed1_DFCasasPU;
mped_Alterou_Cab:=false;
if Frm_DadCli<>nil then
   Frm_DadCli.fLimparTextos;
if cb_codvenant.Checked=true then
   mVenda_GP.mPed1_Codven:=valint(edt_codven.Text)
else
   begin
   edt_codven.Clear;
   edt_nomven.Clear;
   end;



//mped_Alterou_Cab:=True;
result:=true;
end;



function TFrm_Venda_Pre_Farma.fBloquearLiberarCampos(pLibera: Boolean): Boolean;

begin


cb_tipent.Enabled        :=plibera;
edt_data_pent.Enabled    :=pLibera;
edt_hora_pent.Enabled    :=pLibera;
edt_entrega_obs.Enabled  :=pLibera;
edt_entrega_cep.Enabled  :=pLibera;
SbnEnderCep.Enabled      :=pLibera;
edt_entrega_ender.Enabled:=pLibera;
edt_entrega_bairro.Enabled:=pLibera;
edt_entrega_codloc.Enabled:=pLibera;
edt_entrega_cidade.Enabled:=pLibera;
edt_entrega_uf.Enabled:=pLibera;

edt_acrespu.Enabled:=pLibera;
cb_leitor.Enabled  :=plibera;
sbn_padrao_leitor.Enabled  :=plibera;

cb_tipoped.Enabled:=pLibera;
CB_SEPAMB.Enabled:=pLibera;
edt_nomcfops.Enabled:=pLibera;
edt_chave.Enabled:=iif(pLibera,false,true);
edt_datap.Enabled:=pLibera;
edt_codCondPag.Enabled:=pLibera;
//edt_prazoent.Enabled:=pLibera;
edt_codven.Enabled:=pLibera;
Memo_ObsPed.ReadOnly:=iif(pLibera,false,true);
edt_codcli.Enabled:=pLibera;
edt_codfp.Enabled:=pLibera;
edt_codcv.Enabled:=pLibera;
edt_codbco.Enabled:=pLibera;

Memo_obsNF.ReadOnly:=iif(pLibera,false,true);
//DBGrid_itens.ReadOnly:=iif(pLibera,false,true);
//DBGrid_fpgto.ReadOnly:=iif(pLibera,false,true);

edt_TotProdServ.Enabled:=pLibera;
edt_descItens.Enabled:=pLibera;
edt_totPromo.Enabled:=pLibera;
edt_pDesc01.Enabled:=pLibera;
edt_desc_valor.Enabled:=pLibera;
edt_vlrdes_ped1_perc.Enabled:=pLibera;
edt_perDesGer.Enabled:=pLibera;
edt_TotDesGer.Enabled:=pLibera;

edt_valseg.Enabled:=pLibera;
edt_totipi.Enabled:=pLibera;

edt_percfrete.Enabled:=pLibera;
edt_valfre.Enabled:=pLibera;
edt_despAces.Enabled:=pLibera;
cb_forma.Enabled   :=pLibera;
edt_submod.Enabled :=pLibera;

edt_codtra.Enabled :=pLibera;
cb_ufpv.Enabled    :=pLibera;
CB_FRETEPC.Enabled :=pLibera;
edt_qtdvol.Enabled :=pLibera;
cb_tppco.Enabled   :=pLibera;
CB_CASASD.Enabled  :=pLibera;
edt_pedori1.Enabled  :=pLibera;
edt_pedori2.Enabled  :=pLibera;
edt_especie.Enabled :=pLibera;
edt_codtra.Enabled :=pLibera;
edt_pesob.Enabled :=pLibera;
edt_placav.Enabled :=pLibera;
edt_pesol.Enabled :=pLibera;
edt_datsai.Enabled :=pLibera;
edt_horsai.Enabled :=pLibera;
edt_minuta.Enabled :=pLibera;
cb_etivol.Enabled :=pLibera;
cb_canhoto.Enabled :=pLibera;
CB_MODORCAM.Enabled:=pLibera;
edt_coddig.Enabled :=pLibera;
edt_datdig.Enabled :=pLibera;
edt_hordig.Enabled :=pLibera;
edt_codsep.Enabled :=pLibera;
edt_nomsep.Enabled :=pLibera;
edt_datsep.Enabled :=pLibera;
edt_datsep.Enabled :=pLibera;
edt_horsep.Enabled :=pLibera;

edt_codemb.Enabled :=pLibera;
edt_nomemb.Enabled :=pLibera;
edt_datemb.Enabled :=pLibera;
edt_horemb.Enabled :=pLibera;

edt_codconf.Enabled   :=pLibera;
edt_datconf.Enabled   :=pLibera;
edt_horconf.Enabled   :=pLibera;

edt_codent.Enabled    :=pLibera;
edt_datent.Enabled    :=pLibera;
edt_horent.Enabled    :=pLibera;
edt_numnfs.Enabled    :=pLibera;
edt_datanfs.Enabled   :=pLibera;
edt_serie_nfs.Enabled :=pLibera;
edt_mod_nfs.Enabled   :=pLibera;
result:=true;

end;



procedure TFrm_Venda_Pre_Farma.bbExcluir_itemClick(Sender: TObject);
begin
if (not tb_ped02_pre.Active) or (tb_ped02_preP2QTD.IsNull) or (sbnGravar.Enabled=false) then
   exit;
if Application.MessageBox(pchar('Quer Realmente Excluir '+tb_ped02_preP2CODPRO.AsString+'-'+tb_ped02_prePDNOME.AsString+' Quantidade: '+formatFloat(mCasQtd, tb_ped02_preP2QTD.AsFloat)),'',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
tb_ped02_pre.Delete;
end;

procedure TFrm_Venda_Pre_Farma.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Venda_Pre_Farma.cb_tipopedClick(Sender: TObject);
begin
if (mVenda_GP.mped1_Chave>0) and (mant_tipoped<>fPosArray(tab_tped,cb_tipoped.Text)) then
   mped_Alterou_Cab:=true;
{
if mAceitaAmbiente then
   begin
   if cb_tipoped.ItemIndex=0 then
      begin
      CB_SEPAMB.Visible:=true;
      edt_nomcfops.Left:=580;
      end
   else
      begin
      CB_SEPAMB.Visible  :=false;
      edt_nomcfops.Left:=CB_SEPAMB.Left;
      CB_SEPAMB.ItemIndex:=0;
      end;
   end;
}   
end;

procedure TFrm_Venda_Pre_Farma.cb_tipopedExit(Sender: TObject);
//var
//mtipoped_ant: integer;
begin
//lindomar
if (cb_tipoped.ItemIndex<0) and (trim(cb_tipoped.Text)<>'') then
   begin
   with cb_tipoped do
      ItemIndex := Items.IndexOf(cb_tipoped.Text);
  end;
{
if cb_tipoped.ItemIndex=0 then
   begin
   CB_SEPAMB.Visible:=true;
   edt_nomcfops.Left:=580;
   end
else
   begin
   CB_SEPAMB.Visible  :=false;
   CB_SEPAMB.ItemIndex:=0;
   CB_SEPAMBExit(self);
   edt_nomcfops.Left:=CB_SEPAMB.Left;
   end;

}
if (not Tb_Ped02_pre.IsEmpty)  then
   begin
   mped1_tpPed:=fPosArray(tab_tped,cb_tipoped.Text);

   if (mant_tipoped<>mped1_tpPed) and (mant_tipoped<>0) then
      begin
      MessageDlg('Para Mudar o tipo de Pedido para '+cb_tipoped.Text+' não pode haver produtos digitados!',mtWarning,[mbOk],0);
      cb_tipoped.Text:=tab_tped_mov[mant_tipoped,00];
      with cb_tipoped do
        ItemIndex := Items.IndexOf(cb_tipoped.Text);
      end;
   end;
mped1_tpPed:=fPosArray(tab_tped,cb_tipoped.Text);
if (mant_tipoped<>mped1_tpPed) and (mped1_tpPed<>3) then
   begin
    if fValidaSenha(0,codusr,22,0,DM1.Tb_CliCCODCLI.Value,0,0,0, 'Senha para Confirmar a alteração do Tipo de Pedido padrão','')<>0 then
       begin
       cb_tipoped.Text:=tab_tped_mov[mant_tipoped,00];
       with cb_tipoped do
         ItemIndex := Items.IndexOf(cb_tipoped.Text);
       cb_tipoped.SetFocus;
       exit;
       end;
    end;


if trim(mped1_tpPed_VendaNormal)='' then
   cb_tipoped.ItemIndex:=0
else
   begin
   with cb_tipoped do
      ItemIndex := Items.IndexOf(cb_tipoped.Text);
   mped1_tpPed :=1;
   end;
if (cb_tipoped.ItemIndex<0) or (cb_tipoped.Text='') then
   cb_tipoped.ItemIndex:=0;


mped1_tpPed:=fPosArray(tab_tped,cb_tipoped.Text);
if mped1_tpPed<0 then
   begin
   MessageDlg('Tipo Pedido: '+cb_tipoped.Text+' não encontrado!',mtWarning,[mbOk],0);
   cb_tipoped.SetFocus;
   end
else
   begin
   if mped1_tpPed=8 then
      begin
      if mVenda_GP.mPed1_CodCli=0 then
         begin
         MessageDlg(' para o Tipo Pedido: '+cb_tipoped.Text+' é necessário que o código do cliente seja colocado!',mtWarning,[mbOk],0);
         cb_tipoped.Text:=tab_tped_mov[mant_tipoped,00];
         with cb_tipoped do
           ItemIndex := Items.IndexOf(cb_tipoped.Text);
         cb_tipoped.SetFocus;
         exit;
         end
      else if (not Tb_Ped02_pre.IsEmpty) and (mVenda_GP.mPed1_Tipo_Ped<>8) then
         begin
         MessageDlg('Para Mudar o tipo de Pedido para '+cb_tipoped.Text+' não pode haver produtos digitados!',mtWarning,[mbOk],0);
         mVenda_GP.mPed1_Tipo_Ped:=mant_tipoped;
         cb_tipoped.Text:=tab_tped_mov[mant_tipoped,00];
         with cb_tipoped do
            ItemIndex := Items.IndexOf(cb_tipoped.Text);
         cb_tipoped.SetFocus;
         exit;
         end;
      end;

    if mped1_tpPed=9 then
      begin
      if mVenda_GP.mPed1_CodCli=1 then
         begin
         MessageDlg('Para o Tipo Pedido: '+cb_tipoped.Text+' é necessário que o código do cliente não seja 1 - consumidor final!',mtWarning,[mbOk],0);
         mVenda_GP.mPed1_Tipo_Ped:=mant_tipoped;
         cb_tipoped.Text:=tab_tped_mov[mant_tipoped,00];
         with cb_tipoped do
            ItemIndex := Items.IndexOf(cb_tipoped.Text);
         cb_tipoped.SetFocus;
         exit;
         end;
      end;

   mVenda_GP.mPed1_Tipo_Ped:=mped1_tpPed;
//   mtipoped_ant:=mVenda_GP.mPed1_Tipo_Ped;

   fpedtestacfop(0,mVenda_GP.mped1_formace);
   if sbnGravar.Enabled then
      begin
      if not Tb_Ped02_pre.IsEmpty then
         begin
         if ((mVenda_GP.mPd_EstNor<>mEstNor_ant) or
            (mVenda_GP.mPd_EstCons<>mEstCons_ant) or
            (mVenda_GP.mPd_EstTerc<>mEstTerc_ant) or
            (mVenda_GP.mPd_EstVenda<>mEstVenda_ant)) then
            begin
            if (DM4.Tb_Par01PFATMZ.AsInteger<>1) and (mVenda_GP.mPd_EstNor='S') and (mEstNor_ant<>'S') then
               begin
               if not ftestaEstoque(0) then
                  begin
                  mVenda_GP.mPd_EstNor:=mEstNor_ant;
                  mVenda_GP.mPd_EstCons:=mEstCons_ant;
                  mVenda_GP.mPd_EstTerc:=mEstTerc_ant;
                  mVenda_GP.mPd_EstVenda:=mEstVenda_ant;
                  cb_tipoped.Text:=tab_tped_mov[mant_tipoped,00];
                  with cb_tipoped do
                  ItemIndex := Items.IndexOf(cb_tipoped.Text);
                   mVenda_GP.mPed1_Tipo_Ped:=mant_tipoped;
                  cb_tipoped.Text:=tab_tped_mov[mant_tipoped,00];
                  with cb_tipoped do
                    ItemIndex := Items.IndexOf(cb_tipoped.Text);
                  fpedtestacfop(0,mVenda_GP.mped1_formace);
                  exit;
                  end;
               end;
            end;
         end;





      if ((mVenda_GP.mPd_EstNor<>mEstNor_ant) or
         (mVenda_GP.mPd_EstCons<>mEstCons_ant) or
         (mVenda_GP.mPd_EstTerc<>mEstTerc_ant) or
         (mVenda_GP.mPd_EstVenda<>mEstVenda_ant))   then
         begin
         mped_Alterou_Cab:=true;
         if (not Tb_Ped02_pre.IsEmpty)  then
            mVenda_GP.mPed1_AjustaFP:='N';
         RecalcularSubMod(mSubMOd_ant,mVenda_GP.mped1_submod,mVenda_GP.mped1_formace,mVenda_GP.mped1_formace
                      ,mEstNor_ant
                      ,mEstCons_ant
                      ,mEstTerc_ant
                      ,mEstVenda_ant
                      ,mVenda_GP.mPd_EstNor
                      ,mVenda_GP.mPd_EstCons
                      ,mVenda_GP.mPd_EstTerc
                      ,mVenda_GP.mPd_EstVenda
                      );

         mEstNor_ant       :=mVenda_GP.mPd_EstNor;
         mEstCons_ant      :=mVenda_GP.mPd_EstCons;
         mEstTerc_ant      :=mVenda_GP.mPd_EstTerc;
         mEstVenda_ant     :=mVenda_GP.mPd_EstVenda;
         end;

      end;

   if (mant_tipoped<>mped1_tpPed) then
      begin
//      if cb_tppco.ItemIndex=2 then
         fAjustarItensPed(false);
//      else
//         fAjustarItensPed(true);
      end;
   end;

mEventoPendente:='';
if mped1_tpPed=8 then
   begin
   Ts_TabRefDev.TabVisible:=true;
   pcCabecalho.ActivePage:=Ts_TabRefDev;
   DBGrid_RefDev.SetFocus;
   if (not mlocalizando_pedido) and (sbnGravar.Enabled) then
      FAjustarDevCli(1,mVenda_GP.mPed1_CodCli);
   end
else
   begin
   Ts_TabRefDev.TabVisible:=false;
   end;

if mped1_tpPed=3 then
  begin
  DBE_ICMS_PPRED.ReadOnly    :=False;
  DBE_ICMS_PERC.ReadOnly     :=False;
  rxdbcb_modbcst.ReadOnly    :=False;
  DBE_ST_IVA.ReadOnly        :=False;
  DBE_PRECO_MAXCONS.ReadOnly :=False;
  DBE_ST_REDUT.ReadOnly      :=False;
  DBEST_ICMSDEB.ReadOnly     :=False;
  DBE_ST_ICMSCRED.ReadOnly   :=False;
  DBE_CST_IPI.ReadOnly       :=False;
  DBE_CSOSN.ReadOnly         :=False;
  DBE_ICMSSN_PERC.ReadOnly   :=False;
  end
else
  begin
  DBE_ICMS_PPRED.ReadOnly    :=True;
  DBE_ICMS_PERC.ReadOnly     :=True;
  rxdbcb_modbcst.ReadOnly    :=True;
  DBE_ST_IVA.ReadOnly        :=True;
  DBE_PRECO_MAXCONS.ReadOnly :=True;
  DBE_ST_REDUT.ReadOnly      :=True;
  DBEST_ICMSDEB.ReadOnly     :=True;
  DBE_ST_ICMSCRED.ReadOnly   :=True;
  DBE_CST_IPI.ReadOnly       :=True;
  DBE_CSOSN.ReadOnly         :=True;
  DBE_ICMSSN_PERC.ReadOnly   :=True;
  end;


if mped1_tpPed=0 then
   begin
   Label3.Visible    :=false;
   cb_forma.Visible  :=false;
   Label4.Visible    :=false;
   edt_submod.Visible:=false;
   end
else
   begin
   Label3.Visible    :=true;
   cb_forma.Visible  :=true;
   Label4.Visible    :=true;
   edt_submod.Visible:=true;
   end;
end;

function tFrm_Venda_Pre_Farma.fTestaEstoque(pTipo: Integer): Boolean;
var
form_ocorrencias: TFrm_Ocorrencias;
mQtdComEst,mQtdSemEst: Integer;
mte_estnor_ant,mte_estcons_ant,mte_estterc_ant,mte_est_venda: string;

Query_Ped02_Temp: TQuery;

Query_Del_Item: TQuery;
begin

Query_Ped02_Temp:=TQuery.Create(nil);
Query_Ped02_Temp.DatabaseName:='SG_ASSOC';


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');


Query_Ped02_Temp.Close;
Query_Ped02_Temp.SQL.Clear;
Query_Ped02_Temp.SQL.Add('select P2ITEM,P2CODPRO ');
if mVenda_GP.mped1_formace=0 then
   begin

   Query_Ped02_Temp.SQL.Add(', case(max(pdfracao)) when 0 then sum(round(P2QTD)) '
                           +'  else sum(round(P2QTD,'+DM1.Tb_PargerPCASQTD.AsString+')) end as P2QTD '

                    +',sum(round(P2QTD*P2PRECO,2)) AS VALOR_TOTAL '
                    +',max(P2PCOTAB) AS P2PRECO_TAB'
                    +',max(P2UCPR) AS  P2PRECO_UCPR '
                    +',max(P2PCOCUS) AS P2PRECO_CUS '
                    +',max(P2PCOMAX) AS P2PRECO_MAXCONS '
                    +',max(P2PRECO) as P2PRECO ');
   end
else
   begin
   Query_Ped02_Temp.SQL.Add(', case(max(pdfracao)) when 0 then max(round(P2QTD)) '
                           +'  else max(round(P2QTD,'+DM1.Tb_PargerPCASQTD.AsString+')) end as P2QTD '

//   max(P2QTD) as P2QTD '
                    +',sum(round(P2QTD*P2PRECO,2)) AS VALOR_TOTAL '
                    +',sum(P2PCOTAB) AS P2PRECO_TAB'
                    +',sum(P2UCPR) AS  P2PRECO_UCPR '
                    +',sum(P2PCOCUS) AS P2PRECO_CUS '
                    +',sum(P2PCOMAX) AS P2PRECO_MAXCONS '
                    +',sum(P2PRECO) as P2PRECO ');

   end;

Query_Ped02_Temp.SQL.Add(',max(P2DESC1) AS P2DESC_PERC01 '
                    +',max(P2DESC2) AS P2DESC_PERC02 '
                    +',max(P2DESC3) AS P2DESC_PERC03 '
                    +',max(P2SIT) AS P2CST '
                    +',max(P2CSOSN) as P2CSOSN '
                    +',max(P2CFO) AS P2CFOP_NF '
                    +',max(P2CFOSUBECF) AS P2CFOP_ECF '
                    +',max(P2COMPLEMENTO) AS P2DESC_COMP '
                    +',max(P2CSOSN_ORI) as P2CSOSN_ORI '
                    +',max(P2CONS_PROPRIO) as P2CONS_PROPRIO '
                    +',max(P2PCRED_SN) as P2ICMSSN_PERC '
                    +',max(P2MODBCST) as P2MODBCST '
                    +',max(P2ST_IVA ) as P2ST_IVA '
                    +',max(P2ST_REDUT) as P2ST_REDUT '
                    +',max(P2ST_ICMCRED) as P2ST_ICMSCRED '
                    +',max(P2ST_ICMDEB) AS P2ST_ICMSDEB '
                    +',max(P2ALIPI) AS P2IPI_PERC '
                    +',max(P2ALIQ) AS P2ICMS_PERC '
                    +',max(P2ALIQICMSDES) AS P2ICMS_DESPERC '
                    +',max(P2ALIQAPROXTRIB) AS P2ALIQAPROXTRIB '
                    +',max(P2REDUTICM) AS P2ICMS_PPRED'
                    +',max(P2ALCOFINS) as P2COFINS_PERC '
                    +',max(P2ALPIS) AS P2PIS_PERC '
                    +',max(P2ALIPI) as P2ALIPI '
                    +',max(P2CST_PIS) as P2CST_PIS '
                    +',max(P2CST_COFINS) as P2CST_COFINS '
                    +',max(P2CST_IPI) as P2CST_IPI '
                    +',max(P2CODVEN) as P2CODVEN '
                    +',max(P2AMBIENTE ) as P2AMBIENTE'
                    +',max(P2PDESCF) AS P2DESCFIN_PERC '
                    +',max(PDNOME) as PDNOME '
                    +',max(PDMARCA) as PDMARCA '
                    +',max(PDUND) as PDUND '
                    +',max(P2CONTESP) as P2CONTESP '
                    +',max(P2PROMOCAO) as P2PROMOCAO '
                    +',max(P2DESCPR) as P2DESCPR FROM '
                    +' cadp02'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_instrucao='','',la_instrucao+' and ')
                    +' (P2CODEMP=:CODEMP_MENOR or P2CODEMP=:CODEMP_MAIOR ) '
                    +' and   P2CHAVE=:CHAVE'
                    +' and   P2LOTSEQ=:CHAVE_ANO'
                    +' and   P2ORDEM=:ORDEM '
                    +' group by P2ITEM,P2CODPRO '
                    +'  order by P2ITEM ');
Query_Ped02_Temp.ParamByName('CODEMP_MENOR').AsInteger   :=mVenda_GP.mPed1_Codemp_ini;
Query_Ped02_Temp.ParamByName('CODEMP_MAIOR').AsInteger   :=mVenda_GP.mPed1_Codemp_fin;


Query_Ped02_Temp.ParamByName('CHAVE').AsInteger    :=mVenda_GP.mped1_Chave;
Query_Ped02_Temp.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_Ped02_Temp.ParamByName('ORDEM').AsInteger    :=1;
try
   Query_Ped02_Temp.Open;
except
   fMensagem('Campo Inexistente: '+FTestarCampos(Query_Ped02_Temp,['CADP02','CADPRO']),0,['0'],0);
   Query_Ped02_Temp.SQL.SaveToFile('c:\sql.txt');

   if not fVerificaRedeAtiva(true) then
      begin
      end
   else
      begin
//      ex_erroSql_Novo(Query_Ped02_Temp,2312,'_lerarq','paf_cadp02_pre');
      end;
   end;


mte_estnor_ant := mVenda_GP.mPd_EstNor;
mte_estcons_ant:= mVenda_GP.mPd_EstCons;
mte_estterc_ant:= mVenda_GP.mPd_EstTerc;
mte_est_venda  := mVenda_GP.mPd_EstVenda;


mVenda_GP.mPd_EstNor  :='N';
mVenda_GP.mPd_EstCons :='N';
mVenda_GP.mPd_EstTerc :='N';
mVenda_GP.mPd_EstVenda:='N';



Application.CreateForm(TFrm_Ocorrencias, form_ocorrencias);
form_ocorrencias.ListView1.Clear;


Query_Ped02_Temp.First;
mQtdComEst:=0;
mQtdSemEst:=0;
While not Query_Ped02_Temp.Eof do
   begin

   form_venda_pesqprod.Qr_Pro.Filtered:=false;
   if mVenda_GP.mped1_Filial > 0 then
     form_venda_pesqprod.pFilial:=mVenda_GP.mped1_Filial
   else
     form_venda_pesqprod.pFilial:=1;   
   form_venda_pesqprod.pFilial_Desc:=CB_FILIAL.Text;


//   if (not form_venda_pesqprod.Qr_Pro.Active) or (Query_Ped02_TempP2CODPRO.Value<>form_venda_pesqprod.Qr_ProPDCODPRO.Value) then
      form_venda_pesqprod.flcadpro_Local(1,1,codemp,Query_Ped02_Temp.fieldbyName('P2CODPRO').AsString,'','');




   if form_venda_pesqprod.Qr_Prosaldo_filial_disponivel.AsFloat<Query_Ped02_Temp.fieldbyName('P2QTD').asfloat  then
      begin
      If form_venda_pesqprod.Qr_Prosaldo_filial_disponivel.AsFloat<=0 then
         mQtdSemEst:=mQtdSemEst+1
      else
         mQtdComEst:=mQtdComEst+1;

      Form_Ocorrencias.adicionaItemListView('Produto '+form_venda_pesqprod.Qr_ProPDNOME.AsString+' - '
                                          +form_venda_pesqprod.Qr_ProPDMARCA.AsString+' - '
                                          +form_venda_pesqprod.Qr_ProPDCODPRO.AsString+' Quantidade Pedida '+
                                          FormatFloat(mcasqtd, Query_Ped02_Temp.fieldbyName('P2QTD').AsFloat)
                                          +' Estoque '+CB_FILIAL.Text+': '+
                                          FormatFloat(mcasqtd,  form_venda_pesqprod.Qr_Prosaldo_filial_disponivel.asfloat)
                                          +' Geral: '+ FormatFloat(mcasqtd,  form_venda_pesqprod.Qr_Proestoque.AsFloat));
      Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=3;
      Form_Ocorrencias.mErros:=true;
      end
   else
      mQtdComEst:=mQtdComEst+1;

   Query_Ped02_Temp.Next;
   end;
if Form_Ocorrencias.mErros then
   begin
   result:=false;
   if mQtdComEst=0 then
      form_ocorrencias.lbl_ocorrencia.Caption:='Não sera possível mudar o tipo do pedido devido as inconsistencias abaixo'
   else
      begin
      form_ocorrencias.lbl_ocorrencia.Caption:='Não sera possível Faturar todos os itens. Click em continuar para faturar os que tem estoque deixando o restante como pendencia, ou em fechar para não faturar';
      form_ocorrencias.bbContinuar.visible:=true;
      form_ocorrencias.bbFechar.left:=form_ocorrencias.listview1.left;
      end;
   Form_Ocorrencias.ShowModal;
   if form_ocorrencias.mresposta=1 then
      begin
      Query_Del_Item:=TQuery.create(nil);
      Query_Del_Item.databasename:='SG_ASSOC';

      Query_Ped02_Temp.First;
      While not Query_Ped02_Temp.Eof do
         begin
         form_venda_pesqprod.Qr_Pro.Filtered:=false;
         if mVenda_GP.mped1_Filial > 0 then
           form_venda_pesqprod.pFilial:=mVenda_GP.mped1_Filial
         else
           form_venda_pesqprod.pFilial:=1;
         form_venda_pesqprod.pFilial_Desc:=CB_FILIAL.Text;

         form_venda_pesqprod.flcadpro_Local(1,1,codemp,Query_Ped02_Temp.fieldbyName('P2CODPRO').AsString,'','');
         if form_venda_pesqprod.Qr_Prosaldo_filial_disponivel.asfloat<Query_Ped02_Temp.fieldbyName('P2QTD').asfloat  then
            begin
            if form_venda_pesqprod.Qr_Prosaldo_filial_disponivel.asfloat<=0 then
               begin
               Query_Del_Item.Close;;
               Query_Del_Item.SQL.Clear;
               Query_Del_Item.SQL.Add('Delete from CADP02 where (P2CODEMP=:CODEMP_MENOR or P2CODEMP=:CODEMP_MAIOR)'
                                     +' and P2CHAVE=:CHAVE '
                                     +' and P2LOTSEQ=:CHAVE_ANO '
                                     +' and P2ITEM=:ITEM ');
               Query_Del_Item.ParamByName('CODEMP_MENOR').AsInteger   :=mVenda_GP.mPed1_Codemp_ini;
               Query_Del_Item.ParamByName('CODEMP_MAIOR').AsInteger   :=mVenda_GP.mPed1_Codemp_fin;
               Query_Del_Item.ParamByName('CHAVE').AsInteger    :=mVenda_GP.mped1_Chave;
               Query_Del_Item.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
               Query_Del_Item.ParamByName('ITEM').AsInteger      :=Query_Ped02_Temp.fieldbyName('P2ITEM').AsInteger;
               try
                  Query_Del_Item.ExecSQL;
                  fdm1StartCommit;
               except
                  end;
               if Query_Ped02_Temp.FieldByName('P2CONTESP').AsInteger=1 then
                  begin
                  Query_Del_Item.Close;;
                  Query_Del_Item.SQL.Clear;
                  Query_Del_Item.SQL.Add('Delete from CADP02_CMET where '
                           + ' (P2CMET_CODEMP=:CODEMP_MENOR or P2CMET_CODEMP=:CODEMP_MAIOR)'
                                        +' and P2CMET_CHAVE=:CHAVE '
                                        +' and P2CMET_LOTSEQ=:CHAVE_ANO '
                                        +' and P2CMET_ITEM=:ITEM ');
                  Query_Del_Item.ParamByName('CODEMP_MENOR').AsInteger   :=mVenda_GP.mPed1_Codemp_ini;
                  Query_Del_Item.ParamByName('CODEMP_MAIOR').AsInteger   :=mVenda_GP.mPed1_Codemp_fin;
                  Query_Del_Item.ParamByName('CHAVE').AsInteger    :=mVenda_GP.mped1_Chave;
                  Query_Del_Item.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
                  Query_Del_Item.ParamByName('ITEM').AsInteger      :=Query_Ped02_Temp.fieldbyName('P2ITEM').AsInteger;
                  try
                     Query_Del_Item.ExecSQL;
                     fdm1StartCommit;
                  except
                     end;
                  end;
               end
            else
               begin
               Query_Del_Item.Close;;
               Query_Del_Item.SQL.Clear;
               Query_Del_Item.SQL.Add('Update CADP02 SET P2QTD=:QTD where (P2CODEMP=:CODEMP_MENOR or P2CODEMP=:CODEMP_MAIOR)'
                                     +' and P2CHAVE=:CHAVE '
                                     +' and P2LOTSEQ=:CHAVE_ANO '
                                     +' and P2ITEM=:ITEM ');
               Query_Del_Item.ParamByName('CODEMP_MENOR').AsInteger   :=mVenda_GP.mPed1_Codemp_ini;
               Query_Del_Item.ParamByName('CODEMP_MAIOR').AsInteger   :=mVenda_GP.mPed1_Codemp_fin;
               Query_Del_Item.ParamByName('CHAVE').AsInteger    :=mVenda_GP.mped1_Chave;
               Query_Del_Item.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
               Query_Del_Item.ParamByName('QTD').AsFloat        :=form_venda_pesqprod.Qr_Prosaldo_filial_disponivel.asfloat;
               Query_Del_Item.ParamByName('ITEM').AsInteger      :=Query_Ped02_Temp.fieldbyName('P2ITEM').AsInteger;
               try
                  Query_Del_Item.ExecSQL;
                  fdm1StartCommit;
               except
                  end;
               end;
            end;
         Query_Ped02_Temp.Next;
         end;
// renomear items
      Query_Del_Item.Close;;
      Query_Del_Item.SQL.Clear;
      Query_Del_Item.SQL.Add('UPDATE CADP02 PEDOF SET P2ITEM= '
                            +' (select ITEM FROM '
                            +' ((select MAX(ROWNUM) AS ITEM,P2CODPRO AS CODPRO FROM CADP02 PEDTEMP '
                            +' WHERE PEDTEMP.P2CHAVE=PEDOF.P2CHAVE '
                            +' AND PEDTEMP.P2ORDEM=PEDOF.P2ORDEM '
                            +' AND PEDTEMP.P2LOTSEQ=PEDOF.P2LOTSEQ '
                            +' AND PEDTEMP.P2CODPRO=PEDOF.P2CODPRO '
                            +' AND P2CHAVE=:CHAVE '
                            +' AND P2LOTSEQ=:CHAVE_ANO '
                            +' AND P2CODEMP=:CODEMP '
                            +' GROUP BY P2CODPRO) TABO2 ) '
                            +' WHERE CODPRO=PEDOF.P2CODPRO ) '
                            +' WHERE P2CHAVE=:CHAVE '
                            +' AND P2LOTSEQ=:CHAVE_ANO '
                            +' AND P2CODEMP=:CODEMP ');

      Query_Del_Item.ParamByName('CODEMP').AsInteger      :=mVenda_GP.mPed1_Codemp;
      Query_Del_Item.ParamByName('CHAVE').AsInteger    :=mVenda_GP.mped1_Chave;
      Query_Del_Item.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
      try
         Query_Del_Item.ExecSQL;
         fdm1StartCommit;
      except
         end;
      Query_Del_Item.Close;;
      Query_Del_Item.SQL.Clear;
      Query_Del_Item.SQL.Add('UPDATE CADP02_CMET SET P2CM_ITEM='
                            +' (select P2ITEM FROM CADP02 WHERE '
                            +' P2CODEMP=P2CM_CODEMP '
                            +' AND P2CHAVE=P2CM_CHAVE '
                            +' AND P2LOTSEQ=P2CM_LOTSEQ '
                            +' AND P2CODPRO=P2CM_CODPRO '
                            +' ) '
                            +' WHERE P2CM_CHAVE=:CHAVE '
                            +' AND P2CM_LOTSEQ=:CHAVE_ANO '
                            +' AND P2CM_CODEMP=:CODEMP ');
       Query_Del_Item.ParamByName('CODEMP').AsInteger      :=mVenda_GP.mPed1_Codemp;
       Query_Del_Item.ParamByName('CHAVE').AsInteger    :=mVenda_GP.mped1_Chave;
       Query_Del_Item.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
       try
          Query_Del_Item.ExecSQL;
          fdm1StartCommit;
       except
          end;

// termino renomeio dos itens




      fAbrirPed02_Pre(mVenda_GP.mPed1_Codemp_ini,mVenda_GP.mPed1_Codemp_fin,
                      mVenda_GP.mped1_Chave,mVenda_GP.mPed1_Chave_ano);
      result:=true;
      end;
   end
else
   result:=true;

mVenda_GP.mPd_EstNor  :=mte_estnor_ant;
mVenda_GP.mPd_EstCons :=mte_estcons_ant;
mVenda_GP.mPd_EstTerc :=mte_estterc_ant;
mVenda_GP.mPd_EstVenda:=mte_est_venda;

freeandnil(query_ped02_temp);

freeandnil(Form_Ocorrencias);
end;


function TFrm_Venda_Pre_Farma.fSomarFPgto(pTipo:Integer): Real;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select sum(PFPVALOR) from CADPFP '
                          +' where PFPCODEMP=:CODEMP '
                          +' and   PFPCHAVE=:CHAVE '
                          +' and   PFPLOTSEQ=:CHAVE_ANO ');
DM1.Query1.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp;
DM1.Query1.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
DM1.Query1.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
try
   DM1.Query1.Open;
   result:=DM1.Query1.Fields[0].AsFloat;
   if DM1.Query1.Fields[0].AsFloat>ValFloat(edt_totliq.Text) then
      begin
      lbl_restamFP.Caption:='Passam '+FormatFloat(mCasas,DM1.Query1.Fields[0].AsFloat-ValFloat(edt_totliq.Text));
      lbl_restamFP.Font.Color:=clRed;
      end
   else if DM1.Query1.Fields[0].AsFloat<ValFloat(edt_totliq.Text) then
      begin
      lbl_restamFP.Caption:='Restam '+FormatFloat(mCasas,ValFloat(edt_totliq.Text)-DM1.Query1.Fields[0].AsFloat);
      lbl_restamFP.Font.Color:=clWindowText;
      end
   else lbl_restamFP.Caption:='';
except
   result:=0;
   if not fVerificaRedeAtiva(true) then
      begin
      end
   else
      begin
      ex_erroSql_Novo(DM1.Query1,20210,'_lerarq','cadp01_pre');
      end;
  end;

end;

procedure TFrm_Venda_Pre_Farma.DBGrid_itensColEnter(Sender: TObject);
var
pRect:TRect;
begin


DBGrid_itens.Options := DBGrid_itens.Options + [dgEditing];
if DBGrid_itens.Columns[DBGrid_itens.SelectedIndex].FieldName = 'cons_proprio' then
  DBGrid_itens.Options := DBGrid_itens.Options - [dgEditing];

if sbnGravar.Enabled then
   begin
   if tb_ped02_pre.State in [dsEdit,dsInsert] then
      begin
      if (DBGrid_itens.SelectedField=Tb_Ped02_preP2DESC_PERC01) and (tb_ped02_preP2QTD.AsFloat=0) then
         begin
         DBGrid_itens.SelectedField:=tb_ped02_preP2QTD;
         DBGrid_itens.SetFocus;
         abort;
         end;
      if (DBGrid_itens.SelectedField=Tb_Ped02_preP2TIPO_PCO) then
          mTpPco_Ant:=Tb_Ped02_preP2TIPO_PCO.AsInteger;
      end;
//   GetWindowRect(DBGrid_itens.Handle,pRect);
//   if DBGrid_itens.SelectedField=tb_ped02_preP2CODPRO then
//      fApresentaHint( 'Digite o Codigo do Produto ou Pressione F2-p/Consultar',pRect.Top,pRect.Left);


//   if (cb_tppco.ItemIndex<>2) and
//      (DBGrid_itens.SelectedField=Tb_Ped02_preP2PRECO) then
//      Self.Perform(WM_NEXTDLGCTL,0,0);
//      proximo foco

   end;
//Label5.Caption:=Tb_Ped02_preP2QTD.AsString;
end;

procedure TFrm_Venda_Pre_Farma.DBGrid_itensColExit(Sender: TObject);
var
query_temp: TQuery;
query_arma: TQuery;
x_arma: Integer;
begin
{if Assigned(HintWindow) then
HintWindow.ReleaseHandle;
}
if tb_ped02_pre.State in [dsEdit,dsInsert] then
   begin
   if DBGrid_itens.SelectedField=tb_ped02_preP2QTD then
      begin
      if mVenda_GP.mped1_Filial > 0 then
         form_venda_pesqprod.pFilial:=mVenda_GP.mped1_Filial
      else
         form_venda_pesqprod.pFilial:=1;
      form_venda_pesqprod.pFilial_Desc:=CB_FILIAL.Text;

      if form_venda_pesqprod.Qr_ProPDCODPRO.AsFloat<>ValFloat(Tb_Ped02_preP2CODPRO.AsString) then
         form_venda_pesqprod.flcadpro_Local(1,1,codemp,tb_ped02_preP2CODPRO.AsString,'','');

      if form_venda_pesqprod.Qr_ProPDCONTESP.AsInteger=1 then
         begin
         if mQtd_Cmet<>tb_ped02_preP2QTD.asfloat then
            begin
            MessageDlg('Quantidade não pode ser diferente de '+FormatFloat(mcasqtd, mQtd_Cmet)
                      +#13+'para altera-la volte ao campo código para abrir janela de sub-produtos'
                      ,mtWarning,[mbOk],0);
            Tb_Ped02_preP2QTD.AsFloat:=mQtd_Cmet;
            end;
         end;

      if tb_ped02_preP2QTD.asfloat<>0 then
         begin

         if form_venda_pesqprod.Qr_ProPDCONTESP.AsInteger=5 then
            begin
            mProcessando_SubProduto:=true;
            if form_arma=nil then
               Application.CreateForm(TFrm_Venda_Pre_Armas, form_arma);
            form_arma.Panel_item.Caption:=Tb_Ped02_prePDNOME.AsString+' ['+Tb_Ped02_preP2CODPRO.AsString+']';
            if mVenda_GP.mped1_Chave=0 then
               fGravarPed01(0);

            form_arma.pCodPro:=ValFloat(Tb_Ped02_preP2CODPRO.AsString);
            form_arma.pItem  :=Tb_Ped02_preP2ITEM.AsInteger;
            form_arma.pChave    :=mVenda_GP.mped1_Chave;
            form_arma.pChave_Ano:=mVenda_GP.mPed1_Chave_ano;
            form_arma.pCodemp   :=mVenda_GP.mPed1_Codemp_ini;
            form_arma.pCodemp_filial:=mVenda_GP.mPed1_Codemp_fin;
            form_arma.pQtd:=Tb_Ped02_preP2QTD.Value;

            query_temp:=TQuery.create(nil);
            query_temp.DatabaseName:='SG_ASSOC';
            query_temp.Close;
            query_temp.SQL.Clear;
            query_temp.SQL.Add('Delete from CADP02_ARMAS '
                              +'  where  P2ARMA_LOTSEQ=:LOTSEQ '
                              +'  and P2ARMA_CHAVE=:CHAVE '
                              +'  and P2ARMA_CODPRO=:CODPRO '
                              +'  and P2ARMA_CODEMP=:CODEMP '
                              +'  and P2ARMA_ITEM=:ITEM '
                              +'  and P2ARMA_SEQ>:QTD '
                              );
            query_temp.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave;
            query_temp.ParamByName('CHAVE').AsInteger :=mVenda_GP.mPed1_Chave;
            query_temp.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp;
            query_temp.ParamByName('CODPRO').AsFloat  :=Tb_Ped02_preP2CODPRO.AsFloat;
            query_temp.ParamByName('ITEM').AsFloat    :=Tb_Ped02_preP2ITEM.AsInteger;
            query_temp.ParamByName('QTD').AsFloat     :=Tb_Ped02_preP2QTD.Asfloat;
            try
               query_temp.ExecSQL;
               fdm1StartCommit;
            except
               end;


            query_arma:=TQuery.create(nil);
            query_arma.DatabaseName:='SG_ASSOC';
            query_arma.Close;
            query_arma.SQL.Clear;
            query_arma.SQL.Add('Select * from CADP02_ARMAS '
                              +'  where  P2ARMA_LOTSEQ=:LOTSEQ '
                              +'  and P2ARMA_CHAVE=:CHAVE '
                              +'  and P2ARMA_CODPRO=:CODPRO '
                              +'  and P2ARMA_CODEMP=:CODEMP '
                              +'  and P2ARMA_ITEM=:ITEM '
                              +'  order by P2ARMA_SEQ ');
            query_arma.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
            query_arma.ParamByName('CHAVE').AsInteger :=mVenda_GP.mped1_Chave;
            query_arma.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp;
            query_arma.ParamByName('CODPRO').AsFloat  :=Tb_Ped02_preP2CODPRO.AsFloat;
            query_arma.ParamByName('ITEM').AsFloat    :=Tb_Ped02_preP2ITEM.AsInteger;
            try
               query_arma.Open;
            except
               end;
            for x_arma:=1 to Tb_Ped02_preP2QTD.AsInteger do
               begin
               if not query_arma.Locate('P2ARMA_SEQ',x_arma,[]) then
                  begin
                  query_temp.Close;
                  query_temp.SQL.Clear;
                  query_temp.SQL.Add('Insert into CADP02_ARMAS ('
                                    +' P2ARMA_LOTSEQ'
                                    +',P2ARMA_CHAVE'
                                    +',P2ARMA_CHAVE_NIVEL'
                                    +',P2ARMA_CODPRO'
                                    +',P2ARMA_CODEMP'
                                    +',P2ARMA_ITEM'
                                    +',P2ARMA_SEQ '
                                    +',P2ARMA_TPARMA '
                                    +') values ( '
                                    +' :P2ARMA_LOTSEQ'
                                    +',:P2ARMA_CHAVE'
                                    +',:P2ARMA_CHAVE_NIVEL'
                                    +',:P2ARMA_CODPRO'
                                    +',:P2ARMA_CODEMP'
                                    +',:P2ARMA_ITEM'
                                    +',:P2ARMA_SEQ '
                                    +',:P2ARMA_TPARMA '
                                    +')');
                  query_temp.ParamByName('P2ARMA_LOTSEQ').AsInteger      :=mVenda_GP.mPed1_Chave_ano;
                  query_temp.ParamByName('P2ARMA_CHAVE').AsInteger       :=mVenda_GP.mped1_Chave;
                  query_temp.ParamByName('P2ARMA_CHAVE_NIVEL').AsInteger :=0;
                  query_temp.ParamByName('P2ARMA_CODEMP').AsInteger      :=mVenda_GP.mPed1_Codemp;
                  query_temp.ParamByName('P2ARMA_CODPRO').AsFloat        :=Tb_Ped02_preP2CODPRO.AsFloat;
                  query_temp.ParamByName('P2ARMA_ITEM').AsFloat          :=Tb_Ped02_preP2ITEM.AsInteger;
                  query_temp.ParamByName('P2ARMA_SEQ').AsInteger         :=x_arma;
                  query_temp.ParamByName('P2ARMA_TPARMA').AsInteger      :=0;
                  try
                     query_temp.ExecSQL;
                     fdm1StartCommit;
                  except
                     end;
                  end;
               end;


            form_arma.fLerArmas(0);
            form_arma.ShowModal;
            DBGrid_itens.SelectedField:=Tb_Ped02_preP2DESC_PERC01;
            DBGrid_itens.SetFocus;
            FreeAndNil(query_temp);
            FreeAndNil(query_arma);
            mProcessando_SubProduto:=false;
            end;
// inicio

          if DM1.Tb_PargerPDQPCOP.AsInteger=4 then
             begin
             if (form_venda_pesqprod.Qr_ProPDEMBPAD.AsFloat>0) and (Tb_Ped02_preP2QTD.AsFloat>=form_venda_pesqprod.Qr_ProPDEMBPAD.AsFloat) then
                begin
                Tb_Ped02_preP2TIPO_PCO.Value:=2;
                fPegarPrecoProd(0);
                end
             else
                begin
                if form_venda_pesqprod.Qr_ProPDEMBPAD.AsFloat>0 then
                  Tb_Ped02_preP2TIPO_PCO.Value:=1
                else
                  begin
                  Tb_Ped02_preP2TIPO_PCO.Value:=valint(mVenda_GP.mPed1_Tabela);
                  if (Tb_Ped02_preP2TIPO_PCO.AsInteger<1) or (Tb_Ped02_preP2TIPO_PCO.AsInteger>3) then
                     Tb_Ped02_preP2TIPO_PCO.AsInteger:=1;
                  end;
                end;
             end;

// termino

         end;
      end

  else if DBGrid_itens.SelectedField=Tb_Ped02_preP2PRECO then
      begin
      if form_venda_pesqprod.Qr_ProPDCONTESP.AsInteger=1 then
         begin
         if  (mPreco_ant<>0) and (Arredonda(mPreco_ant,2)<>Arredonda(Tb_Ped02_preP2PRECO.AsFloat,2)) then
            Tb_Ped02_preP2PRECO.AsFloat:=mPreco_ant
         else
            begin
            if (mPreco_ant<>0) and (Arredonda(mPreco_ant,2)<>Arredonda(Tb_Ped02_preP2PRECO.AsFloat,2)) and (mped1_tpPed<>3) then
               begin
               if fValidaSenha(0,codusr,63,0,ValFloat(Tb_Ped02_preP2CODPRO.AsString),0,0,0,'Senha para Alterar o Preço do Produto','')<>0 then
                  begin
                  Tb_Ped02_preP2PRECO.AsFloat:=mPreco_ant;
                  abort;
                  exit;
                  end;
               end;
            end;
         end;
      end
   else if DBGrid_itens.SelectedField=tb_ped02_preP2CODPRO then
      begin
      Tb_Ped02_preP2CODPRO.AsString:=fSeparaQtdCodpro(Tb_Ped02_preP2CODPRO.AsString,cb_leitor.Checked);
      if (Valfloat(mCodpro_Ant)<>Valfloat(Tb_Ped02_preP2CODPRO.AsString)) and (pRet_Qtd<>0)
         or (Tb_Ped02_preP2QTD.AsFloat<=0) then
         begin
         Tb_Ped02_preP2QTD.AsFloat:=pRet_Qtd;
         Tb_Ped02_preP2TIPO_PCO.Value:=valint(mVenda_GP.mPed1_Tabela);
         if (Tb_Ped02_preP2TIPO_PCO.AsInteger<1) or (Tb_Ped02_preP2TIPO_PCO.AsInteger>3) then
            Tb_Ped02_preP2TIPO_PCO.AsInteger:=1;
         end;

      if not fValidarDigitacaoItem then
         begin
         DBGrid_itens.SelectedField:=tb_ped02_preP2CODPRO;
         DBGrid_itens.SetFocus;
         abort;
         end;
      if (mVenda_GP.mped1_Chave<>0) and ((trim(mCodpro_Ant)='')) or (mCodpro_Ant<>Tb_Ped02_preP2CODPRO.AsString)  then
         begin
         if fFoiDigitado(0) then
            begin
            abort;
            exit;
            end;
         end;

      if form_venda_pesqprod.Qr_ProPDCONTESP.AsInteger=1 then
         begin
         mProcessando_SubProduto:=true;
         if form_cmet=nil then
            Application.CreateForm(TFrm_Venda_Pre_CMET, form_cmet);
         form_cmet.Panel_item.Caption:=Tb_Ped02_prePDNOME.AsString+' ['+Tb_Ped02_preP2CODPRO.AsString+']';
         if mVenda_GP.mped1_Chave=0 then
            fGravarPed01(0);

         form_cmet.pCodPro:=ValFloat(Tb_Ped02_preP2CODPRO.AsString);
         form_cmet.pItem  :=Tb_Ped02_preP2ITEM.AsInteger;
         form_cmet.pConstante:=form_venda_pesqprod.Qr_ProPDCMET_CONSTANTE.AsFloat;
         form_cmet.pEspessura:=form_venda_pesqprod.Qr_ProPDCMET_BITOLA.AsFloat;
         form_cmet.pChave    :=mVenda_GP.mped1_Chave;
         form_cmet.pChave_Ano:=mVenda_GP.mPed1_Chave_ano;
         form_cmet.pCodemp   :=mVenda_GP.mPed1_Codemp_ini;
         form_cmet.pCodemp_filial:=mVenda_GP.mPed1_Codemp_fin;
         form_cmet.fLerCMet(0);
         form_cmet.ShowModal;
         Tb_Ped02_preP2QTD.Value:=ValFloat(form_cmet.lbl_qtdund.Caption);
         mQtd_Cmet:=Tb_Ped02_preP2QTD.Value;

         Tb_Ped02_preP2PRECO.Value:=ValFloat(form_cmet.lbl_pcouni_medio.Caption);
         mPreco_ant :=Tb_Ped02_preP2PRECO.AsFloat;
         if Tb_Ped02_PreP2QTD.AsFloat=0 then
            DBGrid_itens.SelectedField:=Tb_Ped02_preP2CODPRO
         else
            DBGrid_itens.SelectedField:=Tb_Ped02_preP2QTD;
         DBGrid_itens.SetFocus;
         mProcessando_SubProduto:=false;
         end;


     if cb_leitor.Checked then
        begin
        DBGrid_itens.SelectedField:=Tb_Ped02_preP2PRECO;
        DBGrid_itensColExit(self);
        keybd_event(VK_RETURN,0,0,0);
        end;
      end
   else if DBGrid_itens.SelectedField=Tb_Ped02_preP2TIPO_PCO then
      begin


      if (Tb_Ped02_preP2TIPO_PCO.AsInteger<1) or (Tb_Ped02_preP2TIPO_PCO.AsInteger>3) then
         begin
         Tb_Ped02_preP2TIPO_PCO.Value:=valint(mVenda_GP.mPed1_Tabela);
         end;

      if (Tb_Ped02_preP2TIPO_PCO.AsInteger<1) or (Tb_Ped02_preP2TIPO_PCO.AsInteger>3) then
          Tb_Ped02_preP2TIPO_PCO.AsInteger:=1;

      if mTpPco_Ant<>Tb_Ped02_preP2TIPO_PCO.AsInteger then
         fPegarPrecoProd(0);
      end
   else if (DBGrid_itens.SelectedField=Tb_Ped02_preP2DESC_PERC01) and (mVenda_GP.mped1_tppco=3) then
      begin
      Tb_Ped02_preP2PRECO.AsFloat := Arredonda(Tb_Ped02_preP2PRECO_TAB.AsFloat * (1-Tb_Ped02_preP2DESC_PERC01.AsFloat/100),2);
//      fPegarPrecoProd(0);
      mPcoItem_ant:=Tb_Ped02_preP2PRECO.AsFloat;
      end;

   if (tb_ped02_preP2QTD.AsFloat>0) and (tb_ped02_preP2PRECO.AsFloat>0) then
      tb_ped02_preVALOR_TOTAL.AsFloat:=tb_ped02_preP2QTD.AsFloat*tb_ped02_preP2PRECO.AsFloat
   else
      tb_ped02_preVALOR_TOTAL.AsFloat:=0;

   end;

end;


function tFrm_Venda_Pre_Farma.fValidarDigitacaoItem: Boolean;
var
  mTabIcm,mCst,mCsoSN: String;
  mCsoSN_Ori: Integer;
  pCodPro: String;
  SQLQuery: TQuery;
begin
result:=true;
if tb_ped02_preP2CODPRO.AsString='' then
   begin
   result:=false;
   exit;
   end
else
   begin
   form_venda_pesqprod.Qr_Pro.Filtered:=false;
   form_venda_pesqprod.pFilial:=mVenda_GP.mped1_Filial;
   form_venda_pesqprod.pFilial_Desc:=CB_FILIAL.Text;

   pCodPro:=FloatToStr(fAchaCodigoOri(tb_ped02_preP2CODPRO.AsString));
   if ValFloat(pCodPro)>0 then
     tb_ped02_preP2CODPRO.AsString:=pCodPro;
//   ShowMessage(FloatToStr(pCodPro));
//   ShowMessage(FloatToStr(pRet_Qtd));
//   pRet_Qtd

   if form_venda_pesqprod.flcadpro_Local(1,1,codemp,tb_ped02_preP2CODPRO.AsString,'','') then
      begin
      edt_NomPro.Text:=form_venda_pesqprod.Qr_ProPDNOME.AsString;
      edt_pco1.Text:=FormatFloat('#,##0.00',form_venda_pesqprod.Qr_ProPDPRECO1.AsFloat);
      edt_pco2.Text:=FormatFloat('#,##0.00',form_venda_pesqprod.Qr_ProPDPRECO2.AsFloat);
      edt_pco3.Text:=FormatFloat('#,##0.00',form_venda_pesqprod.Qr_ProPDPRECO3.AsFloat);

     if form_venda_pesqprod.Qr_ProPDSTATUS.Value=8 then
        begin
        MessageDlg('Produto Com Venda Bloqueada pelo Cadastro de Produto!',mtWarning,[mbOk],0);
        result := False;
        exit;
        end;

      st_estpro.Caption:='Produto '+form_venda_pesqprod.Qr_ProPDNOME.Value+' '
                     +form_venda_pesqprod.Qr_ProPDMARCA.Value
                    +' '+form_venda_pesqprod.Qr_ProPDUND.Value
                    +' Estoque Atual '+CB_FILIAL.Text+FormatFloat(mcasqtd, form_venda_pesqprod.Qr_Prosaldo_filial_disponivel.asfloat)
                    +' Geral '+ FormatFloat(mcasqtd, form_venda_pesqprod.Qr_ProPDSALDO.AsFloat)
                    +' '+IntTosTr(Tb_Ped02_pre.RecNo);

      if form_venda_pesqprod.Qr_Proqtd_analise.AsFloat>0 then
         st_estpro.Caption:=st_estpro.Caption+' Em Analise '+ FormatFloat(mcasqtd, form_venda_pesqprod.Qr_Proqtd_analise.AsFloat);


      tb_ped02_prePDNOME.Value :=form_venda_pesqprod.Qr_ProPDNOME.Value;
      tb_ped02_prePDMARCA.Value :=form_venda_pesqprod.Qr_ProPDMARCA.Value;
      tb_ped02_prePDUND.Value  :=form_venda_pesqprod.Qr_ProPDUND.Value;

//      flcadpro(1,0,codemp,Tb_Ped02_preP2CODPRO.AsString);
      flcadGPro(1,0,form_venda_pesqprod.Qr_ProPDCODGRU.AsString);
      if mPed_PVTPD1=3 then
         begin
         if Tb_Ped02_preP2DESC_PERC01.AsFloat=0 then
              Tb_Ped02_preP2DESC_PERC01.AsFloat:=DM1.Tb_GproGRPERCDESC.AsFloat;
         end
      else if mPed_PVTPD1=2 then
         begin
         if Tb_Ped02_preP2DESC_PERC01.AsFloat=0 then
            Tb_Ped02_preP2DESC_PERC01.AsFloat:=mped_Cli_Desc01;
         end;

      if (mVenda_GP.mped1_tppco=2) then
        begin
        if (((Tb_Ped02_preP2PRECO.AsFloat=0) or (FSonumero(mCodpro_Ant)<>ValFloat(Tb_Ped02_preP2CODPRO.AsString))) and (not mGravando_Encomenda)) then
          fPegarPrecoProd(0)
        end
      else
        fPegarPrecoProd(0);


      if mVenda_GP.mPed1_TpComis=10 then
        Tb_Ped02_preP2PCOMIS.AsFloat:=DM1.Tb_GproGRPERCCOMIS.AsFloat;


      if mPed_UF_Cli=DM1.Tb_EmpUF.AsString then
         begin
         if mPed_Cli_ConsFin then
            begin
            mCst      :=form_venda_pesqprod.Qr_ProPDFIS_ORIGEM.Value+form_venda_pesqprod.Qr_ProPDFIS_CST_ICMS_EST_CF.AsString;
            mCsoSN_Ori:=valint(form_venda_pesqprod.Qr_ProPDFIS_ORIGEM.AsString);
            mCsoSN    :=form_venda_pesqprod.Qr_ProPDFIS_CSOSN_EST_CF.Value;
            end
         else
            begin
            mCst:=form_venda_pesqprod.Qr_ProPDFIS_ORIGEM.Value+form_venda_pesqprod.Qr_ProPDFIS_CST_ICMS_EST_REV.AsString;
            mCsoSN_Ori:=valint(form_venda_pesqprod.Qr_ProPDFIS_ORIGEM.AsString);
            mCsoSN    :=form_venda_pesqprod.Qr_ProPDFIS_CSOSN_EST_REV.Value;
            end;
         end
      else
         begin
         if mPed_Cli_ConsFin then
            begin
            mCst   := form_venda_pesqprod.Qr_ProPDFIS_ORIGEM.Value+form_venda_pesqprod.Qr_ProPDFIS_CST_ICMS_INT_CF.AsString;
            mCsoSN_Ori:=valint(form_venda_pesqprod.Qr_ProPDFIS_ORIGEM.AsString);
            mCsoSN    :=form_venda_pesqprod.Qr_ProPDFIS_CSOSN_INT_CF.Value;
            end
         else
            begin
            mCst   := form_venda_pesqprod.Qr_ProPDFIS_ORIGEM.Value+form_venda_pesqprod.Qr_ProPDFIS_CST_ICMS_INT_REV.AsString;
            mCsoSN_Ori:=valint(form_venda_pesqprod.Qr_ProPDFIS_ORIGEM.AsString);
            mCsoSN    :=form_venda_pesqprod.Qr_ProPDFIS_CSOSN_INT_REV.Value;
            end;
         end;

      if (mPed_Cli_ST=False) then //and (mPed_Cli_icmsnr=true) then
        begin
        if mCst='010' then
          mcst:='000';
        if mCsoSN[1]='2' then
          mCsoSN:='1'+Copy(mCsoSN,2,2);
//        else if (mPed_Cli_ST=False) and (mPed_Cli_Repass=True) then
//          mcst='010';
        end
      else
        begin
        if mPed_Cli_icmsnr then
            mCsoSN:='900';
        end;

      if mPed1_CliCalcIPI then
         Tb_Ped02_preP2IPI_PERC.Value:=form_venda_pesqprod.Qr_ProPDIPI.AsFloat;

// INICIO


   if (not DM6.Tb_CLFISCAL_UF.Active) or (mPed_UF_Cli<>DM6.Tb_CLFISCAL_UFCFUF.AsString) then
      flcadclfiscal_uf(0,0,mPed_UF_Cli);

    if DM6.Tb_CLFISCAL_UF.Locate('CFCLAS_FISCAL',form_venda_pesqprod.Qr_ProPDCLAS.AsString,[]) then
       begin
       if (mPed_Cli_ConsFin) then
          begin
          if trim(DM6.Tb_CLFISCAL_UFCFCST_CF.AsString) <> '' then
             mCst := DM6.Tb_CLFISCAL_UFCFCST_CF.Value
          else
             mCst := DM6.Tb_CLFISCAL_UFCFCST_RV.Value;
          end
       else
          mCst   := DM6.Tb_CLFISCAL_UFCFCST_RV.Value;
       end;

// TERMINO


      Tb_Ped02_preP2CST.Value:=mCst;

      Tb_Ped02_preP2CSOSN_ORI.Value  :=mCsoSN_Ori;
      Tb_Ped02_preP2CSOSN.Value      :=valint(mCsoSN);
      Tb_Ped02_preP2CST_PIS.Value    :=form_venda_pesqprod.Qr_ProPDFIS_CST_PISCOF_SAIDA.AsString;
      Tb_Ped02_preP2PIS_PERC.Value      :=form_venda_pesqprod.Qr_ProPDFIS_PIS_ALIQ_SAIDA.AsFloat;
      Tb_Ped02_preP2CST_COFINS.Value :=form_venda_pesqprod.Qr_ProPDFIS_CST_PISCOF_SAIDA.AsString;
      Tb_Ped02_preP2COFINS_PERC.Value   :=form_venda_pesqprod.Qr_ProPDFIS_COFINS_ALIQ_SAIDA.AsFloat;
      Tb_Ped02_preP2CONTESP.Value       :=form_venda_pesqprod.Qr_ProPDCONTESP.AsInteger;
//      mCst:=copy(FormatFloat('000', valint(mCst)),2,1);
      mTabIcm:=form_venda_pesqprod.Qr_ProPDTABICM.AsString;
      if trim(mTabIcm)='' then
         mTabIcm:='A';
      cds_aliquotas.Open;
      if not cds_aliquotas.Locate('tipo_reg;al_tabicm',vararrayof([0,mTabIcm]),[]) then
         mTabIcm:='A';
      if not cds_aliquotas.Locate('tipo_reg;al_tabicm',vararrayof([0,mTabIcm]),[]) then
         begin
         verteclado(0);
         MessageDlg('Não foi encontrado os Registros de tributações!',mtWarning,[mbOk],0);
         result:=false;
         exit;
         end;

      tb_ped02_preP2ICMS_PERC.AsFloat  :=0;
      Tb_Ped02_preP2ICMS_DESPERC.AsFloat :=0;
      Tb_Ped02_preP2ALIQAPROXTRIB.AsFloat :=0;

      tb_ped02_preP2ICMS_PPRED.AsFloat :=0;
      tb_ped02_preP2ICMSSN_PERC.AsFloat:=0;
      tb_ped02_preP2ST_IVA.AsFloat     :=0;
      tb_ped02_preP2ST_REDUT.AsFloat   :=0;
      tb_ped02_preP2ST_ICMSCRED.AsFloat:=0;
      tb_ped02_preP2ST_ICMSDEB.AsFloat :=0;
      tb_ped02_preP2MODBCST.AsInteger  :=0;

      tb_ped02_preP2ICMSSN_PERC.AsFloat:=0;

      if flcadCFTabIcm(1,0,form_venda_pesqprod.Qr_ProPDCLAS.AsString) then
        begin
        if DM1.TB_PROPDFIS_ORIGEM.AsInteger in [0,3,4,5] then
          if DM6.Tb_CFTabIcmCIVALAPROXNAC.AsFloat > 0 then
            Tb_Ped02_preP2ALIQAPROXTRIB.AsFloat := DM6.Tb_CFTabIcmCIVALAPROXNAC.AsFloat
        else
          if DM6.Tb_CFTabIcmCIVALAPROXIMP.AsFloat > 0 then
            Tb_Ped02_preP2ALIQAPROXTRIB.AsFloat := DM6.Tb_CFTabIcmCIVALAPROXIMP.AsFloat;
        end
      else
        Tb_Ped02_preP2ALIQAPROXTRIB.AsFloat := 0;



//      if mCst='4' then
   if ((mCst[2]='4') and (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [0,3]))
     or ((mCsoSN[1]='4') and (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1,2])) then
//       or ((mCsoSN[1]='5') and (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1,2])) then
      begin
      tb_ped02_preP2ICMSSN_PERC.AsFloat:=cds_aliquotasal_credsn.AsFloat;
      Tb_Ped02_preP2CFOP_ECF.Value:= cds_aliquotasCfo_SubEcf_Isento.AsInteger;
      tb_ped02_preP2ICMS_PERC.AsFloat  :=0;
      Tb_Ped02_preP2ICMS_DESPERC.AsFloat :=0;
//      if ((Tb_Ped02_preP2CONS_PROPRIO.AsInteger=1) or (form_venda_pesqprod.Qr_ProPDNIVEL.AsInteger=0)) then
      if ((form_venda_pesqprod.Qr_ProPDNIVEL.AsInteger=0) or (form_venda_pesqprod.Qr_ProPDNIVEL.AsInteger=1) or (mPed_Cli_ConsFin)) then
        tb_ped02_preP2CFOP_NF.Value:=cds_aliquotasCfo_Indus_Isento.AsInteger
      else
        tb_ped02_preP2CFOP_NF.Value:=cds_aliquotasCfo_rev_Isento.AsInteger;
//   else if ((mcst[2] in ['1','3','7']) and (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [0,3]))
//    or ((mCsoSN[1] in ['2','9']) and (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1,2])) then
      end
   else if ((mCst[2]='6') and (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [0,3]))
       or ((mCsoSN[1]='5') and (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1,2])) then
      begin
      tb_ped02_preP2ICMSSN_PERC.AsFloat:=cds_aliquotasal_credsn.AsFloat;
//      if ((Tb_Ped02_preP2CONS_PROPRIO.AsInteger=1) or (form_venda_pesqprod.Qr_ProPDNIVEL.AsInteger=0)) then
      if ((form_venda_pesqprod.Qr_ProPDNIVEL.AsInteger=0) or (form_venda_pesqprod.Qr_ProPDNIVEL.AsInteger=1) or (mPed_Cli_ConsFin)) then
        tb_ped02_preP2CFOP_NF.Value:=cds_aliquotasCfo_rev_Ret.AsInteger
      else
        tb_ped02_preP2CFOP_NF.Value:=cds_aliquotasCfo_Indus_Ret.AsInteger;
      Tb_Ped02_preP2CFOP_ECF.Value:= cds_aliquotasCfo_SubEcf_Ret.AsInteger;
      tb_ped02_preP2ICMS_PERC.AsFloat  :=0;
      Tb_Ped02_preP2ICMS_DESPERC.AsFloat :=0;

      end
   else if ((mcst[2] in ['1','3','7']) and (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [0,3]))
    or ((mCsoSN[1] in ['2','9']) and (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1,2])) then
         begin
//         if ((Tb_Ped02_preP2CONS_PROPRIO.AsInteger=1) or (form_venda_pesqprod.Qr_ProPDNIVEL.AsInteger=0)) then
      if ((form_venda_pesqprod.Qr_ProPDNIVEL.AsInteger=0) or (form_venda_pesqprod.Qr_ProPDNIVEL.AsInteger=1) or
           (mPed_Cli_ConsFin)) then
          tb_ped02_preP2CFOP_NF.Value:=cds_aliquotasCfo_Indus_Ret.AsInteger
      else
           tb_ped02_preP2CFOP_NF.Value:=cds_aliquotasCfo_rev_Ret.AsInteger;

         tb_ped02_preP2CFOP_ECF.Value:=cds_aliquotasCfo_SubEcf_Trib.AsInteger;
         Tb_Ped02_preP2ST_ICMSCRED.AsFloat  :=cds_aliquotasal_stIcmsCred.AsFloat;
         Tb_Ped02_preP2ST_ICMSDEB.AsFloat   :=cds_aliquotasal_stIcmsDeb.AsFloat;
         if form_venda_pesqprod.Qr_ProPDLISTA.AsInteger=2 then
            tb_ped02_preP2ST_IVA.AsFloat    :=cds_aliquotasal_stIVA_Neg.AsFloat
         else if form_venda_pesqprod.Qr_ProPDLISTA.AsInteger=1 then
            tb_ped02_preP2ST_IVA.AsFloat    :=cds_aliquotasal_stIVA_Pos.AsFloat
         else if form_venda_pesqprod.Qr_ProPDLISTA.AsInteger=0 then
            tb_ped02_preP2ST_IVA.AsFloat    :=cds_aliquotasal_stIVA_Ina.AsFloat;
         tb_ped02_preP2MODBCST.AsInteger    :=cds_aliquotasmodBcST.AsInteger;
         Tb_Ped02_preP2ST_REDUT.AsFloat   :=cds_aliquotasal_stAliqRed.AsFloat;
        if (mCsoSN[1]='9') or (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [0,3]) then
          tb_ped02_preP2ICMS_PERC.AsFloat  :=cds_aliquotasal_IcmsTrib.AsInteger;
         end
      else
         begin
  //       tb_ped02_preP2CFOP_NF.Value:=cds_aliquotasCfo_rev_Trib.AsInteger;

//        if ((Tb_Ped02_preP2CONS_PROPRIO.AsInteger=1) or (form_venda_pesqprod.Qr_ProPDNIVEL.AsInteger=0)) then
        if ((form_venda_pesqprod.Qr_ProPDNIVEL.AsInteger=0) or (form_venda_pesqprod.Qr_ProPDNIVEL.AsInteger=1) or (mPed_Cli_ConsFin)) then
          Tb_Ped02_preP2CFOP_NF.AsString        :=cds_aliquotasCfo_Indus_Trib.AsString
        else
          Tb_Ped02_preP2CFOP_NF.AsString        :=cds_aliquotasCfo_rev_Trib.AsString;
        tb_ped02_preP2CFOP_ECF.Value:=cds_aliquotasCfo_SubEcf_Trib.AsInteger;
//        tb_ped02_preP2ICMS_PERC.AsFloat  :=cds_aliquotasal_IcmsTrib.AsInteger;

        if (mPed_Cli_MotDes>0)  then
          begin
          if DM6.Tb_CFTabIcmCIDI.AsString='S' then
            begin
            Tb_Ped02_preP2ICMS_DESPERC.AsFloat :=cds_aliquotasal_IcmsTrib.AsInteger;
            tb_ped02_preP2ICMS_PERC.AsFloat    :=0;
            mCst                               :='040';
            Tb_Ped02_preP2CST.AsString         :='040';//pedido do rony
            mCsoSN                             :='102';
            Tb_Ped02_preP2CSOSN.AsString       :='102';
            end;
          end
        else
          Tb_Ped02_preP2ICMS_DESPERC.AsFloat   :=0;

         if mPed_UF_Cli=DM1.Tb_EmpUF.AsString then
            begin
            if form_venda_pesqprod.Qr_ProPDFIS_PRED_ICMS_EST.AsFloat>0 then
               tb_ped02_preP2ICMS_PPRED.AsFloat :=form_venda_pesqprod.Qr_ProPDFIS_PRED_ICMS_EST.AsFloat
            else if cds_aliquotasal_aliqredut.AsFloat>0 then
               tb_ped02_preP2ICMS_PPRED.AsFloat :=cds_aliquotasal_aliqredut.AsFloat;

            end
         else
            begin
            if form_venda_pesqprod.Qr_ProPDFIS_PRED_ICMS_INT.AsFloat>0 then
               tb_ped02_preP2ICMS_PPRED.AsFloat :=form_venda_pesqprod.Qr_ProPDFIS_PRED_ICMS_INT.AsFloat
            else if cds_aliquotasal_aliqredut.AsFloat>0 then
               tb_ped02_preP2ICMS_PPRED.AsFloat :=cds_aliquotasal_aliqredut.AsFloat;

            end;
         if (Tb_Ped02_preP2ICMS_PPRED.AsFloat>0) and (not (mcst[2] in ['2','7'])) then
            Tb_Ped02_preP2ICMS_PPRED.AsFloat:=0;
         if not mPed_Cli_REDICMSNOR then
            Tb_Ped02_preP2ICMS_PPRED.AsFloat:=0;

        end;

    if (Tb_Ped02_preP2ICMS_PERC.AsFloat=0) and (mCst[2]='2') then
       Tb_Ped02_preP2CST.Value:=copy(Tb_Ped02_preP2CST.Value,1,1)+'0'+copy(Tb_Ped02_preP2CST.Value,3,1);


    if (Tb_Ped02_preP2ICMS_PERC.AsFloat>0) and (Tb_Ped02_preP2ST_ICMSDEB.AsFloat>0) and (mCsoSN<>'900')
      and (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1,2])  then
      begin
      mCsoSN:='900';
      Tb_Ped02_preP2CSOSN.AsString:='900';
      end;


      if (Tb_Ped02_preP2ST_ICMSDEB.AsFloat>0) and
       ( (tb_ped02_preP2MODBCST.AsInteger=0) or
         (tb_ped02_preP2MODBCST.AsInteger=5) ) THEN
         //and (mcst[1] in ['1','6','3','7']) then
         //and ((mcst[2] in ['1','3','7']) or (mCsoSN[1] in ['2','9'])) then
//         and ((mcst[2] in ['1','3','7']) and (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [0,3]))
//    or ((mCsoSN[1] in ['2','9']) and (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1,2])) then
        begin
        if form_venda_pesqprod.Qr_ProPDPMC.AsFloat=0 then
           begin
           verteclado(0);
           MessageDlg('o Produto '+form_venda_pesqprod.Qr_ProPDCODPRO.AsString+'-'+form_venda_pesqprod.Qr_ProPDNOME.AsString
                    +' Não Possui o PMC/Pauta ST, entre no cadastro de Produto e coloque!',mtWarning,[mbOk],0);
           result:=false;
           exit;
           end
        else
           tb_ped02_preP2PRECO_MAXCONS.AsFloat:=form_venda_pesqprod.Qr_ProPDPMC.AsFloat;
        end;
     mCodpro_lid:=form_venda_pesqprod.Qr_ProPDCODPRO.AsString;




     if mVenda_GP.mPed1_Tipo_Ped=8 then
        begin
        if not cb_naoverifica.Checked then
          begin
          if not Qr_itens_pedori.Active then
             begin
             MessageDlg('Favor Digitar as Notas de Origem das devoluções!',mtWarning,[mbOk],0);
               result:=false;
             exit;
             end;
          if ValFloat(Tb_Ped02_preP2CODPRO.AsString) <> Qr_itens_pedoriPDCODPRO.AsFloat then
             begin
              if not Qr_itens_pedori.Locate('PDCODPRO',ValFloat(Tb_Ped02_preP2CODPRO.AsString),[]) then
                begin
                  MessageDlg('Não Foi Encontrado o Item '+Tb_Ped02_preP2CODPRO.AsString+'-'+Tb_Ped02_prePDNOME.AsString
                           +' no(s) pedido(s) de Origem!',mtWarning,[mbOk],0);
                Tb_Ped02_preP2CODPRO.AsString:=mcodpro_ant;
                result:=false;
                exit;
                end;
             end;
          Tb_Ped02_preP2CODPRO.AsString      :=Qr_itens_pedoriPDCODPRO.AsString;
          Tb_Ped02_preP2PRECO.AsFloat        :=Qr_itens_pedoriP2PRECO.AsFloat;
          Tb_Ped02_preP2PRECO_MAXCONS.AsFloat:=Qr_itens_pedoriP2PCOMAX.AsFloat;
          Tb_Ped02_preP2DESC_PERC01.AsFloat  :=Qr_itens_pedoriP2DESC1.AsFloat;
          Tb_Ped02_preP2DESC_PERC02.AsFloat  :=Qr_itens_pedoriP2DESC2.AsFloat;
          Tb_Ped02_preP2DESC_PERC03.AsFloat  :=Qr_itens_pedoriP2DESC3.AsFloat;
          Tb_Ped02_preP2ST_IVA.AsFloat       :=Qr_itens_pedoriP2ST_IVA.AsFloat;
          Tb_Ped02_preP2ST_REDUT.AsFloat     :=Qr_itens_pedoriP2ST_REDUT.AsFloat;
          Tb_Ped02_preP2ST_ICMSCRED.AsFloat  :=Qr_itens_pedoriP2ST_ICMCRED.AsFloat;
          Tb_Ped02_preP2ST_ICMSDEB.AsFloat   :=Qr_itens_pedoriP2ST_ICMDEB.AsFloat;
          Tb_Ped02_preP2ICMS_PERC.AsFloat    :=Qr_itens_pedoriP2ALIQ.AsFloat;
          Tb_Ped02_preP2ICMS_DESPERC.AsFloat :=Qr_itens_pedoriP2ALIQICMSDES.AsFloat;
          Tb_Ped02_preP2ICMS_PPRED.AsFloat   :=Qr_itens_pedoriP2REDUTICM.AsFloat;
          Tb_Ped02_preP2CST.AsString         :=Qr_itens_pedoriP2SIT.Asstring;
          Tb_Ped02_preP2CSOSN_ORI.AsFloat    :=Qr_itens_pedoriP2CSOSN_ORI.AsFloat;
          Tb_Ped02_preP2CSOSN.AsString       :=Qr_itens_pedoriP2CSOSN.Asstring;
          Tb_Ped02_preP2MODBCST.AsFloat      :=Qr_itens_pedoriP2MODBCST.AsFloat;
          Tb_Ped02_preP2PRECO_TAB.AsFloat    :=Qr_itens_pedoriP2PCOTAB.AsFloat;
          Tb_Ped02_preP2PRECO_UCPR.AsFloat   :=Qr_itens_pedoriP2UCPR.AsFloat;
          Tb_Ped02_preP2PRECO_CUS.AsFloat    :=Qr_itens_pedoriP2PCOCUS.AsFloat;
          Tb_Ped02_preP2IPI_PERC.AsFloat     :=Qr_itens_pedoriP2ALIPI.AsFloat;
          Tb_Ped02_preP2CONTESP.AsFloat      :=Qr_itens_pedoriP2CONTESP.AsFloat;

          Tb_Ped02_preP2COFINS_PERC.AsFloat  :=Qr_itens_pedoriP2ALCOFINS.AsFloat;
          Tb_Ped02_preP2PIS_PERC.AsFloat     :=Qr_itens_pedoriP2ALPIS.AsFloat;
          Tb_Ped02_preP2ICMSSN_PERC.AsFloat  :=Qr_itens_pedoriP2PCRED_SN.AsFloat;
          Tb_Ped02_preP2ALIPI.AsFloat        :=Qr_itens_pedoriP2ALIPI.AsFloat;
          Tb_Ped02_preP2CST_PIS.AsFloat      :=valint( Qr_itens_pedoriP2CST_PIS.AsString);
          Tb_Ped02_preP2CST_COFINS.AsFloat   :=valint( Qr_itens_pedoriP2CST_COFINS.AsString);
          Tb_Ped02_preP2CST_IPI.AsFloat   :=valint(Qr_itens_pedoriP2CST_IPI.AsString);
          Tb_Ped02_preP2CODVEN.AsFloat   :=Qr_itens_pedoriP2CODVEN.AsFloat;
          end;
        end;
     end
  else
     begin
     MessageDlg('Produto '+tb_ped02_preP2CODPRO.AsString+' não encontrado!',mtWarning,[mbOk],0);
     DBGrid_itens.SetFocus;
     result:=false;
     exit;
     end;
   end;
end;


procedure TFrm_Venda_Pre_Farma.DBGrid_itensExit(Sender: TObject);
begin
{
if Assigned(HintWindow) then
HintWindow.ReleaseHandle;
}
if tb_ped02_pre.State in [dsEdit,dsInsert] then
   begin

   if (not Memo_complementar.Focused) and (not mProcessando_SubProduto) then
      begin
      if length(tb_ped02_preP2CODPRO.AsString)>0 then
         tb_ped02_pre.Post
      else
         tb_ped02_pre.Cancel;
      end;
   end;
mEventoPendente:='';

end;

procedure TFrm_Venda_Pre_Farma.DBGrid_itensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=113) and
   (DBGrid_itens.SelectedField=tb_ped02_preP2CODPRO) then
   begin
   if not (tb_ped02_pre.State in [dsEdit,dsInsert]) then
      begin
      if tb_ped02_preP2CODPRO.IsNull then
         tb_ped02_pre.Append
      else
         tb_ped02_pre.Edit;
      end;
   tb_ped02_preP2CODPRO.AsString:=fChamaPesqPro(0,'_venda','');
   if (Tb_Ped02_preP2CODPRO.AsString)<>'' then
      begin
      DBGrid_itens.SelectedField:=Tb_Ped02_preP2QTD;
      end;
   end;




end;

procedure TFrm_Venda_Pre_Farma.DBGrid_itensKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['0'..'9']) and
   (DBGrid_itens.SelectedField=tb_ped02_preP2CODPRO) and
   (tb_ped02_pre.State in [dsBrowse]) then
   begin
   if tb_ped02_preP2CODPRO.IsNull then
      begin
      tb_ped02_pre.Append;
     end;
   end
else if ((key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%'))
   and (DBGrid_itens.SelectedField=tb_ped02_preP2CODPRO) then
   begin
   if not (tb_ped02_pre.State in [dsEdit,dsInsert]) then
      begin
      if tb_ped02_preP2CODPRO.IsNull then
         tb_ped02_pre.Append
      else
         tb_ped02_pre.Edit;
      end;
   Tb_ped02_preP2CODPRO.AsString:=fChamaPesqPro(0,'_venda',key);
   key:=#0;
   if (Tb_Ped02_preP2CODPRO.AsString)<>'' then
      begin
      keybd_event(VK_RETURN,0,0,0);

//      Self.Perform(WM_NEXTDLGCTL,0,0);
//      DBGrid_itens.SelectedField:=Tb_Ped02_preP2QTD;
      end;

   end
else if (DBGrid_itens.SelectedField=Tb_Ped02_preVALOR_TOTAL)  then
        begin
        abort;
        end;

{ and
        (tb_ped02_pre.State in [dsEdit,dsInsert])}


//   if (cb_tppco.ItemIndex<>2) and
//      (DBGrid_itens.SelectedField=Tb_Ped02_preP2PRECO) then
//      Self.Perform(WM_NEXTDLGCTL,0,0);





end;

procedure TFrm_Venda_Pre_Farma.DBGrid_itensMouseMove(Sender: TObject;
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

procedure TFrm_Venda_Pre_Farma.edt_bcicmsChange(Sender: TObject);
begin
if (edt_bcicms.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_bcicmsExit(Sender: TObject);
begin
edt_bcicms.Text:=Formatfloat(mcasas, valfloat(edt_bcicms.Text));

end;

procedure TFrm_Venda_Pre_Farma.edt_bcicmsstChange(Sender: TObject);
begin
if (edt_bcicmsst.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_bcicmsstExit(Sender: TObject);
begin
edt_bcicmsst.Text:=Formatfloat(mcasas, valfloat(edt_bcicmsst.Text));

end;

procedure TFrm_Venda_Pre_Farma.edt_chaveExit(Sender: TObject);
begin
if valint(edt_chave.Text)>0 then
   begin
   mlocalizando_pedido:=true;
   if not fLerPedidoGeral(codemp,valint(edt_chave.Text),0) then
//   if not fLerPedidoGeral(codemp,valint(edt_chave.Text),valint(FormatDateTime('yyyy', date))) then
      begin
      edt_chave.Text:='';
      edt_chave.SetFocus;
      end
   else
      begin
      fAtualizarBotoes(1);
{
      if ValFloat(edt_TotProdServ.Text)=0 then
        begin
        sbnAlterarClick(self);
        fAjustarItensPed(false);
        sbnGravarClick(self);
        end;
}
      end;
   FbuscaEstoque(ValFloat(Tb_Ped02_preP2CODPRO.AsString));

   mlocalizando_pedido:=false;
   fLerFormaPag(0);
   if Tb_FP_pre.IsEmpty then
      begin
      fGeraFPgto(0,mVenda_GP.mped1_Chave,mVenda_GP.mPed1_Chave_ano,mVenda_GP.mPed1_Codemp_ini);
      if mVenda_GP.mPed1_Codemp_ini<>mVenda_GP.mPed1_Codemp_fin then
         fGeraFPgto(0,mVenda_GP.mped1_Chave,mVenda_GP.mPed1_Chave_ano,mVenda_GP.mPed1_Codemp_fin);
       end;
   if Tb_FP_prePFPVALOR.IsNull then
      begin
      fRecalcularformas(0);
      fLerFormaPag(0);
      end;

   mped_Alterou_Cab:=false;
   end;

end;

procedure TFrm_Venda_Pre_Farma.edt_codcliChange(Sender: TObject);
begin
if (edt_codcli.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_codcliExit(Sender: TObject);
begin
edt_codcli.Text:=fdeixanum(edt_codcli.Text);
if Trim(edt_codcli.Text)='' then
   exit;
if not flcadcli(1,0,edt_codcli.Text) then
   begin
   if edt_codcli.Enabled then
      begin
      verteclado(0);
      MessageDlg('Cliente não Cadastrado!',mtWarning,[mbOk],0);
      edt_codcli.SetFocus;
      exit;
      end;
   end;
mVenda_GP.mPed1_CodCli:=DM1.Tb_CliCCODCLI.AsFloat;
mPed_UF_Cli             := DM1.Tb_CliCUF.AsString;

mPed_Cli_MotDes      := DM1.Tb_CliCMOTDES.AsInteger;
mPed_Cli_ConsFin     :=DM1.Tb_CliCCONSF.AsInteger=1;
mPed_Cli_ST          :=DM1.Tb_CliCICMSR.AsInteger=1;
mPed_Cli_icmsnr      :=DM1.Tb_CliCICMSTP.AsInteger=1;

mPed_Cli_REDICMSNOR  :=DM1.Tb_CliCREDICMSNOR.AsInteger<>1;



if (trim(edt_nomcli.text)<>'') and  (mVenda_GP.mPed1_CodCli>0) and (mVenda_GP.mPed1_CodCli<3)  and (mCodCli_ant=mVenda_GP.mPed1_CodCli) then
else
   edt_nomcli.Text :=DM1.tb_cliCRAZAO.AsString;

cb_tipopedEnter(self);
cb_tipopedExit(self);

if mCodCli_ant<>mVenda_GP.mPed1_CodCli then
  begin
  if (DM1.Tb_CliCSTATUS.Value=8) then
    begin
    if Frm_Ped_ObsCli=nil then
      Application.Createform(TFrm_Ped_ObsCli, Frm_Ped_ObsCli)
    else
      begin
      Frm_Ped_ObsCli.free;
      Frm_Ped_ObsCli:=nil;
      Application.Createform(TFrm_Ped_ObsCli, Frm_Ped_ObsCli)
      end;
    Frm_Ped_ObsCli.lbl_nomcli.Caption  :='Cliente: '+DM1.Tb_CliCCODCLI.AsString+'-'+DM1.Tb_CliCRAZAO.AsString+'/'+DM1.Tb_CliCDENOM.AsString;
    Frm_Ped_ObsCli.lbl_endereco.Caption:='Endereço: '+DM1.Tb_CliCLOG.AsString+' '+DM1.Tb_CliCBAIRRO.AsString;
    Frm_Ped_ObsCli.lbl_fone.Caption    :='Telefone: '+DM1.Tb_CliCFONE01.AsString+'/'+DM1.Tb_CliCFONE02.AsString;
    Frm_Ped_ObsCli.lbl_cidade.Caption  :='Cidade: '+DM1.Tb_CliCCIDADE.AsString+' '+DM1.Tb_CliCUF.AsString;
    if DM1.Tb_CliCCNPJ.AsFloat>0 then
     Frm_Ped_ObsCli.lbl_cnpj.Caption    :='CNPJ: '+FormatFloat('00"."000"."000/0000-00', DM1.Tb_CliCCNPJ.Value)
                                         +' Inscrição Estadual: '+DM1.Tb_CliCIE.Value
    else
     Frm_Ped_ObsCli.lbl_cnpj.Caption    :='CPF: '+FormatFloat('000"."000"."000"."000"-"00', DM1.Tb_CliCCPF.Value)
                                          +' Registro Geral: '+DM1.Tb_CliCRG.Value;
    Frm_Ped_ObsCli.lbl_vend.Caption  :='Vendedor: '+DM1.Tb_CliCCODVEN.AsString;
    if DM1.Tb_CliCCODV02.AsFloat>0 then
     Frm_Ped_ObsCli.lbl_vend.Caption  :=Frm_Ped_ObsCli.lbl_vend.Caption+'/'+DM1.Tb_CliCCODV02.AsString;
    if DM1.Tb_CliCCODV03.AsFloat>0 then
     Frm_Ped_ObsCli.lbl_vend.Caption  :=Frm_Ped_ObsCli.lbl_vend.Caption+'/'+DM1.Tb_CliCCODV03.AsString;
    if DM1.Tb_CliCCODV04.AsFloat>0 then
     Frm_Ped_ObsCli.lbl_vend.Caption  :=Frm_Ped_ObsCli.lbl_vend.Caption+'/'+DM1.Tb_CliCCODV04.AsString;
    Frm_Ped_ObsCli.lbl_obs01.Caption  :=DM1.Tb_CliCOBS01.AsString;
    Frm_Ped_ObsCli.lbl_obs02.Caption  :=DM1.Tb_CliCOBS02.AsString;
    Frm_Ped_ObsCli.lbl_obs03.Caption  :=DM1.Tb_CliCOBS03.AsString;
    Frm_Ped_ObsCli.lbl_obs04.Caption  :=DM1.Tb_CliCOBS04.AsString;
    Frm_Ped_ObsCli.lbl_obs05.Caption  :=DM1.Tb_CliCOBS05.AsString;
    Frm_Ped_ObsCli.FormStyle:=fsNormal;
    Frm_Ped_ObsCli.Visible:=false;
    fAtualizaForm(0);
    Frm_Ped_ObsCli.ShowModal;
    if Frm_Ped_ObsCli.CB_LEITURA.Checked then
      Frm_Ped_ObsCli.Free;
    Frm_Ped_ObsCli:=nil;
    end;
  if (DM1.Tb_CliCSITCLI.Value=8) then
    begin
    if Frm_Aviso=nil then
      Application.createform(TFrm_Aviso, Frm_Aviso)
    else
      begin
      Frm_Aviso.free;
      Frm_Aviso:=nil;
      Application.createform(TFrm_Aviso, Frm_Aviso)
      end;
    Frm_Aviso.RichEdit1.Lines.Clear;
    Frm_Aviso.RichEdit1.Lines.add(DM1.Tb_CliCOBS01.Value);
    Frm_Aviso.RichEdit1.Lines.add(DM1.Tb_CliCOBS02.Value);
    Frm_Aviso.RichEdit1.Lines.add(DM1.Tb_CliCOBS03.Value);
    Frm_Aviso.RichEdit1.Lines.add(DM1.Tb_CliCOBS04.Value);
    Frm_Aviso.RichEdit1.Lines.add(DM1.Tb_CliCOBS05.Value);
    verteclado(0);
    Frm_Aviso.FormStyle:=fsNormal;
    Frm_Aviso.Visible:=false;
    fAtualizaForm(0);
    Frm_Aviso.ShowModal;
    Frm_Aviso.Free;
    Frm_Aviso:=nil;
    end;




  mVenda_GP.mPed1_Frete_CIFFOB :=DM1.Tb_CliCFRETEPC.AsInteger - 1;
  CB_FRETEPC.ItemIndex :=DM1.Tb_CliCFRETEPC.AsInteger - 1;

   if DM1.Tb_CliCCODTRA.AsInteger>0 then
      begin
      if flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',DM1.Tb_CliCCODTRA.AsString) then
         begin
         edt_codtra.Text:=DM1.Tb_CliCCODTRA.AsString;
         edt_codtraExit(self);
         end;
      end;

   if (DM1.Tb_PargerPVENUSR.Value = 1) and (length(edt_nomven.Text)>1) then
   else
      begin
      if DM1.Tb_CliCCODVEN.AsInteger>0 then
         begin
         if flqr1('VNOME','V','CADVEN','N','VCODVEN',DM1.Tb_CliCCODVEN.AsString) then
            begin
            edt_codven.Text:=DM1.Tb_CliCCODVEN.AsString;
            edt_codvenExit(self);
            end;
         end;
      end;   


   if (not Tb_Ped02_pre.IsEmpty)  then
      mVenda_GP.mPed1_AjustaFP:='N';

   mped_Alterou_Cab:=true;
//   if cb_tppco.ItemIndex=2 then
      fAjustarItensPed(false);
//   else
//      fAjustarItensPed(true);
   if (DM1.Tb_CliCCODPV.AsInteger>0) and ( (DM1.Tb_CliCTABPV.AsString='AP') or  (DM1.Tb_CliCTABPV.AsString='AV')) then
      begin
      edt_codCondPag.Text:=DM1.Tb_CliCTABPV.AsString+DM1.Tb_CliCCODPV.AsString;
      edt_codCondPagExit(self);
      end;

   end;

mEventoPendente:='';

if (fsonumero(edt_codcli.Text)>0) and (fsonumero(edt_codcli.Text)<3) then
   begin
   edt_nomcli.Color  :=clWindow;
   edt_nomcli.ReadOnly:=false;
   edt_nomcli.TabStop :=true;
   sbn_cadcsf.Visible :=true;
   edt_nomcli.Left    :=264;
   edt_nomcli.Width   :=158;
   edt_fonecsf.Visible:=true;
   end
else
   begin
   mVenda_GP.mPed1_razsoc:=edt_nomcli.Text;
   edt_nomcli.Color  :=$00C7C7E2;
   edt_nomcli.ReadOnly:=true;
   edt_nomcli.TabStop :=false;
   sbn_cadcsf.Visible :=false;
   edt_nomcli.Left    :=163;
   edt_nomcli.Width   :=259;
   edt_fonecsf.Visible:=false;
   end;

if DM1.Tb_PargerPVISA.Value=1 then
  begin
  if DM4.Tb_Par01PVISA.Value=1 then
    begin
    if (trim(edt_nomcli.text)<>'') and (mVenda_GP.mPed1_CodCli>0)
        and (mCodCli_ant<>mVenda_GP.mPed1_CodCli)
        and not (mlocalizando_pedido) then
      begin
      if (DM1.Tb_CliCDTVALV.Value<pdatasis) or (DM1.Tb_CliCDTVALV.IsNull) then
        begin
        if (mlocalizando_pedido) then
          begin
          mlib_codusr_lbloq :=0;
          mlib_codbloq      :=fAdicionaRemoveTexto(0,mlib_codbloq,'07');
          mlib_bloqPend     :=2;
          end
        else
          begin
          if fmensagem('Número do alvará da vigilância Sanitária Vencido! Data do Vcto: '+FormatDateTime(fdt2,DM1.Tb_CliCDTVALV.Value)+#13
                      +'Deseja Continuar e deixa-lo bloqueado?',0,['1','2'],2)=mrYes then
            begin
            mlib_codusr_lbloq :=0;
            mlib_codbloq      :=fAdicionaRemoveTexto(0,mlib_codbloq,'07');
            mlib_bloqPend     :=2;
            end
          else
            begin
            edt_codcli.SetFocus;
            mCodCli_ant:=0;
            exit;
            end;
          end;
        end;
      end;
    end;
  end;

if DM1.Tb_PargerPANVISA.Value=1 then
  begin
  if DM4.Tb_Par01PANVISA.Value=1 then
    begin
    if (trim(edt_nomcli.text)<>'') and (mVenda_GP.mPed1_CodCli>0)
        and (mCodCli_ant<>mVenda_GP.mPed1_CodCli)
        and not (mlocalizando_pedido) then
      begin
      if (DM1.Tb_CliCDTANVISA.Value<pdatasis) OR (DM1.Tb_CliCDTANVISA.IsNull) then
        begin
        if (mlocalizando_pedido) then
          begin
          mlib_codusr_lbloq :=0;
          mlib_codbloq      :=fAdicionaRemoveTexto(0,mlib_codbloq,'09');
          mlib_bloqPend     :=2;
          end
        else
          begin
          if fmensagem('Número do alvará da vigilância Sanitária(ANVISA) Vencido! Data do Vcto: '+FormatDateTime(fdt2,DM1.Tb_CliCDTANVISA.Value)+#13
                      +'Deseja Continuar e deixa-lo bloqueado?',0,['1','2'],2)=mrYes then
            begin
            mlib_codusr_lbloq :=0;
            mlib_codbloq      :=fAdicionaRemoveTexto(0,mlib_codbloq,'09');
            mlib_bloqPend     :=2;
            end
          else
            begin
            edt_codcli.SetFocus;
            mCodCli_ant:=0;
            exit;
            end;
          end;
        end;
      end;
    end;
  end;

if (trim(edt_nomcli.text)<>'') and (mVenda_GP.mPed1_CodCli>0)
    and (mCodCli_ant<>mVenda_GP.mPed1_CodCli)
    and not (mlocalizando_pedido) then
  begin
  if (DM1.Tb_PargerPVERCRE.Value=1) and (DM1.Tb_CliCCODCLI.AsInteger>2) then
    begin
    if form_SitCre_ped_02=nil then
      Application.CreateForm(Tfrm_SitCre, form_SitCre_ped_02)
    else
      begin
      form_SitCre_ped_02.free;
      form_SitCre_ped_02:=nil;
      Application.CreateForm(Tfrm_SitCre, form_SitCre_ped_02)
      end;
    form_SitCre_ped_02.CODCLI.Text:=Trim(edt_codcli.Text);
    form_SitCre_ped_02.BBAPLICAR.Click;
    form_Sitcre_ped_02.FormStyle:=fsNormal;
    form_sitcre_ped_02.Visible:=false;
    fAtualizaForm(0);
    form_SitCre_ped_02.ShowModal;
    if form_SitCre_ped_02.mlimcre=0 then
      mlcred:=form_SitCre_ped_02.mLimCre
    else
      mlcred:=form_SitCre_ped_02.mLimCre-form_SitCre_ped_02.mTotDeb;
    if form_SitCre_ped_02.msit then
      begin
      mlib_limcred:=False;
      mPd_CodResp_Senha:=fValidaSenha(1,codusr,17,0,DM1.Tb_CliCCODCLI.Value,0,0,0,'Cliente com venda Bloqueado. Para liberar digite a senha','');
      if mPd_CodResp_Senha=0 then
        begin
        mlib_codusr_lbloq :=codusr;
        mlib_codbloq      :=fAdicionaRemoveTexto(0,mlib_codbloq,'02');
        mlib_codbloq_lib  :=fAdicionaRemoveTexto(0,mlib_codbloq_lib,'02');
        mlcred:=0;
        mlib_limcred      :=true;
        end
      else if mPd_CodResp_Senha=2 then
        begin
        mlib_bloqPend     :=2;
        if form_SitCre_ped_02.mBloq_LimCred then
          mlib_codbloq      :=fAdicionaRemoveTexto(0,mlib_codbloq,'01');
        if form_SitCre_ped_02.mBloq_Atraso then
          mlib_codbloq      :=fAdicionaRemoveTexto(0,mlib_codbloq,'02');
        if (form_SitCre_ped_02.mBloq_Status9) or (form_SitCre_ped_02.mBloq_Cadastro) then
          mlib_codbloq      :=fAdicionaRemoveTexto(0,mlib_codbloq,'11');
        if (form_SitCre_ped_02.mBloq_SemCompra)  then
          mlib_codbloq      :=fAdicionaRemoveTexto(0,mlib_codbloq,'12');
        end
      else
        begin
        edt_codcli.SetFocus;
        mCodCli_ant:=0;        
        exit;
        end;
      end;
    form_SitCre_ped_02.Free;
    form_SitCre_ped_02:=nil;
    end;
  end;
   
end;

procedure TFrm_Venda_Pre_Farma.edt_codcliKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%') then
   begin
   edt_codcli.Text:=fChamaCli(0,'_venda',key);
   edt_nomcli.Text:=DM1.Tb_CliCRAZAO.AsString;
   //edt_codcliExit(Self);
   key:=#0;
   end;
if (fsonumero(edt_codcli.Text+key)>0) and (fsonumero(edt_codcli.Text+key)<3) then
   begin
   edt_nomcli.Color  :=clWindow;
   edt_nomcli.ReadOnly:=false;
   edt_nomcli.TabStop :=true;
   end
else
   begin
   edt_nomcli.Color  :=$00C7C7E2;
   edt_nomcli.ReadOnly:=true;
   edt_nomcli.TabStop :=false;
   end;


end;

procedure TFrm_Venda_Pre_Farma.edt_codCondPagExit(Sender: TObject);
begin
try
  edt_codCondPag.Text:=trim(edt_codCondPag.Text);
  if (edt_codCondPag.Text='PO99') then
      begin
      edt_nomcond.Text := 'Plano Opcional(Digitado)';
      mVenda_GP.mPed1_CodPV:=99;
      mVenda_GP.mPed1_TabPV:='PO';
      mVenda_GP.mPed1_TpComis:=0;
      end;
  if Trim(edt_codCondPag.Text)=''  then
      begin
      MessageDlg('Favor Digitar uma condição de pagamento válida!',mtWarning,[mbOk],0);
      edt_codCondPag.SetFocus;
      exit;
      end
  else if (not flcadpv(1,0,copy(edt_codCondPag.Text,1,2),copy(edt_codCondPag.Text,3,length(edt_codcondpag.text)-2)))
     and (edt_codCondPag.Text<>'PO99') then
     begin
     if edt_codCondPag.Enabled then
        begin
        verteclado(0);
        MessageDlg('Condições de Pagamento Não Encontrada!',mtWarning,[mbOk],0);
        edt_codCondPag.SetFocus;
        exit;
        end;
     end
  else
     begin
     mPed_PVTPD1             := DM1.Tb_PVPVTPD1.AsInteger;
     mVenda_GP.mPed1_TpComis:=DM1.Tb_PVPVTPC.AsInteger;
     cb_tppco.ItemIndex:=3;
     mVenda_GP.mPed1_Tabela:='1';
{
     if DM1.Tb_PVPVTPP.AsInteger=4 then // preco extra
        begin
        cb_tppco.ItemIndex:=2;
        mVenda_GP.mPed1_Tabela:='1';
        end
     else if DM1.Tb_PVPVTPP.AsInteger=0 then  // do cadastro do estado
        begin
        flcaduf(0,0,codemp,mPed_UF_Cli);
        cb_tppco.ItemIndex:=DM1.Tb_UFPTIPOPC.AsInteger;
        if DM1.Tb_UFPTIPOPCO.AsInteger=3 then
           mVenda_GP.mPed1_Tabela:='3'
        else if DM1.Tb_UFPTIPOPCO.AsInteger=2 then
           mVenda_GP.mPed1_Tabela:='2'
        else
           mVenda_GP.mPed1_Tabela:='1';

        cb_tppcoClick(self);
        end
     else if DM1.Tb_PVPVTPP.AsInteger=3 then // tipo de preco 3
        begin
        cb_tppco.ItemIndex:=0;
        mVenda_GP.mPed1_Tabela:='3';
        end
     else if DM1.Tb_PVPVTPP.AsInteger=2 then // tipo de preco 2
        begin
        cb_tppco.ItemIndex:=0;
        mVenda_GP.mPed1_Tabela:='2';
        end
     else // tipo de preco 1
        begin
        cb_tppco.ItemIndex:=0;
        mVenda_GP.mPed1_Tabela:='1';
        end;
}
        mPv_Acrescimo:=DM1.Tb_PVPVACTD.AsFloat;
        form_venda_pesqprod.parpp_acretodos:=mPv_Acrescimo;
     cb_tppcoClick(self);
     if DM1.Tb_PVPVTPDC.AsInteger=0 then
        begin
        if (DM1.Tb_PVPVDES.AsFloat>0) and (valfloat(edt_pDesc01.Text)<>DM1.Tb_PVPVDES.AsFloat) then
            begin
            edt_pDesc01.Text:=formatFloat(mcasas, DM1.Tb_PVPVDES.AsFloat);
            edt_pDesc01Exit(self);
            end;
         end;

     if edt_codCondPag.Text<> 'PO99' then
        begin
        edt_codCondPag.Text:=DM1.Tb_PVPVCODTIP.asString+DM1.Tb_PVPVCODPV.AsString;
        edt_nomcond.Text:=DM1.Tb_PVPVNOME.AsString;
        mVenda_GP.mPed1_CodPV:=DM1.Tb_PVPVCODPV.AsInteger;
        mVenda_GP.mPed1_TabPV:=DM1.Tb_PVPVCODTIP.asString;
        end;
//    if (not mlocalizando_pedido) or (mVenda_GP.mped1_QtdParc<1) then
    if (not mlocalizando_pedido) then
       begin
       if (mCodpv_ant<>mVenda_GP.mPed1_TabPV+IntTostr(mVenda_GP.mPed1_CodPV)) or (trim(mVenda_GP.mPed1_PrzNovos_001)='') then
          begin
          mped_Alterou_Cab:=true;
           if (Tb_FP_pre.IsEmpty) and ( not Tb_Ped02_pre.IsEmpty) then
              begin
              mVenda_GP.mped1_QtdParc:=1;
              mVenda_GP.mPed1_Parcelas:=insere('0','0',4);
              mVenda_GP.mPed1_PrzNovos_001:='0;P;;;;;';
              mVenda_GP.mPed1_PrzNovos_101:='0;P;;;;;';
    {
                      if mNv_campo=0 then
                         mnv_Prazo:=TO_NUMBER(mnv_vAcum);
                      elsif mNv_Campo=1 then
                         mNv_Tipo:=mnv_vAcum; tipo V-Valor P-Percentual
                      elsif mNv_Campo=2 then
                         mNv_valor:=TO_NUMBER(mnv_vAcum); Valor ou percentual
                      elsif mNv_Campo=3 then
                         mNv_CodFP:=TO_NUMBER(mnv_vAcum); codigo da forma de pagamento
                      elsif mNv_Campo=4 then nome da forma de pagamento
                         mNv_NomFP:=mnv_vAcum;
                      elsif mNv_Campo=5 then baixar ou nao
                         mNv_Baixa:=mnv_vAcum;
                      elsif mNv_Campo=6 then vago
                         mNv_Baixa:=mnv_vAcum;

                      end if;

    }
              end
           else
              begin
              if (not mped_Alterou_Cab)  then
                 begin
                 if not Tb_FP_Pre.Active then
                    fLerFormaPag(0);
                 Tb_FP_pre.First;
                 mVenda_GP.mPed1_Parcelas:=insere(Tb_FP_prePFPPRAZO.AsString,'0',4);
                 mVenda_GP.mPed1_PrzNovos_001:=Tb_FP_prePFPPRAZO.AsString+';P;;;;;';
                 mVenda_GP.mPed1_PrzNovos_101:=Tb_FP_prePFPPRAZO.AsString+';P;;;;;';

                 Tb_FP_pre.Next;
                 while not Tb_FP_pre.Eof do
                    begin
                    mVenda_GP.mPed1_Parcelas:=mVenda_GP.mPed1_Parcelas+insere(Tb_FP_prePFPPRAZO.AsString,'0',4);
                    mVenda_GP.mPed1_PrzNovos_001:=mVenda_GP.mPed1_PrzNovos_001+Tb_FP_prePFPPRAZO.AsString+';P;;;;;';
                    mVenda_GP.mPed1_PrzNovos_101:=mVenda_GP.mPed1_PrzNovos_101+Tb_FP_prePFPPRAZO.AsString+';P;;;;;';
                    Tb_FP_pre.Next;
                    end;
                mVenda_GP.mped1_QtdParc:=Tb_FP_pre.RecordCount;
                end
             else
                begin
                DM1.Tb_PV2.First;
                mVenda_GP.mPed1_Parcelas:=insere(DM1.Tb_PV2PV2PRAZO.AsString,'0',4);
                 mVenda_GP.mPed1_PrzNovos_001:=DM1.Tb_PV2PV2PRAZO.AsString+';P;;;;;';
                 mVenda_GP.mPed1_PrzNovos_101:=DM1.Tb_PV2PV2PRAZO.AsString+';P;;;;;';
                DM1.Tb_PV2.Next;
                while not DM1.Tb_PV2.Eof do
                   begin
                   mVenda_GP.mPed1_Parcelas:=mVenda_GP.mPed1_Parcelas+insere( DM1.Tb_PV2PV2PRAZO.AsString,'0',4);
                   mVenda_GP.mPed1_PrzNovos_001:=mVenda_GP.mPed1_PrzNovos_001+DM1.Tb_PV2PV2PRAZO.AsString+';P;;;;;';
                   mVenda_GP.mPed1_PrzNovos_101:=mVenda_GP.mPed1_PrzNovos_101+DM1.Tb_PV2PV2PRAZO.AsString+';P;;;;;';
                   DM1.Tb_PV2.Next;
                   end;
                mVenda_GP.mped1_QtdParc:=DM1.Tb_PV2.RecordCount;
                end;
             end;
         end;


      mVenda_GP.mPed1_pvdescf     :=DM1.Tb_PVPVDESCF.AsFloat;
      mVenda_GP.mPed1_pvddescf    :=DM1.Tb_PVPVDESCF.AsInteger;
      mVenda_GP.mPed1_pvdiasdescf :=DM1.Tb_PVPVDIASDESCF.AsInteger;
      edt_codfp.Text:=DM1.Tb_PVPVVINCULO.AsString;
      edt_codfpExit(self);

      end;
   if (mped_Alterou_Cab) and (not mlocalizando_pedido)  then
      begin
      if (Tb_Ped02_pre.IsEmpty)  then
      else
         begin
         fRecalcularformas(0);
         fLerFormaPag(0);
         end;
      end;
   end;
except
   end;

edt_codcondpagenter(self);

mEventoPendente:='';
end;

procedure TFrm_Venda_Pre_Farma.edt_codfpChange(Sender: TObject);
begin
if (edt_codfp.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_codfpExit(Sender: TObject);
var
Query_AjustaFP: TQuery;
begin
edt_codfp.Text:=fdeixanum(edt_codfp.Text);
if Trim(edt_codfp.Text)='' then
   exit;
if not fLCadFP(0,edt_codfp.Text,'') then
   begin
   if edt_codfp.Enabled then
      begin
      verteclado(0);
      MessageDlg('Forma de Pagamento não Cadastrado!',mtWarning,[mbOk],0);
      edt_codfp.SetFocus;
      exit;
      end;
   end;
if DM1.Tb_FPFPVINCULO.AsInteger=8 then
   begin
   if (not DM1.Tb_Cli.Active) or (fsonumero(edt_codcli.Text)<>DM1.Tb_CliCCODCLI.AsFloat) then
      flcadcli(1,0,edt_codcli.Text);

   if DM1.Tb_CliCCODCV.AsFloat>0 then
      begin
      edt_codcv.Text:=DM1.Tb_CliCCODCV.AsString;
      edt_nomcv.Text:=DM1.Tb_CliCNOMCV.AsString;
      end;
   end
else
   begin
   edt_codcv.Text:='0';
   edt_codcvExit(self);
   end;



edt_nomfp.Text:=DM1.Tb_FPFPDESC.AsString;
mVenda_GP.mPed1_CodFP:=valint(edt_codfp.Text);
mVenda_GP.mPed1_CodFp_Vinculo:=DM1.Tb_FPFPVINCULO.AsInteger;
mVenda_GP.mPed1_nomfp:=DM1.Tb_FPFPDESC.AsString;
mVenda_GP.mPed1_BaixaFP:='N';
mVenda_GP.mPed1_QtdParc_ant:=-1;
if (mPed1_CodFP_Ant<>mVenda_GP.mPed1_CodFP) and ( (not Tb_Ped02_pre.isEmpty)  )  then
   begin
   mped_Alterou_Cab:=true;
   if (not Tb_Ped02_pre.IsEmpty)  then
      mVenda_GP.mPed1_AjustaFP:='N';
   Query_AjustaFP:=TQuery.Create(nil);
   Query_AjustaFP.DatabaseName:='SG_ASSOC';
   Query_AjustaFP.Close;
   Query_AjustaFP.SQL.Clear;
   Query_AjustaFP.SQL.Add('Update CADPFP set PFPFORMA=:FORMA, PFPVINCULO=:VINCULO, PFPNOMFOR=:NOMFOR where PFPCHAVE=:CHAVE '
                             +' AND PFPLOTSEQ=:CHAVE_ANO '
                             +' AND (PFPCODEMP=:CODEMP or PFPCODEMP=:CODEMP_FILIAL) ');
   Query_AjustaFP.ParamByName('FORMA').AsInteger:=mVenda_GP.mPed1_CodFP;
   Query_AjustaFP.ParamByName('NOMFOR').AsString:=edt_nomfp.Text;
   Query_AjustaFP.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
   Query_AjustaFP.ParamByName('VINCULO').AsInteger:=mVenda_GP.mPed1_CodFp_Vinculo;
   Query_AjustaFP.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
   Query_AjustaFP.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
   Query_AjustaFP.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
   try
      Query_AjustaFP.ExecSql;
      fdm1StartCommit;
   except
      end;
   FreeAndNil(Query_AjustaFP);
   end;



mEventoPendente:='';

end;

procedure TFrm_Venda_Pre_Farma.edt_codfpKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%') then

   begin
   edt_codfp.Text:=fChamaFPag(0,'_venda',key);
   edt_codfpExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Venda_Pre_Farma.edt_codvenChange(Sender: TObject);
begin
if (edt_codven.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_codvenExit(Sender: TObject);
begin
edt_codven.Text:=fdeixanum(edt_codven.Text);
if Trim(edt_codven.Text)='' then
   exit;
if not flcadven(1,0,edt_codven.Text) then
   begin
   if edt_codven.Enabled then
      begin
      verteclado(0);
      MessageDlg('Vendedor Não Encontrado!',mtWarning,[mbOk],0);
      edt_codven.SetFocus;
      exit;
      end;
   end;

edt_nomven.Text:=DM1.Tb_VenVNOME.AsString;
mVenda_GP.mPed1_Codven:=valint(edt_codven.Text);
if mcodven_ant<>mVenda_GP.mPed1_Codven then
   begin
   mped_Alterou_Cab:=true;
   if (not Tb_Ped02_pre.IsEmpty)  then
       mVenda_GP.mPed1_AjustaFP:='N';
   end;
mEventoPendente:='';

end;

procedure TFrm_Venda_Pre_Farma.edt_codvenKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%') then
   begin
   edt_codven.Text:=fChamaVen(0,'_venda',key);
   edt_codvenExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Venda_Pre_Farma.edt_datapChange(Sender: TObject);
begin
if (edt_datap.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_datapExit(Sender: TObject);
begin
try
   edt_datap.Text:=FormatDatetime(fdt2, edt_datap.Date)
except
   edt_datap.Date:=Date;
   end;

mVenda_GP.mPed1_Datap:=edt_datap.Date;

end;

procedure TFrm_Venda_Pre_Farma.edt_desc_valorChange(Sender: TObject);
begin
if (edt_desc_valor.Modified) and (mVenda_GP.mped1_Chave>0)  then
   begin
   mped_Alterou_Cab:=true;
   end;

end;

procedure TFrm_Venda_Pre_Farma.edt_desc_valorExit(Sender: TObject);
var
 Desc: Real;
begin
if ( valfloat(edt_desc_valor.Text)<0) or (valfloat(edt_desc_valor.Text)>99999999999) then
   edt_desc_valor.Text:=Formatfloat(mcasas, 0);
Desc:=ValFloat(edt_desc_valor.Text)/(ValFloat(edt_totliq.Text)+ValFloat(edt_TotDesGer.Text)-mPed_Desc_Valor_Ant)*100;
if (mPed_Desc_Valor_Ant<>ValFloat(edt_desc_valor.Text)) and (ValFloat(edt_pDesc01.Text)+Desc>DM4.Tb_Par01PDESCMP0.Value) and (mPd_Venda_Devol=0) and (mVenda_GP.mPed1_Tipo_Ped<>3) then
  begin
  if fValidaSenha(iif(DM1.Tb_PargerPGRAVPEDBLOQ.asinteger=2,0,1),codusr,2,0,DM1.Tb_CliCCODCLI.Value,0,0,0,FormatFloat(mcasaspu,ValFloat(edt_pDesc01.Text)+Desc)+'% Desconto maior que o permitido. Para continuar digite a senha','')<>0 then
    edt_desc_valor.Text:=Formatfloat(mcasas, mPed_Desc_Valor_Ant);
  end;


mVenda_GP.mPed1_Desc_Rateado:=ValFloat(edt_desc_valor.Text);
edt_desc_valor.Text:=FormatFloat(mCasas, valfloat(edt_desc_valor.Text));
fRecalcularPedido(3);
fRecalcularformas(0);

mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_despAcesChange(Sender: TObject);
begin
if (edt_despAces.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_despAcesExit(Sender: TObject);
begin
edt_despAces.Text:=Formatfloat(mcasas, valfloat(edt_despAces.Text));
mVenda_GP.mPed1_DespAces:=ValFloat(edt_despAces.Text);
fRecalcularPedido(3);
fRecalcularformas(0);

mped_Alterou_Cab:=true;
fTotais(0);

end;

procedure TFrm_Venda_Pre_Farma.edt_pDesc01Change(Sender: TObject);
begin
if (edt_pDesc01.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_pDesc01Enter(Sender: TObject);
begin
mPed_PDesc01_Ant:=ValFloat(edt_pDesc01.Text);
end;

procedure TFrm_Venda_Pre_Farma.edt_pDesc01Exit(Sender: TObject);
begin
if ( valfloat(edt_pDesc01.Text)<0) or (valfloat(edt_pDesc01.Text)>99) then
  edt_pDesc01.Text:=Formatfloat(mcasas, 0);
if (mPed_PDesc01_Ant<>ValFloat(edt_pDesc01.Text)) and ((ValFloat(edt_pDesc01.Text)-mPed_PDesc01_Ant+ValFloat(edt_perDesGer.Text))>DM4.Tb_Par01PDESCMP0.Value) and (mPd_Venda_Devol=0) and (mped1_tpPed<>3) then
  begin
  if fValidaSenha(iif(DM1.Tb_PargerPGRAVPEDBLOQ.asinteger=2,0,1),codusr,2,0,DM1.Tb_CliCCODCLI.Value,0,0,0,FormatFloat(mcasas,ValFloat(edt_pDesc01.Text)-mPed_PDesc01_Ant+ValFloat(edt_perDesGer.Text))+'% Desconto maior que o permitido. Para continuar digite a senha','')<>0 then
    edt_pDesc01.Text:=Formatfloat(mcasas, mPed_PDesc01_Ant);
  end;

mVenda_GP.mPed1_pDesc01:=ValFloat(edt_pDesc01.Text);
edt_pDesc01.Text:=Formatfloat(mcasas, mVenda_GP.mPed1_pDesc01);

mVenda_GP.mPed1_pDesc01_Valor:=valfloat(edt_vlrdes_ped1_perc.Text);
if sbnGravar.Enabled then
   begin
   fRecalcularPedido(3);
   fRecalcularformas(0);
   end;
   
end;

procedure TFrm_Venda_Pre_Farma.edt_percfreteChange(Sender: TObject);
begin
if (edt_percfrete.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;
end;

procedure TFrm_Venda_Pre_Farma.edt_totipiChange(Sender: TObject);
begin
if (edt_totipi.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_totipiExit(Sender: TObject);
begin
edt_totipi.Text:=Formatfloat(mcasas, valfloat(edt_totipi.Text));

end;

procedure TFrm_Venda_Pre_Farma.edt_valfreChange(Sender: TObject);
begin
if (edt_valfre.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_valfreExit(Sender: TObject);
begin
edt_valfre.Text:=Formatfloat(mcasas, valfloat(edt_valfre.Text));
if ( valfloat(edt_valfre.Text)<0) or (valfloat(edt_valfre.Text)>99999999999) then
   edt_valfre.Text:=Formatfloat(mcasas, 0);
mVenda_GP.mPed1_ValFre:=ValFloat(edt_valfre.Text);
mVenda_GP.mPed1_Perc_Frete:=ValFloat(edt_valfre.Text)/ValFloat(edt_totliq.Text)*100;
fRecalcularPedido(3);
fRecalcularformas(0);

mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_valsegChange(Sender: TObject);
begin
if (edt_valseg.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_valsegExit(Sender: TObject);
begin
edt_valseg.Text:=Formatfloat(mcasas, valfloat(edt_valseg.Text));
mVenda_GP.mPed1_ValSeg:=ValFloat(edt_valseg.Text);
fRecalcularPedido(3);
fRecalcularformas(0);
mped_Alterou_Cab:=true;

fTotais(0);
end;

procedure TFrm_Venda_Pre_Farma.edt_vlricmsChange(Sender: TObject);
begin
if (edt_vlricms.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_vlricmsExit(Sender: TObject);
begin
edt_vlricms.Text:=Formatfloat(mcasas, valfloat(edt_vlricms.Text));

end;

procedure TFrm_Venda_Pre_Farma.edt_vlricmsstChange(Sender: TObject);
begin
if (edt_vlricmsst.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_vlricmsstExit(Sender: TObject);
begin
edt_vlricmsst.Text:=Formatfloat(mcasas, valfloat(edt_vlricmsst.Text));

end;

function TFrm_Venda_Pre_Farma.fTotais(pTipo: Integer): Boolean;
var
  mpDescMedio: Real;
begin
edt_TotProdServ.Text:=FormatFloat(mCasas, mVenda_GP.mPed1_TotMer+mVenda_GP.mPed1_TotSer);
edt_descItens.Text  :=FormatFloat(mCasas, mVenda_GP.mPed1_DescPed02_Perc);
edt_totPromo.Text   :=FormatFloat(mCasas, mVenda_GP.mPed1_TotPromo);

edt_vlrdes_ped1_perc.Text:=FormatFloat(mCasas, mVenda_GP.mPed1_pDesc01_Valor);

if ValFloat(edt_pDesc01.Text)=0 then
   begin
   edt_vlrdes_ped1_perc.Text:=FormatFloat(mcasas, 0);
   end
else
   edt_vlrdes_ped1_perc.Text:=FormatFloat(mcasas,
    ((mVenda_GP.mPed1_TotMer+mVenda_GP.mPed1_TotSer)-
    (mVenda_GP.mPed1_DescPed02_Perc))*mVenda_GP.mPed1_pDesc01/100);


edt_TotDesGer.Text :=FormatFloat(mCasas,mVenda_GP.mPed1_pDesc01_Valor+mVenda_GP.mPed1_DescPed02_Perc+mVenda_GP.mPed1_Desc_Rateado);
if  (  (Valfloat(edt_TotDesGer.Text)>0) and ((mVenda_GP.mPed1_TotMer+mVenda_GP.mPed1_TotSer)=0) )
    or   ((mVenda_GP.mPed1_TotMer+mVenda_GP.mPed1_TotSer)=0) then
   edt_perDesGer.Text := FormatFloat(mCasas,0)
else
   begin
   edt_perDesGer.Text := FormatFloat(mCasas,
                                    ((mVenda_GP.mPed1_pDesc01_Valor+mVenda_GP.mPed1_DescPed02_Perc
                                    +mVenda_GP.mPed1_Desc_Rateado)*100) /
                                    (mVenda_GP.mPed1_TotMer+mVenda_GP.mPed1_TotSer) );
   end;


edt_tarban1.Text    :=FormatFloat(mCasas, mVenda_GP.mPed1_TarBan_001);
edt_tarban_101.Text :=FormatFloat(mCasas, mVenda_GP.mPed1_TarBan_001);

edt_valseg.Text    :=FormatFloat(mCasas, mVenda_GP.mPed1_ValSeg);
edt_despAces.Text   :=FormatFloat(mCasas, mVenda_GP.mPed1_DespAces);
edt_totipi.Text    :=FormatFloat(mCasas, mVenda_GP.mPed1_TotIPI);
edt_bcicmsst.Text  :=FormatFloat(mCasas, mVenda_GP.mPed1_ST_base);
edt_vlricmsst.Text :=FormatFloat(mCasas, mVenda_GP.mPed1_ST_Icms);
edt_bcicms.Text    :=FormatFloat(mCasas, mVenda_GP.mPed1_Icms_Base);
edt_vlricms.Text   :=FormatFloat(mCasas, mVenda_GP.mPed1_Icms_Valor);
edt_valfre.Text    :=FormatFloat(mCasas, mVenda_GP.mPed1_ValFre);
edt_percfrete.Text :=FormatFloat(mCasas, mVenda_GP.mPed1_Perc_Frete);
edt_totliq.Text:=FormatFloat(mCasas, (valfloat(edt_TotProdServ.Text)
                            +valfloat(edt_tarban1.Text)+valfloat(edt_tarban_101.Text)
                            +valfloat(edt_valseg.Text)
                            +valfloat(edt_despAces.Text)
                            +valfloat(edt_totipi.Text)
                            +valfloat(edt_valfre.Text)
                            +valfloat(edt_vlricmsst.Text))
                            -ValFloat(edt_TotDesGer.Text)
                             );
result:=true;
end;

function TFrm_Venda_Pre_Farma.fAtualizarBotoes(pTipo: Integer): Boolean;
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
   sbnGravar.Enabled       := False;
   sbnVendaRapida.Enabled  := False;
   sbnContrato.Enabled     := False;
   sbnCalcular.Enabled     := False;
   sbnExcluir.Enabled      := False;
   sbnNFE.Enabled          := False;
   sbnEMail.Enabled        := False;
   sbnEMailXML.Enabled     := False;
   sbnDuplicar.Enabled     := False;
   sbnlSep.Enabled         := False;
   end
else if ptipo=2 then // inclusao ou alteracao
   begin
   sbnIncluir.Enabled      := false;
   sbnLocalizar.Enabled    := False;
   sbnAlterar.Enabled      := False;
   sbnGravar.Enabled       := True;
   sbnVendaRapida.Enabled  := True;
   sbnContrato.Enabled     := False;
   sbnExcluir.Enabled      := False;
   sbnNFE.Enabled          := False;
   sbnEMail.Enabled        := False;
   sbnEMailXML.Enabled     := False;
   sbnCalcular.Enabled     := true;
   sbnDuplicar.Enabled     := False;
   sbnlSep.Enabled      := False;
   end
else if ptipo=0 then
   begin
   sbnIncluir.Enabled      := true;
   sbnLocalizar.Enabled    := true;
   sbnAlterar.Enabled      := False;
   sbnGravar.Enabled       := False;
   sbnVendaRapida.Enabled  := False;
   sbnContrato.Enabled     := False;
   sbnCalcular.Enabled     := False;
   sbnExcluir.Enabled      := False;
   sbnNFE.Enabled          := False;
   sbnEMail.Enabled        := False;
   sbnEMailXML.Enabled     := False;
   sbnDuplicar.Enabled     := False;

   sbnlSep.Enabled      := False;

   end
else if ptipo=1 then
   begin
   sbnIncluir.Enabled      := true;
   sbnLocalizar.Enabled    := true;
   sbnAlterar.Enabled      := true;
   sbnGravar.Enabled       := False;
   sbnVendaRapida.Enabled  := False;
   sbnContrato.Enabled     := True;
   sbnCalcular.Enabled     := False;
   sbnExcluir.Enabled      := true;
   sbnNFE.Enabled          := true;
   sbnEMailXML.Enabled     := true;
   sbnEMail.Enabled        := true;
   sbnDuplicar.Enabled     := true;

   sbnlSep.Enabled      := true;

   end;
result:=true;

end;

function TFrm_Venda_Pre_Farma.fPosicao(ptipo: Integer): Boolean;
var
pRect:TRect;
x,i: Integer;
begin
//GetWindowRect(Memo_ObsPed.Handle,pRect);
x:=pRect.left; // -->>>posicao em relação a esquerda em relação a tela
i:=pRect.Top; //-->>>posicao em relação ao Top
end;


function tFrm_Venda_Pre_Farma.fRecalcularPedido(pTipo: Integer): Boolean;
var
mPrecoUnit_Cal: Real;
//mQtd_Cal: Real;
//mQtd_Ant_Cal: Real;

mPrecoTab_Cal: Real;
mPrecoUCPR_Cal: Real;
mPrecoCus_Cal: Real;
mPrecoMax_Cal: Real;

mValseg: Real;
mValFre: Real;
mTarBan: Real;
mOutDesp: Real;
mDescValor: Real;
x: Integer;
mValorTemp: Real;
mAnt_Item, mAnt_QtdParc: Integer;
mAnt_pDesc01,mAnt_pDesc02,mAnt_pDesc03: Real;

mAnt_CodPro: String;

begin

mAnt_QtdParc:=mVenda_GP.mPed1_QtdParc_ant;
mAnt_pDesc01:=mVenda_GP.mPed1_pDesc01_Ant;
mAnt_pDesc02:=mVenda_GP.mPed1_pDesc02_Ant;
mAnt_pDesc03:=mVenda_GP.mPed1_pDesc03_Ant;
mAnt_Item   :=mItem_Ant;
mAnt_CodPro :=mCodpro_Ant;
mCodpro_lid :='';


mVenda_GP.mPed1_QtdParc_ant:=-1;



for x:=1 to 2 do
   begin

   if mVenda_GP.mped1_submod=100 then
      begin
      if codemp>100 then
         mVenda_GP.mPed1_Codemp:=codemp-100
      else
         mVenda_GP.mPed1_Codemp:=codemp+100
      end
   else
      begin
      if x=1 then
         mVenda_GP.mPed1_Codemp:=codemp
      else
         begin
         if codemp>100 then
            mVenda_GP.mPed1_Codemp:=codemp-100
         else
            mVenda_GP.mPed1_Codemp:=codemp+100;
         end;
      end;

   if (mVenda_GP.mped1_submod=100) or (mVenda_GP.mped1_submod=0) then
      begin
      mPrecoUnit_Cal:=tb_ped02_preP2PRECO.AsFloat;
      mQtd_Cal:=tb_ped02_preP2QTD.AsFloat;
      mQtd_Ant_Cal:=mQtd_Ant;
      mPrecoTab_Cal :=Tb_Ped02_preP2PRECO_TAB.AsFloat;
      mPrecoUCPR_Cal:=Tb_Ped02_preP2PRECO_UCPR.AsFloat;
      mPrecoCus_Cal :=Tb_Ped02_preP2PRECO_CUS.AsFloat;
      mPrecoMax_Cal :=Tb_Ped02_preP2PRECO_MAXCONS.AsFloat;

      mDescValor    :=valfloat(edt_desc_valor.Text);
      mValseg       :=valfloat(edt_valseg.Text);
      mValFre       :=ValFloat(edt_valfre.Text);
      mTarBan       :=ValFloat(edt_tarban1.Text)+ValFloat(edt_tarban_101.Text);
      mOutDesp      :=valfloat(edt_despAces.Text);
      end
   else
      begin
      if mVenda_GP.mped1_formace=0 then
         begin
         mPrecoUnit_Cal:=tb_ped02_preP2PRECO.AsFloat;

         mPrecoTab_Cal :=Tb_Ped02_preP2PRECO_TAB.AsFloat;
         mPrecoUCPR_Cal:=Tb_Ped02_preP2PRECO_UCPR.AsFloat;
         mPrecoCus_Cal :=Tb_Ped02_preP2PRECO_CUS.AsFloat;
         mPrecoMax_Cal :=Tb_Ped02_preP2PRECO_MAXCONS.AsFloat;


         mValorTemp:=Arredonda( (Tb_Ped02_preP2QTD.AsFloat*mVenda_GP.mped1_submod/100), 0);
         if x=2 then
            mQtd_Cal:=mValorTemp
         else
            mQtd_Cal:=Tb_Ped02_preP2QTD.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (mQtd_Ant*mVenda_GP.mped1_submod/100), 0);
         if x=2 then
            mQtd_Ant_Cal:=mValorTemp
         else
            mQtd_Ant_Cal:=Tb_Ped02_preP2QTD.AsFloat-mValorTemp;

         end
      else
         begin
         mQtd_Ant_Cal:=mQtd_Ant;
         mQtd_Cal:=Tb_Ped02_preP2QTD.AsFloat;
         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO.AsFloat*mVenda_GP.mped1_submod/100), trunc(mVenda_GP.mPed1_QtdDec));
         if x=2 then
            mPrecoUnit_Cal:=mValorTemp
         else
            mPrecoUnit_Cal:=tb_ped02_preP2PRECO.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_TAB.AsFloat*mVenda_GP.mped1_submod/100), trunc(mVenda_GP.mPed1_QtdDec));
         if x=2 then
            mPrecoTab_Cal:=mValorTemp
         else
            mPrecoTab_Cal:=tb_ped02_preP2PRECO_TAB.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_TAB.AsFloat*mVenda_GP.mped1_submod/100), trunc(mVenda_GP.mPed1_QtdDec));
         if x=2 then
            mPrecoTab_Cal:=mValorTemp
         else
            mPrecoTab_Cal:=tb_ped02_preP2PRECO_TAB.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_UCPR.AsFloat*mVenda_GP.mped1_submod/100), trunc(mVenda_GP.mPed1_QtdDec));
         if x=2 then
            mPrecoUCPR_Cal:=mValorTemp
         else
            mPrecoUCPR_Cal:=Tb_Ped02_preP2PRECO_UCPR.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_CUS.AsFloat*mVenda_GP.mped1_submod/100), trunc(mVenda_GP.mPed1_QtdDec));
         if x=2 then
            mPrecoCus_Cal:=mValorTemp
         else
            mPrecoCus_Cal:=Tb_Ped02_preP2PRECO_CUS.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_MAXCONS.AsFloat*mVenda_GP.mped1_submod/100), trunc(mVenda_GP.mPed1_QtdDec));
         if x=2 then
            mPrecoMax_Cal:=mValorTemp
         else
            mPrecoMax_Cal:=Tb_Ped02_preP2PRECO_MAXCONS.AsFloat-mValorTemp;

         end;

      mValorTemp:=Arredonda( (valfloat(edt_desc_valor.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASAS.AsInteger);
      if x=2 then
         mDescValor:=mValorTemp
      else
         mDescValor:=valfloat(edt_desc_valor.Text)-mValorTemp;


      mValorTemp:=Arredonda( (valfloat(edt_valseg.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASAS.AsInteger);
      if x=2 then
         mValseg:=mValorTemp
      else
         mValseg:=valfloat(edt_valseg.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_valfre.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASAS.AsInteger);
      if x=2 then
         mValFre:=mValorTemp
      else
         mValFre:=valfloat(edt_valfre.Text)-mValorTemp;

{      mValorTemp:=Arredonda( (valfloat(edt_tarban1.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASAS.AsInteger);
      if x=2 then
         mTarBan:=mValorTemp
      else
         mTarBan:=valfloat(edt_tarban.Text)-mValorTemp;
}
      mValorTemp:=Arredonda( (valfloat(edt_despAces.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASAS.AsInteger);
      if x=2 then
         mOutDesp:=mValorTemp
      else
         mOutDesp:=valfloat(edt_despAces.Text)-mValorTemp;

      if (mVenda_GP.mped1_submod=100) or (mVenda_GP.mped1_submod=0) then
         break;
      end;

    mVenda_GP.fGravarItem(0 // produto
                        ,mitem_ant
                        ,0 //p2Estoque
                        ,mVenda_GP.mPed1_CodFP
                        ,3 //apenas calcular
                        ,0 //pSituacao: Integer;
                        ,mCodpro_Ant
                        ,mVenda_GP.mPed1_NomFP
                        ,mVenda_GP.mPed1_BaixaFP
                        ,0 //pQtd_Cal
                        ,0 // pPrecoUnit_Cal
                        ,0 //,pPrecoTab_Cal
                        ,0 // pPrecoUCPR_Cal
                        ,0 // pPrecoCus_Cal
                        ,0 // pPrecoMax_Cal,
                        ,mQtd_Ant
                        ,valfloat(edt_valseg.Text)
                        ,ValFloat(edt_valfre.Text)
                        ,iif(mVenda_GP.mPed1_Codemp>100,ValFloat(edt_tarban_101.Text),ValFloat(edt_tarban1.Text))
                        ,valfloat(edt_despAces.Text)
                        ,valfloat(edt_desc_valor.Text)
                        ,nil);

{    mVenda_GP.fGravarItem(0 // item
                      ,mItem_Ant
                      ,0 //cds_ped02_preP2CFOP_ECF.AsInteger,
                      ,1 //cons_proprio
                      ,0 //cds_ped02_preP2CFOP_NF.AsInteger
                      ,0 //cds_ped02_preP2MODBCST.AsInteger,
                      ,0 // situacao
                      ,0 // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta
                      ,mVenda_GP.mPed1_CodFP
                      ,3 // tipo do evento 3-apenas calcular
                      ,0 // CONTROLE ESPECIAL
                      ,'' //cds_ped02_preP2CODPRO.AsString,
                      ,''
                      ,''
                      ,mCodpro_Ant // codigo anterior
                      ,0 //cds_ped02_preP2QTD.AsFloat,
                      ,mQtd_Ant
                      ,0 //cds_ped02_preP2DESC_PERC01.AsFloat,
                      ,0 //cds_ped02_preP2DESC_PERC02.AsFloat,
                      ,0 //tb_ped02_pre.AsFloat,
                      ,0 // desconto em valor
                      ,0 //cds_ped02_preP2PRECO.AsFloat,
                      ,0
                      ,0
                      ,0
                      ,0 //repasse de icms
                      ,0 // lista neutra positiva negativa
                      ,0 //cds_ped02_preP2PRECO_TAB.AsFloat,
                      ,0 //cds_ped02_preP2PRECO_TAB.AsFloat, // preco da forma de pagamento
                      ,0 //cds_ped02_preP2PRECO_UCPR.AsFloat,
                      ,0 //cds_ped02_preP2PRECO_CUS.AsFloat,
                      ,0 //cds_ped02_preP2PRECO_MAXCONS.AsFloat,
                      ,0 //cds_ped02_preP2IPI_PERC.AsFloat,
                      ,0 //cds_ped02_preP2ICMS_PERC.AsFloat,
                      ,0 // percentual de comissao
                      ,0 //cds_ped02_preP2PIS_PERC.AsFloat,
                      ,0 //cds_ped02_preP2COFINS_PERC.AsFloat,
                      ,0 //cds_ped02_preP2DESCFIN_PERC.AsFloat,
                      ,0 // percentual de acrescimos
                      ,0 //cds_ped02_preP2CODVEN.AsFloat,
                      ,0 //cds_ped02_preP2ICMS_PPRED.AsFloat,
                      ,0 //cds_ped02_preP2ST_IVA.AsFloat,
                      ,0 //cds_ped02_preP2ST_REDUT.AsFloat,
                      ,0 //cds_ped02_preP2ST_REDUT.AsFloat,
                      ,0 //cds_ped02_preP2ST_ICMSDEB.AsFloat,
                      ,0 //cds_ped02_preP2ST_ICMSCRED.AsFloat,
                      ,0 // cds_ped02_preP2ICMSSN_PERC.AsFloat,
                      ,valfloat(edt_desc_valor.Text)
                      ,0 // ACRESCIMOS RATEADO
                      ,valfloat(edt_valseg.Text)
                      ,ValFloat(edt_valfre.Text)
                      ,iif(mVenda_GP.mPed1_Codemp>100,ValFloat(edt_tarban_101.Text),ValFloat(edt_tarban1.Text))
                      ,valfloat(edt_despAces.Text)
                      ,'' //cds_ped02_preP2CST.AsString,
                      ,'' //cds_ped02_preP2AMBIENTE.AsString,
                      ,'' //cds_ped02_preP2DESC_COMP.AsString,
                      ,'' //cds_ped02_preP2CSOSN.AsString,
                      ,'' //cds_ped02_preP2csosn_ori.AsString
                      ,'' //cds_ped02_preP2PROMOCAO.AsString
                      ,mVenda_GP.mPed1_NomFP,mVenda_GP.mPed1_BaixaFP,'','',''
                      ,0 // tipo de preco
                      ,0 // icms aliquota ipi
                      );     }
   if (mVenda_GP.mped1_submod=100) or (mVenda_GP.mped1_submod=0) then
      break
   else
      begin
      if codemp>100 then
         begin
         if codemp>100 then
            mVenda_GP.mPed1_Codemp:=codemp-100
         else
            mVenda_GP.mPed1_Codemp:=codemp+100
         end;
      mVenda_GP.mPed1_QtdParc_ant:=mAnt_QtdParc;
      mVenda_GP.mPed1_pDesc01_Ant:=mAnt_pDesc01;
      mVenda_GP.mPed1_pDesc02_Ant:=mAnt_pDesc02;
      mVenda_GP.mPed1_pDesc03_Ant:=mAnt_pDesc03;
      mItem_Ant                  :=mAnt_Item;
      mCodpro_Ant                :=mAnt_CodPro;


      end;
   end;


fLerFormaPag(0);
if Tb_FP_pre.IsEmpty then
   begin
   fGeraFPgto(0,mVenda_GP.mped1_Chave,mVenda_GP.mPed1_Chave_ano,mVenda_GP.mPed1_Codemp_ini);
   if mVenda_GP.mPed1_Codemp_ini<>mVenda_GP.mPed1_Codemp_fin then
      fGeraFPgto(0,mVenda_GP.mped1_Chave,mVenda_GP.mPed1_Chave_ano,mVenda_GP.mPed1_Codemp_fin);
    end;



fTotais(0);
mped_Alterou_Cab:=false;

end;


function TFrm_Venda_Pre_Farma.fVerificarOrdemFPgto(ptipo: Integer): Boolean;
var
mOrdemFP,mQtdParc: Integer;
Query2: TQuery;
Query1: TQuery;
begin
Query1:=TQuery.Create(nil);
Query1.DatabaseName:='SG_ASSOC';

Query2:=TQuery.Create(nil);
Query2.DatabaseName:='SG_ASSOC';
Query2.Close;
Query2.SQL.Clear;
Query2.SQL.Add('Select * from CADPFP  '
                          +' where PFPCODEMP='+IntTostr(mVenda_GP.mPed1_Codemp)
                          +' and   PFPCHAVE='+IntTostr(mVenda_GP.mped1_Chave)
                          +' and   PFPLOTSEQ='+IntTostr(mVenda_GP.mPed1_Chave_ano)
                          +' order by PFPDATA,PFPSEQ ');
try
   Query2.Open;
except
   result:=false;
   exit;
   end;
mOrdemFP:=0;
mQtdParc:=Query2.RecordCount;
while not Query2.Eof do
   begin
   mOrdemFP:=mOrdemFP+1;
   if (Query2.FieldByName('PFPSEQ').AsInteger<>mOrdemFP) or
      (Query2.FieldByName('PFPQTDPARC').AsInteger<>mQtdParc) then
      begin
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('Update CADPFP set PFPSEQ=:PARCELA '
                                +', PFPQTDPARC=:QTDPARC '
                                +' where PFPCODEMP=:CODEMP '
                                +' and   PFPCHAVE=:CHAVE '
                                +' and   PFPLOTSEQ=:CHAVE_ANO '
                                +' and   PFPSEQ=:PARCELA_ANT '
                                +' and   PFPQTDPARC=:QTDPARC_ANT ');
      Query1.ParamByName('PARCELA').AsInteger:=mOrdemFP;
      Query1.ParamByName('QTDPARC').AsInteger:=mQtdParc;
      Query1.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp;
      Query1.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
      Query1.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
      Query1.ParamByName('PARCELA_ANT').AsInteger:=Query2.FieldByName('PFPSEQ').AsInteger;
      Query1.ParamByName('QTDPARC_ANT').AsInteger:=Query2.FieldByName('PFPQTDPARC').AsInteger;
      try
         Query1.ExecSQL;
         fDM1StartCommit;
      except
         result:=false;
         freeandnil(query1);
         freeandnil(query2);
         exit;
         end;
      end;
   Query2.Next;
   end;
freeandnil(query1);
freeandnil(query2);

result:=true;

end;


function TFrm_Venda_Pre_Farma.fBloqueiaLiberaPedido(ptipo: Integer): Boolean;
// ptipo=0-libera
//       1-bloqueio

var
Query1: TQuery;
query_fpgag: tQuery;
begin
if mVenda_GP.mped1_Chave>0  then
   begin
   Query1:=TQuery.Create(nil);
   Query1.DatabaseName:='SG_ASSOC';
   Query1.Close;
   Query1.SQL.Clear;
   Query1.SQL.Add('Update CADP01 set P1SITPED=:SITUACAO '
                             +' where (P1CODEMP=:CODEMP or P1CODEMP=:CODEMP_FILIAL) '
                             +' and   P1CHAVE=:CHAVE '
                             +' and   P1LOTSEQ=:CHAVE_ANO '
                             +' and   P1SITPED<>9 ' );
   Query1.ParamByName('SITUACAO').AsInteger:=ptipo;
   Query1.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
   Query1.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
   Query1.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
   Query1.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;

   try
      Query1.ExecSQL;
      fDM1StartCommit;
   except
      if not fVerificaRedeAtiva(true) then
         begin
         end
      else
         begin
         FreeAndNil(query1);

         ex_erroSql_Novo(DM1.Query1,20210,'_lerarq','adp01_pre');
         end;
      end;
   FreeAndNil(query1);
   end;
result:=true;
end;

function TFrm_Venda_Pre_Farma.fLerPedidoGeral(pCodEmp,pChave,pChave_ano: Integer): Boolean;
// ptipo=0-libera
//       1-bloqueio
var
Query_Ped01D: TQuery;
Query_FPag: TQuery;
Query_csf: TQuery;
Query_obs: tQuery;

begin
mped_Alterou_Cab:=false;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('SELECT P1TIPO '
                  +',P1CHAVE '
                  +',P1LOTSEQ '
                  +',min(P1SEPAMB) as P1SEPAMB '
                  +',min(P1NUMCF) as P1NUMCF '
                  +',min(P1ECF_SERIE) as P1ECF_SERIE '
                  +',min(P1DATACF) as P1DATACF '
                  +',min(P1CODCV) as P1CODCV '

                  +',min(P1TIPENT) as P1TIPENT '
                  +',min(P1DATHOR_PENT) as P1DATHOR_PENT '
                  +',min(P1ENTREGA_CEP) as P1ENTREGA_CEP '
                  +',min(P1ENTREGA_ENDER) as P1ENTREGA_ENDER '
                  +',min(P1ENTREGA_BAIRRO) as P1ENTREGA_BAIRRO '

                  +',min(P1ENTREGA_CIDADE) as P1ENTREGA_CIDADE '
                  +',min(P1ENTREGA_CODLOC) as P1ENTREGA_CODLOC '
                  +',min(P1ENTREGA_UF) as P1ENTREGA_UF '
                  +',min(P1ENTREGA_OBS) as P1ENTREGA_OBS '




                  +',min(P1NUMNF) as P1NUMNF '
                  +',min(P1DATANF) as P1DATANF '
                  +',min(P1SERIE) as P1SERIE '
                  +',min(P1MODELO) as P1MODELO '
                  +', max( (SELECT CFNOME FROM CADPRO_FILIAL WHERE (CFCODEMP=:CODEMP_MENOR OR CFCODEMP=:CODEMP_MAIOR)  AND CFFILIAL=NVL(P1FILIAL,1))) AS FILIAL '
                  +',min(P1CODEMP) as P1CODEMP '
                  +',max(P1FILIAL) as P1FILIAL '
                  +',max(P1CODVEN) as P1CODVEN '
                  +',max(P1CODCLI) as P1CODCLI '
                  +',max(P1ACRESCIMO) as P1ACRESCIMO '
                  +',max(P1CODUSR) as P1CODUSR '
                  +',max(P1DATASEP) AS P1DATASEP '
                  +',max(P1BANCO) as P1BANCO '
                  +',max(P1BASEN) as P1BASEN '
                  +',max(P1ICMSN) as P1ICMSN '
                  +',max(P1CODPV) as P1CODPV '
                  +',max(P1PVDESCF) as P1PVDESCF '
                  +',max(P1PVDIASDESCF) as P1PVDIASDESCF '
                  +',max(P1PVDDESCF) as P1PVDDESCF '

                  +',max(P1TABPV) as P1TABPV '
                  +',max(P1BASER) as P1BASER '
                  +',max(P1ICMSR) as P1ICMSR '

                  +',max(P1CODTRA) as P1CODTRA '
                  +',max(P1FRETEPC) as P1FRETEPC '
                  +',max(P1QTDVOL) as P1QTDVOL '
                  +',max(P1TPPCO) as P1TPPCO'
                  +',max(P1SITPED) as P1SITPED '
                  +',max(P1CODUSR_ULTEVE) as P1CODUSR_ULTEVE '
                  +',max(P1QTDMAN) as P1QTDMAN '
                  +',max(P1BLOQPEND) as P1BLOQPEND '
                  +',max(P1QTDDECPU) as P1QTDDECPU '
                  +',max(P1TARBAN) as P1TARBAN '
                  +',max(P1DESPACES) as P1DESPACES'
                  +',max(P1VALSEG) as P1VALSEG '
                  +',max(P1VALFRE) as P1VALFRE '
                  +',max(P1DESC01) as P1DESC01 '
                  +',max(P1DESC02) as  P1DESC02 '
                  +',max(P1ETIVOL) as P1ETIVOL '
                  +',max(P1PEDORI1) as P1PEDORI1 '
                  +',max(P1PEDORI2) as P1PEDORI2 '
                  +',max(P1MINUTA) as  P1MINUTA '
                  +', 0 AS P1DESC03 '
                  +',max(P1VLRDES) as P1VLRDES '
                  +',MAX(NVL(P1IPIINA,0)+NVL(P1IPIPOS,0)+NVL(P1IPINEG,0)) AS P1TOTIPI '
                  +',max(P1VLRACRE) as P1VLRACRE '
                  +',max(P1PESOB) as P1PESOB '
                  +',max(P1PESOL) as P1PESOL '
                  +',max(P1DESCFIN) as P1DESCFIN '
                  +',max(P1OBS2) as P1OBS2 '
                  +',max(P1OBS1) as P1OBS1 '
                  +',max(P1OBS3) as P1OBS3 '
                  +',max(P1FORMACE) as P1FORMACE '
                  +',max(P1ESPECIE) as P1ESPECIE '
                  +',max(P1UFPV) as P1UFPV '
                  +',max(P1PLACAV) as P1PLACAV '
                  +',max(P1COMP_ULTEVE) as P1COMP_ULTEVE '
                  +',max(P1DATAP) as P1DATAP '
                  +',max(P1PREVENT) as P1PREVENT '
                  +',max(P1DTHRCHEG) as P1DTHRCHEG '
                  +',max(P1DATHOR_UEVE) as P1DATHOR_UEVE '
                  +',max(P1CODSEP) as P1CODSEP '
                  +',max(P1CODEMB) as P1CODEMB '
                  +',max(P1CODCON) as P1CODCON '
                  +',max(P1CODENT) as P1CODENT '
                  +',max(P1DATCON) as P1DATCON '
                  +',max(P1DATENT) as P1DATENT '

                  +',max(P1DATAEMB) as P1DATAEMB '
                  +',max(P1CANHOTO) as P1CANHOTO '
                  +',sum(P1TOTALL) as P1TOTALL '
                  +',sum(P1TOTALB) as P1TOTALB '
                  +',sum(P1TOTSERLIQ) as P1TOTSERLIQ '


                  +',max(P1NFE_CHACESSO) as P1NFE_CHACESSO '
                  +',max(P1NFE_NPROT) as P1NFE_NPROT '
                  +',max(P1DATANF_SERV) as P1DATANF_SERV '
                  +',max(P1SERIE_SERV) as P1SERIE_SERV '
                  +',max(P1NUMNF_SERV) as P1NUMNF_SERV '
                  +',max(P1NFS_SITUACAO) as P1NFS_SITUACAO '
                  +',max(P1NFS_CHACESSO) as P1NFS_CHACESSO '
                  +',max(P1MODELO_SERV) as P1MODELO_SERV '
                  +',max(P1NFS_NPROT) as P1NFS_NPROT '
//                  +',max(P1PRZNOVOS) as P1PRZNOVOS '
                  +',(select max(P1PRZNOVOS) FROM CADP01 PED_MENOR where '

                  +'               (P1CODEMP=:CODEMP_MENOR) '
                  +'          and   P1CHAVE=:CHAVE '
                  +'         and   P1LOTSEQ=:CHAVE_ANO '
                  +'         and   P1ORDEM=:ORDEM ) AS P1PRZNOVOS_001 '


                  +',(select max(P1PRZNOVOS) FROM CADP01 PED_MENOR where '
                  +'               (P1CODEMP=:CODEMP_MAIOR) '
                  +'          and   P1CHAVE=:CHAVE '
                  +'         and   P1LOTSEQ=:CHAVE_ANO '
                  +'         and   P1ORDEM=:ORDEM ) AS P1PRZNOVOS_101 '


                  +',(select max(nvl(P1SUBMOD,'+QuotedStr('SSS')+')) FROM CADP01 PED_MENOR where '

                  +'               (P1CODEMP=:CODEMP_MENOR) '
                  +'          and   P1CHAVE=:CHAVE '
                  +'         and   P1LOTSEQ=:CHAVE_ANO '
                  +'         and   P1ORDEM=:ORDEM ) AS SUBMOD_MENOR '
                  +',(select max(nvl(P1SUBMOD,'+QuotedStr('SSS')+')) FROM CADP01 PED_MENOR where '
                  +'               (P1CODEMP=:CODEMP_MAIOR) '
                  +'          and   P1CHAVE=:CHAVE '
                  +'         and   P1LOTSEQ=:CHAVE_ANO '
                  +'         and   P1ORDEM=:ORDEM ) AS SUBMOD_MAIOR '
                  +' FROM CADP01 where '
                  +'       (P1CODEMP=:CODEMP_MENOR or P1CODEMP=:CODEMP_MAIOR) '
                  +' and   P1CHAVE=:CHAVE '
                  +' and   P1LOTSEQ=:CHAVE_ANO '
                  +' and   P1ORDEM=:ORDEM '
                  +' and   P1STATUS<>9 ');

DM1.Query2.sql.Add(' group by P1TIPO,P1CHAVE,P1LOTSEQ ');
DM1.Query2.sql.Add(' order by P1CODEMP ');
DM1.Query2.ParamByName('CODEMP_MENOR').AsInteger   :=pCodEmp;
if pcodemp>100 then
   DM1.Query2.ParamByName('CODEMP_MAIOR').AsInteger   :=pCodEmp-100
else
   DM1.Query2.ParamByName('CODEMP_MAIOR').AsInteger   :=pCodEmp+100;

DM1.Query2.ParamByName('CHAVE').AsInteger    :=pChave;
DM1.Query2.ParamByName('CHAVE_ANO').AsInteger:=pChave_ano;
DM1.Query2.ParamByName('ORDEM').AsInteger    :=01;
//DM1.Query2.SQL.SaveToFile('C:\SQL2.TXT');
try
   DM1.Query2.Open;
except
   if not fVerificaRedeAtiva(true) then
      begin
      end
   else
      begin
      ex_erroSql_Novo(DM1.Query2,20210,'_lerarq','paf_cadp01_pre');
      end;
   end;
if DM1.Query2.IsEmpty then
   begin
   MessageDlg('Pedido '+IntToStr(pChave)+'/'+IntToStr(pChave_ano)+' Empresa: '+IntToStr(pCodEmp)+' Não Encontrado!',mtWarning,[mbOk],0);
   Result:=false;
   exit;
   end;
mVenda_GP.mPed1_Codemp        :=DM1.Query2.FieldByName('P1CODEMP').AsInteger;
if mVenda_GP.mPed1_Codemp>100 then
   mVenda_GP.mPed1_Codemp_ini:=mVenda_GP.mPed1_Codemp-100
else
   mVenda_GP.mPed1_Codemp_ini:=mVenda_GP.mPed1_Codemp;

if mVenda_GP.mPed1_Codemp_ini > 100 then
   mVenda_GP.mPed1_Codemp_fin:=mVenda_GP.mPed1_Codemp_ini-100
else
   mVenda_GP.mPed1_Codemp_fin:=mVenda_GP.mPed1_Codemp_ini+100;

pOp:=0;
mVenda_GP.mPed1_TotMer        :=DM1.Query2.FieldByName('P1TOTALB').AsFloat
                               -DM1.Query2.FieldByName('P1TOTSERLIQ').AsFloat;
mVenda_GP.mPed1_TotSer        :=DM1.Query2.FieldByName('P1TOTSERLIQ').AsFloat;
mVenda_GP.mPed1_DatHor_UEVE   :=DM1.Query2.FieldByName('P1DATHOR_UEVE').AsDateTime;

mVenda_GP.mPed1_ST_base       :=DM1.Query2.FieldByName('P1BASER').AsFloat;
mVenda_GP.mPed1_ST_Icms       :=DM1.Query2.FieldByName('P1ICMSR').AsFloat;


mVenda_GP.mped1_Chave         :=DM1.Query2.FieldByName('P1CHAVE').AsInteger;
mVenda_GP.mPed1_Chave_ano     :=DM1.Query2.FieldByName('P1LOTSEQ').AsInteger;
mVenda_GP.mPed1_CodCli        :=DM1.Query2.FieldByName('P1CODCLI').Value;
mvenda_gp.mPed1_Acrescimo     :=DM1.Query2.FieldByName('P1ACRESCIMO').AsInteger;
mVenda_GP.mPed1_Totall        :=DM1.Query2.FieldByName('P1TOTALL').AsFloat;

mVenda_GP.mped1_Filial        :=DM1.Query2.FieldByName('P1FILIAL').AsInteger;

if mVenda_GP.mped1_Filial<1 then
   mVenda_GP.mped1_Filial:=1;

CB_FILIAL.Text:=DM1.Query2.FieldByName('FILIAL').AsString;
with CB_FILIAL do
   ItemIndex := Items.IndexOf(CB_FILIAL.Text);


mVenda_GP.mPed1_SepAmb        :=DM1.Query2.FieldByName('P1SEPAMB').AsInteger;
CB_SEPAMB.ItemIndex:=mVenda_GP.mPed1_SepAmb;
CB_SEPAMBExit(self);

mVenda_GP.mped1_tppco         :=DM1.Query2.fieldbyName('P1TPPCO').AsInteger;
mVenda_GP.mPed1_Codven        :=DM1.Query2.FieldByName('P1CODVEN').AsInteger;
mVenda_GP.mPed1_CodPV         :=DM1.Query2.FieldByName('P1CODPV').AsInteger;


mVenda_GP.mPed1_pvdescf       :=DM1.Query2.FieldByName('P1PVDESCF').AsFloat;
mVenda_GP.mPed1_pvdiasdescf   :=DM1.Query2.FieldByName('P1PVDIASDESCF').AsInteger;
mVenda_GP.mPed1_pvdescf       :=DM1.Query2.FieldByName('P1PVDDESCF').AsInteger;

mVenda_GP.mPed1_TabPV         :=DM1.Query2.FieldByName('P1TABPV').AsString;
mVenda_GP.mPed1_Situacao      :=DM1.Query2.FieldByName('P1SITPED').AsInteger;
mVenda_GP.mPed1_CodUsr_UEVE   :=DM1.Query2.FieldByName('P1CODUSR_ULTEVE').AsInteger;
mVenda_GP.mPed1_QtdMan        :=DM1.Query2.FieldByName('P1QTDMAN').AsInteger;
mVenda_GP.mPed1_Bloqueio      :=DM1.Query2.FieldByName('P1BLOQPEND').AsInteger;
mVenda_GP.mPed1_QtdDec        :=DM1.Query2.FieldByName('P1QTDDECPU').AsInteger;

if mVenda_GP.mPed1_QtdDec<0 then
   mVenda_GP.mPed1_QtdDec        :=DM1.Tb_PargerPCASASPU.AsInteger;

mVenda_GP.mPed1_Tipo_Ped      :=DM1.Query2.FieldByName('P1TIPO').AsInteger;
mVenda_GP.mPed1_TarBan_001    :=DM1.Query2.FieldByName('P1TARBAN').AsFloat;
mVenda_GP.mPed1_DespAces      :=DM1.Query2.FieldByName('P1DESPACES').AsFloat;
mVenda_GP.mPed1_Icms_Base     :=DM1.Query2.FieldByName('P1BASEN').AsFloat;
mVenda_GP.mPed1_Icms_Valor    :=DM1.Query2.FieldByName('P1ICMSN').AsFloat;

mVenda_GP.mPed1_TotSer        :=DM1.Query2.FieldByName('P1TOTSERLIQ').AsFloat;
mVenda_GP.mPed1_ValSeg        :=DM1.Query2.FieldByName('P1VALSEG').AsFloat;
mVenda_GP.mPed1_ValFre        :=DM1.Query2.FieldByName('P1VALFRE').AsFloat;
mVenda_GP.mPed1_TotIPI        :=DM1.Query2.FieldByName('P1TOTIPI').AsFloat;

mVenda_GP.mPed1_tipent        :=DM1.Query2.FieldByName('P1TIPENT').AsInteger;
mVenda_GP.mPed1_dathot_pent   :=DM1.Query2.FieldByName('P1DATHOR_PENT').AsDateTime;
mVenda_GP.mPed1_entrega_cep   :=DM1.Query2.FieldByName('P1ENTREGA_CEP').AsString;
mVenda_GP.mPed1_entrega_ender :=DM1.Query2.FieldByName('P1ENTREGA_ENDER').AsString;
mVenda_GP.mPed1_entrega_bairro :=DM1.Query2.FieldByName('P1ENTREGA_BAIRRO').AsString;
mVenda_GP.mPed1_entrega_cidade :=DM1.Query2.FieldByName('P1ENTREGA_CIDADE').AsString;
mVenda_GP.mPed1_entrega_uf     :=DM1.Query2.FieldByName('P1ENTREGA_UF').AsString;
mVenda_GP.mPed1_entrega_codloc :=DM1.Query2.FieldByName('P1ENTREGA_CODLOC').AsInteger;
mVenda_GP.mPed1_entrega_obs    :=DM1.Query2.FieldByName('P1ENTREGA_OBS').AsString;
mVenda_GP.mPed1_PrzNovos_001   :=DM1.Query2.FieldByName('P1PRZNOVOS_001').AsString;
mVenda_GP.mPed1_PrzNovos_101   :=DM1.Query2.FieldByName('P1PRZNOVOS_101').AsString;
mVenda_GP.mPed1_Codcv          :=DM1.Query2.FieldByName('P1CODCV').AsInteger;


if trim(mVenda_GP.mPed1_PrzNovos_101)='' then
   mVenda_GP.mPed1_PrzNovos_101:=mVenda_GP.mPed1_PrzNovos_001;
if trim(mVenda_GP.mPed1_PrzNovos_001)='' then
   mVenda_GP.mPed1_PrzNovos_001:=mVenda_GP.mPed1_PrzNovos_101;

//mVenda_GP.mPed1_DescPed02_Perc :=DM1.Query2.FieldByName('P1ENTREGA_OBS').AsString;


cb_tipent.ItemIndex:=mVenda_GP.mPed1_tipent;
if mVenda_GP.mPed1_dathot_pent>pdatanula then
   edt_data_pent.Text            :=FormatDateTime(fdt2, mVenda_GP.mPed1_dathot_pent);
edt_hora_pent.Text            :=FormatDateTime('hh:nn', mVenda_GP.mPed1_dathot_pent);
edt_entrega_cep.Text          :=mVenda_GP.mPed1_entrega_cep;

edt_entrega_ender.Text           :=mVenda_GP.mPed1_entrega_ender;
edt_entrega_bairro.Text          :=mVenda_GP.mPed1_entrega_bairro;
edt_entrega_cidade.Text          :=mVenda_GP.mPed1_entrega_cidade;
edt_entrega_uf.Text              :=mVenda_GP.mPed1_entrega_uf;
edt_entrega_codloc.Text          :=IntTosTr(mVenda_GP.mPed1_entrega_codloc);
edt_entrega_obs.Text             :=mVenda_GP.mPed1_entrega_obs;


if (DM1.Query2.FieldByName('P1VALFRE').AsFloat=0) and
   (( DM1.Query2.FieldByName('P1TOTALB').AsFloat
    +DM1.Query2.FieldByName('P1TARBAN').AsFloat
    +DM1.Query2.FieldByName('P1VALSEG').AsFloat
    +DM1.Query2.FieldByName('P1DESPACES').AsFloat
    +DM1.Query2.FieldByName('P1TOTIPI').AsFloat
    +DM1.Query2.FieldByName('P1ICMSR').AsFloat
    -DM1.Query2.FieldByName('P1DESC01').AsFloat
    -DM1.Query2.FieldByName('P1DESC02').AsFloat
    -DM1.Query2.FieldByName('P1VLRDES').AsFloat)=0) then
   mVenda_GP.mPed1_Perc_Frete:=0
else
   mVenda_GP.mPed1_Perc_Frete:=DM1.Query2.FieldByName('P1VALFRE').AsFloat/(DM1.Query2.FieldByName('P1TOTALB').AsFloat
                                   +DM1.Query2.FieldByName('P1TARBAN').AsFloat
                                   +DM1.Query2.FieldByName('P1VALSEG').AsFloat
                                   +DM1.Query2.FieldByName('P1DESPACES').AsFloat
                                   +DM1.Query2.FieldByName('P1TOTIPI').AsFloat
                                   +DM1.Query2.FieldByName('P1ICMSR').AsFloat
                                   -DM1.Query2.FieldByName('P1DESC01').AsFloat
                                   -DM1.Query2.FieldByName('P1DESC02').AsFloat
                                   -DM1.Query2.FieldByName('P1VLRDES').AsFloat)*100;



mVenda_GP.mPed1_pDesc01       :=DM1.Query2.FieldByName('P1DESC01').AsFloat;
mVenda_GP.mPed1_pDesc02       :=DM1.Query2.FieldByName('P1DESC02').AsFloat;
//mVenda_GP.mPed1_pDesc03       :=DM1.Query2.FieldByName('P1DESC03').AsFloat;
mVenda_GP.mPed1_TotPromo      :=0;


mVenda_GP.mPed1_Desc_Rateado  :=DM1.Query2.FieldByName('P1VLRDES').AsFloat;
mVenda_GP.mPed1_Acres_VlrTot  :=DM1.Query2.FieldByName('P1VLRACRE').AsFloat;
mVenda_GP.mPed1_DescFin       :=DM1.Query2.FieldByName('P1DESCFIN').AsFloat;
mVenda_GP.mPed1_Desc_Cab      :=0;
mVenda_GP.mPed1_Obs_Ped       :=DM1.Query2.FieldByName('P1OBS2').AsString;
mVenda_GP.mPed1_Obs_NF        :=DM1.Query2.FieldByName('P1OBS1').AsString;
mVenda_GP.mPed1_Obs_NFS       :=DM1.Query2.FieldByName('P1OBS3').AsString;
mVenda_GP.mped1_formace       :=DM1.Query2.FieldByName('P1FORMACE').AsInteger;
if DM1.Query2.FieldByName('SUBMOD_MAIOR').IsNull then
   mVenda_GP.mped1_submod        :=StrToInt('0'+PalNum_Sis(DM1.Query2.FieldByName('SUBMOD_MENOR').Value))
else
   mVenda_GP.mped1_submod        :=StrToInt('0'+PalNum_Sis(DM1.Query2.FieldByName('SUBMOD_MAIOR').Value));
edt_codcv.Text:=FloatToStr(mVenda_GP.mPed1_Codcv);
edt_codcvExit(self);


{
 Value<>DM1.Query2.FieldByName('SUBMOD_MAIOR').Value then
   mVenda_GP.mped1_submod        :=100-StrToInt('0'+PalNum_Sis(DM1.Query2.FieldByName('SUBMOD_MAIOR').Value))
else
}


mVenda_GP.mPed1_Datap         :=DM1.Query2.FieldByName('P1DATAP').AsDateTime;

mVenda_GP.mPed1_DatHor_UEVE   :=DM1.Query2.FieldByName('P1DATHOR_UEVE').AsDateTime;
//mVenda_GP.mPed1_TarBan        :=DM1.Query2.FieldByName('P1TARBAN').AsFloat;
//mVenda_GP.mPed1_DespAces       :=DM1.Query2.FieldByName('P1DESPACES').AsFloat;
mVenda_GP.mPed1_CodBco1       :=DM1.Query2.FieldbyName('P1BANCO').AsInteger;


mVenda_GP.mPed1_pDesc01_Ant   :=0;
mVenda_GP.mPed1_pDesc02_Ant   :=0;
mVenda_GP.mPed1_pDesc03_Ant   :=0;
mVenda_GP.mPed1_QtdItem       :=0;
mVenda_GP.mPed1_QtdUnd        :=0;

mVenda_GP.mPed1_CodTra        :=DM1.Query2.FieldByName('P1CODTRA').AsInteger;
edt_codtra.Text:=FloattoStr(mVenda_GP.mPed1_CodTra);
mVenda_GP.mPed1_Tra_UFPV      :=DM1.Query2.FieldByName('P1UFPV').AsString;
cb_ufpv.Text                  :=mVenda_GP.mPed1_Tra_UFPV;
mVenda_GP.mPed1_Especie       :=DM1.Query2.FieldByName('P1ESPECIE').AsString;
edt_especie.Text              :=mVenda_GP.mPed1_Especie;
mVenda_GP.mPed1_Tra_PLACAv    :=DM1.Query2.FieldByName('P1PLACAV').AsString;
edt_placav.Text               :=mVenda_GP.mPed1_Tra_PLACAv;
mVenda_GP.mPed1_Comp_UEVE     :=DM1.Query2.FieldByName('P1COMP_ULTEVE').AsString;
mVenda_GP.mPed1_Frete_CIFFOB  :=DM1.Query2.FieldByName('P1FRETEPC').AsInteger-1;
if mVenda_GP.mPed1_Frete_CIFFOB<0 then
   mVenda_GP.mPed1_Frete_CIFFOB:=0
else if mVenda_GP.mPed1_Frete_CIFFOB>1 then
   mVenda_GP.mPed1_Frete_CIFFOB:=1;

CB_FRETEPC.ItemIndex          :=mVenda_GP.mPed1_Frete_CIFFOB;
mVenda_GP.mPed1_QtdVol        :=DM1.Query2.FieldByName('P1QTDVOL').AsInteger;
mVenda_GP.mped1_tppco         :=DM1.Query2.FieldByName('P1TPPCO').AsInteger;
edt_qtdvol.Text               :=IntToStr(mVenda_GP.mPed1_QtdVol);
mVenda_GP.mPed1_PesoB         :=DM1.Query2.FieldByName('P1PESOB').AsFloat;
edt_pesob.Text                :=FormatFloat('#,##0.000', mVenda_GP.mPed1_PesoB);
mVenda_GP.mPed1_PesoL         :=DM1.Query2.FieldByName('P1PESOL').AsFloat;
edt_pesol.Text                :=FormatFloat('#,##0.000', mVenda_GP.mPed1_PesoL);
mVenda_GP.mped1_prevent       :=DM1.Query2.FieldByName('P1PREVENT').AsDateTime;
edt_datsai.Text               :=FormatDatetime(fdt2, mVenda_GP.mped1_prevent);
edt_horsai.Text               :=FormatDatetime('hh:nn', mVenda_GP.mped1_prevent);

mVenda_GP.mPed1_minuta        :=DM1.Query2.FieldByName('P1MINUTA').AsInteger;
edt_minuta.Text               :=Inttostr(mVenda_GP.mPed1_Minuta);

mVenda_GP.mped1_etivol        :=DM1.Query2.FieldByName('P1ETIVOL').AsInteger;
cb_etivol.Checked             :=mVenda_GP.mped1_etivol=1;
mVenda_GP.mped1_canhoto       :=DM1.Query2.FieldByName('P1CANHOTO').AsInteger;
cb_canhoto.Checked            :=mVenda_GP.mped1_canhoto=1;
mVenda_GP.mPed1_CodUsr_Dig    :=DM1.Query2.FieldByName('P1CODUSR').AsInteger;
edt_coddig.Text               :=Inttostr(mVenda_GP.mPed1_CodUsr_Dig);
edt_coddigExit(Self);
mVenda_GP.mPed1_DatHor_Dig    :=DM1.Query2.FieldByName('P1DTHRCHEG').AsDateTime;
edt_datdig.Text               :=FormatDatetime(fdt2, mVenda_GP.mPed1_DatHor_Dig);
edt_hordig.Text               :=FormatDateTime('hh:nn', mVenda_GP.mPed1_DatHor_Dig);

mVenda_GP.mPed1_codsep        :=DM1.Query2.FieldByName('P1CODSEP').AsInteger;
edt_codsep.Text               :=inttostr(mVenda_GP.mped1_codsep);
edt_codsepExit(Self);

mVenda_GP.mPed1_DataSep       :=DM1.Query2.FieldByName('P1DATASEP').AsDateTime;
edt_datsep.Text               :=FormatDatetime(fdt2, mVenda_GP.mped1_DataSep);
edt_horsep.Text               :=FormatDatetime('hh:nn', mVenda_GP.mped1_DataSep);

mVenda_GP.mped1_npedori1       :=DM1.Query2.FieldByName('P1PEDORI1').AsString;
edt_pedori1.Text               :=mVenda_GP.mped1_npedori1;
edt_pedori1Exit(Self);

mVenda_GP.mPed1_nPedOri2       :=DM1.Query2.FieldByName('P1PEDORI2').AsString;
edt_pedori2.Text               :=mVenda_GP.mped1_npedori2;
edt_pedori2Exit(Self);


mVenda_GP.mPed1_codemb        :=DM1.Query2.FieldByName('P1CODEMB').AsInteger;
edt_codemb.Text               :=inttostr(mVenda_GP.mped1_codemb);
edt_codembExit(Self);

// servico


mVenda_GP.mPed1_nfe_chacesso  :=DM1.Query2.FieldByName('P1NFE_CHACESSO').AsString;
edt_nfe_chacesso.Text         :=mVenda_GP.mPed1_nfe_chacesso;

mVenda_GP.mPed1_nfe_nprot  :=DM1.Query2.FieldByName('P1NFE_NPROT').AsString;
edt_nfe_nprot.Text         :=mVenda_GP.mPed1_nfe_nprot;


mVenda_GP.mPed1_numnf_serv  :=DM1.Query2.FieldByName('P1NUMNF_SERV').AsInteger;
edt_numnfs.Text             :=IntToStr(mVenda_GP.mPed1_numnf_serv);


mVenda_GP.mPed1_datanf_serv  :=DM1.Query2.FieldByName('P1DATANF_SERV').AsDateTime;
edt_datanfs.Date             :=mVenda_GP.mPed1_datanf_serv;


mVenda_GP.mPed1_serie_serv :=DM1.Query2.FieldByName('P1SERIE_SERV').AsString;
edt_serie_nfs.Text          :=mVenda_GP.mPed1_serie_serv;

mVenda_GP.mPed1_modelo_serv :=DM1.Query2.FieldByName('P1MODELO_SERV').AsString;
edt_mod_nfs.Text            :=mVenda_GP.mPed1_modelo_serv;

mVenda_GP.mPed1_nprot_serv  :=DM1.Query2.FieldByName('P1NFS_NPROT').AsString;
edt_nfs_nprot.Text          :=mVenda_GP.mPed1_nprot_serv;
// termino servico




mVenda_GP.mPed1_Dataemb       :=DM1.Query2.FieldByName('P1DATAEMB').AsDateTime;
edt_datemb.Date               :=mVenda_GP.mped1_DataEmb;
edt_horemb.Text               :=FormatDatetime('hh:nn', mVenda_GP.mped1_DataEmb);



mVenda_GP.mPed1_codcon        :=DM1.Query2.FieldByName('P1CODCON').AsInteger;
edt_codconf.Text              :=inttostr(mVenda_GP.mped1_codcon);
edt_codconfExit(Self);
mVenda_GP.mPed1_Datcon        :=DM1.Query2.FieldByName('P1DATCON').AsDateTime;
edt_datconf.Text              :=FormatDatetime(fdt2, mVenda_GP.mped1_DatCon);
edt_horconf.Text              :=FormatDatetime('hh:nn', mVenda_GP.mped1_DatCon);


mVenda_GP.mPed1_codent        :=DM1.Query2.FieldByName('P1CODENT').AsInteger;
edt_codent.Text               :=inttostr(mVenda_GP.mped1_codent);
edt_codentExit(Self);

mVenda_GP.mPed1_Datent       :=DM1.Query2.FieldByName('P1DATENT').AsDateTime;
edt_datent.Text               :=FormatDatetime(fdt2, mVenda_GP.mped1_Datent);
edt_horent.Text               :=FormatDatetime('hh:nn', mVenda_GP.mped1_Datent);


mVenda_GP.mped1_numcf       :=DM1.Query2.FieldByName('P1NUMCF').AsInteger;
edt_numcf.Text               :=IntToStr(mVenda_GP.mped1_numcf);

mVenda_GP.mped1_datacf       :=DM1.Query2.FieldByName('P1DATACF').AsDateTime;
edt_datacf.Text               :=FormatDatetime(fdt2, mVenda_GP.mped1_DataCF);

mVenda_GP.mped1_ECF_Serie     :=DM1.Query2.FieldByName('P1ECF_SERIE').Asstring;
edt_serienf.text                :=DM1.Query2.FieldByName('P1SERIE').Asstring;
edt_modelo.text               :=DM1.Query2.FieldByName('P1MODELO').Asstring;


mVenda_GP.mped1_numnf       :=DM1.Query2.FieldByName('P1NUMNF').AsInteger;
edt_numnf.Text               :=IntToStr(mVenda_GP.mped1_numnf);

mVenda_GP.mped1_datanf       :=DM1.Query2.FieldByName('P1DATANF').AsDateTime;
edt_datanf.Text               :=FormatDatetime(fdt2, mVenda_GP.mped1_DataNF);


Query_FPag:=TQuery.Create(nil);
Query_FPag.DatabaseName:='SG_ASSOC';
Query_FPag.Close;
Query_FPag.SQL.Clear;
Query_FPag.SQL.Add('select max(PFPFORMA) as CODFP, max(PFPVINCULO) as VINCULO from CADPFP WHERE '
                  +'       (PFPCODEMP=:CODEMP_MENOR or PFPCODEMP=:CODEMP_MAIOR) '
                          +' and   PFPCHAVE=:CHAVE '
                          +' and   PFPLOTSEQ=:CHAVE_ANO ');


Query_FPag.ParamByName('CODEMP_MENOR').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
Query_FPag.ParamByName('CODEMP_MAIOR').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
Query_FPag.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
Query_FPag.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
try
   Query_FPag.Open;
except
   Query_FPag.SQL.savetofile('c:\sql.txt');
   end;

mVenda_GP.mped1_QtdParc       :=Query_FPag.RecordCount;


mVenda_GP.mPed1_CodFP         :=Query_FPag.FieldByName('CODFP').AsInteger;

mVenda_GP.mPed1_CodFp_Vinculo :=Query_FPag.FieldByName('VINCULO').AsInteger;
FreeAndNil(Query_FPag);


edt_chave.Text     :=IntTostr(mVenda_GP.mped1_Chave);
edt_datap.Date     :=mVenda_GP.mPed1_Datap;
edt_codcli.Text    :=floatTostr(mVenda_GP.mPed1_CodCli);

edt_acrespu.Text   :=FormatFloat(mcasas,mVenda_GP.mPed1_Acrescimo);

edt_codCondPag.Text:=mVenda_GP.mPed1_TabPV+IntTostr(mVenda_GP.mPed1_CodPV);
cb_tipoped.ItemIndex:=mVenda_GP.mPed1_Tipo_Ped;
edt_codven.Text    :=IntTostr(mVenda_GP.mPed1_Codven);
edt_codfp.Text     :=IntTostr(mVenda_GP.mPed1_CodFP);
if fLCadFP(0,edt_codfp.Text,'') then
   edt_nomfp.Text:=DM1.Tb_FPFPDESC.AsString
else if fLCadFP(0,'','') then
   begin
   edt_codfp.text:=DM1.Tb_FPFPCODIGO.Asstring;
   mVenda_GP.mPed1_CodFP:=valint(edt_codfp.Text);
   mVenda_GP.mPed1_nomfp:=edt_nomfp.Text;
   end;


edt_codbco.Text     :=IntTostr(mVenda_GP.mPed1_Codbco1);

edt_codbcoExit(self);

edt_codcli.Text    :=floatTostr(mVenda_GP.mPed1_CodCli);
Memo_ObsPed.Text   :=mVenda_GP.mPed1_Obs_Ped;
Memo_obsNF.Text    :=mVenda_GP.mPed1_Obs_NF;
// query obs-nf


Query_obs:=tQuery.Create(nil);
Query_obs.DatabaseName:='SG_ASSOC';
Query_obs.SQL.Clear;
Query_obs.SQL.Add('Select P1ORC_OBSERV, P1ORC_PRAZOENT from CADP01_ORC where '
                 +' P1ORC_CODEMP=:P1ORC_CODEMP '
                 +' and P1ORC_LOTSEQ=:P1ORC_LOTSEQ '
                 +' and P1ORC_CHAVE=:P1ORC_CHAVE ');
Query_obs.ParamByName('P1ORC_CODEMP').AsInteger:=mVenda_GP.mped1_codemp-iif(mVenda_GP.mped1_codemp>100,100,0);
Query_obs.ParamByName('P1ORC_LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_obs.ParamByName('P1ORC_CHAVE').AsInteger:=mVenda_GP.mPed1_Chave;
try
   Query_obs.Open;
except
   end;
if not Query_obs.IsEmpty then
   begin
   Memo_obsNF.Lines.Clear;
   Memo_obsNF.Lines.Add(Query_obs.fieldbyname('P1ORC_OBSERV').AsString);
//   edt_prazoent.Text:=Query_obs.fieldbyname('P1ORC_PRAZOENT').AsString;
   end
else
   fGravarObsNF;
FreeAndNil(Query_obs);

// termino obs nf

cb_forma.ItemIndex :=mVenda_GP.mped1_formace;
edt_submod.text     :=FormatFloat('000', mVenda_GP.mped1_submod);   

mVenda_GP.mPed1_Tipo_Ped      :=DM1.Query2.FieldByName('P1TIPO').AsInteger;

cb_tipoped.Text:=tab_tped[mVenda_GP.mPed1_Tipo_Ped];
with cb_tipoped do
   ItemIndex := Items.IndexOf(cb_tipoped.Text);

edt_codcliEnter(Self);
edt_codcliExit(self);
if (mVenda_GP.mPed1_CodCli>0) and (mVenda_GP.mPed1_CodCli<3) then
   begin
   Query_csf:=TQuery.Create(nil);
   Query_csf.DatabaseName:='SG_ASSOC';
   Query_csf.Close;
   Query_csf.SQL.Clear;
   Query_csf.SQL.Add('select * from CADCSF where '
                    +' (CFCODEMP=:CODEMP or CFCODEMP=:CODEMP_FILIAL) '
                    +' and CFCHAVEP=:CHAVE '
                    +' and CFLOTSEQ=:LOTSEQ '
                    +' and CFORDEMP=:ORDEM  ');
   Query_csf.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
   Query_csf.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
   Query_csf.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
   Query_csf.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
   Query_csf.ParamByName('ORDEM').AsInteger:=01;
   Query_csf.Open;
   if not Query_csf.IsEmpty then
      begin
      edt_nomcli.Text          :=Query_csf.fieldbyname('CFRAZAO').AsString;
      edt_fonecsf.Text         :=Query_csf.fieldbyname('CFFONE').AsString;
      if Query_csf.fieldbyName('CFTIPOC').AsInteger=0 then
         begin
         Frm_DadCli.CNPJ.Text     :=Formatfloat(pDFCNPJ, Query_csf.fieldbyname('CFCGC').AsFloat);
         Frm_DadCli.RG.Text       :=Query_csf.fieldbyname('CFIE').AsString;
         end
      else
         begin
         Frm_DadCli.CNPF.Text     :=Formatfloat(pDFCNPF, Query_csf.fieldbyname('CFCGC').AsFloat);
         Frm_DadCli.IE.Text       :=Query_csf.fieldbyname('CFIE').AsString;
         Frm_DadCli.CNPF.Text     :='';
         Frm_DadCli.RG.Text       :='';
         end;


      Frm_DadCli.RAZSOC.Text   :=Query_csf.fieldbyname('CFRAZAO').AsString;
      Frm_DadCli.DENOM.Text    :=Query_csf.fieldbyname('CFDENOM').AsString;
      Frm_DadCli.TELEFONE.Text :=Query_csf.fieldbyname('CFFONE').AsString;
      Frm_DadCli.FAX.Text      :=Query_csf.fieldbyname('CFFAX').AsString;
      Frm_DadCli.ENDERECO.Text :=Query_csf.fieldbyname('CFENDER').AsString;
      Frm_DadCli.BAIRRO.Text   :=Query_csf.fieldbyname('CFBAIRRO').AsString;
      Frm_DadCli.CIDADE.Text   :=Query_csf.fieldbyname('CFCIDADE').AsString;
      Frm_DadCli.UF.Text       :=Query_csf.fieldbyname('CFUF').AsString;
      Frm_DadCli.CEP.Text      :=Query_csf.fieldbyname('CFCEP').AsString;
      end;
   edt_nomcli.Color  :=clWindow;
   edt_nomcli.ReadOnly:=false;
   edt_nomcli.TabStop :=true;

   edt_fonecsf.Color  :=clWindow;
   edt_fonecsf.ReadOnly:=false;
   edt_fonecsf.TabStop :=true;

   edt_nomcli.Width :=158;
   edt_nomcli.Left  :=264;

   end
else
   begin
   edt_nomcli.Width :=259;
   edt_nomcli.Left  :=163;

   
   edt_nomcli.Color  :=$00C7C7E2;
   edt_nomcli.ReadOnly:=true;
   edt_nomcli.TabStop :=false;

   edt_fonecsf.Color  :=$00C7C7E2;
   edt_fonecsf.ReadOnly:=true;
   edt_fonecsf.TabStop :=false;

   end;
mVenda_GP.mPed1_razsoc:=edt_nomcli.Text;

edt_codtraExit(self);
edt_codCondPagExit(self);
cb_tipopedEnter(self);
cb_tipopedExit(self);
edt_codvenExit(self);
//edt_codfpExit(self);
CB_CASASD.ItemIndex:=mVenda_GP.mPed1_QtdDec-1;
CB_CASASDClick(self);

mVenda_GP.mPed1_QtdParc_ant:=mVenda_GP.mped1_QtdParc;
edt_pDesc01.Text     :=Formatfloat(mCasas, mVenda_GP.mPed1_pDesc01);
edt_desc_valor.Text  :=Formatfloat(mcasas, mVenda_GP.mPed1_Desc_Rateado);
edt_valseg.Text      :=Formatfloat(mcasas, mVenda_GP.mPed1_ValSeg);
edt_despAces.Text    :=Formatfloat(mcasas, mVenda_GP.mPed1_DespAces);
edt_totipi.Text      :=Formatfloat(mcasas, mVenda_GP.mPed1_TotIPI);
edt_bcicms.Text      :=Formatfloat(mcasas, mVenda_GP.mPed1_Icms_Base);
edt_vlricms.Text     :=Formatfloat(mcasas, mVenda_GP.mPed1_Icms_Valor);

mVenda_GP.mPed1_pDesc01_Valor := (((mVenda_GP.mPed1_TotMer+mVenda_GP.mPed1_TotSer)
                                -(mVenda_GP.mPed1_DescPed02_Perc))*mVenda_GP.mPed1_pDesc01/100);

//edt_perDesGer.Text   :=
//edt_TotDesGer.Text
//luiz aqui
//edt_pDesc01Exit(self);

fAbrirPed02_Pre(pCodEmp,iif(pcodemp>100,pcodemp-100,pcodemp+100),pChave,pChave_ano);      

tb_ped02_pre.Last;
mPed_Item:=tb_ped02_preP2ITEM.AsInteger+1;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
fInnerJoin(1,'CADPRO','PDCODEMP','PECODEMP','PDCODPRO','PECODPRO');
cb_tppco.ItemIndex  :=mVenda_GP.mped1_tppco;



// servico


if mVenda_GP.mPed1_Tipo_Ped=8 then
   begin
   mPed01D_Carregando:=true;
   Query_Ped01D:=TQuery.Create(nil);
   Query_Ped01D.DatabaseName:='SG_ASSOC';
   Query_Ped01D.close;
   Query_Ped01D.SQL.Clear;
   Query_Ped01D.SQL.add('Select * from CADP01D where '
                       +' (P1DCODEMP=:CODEMP or P1DCODEMP=:CODEMP_FILIAL) '
                       +' and P1DLOTSEQ=:LOTSEQ '
                       +' and P1DCHAVE=:CHAVE '
                       +' and P1DORDEM=:ORDEM ');

   Query_Ped01D.ParamByName('CODEMP').AsInteger       :=pcodemp;
   if pcodemp>100 then
      Query_Ped01D.ParamByName('CODEMP_FILIAL').AsInteger:=pCodEmp-100
   else
      Query_Ped01D.ParamByName('CODEMP_FILIAL').AsInteger:=pCodEmp+100;
   Query_Ped01D.ParamByName('LOTSEQ').AsInteger       := mVenda_GP.mPed1_Chave_ano;
   Query_Ped01D.ParamByName('CHAVE').AsInteger        :=mVenda_GP.mPed1_Chave;
   Query_Ped01D.ParamByName('ORDEM').AsInteger        :=01;

   try
      Query_Ped01D.Open;
   except
      ex_erroSql_Novo(Query_ped01D,3821,'_lerarq','CADP01D');
      end;
   mem_ped01d.Close;
   mem_ped01d.Open;

   While not Query_Ped01D.Eof do
      begin
      mem_ped01d.Append;
      mem_ped01dP1DCODEMP.AsInteger  :=Query_Ped01D.FieldbyName('P1DCODEMP').AsInteger;
      mem_ped01dP1DLOTSEQ.AsInteger  :=Query_Ped01D.FieldbyName('P1DLOTSEQ').AsInteger;


      mem_ped01dP1DCHAVE.AsInteger    :=Query_Ped01D.FieldbyName('P1DCHAVE').AsInteger;
      mem_ped01dP1DLS_OR.AsInteger    :=Query_Ped01D.FieldbyName('P1DLS_OR').AsInteger;
      mem_ped01dP1DCODEMP.AsInteger   :=Query_Ped01D.FieldbyName('P1DCODEMP').AsInteger;
      mem_ped01dP1DCODEMP_OR.AsInteger:=Query_Ped01D.FieldbyName('P1DCODEMP_OR').AsInteger;



      mem_ped01dP1DCH_OR.AsInteger     :=Query_Ped01D.FieldbyName('P1DCH_OR').AsInteger;
      mem_ped01dP1DOR_OR.AsInteger     :=Query_Ped01D.FieldbyName('P1DOR_OR').AsInteger;
      mem_ped01dP1DDATAP.AsDateTime    :=Query_Ped01D.FieldbyName('P1DDATAP').AsDateTime;
      mem_ped01d.Post;
      Query_Ped01D.Next;
      end;
   FreeandNil(Query_Ped01D);
   if not mem_ped01d.IsEmpty then
      LerPedidodeOrigem(0);
   mPed01D_Carregando:=false;

   end;
// testar lotes

fTotais(0);
{
fRecalcularPedido(3);
fTotais(0);
}
result:=true;

end;

function tFrm_Venda_Pre_Farma.fAbrirPed02_Pre(pCodEmp,pcodEmp_filial,pChave,pChave_Ano: Integer): Boolean;
var
mQtdReg,mQtdConta: Integer;

   function fAgruparPed02(pTipo: Integer): Boolean;
   var
   Query_testar: tQuery;
   Query_Exe: tQuery;
   mErro: Boolean;
   begin
   mErro:=false;
   Query_testar:=tQuery.Create(nil);
   Query_testar.DatabaseName:='SG_ASSOC';
   Query_testar.Close;
   Query_testar.SQL.Clear;
   Query_testar.SQL.Add('select count(*) from CADP02 where '
                    +' (P2CODEMP=:CODEMP_MENOR or P2CODEMP=:CODEMP_MAIOR ) '
                    +' and   P2CHAVE=:CHAVE'
                    +' and   P2LOTSEQ=:CHAVE_ANO'
                    +' and   P2ORDEM=:ORDEM '
                    +' group by P2CODPRO '
                    +'  having count(*)>1 ');
   Query_testar.ParamByName('CODEMP_MENOR').AsInteger   :=pCodEmp;
   Query_testar.ParamByName('CODEMP_MAIOR').AsInteger   :=pCodEmp_filial;
   Query_testar.ParamByName('CHAVE').AsInteger    :=pChave;
   Query_testar.ParamByName('CHAVE_ANO').AsInteger:=pChave_ano;
   Query_testar.ParamByName('ORDEM').AsInteger    :=1;
   try
      Query_testar.Open;
   except
      mErro:=true;
      end;
   if not mErro then
      begin
      if Query_testar.fields[0].AsInteger>0 then
         begin
         Query_testar.Close;
         Query_testar.SQL.Clear;
         Query_testar.SQL.Add('select COLUMN_NAME,DATA_TYPE from USER_TAB_COLUMNS where '
                          +' TABLE_NAME='+QuotedStr('CADP02')
                          +' and not COLUMN_NAME in ('+QuotedStr('P2ITEM')
                          +','+QuotedStr('P2CODEMP')
                          +','+QuotedStr('P2CHAVE')
                          +','+QuotedStr('P2LOTSEQ')
                          +','+QuotedStr('P2ORDEM')
                          +','+QuotedStr('P2CODPRO')+')');

         try
            Query_testar.Open;
         except
            mErro:=true;
            end;
         if not mErro then
            begin
            Query_exe:=tQuery.Create(nil);
            Query_exe.DatabaseName:='SG_ASSOC';
            Query_exe.Close;
            Query_exe.SQL.Clear;
            Query_exe.SQL.Add('Insert into CADP02 ('
                             +' P2ITEM '
                             +',P2CODEMP '
                             +',P2CHAVE '
                             +',P2LOTSEQ '
                             +',P2ORDEM '
                             +',P2CODPRO ');

            While not query_testar.Eof do
               begin
               Query_Exe.SQL.add(','+Query_testar.fieldbyName('COLUMN_NAME').AsString);
               Query_testar.Next;
               end;
            Query_testar.First;

//            Query_exe.SQL.Add(') select ROWNUM,TAB02.*  FROM ( (select '
            Query_exe.SQL.Add(') select P2ITEM '
                             +',P2CODEMP*-1 '
                             +',P2CHAVE '
                             +',P2LOTSEQ '
                             +',P2ORDEM '
                             +',P2CODPRO ' );
            While not query_testar.Eof do
               begin
               Query_Exe.SQL.add(',max('+Query_testar.fieldbyName('COLUMN_NAME').AsString+')');
               Query_testar.Next;
               end;
            Query_exe.SQL.add(' from CADP02 where '
                            +' (P2CODEMP=:CODEMP_MENOR or P2CODEMP=:CODEMP_MAIOR ) '
                            +' and   P2CHAVE=:CHAVE'
                            +' and   P2LOTSEQ=:CHAVE_ANO'
                            +' and   P2ORDEM=:ORDEM '
                            +' group by P2CODEMP,P2CHAVE,P2LOTSEQ,P2ORDEM,P2CODPRO,P2ITEM '
                            +' order by P2ITEM ');
            Query_Exe.ParamByName('CODEMP_MENOR').AsInteger   :=pCodEmp;
            Query_Exe.ParamByName('CODEMP_MAIOR').AsInteger   :=pCodEmp_filial;
            Query_Exe.ParamByName('CHAVE').AsInteger    :=pChave;
            Query_Exe.ParamByName('CHAVE_ANO').AsInteger:=pChave_ano;
            Query_Exe.ParamByName('ORDEM').AsInteger    :=1;
           // Query_Exe.SQL.SaveToFile('c:\sql.txt');
            try
               Query_Exe.ExecSQL;
               fdm1StartCommit;
            except
              ex_erroSql_Novo(Query_Exe,5107,'frm_venda_pre','CADP02');
              mErro:=true;
              end;
            if not mErro then
               begin
               Query_exe.Close;
               Query_exe.SQL.Clear;
               Query_exe.SQL.Add('Delete from CADP02 where '
                               +' (P2CODEMP=:CODEMP_MENOR or P2CODEMP=:CODEMP_MAIOR ) '
                               +' and   P2CHAVE=:CHAVE'
                               +' and   P2LOTSEQ=:CHAVE_ANO'
                               +' and   P2ORDEM=:ORDEM ');
               Query_Exe.ParamByName('CODEMP_MENOR').AsInteger   :=pCodEmp;
               Query_Exe.ParamByName('CODEMP_MAIOR').AsInteger   :=pCodEmp_filial;
               Query_Exe.ParamByName('CHAVE').AsInteger    :=pChave;
               Query_Exe.ParamByName('CHAVE_ANO').AsInteger:=pChave_ano;
               Query_Exe.ParamByName('ORDEM').AsInteger    :=1;
               try
                  Query_Exe.ExecSQL;
                  fdm1StartCommit;
               except
                  mErro:=true;
                  end;

               if not mErro then
                  begin
                  Query_exe.Close;
                  Query_exe.SQL.Clear;
                  Query_exe.SQL.Add('Update  CADP02 set P2CODEMP=P2CODEMP*-1 where '
                                  +' (P2CODEMP=:CODEMP_MENOR or P2CODEMP=:CODEMP_MAIOR ) '
                                  +' and   P2CHAVE=:CHAVE'
                                  +' and   P2LOTSEQ=:CHAVE_ANO'
                                  +' and   P2ORDEM=:ORDEM ');
                  Query_Exe.ParamByName('CODEMP_MENOR').AsInteger   :=pCodEmp*-1;
                  Query_Exe.ParamByName('CODEMP_MAIOR').AsInteger   :=pCodEmp_filial*-1;
                  Query_Exe.ParamByName('CHAVE').AsInteger    :=pChave;
                  Query_Exe.ParamByName('CHAVE_ANO').AsInteger:=pChave_ano;
                  Query_Exe.ParamByName('ORDEM').AsInteger    :=1;
                  try
                     Query_Exe.ExecSQL;
                     fdm1StartCommit;
                  except
                     mErro:=true;
                     end;
                  end;
               end;
            FreeAndNil(Query_Exe);
            end;
         end;
      end;
   FreeAndNil(Query_testar);

   result:=true;
   end;
begin

fAgruparPed02(0);

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');


Tb_Ped02_pre.Close;
Tb_Ped02_pre.SQL.Clear;
Tb_Ped02_pre.SQL.Add('select min(ROWNUM) AS POSICAO,P2ITEM,to_char(P2CODPRO) as P2CODPRO ');
if mVenda_GP.mped1_formace=0 then
   begin
   Tb_Ped02_pre.SQL.Add(',sum(P2QTD) as P2QTD '
                    +',sum(round(P2QTD*P2PRECO,2)) AS VALOR_TOTAL '
                    +',max(P2PCOTAB) AS P2PRECO_TAB'
                    +',max(P2UCPR) AS  P2PRECO_UCPR '
                    +',max(P2PCOCUS) AS P2PRECO_CUS '
                    +',max(P2PCOMAX) AS P2PRECO_MAXCONS '
                    +',max(P2PRECO) as P2PRECO ');
   end
else
   begin
   Tb_Ped02_pre.SQL.Add(',max(P2QTD) as P2QTD '
                    +',sum(round(P2QTD*P2PRECO,2)) AS VALOR_TOTAL '
                    +',sum(P2PCOTAB) AS P2PRECO_TAB'
                    +',sum(P2UCPR) AS  P2PRECO_UCPR '
                    +',sum(P2PCOCUS) AS P2PRECO_CUS '
                    +',sum(P2PCOMAX) AS P2PRECO_MAXCONS '
                    +',sum(P2PRECO) as P2PRECO ');
   end;



Tb_Ped02_pre.SQL.Add(',sum(P2ICMS_BCIPI) as  P2ICMS_BCIPI '
                    +',sum(P2ICMS_VLIPI) as P2ICMS_VLIPI '
                    +',max(P2ICMS_ALIPI) as P2ICMS_ALIPI ');


//Tb_Ped02_pre.SQL.Add(',max(P2DESC1) AS P2DESC_PERC01 '
Tb_Ped02_pre.SQL.Add(', ((max(P2PCOTAB) - max(P2PRECO)) * 100)/max(P2PCOTAB) AS P2DESC_PERC01 '
                    +',sum(P2VALDES) AS P2VALDES '
                    +',max(P2DESC2) AS P2DESC_PERC02 '
                    +',max(P2DESC3) AS P2DESC_PERC03 '
                    +',max(P2SIT) AS P2CST '
                    +',max(P2CSOSN) as P2CSOSN '
                    +',max(P2CFO) AS P2CFOP_NF '
                    +',max(P2CFOSUBECF) AS P2CFOP_ECF '
                    +',max(P2COMPLEMENTO) AS P2DESC_COMP '
                    +',max(P2CSOSN_ORI) as P2CSOSN_ORI '
                    +',max(P2PCRED_SN) as P2ICMSSN_PERC '    

                    +' ,max(case when P2CODEMP>100 THEN 0 ELSE P2REDUTICM END) AS P2ICMS_PPRED '
                    +' ,max(case when P2CODEMP>100 THEN 0 ELSE P2MODBCST  END)  AS P2MODBCST '
                    +' ,max(case when P2CODEMP>100 THEN 0 ELSE P2ST_IVA  END)  AS P2ST_IVA '
                    +' ,max(case when P2CODEMP>100 THEN 0 ELSE P2ST_REDUT  END)  AS P2ST_REDUT '
                    +' ,max(case when P2CODEMP>100 THEN 0 ELSE P2ST_ICMCRED  END)  AS P2ST_ICMSCRED '
                    +' ,max(case when P2CODEMP>100 THEN 0 ELSE P2ST_ICMDEB  END)  AS P2ST_ICMSDEB '


                    +' ,max(case when P2CODEMP>100 THEN P2REDUTICM ELSE 0 END) AS P2ICMS_PPRED_101 '
                    +' ,max(case when P2CODEMP>100 THEN P2MODBCST ELSE 0 END)  AS P2MODBCST_101 '
                    +' ,max(case when P2CODEMP>100 THEN P2ST_IVA ELSE 0 END)  AS P2ST_IVA_101 '
                    +' ,max(case when P2CODEMP>100 THEN P2ST_REDUT ELSE 0 END)  AS P2ST_REDUT_101 '
                    +' ,max(case when P2CODEMP>100 THEN P2ST_ICMCRED ELSE 0 END)  AS P2ST_ICMSCRED_101 '
                    +' ,max(case when P2CODEMP>100 THEN P2ST_ICMDEB ELSE 0 END)  AS P2ST_ICMSDEB_101 '


                    +',max(P2ALIPI) AS P2IPI_PERC '
                    +',max(P2ALIQ) AS P2ICMS_PERC '
                    +',max(P2ALIQICMSDES) AS P2ICMS_DESPERC '
                    +',max(P2ALIQAPROXTRIB) AS P2ALIQAPROXTRIB '
                    +',max(P2REDUTICM) AS P2ICMS_PPRED'
                    +',max(P2ALCOFINS) as P2COFINS_PERC '
                    +',max(P2ALPIS) AS P2PIS_PERC '
                    +',max(P2ALIPI) as P2ALIPI '
                    +',max(P2CST_PIS) as P2CST_PIS '
                    +',max(P2CST_COFINS) as P2CST_COFINS '
                    +',max(P2CST_IPI) as P2CST_IPI '
                    +',max(P2CODVEN) as P2CODVEN '
                    +',max(P2AMBIENTE) as P2AMBIENTE'
                    +',max(P2PDESCF) AS P2DESCFIN_PERC '
                    +',max(decode(trim(p2nompro_ori),null,pdnome,p2nompro_ori)) as PDNOME '
                    +',max(PDMARCA) as PDMARCA '
                    +',max(decode(trim(p2und),null,pdund,p2und)) as PDUND '
                    +',max(P2PROMOCAO) as P2PROMOCAO '
                    +',max(P2DESCPR) as P2DESCPR '
                    +',max(P2CONTESP) as P2CONTESP '
                    +',max(P2CONS_PROPRIO) as P2CONS_PROPRIO '
                    +',max(P2PCOMIS) as P2PCOMIS '
                    +',max(P2TIPO_PCO) AS P2TIPO_PCO '
                    +',max(PDSECAO) as PDSECAO '
                    +' FROM '
                    +' cadp02'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_instrucao='','',la_instrucao+' and ')
                    +' (P2CODEMP=:CODEMP_MENOR or P2CODEMP=:CODEMP_MAIOR ) '
                    +' and   P2CHAVE=:CHAVE'
                    +' and   P2LOTSEQ=:CHAVE_ANO'
                    +' and   P2ORDEM=:ORDEM '
                    +' group by P2CODPRO,P2ITEM '
                    +'  order by P2ITEM ');
Tb_Ped02_pre.ParamByName('CODEMP_MENOR').AsInteger   :=pCodEmp;
Tb_Ped02_pre.ParamByName('CODEMP_MAIOR').AsInteger   :=pCodEmp_filial;


Tb_Ped02_pre.ParamByName('CHAVE').AsInteger    :=pChave;
Tb_Ped02_pre.ParamByName('CHAVE_ANO').AsInteger:=pChave_ano;
Tb_Ped02_pre.ParamByName('ORDEM').AsInteger    :=1;
//Tb_Ped02_pre.SQL.SaveToFile('C:\SQL.TXT');

try
   Tb_Ped02_pre.Open;
   mQtdReg:=Tb_Ped02_pre.RecordCount;
   result:=true;
except
   fMensagem('Campo Inexistente: '+FTestarCampos(Tb_Ped02_Pre,['CADP02','CADPRO']),0,['0'],0);
   result:=false;

   if not fVerificaRedeAtiva(true) then
      begin
      end
   else
      begin
//      ex_erroSql_Novo(Tb_Ped02_pre,2312,'_lerarq','paf_cadp02_pre');
      end;
   end;
end;






function fPosArray(pArrayOff: array of string; pTexto: String): Integer;
var
x:Integer;
mResult: Integer;
begin
mResult:=-1;
for x:=low(pArrayOff) to high(pArrayOff) do
   begin
   if Uppercase(pArrayOff[x])=Uppercase(pTexto) then
      begin
      mResult:=x;
      break;
      end;
   end;
result:=mresult;
end;
procedure TFrm_Venda_Pre_Farma.edt_codCondPagKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 113 then
   begin
   edt_codcondpag.Text:=fChamaPV(1,'Frm_Venda_Pre.','');
   edt_codCondPagExit(Self);
   end;


end;




function tFrm_Venda_Pre_Farma.fpedtestacfop(ptipo: Integer; PUnd: Real): Boolean;
var
mValorParam01,mValorParam02,mValorParam03: Real;
mqtdaliq,x,y:Integer;
query_temp: Tquery;
begin
if not cds_aliquotas.Active then
   cds_aliquotas.Open;
cds_aliquotas.EmptyDataSet;

mQtdAliq:=09;
result:=true;
{---Verficar se o codigo do cliente esta preenchido---}
if fsonumero(edt_codcli.Text) = 0 then
   begin
   Result:=false;
   Exit;
   end;


if (not DM1.Tb_Cli.Active) or (DM1.Tb_CliCCODCLI.AsFloat <> ValFloat(edt_codcli.Text)) then
   flcadcli(1,0,edt_codcli.Text);

mPed1_CliCalcIPI:=DM1.Tb_CliCIPI.AsInteger=1;
{if mPed1_CliCalcIPI then
   DBGrid_itens.Columns[9].Visible:=true
else
   DBGrid_itens.Columns[9].Visible:=false;
}

for y:=0 to 1 do
   begin
   if y=0 then
      begin
      if not flcaduf(0,0,codemp,DM1.Tb_CliCUF.AsString) then
         begin
         query_temp:=Tquery.create(nil);
         Query_temp.DatabaseName:='SG_ASSOC';
         query_temp.Close;
         query_temp.sql.Clear;
         Query_temp.SQL.add('Update CADUF set PCODEMP=PCODEMP-100 '
                           +' where PCODEMP>100 ');
         try
            query_temp.ExecSQL;
            fdm1StartCommit;
         except
            end;

         query_temp.Close;
         query_temp.sql.Clear;
         Query_temp.SQL.add('Delete CADUF WHERE PUF is null or PUF=:UF ');
         Query_temp.ParamByName('UF').AsString:=' ';
         try
            query_temp.ExecSQL;
            fdm1StartCommit;
         except
            end;
         FreeAndNil(query_temp);
         flcaduf(0,0,codemp,DM1.Tb_CliCUF.AsString);
         end;
      end
   else
      begin
      if not flcaduf(0,0,codemp+100,DM1.Tb_CliCUF.AsString) then
         flcaduf(0,0,codemp,DM1.Tb_CliCUF.AsString);
      end;

   if DM1.Tb_UFPCIMP_SER.Asinteger=1 then
     mValorParam01:=0
   else
     begin
     mValorParam01:=DM1.Tb_UFPALISSQN.AsFloat;
     if flqr1('LISSQN_ALIQ,LINSS_ALIQ,LINSS_RED,LIRRF_ALIQ,LIRRF_RED','L','CADLOC','N','LCODLOC',DM1.Tb_CliCCODLOC.AsString) then
        mValorParam01:=DM1.Query1.FieldbyName('LISSQN_ALIQ').AsFloat;
     end;


   if DM1.Tb_CliCREPAS.AsFloat = 1 then
      mValorParam02      := DM1.Tb_UFPREPAS.AsFloat
   else
      mValorParam02      := 0;

   if DM1.Tb_UFPTIPCAL.AsString='S' then
      mValorParam03      :=0
   else
      mValorParam03      :=4;

   for x:=1 to mQtdAliq do
      begin
      fgravarAliquotas(y,CHAR(64+x),DM1.Tb_Cli.FieldbyName('CALIQ'+chr(64+x)).AsFloat,
                    DM1.Tb_Cli.FieldbyName('CALIQ'+chr(64+x)).AsFloat,
                   -1, // aliq redutor
                   -1, // aliq icms cred
                   -1, // aliq icms deb
                   -1, // aliq st iva ina
                   -1, // aliq st iva pos
                   -1, // aliq st iva neg
                   mValorParam01 // issqn
                   ,mValorParam02 // repasse de icms
                   ,0 // aliquota pis
                   ,0 // aliquota cofins
                   ,-1 // Cfo_Indus_Ret'
                   ,-1 // Cfo_Indus_Trib'
                   ,-1 // Cfo_Indus_Isento'
                   ,-1 // Cfo_rev_Ret'
                   ,-1 // Cfo_rev_Trib'
                   ,-1 // Cfo_rev_Isento'
                   ,-1 // Cfo_SubEcf_Ret'
                   ,-1 // Cfo_SubEcf_Trib'
                   ,-1 // Cfo_SubEcf_Isento'
                   ,DM1.Tb_UFPCFOSER.AsInteger // Cfo_servicos
                   ,trunc(mValorParam03) // modalidade da bc
                   ,-1 // Aliquota de Reducao Icms st staliqred
                   ,-1 // aliquota de inss
                   ,-1 // aliquota de inss reducao
                   ,-1 // aliquota de irrf
                   ,-1 // aliquota de irrf reducao
                   ,-1 // aliquota de reducao de icms st

                   );

      end;


   if DM1.Tb_CliCSUPERMICRO.AsInteger=1 then
      begin
      if DM1.Tb_CliCALIQDEB.AsFloat <> 0 then
         mValorParam01     := DM1.Tb_CliCALIQDEB.AsFloat
      else
         mValorParam01     := DM1.Tb_UFPICMSD_SN.AsFloat;

      for x:=1 to mQtdAliq do
         begin
         fgravarAliquotas(y,char(64+x),-1, -1,// aliquota de icms
                   DM1.Tb_UF.FieldByName('PREDUTN'+chr(64+x)).AsFloat, // aliq de icms normal
                   DM1.Tb_UFPICMSC_SN.AsFloat,//-1, // aliq icms cred
                   mValorParam01, // aliq icms deb
                   DM1.Tb_UFPIVAINA_SN.AsFloat, // aliq st iva ina
                   DM1.Tb_UFPIVAPOS_SN.AsFloat, // aliq st iva pos
                   DM1.Tb_UFPIVANEG_SN.AsFloat, // aliq st iva neg
                   -1 // issqn
                   ,-1 // repasse
                   ,-1 // aliquota pis
                   ,-1 // aliquota cofins
                   ,-1 // Cfo_Indus_Ret'
                   ,-1 // Cfo_Indus_Trib'
                   ,-1 // Cfo_Indus_Isento'
                   ,-1 // Cfo_rev_Ret'
                   ,-1 // Cfo_rev_Trib'
                   ,-1 // Cfo_rev_Isento'
                   ,-1 // Cfo_SubEcf_Ret'
                   ,-1 // Cfo_SubEcf_Trib'
                   ,-1 // Cfo_SubEcf_Isento'
                   ,-1 // Cfo_servicos
                   ,-1 // modalidade da bc
                   ,-1 // Aliquota de Reducao Icms st staliqred
                   ,-1 // aliquota de inss
                   ,-1 // aliquota de inss reducao
                   ,-1 // aliquota de irrf
                   ,-1 // aliquota de irrf reducao
                   ,DM1.Tb_UF.FieldByName('PREDUTR'+chr(64+x)+'_SN').AsFloat, // aliq redutor su
                   );
         end;
      end
   else
      begin
      if DM1.Tb_CliCALIQDEB.AsFloat <> 0 then
         mValorParam01     := DM1.Tb_CliCALIQDEB.AsFloat
      else
         mValorParam01     := DM1.Tb_UFPICMSD.AsFloat;

      for x:=1 to mQtdAliq do
         begin
         fgravarAliquotas(y,char(64+x),-1,-1, // aliquota de icms
                   DM1.Tb_UF.FieldByName('PREDUTN'+chr(64+x)).AsFloat, // aliq redutor
                   DM1.Tb_UFPICMSC.AsFloat, // aliq icms cred
                   mValorParam01, // aliq icms deb
                   DM1.Tb_UFPIVAINA.AsFloat, // aliq st iva ina
                   DM1.Tb_UFPIVAPOS.AsFloat, // aliq st iva pos
                   DM1.Tb_UFPIVANEG.AsFloat, // aliq st iva neg
                   -1 // issqn
                   ,-1 // repasse icms
                   ,-1 // aliquota pis
                   ,-1 // aliquota cofins
                   ,-1 // Cfo_Indus_Ret'
                   ,-1 // Cfo_Indus_Trib'
                   ,-1 // Cfo_Indus_Isento'
                   ,-1 // Cfo_rev_Ret'
                   ,-1 // Cfo_rev_Trib'
                   ,-1 // Cfo_rev_Isento'
                   ,-1 // Cfo_SubEcf_Ret'
                   ,-1 // Cfo_SubEcf_Trib'
                   ,-1 // Cfo_SubEcf_Isento'
                   ,-1 // Cfo_servicos
                   ,-1 // modalidade da bc
                   ,-1 // Aliquota de Reducao Icms st staliqred
                   ,-1 // aliquota de inss
                   ,-1 // aliquota de inss reducao
                   ,-1 // aliquota de irrf
                   ,-1 // aliquota de irrf reducao
                   ,DM1.Tb_UF.FieldByName('PREDUTR'+chr(64+x)).AsFloat, // aliq redutor

                   );
         end;
      end;




   mVenda_GP.mPd_EstNor        := 'N';
   mVenda_GP.mPd_EstCons       := 'N';
   mVenda_GP.mPd_EstTerc       := 'N';
   mVenda_GP.mPd_EstVenda      := 'N';

   if y=0 then
      begin
      if not flcaduf_tpped(0,0,codemp,DM1.Tb_UFPUF.AsString,IntToStr(mVenda_GP.mPed1_Tipo_Ped),'0') then
         begin
         query_temp:=Tquery.create(nil);
         Query_temp.DatabaseName:='SG_ASSOC';
         query_temp.Close;
         query_temp.sql.Clear;
         Query_temp.SQL.add('Update CADUF_TPPED set UFTP_CODEMP=UFTP_CODEMP-100 '
                           +' where UFTP_CODEMP>100 ');
         try
            query_temp.ExecSQL;
            fdm1StartCommit;
         except
            end;

         query_temp.Close;
         query_temp.sql.Clear;
         Query_temp.SQL.add('Delete CADUF_TPPED  WHERE UFTP_UF is null or UFTP_UF=:UF ');
         Query_temp.ParamByName('UF').AsString:=' ';
         try
            query_temp.ExecSQL;
            fdm1StartCommit;
         except
            end;
         FreeAndNil(query_temp);
         flcaduf(0,0,codemp,DM1.Tb_CliCUF.AsString);
         end;
      end
   else
      begin
      if not flcaduf_tpped(0,0,codemp+100,DM1.Tb_UFPUF.AsString,IntToStr(mVenda_GP.mPed1_Tipo_Ped),'0') then
         flcaduf_tpped(0,0,codemp,DM1.Tb_UFPUF.AsString,IntToStr(mVenda_GP.mPed1_Tipo_Ped),'0');

      end;

   if DM2.Tb_UF_TPPEDTPSAIDA_NORMAL.AsInteger=1 then
      mVenda_GP.mPd_EstNor        := 'S';
   if DM2.Tb_UF_TPPEDTPSAIDA_CONSIGNADO.AsInteger=1 then
      mVenda_GP.mPd_EstCons       := 'S';
   if DM2.Tb_UF_TPPEDTPSAIDA_EST_TERC.AsInteger=1 then
      mVenda_GP.mPd_EstTerc       := 'S';
   if DM2.Tb_UF_TPPEDTPSAIDA_REM_VENDA.AsInteger=1 then
      mVenda_GP.mPd_EstVenda      := 'S';

   if DM2.Tb_UF_TPPEDTPENTRADA_NORMAL.AsInteger=1 then
      mVenda_GP.mPd_EstNor        := 'E';
   if DM2.Tb_UF_TPPEDTPENTRADA_CONSIGNADO.AsInteger=1 then
      mVenda_GP.mPd_EstCons       := 'E';
   if DM2.Tb_UF_TPPEDTPENTRADA_EST_TERC.AsInteger=1 then
      mVenda_GP.mPd_EstTerc       := 'E';
   if DM2.Tb_UF_TPPEDTPENTRADA_REM_VENDA.AsInteger=1 then
      mVenda_GP.mPd_EstVenda      := 'E';


   if not DM2.Tb_UF_TPPED.IsEmpty then
      begin
      if DM1.Tb_PargerPINDUSTRIA.AsInteger>0 then
         begin
         for x:=1 to mQtdAliq do
            begin

            fgravarAliquotas(y,char(64+x),-1,-1, // aliquota de icms
                      -1, // aliq redutor
                      -1, // aliq icms cred
                      -1, // aliq icms deb
                      -1, // aliq st iva ina
                      -1, // aliq st iva pos
                      -1, // aliq st iva neg
                      -1 // issqn
                      ,-1 // repasse icms
                      ,-1 // aliquota pis
                      ,-1 // aliquota cofins
                      ,DM2.Tb_UF_TPPEDUFTP_CFOP_RV_ST.AsInteger // Cfo_Indus_Ret'
                      ,DM2.Tb_UF_TPPEDUFTP_CFOP_RV_TRIB.AsInteger // Cfo_Indus_Trib'
                      ,DM2.Tb_UF_TPPEDUFTP_CFOP_RV_ISENTO.AsInteger // Cfo_Indus_Isento'
                      ,DM2.Tb_UF_TPPEDUFTP_CFOP_CF_ST.AsInteger // Cfo_rev_Ret'
                      ,DM2.Tb_UF_TPPEDUFTP_CFOP_CF_TRIB.AsInteger // Cfo_rev_Trib'
                      ,DM2.Tb_UF_TPPEDUFTP_CFOP_CF_ISENTO.AsInteger // Cfo_rev_Isento'
                      ,DM2.Tb_UF_TPPEDUFTP_SUBST_CFOP_ST.AsInteger // Cfo_SubEcf_Ret'
                      ,DM2.Tb_UF_TPPEDUFTP_SUBST_CFOP_TRIB.AsInteger // Cfo_SubEcf_Trib'
                      ,DM2.Tb_UF_TPPEDUFTP_SUBST_CFOP_ISENTO.AsInteger // Cfo_SubEcf_Isento'
                      ,-1 // Cfo_servicos
                      ,-1 // modalidade da bc
                      ,-1 // Aliquota de Reducao Icms st staliqred
                      ,-1 // aliquota de inss
                      ,-1 // aliquota de inss reducao
                      ,-1 // aliquota de irrf
                      ,-1 // aliquota de irrf reducao
                      ,-1 // aliquota de reducao de icms retido
                      );
            end;

         if DM1.Tb_CliCCONSF.AsFloat = 1 then
            begin
            if DM2.Tb_UF_TPPEDUFTP_CALCIMP_CF.AsFloat=1 then
               begin
               for x:=1 to mQtdAliq do
                  begin

                  fgravarAliquotas(y,char(64+x),0,0, // aliquota de icms
                      0, // aliq redutor
                      0, // aliq icms cred
                      0, // aliq icms deb
                      0, // aliq st iva ina
                      0, // aliq st iva pos
                      0, // aliq st iva neg
                      0 // issqn
                      ,0 // repasse icms
                      ,-1 // aliquota pis
                      ,-1 // aliquota cofins
                      ,-1 // Cfo_Indus_Ret'
                      ,-1 // Cfo_Indus_Trib'
                      ,-1 // Cfo_Indus_Isento'
                      ,-1 // Cfo_rev_Ret'
                      ,-1 // Cfo_rev_Trib'
                      ,-1 // Cfo_rev_Isento'
                      ,-1 // Cfo_SubEcf_Ret'
                      ,-1 // Cfo_SubEcf_Trib'
                      ,-1 // Cfo_SubEcf_Isento'
                      ,-1 // Cfo_servicos
                      ,-1 // modalidade da bc
                      ,-1 // Aliquota de Reducao Icms st staliqred
                      ,-1 // aliquota de inss
                      ,-1 // aliquota de inss reducao
                      ,-1 // aliquota de irrf
                      ,-1 // aliquota de irrf reducao
                      ,-1 // aliquota de reducao de icms retido
                      );
                   end;
               end;
            end
         else
            begin
            if DM2.Tb_UF_TPPEDUFTP_CALCIMP_RV.AsFloat=1 then
               begin
               for x:=1 to mQtdAliq do
                  begin
                  fgravarAliquotas(y,char(64+x),0,0,// aliquota de icms
                      0, // aliq redutor
                      0, // aliq icms cred
                      0, // aliq icms deb
                      0, // aliq st iva ina
                      0, // aliq st iva pos
                      0, // aliq st iva neg
                      0 // issqn
                      ,0 // repasse icms
                      ,-1 // aliquota pis
                      ,-1 // aliquota cofins
                      ,-1 // Cfo_Indus_Ret'
                      ,-1 // Cfo_Indus_Trib'
                      ,-1 // Cfo_Indus_Isento'
                      ,-1 // Cfo_rev_Ret'
                      ,-1 // Cfo_rev_Trib'
                      ,-1 // Cfo_rev_Isento'
                      ,-1 // Cfo_SubEcf_Ret'
                      ,-1 // Cfo_SubEcf_Trib'
                      ,-1 // Cfo_SubEcf_Isento'
                      ,-1 // Cfo_servicos
                      ,-1 // modalidade da bc
                      ,-1 // Aliquota de Reducao Icms st staliqred
                      ,-1 // aliquota de inss
                      ,-1 // aliquota de inss reducao
                      ,-1 // aliquota de irrf
                      ,-1 // aliquota de irrf reducao
                      ,-1 // aliquota de reducao de icms retido
                      );
                   end;
               end;
            end
         end
      else
         begin

         for x:=1 to mQtdAliq do
            begin
            fgravarAliquotas(y,char(64+x),-1,-1,// aliquota de icms
                 -1, // aliq redutor
                 -1, // aliq icms cred
                 -1, // aliq icms deb
                 -1, // aliq st iva ina
                 -1, // aliq st iva pos
                 -1, // aliq st iva neg
                 -1 // issqn
                 ,-1 // repasse icms
                 ,-1 // aliquota pis
                 ,-1 // aliquota cofins
                 ,DM2.Tb_UF_TPPEDUFTP_CFOP_RV_ST.AsInteger // Cfo_Indus_Ret'
                 ,DM2.Tb_UF_TPPEDUFTP_CFOP_RV_TRIB.AsInteger // Cfo_Indus_Trib'
                 ,DM2.Tb_UF_TPPEDUFTP_CFOP_RV_ISENTO.AsInteger // Cfo_Indus_Isento'
                 ,DM2.Tb_UF_TPPEDUFTP_CFOP_CF_ST.AsInteger // Cfo_rev_Ret'
                 ,DM2.Tb_UF_TPPEDUFTP_CFOP_CF_TRIB.AsInteger // Cfo_rev_Trib'
                 ,DM2.Tb_UF_TPPEDUFTP_CFOP_CF_ISENTO.AsInteger // Cfo_rev_Isento'
                 ,DM2.Tb_UF_TPPEDUFTP_SUBST_CFOP_ST.AsInteger // Cfo_SubEcf_Ret'
                 ,DM2.Tb_UF_TPPEDUFTP_SUBST_CFOP_TRIB.AsInteger // Cfo_SubEcf_Trib'
                 ,DM2.Tb_UF_TPPEDUFTP_SUBST_CFOP_ISENTO.AsInteger // Cfo_SubEcf_Isento'
                 ,-1 // Cfo_servicos
                 ,-1 // modalidade da bc
                 ,-1 // Aliquota de Reducao Icms st staliqred
                 ,-1 // aliquota de inss
                 ,-1 // aliquota de inss reducao
                 ,-1 // aliquota de irrf
                 ,-1 // aliquota de irrf reducao
                 ,-1 // aliquota de reducao de icms retido
                 );

            end;

         if DM1.Tb_CliCCONSF.AsFloat = 1 then
            begin
            if DM2.Tb_UF_TPPEDUFTP_CALCIMP_CF.AsFloat=1 then
               begin
               for x:=1 to mQtdAliq do
                  begin
                  fgravarAliquotas(y,char(64+x),0,0, // aliquota de icms
                      0, // aliq redutor
                      0, // aliq icms cred
                      0, // aliq icms deb
                      0, // aliq st iva ina
                      0, // aliq st iva pos
                      0, // aliq st iva neg
                      0 // issqn
                      ,0 // repasse icms
                      ,-1 // aliquota pis
                      ,-1 // aliquota cofins
                      ,-1 // Cfo_Indus_Ret'
                      ,-1 // Cfo_Indus_Trib'
                      ,-1 // Cfo_Indus_Isento'
                      ,-1 // Cfo_rev_Ret'
                      ,-1 // Cfo_rev_Trib'
                      ,-1 // Cfo_rev_Isento'
                      ,-1 // Cfo_SubEcf_Ret'
                      ,-1 // Cfo_SubEcf_Trib'
                      ,-1 // Cfo_SubEcf_Isento'
                      ,-1 // Cfo_servicos
                      ,-1 // modalidade da bc
                      ,-1 // Aliquota de Reducao Icms st staliqred
                      ,-1 // aliquota de inss
                      ,-1 // aliquota de inss reducao
                      ,-1 // aliquota de irrf
                      ,-1 // aliquota de irrf reducao

                      ,-1 // aliquota de reducao de icms retido
                      );
                   end;
               end;
            end
         else
            begin
            if DM2.Tb_UF_TPPEDUFTP_CALCIMP_RV.AsFloat=1 then
               begin
               for x:=1 to mQtdAliq do
                  begin
                  fgravarAliquotas(y,char(64+x),0,0,// aliquota de icms
//                  fgravarAliquotas(y,char(64+x),-1,-1,// aliquota de icms
                      0, // aliq redutor
                      0, // aliq icms cred
                      0, // aliq icms deb
                      0, // aliq st iva ina
                      0, // aliq st iva pos
                      0, // aliq st iva neg
                      0 // issqn
                      ,0 // repasse icms
                      ,-1 // aliquota pis
                      ,-1 // aliquota cofins
                      ,-1 // Cfo_Indus_Ret'
                      ,-1 // Cfo_Indus_Trib'
                      ,-1 // Cfo_Indus_Isento'
                      ,-1 // Cfo_rev_Ret'
                      ,-1 // Cfo_rev_Trib'
                      ,-1 // Cfo_rev_Isento'
                      ,-1 // Cfo_SubEcf_Ret'
                      ,-1 // Cfo_SubEcf_Trib'
                      ,-1 // Cfo_SubEcf_Isento'
                      ,-1 // Cfo_servicos
                      ,-1 // modalidade da bc
                      ,-1 // Aliquota de Reducao Icms st staliqred
                      ,-1 // aliquota de inss
                      ,-1 // aliquota de inss reducao
                      ,-1 // aliquota de irrf
                      ,-1 // aliquota de irrf reducao
                      ,-1 // aliquota de reducao de icms retido
                      );
                  end;
               end;
            end;

         end;

      if  DM1.Tb_CliCICMSTP.AsInteger=0 then      // icms normal dos produtos retidos
          begin
          for x:=1 to mQtdAliq do
             begin
             fgravarAliquotas(y,char(64+x),-1,0,// aliquota de icms
                 -1, // aliq redutor
                 -1, // aliq icms cred
                 -1, // aliq icms deb
                 -1, // aliq st iva ina
                 -1, // aliq st iva pos
                 -1, // aliq st iva neg
                 -1 // issqn
                 ,-1 // repasse icms
                 ,-1 // aliquota pis
                 ,-1 // aliquota cofins
                 ,-1 // Cfo_Indus_Ret'
                 ,-1 // Cfo_Indus_Trib'
                 ,-1 // Cfo_Indus_Isento'
                 ,-1 // Cfo_rev_Ret'
                 ,-1 // Cfo_rev_Trib'
                 ,-1 // Cfo_rev_Isento'
                 ,-1 // Cfo_SubEcf_Ret'
                 ,-1 // Cfo_SubEcf_Trib'
                 ,-1 // Cfo_SubEcf_Isento'
                 ,-1 // Cfo_servicos
                 ,-1 // modalidade da bc
                 ,-1 // Aliquota de Reducao Icms st staliqred
                 ,-1 // aliquota de inss
                 ,-1 // aliquota de inss reducao
                 ,-1 // aliquota de irrf
                 ,-1 // aliquota de irrf reducao
                 ,-1 // aliquota de reducao de icms retido
                 );

              end;
          end;

      if DM1.Tb_CliCICMSNOR.AsInteger=1 then    // icms normal dos produtos tributados
          begin
          for x:=1 to mQtdAliq do
             begin
             fgravarAliquotas(y,char(64+x),0,-1,// aliquota de icms
                 -1, // aliq redutor
                 -1, // aliq icms cred
                 -1, // aliq icms deb
                 -1, // aliq st iva ina
                 -1, // aliq st iva pos
                 -1, // aliq st iva neg
                 -1 // issqn
                 ,-1 // repasse icms
                 ,-1 // aliquota pis
                 ,-1 // aliquota cofins
                 ,-1 // Cfo_Indus_Ret'
                 ,-1 // Cfo_Indus_Trib'
                 ,-1 // Cfo_Indus_Isento'
                 ,-1 // Cfo_rev_Ret'
                 ,-1 // Cfo_rev_Trib'
                 ,-1 // Cfo_rev_Isento'
                 ,-1 // Cfo_SubEcf_Ret'
                 ,-1 // Cfo_SubEcf_Trib'
                 ,-1 // Cfo_SubEcf_Isento'
                 ,-1 // Cfo_servicos
                 ,-1 // modalidade da bc
                 ,-1 // Aliquota de Reducao Icms st staliqred
                 ,-1 // aliquota de inss
                 ,-1 // aliquota de inss reducao
                 ,-1 // aliquota de irrf
                 ,-1 // aliquota de irrf reducao
                 ,-1 // aliquota de reducao de icms retido

                 );
             end;

          end;
      if DM1.Tb_CliCREDICMSNOR.AsInteger=1 then  // redutor de icms aplicar 0-sim 1-nao
          begin
          for x:=1 to mQtdAliq do
             begin
             fgravarAliquotas(y,char(64+x),-1,-1,// aliquota de icms
                 0, // aliq redutor
                 -1, // aliq icms cred
                 -1, // aliq icms deb
                 -1, // aliq st iva ina
                 -1, // aliq st iva pos
                 -1, // aliq st iva neg
                 -1 // issqn
                 ,-1 // repasse icms
                 ,-1 // aliquota pis
                 ,-1 // aliquota cofins
                 ,-1 // Cfo_Indus_Ret'
                 ,-1 // Cfo_Indus_Trib'
                 ,-1 // Cfo_Indus_Isento'
                 ,-1 // Cfo_rev_Ret'
                 ,-1 // Cfo_rev_Trib'
                 ,-1 // Cfo_rev_Isento'
                 ,-1 // Cfo_SubEcf_Ret'
                 ,-1 // Cfo_SubEcf_Trib'
                 ,-1 // Cfo_SubEcf_Isento'
                 ,-1 // Cfo_servicos
                 ,-1 // modalidade da bc
                 ,-1 // Aliquota de Reducao Icms st staliqred
                 ,-1 // aliquota de inss
                 ,-1 // aliquota de inss reducao
                 ,-1 // aliquota de irrf
                 ,-1 // aliquota de irrf reducao
                 ,-1 // aliquota de reducao de icms retido
                 );
             end;

          end;

      if DM1.Tb_CliCICMSR.AsFloat<>1 then  // calcular icms retido calcula quando é 1
          begin
          for x:=1 to mQtdAliq do
             begin
             fgravarAliquotas(y,char(64+x),-1,-1,// aliquota de icms
                 -1, // aliq redutor
                 0, // aliq icms cred
                 0, // aliq icms deb
                 0, // aliq st iva ina
                 0, // aliq st iva pos
                 0, // aliq st iva neg
                 -1 // issqn
                 ,-1 // repasse icms
                 ,-1 // aliquota pis
                 ,-1 // aliquota cofins
                 ,-1 // Cfo_Indus_Ret'
                 ,-1 // Cfo_Indus_Trib'
                 ,-1 // Cfo_Indus_Isento'
                 ,-1 // Cfo_rev_Ret'
                 ,-1 // Cfo_rev_Trib'
                 ,-1 // Cfo_rev_Isento'
                 ,-1 // Cfo_SubEcf_Ret'
                 ,-1 // Cfo_SubEcf_Trib'
                 ,-1 // Cfo_SubEcf_Isento'
                 ,-1 // Cfo_servicos
                 ,-1 // modalidade da bc
                 ,-1 // Aliquota de Reducao Icms st staliqred
                 ,-1 // aliquota de inss
                 ,-1 // aliquota de inss reducao
                 ,-1 // aliquota de irrf
                 ,-1 // aliquota de irrf reducao
                 ,-1 // aliquota de reducao de icms retido

                 );
             end;
          end;
      end;
   // INICIO


   

   cds_aliquotas.First;
   if (DM2.Tb_UF_TPPEDtp_entrada.AsInteger=1) and
      (DM2.Tb_UF_TPPEDtp_saida.AsInteger=0) then
      begin
      if mGer_Emp_UF=DM1.Tb_CliCUF.Value then
         begin
         if (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Ret.AsInteger),1,1)<>'1')
            or (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Trib.AsInteger),1,1)<>'1')
            or (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Isento.AsInteger),1,1)<>'1') then
            begin
            fmensagem('Código de CFOPs para '+cb_tipoped.Text+' dentro do estado'+#13
                        +' Venda a Consumidor Final tem que começar com o digito 1.'+#13
                        +' Corrigir no Cadastro de Estado!',0,['0'],0);
            result:=False;
            exit;
            end;

         if (copy(formatfloat('0000',cds_aliquotasCfo_rev_Ret.AsInteger),1,1)<>'1')
            or (copy(formatfloat('0000',cds_aliquotasCfo_rev_Trib.AsInteger),1,1)<>'1')
            or (copy(formatfloat('0000',cds_aliquotasCfo_rev_Isento.AsInteger),1,1)<>'1') then
            begin
            fmensagem('Código de CFOPs para '+cb_tipoped.Text+' dentro do estado'+#13
                        +' para Revenda tem que começar com o digito 1.'+#13
                        +' Corrigir no Cadastro de Estado!',0,['0'],0);
            result:=False;
            exit;
            end;

         end
      else if ( (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Ret.AsInteger),1,1)<>'2') or
              (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Trib.AsInteger),1,1)<>'2') or
              (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Isento.AsInteger),1,1)<>'2') ) and
              ( (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Ret.AsInteger),1,1)<>'3') or
              (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Trib.AsInteger),1,1)<>'3') or
              (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Isento.AsInteger),1,1)<>'3') ) then
         begin
         verteclado(0);
         fmensagem('Código de CFOPs para '+cb_tipoped.Text
                  +' Fora do estado ou internacional'
                  +' Consumidor final tem que começar com o digito 2 ou 3 para internacional.'
                     +' Corrigir no Cadastro de Estado!',0,['0'],0);
         result:=False;
         exit;
         end
      else if ( (copy(formatfloat('0000',cds_aliquotasCfo_rev_Ret.AsInteger),1,1)<>'2') or
              (copy(formatfloat('0000',cds_aliquotasCfo_rev_Trib.AsInteger),1,1)<>'2') or
              (copy(formatfloat('0000',cds_aliquotasCfo_rev_Isento.AsInteger),1,1)<>'2') )
              and (
               (copy(formatfloat('0000',cds_aliquotasCfo_rev_Ret.AsInteger),1,1)<>'3') or
              (copy(formatfloat('0000',cds_aliquotasCfo_rev_Trib.AsInteger),1,1)<>'3') or
              (copy(formatfloat('0000',cds_aliquotasCfo_rev_Isento.AsInteger),1,1)<>'3'))  then
         begin
         verteclado(0);
         fmensagem('Código de CFOPs para '+cb_tipoped.Text+' Fora do estado'+#13
                  +' Revendedor tem que começar com o digito 2 ou 3 para internacional.'+#13
                     +' Corrigir no Cadastro de Estado!',0,['0'],0);
         result:=False;
         exit;
         end;

      end;
   if (DM2.Tb_UF_TPPEDtp_entrada.AsInteger=0) and
      (DM2.Tb_UF_TPPEDtp_saida.AsInteger=1) then
      begin
      if mGer_Emp_UF=DM1.Tb_CliCUF.Value then
         begin
         if (copy(formatfloat('0000',cds_aliquotasCfo_rev_Ret.AsInteger),1,1)<>'5') or
            (copy(formatfloat('0000',cds_aliquotasCfo_rev_Trib.AsInteger),1,1)<>'5') or
            (copy(formatfloat('0000',cds_aliquotasCfo_rev_Isento.AsInteger),1,1)<>'5') then
            begin
            fmensagem('Código de CFOPs para '+cb_tipoped.Text+' dentro do estado'+#13
                      +' para Consumidor final tem que começar com o digito 5.'+#13
                      +' Corrigir no Cadastro de Estado!',0,['0'],0);
            result:=False;
            exit;
            end;
         if (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Ret.AsInteger),1,1)<>'5') or
            (copy(formatfloat('0000',cds_aliquotasCfo_Indus_trib.AsInteger),1,1)<>'5') or
            (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Isento.AsInteger),1,1)<>'5') then
            begin
            fmensagem('Código de CFOPs para '+cb_tipoped.Text+' dentro do estado'+#13
                      +' para Consumidor Final tem que começar com o digito 5.'+#13
                      +' Corrigir no Cadastro de Estado!',0,['0'],0);
            result:=False;
            exit;
            end;
         end
      else
         begin
         if ( ( (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Ret.AsInteger),1,1)<>'6') or
            (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Trib.AsInteger),1,1)<>'6') or
            (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Isento.AsInteger),1,1)<>'6'))  )

         and ( ( (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Ret.AsInteger),1,1)<>'7') or
            (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Trib.AsInteger),1,1)<>'7') or
            (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Isento.AsInteger),1,1)<>'7')) )then
            begin
            fmensagem('Código de CFOPs para '+cb_tipoped.Text+' fora do estado'+#13
                      +'tem que começar com o digito 6 ou 7.'+#13
                      +' Corrigir no Cadastro de Estado!',0,['0'],0);
            result:=False;
            exit;
            end;
         if  ((copy(formatfloat('0000',cds_aliquotasCfo_rev_Ret.AsInteger),1,1)<>'6') or
            (copy(formatfloat('0000',cds_aliquotasCfo_rev_Trib.AsInteger),1,1)<>'6') or
            (copy(formatfloat('0000',cds_aliquotasCfo_rev_Isento.AsInteger),1,1)<>'6'))
            and
            ((copy(formatfloat('0000',cds_aliquotasCfo_rev_Ret.AsInteger),1,1)<>'7') or
            (copy(formatfloat('0000',cds_aliquotasCfo_rev_Trib.AsInteger),1,1)<>'7') or
            (copy(formatfloat('0000',cds_aliquotasCfo_rev_Isento.AsInteger),1,1)<>'7')) then
            begin
            fmensagem('Código de CFOPs para '+cb_tipoped.Text+' fora do estado'+#13
                      +' para Revendedor tem que começar com o digito 6.'+#13
                      +' Corrigir no Cadastro de Estado!',0,['0'],0);
            result:=False;
            exit;
            end;

         end;
      end;
   end;

// TERMINO
cds_aliquotas.first;
if Tb_Ped02_preP2CONS_PROPRIO.AsInteger=1 then
  begin
  mVenda_GP.mPed1_cfop1:=cds_aliquotascfo_rev_trib.asinteger;
  mVenda_GP.mPed1_cfop2:=cds_aliquotascfo_rev_ret.asinteger;
  end
else
  begin
  mVenda_GP.mPed1_cfop1:=cds_aliquotasCfo_Indus_Trib.asinteger;
  mVenda_GP.mPed1_cfop2:=cds_aliquotasCfo_Indus_Ret.asinteger;
  end;



mPed_Cli_TarBan         := DM1.Tb_CliCTARBAN.Value;
mPed_Cli_tarban         := DM1.Tb_CliCCTARBAN.AsInteger;
mPed_Cli_CodLoc         := DM1.Tb_CliCCODLOC.AsFloat;
mPed_Cli_CodBai         := DM1.Tb_CliCCodBai.AsFloat;
mPed_Cli_CodRam         := DM1.Tb_CliCCodRam.AsFloat;
mPed_Cli_PCOMV01        := DM1.Tb_CliCCOMIS.AsFloat;
mPed_Cli_PCOMV02        := DM1.Tb_CliCCOMIS02.AsFloat;
mPed_Cli_PCOMV03        := DM1.Tb_CliCCOMIS03.AsFloat;
mPed_Cli_PCOMV04        := DM1.Tb_CliCCOMIS04.AsFloat;
mPed_Cli_CodCli         := DM1.Tb_CliCCODCLI.AsFloat;
mPed_Cli_Desc01         := DM1.Tb_CliCDESC.AsFloat;



mPed_Cli_Desc02         := DM1.Tb_CliCDESC02.AsFloat;
mPed_Cli_Desc03         := DM1.Tb_CliCDESC03.AsFloat;
mPed_Cli_DescFin        := DM1.Tb_CliCDESCFIN.AsFloat;
mPed_Cli_CodRed         := DM1.Tb_CliCCODRED.AsInteger;
mPed_Cli_CRota          := DM1.Tb_CliCROTA.AsInteger;
mPed_Cli_PCOPRAT        := DM1.Tb_CliCPCOPRAT.AsInteger;
par_tpp :=DM1.Tb_CliCPCOPRAT.AsInteger;
mPed_UF_TIPOPCO         := DM1.Tb_UFPTIPOPCO.AsInteger;
mPed_UF_PCOMV01         := DM1.Tb_UFPCOMIS.AsFloat;
mPed_UF_PCOMV02         := DM1.Tb_UFPCOMIS.AsFloat;
mPed_UF_PCOMV03         := DM1.Tb_UFPCOMIS.AsFloat;
mPed_UF_PCOMV04         := DM1.Tb_UFPCOMIS.AsFloat;

if mVenda_GP.mPed1_Tipo_Ped=0 then
   begin
   mVenda_GP.mPd_EstNor        := 'N';
   mVenda_GP.mPd_EstCons       := 'N';
   mVenda_GP.mPd_EstTerc       := 'N';
   mVenda_GP.mPd_EstVenda      := 'N';
   end;


end;


function TFrm_Venda_Pre_Farma.fgravarAliquotas(pTipo_Reg: Integer;pTabIcm: String;
    pAliqTrib,pAliqRet,pAliqRed,pStIcmsCred,pStIcmsDeb,pStIVA_Ina,pStIVA_Pos,pStIVA_Neg,pISSQN
    ,pRepas,pAliqPis,pAliqCofins: Real;
    pCfo_Indus_Ret,pCfo_Indus_Trib,pCfo_Indus_Isento,pCfo_rev_Ret,pCfo_rev_Trib,pCfo_rev_Isento
    ,pCfo_SubEcf_Ret,pCfo_SubEcf_Trib,pCfo_SubEcf_Isento,pcfo_servico,pmodBcST: Integer;
    pal_stAliqRed,pal_inss,pal_inss_pred,pal_irrf,pal_irrf_pred,pStAliqRed: Real): Boolean;

begin
if not cds_aliquotas.Active then
   cds_aliquotas.Open;

if cds_aliquotas.Locate('tipo_reg;al_tabicm',vararrayof([pTipo_Reg,pTabIcm]),[]) then
   cds_aliquotas.edit
else
   cds_aliquotas.Append;
cds_aliquotastipo_reg.AsInteger:=pTipo_Reg;
cds_aliquotasal_tabicm.AsString:=pTabIcm;
if pAliqTrib<>-1 then
   cds_aliquotasal_IcmsTrib.AsFloat:=pAliqTrib;
if pAliqRet<>-1 then
   cds_aliquotasal_icmsRet.AsFloat:=pAliqRet;

if pStAliqRed<>-1 then
   cds_aliquotasal_stAliqRed.AsFloat:=pStAliqRed;

if pAliqRed<>-1 then
   cds_aliquotasal_aliqredut.AsFloat:=pAliqRed;

if pStIcmsCred<>-1 then
   cds_aliquotasal_stIcmsCred.AsFloat:=pStIcmsCred;
if pStIcmsDeb<>-1 then
   cds_aliquotasal_stIcmsDeb.AsFloat:=pStIcmsDeb;
if pStIVA_Ina<>-1 then
   cds_aliquotasal_stIVA_Ina.AsFloat:=pStIVA_Ina;
if pStIVA_Pos<>-1 then
   cds_aliquotasal_stIVA_Pos.AsFloat:=pStIVA_Pos;
if pStIVA_Neg<>-1 then
   cds_aliquotasal_stIVA_Neg.AsFloat:=pStIVA_Neg;
if pISSQN<>-1 then
   cds_aliquotasal_issqn.AsFloat:=pISSQN;
if pRepas<>-1 then
   cds_aliquotasal_repasse.AsFloat:=pRepas;
if pAliqPis<>-1 then
   cds_aliquotasal_pis.AsFloat:=pAliqPis;
if pAliqCofins<>-1 then
   cds_aliquotasal_cofins.AsFloat:=pAliqCofins;

if pCfo_Indus_Ret<>-1 then
   cds_aliquotasCfo_Indus_Ret.AsInteger:=pCfo_Indus_Ret;
if pCfo_Indus_Trib<>-1 then
   cds_aliquotasCfo_Indus_Trib.AsInteger:=pCfo_Indus_Trib;
if pCfo_Indus_Isento<>-1 then
   cds_aliquotasCfo_Indus_Isento.AsInteger:=pCfo_Indus_Isento;

if pCfo_Rev_Ret<>-1 then
   cds_aliquotasCfo_Rev_Ret.AsInteger:=pCfo_Rev_Ret;
if pCfo_rev_Trib<>-1 then
   cds_aliquotasCfo_rev_Trib.AsInteger:=pCfo_rev_Trib;
if pCfo_Rev_Isento<>-1 then
   cds_aliquotasCfo_Rev_Isento.AsInteger:=pCfo_Rev_Isento;

if pCfo_SubEcf_Ret<>-1 then
   cds_aliquotasCfo_SubEcf_Ret.AsInteger:=pCfo_SubEcf_Ret;
if pCfo_SubEcf_Trib<>-1 then
   cds_aliquotasCfo_SubEcf_Trib.AsInteger:=pCfo_SubEcf_Trib;
if pCfo_SubEcf_Isento<>-1 then
   cds_aliquotasCfo_SubEcf_Isento.AsInteger:=pCfo_SubEcf_Isento;
if pcfo_servico<>-1 then
   cds_aliquotascfo_servico.AsInteger:=pcfo_servico;

if pmodBcST<>-1 then
   cds_aliquotasmodBcST.AsInteger:=pmodBcST;

if pal_stAliqRed<>-1 then
   cds_aliquotasal_stAliqRed.AsFloat:=pal_stAliqRed;

if pal_inss<>-1 then
   cds_aliquotasal_inss.AsFloat:=pal_inss;

if pal_inss_pred <>-1 then
   cds_aliquotasal_inss_pred.AsFloat:=pal_inss_pred;

if pal_irrf <>-1 then
   cds_aliquotasal_irrf.AsFloat:=pal_irrf;

if pal_irrf_pred <>-1 then
   cds_aliquotasal_irrf_pred.AsFloat:=pal_irrf_pred;

cds_aliquotas.Post;

result:=true;
end;


procedure TFrm_Venda_Pre_Farma.Tb_FP_preAfterDelete(DataSet: TDataSet);
begin
mVenda_GP.mPed1_QtdParc_ant:=-1;
fVerificarOrdemFPgto(0);
fSomarFPgto(0);

end;

procedure TFrm_Venda_Pre_Farma.Tb_FP_preAfterPost(DataSet: TDataSet);
begin
mVenda_GP.mPed1_QtdParc_ant:=-1;
fSomarFPgto(0);

end;

procedure TFrm_Venda_Pre_Farma.Tb_Ped02_preAfterCancel(DataSet: TDataSet);
begin
 if Tb_Ped02_pre.State in [dsinsert] then
    mPed_Item:=mPed_Item-1;
end;

procedure TFrm_Venda_Pre_Farma.Tb_Ped02_preAfterEdit(DataSet: TDataSet);
begin
if mlocalizando_pedido then
   exit;

    mCodpro_Ant:=tb_ped02_preP2CODPRO.AsString;
    mCodpro_lid:=mcodpro_ant;

    mItem_Ant  :=tb_ped02_preP2ITEM.AsInteger;
    mQtd_Ant   :=tb_ped02_preP2QTD.AsFloat;

    mPreco_ant :=Tb_Ped02_preP2PRECO.AsFloat;

    mContEsp_ant :=Tb_Ped02_preP2CONTESP.AsInteger;

    if mVenda_GP.mPed1_Tipo_Ped=8 then
       begin
       Qr_itens_pedori.Locate('PDCODPRO',ValFloat(Tb_Ped02_preP2CODPRO.AsString),[]);
       end;


end;

procedure TFrm_Venda_Pre_Farma.Tb_Ped02_preAfterInsert(DataSet: TDataSet);
var

Query_Item: TQuery;
begin
if mlocalizando_pedido then
   exit;
   mVenda_GP.mPed1_AjustaFP:='S';

    mCodpro_lid:='';
    if mVenda_GP.mped1_Chave=0 then
       begin
       mPed_Item:=1;
       tb_ped02_preP2ITEM.Value:=mPed_Item;
       end
    else
       begin
       Query_Item:=TQuery.Create(nil);
       Query_Item.DatabaseName:='SG_ASSOC';
       Query_Item.Close;
       Query_Item.SQL.Clear;
       Query_Item.SQL.Add('select max(P2ITEM) from CADP02 where  '
                      +' (P2CODEMP=:CODEMP or P2CODEMP=:CODEMP_FILIAL)'
                      +' and P2CHAVE=:CHAVE '
                      +' and P2LOTSEQ=:LOTSEQ ');
       Query_Item.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
       Query_Item.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
       Query_Item.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
       Query_Item.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
       try
          Query_Item.Open;
          mPed_Item:=Query_item.fields[0].AsInteger+1;
          tb_ped02_preP2ITEM.Value:=mPed_Item;
       except
          tb_ped02_preP2ITEM.Value:=mPed_Item;
          mPed_Item:=mPed_Item+1;
          end;
       FreeAndNil(Query_item);
       end;

    Tb_Ped02_preP2CONS_PROPRIO.AsInteger:=1;
    Tb_Ped02_preP2AMBIENTE.AsString:=mAmbiente;

    mCodpro_Ant:='';
    mItem_Ant  :=0;
    mQtd_Ant   :=0;
    mPreco_ant :=0;


end;

function TFrm_Venda_Pre_Farma.fGravarPed01(pTipo: Integer): Boolean;
begin
if mlocalizando_pedido then
   begin
   result:=true;
   exit;
   end;

mVenda_GP.mped1_submod_grav:=0;
if mVenda_GP.mped1_submod=100 then
   begin
   mVenda_GP.mped1_submod_grav:=100;
   if codemp>100 then
      mVenda_GP.fGravarPed01(0,-100)
   else
      mVenda_GP.fGravarPed01(0,100);
   end
else
   begin
   if mVenda_GP.mped1_submod>0 then
      mVenda_GP.mped1_submod_grav:=100-mVenda_GP.mped1_submod;
   mVenda_GP.fGravarPed01(0,0);
   end;
edt_chave.Text:=InttoStr(mVenda_GP.mped1_Chave);
if (mVenda_GP.mped1_submod>0) and (mVenda_GP.mped1_submod<100) then
   begin
   mVenda_GP.mped1_submod_grav:=mVenda_GP.mped1_submod;
   if codemp>100 then
      mVenda_GP.fGravarPed01(0,-100)
   else
      mVenda_GP.fGravarPed01(0,100);
   end;
result:=true;
end;


procedure TFrm_Venda_Pre_Farma.Tb_Ped02_preAfterPost(DataSet: TDataSet);
var
mPrecoUnit_Cal: Real;
mQtd_Cal: Real;
mQtd_Ant_Cal: Real;

mPrecoTab_Cal: Real;
mPrecoUCPR_Cal: Real;
mPrecoCus_Cal: Real;
mPrecoMax_Cal: Real;

mValseg: Real;
mValFre: Real;
mTarBan: Real;
mOutDesp: Real;
mDescValor: Real;
x: Integer;
mValorTemp: Real;
mAnt_QtdParc: Integer;
mAnt_Item: Integer;
mAnt_pDesc01,mAnt_pDesc02,mAnt_pDesc03: Real;
mAnt_CodPro: String;
mqtd_dev: Real;
mMovEst: Integer;
begin
if mlocalizando_pedido then
   exit;

mAnt_QtdParc:=mVenda_GP.mPed1_QtdParc_ant;
mAnt_pDesc01:=mVenda_GP.mPed1_pDesc01_Ant;
mAnt_pDesc02:=mVenda_GP.mPed1_pDesc02_Ant;
mAnt_pDesc03:=mVenda_GP.mPed1_pDesc03_Ant;
mAnt_Item   :=mItem_Ant;
mAnt_CodPro :=mCodpro_Ant;



if mVenda_GP.mped1_Chave=0 then
   begin
   fGravarPed01(0);
   end
else if mped_Alterou_Cab then
   begin

   mVenda_GP.mped1_submod_grav:=0;
   if mVenda_GP.mped1_submod=100 then
      begin
      mVenda_GP.mped1_submod_grav:=100;
      if codemp>100 then
         mVenda_GP.fGravarPed01(1,-100)
      else
         mVenda_GP.fGravarPed01(1,100);
      end
   else
      begin
      if mVenda_GP.mped1_submod>0 then
         mVenda_GP.mped1_submod_grav:=100-mVenda_GP.mped1_submod;
      mVenda_GP.fGravarPed01(1,0);
      end;
   if (mVenda_GP.mped1_submod>0) and (mVenda_GP.mped1_submod<100) then
      begin
      mVenda_GP.mped1_submod_grav:=mVenda_GP.mped1_submod;
      if codemp>100 then
         mVenda_GP.fGravarPed01(1,-100)
      else
         mVenda_GP.fGravarPed01(1,100);
      end;
   mped_Alterou_Cab:=false;
   end;
if mVenda_GP.mped1_submod=100 then
   begin
   if codemp>100 then
      mVenda_GP.mPed1_Codemp:=codemp-100
   else
      mVenda_GP.mPed1_Codemp:=codemp+100
   end
else
   mVenda_GP.mPed1_Codemp:=codemp;
for x:=1 to 2 do
   begin
//   mVenda_GP.mPed1_QtdParc_ant:=-1;

   if mVenda_GP.mped1_submod=100 then
      begin
      if codemp>100 then
         mVenda_GP.mPed1_Codemp:=codemp-100
      else
         mVenda_GP.mPed1_Codemp:=codemp+100
      end
   else
      begin
      if x=1 then
         mVenda_GP.mPed1_Codemp:=codemp
      else
         begin
         if codemp>100 then
            mVenda_GP.mPed1_Codemp:=codemp-100
         else
            mVenda_GP.mPed1_Codemp:=codemp+100;
         end;
      end;

   if (mVenda_GP.mped1_submod=100) or (mVenda_GP.mped1_submod=0) then
      begin
      mPrecoUnit_Cal:=tb_ped02_preP2PRECO.AsFloat;
      mQtd_Cal:=tb_ped02_preP2QTD.AsFloat;
      mQtd_Ant_Cal:=mQtd_Ant;
      mPrecoTab_Cal :=Tb_Ped02_preP2PRECO_TAB.AsFloat;
      mPrecoUCPR_Cal:=Tb_Ped02_preP2PRECO_UCPR.AsFloat;
      mPrecoCus_Cal :=Tb_Ped02_preP2PRECO_CUS.AsFloat;
      mPrecoMax_Cal :=Tb_Ped02_preP2PRECO_MAXCONS.AsFloat;

      mDescValor    :=valfloat(edt_desc_valor.Text);
      mValseg       :=valfloat(edt_valseg.Text);
      mValFre       :=ValFloat(edt_valfre.Text);
      mTarBan       :=ValFloat(edt_tarban1.Text)+ValFloat(edt_tarban_101.Text);
      mOutDesp      :=valfloat(edt_despAces.Text);
      end
   else
      begin
      if mVenda_GP.mped1_formace=0 then
         begin
         mPrecoUnit_Cal:=tb_ped02_preP2PRECO.AsFloat;
        

         mPrecoTab_Cal :=Tb_Ped02_preP2PRECO_TAB.AsFloat;
         mPrecoUCPR_Cal:=Tb_Ped02_preP2PRECO_UCPR.AsFloat;
         mPrecoCus_Cal :=Tb_Ped02_preP2PRECO_CUS.AsFloat;
         mPrecoMax_Cal :=Tb_Ped02_preP2PRECO_MAXCONS.AsFloat;


         mValorTemp:=Arredonda( (Tb_Ped02_preP2QTD.AsFloat*mVenda_GP.mped1_submod/100), 0);
         if x=2 then
            mQtd_Cal:=mValorTemp
         else
            mQtd_Cal:=Tb_Ped02_preP2QTD.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (mQtd_Ant*mVenda_GP.mped1_submod/100), 0);
         if x=2 then
            mQtd_Ant_Cal:=mValorTemp
         else
            mQtd_Ant_Cal:=Tb_Ped02_preP2QTD.AsFloat-mValorTemp;

         end
      else
         begin
         mQtd_Ant_Cal:=mQtd_Ant;
         mQtd_Cal:=Tb_Ped02_preP2QTD.AsFloat;
         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO.AsFloat*mVenda_GP.mped1_submod/100), trunc(mVenda_GP.mPed1_QtdDec));
         if x=2 then
            mPrecoUnit_Cal:=mValorTemp
         else
            mPrecoUnit_Cal:=tb_ped02_preP2PRECO.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_TAB.AsFloat*mVenda_GP.mped1_submod/100), trunc(mVenda_GP.mPed1_QtdDec));
         if x=2 then
            mPrecoTab_Cal:=mValorTemp
         else
            mPrecoTab_Cal:=tb_ped02_preP2PRECO_TAB.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_TAB.AsFloat*mVenda_GP.mped1_submod/100), trunc(mVenda_GP.mPed1_QtdDec));
         if x=2 then
            mPrecoTab_Cal:=mValorTemp
         else
            mPrecoTab_Cal:=tb_ped02_preP2PRECO_TAB.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_UCPR.AsFloat*mVenda_GP.mped1_submod/100), trunc(mVenda_GP.mPed1_QtdDec));
         if x=2 then
            mPrecoUCPR_Cal:=mValorTemp
         else
            mPrecoUCPR_Cal:=Tb_Ped02_preP2PRECO_UCPR.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_CUS.AsFloat*mVenda_GP.mped1_submod/100), trunc(mVenda_GP.mPed1_QtdDec));
         if x=2 then
            mPrecoCus_Cal:=mValorTemp
         else
            mPrecoCus_Cal:=Tb_Ped02_preP2PRECO_CUS.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_MAXCONS.AsFloat*mVenda_GP.mped1_submod/100), trunc(mVenda_GP.mPed1_QtdDec));
         if x=2 then
            mPrecoMax_Cal:=mValorTemp
         else
            mPrecoMax_Cal:=Tb_Ped02_preP2PRECO_MAXCONS.AsFloat-mValorTemp;

         end;

      mValorTemp:=Arredonda( (valfloat(edt_desc_valor.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASAS.AsInteger);
      if x=2 then
         mDescValor:=mValorTemp
      else
         mDescValor:=valfloat(edt_desc_valor.Text)-mValorTemp;


      mValorTemp:=Arredonda( (valfloat(edt_valseg.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASAS.AsInteger);
      if x=2 then
         mValseg:=mValorTemp
      else
         mValseg:=valfloat(edt_valseg.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_valfre.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASAS.AsInteger);
      if x=2 then
         mValFre:=mValorTemp
      else
         mValFre:=valfloat(edt_valfre.Text)-mValorTemp;
{
      mValorTemp:=Arredonda( (valfloat(edt_tarban.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASAS.AsInteger);
      if x=2 then
         mTarBan:=mValorTemp
      else
         mTarBan:=valfloat(edt_tarban.Text)-mValorTemp;
}
      mValorTemp:=Arredonda( (valfloat(edt_despAces.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASAS.AsInteger);
      if x=2 then
         mOutDesp:=mValorTemp
      else
         mOutDesp:=valfloat(edt_despAces.Text)-mValorTemp;

      if (mVenda_GP.mped1_submod=100) or (mVenda_GP.mped1_submod=0) then
         break;
      end;
   if (mVenda_GP.mped1_formace=1)and (x=2) then
      mMovEst:=2
   else
      mMovEst:=0;

   if not Tb_FP_pre.IsEmpty then
     begin
     if not Tb_FP_Pre.Active then
        fLerFormaPag(0);

     Tb_FP_pre.First;
     mVenda_GP.mPed1_Parcelas:='';
     while not Tb_FP_pre.Eof do
       begin
       mVenda_GP.mPed1_Parcelas:=mVenda_GP.mPed1_Parcelas+insere(Tb_FP_prePFPPRAZO.AsString,'0',4);
       Tb_FP_pre.Next;
       end;
     mVenda_GP.mped1_QtdParc:=Tb_FP_pre.RecordCount;
     end;

  {  mVenda_GP.fGravarItem(tb_ped02_preP2ITEM.AsInteger,mItem_Ant,tb_ped02_preP2CFOP_ECF.AsInteger,
                      Tb_Ped02_preP2CONS_PROPRIO.AsInteger,//cons_proprio
                      tb_ped02_preP2CFOP_NF.AsInteger ,tb_ped02_preP2MODBCST.AsInteger,
                      0, // situacao
                      mMovEst, // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta
                      mVenda_GP.mPed1_CodFP,iif(mItem_ant=0,0,1),
                      Tb_Ped02_preP2CONTESP.AsInteger, // CONTROLE ESPECIAL

                      tb_ped02_preP2CODPRO.AsString,
                      Tb_Ped02_prePDNOME.AsString,
                      Tb_Ped02_prePDUND.AsString,
                      mCodpro_Ant, // codigo anterior
                      mQtd_cal,
                      mQtd_Ant_Cal,
                      tb_ped02_preP2DESC_PERC01.AsFloat,
                      tb_ped02_preP2DESC_PERC02.AsFloat,
                      tb_ped02_preP2DESC_PERC03.AsFloat,
                      Tb_Ped02_preP2VALDES.AsFloat, // desconto em valor
                      Tb_Ped02_preP2DESCPR.AsFloat,
                      mPrecoUnit_Cal,
                      mPrecoUnit_Dig,
                      Tb_Ped02_preP2PCOMIS.AsFloat,
                      0, //repasse de icms
                      0, // lista neutra positiva negativa
                      mPrecoTab_Cal,
                      mPrecoTab_Cal,
                      mPrecoUCPR_Cal,
                      mPrecoCus_Cal,
                      mPrecoMax_Cal,
                      tb_ped02_preP2IPI_PERC.AsFloat,
                      tb_ped02_preP2ICMS_PERC.AsFloat,
                      0, // percentual de comissao
                      tb_ped02_preP2PIS_PERC.AsFloat,
                      tb_ped02_preP2COFINS_PERC.AsFloat,
                      tb_ped02_preP2DESCFIN_PERC.AsFloat,
                      0, // percentual de acrescimos
                      tb_ped02_preP2CODVEN.AsFloat,
                      iif(mVenda_GP.mPed1_Codemp>100,Tb_Ped02_preP2ICMS_PPRED_101.AsFloat,Tb_Ped02_preP2ICMS_PPRED.AsFloat),
                      iif(mVenda_GP.mPed1_Codemp>100,tb_ped02_preP2ST_IVA_101.AsFloat,tb_ped02_preP2ST_IVA.AsFloat),
                      iif(mVenda_GP.mPed1_Codemp>100,tb_ped02_preP2ST_REDUT_101.AsFloat,tb_ped02_preP2ST_REDUT.AsFloat),
                      iif(mVenda_GP.mPed1_Codemp>100,tb_ped02_preP2ST_REDUT_101.AsFloat,tb_ped02_preP2ST_REDUT.AsFloat),
                      iif(mVenda_GP.mPed1_Codemp>100,tb_ped02_preP2ST_ICMSDEB_101.AsFloat,tb_ped02_preP2ST_ICMSDEB.AsFloat),
                      iif(mVenda_GP.mPed1_Codemp>100,Tb_Ped02_preP2ST_ICMSCRED_101.AsFloat,Tb_Ped02_preP2ST_ICMSCRED.AsFloat),
                      Tb_Ped02_preP2ICMSSN_PERC.AsFloat,
                      mDescValor,
                      0, // ACRESCIMOS RATEADO
                      mValseg,
                      mValFre,
                      mTarBan,
                      mOutDesp,
                      tb_ped02_preP2CST.AsString,
                      tb_ped02_preP2AMBIENTE.AsString,
                      tb_ped02_preP2DESC_COMP.AsString,
                      tb_ped02_preP2CSOSN.AsString,
                      tb_ped02_preP2csosn_ori.AsString,tb_ped02_preP2PROMOCAO.AsString
                      ,mVenda_GP.mPed1_NomFP,mVenda_GP.mPed1_BaixaFP,Tb_Ped02_preP2CST_PIS.Value,Tb_Ped02_preP2CST_COFINS.Value
                      ,Tb_Ped02_preP2CST_IPI.AsString
                      ,Tb_Ped02_preP2TIPO_PCO.AsInteger
                      ,Tb_Ped02_preP2ICMS_ALIPI.AsFloat
                      );            }

    mVenda_GP.fGravarItem(0 // produto
                        ,mitem_ant
                        ,mMovEst // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta p2Estoque
                        ,mVenda_GP.mPed1_CodFP
                        ,iif(mItem_ant=0,0,1) //apenas calcular  tipo do evento 0-inclusao 1-alteracao 2-exclusao 3-calcular
                        ,0 //pSituacao: Integer;
                        ,mCodpro_Ant
                        ,mVenda_GP.mPed1_NomFP
                        ,mVenda_GP.mPed1_BaixaFP
                        ,mQtd_Cal  //pQtd_Cal
                        ,mPrecoUnit_Cal // pPrecoUnit_Cal
                        ,mPrecoTab_Cal //,pPrecoTab_Cal
                        ,mPrecoUCPR_Cal // pPrecoUCPR_Cal
                        ,mPrecoCus_Cal // pPrecoCus_Cal
                        ,mPrecoMax_Cal // pPrecoMax_Cal,
                        ,mQtd_Ant_Cal

                        ,mValseg
                        ,mValFre
                        ,mTarBan
                        ,mOutDesp
                        ,0//mDescValor
                        ,Tb_Ped02_pre);

   if (mMovEst=0) and (mVenda_GP.mPed1_Tipo_Ped=8) then
      begin
      fRegistrarDevolucao;
{

      if (mCodpro_Ant<>'') and (mCodpro_Ant<>Tb_Ped02_preP2CODPRO.AsString) then
         begin
         Qr_itens_pedori.Locate('PDCODPRO',valfloat(mcodpro_ant),[]);
         Qr_itens_pedori.Edit;
         Qr_itens_pedoriP2QTDDEV.Value:=(Qr_itens_pedoriP2QTDDEV.Value - mQtd_Ant_Cal);
         if Qr_itens_pedoriQTDSEL.AsFloat>0 then
            Qr_itens_pedoriQTDSEL.AsFloat:=Qr_itens_pedoriP2QTD.AsFloat-Qr_itens_pedoriP2QTDDEV.AsFloat;
         Qr_itens_pedori.Post;

         Qr_itens_pedori.Locate('PDCODPRO',Tb_Ped02_preP2CODPRO.AsString,[]);
         Qr_itens_pedori.Edit;
         Qr_itens_pedoriP2QTDDEV.Value:=(Qr_itens_pedoriP2QTDDEV.Value+mQtd_Cal);
         if Qr_itens_pedoriQTDSEL.AsFloat>0 then
            Qr_itens_pedoriQTDSEL.AsFloat:=Qr_itens_pedoriP2QTD.AsFloat-Qr_itens_pedoriP2QTDDEV.AsFloat;
         Qr_itens_pedori.Post;
         end
      else
         begin
         Qr_itens_pedori.Locate('PDCODPRO',Tb_Ped02_preP2CODPRO.AsString,[]);
         Qr_itens_pedori.Edit;
         Qr_itens_pedoriP2QTDDEV.Value:=(Qr_itens_pedoriP2QTDDEV.Value+mQtd_Cal) - mQtd_Ant_Cal;
         if Qr_itens_pedoriQTDSEL.AsFloat>0 then
             Qr_itens_pedoriQTDSEL.AsFloat:=Qr_itens_pedoriP2QTD.AsFloat-Qr_itens_pedoriP2QTDDEV.AsFloat;
         Qr_itens_pedori.Post;
         end;
}         
      end;

   if (mVenda_GP.mped1_submod=100) or (mVenda_GP.mped1_submod=0) then
      break
   else
      begin
      if codemp>100 then
         begin
         if codemp>100 then
            mVenda_GP.mPed1_Codemp:=codemp-100
         else
            mVenda_GP.mPed1_Codemp:=codemp+100
         end;
      mVenda_GP.mPed1_QtdParc_ant:=mAnt_QtdParc;
      mVenda_GP.mPed1_pDesc01_Ant:=mAnt_pDesc01;
      mVenda_GP.mPed1_pDesc02_Ant:=mAnt_pDesc02;
      mVenda_GP.mPed1_pDesc03_Ant:=mAnt_pDesc03;
      mItem_Ant                  :=mAnt_Item;
      mCodpro_Ant                :=mAnt_CodPro;

      end;
   end;



fLerFormaPag(0);
if (Tb_FP_pre.IsEmpty) then
   begin
   fGeraFPgto(0,mVenda_GP.mped1_Chave,mVenda_GP.mPed1_Chave_ano,mVenda_GP.mPed1_Codemp_ini);
   if mVenda_GP.mPed1_Codemp_ini<>mVenda_GP.mPed1_Codemp_fin then
      fGeraFPgto(0,mVenda_GP.mped1_Chave,mVenda_GP.mPed1_Chave_ano,mVenda_GP.mPed1_Codemp_fin);
    end;

mGravando_Item:=false;

fTotais(0);

//edt_totliq.Text:=FormatFloat(mCasas, mVenda_GP.mPed1_Totall);


//LINDOMAR
edt_NomPro.Clear;
edt_pco1.Clear;
edt_pco2.Clear;
edt_pco3.Clear;
end;


function tFrm_Venda_Pre_Farma.fRegistrarDevolucao: boolean;

begin
if (mCodpro_Ant<>'') and (mCodpro_Ant<>Tb_Ped02_preP2CODPRO.AsString) then
   begin
   Qr_itens_pedori.Locate('PDCODPRO',valfloat(mcodpro_ant),[]);
   Qr_itens_pedori.Edit;
   Qr_itens_pedoriP2QTDDEV.Value:=(Qr_itens_pedoriP2QTDDEV.Value - mQtd_Ant_Cal);
   if Qr_itens_pedoriQTDSEL.AsFloat>0 then
      Qr_itens_pedoriQTDSEL.AsFloat:=Qr_itens_pedoriP2QTD.AsFloat-Qr_itens_pedoriP2QTDDEV.AsFloat;
   Qr_itens_pedori.Post;

   Qr_itens_pedori.Locate('PDCODPRO',Tb_Ped02_preP2CODPRO.AsString,[]);
   Qr_itens_pedori.Edit;
   Qr_itens_pedoriP2QTDDEV.Value:=(Qr_itens_pedoriP2QTDDEV.Value+mQtd_Cal);
   if Qr_itens_pedoriQTDSEL.AsFloat>0 then
      Qr_itens_pedoriQTDSEL.AsFloat:=Qr_itens_pedoriP2QTD.AsFloat-Qr_itens_pedoriP2QTDDEV.AsFloat;
   Qr_itens_pedori.Post;
   end
else
   begin
   Qr_itens_pedori.Locate('PDCODPRO',Tb_Ped02_preP2CODPRO.AsString,[]);
   Qr_itens_pedori.Edit;
   Qr_itens_pedoriP2QTDDEV.Value:=(Qr_itens_pedoriP2QTDDEV.Value+mQtd_Cal) - mQtd_Ant_Cal;
   if Qr_itens_pedoriQTDSEL.AsFloat>0 then
       Qr_itens_pedoriQTDSEL.AsFloat:=Qr_itens_pedoriP2QTD.AsFloat-Qr_itens_pedoriP2QTDDEV.AsFloat;
   Qr_itens_pedori.Post;
   end;

end;



procedure TFrm_Venda_Pre_Farma.Tb_Ped02_preBeforePost(DataSet: TDataSet);
var
  mQtdSai: Real;
  mQtdDev: Real;
  mResult:Integer;
  mDescMedio: Real;
  mDescPpr : Real;
  mTotDes: Real;
  mDescMaxProd: Real;
  Query_Cons: TQuery;
begin
if mlocalizando_pedido then
   exit;
if mVenda_GP.mPed1_CodCli=0 then
   begin
   MessageDlg('Código do Cliente é Obrigatorio!',mtWarning,[mbOk],0);
   edt_codcli.SetFocus;
   Tb_Ped02_pre.Cancel;
   Abort;
   exit;
   end;
if mVenda_GP.mPed1_Codven=0 then
   begin
   MessageDlg('Código do Vendedor é Obrigatorio!',mtWarning,[mbOk],0);
   edt_codcli.SetFocus;
   Tb_Ped02_pre.Cancel;
   Abort;
   exit;
   end;
if mVenda_GP.mPed1_CodPV=0 then
   begin
   MessageDlg('Código do Plano de Vendas é Obrigatorio!',mtWarning,[mbOk],0);
   edt_codcli.SetFocus;
   Tb_Ped02_pre.Cancel;
   Abort;
   exit;
   end;

if (DM4.Tb_Par01PMENPZORC.Value = 1) and (ValFloat(Tb_Ped02_preP2CODPRO.AsString)>0) then
  begin
  flcadpro(1,0,codemp,Tb_Ped02_preP2CODPRO.AsString);
  if DM1.Tb_ProPDSALDO.AsFloat<Tb_Ped02_preP2QTD.AsFloat then
    begin
    if fmensagem('Quantidade Pedida Maior que Estoque. Estoque: '+FormatFloat(mcasas, form_venda_pesqprod.Qr_ProPDSALDO.AsFloat)
            +' Deseja Continuar? ',0,['1','2'],1)<>mrYes then
      begin
      DBGrid_itens.SelectedField:=Tb_Ped02_preP2CODPRO;
      Abort;
      exit;
      end;
    end;
  end;


if mCodpro_lid<>Tb_Ped02_preP2CODPRO.AsString then
   begin
   if not fValidarDigitacaoItem then
      begin
      mCodpro_lid:='';
      tb_ped02_pre.Cancel;
      Abort;
      end;
   end;

TB_Ped02_preP2CODVEN.AsInteger:=ValInt(edt_codven.Text);

if length(tb_ped02_preP2CODPRO.AsString)<1 then
   begin
   tb_ped02_pre.Cancel;
   Abort;
   end
else if length(tb_ped02_prePDNOME.AsString)<1 then
   begin
   MessageDlg('Código do Produto Invalida!',mtWarning,[mbOk],0);
   DBGrid_itens.SelectedField:=tb_ped02_preP2CODPRO;
   DBGrid_itens.SetFocus;
   Abort;
   end
else if tb_ped02_preP2QTD.AsFloat<=0 then
   begin
   MessageDlg('Quantidade Invalida!',mtWarning,[mbOk],0);
   DBGrid_itens.SelectedField:=tb_ped02_preP2QTD;
   DBGrid_itens.SetFocus;
   Abort;
   end
else if tb_ped02_preP2PRECO.AsFloat<=0 then
   begin
   MessageDlg('Preço Invalido!',mtWarning,[mbOk],0);
   DBGrid_itens.SelectedField:=tb_ped02_preP2PRECO;
   DBGrid_itens.SetFocus;
   Abort;
   end;
//SO VALIDAR APENAS NA PRIMEIRA VEZ QUE E DIGITADO O PRODUTO
{if (mVenda_GP.mped1_Chave<>0) and ((trim(mCodpro_Ant)='')) or (mCodpro_Ant<>Tb_Ped02_preP2CODPRO.AsString)  then
   begin
   if fFoiDigitado(0) then
      begin
      Abort;
      exit;
      end;
   end;}



if form_venda_pesqprod.Qr_ProPDCONTESP.AsInteger=1 then
   begin
   if  (mPreco_ant<>0) and (Arredonda(mPreco_ant,2)<>Arredonda(Tb_Ped02_preP2PRECO.AsFloat,2)) then
      Tb_Ped02_preP2PRECO.AsFloat:=mPreco_ant
   else
      begin
      if (mPreco_ant<>0) and (Arredonda(mPreco_ant,2)<>Arredonda(Tb_Ped02_preP2PRECO.AsFloat,2)) then
         begin
         if fValidaSenha(0,codusr,63,0,ValFloat(Tb_Ped02_preP2CODPRO.AsString),0,0,0,'Senha para Alterar o Preço do Produto','')<>0 then
            begin
            Tb_Ped02_preP2PRECO.AsFloat:=mPreco_ant;
            abort;
            exit;
            end;
         end;
      end;
   end;

Tb_Ped02_preP2DESC_PERC01.Value:= (
         ((Tb_Ped02_preP2PRECO_TAB.AsFloat-tb_Ped02_preP2PRECO.AsFloat)*100) /
         (Tb_Ped02_preP2PRECO_TAB.AsFloat) );


mAmbiente:=Tb_Ped02_preP2AMBIENTE.AsString;
if (tb_ped02_preP2QTD.AsFloat>0) and (tb_ped02_preP2PRECO.AsFloat>0) then
   tb_ped02_preVALOR_TOTAL.AsFloat:=tb_ped02_preP2QTD.AsFloat*tb_ped02_preP2PRECO.AsFloat
else
   tb_ped02_preVALOR_TOTAL.AsFloat:=0;


if DM4.Tb_Par01PFATMZ.AsInteger<>1 then
   begin
   if mVenda_GP.mPd_EstNor='S'  then
      begin
      form_venda_pesqprod.pFilial:=mVenda_GP.mped1_Filial;
      form_venda_pesqprod.pFilial_Desc:=CB_FILIAL.Text;

//      if (not form_venda_pesqprod.Qr_Pro.Active) or (Tb_Ped02_preP2CODPRO.Value<>form_venda_pesqprod.Qr_ProPDCODPRO.Value) then
      form_venda_pesqprod.Qr_Pro.Filtered:=false;

      form_venda_pesqprod.flcadpro_Local(1,1,codemp,tb_ped02_preP2CODPRO.AsString,'','');
      mQtdSai:=0;
      if ((trim(mCodpro_Ant)<>'')) and (mCodpro_Ant=Tb_Ped02_preP2CODPRO.AsString) then
         mQtdSai:=mQtdSai-mQtd_Ant;
      if (mQtdSai+Tb_Ped02_preP2QTD.AsFloat)>0 then
         begin
         if (mQtdSai+Tb_Ped02_preP2QTD.AsFloat>form_venda_pesqprod.Qr_Prosaldo_filial_disponivel.AsFloat) then
            begin
            if form_venda_pesqprod.Qr_Prosaldo_filial_disponivel.AsFloat<=0 then
               begin
               if not mIgnorar_Restricoes then
                  begin
                  if form_venda_pesqprod.Qr_Proqtd_analise.AsFloat>0 then
                     fmensagem(form_venda_pesqprod.Qr_ProPDNOME.AsString+' Estoque bloqueado para Analise!',0,['0'],0)
                  else
                     fmensagem(form_venda_pesqprod.Qr_ProPDNOME.AsString+' Produto sem estoque!',0,['0'],0);

//               freeandnil(Query_Cons);
                  DBGrid_itens.SelectedField:=tb_ped02_preP2CODPRO;
                  DBGrid_itens.SetFocus;
                  Abort;
                  end
               else
                  begin
                  end;
               end
            else
               begin
               mcinst:='Quantidade Pedida '+FormatFloat(mcasqtd, Tb_Ped02_preP2QTD.AsFloat)
                      +' Estoque diponivel'+FormatFloat(mcasqtd, form_venda_pesqprod.Qr_Prosaldo_filial_disponivel.AsFloat+(mqtdsai*-1))
                      +' Faturar Somente Diferença?';
               verteclado(0);
               if not mIgnorar_Restricoes then
                  mResult:=Application.MessageBox(pchar(mcinst),'',MB_YESNO+MB_DEFBUTTON1)
               else
                  mresult:=6;
               if mResult=6 then // sim then
                  begin
                  Tb_Ped02_preP2QTD.AsFloat:=form_venda_pesqprod.Qr_Prosaldo_filial_disponivel.asfloat+(mqtdsai*-1);
                  if not mIgnorar_Restricoes then
                     begin
                     DBGrid_itens.SelectedField:=tb_ped02_preP2QTD;
                     DBGrid_itens.SetFocus;
                     abort;
                     end;




                  end
               else if mResult=7 then // nao
                  begin
                  if mQtd_Ant<=0 then
                     begin
                     DBGrid_itens.SelectedField:=tb_ped02_preP2CODPRO;
                     DBGrid_itens.SetFocus;
                     abort;
                     end
                  else
                     begin
                     Tb_Ped02_preP2QTD.AsFloat:=mQtd_Ant;
                     end;
                  end
               else
                  begin
                  DBGrid_itens.SelectedField:=tb_ped02_preP2CODPRO;
                  DBGrid_itens.SetFocus;
                  abort;
                  end;
               end;
            end;
         end;
      end;
   end;
if mVenda_GP.mPed1_Tipo_Ped=8 then
   begin
   if not cb_naoverifica.Checked then
     begin
     if ((Qr_itens_pedoriP2QTD.AsFloat-Qr_itens_pedoriP2QTDDEV.AsFloat)+mQtd_Ant) <Tb_Ped02_preP2QTD.AsFloat then
       begin
       mQtdDev:=fSomaQtdDev(ValFloat(Tb_Ped02_preP2CODPRO.AsString));
       if (mQtdDev+mQtd_Ant) <Tb_Ped02_preP2QTD.AsFloat then
         begin
         MessageDlg('Existem apenas '+FormatFloat(mcasqtd,  ((mQtdDev)+mQtd_Ant) )
         +' '+Tb_Ped02_prePDUND.AsString+' disponivel para devolução',mtWarning,[mbOk],0);
         DBGrid_itens.SelectedField:=tb_ped02_preP2CODPRO;
         DBGrid_itens.SetFocus;
         abort;
         end;
       end;
     end;
   end;



if ((cb_tppco.ItemIndex<>2) or (cb_tppco.itemindex=7)) and (DM1.Tb_PargerPEXTRAMEN.Value<>1) then
   begin
   if Arredonda(Tb_Ped02_preP2PRECO.Value,DM1.Tb_PargerPCASASPU.AsInteger)
      <Arredonda(frm_pesqprod.Qr_Propcoven.AsFloat,DM1.Tb_PargerPCASASPU.AsInteger) then
      begin
      fmensagem('Produto: '+frm_pesqprod.Qr_ProPDCODPRO.AsString+' '+frm_pesqprod.Qr_ProPDNOME.AsString+
      'o preço não pode ser menor que o preço padrão: '+FormatFloat(mcasas, frm_pesqprod.Qr_Propcoven.AsFloat)
                +', invalido!',0,['0'],0);
      Tb_Ped02_preP2PRECO.Value :=frm_pesqprod.Qr_Propcoven.AsFloat;
      DBGrid_itens.SelectedField:=Tb_Ped02_preP2PRECO;
      DBGrid_itens.SetFocus;
      Abort;
      exit;
      end;
   end;


if ((cb_tppco.ItemIndex<>2) or (cb_tppco.itemindex=7)) and (DM1.Tb_PargerPEXTRAMEN.Value<>0) then
   begin
   if (tb_Ped02_preP2PRECO.value<>0) and (frm_pesqprod.Qr_Propcoven.AsFloat<>0) and
      (tb_Ped02_preP2PRECO.value>frm_pesqprod.Qr_Propcoven.AsFloat) then
      begin
      if (((tb_Ped02_preP2PRECO.value-frm_pesqprod.Qr_Propcoven.AsFloat)*100) /
          frm_pesqprod.Qr_Propcoven.AsFloat)>DM1.Tb_PargerPACREMPEXTRA.AsFloat then
          begin
          fmensagem('Produto: '+frm_pesqprod.Qr_ProPDCODPRO.AsString+' '+frm_pesqprod.Qr_ProPDNOME.Value+
          ' preço padrão: '+FormatFloat(mcasas, frm_pesqprod.Qr_Propcoven.AsFloat)
                +' preço Digitado: '+FormatFloat(mcasas, Tb_Ped02_preP2PRECO.AsFloat)
                +' o Preço digitado nao pode ser superior a '
                +FormatFloat(mcasas, DM1.Tb_PargerPACREMPEXTRA.AsFloat)
                +'% Este Preço esta com acrescimo de '
                +FormatFloat(mcasas, ((Tb_ped02_PreP2PRECO.AsFloat-frm_pesqprod.Qr_Propcoven.AsFloat)*100
                                      ) / frm_pesqprod.Qr_Propcoven.AsFloat)
               +'%, invalido!',0,['0'],0);
          Tb_Ped02_preP2PRECO.AsFloat:=frm_pesqprod.Qr_Propcoven.AsFloat;
          DBGrid_itens.SelectedField:=Tb_Ped02_preP2PRECO;
          DBGrid_itens.SetFocus;
          Abort;
          exit;
          end;
      end;

   end;

// DESCONTO

if (form_venda_pesqprod.Qr_ProPDFRACAO.Value<>1) then
   begin
   if Trunc(Tb_Ped02_preP2QTD.AsFloat)<>Tb_Ped02_preP2QTD.AsFloat then
      begin
      fMensagem('Não é permitido fracionar este produto!',0,['0'],0);
      pcProdServ.ActivePage:=tsProdutos;
      DBGrid_itens.SelectedField:=Tb_Ped02_preP2QTD;
      DBGrid_itens.SetFocus;
      abort;
      exit;
      end;
   end;



if Tb_Ped02_preP2PRECO_TAB.AsFloat>0 then
   begin
   mTotDes:=Tb_Ped02_preP2VALDES.AsFloat;
   mTotDes:=mTotDes+
            Arredonda( (((Tb_Ped02_preP2PRECO.Value*Tb_Ped02_preP2QTD.Value)-mTotDes)*Tb_Ped02_preP2DESC_PERC01.AsFloat/100) ,2);
   mTotDes:=mTotDes+
            Arredonda( (((Tb_Ped02_preP2PRECO.Value*Tb_Ped02_preP2QTD.Value)-mTotDes)*Tb_Ped02_preP2DESC_PERC02.AsFloat/100) ,2);

   mTotDes:=mTotDes+
            Arredonda( (((Tb_Ped02_preP2PRECO.Value*Tb_Ped02_preP2QTD.Value)-mTotDes)*Tb_Ped02_preP2DESC_PERC03.AsFloat/100) ,2);



    mDescMedio:=Arredonda( (Tb_Ped02_preP2PRECO_TAB.Value*Tb_Ped02_preP2QTD.Value) , DM1.Tb_PargerPCASAS.Asinteger)
                 -Arredonda( (Tb_Ped02_preP2PRECO.Value*Tb_Ped02_preP2QTD.Value), DM1.Tb_PargerPCASAS.Asinteger) ;
//    mDescMedio:=mDescMedio+mTotDes; //soma desconto 2 vezes
    try
       mDescMedio:=(mDescMedio*100)/(Tb_Ped02_preP2PRECO_TAB.Value*Tb_Ped02_preP2QTD.Value)
    except
       mdescmedio:=0;
       end;

   if (mVenda_GP.mped1_tppco<>4) then
      begin

      if frm_pesqprod.Qr_ProPDDESCMAX.AsFloat>0 then
         mDescMaxProd:=frm_pesqprod.Qr_ProPDDESCMAX.AsFloat
      else
         mDescMaxProd:=DM4.Tb_Par01PDESCMP0.Value;

      mDescPpr := Tb_Ped02_preP2DESCPR.AsFloat*100;
      if (mDescMaxProd>0) and (DM1.Tb_PargerPTIPOVALDES.AsInteger<>1) and (not mProcessamento_Externo) then
         begin
         if ((mDescMedio-0.10)>mDescMaxProd)  and (mDescMedio>mLib_DescItem)
              and (mPd_Venda_Devol<>1)  and ((mDescMedio-0.10)>mDescPpr) then
             begin
             mPd_CodResp_Senha:=fValidaSenha(iif(DM1.Tb_PargerPGRAVPEDBLOQ.asinteger=2,0,1),codusr,2,0,mPed_Cli_CodCli,0,0,0,'% Desconto maior que o permitido.'+#13
                                                                                    +'Desconto do Pedido: '+FormatFloat(mcasaspu, mDescMedio)+#13
                                                                                    +'Máximo Permitido: '+FormatFloat(mcasaspu, mDescMaxProd)+#13
                                                                                    +'Para continuar digite a senha','');

              if mPd_CodResp_Senha = 0 then
                 begin
                 mlib_codusr_lbloq   := codusr;
                 mlib_codbloq        := fAdicionaRemoveTexto(0,mlib_codbloq,'20');
                 mlib_codbloq_lib    := fAdicionaRemoveTexto(0,mlib_codbloq_lib,'20');
                 if mDescMedio>mlib_mPDescLib then
                    mlib_mPDescLib      := mDescMedio;
                 if mDescMedio>mlib_mPDescLib then
                   mlib_mPDescLib      := mDescMedio;
                 mlib_mPDescLib_Usr  := codusr;
                 mlcred              := 0;
                 mlib_limcred        := True;
//                 DBGrid_itens.SelectedField:=Tb_Ped02_preP2CODPRO;
//                 DBGrid_itens.SetFocus;
//                 Abort;
//                 exit;

                 end
              else if mPd_CodResp_Senha = 2 then
                 begin
                 if mDescMedio>mlib_mPDescLib then
                    mlib_mPDescLib      := mDescMedio;
                 mlib_codbloq        := fAdicionaRemoveTexto(0,mlib_codbloq,'20');
                 mlib_bloqPend       := 2;
                 end
              else
                 begin
                 DBGrid_itens.SelectedField:=Tb_Ped02_preP2CODPRO;
                 Tb_Ped02_preP2DESC_PERC01.AsFloat:=0;
                 DBGrid_itens.SetFocus;
                 Abort;
                 exit;
                 end;
              end;
           end;
        end;
    end;

// TERMINO

if Tb_Ped02_preP2PRECO_TAB.AsFloat>0 then
   begin
   mTotDes:=Tb_Ped02_preP2VALDES.AsFloat;
   mTotDes:=mTotDes+
            Arredonda( (((Tb_Ped02_preP2PRECO.Value*Tb_Ped02_preP2QTD.Value)-mTotDes)*Tb_Ped02_preP2DESC_PERC01.AsFloat/100) ,2);
   mTotDes:=mTotDes+
            Arredonda( (((Tb_Ped02_preP2PRECO.Value*Tb_Ped02_preP2QTD.Value)-mTotDes)*Tb_Ped02_preP2DESC_PERC02.AsFloat/100) ,2);

   mTotDes:=mTotDes+
            Arredonda( (((Tb_Ped02_preP2PRECO.Value*Tb_Ped02_preP2QTD.Value)-mTotDes)*Tb_Ped02_preP2DESC_PERC03.AsFloat/100) ,2);



    mDescMedio:=Arredonda( (Tb_Ped02_preP2PRECO_TAB.Value*Tb_Ped02_preP2QTD.Value) , DM1.Tb_PargerPCASAS.Asinteger)
                 -Arredonda( (Tb_Ped02_preP2PRECO.Value*Tb_Ped02_preP2QTD.Value), DM1.Tb_PargerPCASAS.Asinteger) ;
    mDescMedio:=mDescMedio+mTotDes;
    mDescMedio:=(mDescMedio*100)/(Tb_Ped02_preP2PRECO_TAB.Value*Tb_Ped02_preP2QTD.Value);
   if (mDescMedio>=100)  then
      begin
      if (mDescMedio=100) and (mVenda_GP.mped1_tppco=4) then
      else
         begin
         fmensagem('Desconto não pode ser '+FormatFloat(mcasas, mDescMedio )+'%' ,0,['0'],0);
         DBGrid_itens.SelectedField:=Tb_Ped02_preP2PRECO;
         DBGrid_itens.SetFocus;
         abort;
         exit;
         end;
      end;
   end;

if (mContEsp_ant=1) and (fSonumero(mCodpro_Ant)<>form_venda_pesqprod.Qr_ProPDCODPRO.AsFloat) then
   begin
   Query_Cons:=TQuery.Create(nil);
   Query_Cons.DatabaseName:='SG_ASSOC';
   Query_Cons.Close;
   Query_Cons.SQL.Clear;
   Query_Cons.SQL.Add('Delete from CADP02_CMET '
                     +' where P2CM_CODEMP=:CODEMP '
                     +' and   P2CM_LOTSEQ=:LOTSEQ '
                     +' and   P2CM_CHAVE=:CHAVE '
                     +' and   P2CM_CODPRO=:CODPRO '
                     +' and   P2CM_ITEM=:ITEM ');

   Query_Cons.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
   Query_Cons.ParamByName('CHAVE').AsInteger :=mVenda_GP.mPed1_Chave;
   Query_Cons.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp;
   Query_Cons.ParamByName('CODPRO').AsFloat  :=ValFloat(Tb_Ped02_preP2CODPRO.AsString);
   Query_Cons.ParamByName('ITEM').AsFloat    :=Tb_Ped02_preP2ITEM.AsInteger;
   try
      Query_Cons.ExecSQL;
      fdm1StartCommit;
   except
      end;
   FreeAndNil(Query_Cons);
   end;





{
mSaldo_Pro
if (mVenda_GP.mped1_Chave<>0) and ((trim(mCodpro_Ant)='')) or (mCodpro_Ant<>Tb_Ped02_preP2CODPRO.AsString)  then

         if flcadpro(1,1,codemp,tb_ped02_preP2CODPRO.AsString) then

mPed_Par_FatMz_LocMov      := DM4.Tb_Par01PFATMZ_LOCMOV.AsInteger=0;

}


//freeandnil(Query_Cons);

mCodpro_lid:='';

mGravando_Item:=true;



end;
function tFrm_Venda_Pre_Farma.fSomaQtdDev(pCodpro: Real): Real;
var
mQtdDev:Real;
mPos_ItemDev: TBookmark;
begin
mPos_ItemDev:=Qr_itens_pedori.GetBookmark;
Qr_Itens_pedOri.first;
mQtdDev:=0;
While not Qr_Itens_PedOri.Eof do
   begin
   if pCodpro=Qr_Itens_PedoriPDCODPRO.Asfloat then
      mQtdDev:=mQtdDev+Qr_itens_pedoriP2QTD.AsFloat-Qr_itens_pedoriP2QTDDEV.AsFloat;
   Qr_Itens_PedOri.Next;

   end;
Qr_itens_pedori.GotoBookmark(mPos_ItemDev);

result:=mQtdDev;
end;
function tFrm_Venda_Pre_Farma.fFoiDigitado(ptipo: integer): Boolean;
var
Query_Cons: TQuery;
mCodigo_dig: Real;
mAmbiente_dig: String;
begin
if (DM1.Tb_PargerPFATDPRO.AsInteger = 2) then
   begin
   result:=false;
   exit;
   end;
result:=false;

Query_Cons:=TQuery.Create(nil);
Query_Cons.DatabaseName:='SG_ASSOC';
Query_Cons.close;
Query_Cons.SQL.clear;
Query_Cons.SQL.Add('Select count(*) from CADP02 where P2CHAVE=:CHAVE '
               +' and (P2CODEMP=:CODEMP or P2CODEMP=:CODEMP_FILIAL) '
               +' and P2ORDEM=:ORDEM '
               +' and P2LOTSEQ=:LOTSEQ '
               +' and P2CODPRO=:CODPRO ');
if trim(Tb_Ped02_preP2AMBIENTE.AsString)<>'' then
  Query_Cons.SQL.Add(' and P2AMBIENTE=:AMBIENTE ');

Query_Cons.SQL.Add(' group by P2AMBIENTE ');
Query_Cons.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
Query_Cons.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
Query_Cons.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
Query_Cons.ParamByName('ORDEM').AsInteger:=01;
Query_Cons.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_Cons.ParamByName('CODPRO').AsFloat:=ValFloat(Tb_Ped02_preP2CODPRO.AsString);
if trim(Tb_Ped02_preP2AMBIENTE.AsString)<>'' then
  Query_Cons.ParamByName('AMBIENTE').AsString:=Tb_Ped02_preP2AMBIENTE.AsString;
try
   Query_Cons.Open;
except
   end;
if Query_Cons.Fields[0].AsInteger>0 then
  begin
  result:=true;
  mCodigo_dig:=ValFloat(Tb_Ped02_preP2CODPRO.AsString);
  mAmbiente_dig:=Tb_Ped02_preP2AMBIENTE.AsString;
  freeandnil(Query_Cons);
  DBGrid_itens.SelectedField:=tb_ped02_preP2CODPRO;
  DBGrid_itens.SetFocus;
  if (DM1.Tb_PargerPFATDPRO.AsInteger=1) then
    begin
    if Application.MessageBox('Produto Ja Digitado Neste Pedido, deseja altera-lo?','Confirmação',MB_YESNO+MB_DEFBUTTON1)=mrYes then
      begin
      Tb_Ped02_pre.Cancel;
      if Tb_Ped02_pre.Locate('P2CODPRO;P2AMBIENTE',vararrayof([mCodigo_dig,mAmbiente_dig]),[]) then
        begin
        Tb_Ped02_pre.Edit;
        end;
      end;
    Result:=False;      
    end
  else if (DM1.Tb_PargerPFATDPRO.AsInteger=0) then
    begin
    ShowMessage('Produto já digitado');
    Tb_Ped02_pre.Cancel;
    Tb_Ped02_pre.Locate('P2CODPRO;P2AMBIENTE',vararrayof([mCodigo_dig,mAmbiente_dig]),[]);
    Tb_Ped02_pre.Edit;
    result:=false;
    end;
  end;
FreeandNil(Query_cons);
end;

procedure TFrm_Venda_Pre_Farma.Tb_Ped02_preBeforeDelete(DataSet: TDataSet);
var
mPrecoUnit_Cal: Real;
mQtd_Cal: Real;
mQtd_Ant_Cal: Real;

mPrecoTab_Cal: Real;
mPrecoUCPR_Cal: Real;
mPrecoCus_Cal: Real;
mPrecoMax_Cal: Real;

mValseg: Real;
mValFre: Real;
mTarBan: Real;
mOutDesp: Real;
mDescValor: Real;
x: Integer;
mValorTemp: Real;
mAnt_Item, mAnt_QtdParc: Integer;
mAnt_pDesc01,mAnt_pDesc02,mAnt_pDesc03: Real;

mAnt_CodPro: String;

mMovEst:Integer;
begin
if mlocalizando_pedido then
   exit;

if not sbnGravar.Enabled then
   begin
   abort;
   exit;
   end;
mped02_itemexcluido:=Tb_Ped02_preP2ITEM.AsInteger;
mAnt_QtdParc:=mVenda_GP.mPed1_QtdParc_ant;
mAnt_pDesc01:=mVenda_GP.mPed1_pDesc01_Ant;
mAnt_pDesc02:=mVenda_GP.mPed1_pDesc02_Ant;
mAnt_pDesc03:=mVenda_GP.mPed1_pDesc03_Ant;
mAnt_Item   :=mItem_Ant;
mAnt_CodPro :=mCodpro_Ant;




for x:=1 to 2 do
   begin

   if mVenda_GP.mped1_submod=100 then
      begin
      if codemp>100 then
         mVenda_GP.mPed1_Codemp:=codemp-100
      else
         mVenda_GP.mPed1_Codemp:=codemp+100
      end
   else
      begin
      if x=1 then
         mVenda_GP.mPed1_Codemp:=codemp
      else
         begin
         if codemp>100 then
            mVenda_GP.mPed1_Codemp:=codemp-100
         else
            mVenda_GP.mPed1_Codemp:=codemp+100;
         end;
      end;

   if (mVenda_GP.mped1_submod=100) or (mVenda_GP.mped1_submod=0) then
      begin
      mPrecoUnit_Cal:=tb_ped02_preP2PRECO.AsFloat;
      mQtd_Cal:=tb_ped02_preP2QTD.AsFloat;
      mQtd_Ant_Cal:=mQtd_Ant;
      mPrecoTab_Cal :=Tb_Ped02_preP2PRECO_TAB.AsFloat;
      mPrecoUCPR_Cal:=Tb_Ped02_preP2PRECO_UCPR.AsFloat;
      mPrecoCus_Cal :=Tb_Ped02_preP2PRECO_CUS.AsFloat;
      mPrecoMax_Cal :=Tb_Ped02_preP2PRECO_MAXCONS.AsFloat;

      mDescValor    :=valfloat(edt_desc_valor.Text);
      mValseg       :=valfloat(edt_valseg.Text);
      mValFre       :=ValFloat(edt_valfre.Text);
      mTarBan       :=ValFloat(edt_tarban1.Text)+ValFloat(edt_tarban_101.Text);
      mOutDesp      :=valfloat(edt_despAces.Text);
      end
   else
      begin
      if mVenda_GP.mped1_formace=0 then
         begin
         mPrecoUnit_Cal:=tb_ped02_preP2PRECO.AsFloat;

         mPrecoTab_Cal :=Tb_Ped02_preP2PRECO_TAB.AsFloat;
         mPrecoUCPR_Cal:=Tb_Ped02_preP2PRECO_UCPR.AsFloat;
         mPrecoCus_Cal :=Tb_Ped02_preP2PRECO_CUS.AsFloat;
         mPrecoMax_Cal :=Tb_Ped02_preP2PRECO_MAXCONS.AsFloat;


         mValorTemp:=Arredonda( (Tb_Ped02_preP2QTD.AsFloat*mVenda_GP.mped1_submod/100), 0);
         if x=2 then
            mQtd_Cal:=mValorTemp
         else
            mQtd_Cal:=Tb_Ped02_preP2QTD.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (mQtd_Ant*mVenda_GP.mped1_submod/100), 0);
         if x=2 then
            mQtd_Ant_Cal:=mValorTemp
         else
            mQtd_Ant_Cal:=Tb_Ped02_preP2QTD.AsFloat-mValorTemp;

         end
      else
         begin
         mQtd_Ant_Cal:=mQtd_Ant;
         mQtd_Cal:=Tb_Ped02_preP2QTD.AsFloat;
         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO.AsFloat*mVenda_GP.mped1_submod/100), trunc(mVenda_GP.mPed1_QtdDec));
         if x=2 then
            mPrecoUnit_Cal:=mValorTemp
         else
            mPrecoUnit_Cal:=tb_ped02_preP2PRECO.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_TAB.AsFloat*mVenda_GP.mped1_submod/100), trunc(mVenda_GP.mPed1_QtdDec));
         if x=2 then
            mPrecoTab_Cal:=mValorTemp
         else
            mPrecoTab_Cal:=tb_ped02_preP2PRECO_TAB.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_TAB.AsFloat*mVenda_GP.mped1_submod/100), trunc(mVenda_GP.mPed1_QtdDec));
         if x=2 then
            mPrecoTab_Cal:=mValorTemp
         else
            mPrecoTab_Cal:=tb_ped02_preP2PRECO_TAB.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_UCPR.AsFloat*mVenda_GP.mped1_submod/100), trunc(mVenda_GP.mPed1_QtdDec));
         if x=2 then
            mPrecoUCPR_Cal:=mValorTemp
         else
            mPrecoUCPR_Cal:=Tb_Ped02_preP2PRECO_UCPR.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_CUS.AsFloat*mVenda_GP.mped1_submod/100), trunc(mVenda_GP.mPed1_QtdDec));
         if x=2 then
            mPrecoCus_Cal:=mValorTemp
         else
            mPrecoCus_Cal:=Tb_Ped02_preP2PRECO_CUS.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_MAXCONS.AsFloat*mVenda_GP.mped1_submod/100), trunc(mVenda_GP.mPed1_QtdDec));
         if x=2 then
            mPrecoMax_Cal:=mValorTemp
         else
            mPrecoMax_Cal:=Tb_Ped02_preP2PRECO_MAXCONS.AsFloat-mValorTemp;

         end;

      mValorTemp:=Arredonda( (valfloat(edt_desc_valor.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASAS.AsInteger);
      if x=2 then
         mDescValor:=mValorTemp
      else
         mDescValor:=valfloat(edt_desc_valor.Text)-mValorTemp;


      mValorTemp:=Arredonda( (valfloat(edt_valseg.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASAS.AsInteger);
      if x=2 then
         mValseg:=mValorTemp
      else
         mValseg:=valfloat(edt_valseg.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_valfre.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASAS.AsInteger);
      if x=2 then
         mValFre:=mValorTemp
      else
         mValFre:=valfloat(edt_valfre.Text)-mValorTemp;
{
      mValorTemp:=Arredonda( (valfloat(edt_tarban1.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASAS.AsInteger);
      if x=2 then
         mTarBan:=mValorTemp
      else
         mTarBan:=valfloat(edt_tarban.Text)-mValorTemp;
}
      mValorTemp:=Arredonda( (valfloat(edt_despAces.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASAS.AsInteger);
      if x=2 then
         mOutDesp:=mValorTemp
      else
         mOutDesp:=valfloat(edt_despAces.Text)-mValorTemp;

      if (mVenda_GP.mped1_submod=100) or (mVenda_GP.mped1_submod=0) then
         break;
      end;

      if (mVenda_GP.mped1_formace=1)and (x=2) then
         mMovEst:=2
      else
         mMovEst:=0;


{      mVenda_GP.fGravarItem(tb_ped02_preP2ITEM.AsInteger,0,tb_ped02_preP2CFOP_ECF.AsInteger,
                      Tb_Ped02_preP2CONS_PROPRIO.AsInteger, //cons_proprio
                      tb_ped02_preP2CFOP_NF.AsInteger
                      ,tb_ped02_preP2MODBCST.AsInteger,
                      0, // situacao
                      mMovEst, // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta
                      mVenda_GP.mPed1_CodFP,
                      2, // EXCLUSAO
                      Tb_Ped02_preP2CONTESP.AsInteger, // CONTROLE ESPECIAL

                      tb_ped02_preP2CODPRO.AsString,
                      Tb_Ped02_prePDNOME.AsString,
                      Tb_Ped02_prePDUND.AsString,
                      mCodpro_Ant, // codigo anterior
                      mQtd_Cal,
                      0, //mQtd_Ant,
                      tb_ped02_preP2DESC_PERC01.AsFloat,
                      tb_ped02_preP2DESC_PERC02.AsFloat,
                      tb_ped02_preP2DESC_PERC03.AsFloat,
                      0, // desconto em valor
                      Tb_Ped02_preP2DESCPR.AsFloat,
                      mPrecoUnit_Cal,
                      mPrecoUnit_Dig,
                      Tb_Ped02_preP2PCOMIS.AsFloat,
                      0, //repasse de icms
                      0, // lista neutra positiva negativa
                      mPrecoTab_Cal,
                      mPrecoTab_Cal, // preco da forma de pagamento
                      mPrecoUCPR_Cal,
                      mPrecoCus_Cal,
                      mPrecoMax_Cal,
                      tb_ped02_preP2IPI_PERC.AsFloat,
                      tb_ped02_preP2ICMS_PERC.AsFloat,
                      0, // percentual de comissao
                      tb_ped02_preP2PIS_PERC.AsFloat,
                      tb_ped02_preP2COFINS_PERC.AsFloat,
                      tb_ped02_preP2DESCFIN_PERC.AsFloat,
                      0, // percentual de acrescimos
                      tb_ped02_preP2CODVEN.AsFloat,

                      iif(mVenda_GP.mPed1_Codemp>100,Tb_Ped02_preP2ICMS_PPRED_101.AsFloat,Tb_Ped02_preP2ICMS_PPRED.AsFloat),
                      iif(mVenda_GP.mPed1_Codemp>100,tb_ped02_preP2ST_IVA_101.AsFloat,tb_ped02_preP2ST_IVA.AsFloat),
                      iif(mVenda_GP.mPed1_Codemp>100,tb_ped02_preP2ST_REDUT_101.AsFloat,tb_ped02_preP2ST_REDUT.AsFloat),
                      iif(mVenda_GP.mPed1_Codemp>100,tb_ped02_preP2ST_REDUT_101.AsFloat,tb_ped02_preP2ST_REDUT.AsFloat),
                      iif(mVenda_GP.mPed1_Codemp>100,tb_ped02_preP2ST_ICMSDEB_101.AsFloat,tb_ped02_preP2ST_ICMSDEB.AsFloat),
                      iif(mVenda_GP.mPed1_Codemp>100,Tb_Ped02_preP2ST_ICMSCRED_101.AsFloat,Tb_Ped02_preP2ST_ICMSCRED.AsFloat),

                      tb_ped02_preP2ICMSSN_PERC.AsFloat,
                      valfloat(edt_desc_valor.Text),
                      0, // ACRESCIMOS RATEADO
                      valfloat(edt_valseg.Text),
                      ValFloat(edt_valfre.Text),
                      iif(mVenda_GP.mPed1_Codemp>100,ValFloat(edt_tarban_101.Text),ValFloat(edt_tarban1.Text)),
                      valfloat(edt_despAces.Text),
                      tb_ped02_preP2CST.AsString,
                      tb_ped02_preP2AMBIENTE.AsString,
                      tb_ped02_preP2DESC_COMP.AsString,
                      tb_ped02_preP2CSOSN.AsString,
                      tb_ped02_preP2csosn_ori.AsString,tb_ped02_preP2PROMOCAO.AsString
                      ,mVenda_GP.mPed1_NomFP,mVenda_GP.mPed1_BaixaFP,Tb_Ped02_preP2CST_PIS.Value,Tb_Ped02_preP2CST_COFINS.Value
                      ,Tb_Ped02_preP2CST_IPI.AsString
                      ,Tb_Ped02_preP2TIPO_PCO.AsInteger
                      ,Tb_Ped02_preP2ICMS_ALIPI.AsFloat
                      );                              }
      mVenda_GP.fGravarItem(0 // produto
                        ,mitem_ant
                        ,mMovEst // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta p2Estoque
                        ,mVenda_GP.mPed1_CodFP
                        ,2 //apenas calcular  tipo do evento 0-inclusao 1-alteracao 2-exclusao 3-calcular
                        ,0 //pSituacao: Integer;
                        ,mCodpro_Ant
                        ,mVenda_GP.mPed1_NomFP
                        ,mVenda_GP.mPed1_BaixaFP
                        ,mQtd_Cal  //pQtd_Cal
                        ,mPrecoUnit_Cal // pPrecoUnit_Cal
                        ,mPrecoTab_Cal //,pPrecoTab_Cal
                        ,mPrecoUCPR_Cal // pPrecoUCPR_Cal
                        ,mPrecoCus_Cal // pPrecoCus_Cal
                        ,mPrecoMax_Cal // pPrecoMax_Cal,
                        ,mQtd_Ant_Cal
                        ,valfloat(edt_valseg.Text)
                        ,ValFloat(edt_valfre.Text)
                        ,iif(mVenda_GP.mPed1_Codemp>100,ValFloat(edt_tarban_101.Text),ValFloat(edt_tarban1.Text))
                        ,valfloat(edt_despAces.Text)
                        ,valfloat(edt_desc_valor.Text)
                        ,Tb_Ped02_pre);
   if (mVenda_GP.mped1_submod=100) or (mVenda_GP.mped1_submod=0) then
      break
   else
      begin
      if codemp>100 then
         begin
         if codemp>100 then
            mVenda_GP.mPed1_Codemp:=codemp-100
         else
            mVenda_GP.mPed1_Codemp:=codemp+100
         end;
      mVenda_GP.mPed1_QtdParc_ant:=mAnt_QtdParc;
      mVenda_GP.mPed1_pDesc01_Ant:=mAnt_pDesc01;
      mVenda_GP.mPed1_pDesc02_Ant:=mAnt_pDesc02;
      mVenda_GP.mPed1_pDesc03_Ant:=mAnt_pDesc03;
      mItem_Ant                  :=mAnt_Item;
      mCodpro_Ant                :=mAnt_CodPro;

      end;
   end;


if Tb_Ped02_preP2CONTESP.AsInteger=1 then
   fDeletarCMet(Tb_Ped02_preP2ITEM.AsInteger,ValFloat(Tb_Ped02_preP2CODPRO.AsString))
else if Tb_ped02_preP2CONTESP.AsInteger=5 then
   fDeletarArmas(Tb_Ped02_preP2ITEM.AsInteger,ValFloat(Tb_Ped02_preP2CODPRO.AsString));


fLerFormaPag(0);

fTotais(0);

end;
function tFrm_Venda_Pre_Farma.fDeletarArmas(pItem: Integer; pCodpro: Real): Boolean;
var
Query_Temp: TQuery;

begin
Query_Temp:=TQuery.Create(nil);
Query_Temp.DatabaseName:='SG_ASSOC';
Query_Temp.Close;
Query_Temp.SQL.clear;
Query_Temp.SQL.Add('Delete from CADP02_ARMAS where '
                  +' P2ARMAS_LOTSEQ=:LOTSEQ '
                  +' and P2ARMAS_CHAVE=:CHAVE '
                  +' and P2ARMAS_CODPRO=:CODPRO '
                  +' and P2ARMAS_ITEM=:ITEM '
                  +' and (P2ARMAS_CODEMP=:CODEMP or P2ARMAS_CODEMP=:CODEMP_FILIAL)');
Query_Temp.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_Temp.ParamByName('CHAVE').AsInteger:=mVenda_GP.mPed1_Chave;
Query_Temp.ParamByName('CODPRO').AsFloat:=pCodPro;
Query_Temp.ParamByName('ITEM').AsInteger:=pItem;
Query_Temp.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_CodEmp_Ini;
Query_Temp.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_CodEmp_Fin;
try
   Query_Temp.ExecSQL;
   fdm1StartCommit;
except
   end;
freeandnil(query_temp);
result:=true;
end;




function tFrm_Venda_Pre_Farma.fDeletarCmet(pitem:Integer;pCodpro: Real): Boolean;
var
Query_Temp: TQuery;

begin
Query_Temp:=TQuery.Create(nil);
Query_Temp.DatabaseName:='SG_ASSOC';
Query_Temp.Close;
Query_Temp.SQL.clear;
Query_Temp.SQL.Add('Delete from CADP02_CMET where '
                  +' P2CM_LOTSEQ=:LOTSEQ '
                  +' and P2CM_CHAVE=:CHAVE '
                  +' and P2CM_CODPRO=:CODPRO '
                  +' and P2CM_ITEM=:ITEM '
                  +' and (P2CM_CODEMP=:CODEMP or P2CM_CODEMP=:CODEMP_FILIAL)');
Query_Temp.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_Temp.ParamByName('CHAVE').AsInteger:=mVenda_GP.mPed1_Chave;
Query_Temp.ParamByName('CODPRO').AsFloat:=pCodPro;
Query_Temp.ParamByName('ITEM').AsInteger:=pItem;
Query_Temp.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_CodEmp_Ini;
Query_Temp.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_CodEmp_Fin;
try
   Query_Temp.ExecSQL;
   fdm1StartCommit;
except
   end;
freeandnil(query_temp);
result:=true;



end;

procedure TFrm_Venda_Pre_Farma.edt_codcliEnter(Sender: TObject);
begin
mEventoPendente:='edt_codcli';

mCodcli_ant:=fsonumero(edt_codcli.text);
end;

procedure TFrm_Venda_Pre_Farma.edt_codCondPagEnter(Sender: TObject);
begin
mcodPv_ant:=edt_codcondpag.text;
mEventoPendente:='edt_codcondpag';

end;

procedure TFrm_Venda_Pre_Farma.edt_codvenEnter(Sender: TObject);
begin
mcodven_ant:= valint(edt_codven.Text);
mEventoPendente:='edt_codven';

end;

procedure TFrm_Venda_Pre_Farma.edt_codfpEnter(Sender: TObject);
begin
mPed1_CodFP_Ant:=ValInt(edt_codfp.Text);
mEventoPendente:='edt_codfp';

end;

procedure TFrm_Venda_Pre_Farma.Tb_FP_preAfterInsert(DataSet: TDataSet);
begin

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select sum(PFPVALOR) as TOT, max(PFPSEQ) AS PARCELA from cadpfp '
                          +' where PFPCODEMP=:CODEMP '
                          +' and   PFPCHAVE=:CHAVE '
                          +' and   PFPLOTSEQ=:CHAVE_ANO ');
DM1.Query1.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp;
DM1.Query1.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
DM1.Query1.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
try
   DM1.Query1.Open;
   tb_fp_prePFPPARCELA.AsInteger:=DM1.Query1.FieldByName('PARCELA').AsInteger+1;
   tb_fp_prePFPVALOR.AsFloat    :=ValFloat(edt_totliq.Text)-DM1.Query1.FieldByName('TOT').AsFloat;
except
  end;
tb_fp_prePFPCODEMP.AsInteger   :=mVenda_GP.mPed1_Codemp;
tb_fp_prePFPCHAVE.AsInteger    :=mVenda_GP.mped1_Chave;
tb_fp_prePFPDATA.AsDateTime:=mVenda_GP.mPed1_Datap;
tb_fp_prePFPCHAVE_ANO.AsInteger:=mVenda_GP.mPed1_Chave_ano;
tb_fp_prePFPCODFP.AsInteger:=mvenda_gp.mPed1_CodFP;
tb_fp_prePFPNOMFP.AsString :=mvenda_gp.mPed1_NomFP;
if tb_fp_prePFPVALOR.AsFloat<0 then
   tb_fp_prePFPVALOR.AsFloat:=0;


end;

procedure TFrm_Venda_Pre_Farma.edt_submodExit(Sender: TObject);
begin
if ValInt(edt_submod.text)>100 then
   edt_submod.text:='100'
else if ValInt(edt_submod.text)<0 then
   edt_submod.text:='0';
edt_submod.Text:=fdeixanum(edt_subMod.text);
mVenda_GP.mped1_submod:=valint(edt_submod.Text);


if mVenda_GP.mped1_submod>0 then
   begin
   if mVenda_GP.mPed1_Codemp_ini > 100 then
      mVenda_GP.mPed1_Codemp_fin:=mVenda_GP.mPed1_Codemp_ini-100
   else
      mVenda_GP.mPed1_Codemp_fin:=mVenda_GP.mPed1_Codemp_ini+100;
   end;



if mSubMOd_ant<>mVenda_GP.mped1_submod then
   begin
   fDividirFormasFixas(mSubMOd_ant,mVenda_GP.mped1_submod);

   mped_Alterou_Cab:=true;
   RecalcularSubMod(mSubMOd_ant,mVenda_GP.mped1_submod,mVenda_GP.mped1_formace,mVenda_GP.mped1_formace
                   ,mVenda_GP.mPd_EstNor
                   ,mVenda_GP.mPd_EstCons
                   ,mVenda_GP.mPd_EstTerc
                   ,mVenda_GP.mPd_EstVenda

                   ,mVenda_GP.mPd_EstNor
                   ,mVenda_GP.mPd_EstCons
                   ,mVenda_GP.mPd_EstTerc
                   ,mVenda_GP.mPd_EstVenda
                   );
    sbnCalcularClick(self);                   

   end;
mSubMOd_ant:=valint(edt_submod.Text);

end;

procedure TFrm_Venda_Pre_Farma.cb_formaExit(Sender: TObject);
begin
mVenda_GP.mped1_formace:=cb_forma.ItemIndex;

if mFormace_ant<>mVenda_GP.mped1_formace then
   begin
   mped_Alterou_Cab:=true;
   RecalcularSubMod(mVenda_GP.mped1_submod,mVenda_GP.mped1_submod,mFormace_ant,mVenda_GP.mped1_formace
                   ,mVenda_GP.mPd_EstNor
                   ,mVenda_GP.mPd_EstCons
                   ,mVenda_GP.mPd_EstTerc
                   ,mVenda_GP.mPd_EstVenda
                   ,mVenda_GP.mPd_EstNor
                   ,mVenda_GP.mPd_EstCons
                   ,mVenda_GP.mPd_EstTerc
                   ,mVenda_GP.mPd_EstVenda

                   );
   end;


end;


function TFrm_Venda_Pre_Farma.RecalcularSubMod(pSubMod_Ant,pSubMod_Atu,pFormace_Ant,pFormace_Atu: Integer;
                             pEstNor_Ant,pEstCons_Ant,pEstTer_Ant,pEstVenda_Ant,
                             pEstNor_Atu,pEstCons_Atu,pEstTer_Atu,pEstVenda_Atu: String): Boolean;



var
mPrecoUnit_Cal: Real;
mQtd_Cal: Real;
mQtd_Ant_Cal: Real;

mPrecoTab_Cal: Real;
mPrecoUCPR_Cal: Real;
mPrecoCus_Cal: Real;
mPrecoMax_Cal: Real;

mValseg: Real;
mValFre: Real;
mTarBan: Real;
mOutDesp: Real;
mDescValor: Real;
x: Integer;
mValorTemp: Real;
mAnt_QtdParc: Integer;
mAnt_Item: Integer;
mAnt_pDesc01,mAnt_pDesc02,mAnt_pDesc03: Real;
mAnt_CodPro: String;
mMovEst: Integer;
Query_Ped02_Temp: TQuery;

Query_Ped02S_Temp: TQuery;

Query_Del_Ped01: TQuery;
mDesc_rat_Ant: Real;

begin
if (Tb_Ped02_pre.IsEmpty) or (not sbnGravar.Enabled) then
   begin
   result:=true;
   exit;
   end;

mAnt_QtdParc:=mVenda_GP.mPed1_QtdParc_ant;
mAnt_pDesc01:=mVenda_GP.mPed1_pDesc01_Ant;
mAnt_pDesc02:=mVenda_GP.mPed1_pDesc02_Ant;
mAnt_pDesc03:=mVenda_GP.mPed1_pDesc03_Ant;

//lindomar
// termino dos novos lotes

mDesc_rat_Ant:=valfloat(edt_desc_valor.Text);
edt_desc_valor.text         :='0';
mVenda_GP.mPed1_Desc_Rateado:=0;
if mVenda_GP.mped1_Chave=0 then
   begin
   mVenda_GP.mped1_submod_grav:=mSubMOd_ant;
   if pSubMod_Atu=100 then
      begin
      mVenda_GP.mped1_submod_grav:=100;
      if codemp>100 then
         mVenda_GP.fGravarPed01(0,-100)
      else
         mVenda_GP.fGravarPed01(0,100);
      end
   else
      begin
      if pSubMod_Atu>0 then
         mVenda_GP.mped1_submod_grav:=100-pSubMod_Atu;
      mVenda_GP.fGravarPed01(0,0);
      end;
   edt_chave.Text:=InttoStr(mVenda_GP.mped1_Chave);
   if (pSubMod_Atu>0) and (pSubMod_Atu<100) then
      begin
      mVenda_GP.mped1_submod_grav:=pSubMod_Atu;
      if codemp>100 then
         mVenda_GP.fGravarPed01(0,-100)
      else
         mVenda_GP.fGravarPed01(0,100);
      end;
   end
else if mped_Alterou_Cab then
   begin
   mVenda_GP.mped1_submod_grav:=0;
   if pSubMod_Atu=100 then
      begin
      mVenda_GP.mped1_submod_grav:=100;
      if codemp>100 then
         mVenda_GP.fGravarPed01(iif(pSubMod_Ant=0,0,1),-100)
      else
         mVenda_GP.fGravarPed01(iif(pSubMod_Ant=0,0,1),100);
      end
   else
      begin
      if pSubMod_Atu>0 then
         mVenda_GP.mped1_submod_grav:=100-pSubMod_Atu;
      if (pSubMod_Ant<>pSubMod_Atu) and  ((pSubMod_Atu=0) or (pSubMod_Atu=100))  then
         mVenda_GP.fGravarPed01(iif( ((pSubMod_Ant>0) and (pSubMod_ant<100))  ,1,0),0)
      else
         mVenda_GP.fGravarPed01(1,0);
      end;
   if (pSubMod_Atu>0) and (pSubMod_Atu<100) then
      begin
      mVenda_GP.mped1_submod_grav:=pSubMod_Atu;
      if codemp>100 then
         mVenda_GP.fGravarPed01(iif(pSubMod_Ant=0,0,1),-100)
      else
         mVenda_GP.fGravarPed01(iif(pSubMod_Ant=0,0,1),100);
      end;
   if (pSubMod_Ant<>pSubMod_Atu) and  ((pSubMod_Atu=0) or (pSubMod_Atu=100))  then
      begin
      Query_Del_Ped01:=TQuery.Create(nil);
      Query_Del_Ped01.DatabaseName:='SG_ASSOC';
      Query_Del_Ped01.Close;
      Query_Del_Ped01.SQL.Clear;
      Query_Del_Ped01.SQL.Add('Delete from CADP01 where P1CHAVE=:CHAVE '
                             +' AND P1ORDEM=01 '
                             +' AND P1LOTSEQ=:CHAVE_ANO '
                             +' AND P1CODEMP=:CODEMP ');
      Query_Del_Ped01.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
      Query_Del_Ped01.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
      if pSubMod_Ant=0 then
         begin
         if codemp>100 then
            Query_Del_Ped01.ParamByName('CODEMP').AsInteger:=codemp-100
         else
            Query_Del_Ped01.ParamByName('CODEMP').AsInteger:=codemp;
         end
      else
         begin
         if codemp>100 then
            Query_Del_Ped01.ParamByName('CODEMP').AsInteger:=codemp
         else
            Query_Del_Ped01.ParamByName('CODEMP').AsInteger:=codemp+100;
         end;
      try
         Query_del_Ped01.ExecSql;
         fdm1StartCommit;
      except
         end;
// cadpfp

      Query_Del_Ped01.Close;
      Query_Del_Ped01.SQL.Clear;
      Query_Del_Ped01.SQL.Add('Delete from CADPFP where PFPCHAVE=:CHAVE '
                             +' AND PFPLOTSEQ=:CHAVE_ANO '
                             +' AND PFPCODEMP=:CODEMP ');
      Query_Del_Ped01.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
      Query_Del_Ped01.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
      if pSubMod_Ant=0 then
         begin
         if codemp>100 then
            Query_Del_Ped01.ParamByName('CODEMP').AsInteger:=codemp-100
         else
            Query_Del_Ped01.ParamByName('CODEMP').AsInteger:=codemp;
         end
      else
         begin
         if codemp>100 then
            Query_Del_Ped01.ParamByName('CODEMP').AsInteger:=codemp
         else
            Query_Del_Ped01.ParamByName('CODEMP').AsInteger:=codemp+100;
         end;
      try
         Query_del_Ped01.ExecSql;
         fdm1StartCommit;
      except
         end;

// termina cadpfp
//CADP01V
      Query_Del_Ped01.Close;
      Query_Del_Ped01.SQL.Clear;
      Query_Del_Ped01.SQL.Add('Delete from CADP01V where P1VCHAVE=:CHAVE '
                             +' AND P1VLOTSEQ=:CHAVE_ANO '
                             +' AND P1VCODEMP=:CODEMP ');
      Query_Del_Ped01.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
      Query_Del_Ped01.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
      if pSubMod_Ant=0 then
         begin
         if codemp>100 then
            Query_Del_Ped01.ParamByName('CODEMP').AsInteger:=codemp-100
         else
            Query_Del_Ped01.ParamByName('CODEMP').AsInteger:=codemp;
         end
      else
         begin
         if codemp>100 then
            Query_Del_Ped01.ParamByName('CODEMP').AsInteger:=codemp
         else
            Query_Del_Ped01.ParamByName('CODEMP').AsInteger:=codemp+100;
         end;
      try
         Query_del_Ped01.ExecSql;
         fdm1StartCommit;
      except
         end;
// TERMINO CADP01V
      end;



   mped_Alterou_Cab:=false;
   end;
//mVenda_GP.mPed1_QtdParc_ant:=-1; // PARA GERAR NOVAS PARCELAS


mVenda_GP.mPed1_QtdParc_ant:=mVenda_GP.mPed1_QtdParc;


Query_Ped02_Temp:=TQuery.Create(nil);
Query_Ped02_Temp.DatabaseName:='SG_ASSOC';


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');

{
Query_Ped02_Temp.Close;
Query_Ped02_Temp.SQL.Clear;
Query_Ped02_Temp.SQL.Add(' select P2ITEM AS P2ITEM,P2CODPRO, max(P2NOMPRO_ORI) as P2NOMPRO_ORI, ');
Query_Ped02_Temp.SQL.Add(' max(P2UND) as P2UND ' );
if pFormace_Ant=0 then
   begin
   Query_Ped02_Temp.SQL.Add(',sum(P2QTD) as P2QTD '
                    +',sum(round(P2QTD*P2PRECO,2)) AS VALOR_TOTAL '
                    +',max(P2PCOTAB) AS P2PRECO_TAB'
                    +',max(P2UCPR) AS  P2PRECO_UCPR '
                    +',max(P2PCOCUS) AS P2PRECO_CUS '
                    +',max(P2PCOMAX) AS P2PRECO_MAXCONS '
                    +',max(P2PRECO) as P2PRECO ');
   end
else
   begin
   Query_Ped02_Temp.SQL.Add(',max(P2QTD) as P2QTD '
                    +',sum(round(P2QTD*P2PRECO,2)) AS VALOR_TOTAL '
                    +',sum(P2PCOTAB) AS P2PRECO_TAB'
                    +',sum(P2UCPR) AS  P2PRECO_UCPR '
                    +',sum(P2PCOCUS) AS P2PRECO_CUS '
                    +',sum(P2PCOMAX) AS P2PRECO_MAXCONS '
                    +',sum(P2PRECO) as P2PRECO ');
   end;

Query_Ped02_Temp.SQL.Add(',max(P2DESC1) AS P2DESC_PERC01 '
                    +',max(P2DESC2) AS P2DESC_PERC02 '
                    +',max(P2DESC3) AS P2DESC_PERC03 '
                    +',max(P2SIT) AS P2CST '
                    +',max(P2CSOSN) as P2CSOSN '
                    +',max(P2CFO) AS P2CFOP_NF '
                    +',max(P2CONS_PROPRIO) AS P2CONS_PROPRIO '
                    +',max(P2CFOSUBECF) AS P2CFOP_ECF '
                    +',max(P2COMPLEMENTO) AS P2DESC_COMP '
                    +',max(P2CSOSN_ORI) as P2CSOSN_ORI '
                    +',max(P2PCRED_SN) as P2ICMSSN_PERC '
                    +',max(P2MODBCST) as P2MODBCST '
                    +',max(P2ST_IVA ) as P2ST_IVA '
                    +',max(P2ST_REDUT) as P2ST_REDUT '
                    +',max(P2ST_ICMCRED) as P2ST_ICMSCRED '
                    +',max(P2ST_ICMDEB) AS P2ST_ICMSDEB '
                    +',max(P2ALIPI) AS P2IPI_PERC '
                    +',max(P2ALIQ) AS P2ICMS_PERC '
                    +',max(P2ALIQICMSDES) AS P2ICMS_DESPERC '
                    +',max(P2ALIQAPROXTRIB) AS P2ALIQAPROXTRIB '
                    +',max(P2REDUTICM) AS P2ICMS_PPRED'
                    +',max(P2ALCOFINS) as P2COFINS_PERC '
                    +',max(P2ALPIS) AS P2PIS_PERC '
                    +',max(P2ALIPI) as P2ALIPI '
                    +',max(P2CST_PIS) as P2CST_PIS '
                    +',max(P2CST_COFINS) as P2CST_COFINS '
                    +',max(P2CST_IPI) as P2CST_IPI '
                    +',max(P2CODVEN) as P2CODVEN '
                    +',max(P2AMBIENTE ) as P2AMBIENTE'
                    +',max(P2PDESCF) AS P2DESCFIN_PERC '
                    +',max(PDNOME) as PDNOME '
                    +',max(PDMARCA) as PDMARCA '
                    +',max(PDUND) as PDUND '
                    +',max(P2PROMOCAO) as P2PROMOCAO '
                    +',max(P2DESCPR) as P2DESCPR '
                    +',max(P2CONTESP) as P2CONTESP '
                    +',max(P2PCOMIS) as P2PCOMIS '
                    +',max(P2TIPO_PCO) as P2TIPO_PCO '
                    +' FROM '
                    +' cadp02'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_instrucao='','',la_instrucao+' and ')
                    +' (P2CODEMP=:CODEMP_MENOR or P2CODEMP=:CODEMP_MAIOR ) '
                    +' and   P2CHAVE=:CHAVE'
                    +' and   P2LOTSEQ=:CHAVE_ANO'
                    +' and   P2ORDEM=:ORDEM '
                    +' group by P2ITEM,P2CODPRO '
                    +'  order by P2ITEM ');
Query_Ped02_Temp.ParamByName('CODEMP_MENOR').AsInteger   :=mVenda_GP.mPed1_Codemp_ini;
Query_Ped02_Temp.ParamByName('CODEMP_MAIOR').AsInteger   :=mVenda_GP.mPed1_Codemp_fin;


Query_Ped02_Temp.ParamByName('CHAVE').AsInteger    :=mVenda_GP.mped1_Chave;
Query_Ped02_Temp.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_Ped02_Temp.ParamByName('ORDEM').AsInteger    :=1;
try
   Query_Ped02_Temp.Open;   }


Query_Ped02_Temp.Close;
Query_Ped02_Temp.SQL.Clear;
Query_Ped02_Temp.SQL.Add(' select P2ITEM AS P2ITEM,P2CODPRO, max(P2NOMPRO_ORI) as P2NOMPRO_ORI, ');
Query_Ped02_Temp.SQL.Add(' max(P2UND) as P2UND ' );
if pFormace_Ant=0 then
   begin
   Query_Ped02_Temp.SQL.Add(',sum(P2QTD) as P2QTD '
                    +',sum(round(P2QTD*P2PRECO,2)) AS VALOR_TOTAL '
                    +',max(P2PCOTAB) AS P2PRECO_TAB'
                    +',max(P2UCPR) AS  P2PRECO_UCPR '
                    +',max(P2PCOCUS) AS P2PRECO_CUS '
                    +',max(P2PCOMAX) AS P2PRECO_MAXCONS '
                    +',max(P2PRECO) as P2PRECO ');
   end
else
   begin
   Query_Ped02_Temp.SQL.Add(',max(P2QTD) as P2QTD '
                    +',sum(round(P2QTD*P2PRECO,2)) AS VALOR_TOTAL '
                    +',sum(P2PCOTAB) AS P2PRECO_TAB'
                    +',sum(P2UCPR) AS  P2PRECO_UCPR '
                    +',sum(P2PCOCUS) AS P2PRECO_CUS '
                    +',sum(P2PCOMAX) AS P2PRECO_MAXCONS '
                    +',sum(P2PRECO) as P2PRECO ');
   end;

Query_Ped02_Temp.SQL.Add(',max(P2DESC1) AS P2DESC_PERC01 '
                    +',max(P2DESC2) AS P2DESC_PERC02 '
                    +',max(P2DESC3) AS P2DESC_PERC03 '
                    +',max(P2VALDES) as P2VALDES '
                    +',max(P2SIT) AS P2CST '
                    +',max(P2CSOSN) as P2CSOSN '
                    +',max(P2CFO) AS P2CFOP_NF '
                    +',max(P2CONS_PROPRIO) AS P2CONS_PROPRIO '
                    +',max(P2CFOSUBECF) AS P2CFOP_ECF '
                    +',max(P2COMPLEMENTO) AS P2DESC_COMP '
                    +',max(P2CSOSN_ORI) as P2CSOSN_ORI '
                    +',max(P2PCRED_SN) as P2ICMSSN_PERC '


                    +' ,max(case when P2CODEMP>100 THEN 0 ELSE P2REDUTICM END) AS P2ICMS_PPRED '
                    +' ,max(case when P2CODEMP>100 THEN 0 ELSE P2MODBCST  END)  AS P2MODBCST '
                    +' ,max(case when P2CODEMP>100 THEN 0 ELSE P2ST_IVA  END)  AS P2ST_IVA '
                    +' ,max(case when P2CODEMP>100 THEN 0 ELSE P2ST_REDUT  END)  AS P2ST_REDUT '
                    +' ,max(case when P2CODEMP>100 THEN 0 ELSE P2ST_ICMCRED  END)  AS P2ST_ICMSCRED '
                    +' ,max(case when P2CODEMP>100 THEN 0 ELSE P2ST_ICMDEB  END)  AS P2ST_ICMSDEB '


                    +' ,max(case when P2CODEMP>100 THEN P2REDUTICM ELSE 0 END) AS P2ICMS_PPRED_101 '
                    +' ,max(case when P2CODEMP>100 THEN P2MODBCST ELSE 0 END)  AS P2MODBCST_101 '
                    +' ,max(case when P2CODEMP>100 THEN P2ST_IVA ELSE 0 END)  AS P2ST_IVA_101 '
                    +' ,max(case when P2CODEMP>100 THEN P2ST_REDUT ELSE 0 END)  AS P2ST_REDUT_101 '
                    +' ,max(case when P2CODEMP>100 THEN P2ST_ICMCRED ELSE 0 END)  AS P2ST_ICMSCRED_101 '
                    +' ,max(case when P2CODEMP>100 THEN P2ST_ICMDEB ELSE 0 END)  AS P2ST_ICMSDEB_101 '



                    +',max(P2ALIPI) AS P2IPI_PERC '
                    +',max(P2ALIQ) AS P2ICMS_PERC '
                    +',max(P2ALIQICMSDES) AS P2ICMS_DESPERC '
                    +',max(P2ALIQAPROXTRIB) AS P2ALIQAPROXTRIB '
                    +',max(P2ALCOFINS) as P2COFINS_PERC '
                    +',max(P2ALPIS) AS P2PIS_PERC '
                    +',max(P2ALIPI) as P2ALIPI '
                    +',max(P2CST_PIS) as P2CST_PIS '
                    +',max(P2CST_COFINS) as P2CST_COFINS '
                    +',max(P2CST_IPI) as P2CST_IPI '
                    +',max(P2CODVEN) as P2CODVEN '
                    +',max(P2AMBIENTE ) as P2AMBIENTE'
                    +',max(P2PDESCF) AS P2DESCFIN_PERC '
                    +',max(PDNOME) as PDNOME '
                    +',max(PDMARCA) as PDMARCA '
                    +',max(PDUND) as PDUND '
                    +',max(P2PROMOCAO) as P2PROMOCAO '
                    +',max(P2DESCPR) as P2DESCPR '
                    +',max(P2CONTESP) as P2CONTESP '
                    +',max(P2PCOMIS) as P2PCOMIS '
                    +',max(P2TIPO_PCO) as P2TIPO_PCO '
                    +',max(P2ICMS_ALIPI) as P2ICMS_ALIPI '
                    +' FROM '
                    +' cadp02'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_instrucao='','',la_instrucao+' and ')
                    +' (P2CODEMP=:CODEMP_MENOR or P2CODEMP=:CODEMP_MAIOR ) '
                    +' and   P2CHAVE=:CHAVE'
                    +' and   P2LOTSEQ=:CHAVE_ANO'
                    +' and   P2ORDEM=:ORDEM '
                    +' group by P2ITEM,P2CODPRO '
                    +'  order by P2ITEM ');
Query_Ped02_Temp.ParamByName('CODEMP_MENOR').AsInteger   :=mVenda_GP.mPed1_Codemp_ini;
Query_Ped02_Temp.ParamByName('CODEMP_MAIOR').AsInteger   :=mVenda_GP.mPed1_Codemp_fin;


Query_Ped02_Temp.ParamByName('CHAVE').AsInteger    :=mVenda_GP.mped1_Chave;
Query_Ped02_Temp.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_Ped02_Temp.ParamByName('ORDEM').AsInteger    :=1;
try
   Query_Ped02_Temp.Open;
   
except
   fMensagem('Campo Inexistente: '+FTestarCampos(Query_Ped02_Temp,['CADP02','CADPRO']),0,['0'],0);

   if not fVerificaRedeAtiva(true) then
      begin
      end
   else
      begin
//      ex_erroSql_Novo(Query_Ped02_Temp,2312,'_lerarq','paf_cadp02_pre');
      end;
   end;



Query_Ped02_Temp.First;
While not Query_Ped02_Temp.Eof do
   begin
// removendo o iterm

   mVenda_GP.mPd_EstNor:=pEstNor_Ant;
   mVenda_GP.mPd_EstCons:=pEstCons_Ant;
   mVenda_GP.mPd_EstTerc:=pEstTer_Ant;
   mVenda_GP.mPd_EstVenda:=pEstVenda_Ant;


   for x:=1 to 2 do
      begin
      if pSubMod_Ant=100 then
         begin
         if codemp>100 then
            mVenda_GP.mPed1_Codemp:=codemp-100
         else
            mVenda_GP.mPed1_Codemp:=codemp+100
         end
      else if (pSubMod_Ant>0) and (pSubMod_Ant<100) then
         begin
         if x=1 then
            mVenda_GP.mPed1_Codemp:=codemp
         else if codemp>100 then
            mVenda_GP.mPed1_Codemp:=codemp-100
         else
            mVenda_GP.mPed1_Codemp:=codemp+100
         end
      else
         mVenda_GP.mPed1_Codemp:=codemp;

      if (pSubMod_Ant=100) or (pSubMod_Ant=0) then
         begin
         mPrecoUnit_Cal:=Query_Ped02_Temp.FieldbyName('P2PRECO').AsFloat;
         mQtd_Cal:=Query_Ped02_Temp.FieldbyName('P2QTD').AsFloat;
         mPrecoTab_Cal :=Query_Ped02_Temp.FieldbyName('P2PRECO_TAB').AsFloat;
         mPrecoUCPR_Cal:=Query_Ped02_Temp.FieldbyName('P2PRECO_UCPR').AsFloat;
         mPrecoCus_Cal :=Query_Ped02_Temp.FieldbyName('P2PRECO_CUS').AsFloat;
         mPrecoMax_Cal :=Query_Ped02_Temp.FieldbyName('P2PRECO_MAXCONS').AsFloat;
         mDescValor    :=valfloat(edt_desc_valor.Text);
         mValseg       :=valfloat(edt_valseg.Text);
         mValFre       :=ValFloat(edt_valfre.Text);
         mTarBan       :=ValFloat(edt_tarban1.Text);
         mOutDesp      :=valfloat(edt_despAces.Text);
         end
      else
         begin
         if pFormace_Ant=0 then
            begin
            mPrecoUnit_Cal:=Query_Ped02_Temp.fieldbyname('P2PRECO').AsFloat;
            mPrecoTab_Cal :=Query_Ped02_Temp.fieldbyname('P2PRECO_TAB').AsFloat;
            mPrecoUCPR_Cal:=Query_Ped02_Temp.fieldbyname('P2PRECO_UCPR').AsFloat;
            mPrecoCus_Cal :=Query_Ped02_Temp.fieldbyname('P2PRECO_CUS').AsFloat;
            mPrecoMax_Cal :=Query_Ped02_Temp.fieldbyname('P2PRECO_MAXCONS').AsFloat;
            mValorTemp:=Arredonda( (Query_Ped02_Temp.fieldbyname('P2QTD').AsFloat*pSubMod_Ant/100), 0);
            if x=2 then
               mQtd_Cal:=mValorTemp
            else
               mQtd_Cal:=Query_Ped02_Temp.fieldbyname('P2QTD').AsFloat-mValorTemp;
            end
         else
            begin
            mQtd_Cal:=Query_Ped02_Temp.fieldbyname('P2QTD').AsFloat;
            mValorTemp:=Arredonda( (Query_Ped02_Temp.fieldbyname('P2PRECO').AsFloat*pSubMod_Ant/100), trunc(mVenda_GP.mPed1_QtdDec));
            if x=2 then
               mPrecoUnit_Cal:=mValorTemp
            else
               mPrecoUnit_Cal:=Query_Ped02_Temp.fieldbyname('P2PRECO').AsFloat-mValorTemp;
            mValorTemp:=Arredonda( (Query_Ped02_Temp.fieldbyname('P2PRECO_TAB').AsFloat*pSubMod_Ant/100), trunc(mVenda_GP.mPed1_QtdDec));
            if x=2 then
               mPrecoTab_Cal:=mValorTemp
            else
               mPrecoTab_Cal:=Query_Ped02_Temp.fieldbyname('P2PRECO_TAB').AsFloat-mValorTemp;

            mValorTemp:=Arredonda( (Query_Ped02_Temp.fieldbyname('P2PRECO_UCPR').AsFloat*pSubMod_Ant/100), trunc(mVenda_GP.mPed1_QtdDec));
            if x=2 then
               mPrecoUCPR_Cal:=mValorTemp
            else
               mPrecoUCPR_Cal:=Query_Ped02_Temp.fieldbyname('P2PRECO_UCPR').AsFloat-mValorTemp;
            mValorTemp:=Arredonda( (Query_Ped02_Temp.fieldbyname('P2PRECO_CUS').AsFloat*pSubMod_Ant/100), trunc(mVenda_GP.mPed1_QtdDec));
            if x=2 then
               mPrecoCus_Cal:=mValorTemp
            else
               mPrecoCus_Cal:=Query_Ped02_Temp.fieldbyname('P2PRECO_CUS').AsFloat-mValorTemp;
            mValorTemp:=Arredonda( (Query_Ped02_Temp.fieldbyname('P2PRECO_MAXCONS').AsFloat*pSubMod_Ant), trunc(mVenda_GP.mPed1_QtdDec));
            if x=2 then
               mPrecoMax_Cal:=mValorTemp
            else
               mPrecoMax_Cal:=Query_Ped02_Temp.fieldbyname('P2PRECO_MAXCONS').AsFloat-mValorTemp;
            end;
         end;
      mValorTemp:=Arredonda( (valfloat(edt_desc_valor.Text)*pSubMod_Ant/100), DM1.Tb_PargerPCASAS.AsInteger);
      if x=2 then
         mDescValor:=mValorTemp
      else
         mDescValor:=valfloat(edt_desc_valor.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_valseg.Text)*pSubMod_Ant/100), DM1.Tb_PargerPCASAS.AsInteger);
      if x=2 then
         mValseg:=mValorTemp
      else
         mValseg:=valfloat(edt_valseg.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_valfre.Text)*pSubMod_Ant/100), DM1.Tb_PargerPCASAS.AsInteger);
      if x=2 then
         mValFre:=mValorTemp
      else
         mValFre:=valfloat(edt_valfre.Text)-mValorTemp;
{
      mValorTemp:=Arredonda( (valfloat(edt_tarban.Text)*pSubMod_Ant/100), DM1.Tb_PargerPCASAS.AsInteger);
      if x=2 then
         mTarBan:=mValorTemp
      else
         mTarBan:=valfloat(edt_tarban.Text)-mValorTemp;
}
      mValorTemp:=Arredonda( (valfloat(edt_despAces.Text)*pSubMod_Ant/100), DM1.Tb_PargerPCASAS.AsInteger);
      if x=2 then
         mOutDesp:=mValorTemp
      else
         mOutDesp:=valfloat(edt_despAces.Text)-mValorTemp;
      mItem_Ant:=0;
      mCodpro_Ant:='';


     if (pFormace_ant=1)and (x=2) then
        mMovEst:=2
     else

        mMovEst:=0;
{      mVenda_GP.fGravarItem(Query_Ped02_Temp.fieldbyname('P2ITEM').AsInteger,mItem_Ant,Query_Ped02_Temp.fieldbyname('P2CFOP_ECF').AsInteger,
                        Query_Ped02_Temp.fieldbyname('P2CONS_PROPRIO').AsInteger, //cons_proprio
                        Query_Ped02_Temp.fieldbyname('P2CFOP_NF').AsInteger ,Query_Ped02_Temp.fieldbyname('P2MODBCST').AsInteger,
                        0, // situacao
                        mMovEst, // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta
                        mVenda_GP.mPed1_CodFP,
                        2, // EXCLUSAO
                        Query_Ped02_Temp.FieldbyName('P2CONTESP').AsInteger, // CONTROLE ESPECIAL
                        Query_Ped02_Temp.fieldbyname('P2CODPRO').AsString,
                        Query_Ped02_Temp.fieldbyname('P2NOMPRO_ORI').AsString,
                        Query_Ped02_Temp.fieldbyname('P2UND').AsString,
                        mCodpro_Ant, // codigo anterior
                        mQtd_cal,
                        mQtd_Ant_Cal,
                        Query_Ped02_Temp.fieldbyname('P2DESC_PERC01').AsFloat,
                        Query_Ped02_Temp.fieldbyname('P2DESC_PERC02').AsFloat,
                        Query_Ped02_Temp.fieldbyname('P2DESC_PERC03').AsFloat,
                        0, // desconto em valor
                        Query_Ped02_Temp.fieldbyname('P2DESCPR').AsFloat,
                        mPrecoUnit_Cal,
                        mPrecoUnit_Dig,
                        Query_Ped02_Temp.fieldbyname('P2PCOMIS').AsFloat,
                        0, //repasse de icms
                        0, // lista neutra positiva negativa
                        mPrecoTab_Cal,
                        mPrecoTab_Cal,
                        mPrecoUCPR_Cal,
                        mPrecoCus_Cal,
                        mPrecoMax_Cal,
                        Query_Ped02_Temp.fieldbyname('P2IPI_PERC').AsFloat,
                        Query_Ped02_Temp.fieldbyname('P2ICMS_PERC').AsFloat,
                        0, // percentual de comissao
                        Query_Ped02_Temp.fieldbyname('P2PIS_PERC').AsFloat,
                        Query_Ped02_Temp.fieldbyname('P2COFINS_PERC').AsFloat,
                        Query_Ped02_Temp.fieldbyname('P2DESCFIN_PERC').AsFloat,
                        0, // percentual de acrescimos
                        Query_Ped02_Temp.fieldbyname('P2CODVEN').AsFloat,


                        iif(mVenda_GP.mPed1_Codemp>100,Query_Ped02_Temp.fieldbyname('P2ICMS_PPRED_101').AsFloat,Tb_Ped02_preP2ICMS_PPRED.AsFloat),
                        iif(mVenda_GP.mPed1_Codemp>100,Query_Ped02_Temp.fieldbyname('P2ST_IVA_101').AsFloat,Query_Ped02_Temp.fieldbyname('P2ST_IVA').AsFloat),
                        iif(mVenda_GP.mPed1_Codemp>100,Query_Ped02_Temp.fieldbyname('P2ST_REDUT_101').AsFloat,Query_Ped02_Temp.fieldbyname('P2ST_REDUT').AsFloat),
                        iif(mVenda_GP.mPed1_Codemp>100,Query_Ped02_Temp.fieldbyname('P2ST_REDUT_101').AsFloat,Query_Ped02_Temp.fieldbyname('P2ST_REDUT').AsFloat),
                        iif(mVenda_GP.mPed1_Codemp>100,Query_Ped02_Temp.fieldbyname('P2ST_ICMSDEB_101').AsFloat,Query_Ped02_Temp.fieldbyname('P2ST_ICMSDEB').AsFloat),
                        iif(mVenda_GP.mPed1_Codemp>100,Query_Ped02_Temp.fieldbyname('P2ST_ICMSCRED_101').AsFloat,Query_Ped02_Temp.fieldbyname('P2ST_ICMSCRED').AsFloat),

                        Query_Ped02_Temp.fieldbyname('P2ICMSSN_PERC').AsFloat,



                        mDescValor,
                        0, // ACRESCIMOS RATEADO
                        mValseg,
                        mValFre,
                        mTarBan,
                        mOutDesp,
                        Query_Ped02_Temp.fieldbyname('P2CST').AsString,
                        Query_Ped02_Temp.fieldbyname('P2AMBIENTE').AsString,
                        Query_Ped02_Temp.fieldbyname('P2DESC_COMP').AsString,
                        Query_Ped02_Temp.fieldbyname('P2CSOSN').AsString,
                        Query_Ped02_Temp.fieldbyname('P2csosn_ori').AsString,Query_Ped02_Temp.fieldbyname('P2PROMOCAO').AsString
                        ,mVenda_GP.mPed1_NomFP,mVenda_GP.mPed1_BaixaFP,Query_Ped02_Temp.fieldbyname('P2CST_PIS').AsString
                        ,Query_Ped02_Temp.fieldbyname('P2CST_COFINS').AsString
                        ,Query_Ped02_Temp.fieldbyname('P2CST_IPI').AsString
                        ,Query_Ped02_Temp.fieldbyname('P2TIPO_PCO').AsInteger
                        ,Query_Ped02_Temp.fieldbyname('P2ICMS_ALIPI').AsFloat

                        );            }
     mVenda_GP.fGravarItem(0 // produto
                        ,mitem_ant
                        ,mMovEst // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta p2Estoque
                        ,mVenda_GP.mPed1_CodFP
                        ,2 //apenas calcular  tipo do evento 0-inclusao 1-alteracao 2-exclusao 3-calcular
                        ,0 //pSituacao: Integer;
                        ,mCodpro_Ant
                        ,mVenda_GP.mPed1_NomFP
                        ,mVenda_GP.mPed1_BaixaFP
                        ,mQtd_Cal  //pQtd_Cal
                        ,mPrecoUnit_Cal // pPrecoUnit_Cal
                        ,mPrecoTab_Cal //,pPrecoTab_Cal
                        ,mPrecoUCPR_Cal // pPrecoUCPR_Cal
                        ,mPrecoCus_Cal // pPrecoCus_Cal
                        ,mPrecoMax_Cal // pPrecoMax_Cal,
                        ,mQtd_Ant_Cal

                        ,mValseg
                        ,mValFre
                        ,mTarBan
                        ,mOutDesp
                        ,0//mDescValor
                        ,Query_Ped02_Temp);

      if (pSubMod_Ant=100) or (pSubMod_Ant=0) then
         break;
      end;
// termino da remocao
// inicio das novas inclusoes


   mVenda_GP.mPd_EstNor:=pEstNor_Atu;
   mVenda_GP.mPd_EstCons:=pEstCons_Atu;
   mVenda_GP.mPd_EstTerc:=pEstTer_Atu;
   mVenda_GP.mPd_EstVenda:=pEstVenda_Atu;
//   mVenda_GP.mPed1_QtdParc_ant:=-1; // PARA GERAR NOVAS PARCELAS
   for x:=1 to 2 do
      begin
//      mVenda_GP.mPed1_QtdParc_ant:=-1; // PARA GERAR NOVAS PARCELAS

      if pSubMod_Atu=100 then
         begin
         if codemp>100 then
            mVenda_GP.mPed1_Codemp:=codemp-100
         else
            mVenda_GP.mPed1_Codemp:=codemp+100
         end
      else if (pSubMod_Atu>0) and (pSubMod_Atu<100) then
         begin
         if x=1 then
            mVenda_GP.mPed1_Codemp:=codemp
         else if codemp>100 then
            mVenda_GP.mPed1_Codemp:=codemp-100
         else
            mVenda_GP.mPed1_Codemp:=codemp+100
         end
      else
         mVenda_GP.mPed1_Codemp:=codemp;

      if (pSubMod_Atu=100) or (pSubMod_Atu=0) then
         begin
         mPrecoUnit_Cal:=Query_Ped02_Temp.fieldbyname('P2PRECO').AsFloat;
         mQtd_Cal:=Query_Ped02_Temp.fieldbyname('P2QTD').AsFloat;
         mPrecoTab_Cal :=Query_Ped02_Temp.fieldbyname('P2PRECO_TAB').AsFloat;
         mPrecoUCPR_Cal:=Query_Ped02_Temp.fieldbyname('P2PRECO_UCPR').AsFloat;
         mPrecoCus_Cal :=Query_Ped02_Temp.fieldbyname('P2PRECO_CUS').AsFloat;
         mPrecoMax_Cal :=Query_Ped02_Temp.fieldbyname('P2PRECO_MAXCONS').AsFloat;
         mDescValor    :=valfloat(edt_desc_valor.Text);
         mValseg       :=valfloat(edt_valseg.Text);
         mValFre       :=ValFloat(edt_valfre.Text);
         mTarBan       :=ValFloat(edt_tarban1.Text)+ValFloat(edt_tarban_101.Text) ;
         mOutDesp      :=valfloat(edt_despAces.Text);
         end
      else
         begin
         if pFormace_Atu=0 then
            begin
            mPrecoUnit_Cal:=Query_Ped02_Temp.fieldbyname('P2PRECO').AsFloat;

            mPrecoTab_Cal :=Query_Ped02_Temp.fieldbyname('P2PRECO_TAB').AsFloat;
            mPrecoUCPR_Cal:=Query_Ped02_Temp.fieldbyname('P2PRECO_UCPR').AsFloat;
            mPrecoCus_Cal :=Query_Ped02_Temp.fieldbyname('P2PRECO_CUS').AsFloat;
            mPrecoMax_Cal :=Query_Ped02_Temp.fieldbyname('P2PRECO_MAXCONS').AsFloat;
            mValorTemp:=Arredonda( (Query_Ped02_Temp.fieldbyname('P2QTD').AsFloat*pSubMod_Atu/100), 0);
            if x=2 then
               mQtd_Cal:=mValorTemp
            else
               mQtd_Cal:=Query_Ped02_Temp.fieldbyname('P2QTD').AsFloat-mValorTemp;
            end
         else
            begin
            mQtd_Cal:=Query_Ped02_Temp.fieldbyname('P2QTD').AsFloat;
            mValorTemp:=Arredonda( (Query_Ped02_Temp.fieldbyname('P2PRECO').AsFloat*pSubMod_atu/100), DM1.Tb_PargerPCASAS.AsInteger);
            if x=2 then
               mPrecoUnit_Cal:=mValorTemp
            else
               mPrecoUnit_Cal:=Query_Ped02_Temp.fieldbyname('P2PRECO').AsFloat-mValorTemp;
            mValorTemp:=Arredonda( (Query_Ped02_Temp.fieldbyname('P2PRECO_TAB').AsFloat*pSubMod_Atu/100), DM1.Tb_PargerPCASAS.AsInteger);
            if x=2 then
               mPrecoTab_Cal:=mValorTemp
            else
               mPrecoTab_Cal:=Query_Ped02_Temp.fieldbyname('P2PRECO_TAB').AsFloat-mValorTemp;

            mValorTemp:=Arredonda( (Query_Ped02_Temp.fieldbyname('P2PRECO_UCPR').AsFloat*pSubMod_Atu/100), DM1.Tb_PargerPCASAS.AsInteger);
            if x=2 then
               mPrecoUCPR_Cal:=mValorTemp
            else
               mPrecoUCPR_Cal:=Query_Ped02_Temp.fieldbyname('P2PRECO_UCPR').AsFloat-mValorTemp;
            mValorTemp:=Arredonda( (Query_Ped02_Temp.fieldbyname('P2PRECO_CUS').AsFloat*pSubMod_Atu/100), DM1.Tb_PargerPCASAS.AsInteger);
            if x=2 then
               mPrecoCus_Cal:=mValorTemp
            else
               mPrecoCus_Cal:=Query_Ped02_Temp.fieldbyname('P2PRECO_CUS').AsFloat-mValorTemp;
            mValorTemp:=Arredonda( (Query_Ped02_Temp.fieldbyname('P2PRECO_MAXCONS').AsFloat*pSubMod_Atu), DM1.Tb_PargerPCASAS.AsInteger);
            if x=2 then
               mPrecoMax_Cal:=mValorTemp
            else
               mPrecoMax_Cal:=Query_Ped02_Temp.fieldbyname('P2PRECO_MAXCONS').AsFloat-mValorTemp;
            end;
         end;
      mValorTemp:=Arredonda( (valfloat(edt_desc_valor.Text)*pSubMod_Atu/100), DM1.Tb_PargerPCASAS.AsInteger);
      if x=2 then
         mDescValor:=mValorTemp
      else
         mDescValor:=valfloat(edt_desc_valor.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_valseg.Text)*pSubMod_Atu/100), DM1.Tb_PargerPCASAS.AsInteger);
      if x=2 then
         mValseg:=mValorTemp
      else
         mValseg:=valfloat(edt_valseg.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_valfre.Text)*pSubMod_Atu/100), DM1.Tb_PargerPCASAS.AsInteger);
      if x=2 then
         mValFre:=mValorTemp
      else
         mValFre:=valfloat(edt_valfre.Text)-mValorTemp;
{
      mValorTemp:=Arredonda( (valfloat(edt_tarban.Text)*pSubMod_Atu/100), DM1.Tb_PargerPCASAS.AsInteger);
      if x=2 then
         mTarBan:=mValorTemp
      else
         mTarBan:=valfloat(edt_tarban.Text)-mValorTemp;
}
      mValorTemp:=Arredonda( (valfloat(edt_despAces.Text)*pSubMod_Atu/100), DM1.Tb_PargerPCASAS.AsInteger);
      if x=2 then
         mOutDesp:=mValorTemp
      else
         mOutDesp:=valfloat(edt_despAces.Text)-mValorTemp;
      mItem_Ant:=0;
      mCodpro_Ant:='';

      if (pFormace_Atu=1)and (x=2) then
         mMovEst:=2
      else
         mMovEst:=0;
{      mVenda_GP.fGravarItem(Query_Ped02_Temp.fieldbyname('P2ITEM').AsInteger,mItem_Ant,Query_Ped02_Temp.fieldbyname('P2CFOP_ECF').AsInteger,
                        Query_Ped02_Temp.fieldbyname('P2CONS_PROPRIO').AsInteger, //cons_proprio
                        Query_Ped02_Temp.fieldbyname('P2CFOP_NF').AsInteger ,Query_Ped02_Temp.fieldbyname('P2MODBCST').AsInteger,
                        0, // situacao
                        mMovEst, // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta
                        mVenda_GP.mPed1_CodFP,
                        0, // inclusao
                        Query_Ped02_Temp.FieldbyName('P2CONTESP').AsInteger, // CONTROLE ESPECIAL
                        Query_Ped02_Temp.fieldbyname('P2CODPRO').AsString,
                        Query_Ped02_Temp.fieldbyname('P2NOMPRO_ORI').AsString,
                        Query_Ped02_Temp.fieldbyname('P2UND').AsString,
                        mCodpro_Ant, // codigo anterior
                        mQtd_cal,
                        mQtd_Ant_Cal,
                        Query_Ped02_Temp.fieldbyname('P2DESC_PERC01').AsFloat,
                        Query_Ped02_Temp.fieldbyname('P2DESC_PERC02').AsFloat,
                        Query_Ped02_Temp.fieldbyname('P2DESC_PERC03').AsFloat,
                        Query_Ped02_Temp.fieldbyname('P2DESCPR').AsFloat,
                        0, // desconto em valor
                        mPrecoUnit_Cal,
                        mPrecoUnit_Dig,
                        Query_Ped02_Temp.fieldbyname('P2PCOMIS').AsFloat,
                        0, //repasse de icms
                        0, // lista neutra positiva negativa
                        mPrecoTab_Cal,
                        mPrecoTab_Cal,
                        mPrecoUCPR_Cal,
                        mPrecoCus_Cal,
                        mPrecoMax_Cal,
                        Query_Ped02_Temp.fieldbyname('P2IPI_PERC').AsFloat,
                        Query_Ped02_Temp.fieldbyname('P2ICMS_PERC').AsFloat,
                        0, // percentual de comissao
                        Query_Ped02_Temp.fieldbyname('P2PIS_PERC').AsFloat,
                        Query_Ped02_Temp.fieldbyname('P2COFINS_PERC').AsFloat,
                        Query_Ped02_Temp.fieldbyname('P2DESCFIN_PERC').AsFloat,
                        0, // percentual de acrescimos
                        Query_Ped02_Temp.fieldbyname('P2CODVEN').AsFloat,

                        iif(mVenda_GP.mPed1_Codemp>100,Query_Ped02_Temp.fieldbyname('P2ICMS_PPRED_101').AsFloat,Tb_Ped02_preP2ICMS_PPRED.AsFloat),
                        iif(mVenda_GP.mPed1_Codemp>100,Query_Ped02_Temp.fieldbyname('P2ST_IVA_101').AsFloat,Query_Ped02_Temp.fieldbyname('P2ST_IVA').AsFloat),
                        iif(mVenda_GP.mPed1_Codemp>100,Query_Ped02_Temp.fieldbyname('P2ST_REDUT_101').AsFloat,Query_Ped02_Temp.fieldbyname('P2ST_REDUT').AsFloat),
                        iif(mVenda_GP.mPed1_Codemp>100,Query_Ped02_Temp.fieldbyname('P2ST_REDUT_101').AsFloat,Query_Ped02_Temp.fieldbyname('P2ST_REDUT').AsFloat),
                        iif(mVenda_GP.mPed1_Codemp>100,Query_Ped02_Temp.fieldbyname('P2ST_ICMSDEB_101').AsFloat,Query_Ped02_Temp.fieldbyname('P2ST_ICMSDEB').AsFloat),
                        iif(mVenda_GP.mPed1_Codemp>100,Query_Ped02_Temp.fieldbyname('P2ST_ICMSCRED_101').AsFloat,Query_Ped02_Temp.fieldbyname('P2ST_ICMSCRED').AsFloat),
                        Query_Ped02_Temp.fieldbyname('P2ICMSSN_PERC').AsFloat,
                        mDescValor,
                        0, // ACRESCIMOS RATEADO
                        mValseg,
                        mValFre,
                        mTarBan,
                        mOutDesp,
                        Query_Ped02_Temp.fieldbyname('P2CST').AsString,
                        Query_Ped02_Temp.fieldbyname('P2AMBIENTE').AsString,
                        Query_Ped02_Temp.fieldbyname('P2DESC_COMP').AsString,
                        Query_Ped02_Temp.fieldbyname('P2CSOSN').AsString,
                        Query_Ped02_Temp.fieldbyname('P2csosn_ori').AsString,Query_Ped02_Temp.fieldbyname('P2PROMOCAO').AsString
                        ,mVenda_GP.mPed1_NomFP,mVenda_GP.mPed1_BaixaFP,Query_Ped02_Temp.fieldbyname('P2CST_PIS').AsString
                        ,Query_Ped02_Temp.fieldbyname('P2CST_COFINS').AsString
                        ,Query_Ped02_Temp.fieldbyname('P2CST_IPI').AsString
                        ,Query_Ped02_Temp.fieldbyname('P2TIPO_PCO').AsInteger
                        ,Query_Ped02_Temp.fieldbyname('P2ICMS_ALIPI').AsInteger
                        );        }
 mVenda_GP.fGravarItem(0 // produto
                        ,mitem_ant
                        ,mMovEst // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta p2Estoque
                        ,mVenda_GP.mPed1_CodFP
                        ,0 //apenas calcular  tipo do evento 0-inclusao 1-alteracao 2-exclusao 3-calcular
                        ,0 //pSituacao: Integer;
                        ,mCodpro_Ant
                        ,mVenda_GP.mPed1_NomFP
                        ,mVenda_GP.mPed1_BaixaFP
                        ,mQtd_Cal  //pQtd_Cal
                        ,mPrecoUnit_Cal // pPrecoUnit_Cal
                        ,mPrecoTab_Cal //,pPrecoTab_Cal
                        ,mPrecoUCPR_Cal // pPrecoUCPR_Cal
                        ,mPrecoCus_Cal // pPrecoCus_Cal
                        ,mPrecoMax_Cal // pPrecoMax_Cal,
                        ,mQtd_Ant_Cal

                        ,mValseg
                        ,mValFre
                        ,mTarBan
                        ,mOutDesp
                        ,0//mDescValor
                        ,Query_Ped02_Temp);

      if (pSubMod_Atu=100) or (pSubMod_Atu=0) then
         break;
      end;
   Query_Ped02_Temp.Next;
   end;
// ENTRANDO NA PARTE DE SERVICOS


Query_Ped02s_Temp:=TQuery.Create(nil);
Query_Ped02s_Temp.DatabaseName:='SG_ASSOC';

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
fInnerJoin(1,'CADPRO','PDCODEMP','P2SCODEMP','PDCODPRO','P2SCODPRO');

Query_Ped02s_Temp.Close;
Query_Ped02s_Temp.SQL.Clear;
Query_Ped02s_Temp.SQL.Add(' select P2SITEM AS P2SITEM,P2SCODPRO as P2SCODSER ');
if pFormace_Ant=0 then
   begin
   Query_Ped02S_Temp.SQL.Add(',sum(P2SQTD) as P2SQTD '
                    +',sum(round(P2SQTD*P2SPRECO,2)) AS VALOR_TOTAL '
                    +',max(P2SPCOTAB) AS P2SPCOTAB'
                    +',max(P2SPCOCUS) AS P2SPCOCUS '

                    +',max(P2SPRECO) as P2SPRECO ');
   end
else
   begin
   Query_Ped02S_Temp.SQL.Add(',max(P2SQTD) as P2SQTD '
                    +',sum(round(P2SQTD*P2SPRECO,2)) AS VALOR_TOTAL '
                    +',sum(P2SPCOTAB) AS P2SPCOTAB'
                    +',sum(P2SPCOCUS) AS P2SPCOCUS '
                    +',sum(P2SPRECO) as P2SPRECO ');
   end;

Query_Ped02S_Temp.SQL.Add(',max(P2SDESC1) AS P2SDESC_PERC01 '
                    +',max(P2SDESC2) AS P2SDESC_PERC02 '
                    +',max(P2SDESC3) AS P2SDESC_PERC03 '
                    +',max(P2SSIT) AS P2SCST '
                    +',max(P2SCSOSN) as P2SCSOSN '
                    +',max(P2SCFO) AS P2SCFOP_NF '
                    +',max(P2SDESC_COMP) AS P2SDESC_COMP '
                    +',max(P2SCSOSN_ORI) as P2SCSOSN_ORI '
                    +',max(P2SALIQINSS) as P2SALIQINSS '
                    +',max(P2SREDINSS) as P2SPREDINSS '

                    +',max(P2SALIQIRRF) as P2SALIQIRRF '
                    +',max(P2SREDIRRF) as P2SPREDIRRF '
                    +',max(P2SDESC1) as P2SPDESC01 '
                    +',max(P2SDESC2) as P2SPDESC02 '
                    +',max(P2SDESC3) as P2SPDESC03 '






                    +',max(P2SALIQ) AS P2SALIQISSQN '
                    +',max(P2SCODFUN) as P2SCODVEN '
                    +',max(P2SPDESCF) AS P2SDESCFIN_PERC '
                    +',max(PDNOME) as PDNOME '
                    +',max(PDMARCA) as PDMARCA '
                    +',max(PDUND) as PDUND '
                    +',max(P2SPROMOCAO) as P2PROMOCAO '
                    +',max(P2SPCOMIS) as P2PCOMIS '
                    +' FROM '
                    +' cadp02s'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_instrucao='','',la_instrucao+' and ')
                    +' (P2SCODEMP=:CODEMP_MENOR or P2SCODEMP=:CODEMP_MAIOR ) '
                    +' and   P2SCHAVE=:CHAVE'
                    +' and   P2SLOTSEQ=:CHAVE_ANO'
                    +' and   P2SORDEM=:ORDEM '
                    +' group by P2SITEM,P2SCODPRO '
                    +'  order by P2SITEM ');
Query_Ped02S_Temp.ParamByName('CODEMP_MENOR').AsInteger   :=mVenda_GP.mPed1_Codemp_ini;
Query_Ped02S_Temp.ParamByName('CODEMP_MAIOR').AsInteger   :=mVenda_GP.mPed1_Codemp_fin;


Query_Ped02S_Temp.ParamByName('CHAVE').AsInteger    :=mVenda_GP.mped1_Chave;
Query_Ped02S_Temp.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_Ped02S_Temp.ParamByName('ORDEM').AsInteger    :=1;

   Query_Ped02S_Temp.SQL.SAVETOFILE('C:\SQLTEMP.SQL');

try
   Query_Ped02s_Temp.Open;
except
   fMensagem('Campo Inexistente: '+FTestarCampos(Query_Ped02s_Temp,['CADP02','CADPRO']),0,['0'],0);

   if not fVerificaRedeAtiva(true) then
      begin
      end
   else
      begin
//      ex_erroSql_Novo(Query_Ped02_Temp,2312,'_lerarq','paf_cadp02_pre');
      end;
   end;

Query_Ped02s_Temp.First;
while not Query_Ped02S_Temp.Eof do
  begin
  for x:=1 to 2 do
     begin
     mVenda_GP.mPd_EstNor:=pEstNor_Ant;
     mVenda_GP.mPd_EstCons:=pEstCons_Ant;
     mVenda_GP.mPd_EstTerc:=pEstTer_Ant;
     mVenda_GP.mPd_EstVenda:=pEstVenda_Ant;


     if pSubMod_Ant=100 then
        begin
        if codemp>100 then
           mVenda_GP.mPed1_Codemp:=codemp-100
        else
           mVenda_GP.mPed1_Codemp:=codemp+100
        end
     else
        begin
        if x=1 then
           mVenda_GP.mPed1_Codemp:=codemp
        else
           begin
           if codemp>100 then
              mVenda_GP.mPed1_Codemp:=codemp-100
           else
              mVenda_GP.mPed1_Codemp:=codemp+100;
           end;
        end;

     if (pSubMod_Ant=100) or (pSubMod_Ant=0) then
        begin
        mPrecoUnit_Cal:=Query_Ped02S_Temp.FieldbyName('P2SPRECO').AsFloat;
        mQtd_Cal:=Query_Ped02S_Temp.FieldbyName('P2SQTD').AsFloat;
        mQtd_Ant_Cal:=mQtd_Ant;
        mPrecoTab_Cal :=Query_Ped02S_Temp.FieldbyName('P2SPCOTAB').AsFloat;
        mPrecoCus_Cal :=Query_Ped02S_Temp.FieldbyName('P2SPCOCUS').AsFloat;

        mDescValor    :=valfloat(edt_desc_valor.Text);
        mValseg       :=valfloat(edt_valseg.Text);
        mValFre       :=ValFloat(edt_valfre.Text);
        mTarBan       :=ValFloat(edt_tarban1.Text)+ValFloat(edt_tarban_101.Text);
        mOutDesp      :=valfloat(edt_despAces.Text);
        end
      else
        begin
        if mVenda_GP.mped1_formace=0 then
           begin
           mPrecoUnit_Cal:=Query_Ped02S_Temp.FieldbyName('P2SPRECO').AsFloat;
           mPrecoTab_Cal :=Query_Ped02S_Temp.FieldbyName('P2SPCOTAB').AsFloat;
           mPrecoCus_Cal :=Query_Ped02S_Temp.FieldbyName('P2SPCOCUS').AsFloat;
           mValorTemp:=Arredonda( (Query_Ped02S_Temp.FieldbyName('P2SQTD').AsFloat*pSubMod_Ant/100), 0);
           if x=2 then
             mQtd_Cal:=mValorTemp
           else
             mQtd_Cal:=Query_Ped02S_Temp.FieldbyName('P2SQTD').AsFloat-mValorTemp;

           mValorTemp:=Arredonda( (mQtd_Ant*pSubMod_Ant/100), 0);
           if x=2 then
              mQtd_Ant_Cal:=mValorTemp
           else
              mQtd_Ant_Cal:=Query_Ped02S_Temp.FieldbyName('P2SQTD').AsFloat-mValorTemp;
           end
        else
           begin
           mQtd_Ant_Cal:=mQtd_Ant;
           mQtd_Cal:=Query_Ped02S_Temp.FieldbyName('P2SQTD').AsFloat;
           mValorTemp:=Arredonda( (Query_Ped02S_Temp.FieldbyName('P2SPRECO').AsFloat*pSubMod_Ant/100), trunc(mVenda_GP.mPed1_QtdDec));
           if x=2 then
              mPrecoUnit_Cal:=mValorTemp
           else
              mPrecoUnit_Cal:=Query_Ped02S_Temp.FieldbyName('P2SPRECO').AsFloat-mValorTemp;

           mValorTemp:=Arredonda( (Query_Ped02S_Temp.FieldbyName('P2SPCOTAB').AsFloat*pSubMod_Ant/100), trunc(mVenda_GP.mPed1_QtdDec));
           if x=2 then
              mPrecoTab_Cal:=mValorTemp
           else
              mPrecoTab_Cal:=Query_Ped02S_Temp.FieldbyName('P2SPCOTAB').AsFloat-mValorTemp;

           mValorTemp:=Arredonda( (Query_Ped02S_Temp.FieldbyName('P2SPCOTAB').AsFloat*pSubMod_Ant/100), trunc(mVenda_GP.mPed1_QtdDec));
           if x=2 then
              mPrecoTab_Cal:=mValorTemp
           else
              mPrecoTab_Cal:=Query_Ped02S_Temp.FieldbyName('P2SPCOTAB').AsFloat-mValorTemp;


           mValorTemp:=Arredonda( (Query_Ped02S_Temp.FieldbyName('P2SPCOCUS').AsFloat*pSubMod_Ant/100), trunc(mVenda_GP.mPed1_QtdDec));
           if x=2 then
              mPrecoCus_Cal:=mValorTemp
           else
              mPrecoCus_Cal:=Query_Ped02S_Temp.FieldbyName('P2SPCOCUS').AsFloat-mValorTemp;

           end;

        mValorTemp:=Arredonda( (valfloat(edt_desc_valor.Text)*pSubMod_Ant/100), DM1.Tb_PargerPCASAS.AsInteger);
        if x=2 then
           mDescValor:=mValorTemp
        else
           mDescValor:=valfloat(edt_desc_valor.Text)-mValorTemp;


        mValorTemp:=Arredonda( (valfloat(edt_valseg.Text)*pSubMod_Ant/100), DM1.Tb_PargerPCASAS.AsInteger);
        if x=2 then
           mValseg:=mValorTemp
        else
           mValseg:=valfloat(edt_valseg.Text)-mValorTemp;

        mValorTemp:=Arredonda( (valfloat(edt_valfre.Text)*pSubMod_Ant/100), DM1.Tb_PargerPCASAS.AsInteger);
        if x=2 then
           mValFre:=mValorTemp
        else
           mValFre:=valfloat(edt_valfre.Text)-mValorTemp;
{
        mValorTemp:=Arredonda( (valfloat(edt_tarban.Text)*pSubMod_Ant/100), DM1.Tb_PargerPCASAS.AsInteger);
        if x=2 then
           mTarBan:=mValorTemp
        else
           mTarBan:=valfloat(edt_tarban.Text)-mValorTemp;
}
        mValorTemp:=Arredonda( (valfloat(edt_despAces.Text)*pSubMod_Ant/100), DM1.Tb_PargerPCASAS.AsInteger);
        if x=2 then
           mOutDesp:=mValorTemp
        else
           mOutDesp:=valfloat(edt_despAces.Text)-mValorTemp;

        if (pSubMod_Ant=100) or (pSubMod_Ant=0) then
           break;
        end;
     if (mVenda_GP.mped1_formace=1)and (x=2) then
        mMovEst:=2
     else
        mMovEst:=0;

   mVenda_GP.fGravarServicos(Query_Ped02S_Temp.FieldbyName('P2SITEM').AsInteger,
                          mItem_Servico_Ant,
                          Query_Ped02S_Temp.FieldbyName('P2SCFOP_NF').AsInteger,
                          Query_Ped02S_Temp.FieldbyName('P2SCFOP_NF').AsInteger,
                          0, //  0, // SITUACAO
                          mVenda_GP.mPed1_CodFP,
                          2, // EXCLUSAO    iif(mItem_Servico_Ant=0,0,1),
                          Query_Ped02S_Temp.FieldbyName('P2SCODSER').AsString,
                          mCodSer_Ant,
                          Query_Ped02S_Temp.FieldbyName('P2SALIQISSQN').AsFloat,
                          Query_Ped02S_Temp.FieldbyName('P2SDESCFIN_PERC').AsFloat,
                          Query_Ped02S_Temp.FieldbyName('P2SALIQINSS').AsFloat,
                          Query_Ped02S_Temp.FieldbyName('P2SPREDINSS').AsFloat,
                          Query_Ped02S_Temp.FieldbyName('P2SALIQIRRF').AsFloat,
                          Query_Ped02S_Temp.FieldbyName('P2SPREDIRRF').AsFloat,
                          mQtd_Cal,
                          mQtd_Ant_Cal,
                          Query_Ped02S_Temp.FieldbyName('P2SPDESC01').AsFloat,
                          Query_Ped02S_Temp.FieldbyName('P2SPDESC02').AsFloat,
                          Query_Ped02S_Temp.FieldbyName('P2SPDESC03').AsFloat,
                          0, // DESCONTO EM VALOR
                          mPrecoUnit_Cal,
                          mPrecoCus_Cal, // PCO UCPR
                          0, // ALIQ ICMS
                          0, // PERC COMIS
                          0, // DESCONTO FINANCEIRO
                          0, // PERC ACRES
                          Query_Ped02S_Temp.FieldbyName('P2SCODVEN').AsFloat,
                          valfloat(edt_desc_valor.Text),
                          0, // ACRESCIMOS RATEADO
                          mValseg,
                          mValFre,
                          mTarBan,
                          mOutDesp,
                          Query_Ped02S_Temp.FieldbyName('P2SCST').AsString,
                          Query_Ped02S_Temp.FieldbyName('P2SDESC_COMP').AsString,
                          '', // promocao
                          mVenda_GP.mPed1_NomFP,mVenda_GP.mPed1_BaixaFP);
   if (pSubMod_Ant=100) or (pSubMod_Ant=0) then
      break
   else
      begin
      if codemp>100 then
         begin
         if codemp>100 then
            mVenda_GP.mPed1_Codemp:=codemp-100
         else
            mVenda_GP.mPed1_Codemp:=codemp+100
         end;
//      mVenda_GP.mPed1_QtdParc_ant:=mAnt_QtdParc;
      mVenda_GP.mPed1_pDesc01_Ant:=mAnt_pDesc01;
      mVenda_GP.mPed1_pDesc02_Ant:=mAnt_pDesc02;
      mVenda_GP.mPed1_pDesc03_Ant:=mAnt_pDesc03;
      mItem_Ant                  :=mAnt_Item;
      mCodpro_Ant                :=mAnt_CodPro;
      end;
    end;
  Query_Ped02s_Temp.next;
  end;

// NOVA INCLUSAO
//mVenda_GP.mPed1_QtdParc_ant:=-1;
Query_Ped02s_Temp.First;
while not Query_Ped02S_Temp.Eof do
  begin
  for x:=1 to 2 do
     begin
     mVenda_GP.mPd_EstNor:=pEstNor_Atu;
     mVenda_GP.mPd_EstCons:=pEstCons_Atu;
     mVenda_GP.mPd_EstTerc:=pEstTer_Atu;
     mVenda_GP.mPd_EstVenda:=pEstVenda_Atu;

     if pSubMod_Atu=100 then
        begin
        if codemp>100 then
           mVenda_GP.mPed1_Codemp:=codemp-100
        else
           mVenda_GP.mPed1_Codemp:=codemp+100
        end
     else
        begin
        if x=1 then
           mVenda_GP.mPed1_Codemp:=codemp
        else
           begin
           if codemp>100 then
              mVenda_GP.mPed1_Codemp:=codemp-100
           else
              mVenda_GP.mPed1_Codemp:=codemp+100;
           end;
        end;

     if (pSubMod_Atu=100) or (pSubMod_Atu=0) then
        begin
        mPrecoUnit_Cal:=Query_Ped02S_Temp.FieldbyName('P2SPRECO').AsFloat;
        mQtd_Cal:=Query_Ped02S_Temp.FieldbyName('P2SQTD').AsFloat;
        mQtd_Ant_Cal:=mQtd_Ant;
        mPrecoTab_Cal :=Query_Ped02S_Temp.FieldbyName('P2SPCOTAB').AsFloat;
        mPrecoCus_Cal :=Query_Ped02S_Temp.FieldbyName('P2SPCOCUS').AsFloat;

        mDescValor    :=valfloat(edt_desc_valor.Text);
        mValseg       :=valfloat(edt_valseg.Text);
        mValFre       :=ValFloat(edt_valfre.Text);
        mTarBan       :=ValFloat(edt_tarban1.Text)+ValFloat(edt_tarban_101.Text);
        mOutDesp      :=valfloat(edt_despAces.Text);
        end
     else
        begin
        if mVenda_GP.mped1_formace=0 then
           begin
           mPrecoUnit_Cal:=Query_Ped02S_Temp.FieldbyName('P2SPRECO').AsFloat;
           mPrecoTab_Cal :=Query_Ped02S_Temp.FieldbyName('P2SPCOTAB').AsFloat;
           mPrecoCus_Cal :=Query_Ped02S_Temp.FieldbyName('P2SPCOCUS').AsFloat;
           mValorTemp:=Arredonda( (Query_Ped02S_Temp.FieldbyName('P2SQTD').AsFloat*pSubMod_Atu/100), 0);
           if x=2 then
              mQtd_Cal:=mValorTemp
           else
              mQtd_Cal:=Query_Ped02S_Temp.FieldbyName('P2SQTD').AsFloat-mValorTemp;

           mValorTemp:=Arredonda( (mQtd_Ant*pSubMod_Atu/100), 0);
           if x=2 then
            mQtd_Ant_Cal:=mValorTemp
           else
            mQtd_Ant_Cal:=Query_Ped02S_Temp.FieldbyName('P2SQTD').AsFloat-mValorTemp;
           end
        else
           begin
           mQtd_Ant_Cal:=mQtd_Ant;
           mQtd_Cal:=Query_Ped02S_Temp.FieldbyName('P2SQTD').AsFloat;
           mValorTemp:=Arredonda( (Query_Ped02S_Temp.FieldbyName('P2SPRECO').AsFloat*pSubMod_Atu/100), trunc(mVenda_GP.mPed1_QtdDec));
           if x=2 then
            mPrecoUnit_Cal:=mValorTemp
           else
            mPrecoUnit_Cal:=Query_Ped02S_Temp.FieldbyName('P2SPRECO').AsFloat-mValorTemp;

           mValorTemp:=Arredonda( (Query_Ped02S_Temp.FieldbyName('P2SPCOTAB').AsFloat*pSubMod_Atu/100), trunc(mVenda_GP.mPed1_QtdDec));
           if x=2 then
              mPrecoTab_Cal:=mValorTemp
           else
              mPrecoTab_Cal:=Query_Ped02S_Temp.FieldbyName('P2SPCOTAB').AsFloat-mValorTemp;

           mValorTemp:=Arredonda( (Query_Ped02S_Temp.FieldbyName('P2SPCOTAB').AsFloat*pSubMod_Atu/100), trunc(mVenda_GP.mPed1_QtdDec));
           if x=2 then
              mPrecoTab_Cal:=mValorTemp
           else
              mPrecoTab_Cal:=Query_Ped02S_Temp.FieldbyName('P2SPCOTAB').AsFloat-mValorTemp;


           mValorTemp:=Arredonda( (Query_Ped02S_Temp.FieldbyName('P2SPCOCUS').AsFloat*pSubMod_Atu/100), trunc(mVenda_GP.mPed1_QtdDec));
           if x=2 then
              mPrecoCus_Cal:=mValorTemp
           else
              mPrecoCus_Cal:=Query_Ped02S_Temp.FieldbyName('P2SPCOCUS').AsFloat-mValorTemp;
           end;

        mValorTemp:=Arredonda( (valfloat(edt_desc_valor.Text)*pSubMod_Atu/100), DM1.Tb_PargerPCASAS.AsInteger);
        if x=2 then
           mDescValor:=mValorTemp
        else
           mDescValor:=valfloat(edt_desc_valor.Text)-mValorTemp;

        mValorTemp:=Arredonda( (valfloat(edt_valseg.Text)*pSubMod_Atu/100), DM1.Tb_PargerPCASAS.AsInteger);
        if x=2 then
           mValseg:=mValorTemp
        else
           mValseg:=valfloat(edt_valseg.Text)-mValorTemp;

        mValorTemp:=Arredonda( (valfloat(edt_valfre.Text)*pSubMod_Atu/100), DM1.Tb_PargerPCASAS.AsInteger);
        if x=2 then
           mValFre:=mValorTemp
        else
           mValFre:=valfloat(edt_valfre.Text)-mValorTemp;
{
        mValorTemp:=Arredonda( (valfloat(edt_tarban.Text)*pSubMod_Atu/100), DM1.Tb_PargerPCASAS.AsInteger);
        if x=2 then
           mTarBan:=mValorTemp
        else
           mTarBan:=valfloat(edt_tarban.Text)-mValorTemp;
}
        mValorTemp:=Arredonda( (valfloat(edt_despAces.Text)*pSubMod_Atu/100), DM1.Tb_PargerPCASAS.AsInteger);
        if x=2 then
           mOutDesp:=mValorTemp
        else
           mOutDesp:=valfloat(edt_despAces.Text)-mValorTemp;

        if (pSubMod_Atu=100) or (pSubMod_Atu=0) then
           break;
        end;
     if (mVenda_GP.mped1_formace=1)and (x=2) then
        mMovEst:=2
     else
        mMovEst:=0;
//     function fGravarServicos(pItem,pItem_ant,pcfo,pcfosubecf,pSituacao,pCodFpg,pTipoEve: Integer;
//                        pcodSer,pcodser_ant: String;


     mVenda_GP.fGravarServicos(Query_Ped02S_Temp.FieldbyName('P2SITEM').AsInteger,
                            mItem_Servico_Ant,
                            Query_Ped02S_Temp.FieldbyName('P2SCFOP_NF').AsInteger,
                            Query_Ped02S_Temp.FieldbyName('P2SCFOP_NF').AsInteger,
                            0, // SITUACAO
                            mVenda_GP.mPed1_CodFP,
                            0, // iif(mItem_Servico_Ant=0,0,1),
                            Query_Ped02S_Temp.FieldbyName('P2SCODSER').AsString,
                            mCodSer_Ant,
                            Query_Ped02S_Temp.FieldbyName('P2SALIQISSQN').AsFloat,
                            Query_Ped02S_Temp.FieldbyName('P2SDESCFIN_PERC').AsFloat,
                            Query_Ped02S_Temp.FieldbyName('P2SALIQINSS').AsFloat,
                            Query_Ped02S_Temp.FieldbyName('P2SPREDINSS').AsFloat,
                            Query_Ped02S_Temp.FieldbyName('P2SALIQIRRF').AsFloat,
                            Query_Ped02S_Temp.FieldbyName('P2SPREDIRRF').AsFloat,
                            mQtd_Cal,
                            mQtd_Ant_Cal,
                            Query_Ped02S_Temp.FieldbyName('P2SPDESC01').AsFloat,
                            Query_Ped02S_Temp.FieldbyName('P2SPDESC02').AsFloat,
                            Query_Ped02S_Temp.FieldbyName('P2SPDESC03').AsFloat,
                            0, // DESCONTO EM VALOR
                            mPrecoUnit_Cal,
                            mPrecoCus_Cal, // PCO UCPR
                            0, // ALIQ ICMS
                            0, // PERC COMIS
                            0, // DESCONTO FINANCEIRO
                            0, // PERC ACRES
                            Query_Ped02S_Temp.FieldbyName('P2SCODVEN').AsFloat,
                            valfloat(edt_desc_valor.Text),
                            0, // ACRESCIMOS RATEADO
                            mValseg,
                            mValFre,
                            mTarBan,
                            mOutDesp,
                            Query_Ped02S_Temp.FieldbyName('P2SCST').AsString,
                            Query_Ped02S_Temp.FieldbyName('P2SDESC_COMP').AsString,
                            '', // promocao
                            mVenda_GP.mPed1_NomFP,mVenda_GP.mPed1_BaixaFP);
     if (pSubMod_Atu=100) or (pSubMod_Atu=0) then
        break
     else
        begin
        if codemp>100 then
           begin
           if codemp>100 then
              mVenda_GP.mPed1_Codemp:=codemp-100
           else
              mVenda_GP.mPed1_Codemp:=codemp+100
           end;
//        mVenda_GP.mPed1_QtdParc_ant:=mAnt_QtdParc;
        mVenda_GP.mPed1_pDesc01_Ant:=mAnt_pDesc01;
        mVenda_GP.mPed1_pDesc02_Ant:=mAnt_pDesc02;
        mVenda_GP.mPed1_pDesc03_Ant:=mAnt_pDesc03;
        mItem_Ant                  :=mAnt_Item;
        mCodpro_Ant                :=mAnt_CodPro;
        end;
     end;
  Query_Ped02S_Temp.Next;
  end;

// TERMINO DA PARTE DE SERVICOS



IF mDesc_rat_Ant>0 then
   begin
   edt_desc_valor.Text:=Formatfloat(mcasas, mDesc_rat_Ant);
   edt_desc_valorExit(self);
   end;


//FreeAndNil(Query_Ped02_Lotes);
//FreeAndNil(Query_Del_Ped02_Lotes);

fTotais(0);
FreeAndNil(Query_Ped02_Temp);
FreeAndNil(Query_Ped02S_Temp);
//edt_totliq.Text:=FormatFloat(mCasas, mVenda_GP.mPed1_Totall);



fRecalcularformas(0);

fLerFormaPag(0);


end;

procedure TFrm_Venda_Pre_Farma.edt_submodEnter(Sender: TObject);
begin
mSubMOd_ant:=valint(edt_submod.Text);
end;

procedure TFrm_Venda_Pre_Farma.cb_formaEnter(Sender: TObject);
begin
mFormace_ant:=mVenda_GP.mped1_formace;


end;

procedure TFrm_Venda_Pre_Farma.cb_tipopedEnter(Sender: TObject);
begin
    mEstNor_ant       :=mVenda_GP.mPd_EstNor;
    mEstCons_ant      :=mVenda_GP.mPd_EstCons;
    mEstTerc_ant      :=mVenda_GP.mPd_EstTerc;
    mEstVenda_ant     :=mVenda_GP.mPd_EstVenda;
mEventoPendente:='cb_tipoped';
    mant_tipoped:=fPosArray(tab_tped,cb_tipoped.Text);


end;

procedure TFrm_Venda_Pre_Farma.Tb_Ped02_preBeforeEdit(DataSet: TDataSet);
begin
if mlocalizando_pedido then
   exit;

if not sbnGravar.Enabled then
   begin
   abort;
   exit;
   end;

end;

procedure TFrm_Venda_Pre_Farma.Tb_FP_preBeforeEdit(DataSet: TDataSet);
begin
if not sbnGravar.Enabled then
   begin
   abort;
   exit;
   end;

end;

procedure TFrm_Venda_Pre_Farma.Tb_FP_preBeforeInsert(DataSet: TDataSet);
begin
if not sbnGravar.Enabled then
   begin
   abort;
   exit;
   end;

end;

procedure TFrm_Venda_Pre_Farma.Tb_Ped02_preBeforeInsert(DataSet: TDataSet);
begin
if mlocalizando_pedido then
   exit;

if not sbnGravar.Enabled then
   begin
   abort;
   exit;
   end;
mContEsp_ant:=0;
end;









procedure TFrm_Venda_Pre_Farma.sbnLocalizarClick(Sender: TObject);
begin
if form_PedCli_ped_02=nil then
   Application.CreateForm(TFrm_PedCli, form_PedCli_ped_02)
else
   begin
   form_PedCli_ped_02.Free;
   form_PedCli_ped_02:=nil;
   Application.CreateForm(TFrm_PedCli, form_PedCli_ped_02);
   end;
fLimparCampos(0);
pcProdServ.ActivePage:=tsProdutos;
form_PedCli_ped_02.Visible:=false;
form_PedCli_ped_02.FormStyle:=fsNormal;
form_PedCli_ped_02.ori_pedcli:='frm_venda_pre';
form_PedCli_ped_02.ShowModal;
edt_chave.Text:=form_PedCli_ped_02.chave.Text;
form_PedCli_ped_02.Free;
form_PedCli_ped_02:=nil;
FreeAndNil(form_pedcli_ped_02);
edt_chaveExit(self);
fpedtestacfop(0,mVenda_GP.mped1_formace);

end;

procedure TFrm_Venda_Pre_Farma.Tb_FP_preBeforeDelete(DataSet: TDataSet);
begin
if not sbnGravar.Enabled then
   begin
   abort;
   exit;
   end;

end;

procedure TFrm_Venda_Pre_Farma.DBGrid_itensEnter(Sender: TObject);
begin
if not (ValFloat(edt_codven.Text)>0) and (edt_codven.Enabled) then
  begin
  pcCabecalho.ActivePage:=tsCabecalho;
  edt_codven.SetFocus;
  fmensagem('Vendedor não selecionado!',0,['0'],0);
  Exit;
  end;
DBGrid_itens.SelectedField:=Tb_Ped02_preP2CODPRO;
mEventoPendente:='dbgrid_itens';

end;

procedure TFrm_Venda_Pre_Farma.sbnNFEClick(Sender: TObject);
var
query_nfe: TQuery;
query_Cons: TQuery;
pSerieNF: String;
pModNF  : String;
mNumnf: Integer;

form_ocorrencias: TFrm_Ocorrencias;

begin
if not fValida_Pedido then
  begin
  fmensagem(' Esse pedido foi alterado em outra estação.'+#13
           +' Por favor re-localizar o mesmo.',0,['0'],0);
  exit;
  end;





query_nfe := TQuery.Create(nil);
query_nfe.DatabaseName:='SG_ASSOC';


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
query_nfe.close;
query_nfe.SQL.Clear;
query_nfe.SQL.Add('Select count(*) from  CADP02 WHERE P2CFO is null '
                 +'       and '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +'  (P2CODEMP=:CODEMP OR P2CODEMP=:CODEMP_FILIAL) '
                 +' and P2CHAVE=:CHAVE '
                 +' and P2LOTSEQ=:LOTSEQ '
                 +' and P2ORDEM=:ORDEM ');
Query_nfe.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
Query_nfe.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
Query_nfe.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
Query_nfe.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_nfe.ParamByName('ORDEM').AsInteger:=1;
try
   query_nfe.Open;
   if query_nfe.Fields[0].AsInteger>0 then
      begin
      fmensagem('Existe Produtos sem CFOP, favor corrigir!',0,['0'],0);
      freeandnil(query_nfe);
      exit;
      end;
except
   end;


// TESTANDO CST

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';

query_nfe.close;
query_nfe.SQL.Clear;
query_nfe.SQL.Add('Select count(*) from  CADP02 WHERE P2SIT='+QuotedStr('040')+' and P2ALIQ<>0 '
                 +'       and '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +'  (P2CODEMP=:CODEMP OR P2CODEMP=:CODEMP_FILIAL) '
                 +' and P2CHAVE=:CHAVE '
                 +' and P2LOTSEQ=:LOTSEQ '
                 +' and P2ORDEM=:ORDEM ');
Query_nfe.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
Query_nfe.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
Query_nfe.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
Query_nfe.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_nfe.ParamByName('ORDEM').AsInteger:=1;
try
   query_nfe.Open;
except
   end;
if Query_nfe.fields[0].AsInteger>0 then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   la_Empresas :='';

   query_nfe.close;
   query_nfe.SQL.Clear;
   query_nfe.SQL.Add('Update CADP02 set P2ALIQ=0 WHERE P2SIT='+QuotedStr('040')+' and P2ALIQ<>0 '
                    +'       and '+iif(la_Empresas='','',la_Empresas+' and ')
                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                    +'  (P2CODEMP=:CODEMP OR P2CODEMP=:CODEMP_FILIAL) '
                    +' and P2CHAVE=:CHAVE '
                    +' and P2LOTSEQ=:LOTSEQ '
                    +' and P2ORDEM=:ORDEM ');
   Query_nfe.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
   Query_nfe.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
   Query_nfe.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
   Query_nfe.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
   Query_nfe.ParamByName('ORDEM').AsInteger:=1;
   try
      query_nfe.ExecSQL;
      fdm1StartCommit;
   except
      end;

   fRecalcularPedido(3);
   end;


//fim do teste



la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');

query_nfe.close;
query_nfe.SQL.Clear;
query_nfe.SQL.Add('Select P1CODEMP,P1DATAP,P1LOTSEQ,P1CHAVE,P1ORDEM,P1STATUS,P1TIPO,CCNPJ,CCPF,P1NFE_ENVXML,'
                 +'CUF,P1SITPED,P1TABPV,P1CODPV,P1ORDEM,P1PRAZO,P1PVDDESCF,P1PVDIASDESCF,P1SERIE'
                 +',P1TOTALL,P1COMIS,P1COMV02,P1COMV03,P1COMV04,P1COMISS'
                 +',P1COMIST,P1SEMCOM,P1COMASSE,P1ICMSR,P1VALFRE,P1TOTEXTCOM'
                 +',P1VALSEG,P1DESCFIN,P1TOTDI01,P1TOTDI02,P1TOTDI03,P1TOTDIVL'
                 +',P1VALDES01,P1VALDES02,P1VLRDES,P1TARBAN,P1DESPACES,P1IPIINA,P1IPIPOS'
                 +',P1IPINEG,P1TOTCGRU,P1TOTSGRU,P1TOTSERLIQ,P1VALENT,P1CODUSR,P1CODUSR_ULTEVE'
                 +',CRAZAO,P1EMITENTE,P1CODSER,P1TOTSERLIQ,P1CODCLI,P1DATANF,P1EMIDOC '
                 +',P1COMP_ULTEVE,P1CODTRA,P1BLOQPEND,P1CODBLOQ_LIB,P1CODBLOQ,P1PREVENT'
                 +',P1NUMNF,P1NUMCF,P1FORMACE,P1DATACF '
                 +',P1PRAZO_ENT,P1COMIS_EXTRA,P1SUBMOD,P1DATHOR_ULTEVE from CADP01'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +'  (P1CODEMP=:CODEMP OR P1CODEMP=:CODEMP_FILIAL) '
                 +' and P1CHAVE=:CHAVE '
                 +' and P1LOTSEQ=:LOTSEQ '
                 +' and P1ORDEM=:ORDEM ');
Query_nfe.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
Query_nfe.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
Query_nfe.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
Query_nfe.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_nfe.ParamByName('ORDEM').AsInteger:=1;
query_nfe.Open;
if query_nfe.IsEmpty then
   begin
   fmensagem('Chave não encontrada!',0,['0'],0);
   exit;
   end;

if Query_nfe.FieldbyName('P1TIPO').Value=9 then
   begin
   Fmensagem('Este Pedido é de Emprestimo, Favor Fatura-lo Primeiro!',0,['0'],0);
   exit;
   end;

if Query_nfe.FieldbyName('P1TIPO').Value=0 then
   begin
   Fmensagem('Este Pedido é Apenas um Orçamento, Favor Fatura-lo Primeiro!',0,['0'],0);
   exit;
   end;
if (DM4.Tb_ParGer02PG2USANFE.AsInteger>0) and (ValFloat(edt_submod.Text)<100)
   AND (query_nfe.FieldByName('P1STATUS').Value>1) then
   begin
   query_Cons := TQuery.Create(nil);
   query_Cons.DatabaseName:='SG_ASSOC';
   query_Cons.SQL.Clear;
   query_Cons.SQL.Add('SeleCT NSNFE_XML_CLIENTE,NSNFE_CHAVEACESSO,NSNFE_DCHAVEACESSO,NSNUMERO,NSTOTNOTA,NSSERIE '
                     +'  from CADNS WHERE NSCHAVEP=:CHAVE '
                     +' AND NSLOTSEQ_CP=:LOTSEQ '
                     +' AND NSCODEMP=:CODEMP ');
//                     +' AND not (NSNFE_XML_CLIENTE is null) ');
   query_Cons.ParamByName('CHAVE').AsInteger:=Query_nfe.fieldbyName('P1CHAVE').AsInteger;
   query_Cons.ParamByName('LOTSEQ').AsInteger:=Query_nfe.fieldbyName('P1LOTSEQ').AsInteger;
   query_Cons.ParamByName('CODEMP').AsInteger:=Query_nfe.fieldbyName('P1CODEMP').AsInteger;

   try
      query_Cons.Open;
   except
      FreeAndNil(query_cons);
      sbnNFE.Enabled:=true;
      exit;
      end;
   if not query_Cons.Fieldbyname('NSNFE_XML_CLIENTE').IsNull then
      begin
      Application.CreateForm(TFrm_NFE_Impressao,Frm_NFE_Impressao);
      Frm_NFE_Impressao.fLerdadosXml('','','',Query_nfe.fieldbyName('P1CHAVE').AsInteger,
      Query_nfe.fieldbyName('P1LOTSEQ').AsInteger
      ,Query_nfe.fieldbyName('P1CODEMP').AsInteger
      ,True);
      FreeandNil(Frm_NFE_Impressao);
      FreeAndNil(query_cons);
      sbnNFE.Enabled:=true;
      exit;
      end;
   if fVerificaConclusaoProcesso(
      pchar(query_Cons.FieldbyName('NSSERIE').AsString),
      pchar(query_Cons.FieldbyName('NSNFE_CHAVEACESSO').AsString
                                +query_Cons.FieldbyName('NSNFE_DCHAVEACESSO').AsString)
                                ,mVenda_GP.mped1_Chave
                                ,mVenda_GP.mped1_Chave_ano
                                ,mVenda_GP.mped1_Codemp
                                ,query_Cons.FieldbyName('NSNUMERO').AsInteger
                                ,query_Cons.FieldbyName('NSTOTNOTA').AsFloat ) then

      begin

// inicio
      query_Cons := TQuery.Create(nil);
      query_Cons.DatabaseName:='SG_ASSOC';
      query_Cons.SQL.Clear;
      query_Cons.SQL.Add('SeleCT NSNFE_XML_CLIENTE  from CADNS WHERE NSCHAVEP=:CHAVE '
                        +' AND NSLOTSEQ_CP=:LOTSEQ '
                        +' AND NSCODEMP=:CODEMP ');
      query_Cons.ParamByName('CHAVE').AsInteger:=Query_nfe.fieldbyName('P1CHAVE').AsInteger;
      query_Cons.ParamByName('LOTSEQ').AsInteger:=Query_nfe.fieldbyName('P1LOTSEQ').AsInteger;
      query_Cons.ParamByName('CODEMP').AsInteger:=Query_nfe.fieldbyName('P1CODEMP').AsInteger;

      try
         query_Cons.Open;
      except
         FreeAndNil(query_cons);
         sbnNFE.Enabled:=true;
         exit;
         end;
      if not query_Cons.Fieldbyname('NSNFE_XML_CLIENTE').IsNull then
         begin
         Application.CreateForm(TFrm_NFE_Impressao,Frm_NFE_Impressao);
         Frm_NFE_Impressao.fLerdadosXml('','','',Query_nfe.fieldbyName('P1CHAVE').AsInteger,
         Query_nfe.fieldbyName('P1LOTSEQ').AsInteger
         ,Query_nfe.fieldbyName('P1CODEMP').AsInteger
         ,True);
         FreeandNil(Frm_NFE_Impressao);
         FreeAndNil(query_cons);
         sbnNFE.Enabled:=true;
         exit;
         end;
// termino


      end;
   FreeAndNil(query_cons);
   end;



if (Query_nfe.FieldByName('P1SITPED').Value = 1)
   and ( (Query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime>pdatanula)
   and (MinutesBetween(Query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime,now)<2)) then
   begin
   mcinst2:=Query_nfe.FieldByName('P1CODUSR_ULTEVE').AsString+' - ';
   if Query_nfe.FieldByName('P1CODUSR_ULTEVE').AsInteger=1111 then
      mcinst2:=mcinst2+'Programador(Master)'
   else
      begin
      if flcadusr(0,0,Query_nfe.FieldByName('P1CODUSR_ULTEVE').AsString) then
         mcinst2:=mcinst2+DM4.Tb_UsrNOMUSR.AsString;
      end;
   mcinst := 'Pedido em Manutenção no Computador: '+Query_nfe.FieldByName('P1COMP_ULTEVE').AsString
           + ' Pelo Usuário: '+mcinst2
           + ' Data/Hora: '+Formatdatetime('dd/mm/yyyy hh:nn:ss', Query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime);
   fMensagem(mcinst,0,['0'],0);
   exit;
   end;




Query_nfe.First;
While not Query_nfe.eof do
   begin
   if Query_nfe.FieldByName('P1CODEMP').AsInteger>99 then
      begin
      Query_nfe.Next;
      Continue;
      end;
   if not fTestarCNPJ_IE(0,Query_nfe.FieldByName('P1CODCLI').AsFloat) then
      exit;
   if Query_nfe.FieldByName('P1CODTRA').AsInteger>0 then
      begin
      if not fTestarCNPJ_IE(1,Query_nfe.FieldByName('P1CODTRA').AsFloat) then
         exit;
      end;
   Query_nfe.Next;
   end;
Query_nfe.First;
if Query_nfe.FieldByName('P1BLOQPEND').Value=2 then
   begin
   if Query_nfe.FieldByName('P1CODBLOQ').AsString<>Query_nfe.FieldByName('P1CODBLOQ_LIB').AsString then
      begin
      Fmensagem('Este Pedido Possui Restrições, verifique!',0,['0'],0);
      exit;
      end;
   end;


if (DM4.Tb_ParGer02PG2USANFE.AsInteger>0) and (ValFloat(edt_submod.Text)<100) then
   begin
   Query_nfe.First;
   While not Query_nfe.Eof do
      begin
      if not fTestaNFE(Query_nfe.FieldByName('P1CODEMP').AsFloat,Query_nfe.FieldByName('P1CODCLI').AsFloat,
                Query_nfe.FieldbyName('P1LOTSEQ').AsFloat,
                Query_nfe.FieldbyName('P1CHAVE').AsFloat,
                Query_nfe.FieldbyName('P1ORDEM').AsFloat) then
         exit;
      query_nfe.Next;
      end;
   query_nfe.first;
   end;

if Fmensagem('Emissão de Nota é isso mesmo que deseja?',0,['1','2'],2)<>mrYes then
   exit;

DM1.Query6.Close;
DM1.Query6.SQL.Clear;
DM1.Query6.SQL.Add(' SELECT * FROM CADDAR_CONF ');
DM1.Query6.SQL.Add(' WHERE CRCCHAVE='+Query_nfe.FieldByName('P1CHAVE').AsString);
DM1.Query6.SQL.Add('   and CRCCODEMP='+Query_nfe.FieldByName('P1CODEMP').AsString);
DM1.Query6.SQL.Add('   and CRCLOTSEQ='+Query_nfe.FieldByName('P1LOTSEQ').AsString);
DM1.Query6.SQL.Add('   and CRCORDEM='+Query_nfe.FieldByName('P1ORDEM').AsString);
DM1.Query6.Open;
if DM1.Query6.IsEmpty then
  begin
  Gerar_Caddar_Conf(Query_nfe.FieldByName('P1CODEMP').Value,
                    Query_nfe.FieldByName('P1LOTSEQ').Value,
                    Query_nfe.FieldByName('P1ORDEM').Value,
                    Query_nfe.FieldByName('P1TOTALL').Value,
                    Query_nfe.FieldByName('P1CHAVE').Value);
  end;




// INICIO


// INICIAR
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
if query_cons=nil then
   begin
   query_Cons := TQuery.Create(nil);
   query_Cons.DatabaseName:='SG_ASSOC';
   end;
query_Cons.close;
query_Cons.SQL.Clear;
query_Cons.SQL.Add('Delete from CADP01V where '
                 +'  (P1VCODEMP=:CODEMP OR P1VCODEMP=:CODEMP_FILIAL) '
                 +' and P1VCHAVE=:CHAVE '
                 +' and P1VLOTSEQ=:LOTSEQ '
                 +' and P1VORDEM=:ORDEM ');
Query_cons.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
Query_cons.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
Query_cons.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
Query_cons.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_cons.ParamByName('ORDEM').AsInteger:=1;
try
   query_cons.ExecSQL;
   fdm1StartCommit;
except
   end;

freeandNil(query_Cons);

// TERMINO
// TERMINO

query_nfe.First;

//   if (DM1.Tb_PargerPPEDFPGTO.AsFloat=0) then begin
While not query_nfe.eof do
   begin
   if query_nfe.FieldByName('P1TIPO').Value=0 then
      begin
      query_nfe.Next;
      Continue;
      end;
   if (query_nfe.FieldByName('P1CODEMP').AsFloat<100) then
      begin
      if ((query_nfe.FieldByName('CCNPJ').AsFloat=0) and (query_nfe.FieldByName('CCPF').AsFloat=0))
         and (query_nfe.FieldByName('CUF').AsString<>'EX') then
         begin
         fmensagem('o Cliente: '+query_nfe.FieldByName('CRAZAO').AsString+' Esta com cadastro Incompleto '
                  +' falta o CNPJ/CPF UF:'+query_nfe.FieldByName('CUF').AsString,0,['0'],0);
         exit;
         end;
      end;
   if query_nfe.FieldByName('P1SITPED').Value=1 then
      begin
      query_nfe.Next;
      Continue;
      end;

{   if (query_nfe.FieldByName('P1STATUS').Value>1) or
     (query_nfe.FieldByName('P1DATAP').AsDateTime>=DATE) then
      begin
      query_nfe.next;
      Continue;
      end;}
   fCarregarPO99(query_nfe.FieldByName('P1TABPV').Value,query_nfe.FieldByName('P1CODEMP').Value,
              query_nfe.FieldByName('P1LOTSEQ').Value
              ,iif(query_nfe.FieldByName('P1TABPV').AsString='PO',query_nfe.FieldByName('P1CHAVE').Value,
              query_nfe.FieldByName('P1CODPV').Value));
   fgvencto(iif(query_nfe.FieldByName('P1TABPV').Value='PP',1,0),query_nfe.FieldByName('P1CODEMP').AsInteger
                    ,query_nfe.FieldByName('P1LOTSEQ').AsInteger,query_nfe.FieldByName('P1CHAVE').AsInteger,
                     query_nfe.FieldByName('P1ORDEM').AsInteger,query_nfe.FieldByName('P1PRAZO').AsInteger,query_nfe.FieldByName('P1CODPV').AsInteger,
                      query_nfe.FieldByName('P1PVDDESCF').AsInteger,query_nfe.FieldByName('P1PVDIASDESCF').AsInteger,
                      query_nfe.FieldByName('P1TOTALL').AsFloat,query_nfe.FieldByName('P1COMIS').AsFloat,query_nfe.FieldByName('P1COMV02').AsFloat,query_nfe.FieldByName('P1COMV03').AsFloat,
                      query_nfe.FieldByName('P1COMV04').AsFloat, // substituir por 4
                      query_nfe.FieldByName('P1COMISS').AsFloat,query_nfe.FieldByName('P1COMIST').AsFloat,query_nfe.FieldByName('P1SEMCOM').AsFloat,
                      query_nfe.FieldByName('P1COMASSE').AsFloat,
                      query_nfe.FieldByName('P1ICMSR').AsFloat,query_nfe.FieldByName('P1VALFRE').AsFloat+query_nfe.FieldByName('P1TOTEXTCOM').AsFloat,query_nfe.FieldByName('P1VALSEG').AsFloat,
                      query_nfe.FieldByName('P1DESCFIN').AsFloat,
                      query_nfe.FieldByName('P1TOTDI01').AsFloat,
                      query_nfe.FieldByName('P1TOTDI02').AsFloat,
                      query_nfe.FieldByName('P1TOTDI03').AsFloat,
                      query_nfe.FieldByName('P1TOTDIVL').AsFloat,
                      query_nfe.FieldByName('P1VALDES01').AsFloat,
                      query_nfe.FieldByName('P1VALDES02').AsFloat,
                      query_nfe.FieldByName('P1VLRDES').AsFloat,
                      query_nfe.FieldByName('P1TARBAN').AsFloat,
                      query_nfe.FieldByName('P1IPIINA').AsFloat+query_nfe.FieldByName('P1IPIPOS').AsFloat+query_nfe.FieldByName('P1IPINEG').AsFloat,
                      query_nfe.FieldByName('P1TOTCGRU').AsFloat,
                      query_nfe.FieldByName('P1TOTSGRU').AsFloat,
                      query_nfe.FieldByName('P1TOTSERLIQ').AsFloat,
                      query_nfe.FieldByName('P1VALENT').AsFloat,
                      query_nfe.FieldByName('P1PRAZO_ENT').AsFloat,
                      query_nfe.FieldByName('P1COMIS_EXTRA').AsFloat,
                      mVenda_GP.mped1_submod, //SUBMOD
                      date,
                      query_nfe.FieldByName('P1TABPV').AsString);
   query_nfe.Next;
   end;
   //end;

query_nfe.First;
// fim dos Testes de Vencimentos
if DM4.Tb_ParGer02PG2USANFE.AsInteger>0 then
   begin
   if (query_nfe.fieldbyName('P1CODEMP').AsInteger<100) then
      begin
      if not fTestarServidor_NFE('SERIE1') then
         begin
         MessageDlg('Servidor de Nota Fiscal Eletronica Não esta Ativa!',mtWarning,[mbOk],0);
         freeandnil(query_nfe);
         exit;
         end;
      end;
   end;
While not query_nfe.eof do
   begin
   if query_nfe.FieldByName('P1TIPO').Value=0 then
      begin
      fMensagem('O Pedido: '+Formatfloat('000000',query_nfe.FieldByName('P1CHAVE').Value)+'/'+
                FormatFloat('00',query_nfe.FieldByName('P1ORDEM').Value)
               +' é apenas orçamento para emitir'+#13
               +' tem que converter em pedido',0,['0'],0);
      query_nfe.Next;
      Continue;
      end;

   if (query_nfe.FieldByName('P1CODEMP').AsFloat<100) then
      begin
      if ((query_nfe.FieldByName('CCNPJ').AsFloat=0) and (query_nfe.FieldByName('CCPF').AsFloat=0))
         and (query_nfe.FieldByName('CUF').AsString<>'EX') then
         begin
         fmensagem('o Cliente: '+query_nfe.FieldByName('CRAZAO').AsString+' Esta com cadastro Imcompleto '
                  +' falta o CNPJ/CPF '+query_nfe.FieldByName('CUF').AsString,0,['0'],0);
         exit;
         end;
      end;

   if query_nfe.FieldByName('P1STATUS').Value>1 then
      begin
      if fmensagem('Este Pedido ja Foi Emitido Nota Fiscal. Quer Reemitir?',0,['1','2'],0)<>MrYes then
         begin
         freeandnil(query_nfe);
         exit;
//         criar reemissao
         end;
      end
   else if query_nfe.FieldByName('P1EMITENTE').AsString='T' then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('update CADP01 set '
                         +' P1DATDOC=P1DATANF'+','
                            +' P1STATUS=2,P1EMIDOC=1 '
                            +' ,P1QTDMAN=P1QTDMAN+1'
                            +' where P1CODEMP=0'+query_nfe.FieldByName('P1CODEMP').AsString
                            +' and P1LOTSEQ=0'+query_nfe.FieldByName('P1LOTSEQ').AsString
                            +' and P1CHAVE=0'+query_nfe.FieldByName('P1CHAVE').AsString
                            +' and P1ORDEM=0'+query_nfe.FieldByName('P1ORDEM').AsString);
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,8424,'Frm_Ped_02','CADP01');
         end;
      DM1.Query1.Close;

      end
   else
      begin
      pSerieNF:='';
      pModNF  :='';
      if DM4.Tb_ParGer02PG2NFETPEMIS.AsInteger=3 then
         begin
         mnumnf:=fBuscarNUMNF(query_nfe.FieldByName('P1CODEMP').AsInteger,
            'SCAN',pSerieNF,pModNF,0);
         end
      else
         begin
         mnumnf:=fBuscarNUMNF(query_nfe.FieldByName('P1CODEMP').AsInteger,
            'SERIE'+IntToStr(query_nfe.FieldByName('P1CODSER').AsInteger+1),pSerieNF,pModNF,0);
         end;

      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('update CADP01 set '
                     +' P1NUMNF=0'+FloatToStr(mnumnf)+','
                     +' P1DATANF='+chr(39)+FormatDateTime(fdt,date)+chr(39)+','
                     +' P1DATDOC=:DATDOC,'
                     +' P1SERIE='+chr(39)+pSerieNF+chr(39)+','
                     +' P1MODELO='+chr(39)+pModNF+chr(39)+','
                     +' P1STATUS=2,P1EMIDOC=1 '
                     +' ,P1QTDMAN=P1QTDMAN+1'

                     +' where P1CODEMP=0'+query_nfe.FieldByName('P1CODEMP').AsString
                     +' and P1LOTSEQ=0'+query_nfe.FieldByName('P1LOTSEQ').AsString
                     +' and P1CHAVE=0'+query_nfe.FieldByName('P1CHAVE').AsString
                     +' and P1ORDEM=0'+query_nfe.FieldByName('P1ORDEM').AsString);
      DM1.Query1.ParambyName('DATDOC').AsDate  := NOW;
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,8424,'Frm_Ped_02','CADP01');
         end;
      DM1.Query1.Close;
      end;
   Query_Nfe.next;
   end;

query_nfe.Close;
query_nfe.Open;

if (Query_nfe.FieldByName('P1PREVENT').AsDateTime>pdatanula) then
   begin
   if (Query_nfe.FieldByName('P1PREVENT').AsDateTime<Query_nfe.FieldByName('P1DATANF').AsDateTime) or ((Query_nfe.FieldByName('P1PREVENT').AsDateTime<Date) and (Query_nfe.FieldByName('P1EMIDOC').AsInteger=0))  then
     begin
     if Application.MessageBox('Data da Transportadora Não Pode Ser Menor que a Data Atual!, Quer altera-la','',MB_YESNO+MB_DEFBUTTON2)=mrYes then
        begin
        sbnAlterarClick(self);
        end;
     exit;
     end;
   end;

Query_Nfe.First;
While not Query_Nfe.Eof do
   begin
   if (query_nfe.FieldByName('P1NUMNF').Value=0) and (query_nfe.FieldByName('P1NUMCF').Value=0) then
      begin
      fMensagem('O Pedido: '+FormatFloat('000000',query_nfe.FieldByName('P1CHAVE').Value)+'/'
      +FormatFloat('00',query_nfe.FieldByName('P1ORDEM').Value)+' não possui numero de nota fiscal nem de cupom fiscal',0,['0'],0);
      query_nfe.Next;
      Continue;
      end;
   if query_nfe.FieldByName('P1NUMNF').Value>0 then
      begin                                                           
      if query_nfe.FieldByName('P1DATANF').IsNull then
         begin
         fMensagem('O Pedido: '+FormatFloat('000000',query_nfe.FieldByName('P1CHAVE').Value)
         +'/'+FormatFloat('00',query_nfe.FieldByName('P1ORDEM').Value)+' não possui a data da nota fiscal!',0,['0'],0);
         query_nfe.Next;
         Continue;
         end;
      end;
   if query_nfe.FieldByName('P1NUMCF').Value>0 then
      begin
      if query_nfe.FieldByName('P1DATACF').IsNull then
         begin
         fMensagem('O Pedido: '+FormatFloat('000000',query_nfe.FieldByName('P1CHAVE').Value)
         +'/'+FormatFloat('00',query_nfe.FieldByName('P1ORDEM').Value)+' não possui a data do cupom fiscal!',0,['0'],0);
         query_nfe.Next;
         Continue;
         end;
      end;

   flcadp01(0,query_nfe.FieldByName('P1CODEMP').AsInteger,query_nfe.FieldByName('P1LOTSEQ').AsInteger,
                   query_nfe.FieldByName('P1CHAVE').AsString,'');

   Fgravarnf(0);

//   if (query_nfe.FieldByName('P1CODEMP').AsFloat<100) then
   fltdvca(0,0,'NF','N.F.1a.Serie','VENDA_PRE');
   FPedEmiteNf(iif(query_nfe.FieldByName('P1CODEMP').AsFloat<100, 9,0),
//    query_nfe.FieldByName('P1CODSER').AsInteger,0,query_nfe.FieldByName('P1LOTSEQ').AsInteger
    DM1.Tb_TDVCATCTPREL.AsInteger,0,query_nfe.FieldByName('P1LOTSEQ').AsInteger
   ,query_nfe.FieldByName('P1CHAVE').AsInteger,query_nfe.FieldByName('P1ORDEM').AsInteger
   ,query_nfe.FieldByName('P1CODEMP').AsInteger,0,query_nfe.FieldByName('P1FORMACE').AsInteger,false,false,true,1,0,0); // Reemisao de Nota fiscal

   fTestarDup(query_nfe.FieldByName('P1LOTSEQ').AsFloat,query_nfe.FieldByName('P1CHAVE').AsFloat
             ,query_nfe.FieldByName('P1ORDEM').AsFloat,query_nfe.FieldByName('P1CODEMP').AsFloat);


   mnfe_veraplic      :='';
   mnfe_infprodid     :='';
   mnfe_certdig       :='';
   mnfe_chaveacesso   :='';

   mnfe_Status_SCan          :='';
   mnfe_Status_SCan_Descricao:='';
   mnfe_Status_UF            :='';
   mnfe_Status_UF_Descricao  :='';

   mnfe_dchaveacesso  :='';
   mnfe_nrecibo       :='';
   mnfe_dh_recibo     :='';
   mnfe_status        :='';
   mnfe_lotenv        :='';
   mnfe_nomarqlot     :='';
   mnfe_nomarqrec     :='';
   mnfe_contigencia   :='';
   mnfe_dh_contigencia:='';
   mnfe_stat_Prot     :='';
   mnfe_stat_Prot_Desc:='';
   mnfe_stat_Rec      :='';
   mnfe_stat_Rec_Desc :='';
   mnfe_DigVal        :='';
   mnfe_Num_Protolo   :='';
   mnfe_dh_valcertificado:=pdatanula;


   query_nfe.Next;
   end;


freeandnil(query_nfe);

end;

procedure TFrm_Venda_Pre_Farma.sbnExcluirClick(Sender: TObject);
var
query_nfe: TQuery;
query_dup: TQuery;
query_nfs: TQuery;
query_par_nfs: TQuery;
query_itens: TQuery;
query_serv: TQuery;

aceita:boolean;
mtitulosBaixados: Boolean;
mMotivo_Exclusao,mObs: String;
mResult:Integer;
mMovEst: Integer;
begin
aceita:=True;
mtitulosBaixados:=false;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
query_nfe := TQuery.Create(nil);
query_nfe.DatabaseName:='SG_ASSOC';
query_nfe.SQL.Clear;
query_nfe.SQL.Add('Select P1CODEMP,P1LOTSEQ,P1CHAVE,P1ORDEM,P1STATUS,P1TIPO,CCNPJ,CCPF,'
                 +'CUF,P1SITPED,P1TABPV,P1CODPV,P1ORDEM,P1PRAZO,P1PVDDESCF,P1PVDIASDESCF'
                 +',P1TOTALL,P1COMIS,P1COMV02,P1COMV03,P1COMV04,P1COMISS'
                 +',P1COMIST,P1SEMCOM,P1COMASSE,P1ICMSR,P1VALFRE,P1TOTEXTCOM'
                 +',P1VALSEG,P1DESCFIN,P1TOTDI01,P1TOTDI02,P1TOTDI03,P1TOTDIVL'
                 +',P1VALDES01,P1VALDES02,P1VLRDES,P1TARBAN,P1DESPACES,P1IPIINA,P1IPIPOS'
                 +',P1IPINEG,P1TOTCGRU,P1TOTSGRU,P1TOTSERLIQ,P1VALENT,P1CODUSR,P1CODUSR_ULTEVE'
                 +',CRAZAO,P1EMITENTE,P1CODSER,P1TOTSERLIQ,P1CODCLI,P1DATANF,P1EMIDOC '
                 +',P1COMP_ULTEVE,P1CODTRA,P1BLOQPEND,P1CODBLOQ_LIB,P1CODBLOQ,P1PREVENT'
                 +',P1NUMNF,P1NUMCF,P1FORMACE,P1DATAP,P1NFE_ENVXML '
                 +',P1PRAZO_ENT,P1COMIS_EXTRA,P1SUBMOD,P1DATHOR_ULTEVE from CADP01'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +'  (P1CODEMP=:CODEMP OR P1CODEMP=:CODEMP_FILIAL) '
                 +' and P1CHAVE=:CHAVE '
                 +' and P1LOTSEQ=:LOTSEQ '
                 +' and P1ORDEM=:ORDEM ');
Query_nfe.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
Query_nfe.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
Query_nfe.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
Query_nfe.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_nfe.ParamByName('ORDEM').AsInteger:=1;
query_nfe.Open;
if query_nfe.IsEmpty then
   begin
   fmensagem('Chave não encontrada!',0,['0'],0);
   freeandnil(query_nfe);
   exit;
   end;

if (Query_nfe.FieldbyName('P1STATUS').Value=9)  then
   begin
   Fmensagem('Este Pedido foi excluido anteriormente!',0,['0'],0);
   freeandnil(query_nfe);
   exit;
   end;

if (Query_nfe.FieldByName('P1SITPED').Value = 1)
   and ( (Query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime>pdatanula)
   and (MinutesBetween(Query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime,now)<2)) then
   begin
   mcinst2:=Query_nfe.FieldByName('P1CODUSR_ULTEVE').AsString+' - ';
   if Query_nfe.FieldByName('P1CODUSR_ULTEVE').AsInteger=1111 then
      mcinst2:=mcinst2+'Programador(Master)'
   else
      begin
      if flcadusr(0,0,Query_nfe.FieldByName('P1CODUSR_ULTEVE').AsString) then
         mcinst2:=mcinst2+DM4.Tb_UsrNOMUSR.AsString;
      end;
   mcinst := 'Pedido em Manutenção no Computador: '+Query_nfe.FieldByName('P1COMP_ULTEVE').AsString
           + ' Pelo Usuário: '+mcinst2
           + ' Data/Hora: '+Formatdatetime('dd/mm/yyyy hh:nn:ss', Query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime);
   fMensagem(mcinst,0,['0'],0);
   freeandnil(query_nfe);
   exit;
   end;



if (DM1.Tb_PargerPQTDDBLOQPED.AsFloat<>0) then
   begin
   if (query_nfe.fieldbyName('P1DATAP').Value+DM1.Tb_PargerPQTDDBLOQPED.AsFloat)>pdatasis then
      begin
      if (query_nfe.fieldbyName('P1NUMCF').Value>0) or (query_nfe.fieldbyName('P1NUMNF').Value>0) then
          begin
          fMensagem('Não Pode ser Excluido o Pedido! '+#13
                   +'Quantidade de dias máximo: '+DM1.Tb_PargerPQTDDBLOQPED.AsString
                    ,0,['0'],0);
          freeandnil(query_nfe);
          exit;
        end;
      end;
   end;
if (query_nfe.fieldbyName('P1NUMCF').Value>0)  then
   begin
   mObs:='Este Pedido Possui o Cupom de Numero: '+FormatFloat('000000',query_nfe.fieldbyName('P1NUMCF').Value);
   mObs:=mObs+#13+'Este cupom não sera cancelado utilizando esta opção';
   mObs:=mObs+#13+'Mesmo assim quer prosseguir?';

   if fmensagem(pchar(mObs),0,['1','2'],0)<>mrYes then
      begin
      freeandnil(query_nfe);
      exit;
      end;
   end;

if DM4.Tb_ParGer02PG2USANFE.AsInteger>0 then
   begin
   if (query_nfe.fieldbyName('P1CODEMP').AsInteger<100) and
      (query_nfe.fieldbyName('P1NUMNF').AsInteger>0) then
      begin
      if not fTestarServidor_NFE('SERIE1') then
         begin
         MessageDlg('Servidor de Nota Fiscal Eletronica Não esta Ativa!',mtWarning,[mbOk],0);
         freeandnil(query_nfe);

         exit;
         end;
      end;
   end;



aceita:=True;
mtitulosBaixados:=false;
query_dup := TQuery.Create(nil);
query_dup.DatabaseName:='SG_ASSOC';


query_nfe.First;

While not query_nfe.Eof do
   begin
   query_dup.Close;
   query_dup.SQL.Clear;
   query_dup.SQL.Add('Select CRSTATUS,CRLOTE,CRVALPAG from caddar where '
                   +' CRNPED=:CHAVE '
                   +' and CRLOTSEQ_CP=:CHAVE_ANO '
                   +' and CRCODEMP=:CODEMP and CRSTATUS<>9 and CRSTATUS>0 '
                   +' and (CRLOTE<>0 or CRVALPAG>0)');
   Query_dup.ParamByName('CHAVE').AsFloat:=Query_nfe.fieldbyName('P1CHAVE').AsFloat;
   Query_dup.ParamByName('CHAVE_ANO').AsFloat:=Query_nfe.fieldbyName('P1LOTSEQ').AsFloat;
   Query_dup.ParamByName('CODEMP').AsFloat:=Query_nfe.fieldbyName('P1CODEMP').AsFloat;
   Query_Dup.Open;
   if not Query_dup.IsEmpty then
      begin
      mtitulosBaixados:=true;
      aceita:=false;
      end;
   query_nfe.Next;
   end;

if DM1.Tb_PargerPEXCFP_EXCPED.Value<>1 then
   begin
   if not aceita then
      begin
      fMensagem('Ha títulos pagos deste pedido cancelar primeiro as baixas!',0,['0'],0);
      freeandnil(query_nfe);
      freeandnil(query_dup);
      exit;
      end;
   end;
if (Query_nfe.FieldByName('P1SITPED').Value = 1)
   and ( (Query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime>pdatanula)
   and (MinutesBetween(Query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime,now)<2)) then
   begin
   mcinst2:=query_nfe.FieldByName('P1CODUSR_ULTEVE').AsString+' - ';
   if query_nfe.FieldByName('P1CODUSR_ULTEVE').AsInteger=1111 then
      mcinst2:=mcinst2+'Programador(Master)'
   else
      begin
      if flcadusr(0,0,query_nfe.FieldByName('P1CODUSR_ULTEVE').AsString) then
         mcinst2:=mcinst2+DM4.Tb_UsrNOMUSR.AsString;
      end;
   mcinst := 'Pedido em Manutenção no Computador: '+query_nfe.FieldByName('P1COMP_ULTEVE').AsString
           + ' Pelo Usuário: '+mcinst2
           + ' Data/Hora: '+Formatdatetime('dd/mm/yyyy hh:nn:ss', query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime);
   fMensagem(mcinst,0,['0'],0);
   freeandnil(query_nfe);
   freeandnil(query_dup);
   end;

if (pOp<>1) then
  begin
  if (fmensagem('Quer realmente excluir este pedido?',0,['1','2'],0)<>mrYes) then
    begin
    FreeAndNil(query_nfe);
    freeandnil(query_dup);
    exit;
    end;
  end;

While true do
  begin
  if (pOp<>1) then
     begin
     mMotivo_Exclusao:='';
     if not InputQuery('Motivo da Exclusao!','Digite o Motivo da Exclusao:',mMotivo_Exclusao) then
        break;
     end
  else
     mMotivo_Exclusao:='INTERSYS - Cancelamento Exclusão';
   mMotivo_Exclusao:=trim(mMotivo_Exclusao);
   if length(mMotivo_Exclusao)<15 then
      begin
      fmensagem('O Motivo Tem que ter pelo menos quinze letras!',0,['0'],0);
      continue;
      end;
   if trim(mMotivo_Exclusao)<>'' then
      break;
   end;

   
if trim(mMotivo_Exclusao)='' then
   begin
   FreeAndNil(query_nfe);
   freeandnil(query_dup);
   exit;
   end;
flcadpar01(0,query_nfe.fieldbyName('P1CODEMP').AsInteger,'1');

if query_nfe.fieldbyName('P1STATUS').Value=2 then
   begin
   if fValidaSenha(0,codusr,4,0,query_nfe.fieldbyName('P1CODCLI').Value,0,0,0,'Senha para Excluir o Pedido apos a emissão da nota fiscal','')<>0 then
      begin
      FreeAndNil(query_nfe);
      freeandnil(query_dup);
      exit;
      end;
   end
else
   begin
   if pOp<>1 then
     begin
     if fValidaSenha(0,codusr,3,0,query_nfe.fieldbyName('P1CODCLI').Value ,0,0,0,'Senha para Excluir o Pedido','')<>0 then
        begin
        FreeAndNil(query_nfe);
        freeandnil(query_dup);
        exit;
        end;
     end;
   end;


if mtitulosBaixados then
   begin
   if not fPed01ExcluiPagamento(0,query_nfe) then
      begin
      verteclado(0);
      fMensagem('Não foi possível excluir a(s) forma(s) de Pagamento automaticamente,'+#13
                +'Favor exluir manualmente!',0,['0'],0);
      FreeAndNil(query_nfe);
      freeandnil(query_dup);
      exit;
      end;
   end;

query_nfs := TQuery.Create(nil);
query_nfs.DatabaseName:='SG_ASSOC';

query_par_nfs := TQuery.Create(nil);
query_par_nfs.DatabaseName:='SG_ASSOC';


query_nfe.First;
While not query_nfe.Eof do
   begin
   if (query_nfe.fieldbyName('P1CODEMP').AsFloat<100) and (query_nfe.FieldByName('P1status').AsFloat>1)
      and (query_nfe.fieldbyName('P1NUMNF').AsFloat>0)  then
      begin
      if DM4.Tb_ParGer02PG2USANFE.AsInteger>0 then
         begin
         if query_nfe.fieldbyName('P1NFE_ENVXML').AsFloat=9 then
            begin
            if pdatasis<Date then
               pdatasis:=Date;
            if (pdatasis-query_nfe.fieldbyName('P1DATANF').AsDateTime)>1 then
                begin
                fmensagem('Esta nota Fiscal não Permitido o Cancelamento pelo SEFAZ'
                         +'Mais de 1 dias apos a emissão!',0,['0'],0);
                exit;
                end;

            mResult:=fCancelarNFE(query_nfe.fieldbyName('P1CODEMP').AsFloat,query_nfe.fieldbyName('P1LOTSEQ').AsFloat,
                   query_nfe.fieldbyName('P1CHAVE').AsFloat,query_nfe.fieldbyName('P1ORDEM').AsFloat,
                   query_nfe.fieldbyName('P1NUMNF').AsFloat,mMotivo_Exclusao,false);
            if mResult<>0 then
               begin
               fmensagem('erro '+IntTostr(mResult)+' ao cancelar NFE! '+mnfe_mensagem_retorno ,0,['0'],0);
               exit;
               end;
            end
         else
            begin
            query_nfs.Close;
            query_nfs.SQL.Clear;
            query_nfs.SQL.Add('SELECT NSNFE_CHAVEACESSO,NSNFE_DCHAVEACESSO'
                              +',NSNUMERO,NSTOTNOTA,NSNFE_NUMPROT,NSDTEMIS,NSSERIE FROM CADNS where '
                              +iif(DM1.Qr_TID.locate('TINOME','CADNS',[]),'',' NSCODEMP=0'+query_nfe.fieldbyName('P1CODEMP').AsString+' and ')
                              +' NSLOTSEQ_CP=0'+query_nfe.fieldbyName('P1LOTSEQ').AsString
                              +' and NSCHAVEP=0'+query_nfe.fieldbyName('P1CHAVE').AsString
                              +' and NSORDEMP=0'+query_nfe.fieldbyName('P1ORDEM').AsString
                              +' and NSNUMERO=0'+query_nfe.fieldbyName('P1NUMNF').AsString);
            query_nfs.Open;
            if query_nfs.IsEmpty then
               begin
               fmensagem('Erro ao Procurar a Nota Fiscal: '+query_nfe.fieldbyName('P1NUMNF').AsString,0,['0'],0);
               exit;
               end;

            if valint(query_nfs.FieldByName('NSSERIE').AsString)=0  then  //  serie
               begin
               query_par_nfs.close;
               query_par_nfs.SQL.clear;
               query_par_nfs.SQL.Add('Select PNF_SERIE from CADPAR_NF where PNF_CODEMP=:CODEMP '
                                 +' and PNF_CHAVE=:CHAVE ');
               query_par_nfs.ParamByName('CODEMP').AsInteger:=DM4.Qr_Ped01P1CODEMP.AsInteger;
               query_par_nfs.ParamByName('CHAVE').Value     :=DM1.Query2.fieldbyname('NSTIPDOC').AsString;
               query_par_nfs.Open;
               mcinst:=query_par_nfs.FieldbyName('PNF_SERIE').AsString;
               end
            else
               mcinst:=query_nfs.FieldByName('NSSERIE').AsString;
            mResult:=fInutilizarNFE(
                                    query_nfe.fieldbyName('P1CHAVE').Asinteger,
                                    query_nfe.fieldbyName('P1LOTSEQ').Asinteger,
                                    query_nfe.fieldbyName('P1CODEMP').Asinteger,


            mMotivo_Exclusao,
            mcinst,valint(formatDateTime('yyyy',query_nfs.FieldbyName('NSDTEMIS').AsDateTime)),
            query_nfs.fieldbyName('NSNUMERO').AsInteger,
            query_nfs.fieldbyName('NSNUMERO').AsInteger,false);
            if mResult<>0 then
               begin
               fmensagem('erro '+IntTostr(mResult)+' ao Inutilizar NFE! '+mnfe_mensagem_retorno,0,['0'],0);
               exit;
               end;
            end;
         end;
      end;
   fped01gant(9,query_nfe);
   query_nfe.Next;
   end;
query_nfe.first;
if query_nfe.fieldbyName('P1NFE_ENVXML').AsFloat=9 then
   fExcluirPedido(9,mMotivo_Exclusao,query_nfe)
else
   fExcluirPedido(8,mMotivo_Exclusao,query_nfe);

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');


query_itens := TQuery.Create(nil);
query_itens.DatabaseName:='SG_ASSOC';

query_itens.SQL.Clear;
query_itens.SQL.Add('select P2ITEM,P2CODPRO ');
if mVenda_GP.mped1_formace=0 then
   begin
   query_itens.SQL.Add(',sum(P2QTD) as P2QTD '
                    +',sum(round(P2QTD*P2PRECO,2)) AS VALOR_TOTAL '
                    +',max(P2PCOTAB) AS P2PRECO_TAB'
                    +',max(P2UCPR) AS  P2PRECO_UCPR '
                    +',max(P2PCOCUS) AS P2PRECO_CUS '
                    +',max(P2PCOMAX) AS P2PRECO_MAXCONS '
                    +',max(P2PRECO) as P2PRECO ');
   end
else
   begin
   query_itens.SQL.Add(',max(P2QTD) as P2QTD '
                    +',sum(round(P2QTD*P2PRECO,2)) AS VALOR_TOTAL '
                    +',sum(P2PCOTAB) AS P2PRECO_TAB'
                    +',sum(P2UCPR) AS  P2PRECO_UCPR '
                    +',sum(P2PCOCUS) AS P2PRECO_CUS '
                    +',sum(P2PCOMAX) AS P2PRECO_MAXCONS '
                    +',sum(P2PRECO) as P2PRECO ');
   end;

query_itens.SQL.Add(',max(P2DESC1) AS P2DESC_PERC01 '
                    +',max(P2DESC2) AS P2DESC_PERC02 '
                    +',max(P2DESC3) AS P2DESC_PERC03 '
                    +',sum(P2VALDES) AS P2VALDES '

                    +',max(P2SIT) AS P2CST '
                    +',max(P2CSOSN) as P2CSOSN '
                    +',max(P2CONS_PROPRIO) as P2CONS_PROPRIO '
                    +',max(P2CFO) AS P2CFOP_NF '
                    +',max(P2CFOSUBECF) AS P2CFOP_ECF '
                    +', max(decode(p2complemento,'+QuotedStr(' ')+',null,p2complemento)) as P2DESC_COMP '
                    +',max(P2CSOSN_ORI) as P2CSOSN_ORI '
                    +',max(P2PCRED_SN) as P2ICMSSN_PERC '


                    +' ,max(case when P2CODEMP>100 THEN 0 ELSE P2REDUTICM END) AS P2ICMS_PPRED '
                    +' ,max(case when P2CODEMP>100 THEN 0 ELSE P2MODBCST  END)  AS P2MODBCST '
                    +' ,max(case when P2CODEMP>100 THEN 0 ELSE P2ST_IVA  END)  AS P2ST_IVA '
                    +' ,max(case when P2CODEMP>100 THEN 0 ELSE P2ST_REDUT  END)  AS P2ST_REDUT '
                    +' ,max(case when P2CODEMP>100 THEN 0 ELSE P2ST_ICMCRED  END)  AS P2ST_ICMSCRED '
                    +' ,max(case when P2CODEMP>100 THEN 0 ELSE P2ST_ICMDEB  END)  AS P2ST_ICMSDEB '


                    +' ,max(case when P2CODEMP>100 THEN P2REDUTICM ELSE 0 END) AS P2ICMS_PPRED_101 '
                    +' ,max(case when P2CODEMP>100 THEN P2MODBCST ELSE 0 END)  AS P2MODBCST_101 '
                    +' ,max(case when P2CODEMP>100 THEN P2ST_IVA ELSE 0 END)  AS P2ST_IVA_101 '
                    +' ,max(case when P2CODEMP>100 THEN P2ST_REDUT ELSE 0 END)  AS P2ST_REDUT_101 '
                    +' ,max(case when P2CODEMP>100 THEN P2ST_ICMCRED ELSE 0 END)  AS P2ST_ICMSCRED_101 '
                    +' ,max(case when P2CODEMP>100 THEN P2ST_ICMDEB ELSE 0 END)  AS P2ST_ICMSDEB_101 '



                    +',max(P2ALIPI) AS P2IPI_PERC '
                    +',max(P2ALIQ) AS P2ICMS_PERC '
                    +',max(P2ALIQICMSDES) AS P2ICMS_DESPERC '
                    +',max(P2ALIQAPROXTRIB) AS P2ALIQAPROXTRIB '
                    +',max(P2ALCOFINS) as P2COFINS_PERC '
                    +',max(P2ALPIS) AS P2PIS_PERC '
                    +',max(P2ALIPI) as P2ALIPI '
                    +',max(P2CST_PIS) as P2CST_PIS '
                    +',max(P2CST_COFINS) as P2CST_COFINS '
                    +',max(P2CODVEN) as P2CODVEN '
                    +',max(P2AMBIENTE ) as P2AMBIENTE'
                    +',max(P2PDESCF) AS P2DESCFIN_PERC '
                    +',max(PDNOME) as PDNOME '
                    +',max(PDMARCA) as PDMARCA '

                    +',max(PDUND) as PDUND '
                    +',max(P2CST_PIS) as P2CST_PIS '
                    +',max(P2CST_IPI) as P2CST_IPI '
                    +',max(P2CST_COFINS) as P2CST_COFINS '
                    +',max(P2PROMOCAO) as P2PROMOCAO '
                    +',max(P2DESCPR) as P2DESCPR '
                    +',max(P2CONTESP) as P2CONTESP '
                    +',max(P2NOMPRO_ORI) as P2NOMPRO_ORI '
                    +',max(P2UND) as P2UND  '
                    +',max(P2PCOMIS) as P2PCOMIS  '
                    +',max(P2TIPO_PCO) as P2TIPO_PCO '
                    +',max(P2ICMS_ALIPI) as P2ICMS_ALIPI '
                    +' FROM '
                    +' cadp02'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_instrucao='','',la_instrucao+' and ')
                    +' (P2CODEMP=:CODEMP_MENOR or P2CODEMP=:CODEMP_MAIOR ) '
                    +' and   P2CHAVE=:CHAVE'
                    +' and   P2LOTSEQ=:CHAVE_ANO'
                    +' and   P2ORDEM=:ORDEM '
                    +' group by P2ITEM,P2CODPRO '
                    +'  order by P2ITEM ');
query_itens.ParamByName('CODEMP_MENOR').AsInteger   :=CodEmp;
if codemp>100 then
   query_itens.ParamByName('CODEMP_MAIOR').AsInteger   :=CodEmp-100
else
   query_itens.ParamByName('CODEMP_MAIOR').AsInteger   :=CodEmp+100;


query_itens.ParamByName('CHAVE').AsInteger    :=valint(edt_chave.Text);
query_itens.ParamByName('CHAVE_ANO').AsInteger:=0;
//query_itens.ParamByName('CHAVE_ANO').AsInteger:=valint(FormatDateTime('yyyy', date));
query_itens.ParamByName('ORDEM').AsInteger    :=1;


try
   query_itens.Open;
except
   fMensagem('Campo Inexistente: '+FTestarCampos(Tb_Ped02_Pre,['CADP02','CADPRO']),0,['0'],0);
   if not fVerificaRedeAtiva(true) then
      begin
      end
   else
      begin
      end;
   end;
fGerarOld(9);

query_itens.First;
mMovEst:=1;
While not Query_itens.eof do
   begin
 {  mVenda_GP.fGravarItem(query_itens.fieldbyName('P2ITEM').AsInteger,mItem_Ant,query_itens.fieldbyName('P2CFOP_ECF').AsInteger,
                        query_itens.fieldbyName('P2CONS_PROPRIO').AsInteger, //cons_proprio
                        query_itens.fieldbyName('P2CFOP_NF').AsInteger ,query_itens.fieldbyName('P2MODBCST').AsInteger,
                        0, // situacao
                        mMovEst, // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta
                        mVenda_GP.mPed1_CodFP,
                        3, // SOMENTE AJUSTA ESTOQUE

                        Query_Itens.FieldbyName('P2CONTESP').AsInteger, // CONTROLE ESPECIAL

                        query_itens.fieldbyName('P2CODPRO').AsString,
                        query_itens.fieldbyname('P2NOMPRO_ORI').AsString,
                        query_itens.fieldbyname('P2UND').AsString,
                        '', // codigo anterior
                        query_itens.fieldbyName('P2QTD').AsFloat,
                        0,
                        query_itens.fieldbyName('P2DESC_PERC01').AsFloat,
                        query_itens.fieldbyName('P2DESC_PERC02').AsFloat,
                        query_itens.fieldbyName('P2DESC_PERC03').AsFloat,
                        0, // desconto em valor
                        query_itens.fieldbyName('P2DESCPR').AsFloat,
                        query_itens.fieldbyName('P2PRECO').AsFloat,
                        query_itens.fieldbyname('P2PCOMIS').AsFloat,
                        0, //repasse de icms
                        0, // lista neutra positiva negativa
                        query_itens.fieldbyName('P2PRECO_TAB').AsFloat,
                        query_itens.fieldbyName('P2PRECO_TAB').AsFloat,
                        query_itens.fieldbyName('P2PRECO_UCPR').AsFloat,
                        query_itens.fieldbyName('P2PRECO_CUS').AsFloat,
                        query_itens.fieldbyName('P2PRECO_MAXCONS').AsFloat,

                        query_itens.fieldbyName('P2IPI_PERC').AsFloat,
                        query_itens.fieldbyName('P2ICMS_PERC').AsFloat,
                        0, // percentual de comissao
                        query_itens.fieldbyName('P2PIS_PERC').AsFloat,
                        query_itens.fieldbyName('P2COFINS_PERC').AsFloat,
                        query_itens.fieldbyName('P2DESCFIN_PERC').AsFloat,
                        0, // percentual de acrescimos
                        query_itens.fieldbyName('P2CODVEN').AsFloat,
                        query_itens.fieldbyName('P2ICMS_PPRED').AsFloat,
                        query_itens.fieldbyName('P2ST_IVA').AsFloat,
                        query_itens.fieldbyName('P2ST_REDUT').AsFloat,
                        query_itens.fieldbyName('P2ST_REDUT').AsFloat,
                        query_itens.fieldbyName('P2ST_ICMSDEB').AsFloat,
                        query_itens.fieldbyName('P2ST_ICMSCRED').AsFloat,
                        query_itens.fieldbyName('P2ICMSSN_PERC').AsFloat,
                        valfloat(edt_desc_valor.Text),
                        0, // ACRESCIMOS RATEADO
                        valfloat(edt_valseg.Text),
                        ValFloat(edt_valfre.Text),
                        iif(mVenda_GP.mPed1_Codemp>100,ValFloat(edt_tarban_101.Text),ValFloat(edt_tarban1.Text)),
                        valfloat(edt_despAces.Text),
                        query_itens.fieldbyName('P2CST').AsString,
                        query_itens.fieldbyName('P2AMBIENTE').AsString,
                        query_itens.fieldbyName('P2DESC_COMP').AsString,
                        query_itens.fieldbyName('P2CSOSN').AsString,
                        query_itens.fieldbyName('P2csosn_ori').AsString,query_itens.fieldbyName('P2PROMOCAO').AsString
                        ,mVenda_GP.mPed1_NomFP,mVenda_GP.mPed1_BaixaFP
                        ,query_itens.fieldbyName('P2CST_PIS').AsString,query_itens.fieldbyName('P2CST_COFINS').AsString
                        ,query_itens.fieldbyName('P2CST_IPI').AsString
                        ,query_itens.fieldbyName('P2TIPO_PCO').AsInteger
                        ,query_itens.fieldbyName('P2ICMS_ALIPI').AsInteger


                        );    }
 mVenda_GP.fGravarItem(0 // produto
                        ,mitem_ant
                        ,mMovEst // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta p2Estoque
                        ,mVenda_GP.mPed1_CodFP
                        ,3 //apenas calcular  tipo do evento 0-inclusao 1-alteracao 2-exclusao 3-calcular
                        ,0 //pSituacao: Integer;
                        ,mCodpro_Ant
                        ,mVenda_GP.mPed1_NomFP
                        ,mVenda_GP.mPed1_BaixaFP
                        ,query_itens.fieldbyName('P2QTD').AsFloat
                        ,0 // pPrecoUnit_Cal
                        ,0 //,pPrecoTab_Cal
                        ,0 // pPrecoUCPR_Cal
                        ,0 // pPrecoCus_Cal
                        ,0 // pPrecoMax_Cal,
                        ,0 //mQtd_Ant_Cal

                        ,valfloat(edt_valseg.Text)
                        ,ValFloat(edt_valfre.Text)
                        ,iif(mVenda_GP.mPed1_Codemp>100,ValFloat(edt_tarban_101.Text),ValFloat(edt_tarban1.Text))
                        ,valfloat(edt_despAces.Text)
                        ,valfloat(edt_desc_valor.Text)
                        ,query_itens);
{
   if query_itens.fieldbyName('P2CONTESP').AsInteger=1 then
      begin
      fDeletarCMet(query_itens.fieldbyName('P2ITEM').AsInteger,query_itens.fieldbyName('P2CODPRO').AsFloat);
      end;
}
   if (Log_TipoLote<>1) and (mVenda_GP.mPed1_Tipo_Ped=8) then
      begin
      fBaixarDevolucao(1,query_itens.fieldbyName('P2CODPRO').AsString
                        ,'' // lote cds_lotes.FieldByName('LOTE').AsString
                        ,'/  /'
                        ,query_itens.fieldbyName('P2QTD').AsFloat);
      end;

query_itens.ParamByName('CODEMP_MENOR').AsInteger   :=CodEmp;
if codemp>100 then
   query_itens.ParamByName('CODEMP_MAIOR').AsInteger   :=CodEmp-100
else
   query_itens.ParamByName('CODEMP_MAIOR').AsInteger   :=CodEmp+100;


query_itens.ParamByName('CHAVE').AsInteger    :=valint(edt_chave.Text);
query_itens.ParamByName('CHAVE_ANO').AsInteger:=0;
//query_itens.ParamByName('CHAVE_ANO').AsInteger:=valint(FormatDateTime('yyyy', date));
query_itens.ParamByName('ORDEM').AsInteger    :=1;

   query_itens.Next;
   end;
//TERMINO



FreeAndNil(query_nfe);
freeandnil(query_dup);
freeandnil(query_itens);
if pOp<>1 then
  fmensagem('Pedido Excluido!',0,['0'],0);
fLimparCampos(0);

end;



procedure TFrm_Venda_Pre_Farma.sbnInutilizarClick(Sender: TObject);
begin
if not fTestarServidor_NFE('SERIE1') then
   begin
   MessageDlg('Servidor de Nota Fiscal Eletronica Não esta Ativa!',mtWarning,[mbOk],0);
   exit;
   end;

if Frm_NFE_Inutilizar=nil then
  Application.CreateForm(TFrm_NFE_Inutilizar, Frm_NFE_Inutilizar);
Frm_NFE_Inutilizar.ShowModal;
Frm_NFE_Inutilizar.Free;
Frm_NFE_Inutilizar:=nil;

end;

procedure TFrm_Venda_Pre_Farma.sbnlSepClick(Sender: TObject);
var
Query_LSep: TQuery;
mNivel: Integer;
x_gru: Integer;
begin
if not fValida_Pedido then
  begin
  fmensagem(' Esse pedido foi alterado em outra estação.'+#13
           +' Por favor re-localizar o mesmo.',0,['0'],0);
  exit;
  end;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
Query_Lsep := TQuery.Create(nil);
Query_Lsep.DatabaseName:='SG_ASSOC';
Query_Lsep.SQL.Clear;
Query_Lsep.SQL.Add('Select P1CODEMP,P1LOTSEQ,P1CHAVE,P1ORDEM,P1STATUS,P1TIPO,CCNPJ,CCPF,'
                 +'CUF,CCIDADE,P1SITPED,P1TABPV,P1CODPV,P1ORDEM,P1PRAZO,P1PVDDESCF,P1PVDIASDESCF'
                 +',P1TOTALL,P1COMIS,P1COMV02,P1COMV03,P1COMV04,P1COMISS'
                 +',P1COMIST,P1SEMCOM,P1COMASSE,P1ICMSR,P1VALFRE,P1TOTEXTCOM'
                 +',P1VALSEG,P1DESCFIN,P1TOTDI01,P1TOTDI02,P1TOTDI03,P1TOTDIVL'
                 +',P1VALDES01,P1VALDES02,P1VLRDES,P1TARBAN,P1DESPACES,P1IPIINA,P1IPIPOS'
                 +',P1IPINEG,P1TOTCGRU,P1TOTSGRU,P1TOTSERLIQ,P1VALENT,P1CODUSR,P1CODUSR_ULTEVE'
                 +',CRAZAO,P1EMITENTE,P1CODSER,P1TOTSERLIQ,P1CODCLI,P1DATANF,P1EMIDOC '
                 +',P1COMP_ULTEVE,P1CODTRA,P1BLOQPEND,P1CODBLOQ_LIB,P1CODBLOQ,P1PREVENT'
                 +',P1NUMNF,P1NUMCF,P1FORMACE,P1SEPAMB '
                 +',P1PRAZO_ENT,P1COMIS_EXTRA,P1SUBMOD,P1DATHOR_ULTEVE from CADP01'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +'  (P1CODEMP=:CODEMP OR P1CODEMP=:CODEMP_FILIAL) '
                 +' and P1CHAVE=:CHAVE '
                 +' and P1LOTSEQ=:LOTSEQ '
                 +' and P1ORDEM=:ORDEM ');
Query_Lsep.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
Query_Lsep.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
Query_Lsep.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
Query_Lsep.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_Lsep.ParamByName('ORDEM').AsInteger:=1;
Query_Lsep.Open;
//Query_LSep.SQL.SaveToFile('C:\LSEP.TXT');
if Query_Lsep.IsEmpty then
   begin
   Query_LSep.SQL.SaveToFile('C:\LSEP.TXT');
   fmensagem('Chave não encontrada!',0,['0'],0);
   exit;
   end;
{
if Query_Lsep.FieldbyName('P1TIPO').Value=9 then
   begin
   Fmensagem('Este Pedido é de Emprestimo, Favor Fatura-lo Primeiro!',0,['0'],0);
   exit;
   end;

}
if (Query_lsep.FieldByName('P1SITPED').Value = 1)
   and ( (Query_lsep.FieldByName('P1DATHOR_ULTEVE').AsDateTime>pdatanula)
   and (MinutesBetween(Query_lsep.FieldByName('P1DATHOR_ULTEVE').AsDateTime,now)<2)) then
   begin
   mcinst2:=Query_Lsep.FieldByName('P1CODUSR_ULTEVE').AsString+' - ';
   if Query_Lsep.FieldByName('P1CODUSR_ULTEVE').AsInteger=1111 then
      mcinst2:=mcinst2+'Programador(Master)'
   else
      begin
      if flcadusr(0,0,Query_Lsep.FieldByName('P1CODUSR_ULTEVE').AsString) then
         mcinst2:=mcinst2+DM4.Tb_UsrNOMUSR.AsString;
      end;
   mcinst := 'Pedido em Manutenção no Computador: '+Query_Lsep.FieldByName('P1COMP_ULTEVE').AsString
           + ' Pelo Usuário: '+mcinst2
           + ' Data/Hora: '+Formatdatetime('dd/mm/yyyy hh:nn:ss', Query_Lsep.FieldByName('P1DATHOR_ULTEVE').AsDateTime);
   fMensagem(mcinst,0,['0'],0);
   exit;
   end;






Query_LSep.First;
if (log_codven<>0) and (Query_LSep.FieldbyName('P1STATUS').AsInteger=1)
   and (Query_LSep.FieldbyName('P1TIPO').AsInteger>0) and (DM1.Tb_PargerPLOGUSRPED.AsInteger=1) then
   begin
   fMensagem('Reimpressão não autorizada, Favor solicitar Gerência!',0,['0'],0);
   exit;
   end;

if (Query_LSep.FieldbyName('P1TIPO').asinteger=0) THEN // or (Query_LSep.FieldbyName('P1TIPO').AsInteger=10) then // orcamento
   begin
//   if (pconsemp=false) then
//      begin
   if Query_LSep.FieldbyName('P1SEPAMB').AsInteger=18 then
      begin
      if Frm_Fatur_OrcGrupo=nil then
         Application.CreateForm(TFrm_Fatur_OrcGrupo, Frm_Fatur_OrcGrupo)
      else
         begin
         Frm_Fatur_OrcGrupo.free;
         Frm_Fatur_OrcGrupo:=nil;
         Application.CreateForm(TFrm_Fatur_OrcGrupo, Frm_Fatur_OrcGrupo);
         end;
      if (mVenda_GP.mPed1_Codemp_fin>100) or (mVenda_GP.mPed1_Codemp_ini>100) then
         begin
         for x_gru:=0 to Frm_Fatur_OrcGrupo.Form_SelEmp.CLB_EMPRESAS.Count-1 do
             Frm_Fatur_OrcGrupo.Form_SelEmp.CLB_EMPRESAS.Checked[x_gru] :=true;
         end;

      Frm_Fatur_OrcGrupo.CHAVE.Text   :=IntToStr(mVenda_GP.mped1_Chave);
      Frm_Fatur_OrcGrupo.MDATAP.Text  :=formatDateTime(fdt2, Query_LSep.FieldbyName('P1DATAP').AsDateTime);
      Frm_Fatur_OrcGrupo.MCLIENTE.Text:=Query_LSep.FieldbyName('P1CODCLI').AsString+' '+Query_LSep.FieldbyName('CRAZAO').AsString;
      Frm_Fatur_OrcGrupo.MCIDADE.Text := Query_LSep.FieldbyName('CCIDADE').AsString+' - '+Query_LSep.FieldbyName('CUF').AsString;
      Frm_Fatur_OrcGrupo.Memo_obs.Lines.Clear;



      Frm_Fatur_OrcGrupo.FormStyle:=fsNormal;
      Frm_Fatur_OrcGrupo.Visible:=false;

      fAtualizaForm(0);
      Frm_Fatur_OrcGrupo.ShowModal;
      Frm_Fatur_OrcGrupo.Free;
      Frm_Fatur_OrcGrupo:=nil;
      end
   else
      begin
      FPedEmiteNf(0,2,0,Query_LSep.FieldbyName('P1LOTSEQ').AsInteger,Query_LSep.FieldbyName('P1CHAVE').AsInteger
               ,Query_LSep.FieldbyName('P1ORDEM').AsInteger,Query_LSep.FieldbyName('P1CODEMP').AsInteger,1
               ,Query_LSep.FieldbyName('P1FORMACE').AsInteger,false,false,true,1,iif(CB_MODORCAM.Checked,1,0),0); // orcamento
      if DM1.Tb_PargerPLORCMOD02.AsInteger=1 then
         FPedEmiteNf(0,6,0,Query_LSep.FieldbyName('P1LOTSEQ').AsInteger,Query_LSep.FieldbyName('P1CHAVE').AsInteger
         ,Query_LSep.FieldbyName('P1ORDEM').AsInteger,Query_LSep.FieldbyName('P1CODEMP').AsInteger,1
         ,Query_LSep.FieldbyName('P1FORMACE').AsInteger,false,false,true,1,iif(CB_MODORCAM.Checked,1,0),0); // orcamento
      end;
//   end;
   end
else if Query_LSep.FieldbyName('P1TIPO').AsInteger=9 then  // emprestimo de mercadorias (vale)
   begin
   FPedEmiteNf(0,4,0,Query_LSep.FieldbyName('P1LOTSEQ').AsInteger,Query_LSep.FieldbyName('P1CHAVE').AsInteger
    ,Query_LSep.FieldbyName('P1ORDEM').AsInteger,Query_LSep.FieldbyName('P1CODEMP').AsInteger,0,
    Query_LSep.FieldbyName('P1FORMACE').AsInteger,false,false,true,1,iif(CB_MODORCAM.Checked,1,0),0); // lista emprestimo de mercadorias (Vale)
   if DM1.Tb_PargerPLVALEMOD02.AsInteger=1 then
      FPedEmiteNf(0,8,0,Query_LSep.FieldbyName('P1LOTSEQ').AsInteger,Query_LSep.FieldbyName('P1CHAVE').AsInteger
      ,Query_LSep.FieldbyName('P1ORDEM').AsInteger,Query_LSep.FieldbyName('P1CODEMP').AsInteger,0
      ,Query_LSep.FieldbyName('P1FORMACE').AsInteger,false,false,true,1,iif(CB_MODORCAM.Checked,1,0),0); // lista emprestimo de mercadorias (Vale)
      end
else // lista de separacao
   begin
   if DM1.Tb_PargerPLSEPSEP_ORDEM.AsInteger=1 then
      begin
      FPedEmiteNf(0,3,0,Query_LSep.FieldbyName('P1LOTSEQ').AsInteger,Query_LSep.FieldbyName('P1CHAVE').AsInteger
      ,Query_LSep.FieldbyName('P1ORDEM').AsInteger,Query_LSep.FieldbyName('P1CODEMP').AsInteger,0
      ,Query_LSep.FieldbyName('P1FORMACE').AsInteger,false,false,true,1,iif(CB_MODORCAM.Checked,1,0),0); // lista de separacao
      if DM1.Tb_PargerPLSEPMOD02.AsInteger=1 then
         FPedEmiteNf(0,5,0,Query_LSep.FieldbyName('P1LOTSEQ').AsInteger,Query_LSep.FieldbyName('P1CHAVE').AsInteger
         ,Query_LSep.FieldbyName('P1ORDEM').AsInteger,Query_LSep.FieldbyName('P1CODEMP').AsInteger,0
         ,Query_LSep.FieldbyName('P1FORMACE').AsInteger,false,false,true,1,iif(CB_MODORCAM.Checked,1,0),0); // lista de separacao
      end
   else
      begin
      if (pconsemp=false) then
         begin
{
         if not cb_ListaParc.Checked then
           begin
           FPedEmiteNf(0,3,0,Query_LSep.FieldbyName('P1LOTSEQ').AsInteger,Query_LSep.FieldbyName('P1CHAVE').AsInteger
           ,Query_LSep.FieldbyName('P1ORDEM').AsInteger,
           Query_LSep.FieldbyName('P1CODEMP').AsInteger,1,Query_LSep.FieldbyName('P1FORMACE').AsInteger,false,false,true,1,iif(CB_MODORCAM.Checked,1,0),0); // lista de separacao
           end
         else
           begin
}
           while not Query_LSep.Eof do
             begin
             FPedEmiteNf(0,3,0,Query_LSep.FieldbyName('P1LOTSEQ').AsInteger,Query_LSep.FieldbyName('P1CHAVE').AsInteger
             ,Query_LSep.FieldbyName('P1ORDEM').AsInteger,Query_LSep.FieldbyName('P1CODEMP').AsInteger,0
             ,Query_LSep.FieldbyName('P1FORMACE').AsInteger,false,false,true,1,iif(CB_MODORCAM.Checked,1,0),0); // lista de separacao
             Query_LSep.Next;
             end;
//           end;
         if DM1.Tb_PargerPLSEPMOD02.AsInteger=1 then
            FPedEmiteNf(0,5,0,Query_LSep.FieldbyName('P1LOTSEQ').AsInteger,
            Query_LSep.FieldbyName('P1CHAVE').AsInteger,Query_LSep.FieldbyName('P1ORDEM').AsInteger,
            Query_LSep.FieldbyName('P1CODEMP').AsInteger,1,
            Query_LSep.FieldbyName('P1FORMACE').AsInteger,false,false,true,1,iif(CB_MODORCAM.Checked,1,0),0); // lista de separacao
         end
      else
         begin
         while not Query_LSep.Eof do
            begin
            FPedEmiteNf(0,3,0,Query_LSep.FieldbyName('P1LOTSEQ').AsInteger,Query_LSep.FieldbyName('P1CHAVE').AsInteger
            ,Query_LSep.FieldbyName('P1ORDEM').AsInteger,Query_LSep.FieldbyName('P1CODEMP').AsInteger,0
            ,Query_LSep.FieldbyName('P1FORMACE').AsInteger,false,false,true,1,iif(CB_MODORCAM.Checked,1,0),0); // lista de separacao
            Query_LSep.Next;
            end;
         if DM1.Tb_PargerPLSEPMOD02.AsInteger=1 then
            FPedEmiteNf(0,5,0,Query_LSep.FieldbyName('P1LOTSEQ').AsInteger,
            Query_LSep.FieldbyName('P1CHAVE').AsInteger,Query_LSep.FieldbyName('P1ORDEM').AsInteger,
            Query_LSep.FieldbyName('P1CODEMP').AsInteger,1,
            Query_LSep.FieldbyName('P1FORMACE').AsInteger,false,false,true,1,iif(CB_MODORCAM.Checked,1,0),0); // lista de separacao
         end;
      end;
   mnivel:=1;
   end;
if mnivel=1 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQl.clear;
   DM1.Query1.Sql.add('Update CADP01 set P1STATUS='+iif(Query_LSep.FieldbyName('P1TIPO').AsInteger=0,'0','1')
                     +iif(Query_LSep.FieldbyName('P1TIPO').AsInteger=9,', P1EMIDOC=1, P1DATDOC=:DATDOC','')
                     +' ,P1QTDMAN=P1QTDMAN+1'
                     +' where '
                     +'(P1CODEMP=0'+IntToStr(codemp)+' or P1CODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp+100))+' )'
                     +' and P1LOTSEQ=0'+Query_LSep.FieldbyName('P1LOTSEQ').AsString
                     +' and P1CHAVE=0'+Query_LSep.FieldbyName('P1CHAVE').AsString
                     +' and P1STATUS=0');
   if Query_LSep.FieldbyName('P1TIPO').AsInteger=9 then
      DM1.Query1.ParambyName('DATDOC').AsDate := NOW;

   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,8291,'Frm_Ped_02','CADP01');
      end;
   end
else
   begin
   DM1.Query1.Close;
   DM1.Query1.SQl.clear;
   DM1.Query1.Sql.add('Update CADP01 set P1STATUS='+iif(Query_LSep.FieldbyName('P1TIPO').AsInteger=0,'0','1')
                     +iif(Query_LSep.FieldbyName('P1TIPO').asinteger=9,', P1EMIDOC=1, P1DATDOC=:DATDOC','')
                     +' ,P1QTDMAN=P1QTDMAN+1'
                     +' where P1CODEMP=0'+Query_LSep.FieldbyName('P1CODEMP').AsString
                     +' and P1LOTSEQ=0'+Query_LSep.FieldbyName('P1LOTSEQ').AsString
                     +' and P1CHAVE=0'+Query_LSep.FieldbyName('P1CHAVE').AsString
                     +' and P1ORDEM=0'+Query_LSep.FieldbyName('P1ORDEM').AsString
                     +' and P1STATUS=0');
   if Query_LSep.FieldbyName('P1TIPO').AsInteger=9 then
      DM1.Query1.ParambyName('DATDOC').AsDate := NOW;
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,8307,'Frm_Ped_02','CADP01');
      end;
   end;
Query_LSep.Close;
FreeandNil(Query_LSep);

end;

procedure TFrm_Venda_Pre_Farma.edt_coddigExit(Sender: TObject);
begin
if valint(edt_coddig.Text)=0 then
   edt_coddig.Text  := ''
else
   edt_coddig.Text  := fdeixanum2(edt_coddig.Text);
edt_nomdig.Text := '';
if trim(edt_coddig.Text) <> '' then
   begin
   if ValInt(edt_coddig.Text)=1111 then
      edt_nomdig.Text :='Programador'
   else
      begin
      if not flcadusr(1,0,edt_coddig.Text) then
         begin
         if edt_coddig.Enabled then
            begin
            verteclado(0);
            fMensagem('Usuário não Cadastrado!',0,['0'],0);
            edt_coddig.SetFocus;
            end;
         end
      else
         begin
         edt_nomdig.Text := DM4.Tb_UsrNOMUSR.Value;
         mVenda_GP.mPed1_CodUsr_Dig:=DM4.Tb_UsrCODUSR.AsInteger;
         end;
      end;
   end;

end;

procedure TFrm_Venda_Pre_Farma.edt_coddigKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_coddig.Text := fchamausr(0,'frm_venda_pre',key);
   edt_coddigExit(Self);
   key:=#0;
   end;
end;

procedure TFrm_Venda_Pre_Farma.edt_coddigChange(Sender: TObject);
begin

if (edt_coddig.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_codsepChange(Sender: TObject);
begin

if (edt_codsep.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_codsepExit(Sender: TObject);
begin
if valint(edt_codsep.Text)=0 then
   edt_codsep.Text  := ''
else
   edt_codsep.Text  := fdeixanum2(edt_codsep.Text);
edt_nomsep.Text := '';
if trim(edt_codsep.Text) <> '' then
   begin
   if not flcadusr(1,0,edt_codsep.Text) then
      begin
      if edt_codsep.Enabled then
         begin
         verteclado(0);
         fMensagem('Usuário não Cadastrado!',0,['0'],0);
         edt_codsep.SetFocus;
         end;
      end
   else
      begin
      edt_nomsep.Text := DM4.Tb_UsrNOMUSR.Value;
      mVenda_GP.mped1_codsep:=DM4.Tb_UsrCODUSR.AsInteger;
      end;
   end;

end;

procedure TFrm_Venda_Pre_Farma.edt_codsepKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codsep.Text := fchamausr(0,'frm_venda_pre',key);
   edt_codsepExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Venda_Pre_Farma.edt_codembKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codemb.Text := fchamausr(0,'frm_venda_pre',key);
   edt_codembExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Venda_Pre_Farma.edt_codembExit(Sender: TObject);
begin
if valint(edt_codemb.Text)=0 then
   edt_codemb.Text  := ''
else
   edt_codemb.Text  := fdeixanum2(edt_codemb.Text);
edt_nomemb.Text := '';
if trim(edt_codemb.Text) <> '' then
   begin
   if not flcadusr(1,0,edt_codemb.Text) then
      begin
      if edt_coddig.Enabled then
         begin
         verteclado(0);
         fMensagem('Usuário não Cadastrado!',0,['0'],0);
         edt_codemb.SetFocus;
         end;
      end
   else
      begin
      edt_nomemb.Text := DM4.Tb_UsrNOMUSR.Value;
      mVenda_GP.mped1_codemb:=DM4.Tb_UsrCODUSR.AsInteger;
      end;
   end;

end;

procedure TFrm_Venda_Pre_Farma.edt_codembChange(Sender: TObject);
begin
if (edt_codemb.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_codconfChange(Sender: TObject);
begin
if (edt_codconf.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_codconfExit(Sender: TObject);
begin
if valint(edt_codconf.Text)=0 then
   edt_codconf.Text  := ''
else
   edt_codconf.Text  := fdeixanum2(edt_codconf.Text);
edt_nomconf.Text := '';
if trim(edt_codconf.Text) <> '' then
   begin
   if not flcadusr(1,0,edt_codconf.Text) then
      begin
      if edt_coddig.Enabled then
         begin
         verteclado(0);
         fMensagem('Usuário não Cadastrado!',0,['0'],0);
         edt_codconf.SetFocus;
         end;
      end
   else
      begin
      edt_nomconf.Text := DM4.Tb_UsrNOMUSR.Value;
      mVenda_GP.mped1_codcon:=DM4.Tb_UsrCODUSR.AsInteger;
      end;
   end;

end;

procedure TFrm_Venda_Pre_Farma.edt_codconfKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codconf.Text := fchamausr(0,'frm_venda_pre',key);
   edt_codconfExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Venda_Pre_Farma.edt_codentKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codent.Text := fchamausr(0,'frm_venda_pre',key);
   edt_codentExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Venda_Pre_Farma.edt_codentExit(Sender: TObject);
begin
if valint(edt_codent.Text)=0 then
   edt_codent.Text  := ''
else
   edt_codent.Text  := fdeixanum2(edt_codent.Text);
edt_noment.Text := '';
if trim(edt_codent.Text) <> '' then
   begin
   if not flcadusr(1,0,edt_codent.Text) then
      begin
      if edt_coddig.Enabled then
         begin
         verteclado(0);
         fMensagem('Usuário não Cadastrado!',0,['0'],0);
         edt_codent.SetFocus;
         end;
      end
   else
      begin
      edt_noment.Text := DM4.Tb_UsrNOMUSR.Value;
      mVenda_GP.mped1_codent:=DM4.Tb_UsrCODUSR.AsInteger;
      end;
   end;


end;

procedure TFrm_Venda_Pre_Farma.edt_codentChange(Sender: TObject);
begin
if (edt_codent.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_datdigChange(Sender: TObject);
begin
if (edt_datdig.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_datsepChange(Sender: TObject);
begin
if (edt_datsep.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_datembChange(Sender: TObject);
begin
if (edt_datemb.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_datconfChange(Sender: TObject);
begin
if (edt_datconf.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_datentChange(Sender: TObject);
begin
if (edt_datent.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_hordigChange(Sender: TObject);
begin
if (edt_hordig.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_horsepChange(Sender: TObject);
begin
if (edt_horsep.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_horembChange(Sender: TObject);
begin
if (edt_horemb.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_horconfChange(Sender: TObject);
begin
if (edt_horconf.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_horentChange(Sender: TObject);
begin
if (edt_horent.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_datdigExit(Sender: TObject);
begin
if edt_datdig.Date>pdatanula then
   begin
   if edt_datdig.Date>Date then
      begin
      fmensagem('Data da digitação Não pode ser maior que '+FormatDatetime(fdt2, date),0,['0'],0);
      edt_datdig.SetFocus;
      end
   else if edt_datdig.Date>edt_datap.Date then
      begin
      fmensagem('Data da digitação Não pode ser menor que '+FormatDatetime(fdt2, edt_datap.date),0,['0'],0);
      edt_datdig.SetFocus;
      end
   else
      begin
      if fsonumero(edt_hordig.Text)=0 then
         edt_hordig.Text:=FormatDatetime('hh:nn', time);
      mVenda_GP.mPed1_DatHor_Dig:=StrtoDateTime(edt_datdig.text+' '+edt_hordig.Text+':00');
      end;

   end;
end;

procedure TFrm_Venda_Pre_Farma.edt_codtraEnter(Sender: TObject);
begin
mEventoPendente:='edt_codtra';


end;

procedure TFrm_Venda_Pre_Farma.edt_codtraChange(Sender: TObject);
begin
if (edt_codtra.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_codtraExit(Sender: TObject);
begin
if fsonumero(edt_codtra.Text)=0 then
   edt_codtra.Text:=''
else
   edt_codtra.Text:=fdeixanum(edt_codtra.Text);
if Trim(edt_codtra.Text)='' then
   exit;
if not flcadtra(1,0,edt_codtra.Text) then
   begin
   if edt_codtra.Enabled then
      begin
      verteclado(0);
      MessageDlg('trasnportadora não Cadastrado!',mtWarning,[mbOk],0);
      edt_codtra.SetFocus;
      exit;
      end;
   end;
edt_nomtra.Text:=DM1.Tb_TraTRRAZTRA.Value;
mVenda_GP.mPed1_CodTra:=DM1.Tb_TraTRCODTRA.AsInteger;
if Trim(cb_ufpv.Text)='' then
   begin
   mVenda_GP.mPed1_Tra_UFPV:=DM1.Tb_TraTRUFPV.AsString;
   cb_ufpv.Text:=mVenda_GP.mPed1_Tra_UFPV;
   end;

if Trim(edt_placav.Text)='' then
   begin
   mVenda_GP.mPed1_Tra_PLACAv:=DM1.Tb_TraTRPLACAV.AsString;
   edt_placav.Text:=mVenda_GP.mPed1_Tra_PLACAv;
   end;
end;

procedure TFrm_Venda_Pre_Farma.edt_codtraKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%') then
   begin
   edt_codtra.Text:=fChamatra(0,'_venda',key);
   edt_codtraExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Venda_Pre_Farma.cb_ufpvClick(Sender: TObject);
begin
if (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.cb_ufpvExit(Sender: TObject);
begin
if (cb_ufpv.ItemIndex<0) and (trim(cb_ufpv.Text)<>'') then
   begin
   with cb_ufpv do
      ItemIndex := Items.IndexOf(cb_ufpv.Text);
  end;
mVenda_GP.mPed1_Tra_UFPV:=cb_ufpv.Text;

end;

procedure TFrm_Venda_Pre_Farma.CB_FRETEPCClick(Sender: TObject);
begin
if (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.CB_FRETEPCExit(Sender: TObject);
begin
if (CB_FRETEPC.ItemIndex<0) and (trim(CB_FRETEPC.Text)<>'') then
   begin
   with CB_FRETEPC do
      ItemIndex := Items.IndexOf(CB_FRETEPC.Text);
  end;
mVenda_GP.mPed1_Frete_CIFFOB:=CB_FRETEPC.ItemIndex;
end;

procedure TFrm_Venda_Pre_Farma.edt_qtdvolChange(Sender: TObject);
begin
if (edt_qtdvol.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_qtdvolEnter(Sender: TObject);
begin
mEventoPendente:='edt_qtdvol';


end;

procedure TFrm_Venda_Pre_Farma.edt_qtdvolExit(Sender: TObject);
begin
edt_qtdvol.Text:=fDeixanum(edt_qtdvol.Text);
mVenda_GP.mPed1_QtdVol:=valint(edt_qtdvol.Text);

end;

procedure TFrm_Venda_Pre_Farma.edt_especieChange(Sender: TObject);
begin
if (edt_especie.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_especieEnter(Sender: TObject);
begin
mEventoPendente:='edt_especie';

end;

procedure TFrm_Venda_Pre_Farma.edt_especieExit(Sender: TObject);
begin
mVenda_GP.mPed1_Especie:=edt_especie.Text;


end;

procedure TFrm_Venda_Pre_Farma.edt_pesobChange(Sender: TObject);
begin
if (edt_pesob.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_pesobEnter(Sender: TObject);
begin
mEventoPendente:='edt_pesob';

end;

procedure TFrm_Venda_Pre_Farma.edt_pesobExit(Sender: TObject);
begin
edt_pesob.Text:=Formatfloat('#,##0.000', valfloat(edt_pesob.Text));
mVenda_GP.mPed1_PesoB:=valfloat(edt_pesob.Text);

end;

procedure TFrm_Venda_Pre_Farma.edt_pesolChange(Sender: TObject);
begin
if (edt_pesol.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_pesolEnter(Sender: TObject);
begin
mEventoPendente:='edt_pesol';


end;

procedure TFrm_Venda_Pre_Farma.edt_pesolExit(Sender: TObject);
begin
edt_pesol.Text:=Formatfloat('#,##0.000', valfloat(edt_pesol.Text));
mVenda_GP.mPed1_Pesol:=valfloat(edt_pesol.Text);

end;

procedure TFrm_Venda_Pre_Farma.edt_datsaiChange(Sender: TObject);
begin
if (edt_datsai.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_datsaiExit(Sender: TObject);
begin
if (edt_datsai.Date>pdatanula) then
   begin
   if ((edt_datsai.Date<Date) or (edt_datsai.Date>Date+360))  then
     begin
     if Application.MessageBox(pchar('Data de saida '+ FormatDatetime(fdt2, edt_datsai.Date)+' é uma data não esperada!, Quer continuar?'),'',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
        begin
        edt_datsai.SetFocus;
        exit;
        end;
     exit;
     end;
   end;

mVenda_GP.mped1_prevent:=edt_datsai.Date;


end;

procedure TFrm_Venda_Pre_Farma.edt_horsaiChange(Sender: TObject);
begin
if (edt_horsai.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

function tFrm_Venda_Pre_Farma.fChamaPesqPro(pCodSol: Integer; pFormOri,pCarDig: String): String;
{
Parametros
PCodSol: Solicitou o Seguinte Codigo: 0-Codigo do Produto
                                      1-Codigo de Barras
                                      2-Codigo do Produto+Lote

pFormOri = Formulario de Origem da Chamada
pCarDig  = Caractere Digitado
}

begin

  mla_lote    :='';
  mla_dtvcto  :='';
  result:='';

form_venda_pesqprod.pFilial:=mVenda_GP.mped1_Filial;
form_venda_pesqprod.pFilial_Desc:=CB_FILIAL.Text;

propesq_ori:=pFormOri;
if pCarDig<>'' then
   begin
   if (form_venda_pesqprod.CAMPO.ItemIndex=1) and (not ENumero(pCarDig)) then
      form_venda_pesqprod.CAMPO.ItemIndex:=0;
   form_venda_pesqprod.Edit1.Text:=PCarDig;
   form_venda_pesqprod.Edit1.SelStart:=1;
   form_venda_pesqprod.Edit1.SelLength:=1;
   end;
form_venda_pesqprod.parpp_acretodos:=mPv_Acrescimo;

if (form_venda_pesqprod.WindowState=wsNormal)
   and not (form_venda_pesqprod.Visible=True) then
if form_venda_pesqprod.ShowModal=mrOk then
   begin

   if pcodsol=0 then
      Result:=form_venda_pesqprod.Qr_ProPDCODPRO.AsString
   else if pcodsol=1 then
      Result:=form_venda_pesqprod.Qr_ProPDCODBAR.AsString
   else if pcodsol=3 then
      Result:=form_venda_pesqprod.Qr_ProPDMARCA.AsString
   else
      Result:=form_venda_pesqprod.Qr_ProPDCODPRO.AsString;
   end;
end;

procedure TFrm_Venda_Pre_Farma.edt_acrespuExit(Sender: TObject);
begin
if mVenda_GP.mPed1_Acrescimo<>valfloat(edt_acrespu.Text) then
  begin
  mVenda_GP.mPed1_Acrescimo:=ValFloat(edt_acrespu.Text);
  fAjustarItensPed(true);
  end;
edt_acrespu.Text:=FormatFloat(mcasas,ValFloat(edt_acrespu.Text));
end;

Function TFrm_Venda_Pre_Farma.fAjustarItensPed(pAjustarPU: Boolean): Boolean;
var
  mTabIcm,mCst,mCsoSN: String;
  mCsoSN_Ori: Integer;
begin
if (not Tb_ped02_pre.active) or  (sbnGravar.Enabled=false) or (Tb_ped02_pre.isEmpty) then
   begin
   result:=true;
   exit;
   end;
Tb_Ped02_pre.First;
While not Tb_Ped02_pre.Eof do
   begin
   form_venda_pesqprod.Qr_Pro.Filtered:=false;

   if not form_venda_pesqprod.flcadpro_Local(1,1,codemp,tb_ped02_preP2CODPRO.AsString,'','') then
      begin
      Tb_Ped02_pre.Next;
      Continue;
      end;
   Tb_Ped02_pre.Edit;
   if (pAjustarPU) and (form_venda_pesqprod.Qr_Propcoven.AsFloat<>0) then
       begin
       fPegarPrecoProd(0);
       end;

   tb_ped02_prePDNOME.Value :=form_venda_pesqprod.Qr_ProPDNOME.Value;
   tb_ped02_prePDMARCA.Value :=form_venda_pesqprod.Qr_ProPDMARCA.Value;

   tb_ped02_prePDUND.Value  :=form_venda_pesqprod.Qr_ProPDUND.Value;
   if mPed_UF_Cli=DM1.Tb_EmpUF.AsString then
      begin
      if mPed_Cli_ConsFin then
         begin
         mCst      :=form_venda_pesqprod.Qr_ProPDFIS_ORIGEM.Value+form_venda_pesqprod.Qr_ProPDFIS_CST_ICMS_EST_CF.AsString;
         mCsoSN_Ori:=valint(form_venda_pesqprod.Qr_ProPDFIS_ORIGEM.AsString);
         mCsoSN    :=form_venda_pesqprod.Qr_ProPDFIS_CSOSN_EST_CF.Value;
         end
      else
         begin
         mCst:=form_venda_pesqprod.Qr_ProPDFIS_ORIGEM.Value+form_venda_pesqprod.Qr_ProPDFIS_CST_ICMS_EST_REV.AsString;
         mCsoSN_Ori:=valint(form_venda_pesqprod.Qr_ProPDFIS_ORIGEM.AsString);
         mCsoSN    :=form_venda_pesqprod.Qr_ProPDFIS_CSOSN_EST_REV.Value;
         end;
      end
   else
      begin
      if mPed_Cli_ConsFin then
         begin
         mCst   := form_venda_pesqprod.Qr_ProPDFIS_ORIGEM.Value+form_venda_pesqprod.Qr_ProPDFIS_CST_ICMS_INT_CF.AsString;
         mCsoSN_Ori:=valint(form_venda_pesqprod.Qr_ProPDFIS_ORIGEM.AsString);
         mCsoSN    :=form_venda_pesqprod.Qr_ProPDFIS_CSOSN_INT_CF.Value;
         end
      else
         begin
         mCst   := form_venda_pesqprod.Qr_ProPDFIS_ORIGEM.Value+form_venda_pesqprod.Qr_ProPDFIS_CST_ICMS_INT_REV.AsString;
         mCsoSN_Ori:=valint(form_venda_pesqprod.Qr_ProPDFIS_ORIGEM.AsString);
         mCsoSN    :=form_venda_pesqprod.Qr_ProPDFIS_CSOSN_INT_REV.Value;
         end;
      end;
{   if mCst='010' then
      begin
      if (mPed_Cli_ST=False) then //and (mPed_Cli_icmsnr=true) then
        mcst:='000';
      end;}

      if (mPed_Cli_ST=False) then //and (mPed_Cli_icmsnr=true) then
        begin
        if mCst='010' then
          mcst:='000';
        if mCsoSN[1]='2' then
          mCsoSN:='1'+Copy(mCsoSN,2,2);
//        else if (mPed_Cli_ST=False) and (mPed_Cli_Repass=True) then
//          mcst='010';
        end
      else
        begin
        if mPed_Cli_icmsnr then
            mCsoSN:='900';
        end;


// INICIO


   if (not DM6.Tb_CLFISCAL_UF.Active) or (mPed_UF_Cli<>DM6.Tb_CLFISCAL_UFCFUF.AsString) then
      flcadclfiscal_uf(0,0,mPed_UF_Cli);

    if DM6.Tb_CLFISCAL_UF.Locate('CFCLAS_FISCAL',form_venda_pesqprod.Qr_ProPDCLAS.AsString,[]) then
       begin
       if (mPed_Cli_ConsFin) then
          begin
          if trim(DM6.Tb_CLFISCAL_UFCFCST_CF.AsString) <> '' then
             mCst := DM6.Tb_CLFISCAL_UFCFCST_CF.Value
          else
             mCst := DM6.Tb_CLFISCAL_UFCFCST_RV.Value;
          end
       else
          mCst   := DM6.Tb_CLFISCAL_UFCFCST_RV.Value;
       end;

// TERMINO



   if (mPed_Cli_MotDes>0) and (form_venda_pesqprod.Qr_ProPDDESICMS.AsInteger=1) then
     mCst := '040';

   Tb_Ped02_preP2CST.Value:=mCst;
   Tb_Ped02_preP2CSOSN_ORI.Value  :=mCsoSN_Ori;
   Tb_Ped02_preP2CSOSN.Value      :=valint(mCsoSN);
   Tb_Ped02_preP2CST_PIS.Value    :=form_venda_pesqprod.Qr_ProPDFIS_CST_PISCOF_SAIDA.AsString;
   Tb_Ped02_preP2PIS_PERC.Value      :=form_venda_pesqprod.Qr_ProPDFIS_PIS_ALIQ_SAIDA.AsFloat;
   Tb_Ped02_preP2CST_COFINS.Value :=form_venda_pesqprod.Qr_ProPDFIS_CST_PISCOF_SAIDA.AsString;
   Tb_Ped02_preP2COFINS_PERC.Value   :=form_venda_pesqprod.Qr_ProPDFIS_COFINS_ALIQ_SAIDA.AsFloat;
//   mCst:=copy(FormatFloat('000', valint(form_venda_pesqprod.Qr_ProPDSIT.Value)),2,1);
   mCst:=copy(FormatFloat('000', valint(mCst)),1,3);
//LUIZ FERNANDO
   mTabIcm:=form_venda_pesqprod.Qr_ProPDTABICM.AsString;
   if trim(mTabIcm)='' then
      mTabIcm:='A';

   if ValFloat(edt_submod.Text)=100 then
     begin
     if not cds_aliquotas.Locate('tipo_reg;al_tabicm',vararrayof([1,mTabIcm]),[]) then
        mTabIcm:='A';
     if not cds_aliquotas.Locate('tipo_reg;al_tabicm',vararrayof([1,mTabIcm]),[]) then
        begin
        verteclado(0);
        MessageDlg('Não foi encontrado os Registros de tributações!',mtWarning,[mbOk],0);
        DBGrid_itens.SetFocus;
        abort;
        end;
      end
   else
     begin
     if not cds_aliquotas.Locate('tipo_reg;al_tabicm',vararrayof([0,mTabIcm]),[]) then
        mTabIcm:='A';
     if not cds_aliquotas.Locate('tipo_reg;al_tabicm',vararrayof([0,mTabIcm]),[]) then
        begin
        verteclado(0);
        MessageDlg('Não foi encontrado os Registros de tributações!',mtWarning,[mbOk],0);
        DBGrid_itens.SetFocus;
        abort;
        end;
     end;


   tb_ped02_preP2ICMS_PERC.AsFloat  :=0;
   Tb_Ped02_preP2ICMS_DESPERC.AsFloat :=0;
   Tb_Ped02_preP2ALIQAPROXTRIB.AsFloat:=0;
   tb_ped02_preP2ICMS_PPRED.AsFloat :=0;
   tb_ped02_preP2ICMSSN_PERC.AsFloat:=0;
   tb_ped02_preP2ST_IVA.AsFloat     :=0;
   tb_ped02_preP2ST_REDUT.AsFloat   :=0;
   tb_ped02_preP2ST_ICMSCRED.AsFloat:=0;
   tb_ped02_preP2ST_ICMSDEB.AsFloat :=0;
   tb_ped02_preP2MODBCST.AsInteger  :=0;

   tb_ped02_preP2ICMSSN_PERC.AsFloat:=0;
   if ((mCst[2]='4') and (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [0,3]))
       or ((mCsoSN[1]='4') and (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1,2])) then
//       or ((mCsoSN[1]='5') and (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1,2])) then
      begin
      tb_ped02_preP2ICMSSN_PERC.AsFloat:=cds_aliquotasal_credsn.AsFloat;
//      if ((Tb_Ped02_preP2CONS_PROPRIO.AsInteger=1) or (form_venda_pesqprod.Qr_ProPDNIVEL.AsInteger=0)) then
      if ((form_venda_pesqprod.Qr_ProPDNIVEL.AsInteger=0) or (form_venda_pesqprod.Qr_ProPDNIVEL.AsInteger=1) or
         (mPed_Cli_ConsFin)) then
        tb_ped02_preP2CFOP_NF.Value:=cds_aliquotasCfo_Indus_Isento.AsInteger
      else
        tb_ped02_preP2CFOP_NF.Value:=cds_aliquotasCfo_rev_Isento.AsInteger;
      Tb_Ped02_preP2CFOP_ECF.Value:=cds_aliquotasCfo_SubEcf_Isento.AsInteger;
      tb_ped02_preP2ICMS_PERC.AsFloat  :=0;
      Tb_Ped02_preP2ICMS_DESPERC.AsFloat :=0;
      end
   else if ((mCst[2]='6') and (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [0,3]))
       or ((mCsoSN[1] = '5') and (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1,2])) then
//       or ((mCsoSN[1]='5') and (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1,2])) then
      begin
      tb_ped02_preP2ICMSSN_PERC.AsFloat:=cds_aliquotasal_credsn.AsFloat;
//      if ((Tb_Ped02_preP2CONS_PROPRIO.AsInteger=1) or (form_venda_pesqprod.Qr_ProPDNIVEL.AsInteger=0)) then
      if ((form_venda_pesqprod.Qr_ProPDNIVEL.AsInteger=0) or (form_venda_pesqprod.Qr_ProPDNIVEL.AsInteger=1) or
        (mPed_Cli_ConsFin)) then
        tb_ped02_preP2CFOP_NF.Value:=cds_aliquotasCfo_Indus_Ret.AsInteger
      else
        tb_ped02_preP2CFOP_NF.Value:=cds_aliquotasCfo_rev_Ret.AsInteger;
      Tb_Ped02_preP2CFOP_ECF.Value:=cds_aliquotasCfo_SubEcf_Ret.AsInteger;
      tb_ped02_preP2ICMS_PERC.AsFloat  :=0;
      Tb_Ped02_preP2ICMS_DESPERC.AsFloat :=0;
      end

//   else if (mcst[1] in ['1','6','3','7']) then
   else if ((mcst[2] in ['1','3','7']) and (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [0,3]))
    or ((mCsoSN[1] in ['2','9']) and (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1,2])) then
      begin
//      if ((Tb_Ped02_preP2CONS_PROPRIO.AsInteger=1) or (form_venda_pesqprod.Qr_ProPDNIVEL.AsInteger=0)) then
      if ((form_venda_pesqprod.Qr_ProPDNIVEL.AsInteger=0) or (form_venda_pesqprod.Qr_ProPDNIVEL.AsInteger=1) or (mPed_Cli_ConsFin)) then
        tb_ped02_preP2CFOP_NF.Value:=cds_aliquotasCfo_Indus_Ret.AsInteger
      else
        tb_ped02_preP2CFOP_NF.Value:=cds_aliquotasCfo_rev_Ret.AsInteger;
      tb_ped02_preP2CFOP_ECF.Value:=cds_aliquotasCfo_SubEcf_Ret.AsInteger;

      Tb_Ped02_preP2ST_ICMSCRED.AsFloat  :=cds_aliquotasal_stIcmsCred.AsFloat;
      Tb_Ped02_preP2ST_ICMSDEB.AsFloat   :=cds_aliquotasal_stIcmsDeb.AsFloat;
      if form_venda_pesqprod.Qr_ProPDLISTA.AsInteger=2 then
         tb_ped02_preP2ST_IVA.AsFloat    :=cds_aliquotasal_stIVA_Neg.AsFloat
      else if form_venda_pesqprod.Qr_ProPDLISTA.AsInteger=1 then
         tb_ped02_preP2ST_IVA.AsFloat    :=cds_aliquotasal_stIVA_Pos.AsFloat
      else if form_venda_pesqprod.Qr_ProPDLISTA.AsInteger=0 then
         tb_ped02_preP2ST_IVA.AsFloat    :=cds_aliquotasal_stIVA_Ina.AsFloat;
      tb_ped02_preP2MODBCST.AsInteger    :=cds_aliquotasmodBcST.AsInteger;
       Tb_Ped02_preP2ST_REDUT.AsFloat   :=cds_aliquotasal_stAliqRed.AsFloat;
      if (mCsoSN[1]='9') or (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [0,3]) then
        begin
        tb_ped02_preP2ICMS_PERC.AsFloat  :=cds_aliquotasal_IcmsTrib.AsInteger;
        end;
      end
   else
      begin
//      tb_ped02_preP2CFOP_NF.Value:=cds_aliquotasCfo_rev_Trib.AsInteger;
//       if ((Tb_Ped02_preP2CONS_PROPRIO.AsInteger=1) or (form_venda_pesqprod.Qr_ProPDNIVEL.AsInteger=0)) then
      if ((form_venda_pesqprod.Qr_ProPDNIVEL.AsInteger=0) or (form_venda_pesqprod.Qr_ProPDNIVEL.AsInteger=1) or (mPed_Cli_ConsFin)) then
         Tb_Ped02_preP2CFOP_NF.AsString        :=cds_aliquotasCfo_Indus_Trib.AsString
       else
         Tb_Ped02_preP2CFOP_NF.AsString        :=cds_aliquotasCfo_rev_Trib.AsString;



      tb_ped02_preP2CFOP_ECF.Value:=cds_aliquotasCfo_SubEcf_Trib.AsInteger;
      tb_ped02_preP2ICMS_PERC.AsFloat  :=cds_aliquotasal_IcmsTrib.AsInteger;
      if mPed_UF_Cli=DM1.Tb_EmpUF.AsString then
         begin
         if form_venda_pesqprod.Qr_ProPDFIS_PRED_ICMS_EST.AsFloat>0 then
            tb_ped02_preP2ICMS_PPRED.AsFloat :=form_venda_pesqprod.Qr_ProPDFIS_PRED_ICMS_EST.AsFloat
         else if cds_aliquotasal_aliqredut.AsFloat>0 then
            tb_ped02_preP2ICMS_PPRED.AsFloat :=cds_aliquotasal_aliqredut.AsFloat
         end
      else
         begin
         if form_venda_pesqprod.Qr_ProPDFIS_PRED_ICMS_INT.AsFloat>0 then
            tb_ped02_preP2ICMS_PPRED.AsFloat :=form_venda_pesqprod.Qr_ProPDFIS_PRED_ICMS_INT.AsFloat
         else if cds_aliquotasal_aliqredut.AsFloat>0 then
            tb_ped02_preP2ICMS_PPRED.AsFloat :=cds_aliquotasal_aliqredut.AsFloat;

         end;
      if ((Tb_Ped02_preP2ICMS_PPRED.AsFloat>0) and (not (mcst[2] in ['2','7'])))  then
         Tb_Ped02_preP2ICMS_PPRED.AsFloat:=0;
      if not mPed_Cli_REDICMSNOR then
         Tb_Ped02_preP2ICMS_PPRED.AsFloat:=0;

//         ver reducao
      end;
   if (Tb_Ped02_preP2ST_ICMSDEB.AsFloat>0) and
     ( (tb_ped02_preP2MODBCST.AsInteger=0) or
       (tb_ped02_preP2MODBCST.AsInteger=5) )
//       and (mcst[1] in ['1','6','3','7']) then
       and ((mcst[2] in ['1','3','7']) or ( mCsoSN[1] in ['2','9'])) then
      begin
      if form_venda_pesqprod.Qr_ProPDPMC.AsFloat=0 then
         begin
{
         verteclado(0);
         MessageDlg('o Produto '+form_venda_pesqprod.Qr_ProPDCODPRO.AsString+'-'+form_venda_pesqprod.Qr_ProPDNOME.AsString
                  +' Não Possui o PMC/Pauta ST, entre no cadastro de Produto e coloque!',mtWarning,[mbOk],0);
}         end
      else
         tb_ped02_preP2PRECO_MAXCONS.AsFloat:=form_venda_pesqprod.Qr_ProPDPMC.AsFloat;
      end;

  if (Tb_Ped02_preP2ICMS_PERC.AsFloat=0) and ((mCst[2]='2') and (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [0,3])) then
      Tb_Ped02_preP2CST.Value:=copy(Tb_Ped02_preP2CST.Value,1,1)+'0'+copy(Tb_Ped02_preP2CST.Value,3,1);

   if (tb_ped02_preP2QTD.AsFloat>0) and (tb_ped02_preP2PRECO.AsFloat>0) then
      tb_ped02_preVALOR_TOTAL.AsFloat:=tb_ped02_preP2QTD.AsFloat*tb_ped02_preP2PRECO.AsFloat
   else
      tb_ped02_preVALOR_TOTAL.AsFloat:=0;
   Tb_Ped02_pre.Post;

   Tb_Ped02_pre.Next;
   end;
result:=true;
fGravarPed01(0);
end;


procedure TFrm_Venda_Pre_Farma.cb_tppcoClick(Sender: TObject);
begin
if not mlocalizando_pedido then
   mVenda_GP.mped1_tppco:=cb_tppco.ItemIndex;
{
if cb_tppco.ItemIndex=2 then
   begin
   DBGrid_itens.Columns[9].ReadOnly:=false;
   end
else
   begin
   DBGrid_itens.Columns[9].ReadOnly:=true;
   end;
}
end;

procedure TFrm_Venda_Pre_Farma.CB_CASASDClick(Sender: TObject);
begin
if CB_CASASD.ItemIndex<1 then
   mVenda_GP.mPed1_QtdDec:=DM1.Tb_PargerPCASASPU.AsInteger
else
   mVenda_GP.mPed1_QtdDec:=CB_CASASD.ItemIndex+1;
if mVenda_GP.mPed1_QtdDec<1 then
   mPed1_DFCasasPU:='#,##0'
else
   mPed1_DFCasasPU:='#,##0.'+insere('0','0',mVenda_GP.mPed1_QtdDec);


Tb_Ped02_preP2PRECO.DisplayFormat:=mPed1_DFCasasPU;

//fGravarPed01(0);

{
   begin
   mVenda_GP.mPed1_QtdDec        :=DM1.Query2.FieldByName('P1QTDDECPU').AsInteger;


Padrao(default do Sistema)
2 duas
3 tres
4 quatro
5 cinco
6 seis
7 sete
8 oito
9 nove
}
end;

function tFrm_Venda_Pre_Farma.fPegarPrecoProd(pTipo: Integer): Boolean;
var
mdtreaj: TDateTime;
begin
if form_venda_pesqprod.Qr_ProPDCODPRO.AsFloat<>ValFloat(Tb_Ped02_preP2CODPRO.AsString) then
   form_venda_pesqprod.flcadpro_Local(1,1,codemp,tb_ped02_preP2CODPRO.AsString,'','');

Tb_Ped02_preP2PRECO_UCPR.AsFloat   :=form_venda_pesqprod.Qr_ProPDUCPR.AsFloat;
Tb_Ped02_preP2PRECO_CUS.AsFloat    :=form_venda_pesqprod.Qr_ProPDPRECOC.AsFloat;

if(mPed_Cli_PCOPRAT=0) then
  begin
  if (mVenda_GP.mped1_tppco=1) then // preco anterior
    begin
    if (mVenda_GP.mPed1_Tabela='3') or (Tb_Ped02_preP2TIPO_PCO.AsInteger=3)  then
      begin
      if mdtreaj>=DM1.Tb_ProPDDTUATP3.Value then
        begin
        Tb_Ped02_preP2PRECO.AsFloat        :=form_venda_pesqprod.Qr_ProPDPRECOA3.AsFloat;
        Tb_Ped02_preP2PRECO_TAB.AsFloat    :=form_venda_pesqprod.Qr_ProPDPRECOA3.AsFloat;
        end
      else
        begin
        Tb_Ped02_preP2PRECO.AsFloat        :=form_venda_pesqprod.Qr_ProPDPRECO3.AsFloat;
        Tb_Ped02_preP2PRECO_TAB.AsFloat    :=form_venda_pesqprod.Qr_ProPDPRECO3.AsFloat;
        end;
      Tb_Ped02_preP2PRECO_MAXCONS.AsFloat:=form_venda_pesqprod.Qr_ProPDPMC03.AsFloat;
      end
    else if (mVenda_GP.mPed1_Tabela='2') or (Tb_Ped02_preP2TIPO_PCO.AsInteger=2)  then
       begin
      if mdtreaj>=DM1.Tb_ProPDDTUATP2.Value then
        begin
        Tb_Ped02_preP2PRECO.AsFloat        :=form_venda_pesqprod.Qr_ProPDPRECOA2.AsFloat;
        Tb_Ped02_preP2PRECO_TAB.AsFloat    :=form_venda_pesqprod.Qr_ProPDPRECOA2.AsFloat;
        end
      else
        begin
        Tb_Ped02_preP2PRECO.AsFloat        :=form_venda_pesqprod.Qr_ProPDPRECO2.AsFloat;
        Tb_Ped02_preP2PRECO_TAB.AsFloat    :=form_venda_pesqprod.Qr_ProPDPRECO2.AsFloat;
        end;
      Tb_Ped02_preP2PRECO_MAXCONS.AsFloat:=form_venda_pesqprod.Qr_ProPDPMC02.AsFloat;
      end
    else
      begin
      if mdtreaj>=DM1.Tb_ProPDDTUATP1.Value then
        begin
        Tb_Ped02_preP2PRECO.AsFloat        :=form_venda_pesqprod.Qr_ProPDPRECOA1.AsFloat;
        Tb_Ped02_preP2PRECO_TAB.AsFloat    :=form_venda_pesqprod.Qr_ProPDPRECOA1.AsFloat;
        end
      else
        begin
///      Tb_Ped02_preP2PRECO.AsFloat        :=form_venda_pesqprod.Qr_ProPDPRECO1.AsFloat;
        if form_venda_pesqprod.Qr_ProPDPMC.AsFloat=0 then
           Tb_Ped02_preP2PRECO.AsFloat        :=form_venda_pesqprod.Qr_ProPDPRECO1.AsFloat
        else
           Tb_Ped02_preP2PRECO.AsFloat        :=form_venda_pesqprod.Qr_ProPDPMC.AsFloat;
        Tb_Ped02_preP2PRECO_TAB.AsFloat       :=Tb_Ped02_preP2PRECO.AsFloat;
        end;
      Tb_Ped02_preP2PRECO_MAXCONS.AsFloat:=form_venda_pesqprod.Qr_ProPDPMC.AsFloat;
      end;
    end
  else if mVenda_GP.mped1_tppco=4 then
    begin
    Tb_Ped02_preP2PRECO.AsFloat        :=form_venda_pesqprod.Qr_ProPDPRECOC.AsFloat;
    Tb_Ped02_preP2PRECO_TAB.AsFloat    :=form_venda_pesqprod.Qr_ProPDPMC.AsFloat;
    Tb_Ped02_preP2PRECO_MAXCONS.AsFloat:=form_venda_pesqprod.Qr_ProPDPMC.AsFloat;
    end
  else if mVenda_GP.mped1_tppco=5 then
    begin
    Tb_Ped02_preP2PRECO.AsFloat        :=form_venda_pesqprod.Qr_ProPDPCOFAB.AsFloat;
     if form_venda_pesqprod.Qr_ProPDPMC.AsFloat=0 then
        Tb_Ped02_preP2PRECO_TAB.AsFloat        :=form_venda_pesqprod.Qr_ProPDPRECO1.AsFloat
     else
        Tb_Ped02_preP2PRECO_TAB.AsFloat        :=form_venda_pesqprod.Qr_ProPDPMC.AsFloat;
    Tb_Ped02_preP2PRECO_MAXCONS.AsFloat:=Tb_Ped02_preP2PRECO_TAB.AsFloat;
    end
  else
    begin
    if (mVenda_GP.mPed1_Tabela='3') or (Tb_Ped02_preP2TIPO_PCO.AsInteger=3)  then
      begin
      Tb_Ped02_preP2PRECO.AsFloat        :=form_venda_pesqprod.Qr_ProPDPRECO3.AsFloat;
      Tb_Ped02_preP2PRECO_TAB.AsFloat    :=form_venda_pesqprod.Qr_ProPDPRECO3.AsFloat;
      Tb_Ped02_preP2PRECO_MAXCONS.AsFloat:=form_venda_pesqprod.Qr_ProPDPMC03.AsFloat;
      end
    else if (mVenda_GP.mPed1_Tabela='2') or (Tb_Ped02_preP2TIPO_PCO.AsInteger=2)  then
      begin
      Tb_Ped02_preP2PRECO.AsFloat        :=form_venda_pesqprod.Qr_ProPDPRECO2.AsFloat;
      Tb_Ped02_preP2PRECO_TAB.AsFloat    :=form_venda_pesqprod.Qr_ProPDPRECO2.AsFloat;
      Tb_Ped02_preP2PRECO_MAXCONS.AsFloat:=form_venda_pesqprod.Qr_ProPDPMC02.AsFloat;
      end
    else
      begin
      if (Tb_Ped02_PreP2PRECO.Asfloat>0) and (form_venda_pesqprod.Qr_ProPDPRECO1.AsFloat=0) then
        Tb_Ped02_preP2PRECO.AsFloat        :=Tb_Ped02_preP2PRECO.AsFloat
      else
        Tb_Ped02_preP2PRECO.AsFloat        :=form_venda_pesqprod.Qr_ProPDPMC.AsFloat;
///        Tb_Ped02_preP2PRECO.AsFloat        :=form_venda_pesqprod.Qr_ProPDPRECO1.AsFloat;
      Tb_Ped02_preP2PRECO_TAB.AsFloat    :=form_venda_pesqprod.Qr_ProPDPMC.AsFloat;
      Tb_Ped02_preP2PRECO_MAXCONS.AsFloat:=form_venda_pesqprod.Qr_ProPDPMC.AsFloat;
      end;
    end;
  end
else if (mPed_Cli_PCOPRAT=1) or ((Tb_Ped02_preP2TIPO_PCO.AsInteger<2) and (DM1.Tb_PargerPDQPCOP.AsInteger=4)) then
   begin
  Tb_Ped02_preP2PRECO.AsFloat        :=form_venda_pesqprod.Qr_ProPDPRECO1.AsFloat;
//  Tb_Ped02_preP2PRECO.AsFloat        :=form_venda_pesqprod.Qr_ProPDPMC.AsFloat;
  Tb_Ped02_preP2PRECO_TAB.AsFloat    :=form_venda_pesqprod.Qr_ProPDPMC.AsFloat;
  Tb_Ped02_preP2PRECO_MAXCONS.AsFloat:=form_venda_pesqprod.Qr_ProPDPMC.AsFloat;
  end
else if (mPed_Cli_PCOPRAT=2) or ((Tb_Ped02_preP2TIPO_PCO.AsInteger=2) and (DM1.Tb_PargerPDQPCOP.AsInteger=4)) then

  begin
  Tb_Ped02_preP2PRECO.AsFloat        :=form_venda_pesqprod.Qr_ProPDPRECO2.AsFloat;
  Tb_Ped02_preP2PRECO_TAB.AsFloat    :=form_venda_pesqprod.Qr_ProPDPRECO2.AsFloat;
  Tb_Ped02_preP2PRECO_MAXCONS.AsFloat:=form_venda_pesqprod.Qr_ProPDPMC02.AsFloat;
  end
else if (mPed_Cli_PCOPRAT=3) or ((Tb_Ped02_preP2TIPO_PCO.AsInteger=3) and (DM1.Tb_PargerPDQPCOP.AsInteger=4)) then
  begin
  Tb_Ped02_preP2PRECO.AsFloat        :=form_venda_pesqprod.Qr_ProPDPRECO3.AsFloat;
  Tb_Ped02_preP2PRECO_TAB.AsFloat    :=form_venda_pesqprod.Qr_ProPDPRECO3.AsFloat;
  Tb_Ped02_preP2PRECO_MAXCONS.AsFloat:=form_venda_pesqprod.Qr_ProPDPMC03.AsFloat;
  end;

if flqrppr(0,0,0,1,'',Tb_Ped02_preP2CODPRO.AsString,mVenda_GP.mPed1_TabPV,inttostr(mVenda_GP.mPed1_CodPV),FloatToStr(mPed_Cli_CodRed),pdatasis,mPed_Cli_CRota) then
  begin
  if ((DM2.Qr_PPR.RecordCount > 1) or (DM2.Qr_PPRPPCONFVDA.Value = 'S')) then
    begin
    Application.Createform(TFrm_PromVal, form_PromVal_ped_02);
    form_PromVal_ped_02.FormStyle:=fsNormal;
    form_PromVal_ped_02.Visible:=false;
    fAtualizaForm(0);
    if form_PromVal_ped_02.ShowModal=mrok then
      begin
      if flqrppr(0,0,0,1,promval_antes,Tb_Ped02_preP2CODPRO.AsString,mVenda_GP.mPed1_TabPV,inttostr(mVenda_GP.mPed1_CodPV),FloatToStr(mPed_Cli_CodRed),pdatasis,mPed_Cli_CRota) then
        begin
        if (Tb_Ped02_preP2QTD.AsFloat >= DM2.Qr_PPRPPQTDMIN.AsFloat) or (Tb_Ped02_preP2QTD.AsFloat = 0) then
          begin
          //mPromo_pRet_PCOFPG   := pRet_PCOFPG;
          //mSemPromo_pRet_PCOFPG:= pRet_PCOFPG;


          Tb_Ped02_preP2DESCPR.AsFloat:=Arredonda((1-DM2.Qr_PPRPPPCOVDA.Value/Tb_Ped02_preP2PRECO.AsFloat)+(DM2.Qr_PPRPPDESC_1.Value/100*DM2.Qr_PPRPPPCOVDA.Value/Tb_Ped02_preP2PRECO.AsFloat),5);
          Tb_Ped02_preP2DESC_PERC01.AsFloat := DM2.Qr_PPRPPDESC_1.Value;
          Tb_Ped02_preP2PROMOCAO.AsString   := DM2.Qr_PPRPPPROMOCAO.Value;

          if DM2.Qr_PPRPPPCOVDA.Value > 0 then
            begin
            Tb_Ped02_preP2PRECO.AsFloat   :=  Arredonda(DM2.Qr_PPRPPPCOVDA.Value+(DM2.Qr_PPRPPPCOVDA.AsFloat*par_acretodos/100),trunc(mVenda_GP.mPed1_QtdDec));
            end;
//          Tb_Ped02_preP2DESCPR.AsFloat  := DM2.Qr_PPRPPDESC_1.Value;


          //pRet_DescI01p  := DM2.Qr_PPRPPDESC_1.Value;
          //pRet_DescI02p  := DM2.Qr_PPRPPDESC_2.Value;
          //pRet_DescI03p  := DM2.Qr_PPRPPDESC_3.Value;

          if DM2.Qr_PPRPPDESC_F.AsFloat > 0 then
            Tb_Ped02_preP2DESCFIN_PERC.AsFloat := DM2.Qr_PPRPPDESC_F.Value;

          //if DM2.Qr_PPRPPCOMIS.Value > 0 then
          //  pRet_PComV01   := DM2.Qr_PPRPPCOMIS.Value;

          if Tb_Ped02_preP2PROMOCAO.AsString = '' then
            Tb_Ped02_preP2PROMOCAO.AsString := promval_antes;

         { if DM2.Qr_PPRPPPCOVDA.Value > 0 then
            begin
            pRet_PCOFPG     :=   Arredonda((DM2.Qr_PPRPPPCOVDA.Value+(DM2.Qr_PPRPPPCOVDA.AsFloat*par_acretodos/100)),trunc(mVenda_GP.mPed1_QtdDec));
            end;
          if (pRet_DescI01>0) or (pRet_DescI02>0) or (pRet_DescI03>0) then
            begin
            mPrecoTemp:=pRet_PCOFPG;
            if (pRet_DescI01>0) then
              mPrecoTemp:=mPrecoTemp-(Arredonda( (mPrecoTemp*pRet_DescI01/100) ,2));
            if (pRet_DescI02>0) then
              mPrecoTemp:=mPrecoTemp-(Arredonda( (mPrecoTemp*pRet_DescI02/100) ,2));
            if (pRet_DescI03>0) then
              mPrecoTemp:=mPrecoTemp-(Arredonda( (mPrecoTemp*pRet_DescI03/100) ,2));
            pRet_PCOFPG:=mPrecoTemp;
            end;
          pRet_PcoTab:=pRet_PCOFPG;
          mPromo_pRet_PCOFPG   :=pRet_PCOFPG;}
          end
        else
          begin
//          if (not mpd_RestaurandoPedido) and (mAceita_pergunta) then
            fmensagem('Quantidade Pedida menor que Quantidade Minima da Promocao '+#13
                     +'Minima aceita para promocao: '+FormatFloat(mcasqtd, DM2.Qr_PPRPPQTDMIN.AsFloat)
                     ,0,['0'],0);
          end;
        end;
      end;
    form_PromVal_ped_02.Free;
    form_PromVal_ped_02 := nil;
    end
  else
    begin
    if (Tb_Ped02_preP2QTD.AsFloat >= DM2.Qr_PPRPPQTDMIN.AsFloat) or (Tb_Ped02_preP2QTD.AsFloat = 0) then
       begin
        Tb_Ped02_preP2PROMOCAO.AsString := DM2.Qr_PPRPPPROMOCAO.Value;
        Tb_Ped02_preP2DESCPR.AsFloat:=Arredonda((1-DM2.Qr_PPRPPPCOVDA.Value/Tb_Ped02_preP2PRECO.AsFloat)+(DM2.Qr_PPRPPDESC_1.Value/100*DM2.Qr_PPRPPPCOVDA.Value/Tb_Ped02_preP2PRECO.AsFloat),4);
        Tb_Ped02_preP2DESC_PERC01.AsFloat := DM2.Qr_PPRPPDESC_1.Value;
        if DM2.Qr_PPRPPPCOVDA.Value > 0 then
           begin
           Tb_Ped02_preP2PRECO.AsFloat   :=  Arredonda(DM2.Qr_PPRPPPCOVDA.Value+(DM2.Qr_PPRPPPCOVDA.AsFloat*par_acretodos/100),trunc(mVenda_GP.mPed1_QtdDec));
           end;


       if DM2.Qr_PPRPPDESC_F.AsFloat > 0 then
         Tb_Ped02_preP2DESCFIN_PERC.AsFloat := DM2.Qr_PPRPPDESC_F.Value;

          //if DM2.Qr_PPRPPCOMIS.Value > 0 then
          //  pRet_PComV01   := DM2.Qr_PPRPPCOMIS.Value;

          if Tb_Ped02_preP2PROMOCAO.AsString = '' then
            Tb_Ped02_preP2PROMOCAO.AsString := promval_antes;

         { if DM2.Qr_PPRPPPCOVDA.Value > 0 then
            begin
            pRet_PCOFPG     :=   Arredonda((DM2.Qr_PPRPPPCOVDA.Value+(DM2.Qr_PPRPPPCOVDA.AsFloat*par_acretodos/100)),trunc(mVenda_GP.mPed1_QtdDec));
            end;
          if (pRet_DescI01>0) or (pRet_DescI02>0) or (pRet_DescI03>0) then
            begin
            mPrecoTemp:=pRet_PCOFPG;
            if (pRet_DescI01>0) then
              mPrecoTemp:=mPrecoTemp-(Arredonda( (mPrecoTemp*pRet_DescI01/100) ,2));
            if (pRet_DescI02>0) then
              mPrecoTemp:=mPrecoTemp-(Arredonda( (mPrecoTemp*pRet_DescI02/100) ,2));
            if (pRet_DescI03>0) then
              mPrecoTemp:=mPrecoTemp-(Arredonda( (mPrecoTemp*pRet_DescI03/100) ,2));
            pRet_PCOFPG:=mPrecoTemp;
            end;
          pRet_PcoTab:=pRet_PCOFPG;
          mPromo_pRet_PCOFPG   :=pRet_PCOFPG;}
        end;
     end;
   end;

Tb_Ped02_preP2DESC_PERC01.Value:= (((Tb_Ped02_preP2PRECO_TAB.AsFloat-tb_Ped02_preP2PRECO.AsFloat)*100) / (Tb_Ped02_preP2PRECO_TAB.AsFloat));

if (mVenda_GP.mped1_tppco=3) then // preco liquodo
   Tb_Ped02_preP2PRECO.AsFloat:=fpcoliq(0,Tb_Ped02_preP2PRECO_TAB.AsFloat
                               ,Tb_Ped02_preP2DESC_PERC01.AsFloat
                               ,Tb_Ped02_preP2DESC_PERC02.AsFloat
                               ,Tb_Ped02_preP2DESC_PERC03.AsFloat);


Tb_Ped02_preP2PRECO.AsFloat:=Arredonda(Tb_Ped02_preP2PRECO.AsFloat*(1+mPv_Acrescimo/100),mVenda_GP.mPed1_QtdDec);
//Tb_Ped02_preP2PRECO.AsFloat:=Arredonda(Tb_Ped02_preP2PRECO.AsFloat*(1+mVenda_GP.mPed1_Acrescimo/100),mVenda_GP.mPed1_QtdDec);
Tb_Ped02_preP2PRECO.AsFloat:=Arredonda(Tb_Ped02_preP2PRECO.AsFloat/(1-mVenda_GP.mPed1_Acrescimo/100),mVenda_GP.mPed1_QtdDec);
end;


function TFrm_Venda_Pre_Farma.fpcoliq(ptipo: Integer; pPreco, pDesc01, pDesc02,pDesc03: Real): Real;
var
preco: Real;
begin
if ptipo=0 then
   begin
   preco:=ppreco-(ppreco*pdesc01/100);
   preco:=preco -(preco*pDesc02/100);
   preco:=preco -(preco*pDesc03/100)
   end
else
   begin
   preco:=ppreco-(ppreco*pdesc01/100);
   preco:=preco -(preco*pDesc02/100);
   preco:=preco -(preco*pDesc03/100)
   end;
preco:=Arredonda(preco,mVenda_GP.mPed1_QtdDec);
Result:=Preco;
end;


procedure TFrm_Venda_Pre_Farma.sbnCalcularClick(Sender: TObject);
begin
verteclado(0);
if Application.MessageBox('Quer Realmente Calcular o Pedido?','',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
//if cb_tppco.ItemIndex=2 then
 fAjustarItensPed(false);
//else
// fAjustarItensPed(true);
end;

procedure TFrm_Venda_Pre_Farma.bbAltFPagClick(Sender: TObject);
var
Query_FPag: TQuery;
Query_totped: TQuery;

begin
if not sbnGravar.Enabled then
   exit;


Self.Perform(WM_NEXTDLGCTL,0,0);
mfp_altvalor:=false;

if mped_Alterou_Cab then
   begin
   mVenda_GP.mped1_submod_grav:=0;
   if mVenda_GP.mped1_submod=100 then
      begin
      mVenda_GP.mped1_submod_grav:=100;
      if codemp>100 then
         mVenda_GP.fGravarPed01(1,-100)
      else
         mVenda_GP.fGravarPed01(1,100);
      end
   else
      begin
      if mVenda_GP.mped1_submod>0 then
         mVenda_GP.mped1_submod_grav:=100-mVenda_GP.mped1_submod;
      mVenda_GP.fGravarPed01(1,0);
      end;
   if (mVenda_GP.mped1_submod>0) and (mVenda_GP.mped1_submod<100) then
      begin
      mVenda_GP.mped1_submod_grav:=mVenda_GP.mped1_submod;
      if codemp>100 then
         mVenda_GP.fGravarPed01(1,-100)
      else
         mVenda_GP.fGravarPed01(1,100);
      end;
   fRecalcularPedido(3);
   end;

   mped_Alterou_Cab:=false;

Query_FPag:=TQuery.Create(nil);
Query_FPag.DatabaseName:='SG_ASSOC';
Query_FPag.Close;
Query_FPag.SQL.clear;
Query_FPag.SQL.Add('SELECT SUM( CASE WHEN PFPCODEMP<100 THEN PFPVALOR '
                  +'       ELSE 0 END) AS PFPVALOR_001 '
                  +'       , SUM(       CASE WHEN PFPCODEMP>99 THEN PFPVALOR '
                  +'       ELSE 0 END) AS PFPVALOR_101,PFPDATA,PFPPRAZO ,PFPFORMA,PFPNOMFOR '
                  +', max(PFPAGENCIA) as  PFPAGENCIA,max(PFPEMITENTE) as PFPEMITENTE,'
                  +'max(PFPCNPF) as PFPCNPF,max(PFPNUMDOC) as PFPNUMDOC,'
                  +'max(PFPBANCO) as PFPBANCO,max(PFPCC) as PFPCC '
                  +' from CADPFP '
                  +' where (PFPCODEMP=:CODEMP or PFPCODEMP=:CODEMP_FILIAL) '
                  +' and PFPCHAVE=:CHAVE '
                  +' and PFPLOTSEQ=:LOTSEQ '
                  +' GROUP BY PFPDATA,PFPPRAZO,PFPFORMA,PFPNOMFOR '
                  +' ORDER BY PFPDATA,PFPFORMA,PFPNOMFOR ');
Query_FPag.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
Query_FPag.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
Query_FPag.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
Query_FPag.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
try
   Query_FPag.Open;
except
   FreeAndNil(Query_FPag);
   exit;
   end;
mTotPed_001:=0;
mTotPed_101:=0;

mTotFpag_001:=0;
mTotFpag_101:=0;

mem_cadpfp.EmptyTable;
mem_cadpfp.Open;
mem_cadpfpPFPDATA.DisplayFormat:=fdt2;
mem_cadpfpPFPVALOR_001.DisplayFormat:=mcasas;
mem_cadpfpPFPVALOR_101.DisplayFormat:=mcasas;

While not Query_FPag.Eof do
   begin
   mem_cadpfp.Append;
   mem_cadpfpPFPFORMA.Value       :=Query_fPag.FieldbyName('PFPFORMA').AsInteger;
   mem_cadpfpnomfor.Value         :=Query_fPag.FieldbyName('PFPNOMFOR').asstring;
   mem_cadpfpPFPDATA.Value        :=Query_fPag.FieldbyName('PFPDATA').AsDateTime;
   mem_cadpfpPFPPRAZO.Value       :=Query_fPag.FieldbyName('PFPPRAZO').AsInteger;
   mem_cadpfpPFPVALOR_001.Value   :=Query_fPag.FieldbyName('PFPVALOR_001').AsFloat;
   mem_cadpfpPFPVALOR_101.Value   :=Query_fPag.FieldbyName('PFPVALOR_101').AsFloat;
   mem_cadpfpPFPAGENCIA_DOC.Value :=Query_fPag.FieldbyName('PFPAGENCIA').AsString;
   mem_cadpfpPFPEMITENTE_DOC.Value:=Query_fPag.FieldbyName('PFPEMITENTE').AsString;
   mem_cadpfpPFPCNPJ_CPF_DOC.Value:=Query_fPag.FieldbyName('PFPCNPF').AsFloat;
   mem_cadpfpPFPNUMDOC.Value      :=Query_fPag.FieldbyName('PFPNUMDOC').AsString;
   mem_cadpfpPFPCODBCO_DOC.Value  :=Query_fPag.FieldbyName('PFPBANCO').AsFloat;
   mem_cadpfpPFPCC_DOC.Value      :=Query_fPag.FieldbyName('PFPCC').AsString;


//   mTotFpag_001:=mTotPed_001+Query_fPag.FieldbyName('PFPVALOR_001').AsFloat;
//   mTotFpag_101:=mTotPed_101+Query_fPag.FieldbyName('PFPVALOR_101').AsFloat;


   mem_cadpfp.Post;
   Query_FPag.Next;
   end;

Query_totped:=TQuery.Create(nil);
Query_totped.DatabaseName:='SG_ASSOC';
Query_totped.Close;
Query_totped.SQL.clear;
Query_totped.SQL.Add('SELECT sum(CASE WHEN P1CODEMP>99 THEN 0 ELSE P1TOTALL END) AS TOT001, '
                  +'       sum(CASE WHEN P1CODEMP>99 THEN P1TOTALL ELSE 0 END) AS TOT101 '
                  +' from CADP01 '
                  +' where (P1CODEMP=:CODEMP or P1CODEMP=:CODEMP_FILIAL) '
                  +' and P1CHAVE=:CHAVE '
                  +' and P1LOTSEQ=:LOTSEQ ');
Query_totped.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
Query_totped.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
Query_totped.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
Query_totped.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
try
   Query_totped.Open;
   mTotPed_001:=Query_totped.FieldbyName('TOT001').AsFloat;
   mTotPed_101:=Query_totped.FieldbyName('TOT101').AsFloat;
except
   FreeAndNil(Query_totped);
   exit;
   end;


{if ValFloat(edt_submod.Text) <> 0 then
  begin}
{  end
else
  begin
  mTotPed_001:=ValFloat(edt_totliq.Text);
  mTotPed_101:=ValFloat(edt_totliq.Text)*(ValFloat(edt_submod.Text)/100);;
  end;                                                                   }
//mTotFpag_001:=mTotPed_001;
//mTotFpag_101:=mTotPed_101;

fMostraTotaisFPag;
mem_cadpfp.SortOnFields('PFPDATA;PFPFORMA');



tsFpgto.TabVisible:=true;
pcProdServ.ActivePage:=tsFpgto;
DBGrid_mem_fpag.SetFocus;

end;

procedure TFrm_Venda_Pre_Farma.DBGrid_mem_fpagColExit(Sender: TObject);
begin

if mem_cadpfp.State in [dsEdit,dsInsert] then
   begin
   if DBGrid_mem_fpag.SelectedField=mem_cadpfpPFPFORMA then
      begin
      if flcadfp(0,mem_cadpfpPFPFORMA.AsString,'') then
         mem_cadpfpnomfor.AsString:=DM1.Tb_FPFPDESC.asstring
      else
         begin
         MessageDlg('Forma de Pagamento '+mem_cadpfpPFPFORMA.AsString+' não encontrada!',mtWarning,[mbOk],0);
         DBGrid_mem_fpag.SelectedField:=mem_cadpfpPFPFORMA;
         DBGrid_mem_fpag.SetFocus;
         abort;
         end;
      end
   else if DBGrid_mem_fpag.SelectedField=mem_cadpfpPFPPRAZO then
      begin
      if mem_cadpfpPFPPRAZO.AsInteger>=0 then
         mem_cadpfpPFPDATA.Value:=mVenda_GP.mPed1_Datap+mem_cadpfpPFPPRAZO.AsInteger;
      end
   else if DBGrid_mem_fpag.SelectedField=mem_cadpfpPFPDATA then
      begin
      mem_cadpfpPFPPRAZO.AsInteger:= Round(mem_cadpfpPFPDATA.Value-mVenda_GP.mPed1_Datap);
      end;
   end;

end;

procedure TFrm_Venda_Pre_Farma.mem_cadpfpAfterEdit(DataSet: TDataSet);
begin
mAnt_Fpgto_Valor_001:=mem_cadpfpPFPVALOR_001.AsFloat;
mAnt_Fpgto_Valor_101:=mem_cadpfpPFPVALOR_101.AsFloat;
mAnt_CodFPgto      :=mem_cadpfpPFPFORMA.AsInteger;
mAnt_Fpgto_prazo   :=mem_cadpfpPFPPRAZO.AsInteger;
mAnt_Fpgto_dtvcto  :=mem_cadpfpPFPDATA.AsDateTime;

end;

procedure TFrm_Venda_Pre_Farma.mem_cadpfpAfterInsert(DataSet: TDataSet);
begin
mAnt_Fpgto_Valor_001:=0;
mAnt_Fpgto_Valor_101:=0;
mAnt_CodFPgto      :=-1;
mAnt_Fpgto_prazo   :=0;
mAnt_Fpgto_dtvcto  :=pdatanula;

end;

procedure TFrm_Venda_Pre_Farma.mem_cadpfpAfterPost(DataSet: TDataSet);
begin
mTotFpag_001:=mTotFpag_001-mAnt_Fpgto_Valor_001+mem_cadpfpPFPVALOR_001.AsFloat;
mTotFpag_101:=mTotFpag_101-mAnt_Fpgto_Valor_101+mem_cadpfpPFPVALOR_101.AsFloat;
mAnt_Fpgto_Valor_001:=0;
mAnt_Fpgto_Valor_101:=0;
fMostraTotaisFPag;

end;

procedure TFrm_Venda_Pre_Farma.mem_cadpfpBeforeDelete(DataSet: TDataSet);
begin
mTotFpag_001:=mTotFpag_001-mem_cadpfpPFPVALOR_001.AsFloat;
mTotFpag_101:=mTotFpag_101-mem_cadpfpPFPVALOR_101.AsFloat;
mAnt_Fpgto_Valor_001:=0;
mAnt_Fpgto_Valor_101:=0;
fMostraTotaisFPag;

end;
function TFrm_Venda_Pre_Farma.fMostraTotaisFPag: Boolean;
begin
st_totped_001.Caption:=FormatFloat(mcasas, mTotPed_001);
st_totped_101.Caption:=FormatFloat(mcasas, mTotPed_101);

st_totfpg_001.Caption:=FormatFloat(mcasas, mTotFpag_001);
st_totfpg_101.Caption:=FormatFloat(mcasas, mTotFpag_101);


st_totfalta_001.Caption:=FormatFloat(mcasas, mTotPed_001-mTotFpag_001);
st_totfalta_101.Caption    :=FormatFloat(mcasas, mTotPed_101-mTotFpag_101);
st_forfpgto.caption:='Total das formas Digitadas: ('+IntTosTr(mem_cadpfp.RecordCount)+' registro(s))';
result:=true;
end;
procedure TFrm_Venda_Pre_Farma.mem_cadpfpBeforePost(DataSet: TDataSet);
begin
if (ValFloat(mem_cadpfpPFPVALOR_001.AsString)=0) and (ValFloat(mem_cadpfpPFPVALOR_101.AsString)=0) then
  begin
  mem_cadpfp.Cancel;
  Abort;
  end;


if (mAnt_CodFPgto<>-1) then
   begin
   if (mAnt_Fpgto_prazo=mem_cadpfpPFPPRAZO.AsInteger) and (mAnt_Fpgto_dtvcto<>mem_cadpfpPFPDATA.AsDateTime) then
      mem_cadpfpPFPPRAZO.AsInteger:=round(mem_cadpfpPFPDATA.AsDateTime-mVenda_GP.mPed1_Datap)
   else if (mAnt_Fpgto_prazo<>mem_cadpfpPFPPRAZO.AsInteger) and (mAnt_Fpgto_dtvcto=mem_cadpfpPFPDATA.AsDateTime) then
      mem_cadpfpPFPDATA.AsDateTime:=mVenda_GP.mPed1_Datap+mem_cadpfpPFPPRAZO.AsInteger;
   end
else if mem_cadpfpPFPDATA.AsDateTime<=pdatanula then
   mem_cadpfpPFPDATA.AsDateTime:=mVenda_GP.mPed1_Datap+mem_cadpfpPFPPRAZO.AsInteger
else
   mem_cadpfpPFPPRAZO.AsInteger:=round(mem_cadpfpPFPDATA.AsDateTime-mVenda_GP.mPed1_Datap);


if mem_cadpfpPFPDATA.AsDateTime<date then
   begin
   if Application.MessageBox(pchar('Data da forma de pagamento '+FormatDatetime(fdt2, mem_cadpfpPFPDATA.AsDateTime)
      +' é um data anterior a data atual!. Continua? '),'',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
      begin
      DBGrid_mem_fpag.SelectedField:=mem_cadpfpPFPDATA;
      DBGrid_mem_fpag.SetFocus;
      abort;
      end;
   end
else if mem_cadpfpPFPDATA.AsDateTime>date+3600 then
   begin
   if Application.MessageBox(pchar('Data da forma de pagamento '+FormatDatetime(fdt2, mem_cadpfpPFPDATA.AsDateTime)
      +' é um data bem superior a data atual!. Continua? '),'',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
      begin
      DBGrid_mem_fpag.SelectedField:=mem_cadpfpPFPDATA;
      DBGrid_mem_fpag.SetFocus;
      abort;
      end;
   end;

if  (mAnt_CodFPgto<>-1)  and (mAnt_CodFPgto<>mem_cadpfpPFPFORMA.AsInteger)  then
    begin
    if flcadfp(0,mem_cadpfpPFPFORMA.Asstring,'') then
       mem_cadpfpnomfor.AsString:=DM1.Tb_FPFPDESC.asstring
    end;

if mAnt_Fpgto_Valor_001<>mem_cadpfpPFPVALOR_001.AsFloat then
   mfp_altvalor:=true;
if mAnt_Fpgto_Valor_101<>mem_cadpfpPFPVALOR_101.AsFloat then
   mfp_altvalor:=true;

end;

procedure TFrm_Venda_Pre_Farma.bbfpag_gravarClick(Sender: TObject);
var
Query_FPag: TQuery;
Query_PO99: TQuery;
mSeq_001,mSeq_101: Integer;
mQtdParc_001,mQtdParc_101: Integer;
mQtdValFixo_001: Integer;
mQtdValFixo_101: Integer;
begin
if fpag_cancelou then
   exit;
if (ValFloat(st_totfalta_001.Caption)<>0) then
   begin
   MessageDlg('Esta Faltando '+st_totfalta_001.Caption +' no '+StaticText4.Caption+' favor corrigir! ',mtWarning,[mbOk],0);
   DBGrid_mem_fpag.SetFocus;
   exit;
   end;
if (ValFloat(st_totfalta_101.Caption)<>0) then
   begin
   MessageDlg('Esta Faltando '+st_totfalta_101.Caption+' no '+StaticText5.Caption+' favor corrigir! ',mtWarning,[mbOk],0);
   DBGrid_mem_fpag.SetFocus;
   exit;
   end;


Query_FPag:=TQuery.Create(nil);
Query_FPag.DatabaseName:='SG_ASSOC';
Query_FPag.Close;
Query_FPag.SQL.clear;
Query_FPag.SQL.Add('Delete from CADPFP WHERE '
                  +' (PFPCODEMP=:CODEMP or PFPCODEMP=:CODEMP_FILIAL)'
                  +' and PFPCHAVE=:CHAVE and PFPLOTSEQ=:LOTSEQ and (PFPORDEM=:ORDEM or PFPORDEM is null)');
Query_FPag.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
Query_FPag.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
Query_FPag.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
Query_FPag.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_FPag.ParamByName('ORDEM').AsInteger:=1;
try
   Query_FPag.ExecSQL;
   fdm1StartCommit;
except
   end;

Query_PO99:=TQuery.Create(nil);
Query_PO99.DatabaseName:='SG_ASSOC';
Query_PO99.Close;
Query_PO99.SQL.clear;
Query_PO99.SQL.Add(' delete from CADPO99 where '
                  +' (POCODEMP=:CODEMP or POCODEMP=:CODEMP_FILIAL)'
                  +' and POCHAVE=:CHAVE and POLOTSEQ=:LOTSEQ ');
Query_PO99.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
Query_PO99.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
Query_PO99.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
Query_PO99.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
try
   Query_PO99.ExecSQL;
   fdm1StartCommit;
except
   end;

Query_PO99.Close;
Query_PO99.SQL.clear;
Query_PO99.SQL.Add(' insert into cadpo99(pocodemp, polotseq, '
                  +' pochave, poprazo)        '
                  +' values (:CODEMP, :LOTSEQ, :CHAVE, :PRAZO)');


Query_FPag.Close;
Query_FPag.SQL.clear;
Query_FPag.SQL.Add('insert into CADPFP (PFPCODEMP,PFPCHAVE,PFPLOTSEQ,PFPORDEM'
                  +'      ,PFPSEQ '
                  +'      ,PFPQTDPARC '
                  +'     ,PFPFORMA '
                  +'     ,PFPVALOR '
                  +'     ,PFPBAIXA'
                  +'     ,PFPNOMFOR '
                  +'     ,PFPPRAZO '
                  +'     ,PFPDATA'
                  +'     ,PFPVINCULO'
                  +'     ,PFPAGENCIA'
                  +'     ,PFPEMITENTE'
                  +'     ,PFPCNPF'
                  +'     ,PFPNUMDOC'
                  +'     ,PFPBANCO'
                  +'     ,PFPCC'


                  +' ) values ('
                  +'       :CODEMP,:CHAVE,:LOTSEQ,:ORDEM '
                  +'      ,:SEQ '
                  +'      ,:QTDPARC '
                  +'     ,:FORMA '
                  +'     ,:VALOR '
                  +'     ,:BAIXA'
                  +'     ,:NOMFOR '
                  +'     ,:PRAZO '
                  +'     ,:DATA'
                  +'     ,:VINCULO'
                  +'     ,:AGENCIA'
                  +'     ,:EMITENTE'
                  +'     ,:CNPF'
                  +'     ,:NUMDOC'
                  +'     ,:BANCO'
                  +'     ,:CC'

                  +') ');

mQtdParc_001:=0;
mQtdParc_101:=0;
mem_cadpfp.First;
While not mem_cadpfp.Eof do
   begin
   if mem_cadpfpPFPVALOR_101.AsFloat>0 then
      mQtdValFixo_101:=mQtdValFixo_101+1;
   if mem_cadpfpPFPVALOR_001.AsFloat>0 then
      mQtdValFixo_001:=mQtdValFixo_001+1;
   mem_cadpfp.Next;
   end;

if mQtdValFixo_001>0 then
   mQtdValFixo_001:=mQtdValFixo_001-1;

if mQtdValFixo_101>0 then
   mQtdValFixo_101:=mQtdValFixo_101-1;

mem_cadpfp.First;
While not mem_cadpfp.Eof do
   begin
   if mem_cadpfpPFPVALOR_001.AsFloat<>0 then
      mQtdParc_001:=mQtdParc_001+1;
   if mem_cadpfpPFPVALOR_101.AsFloat<>0 then
      mQtdParc_101:=mQtdParc_101+1;
   mem_cadpfp.Next;
   end;


mem_cadpfp.First;
mSeq_001:=0;
mSeq_101:=0;
mVenda_GP.mPed1_PrzNovos_001:='';
mVenda_GP.mPed1_PrzNovos_101:='';


mVenda_GP.mped1_QtdParc:=0;
While not mem_cadpfp.Eof do
   begin
   if mem_cadpfpPFPVALOR_001.AsFloat<>0 then
      begin
      mSeq_001:=mSeq_001+1;
      Query_FPag.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
      Query_FPag.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
      Query_FPag.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
      Query_FPag.ParamByName('ORDEM').AsInteger:=1;
      Query_FPag.ParamByName('SEQ').AsInteger:=mSeq_001;
      Query_FPag.ParamByName('QTDPARC').AsInteger:=mQtdParc_001;
      Query_FPag.ParamByName('FORMA').AsInteger:=mem_cadpfpPFPFORMA.AsInteger;
      Query_FPag.ParamByName('VALOR').AsFloat:=mem_cadpfpPFPVALOR_001.AsFloat;
      Query_FPag.ParamByName('BAIXA').AsString:='N';
      Query_FPag.ParamByName('NOMFOR').AsString:=mem_cadpfpnomfor.AsString;
      Query_FPag.ParamByName('PRAZO').AsInteger  :=mem_cadpfpPFPPRAZO.AsInteger;
      Query_FPag.ParamByName('DATA').AsDateTime:=mem_cadpfpPFPDATA.AsDateTime;
      flcadfp(0,mem_cadpfpPFPFORMA.AsString,'');
      Query_FPag.ParamByName('VINCULO').AsInteger:=DM1.Tb_FPFPVINCULO.AsInteger;

      Query_FPag.ParamByName('AGENCIA').AsString   :=mem_cadpfpPFPAGENCIA_DOC.AsString;
      Query_FPag.ParamByName('EMITENTE').AsString  :=mem_cadpfpPFPEMITENTE_DOC.AsString;
      Query_FPag.ParamByName('CNPF').Value         :=mem_cadpfpPFPCNPJ_CPF_DOC.AsFloat;
      Query_FPag.ParamByName('NUMDOC').Value       :=mem_cadpfpPFPNUMDOC.AsString;
      Query_FPag.ParamByName('BANCO').Value        :=mem_cadpfpPFPCODBCO_DOC.AsFloat;
      Query_FPag.ParamByName('CC').Value           :=mem_cadpfpPFPCC_DOC.AsString;



      try
         Query_FPag.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql_Novo(Query_fpag,13697,'_venda_pre_farma','CADPFP')
         end;
      if mfp_altvalor then
         begin
         if mQtdValFixo_001>=mSeq_001 then
            mVenda_GP.mPed1_PrzNovos_001:=mVenda_GP.mPed1_PrzNovos_001+mem_cadpfpPFPPRAZO.AsString+';V;'+formatFloat('##0.00' ,mem_cadpfpPFPVALOR_001.AsFloat)+';'+mem_cadpfpPFPFORMA.AsString+';'+
                         fSubstituirCaractere(mem_cadpfpnomfor.AsString,';','_')+';;'
         else
            mVenda_GP.mPed1_PrzNovos_001:=mVenda_GP.mPed1_PrzNovos_001+mem_cadpfpPFPPRAZO.AsString+';P;;'+mem_cadpfpPFPFORMA.AsString+';'+
                         fSubstituirCaractere(mem_cadpfpnomfor.AsString,';','_')+';;';

        end
      else
         begin
         mVenda_GP.mPed1_PrzNovos_001:=mVenda_GP.mPed1_PrzNovos_001+mem_cadpfpPFPPRAZO.AsString+';P;;'+mem_cadpfpPFPFORMA.AsString+';'+
                         fSubstituirCaractere(mem_cadpfpnomfor.AsString,';','_')+';;'

         end;



      end;

      Query_PO99.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
      Query_PO99.ParamByName('CHAVE').AsInteger :=mVenda_GP.mped1_Chave;
      Query_PO99.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
      Query_PO99.ParamByName('PRAZO').AsInteger :=mem_cadpfpPFPPRAZO.AsInteger;
      try
         Query_PO99.ExecSQL;
         fdm1StartCommit;
      except
         end;


   if mem_cadpfpPFPVALOR_101.AsFloat<>0 then
      begin
      mSeq_101:=mSeq_101+1;
      Query_FPag.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
      Query_FPag.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
      Query_FPag.ParamByName('ORDEM').AsInteger:=1;
      Query_FPag.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
      Query_FPag.ParamByName('SEQ').AsInteger:=mSeq_101;
      Query_FPag.ParamByName('QTDPARC').AsInteger:=mQtdParc_101;
      Query_FPag.ParamByName('FORMA').AsInteger:=mem_cadpfpPFPFORMA.AsInteger;
      Query_FPag.ParamByName('VALOR').AsFloat:=mem_cadpfpPFPVALOR_101.AsFloat;
      Query_FPag.ParamByName('BAIXA').AsString:='N';
      Query_FPag.ParamByName('NOMFOR').AsString:=mem_cadpfpnomfor.AsString;
      Query_FPag.ParamByName('PRAZO').AsInteger  :=mem_cadpfpPFPPRAZO.AsInteger;
      Query_FPag.ParamByName('DATA').AsDateTime:=mem_cadpfpPFPDATA.AsDateTime;
      flcadfp(0,mem_cadpfpPFPFORMA.AsString,'');
      Query_FPag.ParamByName('VINCULO').AsInteger:=DM1.Tb_FPFPVINCULO.AsInteger;
      Query_FPag.ParamByName('AGENCIA').AsString   :=mem_cadpfpPFPAGENCIA_DOC.AsString;
      Query_FPag.ParamByName('EMITENTE').AsString  :=mem_cadpfpPFPEMITENTE_DOC.AsString;
      Query_FPag.ParamByName('CNPF').Value         :=mem_cadpfpPFPCNPJ_CPF_DOC.AsFloat;
      Query_FPag.ParamByName('NUMDOC').Value       :=mem_cadpfpPFPNUMDOC.AsString;
      Query_FPag.ParamByName('BANCO').Value        :=mem_cadpfpPFPCODBCO_DOC.AsFloat;
      Query_FPag.ParamByName('CC').Value           :=mem_cadpfpPFPCC_DOC.AsString;

      if mfp_altvalor then
         begin
         if mQtdValFixo_101>=mSeq_101 then
            mVenda_GP.mPed1_PrzNovos_101:=mVenda_GP.mPed1_PrzNovos_101+mem_cadpfpPFPPRAZO.AsString+';V;'+formatFloat('#0.00', mem_cadpfpPFPVALOR_101.AsFloat)+';'+mem_cadpfpPFPFORMA.AsString+';'+
                         fSubstituirCaractere(mem_cadpfpnomfor.AsString,';','_')+';;'
         else
            mVenda_GP.mPed1_PrzNovos_101:=mVenda_GP.mPed1_PrzNovos_101+mem_cadpfpPFPPRAZO.AsString+';P;;'+mem_cadpfpPFPFORMA.AsString+';'+
                         fSubstituirCaractere(mem_cadpfpnomfor.AsString,';','_')+';;';

         end
      else
         mVenda_GP.mPed1_PrzNovos_101:=mVenda_GP.mPed1_PrzNovos_101+mem_cadpfpPFPPRAZO.AsString+';P;;'+mem_cadpfpPFPFORMA.AsString+';'+
                         fSubstituirCaractere(mem_cadpfpnomfor.AsString,';','_')+';;';


      try
         Query_FPag.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql_Novo(Query_fpag,13697,'_venda_pre_farma','CADPFP')
         end;
      end;

   mem_cadpfp.Next;
   end;
if trim(mVenda_GP.mPed1_PrzNovos_101)='' then
   mVenda_GP.mPed1_PrzNovos_101:=mVenda_GP.mPed1_PrzNovos_001;
if trim(mVenda_GP.mPed1_PrzNovos_001)='' then
   mVenda_GP.mPed1_PrzNovos_001:=mVenda_GP.mPed1_PrzNovos_101;


FreeAndNil(Query_FPag);
FreeAndNil(Query_PO99);
tsFpgto.TabVisible:=false;
pcProdServ.ActivePage:=tsProdutos;




mem_cadpfp.First;
if valint(edt_codfp.Text)<>mem_cadpfpPFPFORMA.AsInteger then
   begin

   edt_codfp.Text:=mem_cadpfpPFPFORMA.AsString;
   if fLCadFP(0,edt_codfp.Text,'') then
      begin
      edt_nomfp.Text:=DM1.Tb_FPFPDESC.AsString;
      mVenda_GP.mPed1_CodFP:=valint(edt_codfp.Text);
      mVenda_GP.mPed1_CodFp_Vinculo:=DM1.Tb_FPFPVINCULO.AsInteger;
      mVenda_GP.mPed1_nomfp:=DM1.Tb_FPFPDESC.AsString;
      mVenda_GP.mPed1_BaixaFP:='N';
      mped_Alterou_Cab:=true;
      end;
   end;
fGravarCabecalho(0);
fLerFormaPag(0);
end;

procedure TFrm_Venda_Pre_Farma.bbExluir_FPClick(Sender: TObject);
begin

if (not mem_cadpfp.Active) or ((mem_cadpfpPFPVALOR_001.IsNull) and (mem_cadpfpPFPVALOR_101.IsNull)) then
   exit;
if Application.MessageBox(pchar('Quer Realmente Excluir '+mem_cadpfpnomfor.AsString+' Valor 001/101 : '+formatFloat(mcasas, mem_cadpfpPFPVALOR_001.AsFloat)+'/'+formatFloat(mcasas, mem_cadpfpPFPVALOR_101.AsFloat)),'',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
mem_cadpfp.Delete;

end;

procedure TFrm_Venda_Pre_Farma.GroupBox2Exit(Sender: TObject);
begin
   bbfpag_gravarClick(self);

end;

procedure TFrm_Venda_Pre_Farma.bbFpag_CancelarClick(Sender: TObject);
begin
fpag_cancelou:=false;

if pcProdServ.ActivePage=tsFpgto then
  tsFpgto.TabVisible:=false;
fLerFormaPag(0);
end;




procedure TFrm_Venda_Pre_Farma.sbnMaisDadosClick(Sender: TObject);
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

procedure TFrm_Venda_Pre_Farma.edt_placavExit(Sender: TObject);
begin
mVenda_GP.mPed1_Tra_PLACAv:=edt_placav.Text;

end;

procedure TFrm_Venda_Pre_Farma.edt_minutaExit(Sender: TObject);
begin
mVenda_GP.mPed1_minuta:=valint(edt_minuta.Text);
end;

procedure TFrm_Venda_Pre_Farma.edt_horsai2Enter(Sender: TObject);
begin
mEventoPendente:='edt_horsai';

end;

procedure TFrm_Venda_Pre_Farma.edt_horsai2Exit(Sender: TObject);
begin
if (fsonumero(edt_horsai.Text)=0) then
   edt_horsai.Text:='00:00'
else
   begin
   try
      edt_horsai.Text:=formatDatetime('hh:nn', StrTotime(edt_horsai.Text+':00'));
   except
      edt_horsai.Text:='00:00';
      end;
   end;

try
   if fsonumero(edt_datsai.Text)=0 then
      edt_datsai.Text:='00/00/0000';
   mVenda_GP.mped1_prevent:=StrToDatetime(edt_datsai.Text+' '+edt_horsai.Text+':00');
except
   mVenda_GP.mped1_prevent:=pdatanula;
   end;

end;

procedure TFrm_Venda_Pre_Farma.DBGrid_RefDevColExit(Sender: TObject);
var
Query_Busca:TQuery;
begin
Query_Busca:=TQuery.Create(nil);
Query_Busca.DatabaseName:='SG_ASSOC';

if mem_ped01d.State in [dsedit,dsinsert] then
   begin
   if (mem_ped01dP1DCH_OR.AsInteger>0) then
      begin
      Query_Busca.Close;
      Query_Busca.SQL.Clear;
      Query_Busca.SQL.Add('Select P1CHAVE,P1LOTSEQ,P1CODEMP,P1CODCLI,P1TOTALL,P1DATAP from CADP01 where P1STATUS<>8 ');
//                         +' and P1CODCLI=:CODCLI ');
//      Query_Busca.ParamByName('CODCLI').AsInteger:=mVenda_GP.mPed1_CodCli;
      if mem_ped01dP1DCH_OR.AsInteger>0 then
         Query_Busca.SQL.add(' and P1CHAVE='+mem_ped01dP1DCH_OR.AsString);
      if mem_ped01dP1DLS_OR.AsInteger>0 then
         Query_Busca.SQL.add(' and P1LOTSEQ='+mem_ped01dP1DLS_OR.AsString);
      if mem_ped01dP1DCODEMP_OR.AsInteger>0 then
         Query_Busca.SQL.add(' and P1CODEMP='+mem_ped01dP1DCODEMP_OR.AsString)
      else
         begin
         Query_Busca.SQL.Add('and (P1CODEMP=:CODEMP or P1CODEMP=:CODEMP_FILIAL )');
         Query_Busca.ParamByName('CODEMP').AsInteger:=codemp;
         if mVenda_GP.mPed1_Codemp>100 then
            Query_Busca.ParamByName('CODEMP_FILIAL').AsInteger:=codemp-100
         else
            Query_Busca.ParamByName('CODEMP_FILIAL').AsInteger:=codemp+100;

         end;
      Query_Busca.SQL.add(' order by P1CODEMP ');
      try
         Query_Busca.Open;
         if Query_Busca.fieldbyName('P1CODCLI').AsFloat<>mVenda_GP.mPed1_CodCli then
            begin
            MessageDlg('Pedido Não é do cliente '+Query_Busca.fieldbyName('P1CODCLI').AsString
            +' - '+edt_nomcli.Text,mtWarning,[mbOk],0);
            DBGrid_RefDev.SelectedField:=mem_ped01dP1DCH_OR;
            DBGrid_RefDev.SetFocus;
            abort;
            end;
         if not Query_Busca.IsEmpty then
            begin
            if DBGrid_RefDev.SelectedField=mem_ped01dP1DCH_OR then
               begin
               mem_ped01dP1DCODEMP_OR.AsInteger:=Query_Busca.fieldbyName('P1CODEMP').AsInteger;
               mem_ped01dP1DLS_OR.AsInteger    :=Query_Busca.fieldbyName('P1LOTSEQ').AsInteger;
               mem_ped01dP1DDATAP.AsDateTime   :=Query_Busca.fieldbyName('P1DATAP').AsDateTime;
               end
            else if DBGrid_RefDev.SelectedField=mem_ped01dP1DCODEMP_OR then
               begin
               mem_ped01dP1DLS_OR.AsInteger    :=Query_Busca.fieldbyName('P1LOTSEQ').AsInteger;
               mem_ped01dP1DDATAP.AsDateTime   :=Query_Busca.fieldbyName('P1DATAP').AsDateTime;
               end
            else if DBGrid_RefDev.SelectedField=mem_ped01dP1DLS_OR then
               begin
               mem_ped01dP1DDATAP.AsDateTime   :=Query_Busca.fieldbyName('P1DATAP').AsDateTime;
               end;
            end;
      except
         end;
       end;
   end;
FreeAndNil(Query_Busca);
end;

procedure TFrm_Venda_Pre_Farma.DBGrid_RefDevEnter(Sender: TObject);
begin
if sbnGravar.Enabled then
   begin
   if not mem_ped01d.Active then
      mem_ped01d.Open;
   end;
end;

function TFrm_Venda_Pre_Farma.LerPedidodeOrigem(pTipo: Integer): Boolean;

   function fAgruparPed02(pcodEmp,pcodEmp_filial,pChave,pChave_ano: Integer): Boolean;
   var
   Query_testar: tQuery;
   Query_Exe: tQuery;
   mErro: Boolean;
   begin
   mErro:=false;
   Query_testar:=tQuery.Create(nil);
   Query_testar.DatabaseName:='SG_ASSOC';
   Query_testar.Close;
   Query_testar.SQL.Clear;
   Query_testar.SQL.Add('select count(*) from CADP02 where '
                    +' (P2CODEMP=:CODEMP_MENOR or P2CODEMP=:CODEMP_MAIOR ) '
                    +' and   P2CHAVE=:CHAVE'
                    +' and   P2LOTSEQ=:CHAVE_ANO'
                    +' and   P2ORDEM=:ORDEM '
                    +' group by P2CODPRO '
                    +'  having count(*)>1 ');
   Query_testar.ParamByName('CODEMP_MENOR').AsInteger   :=pCodEmp;
   Query_testar.ParamByName('CODEMP_MAIOR').AsInteger   :=pCodEmp_filial;
   Query_testar.ParamByName('CHAVE').AsInteger    :=pChave;
   Query_testar.ParamByName('CHAVE_ANO').AsInteger:=pChave_ano;
   Query_testar.ParamByName('ORDEM').AsInteger    :=1;
   try
      Query_testar.Open;
   except
      mErro:=true;
      end;
   if not mErro then
      begin
      if Query_testar.fields[0].AsInteger>0 then
         begin
         Query_testar.Close;
         Query_testar.SQL.Clear;
         Query_testar.SQL.Add('select COLUMN_NAME,DATA_TYPE from USER_TAB_COLUMNS where '
                          +' TABLE_NAME='+QuotedStr('CADP02')
                          +' and not COLUMN_NAME in ('+QuotedStr('P2CODEMP')
                          +','+QuotedStr('P2CHAVE')
                          +','+QuotedStr('P2LOTSEQ')
                          +','+QuotedStr('P2ORDEM')
                          +','+QuotedStr('P2CODPRO')
                          +','+QuotedStr('P2QTD')
                          +','+QuotedStr('P2ITEM')+')');

         try
            Query_testar.Open;
         except
            mErro:=true;
            end;
         if not mErro then
            begin
            Query_exe:=tQuery.Create(nil);
            Query_exe.DatabaseName:='SG_ASSOC';
            Query_exe.Close;
            Query_exe.SQL.Clear;
            Query_exe.SQL.Add('Insert into CADP02 ('
                             +' P2ITEM '
                             +',P2CODEMP '
                             +',P2CHAVE '
                             +',P2LOTSEQ '
                             +',P2ORDEM '
                             +',P2QTD '
                             +',P2CODPRO ');
            While not query_testar.Eof do
               begin
               Query_Exe.SQL.add(','+Query_testar.fieldbyName('COLUMN_NAME').AsString);
               Query_testar.Next;
               end;
            Query_testar.First;

            Query_exe.SQL.Add(') select ROWNUM AS ITEM,TAB02.*  FROM ( (select '
                             +' P2CODEMP*-1 '
                             +',P2CHAVE '
                             +',P2LOTSEQ '
                             +',P2ORDEM '
                             +',sum(P2QTD) as P2QTD '
                             +',P2CODPRO ' );
            While not query_testar.Eof do
               begin
               Query_Exe.SQL.add(',max('+Query_testar.fieldbyName('COLUMN_NAME').AsString+')');
               Query_testar.Next;
               end;
            Query_exe.SQL.add(' from CADP02 where '
                            +' (P2CODEMP=:CODEMP_MENOR or P2CODEMP=:CODEMP_MAIOR ) '
                            +' and   P2CHAVE=:CHAVE'
                            +' and   P2LOTSEQ=:CHAVE_ANO'
                            +' and   P2ORDEM=:ORDEM '
                            +' group by P2CODEMP,P2CHAVE,P2LOTSEQ,P2ORDEM,P2CODPRO '
                            +' ) TAB02 ) order by ITEM  '
                            +'   ');
            Query_Exe.ParamByName('CODEMP_MENOR').AsInteger   :=pCodEmp;
            Query_Exe.ParamByName('CODEMP_MAIOR').AsInteger   :=pCodEmp_filial;
            Query_Exe.ParamByName('CHAVE').AsInteger    :=pChave;
            Query_Exe.ParamByName('CHAVE_ANO').AsInteger:=pChave_ano;
            Query_Exe.ParamByName('ORDEM').AsInteger    :=1;
            try
               Query_Exe.ExecSQL;
               fdm1StartCommit;
            except
              ex_erroSql_Novo(Query_Exe,5107,'frm_venda_pre','CADP02');
              mErro:=true;
              end;
            if not mErro then
               begin
               Query_exe.Close;
               Query_exe.SQL.Clear;
               Query_exe.SQL.Add('Delete from CADP02 where '
                               +' (P2CODEMP=:CODEMP_MENOR or P2CODEMP=:CODEMP_MAIOR ) '
                               +' and   P2CHAVE=:CHAVE'
                               +' and   P2LOTSEQ=:CHAVE_ANO'
                               +' and   P2ORDEM=:ORDEM ');
               Query_Exe.ParamByName('CODEMP_MENOR').AsInteger   :=pCodEmp;
               Query_Exe.ParamByName('CODEMP_MAIOR').AsInteger   :=pCodEmp_filial;
               Query_Exe.ParamByName('CHAVE').AsInteger    :=pChave;
               Query_Exe.ParamByName('CHAVE_ANO').AsInteger:=pChave_ano;
               Query_Exe.ParamByName('ORDEM').AsInteger    :=1;
               try
                  Query_Exe.ExecSQL;
                  fdm1StartCommit;
               except
                  mErro:=true;
                  end;

               if not mErro then
                  begin
                  Query_exe.Close;
                  Query_exe.SQL.Clear;
                  Query_exe.SQL.Add('Update  CADP02 set P2CODEMP=P2CODEMP*-1 where '
                                  +' (P2CODEMP=:CODEMP_MENOR or P2CODEMP=:CODEMP_MAIOR ) '
                                  +' and   P2CHAVE=:CHAVE'
                                  +' and   P2LOTSEQ=:CHAVE_ANO'
                                  +' and   P2ORDEM=:ORDEM ');
                  Query_Exe.ParamByName('CODEMP_MENOR').AsInteger   :=pCodEmp*-1;
                  Query_Exe.ParamByName('CODEMP_MAIOR').AsInteger   :=pCodEmp_filial*-1;
                  Query_Exe.ParamByName('CHAVE').AsInteger    :=pChave;
                  Query_Exe.ParamByName('CHAVE_ANO').AsInteger:=pChave_ano;
                  Query_Exe.ParamByName('ORDEM').AsInteger    :=1;
                  try
                     Query_Exe.ExecSQL;
                     fdm1StartCommit;
                  except
                     mErro:=true;
                     end;
                  end;
               end;
            FreeAndNil(Query_Exe);
            end;
         end;
      end;
   FreeAndNil(Query_testar);

   result:=true;
   end;

begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_empresas :='';
fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADPRO','PDCODEMP', 'P2CODEMP','PDCODPRO' ,'P2CODPRO');

Qr_itens_pedori.Close;
Qr_itens_pedori.SQL.Clear;
Qr_itens_pedori.SQL.Add('Select sum(P2QTD) as P2QTD, '
                       +'sum( DECODE(P2QTDDEV,NULL,0,P2QTDDEV)) AS P2QTDDEV, '
                       +'sum(P2QTD-P2QTD) AS QTDSEL,P2ITEM as P2ITEM, '
                       +'sum(P2TOTLIQ) as P2TOTLIQ,sum(P2TOTDES) as P2TOTDES,'
                       +'min(P2CODEMP) as P2CODEMP,sum('
                       +'case when (P2TOTLIQ-P2DESCRAT>0) and (P2QTD>0) THEN '
                       +' (P2TOTLIQ-P2DESCRAT)/P2QTD                   else 0 '
                       +'end)  AS PcoLiqDev, min(P2PRECO) as  P2PRECO, '
                       +'min(P2PCOTAB) as P2PCOTAB,min(P2UCPR) as P2UCPR, '
                       +'min(P2PCOCUS) as P2PCOCUS,min(P2PCOMAX) as P2PCOMAX, '
                       +'max(P2DESC1) as P2DESC1, max(P2DESC2) as P2DESC2, '
                       +'max(P2DESC3) as  P2DESC3, '
                       +'max(P2PDESCF) as  P2PDESCF, '
                       +'max(P2PCOMIS) as P2PCOMIS, '
                       +'max(P2PCOM02) as P2PCOM02, '
                       +'max(P2PCOM03) as P2PCOM03, '
                       +'max(P2VALDES) as P2VALDES, '
                       +'max(P2ST_IVA) as P2ST_IVA, '
                       +'max(P2ST_REDUT) as P2ST_REDUT, '
                       +'max(P2ST_ICMCRED) as P2ST_ICMCRED, '
                       +'max(P2ST_ICMDEB) as P2ST_ICMDEB, '
                       +'max(P2REDUTICM) as P2REDUTICM, '
                       +'max(P2SIT) as P2SIT, '
                       +'max(P2ALIQ) as P2ALIQ, '
                       +'max(P2ALIQICMSDES) as P2ALIQICMSDES,'
                       +'max(P2ALPIS) as P2ALPIS, '
                       +'max(P2ALCOFINS) as P2ALCOFINS, '
                       +'max(P2PCRED_SN) as P2PCRED_SN, '
                       +'max(P2CST_PIS) as P2CST_PIS, '
                       +'max(P2CST_COFINS) as P2CST_COFINS, '
                       +'max(P2CST_IPI) as P2CST_IPI, '
                       +'max(P2CODVEN) as P2CODVEN,'
                       +'max(P2ALIPI) as P2ALIPI, '
                       +'max(P2DESCRAT) as P2DESCRAT, '
                       +'max(P2LOTSEQ) as P2LOTSEQ, '
                       +'max(P2CHAVE) as P2CHAVE, '
                       +'max(P2ORDEM) as P2ORDEM, '
                       +'PDCODPRO, '
                       +'PDNOME, '
                       +'max(PDMARCA) AS PDMARCA, '
                       +'max(PDUND) as PDUND, '
                       +'max(PDMARCA) as PDMARCA, '
                       +'max(P2CSOSN_ORI) as P2CSOSN_ORI, '
                       +'max(P2CSOSN) as P2CSOSN, '
                       +'max(P2MODBCST) as P2MODBCST '
                       +',max(P2CONTESP) as  P2CONTESP '
                       +' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                       +'       '+la_Join
                       +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                       +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                       +' P1STATUS<9 ');
mcinst:=' and ((';
mcinst3:=' where ((';
mcinst4:='';
mem_ped01d.First;
While not mem_ped01d.Eof do
   begin
   if mem_ped01dP1DCH_OR.IsNull then
      begin
      mem_ped01d.Next;
      Continue;
      end;
   fAgruparPed02(mem_ped01dP1DCODEMP_OR.AsInteger,
                 mem_ped01dP1DCODEMP_OR.AsInteger,
                 mem_ped01dP1DCH_OR.AsInteger,
                 mem_ped01dP1DLS_OR.AsInteger);


   Qr_itens_pedori.SQL.add(mcinst+' (P2CODEMP=0'+mem_ped01dP1DCODEMP_OR.AsString
                        +' and P2LOTSEQ=0'+mem_ped01dP1DLS_OR.AsString
                        +' and P2CHAVE=0'+mem_ped01dP1DCH_OR.AsString+')');
   mcinst:=') or (';

   mcinst4:=mcinst4+mcinst3+' (P1CODEMP=0'+mem_ped01dP1DCODEMP_OR.AsString
                        +' and P1LOTSEQ=0'+mem_ped01dP1DLS_OR.AsString
                        +' and P1CHAVE=0'+mem_ped01dP1DCH_OR.AsString+')';
   mcinst3:=mcinst;


   mem_ped01d.Next;
   end;
if mcinst=') or (' then
   begin
   Qr_itens_pedori.SQL.Add(')) ');
   mcinst4:=mcinst4+')) ';
   end;

if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
   Qr_itens_pedori.SQL.Add(' and (PDCODEMP=P2CODEMP or PDCODEMP+100=P2CODEMP or PDCODEMP-100=P2CODEMP )');
Qr_itens_pedori.SQL.Add('group by PDCODPRO, PDNOME,P2ITEM ');
Qr_itens_pedori.SQL.add(' order by PDNOME,P2CHAVE,P2ITEM ');


try
   Qr_itens_pedori.Open;
except
   ex_erroSql_Novo(Qr_itens_pedori,11546,'venda_pre','CADP02');
   end;
//ex_erroSql_Novo(Qr_itens_pedori,11546,'venda_pre','CADP02');


end;
procedure TFrm_Venda_Pre_Farma.mem_ped01dAfterPost(DataSet: TDataSet);
begin
LerPedidodeOrigem(0);


fAtualizarPed01D(mOper_Ped01D);
fLerDevPend(0);
//    mOper_Ped01D:=0;   // 0 -inclusao 1-alteracao
//fAtualizarPed01D(0);
//VERIFICAR


end;

procedure TFrm_Venda_Pre_Farma.FormShow(Sender: TObject);
var
  Query_temp: TQuery;
begin
if DM4.Tb_ParGer02PG2NFETPEMIS.AsInteger=3 then
  Caption:='Manutenção no Cadastro de Pedidos (Pre-Venda). [NOTA FISCAL EM MODO DE EMISSAO SCAN] '
else
  Caption:='Manutenção no Cadastro de Pedidos (Pre-Venda). ';

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
Application.CreateForm(TFrm_DadCli,Frm_DadCli);
pcCabecalho.ActivePage:=tsCabecalho;

fLimparCampos(0);
fBloquearLiberarCampos(false);

top:=0;

if cb_incluirauto.Checked then
   sbnIncluirClick(self);

end;

procedure TFrm_Venda_Pre_Farma.bbDev_SelTodosClick(Sender: TObject);
begin
Qr_itens_pedori.First;
While not Qr_itens_pedori.Eof do
   begin
   Qr_itens_pedori.Edit;
   Qr_itens_pedoriQTDSEL.Value:=Qr_itens_pedoriP2QTD.AsFloat-Qr_itens_pedoriP2QTDDEV.AsFloat;
   if Qr_itens_pedoriQTDSEL.AsFloat>0 then
      Qr_itens_pedoriQTDSEL.AsFloat:=Qr_itens_pedoriP2QTD.AsFloat-Qr_itens_pedoriP2QTDDEV.AsFloat;

   Qr_itens_pedori.Post;
   Qr_itens_pedori.Next;
   end;

end;

procedure TFrm_Venda_Pre_Farma.bbDev_ZerTodosClick(Sender: TObject);
begin
Qr_itens_pedori.First;
While not Qr_itens_pedori.Eof do
   begin
   if Qr_itens_pedoriQTDSEL.AsFloat>0 then
      begin
      Qr_itens_pedori.Edit;
      Qr_itens_pedoriQTDSEL.Value:=0;
      Qr_itens_pedori.Post;
      end;
   Qr_itens_pedori.Next;
   end;

end;

procedure TFrm_Venda_Pre_Farma.DBGrid_itens_pedoriDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if DataCol=5 then
   begin
   DBGrid_itens_pedori.Canvas.Brush.Color:=$00FFFFD9;
   DBGrid_itens_pedori.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;
if Qr_itens_pedoriQTDSEL.AsFloat>0 then
   begin
   DBGrid_itens_pedori.Canvas.Font.Color:= clRed;
   DBGrid_itens_pedori.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;
end;

procedure TFrm_Venda_Pre_Farma.mem_ped01dBeforePost(DataSet: TDataSet);
var
Query_Busca:TQuery;
begin
Query_Busca:=TQuery.Create(nil);
Query_Busca.DatabaseName:='SG_ASSOC';
if (mem_ped01dP1DCH_OR.AsInteger=0) then
   begin
   mem_ped01d.Cancel;
   abort;
   exit;
   end;

if (mem_ped01dP1DCH_OR.AsInteger>0) then
   begin
   Query_Busca.Close;
   Query_Busca.SQL.Clear;
   Query_Busca.SQL.Add('Select P1CHAVE,P1LOTSEQ,P1CODEMP,P1CODCLI,P1TOTALL,P1DATAP from CADP01 where P1STATUS<>8 '
                      +' and P1CODCLI=:CODCLI ');
   Query_Busca.ParamByName('CODCLI').value:=mVenda_GP.mPed1_CodCli;
   if mem_ped01dP1DCH_OR.AsInteger>0 then
      Query_Busca.SQL.add(' and P1CHAVE='+mem_ped01dP1DCH_OR.AsString);
   if mem_ped01dP1DLS_OR.AsInteger>0 then
      Query_Busca.SQL.add(' and P1LOTSEQ='+mem_ped01dP1DLS_OR.AsString);
   if mem_ped01dP1DCODEMP_OR.AsInteger>0 then
      Query_Busca.SQL.add(' and P1CODEMP='+mem_ped01dP1DCODEMP_OR.AsString)
   else
      begin
      Query_Busca.SQL.Add('and (P1CODEMP=:CODEMP or P1CODEMP=:CODEMP_FILIAL )');
      Query_Busca.ParamByName('CODEMP').AsInteger:=codemp;
      if mVenda_GP.mPed1_Codemp>100 then
         Query_Busca.ParamByName('CODEMP_FILIAL').AsInteger:=codemp-100
      else
         Query_Busca.ParamByName('CODEMP_FILIAL').AsInteger:=codemp+100;

      end;
   Query_Busca.SQL.add(' order by P1CODEMP ');
   try
      Query_Busca.Open;
   except
      end;
   end;
if Query_Busca.IsEmpty then
   begin
   MessageDlg('Favor Digitar uma Chave Válida!',mtWarning,[mbOk],0);
   Abort;
   end
else
   begin
   mem_ped01dP1DCODEMP_OR.AsInteger:=Query_Busca.fieldbyName('P1CODEMP').AsInteger;
   mem_ped01dP1DLS_OR.AsInteger    :=Query_Busca.fieldbyName('P1LOTSEQ').AsInteger;
   mem_ped01dP1DDATAP.AsDateTime   :=Query_Busca.fieldbyName('P1DATAP').AsDateTime;
   end;

FreeAndNil(Query_Busca);

end;

procedure TFrm_Venda_Pre_Farma.bbDev_GerarPedClick(Sender: TObject);
var
mQtdSel: Integer;
Query_Busca:TQuery;
mDescRat: Real;
mQtdFalta: Real;
mPos_ItemDev: TBookmark;
begin

mQtd_Ant_Cal:=0;
mQtd_Cal:=0;



Qr_itens_pedori.First;
mQtdSel:=0;

While not Qr_itens_pedori.Eof do
   begin
   if Qr_itens_pedoriQTDSEL.AsFloat>0 then
      begin
      mQtdSel:=mQtdSel+1;
      break;
      end;
   Qr_itens_pedori.Next;
   end;

if mQtdSel=0 then
   begin
   MessageDlg('Não Foi Selecionado Nenhuma Mercadoria para esta Devolução!',mtWarning,[mbOk],0);
   pcCabecalho.ActivePage:=Ts_TabRefDev;
   DBGrid_itens.SetFocus;
   exit;
   end;

Query_Busca:=TQuery.Create(nil);
Query_Busca.DatabaseName:='SG_ASSOC';

mDescRat:=0;
Qr_itens_pedori.First;
While not Qr_itens_pedori.Eof do
   begin
   if Qr_itens_pedoriQTDSEL.AsFloat<=0 then
      begin
      Qr_itens_pedori.Next;
      Continue;
      end;
   mPos_ItemDev:=Qr_itens_pedori.GetBookmark;
   if Tb_Ped02_pre.Locate('P2CODPRO;P2ITEM',vararrayof([Qr_itens_pedoriPDCODPRO.AsFloat,Qr_Itens_PedOriP2ITEM.Asinteger]),[]) then
      begin
      Tb_Ped02_pre.Edit;
      Tb_Ped02_preP2QTD.Value            :=Tb_Ped02_preP2QTD.Value +Qr_itens_pedoriQTDSEL.AsFloat;
      end
   else
      begin
      Tb_Ped02_pre.Insert;
      Tb_Ped02_preP2QTD.Value            :=Qr_itens_pedoriQTDSEL.AsFloat;
      end;
   Tb_Ped02_preP2CODPRO.AsString         :=Qr_itens_pedoriPDCODPRO.AsString;
   mDescRat:=mDescRat+Qr_itens_pedoriP2DESCRAT.AsFloat;
   Tb_Ped02_Pre.Post;
   Qr_itens_pedori.GotoBookmark(mPos_ItemDev);
   Qr_itens_pedori.Next;
   end;

end;
// ptipo=0 Inclusao
//       1 alteracao
//       2 exclusao

function TFrm_Venda_Pre_Farma.fAtualizarPed01D(pTipo: Integer): Boolean;
var
  Query_Ped01D: TQuery;
begin
if mPed01D_Carregando=true then
   begin
   result:=true;
   exit;
   end;


if mVenda_GP.mped1_Chave=0 then
   begin
   mVenda_GP.mped1_submod_grav:=0;
   if mVenda_GP.mped1_submod=100 then
      begin
      mVenda_GP.mped1_submod_grav:=100;
      if codemp>100 then
         mVenda_GP.fGravarPed01(0,-100)
      else
         mVenda_GP.fGravarPed01(0,100);
      end
   else
      begin
      if mVenda_GP.mped1_submod>0 then
         mVenda_GP.mped1_submod_grav:=100-mVenda_GP.mped1_submod;
      mVenda_GP.fGravarPed01(0,0);
      end;
   edt_chave.Text:=InttoStr(mVenda_GP.mped1_Chave);
   if (mVenda_GP.mped1_submod>0) and (mVenda_GP.mped1_submod<100) then
      begin
      mVenda_GP.mped1_submod_grav:=mVenda_GP.mped1_submod;
      if codemp>100 then
         mVenda_GP.fGravarPed01(0,-100)
      else
         mVenda_GP.fGravarPed01(0,100);
      end;
   end;


Query_Ped01D:=TQuery.Create(nil);
Query_Ped01D.DatabaseName:='SG_ASSOC';
Query_Ped01D.Close;
Query_Ped01D.SQL.Clear;
if ptipo=2 then
   begin
   Query_Ped01D.SQL.Add('Delete from CADP01D where  '
                    +' P1DCODEMP=:P1DCODEMP '
                    +',P1DLOTSEQ=:P1DLOTSEQ '
                    +',P1DCHAVE=:P1DCHAVE '
                    +',P1DORDEM=:P1DORDEM '
                    +',P1DLS_OR=:P1DLS_OR '
                    +',P1DCODEMP_OR=:P1DCODEMP_OR '
                    +',P1DCH_OR=:P1DCH_OR '
                    +',P1DOR_OR=:P1DOR_OR ');
   Query_Ped01D.ParamByName('P1DCODEMP').AsInteger      :=mVenda_GP.mPed1_Codemp;
   Query_Ped01D.ParamByName('P1DLOTSEQ').AsInteger      :=mVenda_GP.mPed1_Chave_ano;
   Query_Ped01D.ParamByName('P1DCHAVE').AsInteger       :=mVenda_GP.mped1_Chave;
   Query_Ped01D.ParamByName('P1DORDEM').AsInteger       :=01;
   Query_Ped01D.ParamByName('P1DLS_OR').AsInteger       :=mem_ped01dP1DLS_OR.AsInteger;
   Query_Ped01D.ParamByName('P1DCODEMP_OR').AsInteger   :=mem_ped01dP1DCODEMP_OR.AsInteger;
   Query_Ped01D.ParamByName('P1DCH_OR').AsInteger       :=mem_ped01dP1DCH_OR.AsInteger;
   Query_Ped01D.ParamByName('P1DOR_OR').AsInteger       :=mem_ped01dP1DOR_OR.AsInteger;
   try
      Query_Ped01D.ExecSQL;
      fdm1StartCommit;
      result:=true;
   except
      result:=false;
      end;
   end
else
   begin
   if ptipo=0 then
      begin
      Query_Ped01D.SQL.Add('Insert into CADP01D ('
                       +' P1DCODEMP '
                       +',P1DLOTSEQ '
                       +',P1DCHAVE '
                       +',P1DORDEM '
                       +',P1DLS_OR '
                       +',P1DCODEMP_OR '
                       +',P1DCH_OR '
                       +',P1DOR_OR '
                       +',P1DDATAP '
                       +',P1DCHAVE_NIVEL '
                       +') values ('
                       +' :P1DCODEMP '
                       +',:P1DLOTSEQ '
                       +',:P1DCHAVE '
                       +',:P1DORDEM '
                       +',:P1DLS_OR '
                       +',:P1DCODEMP_OR '
                       +',:P1DCH_OR '
                       +',:P1DOR_OR '
                       +',:P1DDATAP '
                       +',:P1DCHAVE_NIVEL '
                       +')');
      end
   else if ptipo=1 then
      begin
      Query_Ped01D.SQL.Add('Update CADP01D set '
                       +' P1DCODEMP=:P1DCODEMP '
                       +',P1DLOTSEQ=:P1DLOTSEQ '
                       +',P1DCHAVE=:P1DCHAVE '
                       +',P1DORDEM=:P1DORDEM '
                       +',P1DLS_OR=:P1DLS_OR '
                       +',P1DCODEMP_OR=:P1DCODEMP_OR '
                       +',P1DCH_OR=:P1DCH_OR '
                       +',P1DOR_OR=:P1DOR_OR '
                       +',P1DDATAP=:P1DDATAP '
                       +',P1DCHAVE_NIVEL=:P1DCHAVE_NIVEL');
      end;



   Query_Ped01D.ParamByName('P1DCODEMP').AsInteger      :=mVenda_GP.mPed1_Codemp;
   Query_Ped01D.ParamByName('P1DLOTSEQ').AsInteger      :=mVenda_GP.mPed1_Chave_ano;
   Query_Ped01D.ParamByName('P1DCHAVE').AsInteger       :=mVenda_GP.mped1_Chave;
   Query_Ped01D.ParamByName('P1DORDEM').AsInteger       :=01;
   Query_Ped01D.ParamByName('P1DLS_OR').AsInteger       :=mem_ped01dP1DLS_OR.AsInteger;
   Query_Ped01D.ParamByName('P1DCODEMP_OR').AsInteger   :=mem_ped01dP1DCODEMP_OR.AsInteger;
   Query_Ped01D.ParamByName('P1DCH_OR').AsInteger       :=mem_ped01dP1DCH_OR.AsInteger;
   Query_Ped01D.ParamByName('P1DOR_OR').AsInteger       :=mem_ped01dP1DOR_OR.AsInteger;
   Query_Ped01D.ParamByName('P1DDATAP').AsDateTime      :=mem_ped01dP1DDATAP.AsDateTime;
   Query_Ped01D.ParamByName('P1DCHAVE_NIVEL').AsInteger :=0;
   try
      Query_Ped01D.ExecSQL;
      fdm1StartCommit;
      result:=true;
   except
      result:=false;
      end;
   end;
FreeAndNil(Query_Ped01D);
end;

procedure TFrm_Venda_Pre_Farma.mem_ped01dAfterInsert(DataSet: TDataSet);
begin
    mOper_Ped01D:=0;   // 0 -inclusao 1-alteracao

end;

procedure TFrm_Venda_Pre_Farma.mem_ped01dAfterEdit(DataSet: TDataSet);
begin
    mOper_Ped01D:=1;

end;

procedure TFrm_Venda_Pre_Farma.mem_ped01dAfterDelete(DataSet: TDataSet);
begin
fAtualizarPed01D(2);
fLerDevPend(0);

end;

procedure TFrm_Venda_Pre_Farma.Qr_itens_pedoriBeforePost(DataSet: TDataSet);
begin

if (Arredonda( Qr_itens_pedoriQTDSEL.AsFloat, DM1.Tb_PargerPCASASPU.AsInteger) ) >
    (Arredonda ( (Qr_itens_pedoriP2QTD.AsFloat-Qr_itens_pedoriP2QTDDEV.AsFloat), DM1.Tb_PargerPCASASPU.AsInteger)) then
   begin
   MessageDlg('Quantidade a devolver nao pode ser maior que a compra!',mtWarning,[mbOk],0);
   DBGrid_itens_pedori.SelectedField:=Qr_itens_pedoriQTDSEL;
   DBGrid_itens_pedori.SetFocus;
   abort;
   end;

end;

procedure TFrm_Venda_Pre_Farma.sbnEMailClick(Sender: TObject);
var
  query_Cons: TQuery;
  x_gru: Integer;
begin
if not fValida_Pedido then
  begin
  fmensagem(' Esse pedido foi alterado em outra estação.'+#13
           +' Por favor re-localizar o mesmo.',0,['0'],0);
  exit;
  end;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
Query_Cons := TQuery.Create(nil);
Query_Cons.DatabaseName:='SG_ASSOC';
Query_Cons.SQL.Clear;
Query_Cons.SQL.Add('Select P1CODEMP,P1LOTSEQ,P1CHAVE,P1ORDEM,P1STATUS,P1TIPO,CCNPJ,CCPF,'
                 +'CUF,CCIDADE,P1SITPED,P1TABPV,P1CODPV,P1ORDEM,P1PRAZO,P1PVDDESCF,P1PVDIASDESCF'
                 +',P1TOTALL,P1COMIS,P1COMV02,P1COMV03,P1COMV04,P1COMISS'
                 +',P1COMIST,P1SEMCOM,P1COMASSE,P1ICMSR,P1VALFRE,P1TOTEXTCOM'
                 +',P1VALSEG,P1DESCFIN,P1TOTDI01,P1TOTDI02,P1TOTDI03,P1TOTDIVL'
                 +',P1VALDES01,P1VALDES02,P1VLRDES,P1TARBAN,P1DESPACES,P1IPIINA,P1IPIPOS'
                 +',P1IPINEG,P1TOTCGRU,P1TOTSGRU,P1TOTSERLIQ,P1VALENT,P1CODUSR,P1CODUSR_ULTEVE'
                 +',CRAZAO,P1EMITENTE,P1CODSER,P1TOTSERLIQ,P1CODCLI,P1DATANF,P1EMIDOC '
                 +',P1COMP_ULTEVE,P1CODTRA,P1BLOQPEND,P1CODBLOQ_LIB,P1CODBLOQ,P1PREVENT'
                 +',P1NUMNF,P1NUMCF,P1FORMACE,P1SEPAMB '
                 +',P1PRAZO_ENT,P1COMIS_EXTRA,P1SUBMOD,P1DATHOR_ULTEVE from CADP01'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +'  (P1CODEMP=:CODEMP OR P1CODEMP=:CODEMP_FILIAL) '
                 +' and P1CHAVE=:CHAVE '
                 +' and P1LOTSEQ=:LOTSEQ '
                 +' and P1ORDEM=:ORDEM ');
Query_Cons.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
Query_Cons.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
Query_Cons.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
Query_Cons.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_Cons.ParamByName('ORDEM').AsInteger:=1;
Query_Cons.Open;
if Query_Cons.IsEmpty then
   begin
   Query_Cons.SQL.SaveToFile('C:\LSEP.TXT');
   FreeAndNil(query_Cons);
   fmensagem('Chave não encontrada!',0,['0'],0);
   exit;
   end;



Frm_Fatur_OrcGrupo.pOrigem_OrgGrupo:=0;

if Frm_Fatur_OrcGrupo=nil then
   Application.CreateForm(TFrm_Fatur_OrcGrupo, Frm_Fatur_OrcGrupo)
else
   begin
   Frm_Fatur_OrcGrupo.free;
   Frm_Fatur_OrcGrupo:=nil;
   Application.CreateForm(TFrm_Fatur_OrcGrupo, Frm_Fatur_OrcGrupo);
   end;
if (mVenda_GP.mPed1_Codemp_fin>100) or (mVenda_GP.mPed1_Codemp_ini>100) then
   begin
   for x_gru:=0 to Frm_Fatur_OrcGrupo.Form_SelEmp.CLB_EMPRESAS.Count-1 do
      Frm_Fatur_OrcGrupo.Form_SelEmp.CLB_EMPRESAS.Checked[x_gru]:=true;
   end;


Frm_Fatur_OrcGrupo.CHAVE.Text   := edt_chave.Text;
Frm_Fatur_OrcGrupo.MDATAP.Text  := edt_datap.Text;
Frm_Fatur_OrcGrupo.MCLIENTE.Text:= edt_codcli.Text+' '+edt_nomcli.Text;
Frm_Fatur_OrcGrupo.MCIDADE.Text := Query_Cons.fieldbyName('CCIDADE').Value+' - '+Query_Cons.fieldbyName('CUF').Value;
Frm_Fatur_OrcGrupo.VALORP.Text  := edt_totliq.Text;
Frm_Fatur_OrcGrupo.Memo_obs.Lines.Clear;

Frm_Fatur_OrcGrupo.FormStyle:=fsNormal;
Frm_Fatur_OrcGrupo.Visible:=false;
Frm_Fatur_OrcGrupo.TipoPreco:=1;
fAtualizaForm(0);
Frm_Fatur_OrcGrupo.ShowModal;
FreeAndNil(Frm_Fatur_OrcGrupo);
FreeAndNil(query_Cons);

end;

procedure TFrm_Venda_Pre_Farma.bbExcPedOriClick(Sender: TObject);
begin
if (not mem_ped01d.Active) or (mem_ped01dP1DCHAVE.IsNull)  then
   exit;
if Application.MessageBox(pchar('Quer Realmente Excluir '+mem_ped01dP1DCHAVE.AsString),'',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
mem_ped01d.Delete;

end;

procedure TFrm_Venda_Pre_Farma.sbnDuplicarClick(Sender: TObject);
var
mChave_nova: Integer;
begin

if Application.MessageBox('Quer Realmente Gerar um Novo Orcamento a partir do pedido selecionado?','Confirmação!',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
mChave_nova:=fbuscarSequencia('PEDVEN_'+'0');
fbuscaNUMPED( iif(codemp>100,codemp-100,codemp));


if fCriarNovaChave(1,0,mChave_nova,'P1CHAVE='+IntTostr(mVenda_GP.mPed1_Chave)
               +' and P1LOTSEQ=0'+InttoStr(mVenda_GP.mPed1_Chave_ano)
               +' and (P1CODEMP=0'+IntTostr(mVenda_GP.mPed1_Codemp_ini)
               +' or P1CODEMP=0'+IntTostr(mVenda_GP.mPed1_Codemp_fin)+')'
               ,
               'P2CHAVE='+IntTostr(mVenda_GP.mPed1_Chave)
               +' and P2LOTSEQ=0'+InttoStr(mVenda_GP.mPed1_Chave_ano)
               +' and (P2CODEMP=0'+IntTostr(mVenda_GP.mPed1_Codemp_ini)
               +' or P2CODEMP=0'+IntTostr(mVenda_GP.mPed1_Codemp_fin)+')'
               , 'PFPCHAVE='+IntTostr(mVenda_GP.mPed1_Chave)
               +' and PFPLOTSEQ=0'+InttoStr(mVenda_GP.mPed1_Chave_ano)
               +' and (PFPCODEMP=0'+IntTostr(mVenda_GP.mPed1_Codemp_ini)
               +' or PFPCODEMP=0'+IntTostr(mVenda_GP.mPed1_Codemp_fin)+')'
               , 'P1VCHAVE='+IntTostr(mVenda_GP.mPed1_Chave)
               +' and P1VLOTSEQ=0'+InttoStr(mVenda_GP.mPed1_Chave_ano)
               +' and (P1VCODEMP=0'+IntTostr(mVenda_GP.mPed1_Codemp_ini)
               +' or P1VCODEMP=0'+IntTostr(mVenda_GP.mPed1_Codemp_fin)+')'
               ,  'P2LM_CHAVE='+IntTostr(mVenda_GP.mPed1_Chave)
               +' and P2LM_LOTSEQ=0'+InttoStr(mVenda_GP.mPed1_Chave_ano)
               +' and (P2LM_CODEMP=0'+IntTostr(mVenda_GP.mPed1_Codemp_ini)
               +' or P2LM_CODEMP=0'+IntTostr(mVenda_GP.mPed1_Codemp_fin)+')'
               ) then
   MessageDlg('Novo Orcamento. Chave '+IntToStr(mChave_nova),mtWarning,[mbOk],0)
else
   MessageDlg('Erro ao Criar nova chave!',mtWarning,[mbOk],0);

end;

function TFrm_Venda_Pre_Farma.fCriarNovaChave(ptipo,pEmpresaDestino,pChave_nova: Integer; pChavep01,pChavep02,pChavepfp,pchave01v,pchave_lotes: String): Boolean;

var
Query_Exe: TQuery;
Query_cons: TQuery;
mValues: String;
mGroup: String;
mValues_Geral: String;
mCampo_CST_ICMS,mCampo_CSOSN,mCampo_CST_PISCOFINS,mCampo_ALIQ_PIS,mCampo_ALIQ_COFINS: String;
mTabIcm: String;
x: integer;
mCst_Novo: String;
begin
result:=true;
cds_aliquotas.First;
Query_cons:=TQuery.Create(nil);
Query_cons.DatabaseName:='SG_ASSOC';

Query_Exe:=TQuery.Create(nil);
Query_Exe.DatabaseName:='SG_ASSOC';
Query_Exe.close;
Query_Exe.SQL.Clear;

Query_cons.close;
Query_cons.SQL.Clear;
Query_cons.SQL.Add('Select COLUMN_NAME,DATA_TYPE from USER_TAB_COLUMNS where '
                  +' TABLE_NAME=:NOMTAB ');
Query_cons.ParamByName('NOMTAB').AsString:='CADP01';
Query_cons.open;
Query_Exe.SQL.add('Insert into CADP01 ('
                +'P1CHAVE,P1LOTSEQ,P1TIPO,P1CODCLI,P1CODVEN,P1DATAP,P1BANCO,P1SUBMOD '
                +',P1CODPV,P1TABPV ');



//if ptipo=1 then
   Query_Exe.SQL.Add(',P1CODEMP ');

mValues:='select '+IntToStr(pChave_nova)+',0,0,'+floattoStr(mVenda_GP.mPed1_CodCli)+' as CODCLI '
                 +', '+IntTosTr(mVenda_GP.mPed1_Codven)+' as CODVEN '
                 +',TO_CHAR(SYSDATE,'+QuotedStr('DD/MM/YYYY')+') as P1DATAP,'
                 +IntToStr(mVenda_GP.mPed1_CodBco1)+' P1BANCO,'+QuotedStr('SSS')+' as P1SUBMOD '
                 +','+IntToStr(mVenda_GP.mPed1_CodPV)+' as P1CODPV '
                 +','+QuotedStr(mVenda_GP.mPed1_TabPV)+' as P1TABPV ' ;

if ptipo=1 then
   begin
   if pEmpresaDestino=0 then
      begin
      mValues:=mValues+',P1CODEMP ';
      mGroup:='P1CODEMP';
      end
   else
      begin
      mValues:=mValues+','+IntTostr(pEmpresaDestino)+' AS P1CODEMP ';
      mGroup:='';
      end;
   end
else
   Begin
   mValues:=mValues+',min(P1CODEMP) AS P1CODEMP ';
   mGroup:='';
   end;


While not Query_cons.Eof do
   begin
   if (Query_cons.FieldByName('DATA_TYPE').AsString='LONG') or
      (Query_cons.FieldByName('DATA_TYPE').AsString='LONG RAW') then
      begin
      Query_cons.Next;
      Continue;
      end;
   if (Query_cons.FieldByName('COLUMN_NAME').AsString='P1CHAVE') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1LOTSEQ') or

      ( (Query_cons.FieldByName('COLUMN_NAME').AsString='P1CODEMP')  ) or
//      ( (Query_cons.FieldByName('COLUMN_NAME').AsString='P1CODEMP')  and (ptipo=1)) or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1CODCLI') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1CODVEN') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1OBS1') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1OBS2') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1OBS3') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1CODVEN') or

      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1DATAP') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1BANCO') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1SUBMOD') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1TABPV') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1CODPV') or

      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1TIPO') then
      begin
      Query_cons.Next;
      Continue;
      end;


   Query_Exe.SQL.add(','+Query_cons.FieldByName('COLUMN_NAME').AsString);

   if (Query_cons.FieldByName('COLUMN_NAME').AsString='P1EMIDOC') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1STATUS') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1NUMNF') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1NUMCF') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1TIPO') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1STATUS') then
      begin
      mValues:=mValues+',0 '
      end
   else if (Query_cons.FieldByName('COLUMN_NAME').AsString='P1TOTALB') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1TOTALL') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1ICMSN') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1REPAS') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1ICMSR') or

      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1BASENP') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1BASENN') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1BASENI') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1ICMSNP') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1ICMSNN') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1ICMSNI') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1BASERP') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1BASERN') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1BASENI') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1BASERI') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1ICMSRP') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1ICMSRN') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1ICMSRI') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1BASENRI') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1ICMSNRI') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1BASENRP') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1ICMSNRP') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1BASENRN') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1ICMSNRN') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1IPIINA') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1IPIPOS') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1IPINEG') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1TOTTRI') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1TOTRET') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1BASEN')  or



      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1TOTISE')or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1TOTPOS') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1TOTNEG') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1TOTINA') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1PISCOFN') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1PISCOFR') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1TOTDES') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1TOTUCPR') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1VLRDES') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1VALFRE') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1COMIS') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1COMIST') or


      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1IPINEG') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1TOTTRI') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1TOTRET') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1BASEN')  or



      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1BCISSQN')or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1VISSQN') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1SEMCOM') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1DESCFIN') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1VLRACRE') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1DESPACES') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1TOTDI01') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1TOTDI02') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1TOTDIVL') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1COMV02') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1COMV03') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1ACRECONV') or



      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1ACREGER') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1TOTDI03') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1VALDES01') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1VALDES02')  or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1TARBAN') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1VALSEG') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1CUPACRE') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1CUPDES') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1ICMS_BCFRE') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1ICMS_VLFRE') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1ICMS_BCSEG') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1ICMS_VLSEG') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1ICMS_BCOUTD') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1ICMS_VLOUTD') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1ICMS_BCIPI') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1ICMS_VLIPI') or

      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1COMV04') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1TOTCGRU') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1TOTSGRU') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1TOTSERLIQ')  or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1TOTPIS') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1TOTCOFINS') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1RED_BCISSQN') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1BCINSS') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1RED_BCINSS') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1VINSS') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1BCIRRF') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1RED_BCIRRF') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1VIRRF') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P1COMISS') then
      begin
      mValues:=mValues+',sum('+Query_cons.FieldByName('COLUMN_NAME').AsString+')';
      end
   else
      begin
      mValues:=mValues+',min('+Query_cons.FieldByName('COLUMN_NAME').AsString+')';
      end;
   Query_cons.Next;
   end;


Query_Exe.SQL.add(' ) '+mValues+' from CADP01 ' );
Query_Exe.SQL.add(' where '+pChavep01);
if trim(mGroup)<>'' then
   Query_Exe.SQL.add(' group by '+mGroup);


try
   Query_Exe.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(Query_Exe,1111,'frm_venda','CADP01');

   FreeAndNil(Query_Exe);
   FreeAndNil(Query_cons);
   result:=false;
   exit;
   end;
/// cadp02

Query_cons.close;
Query_cons.SQL.Clear;
Query_cons.SQL.Add('Select COLUMN_NAME,DATA_TYPE from USER_TAB_COLUMNS where '
                  +' TABLE_NAME=:NOMTAB ');
Query_cons.ParamByName('NOMTAB').AsString:='CADP02';
Query_cons.open;

Query_Exe.Close;
Query_Exe.SQL.Clear;
Query_Exe.SQL.add('Insert into CADP02 ('
                +'P2CHAVE,P2LOTSEQ,P2TIPO,P2CODPRO ');
//if pTipo=1 then
   Query_exe.Sql.add(',P2CODEMP');
mValues:='select '+IntToStr(pChave_nova)+' AS CHAVE,0 AS LOTSEQ ,0 AS TIPO ,P2CODPRO';
if ptipo=1 then
   begin
   if pEmpresaDestino=0 then
      begin
      mvalues:=mvalues+',P2CODEMP';
      mGroup:='P2CODEMP,P2CODPRO';
      end
   else
      begin
      mvalues:=mvalues+','+IntToStr(pEmpresaDestino)+' AS P2CODEMP ';
      mGroup:='P2CODPRO';
      end

   end
else
   begin
   mValues:=mValues+',min(P2CODEMP) AS P2CODEMP';
   mGroup:='P2CODPRO';
   end;

mValues_Geral:=' CHAVE, LOTSEQ,TIPO,P2CODPRO';
//if ptipo=1 then
mValues_Geral:=mValues_Geral+',P2CODEMP';



While not Query_cons.Eof do
   begin
   if (Query_cons.FieldByName('DATA_TYPE').AsString='LONG') or
      (Query_cons.FieldByName('DATA_TYPE').AsString='LONG RAW') then
      begin
      Query_cons.Next;
      Continue;
      end;
   if (Query_cons.FieldByName('COLUMN_NAME').AsString='P2CHAVE') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P2LOTSEQ') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P2TIPO') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P2CODPRO') or
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P2CODEMP') then // and (ptipo=1))  then
      begin
      Query_cons.Next;
      Continue;
      end;

   Query_Exe.SQL.add(','+Query_cons.FieldByName('COLUMN_NAME').AsString);
   if (Query_cons.FieldByName('COLUMN_NAME').AsString='P2QTDDEV') OR
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P2QTD_ENTREGUE') OR
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P2QTD_ENTREGANDO') OR
      (Query_cons.FieldByName('COLUMN_NAME').AsString='P2QTDDEV') then
      begin
      mValues:=mValues+',0 AS '+Query_cons.FieldByName('COLUMN_NAME').AsString;

      mValues_Geral:=mValues_Geral+','+Query_cons.FieldByName('COLUMN_NAME').AsString;

      end
   else if (Query_cons.FieldByName('COLUMN_NAME').AsString='P2QTD') OR
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2BASEN') OR

           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2ICMSN') OR
//           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2REPAS') OR
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2BASER') OR
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2ICMSR') OR
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2TOTDES') OR
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2DESCRAT') OR
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2VALIPI') OR
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2BCINR') OR
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2ICMSNR') OR
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2ISENTAS') OR
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2TOTOUT') OR
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2VCOMIS') OR
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2VCOM02') OR
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2VCOM03') OR
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2SEMCOM') OR
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2TOTLIQ') OR
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2VDESCF') OR
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2ACRECONV') OR
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2ACREGER') OR


           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2VCOM04') OR
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2ACRERAT') OR
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2QTD_ATEN') OR

           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2VCOMIS_EXTRA') OR
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2VALPIS') OR
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2COFINS') OR
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2VLRICMS_SN') OR
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2VALDES') then
      begin
      mValues:=mValues+',sum('+Query_cons.FieldByName('COLUMN_NAME').AsString+') AS '
         +Query_cons.FieldByName('COLUMN_NAME').AsString;
      mValues_Geral:=mValues_Geral+','+Query_cons.FieldByName('COLUMN_NAME').AsString;
      end
   else if (Query_cons.FieldByName('COLUMN_NAME').AsString='P2PRECO')  OR
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2PCOTAB')  or
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2PCOMAX')  or
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2UCPR')  or
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2PCOFPG')  or
           (Query_cons.FieldByName('COLUMN_NAME').AsString='P2PCOCUS')  then
      begin
      mValues:=mValues+',ROUND( (sum('+Query_cons.FieldByName('COLUMN_NAME').AsString+')/COUNT(*)),'+DM1.Tb_PargerPCASASPU.AsString+') as '
              +Query_cons.FieldByName('COLUMN_NAME').AsString;
      mValues_Geral:=mValues_Geral+','+Query_cons.FieldByName('COLUMN_NAME').AsString;

      end
   else
      begin
      mValues:=mValues+',min('+Query_cons.FieldByName('COLUMN_NAME').AsString+') AS '
      +Query_cons.FieldByName('COLUMN_NAME').AsString;
      if (Query_cons.FieldByName('COLUMN_NAME').AsString='P2ITEM') then
          mValues_Geral:=mValues_Geral+', COLUNA AS P2ITEM '
      else
         mValues_Geral:=mValues_Geral+','+Query_cons.FieldByName('COLUMN_NAME').AsString;
      end;
   Query_cons.Next;
   end;


Query_Exe.sql.add(') Select '+mValues_Geral+' from ( ');

//ex_erroSql_Novo(Query_Exe,13344,'frm_venda','CADP01');

mValues:=mValues+',max(rownum) as coluna ';

mValues:=mValues+' from CADP02 where '+pChavep02;
if trim(mgroup)<>'' then
   mValues:=mValues+' group by '+mGroup;

mValues:=mValues+') order by coluna ';

Query_Exe.sql.add(mValues);
try
   Query_Exe.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(Query_Exe,13344,'frm_venda','CADP01');
   FreeAndNil(Query_Exe);
   FreeAndNil(Query_cons);
   result:=false;
   exit;
   end;


cds_aliquotas.First;
Query_Exe.Close;
Query_Exe.SQL.Clear;
Query_Exe.SQL.Add('Update CADP01 set P1CFO1=:CFO1,P1CFO2=:CFO2 '
                 +' where P1CHAVE=:CHAVE '
                 +' and P1LOTSEQ=:LOTSEQ '
                 +' and (P1CODEMP=:CODEMP or P1CODEMP=:CODEMP_FILIAL )');
if Tb_Ped02_preP2CONS_PROPRIO.AsInteger=1 then
  begin
  Query_Exe.ParamByName('CFO1').AsInteger:=cds_aliquotasCfo_rev_Trib.AsInteger;
  Query_Exe.ParamByName('CFO2').AsInteger:=cds_aliquotasCfo_rev_Ret.AsInteger;
  end
else
  begin
  Query_Exe.ParamByName('CFO1').AsInteger:=cds_aliquotasCfo_Indus_Trib.AsInteger;
  Query_Exe.ParamByName('CFO2').AsInteger:=cds_aliquotasCfo_Indus_Ret.AsInteger;
  end;
Query_Exe.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave*-1;
Query_Exe.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_Exe.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
Query_Exe.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
try
   Query_Exe.ExecSQL;
   fdm1startcommit;
except
   ex_erroSql_Novo(Query_Exe,13734,'frm_venda','CADP01');
   end;

mCampo_CST_PISCOFINS:='PDFIS_CST_PISCOF_SAIDA';
mCampo_ALIQ_PIS     :='PDFIS_PIS_ALIQ_SAIDA';
mCampo_ALIQ_COFINS  :='PDFIS_COFINS_ALIQ_SAIDA';

if mPed_UF_Cli=DM1.Tb_EmpUF.AsString then
   begin
   if mPed_Cli_ConsFin then
      begin
      mCampo_CSOSN        :='PDFIS_CSOSN_EST_CF';
      mCampo_CST_ICMS     :='PDFIS_ORIGEM || PDFIS_CST_ICMS_EST_CF';
      end
   else
      begin
      mCampo_CSOSN        :='PDFIS_CSOSN_EST_REV';
      mCampo_CST_ICMS     :='PDFIS_ORIGEM || PDFIS_CST_ICMS_EST_REV';
      end;
   end
else
   begin
   if mPed_Cli_ConsFin then
      begin
      mCampo_CSOSN        :='PDFIS_CSOSN_INT_CF';
      mCampo_CST_ICMS     :='PDFIS_ORIGEM || PDFIS_CST_ICMS_INT_CF';
      end
   else
      begin
      mCampo_CSOSN        :='PDFIS_CSOSN_INT_REV';
      mCampo_CST_ICMS     :='PDFIS_ORIGEM || PDFIS_CST_ICMS_INT_REV';
      end;
   end;


Query_Exe.Close;
Query_Exe.SQL.Clear;
Query_Exe.SQL.Add('Update CADP02 set    '
                  +' P2TABELA=(Select max(PDTABICM)  '
                  +' from CADPRO where PDCODPRO=P2CODPRO '
                  +' and (PDCODEMP=:CODEMP or PDCODEMP=:CODEMP_FILIAL) ) '

                  +', P2SIT=(Select max('+mCampo_CST_ICMS+')  '
                  +' from CADPRO where PDCODPRO=P2CODPRO '
                  +' and (PDCODEMP=:CODEMP or PDCODEMP=:CODEMP_FILIAL) ) '

                  +', P2CSOSN=(Select max('+mCampo_CSOSN+')  '
                  +' from CADPRO where PDCODPRO=P2CODPRO '
                  +' and (PDCODEMP=:CODEMP or PDCODEMP=:CODEMP_FILIAL) ) '

                  +', P2CSOSN_ORI=(Select max(PDFIS_ORIGEM)  '
                  +' from CADPRO where PDCODPRO=P2CODPRO '
                  +' and (PDCODEMP=:CODEMP or PDCODEMP=:CODEMP_FILIAL) ) '

                  +', P2CST_PIS=(Select max('+mCampo_CST_PISCOFINS+')  '
                  +' from CADPRO where PDCODPRO=P2CODPRO '
                  +' and (PDCODEMP=:CODEMP or PDCODEMP=:CODEMP_FILIAL) ) '

                  +', P2CST_COFINS=(Select max('+mCampo_CST_PISCOFINS+')  '
                  +' from CADPRO where PDCODPRO=P2CODPRO '
                  +' and (PDCODEMP=:CODEMP or PDCODEMP=:CODEMP_FILIAL) ) '

                  +', P2ALPIS=(Select max('+mCampo_ALIQ_PIS+')  '
                  +' from CADPRO where PDCODPRO=P2CODPRO '
                  +' and (PDCODEMP=:CODEMP or PDCODEMP=:CODEMP_FILIAL) ) '

                  +', P2ALCOFINS=(Select max('+mCampo_ALIQ_COFINS+')  '
                  +' from CADPRO where PDCODPRO=P2CODPRO '
                  +' and (PDCODEMP=:CODEMP or PDCODEMP=:CODEMP_FILIAL) ) '

                  +', P2LISTA=(Select max(PDLISTA)  '
                  +' from CADPRO where PDCODPRO=P2CODPRO '
                  +' and (PDCODEMP=:CODEMP or PDCODEMP=:CODEMP_FILIAL) ) '

                  +' where P2CHAVE=:CHAVE '
                  +' and P2LOTSEQ=:LOTSEQ '
                  +' and (P2CODEMP=:CODEMP or P2CODEMP=:CODEMP_FILIAL )');

Query_Exe.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave*-1;
Query_Exe.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_Exe.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
Query_Exe.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
try
   Query_Exe.ExecSQL;
   fdm1startcommit;
except
   ex_erroSql_Novo(Query_Exe,13734,'frm_venda','CADP01');
   end;
// PROXIMOS ALIQUOTAS

// TESTAR EXCECOES
 if (not DM6.Tb_CLFISCAL_UF.Active) or (mPed_UF_Cli<>DM6.Tb_CLFISCAL_UFCFUF.AsString) then
    flcadclfiscal_uf(0,0,mPed_UF_Cli);
if not DM6.Tb_CLFISCAL_UF.IsEmpty then
    begin
    While not DM6.Tb_CLFISCAL_UF.Eof do
       begin
       if mPed_Cli_ConsFin then
          mCst_Novo:=DM6.Tb_CLFISCAL_UFCFCST_CF.AsString
       else
          mCst_Novo:=DM6.Tb_CLFISCAL_UFCFCST_RV.AsString;
       query_exe.Close;
       query_exe.SQL.Clear;
       query_exe.SQL.Add('Update CADP02 set P2SIT=:CST  '
                        +' where exists '
                        +' (select PDCLAS FROM CADPRO '
                        +' WHERE PDCODPRO=P2CODPRO AND PDCLAS=:CLASSIFICACAO ) '
                        +' and P2CHAVE=:CHAVE '
                        +' and P2LOTSEQ=:LOTSEQ '
                        +' and (P2CODEMP=:CODEMP or P2CODEMP=:CODEMP_FILIAL )');
       Query_Exe.ParamByName('CST').AsString          :=mCst_Novo;
       Query_Exe.ParamByName('CLASSIFICACAO').AsString:=DM6.Tb_CLFISCAL_UFCFCLAS_FISCAL.AsString;
       Query_Exe.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave*-1;
       Query_Exe.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
       Query_Exe.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
       Query_Exe.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
       try
          Query_Exe.ExecSQL;
          fdm1startcommit;
       except
          ex_erroSql_Novo(Query_Exe,13734,'frm_venda','CADP01');
          end;
       DM6.Tb_CLFISCAL_UF.Next;
       end;
   end;

Query_Exe.Close;
Query_Exe.SQL.Clear;
Query_Exe.SQL.Add('Update CADP02 set    '
                 +'P2ST_IVA=:ST_IVA '
                 +',P2ST_REDUT=:ST_REDUT '
                 +',P2ST_ICMCRED=:ST_ICMSCRED '
                 +',P2ST_ICMDEB=:ST_ICMSDEB '
                 +',P2ALIQ=:ALIQ '
                 +',P2REDUTICM=:REDUTICM '
                 +',P2PCRED_SN=:PCRED_SN '
                 +',P2ALIPI=:IPI '
                 +' where P2CHAVE=:CHAVE '
                 +' and P2LOTSEQ=:LOTSEQ '
                 +' and (P2CODEMP=:CODEMP or P2CODEMP=:CODEMP_FILIAL )');
Query_Exe.ParamByName('ST_IVA').AsInteger      :=0;
Query_Exe.ParamByName('ST_REDUT').AsInteger    :=0;
Query_Exe.ParamByName('ST_ICMSCRED').AsInteger :=0;
Query_Exe.ParamByName('ST_ICMSDEB').AsInteger  :=0;

Query_Exe.ParamByName('ALIQ').AsInteger        :=0;
Query_Exe.ParamByName('REDUTICM').AsInteger    :=0;
Query_Exe.ParamByName('PCRED_SN').AsInteger    :=0;
Query_Exe.ParamByName('IPI').AsInteger         :=0;

Query_Exe.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave*-1;
Query_Exe.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_Exe.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
Query_Exe.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
try
   Query_Exe.ExecSQL;
   fdm1startcommit;
except
   ex_erroSql_Novo(Query_Exe,13734,'frm_venda','CADP01');
   end;

// termino



Query_Exe.Close;
Query_Exe.SQL.Clear;
Query_Exe.SQL.Add('Update CADP02 set    '
                 +'P2ST_IVA=:ST_IVA '
                 +',P2CFO=:CFO '
                 +',P2CFOSUBECF=:CFO_SUBECF '
                 +',P2ST_REDUT=:ST_REDUT '
                 +',P2ST_ICMCRED=:ST_ICMSCRED '
                 +',P2ST_ICMDEB=:ST_ICMSDEB '
                 +' where P2CHAVE=:CHAVE '
                 +' and P2LOTSEQ=:LOTSEQ '
                 +' and (P2CODEMP=:CODEMP or P2CODEMP=:CODEMP_FILIAL )'
//                 +' and SUBSTR(P2SIT,2,1) IN ('+QuotedStr('1')+','+QuotedStr('6')
                 +' and SUBSTR(P2SIT,2,1) IN ('+QuotedStr('1')
                 +','+QuotedStr('3')+','+QuotedStr('7')+') '
                 +' and P2LISTA=2 ' );
Query_Exe.ParamByName('ST_IVA').AsFloat        :=cds_aliquotasal_stIVA_Neg.AsFloat;
if Tb_Ped02_preP2CONS_PROPRIO.AsInteger=1 then //olhar aqui
  Query_Exe.ParamByName('CFO').AsInteger         :=cds_aliquotasCfo_rev_Ret.AsInteger
else
  Query_Exe.ParamByName('CFO').AsInteger         :=cds_aliquotasCfo_Indus_Ret.AsInteger;
Query_Exe.ParamByName('CFO_SUBECF').AsInteger  :=cds_aliquotasCfo_SubEcf_Ret.AsInteger;


Query_Exe.ParamByName('ST_REDUT').AsFloat      :=cds_aliquotasal_stAliqRed.AsFloat;
Query_Exe.ParamByName('ST_ICMSCRED').AsFloat   :=cds_aliquotasal_stIcmsCred.AsFloat;
Query_Exe.ParamByName('ST_ICMSDEB').AsFloat    :=cds_aliquotasal_stIcmsDeb.AsFloat;
Query_Exe.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave*-1;
Query_Exe.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_Exe.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
Query_Exe.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
try
   Query_Exe.ExecSQL;
   fdm1startcommit;
except
   ex_erroSql_Novo(Query_Exe,13892,'frm_venda','CADP01');
   end;


Query_Exe.Close;
Query_Exe.SQL.Clear;
Query_Exe.SQL.Add('Update CADP02 set    '
                 +'P2ST_IVA=:ST_IVA '
                 +',P2CFO=:CFO '
                 +',P2CFOSUBECF=:CFO_SUBECF '
                 +',P2ST_REDUT=:ST_REDUT '
                 +',P2ST_ICMCRED=:ST_ICMSCRED '
                 +',P2ST_ICMDEB=:ST_ICMSDEB '
                 +' where P2CHAVE=:CHAVE '
                 +' and P2LOTSEQ=:LOTSEQ '
                 +' and (P2CODEMP=:CODEMP or P2CODEMP=:CODEMP_FILIAL )'
                 +' and SUBSTR(P2SIT,2,1) IN ('+QuotedStr('1')//+','+QuotedStr('6')
                 +','+QuotedStr('3')+','+QuotedStr('7')+') '
                 +' and P2LISTA=1 ' );
if Tb_Ped02_preP2CONS_PROPRIO.AsInteger=1 then //olhar aqui
  Query_Exe.ParamByName('CFO').AsInteger         :=cds_aliquotasCfo_rev_Ret.AsInteger
else
  Query_Exe.ParamByName('CFO').AsInteger         :=cds_aliquotasCfo_Indus_Ret.AsInteger;
Query_Exe.ParamByName('CFO_SUBECF').AsInteger  :=cds_aliquotasCfo_SubEcf_Ret.AsInteger;
Query_Exe.ParamByName('ST_IVA').AsFloat        :=cds_aliquotasal_stIVA_Pos.AsFloat;
Query_Exe.ParamByName('ST_REDUT').AsFloat      :=cds_aliquotasal_stAliqRed.AsFloat;
Query_Exe.ParamByName('ST_ICMSCRED').AsFloat   :=cds_aliquotasal_stIcmsCred.AsFloat;
Query_Exe.ParamByName('ST_ICMSDEB').AsFloat    :=cds_aliquotasal_stIcmsDeb.AsFloat;
Query_Exe.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave*-1;
Query_Exe.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_Exe.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
Query_Exe.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
try
   Query_Exe.ExecSQL;
   fdm1startcommit;
except
   ex_erroSql_Novo(Query_Exe,13892,'frm_venda','CADP01');
   end;



Query_Exe.Close;
Query_Exe.SQL.Clear;
Query_Exe.SQL.Add('Update CADP02 set    '
                 +'P2ST_IVA=:ST_IVA '
                 +',P2CFO=:CFO '
                 +',P2CFOSUBECF=:CFO_SUBECF '
                 +',P2ST_REDUT=:ST_REDUT '
                 +',P2ST_ICMCRED=:ST_ICMSCRED '
                 +',P2ST_ICMDEB=:ST_ICMSDEB '
                 +' where P2CHAVE=:CHAVE '
                 +' and P2LOTSEQ=:LOTSEQ '
                 +' and (P2CODEMP=:CODEMP or P2CODEMP=:CODEMP_FILIAL )'
//                 +' and SUBSTR(P2SIT,2,1) IN ('+QuotedStr('1')+','+QuotedStr('6')
                 +' and SUBSTR(P2SIT,2,1) IN ('+QuotedStr('1')
                 +','+QuotedStr('3')+','+QuotedStr('7')+') '
                 +' and P2LISTA=0 ' );
if Tb_Ped02_preP2CONS_PROPRIO.AsInteger=1 then //olhar aqui
  Query_Exe.ParamByName('CFO').AsInteger         :=cds_aliquotasCfo_rev_Ret.AsInteger
else
  Query_Exe.ParamByName('CFO').AsInteger         :=cds_aliquotasCfo_Indus_Ret.AsInteger;
Query_Exe.ParamByName('CFO_SUBECF').AsInteger  :=cds_aliquotasCfo_SubEcf_Ret.AsInteger;

Query_Exe.ParamByName('ST_IVA').AsFloat        :=cds_aliquotasal_stIVA_Ina.AsFloat;
Query_Exe.ParamByName('ST_REDUT').AsFloat      :=cds_aliquotasal_stAliqRed.AsFloat;
Query_Exe.ParamByName('ST_ICMSCRED').AsFloat   :=cds_aliquotasal_stIcmsCred.AsFloat;
Query_Exe.ParamByName('ST_ICMSDEB').AsFloat    :=cds_aliquotasal_stIcmsDeb.AsFloat;
Query_Exe.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave*-1;
Query_Exe.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_Exe.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
Query_Exe.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
try
   Query_Exe.ExecSQL;
   fdm1startcommit;
except
   ex_erroSql_Novo(Query_Exe,13892,'frm_venda','CADP01');
   end;

// CFOP PARA PRODUTOS NORMAIS


Query_Exe.Close;
Query_Exe.SQL.Clear;
Query_Exe.SQL.Add('Update CADP02 set    '
                 +' P2CFO=:CFO '
                 +',P2CFOSUBECF=:CFO_SUBECF '
                 +' where P2CHAVE=:CHAVE '
                 +' and P2LOTSEQ=:LOTSEQ '
                 +' and (P2CODEMP=:CODEMP or P2CODEMP=:CODEMP_FILIAL )'
//                 +' and NOT (SUBSTR(P2SIT,2,1) IN ('+QuotedStr('1')+','+QuotedStr('6')
                 +' and NOT (SUBSTR(P2SIT,2,1) IN ('+QuotedStr('1')
                 +','+QuotedStr('3')+','+QuotedStr('7')+')) '
                 +'  ' );
Query_Exe.ParamByName('CFO').AsInteger         :=cds_aliquotasCfo_rev_Trib.AsInteger;
Query_Exe.ParamByName('CFO_SUBECF').AsInteger  :=cds_aliquotasCfo_rev_Trib.AsInteger;
Query_Exe.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave*-1;
Query_Exe.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_Exe.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
Query_Exe.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
try
   Query_Exe.ExecSQL;
   fdm1startcommit;
except
   ex_erroSql_Novo(Query_Exe,13892,'frm_venda','CADP01');
   end;



// ICMS NORMAL E SIMPLES NACIONAL

Query_Exe.Close;
Query_Exe.SQL.Clear;
Query_Exe.SQL.Add('Update CADP02 set    '
                 +' P2ALIQ='
                 +' CASE WHEN P2TABELA='+QuotedStr('B')+' THEN :ALIQB '
                 +'      WHEN P2TABELA='+QuotedStr('C')+' THEN :ALIQC '
                 +'      WHEN P2TABELA='+QuotedStr('D')+' THEN :ALIQD '
                 +'      WHEN P2TABELA='+QuotedStr('E')+' THEN :ALIQE '
                 +'      WHEN P2TABELA='+QuotedStr('F')+' THEN :ALIQF '
                 +'      WHEN P2TABELA='+QuotedStr('G')+' THEN :ALIQG '
                 +'      WHEN P2TABELA='+QuotedStr('H')+' THEN :ALIQH '
                 +'      WHEN P2TABELA='+QuotedStr('I')+' THEN :ALIQI '
                 +' ELSE :ALIQA END '

                 +', P2REDUTICM='
                 +' CASE WHEN P2TABELA='+QuotedStr('B')+' THEN :REDUTB '
                 +'      WHEN P2TABELA='+QuotedStr('C')+' THEN :REDUTC '
                 +'      WHEN P2TABELA='+QuotedStr('D')+' THEN :REDUTD '
                 +'      WHEN P2TABELA='+QuotedStr('E')+' THEN :REDUTE '
                 +'      WHEN P2TABELA='+QuotedStr('F')+' THEN :REDUTF '
                 +'      WHEN P2TABELA='+QuotedStr('G')+' THEN :REDUTG '
                 +'      WHEN P2TABELA='+QuotedStr('H')+' THEN :REDUTH '
                 +'      WHEN P2TABELA='+QuotedStr('I')+' THEN :REDUTI '
                 +' ELSE :REDUTA END '
                 +',P2PCRED_SN=:PCRED_SN '
                 +' where P2CHAVE=:CHAVE '
                 +' and P2LOTSEQ=:LOTSEQ '
                 +' and  (P2CODEMP=:CODEMP or P2CODEMP=:CODEMP_FILIAL )'
//                 +' and NOT (SUBSTR(P2SIT,2,1) IN ('+QuotedStr('1')+','+QuotedStr('6')
                 +' and NOT (SUBSTR(P2SIT,2,1) IN ('+QuotedStr('1')
                 +','+QuotedStr('3')+','+QuotedStr('7')+')) ');

for x:=65 to 73 do
   begin
   mTabIcm:=char(x);
   if cds_aliquotas.Locate('tipo_reg;al_tabicm',vararrayof([0,mTabIcm]),[]) then
      begin
      Query_Exe.ParamByName('ALIQ'+mTabIcm).AsFloat    :=cds_aliquotasal_IcmsTrib.AsFloat;
      Query_Exe.ParamByName('REDUT'+mTabIcm).AsFloat   :=cds_aliquotasal_aliqredut.AsFloat;
      end
   else
      begin
      Query_Exe.ParamByName('ALIQ'+mTabIcm).AsFloat    :=0;
      Query_Exe.ParamByName('REDUT'+mTabIcm).AsFloat   :=0;
      end;
   end;

mTabIcm:='A';
cds_aliquotas.Locate('tipo_reg;al_tabicm',vararrayof([0,mTabIcm]),[]);
Query_Exe.ParamByName('PCRED_SN').AsFloat:= cds_aliquotasal_credsn.AsFloat;

Query_Exe.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave*-1;
Query_Exe.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_Exe.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
Query_Exe.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
try
   Query_Exe.ExecSQL;
   fdm1startcommit;
except
   ex_erroSql_Novo(Query_Exe,13892,'frm_venda','CADP01');
   end;

FreeAndNil(Query_Exe);
FreeAndNil(Query_cons);

end;

procedure TFrm_Venda_Pre_Farma.edt_codbcoEnter(Sender: TObject);
begin
mPed1_CodBco_Ant:=ValInt(edt_codbco.Text);
mEventoPendente:='edt_codbco';

end;

procedure TFrm_Venda_Pre_Farma.edt_codbcoChange(Sender: TObject);
begin
if (edt_codbco.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_codbcoExit(Sender: TObject);
begin
if valint(edt_codbco.Text)=0 then
   edt_codbco.Text:='';
if Trim(edt_codbco.Text)='' then
   begin
   edt_nombco.Text:='';
   exit;
   end;
if not flcadbco(1,0,0,edt_codbco.Text) then

   begin
   if edt_codbco.Enabled then
      begin
      verteclado(0);
      MessageDlg('Código do Banco não Cadastrado!',mtWarning,[mbOk],0);
      edt_codbco.SetFocus;
      exit;
      end;
   end;
mVenda_GP.mPed1_CodBco1:=valint(edt_codbco.Text);
edt_nombco.Text:=DM1.Tb_BcoBCBANCO.AsString;

end;

procedure TFrm_Venda_Pre_Farma.edt_codbcoKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%') then

   begin
   edt_codbco.Text:=fChamaBco(0,'_venda',key);
   edt_codbcoExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Venda_Pre_Farma.edt_codfpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if EstaoPressionadas([VK_CONTROL,VK_MENU,VK_F2]) then
   begin
   fDeletaPadroes(0,'_VENDA_PRE','CODFP');

   fGravaPadroes(0,'CODFP'    ,'text'   ,'_VENDA_PRE',edt_codfp.Text);
   MessageDlg('Forma de Pagamento '+edt_codfp.Text+' - '+edt_nomfp.Text+' Definidos como padrão!',mtInformation,[mbOk],0);
   end;

end;

procedure TFrm_Venda_Pre_Farma.edt_codbcoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if EstaoPressionadas([VK_CONTROL,VK_MENU,VK_F2]) then
   begin
   fDeletaPadroes(0,'_VENDA_PRE','CODBCO');
   fGravaPadroes(0,'CODBCO'    ,'text'   ,'_VENDA_PRE',edt_codbco.Text);
   MessageDlg('Banco '+edt_codbco.Text+' - '+edt_nombco.Text+' Definidos como padrão!',mtInformation,[mbOk],0);
   end;


end;

procedure TFrm_Venda_Pre_Farma.sbnEMailXMLClick(Sender: TObject);
var
Query_Cons: TQuery;
begin

if (DM4.Tb_ParGer02PG2USANFE.AsInteger>0) and (ValFloat(edt_submod.Text)<100)and (mVenda_GP.mped1_Chave>0)  then
   begin
   query_Cons := TQuery.Create(nil);
   query_Cons.DatabaseName:='SG_ASSOC';
   query_Cons.SQL.Clear;
   query_Cons.SQL.Add('SeleCT NSNUMERO,NSDTEMIS,NSNFE_CHAVEACESSO,NSNFE_DCHAVEACESSO,NSNFE_NUMPROT '
                     +',NSCODCLI from CADNS WHERE NSCHAVEP=:CHAVE '
                     +' AND NSLOTSEQ_CP=:LOTSEQ '
                     +' AND NSCODEMP=:CODEMP '
                     +' AND not (NSNFE_XML_CLIENTE is null) ');
   query_Cons.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
   query_Cons.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
   query_Cons.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
   try
      query_Cons.Open;
   except
      FreeAndNil(query_cons);
      sbnEMailXML.Enabled:=true;
      exit;
      end;
   if not query_Cons.isempty then
      begin
      if not DirectoryExists('C:\SGE\DANFE') then
         CreateDir('C:\SGE\DANFE');
      Application.CreateForm(TFrm_NFE_Impressao,Frm_NFE_Impressao);
      Frm_NFE_Impressao.fLerdadosXml('C:\SGE\DANFE\NFE'+Query_Cons.fieldbyname('NSNUMERO').AsString+'.PDF',
                            'C:\SGE\DANFE\NFE'+Query_Cons.fieldbyname('NSNUMERO').AsString+'.XML'
                           ,''
                           ,mVenda_GP.mped1_Chave
                           ,mVenda_GP.mped1_Chave_ano
                           ,mVenda_GP.mped1_CodEmp
                           ,False);

      FreeandNil(Frm_NFE_Impressao);
      end;
   Application.CreateForm(TFrm_EnviarEmail,Frm_EnviarEmail);
   Frm_EnviarEmail.EdtAssunto.Text:='NOTA FISCAL '+Query_Cons.FieldbyName('NSNUMERO').AsString;
   Frm_EnviarEmail.mmMensagem.Lines.Add(' SEGUE EM ANEXO A COPIA DO DANFE E XML DA NOTA FISCAL ');
   Frm_EnviarEmail.mmMensagem.Lines.Add(' NUMERO..:'+Query_Cons.FieldbyName('NSNUMERO').AsString);
   Frm_EnviarEmail.mmMensagem.Lines.Add(' EMITIDA EM ..:'+FormatDateTime(fdt, Query_Cons.fieldbyname('NSDTEMIS').AsDateTime));
   Frm_EnviarEmail.mmMensagem.Lines.Add(' CHAVE DE ACESSO..:'+Query_Cons.FieldbyName('NSNFE_CHAVEACESSO').AsString+Query_Cons.FieldbyName('NSNFE_CHAVEACESSO').AsString);
   Frm_EnviarEmail.mmMensagem.Lines.Add(' PROTOCOLO DE AUTORIZAÇÃO..:'+Query_Cons.FieldbyName('NSNFE_NUMPROT').AsString);
   Frm_EnviarEmail.mmMensagem.Lines.Add(' ');
   Frm_EnviarEmail.mmMensagem.Lines.Add(' '+DM1.Tb_EmpRAZAO.AsString);
   if FileExists('c:\sge\DANFE\NFE'+Query_Cons.FieldbyName('NSNUMERO').AsString+'.pdf') then
      Frm_EnviarEmail.lbxAnexos.Items.Add('c:\sge\DANFE\NFE'+Query_Cons.FieldbyName('NSNUMERO').AsString +'.pdf');
   if FileExists('c:\sge\DANFE\NFE'+Query_Cons.FieldbyName('NSNUMERO').AsString+'.XML') then
      Frm_EnviarEmail.lbxAnexos.Items.Add('c:\sge\DANFE\NFE'+Query_Cons.FieldbyName('NSNUMERO').AsString+'.XML');
   Frm_EnviarEmail.Tipo:=0;
   Frm_EnviarEmail.CliFor:=FloatToStr(mVenda_GP.mPed1_CodCli);
   {
   flqr1('CEMAIL','C','CADCLI','N','CCODCLI',FloatToStr(mVenda_GP.mPed1_CodCli));
   if DM1.Query1.FieldByName('CEMAIL').AsString<>'' then
      begin
      Frm_EnviarEmail.lb_Para.Items.Add(DM1.Query1.FieldByName('CEMAIL').AsString);
      end;}
   Frm_EnviarEmail.ShowModal;
   FreeandNil(Frm_EnviarEmail);
   FreeandNil(Query_Cons);
   sbnNFE.Enabled:=true;
   end;

end;

procedure TFrm_Venda_Pre_Farma.bb_merc_impClick(Sender: TObject);
var
  mOld_Leitor: Boolean;
  form_PedCli_ped_02: TFrm_PedCli;
  Query_Cons: TQuery;
  mChave_Nova: Integer;
  mChavep01,mChavep02,mChavePFP,mChavep01V,mChave_Lotes: String;
  mcodfp_ant: Integer;
  mtppco_ant: Integer;
begin
if sbnGravar.Enabled=false then
   exit;
mOld_Leitor:=cb_leitor.Checked;
cb_leitor.Checked:=False;
if (mVenda_GP.mPed1_Tipo_Ped<>0)  then
  begin
  fmensagem('Esta Operacao so e valida para Orçamento!',0,['0'],0);
  exit;
  end;
if mVenda_GP.mPed1_CodCli=0 then
  begin
  fmensagem('Favor Digitar um Cliente válido!',0,['0'],0);
  pcCabecalho.ActivePage:=tsCabecalho;
  edt_codcli.SetFocus;
  exit;
  end;
if mVenda_GP.mPed1_Codven=0 then
  begin
  fmensagem('Favor Digitar um codigo de Vendedor válido!',0,['0'],0);
  pcCabecalho.ActivePage:=tsCabecalho;
  edt_codven.SetFocus;
  exit;
  end;
if IntToStr(mVenda_GP.mPed1_CodFP)='' then
  begin
  fmensagem('Favor Digitar um codigo de Forma de Pagamento válido!',0,['0'],0);
  pcCabecalho.ActivePage:=tsCabecalho;
  edt_codfp.SetFocus;
  exit;
  end;

if fsonumero(edt_codCondPag.Text)=0 then
  begin
  fmensagem('Favor um Plano de Vendas válido!',0,['0'],0);
  pcCabecalho.ActivePage:=tsCabecalho;
  edt_codCondPag.SetFocus;
  exit;
  end;

if (mVenda_GP.mped1_submod<>0)  then
  begin
  fmensagem('Para Esta Operação O sub-Mod tem que ser igual a 0!',0,['0'],0);
  exit;
  end;

if form_PedCli_ped_02=nil then
  begin
  Application.CreateForm(TFrm_pedcli, form_PedCli_ped_02);
  end
else
  begin
  form_PedCli_ped_02.free;
  form_PedCli_ped_02:=nil;
  Application.CreateForm(TFrm_pedcli, form_PedCli_ped_02)
  end;
form_PedCli_ped_02.mBloqueia_Change:=false;

form_PedCli_ped_02.ori_pedcli:='selecionar';
form_PedCli_ped_02.FormStyle:=fsNormal;
form_PedCli_ped_02.Visible:=false;

form_PedCli_ped_02.ShowModal;
mcodfp_ant :=mVenda_GP.mPed1_CodFP;
mtppco_ant :=mVenda_GP.mPed1_tppco;

if mVenda_GP.mped1_Chave=0 then
   begin
   mVenda_GP.mped1_submod_grav:=0;
   if mVenda_GP.mped1_submod=100 then
      begin
      mVenda_GP.mped1_submod_grav:=100;
      if codemp>100 then
         mVenda_GP.fGravarPed01(0,-100)
      else
         mVenda_GP.fGravarPed01(0,100);
      end
   else
      begin
      if mVenda_GP.mped1_submod>0 then
         mVenda_GP.mped1_submod_grav:=100-mVenda_GP.mped1_submod;
      mVenda_GP.fGravarPed01(0,0);
      end;
   if (mVenda_GP.mped1_submod>0) and (mVenda_GP.mped1_submod<100) then
      begin
      mVenda_GP.mped1_submod_grav:=mVenda_GP.mped1_submod;
      if codemp>100 then
         mVenda_GP.fGravarPed01(0,-100)
      else
         mVenda_GP.fGravarPed01(0,100);
      end;
   edt_chave.Text:=InttosTr(mVenda_GP.mped1_Chave);
   end;

form_PedCli_ped_02.mBloqueia_Change:=true;
if form_PedCli_ped_02.mem_chavesel.Active then
   begin
   Query_Cons:=TQuery.Create(nil);
   Query_Cons.DatabaseName:='SG_ASSOC';

   mChavep01   :='';
   mChavep02   :='';
   mChavePFP   :='';
   mChavep01V  :='';
   mChave_Lotes:='';

   form_PedCli_ped_02.mem_chavesel.First;
   while not form_PedCli_ped_02.mem_chavesel.Eof do
      begin
      if trim(mChavep01)<>'' then
         mChavep01:=mChavep01+' or ';
      mChavep01:=mChavep01+'( P1CHAVE='+form_PedCli_ped_02.mem_chaveselCHAVE_PED.AsString
                      +' and P1CODEMP='+form_PedCli_ped_02.mem_chaveselCODEMP.AsString
                      +' and P1ORDEM='+form_PedCli_ped_02.mem_chaveselORDEM_PED.AsString
                      +' and P1LOTSEQ='+form_PedCli_ped_02.mem_chaveselLOTSEQ.AsString
                      +') ';


      if trim(mChavep02)<>'' then
         mChavep02:=mChavep02+' or ';
      mChavep02:=mChavep02+'( P2CHAVE='+form_PedCli_ped_02.mem_chaveselCHAVE_PED.AsString
                      +' and P2CODEMP='+form_PedCli_ped_02.mem_chaveselCODEMP.AsString
                      +' and P2ORDEM='+form_PedCli_ped_02.mem_chaveselORDEM_PED.AsString
                      +' and P2LOTSEQ='+form_PedCli_ped_02.mem_chaveselLOTSEQ.AsString
                      +') ';

      if trim(mChavePFP)<>'' then
         mChavePFP:=mChavePFP+' or ';
      mChavePFP:=mChavePFP+'( PFPCHAVE='+form_PedCli_ped_02.mem_chaveselcHAVE_PED.AsString
                      +' and PFPCODEMP='+form_PedCli_ped_02.mem_chaveselCODEMP.AsString
                      +' and PFPLOTSEQ='+form_PedCli_ped_02.mem_chaveselLOTSEQ.AsString
                      +') ';
      Query_Cons.Close;
      Query_Cons.SQL.Clear;
      Query_Cons.SQL.Add('Select count(*) from CADPFP '
                        +' where PFPCHAVE=0'+form_PedCli_ped_02.mem_chaveselCHAVE_PED.AsString
                        +' AND PFPLOTSEQ=0'+form_PedCli_ped_02.mem_chaveselLOTSEQ.AsString
                        +' AND PFPCODEMP=0'+form_PedCli_ped_02.mem_chaveselCODEMP.AsString);
      try
         Query_Cons.Open;
         if Query_Cons.fields[0].AsInteger<1 then
            fGeraFPgto(1,form_PedCli_ped_02.mem_chaveselCHAVE_PED.AsInteger,
                         form_PedCli_ped_02.mem_chaveselLOTSEQ.AsInteger,
                         form_PedCli_ped_02.mem_chaveselCODEMP.AsInteger);
      except
         ex_erroSql_Novo(Query_Cons,13577,'func','CADPFP');

         end;

      if trim(mChavep01V)<>'' then
         mChavep01V:=mChavep01V+' or ';
      mChavep01V:=mChavep01V+'( P1VCHAVE='+form_PedCli_ped_02.mem_chaveselCHAVE_PED.AsString
                      +' and P1VCODEMP='+form_PedCli_ped_02.mem_chaveselCODEMP.AsString
                      +' and P1VORDEM='+form_PedCli_ped_02.mem_chaveselORDEM_PED.AsString
                      +' and P1VLOTSEQ='+form_PedCli_ped_02.mem_chaveselLOTSEQ.AsString
                      +') ';
// inicio


      // termino
      form_PedCli_ped_02.mem_chavesel.Next;
      end;

   if trim(mChavep01)<>'' then
      begin
      if fmensagem(pchar('Quer Realmente Inserir os Produtos do(s) Pedido(s) Selecionado(s)?'),0,['1','2'],0)<>mrYes then
         begin
         exit;
         end;
      mChavep01:=mChavep01+' or ';
      mChavep01:=mChavep01+'( P1CHAVE='+IntTostr(mVenda_GP.mped1_Chave)
                      +' and (P1CODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_ini)
                      +' or P1CODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_fin)+')'
                      +' and P1ORDEM=01'
                      +' and P1LOTSEQ='+IntTostr(mVenda_GP.mPed1_Chave_ano)
                      +') ';

      mChavep02:=mChavep02+' or ';
      mChavep02:=mChavep02+'( P2CHAVE='+IntTostr(mVenda_GP.mped1_Chave)
                      +' and (P2CODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_ini)
                      +' or P2CODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_fin)+')'
                      +' and P2ORDEM=01'
                      +' and P2LOTSEQ='+IntTostr(mVenda_GP.mPed1_Chave_ano)
                      +') ';


      mChavePFP:=mChavePFP+' or ';
      mChavePFP:=mChavePFP+'( PFPCHAVE='+IntTostr(mVenda_GP.mped1_Chave)
                      +' and (PFPCODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_ini)
                      +' or PFPCODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_fin)+')'
                      +' and PFPLOTSEQ='+IntTostr(mVenda_GP.mPed1_Chave_ano)
                      +') ';

      mChavep01V:=mChavep01V+' or ';
      mChavep01V:=mChavep01V+'( P1VCHAVE='+IntTostr(mVenda_GP.mped1_Chave)
                      +' and (P1VCODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_ini)
                      +' or P1VCODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_fin)+')'
                      +' and P1VORDEM=01'
                      +' and P1VLOTSEQ='+IntTostr(mVenda_GP.mPed1_Chave_ano)
                      +') ';

      mPed1_Importando:=True;
      sbnGravarClick(self);
      mPed1_Importando:=False;
      fCriarNovaChave(1,codemp,mVenda_GP.mped1_Chave*-1,mChavep01,mChavep02,mChavePFP,mChavep01V,mChave_Lotes);

// INICIO

      Query_Cons.Close;
      Query_Cons.SQL.CLEAR;
      Query_Cons.SQL.Add('DELETE FROM CADP01 '
                        +' where ( P1CHAVE='+IntTostr(mVenda_GP.mped1_Chave)
                      +' and (P1CODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_ini)
                      +' or P1CODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_fin)+')'
                      +' and P1ORDEM=01'
                      +' and P1LOTSEQ='+IntTostr(mVenda_GP.mPed1_Chave_ano)
                      +') ');
       try
          Query_Cons.ExecSQL;
          fdm1StartCommit;
       except
          end;

      Query_Cons.Close;
      Query_Cons.SQL.CLEAR;
      Query_Cons.SQL.Add('DELETE FROM CADP02 '
                        +' where ( P2CHAVE='+IntTostr(mVenda_GP.mped1_Chave)
                      +' and (P2CODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_ini)
                      +' or P2CODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_fin)+')'
                      +' and P2LOTSEQ='+IntTostr(mVenda_GP.mPed1_Chave_ano)
                      +') ');
       try
          Query_Cons.ExecSQL;
          fdm1StartCommit;
       except
          end;



      Query_Cons.Close;
      Query_Cons.SQL.CLEAR;
      Query_Cons.SQL.Add('DELETE FROM CADPFP '
                        +' where ( PFPCHAVE='+IntTostr(mVenda_GP.mped1_Chave)
                      +' and (PFPCODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_ini)
                      +' or PFPCODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_fin)+')'
                      +' and PFPLOTSEQ='+IntTostr(mVenda_GP.mPed1_Chave_ano)
                      +') ');
       try
          Query_Cons.ExecSQL;
          fdm1StartCommit;
       except
          end;

      Query_Cons.Close;
      Query_Cons.SQL.CLEAR;
      Query_Cons.SQL.Add('DELETE FROM CADP01V '
                        +' where ( P1VCHAVE='+IntTostr(mVenda_GP.mped1_Chave)
                      +' and (P1VCODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_ini)
                      +' or P1VCODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_fin)+')'
                      +' and P1VLOTSEQ='+IntTostr(mVenda_GP.mPed1_Chave_ano)
                      +') ');
       try
          Query_Cons.ExecSQL;
          fdm1StartCommit;
       except
          end;




// TERMINO

// INICIO

      Query_Cons.Close;
      Query_Cons.SQL.CLEAR;
      Query_Cons.SQL.Add('Update CADP01 set P1CHAVE=P1CHAVE*-1 '
                        +' where ( P1CHAVE=-'+IntTostr(mVenda_GP.mped1_Chave)
                      +' and (P1CODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_ini)
                      +' or P1CODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_fin)+')'
                      +' and P1ORDEM=01'
                      +' and P1LOTSEQ='+IntTostr(mVenda_GP.mPed1_Chave_ano)
                      +') ');
       try
          Query_Cons.ExecSQL;
          fdm1StartCommit;
       except
          end;

      Query_Cons.Close;
      Query_Cons.SQL.CLEAR;
      Query_Cons.SQL.Add('Update CADP02 set P2CHAVE=P2CHAVE*-1 '
                        +' where ( P2CHAVE=-'+IntTostr(mVenda_GP.mped1_Chave)
                      +' and (P2CODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_ini)
                      +' or P2CODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_fin)+')'
                      +' and P2LOTSEQ='+IntTostr(mVenda_GP.mPed1_Chave_ano)
                      +') ');
      try
         Query_Cons.ExecSQL;
         fdm1StartCommit;
      except
         end;
      Query_Cons.Close;
      Query_Cons.SQL.CLEAR;
      Query_Cons.SQL.Add('Update CADPFP set PFPCHAVE=PFPCHAVE*-1 '
                        +' where ( PFPCHAVE=-'+IntTostr(mVenda_GP.mped1_Chave)
                      +' and (PFPCODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_ini)
                      +' or PFPCODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_fin)+')'
                      +' and PFPLOTSEQ='+IntTostr(mVenda_GP.mPed1_Chave_ano)
                      +') ');
       try
          Query_Cons.ExecSQL;
          fdm1StartCommit;
       except
          end;

      Query_Cons.Close;
      Query_Cons.SQL.CLEAR;
      Query_Cons.SQL.Add('Update CADP01V set P1VCHAVE=P1VCHAVE*-1 '
                        +' where ( P1VCHAVE=-'+IntTostr(mVenda_GP.mped1_Chave)
                      +' and (P1VCODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_ini)
                      +' or P1VCODEMP='+IntTostr(mVenda_GP.mPed1_Codemp_fin)+')'
                      +' and P1VLOTSEQ='+IntTostr(mVenda_GP.mPed1_Chave_ano)
                      +') ');
       try
          Query_Cons.ExecSQL;
          fdm1StartCommit;
       except
          end;


// TERMINO

      mped_Alterou_Cab:=true;


      edt_chaveExit(self);
      sbnAlterarClick(self);
      edt_codfp.text:=IntToStr(mcodfp_ant);
      if fLCadFP(0,edt_codfp.Text,'') then
         edt_nomfp.Text:=DM1.Tb_FPFPDESC.AsString
      else if fLCadFP(0,'','') then
         begin
         edt_codfp.text:=DM1.Tb_FPFPCODIGO.Asstring;
         mVenda_GP.mPed1_CodFP:=valint(edt_codfp.Text);
         mVenda_GP.mPed1_nomfp:=edt_nomfp.Text;
         end;

      edt_codfpExit(self);
      edt_codCondPagExit(self);
      FreeAndNil(Query_Cons);
      END;
   end;
form_PedCli_ped_02.mBloqueia_Change:=false;
FreeAndNil(form_PedCli_ped_02);

mVenda_GP.mPed1_tppco:=mtppco_ant;
cb_tppco.itemindex:=mVenda_GP.mPed1_tppco;

//if cb_tppco.ItemIndex=2 then
   fAjustarItensPed(false);
//else
//   fAjustarItensPed(true);

cb_leitor.Checked:=mOld_Leitor;
end;



function tFrm_Venda_Pre_Farma.fRecalcularformas(pTipo: Integer): Boolean;
var
x: Integer;
begin
for x:=1 to 2 do
   begin
   if mVenda_GP.mped1_submod=100 then
      begin
      if codemp>100 then
         mVenda_GP.mPed1_Codemp:=codemp-100
      else
         mVenda_GP.mPed1_Codemp:=codemp+100
      end
   else if mVenda_GP.mped1_submod=0 then
      begin
      mVenda_GP.mPed1_Codemp:=codemp
      end
   else if x=1 then
      mVenda_GP.mPed1_Codemp:=codemp
   else
      begin
      if codemp>100 then
         mVenda_GP.mPed1_Codemp:=codemp-100
      else
         mVenda_GP.mPed1_Codemp:=codemp+100
      end;
   mVenda_GP.mPed1_AjustaFP:='S';
   mVenda_GP.mPed1_QtdParc_ant:=-1;
{      mVenda_GP.fGravarItem(0 // item
                  ,mItem_Ant
                  ,0 //cds_ped02_preP2CFOP_ECF.AsInteger,
                  ,0 //cons_proprio
                  ,0 //cds_ped02_preP2CFOP_NF.AsInteger
                  ,0 //cds_ped02_preP2MODBCST.AsInteger,
                  ,0 // situacao
                  ,0 // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta
                  ,mVenda_GP.mPed1_CodFP
                  ,3 // tipo do evento 3-apenas calcular
                  ,0 // CONTROLE ESPECIAL

                  ,'' //cds_ped02_preP2CODPRO.AsString,
                  ,''
                  ,''
                  ,mCodpro_Ant // codigo anterior
                  ,0 //cds_ped02_preP2QTD.AsFloat,
                  ,mQtd_Ant
                  ,0 //cds_ped02_preP2DESC_PERC01.AsFloat,
                  ,0 //cds_ped02_preP2DESC_PERC02.AsFloat,
                  ,0 //tb_ped02_pre.AsFloat,
                  ,0 // desconto em valor
                  ,0
                  ,0 //cds_ped02_preP2PRECO.AsFloat,
                  ,0
                  ,0
                  ,0 //repasse de icms
                  ,0 // lista neutra positiva negativa
                  ,0 //cds_ped02_preP2PRECO_TAB.AsFloat,
                  ,0 //cds_ped02_preP2PRECO_TAB.AsFloat, // preco da forma de pagamento
                  ,0 //cds_ped02_preP2PRECO_UCPR.AsFloat,
                  ,0 //cds_ped02_preP2PRECO_CUS.AsFloat,
                  ,0 //cds_ped02_preP2PRECO_MAXCONS.AsFloat,
                  ,0 //cds_ped02_preP2IPI_PERC.AsFloat,
                  ,0 //cds_ped02_preP2ICMS_PERC.AsFloat,
                  ,0 // percentual de comissao
                  ,0 //cds_ped02_preP2PIS_PERC.AsFloat,
                  ,0 //cds_ped02_preP2COFINS_PERC.AsFloat,
                  ,0 //cds_ped02_preP2DESCFIN_PERC.AsFloat,
                  ,0 // percentual de acrescimos
                  ,0 //cds_ped02_preP2CODVEN.AsFloat,
                  ,0 //cds_ped02_preP2ICMS_PPRED.AsFloat,
                  ,0 //cds_ped02_preP2ST_IVA.AsFloat,
                  ,0 //cds_ped02_preP2ST_REDUT.AsFloat,
                  ,0 //cds_ped02_preP2ST_REDUT.AsFloat,
                  ,0 //cds_ped02_preP2ST_ICMSDEB.AsFloat,
                  ,0 //cds_ped02_preP2ST_ICMSCRED.AsFloat,
                  ,0 // cds_ped02_preP2ICMSSN_PERC.AsFloat,
                  ,valfloat(edt_desc_valor.Text)
                  ,0 // ACRESCIMOS RATEADO
                  ,valfloat(edt_valseg.Text)
                  ,ValFloat(edt_valfre.Text)
                  ,iif(mVenda_GP.mPed1_Codemp>100,ValFloat(edt_tarban_101.Text),ValFloat(edt_tarban1.Text))
                  ,valfloat(edt_despAces.Text)
                  ,'' //cds_ped02_preP2CST.AsString,
                  ,'' //cds_ped02_preP2AMBIENTE.AsString,
                  ,'' //cds_ped02_preP2DESC_COMP.AsString,
                  ,'' //cds_ped02_preP2CSOSN.AsString,
                  ,'' //cds_ped02_preP2csosn_ori.AsString
                  ,'' //cds_ped02_preP2PROMOCAO.AsString
                  ,mVenda_GP.mPed1_NomFP,mVenda_GP.mPed1_BaixaFP,'','',''
                  ,0 // tipo de preco
                  ,0 // icms_alipi
                  );      }
    mVenda_GP.fGravarItem(0 // produto
                        ,mitem_ant
                        ,0 // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta p2Estoque
                        ,mVenda_GP.mPed1_CodFP
                        ,3 //apenas calcular  tipo do evento 0-inclusao 1-alteracao 2-exclusao 3-calcular
                        ,0 //pSituacao: Integer;
                        ,' '
                        ,mVenda_GP.mPed1_NomFP
                        ,mVenda_GP.mPed1_BaixaFP
                        ,0  //pQtd_Cal
                        ,0 // pPrecoUnit_Cal
                        ,0 //,pPrecoTab_Cal
                        ,0 // pPrecoUCPR_Cal
                        ,0 // pPrecoCus_Cal
                        ,0 // pPrecoMax_Cal,
                        ,0 // mQtd_Ant_Cal
                        ,valfloat(edt_valseg.Text)
                        ,ValFloat(edt_valfre.Text)
                        ,iif(mVenda_GP.mPed1_Codemp>100,ValFloat(edt_tarban_101.Text),ValFloat(edt_tarban1.Text))
                        ,valfloat(edt_despAces.Text)
                        ,valfloat(edt_desc_valor.Text)
                        ,nil);
                  
   if (mVenda_GP.mped1_submod=100) or (mVenda_GP.mped1_submod=0) then
      break;
   end;

result:=true;
end;
procedure TFrm_Venda_Pre_Farma.edt_datsepExit(Sender: TObject);
begin
if edt_datsep.Date>pdatanula then
   begin
   if edt_datsep.Date>Date then
      begin
      fmensagem('Data da Separaçao Não pode ser maior que '+FormatDatetime(fdt2, date),0,['0'],0);
      edt_datsep.SetFocus;
      end
   else if edt_datsep.Date>edt_datap.Date then
      begin
      fmensagem('Data da sepitação Não pode ser menor que '+FormatDatetime(fdt2, edt_datsep.date),0,['0'],0);
      edt_datsep.SetFocus;
      end
   else
      begin
      if fsonumero(edt_horsep.Text)=0 then
         edt_horsep.Text:=FormatDatetime('hh:nn', time);
      mVenda_GP.mped1_DataSep:=StrtoDateTime(edt_datsep.text+' '+edt_horsep.Text+':00');
      end;

   end;
end;

procedure TFrm_Venda_Pre_Farma.edt_datembExit(Sender: TObject);
begin
if edt_datemb.Date>pdatanula then
   begin
   if edt_datemb.Date>Date then
      begin
      fmensagem('Data de embalaçao Não pode ser maior que '+FormatDatetime(fdt2, date),0,['0'],0);
      edt_datemb.SetFocus;
      end
   else if edt_datemb.Date>edt_datap.Date then
      begin
      fmensagem('Data de embalaçao  Não pode ser menor que '+FormatDatetime(fdt2, edt_datemb.date),0,['0'],0);
      edt_datemb.SetFocus;
      end
   else
      begin
      if fsonumero(edt_horemb.Text)=0 then
         edt_horemb.Text:=FormatDatetime('hh:nn', time);
      mVenda_GP.mped1_Dataemb:=StrtoDateTime(edt_datemb.text+' '+edt_horemb.Text+':00');
      end;

   end;

end;

procedure TFrm_Venda_Pre_Farma.edt_datconfExit(Sender: TObject);
begin
if edt_datconf.Date>pdatanula then
   begin
   if edt_datconf.Date>Date then
      begin
      fmensagem('Data da conferencia Não pode ser maior que '+FormatDatetime(fdt2, date),0,['0'],0);
      edt_datconf.SetFocus;
      end
   else if edt_datconf.Date>edt_datap.Date then
      begin
      fmensagem('Data da conferencia Não pode ser menor que '+FormatDatetime(fdt2, edt_datconf.date),0,['0'],0);
      edt_datconf.SetFocus;
      end
   else
      begin
      if fsonumero(edt_horconf.Text)=0 then
         edt_horconf.Text:=FormatDatetime('hh:nn', time);
      mVenda_GP.mPed1_DatCon:=StrtoDateTime(edt_datconf.text+' '+edt_horconf.Text+':00');
      end;

   end;

end;

procedure TFrm_Venda_Pre_Farma.edt_datentExit(Sender: TObject);
begin
if edt_datent.Date>pdatanula then
   begin
   if edt_datent.Date>Date then
      begin
      fmensagem('Data da entaraçao Não pode ser maior que '+FormatDatetime(fdt2, date),0,['0'],0);
      edt_datent.SetFocus;
      end
   else if edt_datent.Date>edt_datap.Date then
      begin
      fmensagem('Data da entitação Não pode ser menor que '+FormatDatetime(fdt2, edt_datent.date),0,['0'],0);
      edt_datent.SetFocus;
      end
   else
      begin
      if fsonumero(edt_horent.Text)=0 then
         edt_horent.Text:=FormatDatetime('hh:nn', time);
      mVenda_GP.mPed1_DatEnt:=StrtoDateTime(edt_datent.text+' '+edt_horent.Text+':00');
      end;

   end;

end;
function TFrm_Venda_Pre_Farma.FbuscaEstoque(pCodPro: Real): Boolean;
var
Query_cons:TQuery;
begin
Query_cons:=TQuery.Create(nil);
Query_Cons.DatabaseName:='SG_ASSOC';
Query_cons.Close;
Query_cons.SQL.Clear;
query_Cons.SQL.Add('Select  sum(CESALDO) as CESALDO  '
                 +'                ,sum(DECODE(CEFILIAL,:FILIAL,CESALDO,0)) AS SALDO_FILIAL '
                 +' ,max (PDNOME) as PDNOME, max(PDMARCA) as PDMARCA, max(PDUND) as PDUND '
                 +' ,max(PDPRECO1) as PDPRECO1,max(PDPRECO2) as PDPRECO2, max(PDPRECO3) as PDPRECO3 ' 
                 +' from CADEST,CADPRO where (CECODEMP=:CODEMP OR CECODEMP=:CODEMP_FILIAL) '
                 +' and CECODPRO=:CODPRO '
                 +' and PDCODPRO=CECODPRO '
                 +' and (PDCODEMP=:CODEMP OR PDCODEMP=:CODEMP_FILIAL) ');


Query_cons.ParamByName('CODEMP').AsInteger:=codemp;
Query_cons.ParamByName('FILIAL').AsInteger:=mVenda_GP.mPed1_Filial;

if codemp>100 then
   Query_cons.ParamByName('CODEMP_FILIAL').AsInteger:=codemp-100
else
   Query_cons.ParamByName('CODEMP_FILIAL').AsInteger:=codemp+100;
Query_cons.ParamByName('CODPRO').AsFloat:=pCodPro;
try
   Query_cons.Open;
   st_estpro.Caption:='Produto '+query_cons.fieldbyName('PDNOME').AsString+' '
                    +Query_cons.FIELDBYname('PDMARCA').AsString
                    +' '+Query_cons.FIELDBYname('PDUND').AsString
                    +' Estoque Atual '+CB_FILIAL.Text+': '+FormatFloat(mcasqtd, Query_cons.FIELDBYname('SALDO_FILIAL').AsFloat)
                    +' Geral: '+FormatFloat(mcasqtd, Query_cons.FIELDBYname('CESALDO').AsFloat);
except
   st_estpro.Caption:='Produto '+FloatToStr(pcodpro)+' não encontrado!';
   end;

freeandnil(query_cons);
result:=true;


end;

function TFrm_Venda_Pre_Farma.fVerificaConclusaoProcesso(pChaveAcesso,pSerieNF: String;pChave_Ped,pLotseq,pCodemp,pNumNF: Integer;pValor: Real): Boolean;
var
Query_xml: TSQLQuery;
Query_exe: TSQLQuery;
mChave_nfe_id: Integer;
begin
   result:=false;
   exit;
 

result:=true;
if trim(pchaveAcesso)='' then
   begin
   result:=false;
   exit;
   end;

Query_xml:=TSQLQuery.Create(nil);
Query_xml.SQLConnection:=DM_MYSQL.SQLConnection_NFE;
Query_xml.SQL.Add('select count(*) as qtd, min(nfe_id) as nfe_id,nfe_cnpj from intersys_cadnfe '
                 +' where nfe_ChAcessoNFE=:ChAcessoNFE'
                 +' and nfe_status=9 and nfe_id>0 ');
Query_xml.parambyName('ChAcessoNFE').AsString :=pChaveAcesso;
try
   Query_xml.Open;
except
   FreeAndNIl(Query_xml);
   result:=false;
   exit;
   end;
if query_xml.fields[0].asinteger<1 then
   begin
   result:=false;
   exit;
   end;
mChave_nfe_id:=Query_xml.fieldbyname('nfe_id').AsInteger;

Query_xml.close;
Query_xml.SQL.Clear;
Query_xml.SQL.Add('select nfe_id,nfe_cnpj,nfe_xml_prot_ret,nfe_tpemis from intersys_cadnfe '
                 +' where nfe_id=:nfe_id ');
query_xml.parambyname('nfe_id').AsInteger:=mChave_nfe_id;
try
   Query_xml.Open;
except
   FreeAndNIl(Query_xml);
   result:=false;
   exit;
   end;
if query_xml.FieldByName('nfe_xml_prot_ret').IsNull then
   begin
   Query_exe:=TSQLQuery.Create(nil);
   Query_exe.SQLConnection:=DM_MYSQL.SQLConnection_NFE;

   Query_exe.close;
   Query_exe.SQL.Clear;
   Query_exe.SQL.Add(' Update intersys_cadnfe set nfe_status=1 '
                    +' where nfe_id=:nfe_id ');
   query_exe.parambyname('nfe_id').AsInteger:=mChave_nfe_id;
   try
      Query_exe.execsql;
   except
      FreeAndNIl(Query_exe);
      FreeAndNIl(Query_xml);
      result:=false;
      exit;
      end;
   FreeAndNIl(Query_exe);
   end;

Application.CreateForm(TFrm_nfe_Agde,Frm_nfe_Agde);
Frm_nfe_Agde.mnfe_chaveid      :=Query_xml.FieldbyName('nfe_id').AsInteger;
Frm_nfe_Agde.mnfe_chave_ped    :=pChave_Ped;
Frm_nfe_Agde.mnfe_chave_ano_ped:=pLotSeq;
Frm_nfe_Agde.mnfe_CodEmp_ped   :=pCodEmp;

   Frm_nfe_Agde.mnfe_numnf       :=pNumNF;
   Frm_nfe_Agde.mnfe_Serie       :=pSerieNF;
   Frm_nfe_Agde.mnfe_Modelo      :='55';



frm_nfe_agde.lbl_cliente.Caption    :=edt_codcli.text+' - '+edt_nomcli.text;
frm_nfe_agde.lbl_cidade_uf.Caption  :='';
frm_nfe_agde.lbl_funcao.Caption:='EMISSÃO DE NFE. Número da Nota Fiscal: '+FormatFloat('000000', pNumNF)+' Valor: '+FormatFloat(mcasas, pValor);
frm_nfe_agde.mnfe_chaveAcesso  :=pChaveAcesso;//+mChave_Acesso_Dig;

DM1.Query1.close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.Add('SELECT * FROM CADPAR_NF where PNF_CODEMP=:CODEMP '
                  +' AND PNF_CHAVE=:CHAVE ');
DM1.Query1.ParamByName('CODEMP').Value:=pCodemp;
if query_xml.FieldByName('nfe_tpemis').AsInteger=3 then
   DM1.Query1.ParamByName('CHAVE').Value :='SCAN'
else
   DM1.Query1.ParamByName('CHAVE').Value :='SERIE'+IntToStr(1);

DM1.Query1.Open;

frm_nfe_agde.mnfe_servidor01:=DM1.Query1.fieldbyName('PNF_SERVIDOR01').AsInteger;
frm_nfe_agde.mnfe_servidor02:=DM1.Query1.fieldbyName('PNF_SERVIDOR02').AsInteger;
frm_nfe_agde.mnfe_servidor03:=DM1.Query1.fieldbyName('PNF_SERVIDOR03').AsInteger;
frm_nfe_agde.mnfe_operacao:=1; // nota fiscal
if query_xml.FieldByName('nfe_tpemis').AsInteger=3 then
   frm_nfe_agde.MNfe_tpemis  :=3
else
   frm_nfe_agde.MNfe_tpemis  :=1;

frm_nfe_agde.ShowModal;
{
if Frm_nfe_Agde.mErroProcessamento then
   begin
   Application.CreateForm(TFrm_Sintegra_Advert, Frm_Sintegra_Advert);
   Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Clear;
   Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Add(frm_nfe_agde.mnfe_mensagem_retorno);
   Frm_Sintegra_Advert.TreeView1.Items:=frm_nfe_agde.TreeView1.Items;
   Frm_Sintegra_Advert.TreeView1.FullExpand;
   Frm_Sintegra_Advert.tsXml.TabVisible:=false;
   if (mnfe_dh_valcertificado<=date) then
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.lines.Add('Certificado Digital vencido em: '
                                                  +FormatDateTime(fdathor, mnfe_dh_valcertificado))
   else if (mnfe_dh_valcertificado<=date+30) then
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.lines.Add('O Seu Certificado Digital ira vencer em: '
                                                     +FormatDateTime(fdathor, mnfe_dh_valcertificado));

   Frm_Sintegra_Advert.ShowModal;
   Frm_Sintegra_Advert.Free;
   Frm_Sintegra_Advert:=nil;
   end
else
   begin
   if (mnfe_dh_valcertificado<=date+30) then
      begin
      Application.CreateForm(TFrm_Sintegra_Advert, Frm_Sintegra_Advert);
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Clear;
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Add(frm_nfe_agde.mnfe_mensagem_retorno);
      Frm_Sintegra_Advert.TreeView1.Items:=frm_nfe_agde.TreeView1.Items;
      Frm_Sintegra_Advert.TreeView1.FullExpand;
      Frm_Sintegra_Advert.tsXml.TabVisible:=false;
      if (mnfe_dh_valcertificado<=date) then
         Frm_Sintegra_Advert.Memo_NFSNaoEnc.lines.Add('Certificado Digital vencido em: '
                                                     +FormatDateTime(fdathor, mnfe_dh_valcertificado))
      else if (mnfe_dh_valcertificado<=date+30) then
         Frm_Sintegra_Advert.Memo_NFSNaoEnc.lines.Add('O Seu Certificado Digital ira vencer em: '
                                                     +FormatDateTime(fdathor, mnfe_dh_valcertificado));
      Frm_Sintegra_Advert.ShowModal;
      Frm_Sintegra_Advert.Free;
      Frm_Sintegra_Advert:=nil;
      end;
   Application.CreateForm(TFrm_NFE_Impressao,Frm_NFE_Impressao);
   Frm_NFE_Impressao.fLerdadosXml('','','',pChave_Ped,pLotSeq,pCodEmp);


   FreeandNil(Frm_NFE_Impressao);


   end;
}
 if (mnfe_dh_valcertificado-30)<=date+30 then
    begin
    if not flfilpad(-2,'VCTO_CERT_DIG',FormatDateTime(fdt2, date)) then
       begin
       if fmensagem('O seu Certificado Digital irá vencer em: '+FormatDateTime(fdathor, mnfe_dh_valcertificado)
                 +'. Restam '+IntToStr(Round(mnfe_dh_valcertificado-date))+' dia(s) para vencer. Avisar Novamente?'
                 ,0,['1','2'],1)=mrNo then
           begin
           fGravaPadroes(-2,FormatDateTime(fdt2, date) ,'aviso'
          ,'VCTO_CERT_DIG'
           ,'SIM');
           end;
       end;
    end;
freeandnil(frm_nfe_agde);
Freeandnil(Query_xml);
end;

function TFrm_Venda_Pre_Farma.fRenomearItem(pItemRemovido: Integer):Boolean;
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
Query_Item.SQL.Add('Update CADP02 set P2ITEM=P2ITEM-1 '
                  +' where P2CHAVE=:CHAVE '
                  +' and P2LOTSEQ=:LOTSEQ '
                  +' and (P2CODEMP=:CODEMP or P2CODEMP=:CODEMP_FILIAL)'
                  +' and P2ITEM>=:ITEM ');
Query_Item.ParamByName('CHAVE').AsInteger        :=mVenda_GP.mped1_Chave;
Query_Item.ParamByName('LOTSEQ').AsInteger       :=mVenda_GP.mPed1_Chave_ano;
Query_Item.ParamByName('CODEMP').AsInteger       :=mVenda_GP.mPed1_Codemp_ini;
Query_Item.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
Query_Item.ParamByName('ITEM').AsInteger         :=pItemRemovido;
try
   Query_Item.ExecSQL;
   fdm1StartCommit;
except
   result:=false;
   end;
// INICIO

Query_Item.Close;
Query_Item.SQL.Clear;
Query_Item.SQL.Add('Update CADP02_CMET set P2CM_ITEM=P2CM_ITEM-1 '
               +' where P2CM_CHAVE=:CHAVE '
               +' and P2CM_LOTSEQ=:LOTSEQ '
               +' and (P2CM_CODEMP=:CODEMP or P2CM_CODEMP=:CODEMP_FILIAL)'
               +' and P2CM_ITEM>=:ITEM ');
Query_Item.ParamByName('CHAVE').AsInteger        :=mVenda_GP.mped1_Chave;
Query_Item.ParamByName('LOTSEQ').AsInteger       :=mVenda_GP.mPed1_Chave_ano;
Query_Item.ParamByName('CODEMP').AsInteger       :=mVenda_GP.mPed1_Codemp_ini;
Query_Item.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
Query_Item.ParamByName('ITEM').AsInteger         :=pItemRemovido;
try
   Query_Item.ExecSQL;
   fdm1StartCommit;
except
   result:=false;
   end;


// TERMINO


FreeAndNil(Query_item);
mpos_reg:=Tb_Ped02_pre.GetBookmark;
While not Tb_Ped02_pre.Eof do
   begin
   Tb_Ped02_pre.Edit;
   Tb_Ped02_preP2ITEM.Value:=Tb_Ped02_preP2ITEM.Value-1;
   Tb_Ped02_pre.Post;
   Tb_Ped02_pre.Next;
   end;
mlocalizando_pedido:=false;

end;



procedure TFrm_Venda_Pre_Farma.Tb_Ped02_preAfterDelete(DataSet: TDataSet);
begin
if Tb_Ped02_preP2ITEM.AsInteger>mped02_itemexcluido then
   fRenomearItem(mped02_itemexcluido);
end;

procedure TFrm_Venda_Pre_Farma.Timer_alteracaoTimer(Sender: TObject);
begin
if mVenda_GP.mped1_Chave>0 then
   begin
   if SecondsBetween(mVenda_GP.mPed1_DatHor_UEVE,now)>50 then
      begin
      fBloqDesPedido(1,mVenda_GP.mPed1_Codemp
                      ,mVenda_GP.mPed1_Chave_ano
                      ,mVenda_GP.mped1_Chave);
      mVenda_GP.mPed1_DatHor_UEVE:=now;
      end;
   end;
end;



function TFrm_Venda_Pre_Farma.fBaixarDevolucao(pTipo: Integer; pCodPro,pLote,pDtVcto: String; pQtd:real): Boolean;
{
ptipo=0 Baixa a Devolucao
      1 Cancela a Devolução
}

var
Query_Exe,query_lotes: TQuery;
mQtdProd,mQtdBaixa: Real;
begin
Query_Lotes:=TQuery.Create(nil);
query_lotes.DatabaseName:='SG_ASSOC';
Query_exe:=TQuery.Create(nil);
query_exe.DatabaseName:='SG_ASSOC';

if pTipo=0 then
   begin
   query_lotes.Close;
   query_lotes.sql.Clear;
   query_lotes.sql.Add('Select P2QTD,NVL(P2QTDDEV,0) AS P2QTDDEV,'
                      +'   (P2QTD-NVL(P2QTDDEV,0)) AS QTDVDA '
                      +',P2CODEMP '
                      +',P2CHAVE,P2CODPRO,P2LOTSEQ,P2ITEM '
                      +' from CADP02 where ');
   mem_ped01d.first;
   mcinst:=' ((';

   While not mem_ped01d.Eof do
      begin
      if mem_ped01dP1DCH_OR.AsInteger=0 then
         begin
         mem_ped01d.Next;
         Continue;
         end;
       query_lotes.SQL.add(mcinst+'(P2CODEMP=0'+mem_ped01dP1DCODEMP_OR.AsString
                          +' and P2LOTSEQ=0'+mem_ped01dP1DLS_OR.AsString
                          +' and P2CHAVE=0'+mem_ped01dP1DCH_OR.AsString+')');

       mcinst:=') or (';
       mem_ped01d.Next;
       end;
    if mcinst=') or (' then
       Query_Lotes.SQL.Add(')) ');
    query_lotes.SQL.Add(' and P2CODPRO='+pcodpro);
    query_lotes.SQL.Add(' and  (P2QTD-NVL(P2QTDDEV,0)) >0');
    try
       query_lotes.Open;
    except
       ex_erroSql_Novo(query_lotes,15479,'frm_venda_pre','CADP02');
       end;

    mQtdProd:=pqtd;
    While (not query_lotes.Eof) and (mQTdProd>0) do
       begin
       mQtdBaixa:=query_lotes.fieldbyName('QTDVDA').AsFloat;
       if mQtdBaixa>mQtdProd then
          mQtdBaixa:=mQtdprod;


       fAtualizaQtdDev(ptipo,query_Lotes.FieldByName('P2CHAVE').AsInteger
            ,query_Lotes.FieldByName('P2LOTSEQ').AsInteger
            ,query_Lotes.FieldByName('P2CODEMP').AsInteger
            ,query_Lotes.FieldByName('P2ITEM').AsInteger
            ,query_Lotes.FieldByName('P2LOTE').AsString
            ,query_Lotes.FieldByName('P2CODPRO').AsFloat
            ,mQtdBaixa);
       mQtdProd:=mQtdProd-mQtdBaixa;
       Query_Lotes.Next;
       end;
   end
else if pTipo=1 then
   begin
   query_lotes.Close;
   query_lotes.sql.Clear;
   query_lotes.sql.Add('Select P2QTD,NVL(P2QTDDEV,0) AS P2QTDDEV,'
                      +'   (P2QTD-NVL(P2QTDDEV,0)) AS QTDVDA '
                      +' ,P2CODEMP '
                      +',P2CHAVE,P2CODPRO,P2LOTSEQ,P2ITEM '
                      +' from CADP02 where ');
   mem_ped01d.first;
   mcinst:=' ((';

   While not mem_ped01d.Eof do
      begin
      if mem_ped01dP1DCH_OR.AsInteger=0 then
         begin
         mem_ped01d.Next;
         Continue;
         end;
       query_lotes.SQL.add(mcinst+'(P2CODEMP=0'+mem_ped01dP1DCODEMP_OR.AsString
                          +' and P2LOTSEQ=0'+mem_ped01dP1DLS_OR.AsString
                          +' and P2CHAVE=0'+mem_ped01dP1DCH_OR.AsString+')');

       mcinst:=') or (';
       mem_ped01d.Next;
       end;
    if mcinst=') or (' then
       Query_Lotes.SQL.Add(')) ');
    query_lotes.SQL.Add(' and P2CODPRO='+pcodpro);
    query_lotes.SQL.Add(' and  NVL(P2QTDDEV,0)>0');
    try
       query_lotes.Open;
    except
       ex_erroSql_Novo(query_lotes,15439,'frm_venda_pre','CADP02_LOTES');
       end;

    mQtdProd:=pqtd;
    While (not query_lotes.Eof) and (mQTdProd>0) do
      begin
      mQtdBaixa:=query_lotes.fieldbyName('P2QTDDEV').AsFloat;
      if mQtdBaixa>mQtdProd then
         mQtdBaixa:=mQtdprod;

       fAtualizaQtdDev(ptipo,query_Lotes.FieldByName('P2CHAVE').AsInteger
            ,query_Lotes.FieldByName('P2LOTSEQ').AsInteger
            ,query_Lotes.FieldByName('P2CODEMP').AsInteger
            ,query_Lotes.FieldByName('P2ITEM').AsInteger
            ,query_Lotes.FieldByName('P2LOTE').AsString
            ,query_Lotes.FieldByName('P2CODPRO').AsFloat
            ,mQtdBaixa);
      mQtdProd:=mQtdProd-mQtdBaixa;
      query_lotes.Next;
      end;
   end;

FreeandNil(Query_Lotes);
FreeandNil(Query_exe);

if mQtdProd>0 then
   result:=false
else
   result:=true;
end;


procedure TFrm_Venda_Pre_Farma.edt_pedori1Exit(Sender: TObject);
begin
mVenda_GP.mped1_npedori1:=edt_pedori1.text;
end;

procedure TFrm_Venda_Pre_Farma.edt_pedori2Exit(Sender: TObject);
begin
mVenda_GP.mped1_npedori2:=edt_pedori2.text;

end;

procedure TFrm_Venda_Pre_Farma.bbcmet_sairClick(Sender: TObject);
begin
pcProdServ.ActivePage:=tsProdutos;


end;

procedure TFrm_Venda_Pre_Farma.Tb_Ped02_preBeforeCancel(DataSet: TDataSet);
begin
if Tb_Ped02_pre.State in [dsinsert] then
   begin
   if Tb_Ped02_preP2CONTESP.AsInteger=1 then
      fDeletarCmet(Tb_Ped02_preP2ITEM.AsInteger,ValFloat(Tb_Ped02_preP2CODPRO.AsString))
   else  if Tb_Ped02_preP2CONTESP.AsInteger=5 then
      fDeletarArmas(Tb_Ped02_preP2ITEM.AsInteger,ValFloat(Tb_Ped02_preP2CODPRO.AsString));
   end;



end;

procedure TFrm_Venda_Pre_Farma.edt_nomcliExit(Sender: TObject);
begin
      mVenda_GP.mPed1_razsoc:=edt_nomcli.Text;

end;

procedure TFrm_Venda_Pre_Farma.CB_SEPAMBClick(Sender: TObject);
begin
{
if (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;
mVenda_GP.mPed1_SepAmb:=CB_SEPAMB.ItemIndex;

if mVenda_GP.mPed1_SepAmb=1 then
   begin
   DBGrid_itens.Columns[5].Visible:=true;
   DBGrid_itens.Columns[5].Width  :=66;
   DBGrid_itens.Columns[2].Width  :=227;
   end
else
   begin
   DBGrid_itens.Columns[5].Visible:=false;
   DBGrid_itens.Columns[2].Width  :=293;
   end;
}

end;

procedure TFrm_Venda_Pre_Farma.CB_SEPAMBExit(Sender: TObject);
begin
{
if (CB_SEPAMB.ItemIndex<0) and (trim(CB_SEPAMB.Text)<>'') then
   begin
   with CB_SEPAMB do
      ItemIndex := Items.IndexOf(CB_SEPAMB.Text);
  end;
mVenda_GP.mPed1_SepAmb:=CB_SEPAMB.ItemIndex;

if mVenda_GP.mPed1_SepAmb=1 then
   begin
   DBGrid_itens.Columns[5].Visible:=true;
   DBGrid_itens.Columns[5].Width  :=66;
   DBGrid_itens.Columns[2].Width  :=227;
   end
else
   begin
   DBGrid_itens.Columns[5].Visible:=false;
   DBGrid_itens.Columns[2].Width  :=293;
   end;

}
end;

procedure TFrm_Venda_Pre_Farma.edt_nomcliEnter(Sender: TObject);
begin
mEventoPendente:='edt_mnomcli';


end;

procedure TFrm_Venda_Pre_Farma.edt_nomcliChange(Sender: TObject);
begin
if (edt_nomcli.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;




procedure TFrm_Venda_Pre_Farma.CB_FILIALEnter(Sender: TObject);
begin
    mant_filial:=CB_FILIAL.ItemIndex;


end;

procedure TFrm_Venda_Pre_Farma.CB_FILIALExit(Sender: TObject);
var
  Query_filial: TQuery;
begin
//lindomar
if (CB_FILIAL.ItemIndex<0) and (trim(CB_FILIAL.Text)<>'') then
   begin
   with CB_FILIAL do
      ItemIndex := Items.IndexOf(CB_FILIAL.Text);
  end;


if (not Tb_Ped02_pre.IsEmpty)  then
   begin
   if (mant_filial<>CB_FILIAL.ItemIndex) and (mVenda_GP.mPed1_Tipo_Ped<>0) then
      begin
      MessageDlg('Para Mudar o Local das Mercadorias Não Pode Haber produtos digitados!',mtWarning,[mbOk],0);
      CB_FILIAL.ItemIndex:=mant_filial;
      exit;
      end;
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
      mVenda_GP.mped1_Filial:=Query_filial.fieldbyName('CFFILIAL').AsInteger;
   mped_Alterou_Cab:=true;
   freeandnil(query_filial);
   end;

end;



procedure TFrm_Venda_Pre_Farma.edt_percfreteExit(Sender: TObject);
var
  valor: Real;
begin
mVenda_GP.mPed1_Perc_Frete:=ValFloat(edt_percfrete.Text);
if mPed_Frete_Ant<>mVenda_GP.mPed1_Perc_Frete then
  begin
  valor:=ValFloat(edt_totliq.Text)-ValFloat(edt_valfre.Text);
  edt_valfre.Text:=FormatFloat(mcasas, ValFloat(edt_percfrete.Text)/100*valor);
  mVenda_GP.mPed1_ValFre:=ValFloat(edt_valfre.Text);
  end;

if mPed_Frete_Ant<>mVenda_GP.mPed1_Perc_Frete then
   begin
   fRecalcularPedido(3);
   fRecalcularformas(0);
   end;
end;

procedure TFrm_Venda_Pre_Farma.edt_percfreteEnter(Sender: TObject);
begin
    mPed_Frete_Ant:=ValFloat(edt_percfrete.Text);
end;

procedure TFrm_Venda_Pre_Farma.DBGrid_mem_fpagKeyPress(Sender: TObject;
  var Key: Char);
begin
if ((key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%')) and (DBGrid_mem_fpag.SelectedField=mem_cadpfpPFPFORMA) then
  begin
  if not (mem_cadpfp.State in [dsedit,dsinsert]) then
    mem_cadpfp.Edit;
  mem_cadpfpPFPFORMA.AsString:=fChamafpag(0,'_venda',key);
  end;

end;

procedure TFrm_Venda_Pre_Farma.edt_desc_valorEnter(Sender: TObject);
begin
mPed_Desc_Valor_Ant:=ValFloat(edt_desc_valor.Text);
end;

procedure TFrm_Venda_Pre_Farma.sbnVendaRapidaClick(Sender: TObject);
var
Query_Cons: TQuery;

begin
if fsonumero(edt_codcli.Text)=0 then
   begin
   fmensagem('Favor Digitar um Cliente válido!',0,['0'],0);
   pcCabecalho.ActivePage:= tsCabecalho;
   edt_codcli.SetFocus;
   exit;
   end;

if ValInt(edt_codven.Text)=0 then
   begin
   fmensagem('Favor Digitar um codigo de Vendedor válido!',0,['0'],0);
   pcCabecalho.ActivePage:= tsCabecalho;
   edt_codven.SetFocus;
   exit;
   end;

if fsonumero(edt_codCondPag.Text)=0 then
   begin
   fmensagem('Favor um Plano de Vendas válido!',0,['0'],0);
   pcCabecalho.ActivePage:= tsCabecalho;
   edt_codCondPag.SetFocus;
   exit;
   end;
if Tb_Ped02_pre.State in [dsEdit,dsInsert] then
   Tb_Ped02_pre.Post;

Query_Cons:=TQuery.Create(nil);

Query_Cons.DatabaseName:='SG_ASSOC';
Query_Cons.close;
Query_Cons.SQL.clear;
Query_Cons.SQL.Add('Select count(*) from CADP02 where P2CHAVE=:CHAVE '
               +' and (P2CODEMP=:CODEMP or P2CODEMP=:CODEMP_FILIAL) '
               +' and P2ORDEM=:ORDEM '
               +' and P2LOTSEQ=:LOTSEQ '
               +' and P2CODPRO=:CODPRO ');

Application.CreateForm(TFrm_Ped_02_Venda, Frm_Ped_02_Venda);
Frm_Ped_02_Venda.FormStyle:=fsNormal;
mVenda_TipoPreco:=cb_tppco.ItemIndex;
Frm_Ped_02_Venda.Visible:=false;
Frm_Ped_02_Venda.ShowModal;
if mVenda_Confirmada=2 then
  begin
  if (fsonumero(Frm_Ped_02_Venda.st_itens.Caption)>0) then
    begin
    mIgnorar_Restricoes:=true;
    Frm_Ped_02_Venda.Qr_ProVenda.First;
      While not Frm_Ped_02_Venda.Qr_ProVenda.Eof do
      begin
      if (Frm_Ped_02_Venda.Qr_ProVendaTMP_QTDPED.AsFloat=0)
         or ((DM4.Tb_Par01PFATMZ.AsInteger<>1)  and (mVenda_GP.mPd_EstNor='S') and (Frm_Ped_02_Venda.Qr_ProVendaQTD_EST.asfloat<=0)) then
         begin
         Frm_Ped_02_Venda.Qr_ProVenda.Next;
           Continue;
         end;
// INICIO

      if (DM1.Tb_PargerPFATDPRO.AsInteger=0) then
          begin
          Query_Cons.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
          Query_Cons.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
          Query_Cons.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
          Query_Cons.ParamByName('ORDEM').AsInteger:=01;
          Query_Cons.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
          Query_Cons.ParamByName('CODPRO').AsFloat:=ValFloat( Frm_Ped_02_Venda.Qr_ProVendaPDCODPRO.AsString);
          try
             Query_Cons.Open;
          except
             end;
          if Query_Cons.Fields[0].AsInteger>0 then
             begin
             Frm_Ped_02_Venda.Qr_ProVenda.Next;
             Continue;
             end;
           end;
// TERMINO
      Tb_Ped02_pre.Append;
      Tb_Ped02_preP2CODVEN.AsString := edt_codven.Text;
      Tb_Ped02_preP2CODPRO.AsString := Frm_Ped_02_Venda.Qr_ProVendaPDCODPRO.AsString;
      DBGrid_itensColExit(self);
      Tb_Ped02_preP2QTD.AsFloat     := Frm_Ped_02_Venda.Qr_ProVendaTMP_QTDPED.AsFloat;
      Tb_Ped02_preP2PRECO.AsFloat   := Frm_Ped_02_Venda.Qr_ProVendaTMP_PCOUNI.AsFloat;
      Tb_Ped02_pre.Post;
      Frm_Ped_02_Venda.Qr_ProVenda.Next;
      end;
    mIgnorar_Restricoes:=false;
    end;
  end;
FreeAndNil(Frm_Ped_02_Venda);
FreeAndNil(Query_Cons);
end;

procedure TFrm_Venda_Pre_Farma.cb_tppcoExit(Sender: TObject);
begin
fAjustarItensPed(false);
end;

procedure TFrm_Venda_Pre_Farma.Tb_Ped02_preCalcFields(DataSet: TDataSet);
var
  SQLQuery : TQuery;
begin
if Tb_Ped02_preP2CONS_PROPRIO.AsInteger=0 then
  Tb_Ped02_precons_proprio.AsString:='X'
else
  Tb_Ped02_precons_proprio.AsString:='';


end;

procedure TFrm_Venda_Pre_Farma.DBGrid_itensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
if UpperCase(Column.FieldName) = 'CONS_PROPRIO' then
  begin
  DBGrid_itens.Canvas.FillRect(Rect);
  Check := 0;
  if Tb_Ped02_precons_proprio.AsString = 'X' then
    Check := DFCS_CHECKED
  else Check := 0;
    R:=Rect;
  InflateRect(R,-2,-2);
  DrawFrameControl(DBGrid_itens.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end;
end;

procedure TFrm_Venda_Pre_Farma.DBGrid_itensDblClick(Sender: TObject);
var
  Gravar: Boolean;
begin
Gravar:=True;
if (Tb_Ped02_pre.State in [dsinsert, dsedit]) then
  Gravar:=False;

if (UpperCase(DBGrid_itens.SelectedField.FieldName)= 'CONS_PROPRIO') and (Tb_Ped02_preP2CODPRO.AsInteger>0) then
  begin
  if Gravar then
    Tb_Ped02_pre.Edit;
  if Tb_Ped02_preP2CONS_PROPRIO.AsInteger=1 then
    Tb_Ped02_preP2CONS_PROPRIO.AsInteger := 0
  else
    Tb_Ped02_preP2CONS_PROPRIO.AsInteger := 1;
  cds_aliquotas.Open;
  if not cds_aliquotas.Locate('tipo_reg;al_tabicm',vararrayof([0,'A']),[]) then
     begin
     verteclado(0);
     MessageDlg('Não foi encontrado os Registros de tributações!',mtWarning,[mbOk],0);
     exit;
     end;
  flcadpro(1,0,codemp,Tb_Ped02_preP2CODPRO.AsString);
  if (Tb_Ped02_preP2CST.AsString[2] in ['1','6','7']) or (Tb_Ped02_preP2CSOSN.AsString[1] in ['2','5','9']) then
    begin
//    if (Tb_Ped02_preP2CONS_PROPRIO.AsInteger=1) or () then
//    if ((Tb_Ped02_preP2CONS_PROPRIO.AsInteger=1) or (DM1.Tb_ProPDNIVEL.AsInteger=0)) then
    if ((DM1.Tb_ProPDNIVEL.AsInteger=0) or (DM1.Tb_ProPDNIVEL.AsInteger=1) or (mPed_Cli_ConsFin)) then
      Tb_Ped02_preP2CFOP_NF.AsString        := cds_aliquotasCfo_Indus_Ret.AsString
    else
      Tb_Ped02_preP2CFOP_NF.AsString        :=cds_aliquotasCfo_rev_Ret.AsString;
    Tb_Ped02_preP2CFOP_ECF.AsString :=cds_aliquotasCfo_SubEcf_Ret.AsString;
    end
  else if (Tb_Ped02_preP2CST.AsString[2]='4') and (Tb_Ped02_preP2CSOSN.AsString='400') then
    begin
//    if Tb_Ped02_preP2CONS_PROPRIO.AsInteger=1 then
//    if ((Tb_Ped02_preP2CONS_PROPRIO.AsInteger=1) or (DM1.Tb_ProPDNIVEL.AsInteger=0)) then
    if ((DM1.Tb_ProPDNIVEL.AsInteger=0) or (DM1.Tb_ProPDNIVEL.AsInteger=1)) then
      Tb_Ped02_preP2CFOP_NF.AsString        :=cds_aliquotasCfo_rev_Isento.AsString
    else
      Tb_Ped02_preP2CFOP_NF.AsString        :=cds_aliquotasCfo_Indus_Isento.AsString;
    Tb_Ped02_preP2CFOP_ECF.AsString :=cds_aliquotasCfo_SubEcf_Isento.AsString;
    end
  else
    begin
//    if Tb_Ped02_preP2CONS_PROPRIO.AsInteger=1 then
//    if ((Tb_Ped02_preP2CONS_PROPRIO.AsInteger=1) or (DM1.Tb_ProPDNIVEL.AsInteger=0)) then
    if ((DM1.Tb_ProPDNIVEL.AsInteger=0) or (DM1.Tb_ProPDNIVEL.AsInteger=1) or (mPed_Cli_ConsFin)) then
      Tb_Ped02_preP2CFOP_NF.AsString        :=cds_aliquotasCfo_Indus_Trib.AsString
    else
      Tb_Ped02_preP2CFOP_NF.AsString        :=cds_aliquotasCfo_rev_Trib.AsString;
    Tb_Ped02_preP2CFOP_ECF.AsString :=cds_aliquotasCfo_SubEcf_Trib.AsString;
    end;
  if Gravar then
    Tb_Ped02_pre.Post;
  end;
end;

procedure TFrm_Venda_Pre_Farma.sbn_padrao_leitorClick(Sender: TObject);
begin
   fDeletaPadroes(0,'_VENDA_PRE','CB_LEITOR');
   if cb_leitor.Checked then
      fGravaPadroes(0,'CB_LEITOR'    ,'text'   ,'_VENDA_PRE','true');
   MessageDlg('Leitor Otico Padrão '+IIF(cb_leitor.Checked=true,' Marcado ',' Desmarcado '),mtInformation,[mbOk],0);

end;

procedure TFrm_Venda_Pre_Farma.SbnEnderCepClick(Sender: TObject);
var
mCep:String;
begin
  inherited;
if not fEstanaNet then
   begin
   fmensagem('Favor Conectar na internet para que possa ser feito essa Consulta!',0,['0'],0);
   exit;
   end;
mCep:=edt_entrega_cep.Text;
if fSonumero(mcep)<>0 then
   begin
   mVenda_GP.mPed1_entrega_codloc:=0;

   mVenda_GP.mPed1_entrega_ender :='';
   mVenda_GP.mPed1_entrega_cep   :='';
   mVenda_GP.mPed1_entrega_bairro:='';
   mVenda_GP.mPed1_entrega_cidade:='';
   mVenda_GP.mPed1_entrega_uf    :='';

   testeform := TFrm_Venda_Pre_Farma(FindGlobalComponent('Frm_buscacep'));
   if testeform=nil then
      Application.CreateForm(TFrm_BuscaCep,  Frm_BuscaCep)
   else
      begin
      Frm_BuscaCep.free;
      Frm_BuscaCep:=nil;
      Application.CreateForm(TFrm_BuscaCep,  Frm_BuscaCep)
      end;
   Frm_BuscaCep.mCep_Origem:='frm_venda_pre';
   Frm_BuscaCep.mCepEncontrado:=false;
   Frm_BuscaCep.CEP.Text:=mCep;
   Frm_BuscaCep.bbBuscarCEPClick(Self);
   if Frm_BuscaCep.mCepencontrado then
      begin
      edt_entrega_ender.Text :=DM_MYSQL.cds_CepDESC02.AsString;
      edt_entrega_cep.text   :=MaskCep(DM_MYSQL.cds_CepCEP.AsString);
      edt_entrega_bairro.Text:=DM_MYSQL.cds_CepBAI.AsString;
      edt_entrega_cidade.Text:=DM_MYSQL.cds_CepCID.AsString;
      edt_entrega_uf.Text    :=DM_MYSQL.cds_CepUF.AsString;

      mVenda_GP.mPed1_entrega_ender :=DM_MYSQL.cds_CepDESC02.AsString;
      mVenda_GP.mPed1_entrega_cep   :=MaskCep(DM_MYSQL.cds_CepCEP.AsString);
      mVenda_GP.mPed1_entrega_bairro:=DM_MYSQL.cds_CepBAI.AsString;
      mVenda_GP.mPed1_entrega_cidade:=DM_MYSQL.cds_CepCID.AsString;
      mVenda_GP.mPed1_entrega_uf    :=DM_MYSQL.cds_CepUF.AsString;


      if (DM_MYSQL.cds_CepCID.AsString<>'') then
         begin
         if flcadloc(0,0,DM_MYSQL.cds_CepCID.AsString) then
            begin
            edt_entrega_codloc.Text:=DM1.Tb_LocLCODLOC.AsString;
            mVenda_GP.mPed1_entrega_codloc:=DM1.Tb_LocLCODLOC.AsInteger;
            end
         end;

      end
   else
      fMensagem('o Cep Solicitado nao foi encontrado!',0,['0'],0);
   FreeAndNil(Frm_BuscaCep);
   end
else
   begin
   mVenda_GP.mPed1_entrega_codloc:=0;

   mVenda_GP.mPed1_entrega_ender :='';
   mVenda_GP.mPed1_entrega_cep   :='';
   mVenda_GP.mPed1_entrega_bairro:='';
   mVenda_GP.mPed1_entrega_cidade:='';
   mVenda_GP.mPed1_entrega_uf    :='';
   
   testeform := TFrm_venda_pre_Farma(FindGlobalComponent('Frm_buscacep'));
   if testeform=nil then
      Application.CreateForm(TFrm_BuscaCep,  Frm_BuscaCep)
   else
      begin
      Frm_BuscaCep.free;
      Frm_BuscaCep:=nil;
      Application.CreateForm(TFrm_BuscaCep,  Frm_BuscaCep)
      end;
   Frm_BuscaCep.mCep_Origem:='frm_venda_pre';
   Frm_BuscaCep.mCepEncontrado:=false;
   Frm_BuscaCep.CEP.Text:='';

   if length(edt_entrega_ender.Text)>1 then
      Frm_BuscaCep.LOGRADOURO.Text:=edt_entrega_ender.Text;
   if length(edt_entrega_bairro.Text)>1 then
      Frm_BuscaCep.BAIRRO.Text:=edt_entrega_bairro.Text;
   if length(edt_entrega_cidade.text)>1 then
      Frm_BuscaCep.CIDADE.Text:=edt_entrega_cidade.Text;
   if length(edt_entrega_uf.Text)>1 then
      Frm_BuscaCep.UF.Text    :=edt_entrega_uf.Text;
   Frm_BuscaCep.ShowModal;

   if Frm_BuscaCep.mAceitouCep then
      begin
      edt_entrega_ender.Text :=DM_MYSQL.cds_CepDESC02.AsString;
      edt_entrega_cep.text   :=MaskCep(DM_MYSQL.cds_CepCEP.AsString);
      edt_entrega_bairro.Text:=DM_MYSQL.cds_CepBAI.AsString;
      edt_entrega_cidade.Text:=DM_MYSQL.cds_CepCID.AsString;
      edt_entrega_uf.Text    :=DM_MYSQL.cds_CepUF.AsString;

      mVenda_GP.mPed1_entrega_ender :=DM_MYSQL.cds_CepDESC02.AsString;
      mVenda_GP.mPed1_entrega_cep   :=MaskCep(DM_MYSQL.cds_CepCEP.AsString);
      mVenda_GP.mPed1_entrega_bairro:=DM_MYSQL.cds_CepBAI.AsString;
      mVenda_GP.mPed1_entrega_cidade:=DM_MYSQL.cds_CepCID.AsString;
      mVenda_GP.mPed1_entrega_uf    :=DM_MYSQL.cds_CepUF.AsString;

      if (DM_MYSQL.cds_CepCID.AsString<>'') then
         begin
         if flcadloc(0,0,DM_MYSQL.cds_CepCID.AsString) then
            begin
            edt_entrega_codloc.Text:=DM1.Tb_LocLCODLOC.AsString;
            mVenda_GP.mPed1_entrega_codloc:=DM1.Tb_LocLCODLOC.AsInteger;
            end
         end;
      end;
   FreeAndNil(Frm_BuscaCep);
   end;


end;

procedure TFrm_Venda_Pre_Farma.cb_tipentExit(Sender: TObject);
begin
if (cb_tipent.ItemIndex<0) and (trim(cb_tipoped.Text)<>'') then
   begin
   with cb_tipent do
      ItemIndex := Items.IndexOf(cb_tipent.Text);
  end;
mVenda_GP.mPed1_tipent:=cb_tipent.ItemIndex;

end;

procedure TFrm_Venda_Pre_Farma.edt_entrega_cepExit(Sender: TObject);
begin
mVenda_GP.mPed1_entrega_cep:=MaskCep(edt_entrega_cep.Text);

end;

procedure TFrm_Venda_Pre_Farma.edt_entrega_enderExit(Sender: TObject);
begin
mVenda_GP.mPed1_entrega_ender:=edt_entrega_ender.Text;

end;

procedure TFrm_Venda_Pre_Farma.edt_data_pentChange(Sender: TObject);
begin
if (edt_data_pent.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_data_pentExit(Sender: TObject);
begin
if (edt_data_pent.Date>pdatanula) then
   begin
   if ((edt_data_pent.Date<Date) or (edt_data_pent.Date>Date+360))  then
     begin
     if Application.MessageBox(pchar('Data Prevista para entrega '+ FormatDatetime(fdt2, edt_data_pent.Date)+' é uma data não esperada!, Quer continuar?'),'',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
        begin
        edt_data_pent.SetFocus;
        exit;
        end;
     exit;
     end;
   if fsonumero(edt_hora_pent.Text)=0 then
      mVenda_GP.mPed1_dathot_pent:=edt_data_pent.Date
   else
      mVenda_GP.mPed1_dathot_pent:=StrtoDateTime(edt_data_pent.text+' '+edt_hora_pent.Text+':00');

   end;


end;

procedure TFrm_Venda_Pre_Farma.edt_hora_pentExit(Sender: TObject);
begin
if (fsonumero(edt_hora_pent.Text)=0) then
   edt_hora_pent.Text:='00:00'
else
   begin
   try
      edt_hora_pent.Text:=formatDatetime('hh:nn', StrTotime(edt_hora_pent.Text+':00'));
   except
      edt_hora_pent.Text:='00:00';
      end;
   end;
edt_data_pentExit(self);

end;

procedure TFrm_Venda_Pre_Farma.edt_entrega_bairroExit(Sender: TObject);
begin
mVenda_GP.mPed1_entrega_bairro:=edt_entrega_bairro.Text;

end;

procedure TFrm_Venda_Pre_Farma.edt_entrega_codlocExit(Sender: TObject);
begin
edt_entrega_codloc.Text:=fdeixanum(edt_entrega_codloc.Text);
if fsonumero(edt_entrega_codloc.Text)>0 then
   begin
   if not flcadloc(1,0,edt_entrega_codloc.Text) then
      begin
      verteclado(1);
      fmensagem('Localidade/Cidade não Cadastrada.',0,['0'],0);
      edt_entrega_codloc.SetFocus;
      end
   else
      begin
      edt_entrega_codloc.Text:=DM1.Tb_LocLCODLOC.AsString;
      edt_entrega_cidade.Text:=DM1.Tb_LocLNOME.Value;
      edt_entrega_uf.Text    :=DM1.Tb_LocLUF.Value;
      end;
   end;
mVenda_GP.mPed1_entrega_codloc:=ValInt(edt_entrega_codloc.Text);

end;

procedure TFrm_Venda_Pre_Farma.edt_entrega_cidadeExit(Sender: TObject);
begin
mVenda_GP.mPed1_entrega_cidade:=edt_entrega_cidade.Text;

end;

procedure TFrm_Venda_Pre_Farma.edt_entrega_ufExit(Sender: TObject);
begin
mVenda_GP.mPed1_entrega_uf:=edt_entrega_uf.Text;

end;

procedure TFrm_Venda_Pre_Farma.edt_entrega_obsExit(Sender: TObject);
begin
mVenda_GP.mPed1_entrega_obs:=edt_entrega_obs.Text;

end;

procedure TFrm_Venda_Pre_Farma.edt_entrega_cepChange(Sender: TObject);
begin
if (edt_entrega_cep.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_entrega_enderChange(Sender: TObject);
begin
if (edt_entrega_ender.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_hora_pentChange(Sender: TObject);
begin
if (edt_hora_pent.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_entrega_bairroChange(Sender: TObject);
begin
if (edt_entrega_bairro.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_entrega_codlocChange(Sender: TObject);
begin
if (edt_entrega_codloc.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_entrega_cidadeChange(Sender: TObject);
begin
if (edt_entrega_cidade.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_entrega_ufChange(Sender: TObject);
begin
if (edt_entrega_uf.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_entrega_obsChange(Sender: TObject);
begin
if (edt_entrega_obs.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.sbnContratoClick(Sender: TObject);
var
  Query_Cons: TQuery;
begin
if not fValida_Pedido then
  begin
  fmensagem(' Esse pedido foi alterado em outra estação.'+#13
           +' Por favor re-localizar o mesmo.',0,['0'],0);
  exit;
  end;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
Query_Cons := TQuery.Create(nil);
Query_Cons.DatabaseName:='SG_ASSOC';
Query_Cons.SQL.Clear;
Query_Cons.SQL.Add('Select P1CODEMP,P1LOTSEQ,P1CHAVE,P1ORDEM,P1STATUS,P1TIPO,CCNPJ,CCPF,'
                 +'CUF,CCIDADE,P1SITPED,P1TABPV,P1CODPV,P1ORDEM,P1PRAZO,P1PVDDESCF,P1PVDIASDESCF'
                 +',P1TOTALL,P1COMIS,P1COMV02,P1COMV03,P1COMV04,P1COMISS'
                 +',P1COMIST,P1SEMCOM,P1COMASSE,P1ICMSR,P1VALFRE,P1TOTEXTCOM'
                 +',P1VALSEG,P1DESCFIN,P1TOTDI01,P1TOTDI02,P1TOTDI03,P1TOTDIVL'
                 +',P1VALDES01,P1VALDES02,P1VLRDES,P1TARBAN,P1DESPACES,P1IPIINA,P1IPIPOS'
                 +',P1IPINEG,P1TOTCGRU,P1TOTSGRU,P1TOTSERLIQ,P1VALENT,P1CODUSR,P1CODUSR_ULTEVE'
                 +',CRAZAO,P1EMITENTE,P1CODSER,P1TOTSERLIQ,P1CODCLI,P1DATANF,P1EMIDOC '
                 +',P1COMP_ULTEVE,P1CODTRA,P1BLOQPEND,P1CODBLOQ_LIB,P1CODBLOQ,P1PREVENT'
                 +',P1NUMNF,P1NUMCF,P1FORMACE,P1SEPAMB '
                 +',P1PRAZO_ENT,P1COMIS_EXTRA,P1SUBMOD,P1DATHOR_ULTEVE from CADP01'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +'  (P1CODEMP=:CODEMP OR P1CODEMP=:CODEMP_FILIAL) '
                 +' and P1CHAVE=:CHAVE '
                 +' and P1LOTSEQ=:LOTSEQ '
                 +' and P1ORDEM=:ORDEM ');
Query_Cons.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
Query_Cons.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
Query_Cons.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
Query_Cons.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_Cons.ParamByName('ORDEM').AsInteger:=1;
Query_Cons.Open;
if Query_Cons.IsEmpty then
   begin
   Query_Cons.SQL.SaveToFile('C:\LSEP.TXT');
   FreeAndNil(query_Cons);
   fmensagem('Chave não encontrada!',0,['0'],0);
   exit;
   end;

FPedEmiteNf(0,9,0,Query_Cons.FieldByName('P1LOTSEQ').AsInteger,Query_Cons.FieldByName('P1CHAVE').AsInteger,
                  Query_Cons.FieldByName('P1ORDEM').AsInteger,Query_Cons.FieldByName('P1CODEMP').AsInteger,1,
                  Query_Cons.FieldByName('P1FORMACE').AsInteger,false,false,true,1,iif(CB_MODORCAM.Checked,1,0),0); // Contrato de Venda

end;

procedure TFrm_Venda_Pre_Farma.DBEdit8Exit(Sender: TObject);
begin
if Tb_Ped02_pre.State in [dsEdit,dsInsert] then
  Tb_Ped02_pre.Post;
end;

procedure TFrm_Venda_Pre_Farma.btn_analiseClick(Sender: TObject);
begin
if mVenda_GP.mped1_Chave>0 then
  begin
  dm1.Query1.Close;
  dm1.Query1.SQL.Clear;
  dm1.Query1.SQL.Add(' update cadp01 set p1analise=1 where p1chave='+IntToStr(mVenda_GP.mped1_Chave));
  dm1.Query1.SQL.Add(codemp2('P1CODEMP',codemp));
  try
    dm1.Query1.ExecSQL;
  except
    dm1.Query1.SQL.SaveToFile(SALVA_NOME('ErroSql\','EX'));
    showmessage('Erro ao gerar analise do pedido!');
    end;
  end;
end;



function TFrm_Venda_Pre_Farma.fLerDevPend(pTipo: Integer): Boolean;
var
Query_nfOri: TQuery;
mcomp: String;
begin
if not (mem_ped01d.Active) or (mem_ped01d.IsEmpty) then
   begin
   result:=true;
   exit;
   end;

Query_nfOri:=TQuery.Create(nil);
Query_nfOri.DatabaseName:='SG_ASSOC';
Query_nfOri.Close;
Query_nfOri.SQL.Clear;
Query_nfOri.SQL.Add('select P1NUMNF,P1DATANF,P1NUMCF,P1DATACF from CADP01  ');


mem_ped01d.First;
mcomp:=' where ((';
While not mem_ped01d .Eof do
   begin
   if mem_ped01dP1DCH_OR.IsNull then
      begin
      mem_ped01d.Next;
      Continue;
      end;
  Query_nfOri.SQL.add(mComp+' (P1CODEMP=0'+mem_ped01dP1DCODEMP_OR.AsString
                        +' and P1LOTSEQ=0'+mem_ped01dP1DLS_OR.AsString
                        +' and P1CHAVE=0'+mem_ped01dP1DCH_OR.AsString+')');
   mComp:=') or (';
   mem_ped01d.Next;
   end;
if mcomp=') or (' then
   begin
   Query_nfOri.SQL.Add(')) ');
   end;
try
   Query_nfOri.Open;
except
   Query_nfOri.sql.savetofile('c:\sqlori.txt');
   end;
mVenda_GP.mped1_npedori1:='';
mComp:='';
While not Query_nfOri.Eof do
   begin
   if Query_nfOri.FieldByName('P1NUMCF').AsFloat>0 then
      mVenda_GP.mped1_npedori1:=mVenda_GP.mped1_npedori1+mcomp+' CF: '+FormatFloat('000000', Query_nfOri.FieldByName('P1NUMCF').AsFloat)
              +' DE '+FormatDateTime(fdt2, Query_nfOri.FieldByName('P1DATACF').AsDateTime)
   else
      mVenda_GP.mped1_npedori1:=mVenda_GP.mped1_npedori1+mcomp+' NF: '+FormatFloat('000000', Query_nfOri.FieldByName('P1NUMNF').AsFloat)
              +' DE '+FormatDateTime(fdt2, Query_nfOri.FieldByName('P1DATANF').AsDateTime);
   mcomp:=', ';
   Query_nfOri.Next;
   end;
mVenda_GP.mped1_npedori1:=' REF.: '+mVenda_GP.mped1_npedori1;

if length(mVenda_GP.mped1_npedori1)>60 then
   begin
   mVenda_GP.mped1_npedori2:=COPY(mVenda_GP.mped1_npedori1,61,length(mVenda_GP.mped1_npedori1)-60);
   mVenda_GP.mped1_npedori1:=COPY(mVenda_GP.mped1_npedori1,1,60);
   end;

if length(mVenda_GP.mped1_npedori2)>60 then
   mVenda_GP.mped1_npedori2:=COPY(mVenda_GP.mped1_npedori2,1,60);

edt_pedori1.Text:=mVenda_GP.mped1_npedori1;
edt_pedori2.Text:=mVenda_GP.mped1_npedori2;
FreeAndNil(Query_nfOri);
Result:=true;

end;

function tFrm_Venda_Pre_Farma.fGravarCabecalho(pTipo: Integer): Boolean;
begin
mVenda_GP.mped1_submod_grav:=0;
if mVenda_GP.mped1_submod=100 then
   begin
   mVenda_GP.mped1_submod_grav:=100;
   if codemp>100 then
      mVenda_GP.fGravarPed01(1,-100)
   else
      mVenda_GP.fGravarPed01(1,100);
   end
else
   begin
   if mVenda_GP.mped1_submod>0 then
      mVenda_GP.mped1_submod_grav:=100-mVenda_GP.mped1_submod;
   mVenda_GP.fGravarPed01(1,0);
   end;
if (mVenda_GP.mped1_submod>0) and (mVenda_GP.mped1_submod<100) then
   begin
   mVenda_GP.mped1_submod_grav:=mVenda_GP.mped1_submod;
   if codemp>100 then
      mVenda_GP.fGravarPed01(1,-100)
   else
      mVenda_GP.fGravarPed01(1,100);
   end;
result:=true;
end;

procedure TFrm_Venda_Pre_Farma.cb_tipopcoClick(Sender: TObject);
begin
{
fDeletaPadroes(0,'_VENDA_PRE','CB_TIPOPCO');
if cb_tipopco.Checked then
   fGravaPadroes(0,'CB_TIPOPCO'    ,'checked'   ,'_VENDA_PRE','true');
if cb_tipopco.Checked then
   DBGrid_itens.Columns[10].Visible:=true
else
   DBGrid_itens.Columns[10].Visible:=false;
}

end;
function TFrm_Venda_Pre_Farma.fValorFormaFixa(pforma: String): Real;
var
pValRet: Real;
x_Campo: Integer;
x_tot: Integer;

mnv_Prazo: INTEGER;
mNv_Tipo: String;
Nv_valor: Real;
mNv_CodFP: Integer;
mNv_NomFP: String;
mNv_Baixa : String;
mNv_vAcum: string;
mNv_QtdParc: Integer;
mNv_QtdParcDiv: Integer;
mnv_ValFixo: Real;
mNv_valor: Real;
mNv_QtdDupRat: Integer;
begin
mnv_ValFixo   :=0;
x_campo       :=0;
mNv_QtdParcDiv:=0;
mNv_QtdParc  :=0;
mNv_valor    :=0;
mNv_QtdDupRat:=0;
for x_tot:=1 to length(pforma) do
   begin
   if pforma[x_tot]=';' then
      begin
      if  length(mNv_vAcum)>0 then
          begin
          if x_campo=0 then
             mnv_Prazo:=valint(mnv_vAcum)
          else if x_Campo=1 then
             mNv_Tipo:=mnv_vAcum
          else if x_Campo=2 then
             mNv_valor:=valfloat(mnv_vAcum)
          else if x_Campo=3 then
             mNv_CodFP:=valint(mnv_vAcum)
          else if x_Campo=4 then
             mNv_NomFP:=mnv_vAcum
          else if x_Campo=5 then
             mNv_Baixa:=mnv_vAcum;
          end;
       x_Campo:=x_Campo+1;
       if x_Campo>5 then
          begin
          x_Campo:=0;
          mNv_QtdParc:=mNv_QtdParc+1;
          if (mNv_tipo='V') and (mNv_Valor<>0) then
             mnv_ValFixo:=mNv_ValFixo+mNv_Valor
          else
             mNv_QtdParcDiv:=mNv_QtdParcDiv+1;
          if mNv_Tipo<>'V' then
             mNv_QtdDupRat:=mNv_QtdDupRat+1;
          end;
       mnv_vAcum:='';
       end
    else
       mNv_Vacum:=mnv_vAcum + pforma[x_tot];
   end;
Result:=mnv_ValFixo;
end;


function TFrm_Venda_Pre_Farma.fValordaParcela(pAntPerc: Real;pParcela: Integer): Real;
var
pValRet: Real;
x_Campo: Integer;
x_tot: Integer;

mnv_Prazo: INTEGER;
mNv_Tipo: String;
Nv_valor: Real;
mNv_CodFP: Integer;
mNv_NomFP: String;
mNv_Baixa : String;
mNv_vAcum: string;
mNv_QtdParc: Integer;
mNv_QtdParcDiv: Integer;
mnv_ValFixo: Real;
mNv_valor: Real;
mNv_QtdDupRat: Integer;
mValorParcSel: Real;
x_emp: Integer;
pForma: String;
begin
mnv_ValFixo   :=0;
x_campo       :=0;
mNv_QtdParcDiv:=0;
mNv_valor    :=0;
mNv_QtdDupRat:=0;
mValorParcSel:=0;

for x_emp:=1 to 2 do
   begin
   if pAntPerc=0 then
      begin
      if x_emp=2 then
         continue;
      end
   else if pAntPerc=100 then
      begin
      if x_emp=1 then
         continue;
      end;
   if x_emp=1 then
      pforma:=mVenda_GP.mPed1_PrzNovos_001
   else
      pforma:=mVenda_GP.mPed1_PrzNovos_101;
   mNv_QtdParc  :=0;
   x_campo       :=0;
   for x_tot:=1 to length(pForma) do
      begin
      if pforma[x_tot]=';' then
         begin
         if  length(mNv_vAcum)>0 then
             begin
             if x_campo=0 then
                mnv_Prazo:=valint(mnv_vAcum)
             else if x_Campo=1 then
                mNv_Tipo:=mnv_vAcum
             else if x_Campo=2 then
                mNv_valor:=valfloat(mnv_vAcum)
             else if x_Campo=3 then
                mNv_CodFP:=valint(mnv_vAcum)
             else if x_Campo=4 then
                mNv_NomFP:=mnv_vAcum
             else if x_Campo=5 then
                mNv_Baixa:=mnv_vAcum;
             end;
          x_Campo:=x_Campo+1;
          if x_Campo>5 then
             begin
             x_Campo:=0;
             mNv_QtdParc:=mNv_QtdParc+1;
             if mNv_QtdParc=pParcela then
                mValorParcSel:=mValorParcSel+mNv_valor;
             if (mNv_tipo='V') and (mNv_Valor<>0) then
                mnv_ValFixo:=mNv_ValFixo+mNv_Valor
             else
                mNv_QtdParcDiv:=mNv_QtdParcDiv+1;
             if mNv_Tipo<>'V' then
                mNv_QtdDupRat:=mNv_QtdDupRat+1;
             end;
          mnv_vAcum:='';
          end
       else
          mNv_Vacum:=mnv_vAcum + pforma[x_tot];
      end;
   end;
Result:=mValorParcSel;
end;


function TFrm_Venda_Pre_Farma.fDividirFormasFixas(pAntPerc,pNovoPerc: Real): Boolean;

var
pValRet: Real;
x_Campo: Integer;
x_tot: Integer;
mnv_Prazo: INTEGER;
mNv_Tipo: String;
Nv_valor: Real;
mNv_CodFP: Integer;
mNv_NomFP: String;
mNv_Baixa : String;
mNv_vAcum: string;
mNv_QtdParc: Integer;
mNv_QtdParcDiv: Integer;
mnv_ValFixo: Real;
mNv_valor: Real;
mNv_QtdDupRat: Integer;

mNovoValor_001: String;
mNovoValor_101: String;
x_emp: Integer;
mValor_Calc: Real;
pforma: string;
begin
mnv_ValFixo   :=0;
x_campo       :=0;
mNv_QtdParcDiv:=0;
mNv_QtdParc  :=0;
mNv_valor    :=0;
mNv_QtdDupRat:=0;
mNovoValor_001:='';
mNovoValor_101:='';
mValor_Calc:=0;
for x_emp:=1 to 2 do
   begin
   if x_emp=1 then
      pforma:=mVenda_GP.mPed1_PrzNovos_001
   else
      pforma:=mVenda_GP.mPed1_PrzNovos_101;
   x_campo       :=0;
   mNv_QtdParc  :=0;

   for x_tot:=1 to length(pforma) do
      begin
      if pforma[x_tot]=';' then
         begin
         if length(mNv_vAcum)>0 then
            begin
            if x_campo=0 then
               mnv_Prazo:=valint(mnv_vAcum)
            else if x_Campo=1 then
               mNv_Tipo:=mnv_vAcum
            else if x_Campo=2 then
               mNv_valor:=valfloat(mnv_vAcum)
            else if x_Campo=3 then
               mNv_CodFP:=valint(mnv_vAcum)
            else if x_Campo=4 then
               mNv_NomFP:=mnv_vAcum
            else if x_Campo=5 then
               mNv_Baixa:=mnv_vAcum;
            end;
         x_Campo:=x_Campo+1;
         if x_Campo>5 then
            begin
            mNv_QtdParc:=mNv_QtdParc+1;
            x_Campo:=0;
            if (mNv_tipo='V') and (mNv_Valor<>0) then
               begin
               mValor_Calc:=fValordaParcela(pAntPerc, mNv_QtdParc);

               if (pNovoPerc=100) or (pNovoPerc=0) then
                  mNv_valor:=mValor_Calc
               else
                  begin
                  mNv_valor:=Arredonda( (mValor_Calc*pNovoPerc/100) ,2);
                  if x_emp=1 then
                     mNv_valor:=mValor_Calc-mNv_valor;
                  end;
               if x_emp=1 then
                  begin
                  mNovoValor_001:=mNovoValor_001+inttostr(mnv_Prazo)+';V;'+formatFloat('##0.00' ,mNv_valor)+';'
                                +inttostr(mNv_CodFP)+';'+mNv_NomFP+';;';
                  end
               else
                  begin
                  mNovoValor_101:=mNovoValor_101+inttostr(mnv_Prazo)+';V;'+formatFloat('##0.00' ,mNv_valor)+';'
                                 +inttostr(mNv_CodFP)+';'+mNv_NomFP+';;';
                  end;
               mnv_ValFixo:=mNv_ValFixo+mNv_Valor
               end
            else
                begin
                mNv_QtdParcDiv:=mNv_QtdParcDiv+1;
                if x_emp=1 then
                   begin
                   mNovoValor_001:=mNovoValor_001+inttostr(mnv_Prazo)+';P;;'
                                +inttostr(mNv_CodFP)+';'+mNv_NomFP+';;';
                   end
                else
                  begin
                  mNovoValor_101:=mNovoValor_101+inttostr(mnv_Prazo)+';P;;'
                                 +inttostr(mNv_CodFP)+';'+mNv_NomFP+';;';
                  end;
               end;
            if mNv_Tipo<>'V' then
               mNv_QtdDupRat:=mNv_QtdDupRat+1;
            end;
         mnv_vAcum:='';
         end
      else
         mNv_Vacum:=mnv_vAcum + pforma[x_tot];
      end;
   end;
mVenda_GP.mPed1_PrzNovos_001:=mNovoValor_001;
mVenda_GP.mPed1_PrzNovos_101:=mNovoValor_101;

Result:=True;
end;

procedure TFrm_Venda_Pre_Farma.BitBtn1Click(Sender: TObject);
begin
label2.Caption:=floatTostr(fValorFormaFixa(mVenda_GP.mPed1_PrzNovos_001))+'/101:'+floatTostr(fValorFormaFixa(mVenda_GP.mPed1_PrzNovos_101));

end;

procedure TFrm_Venda_Pre_Farma.edt_codcvChange(Sender: TObject);
begin
if (edt_codfp.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_codcvEnter(Sender: TObject);
begin
mEventoPendente:='edt_codcv';

end;

procedure TFrm_Venda_Pre_Farma.edt_codcvExit(Sender: TObject);
begin
if fsonumero(edt_codcv.Text)=0 then
   begin
   edt_codcv.Text:='';
   edt_nomcv.Text:='';
   end
else
   begin
   edt_codcv.Text:=fdeixanum(edt_codcv.Text);
   if flcadcv(1,fdeixanum(edt_codcv.Text)) then
      begin
      edt_codcv.Text:=DM1.Tb_CVCVCODCV.AsString;
      edt_nomcv.Text:=DM1.Tb_CVCVRAZAO.AsString;
      end
  else
      begin
      MessageDlg('Convenio não Cadastrado!',mtWarning,[mbOk],0);
      edt_codcv.SetFocus;
      edt_nomcv.Text:='';
      exit;
      end;
   end;
mVenda_GP.mPed1_Codcv:=ValInt(edt_codcv.Text);


end;

procedure TFrm_Venda_Pre_Farma.edt_codcvKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%') then

   begin
   edt_codcv.Text:=fChamaCV(0,'_venda',key);
   edt_codcvExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Venda_Pre_Farma.tsFpgtoEnter(Sender: TObject);
begin
fpag_cancelou:=false;

end;

procedure TFrm_Venda_Pre_Farma.edt_fonecsfExit(Sender: TObject);
begin
edt_fonecsf.Text:=MaskFone(edt_fonecsf.Text);
if (fsonumero(mant_fonecsf))<>(fsonumero(edt_fonecsf.Text)) then
   begin
   if flCadCSF2(0,codemp,0,0,0,fsonumero(edt_fonecsf.text)) then
      begin
      edt_nomcli.Text          :=DM1.Tb_CSFCFRAZAO.AsString;
      if DM1.Tb_CSFCFTIPOC.AsInteger=0 then
         begin
         Frm_DadCli.CNPJ.Text     :=Formatfloat(pDFCNPJ, DM1.Tb_CSFCFCGC.asfloat);
         Frm_DadCli.IE.Text       :=DM1.Tb_CSFCFIE.AsString;
         Frm_DadCli.CNPF.Text     :='';
         Frm_DadCli.RG.Text      :='';
         end
      else
         begin
         Frm_DadCli.CNPF.Text     :=Formatfloat(pDFCNPF, DM1.Tb_CSFCFCGC.asfloat);
         Frm_DadCli.RG.Text       :=DM1.Tb_CSFCFIE.AsString;
         Frm_DadCli.CNPJ.Text     :='';
         Frm_DadCli.IE.Text       :='';
         end;
      Frm_DadCli.RAZSOC.Text   :=DM1.Tb_CSFCFRAZAO.AsString;
      Frm_DadCli.DENOM.Text    :=DM1.Tb_CSFCFDENOM.AsString;
      Frm_DadCli.TELEFONE.Text :=DM1.Tb_CSFCFFONE.AsString;
      Frm_DadCli.FAX.Text      :=DM1.Tb_CSFCFFAX.AsString;
      Frm_DadCli.ENDERECO.Text :=DM1.Tb_CSFCFENDER.AsString;
      Frm_DadCli.BAIRRO.Text   :=DM1.Tb_CSFCFBAIRRO.AsString;
      Frm_DadCli.CIDADE.Text   :=DM1.Tb_CSFCFCIDADE.AsString;
      Frm_DadCli.UF.Text       :=DM1.Tb_CSFCFUF.AsString;
      Frm_DadCli.CEP.Text      :=DM1.Tb_CSFCFCEP.AsString;
      fGravarDadosCSF;
      end;

   end;

end;

procedure TFrm_Venda_Pre_Farma.edt_fonecsfChange(Sender: TObject);
begin
if (edt_fonecsf.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.sbn_cadcsfClick(Sender: TObject);
begin
if fsonumero(Frm_DadCli.TELEFONE.Text)=0 then
   Frm_DadCli.TELEFONE.Text:=edt_fonecsf.Text;
//if trim(Frm_DadCli.RAZSOC.Text)='' then
   Frm_DadCli.RAZSOC.Text:=edt_nomcli.Text;




if Trim(Frm_DadCli.RAZSOC.Text)<>'' then
   begin
   Frm_DadCli.ant_cnpj     := fsonumero(Frm_DadCli.CNPJ.Text);
   Frm_DadCli.ant_cnpf     := fsonumero(Frm_DadCli.CNPF.Text);
   Frm_DadCli.ant_razao    := Frm_DadCli.RAZSOC.Text;
   Frm_DadCli.ant_denom    := Frm_DadCli.DENOM.Text;
   Frm_DadCli.ant_fone     := Frm_DadCli.TELEFONE.Text;
   Frm_DadCli.ant_fax      := Frm_DadCli.FAX.Text;
   Frm_DadCli.ant_endereco := Frm_DadCli.ENDERECO.Text;
   Frm_DadCli.ant_bairro   := Frm_DadCli.BAIRRO.Text;
   Frm_DadCli.ant_cidade   := Frm_DadCli.CIDADE.Text;
   Frm_DadCli.ant_uf       := Frm_DadCli.UF.Text;
   Frm_DadCli.ant_cep      := Frm_DadCli.CEP.Text;
   Frm_DadCli.ant_rg       := Frm_DadCli.RG.Text;
   Frm_DadCli.ant_ie       := Frm_DadCli.IE.Text;
   end
else
   begin
   Frm_DadCli.CNPJ.Text     :=Formatfloat(pDFCNPJ, DM1.Tb_CliCCNPJ.AsFloat);
   Frm_DadCli.CNPF.Text     :=Formatfloat(pDFCNPF, DM1.Tb_CliCCPF.AsFloat);
   Frm_DadCli.RAZSOC.Text   :=DM1.Tb_CliCRAZAO.AsString;
   Frm_DadCli.DENOM.Text    :=DM1.Tb_CliCDENOM.AsString;
   Frm_DadCli.TELEFONE.Text :=DM1.Tb_CliCFONE01.AsString;
   Frm_DadCli.FAX.Text      :=DM1.Tb_CliCFAX.AsString;
   Frm_DadCli.ENDERECO.Text :=DM1.Tb_CliCLOG.AsString;
   Frm_DadCli.BAIRRO.Text   :=DM1.Tb_CliCBAIRRO.AsString;
   Frm_DadCli.CIDADE.Text   :=DM1.Tb_CliCCIDADE.AsString;
   Frm_DadCli.UF.Text       :=DM1.Tb_CliCUF.AsString;
   Frm_DadCli.CEP.Text      :=DM1.Tb_CliCCEP.AsString;
   Frm_DadCli.RG.Text       :=DM1.Tb_CliCRG.AsString;
   Frm_DadCli.IE.Text       :=DM1.Tb_CliCIE.AsString;
   Frm_DadCli.ant_cnpj     := fsonumero(Frm_DadCli.CNPJ.Text);
   Frm_DadCli.ant_cnpf     := fsonumero(Frm_DadCli.CNPF.Text);
   Frm_DadCli.ant_razao    := Frm_DadCli.RAZSOC.Text;
   Frm_DadCli.ant_denom    := Frm_DadCli.DENOM.Text;
   Frm_DadCli.ant_fone     := Frm_DadCli.TELEFONE.Text;
   Frm_DadCli.ant_fax      := Frm_DadCli.FAX.Text;
   Frm_DadCli.ant_endereco := Frm_DadCli.ENDERECO.Text;
   Frm_DadCli.ant_bairro   := Frm_DadCli.BAIRRO.Text;
   Frm_DadCli.ant_cidade   := Frm_DadCli.CIDADE.Text;
   Frm_DadCli.ant_uf       := Frm_DadCli.UF.Text;
   Frm_DadCli.ant_cep      := Frm_DadCli.CEP.Text;
   Frm_DadCli.ant_rg       := Frm_DadCli.RG.Text;
   Frm_DadCli.ant_ie       := Frm_DadCli.IE.Text;
   end;
if Frm_DadCli.ant_codcli=1 then
   begin
   Frm_DadCli.mReadOnly   :=false;
   Frm_DadCli.mTabStop    :=false;
   end
else
   begin
   Frm_DadCli.mReadOnly   :=true;
   Frm_DadCli.mTabStop    :=true;
   end;

Frm_DadCli.txt_codconv.Visible:=true;
Frm_DadCli.txt_nomconv.Visible:=true;
Frm_DadCli.lbl_codconv.Visible:=true;
Frm_DadCli.lbl_nomconv.Visible:=true;

if fSonumero(Frm_DadCli.txt_codconv.Text)=0 then
   begin
   Frm_DadCli.txt_codconv.Visible:=false;
   Frm_DadCli.txt_nomconv.Visible:=false;
   Frm_DadCli.lbl_codconv.Visible:=false;
   Frm_DadCli.lbl_nomconv.Visible:=false;

   end
else
   begin
   Frm_DadCli.mReadonly:=true;
   Frm_DadCli.mTabStop :=false;
   end;

//Frm_DadCli.fAtualizaText(0);
Frm_DadCli.ShowModal;
fGravarDadosCSF;

edt_nomcli.text :=Frm_DadCli.RAZSOC.Text;
edt_fonecsf.Text:=Frm_DadCli.TELEFONE.Text;

end;

procedure TFrm_Venda_Pre_Farma.edt_fonecsfEnter(Sender: TObject);
begin
mant_fonecsf:=edt_fonecsf.text;
end;

function TFrm_Venda_Pre_Farma.fGravarDadosCSF: Boolean;
var
query_csf: tQuery;
begin
if mVenda_GP.mped1_Chave=0 then
   fGravarPed01(0);

query_csf:=tQuery.Create(nil);
query_csf.DatabaseName:='SG_ASSOC';
query_csf.Close;
query_csf.SQL.Clear;
query_csf.SQL.Add('Select count(*) from CADCSF where '
                 +' (CFCODEMP=:CODEMP or CFCODEMP=:CODEMP_FILIAL ) '
                 +' and CFCHAVEP=:CHAVEP '
                 +' and CFORDEMP=:ORDEMP '
                 +' and CFLOTSEQ=:LOTSEQ ');
query_csf.ParamByName('CODEMP').AsInteger       :=mVenda_GP.mPed1_Codemp_ini;
query_csf.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
query_csf.ParamByName('CHAVEP').AsFloat         :=mVenda_GP.mped1_Chave;
query_csf.ParamByName('ORDEMP').AsInteger       :=01;
query_csf.ParamByName('CODEMP').AsInteger       :=mVenda_GP.mPed1_Codemp_ini;
query_csf.ParamByName('LOTSEQ').AsInteger       :=mVenda_GP.mPed1_Chave_ano;
query_csf.open;
if query_csf.Fields[0].AsInteger=0 then
   begin
   query_csf.Close;
   query_csf.SQL.Clear;
   query_csf.SQL.Add('Insert into CADCSF ('
                    +' CFCODEMP, '
                    +' CFCODSEQ, '
                    +' CFCHAVEP, '
                    +' CFORDEMP, '
                    +' CFRAZAO, '
                    +' CFDENOM, '
                    +' CFENDER, '
                    +' CFBAIRRO, '
                    +' CFCIDADE, '
                    +' CFUF, '
                    +' CFCEP, '
                    +' CFTIPOC, '
                    +' CFCGC, '
                    +' CFIE, '
                    +' CFFONE, '
                    +' CFLOTSEQ, '
                    +' CFCHAVEP_NIVEL, '
                    +' CFFONE_CHAVE, '
                    +' CFCODVEN '
                    +') values ('
                    +' CFCODEMP, '
                    +' :CFCODSEQ, '
                    +' :CFCHAVEP, '
                    +' :CFORDEMP, '
                    +' :CFRAZAO, '
                    +' :CFDENOM, '
                    +' :CFENDER, '
                    +' :CFBAIRRO, '
                    +' :CFCIDADE, '
                    +' :CFUF, '
                    +' :CFCEP, '
                    +' :CFTIPOC, '
                    +' :CFCGC, '
                    +' :CFIE, '
                    +' :CFFONE, '
                    +' :CFLOTSEQ, '
                    +' :CFCHAVEP_NIVEL, '
                    +' :CFFONE_CHAVE, '
                    +' :CFCODVEN '
                    +' )' 
                    );

   end
else
   begin
   query_csf.Close;
   query_csf.SQL.Clear;
   query_csf.SQL.Add('Update CADCSF set '
                    +' CFCODSEQ=:CFCODSEQ, '
                    +' CFRAZAO=:CFRAZAO, '
                    +' CFDENOM=:CFDENOM, '
                    +' CFENDER=:CFENDER, '
                    +' CFBAIRRO=:CFBAIRRO, '
                    +' CFCIDADE=:CFCIDADE, '
                    +' CFUF=:CFUF, '
                    +' CFCEP=:CFCEP, '
                    +' CFTIPOC=:CFTIPOC, '
                    +' CFCGC=:CFCGC, '
                    +' CFIE=:CFIE, '
                    +' CFFONE=:CFFONE, '
                    +' CFCHAVEP_NIVEL=:CFCHAVEP_NIVEL, '
                    +' CFFONE_CHAVE=:CFFONE_CHAVE, '
                    +' CFCODVEN=:CFCODVEN '
                    +' where '
                    +' (CFCODEMP=:CFCODEMP or CFCODEMP=:CFCODEMP_FILIAL) and '
                    +' CFCHAVEP=:CFCHAVEP and '
                    +' CFORDEMP=:CFORDEMP and '
                    +' CFLOTSEQ=:CFLOTSEQ ');
   query_csf.ParamByName('CFCODEMP_FILIAL').Value:=mVenda_GP.mPed1_Codemp_fin;
   end;
query_csf.ParamByName('CFCODEMP').Value:=mVenda_GP.mPed1_Codemp_inI;
query_csf.ParamByName('CFCHAVEP').Value:=mVenda_GP.mped1_Chave;
query_csf.ParamByName('CFORDEMP').Value:=01;
query_csf.ParamByName('CFLOTSEQ').Value:=mVenda_GP.mPed1_Chave_ano;
query_csf.ParamByName('CFCHAVEP_NIVEL').Value:=0;

query_csf.ParamByName('CFCODSEQ').Value    :=0;
query_csf.ParamByName('CFRAZAO').Value     :=Frm_DadCli.RAZSOC.Text;
query_csf.ParamByName('CFDENOM').Value     :=Frm_DadCli.DENOM.Text;
query_csf.ParamByName('CFENDER').Value     :=Frm_DadCli.ENDERECO.Text;
query_csf.ParamByName('CFBAIRRO').Value    :=Frm_DadCli.BAIRRO.Text;
query_csf.ParamByName('CFCIDADE').Value    :=Frm_DadCli.CIDADE.Text;
query_csf.ParamByName('CFUF').Value        :=Frm_DadCli.UF.Text;
query_csf.ParamByName('CFCEP').Value       :=Frm_DadCli.CEP.Text;
if fSonumero(Frm_DadCli.CNPF.Text)>0 then
   begin
   query_csf.ParamByName('CFTIPOC').Value  :=1;
   query_csf.ParamByName('CFCGC').Value    :=fsonumero(Frm_DadCli.CNPF.Text);
   query_csf.ParamByName('CFIE').Value     :=Frm_DadCli.RG.Text;
   end
else
   begin
   query_csf.ParamByName('CFTIPOC').Value  :=0;
   query_csf.ParamByName('CFCGC').Value    :=fsonumero(Frm_DadCli.CNPJ.Text);
   query_csf.ParamByName('CFIE').Value     :=Frm_DadCli.IE.Text;
   end;
query_csf.ParamByName('CFFONE').Value      :=Frm_DadCli.TELEFONE.Text;
query_csf.ParamByName('CFFONE_CHAVE').Value:=fsonumero(Frm_DadCli.TELEFONE.Text);
edt_fonecsf.Text                           :=Frm_DadCli.TELEFONE.Text;
query_csf.ParamByName('CFCODVEN').Value    :=mVenda_GP.mPed1_Codven;
try
   query_csf.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(Query_csf,22663,'func','CADCSF');

   end;
freeandnil(query_csf);
result:=true;


end;

procedure  TFrm_Venda_Pre_Farma.C(DataSet: TDataSet);
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

procedure TFrm_Venda_Pre_Farma.cb_incluirautoClick(Sender: TObject);
begin
fDeletaPadroes(0,'_VENDA_PRE','CB_INCLUIRAUTO');
if cb_incluirauto.Checked then
   fGravaPadroes(0,'CB_INCLUIRAUTO'    ,'checked'   ,'_VENDA_PRE','true');

end;

procedure TFrm_Venda_Pre_Farma.cb_codvenantClick(Sender: TObject);
begin
fDeletaPadroes(0,'_VENDA_PRE','CB_CODVENANT');
if cb_codvenant.Checked then
   fGravaPadroes(0,'CB_CODVENANT'    ,'checked'   ,'_VENDA_PRE','true');

end;

procedure TFrm_Venda_Pre_Farma.sbnFormaMaisClick(Sender: TObject);
var
form_venda_pre_fpgto_mais: TFrm_Venda_pre_Fpgto_Mais;
query_altfpag: tQuery;
begin
if not sbnGravar.Enabled then
   exit;

if (not Tb_FP_pre.Active) or (Tb_FP_prePFPVALOR.IsNull) then
   exit;


Application.CreateForm(TFrm_Venda_pre_Fpgto_Mais,form_venda_pre_fpgto_mais);
form_venda_pre_fpgto_mais.mConfirma:=false;
if length(Tb_FP_prePFPCNPJ_CPF_DOC.AsString)<1 then
   form_venda_pre_fpgto_mais.edt_cnpf.Text:=''
else if length(Tb_FP_prePFPCNPJ_CPF_DOC.AsString)>11 then
   form_venda_pre_fpgto_mais.edt_cnpf.Text:=FormatFloat(pDFCNPJ, Tb_FP_prePFPCNPJ_CPF_DOC.Value)
else
   form_venda_pre_fpgto_mais.edt_cnpf.Text:=FormatFloat(pDFCNPF, Tb_FP_prePFPCNPJ_CPF_DOC.Value);
form_venda_pre_fpgto_mais.edt_codfp.Text:=Tb_FP_prePFPCODFP.AsString;
form_venda_pre_fpgto_mais.edt_parc.Text:=Tb_FP_prePFPPARCELA.AsString;
form_venda_pre_fpgto_mais.edt_qtdparc.Text:=Tb_FP_prePFPQTDPARC.AsString;
form_venda_pre_fpgto_mais.edt_valor.Text  :=Formatfloat(mcasas, Tb_FP_prePFPVALOR.AsFloat);

if Tb_FP_prePFPDATA.AsDateTime<=pdatanula then
   form_venda_pre_fpgto_mais.edt_dtvcto.Text:=FormatDateTime(fdt2, date)
else
   form_venda_pre_fpgto_mais.edt_dtvcto.Text:=FormatDateTime(fdt2, Tb_FP_prePFPDATA.AsDateTime);
form_venda_pre_fpgto_mais.edt_prazo.Text:=Tb_FP_prePFPPRAZO.AsString;
form_venda_pre_fpgto_mais.edt_emitente.Text:=Tb_FP_prePFPEMITENTE_DOC.AsString;
form_venda_pre_fpgto_mais.edt_numdoc.Text:=Tb_FP_prePFPNUMDOC.AsString;
form_venda_pre_fpgto_mais.edt_nomfp.Text :=Tb_FP_prePFPNOMFP.AsString;
form_venda_pre_fpgto_mais.edt_banco.Text:=Tb_FP_prePFPCODBCO_DOC.AsString;
form_venda_pre_fpgto_mais.edt_ctacor.Text:=Tb_FP_prePFPCC_DOC.AsString;
form_venda_pre_fpgto_mais.edt_agencia.Text:=Tb_FP_prePFPAGENCIA_DOC.AsString;
form_venda_pre_fpgto_mais.ShowModal;
if form_venda_pre_fpgto_mais.mconfirma=true then
   begin


   form_venda_pre_fpgto_mais.edt_cnpf.Text:=fdeixanum(form_venda_pre_fpgto_mais.edt_cnpf.Text);
   Tb_FP_pre.Edit;
   Tb_FP_prePFPCNPJ_CPF_DOC.Value:=fsonumero(copy(form_venda_pre_fpgto_mais.edt_cnpf.Text,1,14));
   Tb_FP_prePFPEMITENTE_DOC.Value:=copy(form_venda_pre_fpgto_mais.edt_emitente.Text,1,40);
   Tb_FP_prePFPNUMDOC.Value      :=form_venda_pre_fpgto_mais.edt_numdoc.text;
   Tb_FP_prePFPCODBCO_DOC.Value  :=fsonumero(form_venda_pre_fpgto_mais.edt_banco.Text);
   Tb_FP_prePFPCC_DOC.value      :=copy(form_venda_pre_fpgto_mais.edt_ctacor.Text,1,20);
   Tb_FP_prePFPAGENCIA_DOC.value :=copy(form_venda_pre_fpgto_mais.edt_agencia.Text,1,8);



   query_altfpag:=TQuery.create(nil);
   query_altfpag.DatabaseName:='SG_ASSOC';
   query_altfpag.Close;
   query_altfpag.SQL.Clear;
   query_altfpag.SQL.Add('Update CADPFP set PFPAGENCIA=:AGENCIA'
                        +',PFPEMITENTE=:EMITENTE,PFPCNPF=:CNPJ '
                        +',PFPNUMDOC=:NUMDOC,PFPBANCO=:BANCO'
                        +',PFPCC=:PFPCC where PFPCHAVE=:CHAVE '
                        +' and PFPORDEM=:ORDEM and PFPLOTSEQ=:LOTSEQ '
                        +' and (PFPCODEMP=:CODEMP or PFPCODEMP=:CODEMP_FILIAL)'
                        +' and PFPSEQ=:PARCELA ');
   query_altfpag.ParamByName('AGENCIA').Value        :=Tb_FP_prePFPAGENCIA_DOC.AsString;
   query_altfpag.ParamByName('EMITENTE').Value       :=Tb_FP_prePFPEMITENTE_DOC.AsString;
   query_altfpag.ParamByName('CNPJ').Value           :=Tb_FP_prePFPCNPJ_CPF_DOC.AsFloat;
   query_altfpag.ParamByName('NUMDOC').Value         :=Tb_FP_prePFPNUMDOC.AsString;
   query_altfpag.ParamByName('BANCO').Value          :=Tb_FP_prePFPCODBCO_DOC.AsFloat;
   query_altfpag.ParamByName('PFPCC').Value          :=Tb_FP_prePFPCC_DOC.AsString;
   query_altfpag.ParamByName('CHAVE').Value          :=Tb_FP_prePFPCHAVE.AsFloat;
   query_altfpag.ParamByName('ORDEM').Value          :=01;
   query_altfpag.ParamByName('LOTSEQ').Value         :=Tb_FP_prePFPCHAVE_ANO.AsInteger;
   query_altfpag.ParamByName('CODEMP').Value         :=mVenda_GP.mPed1_Codemp_ini;
   query_altfpag.ParamByName('CODEMP_FILIAL').Value  :=mVenda_GP.mPed1_Codemp_fin;
   query_altfpag.ParamByName('PARCELA').Value        :=Tb_FP_prePFPPARCELA.AsInteger;
   try
      query_altfpag.ExecSQL;
      fdm1StartCommit;
   except
      end;
   FreeAndNil(query_altfpag);

   Tb_FP_pre.Post;
   end;
FreeAndNil(form_venda_pre_fpgto_mais);

end;





procedure TFrm_Venda_Pre_Farma.edt_tarban_101Change(Sender: TObject);
begin
if (edt_tarban_101.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre_Farma.edt_tarban1Change(Sender: TObject);
begin
if (edt_tarban1.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

end.



