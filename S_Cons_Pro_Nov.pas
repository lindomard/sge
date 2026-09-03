unit S_Cons_Pro_Nov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, ComCtrls, Mask, Buttons, ExtCtrls,db,dbtables,
  S_DM1, Grids, DBGrids,S_Gra,func,S_For,S_Gpro,S_Ram,
  S_TCon,S_TipPro,S_Des,S_Proc,S_DM3,S_Fig,S_DM4,S_DCBPRO, jpeg, CheckLst,
  ToolWin, RxMemDS, RXDBCtrl, Menus, Provider, DBClient, ToolEdit, CurrEdit
  , S_VendaBloqueada_Relacao, S_Pro_Fornec, S_Pro_CodBar, S_WebService,
  RxDBComb;

type
 TAuxDBGrid = class(TDBGrid);
  TFrm_Cons_Pro_Nov = class(TFrm_C)
    Tsad: TTabSheet;                   
    TsLote: TTabSheet;
    Panel9: TPanel;
    DBGrid2: TDBGrid;
    Panel8: TPanel;
    Label6: TLabel;
    Qr_LGC: TQuery;
    Qr_LGCCLCODEMP: TFloatField;
    Qr_LGCCLCODPRO: TFloatField;
    Qr_LGCCLDTVCTO: TDateTimeField;
    Qr_LGCCLNUMERO: TStringField;
    Qr_LGCCLQTD: TFloatField;
    Src_LGC: TDataSource;
    Grade: TBitBtn;
    BB_SOBRE: TBitBtn;
    Src_Pro: TDataSource;
    GroupBox1: TGroupBox;
    Tab_Filtros: TTabSheet;
    RG_ESTOQUE: TRadioGroup;
    Qr_LGCCLQTDR: TFloatField;
    Qr_LGCCLQTDC: TFloatField;
    RG_STATUS: TRadioGroup;
    lbl_Acab: TStaticText;
    lbl_Serv: TStaticText;
    lbl_MPR: TStaticText;
    lbl_PP: TStaticText;
    lbl_MP: TStaticText;
    lbl_Isum: TStaticText;
    lbl_outros: TStaticText;
    lbl_ProBloq: TStaticText;
    lbl_ProVenc: TStaticText;
    Qr_LGCCLQTDT: TFloatField;
    Panel4: TPanel;
    GroupBox11: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    Label27: TLabel;
    DBEdit29: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label30: TLabel;
    Bevel1: TBevel;
    Label52: TLabel;
    Label10: TLabel;
    db_codpro: TDBEdit;
    db_codbar: TDBEdit;
    db_nome: TDBEdit;
    db_und: TDBEdit;
    db_marca: TDBEdit;
    DBCb_Fracao: TDBCheckBox;
    GB_PRECO1: TGroupBox;
    Label13: TLabel;
    Label7: TLabel;
    Label36: TLabel;
    lbl_pmc: TLabel;
    db_preco1: TDBEdit;
    db_precoa1: TDBEdit;
    db_dtaltpco1: TDBEdit;
    pmc: TDBEdit;
    GB_PRECO2: TGroupBox;
    Label14: TLabel;
    Label16: TLabel;
    Label33: TLabel;
    lbl_pmc02: TLabel;
    db_precoa2: TDBEdit;
    db_preco2: TDBEdit;
    db_dtaltpco2: TDBEdit;
    pmc02: TDBEdit;
    GB_PRECO3: TGroupBox;
    Label15: TLabel;
    Label17: TLabel;
    Label38: TLabel;
    lbl_pmc03: TLabel;
    db_preco3: TDBEdit;
    db_preco3a: TDBEdit;
    db_altpco3: TDBEdit;
    pmc03: TDBEdit;
    GB_OUTROS: TGroupBox;
    Label60: TLabel;
    Label61: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    db_pcofab: TDBEdit;
    PCO_CUS: TEdit;
    db_precoc: TDBEdit;
    db_pcomc: TDBEdit;
    db_ucpr: TDBEdit;
    gb_estoque: TGroupBox;
    Label4: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    db_estoque: TDBEdit;
    db_estoquet: TDBEdit;
    db_estoquer: TDBEdit;
    db_estoquec: TDBEdit;
    db_codfor: TDBEdit;
    db_nomfor: TDBEdit;
    Bevel4: TBevel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    Label18: TLabel;
    DBEdit2: TDBEdit;
    Label56: TLabel;
    DBEdit3: TDBEdit;
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
    Tb_PPRPPDESC_F: TFloatField;
    gb_promocao: TGroupBox;
    dbg_promocao: TDBGrid;
    Tb_PPRdataini: TStringField;
    Tb_PPRdatafin: TStringField;
    bbDCB: TBitBtn;
    bbBloqueios: TBitBtn;
    bbSalvarPadrao: TBitBtn;
    CB_PESQAVANC: TCheckBox;
    Qr_LGCdtvcto: TStringField;
    lbl_codgru: TLabel;
    db_codgru: TDBEdit;
    db_nomgru: TDBEdit;
    lbl_codram: TLabel;
    db_codram: TDBEdit;
    db_nomram: TDBEdit;
    Label12: TLabel;
    db_codtip: TDBEdit;
    db_nomtip: TDBEdit;
    Label11: TLabel;
    db_codcon: TDBEdit;
    db_nomcon: TDBEdit;
    Bevel5: TBevel;
    db_nome2: TDBEdit;
    lbl_nome2: TLabel;
    gb_dadosFiscais: TGroupBox;
    Label67: TLabel;
    db_icmsdeb: TDBEdit;
    Label68: TLabel;
    db_icmscred: TDBEdit;
    Label69: TLabel;
    DBE_VlrInc: TDBEdit;
    Label34: TLabel;
    db_ipi: TDBEdit;
    REGMS: TLabel;
    db_rgms: TDBEdit;
    LB_PRZVAL: TLabel;
    db_przval_mes: TDBEdit;
    LB_PRZVAL_MES: TLabel;
    DBRG_Restricao: TDBRadioGroup;
    Label80: TLabel;
    db_entpen: TDBEdit;
    sbnCodbar: TSpeedButton;
    SbnFornec: TSpeedButton;
    DBE_estoque_dep: TDBEdit;
    DBE_PRAT: TDBEdit;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Qr_LGCCLQTD_PRAT: TFloatField;
    Qr_LGCCLQTD_DEP: TFloatField;
    st_estmin_prat: TStaticText;
    st_estmin_ger: TStaticText;
    GB_INFO_GRADE: TGroupBox;
    st_estmin_prat_grade: TStaticText;
    st_estmin_ger_grade: TStaticText;
    Label85: TLabel;
    DBE_REP: TDBEdit;
    Qr_LGCCLQTD_REP: TFloatField;
    Label86: TLabel;
    MARCA: TMaskEdit;
    bbCodBar: TBitBtn;
    bbFornec: TBitBtn;
    ToolBar1: TToolBar;
    btn_novo: TBitBtn;
    btn_alterar: TBitBtn;
    btn_cancelar: TBitBtn;
    btn_excluir: TBitBtn;
    btn_gravar: TBitBtn;
    DBNavigator2: TDBNavigator;
    btn_sair: TBitBtn;
    Panel5: TPanel;
    btn_outros: TBitBtn;
    btn_sobre: TBitBtn;
    btn_barras: TBitBtn;
    btn_dcb: TBitBtn;
    pop_grid: TPopupMenu;
    ExluirItem1: TMenuItem;
    db_przval_ano: TDBEdit;
    LB_PRZVAL_ANO: TLabel;
    db_przval_dias: TDBEdit;
    LB_PRZVAL_DIAS: TLabel;
    tsSimilar: TTabSheet;
    gbSimilares: TGroupBox;
    Panel11: TPanel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    edt_simCodigo: TEdit;
    edt_nomepro: TEdit;
    Tb_Cadpro_Sim: TQuery;
    Tb_Cadpro_SimPDSIM_CODEMP: TFloatField;
    Tb_Cadpro_SimPDSIM_CODPRO: TFloatField;
    Tb_Cadpro_SimPDSIM_CODIGO: TFloatField;
    Tb_Cadpro_SimPDSIM_DESCRICAO: TStringField;
    Tb_Cadpro_SimPDSIM_REF: TStringField;
    src_Cadpro_Sim: TDataSource;
    dbg_Cadpro_Sim: TDBGrid;
    U_Cadpro_Sim: TUpdateSQL;
    pop_prosim: TPopupMenu;
    ExcluirSimilar: TMenuItem;
    StaticText3: TStaticText;
    edt_refer: TEdit;
    Qr_LGCCLLOTE_RE: TStringField;
    bbReplica: TBitBtn;
    gb_configMaster: TGroupBox;
    CB_REP_PRECOS: TCheckBox;
    bbPadraoMaster: TBitBtn;
    tscomp: TTabSheet;
    bbProxima: TBitBtn;
    gb_nutricao: TGroupBox;
    DBE_OBSNUTRIC: TDBMemo;
    STG_NUTRIC: TStringGrid;
    Panel10: TPanel;
    lbl_if_oper: TLabel;
    txt_IF_Col_Descricao: TEdit;
    txt_IF_Col_Medida: TEdit;
    txt_IF_Col_PercVD: TEdit;
    DBMemo1: TDBMemo;
    Label76: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label77: TLabel;
    DBEdit7: TDBEdit;
    Label79: TLabel;
    Label78: TLabel;
    DBEdit6: TDBEdit;
    Panel12: TPanel;
    DBE_APRES: TDBEdit;
    Label87: TLabel;
    db_vdamaxm: TDBEdit;
    Label57: TLabel;
    Label37: TLabel;
    db_prazo: TDBEdit;
    Label48: TLabel;
    Label49: TLabel;
    db_embmul: TDBEdit;
    Label39: TLabel;
    db_estmax: TDBEdit;
    Label25: TLabel;
    db_estmin: TDBEdit;
    DBE_EmbPad: TDBEdit;
    Label51: TLabel;
    Label24: TLabel;
    Panel13: TPanel;
    db_undvda: TDBEdit;
    Label75: TLabel;
    db_embpad2: TDBEdit;
    Label31: TLabel;
    DBE_qtdm3: TDBEdit;
    Label71: TLabel;
    db_pesol: TDBEdit;
    Label47: TLabel;
    db_pesob: TDBEdit;
    Label55: TLabel;
    rg_localizacao: TGroupBox;
    lbl_prat: TLabel;
    lbl_lado: TLabel;
    lbl_rua: TLabel;
    Label40: TLabel;
    DBE_prateleira: TDBEdit;
    DBE_Lado: TDBEdit;
    DBE_Rua: TDBEdit;
    db_secao: TDBEdit;
    DBCB_BALANCA: TDBCheckBox;
    Tb_Cadpro_SimPDSIM_DATHOR_EVE: TDateTimeField;
    gb_Filtro: TGroupBox;
    tab_Grupos: TTabControl;
    Label54: TLabel;
    CODGRU: TEdit;
    NOMGRU: TEdit;
    CB_FILGRU: TCheckBox;
    Label89: TLabel;
    CLFNivel: TCheckListBox;
    lbl_obspmc: TStaticText;
    btn_sgrid: TBitBtn;
    btn_lgrid: TBitBtn;
    RxDB_Status_pro: TRxDBComboBox;
    DB_VALRGMS: TDBEdit;
    Label92: TLabel;
    DBEdit15: TDBEdit;
    Label93: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Label94: TLabel;
    DBEdit18: TDBEdit;
    Label95: TLabel;
    DBE_NOMDEP: TDBEdit;
    DBE_CODDEP: TDBEdit;
    Label59: TLabel;
    Label90: TLabel;
    Label41: TLabel;
    DBEdit8: TDBEdit;
    DBEdit11: TDBEdit;
    Label43: TLabel;
    DBEdit9: TDBEdit;
    Label91: TLabel;
    DBEdit12: TDBEdit;
    Label62: TLabel;
    DBEdit13: TDBEdit;
    Label50: TLabel;
    Label46: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    DBEdit14: TDBEdit;
    Label26: TLabel;
    DBEdit10: TDBEdit;
    Label35: TLabel;
    DBEdit19: TDBEdit;
    Label42: TLabel;
    DBEdit20: TDBEdit;
    Label44: TLabel;
    DBEdit21: TDBEdit;
    panel_sittri: TPanel;
    Panel7: TPanel;
    Label70: TLabel;
    lb_1dig: TListBox;
    Panel6: TPanel;
    Label73: TLabel;
    lb_2dig: TListBox;
    Panel3: TPanel;
    sbnOk: TSpeedButton;
    Label74: TLabel;
    lbl_sit: TLabel;
    Label45: TLabel;
    DBEdit22: TDBEdit;
    bb_ultven: TBitBtn;
    bb_ultcomp: TBitBtn;
    db_pesobruto: TDBEdit;
    db_pesoliquido: TDBEdit;
    Label53: TLabel;
    Label58: TLabel;
    Tb_Pro: TQuery;
    Tb_ProPDCODEMP: TFloatField;
    Tb_ProPDCODPRO: TFloatField;
    Tb_ProPDCODBAR: TFloatField;
    Tb_ProPDNOME2: TStringField;
    Tb_ProPDMARCA: TStringField;
    Tb_ProPDNIVEL: TFloatField;
    Tb_ProPDCODFOR: TFloatField;
    Tb_ProPDPRECO1: TFloatField;
    Tb_ProPDPRECO2: TFloatField;
    Tb_ProPDPRECO3: TFloatField;
    Tb_ProPDPMC: TFloatField;
    Tb_ProPDPRECOA1: TFloatField;
    Tb_ProPDPRECOA2: TFloatField;
    Tb_ProPDPRECOA3: TFloatField;
    Tb_ProPDDESC1: TFloatField;
    Tb_ProPDDESC1A: TFloatField;
    Tb_ProPDDESC2: TFloatField;
    Tb_ProPDDESC3: TFloatField;
    Tb_ProPDQTDP: TFloatField;
    Tb_ProPDPRAZO: TFloatField;
    Tb_ProPDSIT: TStringField;
    Tb_ProPDDTUATP1: TDateTimeField;
    Tb_ProPDUSRALT1: TFloatField;
    Tb_ProPDDTUATP2: TDateTimeField;
    Tb_ProPDUSRALT2: TFloatField;
    Tb_ProPDDTUATP3: TDateTimeField;
    Tb_ProPDUSRALT3: TFloatField;
    Tb_ProPDDATAUA: TDateTimeField;
    Tb_ProPDUND: TStringField;
    Tb_ProPDCURVA: TStringField;
    Tb_ProPDCODGRU: TFloatField;
    Tb_ProPDCODCON: TFloatField;
    Tb_ProPDCODRAM: TFloatField;
    Tb_ProPDCODTIP: TFloatField;
    Tb_ProPDESTMAX: TFloatField;
    Tb_ProPDESTMIN: TFloatField;
    Tb_ProPDFRACAO: TFloatField;
    Tb_ProPDLISTA: TFloatField;
    Tb_ProPDPRECOC: TFloatField;
    Tb_ProPDPCOMC: TFloatField;
    Tb_ProPDPCOFAB: TFloatField;
    Tb_ProPDSTATUS: TFloatField;
    Tb_ProPDTABICM: TStringField;
    Tb_ProPDIPI: TFloatField;
    Tb_ProPDREGMS: TStringField;
    Tb_ProPDCLAS: TStringField;
    Tb_ProPDSECAO: TStringField;
    Tb_ProPDEMBPAD: TFloatField;
    Tb_ProPDEMBMUL: TFloatField;
    Tb_ProPDCOMIS: TFloatField;
    Tb_ProPDSEMCOM: TFloatField;
    Tb_ProPDPRZVAL: TFloatField;
    Tb_ProPDUCPR: TFloatField;
    Tb_ProPDCODUSR: TFloatField;
    Tb_ProPDSALDO: TFloatField;
    Tb_ProPDDTALT: TDateTimeField;
    Tb_ProPDHRALT: TStringField;
    Tb_ProPDEMBPAD2: TStringField;
    Tb_ProPDCODPROC: TFloatField;
    Tb_ProPDPROALT: TFloatField;
    Tb_ProPDNOMFOR: TStringField;
    Tb_ProPDNOMPROC: TStringField;
    Tb_ProPDNOMGRU: TStringField;
    Tb_ProPDNOMCON: TStringField;
    Tb_ProPDNOMRAM: TStringField;
    Tb_ProPDNOMTIP: TStringField;
    Tb_ProPDNOMPROALT: TStringField;
    Tb_ProPDDTULTSAI: TDateTimeField;
    Tb_ProPDDTULTENT: TDateTimeField;
    Tb_Propco_custo: TStringField;
    Tb_ProPDPESOB: TFloatField;
    Tb_ProPDPESOL: TFloatField;
    Tb_ProPDVDAMAXM: TFloatField;
    Tb_ProPDDATCAD: TDateTimeField;
    Tb_Prodiferenca: TFloatField;
    Tb_ProPDALTO: TFloatField;
    Tb_ProPDREST: TFloatField;
    Tb_ProPDBAIXO: TFloatField;
    Tb_ProPDSTATUS02: TFloatField;
    Tb_ProPDSALDOR: TFloatField;
    Tb_ProPDBAIXOR: TFloatField;
    Tb_ProPDALTOR: TFloatField;
    Tb_ProPDSALDOC: TFloatField;
    Tb_ProPDBAIXOC: TFloatField;
    Tb_ProPDALTOC: TFloatField;
    Tb_ProPDNOME: TStringField;
    Tb_ProPDCUSFAB: TFloatField;
    Tb_ProPDCUSENV: TFloatField;
    Tb_ProPDCUSFIN: TFloatField;
    Tb_ProPDUCODFOR: TFloatField;
    Tb_ProPDUNOMFOR: TStringField;
    Tb_ProPDCODFAB: TStringField;
    Tb_ProPDALTOT: TFloatField;
    Tb_ProPDBAIXOT: TFloatField;
    Tb_ProPDSALDOT: TFloatField;
    Tb_Pron_nivel: TStringField;
    Tb_Proestoquec: TFloatField;
    Tb_Prodtaltpco3: TStringField;
    Tb_Prodtaltpco2: TStringField;
    Tb_Prodtaltpco1: TStringField;
    Tb_Proestoque: TFloatField;
    Tb_Proestoquer: TFloatField;
    Tb_Prodtuent: TDateField;
    Tb_Prodtusai: TDateField;
    Tb_Proestoquet: TFloatField;
    Tb_ProPDPMC02: TFloatField;
    Tb_ProPDPMC03: TFloatField;
    Tb_ProPDCX_PVDA: TFloatField;
    Tb_ProPDCX_PFAB: TFloatField;
    Tb_ProPDCX_PMAX: TFloatField;
    Tb_ProPDICMSCRED: TFloatField;
    Tb_ProPDICMSDEB: TFloatField;
    Tb_ProPDVLRINC: TFloatField;
    Tb_ProPDPRAT: TStringField;
    Tb_ProPDLADO: TStringField;
    Tb_ProPDRUA: TStringField;
    Tb_ProPDAPLIC: TStringField;
    Tb_ProPDQTDGRML: TFloatField;
    Tb_ProPDAPRES: TStringField;
    Tb_ProPDCOMIS_EXTRA: TFloatField;
    Tb_ProPDQTDM3: TFloatField;
    Tb_ProPDUNDVDA: TFloatField;
    Tb_ProPDBLDESCAV: TFloatField;
    Tb_ProPDRESTFOR: TFloatField;
    Tb_ProPDRESTCON: TFloatField;
    Tb_ProPDSITCF: TStringField;
    Tb_ProPDCODBAR_EMBPAD: TStringField;
    Tb_ProPDUSRALT: TFloatField;
    Tb_ProPDUSRINC: TFloatField;
    Tb_ProPDENTPEN: TFloatField;
    Tb_Proentpen: TFloatField;
    Tb_ProPDSALDO_PRAT: TFloatField;
    Tb_ProPDSALDO_DEP: TFloatField;
    Tb_Proestoque_prat: TFloatField;
    Tb_Proestoque_dep: TFloatField;
    Tb_ProPDSALDO_REP: TFloatField;
    Tb_Proestoque_rep: TFloatField;
    Tb_ProPDTEMPOFAB: TFloatField;
    Tb_ProPDPRZVAL_ANOS: TFloatField;
    Tb_ProPDPRZVAL_DIAS: TFloatField;
    Tb_ProPDCODDEP: TFloatField;
    Tb_ProPDNOMDEP: TStringField;
    Tb_ProPDREFER: TStringField;
    Tb_ProPDDATA_REPLICA: TDateTimeField;
    Tb_ProPDDESCMAX: TFloatField;
    Tb_ProPDTEMFORMULA: TFloatField;
    Tb_ProPDBALANCA: TFloatField;
    Tb_Prodtvenc: TDateField;
    Tb_Propcoven: TFloatField;
    Tb_ProPDVALREGMS: TDateTimeField;
    U_Pro: TUpdateSQL;
    tsFiscais: TTabSheet;
    Label19: TLabel;
    db_clas: TDBEdit;
    Label20: TLabel;
    DBEdit23: TDBEdit;
    Label72: TLabel;
    DBCb_TabIcm: TDBComboBox;
    Label64: TLabel;
    RxDBCB_FIS_ORIGEM: TRxDBComboBox;
    gb_csosn_sn: TGroupBox;
    Label101: TLabel;
    Label102: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    RxDBCB_CSOSN_EST_REV: TRxDBComboBox;
    RxDBCB_CSOSN_EST_CF: TRxDBComboBox;
    RxDBCB_CSOSN_INT_REV: TRxDBComboBox;
    RxDBCB_CSOSN_INT_CF: TRxDBComboBox;
    gb_cstipi: TGroupBox;
    Label103: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label32: TLabel;
    Label63: TLabel;
    Label108: TLabel;
    RxDBCB_CST_PISCOF_ENTRADA: TRxDBComboBox;
    RxDBCB_CST_PISCOF_SAIDA: TRxDBComboBox;
    EDT_PIS_ALIQ_ENTRADA: TDBEdit;
    DBE_COFINS_ALIQ_ENTRADA: TDBEdit;
    DBE_PIS_ALIQ_SAIDA: TDBEdit;
    DBE_COFINS_ALIQ_SAIDA: TDBEdit;
    Tb_ProPDKIT: TStringField;
    Tb_ProPDCODEXT: TFloatField;
    Tb_ProPDFIS_ORIGEM: TStringField;
    Tb_ProPDFIS_CST_ICMS_EST_REV: TStringField;
    Tb_ProPDFIS_CST_ICMS_EST_CF: TStringField;
    Tb_ProPDFIS_PRED_ICMS_EST: TFloatField;
    Tb_ProPDFIS_CST_ICMS_INT_CF: TStringField;
    Tb_ProPDFIS_CST_ICMS_INT_REV: TStringField;
    Tb_ProPDFIS_PRED_ICMS_INT: TFloatField;
    Tb_ProPDFIS_CSOSN_EST_REV: TStringField;
    Tb_ProPDFIS_CSOSN_EST_CF: TStringField;
    Tb_ProPDFIS_CSOSN_INT_REV: TStringField;
    Tb_ProPDFIS_CSOSN_INT_CF: TStringField;
    Tb_ProPDFIS_CST_PISCOF_ENTRADA: TStringField;
    Tb_ProPDFIS_CST_PISCOF_SAIDA: TStringField;
    Tb_ProPDFIS_PIS_ALIQ_ENTRADA: TFloatField;
    Tb_ProPDFIS_COFINS_ALIQ_ENTRADA: TFloatField;
    Tb_ProPDFIS_PIS_ALIQ_SAIDA: TFloatField;
    Tb_ProPDFIS_COFINS_ALIQ_SAIDA: TFloatField;
    TRxDBCB_LISTA: TRxDBComboBox;
    Label109: TLabel;
    gb_cst_icms: TGroupBox;
    Label88: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    RxDBCB_CST_ICMS_EST_REV: TRxDBComboBox;
    RxDBB_CST_ICMS_EST_CF: TRxDBComboBox;
    DBE_PRED_ICMS_EST: TDBEdit;
    RxDBCB_CST_ICMS_INT_REV: TRxDBComboBox;
    RxDBCB_CST_ICMS_INT_CF: TRxDBComboBox;
    DBE_PRED_ICMS_INT: TDBEdit;
    tsEspeciais: TTabSheet;
    lbl_nomprod: TLabel;
    src_pro_cmet: TDataSource;
    tb_cmet: TQuery;
    tb_cmetCMET_CODEMP: TFloatField;
    tb_cmetCMET_CODPRO: TFloatField;
    tb_cmetCMET_CODIGO: TFloatField;
    tb_cmetCMET_NOME: TStringField;
    tb_cmetCMET_PRECO: TFloatField;
    u_cmet: TUpdateSQL;
    Label110: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    gb_chapas_met: TGroupBox;
    Label111: TLabel;
    Panel14: TPanel;
    Label112: TLabel;
    Label113: TLabel;
    DBECMET_bitola: TDBEdit;
    DBECMET_constante: TDBEdit;
    DBGrid3: TDBGrid;
    Panel15: TPanel;
    bbExcSubProd: TBitBtn;
    Tb_ProPDCONTESP: TFloatField;
    Tb_ProPDCMET_CONSTANTE: TFloatField;
    Tb_ProPDCMET_BITOLA: TFloatField;
    Tb_ProPDCODNCM: TStringField;
    btn_SPadrao: TBitBtn;
    Tb_Prosaldo_filial: TFloatField;
    bbEstFilial: TBitBtn;
    Label114: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    Qr_LGCCLFILIAL: TFloatField;
    RxDBCB_PDNIVEL: TRxDBComboBox;
    Tb_ProPDDESFIN: TFloatField;
    Tb_ProPDPRECO_RESIDUO: TFloatField;
    procedure TsLoteShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure db_codproExit(Sender: TObject);
    procedure db_preco1KeyPress(Sender: TObject; var Key: Char);
    procedure BBnAtuClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure db_sitEnter(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure db_codforKeyPress(Sender: TObject; var Key: Char);
    procedure db_codgruKeyPress(Sender: TObject; var Key: Char);
    procedure db_codramKeyPress(Sender: TObject; var Key: Char);
    procedure db_codconKeyPress(Sender: TObject; var Key: Char);
    procedure db_codtipKeyPress(Sender: TObject; var Key: Char);
    procedure db_codforExit(Sender: TObject);
    procedure db_codgruExit(Sender: TObject);
    procedure db_codramExit(Sender: TObject);
    procedure db_codconExit(Sender: TObject);
    procedure db_codtipExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PC1Change(Sender: TObject);
    procedure Src_ProDataChange(Sender: TObject; Field: TField);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure db_nome2Exit(Sender: TObject);
    procedure dbg_promocaoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure Tb_PPRCalcFields(DataSet: TDataSet);
    procedure tsTabShow(Sender: TObject);
    procedure bbSalvarPadraoClick(Sender: TObject);
    procedure RG_ESTOQUEClick(Sender: TObject);
    procedure db_preco1Enter(Sender: TObject);
    procedure db_preco1Exit(Sender: TObject);
    procedure db_preco2Exit(Sender: TObject);
    procedure db_preco3Exit(Sender: TObject);
    procedure db_preco2Enter(Sender: TObject);
    procedure db_preco3Enter(Sender: TObject);
    procedure Qr_LGCCalcFields(DataSet: TDataSet);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_embpad2Exit(Sender: TObject);
    procedure db_nomeExit(Sender: TObject);
    procedure lb_1digClick(Sender: TObject);
    procedure lb_2digClick(Sender: TObject);
    procedure sbnOkClick(Sender: TObject);
    procedure DBCb_TabIcmExit(Sender: TObject);
    procedure bbProximaClick(Sender: TObject);
    procedure Panel_nivelExit(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbc_restExit(Sender: TObject);
    procedure db_clasExit(Sender: TObject);
    procedure CAMPOExit(Sender: TObject);
    procedure sbnCodbarClick(Sender: TObject);
    procedure SbnFornecClick(Sender: TObject);
    procedure db_codbarExit(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CB_STATUS_PROExit(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure btn_gravarClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure btn_bloqueioClick(Sender: TObject);
    procedure btn_outrosClick(Sender: TObject);
    procedure btn_sobreClick(Sender: TObject);
    procedure btn_barrasClick(Sender: TObject);
    procedure btn_dcbClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure STG_NUTRICDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure txt_IF_Col_PercVDKeyPress(Sender: TObject; var Key: Char);
    procedure txt_IF_Col_PercVDExit(Sender: TObject);
    procedure ExluirItem1Click(Sender: TObject);
    procedure STG_NUTRICDblClick(Sender: TObject);
    procedure txt_IF_Col_DescricaoEnter(Sender: TObject);
    procedure DBE_CODDEPExit(Sender: TObject);
    procedure DBE_CODDEPKeyPress(Sender: TObject; var Key: Char);
    procedure edt_simCodigoExit(Sender: TObject);
    procedure edt_nomeproExit(Sender: TObject);
    procedure ExcluirSimilarClick(Sender: TObject);
    procedure dbg_Cadpro_SimDblClick(Sender: TObject);
    procedure Panel11Exit(Sender: TObject);
    procedure c(DataSet: TDataSet);
    procedure bbReplicaClick(Sender: TObject);
    procedure db_undExit(Sender: TObject);
    procedure bbPadraoMasterClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure txt_IF_Col_PercVDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODGRUExit(Sender: TObject);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure tab_GruposChange(Sender: TObject);
    procedure btn_sgridClick(Sender: TObject);
    procedure btn_lgridClick(Sender: TObject);
    procedure DB_VALRGMSExit(Sender: TObject);
    procedure tsSimilarShow(Sender: TObject);
    procedure bb_ultvenClick(Sender: TObject);
    procedure bb_ultcompClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Tb_ProCalcFields(DataSet: TDataSet);
    procedure Tb_ProAfterInsert(DataSet: TDataSet);
    procedure Tb_ProBeforeInsert(DataSet: TDataSet);
    procedure Tb_ProBeforePost(DataSet: TDataSet);
    procedure RxDBComboBox2Click(Sender: TObject);
    procedure tb_cmetAfterEdit(DataSet: TDataSet);
    procedure tb_cmetAfterInsert(DataSet: TDataSet);
    procedure tb_cmetBeforeDelete(DataSet: TDataSet);
    procedure tb_cmetBeforePost(DataSet: TDataSet);
    procedure btn_SPadraoClick(Sender: TObject);
    procedure bbEstFilialClick(Sender: TObject);
  private
    { Private declarations }
    mcmet_oper: Integer;
    mcmet_codigo_ant: Integer;
    mcodpro_change: real;
    
    function fcarregagrade(ptipo: Integer): Boolean;
    function fcarregapromocao(ptipo: Integer): Boolean;

    function fPro01lerantlocal(ptipo: Integer):Boolean;
    function fpro01gantlocal(ptipo: Integer):Boolean;
    function fGravaFillocal(ptipo: Integer): Boolean;
    function fCarregaPadraolocal(ptipo: Integer): Boolean;
    function fCarregaInfNutlocal(pTipo: Integer): Boolean;
    Function fCarregaSimilarlocal(pTipo: Integer):Boolean;
    function flcadprolocal(ptipo,ppre,pcodemp: Integer; pvalor,ppar02,ppar03: String): Boolean;

    function fcarregaEspeciais(ptipo: Integer;pForcar: Boolean): Boolean;

  public
    { Public declarations }
    form_Vendabloqueada_relacao: TFrm_VendaBloqueada_Relacao;
    form_Pro_Fornec: TFrm_Pro_Fornec;
    form_gra: TFrm_Gra;
    form_fig: TFrm_fig;
    form_Pro_CodBar: TFrm_Pro_CodBar;
    form_DCBPRO: TFrm_DCBPRO;
    form_WebService: TFrm_WebService;
    proNov_ori: String;
  end;


function fProTestaMov(pCodpro, pGrade: String): Boolean;
var
  Frm_Cons_Pro_Nov: TFrm_Cons_Pro_Nov;
  moper: Integer;
  mfiltro: String;
  pro_dtvcto: TDateTime;
  bbpdalt_true : Boolean=True;
  bbpdinc_true : Boolean=True;
  bbpdexc_true : Boolean=True;
  mAtuafiltro: boolean=False;
  mPrecoAnt: Real;
  mSoConsulta: Boolean=False;
  mCodpro_Ant: Real=0;
  mcodigo    : String;
  mcolumn    : Integer;
  mrefer_ant : String;
  mIF_Col_Descricao : Integer=0;
  mIF_Col_Medida : Integer=1;
  mIF_Col_PercVD : Integer=2;
  mIf_Alterou    : Boolean=false;
  mIf_itemman    : Integer=-1;
  mcodInfNut: Real=0;
  mcodSimilar: Real=0;
  mQtdCol: Integer;
  mOper_ProSim: Integer=0;
  mPosReg_ProSim: TBookmark;

implementation

uses func_excecoes,
  S_DM6,lerarq, S_UltCPR, s_ultVen, flerarq, S_Pro_EstFilial,s_lerarq_geral;

{$R *.dfm}

function TFrm_Cons_Pro_Nov.flcadprolocal(ptipo,ppre,pcodemp: Integer; pvalor,ppar02,ppar03: String): Boolean;
begin
{
0-Nome
1-Código
2-Descrição 2
3-Código Barras
4-Fornecedor
5-Marca/Referencia
6-Código do Produto no Fabricante


}

if pcodemp=0 then
  pcodemp:=codemp;
  
TB_PRO.Close;
{
if pbanco=0 then
   begin
   if DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
      TB_PRO.ParamByName('CODEMP').AsString:='%'
   else if pcodemp<>0 then
      TB_PRO.ParamByName('CODEMP').AsFloat:=pcodemp
   else
      TB_PRO.ParamByName('CODEMP').AsFloat:=codemp;
   if ptipo=1 then
      begin
      if (trim(pvalor)='') and (ppre=1) then
         TB_PRO.ParamByName('CODPRO').AsString:='%'
      else
         TB_PRO.ParamByName('CODPRO').AsFloat:=fsonumero(pvalor);
      end
   else
      TB_PRO.ParamByName('CODPRO').AsString:='%';
  if ptipo=0 then
     TB_PRO.ParamByName('NOME').AsString:=pvalor+'%'
  else
     TB_PRO.ParamByName('NOME').AsString:='%';
   if ptipo=2 then
      TB_PRO.ParamByName('NOME2').AsString:=pvalor+'%'
   else
      TB_PRO.ParamByName('NOME2').AsString:='%';
   if ptipo=3 then
      begin
      if (trim(pvalor)='') and (ppre=1) then
         TB_PRO.ParamByName('CODBAR').AsString:='%'
      else
         TB_PRO.ParamByName('CODBAR').AsFloat:=fSonumero(pvalor);
      end
   else
      TB_PRO.ParamByName('CODBAR').AsString:='%';
   if ptipo=4 then
      TB_PRO.ParamByName('NOMFOR').AsString:=pvalor+'%'
   else
      TB_PRO.ParamByName('NOMFOR').AsString:='%';
   if ptipo=5 then
      TB_PRO.ParamByName('MARCA').AsString:=pvalor+iif(ppre=1,'%','')
   else
      TB_PRO.ParamByName('MARCA').AsString:='%';
   if ptipo=6 then
      TB_PRO.ParamByName('CODFOR').AsString:=pvalor+iif(ppre=1,'%','')
   else
      TB_PRO.ParamByName('CODFOR').AsString:='%';

   TB_PRO.Open;
   if TB_PRO.Eof then
      Result:=False
   else
      Result:=True;
   end
else
   begin
}

   TB_PRO.Close;
   TB_PRO.SQL.Clear;
   TB_PRO.SQL.Add('Select * from CADPRO ');
   mcinst2:=fRetInstMECadastro('CADPRO','PDCODEMP',pcodemp);
   mcinst:=' where ';
   if trim(mcinst2)<>'' then
      begin
      TB_PRO.Sql.add(mcinst+mcinst2);
      mcinst:=' and ';
      end;



   if trim(ppar02)<>'' then
      begin
      TB_PRO.Params.CreateParam(ftString,'MARCA',ptInput);

      if DM4.Tb_ParGer02PG2IGNOR_MINUSCULAS.AsInteger=1 then
         begin
         TB_PRO.SQL.Add(mcinst+'upper(PDMARCA) like :MARCA');
         TB_PRO.Params.ParamByName('MARCA').AsString:=Uppercase(ppar02)+'%';
         end
      else
         begin
         TB_PRO.SQL.Add(mcinst+'PDMARCA like :MARCA');
         TB_PRO.Params.ParamByName('MARCA').AsString:=ppar02+'%';
         end;

      mcinst:=' and ';
      end;


   if trim(pvalor)=''  then
      begin
      TB_PRO.Params.CreateParam(ftString,'NOME',ptInput);
      TB_PRO.SQL.Add(mcinst+'PDNOME like :NOME');
      TB_PRO.Params.ParamByName('NOME').AsString:='%';
      mcinst:=' and ';
      end;


   if trim(pvalor)<>'' then
      begin
      if ptipo<1 then
         begin
         TB_PRO.Params.CreateParam(ftString,'NOME',ptInput);
         if DM4.Tb_ParGer02PG2IGNOR_MINUSCULAS.AsInteger=1 then
            begin
            TB_PRO.SQL.Add(mcinst+'upper(PDNOME) like :NOME');
            TB_PRO.Params.ParamByName('NOME').AsString:=Uppercase(pvalor)+'%';
            end
         else
            begin
            TB_PRO.SQL.Add(mcinst+'PDNOME like :NOME');
            TB_PRO.Params.ParamByName('NOME').AsString:=pvalor+'%';
            end;
         end
      else if (ptipo=1) then
         begin
         TB_PRO.Filtered:=false;
         TB_PRO.SQl.add(mcinst+' PDCODPRO=0'+pvalor);
         end
      else if ptipo=2 then
         begin
         TB_PRO.Params.CreateParam(ftString,'NOME2',ptInput);
         if DM4.Tb_ParGer02PG2IGNOR_MINUSCULAS.AsInteger=1 then
            begin
            TB_PRO.SQL.Add(mcinst+'upper(PDNOME2) like :NOME2');
            TB_PRO.Params.ParamByName('NOME2').AsString:=Uppercase(pvalor)+'%';
            end
         else
            begin
            TB_PRO.SQL.Add(mcinst+'PDNOME2 like :NOME2');
            TB_PRO.Params.ParamByName('NOME2').AsString:=pvalor+'%';
            end;

         end
      else if (ptipo=3) then
         TB_PRO.SQl.add(mcinst+' PDCODBAR=0'+pvalor)
      else if ptipo=4 then
         begin
         TB_PRO.Params.CreateParam(ftString,'NOMFOR',ptInput);
         if DM4.Tb_ParGer02PG2IGNOR_MINUSCULAS.AsInteger=1 then
            begin
            TB_PRO.SQL.Add(mcinst+'upper(PDNOMFOR) like :NOMFOR');
            TB_PRO.Params.ParamByName('NOMFOR').AsString:=uppercase(pvalor)+'%';
            end
         else
            begin
            TB_PRO.SQL.Add(mcinst+'PDNOMFOR like :NOMFOR');
            TB_PRO.Params.ParamByName('NOMFOR').AsString:=pvalor+'%';
            end;
         end
      else if ptipo=5 then
         begin
         TB_PRO.Params.CreateParam(ftString,'REFER',ptInput);
         if DM4.Tb_ParGer02PG2IGNOR_MINUSCULAS.AsInteger=1 then
            begin
            TB_PRO.SQL.Add(mcinst+'PDREFER like :REFER');
            TB_PRO.Params.ParamByName('REFER').AsString:=pvalor+'%';
            end
         else
            begin
            TB_PRO.SQL.Add(mcinst+'upper(PDREFER) like :REFER');
            TB_PRO.Params.ParamByName('REFER').AsString:=Uppercase(pvalor+'%');
            end;


         end
      else if ptipo=6 then
         TB_PRO.SQL.Add(mcinst+' PDCODFAB=0'+pvalor)
      end;
//   end;

if (pbanco_versao>9) or (length(pvalor)>1) then
  begin
  if DM1.Tb_PargerPORDEMCADPRO.AsInteger=2 then
    begin
    Tb_Pro.SQL.Add(' order by PDNOME2 ');
    end
  else if (DM1.Tb_PargerPORDEMCADPRO.AsInteger=1) then
    begin
    if (pbanco_versao>9) then
      Tb_Pro.SQL.Add(' order by PDNOME ');
    end
  else
    begin
    Tb_Pro.SQL.Add(' order by PDCODPRO ');
    end;
  end;

// TB_PRO.SQL.SaveToFile( mpastatemp +'sql.txt');

try
   TB_PRO.Open;
except
   TB_PRO.SQL.SaveToFile( mpastatemp +'sql.txt');
   fMensagem('Campo Inexistente: '+FTestarCampos(TB_PRO,['CADPRO']),0,['0'],0);

   end;
if TB_PRO.Eof then
   Result:=False
else
   Result:=True;
end;


procedure TFrm_Cons_Pro_Nov.TsLoteShow(Sender: TObject);
begin
  inherited;
fcarregagrade(0);
end;

procedure TFrm_Cons_Pro_Nov.FormCreate(Sender: TObject);
var
  x: Integer;
  n: Integer;
  nivel  : TNivPro;
begin
mcodpro_change:=-1;
RxDBComboBox2.Enabled    :=false;
DBECMET_bitola.Enabled   :=false;
DBECMET_constante.Enabled:=false;
DBGrid3.ReadOnly         :=true;

{if (ValInt('0'+copy(mpseg,1,2))<>3) then
   begin
   DBGrid2.Columns[10].Visible:=false;
   end;}

lbl_obspmc.Font.Color:=$000080FF;


rxDBCB_PDNIVEL.Items.clear;
RxDBCB_PDNIVEL.Values.clear;

CLFNivel.Clear;
nivel:=CarregaNivel;
for n:=0 to 11 do
  begin
  RxDBCB_PDNIVEL.Items.Add(nivel[n]);
  RxDBCB_PDNIVEL.Values.Add(inttostr(n));
  CLFNivel.Items.Add(nivel[n]);
  end;


if flfilpad(-1,'_PRO','CB_REP_PRECOS') then
   CB_REP_PRECOS.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

if flfilpad(-1,'_PRO','CB_FILGRU') then
   CB_FILGRU.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

IF CB_FILGRU.Checked then
   gb_Filtro.Visible:=true
else
   gb_Filtro.Visible:=false;
if codusr=1111 then
   gb_configMaster.Visible:=true
else
   gb_configMaster.Visible:=false;

Top  := 0;
Left := (mtamppal - Width) div 2;

panel_sittri.top :=53;
panel_sittri.left:=85;


Tab_Filtros.TabVisible:=True;
CANCELARClick(Self);

if DM1.Tb_PargerPPROMCADPRO.AsInteger=1 then
   gb_promocao.Visible:=true;
if not (DM1.Tb_PargerPFCORP_ACAB.IsNull) and (DM1.Tb_PargerPFCORP_ACAB.Value<>0) then
   lbl_Acab.Font.Color:=DM1.Tb_PargerPFCORP_ACAB.AsInteger;
if not (DM1.Tb_PargerPFCORP_SERV.IsNull) and (DM1.Tb_PargerPFCORP_SERV.Value<>0) then
   lbl_Serv.Font.Color:=DM1.Tb_PargerPFCORP_SERV.AsInteger;
if not (DM1.Tb_PargerPFCORP_MPR.IsNull) and (DM1.Tb_PargerPFCORP_MPR.Value<>0) then
   lbl_MPR.Font.Color :=DM1.Tb_PargerPFCORP_MPR.AsInteger;
if not (DM1.Tb_PargerPFCORP_PP.IsNull) and (DM1.Tb_PargerPFCORP_PP.Value<>0) then
   lbl_PP.Font.Color  :=DM1.Tb_PargerPFCORP_PP.AsInteger;
if not (DM1.Tb_PargerPFCORP_MP.IsNull) and (DM1.Tb_PargerPFCORP_MP.Value<>0) then
   lbl_MP.Font.Color  :=DM1.Tb_PargerPFCORP_MP.AsInteger;
if not (DM1.Tb_PargerPFCORP_ISUM.IsNull) and (DM1.Tb_PargerPFCORP_ISUM.Value<>0) then
   lbl_Isum.Font.Color:=DM1.Tb_PargerPFCORP_ISUM.AsInteger;
if not (DM1.Tb_PargerPFCORP_OUT.IsNull) and (DM1.Tb_PargerPFCORP_OUT.Value<>0) then
   lbl_outros.Font.Color:=DM1.Tb_PargerPFCORP_OUT.AsInteger;
if not (DM1.Tb_PargerPFCORP_VENC.IsNull) and (DM1.Tb_PargerPFCORP_VENC.Value<>0) then
   lbl_ProVenc.Font.Color:=DM1.Tb_PargerPFCORP_VENC.AsInteger;
if not (DM1.Tb_PargerPFCORP_BLOQ.IsNull) and (DM1.Tb_PargerPFCORP_BLOQ.Value<>0) then
   lbl_ProBloq.Font.Color:=DM1.Tb_PargerPFCORP_BLOQ.AsInteger;
if not (DM1.Tb_PargerPFCORP_ESTMIN_PRAT.IsNull) and (DM1.Tb_PargerPFCORP_ESTMIN_PRAT.Value<>0) then
   begin
   st_estmin_prat.Color :=DM1.Tb_PargerPFCORP_ESTMIN_PRAT.AsInteger;
   st_estmin_prat_grade.Color :=DM1.Tb_PargerPFCORP_ESTMIN_PRAT.AsInteger;
   end;
if not (DM1.Tb_PargerPFCORP_ESTMIN_GER.IsNull) and (DM1.Tb_PargerPFCORP_ESTMIN_GER.Value<>0) then
   begin
   st_estmin_ger.Color       :=DM1.Tb_PargerPFCORP_ESTMIN_GER.AsInteger;
   st_estmin_ger_grade.Color :=DM1.Tb_PargerPFCORP_ESTMIN_GER.AsInteger;
   end;

{if DM1.Tb_PargerPOCUEST.Value=1 then
   DBGrid1.Columns[1].Width:=430;}

proNov_ori:='';
if DM1.Tb_PargerPUPALNUM.Value=1 then
   begin
   db_precoc.DataField:='pco_custo';
   db_precoc.Enabled  :=False;
   end;
if DM1.Tb_PargerPMANPC.Value=1 then
   begin
   db_precoc.ReadOnly:=False;
   db_pcofab.ReadOnly:=False;
   end
else
   begin
   db_precoc.ParentColor:=True;
   db_pcofab.ParentColor:=True;
   db_precoc.ReadOnly:=True;
   db_pcofab.ReadOnly:=True;
   end;
//if DM1.Tb_PargerPPRZVAL.Value=1 then
//   begin
   LB_PRZVAL.Visible     :=True;
   LB_PRZVAL_ANO.Visible :=True;
   LB_PRZVAL_MES.Visible :=True;
   LB_PRZVAL_DIAS.Visible:=True;
   db_przval_ano.Visible :=True;
   db_przval_mes.Visible :=True;
   db_przval_dias.Visible:=True;
//   end;

CarregarGrid('Frm_Pro_Nov',DBGrid1);

if log_filial_Qtd<2 then
   begin
   bbEstFilial.Visible:=false;
   for x:=0 to DBGrid1.Columns.Count-1 do
      begin
      if DBGrid1.Columns[x].FieldName='saldo_filial' then
         begin
         DBGrid1.Columns[x].Visible:=false;
         break;
         end;
      end;
   end;

if DM1.Tb_PargerPDQPCOP.Value=1 then
  begin
  GB_PRECO2.Visible:=False;
  GB_PRECO3.Visible:=False;
  for mcolumn:=0 to DBGrid1.Columns.Count - 1 do
    begin
    if UpperCase(DBGrid1.Columns[mcolumn].FieldName)=UpperCase('PDPRECO2') then
      DBGrid1.Columns[mcolumn].Visible:=false;
    if UpperCase(DBGrid1.Columns[mcolumn].FieldName)=UpperCase('PDPRECO3') then
      DBGrid1.Columns[mcolumn].Visible:=false;
    end;
  end
else if DM1.Tb_PargerPDQPCOP.Value=2 then
  begin
  GB_PRECO3.Visible:=False;
  for mcolumn:=0 to DBGrid1.Columns.Count - 1 do
    begin
    if UpperCase(DBGrid1.Columns[mcolumn].FieldName)=UpperCase('PDPRECO3') then
      begin
      DBGrid1.Columns[mcolumn].Visible:=false;
      break;
      end;
    end;
  end
else if (DM1.Tb_PargerPDQPCOP.Value=4) or (DM1.Tb_PargerPDQPCOP.Value=5) then
  begin
  GB_PRECO3.Visible:=False;
  for mcolumn:=0 to DBGrid1.Columns.Count -1 do
    begin
    if DM1.Tb_PargerPDQPCOP.Value=4 then
       begin
       if UpperCase(DBGrid1.Columns[mcolumn].FieldName)=UpperCase('PDPRECO3') then
          DBGrid1.Columns[mcolumn].Visible:=False;
       end;
    if UpperCase(DBGrid1.Columns[mcolumn].FieldName)=UpperCase('PCOVEN') then
      DBGrid1.Columns[mcolumn].Title.Caption:='Pço.Varejo';
    if UpperCase(DBGrid1.Columns[mcolumn].FieldName)=UpperCase('PDPRECO2') then
      DBGrid1.Columns[mcolumn].Title.Caption:='Pço.Atacado';
    end;
  GB_PRECO1.Caption:='Preço Varejo';
  GB_PRECO2.Caption:='Preço Atacado';
  end;

if DM1.Tb_PargerPUPMC.Value=0 then
  begin
  lbl_pmc.Visible:=False;
  lbl_pmc02.Visible:=False;
  lbl_pmc03.Visible:=False;
  pmc.Visible    :=False;
  pmc02.Visible    :=False;
  pmc03.Visible    :=False;
  for mcolumn:=0 to DBGrid1.Columns.Count - 1 do
    begin
    if UpperCase(DBGrid1.Columns[mcolumn].FieldName)=UpperCase('PDPMC') then
      DBGrid1.Columns[mcolumn].Visible:=False;
    if UpperCase(DBGrid1.Columns[mcolumn].FieldName)=UpperCase('diferenca') then
      DBGrid1.Columns[mcolumn].Visible:=False;
    end;
  end;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','RG_ESTOQUE']),[]) then
  RG_ESTOQUE.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value)
else
  RG_ESTOQUE.ItemIndex:=2;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_PESQAVANC']),[]) then
  begin
  if DM4.Tb_FilPadFPVALOR.Value='true' then
    CB_PESQAVANC.Checked:=true
  else
    CB_PESQAVANC.Checked:=false;
  end
else
  CB_PESQAVANC.Checked:=false;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_MATPREV']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CLFNivel.Checked[0]:=true
   else
      CLFNivel.Checked[0]:=false;
   end
else
   CLFNivel.Checked[0]:=true;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_MATPRIMA']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CLFNivel.Checked[1]:=true
   else
      CLFNivel.Checked[1]:=false;
   end
else
   CLFNivel.Checked[1]:=true;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_EMBALAGEM']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CLFNivel.Checked[2]:=true
   else
      CLFNivel.Checked[2]:=false;
   end
else
   CLFNivel.Checked[2]:=true;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_PRODPROD']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CLFNivel.Checked[3]:=true
   else
      CLFNivel.Checked[3]:=false;
   end
else
   CLFNivel.Checked[3]:=true;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_ACABADO']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CLFNivel.Checked[4]:=true
   else
      CLFNivel.Checked[4]:=false;
   end
else
   CLFNivel.Checked[4]:=true;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_SUBPRO']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CLFNivel.Checked[5]:=true
   else
      CLFNivel.Checked[5]:=false;
   end
else
   CLFNivel.Checked[5]:=true;


DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_ACES']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CLFNivel.Checked[6]:=true
   else
      CLFNivel.Checked[6]:=false;
   end
else
   CLFNivel.Checked[6]:=true;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_USOCONSUMO']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CLFNivel.Checked[7]:=true
   else
      CLFNivel.Checked[7]:=false;
   end
else
   CLFNivel.Checked[7]:=true;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_IMOBILIZADO']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CLFNivel.Checked[8]:=true
   else
      CLFNivel.Checked[8]:=false;
   end
else
   CLFNivel.Checked[8]:=true;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_SERVICO']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CLFNivel.Checked[9]:=true
   else
      CLFNivel.Checked[9]:=false;
   end
else
   CLFNivel.Checked[9]:=true;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_INSUMOS']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CLFNivel.Checked[10]:=true
   else
      CLFNivel.Checked[10]:=false;
   end
else
   CLFNivel.Checked[10]:=true;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','CB_OUTROS']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CLFNivel.Checked[11]:=true
   else
      CLFNivel.Checked[11]:=false;
   end
else
   CLFNivel.Checked[11]:=true;


DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRO','RG_STATUS']),[]) then
   begin
   RG_STATUS.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
   if RG_STATUS.ItemIndex=3 then RG_STATUS.ItemIndex:=10;
   end
else
   RG_STATUS.ItemIndex:=10;



panel_sittri.BringToFront;
if trim(DM1.Tb_PargerPPROD_DNOME2.AsString)<>'' then
   lbl_nome2.Caption:=DM1.Tb_PargerPPROD_DNOME2.Value;


if (log_codven<>0) and (DM1.Tb_PargerPLOGUSRPED.AsInteger=1) then
   begin
   tsCad.TabVisible      :=false;
   Tsad.TabVisible       :=false;
   tsFiscais.TabVisible  :=False;
   TsLote.TabVisible     :=false;
   Tab_Filtros.TabVisible:=false;
   MANUT.Visible         :=false;
   end;
if not (DM1.Tb_PargerPCONSPROPAD.IsNull) then
   CAMPO.ItemIndex:=DM1.Tb_PargerPCONSPROPAD.AsInteger;



//btn_grade.Visible:=False;
if ValInt(copy(mpseg,1,2))<4 then
   begin
   REGMS.Visible:=True;
   db_rgms.Visible:=True;
   db_valrgms.Visible:=True;
   end
else
   begin
   REGMS.Visible:=False;
   db_rgms.Visible:=False;
   db_valrgms.Visible:=False;
  for mcolumn:=0 to DBGrid1.Columns.Count - 1 do
    begin
    if UpperCase(DBGrid1.Columns[mcolumn].FieldName)=UpperCase('PDREGMS') then
      DBGrid1.Columns[mcolumn].Visible:=False;
    end;   
   end;

if DM1.Tb_PargerPCODDBC.Value=1 then
   begin
   btn_dcb.Visible:=True;
   end
else
   btn_dcb.Visible:=False;





ConectarBanco(Self,Src_Pro);
DBGrid1.DataSource := Src_Pro;
dbg_promocao.DataSource := Src_PPR;

if (tab_Grupos.Visible) and (gb_Filtro.Visible) then
   begin
   tab_Grupos.Tabs.Clear;
   tab_Grupos.Tabs.Add('...');
   flcadGPro(0,1,'');
   While not DM1.Tb_Gpro.Eof do
      begin
      if ((DM1.Tb_GproGRNOME.Value<>'_') or (trim(DM1.Tb_GproGRNOME.AsString)<>''))
          and (Trim(DM1.Tb_GproGRNOMEABREV.AsString)='') then
          begin
          DM1.Tb_Gpro.Edit;
          DM1.Tb_GproGRNOMEABREV.Value:=DM1.Tb_GproGRNOME.Value[1];
          for x:=1 to Length(DM1.Tb_GproGRNOME.Value) do
             begin
             if (DM1.Tb_GproGRNOME.Value[x]=' ') and (length(DM1.Tb_GproGRNOME.Value)>x) then
                DM1.Tb_GproGRNOMEABREV.Value:=DM1.Tb_GproGRNOMEABREV.Value+DM1.Tb_GproGRNOME.Value[x+1];
             end;
          if length(DM1.Tb_GproGRNOMEABREV.AsString)>10 then
             DM1.Tb_GproGRNOMEABREV.Value:=copy(DM1.Tb_GproGRNOMEABREV.Value,1,10);
          DM1.Tb_Gpro.Post;
          end;
      tab_Grupos.Tabs.Add(Centra(DM1.Tb_GproGRNOMEABREV.Value,' ',10));
      DM1.Tb_Gpro.Next;
      end;
   end;

PC1.ActivePage:=tsTab;


if DM6.Tb_Pro_CIN.Active then
   begin
   DM6.Tb_Pro_CIN.Close;
   DM6.Tb_Pro_CIN.SQL.Clear;
   DM6.Tb_Pro_CIN.SQL.Add('Select * from CADPRO_CIN  where '
                         +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CIN_CODEMP=0 and ')
                         +' CIN_CODPRO=0');
   DM6.Tb_Pro_CIN.Open;
   end;
fCarregaPadraolocal(1);


//   btn_Grade.Visible:=False;
   if ValInt(copy(mpseg,1,2))<4 then
      begin
      REGMS.Visible:=True;
      db_rgms.Visible:=True;
      db_valrgms.Visible:=True;
      end
   else
      begin
      REGMS.Visible:=False;
      db_rgms.Visible:=False;
      db_valrgms.Visible:=False;
      end;
   pro_dtvcto:=pdatasis;
   lbl_ProVenc.Visible:=False;
   if ValInt(copy(mpseg,4,2))=01 then
      begin
      DBGrid2.Columns[1].Visible:=True;
      Qr_LGCCLNUMERO.DisplayLabel:='Numero do Lote';
      TsLote.Caption:='&Lotes das Mercadorias';
      if DM1.Tb_PargerPQTDDIAV.Value>0 then
         pro_dtvcto:=pdatasis+DM1.Tb_PargerPQTDDIAV.Value;
      lbl_ProVenc.Caption:='Produtos com Vencimentos Inferior a: '+FormatDateTime(fdt2, pro_dtvcto);
      lbl_ProVenc.Visible:=true;
      end
   else if (valint(copy(mpseg,4,2))=02) then
      begin
      if DM1.Tb_PargerPPCOGRA.Value=1 then
         begin
//         btn_Grade.Visible:=false;
         TsLote.TabVisible:=False;
         end
      else
         begin
//         btn_Grade.Visible:=True;
         TsLote.Caption:='&Grade';
         DBGrid2.Columns[1].Visible:=False;
         Qr_LGCCLNUMERO.DisplayLabel:='Grade';
         end;
      end
   else if (valint(copy(mpseg,4,2))=03) then
      begin
//      btn_Grade.Visible:=True;
      TsLote.Caption:='&Lote';
      DBGrid2.Columns[1].Visible:=False;
      Qr_LGCCLNUMERO.DisplayLabel:='Lote';
      end
   else
      TsLote.TabVisible:=False;

   if DM1.Tb_PargerPCODDBC.Value=1 then
      begin
   //   if Not Grade.Visible then
   //      bbDCB.Left:=556;
      btn_dcb.Visible:=True;
      end
   else
      btn_dcb.Visible:=False;


if codemp<100 then
   begin
   if (DM1.Tb_PargerPTEXTOBAIXO.AsString)<>'' then
      begin
      Caption           :='Manutenção no cadastro de produtos '+DM1.Tb_PargerPTEXTOBAIXO.Value;
      lbl_emp.Caption   :=DM1.Tb_PargerPTEXTOBAIXO.Value;
      lbl_emp.Font.Color:=DM1.Tb_PargerPCORTEXBAIXO.AsInteger;
      end
   else
      begin
      Caption           :='Manutenção no cadastro de produtos ';
      lbl_emp.Caption   :='';
      end;
   end
else
   begin
   if (DM1.Tb_PargerPTEXTOALTO.AsString)<>'' then
      begin
      Caption           :='Manutenção no cadastro de produtos '+DM1.Tb_PargerPTEXTOALTO.Value;
      lbl_emp.Caption   :=DM1.Tb_PargerPTEXTOALTO.Value;
      lbl_emp.Font.Color:=DM1.Tb_PargerPCORTEXALTO.AsInteger;
      end
   else
      begin
      Caption           :='Manutenção no cadastro de produtos ';
      lbl_emp.Caption   :='';
      end;
   end;

pro_dtvcto:=pdatasis;
lbl_ProVenc.Visible:=False;
if ValInt(copy(mpseg,4,2))=01 then
   begin
   DBGrid2.Columns[1].Visible:=True;
   Qr_LGCCLNUMERO.DisplayLabel:='Numero do Lote';
   TsLote.Caption:='&Lotes das Mercadorias';
   if DM1.Tb_PargerPQTDDIAV.Value>0 then
      pro_dtvcto:=pdatasis+DM1.Tb_PargerPQTDDIAV.Value;
   lbl_ProVenc.Caption:='Produtos com Vencimentos Inferior a: '+FormatDateTime(fdt2, pro_dtvcto);
   lbl_ProVenc.Visible:=true;
   end
else if (valint(copy(mpseg,4,2))=02) then
   begin
   GB_INFO_GRADE.Visible:=true;
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      begin
//      btn_Grade.Visible:=false;
      TsLote.TabVisible:=False;
      end
   else
      begin
//      btn_Grade.Visible:=True;
      TsLote.Caption:='&Grade';
      DBGrid2.Columns[1].Visible:=False;
      Qr_LGCCLNUMERO.DisplayLabel:='Grade';
      end;
   end
else if (valint(copy(mpseg,4,2))=03) then
   begin
//   btn_Grade.Visible:=True;
   TsLote.Caption:='&Lote';
   DBGrid2.Columns[1].Visible:=False;
   Qr_LGCCLNUMERO.DisplayLabel:='Lote';
   end
else
   TsLote.TabVisible:=False;
if mSoConsulta then
   begin
   bbpdinc_true:=false;
   bbpdalt_true:=false;
   bbpdexc_true:=false;
   end
else
   begin
   if codusr=1111 then
      begin
      bbpdinc_true:=true;
      bbpdalt_true:=true;
      bbpdexc_true:=true;
      end
   else if flcadactab(0,0,IntToStr(codcar),'CADPRO') then
      begin
      if DM4.Tb_AcTabAT_INC.Value=1 then
         bbpdinc_true:=False;
      if DM4.Tb_AcTabAT_ALT.Value=1 then
         bbpdalt_true:=False;
      if DM4.Tb_AcTabAT_EXC.Value=1 then
         bbpdexc_true:=False;
      if DM4.Tb_AcTabAT_ADIC.Value=1 then
         begin
         Tsad.TabVisible:=False;
         tsFiscais.TabVisible:=False;
         end
      end
   else
      begin
      bbpdinc_true:=true;
      bbpdalt_true:=true;
      bbpdexc_true:=true;
      Tsad.TabVisible:=true;
      tsFiscais.TabVisible:=True;
      end;
   end;
btn_novo.Enabled:=bbpdinc_true;
btn_alterar.Enabled:=bbpdalt_true;
btn_excluir.Enabled:=bbpdexc_true;
//CB_STATUS_PRO.Enabled:=false;

if gb_Filtro.Visible then
   Height:=548
else
   Height:=548-86;
//Width :=772;

//Top  := 56;
//Left := (mtamppal - Width) div 2;
//if (FormState<>[fsModal]) then
//   Top  := 0;
Left := (mtamppal - Width) div 2;

//CB_STATUS_PRO.ItemIndex:=TB_PROPDSTATUS.AsInteger;
mCodpro_Ant:=TB_PROPDCODPRO.AsFloat;

Tb_ProPDPCOFAB.DisplayFormat     :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
TB_PROPDUCPR.DisplayFormat     :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
TB_PROpcoven.DisplayFormat     :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
TB_PROPDVLRINC.DisplayFormat   :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
TB_PROpdpreco1.DisplayFormat   :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
TB_PROpdpreco2.DisplayFormat   :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
TB_PROpdpreco3.DisplayFormat   :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
TB_PROpdprecoa1.DisplayFormat  :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
TB_PROpdprecoa2.DisplayFormat  :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
TB_PROpdprecoa3.DisplayFormat  :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
TB_PROPDPMC.DisplayFormat      :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
TB_PROPDPMC02.DisplayFormat    :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
TB_PROPDPMC03.DisplayFormat    :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
TB_PROpdprecoc.DisplayFormat   :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
TB_PROpdpcomc.DisplayFormat    :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
TB_PROPDUNDVDA.DisplayFormat   :=mcasqtd;
TB_PROPDDTALT.DisplayFormat    :=fdathor;
TB_PROPDDATCAD.DisplayFormat   :=fdathor;
TB_PROPDDESFIN.DisplayFormat   :=mcasas;
TB_PROPDDESC1.DisplayFormat    :=mcasas;
TB_PROPDDESCMAX.DisplayFormat  :=mcasas;
TB_PROPDDESC1A.DisplayFormat   :=mcasas;
TB_PROPDIPI.DisplayFormat      :=mcasas;
TB_PROPDICMSCRED.DisplayFormat :=mcasas;
TB_PROPDICMSDEB.DisplayFormat  :=mcasas;
TB_PROPDQTDGRML.DisplayFormat  :='#,##0.000';
TB_PROPDQTDP.DisplayFormat     :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
TB_PROPDDESC2.DisplayFormat    :=mcasas;
TB_PROPDDESC3.DisplayFormat    :=mcasas;
TB_PROentpen.DisplayFormat     :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
TB_PROPDSALDO.DisplayFormat    :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
Tb_Prosaldo_filial.DisplayFormat    :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);

TB_PROPDSALDO_DEP.DisplayFormat:=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
TB_PROPDSALDO_PRAT.DisplayFormat:=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
TB_PROPDBAIXO.DisplayFormat    :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
TB_PROPDALTO.DisplayFormat     :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
TB_PROestoque.DisplayFormat    :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
Tb_Prosaldo_filial.DisplayFormat    :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);

if log_filial_Qtd>1 then
   Tb_Prosaldo_filial.DisplayLabel:='Estoque '+log_filial_padrao_nome;

TB_PROestoquer.DisplayFormat   :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
TB_PROestoquec.DisplayFormat   :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
TB_PROestoquet.DisplayFormat   :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
TB_PROPDVDAMAXM.DisplayFormat  :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
TB_PROPDEMBMUL.DisplayFormat   :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
TB_PROPDESTMAX.DisplayFormat   :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
TB_PROPDESTMIN.DisplayFormat   :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
TB_PROPDUCPR.DisplayFormat     :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
tb_cmetCMET_PRECO.DisplayFormat:=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);


if Tb_Pro.IsEmpty then
  BBnAtuClick(Self);


end;

procedure TFrm_Cons_Pro_Nov.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
If Tb_Pro.State in [dsInsert, dsEdit] then
   begin
   verteclado(0);
   Case fMensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],0) of
      mrYes: btn_gravar.Click;
      mrNo : CANCELAR.Click;
      else CanClose:=False;
      end;
   end;
if Tb_ProPDNOME.Value='_' then
   begin
   flDesfazerCodigos(0,'CADPRO',Tb_ProPDCODPRO.Value);
   Tb_Pro.Delete;
   end;

{
if trim(mfiltro)<>'' then
   begin
   TB_PRO.AutoCalcFields:=True;
   TB_PRO.Filter  :=mfiltro;
   TB_PRO.Filtered:=True;
   end;
}
if proNov_ori='consulta' then
   begin
   Tb_Pro.SQL.clear;
   Tb_Pro.Sql.add('Select * from CADPRO where '
                     +'     PDCODEMP like :CODEMP and '
                     +'     PDCODPRO like :CODPRO and '
                     +'     PDCODBAR like :CODBAR and '
                     +'     PDNOME     like :NOME and '
                     +'     PDNOME2   like :NOME2 and '
                     +'     PDNOMFOR  like :NOMFOR and '
                     +'     PDMARCA     like :MARCA and '
                     +'     PDCODFOR  like :CODFOR ')
   end;
//TB_PRO.Filter:='';
//TB_PRO.Filtered:=false;
DM1.Tb_ParFon.Close;
DM4.Tb_FPro.Close;
DM4.Tb_Bul.Close;
Qr_LGC.Close;
mSoConsulta:=False;
end;

procedure TFrm_Cons_Pro_Nov.db_codproExit(Sender: TObject);
begin
  inherited;
if mcodigo<>Tb_ProPDCODPRO.AsString then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select PDCODPRO,PDNOME from CADPRO where '
                     +fla_EmpBaixaAlta(0,'CADPRO','',codemp,'PDCODEMP',' and ')
                     +' PDCODPRO=0'+Tb_ProPDCODPRO.AsString);
   DM1.Query1.Open;
   if not DM1.Query1.Eof then
      begin
      verteclado(0);
      fmensagem('Este código ja esta cadastrado no produto: '+DM1.Query1.Fields[1].AsString,0,['0'],0);
      db_codpro.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_Cons_Pro_Nov.db_preco1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key in [',','.'] then
   key:=DecimalSeparator;

end;

procedure TFrm_Cons_Pro_Nov.BBnAtuClick(Sender: TObject);
begin
  inherited;
mcodpro_change:=-1;

if proNov_ori='consulta' then
   begin
   fPro01lerantlocal(0);
   end
else
   begin
   If Tb_Pro.State in [dsInsert, dsEdit] then
      begin
      verteclado(0);
      Case fMensagem('O registro atual não está gravado!'+#13
                     +'Deseja gravar agora?',0,['1','2'],1) of
         mrYes: btn_gravar.Click;
         else CANCELAR.Click;
         end;
     end;
   if (CAMPO.ItemIndex=1) or (CAMPO.ItemIndex=3) then
      Edit1.Text:=fdeixanum2(Edit1.Text);
   mCodpro_Ant:=-1;
   flcadprolocal(campo.ItemIndex,1,0,iif(CB_PESQAVANC.Checked,'%','')+edit1.Text,trim(MARCA.Text),'');
   if  ((CAMPO.ItemIndex=3) or (CAMPO.ItemIndex=1))  and (tb_Pro.IsEmpty) then
       begin
       mcinst2:=FloatToStr(fAchaCodigoOri(Edit1.Text));
       Edit1.Text:=mcinst2;
       if valfloat(mcinst2)>0 then
          flcadprolocal(1,1,0,iif(CB_PESQAVANC.Checked,'%','')+Edit1.Text,trim(MARCA.Text),'');
       end;
   end;

end;

procedure TFrm_Cons_Pro_Nov.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if proNov_ori='' then
   begin
   PC1.ActivePage:=tsCad;
   btn_alterar.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   proNov_ori:='';
   end;



end;

procedure TFrm_Cons_Pro_Nov.db_sitEnter(Sender: TObject);
begin
  inherited;
panel_sittri.Visible:=True;
lbl_sit.Caption:=FormatFloat('000', fsonumero(Tb_ProPDSIT.Value));

end;

procedure TFrm_Cons_Pro_Nov.Edit1Change(Sender: TObject);
begin
  inherited;
if DM1.Tb_PargerPONCHAGEPRO.Value=1 then
   begin
   if proNov_ori='consulta' then
      begin
      fpro01lerantlocal(0);
      end
   else
      begin
      If Tb_Pro.State in [dsInsert, dsEdit] then
         begin
         verteclado(0);
         Case fMensagem('O registro atual não está gravado!'+#13
                        +'Deseja gravar agora?',0,['1','2'],1) of
            mrYes: btn_gravar.Click;
         else CANCELAR.Click;
            end;
         end;
      end;
   if (CAMPO.ItemIndex=1) or (CAMPO.ItemIndex=3) then
      Edit1.Text:=fdeixanum2(Edit1.Text);
   flcadprolocal(campo.ItemIndex,1,0,iif(CB_PESQAVANC.Checked,'%','')+edit1.Text,trim(MARCA.Text),'');

   end;
end;

procedure TFrm_Cons_Pro_Nov.db_codforKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Tb_ProPDCODFOR.Value:=ValFloat(fChamaFor(0,'frm_Pro_Nov',Key));
   db_codforExit(self);
   key:=#0;
   end;


end;

procedure TFrm_Cons_Pro_Nov.db_codgruKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then begin
      Tb_ProPDCODGRU.Value:=ValFloat(fChamaGPro(0,'frm_Pro_Nov',Key));
      if Trim(db_codgru.Text) <> '' then
        db_codgruExit(Self);
      key:=#0;
  end;

end;

procedure TFrm_Cons_Pro_Nov.db_codramKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then begin
      TB_PROPDCODRAM.Value:=ValFloat(fChamaRamPro(0,'frm_Pro_Nov',Key));
      if Trim(db_codram.Text) <> '' then
         db_codramExit(Self); 
      key:=#0;
  end;
end;

procedure TFrm_Cons_Pro_Nov.db_codconKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then begin
     TB_PROPDCODCON.Value:=ValFloat(fChamaTCon(0,'frm_Pro_Nov',Key));
     if Trim(db_codcon.Text) <> '' then
        db_codconExit(Self);
     key:=#0;
  end;
end;

procedure TFrm_Cons_Pro_Nov.db_codtipKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then begin
     TB_PROPDCODTIP.Value:=ValFloat(fChamaTipPro(0,'frm_Pro_Nov',Key));
     if Trim(db_codtip.Text) <> '' then
        db_codtipExit(Self);
     key:=#0;
  end;
end;

procedure TFrm_Cons_Pro_Nov.db_codforExit(Sender: TObject);
begin
  inherited;
if TB_PRO.State in [dsEdit,dsInsert] then
   begin
   if TB_PROPDCODFOR.Value>0 then
      begin
      if not flqr2('FRAZAO,FRESTFOR','F','CADFOR','N','FCODFOR',TB_PROPDCODFOR.AsString) then
         begin
         verteclado(0);
         fMensagem('Fornecedor não Cadastrado!',0,['0'],0);
         db_codfor.SetFocus;
         end
      else
         begin
         TB_PROPDNOMFOR.Value :=DM1.Query2.Fields[0].AsString;
         TB_PROPDRESTFOR.Value:=DM1.Query2.Fields[1].AsFloat;
         end;
      end;
   end
else
   begin
   TB_PROPDNOMFOR.Value :=' ';
   TB_PROPDRESTFOR.Value:=0;
   end;
end;

procedure TFrm_Cons_Pro_Nov.db_codgruExit(Sender: TObject);
begin
  inherited;
if TB_PRO.State in [dsEdit,dsInsert] then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',TB_PROPDCODGRU.AsString) then
      begin
      if TB_PROPDCODGRU.Value>0 then
         begin
         verteclado(0);
         fMensagem('Grupo não Cadastrado!',0,['0'],0);
         db_codgru.SetFocus;
         end
      else
         TB_PROPDNOMGRU.Value:=' ';
      end
   else
      TB_PROPDNOMGRU.Value:=DM1.Query1.fields[0].AsString;
   end;
end;

procedure TFrm_Cons_Pro_Nov.db_codramExit(Sender: TObject);
begin
  inherited;
if TB_PRO.State in [dsEdit,dsInsert] then
   begin
   if TB_PROPDCODRAM.Value>0 then
      begin
      if not flqr1('RNOME','R','CADRAM','N','RCODRAM',TB_PROPDCODRAM.AsString) then
         begin
         verteclado(0);
         fMensagem('Ramo não Cadastrado!',0,['0'],0);
         db_codram.SetFocus;
         end
      else
         TB_PROPDNOMRAM.Value:=DM1.Query1.fields[0].AsString;
      end
   else
      TB_PROPDNOMRAM.Value:=' ';
   end;
end;

procedure TFrm_Cons_Pro_Nov.db_codconExit(Sender: TObject);
begin
  inherited;
if TB_PRO.State in [dsEdit,dsInsert] then
   begin
   if TB_PROPDCODCON.Value>0 then
      begin
      if not flqr1('CCODCON,CNOME,CRESTCON','C','CADCON','N','CCODCON',TB_PROPDCODCON.AsString) then
         begin
         verteclado(0);
         fMensagem('Controle não Cadastrado!',0,['0'],0);
         db_codcon.SetFocus;
         end
      else
         begin
         TB_PROPDNOMCON.Value :=DM1.Query1.fields[1].AsString;
         TB_PROPDRESTCON.Value:=DM1.Query1.fields[0].AsFloat;
         end;
      end
   else
      TB_PROPDNOMCON.Value :=' ';
      TB_PROPDRESTCON.Value:=0;
   end;
end;

procedure TFrm_Cons_Pro_Nov.db_codtipExit(Sender: TObject);
begin
  inherited;
if TB_PRO.State in [dsEdit,dsInsert] then
   begin
   if TB_PROPDCODTIP.Value>0 then
      begin
      if not flqr2('TNOME,TDESCAV','T','CADTP','N','TCODTIP',TB_PROPDCODTIP.AsString) then
         begin
         verteclado(0);
         fMensagem('Tipo  não Cadastrado!',0,['0'],0);
         db_codtip.SetFocus;
         end
      else
         begin
         TB_PROPDNOMTIP.Value  :=DM1.Query2.fields[0].AsString;
         TB_PROPDBLDESCAV.Value:=valint(DM1.Query2.fields[1].AsString);
         end;
      end
   else
      begin
      TB_PROPDNOMTIP.Value  :=' ';
      TB_PROPDBLDESCAV.Value:=0;
      end;
   end;
end;

procedure TFrm_Cons_Pro_Nov.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if (key=114) and not (TB_PROPDNOME.IsNull) then
   begin
   Application.Createform(TFrm_Des, Frm_Des);
   pcodtip:=TB_PROPDCODTIP.AsInteger;
   Frm_Des.NOMPRO.Caption:=TB_PROPDNOME.Value;
   Frm_Des.MARCA.Caption :=TB_PROPDMARCA.Value;
   Frm_Des.PRECO.Caption :=FormatFloat(mcasaspu,TB_PROPDPRECO1.Value);
//   Frm_Des.PMC.Text   :=FormatFloat(mcasaspu,TB_PROPDPMC.Value);
   Frm_Des.DESC.Text  :=FormatFloat(mcasaspu,TB_PROPDDESC1.Value);
   Frm_Des.DESC02.Text:=FormatFloat(mcasaspu,TB_PROPDDESC2.Value);
   Frm_Des.DESC03.Text:=FormatFloat(mcasaspu,TB_PROPDDESC3.Value);
   Frm_Des.TIPO.Text  :=TB_PROPDNOMTIP.Value;
   Frm_Des.PRECOExit(self);
   Frm_Des.ShowModal;
   Frm_Des.Free;
   Frm_Des:=nil;
   key:= 0;
   end;

if pTcAtalho_me<>0 then
   begin
   if (Shift=pSfAtalho_me) and (pTcAtalho_me=key) then
      begin
      if DBRG_Restricao.Visible then
         DBRG_Restricao.Visible:=false
      else
         DBRG_Restricao.Visible:=true;
      end;   
   end;

if (key=27) then
   begin
   if proNov_ori<>'' then
      begin
      ModalResult:=MrOk;
      close;
      end;
   end;

end;

function TFrm_Cons_Pro_Nov.fpro01gantLocal(ptipo: Integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
mChave_Old: Integer;
mCondicao_old: String;

begin
mCondicao_old:=' where PDCODPRO=0'+Tb_ProPDCODPRO.AsString
                  +' and PDCODEMP=0'+Tb_ProPDCODEMP.AsString;



mChave_Old:=fGerarTabelas_Old(pTipo //status
                  ,0 //codigo novo valor chave
                  ,'PDCODNOV' //nome do campo do novo valor (chave)
                  ,'PDDTALT' // nome do campo data e hora do evento
                  ,'PDCODUSR' // nome do campo do usuario
                  ,'PDSTATUS' // nome do campo de status
                  ,'CADPRO' // nome da tabela
                  ,mCondicao_old);

result:=true;
end;

function tFrm_Cons_Pro_Nov.fPro01lerantlocal(ptipo: Integer):Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;

begin
TB_PRO.Filter  :='';
TB_PRO.Filtered:=false;
minstru:=' Select ';
v:='';
for x:=0 to TB_PRO.FieldCount-1 do
   begin
   if lowerCase(Tb_Pro.Fields[x].FieldName)='preco_index_nome' then
      minstru:=minstru+v+' case when nvl(PDPRECO_CODINDEX,0)=0 then null else (SELECT max(MNOME) from CADMOE where MCODMOE=PDPRECO_CODINDEX) end as preco_index_nome '
   else  if TB_PRO.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+TB_PRO.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADPRO where PDCODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
TB_PRO.Close;
TB_PRO.SQL.Clear;
TB_PRO.SQL.add(minstru);
try
   TB_PRO.Open;
except
   tB_PRO.sql.savetofile(mpastatemp +'sqlpro.txt');
   end;
BBnAtu.Enabled      :=False;
Edit1.Enabled       :=False;
CAMPO.Enabled       :=False;
INCLUIR.Enabled     :=False;
ALTERAR.Enabled     :=False;
EXCLUIR.Enabled     :=False;
CANCELAR.Enabled    :=False;
DBNavigator1.Enabled:=False;
DBGrid1.Enabled     :=False;
end;





procedure TFrm_Cons_Pro_Nov.PC1Change(Sender: TObject);
begin
  inherited;
if not (TB_PRO.State in [dsEdit, dsInsert]) then
   begin
   if PC1.ActivePageIndex=3 then
      TB_PRO.AutoCalcFields:=False
   else
      TB_PRO.AutoCalcFields:=True;
  if mAtuafiltro then
     begin
     fCarregaPadraolocal(0);
     mAtuafiltro:=false;
     end;
   end;     
if (pc1.ActivePage=Tsad) and (gb_nutricao.Visible) then
   fCarregaInfNutlocal(0);
if (PC1.ActivePage=tsSimilar) then
   fCarregaSimilarlocal(0);
if (PC1.ActivePage=tsEspeciais) then
   fCarregaEspeciais(Tb_ProPDCONTESP.AsInteger,true);



end;

function TFrm_Cons_Pro_Nov.fcarregagrade(ptipo: Integer): Boolean;
begin
Label6.Caption:='Produto: '+TB_PROPDCODPRO.AsString+' - '+TB_PROPDNOME.AsString+' Est.: '+FormatFloat(mcasqtd, TB_PROestoque.Value);
Qr_LGC.Close;
Qr_Lgc.SQL.Clear;
Qr_LGc.SQL.Add('Select * from CADLGC ');
if DM1.Qr_TID.Locate('TINOME','CADEST',[]) then
   begin
   Qr_LGC.SQL.Add(' Where CLCODPRO=0'+TB_PROPDCODPRO.AsString
                 +' order by CLNUMERO')
   end
else
   begin
   Qr_LGC.SQL.Add('where CLCODEMP=0'+InttoStr(codemp-iif(codemp>100,100,0))
              +' and CLCODPRO=0'+TB_PROPDCODPRO.AsString
              +' order by CLNUMERO');
   end;
Qr_LGC.Open;
result:=True;
end;


function TFrm_Cons_Pro_Nov.fcarregaPromocao(ptipo: Integer): Boolean;
begin
Tb_PPR.Close;
Tb_PPR.SQL.Clear;
Tb_PPR.SQL.add(' Select PPCODEMP, '
              +'  PPPROMOCAO, '
              +'  PPPVTIP, '
              +'  PPPVTAB, '
              +'  PPCODRED, '
              +'  PPUF, '
              +'  PPCODCLI, '
              +'  PPID, '
              +'  pPID_ANO, '

              +'   PPFLAG, '
              +'  PPCODPRO, '
              +'  PPGRADE, '
              +'  PPDATINI, '
              +'  PPDATFIN, '
              +'  PPCODGRU, '
              +'  PPPCOVDA, '
              +'  PPDESC_1, '
              +'  PPDESC_2, '
              +'  PPDESC_3, '
              +'  PPCONFVDA, '
              +'  PPCOMIS, '
              +'  PPQTDMIN, '
              +'  PPVALMIN, '
              +'  PPOBS, '
              +'  PPKIT, '
              +'  PPDESC_F, '
              +'  PPPRIOR '
              +' from CADPPR where '
   +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PPCODPRO=0'+IntTostr(codemp-iif(codemp>100,100,0))+' and ')
   +' PPCODPRO=0'+TB_PROPDCODPRO.AsString);
Tb_PPR.Open;
if Tb_PPR.Eof then
   result:=false
else
   result:=true;
end;

procedure TFrm_Cons_Pro_Nov.Src_ProDataChange(Sender: TObject; Field: TField);
begin
  inherited;

if PC1.ActivePage=TsLote then
   fcarregagrade(0)
else if (PC1.ActivePage=tsTab) and (gb_promocao.Visible) then
   fcarregapromocao(0)
else if (pc1.ActivePage=Tsad) and (gb_nutricao.Visible) then
   fCarregaInfNutlocal(0)
else if (pc1.ActivePage=tsSimilar)  then
   fCarregaSimilarlocal(0)
else if (pc1.ActivePage=tsEspeciais)  then
   fcarregaEspeciais(Tb_ProPDCONTESP.AsInteger,false);


if mcodpro_change<>Tb_ProPDCODPRO.AsFloat then
   begin
   mcodpro_change:=Tb_ProPDCODPRO.AsFloat;
   if not (Tb_Pro.State in [dsEdit,dsInsert]) then
      begin
      if not Tb_Pro.IsEmpty then
         flcadpro(1,1,Tb_ProPDCODEMP.AsInteger,Tb_ProPDCODPRO.AsString);


   //     flcadprolocal(1,1,Tb_ProPDCODEMP.AsInteger,Tb_ProPDCODPRO.AsString);
      if mCodpro_Ant<>TB_PROPDCODPRO.AsFloat then
         begin
   //      CB_NIVEL_PRO.text:=CB_NIVEL_PRO.Items.Strings[CB_NIVEL_PRO.ItemIndex];
   //      CB_NIVEL_PRO.Update;
   //      CB_STATUS_PRO.ItemIndex:=TB_PROPDSTATUS.AsInteger;
   //      CB_STATUS_PRO.text:=CB_STATUS_PRO.Items.Strings[CB_STATUS_PRO.ItemIndex];
   //      CB_STATUS_PRO.Update;
         mCodpro_Ant:=TB_PROPDCODPRO.AsFloat;
         end;
      end;
   end;   

end;

procedure TFrm_Cons_Pro_Nov.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

if (TAuxDBGrid(DBGrid1).DataLink.ActiveRecord + 1 = TAuxDBGrid(DBGrid1).Row) or (gdSelected in State) then
   begin
   DBGrid1.Canvas.Brush.Color := clSkyBlue;
   DBGrid1.Canvas.Font.Style := DBGrid1.Canvas.Font.Style + [fsBold];
   DBGrid1.Canvas.Font.Color := clBlack;
   end;

DBGrid1.Canvas.FillRect(Rect);
DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);

if (DM1.Tb_PargerPQTDDIAV.Value>0) and (not (TB_PROdtvenc.IsNull) and (TB_PROdtvenc.Value<pro_dtvcto)) then
   begin
   if not (DM1.Tb_PargerPFCORP_VENC.IsNull) and (DM1.Tb_PargerPFCORP_VENC.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_VENC.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if (not TB_PROPDVALREGMS.IsNull) and (TB_PROPDVALREGMS.AsDateTime<=Now+30) and
(TB_PROPDVALREGMS.AsDateTime>pdatanula) then
   begin
   if not (DM1.Tb_PargerPFRBMS_VENC.IsNull) and (DM1.Tb_PargerPFRBMS_VENC.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFRBMS_VENC.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if TB_PROPDSTATUS.Value>7 then
   begin
   if not (DM1.Tb_PargerPFCORP_BLOQ.IsNull) and (DM1.Tb_PargerPFCORP_BLOQ.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_BLOQ.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end
   end
else if TB_PROPDNIVEL.Value=0 then
   begin                          //material de revenda
   if not (DM1.Tb_PargerPFCORP_MPR.IsNull) and (DM1.Tb_PargerPFCORP_MPR.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_MPR.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if TB_PROPDNIVEL.Value=1 then
   begin                          //materia prima
   if not (DM1.Tb_PargerPFCORP_MP.IsNull) and (DM1.Tb_PargerPFCORP_MP.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_MP.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if TB_PROPDNIVEL.Value=2 then
   begin                          //embalagem
   if not (DM1.Tb_PargerPFCORP_EM.IsNull) and (DM1.Tb_PargerPFCORP_EM.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_EM.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end
   end
else if TB_PROPDNIVEL.Value=3 then
   begin                          //produto em processo
   if not (DM1.Tb_PargerPFCORP_PP.IsNull) and (DM1.Tb_PargerPFCORP_PP.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_PP.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if TB_PROPDNIVEL.Value=4 then
   begin                          //acabado
   if not (DM1.Tb_PargerPFCORP_ACAB.IsNull) and (DM1.Tb_PargerPFCORP_ACAB.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_ACAB.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if TB_PROPDNIVEL.Value=5 then
   begin                          //subproduto
   if not (DM1.Tb_PargerPFCORP_SBP.IsNull) and (DM1.Tb_PargerPFCORP_SBP.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_SBP.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if TB_PROPDNIVEL.Value=6 then
   begin                          //produto intermediario
   if not (DM1.Tb_PargerPFCORP_PI.IsNull) and (DM1.Tb_PargerPFCORP_PI.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_PI.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if TB_PROPDNIVEL.Value=7 then
   begin                          //Material de Uso e Consumo
   if not (DM1.Tb_PargerPFCORP_MUC.IsNull) and (DM1.Tb_PargerPFCORP_MUC.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_MUC.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if TB_PROPDNIVEL.Value=8 then
   begin                          //Ativo Imobilizado
   if not (DM1.Tb_PargerPFCORP_AI.IsNull) and (DM1.Tb_PargerPFCORP_AI.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_AI.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if TB_PROPDNIVEL.Value=9 then
   begin                          //Serviços
   if not (DM1.Tb_PargerPFCORP_SERV.IsNull) and (DM1.Tb_PargerPFCORP_SERV.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_SERV.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if TB_PROPDNIVEL.Value=10 then
   begin                          //Outros Insumos
   if not (DM1.Tb_PargerPFCORP_ISUM.IsNull) and (DM1.Tb_PargerPFCORP_ISUM.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_ISUM.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else
   begin                          //Outros
   if not (DM1.Tb_PargerPFCORP_OUT.IsNull) and (DM1.Tb_PargerPFCORP_OUT.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_OUT.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end;


if (TB_PROPDESTMIN.AsFloat>0) and
   (TB_PROPDSALDO_PRAT.AsFloat<=TB_PROPDESTMIN.AsFloat) then
   begin
   if not (DM1.Tb_PargerPFCORP_ESTMIN_PRAT.IsNull) and (DM1.Tb_PargerPFCORP_ESTMIN_PRAT.Value<>0) then
      begin
      DBGrid1.Canvas.Brush.Color := dm1.Tb_PargerPFCORP_ESTMIN_PRAT.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if (TB_PROPDESTMIN.AsFloat>0) and
   (TB_PROPDSALDO.AsFloat<=TB_PROPDESTMIN.AsFloat) then
   begin
   if not (DM1.Tb_PargerPFCORP_ESTMIN_GER.IsNull) and (DM1.Tb_PargerPFCORP_ESTMIN_GER.Value<>0) then
      begin
      DBGrid1.Canvas.Brush.Color := dm1.Tb_PargerPFCORP_ESTMIN_GER.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end;

if TB_PROPDPMC.AsFloat>0 then
   begin
   DBGrid1.Canvas.Font.Color:=$000080FF;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;


if DM1.Tb_PargerPFDIAS_SEMMOV.AsFloat>0 then
  if Tb_ProPDDTULTSAI.AsDateTime+DM1.Tb_PargerPFDIAS_SEMMOV.AsFloat<Date then
    begin
    DBGrid1.Canvas.Brush.Color := dm1.Tb_PargerPFCORP_SEMMOV.AsInteger;
    DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;



end;

function TFrm_Cons_Pro_Nov.fGravaFillocal(ptipo: Integer): Boolean;
var
x: Integer;
begin
fDeletaPadroes(codusr,'_PRO','');
fGravaPadroes(codusr,'RG_ESTOQUE'     ,'itemindex'       ,'_PRO',IntTostr(RG_ESTOQUE.ItemIndex));
fGravaPadroes(codusr,'RG_STATUS'      ,'itemindex'       ,'_PRO',IntTostr(RG_STATUS.ItemIndex));
fGravaPadroes(codusr,'CB_PESQAVANC'   ,'checked'         ,'_PRO',iif(CB_PESQAVANC.Checked,'true','false'));
fGravaPadroes(codusr,'CB_MATPREV'     ,'checked'         ,'_PRO',iif(CLFNivel.Checked[0],'true','false'));
fGravaPadroes(codusr,'CB_MATPRIMA'    ,'checked'         ,'_PRO',iif(CLFNivel.Checked[1],'true','false'));
fGravaPadroes(codusr,'CB_EMBALAGEM'   ,'checked'         ,'_PRO',iif(CLFNivel.Checked[2],'true','false'));
fGravaPadroes(codusr,'CB_PRODPROD'    ,'checked'         ,'_PRO',iif(CLFNivel.Checked[3],'true','false'));
fGravaPadroes(codusr,'CB_ACABADO'     ,'checked'         ,'_PRO',iif(CLFNivel.Checked[4],'true','false'));
fGravaPadroes(codusr,'CB_SUBPRO'      ,'checked'         ,'_PRO',iif(CLFNivel.Checked[5],'true','false'));
fGravaPadroes(codusr,'CB_ACES'        ,'checked'         ,'_PRO',iif(CLFNivel.Checked[6],'true','false'));
fGravaPadroes(codusr,'CB_USOCONSUMO'  ,'checked'         ,'_PRO',iif(CLFNivel.Checked[7],'true','false'));
fGravaPadroes(codusr,'CB_IMOBILIZADO' ,'checked'         ,'_PRO',iif(CLFNivel.Checked[8],'true','false'));
fGravaPadroes(codusr,'CB_SERVICO'     ,'checked'         ,'_PRO',iif(CLFNivel.Checked[9],'true','false'));
fGravaPadroes(codusr,'CB_INSUMOS'     ,'checked'         ,'_PRO',iif(CLFNivel.Checked[10],'true','false'));
fGravaPadroes(codusr,'CB_OUTROS'      ,'checked'         ,'_PRO',iif(CLFNivel.Checked[11],'true','false'));

DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;
result:=True;

end;

function TFrm_Cons_Pro_Nov.fCarregaPadraolocal(ptipo: Integer): Boolean;
var
x: Integer;
x2: Integer;
mfiltro: String;
begin
if proNov_ori='consulta' then
   begin
   TB_PRO.Filter:='';
   TB_PRO.Filtered:=False;
   result:=true;
   exit;
   end
else
   begin
   if ptipo=0 then
      begin
      mfiltro          :='';
      TB_PRO.Filter:='';
      mcinst:='';
      end
   else if trim(TB_PRO.Filter)<>'' then
      begin
      mfiltro:=TB_PRO.Filter;
      TB_PRO.Filter:='';
      mcinst:=' and ';
//      mcinst:=' ';
      end
   else
      begin
      mcinst:='';
      mfiltro:='';
      end;
   end;
if DM1.Tb_PargerPPCOGRA.Value=1 then
   begin
   mfiltro:=mcinst+'PDNIVEL<>0';
   mcinst:=' and ';
   end;

if RG_ESTOQUE.ItemIndex=1 then
   begin
   mfiltro:=mfiltro+mcinst+'PDSALDO=0';
   mcinst:=' and ';
   end
else if RG_ESTOQUE.ItemIndex=0 then
   begin
   mfiltro:=mfiltro+mcinst+'PDSALDO<>0';
   mcinst:=' and ';
   end;
if RG_STATUS.ItemIndex<>10 then
   begin
   mfiltro:=mfiltro+mcinst+' PDSTATUS=0'+IntToStr(RG_STATUS.ItemIndex);
   mcinst:=' and ';
   end;


if gb_filtro.Visible then
   begin
   if Trim(CODGRU.Text)<>'' then
      begin
      mcinst2:='PDCODGRU='+Trim(CODGRU.Text);
      if Trim(mfiltro)<>'' then
         mfiltro:=mfiltro+' and '+mcinst2
      else
         mfiltro:=mcinst2;
      end;
   end;

if (CLFNivel.Checked[0]) and (CLFNivel.Checked[1]) and
   (CLFNivel.Checked[2]) and (CLFNivel.Checked[3]) and
   (CLFNivel.Checked[4]) and (CLFNivel.Checked[5]) and
   (CLFNivel.Checked[6]) and (CLFNivel.Checked[6]) and
   (CLFNivel.Checked[7]) and (CLFNivel.Checked[8]) and
   (CLFNivel.Checked[9]) and (CLFNivel.Checked[10]) and
   (CLFNivel.Checked[11]) then

   mcinst2:=''
else
  begin
  mcinst2:='';
  mcinst3:='';
  for x2:=0 to 11 do
    begin
    if CLFNivel.Checked[x2] then
      begin
      mcinst2:=mcinst2+mcinst3+'PDNIVEL='+inttostr(x2);
      mcinst3:=' or ';
      end;
    end;
  mcinst2:='('+Trim(mcinst2)+')';
  end;

if (trim(mcinst2)<>'') and (trim(mcinst2)<>'()') then
   begin
   if Trim(mfiltro)<>'' then
      mfiltro:=mfiltro+' and '+mcinst2
   else
      mfiltro:=mcinst2;
   end;
if trim(mfiltro)='' then
   begin
   TB_PRO.Filter:='';
   TB_PRO.Filtered:=False;
   end
else
   begin
   TB_PRO.Filter  :=mfiltro;
   TB_PRO.Filtered:=True;
   end;

Result:=True;
end;

procedure TFrm_Cons_Pro_Nov.db_nome2Exit(Sender: TObject);
begin
  inherited;
if Trim(TB_PROPDNOME2.Value)='' then
   TB_PROPDNOME2.Value:=' ';
end;

procedure TFrm_Cons_Pro_Nov.dbg_promocaoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
if (Tb_PPRPPDATFIN.AsDateTime>pdatanula) and
   (Tb_PPRPPDATFIN.AsDateTime<date) then
   begin
   dbg_promocao.Canvas.Font.Color:=clRed;
   dbg_promocao.Canvas.Font.Style:=[fsItalic,fsUnderline];
   dbg_promocao.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

end;

procedure TFrm_Cons_Pro_Nov.Tb_PPRCalcFields(DataSet: TDataSet);
begin
  inherited;
if Tb_PPRPPDATINI.AsDateTime<=pdatanula then
   Tb_PPRdataini.Value:='/  /'
else
   Tb_PPRdataini.Value:=FormatDatetime(fdt2, Tb_PPRPPDATINI.Value);

if Tb_PPRPPDATFIN.AsDateTime<=pdatanula then
   Tb_PPRdatafin.Value:='/  /'
else
   Tb_PPRdatafin.Value:=FormatDatetime(fdt2, Tb_PPRPPDATFIN.Value);

end;

procedure TFrm_Cons_Pro_Nov.tsTabShow(Sender: TObject);
begin
  inherited;
if (gb_promocao.Visible) then
   fcarregapromocao(0);

end;


procedure TFrm_Cons_Pro_Nov.bbSalvarPadraoClick(Sender: TObject);
begin
  inherited;
fgravafillocal(0);
fCarregaPadraolocal(0);
end;

procedure TFrm_Cons_Pro_Nov.RG_ESTOQUEClick(Sender: TObject);
begin
  inherited;
   mAtuafiltro:=true;

end;

function fProTestaMov(pCodpro, pGrade: String): Boolean;
var
mEmpresa01, mEmpresa101: String;
begin
mEmpresa01:=IntTostr(codemp);
if codemp>99 then
   mEmpresa101:=IntToStr(Codemp-100)
else
   mEmpresa101:=IntToStr(Codemp+100);
DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Select count(*) from CADP02 where ');
if not DM1.Qr_TID.locate('TINOME','CADPED',[]) then
   DM1.Query1.sql.Add(' (P2CODEMP=0'+mEmpresa01+' or P2CODEMP=0'+mEmpresa101+') and ');
DM1.Query1.SQL.Add(' P2CODPRO=0'+pCodpro);
if trim(pGrade)<>'' then
   DM1.Query1.SQL.Add(' and P2LOTE='+chr(39)+pGrade+chr(39));
DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>0 then
   begin
   result:=false;
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Select count(*) from CADP02D where ');
if not DM1.Qr_TID.locate('TINOME','CADPED',[]) then
   DM1.Query1.sql.Add(' (P2DCODEMP=0'+mEmpresa01+' or P2DCODEMP=0'+mEmpresa101+') and ');
DM1.Query1.SQL.Add(' P2DCODPRO=0'+pCodpro);
if trim(pGrade)<>'' then
   DM1.Query1.SQL.Add(' and P2DGRADE='+chr(39)+pGrade+chr(39));
try
   DM1.Query1.Open;
except
   DM1.Query1.Sql.SaveToFile(mpastatemp +'sql.txt');

   end;
if DM1.Query1.Fields[0].AsInteger>0 then
   begin
   result:=false;
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Select count(*) from CADP02S where ');
if not DM1.Qr_TID.locate('TINOME','CADPED',[]) then
   DM1.Query1.sql.Add(' (P2SCODEMP=0'+mEmpresa01+' or P2SCODEMP=0'+mEmpresa101+') and ');
DM1.Query1.SQL.Add(' P2SCODPRO=0'+pCodpro);
DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>0 then
   begin
   result:=false;
   exit;
   end;



DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Select count(*) from CADPF2 where ');
if not DM1.Qr_TID.locate('TINOME','CADPFOR',[]) then
   DM1.Query1.sql.Add(' (PF2CODEMP=0'+mEmpresa01+' or PF2CODEMP=0'+mEmpresa101+') and ');
DM1.Query1.SQL.Add(' PF2CODPRO=0'+pCodpro);
if trim(pGrade)<>'' then
   DM1.Query1.SQL.Add(' and PF2LOTE='+chr(39)+pGrade+chr(39));
DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>0 then
   begin
   result:=false;
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Select count(*) from CADAJU where ');
if not DM1.Qr_TID.locate('TINOME','CADPFOR',[]) then
   DM1.Query1.sql.Add(' (AJCODEMP=0'+mEmpresa01+' or AJCODEMP=0'+mEmpresa101+') and ');
DM1.Query1.SQL.Add(' AJCODPRO=0'+pCodpro);
if trim(pGrade)<>'' then
   DM1.Query1.SQL.Add(' and AJLOTE='+chr(39)+pGrade+chr(39));
DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>0 then
   begin
   result:=false;
   exit;
   end;


DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Select count(*) from CADOP02 where ');
if not DM1.Qr_TID.locate('TINOME','CADOP02',[]) then
   DM1.Query1.sql.Add(' (OP2_CODEMP=0'+mEmpresa01+' or OP2_CODEMP=0'+mEmpresa101+') and ');
DM1.Query1.SQL.Add('( OP2_CODPRO=0'+pCodpro);
if trim(pGrade)<>'' then
   DM1.Query1.SQL.Add(' and OP2_NUMERO='+chr(39)+pGrade+chr(39)+')')
else
   DM1.Query1.SQL.Add(')');


DM1.Query1.SQL.Add(' or ( OP2_FAB_CODIGO=0'+pCodpro);
if trim(pGrade)<>'' then
   DM1.Query1.SQL.Add(' and OP2_FAB_LOTE='+chr(39)+pGrade+chr(39)+')')
else
   DM1.Query1.SQL.Add(')');


DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>0 then
   begin
   result:=false;
   exit;
   end;


DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Select count(*) from CADOP03 where ');
if not DM1.Qr_TID.locate('TINOME','CADOP03',[]) then
   DM1.Query1.sql.Add(' (OP3_CODEMP=0'+mEmpresa01+' or OP3_CODEMP=0'+mEmpresa101+') and ');
DM1.Query1.SQL.Add(' OP3_CODMAT=0'+pCodpro);
if trim(pGrade)<>'' then
   DM1.Query1.SQL.Add(' and OP3_NUMERO='+chr(39)+pGrade+chr(39));
DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>0 then
   begin
   result:=false;
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Select count(*) from CADTRO_ENT where ');
if not DM1.Qr_TID.locate('TINOME','CADPED',[]) then
   DM1.Query1.sql.Add(' (TECODEMP=0'+mEmpresa01+' or TECODEMP=0'+mEmpresa101+') and ');
DM1.Query1.SQL.Add(' TECODPRO=0'+pCodpro);
if trim(pGrade)<>'' then
   DM1.Query1.SQL.Add(' and TELOTE='+chr(39)+pGrade+chr(39));

DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>0 then
   begin
   result:=false;
   exit;
   end;


DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Select count(*) from CADTRO_SAI where ');
if not DM1.Qr_TID.locate('TINOME','CADPED',[]) then
   DM1.Query1.sql.Add(' (TSCODEMP=0'+mEmpresa01+' or TSCODEMP=0'+mEmpresa101+') and ');
DM1.Query1.SQL.Add(' TSCODPRO=0'+pCodpro);
if trim(pGrade)<>'' then
   DM1.Query1.SQL.Add(' and TSLOTE='+chr(39)+pGrade+chr(39));

DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>0 then
   begin
   result:=false;
   exit;
   end;
{
CADSGPRO
CADSGPRO_ANO
CADPROC02
CADPROC
CADPPR
CADPGEN
CADPEN
CADOS02
CADOS03
CADOS04
CADOS05
CADOS05D
CADLC2
CADGPRO
CADEGD
CADEDIA
CADCSER02
CADCOMP
CADLGC
CADCUS  -CUCODIGO
CADCUS2 -CUCODIGO
}
result:=true;
end;


procedure TFrm_Cons_Pro_Nov.db_preco1Enter(Sender: TObject);
begin
  inherited;
mPrecoAnt:=TB_PROPDPRECO1.Value;
end;

procedure TFrm_Cons_Pro_Nov.db_preco1Exit(Sender: TObject);
begin
  inherited;
if TB_PROPDPRECO1.Value<>mPrecoAnt then
   begin
   TB_PROPDPRECOA1.Value:=mPrecoAnt;
   TB_PROPDDTUATP1.AsString:=FormatDatetime(fdt2, Date);
   end;

end;

procedure TFrm_Cons_Pro_Nov.db_preco2Exit(Sender: TObject);
begin
  inherited;
if TB_PROPDPRECO2.Value<>mPrecoAnt then
   begin
   TB_PROPDPRECOA2.Value:=mPrecoAnt;
   TB_PROPDDTUATP2.AsString:=FormatDatetime(fdt2, Date);
   end;

end;

procedure TFrm_Cons_Pro_Nov.db_preco3Exit(Sender: TObject);
begin
  inherited;
if TB_PROPDPRECO3.Value<>mPrecoAnt then
   begin
   TB_PROPDPRECOA3.Value:=mPrecoAnt;
   TB_PROPDDTUATP3.AsString:=FormatDatetime(fdt2, Date);
   end;

end;

procedure TFrm_Cons_Pro_Nov.db_preco2Enter(Sender: TObject);
begin
  inherited;
mPrecoAnt:=TB_PROPDPRECO2.Value;

end;

procedure TFrm_Cons_Pro_Nov.db_preco3Enter(Sender: TObject);
begin
  inherited;
mPrecoAnt:=TB_PROPDPRECO3.Value;

end;

procedure TFrm_Cons_Pro_Nov.Qr_LGCCalcFields(DataSet: TDataSet);
begin
  inherited;
if (Qr_LGCCLDTVCTO.IsNull) or (Qr_LGCCLDTVCTO.Value<=pdatanula) then
   Qr_LGCdtvcto.Value:='/  /'
else
   Qr_LGCdtvcto.Value:=FormatDatetime(fdt2, Qr_LGCCLDTVCTO.Value);

end;

procedure TFrm_Cons_Pro_Nov.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
if proNov_ori='' then
   begin
   PC1.ActivePage:=tsCad;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   proNov_ori:='';
   end;
mla_lote    :=Qr_LGCCLNUMERO.AsString;
if (Qr_LGCCLDTVCTO.IsNull) or (Qr_LGCCLDTVCTO.Value<=pdatanula) then
   mla_dtvcto  :=''
else
   mla_dtvcto  :=FormatDatetime(fdt2, Qr_LGCCLDTVCTO.Value);


end;

procedure TFrm_Cons_Pro_Nov.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if (key=9) or (key=27) then
   begin
   if proNov_ori='' then
      begin
      PC1.ActivePage:= tsCad;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      proNov_ori:='';
      end;
   mla_lote    :=Qr_LGCCLNUMERO.AsString;
   if (Qr_LGCCLDTVCTO.IsNull) or (Qr_LGCCLDTVCTO.Value<=pdatanula) then
      mla_dtvcto  :=''
   else
      mla_dtvcto  :=FormatDatetime(fdt2, Qr_LGCCLDTVCTO.Value);
   abort;
   end;

end;

procedure TFrm_Cons_Pro_Nov.db_embpad2Exit(Sender: TObject);
begin
  inherited;
if TB_PROPDEMBPAD.AsFloat=0 then
   TB_PROPDEMBPAD.Value:=ValInt(TB_PROPDEMBPAD2.Value);
end;

procedure TFrm_Cons_Pro_Nov.db_nomeExit(Sender: TObject);
begin
  inherited;
if (TB_PRO.State in [dsEdit,dsInsert]) and (TB_PROPDQTDGRML.AsFloat=0) then
   begin
   try
     TB_PROPDQTDGRML.Value:=ValFloat(TB_PROPDNOME.Value);
   except
     TB_PROPDQTDGRML.Value:=0;   
      end;
   if TB_PROPDQTDGRML.Value>=0 then
      begin
      TB_PROPDQTDGRML.Value:=TB_PROPDQTDGRML.Value/1000;
      end;
   end;
if length(TB_PROPDNOME.Value)>1 then
   begin
   DM1.Query1.close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Params.CreateParam(ftString,'PDNOME',ptInput);
   DM1.Query1.SQL.Add('Select PDCODPRO,PDNOME from CADPRO where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+Inttostr(codemp)+' and ')
                     +' PDCODPRO<>'+TB_PROPDCODPRO.AsString
                     +' and PDNOME =:PDNOME');
   DM1.Query1.ParamByName('PDNOME').AsString:=TB_PROPDNOME.AsString;
   DM1.Query1.Open;
   if not DM1.Query1.IsEmpty then
      begin
      if fmensagem('Esta Descrição ja esta cadastrada no codigo: '+DM1.Query1.Fields[0].AsString
                  +'. Continuar mesmo assim?',0,['1','2'],2)<>mrYes then
         begin
         db_nome.SetFocus;
         end;
      end;
   end;

end;

procedure TFrm_Cons_Pro_Nov.lb_1digClick(Sender: TObject);
begin
  inherited;
lbl_sit.Caption:=Inttostr(lb_1dig.ItemIndex)+copy(lbl_sit.Caption,2,2);
end;

procedure TFrm_Cons_Pro_Nov.lb_2digClick(Sender: TObject);
begin
  inherited;
lbl_sit.Caption:=copy(lbl_sit.Caption,1,1)+copy(Lb_2dig.Items[Lb_2dig.ItemIndex] ,1,2);
end;

procedure TFrm_Cons_Pro_Nov.sbnOkClick(Sender: TObject);
begin
  inherited;
  if TB_PRO.State in[dsEdit,dsInsert] then
     TB_PROPDSIT.Value:=FormatFloat('000', ValFloat(lbl_sit.Caption));
Panel_sittri.Visible:=false;
end;

procedure TFrm_Cons_Pro_Nov.DBCb_TabIcmExit(Sender: TObject);
begin
  inherited;
if DBCb_TabIcm.ItemIndex<0 then
   with DBCb_TabIcm do ItemIndex:=Items.IndexOf(DBCb_TabIcm.Text);
DBCb_TabIcm.text:=DBCb_TabIcm.Items.Strings[DBCb_TabIcm.ItemIndex];
if Trim(DBCb_TabIcm.Text)='' then
   DBCb_TabIcm.ItemIndex:=0;
end;

procedure TFrm_Cons_Pro_Nov.bbProximaClick(Sender: TObject);
var
  tsname: TTabSheet;
begin
  inherited;
if PC1.ActivePageIndex<PC1.PageCount-1 then
  begin
  PC1.ActivePageIndex:=PC1.ActivePageIndex+1;
  end
else
  begin
  PC1.ActivePageIndex:=0;
  end;
tsname:=PC1.ActivePage;
if tsname.TabVisible=False then
  begin
  if PC1.ActivePageIndex<PC1.PageCount-1 then
    begin
    PC1.ActivePageIndex:=PC1.ActivePageIndex+1;
    end
  else
    begin
    PC1.ActivePageIndex:=0;
    end;
  end;
if TB_PRO.State in [dsedit,dsinsert] then
  begin
  pc1.SetFocus;
  keybd_event(13,0,0,0);
  end;
end;

procedure TFrm_Cons_Pro_Nov.Panel_nivelExit(Sender: TObject);
begin
  inherited;

if (not db_codfor.Focused)  then
   db_codfor.SetFocus;

end;

procedure TFrm_Cons_Pro_Nov.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if (key=9) or (key=27) then
   begin
   if proNov_ori='' then
      begin
      PC1.ActivePage:= tsCad;
      btn_alterar.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      proNov_ori:='';
      end;
   abort;
   end;
end;

procedure TFrm_Cons_Pro_Nov.dbc_restExit(Sender: TObject);
begin
  inherited;
if TB_PROPDCODCON.AsInteger<>0 then
   begin
   if TB_PROPDREST.AsInteger<1 then
      begin
      if fmensagem('Este Produto devera ser restringido, continua assim mesmo?',0,['1','2'],2)<>mrYes  then
         TB_PROPDREST.Value:=1;
      end;
   end;

end;

procedure TFrm_Cons_Pro_Nov.db_clasExit(Sender: TObject);
begin
  inherited;
DM1.Query1.close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('Select CITABICMS from CADCLATABICM where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADCFO',[]),'',' CICODEMP=0'+InttoStr(codemp)+' and ')
                  +' CICLASSIF='+chr(39)+TB_PROPDCLAS.Value+chr(39));
DM1.Query1.Open;
if not DM1.Query1.Eof then
   TB_PROPDTABICM.Value:=DM1.Query1.Fields[0].AsString;

end;

procedure TFrm_Cons_Pro_Nov.CAMPOExit(Sender: TObject);
begin
  inherited;
with CAMPO do ItemIndex:=Items.IndexOf(CAMPO.Text);
CAMPO.Text:=CAMPO.Items.Strings[CAMPO.ItemIndex];
end;

procedure TFrm_Cons_Pro_Nov.sbnCodbarClick(Sender: TObject);
begin
  inherited;
if TB_PROPDCODPRO.AsFloat=0 then
   begin
   fmensagem('Favor Digitar um Codigo de Produto Valido!',0,['0'],0);
   exit;
   end;
testeform := TFrm_Cons_Pro_Nov(FindGlobalComponent('form_pro_codbar'));
if (testeform=nil)  then
   Application.Createform(Tfrm_Pro_CodBar, form_Pro_CodBar);
mCodPro_Ori:=TB_PROPDCODPRO.AsFloat;
form_Pro_CodBar.lbl_nompro.Caption:=TB_PROPDCODPRO.AsString+'-'+TB_PROPDNOME.AsString;
form_Pro_CodBar.Tb_Pro_CodBar.Close;
form_Pro_CodBar.Tb_Pro_CodBar.SQL.Clear;
form_Pro_CodBar.Tb_Pro_CodBar.SQL.Add('Select * from CADPRO_CODBAR where '
                                    +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CBCODEMP=0'+IntToStr(codemp)+' and ')
                                    +' CBCODPRO=0'+TB_PROPDCODPRO.AsString);
form_Pro_CodBar.Tb_Pro_CodBar.SQL.Add(' order by CBCODBAR ');
form_Pro_CodBar.Tb_Pro_CodBar.Open;
form_Pro_CodBar.ShowModal;
form_Pro_CodBar.free;
form_Pro_CodBar:=nil;


end;

procedure TFrm_Cons_Pro_Nov.SbnFornecClick(Sender: TObject);
begin
  inherited;
if TB_PROPDCODPRO.AsFloat=0 then
   begin
   fmensagem('Favor Digitar um Codigo de Produto Valido!',0,['0'],0);
   exit;
   end;
testeform := TFrm_Cons_Pro_Nov(FindGlobalComponent('form_Pro_Fornec'));
if (testeform=nil)  then
   Application.Createform(Tfrm_Pro_Fornec, form_Pro_Fornec);
mCodPro_Fornec_Ori:=TB_PROPDCODPRO.AsFloat;
form_Pro_Fornec.lbl_nompro.Caption:=TB_PROPDCODPRO.AsString+'-'+TB_PROPDNOME.AsString;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_empresas :='';
if DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   la_Empresas:=''
else
   la_Empresas:=fla_sqlmp('PFCODEMP',Form_SelEmp.CLB_EMPRESAS);

fInnerJoin(1,'CADFOR','FCODEMP','PFCODEMP','FCODFOR','PFCODFOR');

form_Pro_Fornec.Tb_Pro_Fornec.Close;
form_Pro_Fornec.Tb_Pro_Fornec.SQL.Clear;
form_Pro_Fornec.Tb_Pro_Fornec.SQL.Add('SELECT PFCODEMP,PFCODFOR,PFCODPRO,PFCODPFORN,PFSALDO,FRAZAO AS NOMFOR '
                                    +' FROM CODPFOR '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                    +' PFCODPRO=0'+TB_PROPDCODPRO.AsString);
form_Pro_Fornec.Tb_Pro_Fornec.SQL.Add(' order by NOMFOR ');
try
   form_Pro_Fornec.Tb_Pro_Fornec.Open;
except
   form_Pro_Fornec.Tb_Pro_Fornec.SQL.SaveToFile(mpastatemp +'sql.TXT');
   end;
form_Pro_Fornec.show;
end;

procedure TFrm_Cons_Pro_Nov.db_codbarExit(Sender: TObject);
begin
  inherited;
if TB_PROPDCODBAR.AsFloat<>0 then
  begin
//  if ValidaEan13(false,TB_PROPDCODBAR.AsString) then
    begin
    DM1.Query1.close;
    DM1.Query1.SQL.Clear;
    DM1.Query1.SQL.Add('Select PDCODPRO,PDNOME from CADPRO where '
                      +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+Inttostr(codemp)+' and ')
                      +' PDCODPRO<>'+Tb_ProPDCODPRO.AsString
                      +' and PDCODBAR='+Tb_ProPDCODBAR.AsString);

    DM1.Query1.Open;
    if not DM1.Query1.IsEmpty then
      begin
      if fmensagem('Este Codigo de Barra ja esta cadastrada no Produto: '+DM1.Query1.Fields[0].AsString
                 +'-'+DM1.Query1.Fields[1].AsString+'. Continuar mesmo assim?',0,['1','2'],2)<>mrYes then
        begin
        Tb_ProPDCODBAR.AsFloat:=0;
        db_codbar.SetFocus;
        end;
      end;
    end
{  else
    begin
    fmensagem('Este Codigo de Barra '+Tb_ProPDCODBAR.AsString+' não é valido.',0,['0'],0);
    Tb_ProPDCODBAR.AsFloat:=0;
    db_codbar.SetFocus;
    end;
}    
  end;
{
if TB_PROPDCODBAR.AsFloat<>0 then
   begin
   DM1.Query1.close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select PDCODPRO,PDNOME from CADPRO where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+Inttostr(codemp)+' and ')
                     +' PDCODPRO<>'+TB_PROPDCODPRO.AsString
                     +' and PDCODBAR='+TB_PROPDCODBAR.AsString);

   DM1.Query1.Open;
   if not DM1.Query1.IsEmpty then
      begin
      if fmensagem('Este Codigo de Barra ja esta cadastrada no Produto: '+DM1.Query1.Fields[0].AsString
                  +'-'+DM1.Query1.Fields[1].AsString+'. Continuar mesmo assim?',0,['1','2'],2)<>mrYes then
         begin
         TB_PROPDCODBAR.AsFloat:=0;
         db_codbar.SetFocus;
         end;
      end;
   end; }


end;

procedure TFrm_Cons_Pro_Nov.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
if (TB_PRO.Active) and (Log_TipoLote=2) then
   begin
   if (TB_PROPDESTMIN.AsFloat>0) and
      (Qr_LGCCLQTD_PRAT.AsFloat<=TB_PROPDESTMIN.AsFloat) then
      begin
      if not (DM1.Tb_PargerPFCORP_ESTMIN_PRAT.IsNull) and (DM1.Tb_PargerPFCORP_ESTMIN_PRAT.Value<>0) then
         begin
         DBGrid2.Canvas.Brush.Color := dm1.Tb_PargerPFCORP_ESTMIN_PRAT.AsInteger;
         DBGrid2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
         end;
       end
    else if (TB_PROPDESTMIN.AsFloat>0) and
       (Qr_LGCCLQTD.AsFloat<=TB_PROPDESTMIN.AsFloat) then
       begin
       if not (DM1.Tb_PargerPFCORP_ESTMIN_GER.IsNull) and (DM1.Tb_PargerPFCORP_ESTMIN_GER.Value<>0) then
          begin
          DBGrid2.Canvas.Brush.Color := dm1.Tb_PargerPFCORP_ESTMIN_GER.AsInteger;
          DBGrid2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
         end;
       end;
    end;
end;

procedure TFrm_Cons_Pro_Nov.CB_STATUS_PROExit(Sender: TObject);
begin
  inherited;
//with CB_STATUS_PRO do ItemIndex:=Items.IndexOf(CB_STATUS_PRO.Text);
//CB_STATUS_PRO.text:=CB_STATUS_PRO.Items.Strings[CB_STATUS_PRO.ItemIndex];

end;

procedure TFrm_Cons_Pro_Nov.INCLUIRClick(Sender: TObject);
begin
  inherited;
  moper := 0;

  if TB_PRO.Filtered then begin
     mfiltro   := TB_PRO.Filter;
     TB_PRO.Filtered:=False;
  end else
     mfiltro := '';
  TB_PRO.Insert;
  Tb_ProPDFIS_ORIGEM.AsInteger:=0;
  fCarregaInfNutlocal(1);
  fCarregaSimilarlocal(1);

  DM6.Tb_Pro_CIN.Edit;

  if (DM1.Tb_PargerPUPALNUM.Value=1) and (DM1.Tb_PargerPMANPC.Value=1) then begin
     db_precoc.Visible:= False;
     PCO_CUS.Text     := TB_PROpco_custo.Value;
     PCO_CUS.Visible  := True;
  end;

  mcodigo    :=TB_PROPDCODPRO.AsString;
  mrefer_ant :='';

  RxDBComboBox2.Enabled    :=true;
  DBECMET_bitola.Enabled   :=true;
  DBECMET_constante.Enabled:=true;
  DBGrid3.ReadOnly         :=false;



  tsCad.Enabled      := True;
  tsAd.Enabled       := True;
  tsFiscais.Enabled  := True;
  tsSimilar.Enabled  := True;
//  TsLote.Enabled     := True;
  tscomp.Enabled     := True;
  db_codpro.Enabled  := True;
  PC1.ActivePage     := tsCad;

  btn_novo.Enabled    := False;
  btn_alterar.Enabled := False;
  btn_excluir.Enabled := False;
  btn_gravar.Enabled  := True;
  DBNavigator2.Enabled:= False;
//  CB_STATUS_PRO.Enabled:=True;
  db_nome.SetFocus;
  mIf_Alterou:=false;
Tab_Filtros.Enabled:=False;
DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.SQL.Clear;
DM4.Tb_FilPad.SQL.Add(' select * from filpad ');
DM4.Tb_FilPad.Open;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CST_ICMS_EST_REV']),[]) then
  Tb_ProPDFIS_CST_ICMS_EST_REV.Value:=RxDBCB_CST_ICMS_EST_REV.Values[ValInt(DM4.Tb_FilPadFPVALOR.Value)];

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CST_ICMS_EST_CF']),[]) then
  Tb_ProPDFIS_CST_ICMS_EST_CF.Value:=RxDBB_CST_ICMS_EST_CF.Values[ValInt(DM4.Tb_FilPadFPVALOR.Value)];

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CST_ICMS_INT_REV']),[]) then
  Tb_ProPDFIS_CST_ICMS_INT_REV.Value:=RxDBCB_CST_ICMS_INT_REV.Values[ValInt(DM4.Tb_FilPadFPVALOR.Value)];

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CST_ICMS_INT_CF']),[]) then
  TB_PROPDFIS_CST_ICMS_INT_CF.Value:=RxDBCB_CST_ICMS_INT_CF.Values[ValInt(DM4.Tb_FilPadFPVALOR.Value)];

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_PRED_ICMS_EST']),[]) then
  Tb_ProPDFIS_PRED_ICMS_EST.AsFloat:=DM4.Tb_FilPadFPVALOR.AsFloat;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_PRED_ICMS_INT']),[]) then
  Tb_ProPDFIS_PRED_ICMS_INT.AsFloat:=DM4.Tb_FilPadFPVALOR.AsFloat;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CSOSN_EST_REV']),[]) then
  TB_PROPDFIS_CSOSN_EST_REV.Value:=RxDBCB_CSOSN_EST_REV.Values[ValInt(DM4.Tb_FilPadFPVALOR.Value)];

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CSOSN_EST_CF']),[]) then
  TB_PROPDFIS_CSOSN_EST_CF.Value:=RxDBCB_CSOSN_EST_CF.Values[ValInt(DM4.Tb_FilPadFPVALOR.Value)];

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CSOSN_INT_REV']),[]) then
  TB_PROPDFIS_CSOSN_INT_REV.Value:=RxDBCB_CSOSN_INT_REV.Values[ValInt(DM4.Tb_FilPadFPVALOR.Value)];

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CSOSN_INT_CF']),[]) then
  TB_PROPDFIS_CSOSN_INT_CF.Value:=RxDBCB_CSOSN_INT_CF.Values[ValInt(DM4.Tb_FilPadFPVALOR.Value)];

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CST_PISCOF_ENTRADA']),[]) then
  TB_PROPDFIS_CST_PISCOF_ENTRADA.Value:=RxDBCB_CST_PISCOF_ENTRADA.Values[ValInt(DM4.Tb_FilPadFPVALOR.Value)];

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CST_PISCOF_SAIDA']),[]) then
  TB_PROPDFIS_CST_PISCOF_SAIDA.Value:=RxDBCB_CST_PISCOF_SAIDA.Values[ValInt(DM4.Tb_FilPadFPVALOR.Value)];
end;

procedure TFrm_Cons_Pro_Nov.ALTERARClick(Sender: TObject);
begin
  inherited;

  if TB_PROPDCODPRO.IsNull then
     begin
     verteclado(0);
     fMensagem('Não ha registro a ser alterado',0,['0'],0);
     CancelarClick(self);
     exit;
     end;

  moper := 8;


  btn_gravar.Enabled := True;
  tsCad.Enabled      := True;
  tsAd.Enabled       := True;

  RxDBComboBox2.Enabled    :=true;
  DBECMET_bitola.Enabled   :=true;
  DBECMET_constante.Enabled:=true;
  DBGrid3.ReadOnly         :=false;

  tsFiscais.Enabled  := True;
  tsSimilar.Enabled  := True;
//  TsLote.Enabled     := True;
  tscomp.Enabled     := True;
  db_codpro.Enabled  := False;

  if (DM1.Tb_PargerPUPALNUM.Value=1) and (DM1.Tb_PargerPMANPC.Value=1) then begin
     db_precoc.Visible:= False;
     PCO_CUS.Text     := TB_PROpco_custo.Value;
     PCO_CUS.Visible  := True;
  end;
  fCarregaInfNutlocal(0);
  fCarregaSimilarlocal(0);

  TB_PRO.Edit;
  if (fSonumero(TB_PROPDCODNCM.AsString)>0) and  (fSonumero(TB_PROPDCLAS.AsString)=0) then
     TB_PROPDCLAS.AsString:=TB_PROPDCODNCM.AsString;

  mrefer_ant :=TB_PROPDREFER.AsString;


  DM6.Tb_Pro_CIN.Edit;

  btn_novo.Enabled    := False;
  btn_alterar.Enabled := False;
  btn_excluir.Enabled := False;
  btn_gravar.Enabled  := True;
//  CB_STATUS_PRO.Enabled:=True;
  DBNavigator2.Enabled:= False;

  if PC1.ActivePage=Tsad then
     Tsad.SetFocus
  else begin
     PC1.ActivePage:=tsCad;
     db_nome.SetFocus;

  mIf_Alterou:=false;
  end;
Tab_Filtros.Enabled:=False; 

end;

procedure TFrm_Cons_Pro_Nov.EXCLUIRClick(Sender: TObject);
begin
  inherited;

  if TB_PROPDCODPRO.IsNull then begin
     verteclado(0);
     fMensagem('Não ha registro a ser excluido!',0,['0'],0);
     CancelarClick(self);
     exit;
  end;

  if not fProTestaMov(TB_PROPDCODPRO.AsString,'') then begin
     fMensagem('Este Produto possui Movimento de Compra/Venda. Exclusão Inválida!',0,['0'],0);
     CancelarClick(self);
     exit;
  end;

  if fmensagem('Quer Realmente Excluir o Produto?',0,['1','2'],2)=mrYes then
     begin
     fpro01gantlocal(9);

     DM1.Query1.close;
     DM1.Query1.SQL.clear;
     DM1.Query1.SQL.Add('Delete from CADPRO_CIN where '
                       +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CIN_CODEMP=0'+TB_PROPDCODEMP.AsString+' and ')
                       +' CIN_CODPRO=0'+TB_PROPDCODPRO.AsString);
     try
        DM1.Query1.ExecSQL;
        fdm1StartCommit;
     except
        end;
     DM1.Query1.close;
     DM1.Query1.SQL.clear;
     DM1.Query1.SQL.Add('Delete from CADPRO_INFNUT where '
                       +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' PIN_CODEMP=0'+TB_PROPDCODEMP.AsString+' and ')
                       +' PIN_CODPRO=0'+TB_PROPDCODPRO.AsString);
     try
        DM1.Query1.ExecSQL;
        fdm1StartCommit;
     except
        end;

     TB_PRO.Delete;
     RxDBComboBox2.Enabled    :=false;
     DBECMET_bitola.Enabled   :=false;
     DBECMET_constante.Enabled:=false;
     DBGrid3.ReadOnly         :=true;

     tsAd.Enabled       := False;
     tsFiscais.Enabled  := False;
     tsCad.Enabled      := False;
//     TsLote.Enabled     := False;
     tscomp.Enabled     := False;
     tsSimilar.Enabled  := false;

  end;
end;

procedure TFrm_Cons_Pro_Nov.btn_gravarClick(Sender: TObject);
var
  x : Integer;
begin
  inherited;

if Tb_ProPDFIS_CST_ICMS_EST_REV.IsNull then
  begin
  PC1.ActivePage:=tsFiscais;
  fmensagem('CST - ESTADUAL - REVENDA  Invalida!',0,['0'],0);
  RxDBCB_CST_ICMS_EST_REV.SetFocus;
  exit;
  end;

if Tb_ProPDFIS_CST_ICMS_EST_CF.IsNull then
  begin
  PC1.ActivePage:=tsFiscais;
  fmensagem('CST - ESTADUAL - CF  Invalida!',0,['0'],0);
  RxDBB_CST_ICMS_EST_CF.SetFocus;
  exit;
  end;

if Tb_ProPDFIS_CST_ICMS_INT_REV.IsNull then
  begin
  PC1.ActivePage:=tsFiscais;
  fmensagem('CST - FORA DO ESTADO - REVENDA  Invalida!',0,['0'],0);
  RxDBCB_CST_ICMS_INT_REV.SetFocus;
  exit;
  end;

if Tb_ProPDFIS_CST_ICMS_INT_CF.IsNull then
  begin
  PC1.ActivePage:=tsFiscais;
  fmensagem('CST - FORA DO ESTADO - CF  Invalida!',0,['0'],0);
  RxDBCB_CST_ICMS_INT_CF.SetFocus;
  exit;
  end;

if Tb_ProPDFIS_CSOSN_EST_REV.IsNull then
  begin
  PC1.ActivePage:=tsFiscais;
  fmensagem('CSOSN - ESTADUAL - REVENDA  Invalida!',0,['0'],0);
  RxDBCB_CSOSN_EST_REV.SetFocus;
  exit;
  end;

if Tb_ProPDFIS_CSOSN_EST_CF.IsNull then
  begin
  PC1.ActivePage:=tsFiscais;
  fmensagem('CST - ESTADUAL - CF  Invalida!',0,['0'],0);
  RxDBCB_CSOSN_EST_CF.SetFocus;
  exit;
  end;

if Tb_ProPDFIS_CSOSN_INT_REV.IsNull then
  begin
  PC1.ActivePage:=tsFiscais;
  fmensagem('CST - FORA DO ESTADO - REVENDA  Invalida!',0,['0'],0);
  RxDBCB_CSOSN_INT_REV.SetFocus;
  exit;
  end;

if Tb_ProPDFIS_CSOSN_INT_CF.IsNull then
  begin
  PC1.ActivePage:=tsFiscais;
  fmensagem('CST - FORA DO ESTADO - CF  Invalida!',0,['0'],0);
  RxDBCB_CSOSN_INT_CF.SetFocus;
  exit;
  end;


  if TB_PROPDNOME.Value='_' then begin
     verteclado(0);
     fmensagem('Descrição do produto Invalida!',0,['0'],0);
     db_nome.SetFocus;
     exit;
  end;

if (Tb_ProPDCONTESP.AsInteger=1) and (Tb_ProPDCMET_CONSTANTE.AsFloat=0) then
   Tb_ProPDCMET_CONSTANTE.AsFloat:=8;

if (DM4.Tb_ParGer02PG2USANFE.AsInteger>0) and (TB_PROPDNIVEL.AsInteger=0) then
   begin
   mcinst2:=fdeixanum2(TB_PROPDCODNCM.AsString);
   if length(mcinst2)<>8 then
      mcinst2:=fdeixanum2(TB_PROPDCLAS.AsString);
   if length(mcinst2)<>8 then
      begin
      DM1.query2.Close;
      DM1.query2.SQL.Clear;
      DM1.query2.SQL.Add('SELECT PDCLAS,PDCODNCM FROM CADPRO '
                        +' WHERE (LENGTH(PDCLAS)=8 OR LENGTH(PDCODNCM)=8) and rownum<2 ');
      try
         DM1.Query2.Open;
         if length(DM1.Query2.fieldbyName('PDCLAS').AsString)=8 then
            begin
            TB_PROPDCLAS.Value:=DM1.Query2.fieldbyName('PDCLAS').AsString;
            TB_PROPDCODNCM.Value:=DM1.Query2.fieldbyName('PDCLAS').AsString;
            mcinst:=fdeixanum2(TB_PROPDCLAS.AsString);
            end
        else
            begin
            TB_PROPDCLAS.Value:=DM1.Query2.fieldbyName('PDCODNCM').AsString;
            TB_PROPDCODNCM.Value:=DM1.Query2.fieldbyName('PDCODNCM').AsString;
            mcinst:=fdeixanum2(TB_PROPDCLAS.AsString);
            end;
      except
         end;
      if length(mcinst2)<>8 then
         begin
         FMensagem('Classificação Fiscal/Codigo NCM tem que ter 8 caracteres!',0,['0'],0);
         exit;
         end;
      end;
   end;

  if moper=8 then
     fpro01gantlocal(moper);

  if (DM1.Tb_PargerPUPALNUM.Value=1) and (DM1.Tb_PargerPMANPC.Value=1) then begin
     PCO_CUS.Text:=Trim(PCO_CUS.Text);

     if Trim(PCO_CUS.Text)<>'' then begin
        if not ftestapalavra(0,PCO_CUS.Text) then begin
           verteclado(0);
           fMensagem('A palavra utilizada para substituir não pode ter espaço!',0,['0'],0);
           PCO_CUS.SetFocus;
           exit;
        end;

        if not ftestapalavra(2,PCO_CUS.Text) then begin
           verteclado(0);
           fMensagem('Existe caracteres não pertencentes a palavra!',0,['0'],0);
           PCO_CUS.SetFocus;
           exit;
        end;
     end;

     TB_PROPDPRECOC.Value:=ValFloat(PalNum(PCO_CUS.Text))/100;
  end;

  TB_PROPDCODUSR.Value  :=codusr;
  TB_PROPDDTALT.AsString:=FormatDateTime(fdt2, pdatasis);
  TB_PROPDHRALT.Value   :=FormatDateTime(fhr, time);
//  TB_PROPDSTATUS.Value  :=CB_STATUS_PRO.ItemIndex;
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add('Update CADPRO set PDNOMPROALT=PDNOME where '
                    +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+TB_PROPDCODEMP.AsString+' and ')
                    +' PDPROALT=0'+TB_PROPDCODPRO.AsString
                    +' and (PDNOMPROALT<>PDNOME or PDNOMPROALT is null)');
  DM1.Query1.ExecSQL;

  if not flcadest(0,0,0,TB_PROPDCODPRO.AsString) then begin
     DM1.Query1.Close;
     DM1.Query1.Sql.Clear;
     DM1.Query1.Sql.add('Insert into CADEST ('
                       +'CECODEMP, '
                       +'CECODPRO, '
                       +'CESALDO, '
                       +'CESALDO_PRAT, '
                       +'CESALDO_DEP, '
                       +'CESALDOR,'
                       +'CESALDOC,'
                       +'CEENTPEN,'
                       +'CEDTUSAI,'
                       +'CEDTUENT'
                       +') Values ('
                       +Inttostr(codemp)+','
                       +TB_PROPDCODPRO.AsString+','
                       +'0,0,0,0,0,0,'
                       +chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)+','
                       +chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)
                       +')');

      try
        DM1.Query1.ExecSQL;
      except
        ex_erroSql(01,409,'Frm_Pro','CADEST');
        fdm1StartCommit;
      end;
  end;

  if fSonumero(TB_PROPDCLAS.AsString) <>  fSonumero(TB_PROPDCODNCM.AsString) then
     TB_PROPDCODNCM.AsString:=TB_PROPDCLAS.AsString;

  TB_PRO.Post;
  btn_gravar.Enabled := False;
//  CB_STATUS_PRO.Enabled:=false;
IF (moper<>8) and (fSonumero(mcodigo)<>TB_PROPDCODPRO.AsFloat) then
   begin
   DM1.Query1.close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('Delete from CADPRO_CIN where '
                     +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CIN_CODEMP=0'+TB_PROPDCODEMP.AsString+' and ')
                     +' CIN_CODPRO=0'+mcodigo);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;
   DM1.Query1.close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('Delete from CADPRO_INFNUT where '
                     +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' PIN_CODEMP=0'+TB_PROPDCODEMP.AsString+' and ')
                     +' PIN_CODPRO=0'+mcodigo);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end;


if DM6.Tb_Pro_CIN.state in [dsEdit,dsInsert] then
   begin
   FAtualizaBanco(1,'CADPRO_CIN','CIN_CODEMP',TB_PROPDCODEMP.AsString
   ,['CIN_CODPRO'],[TB_PROPDCODPRO.AsString]
   ,DM6.Tb_Pro_CIN);
   DM6.Tb_Pro_CIN.Post;
   end;
if mIf_Alterou then
   begin
   mIf_Alterou:=false;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADPRO_INFNUT where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PIN_CODEMP=0'+TB_PROPDCODEMP.AsString+' and ')
                     +' PIN_CODPRO=0'+TB_PROPDCODPRO.AsString);
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
   for x:=1 to STG_NUTRIC.RowCount do
      begin

      if trim(STG_NUTRIC.Cells[mIF_Col_Descricao,x])='' then
         Continue;
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into CADPRO_INFNUT ( '
                        +' PIN_CODEMP '
                        +',PIN_CODPRO '
                        +',PIN_SEQUENCIA'
                        +',PIN_DESCRICAO'
                        +',PIN_MEDIDA '
                        +',PIN_PERCVD '
                        +',PIN_DATHOR_EVE '
                        +') values ('

                        +' :PIN_CODEMP '
                        +',:PIN_CODPRO '
                        +',:PIN_SEQUENCIA'
                        +',:PIN_DESCRICAO'
                        +',:PIN_MEDIDA '
                        +',:PIN_PERCVD '
                        +',:PIN_DATHOR_EVE '
                        +')');
      DM1.Query1.ParamByName('PIN_CODEMP').AsFloat    :=TB_PROPDCODEMP.AsFloat;
      DM1.Query1.ParamByName('PIN_CODPRO').AsFloat    :=TB_PROPDCODPRO.AsFloat;
      DM1.Query1.ParamByName('PIN_SEQUENCIA').AsFloat :=x;
      DM1.Query1.ParamByName('PIN_DESCRICAO').AsString:=STG_NUTRIC.Cells[mIF_Col_Descricao,x];
      DM1.Query1.ParamByName('PIN_MEDIDA').AsString   :=STG_NUTRIC.Cells[mIF_Col_medida,x];
      DM1.Query1.ParamByName('PIN_PERCVD').AsFloat    :=ValFloat(STG_NUTRIC.Cells[mIF_Col_PercVD,x]);
      DM1.Query1.ParamByName('PIN_DATHOR_EVE').AsDateTime:=now;
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
      end;
   mIf_Alterou:=false;
   end;
if CB_REP_PRECOS.Checked then
   bbReplicaClick(self);

  btn_cancelar.Click;
end;

procedure TFrm_Cons_Pro_Nov.SAIRClick(Sender: TObject);
begin
  inherited;
  ModalResult:=mrOk;
  IF (proNov_ori='') or (proNov_ori='consulta') THEN
     close;
end;

procedure TFrm_Cons_Pro_Nov.btn_bloqueioClick(Sender: TObject);
begin
  inherited;
  testeform := TFrm_Cons_Pro_nov(FindGlobalComponent('form_Venda_bloqueada_relacao'));
  if (testeform=nil)  then
     Application.CreateForm(Tfrm_Vendabloqueada_relacao, form_Vendabloqueada_relacao);

  form_Vendabloqueada_relacao.Ts_Vendedor.TabVisible    :=False;
  form_Vendabloqueada_relacao.Ts_Fornecedor.TabVisible  :=True;
  form_Vendabloqueada_relacao.Ts_Estados.TabVisible     :=False;
  form_Vendabloqueada_relacao.Ts_Cidade.TabVisible      :=False;
  form_Vendabloqueada_relacao.Ts_Bairros.TabVisible     :=False;
  form_Vendabloqueada_relacao.Ts_RamoClientes.TabVisible:=False;
  form_Vendabloqueada_relacao.Ts_Clientes.TabVisible    :=False;
  form_Vendabloqueada_relacao.Ts_RamoProdutos.TabVisible:=False;
  form_Vendabloqueada_relacao.Ts_Produtos.TabVisible    :=False;
  form_Vendabloqueada_relacao.CODIGO.Enabled            :=False;
  form_Vendabloqueada_relacao.bbAtualizar.Enabled       :=False;
  form_Vendabloqueada_relacao.St_Nivel.Caption:='NIVEL: PRODUTO';
  mNivelConsulta:=9;
  form_Vendabloqueada_relacao.CODIGO.Text:=TB_PROPDCODPRO.AsString;
  form_Vendabloqueada_relacao.NOME.Text:=TB_PROPDNOME.AsString;
  form_Vendabloqueada_relacao.bbAtualizar.Click;
  form_Vendabloqueada_relacao.Show;
end;

procedure TFrm_Cons_Pro_Nov.btn_outrosClick(Sender: TObject);
begin
  inherited;
  if not TB_PROPDCODPRO.IsNull then
     SbnFornec.Click;
end;

procedure TFrm_Cons_Pro_Nov.btn_sobreClick(Sender: TObject);
begin
  inherited;

if TB_PROPDCODPRO.IsNull then
   begin
   verteclado(0);
   fMensagem('Favor Selecionar um Arquivo Válido!',0,['0'],0);
   exit;
   end;

testeform := TFrm_Cons_Pro_Nov(FindGlobalComponent('form_fig'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_fig, form_fig);
form_fig.mCodEmp:=TB_PROPDCODEMP.AsFloat;
form_fig.mCodPro:=TB_PROPDCODPRO.AsFloat;

form_fig.Show;
end;

procedure TFrm_Cons_Pro_Nov.btn_barrasClick(Sender: TObject);
begin
  inherited;

  if not TB_PROPDCODPRO.IsNull then
     sbnCodbar.Click;
end;

procedure TFrm_Cons_Pro_Nov.btn_dcbClick(Sender: TObject);
begin
  inherited;
if TB_PROPDCODPRO.IsNull then
   exit;
testeform := TFrm_Cons_Pro_Nov(FindGlobalComponent('form_dcbpro'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_DCBPRO, form_DCBPRO);

form_DCBPRO.CODPRO.Text:=TB_PROPDCODPRO.AsString;
form_DCBPRO.NOMPRO.Text:=TB_PROPDNOME.Value;
form_DCBPRO.Tb_PGen.Close;
form_DCBPRO.Tb_PGen.SQL.Clear;
form_DCBPRO.Tb_PGen.SQL.Add('Select * from CADPGEN where '
                          +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' PGCODEMP=0'+IntTostr(codemp)+' and ')
                          +' PGCODPRO=0'+TB_PROPDCODPRO.AsString);
form_DCBPRO.Tb_PGen.Open;
form_DCBPRO.Show;
end;

procedure TFrm_Cons_Pro_Nov.CANCELARClick(Sender: TObject);
begin
  inherited;
  {if (not btn_novo.Enabled) or (not btn_alterar.Enabled) then
     Abort;}

if (DM1.Tb_PargerPUPALNUM.Value=1) and (DM1.Tb_PargerPMANPC.Value=1) then
   begin
   db_precoc.Visible:=True;
   PCO_CUS.Visible:=False;
   end;

moper := 0;
TB_PRO.Cancel;
DM6.Tb_Pro_CIN.Cancel;

if TB_PROPDNOME.Value='_' then
   begin
   DM6.Tb_Pro_CIN.Delete;
   DM1.Query1.close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('Delete from CADPRO_CIN where '
                     +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CIN_CODEMP=0'+TB_PROPDCODEMP.AsString+' and ')
                     +' CIN_CODPRO=0'+TB_PROPDCODPRO.AsString);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;
   DM1.Query1.close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('Delete from CADPRO_INFNUT where '
                     +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' PIN_CODEMP=0'+TB_PROPDCODEMP.AsString+' and ')
                     +' PIN_CODPRO=0'+TB_PROPDCODPRO.AsString);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;


   flDesfazerCodigos(0,'CADPRO',TB_PROPDCODPRO.Value);
   TB_PRO.Delete;
   end;

db_codpro.Enabled  := False;
tsAd.Enabled       := False;
RxDBComboBox2.Enabled    :=false;
DBECMET_bitola.Enabled   :=false;
DBECMET_constante.Enabled:=false;
DBGrid3.ReadOnly         :=true;

tsFiscais.Enabled  := False;
tsSimilar.Enabled  := False;
tsCad.Enabled      := False;
//TsLote.Enabled     := False;
tscomp.Enabled     := False;


btn_novo.Enabled       := bbpdinc_true;
btn_alterar.Enabled    := bbpdalt_true;
btn_excluir.Enabled    := bbpdexc_true;
btn_gravar.Enabled     := False;
//CB_STATUS_PRO.Enabled  :=false;
DBNavigator2.Enabled   := True;
mIf_Alterou :=false;
mcodInfNut:=-1;
fCarregaInfNutlocal(0);
fCarregaSimilarlocal(0);
Tab_Filtros.Enabled:=True;

end;


Function TFrm_Cons_Pro_Nov.fCarregaInfNutlocal(pTipo: Integer):Boolean;
var
x: Integer;
begin
result:=true;
if (TB_PROPDCODPRO.AsFloat<>mcodInfNut) and
   ( (not (TB_PRO.State in [dsEdit,dsInsert])) or (ptipo=1))  then
   begin
   DM6.Tb_Pro_CIN.Close;
   DM6.Tb_Pro_CIN.SQL.Clear;
   DM6.Tb_Pro_CIN.SQL.Add('Select * from CADPRO_CIN  where '
                         +iif(DM1.Qr_TID.locate('TINOME','CAPRO',[]),'',' CIN_CODEMP=0'+TB_PROPDCODEMP.AsString+' and ')
                         +' CIN_CODPRO=0'+TB_PROPDCODPRO.AsString);
   DM6.Tb_Pro_CIN.Open;
   if DM6.Tb_Pro_CIN.IsEmpty then
      begin
      DM6.Tb_Pro_CIN.Insert;
      DM6.Tb_Pro_CINCIN_CODEMP.AsFloat:=TB_PROPDCODEMP.AsFloat;
      DM6.Tb_Pro_CINCIN_CODPRO.AsFloat:=TB_PROPDCODPRO.AsFloat;


      FAtualizaBanco(0,'CADPRO_CIN','CIN_CODEMP',TB_PROPDCODEMP.AsString
      ,['CIN_CODPRO'],[TB_PROPDCODPRO.AsString]
      ,DM6.Tb_Pro_CIN);
      DM6.Tb_Pro_CIN.Post;

      end;

   DM6.Tb_Pro_CIN.Close;
   DM6.Tb_Pro_CIN.SQL.Clear;
   DM6.Tb_Pro_CIN.SQL.Add('Select * from CADPRO_CIN  where '
                         +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CIN_CODEMP=0'+TB_PROPDCODEMP.AsString+' and ')
                         +' CIN_CODPRO=0'+TB_PROPDCODPRO.AsString);
   DM6.Tb_Pro_CIN.Open;

   mcodInfNut:=TB_PROPDCODPRO.AsFloat;
   mIf_Alterou    :=false;
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Select * from CADPRO_INFNUT where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PIN_CODEMP=0'+TB_PROPDCODEMP.AsString+' and ')
                  +' PIN_CODPRO=0'+TB_PROPDCODPRO.AsString);
   DM1.Query2.Open;
   STG_NUTRIC.Cells[mIF_Col_Descricao,00]:='Descrição';
   STG_NUTRIC.Cells[mIF_Col_Medida,00]   :='Qtd.p/Porção ';
   STG_NUTRIC.Cells[mIF_Col_PercVD,00]   :='% VD(*)';
   mQtdCol:=1;
   for x:=1 to STG_NUTRIC.RowCount do
      begin
      STG_NUTRIC.Rows[x].Clear;
      end;
   STG_NUTRIC.RowCount:=1;
   While not DM1.Query2.Eof do
      begin
      STG_NUTRIC.RowCount:=mQtdCol+1;
      STG_NUTRIC.Cells[mIF_Col_Descricao,mQtdCol]:=DM1.Query2.FieldbyName('PIN_DESCRICAO').AsString;
      STG_NUTRIC.Cells[mIF_Col_Medida,mQtdCol]   :=DM1.Query2.FieldbyName('PIN_MEDIDA').AsString;
      STG_NUTRIC.Cells[mIF_Col_PercVD,mQtdCol]   :=FormatFloat(mcasas_pct,DM1.Query2.FieldbyName('PIN_PERCVD').AsFloat);
      mQtdCol:=mQtdcol+1;
      DM1.Query2.Next;
      end;
   STG_NUTRIC.FixedCols:=1;
   if STG_NUTRIC.RowCount>1 then
      STG_NUTRIC.FixedRows:=1;
   end;
end;


Function TFrm_Cons_Pro_Nov.fCarregaSimilarlocal(pTipo: Integer):Boolean;
var
x: Integer;
begin
result:=true;
if (TB_PROPDCODPRO.AsFloat<>mcodSimilar) and
   ( (not (TB_PRO.State in [dsEdit,dsInsert])) or (ptipo=1))  then
   begin
   Tb_Cadpro_Sim.Close;
   Tb_Cadpro_Sim.Close;
   Tb_Cadpro_Sim.SQL.Clear;
   Tb_Cadpro_Sim.SQL.Add('Select * from CADPRO_SIMILAR  where '
                         +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' PDSIM_CODEMP=0'+TB_PROPDCODEMP.AsString+' and ')
                         +' PDSIM_CODPRO=0'+TB_PROPDCODPRO.AsString
                         +' order by PDSIM_CODIGO ');
   Tb_Cadpro_Sim.Open;
   mcodSimilar:=TB_PROPDCODPRO.AsFloat;
   mIf_Alterou    :=false;
   end;
end;

procedure TFrm_Cons_Pro_Nov.STG_NUTRICDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;

begin

  inherited;
if (arow)>0 then
   begin

   if (arow mod 2)=0 then
      begin
      STG_NUTRIC.Canvas.Brush.Color := clActiveCaption;
      STG_NUTRIC.Canvas.Font.Color  := clWindow;
      end
   else
      begin
      STG_NUTRIC.Canvas.Font.Color  := clBlack;
      STG_NUTRIC.Canvas.Brush.Color := clMoneyGreen;
      end;
   STG_NUTRIC.Canvas.TextRect(Rect, Rect.Left, rect.Top,STG_NUTRIC.Cells[acol,arow]);
   end;


{
Texto := STG_NUTRIC.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
LarguraTexto := STG_NUTRIC.Canvas.TextWidth(Texto);
AlturaTexto := STG_NUTRIC.Canvas.TextHeight(Texto);

if arow>0 then
   begin
   if (arow mod 2)=0 then
      begin
      STG_NUTRIC.Canvas.Brush.Color := clActiveCaption;
      STG_NUTRIC.Canvas.Font.Color  := clWindow;
      end
   else
      begin
      STG_NUTRIC.Canvas.Font.Color  := clBlack;
      STG_NUTRIC.Canvas.Brush.Color := clMoneyGreen;
      end;

   X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
   Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG_NUTRIC.Canvas.TextRect(Rect, X, Y, Texto);

  end;
}

end;

procedure TFrm_Cons_Pro_Nov.txt_IF_Col_PercVDKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
if key in [',','.'] then
   key:=DecimalSeparator;
end;

procedure TFrm_Cons_Pro_Nov.txt_IF_Col_PercVDExit(Sender: TObject);
begin
  inherited;
txt_IF_Col_PercVD.Text:=FormatFloat(mcasas_pct, valfloat(txt_IF_Col_PercVD.Text));
if not txt_IF_Col_Medida.Focused then
   begin
   if trim(txt_IF_Col_Descricao.Text)='' then
      begin
      fmensagem('Favor Digitar a Descrição!',0,['0'],0);
      txt_IF_Col_Descricao.SetFocus;
      exit;
      end;
   if trim(txt_IF_Col_Medida.Text)='' then
      begin
      fmensagem('Favor Digitar a Medida!',0,['0'],0);
      txt_IF_Col_Medida.SetFocus;
      exit;
      end;
   if mIf_itemman   =-1 then
      begin
      mQtdCol:=STG_NUTRIC.RowCount;
      STG_NUTRIC.RowCount:=mQtdCol+1;
      end
   else
      mQtdCol:=mIf_itemman;

   STG_NUTRIC.Cells[mIF_Col_Descricao,mQtdCol]:=txt_IF_Col_Descricao.Text;
   STG_NUTRIC.Cells[mIF_Col_Medida,mQtdCol]   :=txt_IF_Col_Medida.Text;
   STG_NUTRIC.Cells[mIF_Col_PercVD,mQtdCol]   :=txt_IF_Col_PercVD.Text;

   txt_IF_Col_Descricao.Text:='';
   txt_IF_Col_Medida.Text   :='';
   txt_IF_Col_PercVD.Text   :='';
   txt_IF_Col_Descricao.SetFocus;
   if mIf_itemman=-1 then
      begin
      if mQtdCol>2 then
         STG_NUTRIC.TopRow:=mQtdCol-2;
      end;
   if mQtdCol>0 then
      begin
      STG_NUTRIC.FixedCols:=1;
      if STG_NUTRIC.RowCount>1 then 
         STG_NUTRIC.FixedRows:=1;
      end;

   mIf_itemman    :=-1;
   mIf_Alterou    :=true;
   lbl_if_oper.Caption:='';

   end;
end;

procedure TFrm_Cons_Pro_Nov.ExluirItem1Click(Sender: TObject);
var
mqtd,x: Integer;
begin
  inherited;
mqtd:=STG_NUTRIC.Row;
if trim(STG_NUTRIC.Cells[mIF_Col_Descricao,mqtd])='' then
   begin
   fmensagem('Nenhum registro Selecionado para Exclusão!',0,['0'],0);
   exit;
   end;
if fmensagem('Quer Realmente Excluir o Item: '+STG_NUTRIC.Cells[mIF_Col_Descricao,mqtd],0,['1','2'],2)<>mrYes then
   exit;



if mqtd=2 then
   STG_NUTRIC.Rows[1].Clear
else
   begin
   for x:=STG_NUTRIC.Row to STG_NUTRIC.RowCount-2 do
      begin
      STG_NUTRIC.Cells[00,x]:=STG_NUTRIC.Cells[00,x+1];
      STG_NUTRIC.Cells[01,x]:=STG_NUTRIC.Cells[01,x+1];
      STG_NUTRIC.Cells[02,x]:=STG_NUTRIC.Cells[02,x+1];
      end;
   STG_NUTRIC.RowCount:=STG_NUTRIC.RowCount-1;
   end;

txt_IF_Col_Descricao.Text:='';
txt_IF_Col_Medida.Text   :='';
txt_IF_Col_PercVD.Text   :='';
txt_IF_Col_Descricao.SetFocus;
mIf_itemman    :=-1;



end;

procedure TFrm_Cons_Pro_Nov.STG_NUTRICDblClick(Sender: TObject);
begin
  inherited;
if trim(STG_NUTRIC.Cells[mIF_Col_Descricao,STG_NUTRIC.row])<>'' then
   begin
   mIf_itemman    :=STG_NUTRIC.Row;
   txt_IF_Col_Descricao.Text:= STG_NUTRIC.Cells[mIF_Col_Descricao,mIf_itemman];
   txt_IF_Col_Medida.Text   := STG_NUTRIC.Cells[mIF_Col_Medida,mIf_itemman];
   txt_IF_Col_PercVD.Text   := STG_NUTRIC.Cells[mIF_Col_PercVD,mIf_itemman];
   txt_IF_Col_Descricao.SetFocus;
   end;

end;

procedure TFrm_Cons_Pro_Nov.txt_IF_Col_DescricaoEnter(Sender: TObject);
begin
  inherited;
if mIf_itemman=-1 then
   lbl_if_oper.Caption:='I'
else
   lbl_if_oper.Caption:='A';

end;

procedure TFrm_Cons_Pro_Nov.DBE_CODDEPExit(Sender: TObject);
begin
  inherited;
if TB_PRO.State in [dsEdit,dsInsert] then
   begin
   if TB_PROPDCODDEP.Value>0 then
      begin
      if not flqr1('PRODEP_NOME','PRODEP_','CADPRO_DPTO','N','PRODEP_CODDEP',TB_PROPDCODDEP.AsString) then
         begin
         verteclado(0);
         fMensagem('Departamento de Produt não Cadastrado!',0,['0'],0);
         dbE_coddep.SetFocus;
         end
      else
         TB_PROPDNOMDEP.Value:=DM1.Query1.fields[0].AsString;
      end
   else
      TB_PROPDNOMDEP.Value:=' ';
   end;

end;

procedure TFrm_Cons_Pro_Nov.DBE_CODDEPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
    begin
    TB_PROPDCODDEP.Value:=ValFloat(fChamaProDep(0,'frm_Pro_Nov',Key));
    if TB_PROPDCODDEP.Value <>0 then
       dbe_coddepExit(Self);
    key:=#0;
    end;

end;

procedure TFrm_Cons_Pro_Nov.edt_simCodigoExit(Sender: TObject);
begin
  inherited;
edt_simCodigo.Text:=fdeixanum2(edt_simCodigo.Text);
end;

procedure TFrm_Cons_Pro_Nov.edt_nomeproExit(Sender: TObject);
begin
  inherited;
if (edt_simCodigo.Focused) or (edt_Refer.Focused) then
   exit;

if mOper_ProSim=0 then
   begin
   if trim(edt_nomepro.text)='' then
      begin
      edt_simCodigo.Setfocus;
      exit;
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select count(*) from CADPRO_SIMILAR where '
                     +' PDSIM_CODEMP=0'+TB_PROPDCODEMP.AsString
                     +' and PDSIM_CODPRO=0'+TB_PROPDCODPRO.AsString
                     +' and PDSIM_CODIGO=:CODIGO ');
   DM1.Query1.ParamByName('CODIGO').AsString:=edt_simCodigo.Text;
   DM1.Query1.Open;
   if DM1.Query1.fields[0].AsInteger>0 then
      begin
      edt_simCodigo.Text:='';
      edt_nomepro.Text  :='';
      edt_refer.Text    :='';
      edt_simCodigo.SetFocus;
      mOper_ProSim:=0;
      exit;
      end;
   Tb_Cadpro_Sim.Append;
   Tb_Cadpro_SimPDSIM_CODEMP.Value   :=TB_PROPDCODEMP.AsFloat;
   Tb_Cadpro_SimPDSIM_CODPRO.Value   :=TB_PROPDCODPRO.AsFloat;
   end
else
   begin
   Tb_Cadpro_Sim.GotoBookmark(mPosReg_ProSim);
   if Tb_Cadpro_SimPDSIM_CODIGO.AsString<>edt_simCodigo.Text then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select count(*) from CADPRO_SIMILAR where '
                     +' PDSIM_CODEMP=0'+TB_PROPDCODEMP.AsString
                     +' and PDSIM_CODPRO=0'+TB_PROPDCODPRO.AsString
                     +' and PDSIM_CODIGO=:CODIGO ');
      DM1.Query1.ParamByName('CODIGO').AsString:=edt_simCodigo.Text;
      DM1.Query1.Open;
      if DM1.Query1.fields[0].AsInteger>0 then
         begin
         edt_simCodigo.Text:='';
         edt_nomepro.Text  :='';
         edt_refer.Text    :='';
         edt_simCodigo.SetFocus;
         mOper_ProSim:=0;
         exit;
         end;
      end;
   Tb_Cadpro_Sim.Edit;
   end;


Tb_Cadpro_SimPDSIM_CODIGO.Value   :=fSonumero(edt_simCodigo.Text);
Tb_Cadpro_SimPDSIM_DESCRICAO.Value:=edt_nomepro.Text;
Tb_Cadpro_SimPDSIM_REF.Value      :=edt_refer.Text;
Tb_Cadpro_SimPDSIM_DATHOR_EVE.Value:=NOW;
Tb_Cadpro_Sim.Post;

edt_simCodigo.Text:='';
edt_nomepro.Text  :='';
edt_refer.Text    :='';
edt_simCodigo.SetFocus;
mOper_ProSim:=0;

end;

procedure TFrm_Cons_Pro_Nov.ExcluirSimilarClick(Sender: TObject);
begin
  inherited;
if Tb_Cadpro_SimPDSIM_CODPRO.IsNull then
   exit;
if fmensagem('Quer Realmente Excluir o Nome Similar '+Tb_Cadpro_SimPDSIM_DESCRICAO.AsString,0,['1','2'],2)<>mrYes then
   exit;
Tb_Cadpro_Sim.Delete;
fmensagem('Registro Excluido!',0,['0'],0);

end;

procedure TFrm_Cons_Pro_Nov.dbg_Cadpro_SimDblClick(Sender: TObject);
begin
  inherited;
if Tb_Cadpro_SimPDSIM_CODPRO.IsNull then
   exit;
edt_simCodigo.Text:=Tb_Cadpro_SimPDSIM_CODIGO.AsString;
edt_nomepro.Text  :=Tb_Cadpro_SimPDSIM_DESCRICAO.AsString;
edt_refer.Text    :=Tb_Cadpro_SimPDSIM_REF.AsString;
mPosReg_ProSim:=Tb_Cadpro_Sim.GetBookmark;
edt_simCodigo.SetFocus;

mOper_ProSim:=1;


end;

procedure TFrm_Cons_Pro_Nov.Panel11Exit(Sender: TObject);
begin
  inherited;
edt_simCodigo.Text:='';
edt_nomepro.Text  :='';
edt_refer.Text    :='';

end;

procedure TFrm_Cons_Pro_Nov.c(DataSet: TDataSet);
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

procedure TFrm_Cons_Pro_Nov.bbReplicaClick(Sender: TObject);
begin
  inherited;
testeform := TFrm_Cons_Pro_Nov(FindGlobalComponent('frm_webservice'));
if (testeform=nil)  then
   application.CreateForm(TFrm_WebService, form_WebService)
else
   begin
   form_WebService.Free;
   form_WebService:=nil;
   application.CreateForm(Tfrm_WebService, form_WebService);
   end;

mcinst4:=form_WebService.fAtualizaPrecosProdFilial(0,TB_PROPDCODPRO.AsFloat,TB_PROPDCODEMP.AsFloat,
TB_PROPDCODBAR.AsFloat,TB_PROPDNIVEL.AsFloat,TB_PROPDPRECO1.AsFloat,
TB_PROPDPMC.AsFloat,TB_PROPDPRECO2.AsFloat,TB_PROPDPMC02.AsFloat,
TB_PROPDPRECO3.AsFloat,TB_PROPDPMC03.AsFloat,TB_PROPDDESFIN.AsFloat,

TB_PROPDCODGRU.AsFloat,TB_PROPDCODCON.AsFloat,TB_PROPDCODRAM.AsFloat,
TB_PROPDCODTIP.AsFloat,TB_PROPDLISTA.AsFloat,TB_PROPDPRECOC.AsFloat,
TB_PROPDPCOMC.AsFloat,TB_PROPDPCOFAB.AsFloat,TB_PROPDEMBPAD.AsFloat,
TB_PROPDEMBMUL.AsFloat,TB_PROPDCOMIS.AsFloat,TB_PROPDUCPR.AsFloat,
TB_PROPDPESOB.AsFloat,TB_PROPDPESOL.AsFloat,
TB_PROPDFRACAO.AsFloat,
TB_PROPDCODFOR.AsFloat,TB_PROPDQTDM3.AsFloat,
TB_PROPDUNDVDA.AsFloat,
TB_PROPDVDAMAXM.AsFloat,TB_PROPDIPI.AsFloat,
TB_PROPDPRZVAL_ANOS.AsFloat,TB_PROPDPRZVAL.AsFloat,
TB_PROPDPRZVAL_DIAS.AsFloat,TB_PROPDPRAZO.AsFloat,
TB_PROPDNOME.AsString,
TB_PROPDNOME2.AsString,TB_PROPDMARCA.AsString,TB_PROPDSIT.AsString,
TB_PROPDUND.AsString,TB_PROPDTABICM.AsString,TB_PROPDREGMS.AsString,
TB_PROPDCLAS.AsString,TB_PROPDCODNCM.AsString,TB_PROPDSITCF.AsString,
TB_PROPDREFER.AsString,TB_PROPDAPRES.AsString,
TB_PROPDDTUATP1.Value,
TB_PROPDDTUATP2.Value,
TB_PROPDDTUATP3.Value,
TB_PROPDDATAUA.Value,
TB_PROPDDATA_REPLICA.Value
);
if mcinst4='-1' then
   begin
   DM1.Query2.close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('UPDATE CADPRO set PDDATA_REPLICA=:DATA_REPLICA '
                     +' where PDCODEMP=0'+TB_PROPDCODEMP.AsString
                     +' and PDCODPRO=0'+TB_PROPDCODPRO.AsString);
  DM1.Query2.ParamByName('DATA_REPLICA').AsDateTime:=Date;
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end;



form_WebService.free;
form_WebService:=nil;
SetDecimalSeparator(sys_decimal);

end;

procedure TFrm_Cons_Pro_Nov.db_undExit(Sender: TObject);
begin
  inherited;
db_und.Text:=trim(db_und.Text);
end;

procedure TFrm_Cons_Pro_Nov.bbPadraoMasterClick(Sender: TObject);
begin
  inherited;
fDeletaPadroes(-1,'_PRO','');
fGravaPadroes(-1,'CB_REP_PRECOS'     ,'checked'       ,'_PRO',iif(CB_REP_PRECOS.Checked,'true','false'));
fDeletaPadroes(-1,'_PRO','');
fGravaPadroes(-1,'CB_FILGRU'         ,'checked'       ,'_PRO',iif(CB_FILGRU.Checked,'true','false'));

end;

procedure TFrm_Cons_Pro_Nov.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   action:=cafree;

end;

procedure TFrm_Cons_Pro_Nov.DBGrid1Enter(Sender: TObject);
begin
  inherited;
//KeyPreview:=false;

end;

procedure TFrm_Cons_Pro_Nov.DBGrid1Exit(Sender: TObject);
begin
  inherited;
//KeyPreview:=true;

end;

procedure TFrm_Cons_Pro_Nov.txt_IF_Col_PercVDKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
if Key=VK_ESCAPE then
  DBE_OBSNUTRIC.SetFocus;
end;

procedure TFrm_Cons_Pro_Nov.DBMemo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if (Key=VK_TAB) or (Key=VK_RETURN) then
  txt_IF_Col_Descricao.SetFocus;
end;

procedure TFrm_Cons_Pro_Nov.CODGRUExit(Sender: TObject);
begin
  inherited;
CODGRU.Text:=fdeixanum2(CODGRU.Text);
if Trim(CODGRU.Text)='' then
   NOMGRU.Text:='Todos...'
else
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGRU.Text) then
      begin
      verteclado(0);
      fMensagem('Grupo não Cadastrado!',0,['0'],0);
      CODGRU.Text;
      end
   else
      NOMGRU.Text:=DM1.Query1.fields[0].AsString;
   end;
fCarregaPadraolocal(0);

end;

procedure TFrm_Cons_Pro_Nov.CODGRUKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      CODGRU.Text:=fChamaGPro(0,'frm_Pro',Key);
      if trim(CODGRU.Text)<>'' then
         CODGRUExit(Self);
      key:=#0;
      end;


end;

procedure TFrm_Cons_Pro_Nov.tab_GruposChange(Sender: TObject);
begin
  inherited;
NOMGRU.Text:='Todos...';
CODGRU.Text:='';

if trim(tab_Grupos.Tabs[tab_Grupos.tabIndex])<>'...' then
   begin
   if flqr1('GRCODGRU','GR','CADGRU','C','GRNOMEABREV',trim(tab_Grupos.Tabs[tab_Grupos.tabIndex])) then
      begin
      CODGRU.Text:=DM1.Query1.Fields[0].AsString;
      end;
   end;
CODGRUExit(Self);

end;

procedure TFrm_Cons_Pro_Nov.btn_sgridClick(Sender: TObject);
begin
SalvarGrid('Frm_Pro_Nov', DBGrid1);
end;

procedure TFrm_Cons_Pro_Nov.btn_lgridClick(Sender: TObject);
begin
  inherited;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' delete from CADINFGRID where  GFORMULARIO='+CHR(39)+'Frm_Pro_Nov'+CHR(39));
DM1.Query1.ExecSQL;
end;

procedure TFrm_Cons_Pro_Nov.DB_VALRGMSExit(Sender: TObject);
begin
  inherited;
if trim(TB_PROPDVALREGMS.AsString)<>'' then
  begin
  try
    StrToDate(TB_PROPDVALREGMS.AsString)
  except
    Fmensagem('Não e uma data valida!',0,['0'],0);
    DB_VALRGMS.SetFocus;
    end;
  end;
end;

procedure TFrm_Cons_Pro_Nov.tsSimilarShow(Sender: TObject);
begin
  inherited;
fCarregaSimilarlocal(0);
end;

procedure TFrm_Cons_Pro_Nov.bb_ultvenClick(Sender: TObject);
var
  codpro: String;
  nompro: String;
begin
codpro:=TB_PROPDCODPRO.AsString;
nompro:=TB_PROPDNOME.AsString;
  inherited;
Application.CreateForm(TFrm_UltVen,Frm_UltVen);
Frm_UltVen.FormStyle:=fsNormal;
Frm_UltVen.Visible  :=False;
Frm_UltVen.CODPRO.Text:=codpro;
Frm_UltVen.NOMPRO.Text:=nompro;
Frm_UltVen.CODPRO.Enabled:=False;
Frm_UltVen.ShowModal;
FreeAndNil(Frm_UltVen);
end;

procedure TFrm_Cons_Pro_Nov.bb_ultcompClick(Sender: TObject);
begin
  inherited;
Application.CreateForm(TFrm_UltCPR,Frm_UltCPR);
Frm_UltCPR.Visible  :=False;
Frm_UltCPR.FormStyle:=fsNormal;
Frm_UltCPR.CODPRO.Enabled:=False;
Frm_UltCPR.lbx_codpro.Enabled:=False;
Frm_UltCPR.lbx_codpro.Items.Add(TB_PROPDCODPRO.AsString+' - '+TB_PROPDNOME.AsString);
Frm_UltCPR.ShowModal;
FreeAndNil(Frm_UltCPR);
end;

procedure TFrm_Cons_Pro_Nov.FormShow(Sender: TObject);
var
  x: Integer;
begin

if (not Edit1.Focused) and (proNov_ori<>'consulta') then
   begin
   Edit1.SetFocus;
   end;
if DM6.Tb_Pro_CIN.Active then
   begin
   DM6.Tb_Pro_CIN.Close;
   DM6.Tb_Pro_CIN.SQL.Clear;
   DM6.Tb_Pro_CIN.SQL.Add('Select * from CADPRO_CIN  where '
                         +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CIN_CODEMP=0 and ')
                         +' CIN_CODPRO=0');
   DM6.Tb_Pro_CIN.Open;
   end;
fCarregaPadraolocal(1);


//   btn_Grade.Visible:=False;
   if ValInt(copy(mpseg,1,2))<4 then
      begin
      REGMS.Visible:=True;
      db_rgms.Visible:=True;
      db_valrgms.Visible:=True;
      end
   else
      begin
      REGMS.Visible:=False;
      db_rgms.Visible:=False;
      db_valrgms.Visible:=False;
      end;
   pro_dtvcto:=pdatasis;
   lbl_ProVenc.Visible:=False;
   if ValInt(copy(mpseg,4,2))=01 then
      begin
      DBGrid2.Columns[1].Visible:=True;
      Qr_LGCCLNUMERO.DisplayLabel:='Numero do Lote';
      TsLote.Caption:='&Lotes das Mercadorias';
      if DM1.Tb_PargerPQTDDIAV.Value>0 then
         pro_dtvcto:=pdatasis+DM1.Tb_PargerPQTDDIAV.Value;
      lbl_ProVenc.Caption:='Produtos com Vencimentos Inferior a: '+FormatDateTime(fdt2, pro_dtvcto);
      lbl_ProVenc.Visible:=true;
      end
   else if (valint(copy(mpseg,4,2))=02) then
      begin
      if DM1.Tb_PargerPPCOGRA.Value=1 then
         begin
//         btn_Grade.Visible:=false;
         TsLote.TabVisible:=False;
         end
      else
         begin
//         btn_Grade.Visible:=True;
         TsLote.Caption:='&Grade';
         DBGrid2.Columns[1].Visible:=False;
         Qr_LGCCLNUMERO.DisplayLabel:='Grade';
         end;
      end
   else if (valint(copy(mpseg,4,2))=03) then
      begin
//      btn_Grade.Visible:=True;
      TsLote.Caption:='&Lote';
      DBGrid2.Columns[1].Visible:=False;
      Qr_LGCCLNUMERO.DisplayLabel:='Lote';
      end
   else
      TsLote.TabVisible:=False;

   if DM1.Tb_PargerPCODDBC.Value=1 then
      begin
      btn_dcb.Visible:=True;
      end
   else
      btn_dcb.Visible:=False;


if codemp<100 then
   begin
   if (DM1.Tb_PargerPTEXTOBAIXO.AsString)<>'' then
      begin
      Caption           :='Manutenção no cadastro de produtos '+DM1.Tb_PargerPTEXTOBAIXO.Value;
      lbl_emp.Caption   :=DM1.Tb_PargerPTEXTOBAIXO.Value;
      lbl_emp.Font.Color:=DM1.Tb_PargerPCORTEXBAIXO.AsInteger;
      end
   else
      begin
      Caption           :='Manutenção no cadastro de produtos ';
      lbl_emp.Caption   :='';
      end;
   end
else
   begin
   if (DM1.Tb_PargerPTEXTOALTO.AsString)<>'' then
      begin
      Caption           :='Manutenção no cadastro de produtos '+DM1.Tb_PargerPTEXTOALTO.Value;
      lbl_emp.Caption   :=DM1.Tb_PargerPTEXTOALTO.Value;
      lbl_emp.Font.Color:=DM1.Tb_PargerPCORTEXALTO.AsInteger;
      end
   else
      begin
      Caption           :='Manutenção no cadastro de produtos ';
      lbl_emp.Caption   :='';
      end;
   end;

pro_dtvcto:=pdatasis;
lbl_ProVenc.Visible:=False;
if ValInt(copy(mpseg,4,2))=01 then
   begin
   DBGrid2.Columns[1].Visible:=True;
   Qr_LGCCLNUMERO.DisplayLabel:='Numero do Lote';
   TsLote.Caption:='&Lotes das Mercadorias';
   if DM1.Tb_PargerPQTDDIAV.Value>0 then
      pro_dtvcto:=pdatasis+DM1.Tb_PargerPQTDDIAV.Value;
   lbl_ProVenc.Caption:='Produtos com Vencimentos Inferior a: '+FormatDateTime(fdt2, pro_dtvcto);
   lbl_ProVenc.Visible:=true;
   end
else if (valint(copy(mpseg,4,2))=02) then
   begin
   GB_INFO_GRADE.Visible:=true;
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      begin
//      btn_Grade.Visible:=false;
      TsLote.TabVisible:=False;
      end
   else
      begin
//      btn_Grade.Visible:=True;
      TsLote.Caption:='&Grade';
      DBGrid2.Columns[1].Visible:=False;
      Qr_LGCCLNUMERO.DisplayLabel:='Grade';
      end;
   end
else if (valint(copy(mpseg,4,2))=03) then
   begin
//   btn_Grade.Visible:=True;
   TsLote.Caption:='&Lote';
   DBGrid2.Columns[1].Visible:=False;
   Qr_LGCCLNUMERO.DisplayLabel:='Lote';
   end
else
   TsLote.TabVisible:=False;
if mSoConsulta then
   begin
   bbpdinc_true:=false;
   bbpdalt_true:=false;
   bbpdexc_true:=false;
   end
else
   begin
   if codusr=1111 then
      begin
      bbpdinc_true:=true;
      bbpdalt_true:=true;
      bbpdexc_true:=true;
      end
   else if flcadactab(0,0,IntToStr(codcar),'CADPRO') then
      begin
      if DM4.Tb_AcTabAT_INC.Value=1 then
         bbpdinc_true:=False;
      if DM4.Tb_AcTabAT_ALT.Value=1 then
         bbpdalt_true:=False;
      if DM4.Tb_AcTabAT_EXC.Value=1 then
         bbpdexc_true:=False;
      if DM4.Tb_AcTabAT_ADIC.Value=1 then
         begin
         Tsad.TabVisible:=False;
         tsFiscais.TabVisible:=False;
         end;
      end
   else
      begin
      bbpdinc_true:=true;
      bbpdalt_true:=true;
      bbpdexc_true:=true;
      Tsad.TabVisible:=true;
      tsFiscais.TabVisible:=True;
      end;
   end;
btn_novo.Enabled:=bbpdinc_true;
btn_alterar.Enabled:=bbpdalt_true;
btn_excluir.Enabled:=bbpdexc_true;

if gb_Filtro.Visible then
   Height:=548
else
   Height:=548-86;
Left := (mtamppal - Width) div 2;


mCodpro_Ant:=Tb_ProPDCODPRO.AsFloat;
end;

procedure TFrm_Cons_Pro_Nov.Tb_ProCalcFields(DataSet: TDataSet);

var
query_testaest: tQuery;
query_est: tQuery;
begin
query_testaest:=TQuery.Create(nil);
query_testaest.DatabaseName:='SG_ASSOC';

query_est:=TQuery.Create(nil);
query_est.DatabaseName:='SG_ASSOC';
query_testaest.Close;
query_testaest.SQL.Clear;
query_testaest.SQL.Add('Select  sum(CEQTD_ANALISE)  as CEQTD_ANALISE,sum(CESALDO) as CESALDO,sum(CESALDO_PRAT) AS CESALDO_PRAT,sum(CESALDO_DEP) AS CESALDO_DEP '
                 +'                ,sum(CESALDOR) as CESALDOR,sum(CESALDOC) as CESALDOC,sum(CESALDOT) as CESALDOT, '
                 +'                  sum(CEENTPEN) as CEENTPEN,max(CEDTUENT) as CEDTUENT '
                 +'                  ,max(CEDTUSAI) as CEDTUSAI,sum(CESALDO_REP) as CESALDO_REP '
                 +'                 , max( (select count(*) from CADEST WHERE 1=1 '
                 +fCondicoesMultiEmpresa('CADEST','CECODEMP')
                 +'                         and CECODPRO=:CODPRO AND (CEFILIAL=:FILIAL or CEFILIAL is null))) AS QTDREG '
                 +'                ,sum(DECODE(CEFILIAL,:FILIAL,CESALDO,0)) AS SALDO_FILIAL '
                 +' from CADEST where  CECODPRO=:CODPRO ');

//                 (CECODEMP=:CODEMP OR CECODEMP=:CODEMP_FILIAL) '


query_testaest.sql.add(fCondicoesMultiEmpresa('CADEST','CECODEMP'));
query_testaest.ParamByName('CODPRO').Value              :=Tb_ProPDCODPRO.AsFloat;

query_testaest.ParamByName('FILIAL').AsInteger :=log_filial_padrao;
try
   query_testaest.Open;
except
   query_testaest.SQL.SaveToFile(mpastatemp +'sqlest.txt');
   end;
if (query_testaest.IsEmpty) or (query_testaest.fieldbyName('QTDREG').Asinteger=0) then
   begin
   query_est.Close;
   query_est.Sql.Clear;
   query_est.Sql.add('Insert into CADEST ('
                        +'CECODEMP, '
                        +'CECODPRO, '
                        +'CEFILIAL, '
                        +'CESALDO, '
                        +'CESALDO_PRAT, '
                        +'CESALDO_DEP, '
                        +'CESALDO_REP, '
                        +'CESALDOR,'
                        +'CESALDOC,'
                        +'CESALDOT,'
                        +'CEENTPEN,'
                        +'CEDTUSAI,'
                        +'CEDTUENT'
                        +') Values ('
                        +Inttostr(codemp-iif(codemp>100,100,0))+','
                        +Tb_ProPDCODPRO.AsString+','
                        +Inttostr(log_filial_padrao)+','
                        +'0,' // SALDO
                        +'0,' // SALDO_PRAT
                        +'0,' // SALDO_DEP
                        +'0,' // SALDO_REP
                        +'0,' // SALDOR
                        +'0,' // SALDOC
                        +'0,' // SALDOT
                        +'0,' // ENTPEN
                        +chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)+','
                        +chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)
                        +')');

   try

      query_est.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
//     showmessage('Ocorreu o seguinte erro: '+ e.message);
      ex_erroSql_Novo(query_testaest,111,'func Erro:'+e.Message ,'CADEST');
      ex_erroSql_Novo(query_est,111,'func Erro:'+e.Message ,'CADEST');
      end;
      end;


// inicio

   query_testaest.Close;
   query_testaest.SQL.Clear;

   query_testaest.SQL.Add('Select  sum(CEQTD_ANALISE)  as CEQTD_ANALISE,sum(CESALDO) as CESALDO,sum(CESALDO_PRAT) AS CESALDO_PRAT,sum(CESALDO_DEP) AS CESALDO_DEP '
                     +'                ,sum(CESALDOR) as CESALDOR,sum(CESALDOC) as CESALDOC,sum(CESALDOT) as CESALDOT, '
                     +'                  sum(CEENTPEN) as CEENTPEN,max(CEDTUENT) as CEDTUENT '
                     +'                  ,max(CEDTUSAI) as CEDTUSAI,sum(CESALDO_REP) as CESALDO_REP '
                     +'                 , max( (select count(*) from CADEST WHERE 1=1 '
                     +fCondicoesMultiEmpresa('CADEST','CECODEMP')
                     +'                         and CECODPRO=:CODPRO AND (CEFILIAL=:FILIAL or CEFILIAL is null))) AS QTDREG '
                     +'                ,sum(DECODE(CEFILIAL,:FILIAL,CESALDO,0)) AS SALDO_FILIAL '
                     +' from CADEST where  CECODPRO=:CODPRO ');

    //                 (CECODEMP=:CODEMP OR CECODEMP=:CODEMP_FILIAL) '


   query_testaest.sql.add(fCondicoesMultiEmpresa('CADEST','CECODEMP'));
   query_testaest.ParamByName('CODPRO').Value              :=Tb_ProPDCODPRO.AsFloat;

   query_testaest.ParamByName('FILIAL').AsInteger :=log_filial_padrao;

// termino

{
   query_est.Close;
   query_est.SQL.Clear;
   query_est.SQL.Add('Select  sum(CEQTD_ANALISE)  as CEQTD_ANALISE,sum(CESALDO) as CESALDO,sum(CESALDO_PRAT) AS CESALDO_PRAT,sum(CESALDO_DEP) AS CESALDO_DEP '
                    +'                ,sum(CESALDOR) as CESALDOR,sum(CESALDOC) as CESALDOC,sum(CESALDOT) as CESALDOT, '
                    +'                  sum(CEENTPEN) as CEENTPEN,max(CEDTUENT) as CEDTUENT '
                    +'                  ,max(CEDTUSAI) as CEDTUSAI,sum(CESALDO_REP) as CESALDO_REP '
                    +'                 , max( (select count(*) from CADEST WHERE (CECODEMP=:CODEMP OR CECODEMP=:CODEMP_FILIAL) '
                    +'                         and CECODPRO=:CODPRO AND (CEFILIAL=:FILIAL or CEFILIAL is null))) AS QTDREG '
                    +'                ,sum(DECODE(CEFILIAL,:FILIAL,CESALDO,0)) AS SALDO_FILIAL '
                    +' from CADEST where (CECODEMP=:CODEMP OR CECODEMP=:CODEMP_FILIAL) '
                    +' and CECODPRO=:CODPRO ');


   query_est.ParamByName('CODEMP').AsInteger:=codemp;
   if codemp<100 then
      query_est.ParamByName('CODEMP_FILIAL').AsInteger:=codemp+100
   else
      query_est.ParamByName('CODEMP_FILIAL').AsInteger:=codemp-100;
   query_est.ParamByName('CODPRO').Value              :=Tb_ProPDCODPRO.AsFloat;

   query_est.ParamByName('FILIAL').AsInteger :=log_filial_padrao;
}
   try
      query_testaest.Open;
   except
      query_testaest.SQL.SaveToFile(mpastatemp +'sqlest.txt');
      end;

   end;


Tb_Prosaldo_filial.AsFloat :=query_testaest.fieldByName('SALDO_FILIAL').AsFloat;
Tb_Proestoque.Value:=query_testaest.fieldByName('CESALDO').AsFloat;
Tb_Proestoque_prat.Value:=query_testaest.fieldByName('CESALDO_PRAT').AsFloat;
Tb_Proestoque_dep.Value:=query_testaest.fieldByName('CESALDO_DEP').AsFloat;
Tb_Proestoque_rep.Value:=query_testaest.fieldByName('CESALDO_REP').AsFloat;
Tb_Proestoquer.Value:=query_testaest.fieldByName('CESALDOR').AsFloat;
Tb_Proestoquec.Value:=query_testaest.fieldByName('CESALDOC').AsFloat;
Tb_Proestoquet.Value:=query_testaest.fieldByName('CESALDOT').AsFloat;
Tb_Proentpen.Value  :=Tb_ProPDENTPEN.AsFloat;

//Tb_Proentpen.Value  :=query_testaest.fieldByName('CEENTPEN').AsFloat;

if not query_testaest.fieldByName('CEDTUENT').IsNull then
   Tb_Prodtuent.Value  :=query_testaest.fieldByName('CEDTUent').Value;
if not query_testaest.fieldByName('CEDTUSAI').IsNull then
   Tb_Prodtusai.Value  :=query_testaest.fieldByName('CEDTUSAI').Value;

if DM1.Tb_PargerPUPALNUM.Value=1 then
   begin
   Tb_Propco_custo.Value:=NumPal(FormatFloat(mcasas, Tb_ProPDPRECOC.Value));
   end;

{
if Tb_ProPDNIVEL.Value=0 then
   Tb_Pron_nivel.Value:='Produto Acabado'
else if Tb_ProPDNIVEL.Value=1 then
   Tb_Pron_nivel.Value:='Servicos'
else if Tb_ProPDNIVEL.Value=2 then
   Tb_Pron_nivel.Value:='Materia Prima Revenda'
else if Tb_ProPDNIVEL.Value=3 then
   Tb_Pron_nivel.Value:='Produto Em Producao'
else if Tb_ProPDNIVEL.Value=4 then
   Tb_Pron_nivel.Value:='Materia Prima'
else if Tb_ProPDNIVEL.Value=5 then
   Tb_Pron_nivel.Value:='Insumos'
else if Tb_ProPDNIVEL.Value=6 then
   Tb_Pron_nivel.Value:='Acessórios'
else
   Tb_Pron_nivel.Value:='Outros';
//   Tb_Propcoven.Value:=Arredonda(Tb_ProPDPRECO1.Value+(Tb_ProPDPRECO1.Value* DM1.Tb_PargerPACREGER.Value/100),mQtdCas_arredpu);

}
if par_tpp=1 then
  begin
  if par_acretodos<>0 then
     Tb_Propcoven.Value:=Arredonda(Tb_ProPDPRECO1.Value+(Tb_ProPDPRECO1.Value* par_acretodos/100),mQtdCas_arredpu)
  else if (par_acret0<>0) and (Tb_ProPDCODTIP.Value=0) then
     Tb_Propcoven.Value:=Arredonda(Tb_ProPDPRECO1.Value+(Tb_ProPDPRECO1.Value* par_acret0/100),mQtdCas_arredpu)
  else if (par_acret1<>0) and (Tb_ProPDCODTIP.Value=1) then
     Tb_Propcoven.Value:=Arredonda(Tb_ProPDPRECO1.Value+(Tb_ProPDPRECO1.Value* par_acret1/100),mQtdCas_arredpu)
  else if (par_acred01<>0) and (Tb_ProPDCODTIP.Value<>0) and (Tb_ProPDCODTIP.Value<>1) then
     Tb_Propcoven.Value:=Arredonda(Tb_ProPDPRECO1.Value+(Tb_ProPDPRECO1.Value* par_acred01/100),mQtdCas_arredpu)
  else
     Tb_Propcoven.Value:=Tb_ProPDPRECO1.Value;
  end
else if par_tpp=2 then
  begin
  if par_acretodos<>0 then
     Tb_Propcoven.Value:=Arredonda(Tb_ProPDPRECO2.Value+(Tb_ProPDPRECO2.Value* par_acretodos/100),mQtdCas_arredpu)
  else if (par_acret0<>0) and (Tb_ProPDCODTIP.Value=0) then
     Tb_Propcoven.Value:=Arredonda(Tb_ProPDPRECO2.Value+(Tb_ProPDPRECO2.Value* par_acret0/100),mQtdCas_arredpu)
  else if (par_acret1<>0) and (Tb_ProPDCODTIP.Value=1) then
     Tb_Propcoven.Value:=Arredonda(Tb_ProPDPRECO2.Value+(Tb_ProPDPRECO2.Value* par_acret1/100),mQtdCas_arredpu)
  else if (par_acred01<>0) and (Tb_ProPDCODTIP.Value<>0) and (Tb_ProPDCODTIP.Value<>1) then
     Tb_Propcoven.Value:=Arredonda(Tb_ProPDPRECO2.Value+(Tb_ProPDPRECO2.Value* par_acred01/100),mQtdCas_arredpu)
  else
     Tb_Propcoven.Value:=Tb_ProPDPRECO2.Value;
  end
else if par_tpp=3 then
  begin
  if par_acretodos<>0 then
     Tb_Propcoven.Value:=Arredonda(Tb_ProPDPRECO3.Value+(Tb_ProPDPRECO3.Value* par_acretodos/100),mQtdCas_arredpu)
  else if (par_acret0<>0) and (Tb_ProPDCODTIP.Value=0) then
     Tb_Propcoven.Value:=Arredonda(Tb_ProPDPRECO3.Value+(Tb_ProPDPRECO3.Value* par_acret0/100),mQtdCas_arredpu)
  else if (par_acret1<>0) and (Tb_ProPDCODTIP.Value=1) then
     Tb_Propcoven.Value:=Arredonda(Tb_ProPDPRECO3.Value+(Tb_ProPDPRECO3.Value* par_acret1/100),mQtdCas_arredpu)
  else if (par_acred01<>0) and (Tb_ProPDCODTIP.Value<>0) and (Tb_ProPDCODTIP.Value<>1) then
     Tb_Propcoven.Value:=Arredonda(Tb_ProPDPRECO3.Value+(Tb_ProPDPRECO3.Value* par_acred01/100),mQtdCas_arredpu)
  else
     Tb_Propcoven.Value:=Tb_ProPDPRECO3.Value;
  end
else
  begin
  if par_acretodos<>0 then
     Tb_Propcoven.Value:=Arredonda(Tb_ProPDPRECO1.Value+(Tb_ProPDPRECO1.Value* par_acretodos/100),mQtdCas_arredpu)
  else if (par_acret0<>0) and (Tb_ProPDCODTIP.Value=0) then
     Tb_Propcoven.Value:=Arredonda(Tb_ProPDPRECO1.Value+(Tb_ProPDPRECO1.Value* par_acret0/100),mQtdCas_arredpu)
  else if (par_acret1<>0) and (Tb_ProPDCODTIP.Value=1) then
     Tb_Propcoven.Value:=Arredonda(Tb_ProPDPRECO1.Value+(Tb_ProPDPRECO1.Value* par_acret1/100),mQtdCas_arredpu)
  else if (par_acred01<>0) and (Tb_ProPDCODTIP.Value<>0) and (Tb_ProPDCODTIP.Value<>1) then
     Tb_Propcoven.Value:=Arredonda(Tb_ProPDPRECO1.Value+(Tb_ProPDPRECO1.Value* par_acred01/100),mQtdCas_arredpu)
  else
     Tb_Propcoven.Value:=Tb_ProPDPRECO1.Value;
  end;

Tb_Prodiferenca.Value:=Tb_ProPDPMC.Value-Tb_Propcoven.Value;

if (Tb_Prodiferenca.Value<=0)  then
   Tb_Prodiferenca.Value:=0
else if Tb_ProPDPMC.AsFloat<>0 then
   begin
   Tb_Prodiferenca.Value:=Arredonda((Tb_Prodiferenca.Value*100)
                            /Tb_ProPDPMC.Value,mQtdCas_arredpu);
   end;

if DM1.Tb_PargerPQTDDIAV.Value>0 then
   begin
   query_testaest.close;
   query_testaest.SQL.Clear;
   query_testaest.SQL.add('Select min(CLDTVCTO) from CADLGC where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CLCODEMP=0'+IntTostr(codemp)+' and ')
                     +' CLCODPRO=0'+Tb_ProPDCODPRO.AsString
                     +' and CLDTVCTO>'+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39));
   query_testaest.Open;
   if not query_testaest.Fields[0].IsNull then
      Tb_Prodtvenc.Value:=query_testaest.Fields[0].AsDateTime;
   end;
if (Tb_ProPDDTUATP1.IsNull) or (Tb_ProPDDTUATP1.Value<=pdatanula) then
   Tb_Prodtaltpco1.Value:='/  /'
else
   Tb_Prodtaltpco1.Value:=FormatDateTime(fdt2, Tb_ProPDDTUATP1.Value);
if (Tb_ProPDDTUATP2.IsNull) or (Tb_ProPDDTUATP2.Value<=pdatanula) then
   Tb_Prodtaltpco2.Value:='/  /'
else
   Tb_Prodtaltpco2.Value:=FormatDateTime(fdt2, Tb_ProPDDTUATP2.Value);
if (Tb_ProPDDTUATP3.IsNull) or (Tb_ProPDDTUATP3.Value<=pdatanula) then
   Tb_Prodtaltpco3.Value:='/  /'
else
   Tb_Prodtaltpco3.Value:=FormatDateTime(fdt2, Tb_ProPDDTUATP3.Value);
query_est.close;
FreeAndNil(query_est);
query_testaest.close;
FreeAndNil(query_testaest);



end;

procedure TFrm_Cons_Pro_Nov.Tb_ProAfterInsert(DataSet: TDataSet);
begin
  inherited;
TB_PROPDCODPRO.Value:=cod;

if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
   begin
   if codemp>100 then
      TB_PROPDCODEMP.Value:=codemp-100
   else
      TB_PROPDCODEMP.Value:=codemp;
   end
else
   begin
   if DM1.Qr_TIDTIQTD.AsInteger=1 then
      TB_PROPDCODEMP.Value:=codemp
   else
      begin
      if codemp>100 then
         TB_PROPDCODEMP.Value:=codemp-100
      else
         TB_PROPDCODEMP.Value:=codemp;
      end;
   end;

TB_PROPDSIT.Value:='000';
TB_PROPDLISTA.Value:=0;
if Tb_ProPDNOME.IsNull then
   Tb_ProPDNOME.Value:='_';
Tb_ProPDCODBAR.Value :=0;
Tb_ProPDNIVEL.Value  :=0;
Tb_ProPDCODFOR.Value :=0;
Tb_ProPDPRECO1.Value :=0;
Tb_ProPDPMC.Value    :=0;
Tb_ProPDPRECO2.Value :=0;
Tb_ProPDPRECO3.Value :=0;
Tb_ProPDPRECOA1.Value:=0;
Tb_ProPDPRECOA2.Value:=0;
Tb_ProPDPRECOA3.Value:=0;
Tb_ProPDDESC1.Value  :=0;
Tb_ProPDDESC1A.Value :=0;
Tb_ProPDDESC2.Value  :=0;
Tb_ProPDDESC3.Value  :=0;
Tb_ProPDQTDP.Value   :=0;
Tb_ProPDPRAZO.Value  :=0;
Tb_ProPDSIT.Value    :='000';
Tb_ProPDCODGRU.Value :=0;
Tb_ProPDCODCON.Value :=0;
Tb_ProPDCODRAM.Value :=0;
Tb_ProPDCODTIP.Value :=0;
Tb_ProPDFRACAO.Value :=0;
Tb_ProPDLISTA.Value  :=0;
Tb_ProPDSTATUS.Value :=0;
Tb_ProPDTABICM.Value :='A';
Tb_ProPDREST.Value   :=0;
TB_PROPDDATCAD.AsDateTime:=now;
TB_PROPDUSRINC.AsFloat:=codusr;

Tb_Pro.Post;
Tb_Pro.Edit;
end;

procedure TFrm_Cons_Pro_Nov.Tb_ProBeforeInsert(DataSet: TDataSet);
begin
  inherited;
While true do
   begin
   cod:=flBuscarCodigos(0,'CADPRO');
   if DM1.Tb_PargerPDCADPRO.Value=1 then
      Cod:=Digito(Cod);
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('select count(*) from CADPRO where '
                     +fla_EmpBaixaAlta(0,'CADPRO','',codemp,'PDCODEMP',' and ')
                     +' PDCODPRO=0'+FloatTostr(cod));
   DM1.Query1.Open;

   if DM1.Query1.Fields[0].AsInteger<=0 then
      break;
   end;

{
DM1.Query1.Close;
DM1.Query1.SQl.Clear;
DM1.Query1.SQL.Add('Select max(PDCODPRO) from CADPRO');
if not DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   DM1.Query1.SQl.Add(' where PDCODEMP=0'+InttoStr(codemp));
DM1.Query1.Open;
if DM1.Tb_PargerPDCADPRO.Value=1 then
   begin
   Cod:=StrToInt('0'+Copy(DM1.Query1.Fields[0].AsString,1,Length(DM1.Query1.Fields[0].AsString)-1))+1;
   Cod:=Digito(Cod);
   end
else
   cod:=DM1.Query1.Fields[0].AsFloat+1;
 }

end;

procedure TFrm_Cons_Pro_Nov.Tb_ProBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
if TB_PROPDSIT.isNull then
   TB_PROPDSIT.Value   :='000';
if TB_PROPDCODEMP.IsNull then
   TB_PROPDCODEMP.Value:=codemp;

TB_PROPDDATAUA.Asdatetime    :=Now;
TB_PROPDDTALT.AsDateTime   :=now;
TB_PROPDUSRALT.Value       :=codusr;


if Length(TB_PROPDSITCF.Value)<>3 then
   begin
   TB_PROPDSITCF.Value   :=TB_PROPDSITCF.Value;
   end;


For i:=0 to TB_PRO.FieldCount-1 do
   begin
   if not (TB_PRO.Fields[i].IsNull) then
      Continue;
   if TB_PRO.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,ftdate,ftdatetime] then
      TB_PRO.Fields[i].Value:=0
   else if TB_PRO.fields[i].DataType in [ftDate,ftDateTime] then
      TB_PRO.Fields[i].AsString:=''
   else if TB_PRO.Fields[i].DataType in [ftString,ftMemo] then
      TB_PRO.Fields[i].Value:=' ';
   end;

if (trim(TB_PROPDNOME.AsString)='') or (TB_PROPDNOME.IsNull) then
   TB_PROPDNOME.Value:='_';
if (trim(TB_PROPDNOME2.AsString)='') or (TB_PROPDNOME2.IsNull) then
   TB_PROPDNOME2.Value:='_';
if (trim(TB_PROPDNOMFOR.AsString)='') or (TB_PROPDNOMFOR.IsNull) then
   TB_PROPDNOMFOR.Value:='_';
if (trim(TB_PROPDMARCA.AsString)='') or (TB_PROPDMARCA.IsNull) then
   TB_PROPDMARCA.Value:='_';
if (trim(TB_PROPDCODFAB.AsString)='') or (TB_PROPDCODFAB.IsNull) then
   TB_PROPDCODFAB.Value:='_';
if (trim(Tb_ProPDCLAS.AsString)='') or (Tb_ProPDCLAS.IsNull) then
   TB_PROPDCODNCM.Value:='00001';
if (TB_PROPDCODBAR.IsNull) then
   TB_PROPDCODBAR.Value:=0;
if (TB_PROPDCODFOR.IsNull) then
   TB_PROPDCODFOR.Value:=0;



end;

procedure TFrm_Cons_Pro_Nov.RxDBComboBox2Click(Sender: TObject);
begin
  inherited;
gb_chapas_met.Visible:=false;
if RxDBComboBox2.ItemIndex>0 then
   fcarregaEspeciais(RxDBComboBox2.ItemIndex,true);

end;


function TFrm_Cons_Pro_Nov.fcarregaEspeciais(ptipo: Integer;pforcar: boolean): Boolean;
begin
if (not (Tb_Pro.State in [dsEdit,dsInsert])) or (pForcar) then
   begin
   lbl_nomprod.Caption:='Produto: '+Tb_ProPDCODPRO.AsString+' - '+Tb_ProPDNOME.AsString+' Est.: '+FormatFloat(mcasqtd, Tb_Proestoque.Value);
   gb_chapas_met.Visible:=false;
   if pTipo=1 then
      begin
      tb_cmet.close;
      tb_cmet.SQL.Clear;
      tb_cmet.SQL.Add('Select * from CADPRO_CMET '
                     +' where CMET_CODEMP=:CODEMP'
                     +' and CMET_CODPRO=:CODPRO '
                     +' order by CMET_CODIGO ');
      tb_cmet.ParamByName('CODEMP').AsInteger:=Tb_ProPDCODEMP.AsInteger;
      tb_cmet.ParamByName('CODPRO').AsFloat  :=Tb_ProPDCODPRO.AsFloat;
      try
         tb_cmet.Open;
      except
         ex_erroSql_Novo(tb_cmet,1616,'func','CADPRO_CMET');
         end;
      gb_chapas_met.Visible:=true;
      end;
   end;   


result:=true;
end;

procedure TFrm_Cons_Pro_Nov.tb_cmetAfterEdit(DataSet: TDataSet);
begin
  inherited;

    mcmet_oper:=1;
    mcmet_codigo_ant:=tb_cmetCMET_CODIGO.AsInteger;

end;

procedure TFrm_Cons_Pro_Nov.tb_cmetAfterInsert(DataSet: TDataSet);
begin
  inherited;

    mcmet_oper      :=0;
    mcmet_codigo_ant:=0;

end;

procedure TFrm_Cons_Pro_Nov.tb_cmetBeforeDelete(DataSet: TDataSet);
var
query_exe: TQuery;
begin
  inherited;
query_exe:=TQuery.Create(nil);
query_exe.DatabaseName:='SG_ASSOC';
query_exe.Close;
query_exe.SQL.Clear;
query_exe.SQL.add('Delete from CADPRO_CMET '
                 +' where CMET_CODPRO=:CODPRO '
                +' and CMET_CODEMP=:CODEMP '
                +' and CMET_CODIGO=:CODIGO ');
query_exe.ParamByName('CODPRO').AsInteger:=tb_cmetCMET_CODPRO.AsInteger;
query_exe.ParamByName('CODEMP').AsInteger:=tb_cmetCMET_CODEMP.AsInteger;
query_exe.ParamByName('CODIGO').AsInteger:=tb_cmetCMET_CODIGO.AsInteger;
try
   query_exe.Open;
except
   end;
FreeAndNil(query_exe);


end;

procedure TFrm_Cons_Pro_Nov.tb_cmetBeforePost(DataSet: TDataSet);
var
query_exe: TQuery;
begin
  inherited;

query_exe:=TQuery.Create(nil);
query_exe.DatabaseName:='SG_ASSOC';
query_exe.Close;
query_exe.SQL.Clear;

if mcmet_oper=0 then // se inclusao
   begin
   query_exe.SQL.Add('Select max(CMET_CODIGO) as cod from CADPRO_CMET '
                    +' where CMET_CODPRO=:CODPRO '
                    +' and CMET_CODEMP=:CODEMP ');
   query_exe.ParamByName('CODPRO').AsInteger:=Tb_ProPDCODPRO.AsInteger;
   query_exe.ParamByName('CODEMP').AsInteger:=Tb_ProPDCODEMP.AsInteger;
   try
      query_exe.Open;
   except
      end;
   mcmet_codigo_ant:=query_exe.Fields[0].AsInteger+1;

   query_exe.Close;
   query_exe.SQL.Clear;
   query_exe.SQL.Add('Insert into CADPRO_CMET ('
                    +' CMET_CODEMP '
                    +',CMET_CODPRO '
                    +',CMET_CODIGO '
                    +',CMET_NOME '
                    +',CMET_PRECO '
                    +') values ('
                    +' :CMET_CODEMP '
                    +',:CMET_CODPRO '
                    +',:CMET_CODIGO '
                    +',:CMET_NOME '
                    +',:CMET_PRECO '
                   +')');

   end
else
   begin
   query_exe.SQL.Add('Update CADPRO_CMET set '
                    +' CMET_NOME=:CMET_NOME '
                    +',CMET_PRECO=:CMET_PRECO '
                    +' where CMET_CODEMP=:CMET_CODEMP '
                    +' and CMET_CODPRO=:CMET_CODPRO'
                    +' and CMET_CODIGO=:CMET_CODIGO ');
   end;
tb_cmetCMET_CODEMP.Value:=Tb_ProPDCODEMP. AsInteger;
tb_cmetCMET_CODPRO.Value:=Tb_ProPDCODPRO. AsInteger;
tb_cmetCMET_CODIGO.Value:=mcmet_codigo_ant;

query_exe.ParamByName('CMET_CODEMP').AsInteger:=Tb_ProPDCODEMP.AsInteger;
query_exe.ParamByName('CMET_CODPRO').AsInteger:=Tb_ProPDCODPRO.AsInteger;
query_exe.ParamByName('CMET_CODIGO').AsInteger:=mcmet_codigo_ant;
query_exe.ParamByName('CMET_NOME').AsString   :=tb_cmetCMET_NOME.AsString;
query_exe.ParamByName('CMET_PRECO').AsFloat   :=Tb_ProPDPRECO1.AsFloat;

try
   query_exe.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(query_exe,4559,'_PRO_NOV','CADPRO_CMET');
   end;

FreeAndNil(query_exe);


end;

procedure TFrm_Cons_Pro_Nov.btn_SPadraoClick(Sender: TObject);
begin
fDeletaPadroes(-1,'_PRO_CST','');
fGravaPadroes2(-1,'PDFIS_CST_ICMS_EST_REV'   ,'itemindex'       ,'_PRO_CST',IntTostr(RxDBCB_CST_ICMS_EST_REV.ItemIndex),RxDBCB_CST_ICMS_EST_REV.Text);
fGravaPadroes2(-1,'PDFIS_CST_ICMS_EST_CF'    ,'itemindex'       ,'_PRO_CST',IntTostr(RxDBB_CST_ICMS_EST_CF.ItemIndex),RxDBB_CST_ICMS_EST_CF.Text);
fGravaPadroes2(-1,'PDFIS_CST_ICMS_INT_REV'   ,'itemindex'       ,'_PRO_CST',IntTostr(RxDBCB_CST_ICMS_INT_REV.ItemIndex),RxDBCB_CST_ICMS_INT_REV.Text);
fGravaPadroes2(-1,'PDFIS_CST_ICMS_INT_CF'    ,'itemindex'       ,'_PRO_CST',IntTostr(RxDBCB_CST_ICMS_INT_CF.ItemIndex),RxDBCB_CST_ICMS_INT_CF.Text);
fGravaPadroes2(-1,'PDFIS_PRED_ICMS_EST'      ,'text'            ,'_PRO_CST',DBE_PRED_ICMS_EST.Text,DBE_PRED_ICMS_EST.Text);
fGravaPadroes2(-1,'PDFIS_PRED_ICMS_INT'      ,'text'            ,'_PRO_CST',DBE_PRED_ICMS_INT.Text,DBE_PRED_ICMS_INT.Text);
fGravaPadroes2(-1,'PDFIS_CSOSN_EST_REV'      ,'itemindex'       ,'_PRO_CST',IntTostr(RxDBCB_CSOSN_EST_REV.ItemIndex),RxDBCB_CSOSN_EST_REV.Text);
fGravaPadroes2(-1,'PDFIS_CSOSN_EST_CF'       ,'itemindex'       ,'_PRO_CST',IntTostr(RxDBCB_CSOSN_EST_CF.ItemIndex),RxDBCB_CSOSN_EST_CF.Text);
fGravaPadroes2(-1,'PDFIS_CSOSN_INT_REV'      ,'itemindex'       ,'_PRO_CST',IntTostr(RxDBCB_CSOSN_INT_REV.ItemIndex),RxDBCB_CSOSN_INT_REV.Text);
fGravaPadroes2(-1,'PDFIS_CSOSN_INT_CF'       ,'itemindex'       ,'_PRO_CST',IntTostr(RxDBCB_CSOSN_INT_CF.ItemIndex),RxDBCB_CSOSN_INT_CF.Text);
fGravaPadroes2(-1,'PDFIS_CST_PISCOF_ENTRADA' ,'itemindex'       ,'_PRO_CST',IntTostr(RxDBCB_CST_PISCOF_ENTRADA.ItemIndex),RxDBCB_CST_PISCOF_ENTRADA.Text);
fGravaPadroes2(-1,'PDFIS_CST_PISCOF_SAIDA'   ,'itemindex'       ,'_PRO_CST',IntTostr(RxDBCB_CST_PISCOF_SAIDA.ItemIndex),RxDBCB_CST_PISCOF_SAIDA.Text);

end;

procedure TFrm_Cons_Pro_Nov.bbEstFilialClick(Sender: TObject);
var
form_pro_estfilial: Tfrm_Pro_EstFilial;
begin
  inherited;
if not Tb_ProPDCODPRO.IsNull then
   begin
   Application.CreateForm(Tfrm_Pro_EstFilial, form_Pro_EstFilial);
   form_Pro_EstFilial.lbl_nompro.Caption:=Tb_ProPDCODPRO.AsString+' - '+Tb_ProPDNOME.AsString+'/'+Tb_ProPDMARCA.AsString;
   form_Pro_EstFilial.lbl_precoqtd.Caption:='Preço Unitário: '+FormatFloat(mcasaspu, Tb_Propcoven.asfloat)
                                          +' Quantidade Total: '+FormatFloat(mcasqtd, Tb_Proestoque.asfloat);
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(0,'CADEST','CECODEMP','CFCODEMP','CEFILIAL','CFFILIAL');

   form_pro_estfilial.tb_cadpro_filial.Close;
   form_pro_estfilial.tb_cadpro_filial.SQL.Clear;
   form_pro_estfilial.tb_cadpro_filial.SQL.Add('Select NVL(CESALDO,0) AS CESALDO,CFNOME,CFFILIAL from CADPRO_FILIAL'+iif(la_tabelas='','',',')+la_tabelas
                                              +'       '+la_Join
                                              +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                                              +' (CFCODEMP=:CODEMP OR CFCODEMP=:CODEMP_FILIAL) '
                                              +' AND CECODPRO(+)=:CODPRO order by CFFILIAL ');

   form_pro_estfilial.tb_cadpro_filial.ParamByName('CODEMP').AsInteger:=Tb_ProPDCODEMP.AsInteger;
   if Tb_ProPDCODEMP.AsInteger>100 then
      form_pro_estfilial.tb_cadpro_filial.ParamByName('CODEMP_FILIAL').AsInteger:=Tb_ProPDCODEMP.AsInteger-100
   else
      form_pro_estfilial.tb_cadpro_filial.ParamByName('CODEMP_FILIAL').AsInteger:=Tb_ProPDCODEMP.AsInteger+100;
   form_pro_estfilial.tb_cadpro_filial.ParamByName('CODPRO').AsFloat:=Tb_ProPDCODPRO.AsFloat;
   try
      form_pro_estfilial.tb_cadpro_filial.Open;
   except
      form_pro_estfilial.tb_cadpro_filial.SQL.SaveToFile(mpastatemp +'sql.TXT');
      end;
//   form_pro_estfilial.tb_cadpro_filial.SQL.SaveToFile(mpastatemp +'sql.TXT');

   form_pro_estfilial.ShowModal;
   FreeAndNil(form_pro_estfilial);
   end;

end;

end.
