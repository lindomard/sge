unit S_Cli;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, StdCtrls, ComCtrls, Buttons, ExtCtrls, Mask, DBCtrls,
  s_dm1, FUNC, Grids, DBGrids, S_Ven, db,dbtables, S_Dpto,S_CCu,
  lerarq,S_Bai,S_Red,S_Con,S_UF,S_Tra,S_Ani,S_FigCli,S_RCli,S_Bco,
  jpeg, CheckLst,func2, dbcgrids, ToolWin, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, ToolEdit, RXDBCtrl, S_VendaBloqueada_Relacao
  , S_CliOutFil, S_Cli_Debitos, RxDBComb, Menus, ADODB;

type
  TFrm_Cli = class(TFrm_C)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    RAZAO: TLabel;
    db_razao: TDBEdit;
    NOMFAN: TLabel;
    FANTASIA: TDBEdit;
    Label3: TLabel;
    db_log: TDBEdit;
    Label7: TLabel;
    NOMBAIRRO: TDBEdit;
    Label8: TLabel;
    NOMCID: TDBEdit;
    Label4: TLabel;
    ESTADO: TDBEdit;
    Label9: TLabel;
    db_cep: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label55: TLabel;
    db_pontor: TDBEdit;
    CNPJ: TLabel;
    DB_CNPJ: TDBEdit;
    IE: TLabel;
    GB_ALV: TGroupBox;
    Label14: TLabel;
    dbnalv: TDBEdit;
    Label45: TLabel;
    Tab_ad: TTabSheet;
    Label25: TLabel;
    db_email: TDBEdit;
    Label26: TLabel;
    db_home: TDBEdit;
    CODBAI: TDBEdit;
    CODLOC: TDBEdit;
    Label29: TLabel;
    db_nomcon: TDBEdit;
    Label30: TLabel;
    db_foncon: TDBEdit;
    db_fone01: TDBEdit;
    db_fone02: TDBEdit;
    db_ie: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label51: TLabel;
    db_fax: TDBEdit;
    tab_Fisica: TTabSheet;
    GroupBox13: TGroupBox;
    tab_dadfiscal: TTabSheet;
    gb_diversos: TGroupBox;
    ICMSR: TDBCheckBox;
    CONSF: TDBCheckBox;
    ICMSTP: TDBCheckBox;
    REPAS: TDBCheckBox;
    IPI: TDBCheckBox;
    ICMSNOR: TDBCheckBox;
    DBCB_REDICMSNOR: TDBCheckBox;
    GB_LIMINAR: TGroupBox;
    DBEdit89: TDBEdit;
    DBEdit90: TDBEdit;
    Label50: TLabel;
    db_codtra: TDBEdit;
    db_nomtra: TDBEdit;
    lbl_lc: TLabel;
    lccred: TDBEdit;
    Label40: TLabel;
    Label58: TLabel;
    DBE_ALIQDEB: TDBEdit;
    Label59: TLabel;
    DBCB_DEC5834: TDBCheckBox;
    CBCB_DEC5825: TDBCheckBox;
    dbg_tipcli: TDBRadioGroup;
    Bevel1: TBevel;
    Label44: TLabel;
    Label47: TLabel;
    CODLOCC: TDBEdit;
    NOMCIDC: TDBEdit;
    CODBAIC: TDBEdit;
    Label46: TLabel;
    Label48: TLabel;
    ESTADOC: TDBEdit;
    NOMBAIRROC: TDBEdit;
    Label49: TLabel;
    db_cepc: TDBEdit;
    Bevel2: TBevel;
    Label41: TLabel;
    db_codven: TDBEdit;
    db_nomven: TDBEdit;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label31: TLabel;
    db_codred: TDBEdit;
    db_nomred: TDBEdit;
    Label60: TLabel;
    db_codram: TDBEdit;
    cb_nomram: TDBEdit;
    Label61: TLabel;
    db_codbco01: TDBEdit;
    cb_nombco01: TDBEdit;
    Label27: TLabel;
    dbnumanvisa: TDBEdit;
    Label28: TLabel;
    Bevel5: TBevel;
    db_enderc: TDBEdit;
    db_comis: TDBEdit;
    Label22: TLabel;
    gb_obs: TGroupBox;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    Label35: TLabel;
    dbcb_tab: TDBComboBox;
    db_codpv: TDBEdit;
    Label20: TLabel;
    db_desc: TDBEdit;
    DBEdit2: TDBEdit;
    Label75: TLabel;
    DBEdit8: TDBEdit;
    Label76: TLabel;
    DBEdit10: TDBEdit;
    Label77: TLabel;
    DBEdit12: TDBEdit;
    Label81: TLabel;
    DBEdit16: TDBEdit;
    Label82: TLabel;
    DBEdit17: TDBEdit;
    Label83: TLabel;
    DBEdit18: TDBEdit;
    CLBStatus: TCheckListBox;
    DBRg_situacao: TDBRadioGroup;
    PC_INFCAD: TPageControl;
    ts_RefBan: TTabSheet;
    DBCtrlGrid_RefBan: TDBCtrlGrid;
    DBE_RB_NomBco: TDBEdit;
    lbl_rb_NomBco: TLabel;
    lbl_rb_agencia: TLabel;
    DBE_rb_agencia: TDBEdit;
    lbl_rb_conta: TLabel;
    DBE_rb_conta: TDBEdit;
    lbl_rb_fone: TLabel;
    DBE_rb_fone: TDBEdit;
    lbl_rb_conceito: TLabel;
    DBE_rb_conceito: TDBEdit;
    Panel_rb: TPanel;
    sb_rb_incluir: TSpeedButton;
    sb_rb_excluir: TSpeedButton;
    Src_Cli: TDataSource;
    panel_ad: TPanel;
    Label72: TLabel;
    DBEdit3: TDBEdit;
    Label73: TLabel;
    DBEdit5: TDBEdit;
    Label74: TLabel;
    DBEdit7: TDBEdit;
    gb_vendextra: TGroupBox;
    Label15: TLabel;
    Label18: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    db_codv02: TDBEdit;
    db_nomv02: TDBEdit;
    db_codv03: TDBEdit;
    db_nomv03: TDBEdit;
    db_comis02: TDBEdit;
    db_comis03: TDBEdit;
    db_codv04: TDBEdit;
    db_nomv04: TDBEdit;
    db_comis04: TDBEdit;
    dbc_cctarban: TDBCheckBox;
    Label66: TLabel;
    db_tarban: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label67: TLabel;
    db_nivel: TDBEdit;
    Label71: TLabel;
    db_cotames: TDBEdit;
    dbr_frete: TDBRadioGroup;
    gb_precoprat: TDBRadioGroup;
    BLQPRM: TDBCheckBox;
    dbc_bloqemp: TDBCheckBox;
    gb_visitas: TGroupBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    ts_RefCom: TTabSheet;
    ts_RefPes: TTabSheet;
    ts_OutInf: TTabSheet;
    ts_BensImoveis: TTabSheet;
    Panel_rc: TPanel;
    sb_rc_incluir: TSpeedButton;
    sb_rc_excluir: TSpeedButton;
    DBCtrlGrid_RefCom: TDBCtrlGrid;
    Label87: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    DBE_RC_Nome: TDBEdit;
    DBE_RC_Fone: TDBEdit;
    DBE_RC_Conceito: TDBEdit;
    panel_rp: TPanel;
    sb_rp_incluir: TSpeedButton;
    sb_rp_excluir: TSpeedButton;
    DBCtrlGrid_RefPes: TDBCtrlGrid;
    Label88: TLabel;
    Label89: TLabel;
    Label92: TLabel;
    DBE_RP_Nome: TDBEdit;
    DBE_RP_Fone: TDBEdit;
    DBE_RP_Conceito: TDBEdit;
    Label93: TLabel;
    DBE_RP_TIPO: TDBEdit;
    Label94: TLabel;
    DBE_RP_ENDERECO: TDBEdit;
    panel_oi: TPanel;
    sb_oi_incluir: TSpeedButton;
    sb_oi_excluir: TSpeedButton;
    DBCtrlGrid_OutInf: TDBCtrlGrid;
    DBE_OI_DESCRICAO: TDBMemo;
    panel_bens: TPanel;
    sb_bens_incluir: TSpeedButton;
    sb_bens_excluir: TSpeedButton;
    DBCtrlGrid1: TDBCtrlGrid;
    DBE_BENS_DESCRICAO: TDBMemo;
    DBCb_Bens_Quitado: TDBCheckBox;
    Label54: TLabel;
    db_nat: TDBEdit;
    Label56: TLabel;
    DBE_uf: TDBEdit;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    Label39: TLabel;
    db_estciv: TDBEdit;
    Label43: TLabel;
    dbrg_sexo: TDBRadioGroup;
    Label53: TLabel;
    db_prof: TDBEdit;
    Label105: TLabel;
    db_salario: TDBEdit;
    Label106: TLabel;
    db_outrend: TDBEdit;
    Shape1: TShape;
    Label107: TLabel;
    Label97: TLabel;
    db_local_trab: TDBEdit;
    Label98: TLabel;
    db_fontra: TDBEdit;
    Label99: TLabel;
    db_endtra: TDBEdit;
    Label100: TLabel;
    db_deptra: TDBEdit;
    Label101: TLabel;
    db_cartra: TDBEdit;
    Label102: TLabel;
    db_anotrab: TDBEdit;
    Label103: TLabel;
    db_mestrab: TDBEdit;
    Label104: TLabel;
    Shape2: TShape;
    dbcb_sede: TDBCheckBox;
    Label108: TLabel;
    db_valalug: TDBEdit;
    Label109: TLabel;
    dbe_anores: TDBEdit;
    Label110: TLabel;
    dbe_mesres: TDBEdit;
    Label111: TLabel;
    Label95: TLabel;
    dd_pai: TDBEdit;
    Label96: TLabel;
    db_mae: TDBEdit;
    Shape3: TShape;
    Label112: TLabel;
    CNPF: TLabel;
    DB_CNPF: TDBEdit;
    rg: TLabel;
    db_rg: TDBEdit;
    Label113: TLabel;
    db_orgao: TDBEdit;
    Label114: TLabel;
    GroupBox5: TGroupBox;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Shape4: TShape;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    Shape5: TShape;
    Label139: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    dbe_conj_nat: TDBEdit;
    db_conj_nat_uf: TDBEdit;
    dbe_nacional: TDBEdit;
    db_conj_prof: TDBEdit;
    conj_salario: TDBEdit;
    conj_outrend: TDBEdit;
    db_conj_loctrab: TDBEdit;
    db_conj_fone: TDBEdit;
    db_cnoj_ender: TDBEdit;
    db_conj_depto: TDBEdit;
    db_cnoj_cargo: TDBEdit;
    db_conj_anotrab: TDBEdit;
    db_conj_mestra: TDBEdit;
    db_conj_cnpf: TDBEdit;
    db_conj_rg: TDBEdit;
    db_conj_orgao: TDBEdit;
    Label119: TLabel;
    db_nomeconj: TDBEdit;
    Label38: TLabel;
    DBEdit4: TDBEdit;
    Label52: TLabel;
    db_celular: TDBEdit;
    db_fone03: TDBEdit;
    Label42: TLabel;
    Label57: TLabel;
    DBEdit99: TDBEdit;
    DBEdit100: TDBEdit;
    Label86: TLabel;
    gb_aliquota: TGroupBox;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label13: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    Label135: TLabel;
    DBEdit37: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Label136: TLabel;
    DBEdit23: TDBEdit;
    Label137: TLabel;
    bbDadosPess: TBitBtn;
    bbProxima: TBitBtn;
    db_codbco02: TDBEdit;
    cb_nombco02: TDBEdit;
    bbDevCli: TBitBtn;
    BB_SOBRE: TBitBtn;
    bbAniversario: TBitBtn;
    bbBloqueios: TBitBtn;
    bbSitCred: TBitBtn;
    DBE_Status: TDBEdit;
    Label138: TLabel;
    DBCB_REVENDA_CP: TDBCheckBox;
    DBCB_ICMSST_LIQ: TDBCheckBox;
    Label36: TLabel;
    db_codcv: TDBEdit;
    db_nomcv: TDBEdit;
    Label37: TLabel;
    DBEdit64: TDBEdit;
    Label143: TLabel;
    db_rota: TDBEdit;
    db_nomrota: TDBEdit;
    DBE_nomestatus: TDBEdit;
    Label144: TLabel;
    DBEdit6: TDBEdit;
    Label145: TLabel;
    DBEdit9: TDBEdit;
    DBEdit24: TDBEdit;
    Label146: TLabel;
    DBEdit25: TDBEdit;
    Label147: TLabel;
    tsPvCli: TTabSheet;
    Label148: TLabel;
    DBEdit26: TDBEdit;
    Label149: TLabel;
    DBEdit27: TDBEdit;
    Label150: TLabel;
    DBEdit28: TDBEdit;
    Label151: TLabel;
    GroupBox1: TGroupBox;
    Tb_Cli_PV: TQuery;
    Tb_Cli_PVCPV_CODEMP: TFloatField;
    Tb_Cli_PVCPV_CODCLI: TFloatField;
    Tb_Cli_PVCPV_TABPV: TStringField;
    Tb_Cli_PVCPV_CODPV: TFloatField;
    U_Cli_PV: TUpdateSQL;
    Src_Cli_PV: TDataSource;
    DBNv_cadcli_pv: TDBNavigator;
    DBGrid_cadcli_pv: TDBGrid;
    Tb_Cli_PVnompv: TStringField;
    Tb_Cli_PVprazos: TStringField;
    sbInserir: TSpeedButton;
    DBRG_PEDELE_ORI: TDBRadioGroup;
    Label152: TLabel;
    bbMostrar: TBitBtn;
    edt_senha: TEdit;
    bbConsFiliais: TBitBtn;
    bbExpFor: TBitBtn;
    bbOutObs: TBitBtn;
    DBCB_PEDELE_RETBLOQ: TDBCheckBox;
    tsOticas_Receitas: TTabSheet;
    gb_receitas: TGroupBox;
    Label153: TLabel;
    DBE_titrec: TDBEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    DBE_esfod: TDBEdit;
    DBE_cilod: TDBEdit;
    DBE_Eixood: TDBEdit;
    DBE_prismaod: TDBEdit;
    StaticText7: TStaticText;
    DBE_esfoe: TDBEdit;
    DBE_ciloe: TDBEdit;
    DBE_Eixooe: TDBEdit;
    DBE_prismaoe: TDBEdit;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    DBE_adicao: TDBEdit;
    DBE_dpdnp: TDBEdit;
    Label154: TLabel;
    Label155: TLabel;
    DBE_dtpcons: TDBEdit;
    memo_obs: TDBMemo;
    GroupBox4: TGroupBox;
    Label156: TLabel;
    DBE_OTLENTES_LABOR: TDBEdit;
    Label157: TLabel;
    DBE_OTLENTES_TIPO: TDBEdit;
    bbImprimir_receita: TBitBtn;
    Label158: TLabel;
    DBE_COMP: TDBEdit;
    DBE_NUMERO: TDBEdit;
    Label159: TLabel;
    tab_Fluxo: TTabSheet;
    rg_cxcred: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    lbl_obs2: TLabel;
    DBE_CodDepC: TDBEdit;
    DBE_CodCCuC: TDBEdit;
    DBE_DescMvC: TDBEdit;
    DBCB_NOMDEPC: TDBComboBox;
    DBCB_NOMCCUC: TDBComboBox;
    FNATDCC: TDBEdit;
    gb_cxpag: TGroupBox;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    lbl_obs: TLabel;
    DBE_CodDepD: TDBEdit;
    DBE_CodCCuD: TDBEdit;
    DBE_DescMovD: TDBEdit;
    DBCB_NOMDEPD: TDBComboBox;
    DBCB_NOMCCUD: TDBComboBox;
    DBEdit19: TDBEdit;
    GB_NFSERVICO: TGroupBox;
    Label160: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    Label163: TLabel;
    Label164: TLabel;
    db_ISSQN_ALIQ: TDBEdit;
    db_INSS_Aliq: TDBEdit;
    db_IRRF_Aliq: TDBEdit;
    db_INSS_Red: TDBEdit;
    db_IRRF_Red: TDBEdit;
    SbnEnderCep: TSpeedButton;
    ToolBar1: TToolBar;
    btn_incluir: TBitBtn;
    btn_alterar: TBitBtn;
    btn_excluir: TBitBtn;
    btn_gravar: TBitBtn;
    btn_cancelar: TBitBtn;
    DBNavigator2: TDBNavigator;
    btn_sair: TBitBtn;
    Panel2: TPanel;
    btn_sobre: TBitBtn;
    btn_devolucao: TBitBtn;
    btn_situacao: TBitBtn;
    btn_exporta: TBitBtn;
    btn_aniversariante: TBitBtn;
    bbDebitos: TBitBtn;
    dbe_dturen: TDBDateEdit;
    dbe_dtanvisa: TDBDateEdit;
    dbe_dtalv: TDBDateEdit;
    dbe_dtnas: TDBDateEdit;
    dbe_dtexp: TDBDateEdit;
    dbe_conj_dtnas: TDBDateEdit;
    dbe_conj_dt_exp: TDBDateEdit;
    dbe_dtpcpr: TDBDateEdit;
    dbe_dtcad: TDBDateEdit;
    dbe_dtucpr: TDBDateEdit;
    dbe_dtfundacao: TDBDateEdit;
    bbConsSefaz: TBitBtn;
    btn_salva_fiscais: TButton;
    Label165: TLabel;
    DBCb_pedele_pcopad: TDBComboBox;
    Label166: TLabel;
    dbe_acres: TDBEdit;
    DBCB_PEDELE_BLOQ: TDBCheckBox;
    GroupBox3: TGroupBox;
    DBMemo2: TDBMemo;
    Label167: TLabel;
    RxDBCB_APURA_ICMS: TRxDBComboBox;
    Label168: TLabel;
    DBE_SUFRAMA: TDBEdit;
    TsContatos: TTabSheet;
    puContatos: TPopupMenu;
    Delete1: TMenuItem;
    dbgContatos: TDBGrid;
    GroupBox6: TGroupBox;
    dbmContatos: TDBMemo;
    TsBloqueios: TTabSheet;
    cb_FoneObrigatorio: TCheckBox;
    cb_EmailObrigatorio: TCheckBox;
    cb_ContatoObrigatorio: TCheckBox;
    tsImagemDocumentos: TTabSheet;
    GroupBox7: TGroupBox;
    DBGrid3: TDBGrid;
    Panel5: TPanel;
    sbn_nova: TSpeedButton;
    sbn_alterar: TSpeedButton;
    sbnRenomear: TSpeedButton;
    sbn_excluir: TSpeedButton;
    Tb_CR_imagem: TADOQuery;
    Tb_CR_imagemCI_ROWID: TStringField;
    Tb_CR_imagemCI_SEQ: TFloatField;
    Tb_CR_imagemCI_OBS: TStringField;
    Tb_CR_imagemCI_IMAGEM: TBlobField;
    Src_Dap_imagem: TDataSource;
    Tb_CR_imagemCI_NOMEORI: TStringField;
    bbConsRecFed: TBitBtn;
    CB_VALCCDEP: TCheckBox;
    tsConfiguracaoMaster: TTabSheet;
    Label169: TLabel;
    cb_statuspadrao: TComboBox;
    DBCB_CBLOQCONTROLADO: TDBCheckBox;
    Panel3: TPanel;
    Label170: TLabel;
    DBEdit29: TDBEdit;
    Label171: TLabel;
    DBEdit30: TDBEdit;
    Label172: TLabel;
    DBEdit31: TDBEdit;
    Label173: TLabel;
    dbrg_supermicro: TRxDBComboBox;
    dbcb_CISENTOIE: TDBCheckBox;
    bbPrecoExclusivo: TBitBtn;
    tsCriptografia: TTabSheet;
    Edit2: TEdit;
    bbCriptografar: TBitBtn;
    bbValidar: TBitBtn;
    edt_resultado: TEdit;
    edt_validacao: TEdit;
    Label174: TLabel;
    clb_CBLQEMP: TComboBox;
    DBCheckBox1: TDBCheckBox;
    procedure BBnAtuClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure db_razaoKeyPress(Sender: TObject; var Key: Char);
    procedure ESTADOExit(Sender: TObject);
    procedure DB_CNPFExit(Sender: TObject);
    procedure db_codvenKeyPress(Sender: TObject; var Key: Char);
    procedure db_codv02KeyPress(Sender: TObject; var Key: Char);
    procedure db_codv03KeyPress(Sender: TObject; var Key: Char);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CAMPOExit(Sender: TObject);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure CODLOCExit(Sender: TObject);
    procedure CODBAIKeyPress(Sender: TObject; var Key: Char);
    procedure CODBAIExit(Sender: TObject);
    procedure db_codredKeyPress(Sender: TObject; var Key: Char);
    procedure db_codredExit(Sender: TObject);
    procedure DB_CNPJExit(Sender: TObject);
    procedure DBE_CodDepDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBE_CodCCuDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBE_CodDepCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBE_CodCCuCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_codcvExit(Sender: TObject);
    procedure db_codcvKeyPress(Sender: TObject; var Key: Char);
    procedure CODLOCCExit(Sender: TObject);
    procedure CODLOCCKeyPress(Sender: TObject; var Key: Char);
    procedure CODBAICKeyPress(Sender: TObject; var Key: Char);
    procedure CODBAICExit(Sender: TObject);
    procedure ESTADOCExit(Sender: TObject);
    procedure NOMCIDExit(Sender: TObject);
    procedure db_cepExit(Sender: TObject);
    procedure NOMBAIRROExit(Sender: TObject);
    procedure db_logExit(Sender: TObject);
    procedure ESTADOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ESTADOCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_codvenExit(Sender: TObject);
    procedure db_codv02Exit(Sender: TObject);
    procedure db_codv03Exit(Sender: TObject);
    procedure db_codtraKeyPress(Sender: TObject; var Key: Char);
    procedure db_codtraExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure db_ieExit(Sender: TObject);
    procedure bbAniversarioClick(Sender: TObject);
    procedure BB_SOBREClick(Sender: TObject);
    procedure DBEdit99KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit99Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure db_codramKeyPress(Sender: TObject; var Key: Char);
    procedure db_codramExit(Sender: TObject);
    procedure db_codbco01KeyPress(Sender: TObject; var Key: Char);
    procedure db_codbco01Exit(Sender: TObject);
    procedure db_codv04KeyPress(Sender: TObject; var Key: Char);
    procedure db_codv04Exit(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure bbBloqueiosClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CLBStatusClick(Sender: TObject);
    procedure DBE_CodDepDExit(Sender: TObject);
    procedure DBE_CodCCuDExit(Sender: TObject);
    procedure DBE_CodDepCExit(Sender: TObject);
    procedure DBE_CodCCuCExit(Sender: TObject);
    procedure DBCB_NOMDEPDEnter(Sender: TObject);
    procedure DBCB_NOMDEPCEnter(Sender: TObject);
    procedure DBCB_NOMCCUDEnter(Sender: TObject);
    procedure DBCB_NOMCCUCEnter(Sender: TObject);
    procedure DBCB_NOMDEPDExit(Sender: TObject);
    procedure DBCB_NOMDEPCExit(Sender: TObject);
    procedure DBCB_NOMCCUDExit(Sender: TObject);
    procedure DBCB_NOMCCUCExit(Sender: TObject);
    procedure sb_rb_incluirClick(Sender: TObject);
    procedure sb_rb_excluirClick(Sender: TObject);
    procedure Src_CliDataChange(Sender: TObject; Field: TField);
    procedure PC1Change(Sender: TObject);
    procedure sb_rc_incluirClick(Sender: TObject);
    procedure sb_rc_excluirClick(Sender: TObject);
    procedure sb_rp_incluirClick(Sender: TObject);
    procedure sb_rp_excluirClick(Sender: TObject);
    procedure sb_oi_incluirClick(Sender: TObject);
    procedure sb_oi_excluirClick(Sender: TObject);
    procedure sb_bens_incluirClick(Sender: TObject);
    procedure sb_bens_excluirClick(Sender: TObject);
    procedure DBCtrlGrid_RefBanExit(Sender: TObject);
    procedure DBCtrlGrid_RefComExit(Sender: TObject);
    procedure DBCtrlGrid_RefPesExit(Sender: TObject);
    procedure DBCtrlGrid_OutInfExit(Sender: TObject);
    procedure DBCtrlGrid1Exit(Sender: TObject);
    procedure db_dturenEnter(Sender: TObject);
    procedure db_dturenExit(Sender: TObject);
    procedure DBEdit37KeyPress(Sender: TObject; var Key: Char);
    procedure bbDadosPessClick(Sender: TObject);
    procedure bbProximaClick(Sender: TObject);
    procedure bbDevCliClick(Sender: TObject);
    procedure DBE_RB_NomBcoExit(Sender: TObject);
    procedure DBE_RC_NomeExit(Sender: TObject);
    procedure DBE_RP_NomeExit(Sender: TObject);
    procedure DBE_OI_DESCRICAOExit(Sender: TObject);
    procedure DBE_BENS_DESCRICAOExit(Sender: TObject);
    procedure db_codbco02Exit(Sender: TObject);
    procedure db_codbco02KeyPress(Sender: TObject; var Key: Char);
    procedure bbSitCredClick(Sender: TObject);
    procedure db_rotaExit(Sender: TObject);
    procedure Tb_Cli_PVAfterCancel(DataSet: TDataSet);
    procedure Tb_Cli_PVAfterInsert(DataSet: TDataSet);
    procedure c(DataSet: TDataSet);
    procedure Tb_Cli_PVBeforeEdit(DataSet: TDataSet);
    procedure Tb_Cli_PVBeforeInsert(DataSet: TDataSet);
    procedure Tb_Cli_PVCalcFields(DataSet: TDataSet);
    procedure Tb_Cli_PVBeforePost(DataSet: TDataSet);
    procedure DBGrid_cadcli_pvExit(Sender: TObject);
    procedure sbInserirClick(Sender: TObject);
    procedure bbMostrarClick(Sender: TObject);
    procedure bbConsFiliaisClick(Sender: TObject);
    procedure dbcb_tabKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_codpvKeyPress(Sender: TObject; var Key: Char);
    procedure db_codpvExit(Sender: TObject);
    procedure bbOutObsClick(Sender: TObject);
    procedure bbExpForClick(Sender: TObject);
    procedure SbnEnderCepClick(Sender: TObject);
    procedure db_logEnter(Sender: TObject);
    procedure db_ieEnter(Sender: TObject);
    procedure bbDebitosClick(Sender: TObject);
    procedure db_rotaKeyPress(Sender: TObject; var Key: Char);
    procedure db_razaoExit(Sender: TObject);
    procedure bbConsSefazClick(Sender: TObject);
    procedure btn_salva_fiscaisClick(Sender: TObject);
    procedure db_fone01Exit(Sender: TObject);
    procedure db_fone02Exit(Sender: TObject);
    procedure db_fone03Exit(Sender: TObject);
    procedure db_faxExit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure db_celularExit(Sender: TObject);
    procedure db_fontraExit(Sender: TObject);
    procedure db_conj_foneExit(Sender: TObject);
    procedure DBE_rb_foneExit(Sender: TObject);
    procedure DBE_RC_FoneExit(Sender: TObject);
    procedure DBE_RP_FoneExit(Sender: TObject);
    procedure db_fone01KeyPress(Sender: TObject; var Key: Char);
    procedure db_fone02KeyPress(Sender: TObject; var Key: Char);
    procedure db_fone03KeyPress(Sender: TObject; var Key: Char);
    procedure db_faxKeyPress(Sender: TObject; var Key: Char);
    procedure db_celularKeyPress(Sender: TObject; var Key: Char);
    procedure db_fontraKeyPress(Sender: TObject; var Key: Char);
    procedure db_conj_foneKeyPress(Sender: TObject; var Key: Char);
    procedure dbe_dtnasExit(Sender: TObject);
    procedure DBE_rb_foneKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_RC_FoneKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_RP_FoneKeyPress(Sender: TObject; var Key: Char);
    procedure Delete1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cb_FoneObrigatorioClick(Sender: TObject);
    procedure cb_EmailObrigatorioClick(Sender: TObject);
    procedure cb_ContatoObrigatorioClick(Sender: TObject);
    procedure db_fonconExit(Sender: TObject);
    procedure sbn_novaClick(Sender: TObject);
    procedure sbn_alterarClick(Sender: TObject);
    procedure sbnRenomearClick(Sender: TObject);
    procedure sbn_excluirClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure bbConsRecFedClick(Sender: TObject);
    procedure dbgContatosColExit(Sender: TObject);
    procedure CB_VALCCDEPClick(Sender: TObject);
    procedure cb_statuspadraoExit(Sender: TObject);
    procedure DBRg_situacaoEnter(Sender: TObject);
    procedure DBRg_situacaoExit(Sender: TObject);
    procedure TsContatosExit(Sender: TObject);
    procedure bbPrecoExclusivoClick(Sender: TObject);
    procedure bbCriptografarClick(Sender: TObject);
    procedure bbValidarClick(Sender: TObject);
    procedure clb_CBLQEMPExit(Sender: TObject);
  private
  midcli_src: string;

  mant_status: integer;

  mCondicao_old: String;
  mChave_Old: Integer;
  mant_pedele: Boolean;
  function fcli01lerant(ptipo: Integer): Boolean;
  function fRedirecionarGrid:Boolean;
  function fAtualizarTabelas(pTipo: Integer): Boolean;

  function RevealHint (Control: TControl): THintWindow;

  procedure RemoveHint (var Hint: THintWindow);

  function fAtualizarImagemDocumentos: boolean;

    { Private declarations }
  public
    { Public declarations }
    form_ani: TFrm_Ani;
    Form_VendaBloqueada_Relacao: TFrm_VendaBloqueada_Relacao;
    form_figcli: TFrm_FigCli;
    Form_CliOutFil:tFrm_CliOutFil;
    Form_Cli_Debitos: tFrm_Cli_Debitos;
  end;
function fclitestarMov(pCodcli: Real): Boolean;

var
  Frm_Cli: TFrm_Cli;
  cli_ori: String;
  moper_cli: Integer;
  bbcalt_true : Boolean=True;
  bbcinc_true : Boolean=True;
  bbcexc_true : Boolean=True;
  mdturen_ant: TDatetime;
  macdep     : Boolean=False;
  macccu     : Boolean=False;
  moper_pv   : Integer=0;
  mant_tabpv : string;
  mant_codpv : real=0;
  mcodCli_ant  : Real;
  mcnpj_ant: string;
  mcpf_ant: string;
  mie_ant: string;

implementation

uses S_DM4, S_Assessor, S_DM2, S_DevCli,
   S_For, S_DM6, S_WebService, S_PV, IniFiles,
  S_BuscaCep,S_SitCre, S_NFe_ConsCad, S_DM_MYSQL, S_DM1_ADO,
  s_Imagem_WebCam, func_excecoes, S_Fig_TelaCheia, s_conscad, S_DadosCNPJ,
  s_PrecoExclusivoCliente, Bcrypt, S_PPR;
var
 Form_SitCre: tFrm_SitCre;


{$R *.dfm}

procedure TFrm_Cli.BBnAtuClick(Sender: TObject);
begin
  inherited;
if cli_ori='consulta' then
   begin
   fcli01lerant(0);
   end
else
   begin
   If DM1.Tb_Cli.State in [dsInsert, dsEdit] then
      begin
      verteclado(1);
      Case fmensagem('O registro atual não está gravado!'+#13
                     +'Deseja gravar agora?',0,['1','2','3'],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      end;
   end;
   flcadcli(campo.ItemIndex,1,edit1.Text);
   btn_incluir.Enabled  := bbcinc_true;
   btn_alterar.Enabled  := bbcalt_true;
   btn_gravar.Enabled   := False;
   btn_excluir.Enabled  := bbcexc_true;
   btn_cancelar.Enabled := True;
   end;
end;

procedure TFrm_Cli.DBEdit1Exit(Sender: TObject);
begin
  inherited;
if mcodCli_ant<>DM1.Tb_CliCCODCLI.Value then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',DM1.Tb_CliCCODCLI.AsString) then
      begin
      verteclado(1);
      fmensagem('Este código ja esta cadastrado Nome: '+DM1.Query1.Fields[0].AsString,0,['0'],0);
      DBEdit1.SetFocus;
      exit;
      end
   else
      begin
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Update CADCLI_BENS set CB_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString
                        +' where '
                        +iif(dm1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' CB_CODEMP=0'+DM1.Tb_CliCCODEMP.AsString+' and ')
                        +' CB_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString);
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         end;
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Update CADCLI_IC set IC_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString
                        +' where '
                        +iif(dm1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' IC_CODEMP=0'+DM1.Tb_CliCCODEMP.AsString+' and ')
                        +' IC_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString);
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         end;

      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Update CADCLI_OUTINF set OI_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString
                        +' where '
                        +iif(dm1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' OI_CODEMP=0'+DM1.Tb_CliCCODEMP.AsString+' and ')
                        +' OI_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString);
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         end;

      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Update CADCLI_REFBAN set RB_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString
                        +' where '
                        +iif(dm1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' RB_CODEMP=0'+DM1.Tb_CliCCODEMP.AsString+' and ')
                        +' RB_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString);
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         end;

      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Update CADCLI_REFCOM set RC_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString
                        +' where '
                        +iif(dm1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' RC_CODEMP=0'+DM1.Tb_CliCCODEMP.AsString+' and ')
                        +' RC_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString);
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         end;

      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Update CADCLI_REFPES set RP_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString
                        +' where '
                        +iif(dm1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' RP_CODEMP=0'+DM1.Tb_CliCCODEMP.AsString+' and ')
                        +' RP_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString);
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         end;


      end;

   end;

end;

procedure TFrm_Cli.db_razaoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
{if (key='''') or (key='"')  then
   key:=#0;}

   
end;

procedure TFrm_Cli.ESTADOExit(Sender: TObject);
begin
  inherited;
if trim(DM1.Tb_CliCUF.AsString)='' then
   DM1.Tb_CliCUF.AsString:=DM1.Tb_EmpUF.AsString;
if not flcaduf(0,0,0,DM1.Tb_CliCUF.Value) then
   begin
   verteclado(1);
   fmensagem('Estado Não Cadastrado!',0,['0'],0);
   if ESTADO.ReadOnly then
      CODLOC.SetFocus
   else
      ESTADO.SetFocus;
   exit;
   end;

if (DM1.Tb_CliCALIQA.Value=0) or (DM1.Tb_CliCALIQA.IsNull) then
   DM1.Tb_CliCALIQA.Value:=DM1.Tb_UFPICMSA.Value;
if (DM1.Tb_CliCALIQB.Value=0) or (DM1.Tb_CliCALIQB.IsNull) then
   DM1.Tb_CliCALIQB.Value:=DM1.Tb_UFPICMSB.Value;
if (DM1.Tb_CliCALIQC.Value=0) or (DM1.Tb_CliCALIQC.IsNull) then
   DM1.Tb_CliCALIQC.Value:=DM1.Tb_UFPICMSNC.Value;
if (DM1.Tb_CliCALIQD.Value=0) or (DM1.Tb_CliCALIQD.IsNull) then
   DM1.Tb_CliCALIQD.Value:=DM1.Tb_UFPICMSND.Value;
if (DM1.Tb_CliCALIQE.Value=0) or (DM1.Tb_CliCALIQE.IsNull) then
   DM1.Tb_CliCALIQE.Value:=DM1.Tb_UFPICMSNE.Value;
if (DM1.Tb_CliCALIQF.Value=0) or (DM1.Tb_CliCALIQF.IsNull) then
   DM1.Tb_CliCALIQF.Value:=DM1.Tb_UFPICMSNF.Value;
if (DM1.Tb_CliCALIQG.Value=0) or (DM1.Tb_CliCALIQG.IsNull) then
   DM1.Tb_CliCALIQG.Value:=DM1.Tb_UFPICMSNG.Value;
if (DM1.Tb_CliCALIQH.Value=0) or (DM1.Tb_CliCALIQH.IsNull) then
   DM1.Tb_CliCALIQH.Value:=DM1.Tb_UFPICMSNH.Value;
if (DM1.Tb_CliCALIQI.Value=0) or (DM1.Tb_CliCALIQI.IsNull) then
   DM1.Tb_CliCALIQI.Value:=DM1.Tb_UFPICMSNI.Value;

if DM1.Tb_CliCICMSTP.IsNull then
   DM1.Tb_CliCICMSTP.Value:=iif(DM1.Tb_UFPBICMS.Value='S',1,0);
if Trim(DM1.Tb_CliCUFC.Value)='' then
   DM1.Tb_CliCUFC.Value :=DM1.Tb_CliCUF.Value;



end;

procedure TFrm_Cli.DB_CNPFExit(Sender: TObject);
begin
  inherited;
if CANCELAR.Focused then
   exit;
DM1.Tb_CliCCPF.Value:=fsonumero(DM1.Tb_CliCCPF.AsString);
if not (DM1.Tb_CliCCPF.IsNull) and  (DM1.Tb_CliCCPF.Value<>0) then
   begin
   if DM1.Tb_PargerPDUPCNPJ.Value=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Select CRAZAO,CCODCLI from CADCLI where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CCODEMP=0'+InttoStr(codemp)+' and ')
                        +' CCODCLI<>0'+DM1.Tb_CliCCODCLI.AsString
                        +' and CCPF=0'+DM1.Tb_CliCCPF.AsString);
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
         verteclado(1);
         fmensagem('O CPF.: '+FormatFloat('000"."000"."000"."000"-"00',DM1.Tb_CliCCPF.Value)+' Ja Esta Cadastrado'+#13
                 +' Codigo: '+DM1.Query1.Fields[1].AsString+' '+DM1.Query1.Fields[0].AsString,0,['0'],0);
         DB_CNPF.SetFocus;
         exit;
         end;
      end
   else if DM1.Tb_PargerPDUPCNPJ.Value=1 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Select CRAZAO,CCODCLI from CADCLI where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CCODEMP=0'+InttoStr(codemp)+' and ')
                        +' CCODCLI<>0'+DM1.Tb_CliCCODCLI.AsString
                        +' and CCPF=0'+DM1.Tb_CliCCPF.AsString);
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
         mcinst:='O CPF.: '+FormatFloat('000"."000"."000"."000"-"00',DM1.Tb_CliCCPF.Value)+' Ja Esta Cadastrado'+#13
                 +' Codigo: '+DM1.Query1.Fields[1].AsString+' '+DM1.Query1.Fields[0].AsString;
         verteclado(1);
         if fmensagem(pchar(mcinst),0,['1','2'],2)<>mrYes then
            begin
            DB_CNPF.SetFocus;
            exit;
            end;
         end;
      end;
   end;
if DM1.Tb_PargerPCRITCNPJ.Value=1 then
   begin
   if DM1.Tb_CliCCPF.Value>0 then
      begin
      if not FCPF(FORMATFLOAT('00000000000',DM1.Tb_CliCCPF.Value)) then
         begin
         verteclado(1);
         fmensagem('CNPF digito não confere!',0,['0'],0);
         DB_CNPF.SetFocus;
         exit;
         end;
      end;
   end;

end;

procedure TFrm_Cli.db_codvenKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if DM1.Tb_Cli.State in [DsEdit, DsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_CliCCODVEN.Value:=ValFloat(fChamaVen(0,'frm_Cli',Key));
      db_codvenExit(self);
      Key:=#0;
      end;
   end;
end;

procedure TFrm_Cli.db_codv02KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if DM1.Tb_Cli.State in [DsEdit, DsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_CliCCODV02.Value:=ValFloat(fChamaVen(0,'frm_Cli',Key));
      db_codv02Exit(self);
      key:=#0;
      end;
   end;
end;

procedure TFrm_Cli.db_codv03KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if DM1.Tb_Cli.State in [DsEdit, DsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_CliCCODV03.Value:=ValFloat(fChamaVen(0,'frm_Cli',Key));
      db_codv03Exit(self);
      key:=#0;
      end;
   end;

end;

procedure TFrm_Cli.INCLUIRClick(Sender: TObject);
begin
  inherited;

mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=15;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='ncluir Cliente Favor Digitar a Senha';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;

moper_cli:=0;
// flcadcli(campo.ItemIndex,0,'999999999');
//DM1.Tb_Cli.Append;
CLBStatus.Enabled:=false;
DM1.Tb_Cli.Insert;
DM1.Tb_CliCTPPESSOA.Value:=1;
DM1.Tb_CliCICMSRP.Value  :=1;
mcodCli_ant:=DM1.Tb_CliCCODCLI.AsFloat;
panel_ad.Enabled          :=True;
tab_Fisica.Enabled        :=true;

dbgContatos.ReadOnly      :=False;
dbmContatos.ReadOnly      :=False;


DBE_RB_NomBco.Enabled     :=true;
DBE_rb_agencia.Enabled    :=true;
DBE_rb_conta.Enabled      :=true;
DBE_rb_fone.Enabled       :=true;
DBE_rb_conceito.Enabled   :=true;
Panel_rb.Enabled          :=true;
DBE_RC_Nome.Enabled       :=true;
DBE_RC_Fone.Enabled       :=true;
DBE_RC_Conceito.Enabled   :=true;
Panel_rc.Enabled          :=true;
gb_receitas.Enabled       :=true;
DBE_RP_Nome.Enabled       :=true;
DBE_RP_Fone.Enabled       :=true;
DBE_RP_TIPO.Enabled       :=true;
DBE_RP_ENDERECO.Enabled   :=true;
DBE_RP_Conceito.Enabled   :=true;
panel_rp.Enabled          :=true;


DBE_OI_DESCRICAO.Enabled  :=true;
panel_oi.Enabled          :=true;

DBE_BENS_DESCRICAO.Enabled  :=true;
DBCb_Bens_Quitado.Enabled   :=true;

panel_bens.Enabled          :=true;


dbgContatos.ReadOnly      :=False;
dbmContatos.ReadOnly      :=False;


tab_Fisica.Enabled        :=True;
tab_dadfiscal.Enabled     :=true;
tab_Fluxo.Enabled         :=true;
tsPvCli.Enabled           :=true;
DBEdit1.Enabled           :=True;

if DM1.Tb_CliCDTVALV.Value<=pdatanula then
   DM1.Tb_CliCDTVALV.AsString:='';

if DM1.Tb_CliCDTANVISA.Value<=pdatanula then
   DM1.Tb_CliCDTANVISA.AsString:='';

if DM1.Tb_CliCDTUREN.Value<=pdatanula then
   DM1.Tb_CliCDTUREN.AsString:='';


DM1.Tb_CliCSITCLI.Value:=valint(cb_statuspadrao.Text[1]);
DM1.Tb_CliCBLQEMP.Value:=valint(clb_CBLQEMP.Text[1]);


PC1.ActivePage:=tsCad;
DBRadioGroup1.SetFocus;
flcadcli_refban(1,0,DM1.Tb_CliCCODCLI.AsString);
flcadcli_refcom(1,0,DM1.Tb_CliCCODCLI.AsString);
flcadcli_refpes(1,0,DM1.Tb_CliCCODCLI.AsString);
flcadcli_outinf(1,0,DM1.Tb_CliCCODCLI.AsString);
flcadcli_ic(1,0,DM1.Tb_CliCCODCLI.AsString);
flcadcli_bens(1,0,DM1.Tb_CliCCODCLI.AsString);
flcadcli_con(1,0,DM1.Tb_CliCCODCLI.AsString);
edt_senha.Text:='';
Tb_Cli_PV.Close;
Tb_Cli_PV.SQL.Clear;
Tb_Cli_PV.SQL.Add('Select * from  CADCLI_PV  where '
         +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' CPV_CODEMP=0'+IntToStr(codemp)+' and ')
         +' CPV_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString
         +' order by CPV_TABPV,CPV_CODPV');
Tb_Cli_PV.Open;

if not flcadcli_ic(1,0,DM1.Tb_CliCCODCLI.AsString) then
   DM4.Tb_Cli_IC.Append
else
   DM4.Tb_Cli_IC.Edit;

DM1.Tb_CliCDTCAD.AsString := FormatDateTime(fdt2, date);

btn_incluir.Enabled  := False;
btn_alterar.Enabled  := False;
btn_excluir.Enabled  := False;
btn_gravar.Enabled   := True;
DBNavigator2.Enabled := False;

mcnpj_ant:='';
mcpf_ant :='';
mie_ant  :='';

DM1.Tb_CliCFONE01.AsString :='(62)         ';

if flfilpad(0,'_CLI','ICMSR') then
  DM1.Tb_CliCICMSR.AsInteger:=DM4.Tb_FilPad2FPVALOR.AsInteger;
if flfilpad(0,'_CLI','DBCB_ICMSST_LIQ') then
  DM1.Tb_CliCICMSST_LIQ.AsInteger:=DM4.Tb_FilPad2FPVALOR.AsInteger;
if flfilpad(0,'_CLI','ICMSNOR') then
  DM1.TB_CLICICMSNOR.AsInteger:=DM4.Tb_FilPad2FPVALOR.AsInteger;
if flfilpad(0,'_CLI','ICMSTP') then
  DM1.TB_CLICICMSTP.AsInteger:=DM4.Tb_FilPad2FPVALOR.AsInteger;
if flfilpad(0,'_CLI','DBCB_REDICMSNOR') then
  DM1.Tb_CliCREDICMSNOR.AsInteger:=DM4.Tb_FilPad2FPVALOR.AsInteger;
if flfilpad(0,'_CLI','REPAS') then
  DM1.Tb_CliCREPAS.AsInteger:=DM4.Tb_FilPad2FPVALOR.AsInteger;
if flfilpad(0,'_CLI','IPI') then
  DM1.TB_CLICIPI.AsInteger:=DM4.Tb_FilPad2FPVALOR.AsInteger;
if flfilpad(0,'_CLI','CONSF') then
  DM1.Tb_CliCCONSF.AsInteger:=DM4.Tb_FilPad2FPVALOR.AsInteger;
if flfilpad(0,'_CLI','DBCB_REVENDA_CP') then
  DM1.Tb_CliCREVENDA_CP.AsInteger:=DM4.Tb_FilPad2FPVALOR.AsInteger;
if flfilpad(0,'_CLI','DBCB_DEC5834') then
  DM1.Tb_CliCDEC5834.AsInteger:=DM4.Tb_FilPad2FPVALOR.AsInteger;
if flfilpad(0,'_CLI','CBCB_DEC5825') then
  DM1.Tb_CliCDEC5825.AsInteger:=DM4.Tb_FilPad2FPVALOR.AsInteger;
if flfilpad(0,'_CLI','DBRG_SUPERMICRO') then
  DM1.Tb_CliCSUPERMICRO.AsInteger:=DM4.Tb_FilPad2FPVALOR.AsInteger;
edt_senha.Text:='';
db_razao.SetFocus;

end;

procedure TFrm_Cli.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_CliCCODCLI.IsNull then
   begin
   verteclado(1);
   fmensagem('Não ha registro a ser alterado!',0,['0'],0);
   exit;
   end;
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=15;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Alterar Cliente Favor Digitar a Senha';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;

CLBStatus.Enabled:=false;
moper_cli:=8;
mCodCli_ant:=DM1.Tb_CLICCODCLI.AsFloat;

mcnpj_ant:=FormatFloat('00000000000000', DM1.Tb_CliCCNPJ.AsFloat);
mcpf_ant :=FormatFloat('00000000000', DM1.Tb_CliCCPF.AsFloat);
mie_ant  :=DM1.Tb_CliCIE.AsString;

if (length(trim(DM1.Tb_CliCPEDELE_SENHA.AsString))>0) then
  mant_pedele:=true
else
  mant_pedele:=false;


//flcadcli(1,0,DM1.Tb_CliCCODCLI.AsString);
panel_ad.Enabled          :=True;
DBE_RB_NomBco.Enabled     :=true;
DBE_rb_agencia.Enabled    :=true;
DBE_rb_conta.Enabled      :=true;
DBE_rb_fone.Enabled       :=true;
DBE_rb_conceito.Enabled   :=true;
Panel_rb.Enabled          :=true;
DBE_RC_Nome.Enabled       :=true;
DBE_RC_Fone.Enabled       :=true;
DBE_RC_Conceito.Enabled   :=true;
Panel_rc.Enabled          :=true;

gb_receitas.Enabled       :=true;

DBE_RP_Nome.Enabled       :=true;
DBE_RP_Fone.Enabled       :=true;
DBE_RP_TIPO.Enabled       :=true;
DBE_RP_ENDERECO.Enabled   :=true;
DBE_RP_Conceito.Enabled   :=true;
panel_rp.Enabled          :=true;

DBE_OI_DESCRICAO.Enabled  :=true;
panel_oi.Enabled          :=true;

DBE_BENS_DESCRICAO.Enabled  :=true;
DBCb_Bens_Quitado.Enabled   :=true;

panel_bens.Enabled          :=true;



tab_dadfiscal.Enabled     :=true;
tab_Fluxo.Enabled         :=true;

tab_fisica.Enabled        :=true;

dbgContatos.ReadOnly      :=False;
dbmContatos.ReadOnly      :=False;

tsPvCli.Enabled           :=true;
if not flcadcli_ic(1,0,DM1.Tb_CliCCODCLI.AsString) then
   DM4.Tb_Cli_IC.Append
else
   DM4.Tb_Cli_IC.Edit;
DM1.Tb_Cli.Edit;
if DM1.Tb_CliCDTVALV.Value<=pdatanula then
   DM1.Tb_CliCDTVALV.AsString:='';

if DM1.Tb_CliCDTANVISA.Value<=pdatanula then
   DM1.Tb_CliCDTANVISA.AsString:='';

if DM1.Tb_CliCDTUREN.Value<=pdatanula then
   DM1.Tb_CliCDTUREN.AsString:='';


if DM1.Tb_CliCDTFUNDACAO.Value<=pdatanula then
   DM1.Tb_CliCDTFUNDACAO.AsString:='';
if not DM1.Tb_CliC_DT_EXPRG.IsNull then
   begin
   if DM1.Tb_CliC_DT_EXPRG.Value<=pdatanula then
      DM1.Tb_CliC_DT_EXPRG.AsString:='';
   end;
if not DM4.Tb_Cli_ICIC_DTNAS.IsNull then
   begin
   if DM4.Tb_Cli_ICIC_DTNAS.Value<=pdatanula then
      DM4.Tb_Cli_ICIC_DTNAS.AsString:='';
   end;
if not DM4.Tb_Cli_ICIC_CONJUGE_DT_NAS.IsNull then
   begin
   if DM4.Tb_Cli_ICIC_CONJUGE_DT_NAS.Value<=pdatanula then
      DM4.Tb_Cli_ICIC_CONJUGE_DT_NAS.AsString:='';
   end;
if not DM4.Tb_Cli_ICIC_CONJUGE_DT_EXP.IsNull then
   begin
   if DM4.Tb_Cli_ICIC_CONJUGE_DT_EXP.Value<=pdatanula then
      DM4.Tb_Cli_ICIC_CONJUGE_DT_EXP.AsString:='';
   end;
DBEdit1.Enabled:=False;
if PC1.ActivePage=tsCad then
   DBRadioGroup1.SetFocus
else if PC1.ActivePage=tab_Fisica then
   DBEdit4.SetFocus
else if PC1.ActivePage=Tab_ad then
   db_codv02.SetFocus
else if PC1.ActivePage=tab_dadfiscal then
   ICMSR.SetFocus;
flcadcli_refban(1,0,DM1.Tb_CliCCODCLI.AsString);
flcadcli_refcom(1,0,DM1.Tb_CliCCODCLI.AsString);
flcadcli_refpes(1,0,DM1.Tb_CliCCODCLI.AsString);
flcadcli_outinf(1,0,DM1.Tb_CliCCODCLI.AsString);
flcadcli_bens(1,0,DM1.Tb_CliCCODCLI.AsString);
flcadcli_ic(1,0,DM1.Tb_CliCCODCLI.AsString);
flcadcli_con(1,0,DM1.Tb_CliCCODCLI.AsString);
if DM1.Tb_CliCPEDELE_SENHA.AsString='' then
   edt_senha.Text:=''
else
   edt_senha.Text:=DM1.Tb_CliCPEDELE_SENHA.AsString;
//   edt_senha.Text:=EnDeCripta(DM1.Tb_CLICPEDELE_SENHA.AsString,DM1.Tb_CliCCODCLI.AsInteger);
Tb_Cli_PV.Close;
Tb_Cli_PV.SQL.Clear;
Tb_Cli_PV.SQL.Add('Select * from  CADCLI_PV  where '
         +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' CPV_CODEMP=0'+IntToStr(codemp)+' and ')
         +' CPV_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString
         +' order by CPV_TABPV,CPV_CODPV');
Tb_Cli_PV.Open;

btn_incluir.Enabled  := False;
btn_alterar.Enabled  := False;
btn_excluir.Enabled  := False;
btn_gravar.Enabled   := True;
DBNavigator2.Enabled := False;

end;

procedure TFrm_Cli.GRAVARClick(Sender: TObject);
var
mErroCNPJ,mErroCPF,mErroIE: Boolean;
begin
  inherited;
if Trim(DBEdit1.Text) = '' then begin
   fmensagem('Código do Cliente inválido!',0,['0'],0);
   PC1.ActivePage := tsCad;
   DBEdit1.SetFocus;
   Exit;
end;



if DM1.TB_CLICFONE01.AsString='(62)         ' then
  DM1.TB_CLICFONE01.Clear;

if (DM1.Tb_CliCRAZAO.Value='_') or (DM1.Tb_CliCRAZAO.IsNull) or (trim(DM1.Tb_CliCRAZAO.AsString)='')  then
   begin
   verteclado(1);
   fmensagem('Razão social Invalida!',0,['0'],0);
   PC1.ActivePage:=tsCad;
   db_razao.SetFocus;
   exit;
   end;
if (DM1.Tb_CliCALIQA.Value)>50 then
   begin
   verteclado(1);
   fmensagem('Percentual de Alíquota de ICMS A invalida!',0,['0'],0);
   PC1.ActivePage:=tab_dadfiscal;
   DBEdit37.SetFocus;
   exit;
   end;
if (DM1.Tb_CliCALIQB.Value)>50 then
   begin
   verteclado(1);
   fmensagem('Percentual de Alíquota de ICMS B invalida!',0,['0'],0);
   PC1.ActivePage:=tab_dadfiscal;
   DBEdit41.SetFocus;
   exit;
   end;

if (DM1.Tb_CliCALIQC.Value>50) or
   (DM1.Tb_CliCALIQD.Value>50) or
   (DM1.Tb_CliCALIQE.Value>50) or
   (DM1.Tb_CliCALIQF.Value>50) or
   (DM1.Tb_CliCALIQG.Value>50) or
   (DM1.Tb_CliCALIQH.Value>50) or
   (DM1.Tb_CliCALIQI.Value>50)  then
   begin
   verteclado(1);
   fmensagem('Percentual de Alíquota invalida!',0,['0'],0);
   PC1.ActivePage:=tab_dadfiscal;
   DBEdit41.SetFocus;
   exit;
   end;

if (DM1.Tb_PargerPBLOQCNPJ.AsFloat=1)
   and (DM1.Tb_CliCCNPJ.AsFloat=0)
   and (DM1.Tb_CliCCPF.AsFloat=0)
   and (DM1.Tb_CliCCODCLI.AsFloat>2)
   and (DM1.Tb_CliCUF.AsString<>'EX') then
   begin
   fmensagem('Favor Digitar um CNPJ ou um CPF!',0,['0'],0);
   if DM1.Tb_CliCTPPESSOA.AsFloat=0 then
      begin
      PC1.ActivePage:=tab_Fisica;
      DB_CNPJ.SetFocus;
      end
   else
      begin
      PC1.ActivePage:=tsCad;
      DB_CNPJ.SetFocus;
      end;
   exit;
   end;
if (DM1.Tb_PargerPBLOQCEP.AsFloat=1) and (fsonumero(DM1.Tb_CliCCEP.Value)=0) then
   begin
   fmensagem('Favor Digitar um CEP Válido!',0,['0'],0);
   PC1.ActivePage:=tsCad;
   db_cep.SetFocus;
   exit;
   end;

if cb_EmailObrigatorio.Checked then
  if (length(DM1.Tb_CliCEMAIL.AsString)<=5)  then
    begin
    MessageDlg('E-mail do cliente tem que ser colocado!',mtWarning,[mbOk],0);
    pc1.ActivePage:=tsCad;
    db_email.SetFocus;
    exit;
    end;

if cb_FoneObrigatorio.Checked then
  if (ValFloat(DM1.Tb_CliCFONE01.AsString)<1000) or (DM1.Tb_CliCFONE01.IsNull) then
    begin
    MessageDlg('Telefone do cliente tem que ser colocado!',mtWarning,[mbOk],0);
    pc1.ActivePage:=tsCad;
    db_fone01.SetFocus;
    exit;
    end;
IF (CB_VALCCDEP.Checked=true) and  (length(trim(DM1.Tb_CliCCODCCC.AsString))<1) then
   begin
   PC1.ActivePage:=tab_Fluxo;
   MessageDlg('Centro de Custo para recebimento é obrigatorio!',mtWarning,[mbok],0);
   DBE_CodCCuD.SetFocus;
   exit;
   end;

IF (CB_VALCCDEP.Checked=true) and  (length(trim(DM1.Tb_CliCCODCCD.AsString))<1) then
   begin
   PC1.ActivePage:=tab_Fluxo;
   MessageDlg('Centro de Custo para pagamento é obrigatorio!',mtWarning,[mbok],0);
   DBE_CodCCuC.SetFocus;
   exit;
   end;

IF (CB_VALCCDEP.Checked=true) and  (length(trim(DM1.Tb_CliCCODDEPD.AsString))<1) then
   begin
   PC1.ActivePage:=tab_Fluxo;
   MessageDlg('Departamento para Pagamento é obrigatorio!',mtWarning,[mbok],0);
   DBE_CodDepD.SetFocus;
   exit;
   end;

IF (CB_VALCCDEP.Checked=true) and  (length(trim(DM1.Tb_CliCCODDEPC.AsString))<1) then
   begin
   PC1.ActivePage:=tab_Fluxo;
   MessageDlg('Departamento para Pagamento é obrigatorio!',mtWarning,[mbok],0);
   DBE_CodDepC.SetFocus;
   exit;
   end;


if cb_ContatoObrigatorio.Checked then
  if (length(DM1.Tb_CliCNOMCON.AsString)<=5)  then
    begin
    MessageDlg('Nome do Contato do cliente tem que ser colocado!',mtWarning,[mbOk],0);
    pc1.ActivePage:=tsCad;
    db_nomcon.SetFocus;
    exit;
    end;


if DM1.Tb_CliCDENOM.IsNull then
   DM1.Tb_CliCDENOM.value:=' ';

if DM1.Tb_CliCCNPJ.isnull then
   DM1.Tb_CliCCNPJ.AsFloat:=0;

if DM1.Tb_CliCUF.AsString='' then
   begin
   MessageDlg('UF do cliente tem que ser colocado!',mtWarning,[mbOk],0);
   exit;
   end;


if fCodigoEstado(DM1.Tb_CliCUF.AsString)=0  then
   begin
   MessageDlg('Sigla do Estado '+DM1.Tb_CliCUF.AsString+' é inválida!',mtWarning,[mbOk],0);
   exit;
   end;
if fCodigoEstado(DM1.Tb_CliCUFC.AsString)=0  then
   begin
   MessageDlg('Sigla do Estado '+DM1.Tb_CliCUFC.AsString+' é inválida! (ENDERECO DE COBRANÇA)',mtWarning,[mbOk],0);
   exit;
   end;



{
if (mNFEVersao='2.0') and ( (Fsonumero(DM1.Tb_CliCCNPJ.AsString)>0) or (fSonumero(DM1.Tb_CliCCPF.AsString)>0)
                           or (fSonumero(DM1.Tb_CliCIE.AsString)>0))  then
   begin
    if (mcnpj_ant<>FormatFloat('00000000000000', DM1.Tb_CliCCNPJ.AsFloat)) or
       (mcpf_ant<>FormatFloat('00000000000', DM1.Tb_CliCCPF.AsFloat)) or
       (mie_ant<>DM1.Tb_CliCIE.AsString) or
       (trim(DM1.Tb_CliCIE.AsString)='') or
       (DM1.Tb_CliCCNPJ_CONSISTE.AsString<>'S')
       or ( (DM1.Tb_CliCCNPJ.AsFloat=0) and (DM1.Tb_CliCCPF.AsFloat=0) and (fsonumero(DM1.Tb_CliCIE.AsString)>0))
       then
       begin
       DM1.Tb_CliCCNPJ_CONSISTE.AsString:='N';
       if fChecarCNPJ_IE(0,DM1.Tb_CliCCNPJ.AsString,DM1.Tb_CliCCPF.AsString,DM1.Tb_CliCIE.AsString,DM1.Tb_CliCUF.AsString) then
          begin
          DM1.Tb_CliCCNPJ_CONSISTE.AsString:='S';
          DM1.Tb_CliCCNPJ.Value:=ValFloat(mRetChecar_Cnpj);
          DM1.Tb_CliCCPF.Value:=ValFloat(mRetChecar_Cnpf);
          DM1.Tb_CliCIE.Value:=mRetChecar_IE;
          end
       else
          begin
          if Application.MessageBox('Dados Incorretos Deseja Gravar Assim Mesmo?','',MB_YESNO+MB_DEFBUTTON1)<>mrYes then
             exit;
          end;

       end;
   end;
}
{
if (DM1.Tb_CliCCONSF.AsInteger<>1) and (fsonumero(DM1.Tb_CliCIE.AsString)=0) then
   DM1.Tb_CliCCONSF.AsInteger:=1;
}
if moper_cli=8 then
  FGerarAntes(8,'CADCLI','CCODEMP',DM1.Tb_CliCCODEMP.Asstring,
                 'CCODNOV','CDATHOR_EVE','CCODUSR_EVE',
                 'CSTATUS_EVE',['CCODCLI'],[FloatToStr(mCodCli_Ant)]
                 ,DM1.Tb_Cli);

if Trim(edt_senha.Text)<>'' then
   DM1.Tb_CliCPEDELE_SENHA.Value:=edt_senha.Text
//   DM1.Tb_CliCPEDELE_SENHA.Value:=Crip(edt_senha.Text,DM1.Tb_CliCCODCLI.AsInteger)
else
   DM1.Tb_CliCPEDELE_SENHA.Value:=edt_senha.Text;
if (mant_pedele=true) and (length(trim(DM1.Tb_CliCPEDELE_SENHA.AsString))<1) then
   fCadEle_Atualizada(false,'CADCLI',DM1.Tb_CliCCODCLI.AsString);

DM1.Tb_CliCUSRLAT.Value     :=codusr;
DM1.Tb_CliCDTALT.AsDateTime :=now;
DM1.Tb_CliCHRALT.Value :=FormatDateTime('hh:nn:ss',time);
if Trim(DM1.Tb_CliCBAIRRO.Value)='' then
   DM1.Tb_CliCBAIRRO.Value:='  ';
if Trim(DM1.Tb_CliCCIDADE.Value)='' then
   DM1.Tb_CliCCIDADE.Value:='  ';

if moper=8 then
   begin
   mCondicao_old:=' where CCODEMP='+DM1.Tb_CliCCODEMP.AsString
             +' and CCODCLI='+DM1.Tb_CliCCODCLI.AsString;

   mChave_Old:=fGerarTabelas_Old(8 //status
             ,0 //codigo novo valor chave
             ,'CCODNOV' //nome do campo do novo valor (chave)
             ,'CDATHOR_EVE' // nome do campo data e hora do evento
             ,'CCODUSR_EVE' // nome do campo do usuario
             ,'CSTATUS_EVE' // nome do campo de status
             ,'CADCLI' // nome da tabela
             ,mCondicao_old);
   end;

FAtualizaBanco(1,'CADCLI','CCODEMP',DM1.Tb_CliCCODEMP.AsString
  ,['CCODCLI'],[FloatToStr(mCodCli_Ant)]
  ,DM1.Tb_Cli);



moper_cli:=-1;

DM1.Tb_CliCCH_FONE01.Value :=fdeixanum(DM1.Tb_CliCFONE01.Value);
DM1.Tb_CliCCH_FONE02.Value :=fdeixanum(DM1.Tb_CliCFONE02.Value);
DM1.Tb_CliCCH_CELULAR.Value:=fdeixanum(DM1.Tb_CliCCELULAR.Value);
DM1.Tb_CliCCH_FONCON.Value :=fdeixanum(DM1.Tb_CliCFONCON.Value);
DM1.Tb_CliCCH_FAX.Value    :=fdeixanum(DM1.Tb_CliCFAX.Value);


dm1.tB_cLI.Post;
if DM4.Tb_Cli_IC.State in [dsinsert, dsedit] then
  dm4.Tb_Cli_IC.Post;
TsContatosExit(self);  
CANCELAR.Click;

end;

procedure TFrm_Cli.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_CliCCODCLI.IsNull then
   begin
   verteclado(1);
   fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
   exit;
   end;

if not fclitestarMov(DM1.Tb_CliCCODCLI.AsFloat) then
   begin
   fMensagem('Este Cliente possui Movimento de Compra/Venda. Exclusão Inválida!',0,['0'],0);
   exit;
   end;
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=15;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Excluir Cliente Favor Digitar a Senha';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;

verteclado(1);
if fmensagem('Quer Realmente Excluir o Cliente?',0,['1','2'],2)=mrYes then
   begin
//   flcadcli(1,0,DM1.Tb_CliCCODCLI.AsString);



   if (length(trim(DM1.Tb_CliCPEDELE_SENHA.AsString))>0) then
      fCadEle_Atualizada(true,'CADCLI',DM1.Tb_CliCCODCLI.AsString);

     mCondicao_old:=' where CCODEMP='+DM1.Tb_CliCCODEMP.AsString
                  +' and CCODCLI='+DM1.Tb_CliCCODCLI.AsString;

     mChave_Old:=fGerarTabelas_Old(9 //status
                  ,0 //codigo novo valor chave
                  ,'CCODNOV' //nome do campo do novo valor (chave)
                  ,'CDATHOR_EVE' // nome do campo data e hora do evento
                  ,'CCODUSR_EVE' // nome do campo do usuario
                  ,'CSTATUS_EVE' // nome do campo de status
                  ,'CADCLI' // nome da tabela
                  ,mCondicao_old);


   FAtualizaBanco(2,'CADCLI','CCODEMP',DM1.Tb_CliCCODEMP.AsString
  ,['CCODCLI'],[DM1.Tb_CliCCODCLI.AsString]
  ,DM1.Tb_Cli);

   DM1.Tb_Cli.Delete;
   panel_ad.Enabled          :=false;
   DBE_RB_NomBco.Enabled     :=false;
   DBE_rb_agencia.Enabled    :=false;
   DBE_rb_conta.Enabled      :=false;
   DBE_rb_fone.Enabled       :=false;
   DBE_rb_conceito.Enabled   :=false;
   Panel_rb.Enabled          :=false;
   DBE_RC_Nome.Enabled       :=false;
   DBE_RC_Fone.Enabled       :=false;
   gb_receitas.Enabled       :=false;   
   DBE_RC_Conceito.Enabled   :=false;
   Panel_rc.Enabled          :=false;

   DBE_RP_Nome.Enabled       :=false;
   DBE_RP_Fone.Enabled       :=false;
   DBE_RP_TIPO.Enabled       :=false;
   DBE_RP_ENDERECO.Enabled   :=false;
   DBE_RP_Conceito.Enabled   :=false;
   panel_rp.Enabled          :=false;

   DBE_OI_DESCRICAO.Enabled  :=false;
   panel_oi.Enabled          :=false;

   DBE_BENS_DESCRICAO.Enabled  :=false;
   DBCb_Bens_Quitado.Enabled   :=false;

   panel_bens.Enabled          :=false;

   CANCELAR.Click;
   end;


end;

procedure TFrm_Cli.CANCELARClick(Sender: TObject);
begin
  inherited;

if (moper_cli = 0) and (btn_gravar.Enabled) then
   begin
   FAtualizaBanco(2,'CADCLI','CCODEMP',DM1.Tb_CliCCODEMP.AsString
      ,['CCODCLI'],[FloatToStr(mcodCli_ant)]
      ,DM1.Tb_Cli);
   flDesfazerCodigos(0,'CADCLI',DM1.Tb_CliCCODCLI.Value);
   end;
if DM1.Tb_Cli.State in [dsInsert, DsEdit] then
   DM1.Tb_Cli.Cancel;
if DM4.Tb_Cli_IC.State in [dsInsert, DsEdit] then
   DM4.Tb_Cli_IC.Cancel;
CLBStatus.Enabled:=true;
panel_ad.Enabled          :=false;
DBE_RB_NomBco.Enabled     :=false;
DBE_rb_agencia.Enabled    :=false;
DBE_rb_conta.Enabled      :=false;
DBE_rb_fone.Enabled       :=false;
DBE_rb_conceito.Enabled   :=false;
Panel_rb.Enabled          :=false;
DBE_RC_Nome.Enabled       :=false;
DBE_RC_Fone.Enabled       :=false;
gb_receitas.Enabled       :=false;
DBE_RC_Conceito.Enabled   :=false;
Panel_rc.Enabled          :=false;

DBE_RP_Nome.Enabled       :=false;
DBE_RP_Fone.Enabled       :=false;
DBE_RP_TIPO.Enabled       :=false;
DBE_RP_ENDERECO.Enabled   :=false;
DBE_RP_Conceito.Enabled   :=false;
panel_rp.Enabled          :=false;
tab_fisica.Enabled        :=false;

dbgContatos.ReadOnly      :=True;
dbmContatos.ReadOnly      :=True;

DBE_OI_DESCRICAO.Enabled  :=false;
panel_oi.Enabled          :=false;

DBE_BENS_DESCRICAO.Enabled  :=false;
DBCb_Bens_Quitado.Enabled   :=false;

panel_bens.Enabled          :=false;


tab_dadfiscal.Enabled     :=false;
tab_Fluxo.Enabled         :=false;

tsPvCli.Enabled            :=false;

moper_cli:=-1;
btn_incluir.Enabled   := bbcinc_true;
btn_alterar.Enabled   := bbcalt_true;
btn_excluir.Enabled   := bbcexc_true;
btn_gravar.Enabled    := False;
DBNavigator2.Enabled  := True;


end;

procedure TFrm_Cli.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
If DM1.Tb_Cli.State in [dsInsert, dsEdit] then
   begin
   verteclado(1);
   Case fmensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      else CanClose:=False;
      end;
   end;

if DM1.Tb_CliCRAZAO.Value='_' then
   begin
   flDesfazerCodigos(0,'CADCLI',DM1.Tb_CliCCODCLI.Value);
   DM1.Tb_Cli.Delete;
   end;
if cli_ori='consulta' then
   begin
   DM1.Tb_Cli.SQL.clear;
   DM1.Tb_Cli.Sql.add('Select * from CADCLI '
                     +' where CCODEMP like :CODEMP '
                     +' and   CRAZAO  like :RAZAO '
                     +' and   CCODCLI like :CODCLI '
                     +' and   CCNPJ   like :CNPJ '
                     +' and   CCPF    like :CPF '
                     +' and   CCIDADE like :CIDADE '
                     +' and   CBAIRRO like :BAIRRO '
                     +' and   CCODRED like :CODRED '
                     +' and   CDENOM like :DENOM ');
   end;
end;

procedure TFrm_Cli.FormCreate(Sender: TObject);
begin
  inherited;
if codusr<>1111 then
  tsCriptografia.tabvisible:=false;
//if mNFEVersao='2.0' then
   bbConsSefaz.Visible:=true;
//else
//   bbConsSefaz.Visible:=false;


  PC1.ActivePage := tsCad;


if mredirecionaFormCli then
   fRedirecionarGrid;
if ValInt(copy(mpseg,1,2))=18 then
   tsOticas_Receitas.TabVisible:=true
else
   tsOticas_Receitas.TabVisible:=false;
if codusr=1111 then
   tsConfiguracaoMaster.tabvisible:=true
else
   tsConfiguracaoMaster.tabvisible:=false;

cli_ori:='';
if DM1.Tb_PargerPREDE.Value=1 then
   begin
   Label31.Visible :=True;
   db_codred.Visible :=True;
   db_nomred.Visible:=True;
//   CAMPO.Items.Add('Cód.Rede');
   end
else
   begin
   Label31.Visible :=False;
   db_codred.Visible :=False;
   db_nomred.Visible:=False;
   end;

if DM1.Tb_PargerPCONV.Value=1 then
   begin
   Label36.Visible  :=True;
   db_codcv.Visible :=True;
   db_nomcv.Visible :=True;
   Label37.Visible  :=True;
   DBEdit64.Visible :=True;
   end
else
   begin
   Label36.Visible  :=False;
   db_codcv.Visible :=False;
   db_nomcv.Visible :=False;
   Label37.Visible  :=False;
   DBEdit64.Visible :=False;

   end;



if DM1.Tb_PargerPVISA.Value=1 then
   begin
   GB_ALV.Visible   :=True;
   end
else
   begin
   GB_ALV.Visible   :=False;
   end;
if DM1.Tb_PargerPCODLOC.Value=1 then
   begin
   CODLOC.Visible:=True;
   NOMCID.ReadOnly:=true;
   NOMCID.TabStop :=false;
   NOMCID.ParentColor:=True;
   ESTADO.ReadOnly:=true;
   ESTADO.TabStop :=false;
   ESTADO.ParentColor:=True;
   CODLOCC.Visible:=True;
   NOMCIDC.ReadOnly:=true;
   NOMCIDC.TabStop :=false;
   ESTADOC.ReadOnly:=true;
   ESTADOC.TabStop :=false;
   ESTADOC.ParentColor:=True;
   end
else
   begin
   CODLOC.Visible:=False;
   NOMCID.Left:=487;
   CODLOCC.Visible:=False;
   NOMCIDC.Left:=118;

   end;
if DM1.Tb_PargerPCODBAI.Value=1 then
   begin
   CODBAI.Visible:=True;
   NOMBAIRRO.ReadOnly:=true;
   NOMBAIRRO.TabStop:=False;
   NOMBAIRRO.ParentColor:=True;

   CODBAIC.Visible:=True;
   NOMBAIRROC.ReadOnly:=true;
   NOMBAIRROC.TabStop:=False;
   NOMBAIRROC.ParentColor:=True;

   end
else
   begin
   CODBAI.Visible:=False;
   NOMBAIRRO.Left:=118;
   NOMBAIRRO.Visible:=True;
   CODBAIC.Visible:=False;
   NOMBAIRROC.Left:=481;
   NOMBAIRROC.Visible:=True;

   end;
if flcadactab(0,0,IntToStr(codcar),'CADCLI') then
   begin
   if DM4.Tb_AcTabAT_INC.Value=1 then
      bbcinc_true:=False;
   if DM4.Tb_AcTabAT_ALT.Value=1 then
      bbcalt_true:=False;
   if DM4.Tb_AcTabAT_EXC.Value=1 then
      bbcexc_true:=False;
   end
else
   begin
   bbcinc_true:=true;
   bbcalt_true:=true;
   bbcexc_true:=true;
   end;

if DM1.Tb_PargerPLCVM.Value=1 then
   lbl_lc.Caption:='Valor Mensal';

btn_incluir.Enabled := bbcinc_true;
btn_alterar.Enabled := bbcalt_true;
btn_excluir.Enabled := bbcexc_true;

DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select DNOME,DCODDEP from CADDEP '
                  +iif(DM1.Qr_TID.locate('TINOME','CADDEP',[]),'',' where DCODEMP=0'+IntToStr(codemp)));
DM1.Query5.Open;
DBCB_NOMDEPD.Items.Clear;
DBCB_NOMDEPC.Items.Clear;
While not DM1.Query5.Eof do
   begin
   DBCB_NOMDEPD.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
   DBCB_NOMDEPC.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
   DM1.Query5.Next;
   end;


DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select CCNOME,CCNAT,CCCODCCU from CADCCU '
                  +iif(DM1.Qr_TID.locate('TINOME','CADCCU',[]),'',' where CCCODEMP=0'+IntToStr(codemp)));
DM1.Query5.Open;
DBCB_NOMCCUD.Items.Clear;
DBCB_NOMCCUC.Items.Clear;
While not DM1.Query5.Eof do
   begin
   DBCB_NOMCCUD.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                        +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                        +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');
   DBCB_NOMCCUC.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                        +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                        +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');
   DM1.Query5.Next;
   end;

if codusr=1111 then
   bbDebitos.Visible:=true
else
   bbDebitos.Visible:=false;
IF DBNavigator2.DataSource<>DM1.Src_Cli then
   DBNavigator2.DataSource:=DM1.Src_Cli;
IF DBGrid1.DataSource<>DM1.Src_Cli then
   DBGrid1.DataSource:=DM1.Src_Cli;

DBCb_pedele_pcopad.Items.Clear;
DBCb_pedele_pcopad.Items.Add('PRECO 01');
DBCb_pedele_pcopad.Items.Add('PRECO 02');
DBCb_pedele_pcopad.Items.Add('PRECO 03');

DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.add('SELECT PPPROMOCAO FROM CADPPR'
                  +' where (PPCODEMP=:CODEMP or PPCODEMP=:CODEMP_FILIAL) '
                  +' GROUP BY PPPROMOCAO ');
DM1.Query1.ParamByName('CODEMP').AsInteger:=codemp;
if codemp>100 then
   DM1.Query1.ParamByName('CODEMP_FILIAL').AsInteger:=codemp-100
else
   DM1.Query1.ParamByName('CODEMP_FILIAL').AsInteger:=codemp+100;
DM1.Query1.Open;
While not DM1.Query1.Eof do
   begin
   DBCb_pedele_pcopad.Items.Add(DM1.Query1.fieldbyName('PPPROMOCAO').AsString);
   DM1.Query1.Next;
   end;


end;

procedure TFrm_Cli.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if cli_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   btn_alterar.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   cli_ori:='';
   end;
end;

procedure TFrm_Cli.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if (key=9) or (key=27) then
   begin
   if cli_ori='' then
      begin
      PC1.ActivePageIndex:=0;
      btn_alterar.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      cli_ori:='';
      end;
   abort;
   end;
end;

procedure TFrm_Cli.CAMPOExit(Sender: TObject);
begin
  inherited;
if (   (CAMPO.ItemIndex=0)
    or (CAMPO.ItemIndex=9)
   or  ((CAMPO.ItemIndex>3) and (CAMPO.ItemIndex<8))) then
   Edit1.EditMask:=''
else
   edit1.EditMask:='##############;1; ';
//Edit1.Text:='';
end;

procedure TFrm_Cli.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if DM1.Tb_Cli.State in [DsEdit, DsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_CliCCODLOC.Value:=ValFloat(fChamaLoc(0,'frm_Cli',Key));
      CODLOCExit(self);
      key:=#0;
      end;
   end;

end;

procedure TFrm_Cli.CODLOCExit(Sender: TObject);
begin
  inherited;
if CANCELAR.Focused then
   exit;
if not flcadloc(1,0,DM1.Tb_CliCCODLOC.AsString) then
   begin
   verteclado(1);
   fmensagem('Localidade/Cidade não Cadastrada.',0,['0'],0);
   CODLOC.SetFocus;
   end
else
   begin
   DM1.Tb_CliCCODLOC.Value:=DM1.Tb_LocLCODLOC.Value;
   DM1.Tb_CliCCIDADE.Value:=DM1.Tb_LocLNOME.Value;
   DM1.Tb_CliCUF.Value    :=DM1.Tb_LocLUF.Value;
   if fSonumero(DM1.Tb_CliCCEP.Value)=0 then
      DM1.Tb_CliCCEP.Value:=DM1.Tb_LocLCEP.Value;
   if fSonumero(DM1.Tb_CliCCEPC.Value)=0 then
      DM1.Tb_CliCCEPC.Value:=DM1.Tb_LocLCEP.Value;
   if DM1.Tb_CliCCODLOCC.Value=0 then
      DM1.Tb_CliCCODLOCC.Value:=DM1.Tb_CliCCODLOC.Value;
   if Trim(DM1.Tb_CliCCIDADEC.Value)='' then
      DM1.Tb_CliCCIDADEC.Value:=DM1.Tb_CliCCIDADE.Value;
   if Trim(DM1.Tb_CliCUFC.Value)='' then
      DM1.Tb_CliCUFC.Value :=DM1.Tb_CliCUF.Value;
   if flcaduf(0,0,0,DM1.Tb_CliCUF.Value) then
      begin
      if (DM1.Tb_CliCALIQA.Value=0) or (DM1.Tb_CliCALIQA.IsNull) then
         DM1.Tb_CliCALIQA.Value:=DM1.Tb_UFPICMSA.Value;
      if (DM1.Tb_CliCALIQB.Value=0) or (DM1.Tb_CliCALIQB.IsNull) then
         DM1.Tb_CliCALIQB.Value:=DM1.Tb_UFPICMSB.Value;
      if (DM1.Tb_CliCALIQC.Value=0) or (DM1.Tb_CliCALIQC.IsNull) then
         DM1.Tb_CliCALIQC.Value:=DM1.Tb_UFPICMSNC.Value;
      if (DM1.Tb_CliCALIQD.Value=0) or (DM1.Tb_CliCALIQD.IsNull) then
         DM1.Tb_CliCALIQD.Value:=DM1.Tb_UFPICMSND.Value;
      if (DM1.Tb_CliCALIQE.Value=0) or (DM1.Tb_CliCALIQE.IsNull) then
         DM1.Tb_CliCALIQE.Value:=DM1.Tb_UFPICMSNE.Value;
      if (DM1.Tb_CliCALIQF.Value=0) or (DM1.Tb_CliCALIQF.IsNull) then
         DM1.Tb_CliCALIQF.Value:=DM1.Tb_UFPICMSNF.Value;
      if (DM1.Tb_CliCALIQG.Value=0) or (DM1.Tb_CliCALIQG.IsNull) then
         DM1.Tb_CliCALIQG.Value:=DM1.Tb_UFPICMSNG.Value;
      if (DM1.Tb_CliCALIQH.Value=0) or (DM1.Tb_CliCALIQH.IsNull) then
         DM1.Tb_CliCALIQH.Value:=DM1.Tb_UFPICMSNH.Value;
      if (DM1.Tb_CliCALIQI.Value=0) or (DM1.Tb_CliCALIQI.IsNull) then
         DM1.Tb_CliCALIQI.Value:=DM1.Tb_UFPICMSNI.Value;

      end;


   end;
end;

procedure TFrm_Cli.CODBAIKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if DM1.Tb_Cli.State in [DsEdit, DsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_CliCCODBAI.Value:=ValFloat(fChamaBai(0,'frm_Cli',Key));
      CODBAIExit(self);
      key:=#0;
      end;
   end;

end;

procedure TFrm_Cli.CODBAIExit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_CliCCODBAI.Value=0) or (DM1.Tb_CliCCODBAI.IsNull) then
   begin
   DM1.Tb_CliCCODBAI.Value:=0;
   DM1.Tb_CliCBAIRRO.Value:='';
   exit;
   end;

if (CANCELAR.Focused) then
   exit;
if not flcadbai(1,0,DM1.Tb_CliCCODBAI.AsString) then
   begin
   verteclado(1);
   fmensagem('Bairro não Cadastrada.',0,['0'],0);
   CODBAI.SetFocus;
   end
else
   begin
   DM1.Tb_CliCCODBAI.Value:=DM1.Tb_BaiBCODBAI.Value;
   DM1.Tb_CliCBAIRRO.Value:=DM1.Tb_BaiBNOME.Value;
   if DM1.Tb_CliCCODBAIC.Value=0 then
      DM1.Tb_CliCCODBAIC.Value:=DM1.Tb_CliCCODBAI.Value;
   if Trim(DM1.Tb_CliCBAIRROC.Value)='' then
      DM1.Tb_CliCBAIRROC.Value:=DM1.Tb_CliCBAIRRO.Value;

   end;
end;

function tfrm_Cli.fcli01lerant(ptipo: Integer):Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
minstru:=' Select ';
v:='';
for x:=0 to DM1.Tb_Cli.FieldCount-1 do
   begin
   if DM1.Tb_Cli.Fields[x].FieldKind=fkCalculated then
      Continue;
   if UpperCase(copy(DM1.Tb_Cli.Fields[x].FieldName,1,2))='ID' then
      minstru:=minstru+v+' ROWID as '+DM1.Tb_Cli.Fields[x].FieldName
   else
      minstru:=minstru+v+DM1.Tb_cli.Fields[x].FieldName;

   v:=',';
   end;
minstru:=minstru+' from OLD_CADCLI where CCODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM1.Tb_Cli.Close;
DM1.Tb_Cli.SQL.Clear;
DM1.Tb_Cli.SQL.add(minstru);
DM1.Tb_Cli.Open;
if DM1.Qr_EventoSTATUS.Value=8 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Select * from CADCLI where CCODEMP=0'+DM1.Tb_CliCCODEMP.AsString
                     +' and CCODCLI=0'+DM1.Tb_CliCCODCLI.AsString);
   DM1.Query1.Open;
//   if DM1.Query1.FieldByName(DM1.Tb_CliCTIPOC.FieldName).Value<>DM1.Tb_CliCTIPOC.Value then
//      RG_TIPOP.Font.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCRAZAO.FieldName).Value<>DM1.Tb_CliCRAZAO.Value then
      db_razao.Color:=clRed;
   if FANTASIA.Visible then
      begin
      if DM1.Query1.FieldByName(DM1.Tb_CliCDENOM.FieldName).Value<>DM1.Tb_CliCDENOM.Value then
         FANTASIA.Color:=clRed;
      end;
   if DM1.Query1.FieldByName(DM1.Tb_CliCLOG.FieldName).Value<>DM1.Tb_CliCLOG.Value then
      db_log.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCBAIRRO.FieldName).Value<>DM1.Tb_CliCBAIRRO.Value then
      NOMBAIRRO.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCCIDADE.FieldName).Value<>DM1.Tb_CliCCIDADE.Value then
      NOMCID.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCUF.FieldName).Value<>DM1.Tb_CliCUF.Value then
      ESTADO.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCCEP.FieldName).Value<>DM1.Tb_CliCCEP.Value then
      db_cep.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCPONTOR.FieldName).Value<>DM1.Tb_CliCPONTOR.Value then
      db_pontor.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCFONERES.FieldName).Value<>DM1.Tb_CliCFONERES.Value then
      db_fone01.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCFONECOM.FieldName).Value<>DM1.Tb_CliCFONECOM.Value then
      db_fone02.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCCELULAR.FieldName).Value<>DM1.Tb_CliCCELULAR.Value then
      db_celular.Color:=clRed;
   if DB_CNPJ.Visible then
      begin
      if DM1.Query1.FieldByName(DM1.Tb_CliCCNPJ.FieldName).Value<>DM1.Tb_CliCCNPJ.Value then
         DB_CNPJ.Color:=clRed;
      end;
   if DB_CNPF.Visible then
      begin
      if DM1.Query1.FieldByName(DM1.Tb_CliCCPF.FieldName).Value<>DM1.Tb_CliCCPF.Value then
         DB_CNPF.Color:=clRed;
      end;
   if db_ie.Visible then
      begin
      if DM1.Query1.FieldByName(DM1.Tb_CliCIE.FieldName).Value<>DM1.Tb_CliCIE.Value then
         db_ie.Color:=clRed;
      end;
   if db_rg.Visible then
      begin
      if DM1.Query1.FieldByName(DM1.Tb_CliCRG.FieldName).Value<>DM1.Tb_CliCRG.Value then
         DB_rg.Color:=clRed;
      end;


//   if DM1.Query1.FieldByName(DM1.Tb_CliCCODPV.FieldName).Value<>DM1.Tb_CliCCODPV.Value then
//      DBEdit39.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCCODVEN.FieldName).Value<>DM1.Tb_CliCCODVEN.Value then
      db_codven.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCLCRED.FieldName).Value<>DM1.Tb_CliCLCRED.Value then
      lccred.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCALIQA.FieldName).Value<>DM1.Tb_CliCALIQA.Value then
      DBEdit37.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCALIQB.FieldName).Value<>DM1.Tb_CliCALIQB.Value then
      DBEdit41.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCICMSR.FieldName).Value<>DM1.Tb_CliCICMSR.Value then
      ICMSR.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCICMSTP.FieldName).Value<>DM1.Tb_CliCICMSTP.Value then
      ICMSTP.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCREPAS.FieldName).Value<>DM1.Tb_CliCREPAS.Value then
      REPAS.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCIPI.FieldName).Value<>DM1.Tb_CliCIPI.Value then
      IPI.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCCONSF.FieldName).Value<>DM1.Tb_CliCCONSF.Value then
      CONSF.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCNALV.FieldName).Value<>DM1.Tb_CliCNALV.Value then
      dbnalv.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCDTVALV.FieldName).Value<>DM1.Tb_CliCDTVALV.Value then
      dbe_dtalv.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCNANVISA.FieldName).Value<>DM1.Tb_CliCNANVISA.Value then
      dbnumanvisa.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCDTANVISA.FieldName).Value<>DM1.Tb_CliCDTANVISA.Value then
      dbe_dtanvisa.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCCOMIS.FieldName).Value<>DM1.Tb_CliCCOMIS.Value then
      db_comis.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCEMAIL.FieldName).Value<>DM1.Tb_CliCEMAIL.Value then
      db_email.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCHOME.FieldName).Value<>DM1.Tb_CliCHOME.Value then
      db_home.Color:=clRed;
//   if DM1.Query1.FieldByName(DM1.Tb_CliCOBS.FieldName).Value<>DM1.Tb_CliCOBS.Value then
//      DBMemo1.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCCODV02.FieldName).Value<>DM1.Tb_CliCCODV02.Value then
      db_codv02.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCCODV03.FieldName).Value<>DM1.Tb_CliCCODV03.Value then
      db_codv03.Color:=clRed;
//   if DM1.Query1.FieldByName(DM1.Tb_CliCREFC01.FieldName).Value<>DM1.Tb_CliCREFC01.Value then
//      DBMEMO2.Color:=clRed;
//   if DM1.Query1.FieldByName(DM1.Tb_CliCREFB01.FieldName).Value<>DM1.Tb_CliCREFB01.Value then
//      DBMEMO3.Color:=clRed;
//   if DM1.Query1.FieldByName(DM1.Tb_CliCREFP01.FieldName).Value<>DM1.Tb_CliCREFP01.Value then
//      DBMEMO4.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCCODDEPD.FieldName).Value<>DM1.Tb_CliCCODDEPD.Value then
      DBE_CodDepD.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCCODCCD.FieldName).Value<>DM1.Tb_CliCCODCCD.Value then
      DBE_CodCCuD.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCDESCMVD.FieldName).Value<>DM1.Tb_CliCDESCMVD.Value then
      DBE_DescMovD.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCCODDEPC.FieldName).Value<>DM1.Tb_CliCCODDEPC.Value then
      DBE_CodDepC.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCCODCCC.FieldName).Value<>DM1.Tb_CliCCODCCC.Value then
      DBE_CodCCuC.Color:=clRed;
   if DM1.Query1.FieldByName(DM1.Tb_CliCDESCMVC.FieldName).Value<>DM1.Tb_CliCDESCMVC.Value then
      DBE_DescMvC.Color:=clRed;

   end;
BBnAtu.Enabled       := False;
btn_incluir.Enabled  := False;
btn_alterar.Enabled  := False;
btn_excluir.Enabled  := False;
btn_cancelar.Enabled := False;
DBNavigator1.Enabled := False;
DBGrid1.Enabled      := False;
end;

procedure TFrm_Cli.db_codredKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if DM1.Tb_Cli.State in [DsEdit, DsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_CliCCODRED.Value:=fSonumero(fChamaRedCli(0,'frm_cabc',key));
      key:=#0;
      end;
   end;
end;

procedure TFrm_Cli.db_codredExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_CliCCODRED.AsInteger<>0 then
   begin
   if not flqr1('RDNOME','RD','CADRED','N','RDCODRED',DM1.Tb_CliCCODRED.AsString) then
      begin
      verteclado(1);
      fmensagem('Rede não Cadastrada!',0,['0'],0);
      db_codred.SetFocus;
      exit;
      end;
   DM1.Tb_CliCNOMRED.Value:=DM1.Query1.Fields[0].AsString;
   end
else
   DM1.Tb_CliCNOMRED.Value:=' ';

end;

procedure TFrm_Cli.DB_CNPJExit(Sender: TObject);
begin
  inherited;
if CANCELAR.Focused then
   exit;
DM1.Tb_CliCCNPJ.Value:=fsonumero(DM1.Tb_CliCCNPJ.AsString);
if not (DM1.Tb_CliCCNPJ.IsNull) and  (DM1.Tb_CliCCNPJ.Value<>0) then
   begin
   if DM1.Tb_PargerPDUPCNPJ.Value=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Select CRAZAO,CCODCLI from CADCLI where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CCODEMP=0'+InttoStr(codemp)+' and ')
                        +' CCODCLI<>0'+DM1.Tb_CliCCODCLI.AsString
                        +' and CCNPJ=0'+DM1.Tb_CliCCNPJ.AsString);
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
         verteclado(1);
         fmensagem('O CNPJ.: '+FormatFloat('000"."000"."000"."000"-"00',DM1.Tb_CliCCNPJ.Value)+' Ja Esta Cadastrado'+#13
                 +' Codigo: '+DM1.Query1.Fields[1].AsString+' '+DM1.Query1.Fields[0].AsString,0,['0'],0);
         DB_CNPJ.SetFocus;
         exit;
         end;
      end
   else if DM1.Tb_PargerPDUPCNPJ.Value=1 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Select CRAZAO,CCODCLI from CADCLI where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CCODEMP=0'+InttoStr(codemp)+' and ')
                        +' CCODCLI<>0'+DM1.Tb_CliCCODCLI.AsString
                        +' and CCNPJ=0'+DM1.Tb_CliCCNPJ.AsString);
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
         mcinst:='O CNPJ.: '+FormatFloat('000"."000"."000"."000"-"00',DM1.Tb_CliCCNPJ.Value)+' Ja Esta Cadastrado'+#13
                 +' Codigo: '+DM1.Query1.Fields[1].AsString+' '+DM1.Query1.Fields[0].AsString;
         verteclado(1);
         if fmensagem(pchar(mcinst),0,['1','2'],2)<>mrYes then
            begin
            DB_CNPJ.SetFocus;
            exit;
            end;
         end;
      end;
   end;


if DM1.Tb_PargerPCRITCNPJ.Value=1 then
   begin
   if DM1.Tb_CliCCNPJ.Value>0 then
      begin
      if not FCGC(DM1.Tb_CliCCNPJ.Value) then
         begin
         verteclado(1);
         fmensagem('CNPJ digito não confere!',0,['0'],0);
         DB_CNPJ.SetFocus;
         exit;
         end;
      end;
   end;

end;

procedure TFrm_Cli.DBE_CodDepDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if DM1.Tb_Cli.State in [DsEdit, DsInsert] then
   begin
   if key=113 then
      begin
      DM1.Tb_CliCCODDEPD.Value:=fChamaDeptoCX (0,'frm_Cli','');

      DBE_CodDepDExit(self);

      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select DNOME,DCODDEP from CADDEP '
                  +iif(DM1.Qr_TID.locate('TINOME','CADDEP',[]),'',' where DCODEMP=0'+IntToStr(codemp)));
      DM1.Query5.Open;
      DBCB_NOMDEPD.Items.Clear;
      DBCB_NOMDEPC.Items.Clear;
      While not DM1.Query5.Eof do
         begin
         DBCB_NOMDEPD.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
         DBCB_NOMDEPC.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
         DM1.Query5.Next;
         end;
      end;
   end;


end;

procedure TFrm_Cli.DBE_CodCCuDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

if DM1.Tb_Cli.State in [DsEdit, DsInsert] then
   begin
   if key=113 then
      begin
      DM1.Tb_CliCCODCCD.Value:=fChamaCCU(0,'frm_Cli','');
      DBE_CodCCuDExit(self);
      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select CCNOME,CCNAT,CCCODCCU from CADCCU '
                     +iif(DM1.Qr_TID.locate('TINOME','CADCCU',[]),'',' where CCCODEMP=0'+IntToStr(codemp)));
      DM1.Query5.Open;
      DBCB_NOMCCUD.Items.Clear;
      DBCB_NOMCCUC.Items.Clear;
      While not DM1.Query5.Eof do
         begin
         DBCB_NOMCCUD.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                           +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                           +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');
         DBCB_NOMCCUC.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                           +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                           +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');
         DM1.Query5.Next;
         end;
      end;
   end;


end;

procedure TFrm_Cli.DBE_CodDepCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if DM1.Tb_Cli.State in [DsEdit, DsInsert] then
   begin
   if key=113 then
      begin
      DM1.Tb_CliCCODDEPC.Value:=fChamaDeptoCX(0,'frm_Cli','');
      DBE_CodDepCExit(self);
      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select DNOME,DCODDEP from CADDEP '
                  +iif(DM1.Qr_TID.locate('TINOME','CADDEP',[]),'',' where DCODEMP=0'+IntToStr(codemp)));
      DM1.Query5.Open;
      DBCB_NOMDEPD.Items.Clear;
      DBCB_NOMDEPC.Items.Clear;
      While not DM1.Query5.Eof do
         begin
         DBCB_NOMDEPD.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
         DBCB_NOMDEPC.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
         DM1.Query5.Next;
         end;
      end;
   end;

end;

procedure TFrm_Cli.DBE_CodCCuCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if DM1.Tb_Cli.State in [DsEdit, DsInsert] then
   begin
   if key=113 then
      begin
      DM1.Tb_CliCCODCCC.Value:=fChamaCCU(0,'frm_Cli','');
      DBE_CodCCuCExit(self);
      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select CCNOME,CCNAT,CCCODCCU from CADCCU '
                     +iif(DM1.Qr_TID.locate('TINOME','CADCCU',[]),'',' where CCCODEMP=0'+IntToStr(codemp)));
      DM1.Query5.Open;
      DBCB_NOMCCUD.Items.Clear;
      DBCB_NOMCCUC.Items.Clear;
      While not DM1.Query5.Eof do
         begin
         DBCB_NOMCCUD.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                           +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                           +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');
         DBCB_NOMCCUC.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                           +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                           +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');
         DM1.Query5.Next;
         end;
      end;
   end;

end;

procedure TFrm_Cli.db_codcvExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_CliCCODCV.AsInteger<>0 then
   begin
   if not flqr1('CVRAZAO','CV','CADCV','N','CVCODCV',DM1.Tb_CliCCODCV.AsString) then
      begin
      verteclado(1);
      fmensagem('Convenio não Cadastrado!',0,['0'],0);
      db_codcv.SetFocus;
      exit;
      end
   else
      DM1.Tb_CliCNOMCV.Value:=dm1.Query1.Fields[0].AsString;
   end
else
   DM1.Tb_CliCNOMCV.Value:=' ';


end;

procedure TFrm_Cli.db_codcvKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if DM1.Tb_Cli.State in [DsEdit, DsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_CliCCODCV.Value:=ValFloat(fChamacv(0,'frm_Cli',Key));
      if trim(db_codcv.Text)<>'' then
         db_codcvExit(self);
      key:=#0;
      end;
   end;

end;

procedure TFrm_Cli.CODLOCCExit(Sender: TObject);
begin
  inherited;
if CANCELAR.Focused then
   exit;
if not flcadloc(1,0,DM1.Tb_CliCCODLOCC.AsString) then
   begin
   verteclado(1);
   fmensagem('Localidade/Cidade não Cadastrada.',0,['0'],0);
   CODLOCC.SetFocus;
   end
else
   begin
   DM1.Tb_CliCCODLOCC.Value:=DM1.Tb_LocLCODLOC.Value;
   DM1.Tb_CliCCIDADEC.Value:=DM1.Tb_LocLNOME.Value;
   DM1.Tb_CliCUFC.Value    :=DM1.Tb_LocLUF.Value;
   end;

end;

procedure TFrm_Cli.CODLOCCKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if DM1.Tb_Cli.State in [DsEdit, DsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_CliCCODLOCC.Value:=ValFloat(fChamaLoc(0,'frm_Cli',Key));
      CODLOCCExit(Self);
      key:=#0;
      end;
   end;


end;

procedure TFrm_Cli.CODBAICKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if DM1.Tb_Cli.State in [DsEdit, DsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_CliCCODBAIC.Value:=ValFloat(fChamaBai(0,'frm_Cli',Key));
      CODBAICExit(self);

      key:=#0;
      end;
   end;

end;

procedure TFrm_Cli.CODBAICExit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_CliCCODBAIC.Value=0) or (DM1.Tb_CliCCODBAIC.IsNull) then
   begin
   DM1.Tb_CliCCODBAIC.Value:=0;
   DM1.Tb_CliCBAIRROC.Value:='';
   exit;
   end;

if (CANCELAR.Focused) then
   exit;
if not flcadbai(1,0,DM1.Tb_CliCCODBAIC.AsString) then
   begin
   verteclado(1);
   fmensagem('Bairro não Cadastrado!',0,['0'],0);
   CODBAIC.SetFocus;
   end
else
   begin
   DM1.Tb_CliCCODBAIC.Value:=DM1.Tb_BaiBCODBAI.Value;
   DM1.Tb_CliCBAIRROC.Value:=DM1.Tb_BaiBNOME.Value;
   end;

end;

procedure TFrm_Cli.ESTADOCExit(Sender: TObject);
begin
  inherited;
{if trim(DM1.Tb_CliCUFC.AsString)='' then
   begin
   if trim(DM1.Tb_CliCUF.AsString)='' then
      DM1.Tb_CliCUFC.AsString:=DM1.Tb_EmpUF.AsString
   else
      DM1.Tb_CliCUFC.AsString:=DM1.Tb_CliCUF.AsString;
   end;

if not flcaduf(0,0,0,DM1.Tb_CliCUFC.Value) then
   begin
   verteclado(1);
   fmensagem('Estado Não Cadastrado!',0,['0'],0);
   ESTADOC.SetFocus;
   exit;
   end;}

end;

procedure TFrm_Cli.NOMCIDExit(Sender: TObject);
begin
  inherited;
if Trim(DM1.Tb_CliCCIDADEC.Value)='' then
   DM1.Tb_CliCCIDADEC.Value:=DM1.Tb_CliCCIDADE.Value;
end;

procedure TFrm_Cli.db_cepExit(Sender: TObject);
begin
  inherited;
if (Trim(DM1.Tb_CliCCEPC.Value)='') or (Trim(DM1.Tb_CliCCEPC.Value)='-') then
   DM1.Tb_CliCCEPC.Value :=DM1.Tb_CliCCEP.Value;

end;

procedure TFrm_Cli.NOMBAIRROExit(Sender: TObject);
begin
  inherited;
if Trim(DM1.Tb_CliCBAIRROC.Value)='' then
   DM1.Tb_CliCBAIRROC.Value:=DM1.Tb_CliCBAIRRO.Value;

end;

procedure TFrm_Cli.db_logExit(Sender: TObject);
begin
  inherited;
if Trim(DM1.Tb_CliCENDERC.Value)='' then
   DM1.Tb_CliCENDERC.Value:=DM1.Tb_CliCLOG.Value;

end;

procedure TFrm_Cli.ESTADOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=113 then
   begin
   DM1.Tb_CliCUF.Value:=fChamaUF(0,'frm_Cli','');
   if trim(ESTADO.Text)<>'' then
      ESTADOExit(self);
   end;
end;

procedure TFrm_Cli.ESTADOCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
{if key=113 then
   begin
   DM1.Tb_CliCUFC.Value:=fChamaUF(0,'frm_Cli','');
   if trim(ESTADO.Text)<>'' then
      ESTADOCExit(self);
   end;
}
end;

procedure TFrm_Cli.db_codvenExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_CliCCODVEN.Value>0 then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',DM1.Tb_CliCCODVEN.AsString) then
      DM1.Tb_CliCNOMVEN.Value:=DM1.Query1.fields[0].AsString
   else
      begin
      verteclado(1);
      fmensagem('Vendedor não Cadastrado!',0,['0'],0);
      if db_codven.Enabled then
         db_codven.SetFocus;
      end;
   end
else
   DM1.Tb_CliCNOMVEN.Value:=' ';


end;

procedure TFrm_Cli.db_codv02Exit(Sender: TObject);
begin
  inherited;
if DM1.Tb_Cli.state in [dsEdit,dsInsert] then
   begin
   if DM1.Tb_CliCCODV02.Value>0 then
      begin
      if flqr1('VNOME','V','CADVEN','N','VCODVEN',DM1.Tb_CliCCODV02.AsString) then
         DM1.Tb_CliCNOMV02.Value:=DM1.Query1.fields[0].AsString
      else
         begin
         verteclado(1);
         fmensagem('Vendedor não Cadastrado!',0,['0'],0);
         db_codv02.SetFocus;
         end;
      end
   else
      DM1.Tb_CliCNOMV02.Value:=' ';
   end;


end;

procedure TFrm_Cli.db_codv03Exit(Sender: TObject);
begin
  inherited;
if DM1.Tb_Cli.state in [dsEdit,dsInsert] then
   begin

   if DM1.Tb_CliCCODV03.Value>0 then
      begin
      if flqr1('VNOME','V','CADVEN','N','VCODVEN',DM1.Tb_CliCCODV03.AsString) then
         DM1.Tb_CliCNOMV03.Value:=DM1.Query1.fields[0].AsString
      else
         begin
         verteclado(1);
         fmensagem('Vendedor não Cadastrado!',0,['0'],0);
         db_codv03.SetFocus;
         end;
      end
   else
      DM1.Tb_CliCNOMV03.Value:=' ';
   end;

end;

procedure TFrm_Cli.db_codtraKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if DM1.Tb_Cli.State in [DsEdit, DsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_CliCCODTRA.Value:=ValFloat(fChamaTra(0,'frm_Cli',Key));
      db_codtraExit(Self);
      key:=#0;
      end;
   end;

end;

procedure TFrm_Cli.db_codtraExit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_CliCCODTRA.IsNull) or (DM1.Tb_CliCCODTRA.Value=0) then
   DM1.Tb_CliCNOMTRA.Value:=' '
else
   begin
   if flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',DM1.Tb_CliCCODTRA.AsString) then
      DM1.Tb_CliCNOMTRA.Value:=DM1.Query1.fields[0].AsString
   else
      begin
      verteclado(1);
      fmensagem('Transportadora não Cadastrado!',0,['0'],0);
      db_codtra.SetFocus;
      end;
   end;

end;

procedure TFrm_Cli.FormActivate(Sender: TObject);
begin
  inherited;

if flcadactab(0,0,IntToStr(codcar),'CADCLI') then
   begin
   if DM4.Tb_AcTabAT_INC.Value=1 then
      bbcinc_true:=False;
   if DM4.Tb_AcTabAT_ALT.Value=1 then
      bbcalt_true:=False;
   if DM4.Tb_AcTabAT_EXC.Value=1 then
      bbcexc_true:=False;
   end
else
   begin
   bbcinc_true:=true;
   bbcalt_true:=true;
   bbcexc_true:=true;
   end;

if not Edit1.Focused then
   Edit1.SetFocus;
if not DM6.Tb_ParLCD.Active then
   begin
   DM6.Tb_ParLCD.Close;
   DM6.Tb_ParLCD.SQL.clear;
   DM6.Tb_ParLCD.SQL.Add('Select * from PARLCD ');
   DM6.Tb_ParLCD.SQL.Add(' order by LCD_ORDEM ');
   DM6.Tb_ParLCD.Open;
   if DM6.Tb_ParLCD.IsEmpty then
      begin
      bbDevCli.Height:=37;
      bbConsFiliais.Visible:=false;
      end
   else
      begin
      bbDevCli.Height:=20;
      bbConsFiliais.Visible:=true;
      end;

   end;

Caption:='Manutenção no Cadastro de Clientes';
end;

procedure TFrm_Cli.db_ieExit(Sender: TObject);
begin
  inherited;
  if CANCELAR.Focused then
     exit;

{  if (Length(LimpaString(DB_CNPJ.Text)) = 14) then begin
     VIE.Complemento := ESTADO.Text;
     VIE.Documento   := DB_IE.Text;

     if (Trim(DB_IE.Text) <> '') and (Copy(UpperCase(DB_IE.Text),1,5) <> 'ISENT') then begin
        if VIE.Validar then begin}
           DM1.Tb_CliCIE.Value:=Mascara_Inscricao(DM1.Tb_CliCIE.Value, DM1.Tb_CliCUF.Value);
{        end else begin
           fMensagem('Inscrição Estadual Inválida para o Estado: '+ESTADO.Text,0,['0'],0);
           DB_IE.SetFocus;
           Exit;
        end;
     end;
  end;}

end;

procedure TFrm_Cli.bbAniversarioClick(Sender: TObject);
begin
  inherited;
mTipo_Ani  :='CL';
testeform := TFrm_Cli(FindGlobalComponent('Frm_ani'));
if testeform=nil then
   Application.CreateForm(Tfrm_ani, form_ani)
else
   begin
   form_ani.Free;
   form_ani:=nil;
   Application.CreateForm(Tfrm_ani, form_ani);
   end;


if (DM1.Tb_CliCCODCLI.IsNull) or (DM1.Tb_CliCCODCLI.Value=0) then
   begin
   verteclado(1);
   fmensagem('Favor Selecionar um cliente válido!',0,['0'],0);
   exit;
   end;

flcadani(1,0,mTipo_Ani,DM1.Tb_CliCCODCLI.AsString);
MCodigo_ani:=DM1.Tb_CliCCODCLI.Asinteger;
form_ani.Label1.Caption:='Aniversariantes da Empresa: '+DM1.Tb_CliCCODCLI.AsString+' '+DM1.Tb_CliCRAZAO.Value;
mani_ori   :='CADCLI';
form_ani.Show;
end;

procedure TFrm_Cli.BB_SOBREClick(Sender: TObject);
begin
  inherited;

if DM1.Tb_CliCCODCLI.IsNull then
   begin
   verteclado(1);
   fmensagem('Favor Selecionar um Cliente Válido!',0,['0'],0);
   exit;
   end;
DM4.Tb_FCli.Close;
DM4.Tb_FCli.SQL.Clear;
DM4.Tb_FCli.SQL.Add('Select * from CADFCLI where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CF_CODEMP=0'+IntTostr(codemp)+' and ')
                   +' CF_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString);
DM4.Tb_FCli.Open;

DM4.Tb_ICli.Close;
DM4.Tb_ICli.SQL.Clear;
DM4.Tb_ICli.SQL.add('Select * from CADICLI where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CI_CODEMP=0'+IntTostr(codemp)+' and ')
                  +' CI_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString);
DM4.Tb_ICli.Open;
testeform := TFrm_Cli(FindGlobalComponent('Frm_figcli'));
if testeform=nil then
   Application.CreateForm(Tfrm_figcli, form_figcli);

form_figcli.ShowModal;
form_figcli.Free;
form_figcli:=nil;




end;

procedure TFrm_Cli.DBEdit99KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if DM1.Tb_Cli.State in [DsEdit, DsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_CliCCODASSE.AsFloat:=Valfloat(fChamaAssessor(0,'frm_Cli',Key));
      DBEdit99Exit(self);
      key:=#0;
      end;
   end;

end;

procedure TFrm_Cli.DBEdit99Exit(Sender: TObject);
begin
  inherited;
if DM1.Tb_Cli.state in [dsEdit,dsInsert] then
   begin
   if DM1.Tb_CliCCODASSE.Value>0 then
      begin
      if flqr1('CARAZAO','CA','CADASSE','N','CACODASS',DM1.Tb_CliCCODASSE.AsString) then
         DM1.Tb_CliCNOMASSE.Value:=DM1.Query1.fields[0].AsString
      else
         begin
         verteclado(1);
         fmensagem('Assessor não Cadastrado!',0,['0'],0);
         DBEdit99.SetFocus;
         end;
      end
   else
      DM1.Tb_CliCNOMASSE.Value:=' ';
   end;

end;

procedure TFrm_Cli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
mTipo_Ani:='';
fDeletarTempDel;

{
if (not mredirecionaFormCli) then
   begin
   if (FormState<>[fsModal]) then
      begin
      Action := caFree;
      end;
   end;
}
end;

procedure TFrm_Cli.db_codramKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if DM1.Tb_Cli.State in [DsEdit, DsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_CliCCODRAM.Value:=ValFloat(fChamaRamoCli(0,'frm_rcpag',key));
      db_codramExit(self);
      key:=#0;
      end;
   end;

end;


procedure TFrm_Cli.db_codramExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_CliCCODRAM.AsInteger<>0 then
   begin
   if not flqr1('RNOME','R','CADRCLI','N','RCODRAM',DM1.Tb_CliCCODRAM.AsString) then
      begin
      verteclado(1);
      fmensagem('Ramo não Cadastrada!',0,['0'],0);
      db_codram.SetFocus;
      exit;
      end;
   DM1.Tb_CliCNOMRAM.Value:=DM1.Query1.Fields[0].AsString;
   end
else
   DM1.Tb_CliCNOMRAM.Value:=' ';


end;

procedure TFrm_Cli.db_codbco01KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if DM1.Tb_Cli.State in [DsEdit, DsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_CliCCODBCO01.Value:=ValFloat(fChamaBco(0,'frm_Cli',Key));
      db_codbco01Exit(self);
      key:=#0;
      end;
   end;

end;

procedure TFrm_Cli.db_codbco01Exit(Sender: TObject);
begin
  inherited;
if DM1.Tb_CliCCODBCO01.AsInteger<>0 then
   begin
   if not fTestarCADBCO(false,DM1.Tb_CliCCODBCO01.AsString) then
      begin
      db_codbco01.SetFocus;
      exit;
      end;
   DM1.Tb_CliCNOMBCO01.Value:=mtemp_nome;
   end
else
   DM1.Tb_CliCNOMBCO01.Value:='Carteira';



end;

procedure TFrm_Cli.db_codv04KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if DM1.Tb_Cli.State in [DsEdit, DsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_CliCCODV04.Value:=ValFloat(fChamaVen(0,'frm_Cli',Key));
      db_codv04Exit(self);
      key:=#0;
      end;
   end;


end;

procedure TFrm_Cli.db_codv04Exit(Sender: TObject);
begin
  inherited;
if DM1.Tb_Cli.state in [dsEdit,dsInsert] then
   begin

   if DM1.Tb_CliCCODV04.Value>0 then
      begin
      if flqr1('VNOME','V','CADVEN','N','VCODVEN',DM1.Tb_CliCCODV04.AsString) then
         DM1.Tb_CliCNOMV04.Value:=DM1.Query1.fields[0].AsString
      else
         begin
         verteclado(1);
         fmensagem('Vendedor não Cadastrado!',0,['0'],0);
         db_codv04.SetFocus;
         end;
      end
   else
      DM1.Tb_CliCNOMV04.Value:=' ';
   end;

end;

procedure TFrm_Cli.Edit1Change(Sender: TObject);
begin
  inherited;
if DM1.Tb_PargerPONCHANGECLI.Value=1 then
   begin
   if cli_ori='consulta' then
      begin
      fcli01lerant(0);
      end
   else
      begin
      If DM1.Tb_Cli.State in [dsInsert, dsEdit] then
         begin
         verteclado(1);
         Case fmensagem('O registro atual não está gravado!'+#13
                        +'Deseja gravar agora?',0,['1','2'],0) of
            mrYes: GRAVAR.Click;
         else CANCELAR.Click;
            end;
         end;
      end;
   flcadcli(campo.ItemIndex,1,edit1.Text);
   btn_incluir.Enabled  := bbcinc_true;
   btn_alterar.Enabled  := bbcalt_true;
   btn_gravar.Enabled   := False;
   btn_excluir.Enabled  := bbcexc_true;
   btn_cancelar.Enabled := True;
   end;
end;

procedure TFrm_Cli.SAIRClick(Sender: TObject);
begin
  inherited;
  ModalResult:=mrOk;
  IF CLI_ORI='' THEN
     close;

end;

procedure TFrm_Cli.bbBloqueiosClick(Sender: TObject);
begin
  inherited;

testeform := TFrm_Cli(FindGlobalComponent('form_Venda_bloqueada_relacao'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_VendaBloqueada_Relacao, Form_VendaBloqueada_Relacao);
Form_VendaBloqueada_Relacao.Ts_Vendedor.TabVisible    :=False;
Form_VendaBloqueada_Relacao.Ts_Fornecedor.TabVisible  :=True;
Form_VendaBloqueada_Relacao.Ts_Estados.TabVisible     :=False;
Form_VendaBloqueada_Relacao.Ts_Cidade.TabVisible      :=False;
Form_VendaBloqueada_Relacao.Ts_Bairros.TabVisible     :=False;
Form_VendaBloqueada_Relacao.Ts_RamoClientes.TabVisible:=False;
Form_VendaBloqueada_Relacao.Ts_Clientes.TabVisible    :=False;
Form_VendaBloqueada_Relacao.Ts_RamoProdutos.TabVisible:=False;
Form_VendaBloqueada_Relacao.Ts_Produtos.TabVisible    :=False;
Form_VendaBloqueada_Relacao.CODIGO.Enabled            :=False;
Form_VendaBloqueada_Relacao.bbAtualizar.Enabled          :=False;
Form_VendaBloqueada_Relacao.St_Nivel.Caption:='NIVEL: CLIENTES';
mNivelConsulta:=7;
Form_VendaBloqueada_Relacao.CODIGO.Text:=DM1.Tb_CliCCODCLI.AsString;
Form_VendaBloqueada_Relacao.NOME.Text:=DM1.Tb_CliCRAZAO.AsString;
Form_VendaBloqueada_Relacao.bbAtualizar.Click;
Form_VendaBloqueada_Relacao.Show;
end;



function tFrm_Cli.fRedirecionarGrid:Boolean;
var
mReg: Integer;
begin
DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.add('Select * from CADCPN_GRID where '
                  +iif(DM1.Qr_Tid.locate('TINOME','CADCPN',[]),'',' CP_CODEMP=0'+InttoStr(codemp)+' and ')
                  +' CP_NOMEFORM='+chr(39)+'FRM_CLI'+chr(39)
                  +' ORDER BY CP_SEQUENCIA ');


DM1.Query5.Open;

if not DM1.Query5.Eof then
   begin
   DBGrid1.Columns.Clear;
   mReg:=0;
   While not DM1.Query5.Eof do
      begin
      DBGrid1.Columns.Add();
      DBGrid1.Columns[mReg].FieldName:=DM1.Query5.fieldbyName('CP_NOMEREG').AsString;
      if DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger>0 then
         DBGrid1.Columns[mReg].Width:=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
      if Trim(DM1.Query5.fieldbyName('CP_CAPTION').AsString)<>'' then
         DBGrid1.Columns[mReg].Title.Caption:=DM1.Query5.fieldbyName('CP_CAPTION').AsString;
      mReg:=mReg+1;
      DM1.Query5.Next;
      end;
   end;

end;
procedure TFrm_Cli.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

if DM1.Tb_CliCSITCLI.Value=1 then
   begin
   DBGrid1.Canvas.Font.Color:=clLime;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if DM1.Tb_CliCSITCLI.Value>0 then
   begin
   DBGrid1.Canvas.Font.Color:=clRed;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

end;

procedure TFrm_Cli.CLBStatusClick(Sender: TObject);
  var
x: Integer;

begin
  inherited;
if CLBStatus.ItemIndex=CLBStatus.Count-1 then
   begin
   for x := 0 to CLBStatus.Count -2 do
      begin
      if CLBStatus.Checked[CLBStatus.count-1] then
         CLBStatus.Checked[x] := true
      else
         CLBStatus.Checked[x]:=false;
      end;
   end
else
   begin
   CLBStatus.Checked[CLBStatus.Count-1]:=False;
   for x:=0 to CLBStatus.Count-2 do
      begin
      CLBStatus.Checked[CLBStatus.Count-1]:=true;
      if not CLBStatus.Checked[x] then
         begin
         CLBStatus.Checked[CLBStatus.Count-1]:=False;
         break;
         end;
      end;
   end;

DM1.Tb_Cli.Filter:='';
mcinst:='';
mcinst2:='';
if not CLBStatus.Checked[3] then
   begin
   if CLBStatus.Checked[0] then
      begin
      mcinst2:=mcinst2+mcinst+' CSITCLI=0 ';
      mcinst:=' or ';
      end;
   if CLBStatus.Checked[1] then
      begin
      mcinst2:=mcinst2+mcinst+' CSITCLI=1 ';
      mcinst:=' or ';
      end;
   if CLBStatus.Checked[2] then
      begin
      mcinst2:=mcinst2+mcinst+' CSITCLI=2 ';
      mcinst:=' or ';
      end;
   end;
if trim(mcinst2)<>'' then
DM1.Tb_Cli.Filter:=mcinst2;
DM1.Tb_Cli.Filtered:=true;
end;

procedure TFrm_Cli.DBE_CodDepDExit(Sender: TObject);
begin
  inherited;
macdep:=false;
if DM1.Tb_Cli.State in [dsEdit,dsInsert] then
   begin
   if not fTestarCADDEP_CX(false,DM1.Tb_CliCCODDEPD.AsString) then
      begin
      DBE_CodDepD.SetFocus;
      end
   else
      begin
      DM1.Tb_CliCNOMDEPD.Value:=mtemp_nome;
      if not DBCB_NOMDEPD.Focused then
         macdep:=true;
      end;
   end;


end;

procedure TFrm_Cli.DBE_CodCCuDExit(Sender: TObject);
begin
  inherited;
macccu:=false;
if DM1.Tb_Cli.State in [dsEdit,dsInsert] then
   begin

   if fTestarCADCC(false,DM1.Tb_CliCCODCCD.AsString) then
      begin
      DM1.Tb_CliCNATDCD.Value:=mtemp_natdc;
      DM1.Tb_CliCNOMCCD.Value:=mtemp_nome;
      if not DBCB_NOMCCUD.Focused then
         macccu:=true;
      end
   else
      begin
      DBE_CodCCuD.SetFocus;
      end;
   end;


end;

procedure TFrm_Cli.DBE_CodDepCExit(Sender: TObject);
begin
  inherited;
macdep:=false;
if DM1.Tb_Cli.State in [dsEdit,dsInsert] then
   begin
   if not fTestarCADDEP_CX(false,DM1.Tb_CliCCODDEPC.AsString) then
      begin
      DBE_CodDepC.SetFocus;
      end
   else
      begin
      DM1.Tb_CliCNOMDEPC.Value:=mtemp_nome;
      if not DBCB_NOMDEPC.Focused then
         macdep:=true;
      end;
   end;



end;

procedure TFrm_Cli.DBE_CodCCuCExit(Sender: TObject);
begin
  inherited;
macccu:=false;
if DM1.Tb_Cli.State in [dsEdit,dsInsert] then
   begin

   if fTestarCADCC(false,DM1.Tb_CliCCODCCC.AsString) then
      begin
      DM1.Tb_CliCNATDCC.Value:=mtemp_natdc;
      DM1.Tb_CliCNOMCCC.Value:=mtemp_nome;
      if not DBCB_NOMCCUC.Focused then
         macccu:=true;
      end
   else
      begin
      DBE_CodCCuC.SetFocus;
      end;

   end;

end;

procedure TFrm_Cli.DBCB_NOMDEPDEnter(Sender: TObject);
begin
  inherited;
if DM1.Tb_Cli.State in [dsEdit,dsInsert] then
   begin
   with DBCB_NOMDEPD do ItemIndex:=Items.IndexOf(DM1.Tb_CliCNOMDEPD.Value
                                    +'['+DM1.Tb_CliCCODDEPD.AsString+']');
   DBCB_NOMDEPD.text:=DBCB_NOMDEPD.Items.Strings[DBCB_NOMDEPD.ItemIndex];
   if not lbl_obs.Visible then
      lbl_obs.Visible:=true;
   end;
if macdep then
   DBE_CODCCUD.SetFocus;
macdep:=false;

end;

procedure TFrm_Cli.DBCB_NOMDEPCEnter(Sender: TObject);
begin
  inherited;
if DM1.Tb_Cli.State in [dsEdit,dsInsert] then
   begin
   with DBCB_NOMDEPC do ItemIndex:=Items.IndexOf(DM1.Tb_CliCNOMDEPC.Value
                                    +'['+DM1.Tb_CliCCODDEPC.AsString+']');
   DBCB_NOMDEPC.text:=DBCB_NOMDEPC.Items.Strings[DBCB_NOMDEPC.ItemIndex];
   if not lbl_obs2.Visible then
      lbl_obs2.Visible:=true;
   end;
if macdep then
   DBE_CODCCUC.SetFocus;
macdep:=false;

end;

procedure TFrm_Cli.DBCB_NOMCCUDEnter(Sender: TObject);
begin
  inherited;
if DM1.Tb_Cli.State in [dsEdit,dsInsert] then
   begin
   with DBCB_NOMCCUD do ItemIndex:=Items.IndexOf(DM1.Tb_CliCNOMCCD.AsString
                                    +'-'+DM1.Tb_CliCNATDCD.AsString
                                    +'['+DM1.Tb_CliCCODCCD.AsString+']');
   DBCB_NOMCCUD.text:=DBCB_NOMCCUD.Items.Strings[DBCB_NOMCCUD.ItemIndex];
   if not lbl_obs.Visible then
      lbl_obs.Visible:=true;
   end;
if macccu then
   DBE_DescMovD.SetFocus;
macccu:=false;


end;

procedure TFrm_Cli.DBCB_NOMCCUCEnter(Sender: TObject);
begin
  inherited;
if DM1.Tb_Cli.State in [dsEdit,dsInsert] then
   begin
   with DBCB_NOMCCUC do ItemIndex:=Items.IndexOf(DM1.Tb_CliCNOMCCC.AsString
                                    +'-'+DM1.Tb_CliCNATDCC.AsString
                                    +'['+DM1.Tb_CliCCODCCC.AsString+']');
   DBCB_NOMCCUC.text:=DBCB_NOMCCUC.Items.Strings[DBCB_NOMCCUC.ItemIndex];
   if not lbl_obs2.Visible then
      lbl_obs2.Visible:=true;
   end;
if macccu then
   DBE_DescMvC.SetFocus;
macccu:=false;

end;

procedure TFrm_Cli.DBCB_NOMDEPDExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_Cli.State in [dsEdit,dsInsert] then
   begin
   if DBCB_NOMDEPD.ItemIndex<0 then
      with DBCB_NOMDEPD do ItemIndex:=Items.IndexOf(DBCB_NOMDEPD.Text);
   DBCB_NOMDEPD.text:=DBCB_NOMDEPD.Items.Strings[DBCB_NOMDEPD.ItemIndex];
   if trim(DBCB_NOMDEPD.Text)='' then
      DM1.Tb_CliCCODDEPD.Value:=''
   else
      begin
      DM1.Tb_CliCCODDEPD.Value:=fExtraiCodigoEntreChaves(DBCB_NOMDEPD.Text);
      DBE_CODDEPDExit(Self);
      end;
   end;
if lbl_obs.Visible then
   lbl_obs.Visible:=false;


end;

procedure TFrm_Cli.DBCB_NOMDEPCExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_Cli.State in [dsEdit,dsInsert] then
   begin
   if DBCB_NOMDEPC.ItemIndex<0 then
      with DBCB_NOMDEPC do ItemIndex:=Items.IndexOf(DBCB_NOMDEPC.Text);
   DBCB_NOMDEPC.text:=DBCB_NOMDEPC.Items.Strings[DBCB_NOMDEPC.ItemIndex];
   if trim(DBCB_NOMDEPC.Text)='' then
      DM1.Tb_CliCCODDEPC.Value:=''
   else
      begin
      DM1.Tb_CliCCODDEPC.Value:=fExtraiCodigoEntreChaves(DBCB_NOMDEPC.Text);
      DBE_CODDEPCExit(Self);
      end;
   end;
if lbl_obs2.Visible then
   lbl_obs2.Visible:=false;


end;

procedure TFrm_Cli.DBCB_NOMCCUDExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_Cli.State in [dsEdit,dsInsert] then
   begin
   if DBCB_NOMCCUD.ItemIndex<0 then
      with DBCB_NOMCCUD do ItemIndex:=Items.IndexOf(DBCB_NOMCCUD.Text);
   DBCB_NOMCCUD.text:=DBCB_NOMCCUD.Items.Strings[DBCB_NOMCCUD.ItemIndex];
   if trim(DBCB_NOMCCUD.Text)='' then
      DM1.Tb_CliCCODCCD.Value:=''
   else
      begin
      DM1.Tb_CliCCODCCD.Value:=fExtraiCodigoEntreChaves(DBCB_NOMCCUD.Text);
      DBE_CODCCUDExit(Self);
      end;
   end;
if lbl_obs.Visible then
   lbl_obs.Visible:=false;

end;

procedure TFrm_Cli.DBCB_NOMCCUCExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_Cli.State in [dsEdit,dsInsert] then
   begin
   if DBCB_NOMCCUC.ItemIndex<0 then
      with DBCB_NOMCCUC do ItemIndex:=Items.IndexOf(DBCB_NOMCCUC.Text);
   DBCB_NOMCCUC.text:=DBCB_NOMCCUC.Items.Strings[DBCB_NOMCCUC.ItemIndex];
   if trim(DBCB_NOMCCUC.Text)='' then
      DM1.Tb_CliCCODCCC.Value:=''
   else
      begin
      DM1.Tb_CliCCODCCC.Value:=fExtraiCodigoEntreChaves(DBCB_NOMCCUC.Text);
      DBE_CODCCUCExit(Self);
      end;
   end;
if lbl_obs2.Visible then
   lbl_obs2.Visible:=false;


end;

procedure TFrm_Cli.sb_rb_incluirClick(Sender: TObject);
begin
  inherited;
DM4.Tb_Cli_RefBan.Last;
DM4.Tb_Cli_RefBan.Insert;
DBE_RB_NomBco.SetFocus;
end;

procedure TFrm_Cli.sb_rb_excluirClick(Sender: TObject);
begin
  inherited;
if DM4.Tb_Cli_RefBanRB_CODCLI.IsNull then
   begin
   verteclado(1);
   fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
   exit;
   end;

verteclado(1);
if fmensagem(pchar('Quer Realmente Excluir a Refência Bancária: '+#13
                         +DM4.Tb_Cli_RefBanRB_BANCO.Value+'?'),0,['1','2'],2)=mrYes then
   begin
   DM4.Tb_Cli_RefBan.Delete;
   end;
end;

procedure TFrm_Cli.Src_CliDataChange(Sender: TObject; Field: TField);
var
mIDCLI: String;
begin
  inherited;
if (PC1.ActivePage=Tab_ad) or (PC1.ActivePage=TsPvCli) or (PC1.ActivePage=tsOticas_Receitas) or (pc1.activePage=TsContatos) then
   fAtualizarTabelas(0)
else if (PC1.ActivePage=tsImagemDocumentos) then
   fAtualizarImagemDocumentos
else if PC1.ActivePage=tsTab then
   DM1.Tb_Cli.AutoCalcFields:=false
else
   DM1.Tb_Cli.AutoCalcFields:=true;
end;

function tFrm_Cli.fAtualizarImagemDocumentos: boolean;
var
mIdCli: String;

begin
if (trim(DM1.Tb_CliIDCLI.AsString)='') and (DM1.Tb_CLICCODCLI.asfloat>0) then
   begin
   if not fLerGenerico_query('CADCLI','ROWID',' CCODCLI='+DM1.Tb_CLICCODCLI.AsString,query_consulta) then
      begin
      exit;
      end
   else
      mIdCli:=query_consulta.fieldbyname('ROWID').asstring;
   end
else
   mIdCli:=DM1.Tb_CliIDCLI.AsString;

if (midCli_src<>mIdCli)  then
   begin
   if DM1_ADO.ADOConnection1.connected=false then
      begin
      DM1_ADO.ADOConnection1.Close;
      DM1_ADO.ADOConnection1.ConnectionString:='Provider=MSDAORA.1;Password=DEZENOVE;User ID='+Banco_usuario+';Data Source='+Banco_ServerName+';Persist Security Info=True';
      DM1_ADO.ADOConnection1.Open;
      end;

   Tb_CR_Imagem.close;
   Tb_CR_imagem.Connection:=DM1_ADO.ADOConnection1;
   Tb_CR_Imagem.Parameters.ParamByName('ROWID').Value    :=mIdCli;
   Tb_CR_Imagem.open;
   midcli_src :=mIdcli;
   end;

end;


procedure TFrm_Cli.PC1Change(Sender: TObject);
begin
  inherited;
if not DM1.Tb_CliCCODCLI.IsNull then
   begin
   if not (DM1.Tb_Cli.State in [dsEdit,dsInsert]) then
      begin

      if (PC1.ActivePage=tsImagemDocumentos) then
         fAtualizarImagemDocumentos
     else if (PC1.ActivePage=Tab_ad) and (PC_INFCAD.ActivePage=ts_RefBan) then
         flcadcli_refban(1,0,DM1.Tb_CliCCODCLI.AsString)
      else if (PC1.ActivePage=Tab_ad) and (PC_INFCAD.ActivePage=ts_RefCom) then
         flcadcli_refcom(1,0,DM1.Tb_CliCCODCLI.AsString)
      else if (PC1.ActivePage=Tab_ad) and (PC_INFCAD.ActivePage=ts_RefPes) then
         flcadcli_refPes(1,0,DM1.Tb_CliCCODCLI.AsString)
      else if (PC1.ActivePage=Tab_ad) and (PC_INFCAD.ActivePage=ts_OutInf)  then
         flcadcli_outinf(1,0,DM1.Tb_CliCCODCLI.AsString)
      else if (PC1.ActivePage=Tab_ad) and (PC_INFCAD.ActivePage=ts_BensImoveis) then
         flcadcli_bens(1,0,DM1.Tb_CliCCODCLI.AsString)
      else if (PC1.ActivePage=tab_Fisica) or (PC1.ActivePage=tsOticas_Receitas) then
         flcadcli_ic(1,0,DM1.Tb_CliCCODCLI.AsString);
      if (PC1.ActivePage=TsContatos) then
         flcadcli_con(1,0,DM1.Tb_CliCCODCLI.AsString);

      end;
   end;
end;

procedure TFrm_Cli.sb_rc_incluirClick(Sender: TObject);
begin
  inherited;
DM4.Tb_Cli_RefCom.Last;
DM4.Tb_Cli_RefCom.Insert;
DBE_RC_Nome.SetFocus;

end;

procedure TFrm_Cli.sb_rc_excluirClick(Sender: TObject);
begin
  inherited;
if DM4.Tb_Cli_RefComRC_CODCLI.IsNull then
   begin
   verteclado(1);
   fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
   exit;
   end;

verteclado(1);
if fmensagem(pchar('Quer Realmente Excluir a Refência Comercial: '+#13
                         +DM4.Tb_Cli_RefComRC_NOME.Value+'?'),0,['1','2'],2)=mrYes then
   begin
   DM4.Tb_Cli_RefCom.Delete;
   end;

end;

procedure TFrm_Cli.sb_rp_incluirClick(Sender: TObject);
begin
  inherited;
DM4.Tb_Cli_RefPes.Last;
DM4.Tb_Cli_RefPes.Insert;
DBE_RP_Nome.SetFocus;


end;

procedure TFrm_Cli.sb_rp_excluirClick(Sender: TObject);
begin
  inherited;
if DM4.Tb_Cli_RefPesRP_CODCLI.IsNull then
   begin
   verteclado(1);
   fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
   exit;
   end;

verteclado(1);
if fmensagem(pchar('Quer Realmente Excluir a Refência Pessoal: '+#13
                         +DM4.Tb_Cli_RefPesRP_NOME.Value+'?'),0,['1','2'],2)=mrYes then
   begin
   DM4.Tb_Cli_RefPes.Delete;
   end;

end;

procedure TFrm_Cli.sb_oi_incluirClick(Sender: TObject);
begin
  inherited;
PC_INFCAD.ActivePage:=ts_OutInf;
DM4.Tb_Cli_OutInf.Last;
DM4.Tb_Cli_OutInf.Insert;
DBE_OI_DESCRICAO.SetFocus;

end;

procedure TFrm_Cli.sb_oi_excluirClick(Sender: TObject);
begin
  inherited;
if DM4.Tb_Cli_OutInfOI_CODCLI.IsNull then
   begin
   verteclado(1);
   fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
   exit;
   end;

verteclado(1);
if fmensagem(pchar('Quer Realmente Excluir este registro?'),0,['1','2'],2)=mrYes then
   begin
   DM4.Tb_Cli_OutInf.Delete;
   end;


end;

procedure TFrm_Cli.sb_bens_incluirClick(Sender: TObject);
begin
  inherited;
DM4.Tb_Cli_Bens.Last;
DM4.Tb_Cli_Bens.Insert;
DBE_BENS_DESCRICAO.SetFocus;

end;

procedure TFrm_Cli.sb_bens_excluirClick(Sender: TObject);
begin
  inherited;
if DM4.Tb_Cli_BensCB_CODCLI.IsNull then
   begin
   verteclado(1);
   fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
   exit;
   end;

verteclado(1);
if fmensagem(pchar('Quer Realmente Excluir o Registro Selecionado?'),0,['1','2'],2)=mrYes then
   begin
   DM4.Tb_Cli_Bens.Delete;
   end;


end;

procedure TFrm_Cli.DBCtrlGrid_RefBanExit(Sender: TObject);
begin
  inherited;
if DM4.Tb_Cli_RefBan.State in [dsedit,dsinsert] then
   DM4.Tb_Cli_RefBan.Post;
end;

procedure TFrm_Cli.DBCtrlGrid_RefComExit(Sender: TObject);
begin
  inherited;
if DM4.Tb_Cli_RefCom.State in [dsedit,dsinsert] then
   DM4.Tb_Cli_RefCom.Post;

end;

procedure TFrm_Cli.DBCtrlGrid_RefPesExit(Sender: TObject);
begin
  inherited;
if DM4.Tb_Cli_RefPes.State in [dsedit,dsinsert] then
   DM4.Tb_Cli_RefPes.Post;

end;

procedure TFrm_Cli.DBCtrlGrid_OutInfExit(Sender: TObject);
begin
  inherited;
if DM4.Tb_Cli_OutInf.State in [dsedit,dsinsert] then
   DM4.Tb_Cli_OutInf.Post;

end;

procedure TFrm_Cli.DBCtrlGrid1Exit(Sender: TObject);
begin
  inherited;
if DM4.Tb_Cli_Bens.State in [dsedit,dsinsert] then
   DM4.Tb_Cli_Bens.Post;

end;

procedure TFrm_Cli.db_dturenEnter(Sender: TObject);
begin
  inherited;
mdturen_ant:=DM1.Tb_CliCDTUREN.Value;
end;

procedure TFrm_Cli.db_dturenExit(Sender: TObject);
begin
  inherited;
if mdturen_ant<>DM1.Tb_CliCDTUREN.Value then
   begin
   mValidarSenha.pTipo:=0;
   mValidarSenha.pCodusr:=codusr;
   mValidarSenha.pCodSen:=39;
   mValidarSenha.pCodEmp:=0;
   mValidarSenha.pCodCli:=DM1.Tb_CliCCODCLI.Value;
   mValidarSenha.pLotSeq:=0;
   mValidarSenha.pChave :=0;
   mValidarSenha.pOrdem :=0;
   mValidarSenha.pTexto :='Senha para Alterar a Data de Validade';
   mValidarSenha.pChave_St:='';
   mValidarSenha.pDesc_requisitado :=0;
   if fValidaSenha(mValidarSenha)<>0 then
      begin
      verteclado(1);
      fmensagem('Alteração não Aceita!',0,['0'],0);
      DM1.Tb_CliCDTUREN.AsString:=FormatDateTime(fdt2, mdturen_ant);
      end;
   end;

end;

procedure TFrm_Cli.DBEdit37KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key in ['.',','] then
   key:=DecimalSeparator;

end;



function TFrm_Cli.fAtualizarTabelas(pTipo: Integer): Boolean;
begin
if not DM1.Tb_CliCCODCLI.IsNull then
   begin
   if not (DM1.Tb_Cli.State in [dsEdit,dsInsert]) then
      begin
      if DM1.Tb_CliCPEDELE_SENHA.AsString='' then
         edt_senha.Text:=''
      else
         edt_senha.Text:=DM1.Tb_CLICPEDELE_SENHA.AsString;
//         edt_senha.Text:=EnDeCripta(DM1.Tb_CLICPEDELE_SENHA.AsString,DM1.Tb_CLICCODCLI.AsInteger);
      if (PC1.ActivePage=Tab_ad) and (PC_INFCAD.ActivePage=ts_RefBan) then
         begin
         if (not DM4.Tb_Cli_RefBan.Active) or
            (DM4.Tb_Cli_RefBanRB_CODCLI.AsFloat<>DM1.Tb_CliCCODCLI.AsFloat)  then
             flcadcli_refban(1,0,DM1.Tb_CliCCODCLI.AsString)
         end
      else if (PC1.ActivePage=Tab_ad) and (PC_INFCAD.ActivePage=ts_RefCom) then
         begin
         if (not DM4.Tb_Cli_RefCom.Active) or
            (DM4.Tb_Cli_RefComRC_CODCLI.AsFloat<>DM1.Tb_CliCCODCLI.AsFloat)  then
            flcadcli_refcom(1,0,DM1.Tb_CliCCODCLI.AsString);
         end
      else if (PC1.ActivePage=Tab_ad) and (PC_INFCAD.ActivePage=ts_RefPes) then
         begin
         if (not DM4.Tb_Cli_RefPes.Active) or
            (DM4.Tb_Cli_RefPesRP_CODCLI.AsFloat<>DM1.Tb_CliCCODCLI.AsFloat)  then
            flcadcli_refpes(1,0,DM1.Tb_CliCCODCLI.AsString)
         end
      else if (PC1.ActivePage=Tab_ad) and (PC_INFCAD.ActivePage=ts_OutInf) then
         begin
         if (not DM4.Tb_Cli_OutInf.Active) or
            (DM4.Tb_Cli_OutInfOI_CODCLI.AsFloat<>DM1.Tb_CliCCODCLI.AsFloat)  then
            flcadcli_outinf(1,0,DM1.Tb_CliCCODCLI.AsString);
         end
      else if (PC1.ActivePage=Tab_ad) and (PC_INFCAD.ActivePage=ts_BensImoveis) then
         begin
         if (not DM4.Tb_Cli_Bens.Active) or
            (DM4.Tb_Cli_BensCB_CODCLI.AsFloat<>DM1.Tb_CliCCODCLI.AsFloat)  then
            flcadcli_bens(1,0,DM1.Tb_CliCCODCLI.AsString);
         end
      else if (PC1.ActivePage=tab_Fisica)  or (PC1.ActivePage=tsOticas_Receitas) then
         begin
         if (not DM4.Tb_Cli_IC.Active) or
            (DM4.Tb_Cli_ICIC_CODCLI.AsFloat<>DM1.Tb_CliCCODCLI.AsFloat)  then
            flcadcli_ic(1,0,DM1.Tb_CliCCODCLI.AsString);
         end
      else if (PC1.ActivePage=tab_Fisica)  or (PC1.ActivePage=tsOticas_Receitas) then
         begin
         if (not DM4.Tb_Cli_IC.Active) or
            (DM2.Tb_Con_CliCC_CLIFOR.AsFloat<>DM1.Tb_CliCCODCLI.AsFloat)  then
         flcadcli_con(1,0,DM1.Tb_CliCCODCLI.AsString);
         end
      else if (PC1.ActivePage=TsContatos) then
         flcadcli_con(1,0,DM1.Tb_CliCCODCLI.AsString)
      else if (PC1.ActivePage=tsPvCli) then
         begin
         if (not Tb_Cli_PV.Active) or
            (Tb_Cli_PVCPV_CODCLI.AsFloat<>DM1.Tb_CliCCODCLI.AsFloat)  then
            begin
            Tb_Cli_PV.Close;
            Tb_Cli_PV.SQL.Clear;
            Tb_Cli_PV.SQL.Add('Select * from  CADCLI_PV  where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' CPV_CODEMP=0'+IntToStr(codemp)+' and ')
                     +' CPV_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString
                     +' order by CPV_TABPV,CPV_CODPV');
            Tb_Cli_PV.Open;
            end;

         end;


      end;
   end;

result:=true;
end;

procedure TFrm_Cli.bbDadosPessClick(Sender: TObject);
begin
  inherited;
PC1.ActivePage:=tab_Fisica;

end;

procedure TFrm_Cli.bbProximaClick(Sender: TObject);
begin
  inherited;
PC1.ActivePage:=Tab_ad;
end;

procedure TFrm_Cli.bbDevCliClick(Sender: TObject);
begin
  inherited;
fBuscadevol(0,DM1.Tb_CLICCODCLI.Value,0);


end;

procedure TFrm_Cli.DBE_RB_NomBcoExit(Sender: TObject);
begin
  inherited;
if trim(DM4.Tb_Cli_RefBanRB_BANCO.Value)='' then
   begin
   if DBE_rb_agencia.Focused then
      PC_INFCAD.ActivePage:=ts_RefCom;
   end;
end;

procedure TFrm_Cli.DBE_RC_NomeExit(Sender: TObject);
begin
  inherited;
if trim(DM4.Tb_Cli_RefComRC_NOME.Value)='' then
   begin
   if DBE_RC_Fone.Focused then
      PC_INFCAD.ActivePage:=ts_RefPes;
   end;

end;

procedure TFrm_Cli.DBE_RP_NomeExit(Sender: TObject);
begin
  inherited;
if trim(DM4.Tb_Cli_RefPesRP_NOME.Value)='' then
   begin
   if DBE_RP_Fone.Focused then
      PC_INFCAD.ActivePage:=ts_OutInf;
   end;

end;

procedure TFrm_Cli.DBE_OI_DESCRICAOExit(Sender: TObject);
begin
  inherited;
if trim(DM4.Tb_Cli_OutInfOI_DESCRICAO.Value)='' then
   begin
   if DBE_OI_DESCRICAO.Focused then
      PC_INFCAD.ActivePage:=ts_BensImoveis;
   end;

end;

procedure TFrm_Cli.DBE_BENS_DESCRICAOExit(Sender: TObject);
begin
  inherited;
if trim(DM4.Tb_Cli_BensCB_DESCRICAO.Value)='' then
   begin
   if DBCb_Bens_Quitado.Focused then
      btn_gravar.SetFocus;
   end;

end;

procedure TFrm_Cli.db_codbco02Exit(Sender: TObject);
begin
  inherited;
if DM1.Tb_CliCCODBCO02.AsInteger<>0 then
   begin
   if not fTestarCADBCO(false,DM1.Tb_CliCCODBCO02.AsString) then
      begin
      db_codbco02.SetFocus;
      exit;
      end;
   DM1.Tb_CliCNOMBCO02.Value:=mtemp_nome;
   end
else
   DM1.Tb_CliCNOMBCO02.Value:='Carteira';

end;

procedure TFrm_Cli.db_codbco02KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if DM1.Tb_Cli.State in [DsEdit, DsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_CliCCODBCO02.Value:=ValFloat(fChamaBco(0,'frm_Cli',Key));
      db_codbco02Exit(self);
      key:=#0;
      end;
   end;

end;

procedure TFrm_Cli.bbSitCredClick(Sender: TObject);
var
mEditando: Boolean;
begin
  inherited;
if DM1.Tb_CliCCODCLI.AsFloat=0 then
   begin
   fmensagem('Favor Selecionar um Cliente!',0,['0'],0);
   exit;
   end;
if DM1.Tb_Cli.State in [dsedit,dsinsert] then
   begin
   mEditando:=true;
   gravarclick(self);
   end
else
   mEditando:=false;



testeform := TFrm_Cli(FindGlobalComponent('Frm_sitcre'));
if testeform=nil then
   Application.CreateForm(TFrm_SitCre, Form_SitCre)
else
   begin
   Form_SitCre.Free;
   Form_SitCre:=nil;
   Application.CreateForm(TFrm_SitCre, Form_SitCre);
   end;

Form_SitCre.CODCLI.Text:=DM1.Tb_CliCCODCLI.AsString;
Form_SitCre.BBAPLICAR.Click;

Form_SitCre.Show;
end;

procedure TFrm_Cli.db_rotaExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_CliCROTA.AsFloat=0 then
   DM1.Tb_CliCNOMROTA.AsString:=''
else
   begin
   if flqr1('CR_NOMREG','CR_','CADREGIAO','N','CR_CODREG',DM1.Tb_CliCROTA.AsString) then
      DM1.Tb_CliCNOMROTA.Value:=DM1.Query1.fields[0].AsString
   else
      begin
      verteclado(1);
      fmensagem('Região não Cadastrado!',0,['0'],0);
      db_rota.SetFocus;
      end;
   end;

end;

procedure TFrm_Cli.Tb_Cli_PVAfterCancel(DataSet: TDataSet);
begin
  inherited;
if (trim(Tb_Cli_PVCPV_TABPV.AsString)='')
   or (Tb_Cli_PVCPV_CODPV.asFloat=0) then
   begin
   Tb_Cli_PV.Delete;
   Abort;
   end;

end;

procedure TFrm_Cli.Tb_Cli_PVAfterInsert(DataSet: TDataSet);
begin
  inherited;
if (DM1.Tb_Cli.Active) and not (DM1.Tb_CliCCODCLI.IsNull) then
   begin
   Tb_Cli_PVCPV_CODEMP.Value:=DM1.Tb_CliCCODEMP.Value;
   Tb_Cli_PVCPV_CODCLI.Value:=DM1.Tb_CliCCODCLI.Value;
   end;

end;

procedure TFrm_Cli.c(DataSet: TDataSet);
begin
  inherited;
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   MessageDlg('Ja Existe um Registro igual a Este Click em Cancelar!',mtInformation,[mbOk],0);
   end;

end;

procedure TFrm_Cli.Tb_Cli_PVBeforeEdit(DataSet: TDataSet);
begin
  inherited;
if not GRAVAR.Enabled then
   begin
   Tb_Cli_PV.Cancel;
   Abort;
   end;

moper_pv:=1;
mant_tabpv := Tb_Cli_PVCPV_TABPV.AsString;
mant_codpv := Tb_Cli_PVCPV_CODPV.AsFloat;

end;

procedure TFrm_Cli.Tb_Cli_PVBeforeInsert(DataSet: TDataSet);
begin
  inherited;
if not GRAVAR.Enabled then
   begin
   Tb_Cli_PV.Cancel;
   Abort;
   end;

moper_pv:=0;
end;

procedure TFrm_Cli.Tb_Cli_PVCalcFields(DataSet: TDataSet);
begin
  inherited;
if (trim(Tb_Cli_PVCPV_TABPV.AsString)<>'') and (Tb_Cli_PVCPV_CODPV.AsFloat<>0) then
   begin
   DM1.Query1.close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select PVNOME,PVPRAZOS from CADPV  where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADCV',[]),'',' PVCODEMP=0'+IntToStr(codemp)+' and ')
                     +' PVCODTIP='+chr(39)+Tb_Cli_PVCPV_TABPV.AsString+chr(39)
                     +' and PVCODPV=0'+Tb_Cli_PVCPV_CODPV.AsString
                     +' order by PVCODEMP,PVCODPV');
   DM1.Query1.Open;
   if not DM1.Query1.Eof then
      begin
      Tb_Cli_PVnompv.Value:=DM1.Query1.Fields[0].AsString;
      Tb_Cli_PVprazos.Value:=DM1.Query1.Fields[1].AsString;
      end;
   end;
end;

procedure TFrm_Cli.Tb_Cli_PVBeforePost(DataSet: TDataSet);
begin
  inherited;

DM1.Query1.close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select PVNOME,PVPRAZOS from CADPV  where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADCV',[]),'',' PVCODEMP=0'+IntToStr(codemp)+' and ')
                  +' PVCODTIP='+chr(39)+Tb_Cli_PVCPV_TABPV.AsString+chr(39)
                  +' and PVCODPV=0'+Tb_Cli_PVCPV_CODPV.AsString
                  +' order by PVCODEMP,PVCODPV');
DM1.Query1.Open;
if DM1.Query1.IsEmpty then
   begin
   fmensagem('Plano de Vendas não Cadastrado!',0,['0'],0);
   Tb_Cli_PV.Cancel;
   Abort;
   end;
if moper_pv=0 then
   begin
   DM1.Query1.close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select CPV_TABPV,CPV_CODPV from CADCLI_PV  where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' CPV_CODEMP=0'+IntToStr(codemp)+' and ')
                     +' CPV_CODCLI=0'+Tb_Cli_PVCPV_CODCLI.AsString
                     +' and CPV_TABPV='+chr(39)+Tb_Cli_PVCPV_TABPV.AsString+chr(39)
                     +' and CPV_CODPV=0'+Tb_Cli_PVCPV_CODPV.AsString);
   DM1.Query1.Open;
   if not DM1.Query1.IsEmpty then
      begin
      fmensagem('Este Plano ja Esta Cadastrado neste Cliente!',0,['0'],0);
      Tb_Cli_PV.Cancel;
      Abort;
      end;
   end
else if ((mant_tabpv<>Tb_Cli_PVCPV_TABPV.AsString) or (mant_codpv<>Tb_Cli_PVCPV_CODPV.AsFloat)) then
   begin
   DM1.Query1.close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select CPV_TABPV,CPV_CODPV from CADCLI_PV  where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' CPV_CODEMP=0'+IntToStr(codemp)+' and ')
                     +' CPV_CODCLI=0'+Tb_Cli_PVCPV_CODCLI.AsString
                     +' and CPV_TABPV='+chr(39)+Tb_Cli_PVCPV_TABPV.AsString+chr(39)
                     +' and CPV_CODPV=0'+Tb_Cli_PVCPV_CODPV.AsString);
   DM1.Query1.Open;
   if not DM1.Query1.IsEmpty then
      begin
      fmensagem('Este Plano ja Esta Cadastrado neste Cliente!',0,['0'],0);
      Tb_Cli_PV.Cancel;
      Abort;
      end;
   end;

end;

procedure TFrm_Cli.DBGrid_cadcli_pvExit(Sender: TObject);
begin
  inherited;
if Tb_Cli_PV.State in [dsEdit,dsInsert] then
   begin
   if (trim(Tb_Cli_PVCPV_TABPV.AsString)<>'') and (Tb_Cli_PVCPV_CODPV.AsFloat<>0) then
      Tb_Cli_PV.Cancel
   else
      Tb_Cli_PV.Post;
   end;

end;

procedure TFrm_Cli.sbInserirClick(Sender: TObject);
begin
  inherited;
if not GRAVAR.Enabled then
   exit;
if DM1.Tb_CliCCODCLI.IsNull then
   begin
   fmensagem('Favor Cadastrar um Cliente Valido!',0,['0'],0);
   exit;
   end;

dm1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Delete from CADCLI_PV where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADCLI',[]),'',' CPV_CODEMP=0'+Inttostr(codemp)+' and ')
                      +' CPV_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString);
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Insert into CADCLI_PV (');
DM1.query1.SQL.Add('  CPV_CODEMP ');
DM1.query1.SQL.Add(' ,CPV_CODCLI ');
DM1.query1.SQL.Add(' ,CPV_TABPV ');
DM1.query1.SQL.Add(' ,CPV_CODPV ');
DM1.query1.SQL.Add(' ) ');
DM1.query1.SQL.Add(' Select '+IntToStr(codemp));
DM1.query1.SQL.Add(' ,'+DM1.Tb_CliCCODCLI.AsString);
DM1.query1.SQL.Add(' ,PVCODTIP ');
DM1.query1.SQL.Add(' ,PVCODPV ');
DM1.query1.SQL.Add(' from CADPV ');
if not DM1.Qr_TID.Locate('TINOME','CADPV',[]) then
   DM1.query1.SQL.Add(' where PVCODEMP=0'+IntToStr(codemp));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;
Tb_Cli_PV.Close;
Tb_Cli_PV.SQL.Clear;
Tb_Cli_PV.SQL.Add('Select * from  CADCLI_PV  where '
         +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' CPV_CODEMP=0'+IntToStr(codemp)+' and ')
         +' CPV_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString
         +' order by CPV_TABPV,CPV_CODPV');
Tb_Cli_PV.Open;
fmensagem('Concluido!',0,['0'],0);


end;

procedure TFrm_Cli.bbMostrarClick(Sender: TObject);
begin
  inherited;
fmensagem('a senha digitada é: '+edt_senha.Text,0,['0'],0);
end;

procedure TFrm_Cli.bbConsFiliaisClick(Sender: TObject);
begin
  inherited;
If DM1.Tb_Cli.State in [dsInsert, dsEdit] then
   begin
   verteclado(1);
   Case fmensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      end;
   end;
testeform := TFrm_Cli(FindGlobalComponent('Form_clioutfil'));
if testeform=nil then
   Application.CreateForm(TFrm_CliOutFil,  Form_CliOutFil);
mEncontrado:=false;
DM6.Tb_ParLCD.First;
Form_CliOutFil.ShowModal;
Form_CliOutFil.Free;
Form_CliOutFil:=nil;
SetDecimalSeparator(sys_decimal);

end;

procedure TFrm_Cli.dbcb_tabKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if DM1.Tb_Cli.state in [dsEdit,dsInsert] then
   begin
   if key=114 then
      begin
      DM1.Tb_CliCCODPV.AsFloat:=fSoNumero(fChamaPV(0,'frm_rdev',''));
      if DM1.Tb_CliCCODPV.AsFloat>0 then
         begin
         DM1.Tb_CliCCODPV.AsFloat:=DM1.Tb_PVPVCODPV.AsFloat;
         DM1.Tb_CliCTABPV.AsString:=DM1.Tb_PVPVCODTIP.AsString;
         db_codpvExit(self);
         end;
      end;
   end;


end;

procedure TFrm_Cli.db_codpvKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   DM1.Tb_CliCCODPV.AsFloat:=fSonumero(fChamaPV(0,'frm_rdev',key));
   if DM1.Tb_CliCCODPV.AsFloat<>0 then
      begin
      DM1.Tb_CliCTABPV.AsString:=DM1.Tb_PVPVCODTIP.AsString;
      DM1.Tb_CliCCODPV.AsFloat :=DM1.Tb_PVPVCODPV.AsFloat;
      db_codpvExit(self);
      end;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Cli.db_codpvExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_Cli.State in [dsInsert,dsEdit] then
   begin
   if (DM1.Tb_PVPVCODPV.AsFloat=DM1.Tb_CliCCODPV.AsFloat) and
      (DM1.Tb_PVPVCODTIP.AsString=DM1.Tb_CliCCODPV.AsString) then
       begin
       DM1.Tb_CliCNOMPLA.AsString:=DM1.Tb_PVPVNOME.AsString;
       end;

   end;
end;

function fclitestarMov(pCodcli: Real): Boolean;
var
mEmpresa01, mEmpresa101: String;
begin
result:=true;
mEmpresa01:=IntTostr(codemp);
if codemp>99 then
   mEmpresa101:=IntToStr(Codemp-100)
else
   mEmpresa101:=IntToStr(Codemp+100);
DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Select count(*) from CADP01 where ');
if not DM1.Qr_TID.locate('TINOME','CADPED',[]) then
   DM1.Query1.sql.Add(' (P1CODEMP=0'+mEmpresa01+' or P1CODEMP=0'+mEmpresa101+') and ');
DM1.Query1.SQL.Add(' P1CODCLI=0'+FloatTostr(pCodCli));
DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>0 then
   begin
   result:=false;
   exit;
   end;

end;
procedure TFrm_Cli.bbOutObsClick(Sender: TObject);
begin
  inherited;
PC1.ActivePage      :=Tab_ad;
PC_INFCAD.ActivePage:=ts_OutInf;
end;

procedure TFrm_Cli.bbExpForClick(Sender: TObject);
begin
  inherited;
if GRAVAR.Enabled then
   begin
   fmensagem('Click em Gravar para depois Utilizar esta opção!',0,['0'],0);
   exit;
   end;
if DM1.Tb_CliCRAZAO.IsNull then
   begin
   fmensagem('Favor Selecionar um Cliente Válido!',0,['0'],0);
   exit;
   end;
if (ValFloat(DM1.Tb_CliCCNPJ.AsString)>0) and (flcadfor(3,0,DM1.Tb_CliCCNPJ.AsString)) then
   begin
   fmensagem('Este CNPJ ja Esta Cadastrado como Fornecedor, o Codigo é: '+DM1.Tb_ForFCODFOR.AsString
            +' Razão Social: '+DM1.Tb_ForFRAZAO.AsString,0,['0'],0);
   exit;
   end;
if (ValFloat(DM1.Tb_CliCCPF.AsString)>0) and (flcadfor(3,0,DM1.Tb_CliCCPF.AsString)) then
   begin
   fmensagem('Este CPF ja Esta Cadastrado como Fornecedor, o Codigo é: '+DM1.Tb_ForFCODFOR.AsString
            +' Razão Social: '+DM1.Tb_ForFRAZAO.AsString,0,['0'],0);
   exit;
   end;

if fMensagem('Quer Realmente Exportar para o cadastro de Fornecedor?',0,['1','2'],2)<>mrYes then
   exit;
DM1.Tb_For.Append;
DM1.Tb_ForFRAZAO.Value   :=DM1.Tb_CliCRAZAO.Value;
DM1.Tb_ForFDENOM.Value   :=DM1.Tb_CliCDENOM.Value;
DM1.Tb_ForFNLOG.Value    :=DM1.Tb_CliCLOG.Value;
DM1.Tb_ForFNLOG.Value    :=DM1.Tb_CliCLOG.Value;
DM1.Tb_ForFNUM.Value     :=DM1.Tb_CliCNUM.Value;
DM1.Tb_ForFBAIRRO.Value  :=DM1.Tb_CliCBAIRRO.Value;
DM1.Tb_ForFCIDADE.Value  :=DM1.Tb_CliCCIDADE.Value;
DM1.Tb_ForFUF.Value      :=DM1.Tb_CliCUF.Value;
DM1.Tb_ForFCODBAI.Value  :=DM1.Tb_CliCCODBAI.Value;
DM1.Tb_ForFCODLOC.Value  :=DM1.Tb_CliCCODLOC.Value;
DM1.Tb_ForFCEP.Value     :=DM1.Tb_CliCCEP.Value;
DM1.Tb_ForFFONE.Value    :=DM1.Tb_CliCFONE01.Value;
DM1.Tb_ForFFONEC01.Value :=DM1.Tb_CliCFONE02.Value;
DM1.Tb_ForFFONEc02.Value :=DM1.Tb_CliCFONE03.Value;
DM1.Tb_ForFFONEC03.Value :=DM1.Tb_CliCFONECOM.Value;
DM1.Tb_ForFFAX.Value     :=DM1.Tb_CliCFAX.Value;
DM1.Tb_ForFDTCAD.Value   :=date;
if DM1.Tb_CliCCNPJ.AsFloat>0 then
  DM1.Tb_ForFCGC.AsFloat   :=DM1.Tb_CliCCNPJ.Value
else
  DM1.Tb_ForFCGC.AsFloat   :=DM1.Tb_CliCCPF.Value;
DM1.Tb_ForFIE.Value      :=DM1.Tb_CliCIE.Value;

DM1.Tb_ForFEMAIL.Value     :=DM1.Tb_CliCEMAIL.Value;
DM1.Tb_ForFCODUSR_INC.Value:=codusr;
DM1.Tb_ForFOBS1.Value      :=DM1.Tb_CliCOBS01.Value;
DM1.Tb_ForFOBS2.Value      :=DM1.Tb_CliCOBS02.Value;
DM1.Tb_For.Post;
fmensagem('Fornecedor Gravado Codigo: '+DM1.Tb_ForFCODFOR.AsString,0,['0'],0);


end;

procedure TFrm_Cli.SbnEnderCepClick(Sender: TObject);
var
mEnderIgual: Boolean;
mCep:String;
begin
  inherited;
if not fEstanaNet then
   begin
   fmensagem('Favor Conectar na internet para que possa ser feito essa Consulta!',0,['0'],0);
   exit;
   end;
mCep:=db_cep.Text;
if fSonumero(mcep)<>0 then
   begin
//   mcinst2:='http://10.1.1.200/hci/interfacedb3.php?sql=select * from CEP where CEP='+chr(39)+FormatFloat('00000000',mcep)+chr(39);

   testeform := TFrm_Cli(FindGlobalComponent('Frm_buscacep'));
   if testeform=nil then
      Application.CreateForm(TFrm_BuscaCep,  Frm_BuscaCep)
   else
      begin
      Frm_BuscaCep.free;
      Frm_BuscaCep:=nil;
      Application.CreateForm(TFrm_BuscaCep,  Frm_BuscaCep)
      end;
   Frm_BuscaCep.mCep_Origem:='frm_cli';
   Frm_BuscaCep.mCepEncontrado:=false;
   Frm_BuscaCep.CEP.Text:=mCep;
   Frm_BuscaCep.bbBuscarCEPClick(Self);
   if Frm_BuscaCep.mCepencontrado then
      begin
      if DM1.Tb_CliCENDERC.Value=DM1.Tb_CliCLOG.Value then
         mEnderIgual:=true
      else
         mEnderIgual:=false;
      if (DM1.Tb_PargerPCODBAI.Value=1) and
         (fSonumero(DM_MYSQL.cds_CepCEP.AsString)<>0) then
         begin
         if flcadbai(0,0,DM_MYSQL.cds_CepBAI.AsString) then
            DM1.Tb_CliCCODBAI.Value:=DM1.Tb_BaiBCODBAI.Value
         else
            begin
            DM1.Tb_Bai.Append;
            DM1.Tb_BaiBNOME.Value:=DM_MYSQL.cds_CepBAI.AsString;
            DM1.Tb_Bai.Post;
            DM1.Tb_CliCCODBAI.Value:=DM1.Tb_BaiBCODBAI.Value;
            end
         end;

      if (DM1.Tb_PargerPCODLOC.Value=1) and
         (DM_MYSQL.cds_CepCID.AsString<>'') then
         begin
         if flcadloc(0,0,DM_MYSQL.cds_CepCID.AsString) then
            begin
            DM1.Tb_CliCCODLOC.Value:=DM1.Tb_LocLCODLOC.Value;
            DM1.Tb_CliCUF.Value    :=DM1.Tb_LocLUF.Value;
            end
         else
            begin
            DM1.Tb_Loc.Append;
            DM1.Tb_LocLNOME.Value:=DM_MYSQL.cds_CepCID.AsString;
            DM1.Tb_LocLUF.Value  :=DM_MYSQL.cds_CepUF.AsString;
            DM1.Tb_Loc.Post;
            DM1.Tb_CliCCODLOC.Value:=DM1.Tb_LocLCODLOC.Value;
            end;
         end;
      DM1.Tb_CliCLOG.Value   :=DM_MYSQL.cds_CepDESC02.AsString;
      DM1.Tb_CliCCEP.Value   :=MaskCep(DM_MYSQL.cds_CepCEP.AsString);
      DM1.Tb_CliCBAIRRO.Value:=DM_MYSQL.cds_CepBAI.AsString;
      DM1.Tb_CliCCIDADE.Value:=DM_MYSQL.cds_CepCID.AsString;
      DM1.Tb_CliCUF.Value    :=DM_MYSQL.cds_CepUF.AsString;
      if mEnderIgual then
         begin
         DM1.Tb_CliCENDERC.Value   :=DM_MYSQL.cds_CepDESC02.AsString;
         DM1.Tb_CliCCEPC.Value   :=MaskCep(DM_MYSQL.cds_CepCEP.AsString);
         DM1.Tb_CliCBAIRROC.Value:=DM_MYSQL.cds_CepBAI.AsString;
         DM1.Tb_CliCCIDADEC.Value:=DM_MYSQL.cds_CepCID.AsString;
         DM1.Tb_CliCUFC.Value    :=DM_MYSQL.cds_CepUF.AsString;
         DM1.Tb_CliCCODLOCC.Value:=DM1.Tb_CliCCODLOC.Value;
         DM1.Tb_CliCCODBAIC.Value:=DM1.Tb_CliCCODBAI.Value;
         end;
      db_log.SelStart:=1;
      db_log.SelLength:=length(DM1.Tb_CliCLOG.asstring);
      db_log.SetFocus;
      end
   else
      fMensagem('o Cep Solicitado nao foi encontrado!',0,['0'],0);
   FreeAndNil(Frm_BuscaCep);
   end
else
   begin
   testeform := TFrm_Cli(FindGlobalComponent('Frm_buscacep'));
   if testeform=nil then
      Application.CreateForm(TFrm_BuscaCep,  Frm_BuscaCep)
   else
      begin
      Frm_BuscaCep.free;
      Frm_BuscaCep:=nil;
      Application.CreateForm(TFrm_BuscaCep,  Frm_BuscaCep)
      end;
   Frm_BuscaCep.mCep_Origem:='frm_cli';
   Frm_BuscaCep.mCepEncontrado:=false;
   Frm_BuscaCep.CEP.Text:='';
   if length(DM1.Tb_CliCLOG.AsString)>1 then
      Frm_BuscaCep.LOGRADOURO.Text:=DM1.Tb_CliCLOG.Value;
   if length(DM1.Tb_CliCBAIRRO.AsString)>1 then
      Frm_BuscaCep.BAIRRO.Text:=DM1.Tb_CliCBAIRRO.Value;
   if length(DM1.Tb_CliCCIDADE.AsString)>1 then
      Frm_BuscaCep.CIDADE.Text:=DM1.Tb_CliCCIDADE.Value;
   if length(DM1.Tb_CliCUF.AsString)>1 then
      Frm_BuscaCep.UF.Text    :=DM1.Tb_CliCUF.Value;
   Frm_BuscaCep.ShowModal;

   if Frm_BuscaCep.mAceitouCep then
      begin
      if DM1.Tb_CliCENDERC.Value=DM1.Tb_CliCLOG.Value then
         mEnderIgual:=true
      else
         mEnderIgual:=false;
      if (DM1.Tb_PargerPCODBAI.Value=1) and
         (DM_MYSQL.cds_CepBAI.AsString<>'') then
         begin
         if flcadbai(0,0,DM_MYSQL.cds_CepBAI.AsString) then
            DM1.Tb_CliCCODBAI.Value:=DM1.Tb_BaiBCODBAI.Value
         else
            begin
            DM1.Tb_Bai.Append;
            DM1.Tb_BaiBNOME.Value:=DM_MYSQL.cds_CepBAI.AsString;
            DM1.Tb_Bai.Post;
            DM1.Tb_CliCCODBAI.Value:=DM1.Tb_BaiBCODBAI.Value;
            end
         end;

      if (DM1.Tb_PargerPCODLOC.Value=1) and
         (DM_MYSQL.cds_CepCID.AsString<>'') then
         begin
         if flcadloc(0,0,DM_MYSQL.cds_CepCID.AsString) then
            begin
            DM1.Tb_CliCCODLOC.Value:=DM1.Tb_LocLCODLOC.Value;
            DM1.Tb_CliCUF.Value    :=DM1.Tb_LocLUF.Value;
            end
         else
            begin
            DM1.Tb_Loc.Append;
            DM1.Tb_LocLNOME.Value:=DM_MYSQL.cds_CepCID.AsString;
            DM1.Tb_LocLUF.Value  :=DM_MYSQL.cds_CepUF.AsString;
            DM1.Tb_Loc.Post;
            DM1.Tb_CliCCODLOC.Value:=DM1.Tb_LocLCODLOC.Value;
            end;
         end;
      DM1.Tb_CliCLOG.Value   :=DM_MYSQL.cds_CepCID.AsString;
      DM1.Tb_CliCCEP.Value   :=MaskCep(DM_MYSQL.cds_CepCEP.AsString);
      DM1.Tb_CliCBAIRRO.Value:=DM_MYSQL.cds_CepBAI.AsString;
      DM1.Tb_CliCCIDADE.Value:=DM_MYSQL.cds_CepCID.AsString;
      DM1.Tb_CliCUF.Value    :=DM_MYSQL.cds_CepUF.AsString;
      if mEnderIgual then
         begin
         DM1.Tb_CliCENDERC.Value   :=DM_MYSQL.cds_CepDESC02.AsString;
         DM1.Tb_CliCCEPC.Value   :=MaskCep(DM_MYSQL.cds_CepCEP.AsString);
         DM1.Tb_CliCBAIRROC.Value:=DM_MYSQL.cds_CepBAI.AsString;
         DM1.Tb_CliCCIDADEC.Value:=DM_MYSQL.cds_CepCID.AsString;
         DM1.Tb_CliCUFC.Value    :=DM_MYSQL.cds_CepUF.AsString;
         DM1.Tb_CliCCODLOCC.Value:=DM1.Tb_CliCCODLOC.Value;
         DM1.Tb_CliCCODBAIC.Value:=DM1.Tb_CliCCODBAI.Value;
         end;
      db_log.SelStart:=1;
      db_log.SelLength:=length(DM1.Tb_CliCLOG.asstring);
      db_log.SetFocus;
      end;
   FreeAndNil(Frm_BuscaCep);
   end;


end;

procedure TFrm_Cli.db_logEnter(Sender: TObject);
begin
  inherited;
if DM1.Tb_CliCLOG.Value=DM1.Tb_CliCENDERC.Value then
   DM1.Tb_CliCENDERC.Value:='';
end;

procedure TFrm_Cli.db_ieEnter(Sender: TObject);
begin
  inherited;
  if Trim(db_ie.Text) <> '' then
     db_ie.Text := LimpaString(db_ie.Text);
end;

procedure TFrm_Cli.bbDebitosClick(Sender: TObject);
begin
  inherited;
testeform := TFrm_Cli(FindGlobalComponent('Frm_cli_debitos'));
if testeform=nil then
   Application.CreateForm(TFrm_Cli_Debitos, Form_Cli_Debitos)
else
   begin
   Form_Cli_Debitos.Free;
   Form_Cli_Debitos:=nil;
   Application.CreateForm(TFrm_Cli_Debitos, Form_Cli_Debitos);
   end;


if (DM1.Tb_CliCCODCLI.IsNull) or (DM1.Tb_CliCCODCLI.Value=0) then
   begin
   verteclado(1);
   fmensagem('Favor Selecionar um cliente válido!',0,['0'],0);
   exit;
   end;
Form_Cli_Debitos.lbl_razao.Caption:=DM1.Tb_CliCRAZAO.AsString;
if length(DM1.Tb_CliCDENOM.AsString)>1 then
   Form_Cli_Debitos.lbl_razao.Caption:=Form_Cli_Debitos.lbl_razao.Caption+'/'
   +DM1.Tb_CliCDENOM.AsString;
Form_Cli_Debitos.lbl_razao.Caption:=Form_Cli_Debitos.lbl_razao.Caption+'['
                                  +DM1.Tb_CliCCODCLI.AsString+']';
mCodCli_Origem:=DM1.Tb_CliCCODCLI.AsFloat;
Form_Cli_Debitos.lbl_ender_comp.Caption:=DM1.Tb_CliCLOG.AsString
+' '+DM1.Tb_CliCBAIRRO.AsString+' '+DM1.Tb_CliCCIDADE.AsString+'-'+DM1.Tb_CliCUF.AsString;

Form_Cli_Debitos.lbl_contato.Caption:=DM1.Tb_CliCNOMCON.AsString+' '+DM1.Tb_CliCFONCON.AsString
                                    +'/'+DM1.Tb_CliCFONE01.AsString;


Form_Cli_Debitos.BBAPLICARClick(self);
Form_Cli_Debitos.ShowModal;
Form_Cli_Debitos.Free;
Form_Cli_Debitos:=nil;

end;

procedure TFrm_Cli.db_rotaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) then
  begin
  DM1.Tb_CliCROTA.AsFloat:=fSonumero(fChamaRegiao(0,'frm_cli',key));
  db_rotaExit(Self);
  end;
end;

procedure TFrm_Cli.db_razaoExit(Sender: TObject);
var
ctemp: string;
begin
  inherited;
if DM1.Tb_Cli.State in [dsinsert] then
  begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add(' SELECT * FROM CADCLI ');
  DM1.Query1.SQL.Add(' WHERE CRAZAO LIKE '+chr(39)+db_razao.Text+'%'+chr(39));
  DM1.Query1.Open;
  ctemp:=DM1.Query1.FieldByName('CCODCLI').AsString;
  if not DM1.Query1.IsEmpty then
    if fmensagem('Já existe um cliente com este nome!'+#13+'Codigo..:'+ctemp+'!'
             +#13+'Deseja Continuar?',1,['1','2'],1)=mrNo then
      begin
      btn_cancelar.Click;
      CAMPO.ItemIndex:=1;
      Edit1.Text:=ctemp;
      BBnAtu.Click;
      end;
  end;
end;

procedure TFrm_Cli.bbConsSefazClick(Sender: TObject);
begin
  inherited;

Application.CreateForm(TFrm_Nfe_ConsCad, Frm_Nfe_ConsCad);
Frm_NFe_ConsCad.mOrigemInfo:=0;
Frm_Nfe_ConsCad.ShowMOdal;
if (Frm_NFe_ConsCad.mTipoOper>0) then
   begin
   if Frm_NFe_ConsCad.mTipoOper=2 then
      DM1.Tb_Cli.Insert;
   if DM1.Tb_Cli.State in [dsEdit,dsInsert] then
      begin
      if fsonumero(Frm_NFe_ConsCad.edt_enc_cnpj.Text)>0 then
         DM1.Tb_CliCCNPJ.Value:=fsonumero(Frm_NFe_ConsCad.edt_enc_cnpj.Text);
      if fsonumero(Frm_NFe_ConsCad.edt_enc_cpf.Text)>0 then
         DM1.Tb_CliCCPF.Value:=fsonumero(Frm_NFe_ConsCad.edt_enc_cpf.Text);
      if fsonumero(Frm_NFe_ConsCad.edt_enc_ie.Text)>0 then
         DM1.Tb_CliCIE.Value:=fdeixanum(Frm_NFe_ConsCad.edt_enc_ie.Text);
      if trim(Frm_NFe_ConsCad.edt_razsoc.Text)<>'' then
         DM1.Tb_CliCRAZAO.Value:=Frm_NFe_ConsCad.edt_razsoc.Text;
      if trim(Frm_NFe_ConsCad.edt_fantasia.Text)<>'' then
         DM1.Tb_CliCDENOM.Value:=Frm_NFe_ConsCad.edt_fantasia.Text;
      if trim(Frm_NFe_ConsCad.edt_endereco.Text)<>'' then
         begin
         DM1.Tb_CliCLOG.Value:=Frm_NFe_ConsCad.edt_endereco.Text;
         if trim(Frm_NFe_ConsCad.edt_ender_nro.Text)<>'' then
            DM1.Tb_CliCLOG.Value:=DM1.Tb_CliCLOG.Value+' No.'+Frm_NFe_ConsCad.edt_ender_nro.text;
         if trim(Frm_NFe_ConsCad.edt_ender_complemento.Text)<>'' then
            DM1.Tb_CliCLOG.Value:=DM1.Tb_CliCLOG.Value+' '+Frm_NFe_ConsCad.edt_ender_complemento.text;
         DM1.Tb_CliCENDERC.Value:=DM1.Tb_CliCLOG.Value;
         end;
      if trim(Frm_NFe_ConsCad.edt_bairro.Text)<>'' then
         begin
         DM1.Tb_CliCBAIRRO.Value :=Frm_NFe_ConsCad.edt_bairro.Text;
         DM1.Tb_CliCBAIRROC.Value:=DM1.Tb_CliCBAIRRO.Value;
         end;
      if trim(Frm_NFe_ConsCad.edt_cidade.Text)<>'' then
         begin
         DM1.Tb_CliCCIDADE.Value :=Frm_NFe_ConsCad.edt_cidade.Text;
         DM1.Tb_CliCCIDADEC.Value:=DM1.Tb_CliCCIDADE.Value;
         DM1.Tb_CliCUF.Value :=Frm_NFe_ConsCad.edt_uf.Text;
         DM1.Tb_CliCUFC.Value:=DM1.Tb_CliCUF.Value;

         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add('Select LCODLOC,LNOME,LUF from CADLOC where '
                     +iif(DM1.Qr_tid.Locate('TINOME','CADLOC',[]),'','  LCODEMP=0'+IntToStr(codemp)+' and ')
                     +' LCODMUN_IBGE=:CODIBGE');
         DM1.Query1.ParamByName('CODIBGE').AsFloat:=fSonumero(Frm_NFe_ConsCad.edt_codibge.Text);
         DM1.Query1.Open;
         if DM1.Query1.IsEmpty then
            begin
            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.Add('Select LCODLOC,LNOME,LUF from CADLOC where '
                        +iif(DM1.Qr_tid.Locate('TINOME','CADLOC',[]),'','  LCODEMP=0'+IntToStr(codemp)+' and ')
                        +' LNOME=:NOMLOC');
            DM1.Query1.ParamByName('NOMLOC').AsString:=Frm_NFe_ConsCad.edt_cidade.Text;
            DM1.Query1.Open;
            end;
         if DM1.Query1.IsEmpty then
            begin
            DM1.Tb_CliCCODLOC.Value:=0;
            DM1.Tb_CliCCODLOCC.Value:=0;
            end
         else
            begin
            DM1.Tb_CliCCODLOC.Value :=DM1.Query1.fieldbyName('LCODLOC').AsFloat;
            DM1.Tb_CliCCODLOCC.Value:=DM1.Tb_CliCCODLOC.Value;


            DM1.Tb_CliCCIDADE.Value :=DM1.Query1.fieldbyName('LNOME').AsString;
            DM1.Tb_CliCUF.Value     :=DM1.Query1.fieldbyName('LUF').AsString;
            DM1.Tb_CliCCIDADEC.Value:=DM1.Tb_CliCCIDADE.Value;
            DM1.Tb_CliCUFC.Value:=DM1.Tb_CliCUF.Value;

            end;
         end;

      if fsonumero(Frm_NFe_ConsCad.edt_cep.Text)>0 then
         begin
         DM1.Tb_CliCCEP.Value   :=MaskCep(Frm_NFe_ConsCad.edt_cep.Text);

         DM1.Tb_CliCCEPC.Value:=DM1.Tb_CliCCEP.Value;
         end;

      end;
   if Frm_NFe_ConsCad.mTipoOper=2 then
      DM1.Tb_Cli.Post;
   end;
Frm_Nfe_ConsCad.Free;
Frm_Nfe_ConsCad:=nil;

end;

procedure TFrm_Cli.btn_salva_fiscaisClick(Sender: TObject);
begin
//Salvar Modelo de Fiscais
//icmr
fDeletaPadroes(0,'_CLI','');
fGravaPadroes(0,'ICMSR'          ,'checked'         ,'_CLI',DM1.Tb_CliCICMSR.AsString);
fGravaPadroes(0,'DBCB_ICMSST_LIQ','checked'         ,'_CLI',DM1.Tb_CliCICMSST_LIQ.AsString);
fGravaPadroes(0,'ICMSNOR'        ,'checked'         ,'_CLI',DM1.Tb_CliCICMSNOR.AsString);
fGravaPadroes(0,'ICMSTP'         ,'checked'         ,'_CLI',DM1.Tb_CliCICMSTP.AsString);
fGravaPadroes(0,'DBCB_REDICMSNOR','checked'         ,'_CLI',DM1.Tb_CliCREDICMSNOR.AsString);
fGravaPadroes(0,'REPAS'          ,'checked'         ,'_CLI',DM1.Tb_CliCREPAS.AsString);
fGravaPadroes(0,'IPI'            ,'checked'         ,'_CLI',DM1.Tb_CliCIPI.AsString);
fGravaPadroes(0,'CONSF'          ,'checked'         ,'_CLI',DM1.Tb_CliCCONSF.AsString);
fGravaPadroes(0,'DBCB_REVENDA_CP','checked'         ,'_CLI',DM1.Tb_CliCREVENDA_CP.AsString);
fGravaPadroes(0,'DBCB_DEC5834'   ,'checked'         ,'_CLI',DM1.Tb_CliCDEC5834.AsString);
fGravaPadroes(0,'CBCB_DEC5825'   ,'checked'         ,'_CLI',DM1.Tb_CliCDEC5825.AsString);
fGravaPadroes(0,'DBRG_SUPERMICRO','itemindex'       ,'_CLI',DM1.Tb_CliCSUPERMICRO.AsString);
fGravaPadroes(0,'CB_FONEOBRIGATORIO'   ,'checked',  '_CLI',IIF(cb_FoneObrigatorio.Checked,1,0));
fGravaPadroes(0,'CB_EMAILOBRIGATORIO'  ,'checked',  '_CLI',IIF(cb_EmailObrigatorio.Checked,1,0));
fGravaPadroes(0,'CB_CONTATOOBRIGATORIO','checked',  '_CLI',IIF(cb_ContatoObrigatorio.Checked,1,0));
fGravaPadroes(0,'CB_VALCCDEP','checked',            '_CLI',IIF(CB_VALCCDEP.Checked,1,0));
//
end;

procedure TFrm_Cli.db_fone01Exit(Sender: TObject);
begin
  inherited;
DM1.Tb_CliCFONE01.Value:=MaskFone(DM1.Tb_CliCFONE01.Value);
if Myhint<>nil then
   RemoveHint(Myhint)
end;

procedure TFrm_Cli.db_fone02Exit(Sender: TObject);
begin
  inherited;
DM1.Tb_CliCFONE02.Value:=MaskFone(DM1.Tb_CliCFONE02.Value);
if Myhint<>nil then
   RemoveHint(Myhint)

end;

procedure TFrm_Cli.db_fone03Exit(Sender: TObject);
begin
  inherited;
DM1.Tb_CliCFONE03.Value:=MaskFone(DM1.Tb_CliCFONE03.Value);
if Myhint<>nil then
   RemoveHint(Myhint)

end;

procedure TFrm_Cli.db_faxExit(Sender: TObject);
begin
  inherited;
DM1.Tb_CliCFAX.Value:=MaskFone(DM1.Tb_CliCFAX.Value);
if Myhint<>nil then
   RemoveHint(Myhint)

end;

procedure TFrm_Cli.DBEdit4Exit(Sender: TObject);
begin
  inherited;
DM1.Tb_CliCFONERES.Value:=MaskFone(DM1.Tb_CliCFONERES.Value);

end;

procedure TFrm_Cli.db_celularExit(Sender: TObject);
begin
  inherited;
DM1.Tb_CliCCELULAR.Value:=MaskFone(DM1.Tb_CliCCELULAR.Value);

end;

procedure TFrm_Cli.db_fontraExit(Sender: TObject);
begin
  inherited;
DM4.Tb_Cli_ICIC_FONETRAB.Value:=MaskFone(DM4.Tb_Cli_ICIC_FONETRAB.Value);
if Myhint<>nil then
   RemoveHint(Myhint)


end;

procedure TFrm_Cli.db_conj_foneExit(Sender: TObject);
begin
  inherited;
DM4.Tb_Cli_ICIC_CONJUGE_FONETRAB.Value:=MaskFone(DM4.Tb_Cli_ICIC_CONJUGE_FONETRAB.Value);
if Myhint<>nil then
   RemoveHint(Myhint)


end;

procedure TFrm_Cli.DBE_rb_foneExit(Sender: TObject);
begin
  inherited;
DM4.Tb_Cli_RefBanRB_FONE.Value:=MaskFone(DM4.Tb_Cli_RefBanRB_FONE.value);
if Myhint<>nil then
   RemoveHint(Myhint)

end;

procedure TFrm_Cli.DBE_RC_FoneExit(Sender: TObject);
begin
  inherited;
DM4.Tb_Cli_RefComRC_FONE.Value:=MaskFone(DM4.Tb_Cli_RefComRC_FONE.value);
if Myhint<>nil then
   RemoveHint(Myhint)

end;

procedure TFrm_Cli.DBE_RP_FoneExit(Sender: TObject);
begin
  inherited;
DM4.Tb_Cli_RefPesRP_FONE.Value:=MaskFone(DM4.Tb_Cli_RefPesRP_FONE.value);
if Myhint<>nil then
   RemoveHint(Myhint)


end;


function TFrm_Cli.RevealHint (Control: TControl): THintWindow;

var
  ShortHint: string;

  AShortHint: array[0..255] of Char;

  HintPos: TPoint;

  HintBox: TRect;

begin
  Result := THintWindow.Create(Control);

  ShortHint := GetShortHint(Control.Hint);

  HintPos := Control.ClientOrigin;

  Inc(HintPos.Y, Control.Height + 6);

  HintBox := Bounds(0, 0, Screen.Width, 0);

  DrawText(Result.Canvas.Handle, StrPCopy(AShortHint, ShortHint), -1, HintBox, DT_CALCRECT or DT_LEFT or DT_WORDBREAK or DT_NOPREFIX);

  OffsetRect(HintBox, HintPos.X, HintPos.Y);

  Inc(HintBox.Right, 6);

  Inc(HintBox.Bottom, 2);

  Result.ActivateHint(HintBox, ShortHint);

end;

//Leia mais em: Dicas - Ativar o Hint http://www.devmedia.com.br/dicas-ativar-o-hint/948#ixzz2GG1H2xhK


procedure TFrm_Cli.RemoveHint (var Hint: THintWindow);

begin
  Hint.ReleaseHandle;

  Hint.Free;

  Hint := nil;

end;

//ia mais em: Dicas - Ativar o Hint http://www.devmedia.com.br/dicas-ativar-o-hint/948#ixzz2GG1vedi3

procedure TFrm_Cli.db_fone01KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
db_fone01.Hint:=MaskFone(db_fone01.Text+key);
if Myhint<>nil then
   RemoveHint(Myhint);
myhint := RevealHint(db_fone01);


end;

procedure TFrm_Cli.db_fone02KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
db_fone02.Hint:=MaskFone(db_fone02.Text+key);
if Myhint<>nil then
   RemoveHint(Myhint);
myhint := RevealHint(db_fone02);

end;

procedure TFrm_Cli.db_fone03KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
db_fone03.Hint:=MaskFone(db_fone03.Text+key);
if Myhint<>nil then
   RemoveHint(Myhint);
myhint := RevealHint(db_fone03);

end;

procedure TFrm_Cli.db_faxKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
db_fax.Hint:=MaskFone(db_fax.Text+key);
if Myhint<>nil then
   RemoveHint(Myhint);
myhint := RevealHint(db_fax);

end;

procedure TFrm_Cli.db_celularKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
db_celular.Hint:=MaskFone(db_celular.Text+key);
if Myhint<>nil then
   RemoveHint(Myhint);
myhint := RevealHint(db_celular);

end;

procedure TFrm_Cli.db_fontraKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
db_fontra.Hint:=MaskFone(db_fontra.Text+key);
if Myhint<>nil then
   RemoveHint(Myhint);
myhint := RevealHint(db_fontra);

end;

procedure TFrm_Cli.db_conj_foneKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
db_conj_fone.Hint:=MaskFone(db_conj_fone.Text+key);
if Myhint<>nil then
   RemoveHint(Myhint);
myhint := RevealHint(db_conj_fone);

end;

procedure TFrm_Cli.dbe_dtnasExit(Sender: TObject);
begin
  inherited;
if Myhint<>nil then
   RemoveHint(Myhint)

end;

procedure TFrm_Cli.DBE_rb_foneKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
DBE_rb_fone.Hint:=MaskFone(DBE_rb_fone.Text+key);
if Myhint<>nil then
   RemoveHint(Myhint);
myhint := RevealHint(DBE_rb_fone);

end;

procedure TFrm_Cli.DBE_RC_FoneKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
DBE_RC_Fone.Hint:=MaskFone(DBE_rC_fone.Text+key);
if Myhint<>nil then
   RemoveHint(Myhint);
myhint := RevealHint(DBE_rC_fone);

end;

procedure TFrm_Cli.DBE_RP_FoneKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
DBE_RP_Fone.Hint:=MaskFone(DBE_RP_Fone.Text+key);
if Myhint<>nil then
   RemoveHint(Myhint);
myhint := RevealHint(DBE_RP_Fone);

end;

procedure TFrm_Cli.Delete1Click(Sender: TObject);
begin
  inherited;
if (DM2.Tb_Con_CliCC_CLIFOR.AsInteger=DM1.Tb_CliCCODCLI.AsInteger) then
  if not (DM2.Tb_Con_Cli.State in [DsEdit, dsInsert]) then
    DM2.Tb_Con_Cli.Delete;
end;

procedure TFrm_Cli.FormShow(Sender: TObject);
begin
  inherited;
dbgContatos.ReadOnly      :=True;
dbmContatos.ReadOnly      :=True;
CarregarGrid('Frm_Cli',dbgContatos);
CarregarGrid('Frm_Cli',DBGrid1);

if flfilpad(0,'_CLI','') then
  begin
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_FONEOBRIGATORIO',[]) then
    cb_FoneObrigatorio.Checked := IIF(DM4.Tb_FilPad2FPVALOR.AsInteger=1,True,False);
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_EMAILOBRIGATORIO',[]) then
    cb_EmailObrigatorio.Checked := IIF(DM4.Tb_FilPad2FPVALOR.AsInteger=1,True,False);
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CONTATOOBRIGATORIO',[]) then
    cb_ContatoObrigatorio.Checked := IIF(DM4.Tb_FilPad2FPVALOR.AsInteger=1,True,False);
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_VALCCDEP',[]) then
    CB_VALCCDEP.Checked := IIF(DM4.Tb_FilPad2FPVALOR.AsInteger=1,True,False);
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_STATUSPADRAO',[]) then
    cb_statuspadrao.ItemIndex := valint(DM4.Tb_FilPad2FPVALOR.AsString);
  if DM4.Tb_FilPad2.Locate('FPCOMP','clb_CBLQEMP',[]) then
    clb_CBLQEMP.ItemIndex := valint(DM4.Tb_FilPad2FPVALOR.AsString);

  end;

end;

procedure TFrm_Cli.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if Key = vk_F7 then
  begin
  if SalvarGrid('Frm_Cli',dbgContatos) then
    fmensagem('Salvo novo Grid de Contatos!',0,['0'],0);
  if SalvarGrid('Frm_Cli',DBGrid1) then
    fmensagem('Salvo novo Grid de Cadastro!',0,['0'],0);
  end;
end;

procedure TFrm_Cli.cb_FoneObrigatorioClick(Sender: TObject);
begin
  inherited;
fDeletaPadroes(0,'_CLI','CB_FONEOBRIGATORIO');
fGravaPadroes(0,'CB_FONEOBRIGATORIO'   ,'checked',  '_CLI',IIF(cb_FoneObrigatorio.Checked,1,0));
end;

procedure TFrm_Cli.cb_EmailObrigatorioClick(Sender: TObject);
begin
  inherited;
fDeletaPadroes(0,'_CLI','CB_EMAILOBRIGATORIO');
fGravaPadroes(0,'CB_EMAILOBRIGATORIO'  ,'checked',  '_CLI',IIF(cb_EmailObrigatorio.Checked,1,0));
end;

procedure TFrm_Cli.cb_ContatoObrigatorioClick(Sender: TObject);
begin
  inherited;
fDeletaPadroes(0,'_CLI','CB_CONTATOOBRIGATORIO');
fGravaPadroes(0,'CB_CONTATOOBRIGATORIO','checked',  '_CLI',IIF(cb_ContatoObrigatorio.Checked,1,0));
end;

procedure TFrm_Cli.db_fonconExit(Sender: TObject);
begin
  inherited;
DM1.Tb_CliCFONCON.Value:=MaskFone(DM1.Tb_CliCFONCON.Value);

end;

procedure TFrm_Cli.sbn_novaClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg: TJPEGImage;

qr_cont_imagem: TQuery;
mChave: Integer;
mIDCLI: String;
begin
  inherited;


if trim(DM1.Tb_CliIDCli.AsString)='' then
   begin
   if not fLerGenerico_query('CADCLI','ROWID',' CCODCLI='+DM1.Tb_CLICCODCLI.AsString,query_consulta) then
      begin
      MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
      exit;
      end
   else
      mIdCli:=query_consulta.fieldbyname('ROWID').asstring;

   end
else
   mIdCli:=DM1.Tb_CliIDCli.AsString;

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
   qr_cont_imagem.SQL.Add('Select max(CI_SEQ) as cod from CADCLI_IMAGEM '
                    +' where CI_ROWID=:IDCLI ');
   qr_cont_imagem.ParamByName('IDCLI').AsString     :=mIDCLI;
   qr_cont_imagem.open;
   mChave:=qr_cont_imagem.fieldbyName('cod').AsInteger+1;


   qr_cont_imagem.Close;
   qr_cont_imagem.SQL.Clear;
   qr_cont_imagem.SQL.Add('Insert into CADCLI_IMAGEM ( '
                    +' CI_ROWID  '
                    +',CI_SEQ    '
                    +',CI_OBS    '
                    +',CI_IMAGEM '
                    +',CI_NOMEORI '
                    +') values ('
                    +' :CI_ROWID  '
                    +',:CI_SEQ    '
                    +',:CI_OBS    '
                    +',:CI_IMAGEM '
                    +',:CI_NOMEORI '
                    +')');

   qr_cont_imagem.ParamByName('CI_ROWID').AsString      :=mIDCLI;
   qr_cont_imagem.ParamByName('CI_SEQ').AsInteger      :=mChave;
   if trim(frm_Imagem_WebCam.edt_obs.Text)='' then
      qr_cont_imagem.ParamByName('CI_OBS').AsString    :='IMAGEM: '+IntToStr(mChave)
   else
      qr_cont_imagem.ParamByName('CI_OBS').AsString    :=frm_Imagem_WebCam.edt_obs.Text;

   qr_cont_imagem.ParamByName('CI_IMAGEM').LoadFromStream(imagestream, ftBlob);
   qr_cont_imagem.ParamByName('CI_NOMEORI').AsString    :=Fnomearq_Pasta(0, frm_Imagem_WebCam.mnomearquivo);
   try
      qr_cont_imagem.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(qr_cont_imagem,2754,'frm_dar','CADCLI_IMAGEM');
      end;
   FreeAndNil(qr_cont_imagem);
   FreeAndNil(imagestream);
   if feImagem(frm_Imagem_WebCam.mNomeArquivo) then
      FreeAndNil(jpg);
   end;
freeandnil(frm_imagem_WebCam);
mIDCLI_src:='-1';

Src_CliDataChange(DM1.Tb_Cli,DM1.Tb_CliCCODEMP);





end;

procedure TFrm_Cli.sbn_alterarClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg: TJPEGImage;
query_ldr: TQuery;
mIDCLI: String;
begin
  inherited;

if trim(DM1.Tb_CliIDCli.AsString)='' then
   begin
   if not fLerGenerico_query('CADCLI','ROWID',' CCODCLI='+DM1.Tb_CLICCODCLI.AsString,query_consulta) then
      begin
      MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
      exit;
      end
   else
      mIdCli:=query_consulta.fieldbyname('ROWID').asstring;

   end
else
   mIdCli:=DM1.Tb_CliIDCli.AsString;

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
   query_ldr.SQL.Add('Update CADCLI_IMAGEM set '
                    +' CI_OBS=:CI_OBS '
                    +',CI_IMAGEM=:CI_IMAGEM '
                    +',CI_NOMEORI=:CI_NOMEORI '
                    +' where '
                    +' CI_ROWID=:CI_ROWID '
                    +' and CI_SEQ=:CI_SEQ'
                    );

   query_ldr.ParamByName('CI_ROWID').AsString      :=mIDCLI;
   query_ldr.ParamByName('CI_SEQ').AsInteger      :=Tb_CR_imagemCI_SEQ.AsInteger;



   if (trim(frm_Imagem_WebCam.edt_obs.Text)<>'') then
      query_ldr.ParamByName('CI_OBS').AsString:=trim(frm_Imagem_WebCam.edt_obs.Text)
   else if (trim(Tb_CR_imagemCI_OBS.AsString)='') then
      query_ldr.ParamByName('CI_OBS').AsString    :='IMAGEM: '+Tb_CR_imagemCI_OBS.AsString
   else
      query_ldr.ParamByName('CI_OBS').AsString    :=Tb_CR_imagemCI_OBS.AsString;



   query_ldr.ParamByName('CI_IMAGEM').LoadFromStream(imagestream, ftBlob);
   query_ldr.ParamByName('CI_NOMEORI').AsString    :=Fnomearq_Pasta(0, frm_Imagem_WebCam.mnomearquivo);

   try
      query_ldr.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(Query_ldr,2926,'frm_contrato','CADCLI_IMAGEM');
      end;
   FreeAndNil(query_ldr);
   FreeAndNil(imagestream);
   if feImagem(frm_Imagem_WebCam.mNomeArquivo) then
      FreeAndNil(jpg);

   end;
freeandnil(frm_imagem_WebCam);
mIDCLI_src:='-1';

Src_CliDataChange(DM1.Tb_Cli,DM1.Tb_CliCCODEMP);




end;

procedure TFrm_Cli.sbnRenomearClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg: TJPEGImage;
query_ldr: TQuery;
mNovoNome: String;
mIdCli: String;
begin
  inherited;


if trim(DM1.Tb_CliIDCli.AsString)='' then
   begin
   if not fLerGenerico_query('CADCLI','ROWID',' CCODCLI='+DM1.Tb_CLICCODCLI.AsString,query_consulta) then
      begin
      MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
      exit;
      end
   else
      mIdCli:=query_consulta.fieldbyname('ROWID').asstring;

   end
else
   mIdCli:=DM1.Tb_CliIDCli.AsString;


mNovoNome:=InputBox('Nome Anterior '+Tb_CR_ImagemCI_OBS.AsString , 'Informe o Novo Nome','');
if (trim(mNovoNome)<>'') and (mNovoNome<>Tb_CR_ImagemCI_OBS.AsString) then
   begin
   query_ldr:=TQuery.create(Nil);
   query_ldr.databaseName:='SG_ASSOC';
   query_ldr.Close;
   query_ldr.SQL.Clear;
   query_ldr.SQL.Add('Update CADCLI_IMAGEM set '
                    +' CI_OBS=:CI_OBS '
                    +' where '
                    +' CI_ROWID=:CI_ROWID '
                    +' and CI_SEQ=:CI_SEQ'
                    );

   query_ldr.ParamByName('CI_ROWID').AsString      :=mIdCli;
   query_ldr.ParamByName('CI_SEQ').AsInteger      :=Tb_CR_ImagemCI_SEQ.AsInteger;

   query_ldr.ParamByName('CI_OBS').AsString       :=mNovoNome;
   try
      query_ldr.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(Query_ldr,2991,'frm_contrato','CADCLI_IMAGEM');
      end;
   FreeAndNil(query_ldr);

   end;
mIdCli_src:='-1';

Src_CliDataChange(DM1.Tb_Cli,DM1.Tb_CliCCODEMP);




end;

procedure TFrm_Cli.sbn_excluirClick(Sender: TObject);
var
query_ldr: TQuery;
mIDCLI: String;
begin
  inherited;

if trim(DM1.Tb_CliIDCli.AsString)='' then
   begin
   if not fLerGenerico_query('CADCLI','ROWID',' CCODCLI='+DM1.Tb_CLICCODCLI.AsString,query_consulta) then
      begin
      MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
      exit;
      end
   else
      mIdCli:=query_consulta.fieldbyname('ROWID').asstring;

   end
else
   mIdCli:=DM1.Tb_CliIDCli.AsString;


if Application.MessageBox(pchar( 'Quer Realmente excluir o registro '+Tb_CR_ImagemCI_OBS.asstring),'confirmacao',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
query_ldr:=TQuery.create(Nil);
query_ldr.databaseName:='SG_ASSOC';
query_ldr.Close;
query_ldr.SQL.Clear;
query_ldr.SQL.Add('Delete  from CADCLI_IMAGEM '
                 +' where CI_ROWID=:CI_ROWID '
                 +' and CI_SEQ=:SEQ ');
query_ldr.ParamByName('CI_ROWID').Asstring   :=mIDCLI;
query_ldr.ParamByName('SEQ').AsInteger     :=Tb_CR_ImagemCI_SEQ.AsInteger;
try
   query_ldr.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(Query_ldr,2757,'frm_contrato','CADCLI_IMAGEM');
   end;
FreeAndNil(query_ldr);
mIDCLI_src:='-1';

Src_CliDataChange(DM1.Tb_Cli,DM1.Tb_CliCCODEMP);



end;

procedure TFrm_Cli.DBGrid3DblClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg:TJPEGImage;

begin
  inherited;



if not Tb_CR_imagemCI_IMAGEM.IsNull then
   begin
   imagestream:=TMemoryStream.Create;
   Tb_CR_imagemCI_IMAGEM.SaveToStream(imagestream);
   imagestream.Position := 0;

   if (trim(Tb_CR_imagemCI_NOMEORI.asstring)='')  then
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
         if trim(Tb_CR_imagemCI_NOMEORI.asstring)<>'' then
            begin
            imagestream.SaveToFile(mcamtmp+'\'+Tb_CR_imagemCI_NOMEORI.asstring);
            fExecutarArquivo(mcamtmp+'\'+Tb_CR_imagemCI_NOMEORI.asstring);
            fAdicionarTempDel(mcamtmp+'\'+Tb_CR_imagemCI_NOMEORI.asstring);
            end
         else
            begin
            messagedlg('nao foi possivel identificar o arquivo!',mterror,[mbOK],0);
            end;

      except
         messagedlg('Não foi possivel gerar o arquivo '+mcamtmp+'\'+Tb_CR_imagemCI_NOMEORI.asstring,mtError,[mbOk],0);
         end;
      end;
   freeandnil(imagestream);


   end;







end;

procedure TFrm_Cli.bbConsRecFedClick(Sender: TObject);
begin
  inherited;
{Application.CreateForm(TFrm_DadosCNPJ, Frm_DadosCNPJ);
Frm_DadosCNPJ.ShowModal;

freeandnil(Frm_DadosCNPJ);
}

Application.CreateForm(TFrm_ConsCad, Frm_ConsCad);
Frm_ConsCad.ShowModal;
if Frm_ConsCad.mIncluirNovo_rf=true then
   begin
   if GRAVAR.Enabled<>True then
      INCLUIRClick(self);
   if fsonumero(Frm_ConsCad.Edit_Inscricao.Text)>0 then
      begin
      if FCGC(valfloat(Frm_ConsCad.Edit_Inscricao.Text)) then
         DM1.Tb_CliCCNPJ.Value:=fsonumero(Frm_ConsCad.Edit_Inscricao.Text)
      else
         DM1.Tb_CliCCPF.Value:=fsonumero(Frm_ConsCad.Edit_Inscricao.Text)
      end;
   if length(Trim(Frm_ConsCad.Edit_Nome.Text))>1 then
      DM1.Tb_CliCRAZAO.value:=copy(Frm_ConsCad.Edit_Nome.Text,1,60)
   else
      DM1.Tb_CliCRAZAO.AsString:='';

   if length(Trim(Frm_ConsCad.edt_fantasia.Text))>1 then
      DM1.Tb_CliCDENOM.AsString:=copy(Frm_ConsCad.edt_fantasia.Text,1,60)
   else
      DM1.Tb_CliCDENOM.AsString:='';
   DM1.Tb_CliCCODLOC.AsInteger:=Frm_ConsCad.mcodloc;

   if length(Trim(Frm_ConsCad.Edit_Endereco.Text))>1 then
      DM1.Tb_CliCLOG.AsString:=copy(Frm_ConsCad.Edit_Endereco.Text,1,60)
   else
      DM1.Tb_CliCLOG.AsString:='';

   if length(Trim(Frm_ConsCad.Edit_Numero.Text))>1 then
      begin
      dm1.Tb_CliCNUM.AsString:=copy(Frm_ConsCad.Edit_Numero.Text,1,15);
      DM1.Tb_CliCLOG.AsString:=DM1.Tb_CliCLOG.AsString+' No '+dm1.Tb_CliCNUM.AsString;
      end
   else
      dm1.Tb_CliCNUM.AsString:='';

   if length(Trim(Frm_ConsCad.Edit_Complemento.Text))>1 then
      begin
      DM1.Tb_CliCCOMPL.AsString:=copy(Frm_ConsCad.Edit_Complemento.Text,1,60);
      DM1.Tb_CliCLOG.AsString:=DM1.Tb_CliCLOG.AsString+' '+dm1.Tb_CliCCOMPL.AsString;
      end
   else
      DM1.Tb_CliCCOMPL.AsString:='';

   if length(Trim(Frm_ConsCad.Edit_Cep.Text))>1 then
      DM1.Tb_CliCCEP.AsString:=maskcep( copy(fdeixanum(Frm_ConsCad.Edit_Cep.Text),1,08))
   else
      DM1.Tb_CliCCEP.AsString:='';

   if length(Trim(Frm_ConsCad.Edit_Bairro.Text))>1 then
      DM1.Tb_CliCBAIRRO.AsString:=copy(Frm_ConsCad.Edit_Bairro.Text,1,60)
   else
      DM1.Tb_CliCBAIRRO.AsString:='';

   if length(Trim(Frm_ConsCad.Edt_Municipio.Text))>1 then
      DM1.Tb_CliCCIDADE.AsString:=copy(Frm_ConsCad.Edt_Municipio.Text,1,60)
   else
      DM1.Tb_CliCCIDADE.AsString:='';

   if length(Trim(Frm_ConsCad.Edt_uf.Text))>1 then
      DM1.Tb_CliCUF.AsString:=copy(Frm_ConsCad.Edt_UF.Text,1,60)
   else
      DM1.Tb_CliCUF.AsString:='';
   DM1.Tb_CliCCIDADEC.Value:=DM1.Tb_CliCCIDADE.Value;
   DM1.Tb_CliCUFC.Value     :=DM1.Tb_CliCUF.Value;
   DM1.Tb_CliCCODLOCC.Value :=DM1.Tb_CliCCODLOC.Value;

   DM1.Tb_CliCCEPC.Value    :=DM1.Tb_CliCCEPC.Value;

   DM1.Tb_CliCENDERC.Value  :=DM1.Tb_CliCLOG.Value;



   end;

Freeandnil(Frm_ConsCad);

end;

procedure TFrm_Cli.dbgContatosColExit(Sender: TObject);
begin
  inherited;
if DM2.Tb_Con_Cli.State in [dsedit,dsinsert] then
   begin
   if dbgContatos.SelectedField=DM2.Tb_Con_CliCC_FONE01 then
      DM2.Tb_Con_CliCC_FONE01.Value:=MaskFone(DM2.Tb_Con_CliCC_FONE01.Value)
   else if dbgContatos.SelectedField=DM2.Tb_Con_CliCC_FONE02 then
      DM2.Tb_Con_CliCC_FONE02.Value:=MaskFone(DM2.Tb_Con_CliCC_FONE02.Value);
   end;

end;

procedure TFrm_Cli.CB_VALCCDEPClick(Sender: TObject);
begin
  inherited;
fDeletaPadroes(0,'_CLI','CB_VALCCDEP');
fGravaPadroes(0,'CB_VALCCDEP','checked',  '_CLI',IIF(CB_VALCCDEP.Checked,1,0));

end;

procedure TFrm_Cli.cb_statuspadraoExit(Sender: TObject);
begin
  inherited;

 with cb_statuspadrao do
   ItemIndex := Items.IndexOf(cb_statuspadrao.Text);
if cb_statuspadrao.ItemIndex<0 then
   cb_statuspadrao.ItemIndex:=0;



fDeletaPadroes(0,'_CLI','CB_STATUSPADRAO');
fGravaPadroes(0,'CB_STATUSPADRAO'   ,'itemindex',  '_CLI',inttostr(cb_statuspadrao.itemindex));

end;

procedure TFrm_Cli.DBRg_situacaoEnter(Sender: TObject);
begin
  inherited;
mant_status:=DM1.Tb_CliCSITCLI.Asinteger;

end;

procedure TFrm_Cli.DBRg_situacaoExit(Sender: TObject);
begin
  inherited;
  if mant_status<>DM1.Tb_CliCSITCLI.AsInteger then
     begin
      mValidarSenha.pTipo:=0;
      mValidarSenha.pCodusr:=codusr;
      mValidarSenha.pCodSen:=68;
      mValidarSenha.pCodEmp:=0;
      mValidarSenha.pCodCli:=0;
      mValidarSenha.pLotSeq:=0;
      mValidarSenha.pChave :=0;
      mValidarSenha.pOrdem :=0;
      mValidarSenha.pTexto :='Senha para Alterar a Situacao do Cliente';
      mValidarSenha.pChave_St:='';
      mValidarSenha.pDesc_requisitado :=0;
      if fValidaSenha(mValidarSenha)<>0 then
        begin
        mant_status:=DM1.Tb_CliCSITCLI.AsInteger;
        end;
     end;


end;

procedure TFrm_Cli.TsContatosExit(Sender: TObject);
begin
  inherited;
if (DM2.Tb_Con_Cli.State in [dsedit, dsinsert]) then
   begin
   if (TRIM(DM2.Tb_Con_CliCC_NOME.AsString)<>'') or (trim(DM2.Tb_Con_CliCC_OBS.AsString)<>'') then
      DM2.Tb_Con_Cli.Post
   else if (DM2.Tb_Con_Cli.State in [dsinsert]) then
      DM2.Tb_Con_Cli.Cancel
   else if (DM2.Tb_Con_Cli.State in [dsinsert]) then
      DM2.Tb_Con_Cli.delete;
   end;   


end;

procedure TFrm_Cli.bbPrecoExclusivoClick(Sender: TObject);
var
mPromocaoCliente: string;
form_ppr: TFrm_PPR;
begin
  inherited;

     Application.createform(TFrm_PPR, Form_PPR);
     mPromocaoCliente :=fRetornaPromocaoExclusivaCliente(DM1.Tb_CliCCODCLI.AsFloat);
     if trim(mPromocaoCliente)='' then
        mpromocaoCliente:='EXCLUSIVA_'+DM1.Tb_CliCCODCLI.AsString+'_'+PrimeiroNome(trim(DM1.Tb_CliCRAZAO.AsString));
     if length(mPromocaoCliente)>100 then
        mPromocaoCliente:=copy(mPromocaoCliente,1,100);
     Form_PPR.CB_PROMOCAO.Text:=mPromocaoCliente;
     form_PPR.BBnAplicarClick(self);
     if fsonumero(form_ppr.edt_codcli.text)=0 then
        begin
        form_ppr.edt_codcli.Text:=DM1.Tb_CliCCODCLI.AsString;
        form_ppr.edt_nomcli.Text:=DM1.Tb_CliCRAZAO.AsString;
        end;
     Form_PPr.show;
     
end;

procedure TFrm_Cli.bbCriptografarClick(Sender: TObject);
var
bcripto: TBCrypt;

begin
  inherited;
bcripto:=TBCrypt.Create;
edt_resultado.Text:= bcripto.HashPassword(edt_senha.Text);
freeandnil(bcripto);


end;

procedure TFrm_Cli.bbValidarClick(Sender: TObject);
 var
bcripto: TBCrypt;
senha: String;
resultado: String;
saida: boolean;
mresult:boolean;

begin
  inherited;


bcripto:=TBCrypt.Create;
senha    :=edt_senha.Text;
resultado:=edt_resultado.Text;
mresult:=bcripto.CheckPassword(senha,resultado,saida);

if mresult then
   edt_validacao.Text:='Senha ok '
else
   edt_validacao.Text:='Senha Invalida';

freeandnil(bcripto);


end;

procedure TFrm_Cli.clb_CBLQEMPExit(Sender: TObject);
begin
  inherited;

 with clb_CBLQEMP do
   ItemIndex := Items.IndexOf(clb_CBLQEMP.Text);
if clb_CBLQEMP.ItemIndex<0 then
   clb_CBLQEMP.ItemIndex:=0;



fDeletaPadroes(0,'_CLI','clb_CBLQEMP');
fGravaPadroes(0,'clb_CBLQEMP'   ,'itemindex',  '_CLI',inttostr(clb_CBLQEMP.itemindex));


end;

end.
