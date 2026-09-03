
unit S_Par;
{  antes da alteracao o RGFATMZ era assim
&Nao Faturar
&Faturar mesmo que nao tenha em nenhuma loja
Faturar se &haver estoque suficiente em outra loja

}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, S_DM1, func, ComCtrls, Grids, DBGrids,db,dbtables,
  lerarq,func2,S_Ent, Mask, DBCtrls, ExtDlgs, RxMemDS, ToolEdit, RXDBCtrl,
  dbcgrids, CurrEdit, ADODB;

type
  TFrm_Par = class(TForm)
    panel2: TPanel;
    PageControl1: TPageControl;
    CB_GRAPEN: TTabSheet;
    tsCaixa: TTabSheet;
    Panel1: TPanel;
    bbAtualizarCaixa: TBitBtn;
    BitBtn3: TBitBtn;
    Panel3: TPanel;
    SAIR: TBitBtn;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    CB_CXAUTO: TCheckBox;
    GroupBox4: TGroupBox;
    Label13: TLabel;
    Label15: TLabel;
    JURM: TEdit;
    MULTA: TEdit;
    Label16: TLabel;
    Label14: TLabel;
    DESCM: TEdit;
    QTDDM: TEdit;
    Label17: TLabel;
    CB_MANDATCXBX: TCheckBox;
    Label32: TLabel;
    RG_CRDOC: TRadioGroup;
    CRDOCSIG: TEdit;
    TabSheet3: TTabSheet;
    lbl_prod00: TLabel;
    lbl_prod01: TLabel;
    lbl_prod02: TLabel;
    lbl_prod03: TLabel;
    lbl_prod04: TLabel;
    lbl_prod05: TLabel;
    lbl_ProdVenc: TLabel;
    lbl_ProdBloq: TLabel;
    ColorDialog1: TColorDialog;
    btn_prod00: TBitBtn;
    lbl_prod06: TLabel;
    btn_prod01: TBitBtn;
    btn_prod02: TBitBtn;
    btn_prod03: TBitBtn;
    btn_prod04: TBitBtn;
    btn_prod05: TBitBtn;
    btn_prod06: TBitBtn;
    btn_prodVenc: TBitBtn;
    btn_prodBloq: TBitBtn;
    ts_Teclas: TTabSheet;
    gb_mudaremp: TGroupBox;
    Label39: TLabel;
    metecla01: TEdit;
    st_tecla01: TStaticText;
    Label40: TLabel;
    metecla02: TEdit;
    st_tecla02: TStaticText;
    Label41: TLabel;
    metecla03: TEdit;
    st_tecla03: TStaticText;
    Label42: TLabel;
    metecla04: TEdit;
    st_tecla04: TStaticText;
    mecod01: TStaticText;
    mecod02: TStaticText;
    mecod03: TStaticText;
    mecod04: TStaticText;
    GroupBox10: TGroupBox;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    cetecla01: TEdit;
    st_cetecla01: TStaticText;
    cetecla02: TEdit;
    st_cetecla02: TStaticText;
    cetecla03: TEdit;
    st_cetecla03: TStaticText;
    cetecla04: TEdit;
    st_cetecla04: TStaticText;
    cecod01: TStaticText;
    cecod02: TStaticText;
    cecod03: TStaticText;
    cecod04: TStaticText;
    bbLimparME: TBitBtn;
    bbLimparCE: TBitBtn;
    GroupBox11: TGroupBox;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    Label49: TLabel;
    Label50: TLabel;
    DBEdit2: TDBEdit;
    Label51: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label52: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label53: TLabel;
    DBEdit7: TDBEdit;
    Par_LDR: TQuery;
    U_Par_LDR: TUpdateSQL;
    Src_Par_Ldr: TDataSource;
    Par_LDRCODEMP: TFloatField;
    Par_LDRCDOC: TStringField;
    Par_LDRCODCC: TStringField;
    Par_LDRCODDEP: TStringField;
    Par_LDRNOME: TStringField;
    Par_LDRCDESC_ORI: TStringField;
    Par_LDRnomdep: TStringField;
    Par_LDRnomccu: TStringField;
    Par_LDRnatdc_ccu: TStringField;
    Ts_Logo: TTabSheet;
    GroupBox12: TGroupBox;
    DBGrid2: TDBGrid;
    Label54: TLabel;
    DBMemo1: TDBMemo;
    gb_logo: TGroupBox;
    opd1: TOpenPictureDialog;
    bbAdquirir: TBitBtn;
    bbExcImagem: TBitBtn;
    BBALTERAR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBLIMPAR: TBitBtn;
    logosis: TImage;
    Src_LogoSis: TDataSource;
    ts_pedfor: TTabSheet;
    GB_MANPF: TGroupBox;
    CB_PFDC01: TCheckBox;
    CB_PFDC02: TCheckBox;
    CB_PFDCVLR: TCheckBox;
    CB_PFDI01: TCheckBox;
    CB_PFDI02: TCheckBox;
    CB_PFDIVLR: TCheckBox;
    CB_PFDI03: TCheckBox;
    G_DESCPF: TSpeedButton;
    RG_TIPOEXT: TRadioGroup;
    CB_LEITORPF: TCheckBox;
    TS_RESFAT: TTabSheet;
    GB_DESCPED: TGroupBox;
    CB_MDC01: TCheckBox;
    CB_MDC02: TCheckBox;
    CB_MVDC: TCheckBox;
    CB_MDI01: TCheckBox;
    CB_MDI02: TCheckBox;
    CB_MDIV: TCheckBox;
    CB_VISDFIN: TCheckBox;
    CB_VISCOMI: TCheckBox;
    CB_MDI03: TCheckBox;
    GB_SITCRED: TGroupBox;
    Label22: TLabel;
    Label24: TLabel;
    Label23: TLabel;
    QTDBLQ: TEdit;
    PRZCOMP: TEdit;
    CB_VERCRE: TCheckBox;
    GB_RESTDIV: TGroupBox;
    CB_BLQDEVOL: TCheckBox;
    CB_MANTPCO: TCheckBox;
    CBFATMZ: TCheckBox;
    CBGRAPEN: TCheckBox;
    CBFATMZC: TCheckBox;
    CB_MENPZORC: TCheckBox;
    CB_AVESTMIN: TCheckBox;
    CB_VISA: TCheckBox;
    CB_ANVISA: TCheckBox;
    GB_INSTRUCOES: TGroupBox;
    Label25: TLabel;
    ACREGER: TEdit;
    Label27: TLabel;
    TITAGER: TEdit;
    Label26: TLabel;
    VALFRE: TEdit;
    Label29: TLabel;
    PMAXREC: TEdit;
    CB_LOCPEDGRAV: TCheckBox;
    CB_LEITORPED: TCheckBox;
    Label18: TLabel;
    DESCMP0: TEdit;
    DESCMP1: TEdit;
    Label19: TLabel;
    G_DESPED: TSpeedButton;
    G_CREDCLI: TSpeedButton;
    G_RESTDIV: TSpeedButton;
    G_INSTR: TSpeedButton;
    PN_OUTROS: TPanel;
    GroupBox9: TGroupBox;
    Label3: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    PERCPL: TEdit;
    PERCPLCAIXA: TEdit;
    PERCPLFARDO: TEdit;
    PERCPLPCT: TEdit;
    Label38: TLabel;
    CB_QTDCASARRED: TComboBox;
    GB_ECF: TGroupBox;
    Label33: TLabel;
    G_SOBECF: TSpeedButton;
    DIASORCAT: TEdit;
    CB_CAIXASECF: TCheckBox;
    G_GRAVPED: TSpeedButton;
    RG_LSEPCUPOM: TRadioGroup;
    GB_RELCLI: TGroupBox;
    CB_CRITCNPJ: TCheckBox;
    CB_CRITIE: TCheckBox;
    RG_DUPCNPJ: TRadioGroup;
    GB_RELPRO: TGroupBox;
    lbl_qtddiav01: TLabel;
    QTDDIAV: TEdit;
    lbl_qtddiav02: TLabel;
    CB_CONSPROPAD: TComboBox;
    GB_SISTEMA: TGroupBox;
    Label28: TLabel;
    EMPPRE: TEdit;
    CB_PROMCADPRO: TCheckBox;
    Label47: TLabel;
    JPGTAM: TEdit;
    Label48: TLabel;
    JPGALT: TEdit;
    Label2: TLabel;
    GB_DIVERSOS: TGroupBox;
    CB_MANNOCR: TCheckBox;
    CB_LEITORAJU: TCheckBox;
    G_MUDAEMP: TSpeedButton;
    G_COMEMP: TSpeedButton;
    G_RELCLI: TSpeedButton;
    G_RELPRO: TSpeedButton;
    G_SISTEMA: TSpeedButton;
    G_DIVERSOS: TSpeedButton;
    G_DESCJUR: TSpeedButton;
    G_CAIXA: TSpeedButton;
    G_CORES: TSpeedButton;
    CB_CALCPPRO: TComboBox;
    Label4: TLabel;
    CB_CODPROPADFAT: TComboBox;
    Label10: TLabel;
    Label11: TLabel;
    CB_ORDGPED: TComboBox;
    GB_LOGINVENDEDOR: TGroupBox;
    G_LOGUSRVEND: TSpeedButton;
    Label108: TLabel;
    MENS: TEdit;
    RG_MTIPO: TRadioGroup;
    bbCorFonteLogUsr: TBitBtn;
    CB_BLOQCNPJ: TCheckBox;
    CB_BLOQCEP: TCheckBox;
    CB_FRENTE_VDANOR: TCheckBox;
    Label109: TLabel;
    DESCEXTRA_PEDRET: TEdit;
    Label110: TLabel;
    RG_INCTB: TComboBox;
    CB_VENDCLI: TCheckBox;
    CB_CADPRO_VDAFRENTE: TCheckBox;
    btn_EstminGer: TBitBtn;
    lbl_EstMin_Ger: TLabel;
    CBFATMZ_LOCMOV: TCheckBox;
    CB_TIPOVALDES: TCheckBox;
    Label111: TLabel;
    CB_ATUACUS: TComboBox;
    tsConsultas: TTabSheet;
    gb_locais_consultas: TGroupBox;
    gb_manipula_locais: TGroupBox;
    dbg_parlcd: TDBGrid;
    Label112: TLabel;
    DESCLCD: TEdit;
    Label113: TLabel;
    ENDLCD: TEdit;
    bbLcd_Incluir: TBitBtn;
    bbLcd_Alterar: TBitBtn;
    bbLcd_Excluir: TBitBtn;
    bbLcd_Cancelar: TBitBtn;
    bbLcd_Gravar: TBitBtn;
    Src_PARLCD: TDataSource;
    Label114: TLabel;
    ORDEMLCD: TEdit;
    ACREMPEXTRA: TEdit;
    Label115: TLabel;
    Label117: TLabel;
    CB_TPBLQ: TComboBox;
    Label118: TLabel;
    Label119: TLabel;
    QTDDBLQCLISEMCPR: TEdit;
    Label120: TLabel;
    Label20: TLabel;
    SEGLOGOFF: TEdit;
    Label21: TLabel;
    RG_TIPSERV: TRadioGroup;
    DBEdit8: TDBEdit;
    lbl_prod07: TLabel;
    btn_prod07: TBitBtn;
    lbl_prod08: TLabel;
    btn_prod08: TBitBtn;
    lbl_prod09: TLabel;
    btn_prod09: TBitBtn;
    lbl_prod10: TLabel;
    btn_prod10: TBitBtn;
    lbl_prod99: TLabel;
    btn_prod99: TBitBtn;
    gb_notasdisponiveis: TGroupBox;
    Label8: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    GroupBox2: TGroupBox;
    edtnf_obsl01: TEdit;
    edtnf_obsl02: TEdit;
    edtnf_obsl03: TEdit;
    rg_chave: TRadioGroup;
    bbNFSalvar: TBitBtn;
    edtnf_chave: TEdit;
    edtnf_serie: TEdit;
    edtnf_mod: TEdit;
    edtnf_numnf: TEdit;
    cbnf_tipoform: TCheckBox;
    cbnf_manNNf: TCheckBox;
    edtnf_data: TDateEdit;
    GroupBox1: TGroupBox;
    Label78: TLabel;
    CB_TPEMIS: TComboBox;
    Label31: TLabel;
    PACREDICMS: TEdit;
    G_OUTDADNF: TSpeedButton;
    Label1: TLabel;
    edtnf_just_cont: TEdit;
    edtnf_data_cont: TDateEdit;
    Label5: TLabel;
    Label6: TLabel;
    edtnf_horas_cont: TMaskEdit;
    btn_rbms_venc: TBitBtn;
    lbl_rbms_venc: TLabel;
    GB_EnviaEmail: TGroupBox;
    Label7: TLabel;
    Label12: TLabel;
    Salvar_Email: TSpeedButton;
    edt_hostsmtp: TEdit;
    edt_portasmtp: TEdit;
    Label9: TLabel;
    cb_LoginSmtp: TComboBox;
    Label30: TLabel;
    cb_AutenticacaoSmtp: TComboBox;
    Label59: TLabel;
    edt_emailhost: TEdit;
    Label60: TLabel;
    edt_senhahost: TEdit;
    sbt_testar: TSpeedButton;
    lbl_desbloqcaixa_1: TLabel;
    diabloq: TCurrencyEdit;
    lbl_desbloqcaixa_2: TLabel;
    Label34: TLabel;
    Label61: TLabel;
    cb_ordem_pro: TComboBox;
    Ts_CabNFE: TTabSheet;
    Label62: TLabel;
    edt_linha01: TEdit;
    Label63: TLabel;
    edt_linha02: TEdit;
    Label64: TLabel;
    edt_linha03: TEdit;
    Label65: TLabel;
    edt_linha04: TEdit;
    Label66: TLabel;
    edt_linha05: TEdit;
    edt_linha06: TEdit;
    Label67: TLabel;
    btn_salvar: TButton;
    edt_linha07: TEdit;
    Label68: TLabel;
    ADOConnection1: TADOConnection;
    Ado_CadLog: TADOQuery;
    Ado_CadLogLSCHAVE: TStringField;
    Ado_CadLogLSDESCRICAO: TStringField;
    Ado_CadLogLSLOGO: TBlobField;
    Ado_CadLogLSCODEMP: TFloatField;
    ADOQuery1: TADOQuery;
    Label69: TLabel;
    edt_nfe_servidor01: TEdit;
    edt_nfe_servidor02: TEdit;
    edt_nfe_servidor03: TEdit;
    bbAplicarTodos: TBitBtn;
    lbl_prod_semmov_1: TLabel;
    btn_SemMov: TBitBtn;
    lbl_prod_semmov_2: TLabel;
    edt_SemMov: TMaskEdit;
    CB_COMISS_VENDA: TCheckBox;
    cb_horarioverao: TCheckBox;
    Label70: TLabel;
    edt_incpeso_caixa: TEdit;
    Label71: TLabel;
    cb_Aplicemendaconst87042015: TCheckBox;
    TabSheet1: TTabSheet;
    GB_DM: TGroupBox;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    G_DM: TSpeedButton;
    MENDIP: TEdit;
    PORTA: TEdit;
    MENDIP_INTERNO: TEdit;
    gb_nfce: TGroupBox;
    Label72: TLabel;
    edt_nfce_serie: TEdit;
    Label74: TLabel;
    cb_nfce_tpamb: TComboBox;
    Label75: TLabel;
    edt_nfce_numnfce: TEdit;
    sbn_nfce_salvar: TSpeedButton;
    CB_NFCE_PADRAO: TCheckBox;
    GroupBox3: TGroupBox;
    edt_nfce_obs_l01: TEdit;
    edt_nfce_obs_l02: TEdit;
    sbn_salvarmensagemcupom: TSpeedButton;
    procedure QTDVIANFKeyPress(Sender: TObject; var Key: Char);
    procedure SAIRClick(Sender: TObject);
    procedure VALTAXKeyPress(Sender: TObject; var Key: Char);
    procedure NUMNFKeyPress(Sender: TObject; var Key: Char);
    procedure NUMPFKeyPress(Sender: TObject; var Key: Char);
    procedure bbAtualizarCaixaClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure JURMChange(Sender: TObject);
    procedure DESCMChange(Sender: TObject);
    procedure JURMKeyPress(Sender: TObject; var Key: Char);
    procedure JURMExit(Sender: TObject);
    procedure DESCMExit(Sender: TObject);
    procedure MULTAChange(Sender: TObject);
    procedure MULTAExit(Sender: TObject);
    procedure QTDDMChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DESCMP0Change(Sender: TObject);
    procedure DESCMP1Change(Sender: TObject);
    procedure DESCMP0Exit(Sender: TObject);
    procedure DESCMP1Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PRZCOMPKeyPress(Sender: TObject; var Key: Char);
    procedure QTDBLQExit(Sender: TObject);
    procedure ACREGERExit(Sender: TObject);
    procedure PRZCOMPExit(Sender: TObject);
    procedure VALFREExit(Sender: TObject);
    procedure TITAGERExit(Sender: TObject);
    procedure TITAGERKeyPress(Sender: TObject; var Key: Char);
    procedure EMPPREExit(Sender: TObject);
    procedure PMAXRECKeyPress(Sender: TObject; var Key: Char);
    procedure ACREGERKeyPress(Sender: TObject; var Key: Char);
    procedure VALFREKeyPress(Sender: TObject; var Key: Char);
    procedure PERCPLExit(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure CRDOCSIGExit(Sender: TObject);
    procedure CRDOCSIGKeyPress(Sender: TObject; var Key: Char);
    procedure CB_MANDATCXBXClick(Sender: TObject);
    procedure CB_CXAUTOClick(Sender: TObject);
    procedure CRDOCSIGChange(Sender: TObject);
    procedure QTDDIAVExit(Sender: TObject);
    procedure DIASORCATExit(Sender: TObject);
    procedure btn_prod00Click(Sender: TObject);
    procedure btn_prod01Click(Sender: TObject);
    procedure btn_prod02Click(Sender: TObject);
    procedure btn_prod03Click(Sender: TObject);
    procedure btn_prod04Click(Sender: TObject);
    procedure btn_prod05Click(Sender: TObject);
    procedure btn_prod06Click(Sender: TObject);
    procedure btn_prodVencClick(Sender: TObject);
    procedure btn_prodBloqClick(Sender: TObject);
    procedure CB_CONSPROPADExit(Sender: TObject);
    procedure PERCPLCAIXAExit(Sender: TObject);
    procedure PERCPLPCTExit(Sender: TObject);
    procedure PERCPLCAIXAChange(Sender: TObject);
    procedure PERCPLFARDOChange(Sender: TObject);
    procedure PERCPLPCTChange(Sender: TObject);
    procedure PERCPLFARDOExit(Sender: TObject);
    procedure CB_QTDCASARREDExit(Sender: TObject);
    procedure metecla01KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure metecla01KeyPress(Sender: TObject; var Key: Char);
    procedure metecla02KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure metecla03KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure metecla04KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure metecla02KeyPress(Sender: TObject; var Key: Char);
    procedure metecla03KeyPress(Sender: TObject; var Key: Char);
    procedure metecla04KeyPress(Sender: TObject; var Key: Char);
    procedure cetecla01KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cetecla02KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cetecla03KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cetecla04KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cetecla01KeyPress(Sender: TObject; var Key: Char);
    procedure cetecla02KeyPress(Sender: TObject; var Key: Char);
    procedure cetecla03KeyPress(Sender: TObject; var Key: Char);
    procedure cetecla04KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbLimparMEClick(Sender: TObject);
    procedure bbLimparCEClick(Sender: TObject);
    procedure JPGTAMExit(Sender: TObject);
    procedure JPGALTExit(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Par_LDRCalcFields(DataSet: TDataSet);
    procedure c(DataSet: TDataSet);
    procedure bbAdquirirClick(Sender: TObject);
    procedure BBALTERARClick(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure BBLIMPARClick(Sender: TObject);
    procedure Src_LogoSisDataChange(Sender: TObject; Field: TField);
    procedure bbExcImagemClick(Sender: TObject);
    procedure G_DESPEDClick(Sender: TObject);
    procedure G_CREDCLIClick(Sender: TObject);
    procedure G_RESTDIVClick(Sender: TObject);
    procedure G_INSTRClick(Sender: TObject);
    procedure G_GRAVPEDClick(Sender: TObject);
    procedure G_SOBECFClick(Sender: TObject);
    procedure G_DESCPFClick(Sender: TObject);
    procedure G_RELCLIClick(Sender: TObject);
    procedure G_RELPROClick(Sender: TObject);
    procedure G_SISTEMAClick(Sender: TObject);
    procedure G_DIVERSOSClick(Sender: TObject);
    procedure G_DESCJURClick(Sender: TObject);
    procedure G_CAIXAClick(Sender: TObject);
    procedure G_CORESClick(Sender: TObject);
    procedure G_MUDAEMPClick(Sender: TObject);
    procedure G_COMEMPClick(Sender: TObject);
    procedure CB_MDIVClick(Sender: TObject);
    procedure CB_VERCREClick(Sender: TObject);
    procedure QTDBLQChange(Sender: TObject);
    procedure PRZCOMPChange(Sender: TObject);
    procedure CB_BLQDEVOLClick(Sender: TObject);
    procedure CB_INCTBClick(Sender: TObject);
    procedure ACREGERChange(Sender: TObject);
    procedure VALFREChange(Sender: TObject);
    procedure TITAGERChange(Sender: TObject);
    procedure PMAXRECChange(Sender: TObject);
    procedure DIASORCATChange(Sender: TObject);
    procedure CB_CAIXASECFClick(Sender: TObject);
    procedure CB_ORDGPEDExit(Sender: TObject);
    procedure CB_CODPROPADFATExit(Sender: TObject);
    procedure CB_CALCPPROExit(Sender: TObject);
    procedure CB_ORDGPEDClick(Sender: TObject);
    procedure CB_CODPROPADFATClick(Sender: TObject);
    procedure CB_PFDC01Click(Sender: TObject);
    procedure CB_CRITCNPJClick(Sender: TObject);
    procedure CB_CONSPROPADClick(Sender: TObject);
    procedure QTDDIAVChange(Sender: TObject);
    procedure EMPPREChange(Sender: TObject);
    procedure JPGTAMChange(Sender: TObject);
    procedure JPGALTChange(Sender: TObject);
    procedure CB_MANNOCRClick(Sender: TObject);
    procedure RG_TIPOEXTClick(Sender: TObject);
    procedure metecla01Change(Sender: TObject);
    procedure metecla02Change(Sender: TObject);
    procedure metecla03Change(Sender: TObject);
    procedure metecla04Change(Sender: TObject);
    procedure cetecla01Change(Sender: TObject);
    procedure cetecla02Change(Sender: TObject);
    procedure cetecla03Change(Sender: TObject);
    procedure cetecla04Change(Sender: TObject);
    procedure G_LOGUSRVENDClick(Sender: TObject);
    procedure RG_MTIPOClick(Sender: TObject);
    procedure MENSChange(Sender: TObject);
    procedure bbCorFonteLogUsrClick(Sender: TObject);
    procedure MENSExit(Sender: TObject);
    procedure DESCEXTRA_PEDRETExit(Sender: TObject);
    procedure DESCEXTRA_PEDRETChange(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RG_INCTBClick(Sender: TObject);
    procedure RG_INCTBExit(Sender: TObject);
    procedure btn_EstminGerClick(Sender: TObject);
    procedure CBFATMZClick(Sender: TObject);
    procedure MENDIPChange(Sender: TObject);
    procedure PORTAChange(Sender: TObject);
    procedure MENDIP_INTERNOChange(Sender: TObject);
    procedure G_DMClick(Sender: TObject);
    procedure MENDIPExit(Sender: TObject);
    procedure MENDIP_INTERNOExit(Sender: TObject);
    procedure PORTAExit(Sender: TObject);
    procedure CB_ATUACUSClick(Sender: TObject);
    procedure CB_ATUACUSExit(Sender: TObject);
    procedure bbLcd_IncluirClick(Sender: TObject);
    procedure bbLcd_AlterarClick(Sender: TObject);
    procedure bbLcd_GravarClick(Sender: TObject);
    procedure bbLcd_CancelarClick(Sender: TObject);
    procedure Src_PARLCDDataChange(Sender: TObject; Field: TField);
    procedure ORDEMLCDExit(Sender: TObject);
    procedure DESCLCDExit(Sender: TObject);
    procedure ENDLCDExit(Sender: TObject);
    procedure bbLcd_ExcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ACREMPEXTRAExit(Sender: TObject);
    procedure ACREMPEXTRAChange(Sender: TObject);
    procedure QTDDBLQCLISEMCPRChange(Sender: TObject);
    procedure QTDDBLQCLISEMCPRExit(Sender: TObject);
    procedure CB_TPBLQExit(Sender: TObject);
    procedure CB_TPBLQClick(Sender: TObject);
    procedure SEGLOGOFFChange(Sender: TObject);
    procedure SEGLOGOFFExit(Sender: TObject);
    procedure PACREDICMSExit(Sender: TObject);
    procedure PACREDICMSChange(Sender: TObject);
    procedure PACREDICMSKeyPress(Sender: TObject; var Key: Char);
    procedure btn_prod07Click(Sender: TObject);
    procedure btn_prod08Click(Sender: TObject);
    procedure btn_prod09Click(Sender: TObject);
    procedure btn_prod10Click(Sender: TObject);
    procedure btn_prod99Click(Sender: TObject);
    procedure CB_BLOQAUTOClick(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure rg_chaveClick(Sender: TObject);
    procedure edtnf_numnfExit(Sender: TObject);
    procedure bbNFSalvarClick(Sender: TObject);
    procedure G_OUTDADNFClick(Sender: TObject);
    procedure CB_TPEMISClick(Sender: TObject);
    procedure edtnf_just_contChange(Sender: TObject);
    procedure edtnf_data_contChange(Sender: TObject);
    procedure edtnf_horas_contChange(Sender: TObject);
    procedure btn_rbms_vencClick(Sender: TObject);
    procedure Salvar_EmailClick(Sender: TObject);
    procedure edt_hostsmtpExit(Sender: TObject);
    procedure edt_hostsmtpChange(Sender: TObject);
    procedure edt_portasmtpChange(Sender: TObject);
    procedure edt_emailhostChange(Sender: TObject);
    procedure edt_senhahostChange(Sender: TObject);
    procedure cb_LoginSmtpChange(Sender: TObject);
    procedure cb_AutenticacaoSmtpChange(Sender: TObject);
    procedure sbt_testarClick(Sender: TObject);
    procedure diabloqChange(Sender: TObject);
    procedure cb_ordem_proClick(Sender: TObject);
    procedure cb_ordem_proExit(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure edt_nfe_servidor01Exit(Sender: TObject);
    procedure edt_nfe_servidor02Exit(Sender: TObject);
    procedure edt_nfe_servidor03Exit(Sender: TObject);
    procedure bbAplicarTodosClick(Sender: TObject);
    procedure btn_SemMovClick(Sender: TObject);
    procedure edt_SemMovChange(Sender: TObject);
    procedure CB_COMISS_VENDAClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_incpeso_caixaChange(Sender: TObject);
    procedure edt_incpeso_caixaExit(Sender: TObject);
    procedure sbn_nfce_salvarClick(Sender: TObject);
    procedure edt_nfce_numnfceExit(Sender: TObject);
    procedure edt_nfce_serieChange(Sender: TObject);
    procedure cb_nfce_tpambClick(Sender: TObject);
    procedure edt_nfce_numnfceChange(Sender: TObject);
    procedure edt_nfce_serieExit(Sender: TObject);
    procedure CB_NFCE_PADRAOClick(Sender: TObject);
    procedure sbn_salvarmensagemcupomClick(Sender: TObject);
    procedure edt_nfce_obs_l01Change(Sender: TObject);
    procedure edt_nfce_obs_l02Change(Sender: TObject);
  private
    { Private declarations }
    function fPar01lerant(ptipo: Integer):Boolean;
    function FAtualizaCadpar_NF(pTipo: Integer): Boolean;
    function fLerlogomarcas: Boolean;

    procedure fAtualizarNumNFce(pChave: string);


    procedure fBuscarNumNFce(pChave: string);


    function fRetornaChaveNFCE: String;





  public
    { Public declarations }
  end;
function fTestarLogotipos(pTipo: Integer): Boolean;
function fpar01gant(ptipo: Integer): Boolean;
function fParLCDgant(ptipo: Integer): Boolean;

var
  Frm_Par: TFrm_Par;
  par_ori: String;
  mCalcParLdr: Boolean;
  mAjustouLogo: Boolean;
  moper_lcd: Integer=0;

implementation

uses S_DM4, func_excecoes, S_C, S_Dpto, S_CCU,
     S_DM6, s_Princ, S_EnviarEmail;


{$R *.DFM}

procedure TFrm_Par.QTDVIANFKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and not (key=#8) then
   key:=#0;
end;

procedure TFrm_Par.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Par.VALTAXKeyPress(Sender: TObject; var Key: Char);
begin
If Key in ['.',','] then Key:=DecimalSeparator
else If (Key<>#8) and not (Key in ['0'..'9']) then Key:=#0;

end;

procedure TFrm_Par.NUMNFKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Par.NUMPFKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_Par.bbAtualizarCaixaClick(Sender: TObject);
var
marq,marq2: Array [1..26] of String;
mqtd: Integer;
mcodant: String;
begin
marq[01]:='C-CADDAR0-Rec.Tit';
marq[02]:='D-CADDAR8-Saida Chq.Dep.';
marq[03]:='C-CADDAR9-Chq.Depositado';
marq[04]:='D-CADDARD-Pgto.Dev.Cliente';
marq[05]:='D-CADDART-Troco Concedido';


marq[06]:='D-CADDAP0-Pgto.Tit.';
marq[07]:='C-CADDAPT-Troco Recebido';
marq[08]:='C-CADDAPD-Rec.Dev.Fornec.';
marq[09]:='D-CADDAP8-Pgto.c/Chq.(Emitido)';

marq[10]:='D-CADDARN-Nota de Credito';
marq[11]:='D-CADDAPN-Nota de Credito';

marq[12]:='D-CADDARH-CH. Cliente Devolvido';
marq[13]:='D-CADDAPB-Tarifa Bancaria';

//marq[13]:='D-CADDAPB-Cobranca de Tarifa Bancaria';


mCalcParLdr:=False;

if DM1.Qr_TID.Locate('TINOME','PARLDR',[]) then
   begin
   if codemp=1 then
      begin
      DM1.query1.close;
      DM1.query1.SQL.Clear;
      DM1.query1.SQL.Add('Delete from PARLDR where CODEMP<>1');
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         end;
      end;
   end;

Par_LDR.Close;
Par_LDR.SQL.Clear;
Par_LDR.SQL.Add('Select * FROM PARLDR');
if DM1.Qr_TID.Locate('TINOME','PARLDR',[]) then
   Par_LDR.SQL.Add('order by NOME')
else
   Par_LDR.SQL.Add(' where CODEMP=0'+IntToStr(Codemp)
                       +' order by NOME');
Par_LDR.Open;



for mqtd:=1 to 13 do
   begin
{
   Par_LDR.Close;
   Par_LDR.SQL.Clear;
   Par_LDR.SQL.Add('Select * FROM PARLDR where');
   if DM1.Qr_tid.Locate('TINOME','PARLDR',[]) then
      Par_LDR.SQL.add(' CDOC='+chr(39)+marq[mqtd]+chr(39))
   else
      Par_LDR.SQL.add(' CODEMP=0'+IntToStr(Codemp)
                         +' and CDOC='+chr(39)+marq[mqtd]+chr(39));
   Par_LDR.Open;
}
   if not Par_LDR.Locate('CDOC',copy(marq[mqtd],3,7),[]) then
      begin
      Par_LDR.Append;
      Par_LDRCODEMP.Value   :=codemp;
      Par_LDRCDOC.Value     :=copy(marq[mqtd],3,7);
      Par_LDRCODCC.Value    :=FormatFloat('00',mqtd);
      Par_LDRNOME.Value     :=copy(marq[mqtd],11,length(marq[mqtd])-10);
      Par_LDRCDESC_ORI.Value:=copy(marq[mqtd],11,length(marq[mqtd])-10);

      if not flcadccu(1,0,FormatFloat('00', mqtd)) then
         begin
         DM1.Tb_CCU.Append;
         mcodant:=DM1.Tb_CCUCCCODCCU.Value;
         DM1.Tb_CCUCCCODCCU.Value:=FormatFloat('00',mqtd);
         DM1.Tb_CCUCCNOME.Value  :=Par_LDRCDESC_ORI.Value;
         DM1.Tb_CCUCCNAT.Value   :=copy(marq[mqtd],1,1);
         DM1.Tb_ccu.Post;
         FAtualizaBanco(1,'CADCCU','CCCODEMP',DM1.Tb_CCUCCCODEMP.AsString
         ,['CCCODCCU'],[mcodant]
          ,DM1.Tb_CCU);

         end;
      if copy(marq[mqtd] ,3,6)='CADDAP' then
         begin
         Par_LDRCODDEP.Value   :='02';
         if not flcaddep_ldr(1,0,Par_LDRCODDEP.Value) then
            begin
            DM1.Tb_Dep_Ldr.Append;
            mcodant:=DM1.Tb_Dep_LdrDCODDEP.Value;
            DM1.Tb_Dep_LdrDCODDEP.Value:=Par_LDRCODDEP.Value;
            DM1.Tb_Dep_LdrDNOME.Value  :='COMPRAS';
            DM1.Tb_Dep_Ldr.Post;
            FAtualizaBanco(1,'CADDEP','DCODEMP',DM1.Tb_Dep_LdrDCODEMP.AsString
            ,['DCODDEP'],[mcodant]
            ,DM1.Tb_Dep_Ldr);

            end;
         end
      else
         begin
         Par_LDRCODDEP.Value   :='01';
         if not flcaddep_ldr(1,0,Par_LDRCODDEP.Value) then
            begin
            DM1.Tb_Dep_Ldr.Append;
            mcodant:=DM1.Tb_Dep_LdrDCODDEP.Value;
            DM1.Tb_Dep_LdrDCODDEP.Value:=Par_LDRCODDEP.Value;
            DM1.Tb_Dep_LdrDNOME.Value  :='VENDAS';
            DM1.Tb_Dep_Ldr.Post;
            FAtualizaBanco(1,'CADDEP','DCODEMP',DM1.Tb_Dep_LdrDCODEMP.AsString
            ,['DCODDEP'],[mcodant]
            ,DM1.Tb_Dep_Ldr);

            end;
         end;
      Par_LDR.Post;
      end
   else
      begin
      if not flcadccu(1,0,Par_LDRCODCC.AsString) then
         begin
         DM1.Tb_CCU.Append;
         mcodant:=DM1.Tb_CCUCCCODCCU.Value;
         DM1.Tb_CCUCCCODCCU.Value:=Par_LDRCODCC.AsString;
         DM1.Tb_CCUCCNOME.Value  :=Par_LDRCDESC_ORI.Value;
         DM1.Tb_CCUCCNAT.Value   :=copy(marq[mqtd],1,1);
         DM1.Tb_ccu.Post;
         FAtualizaBanco(1,'CADCCU','CCCODEMP',DM1.Tb_CCUCCCODEMP.AsString
         ,['CCCODCCU'],[mcodant]
          ,DM1.Tb_CCU);

         end;
      if copy(marq[mqtd] ,3,6)='CADDAP' then
         begin
         if not flcaddep_ldr(1,0,Par_LDRCODDEP.Value) then
            begin
            DM1.Tb_Dep_Ldr.Append;
            mcodant:=DM1.Tb_Dep_LdrDCODDEP.Value;
            DM1.Tb_Dep_LdrDCODDEP.Value:=Par_LDRCODDEP.Value;
            DM1.Tb_Dep_LdrDNOME.Value  :='COMPRAS';
            DM1.Tb_Dep_Ldr.Post;
            FAtualizaBanco(1,'CADDEP','DCODEMP',DM1.Tb_Dep_LdrDCODEMP.AsString
            ,['DCODDEP'],[mcodant]
            ,DM1.Tb_Dep_Ldr);
            end;
         end;
      if Par_LDRCDESC_ORI.Value<>copy(marq[mqtd],11,length(marq[mqtd])-10) then
         begin
         Par_LDR.Edit;
         Par_LDRCDESC_ORI.Value:=copy(marq[mqtd],11,length(marq[mqtd])-10);
         Par_LDR.Post;
         end;
      end;
   end;
mCalcParLdr:=true;
Par_LDR.Close;
Par_LDR.SQL.Clear;
Par_LDR.SQL.Add('Select * FROM PARLDR');
if DM1.Qr_TID.Locate('TINOME','PARLDR',[]) then
   Par_LDR.SQL.Add('order by NOME')
else
   Par_LDR.SQL.Add(' where CODEMP=0'+IntToStr(Codemp)
                       +' order by NOME');
Par_LDR.Open;

end;

procedure TFrm_Par.BitBtn3Click(Sender: TObject);
begin
Par_LDR.Cancel;

end;

procedure TFrm_Par.JURMChange(Sender: TObject);
begin
if (JURM.Modified) and  (par_ori<>'consulta') then
   G_DESCJUR.Enabled:=true;
end;

procedure TFrm_Par.DESCMChange(Sender: TObject);
begin
if (DESCM.Modified) and  (par_ori<>'consulta') then
   G_DESCJUR.Enabled:=true;

end;

procedure TFrm_Par.JURMKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then
   key:=DecimalSeparator
else if not (Key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Par.JURMExit(Sender: TObject);
begin
JURM.Text:=FormatFloat(mcasas, valfloat(JURM.Text));
end;

procedure TFrm_Par.DESCMExit(Sender: TObject);
begin
DESCM.Text:=FormatFloat(mcasas, valfloat(DESCM.Text));

end;

procedure TFrm_Par.MULTAChange(Sender: TObject);
begin
if (MULTA.Modified) and  (par_ori<>'consulta') then
   G_DESCJUR.Enabled:=true;
end;

procedure TFrm_Par.MULTAExit(Sender: TObject);
begin
MULTA.Text:=FormatFloat(mcasas, valfloat(MULTA.Text));
end;

procedure TFrm_Par.QTDDMChange(Sender: TObject);
begin
if (QTDDM.Modified) and  (par_ori<>'consulta') then
   G_DESCJUR.Enabled:=true;
end;

procedure TFrm_Par.FormCreate(Sender: TObject);
begin
ADOConnection1.Close;
ADOConnection1.ConnectionString:='Provider=MSDAORA.1;Password=DEZENOVE;User ID='+Banco_usuario+';Data Source='+Banco_ServerName+';Persist Security Info=True';
ADOConnection1.Open;


par_ori:='';
Par_LDR.Close;
DBGrid1.Columns[0].ReadOnly:=true;
ts_Teclas.TabVisible:=false;
rg_chaveClick(self);
if codemp>100 then
  begin
  lbl_desbloqcaixa_1.Visible:=False;
  lbl_desbloqcaixa_2.Visible:=False;
  diabloq           .Visible:=False;
  end
else
  begin
  lbl_desbloqcaixa_1.Visible:=True;
  lbl_desbloqcaixa_2.Visible:=True;
  diabloq           .Visible:=True;
  end;

end;

procedure TFrm_Par.DESCMP0Change(Sender: TObject);
begin
if (DESCMP0.Modified) and  (par_ori<>'consulta') then
   G_INSTR.Enabled:=true;
end;

procedure TFrm_Par.DESCMP1Change(Sender: TObject);
begin
if (DESCMP0.Modified) and  (par_ori<>'consulta') then
   G_INSTR.Enabled:=true;

end;

procedure TFrm_Par.DESCMP0Exit(Sender: TObject);
begin
DESCMP0.Text:=FormatFloat(mcasas, valfloat(DESCMP0.Text));

end;

procedure TFrm_Par.DESCMP1Exit(Sender: TObject);
begin
DESCMP1.Text:=FormatFloat(mcasas, valfloat(DESCMP1.Text));

end;

function fpar01gant(ptipo: Integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(PCODNOV) from OLD_CADPAR');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields[0].AsInteger+1;
minstru:='Insert into OLD_CADPAR (';
v:='';
for x:=0 to DM4.Tb_Par01.FieldCount-1 do
   begin
   if DM4.Tb_Par01.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM4.Tb_Par01.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',PCODNOV) Select ';
v:='';
for x:=0 to DM4.Tb_Par01.FieldCount-1 do
   begin
   if DM4.Tb_Par01.Fields[x].FieldKind=fkCalculated then
      Continue;
   if DM4.Tb_Par01.Fields[x].FieldName='PSTATUS' then
      minstru:=minstru+v+FormatFloat('0',ptipo)+' as PSTATUS '
   else if DM4.Tb_Par01.Fields[x].FieldName='PCODUSR' then
      minstru:=minstru+v+FormatFloat('00000',codusr)+' as PCODUSR '
   else if DM4.Tb_Par01.Fields[x].FieldName='PDTALT' then
      minstru:=minstru+v+chr(39)+Formatdatetime(fdt,date)+chr(39)+' as PDTALT '
   else if DM4.Tb_Par01.Fields[x].FieldName='PHRALT' then
      minstru:=minstru+v+chr(39)+Formatdatetime(fhr,time)+chr(39)+' as PHRALT '
   else
      minstru:=minstru+v+DM4.Tb_Par01.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as PCODNOV ';
minstru:=minstru+' from CADPAR where PCODEMP=0'+DM4.Tb_Par01PCODEMP.AsString
                +' and PCODSEQ=0'+DM4.Tb_Par01PCODSEQ.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,636,'Frm_Par','CADPAR');
   end;
result:=True;



end;

function tfrm_Par.fPar01lerant(ptipo: Integer):Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;

begin
minstru:=' Select ';
v:='';
for x:=0 to DM4.Tb_Par01.FieldCount-1 do
   begin
   if DM4.Tb_Par01.Fields[x].FieldKind=fkCalculated then
      Continue;
   if UpperCase(copy(DM4.Tb_Par01.Fields[x].FieldName,1,2))='ID' then
      minstru:=minstru+v+' ROWID as '+DM4.Tb_Par01.Fields[x].FieldName
   else
      minstru:=minstru+v+DM4.Tb_Par01.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADPAR where PCODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM4.Tb_Par01.Close;
DM4.Tb_Par01.SQL.Clear;
DM4.Tb_Par01.SQL.add(minstru);
DM4.Tb_Par01.Open;
bbAtualizarCaixa.Enabled     :=False;
BitBtn3.Enabled     :=False;
end;



procedure TFrm_Par.FormActivate(Sender: TObject);
var
x: Integer;
begin
PageControl1.ActivePage:=TS_RESFAT;

if par_ori='consulta' then
   begin
   fpar01lerant(0);
   end
else
   begin
   DM6.Tb_ParLCD.Close;
   DM6.Tb_ParLCD.SQL.clear;
   DM6.Tb_ParLCD.SQL.Add('Select * from PARLCD ');
   DM6.Tb_ParLCD.SQL.Add(' order by LCD_ORDEM ');
   DM6.Tb_ParLCD.Open;
   DM6.Tb_ParLCDLCD_DATHOR_INC.DisplayFormat:=fdathor;
   DM6.Tb_ParLCDLCD_DATHOR_ALT.DisplayFormat:=fdathor;
   DM4.Tb_Par01.Close;
   DM4.Tb_Par01.SQL.Clear;
   DM4.Tb_Par01.SQL.Add('Select * from CADPAR where ');
   if DM1.Qr_TID.Locate('TINOME','CADPAR',[]) then
      begin
      DM4.Tb_Par01.SQl.Add(' PCODSEQ=1 order by PCODSEQ');
      end
   else
      begin
      DM4.Tb_Par01.SQL.Add(' PCODEMP=0'+IntTostr(codemp)
                        +' and PCODSEQ=1 order by PCODEMP,PCODSEQ');
      end;
   DM4.Tb_Par01.Open;
   if DM4.Tb_Par01.Eof then
      begin
      DM4.Tb_Par01.Append;
      DM4.Tb_Par01PCODEMP.Value:=codemp;
      DM4.Tb_Par01PCODSEQ.Value:=1;
      DM4.Tb_Par01.Post;
      end;
   end;
Frm_Par.CB_PFDC01.Checked     :=DM4.Tb_Par01PPFDC01.Value=0;
Frm_Par.CB_PFDC02.Checked     :=DM4.Tb_Par01PPFDC02.Value=0;
Frm_Par.CB_PFDCVLR.Checked    :=DM4.Tb_Par01PPFDVLR.Value=0;
Frm_Par.CB_PFDI01.Checked     :=DM4.Tb_Par01PPFDI01.Value=0;
Frm_Par.CB_PFDI02.Checked     :=DM4.Tb_Par01PPFDI02.Value=0;
Frm_Par.CB_PFDI03.Checked     :=DM4.Tb_Par01PPFDI03.Value=0;
Frm_Par.CB_PFDIVLR.Checked    :=DM4.Tb_Par01PPFDIVLR.Value=0;
Frm_Par.CB_MDC01.Checked     :=DM4.Tb_Par01PMANDC01.Value=0;
Frm_Par.CB_MDC02.Checked     :=DM4.Tb_Par01PMANDC02.Value=0;
Frm_Par.CB_MVDC.Checked      :=DM4.Tb_Par01PMANDCV.Value=0;
Frm_Par.CB_MDI01.Checked     :=DM4.Tb_Par01PMANDI01.Value=0;
Frm_Par.CB_MDI02.Checked     :=DM4.Tb_Par01PMANDI02.Value=0;
Frm_Par.CB_MDI03.Checked     :=DM4.Tb_Par01PMANDI03.Value=0;
Frm_Par.CB_MDIV.Checked      :=DM4.Tb_Par01PMANDIV.Value=0;
Frm_Par.CB_VISDFIN.Checked   :=DM4.Tb_Par01PVISDFIN.Value=0;
Frm_Par.CB_VISCOMI.Checked   :=DM4.Tb_Par01PVISCOMI.Value=0;
Frm_Par.CB_ATUACUS.ItemIndex :=DM4.Tb_Par01PATUACUS.AsInteger;
Frm_Par.CB_MANTPCO.Checked    :=DM4.Tb_Par01PMANTPCO.Value=0;
Frm_Par.JURM.Text             :=FormatFloat(mcasas, DM4.Tb_Par01PJURM.Value);
Frm_Par.DESCM.Text            :=FormatFloat(mcasas, DM4.Tb_Par01PDESCM.Value);
Frm_Par.DESCMP0.Text          :=FormatFloat(mcasas, DM4.Tb_Par01PDESCMP0.Value);
Frm_Par.DESCMP1.Text          :=FormatFloat(mcasas, DM4.Tb_Par01PDESCMP1.Value);



if flfilpad(-5,'_PAR','_INCPESO_CAIXA') then
  edt_incpeso_caixa.Text:=FormatFloat(mcasas, valfloat(DM4.Tb_FilPad2FPVALOR.AsString))
else
  edt_incpeso_caixa.Text:=FormatFloat(mcasas, 0);

if flfilpad(-5,'_PAR','_APLICEMENDACONST87042015') then
   cb_Aplicemendaconst87042015.Checked:=true;

Frm_par.VALFRE.Text           :=FormatFloat(mcasas, DM4.Tb_Par01PVALFRE.Value);
Frm_Par.CBFATMZ.Checked       :=DM4.Tb_Par01PFATMZ.Value=1;
Frm_Par.CBFATMZ_LOCMOV.Checked:=DM4.Tb_Par01PFATMZ_LOCMOV.Value=1;
Frm_Par.CBFATMZClick(self);
G_RESTDIV.Enabled:=false;

Frm_Par.CBGRAPEN.Checked      :=DM4.Tb_Par01PGRAPEN.Value=1;
Frm_par.CBFATMZC.Checked      :=DM4.Tb_Par01PFATMZC.Value=1;
Frm_par.CB_MENPZORC.Checked   :=DM4.Tb_Par01PMENPZORC.Value=1;
Frm_Par.PMAXREC.Text          := DM4.Tb_Par01PMAXREC.Value;

Frm_Par.CB_CXAUTO.Checked     := DM4.Tb_Par01PCXAUTO.Value=0;
Frm_Par.diabloq.Value         := DM4.Tb_Par01PCBLOQAUTO.AsInteger;
Frm_Par.CB_MANNOCR.Checked    := DM4.Tb_Par01PMANNOCR.Value=1;
Frm_Par.CB_VISA.Checked       := DM4.Tb_Par01PVISA.Value=1;
Frm_Par.CB_ANVISA.Checked     := DM4.Tb_Par01PANVISA.Value=1;
Frm_Par.RG_INCTB.ItemIndex    := DM4.Tb_Par01PINCTB.Asinteger;
Frm_Par.CB_CAIXASECF.Checked  := DM4.Tb_Par01PCAIXASECF.Value=1;


Frm_Par.CB_AVESTMIN.Checked:= DM4.Tb_Par01PAVESTMIN.Value=1;
Frm_Par.CB_LOCPEDGRAV.Checked:=DM4.Tb_Par01PLOCPEDGRAV.Value=1;

Frm_Par.CB_ORDGPED.ItemIndex:=DM4.Tb_Par01PORDGPED.AsInteger;
flparger(0,0,'1');
flparger02(0,0,'1');
Frm_Par.PACREDICMS.Text     :=formatFloat(mcasas_pct, DM4.Tb_ParGer02PG2PACREDICMS.Value);
Frm_Par.CB_TPEMIS.ItemIndex :=DM4.Tb_ParGer02PG2NFETPEMIS.AsInteger;
Frm_Par.edtnf_just_cont.Text:=DM4.Tb_ParGer02PG2NFEJUST_CONT.AsString;
if DM4.Tb_ParGer02PG2NFEDATHOR_CONT.AsDateTime<=pdatanula then
   begin
   Frm_Par.edtnf_data_cont.Text:='/  /';
   Frm_Par.edtnf_horas_cont.Text:=':';
   end
else
   begin
   Frm_Par.edtnf_data_cont.Text :=FormatDatetime(fdt2, DM4.Tb_ParGer02PG2NFEDATHOR_CONT.Value);
   Frm_Par.edtnf_horas_cont.Text:=FormatDatetime('hh:nn', DM4.Tb_ParGer02PG2NFEDATHOR_CONT.Value);
   end;

Frm_Par.edtnf_just_cont.Text:=DM4.Tb_ParGer02PG2NFEJUST_CONT.AsString;
Frm_Par.CB_CADPRO_VDAFRENTE.Checked:= DM1.Tb_PargerPCADPRO_VDAFRENTE.AsInteger=1;
Frm_Par.CB_FRENTE_VDANOR.Checked  := DM1.Tb_PargerPFRENTE_VDANOR.AsInteger=1;
Frm_Par.CB_MANDATCXBX.Checked:=DM1.Tb_PargerPMANDATCXBX.Value=1;
Frm_Par.CB_VERCRE.Checked   :=DM1.Tb_PargerPVERCRE.Value=1;
Frm_Par.CB_CRITCNPJ.Checked :=DM1.Tb_PargerPCRITCNPJ.Value=1;
Frm_Par.CB_BLOQCNPJ.Checked :=DM1.Tb_PargerPBLOQCNPJ.Value=1;
Frm_Par.CB_BLOQCEP.Checked  :=DM1.Tb_PargerPBLOQCEP.Value=1;
Frm_Par.QTDDIAV.Text        :=DM1.Tb_PargerPQTDDIAV.AsString;
Frm_Par.DIASORCAT.Text      :=DM1.Tb_PargerPDIASORCAT.AsString;
Frm_Par.CB_CRITIE.Checked   :=DM1.Tb_PargerPCRITIE.Value=1;
Frm_Par.RG_DUPCNPJ.ItemIndex:=DM1.Tb_PargerPDUPCNPJ.AsInteger;
Frm_Par.DESCEXTRA_PEDRET.Text:=FormatFloat(mcasas, DM1.Tb_PargerPDESCEXTRA_PEDRET.Value);
Frm_Par.ACREMPEXTRA.Text     :=FormatFloat(mcasas, DM1.Tb_PargerPACREMPEXTRA.Value);

Frm_Par.MENDIP.Text         :=DM1.Tb_PargerPDM_ENDIP.AsString;
Frm_Par.MENDIP_INTERNO.Text :=DM1.Tb_PargerPDM_ENDIP_INTERNO.AsString;
Frm_Par.PORTA.Text          :=DM1.Tb_PargerPDM_PORTA.AsString;


Frm_Par.EMPPRE.Text           :=DM1.Tb_PargerEMPPRE.AsString;
Frm_Par.QTDBLQ.Text           :=DM1.Tb_PargerPQTDBLQ.AsString;
Frm_Par.CB_TPBLQ.ItemIndex    :=DM1.Tb_PargerPTPBLQ.AsInteger;
Frm_Par.QTDDBLQCLISEMCPR.Text :=DM4.Tb_ParGer02PG2QTDDBLQCLISEMCPR.AsString;
Frm_Par.SEGLOGOFF.Text        :=DM4.Tb_ParGer02PG2SEGLOGOFF.AsString;


Frm_Par.PRZCOMP.Text          :=DM1.Tb_PargerPPRZCOMP.AsString;
Frm_Par.ACREGER.Text          :=Formatfloat(mcasas, DM1.Tb_PargerPACREGER.Value);
Frm_Par.TITAGER.Text          :=DM1.Tb_PargerPTITAGER.Value;
Frm_Par.JPGTAM.Text           :=DM1.Tb_PargerPTAMJPGTAM.AsString;
Frm_Par.JPGALT.Text           :=DM1.Tb_PargerPTAMJPGALT.AsString;
Frm_Par.CB_VENDCLI.Checked    := DM1.Tb_PargerPVENDCLI.Value=1;
Frm_Par.CB_TIPOVALDES.Checked :=DM1.Tb_PargerPTIPOVALDES.Value=1;


Frm_Par.PERCPL.Text         :=Formatfloat(mcasas, DM1.Tb_PargerPPERCPL.Value);
Frm_Par.PERCPLCAIXA.Text    :=Formatfloat(mcasas, DM1.Tb_PargerPPERCPLCX.Value);
Frm_Par.PERCPLFARDO.Text    :=Formatfloat(mcasas, DM1.Tb_PargerPPERCPLFARDO.Value);
Frm_Par.PERCPLPCT.Text      :=Formatfloat(mcasas, DM1.Tb_PargerPPERCPLPCT.Value);
Frm_Par.CB_CODPROPADFAT.ItemIndex:=DM1.Tb_PargerPCODPROPADFAT.AsInteger;
Frm_Par.CB_COMISS_VENDA.Checked := DM1.Tb_PargerPCOMISVENDA.Value=1;

Frm_Par.CB_BLQDEVOL.Checked :=DM1.Tb_PargerPBLQDEVOL.Value=1;

if not (DM1.Tb_PargerPFCORP_ACAB.IsNull) and (DM1.Tb_PargerPFCORP_ACAB.Value<>0) then
   Frm_Par.lbl_prod00.Font.Color:=DM1.Tb_PargerPFCORP_MPR.AsInteger;  //materia de revenda
if not (DM1.Tb_PargerPFCORP_SERV.IsNull) and (DM1.Tb_PargerPFCORP_SERV.Value<>0) then
   Frm_Par.lbl_prod01.Font.Color:=DM1.Tb_PargerPFCORP_MP.AsInteger;   //materia prima
if not (DM1.Tb_PargerPFCORP_MPR.IsNull) and (DM1.Tb_PargerPFCORP_MPR.Value<>0) then
   Frm_Par.lbl_prod02.Font.Color:=DM1.Tb_PargerPFCORP_EM.AsInteger;   //embalagem
if not (DM1.Tb_PargerPFCORP_PP.IsNull) and (DM1.Tb_PargerPFCORP_PP.Value<>0) then
   Frm_Par.lbl_prod03.Font.Color:=DM1.Tb_PargerPFCORP_PP.AsInteger;   //produto processo
if not (DM1.Tb_PargerPFCORP_MP.IsNull) and (DM1.Tb_PargerPFCORP_MP.Value<>0) then
   Frm_Par.lbl_prod04.Font.Color:=DM1.Tb_PargerPFCORP_ACAB.AsInteger; //produto acabado
if not (DM1.Tb_PargerPFCORP_ISUM.IsNull) and (DM1.Tb_PargerPFCORP_ISUM.Value<>0) then
   Frm_Par.lbl_prod05.Font.Color:=DM1.Tb_PargerPFCORP_SBP.AsInteger;  //subproduto
if not (DM1.Tb_PargerPFCORP_OUT.IsNull) and (DM1.Tb_PargerPFCORP_OUT.Value<>0) then
   Frm_Par.lbl_prod06.Font.Color:=DM1.Tb_PargerPFCORP_PI.AsInteger;  //produto intermediario
if not (DM1.Tb_PargerPFCORP_OUT.IsNull) and (DM1.Tb_PargerPFCORP_OUT.Value<>0) then
   Frm_Par.lbl_prod07.Font.Color:=DM1.Tb_PargerPFCORP_MUC.AsInteger; //Material Uso Consumo
if not (DM1.Tb_PargerPFCORP_OUT.IsNull) and (DM1.Tb_PargerPFCORP_OUT.Value<>0) then
   Frm_Par.lbl_prod08.Font.Color:=DM1.Tb_PargerPFCORP_AI.AsInteger;  //ativo imobilizado
if not (DM1.Tb_PargerPFCORP_OUT.IsNull) and (DM1.Tb_PargerPFCORP_OUT.Value<>0) then
   Frm_Par.lbl_prod09.Font.Color:=DM1.Tb_PargerPFCORP_SERV.AsInteger;  //serviços
if not (DM1.Tb_PargerPFCORP_OUT.IsNull) and (DM1.Tb_PargerPFCORP_OUT.Value<>0) then
   Frm_Par.lbl_prod10.Font.Color:=DM1.Tb_PargerPFCORP_ISUM.AsInteger;  //outros insumos
if not (DM1.Tb_PargerPFCORP_OUT.IsNull) and (DM1.Tb_PargerPFCORP_OUT.Value<>0) then
   Frm_Par.lbl_prod99.Font.Color:=DM1.Tb_PargerPFCORP_OUT.AsInteger;  //outras
if not (DM1.Tb_PargerPFCORP_SEMMOV.IsNull) and (DM1.Tb_PargerPFCORP_SEMMOV.Value<>0) then
   begin
   Frm_Par.lbl_prod_semmov_1.Font.Color:=DM1.Tb_PargerPFCORP_SEMMOV.AsInteger;  //outras
   Frm_Par.lbl_prod_semmov_2.Font.Color:=DM1.Tb_PargerPFCORP_SEMMOV.AsInteger;  //outras
   Frm_Par.edt_SemMov.Text:=DM1.Tb_PargerPFDIAS_SEMMOV.AsString;
   end;

if not (DM1.Tb_PargerPFCORP_VENC.IsNull) and (DM1.Tb_PargerPFCORP_VENC.Value<>0) then
   Frm_Par.lbl_ProdVenc.Font.Color:=DM1.Tb_PargerPFCORP_VENC.AsInteger;
if not (DM1.Tb_PargerPFCORP_BLOQ.IsNull) and (DM1.Tb_PargerPFCORP_BLOQ.Value<>0) then
   Frm_Par.lbl_ProdBloq.Font.Color:=DM1.Tb_PargerPFCORP_BLOQ.AsInteger;

if not (DM1.Tb_PargerPFCORP_ESTMIN_GER.IsNull) and (DM1.Tb_PargerPFCORP_ESTMIN_GER.Value<>0) then
   Frm_Par.lbl_EstMin_Ger.Color:=DM1.Tb_PargerPFCORP_ESTMIN_GER.AsInteger;

{if not (DM1.Tb_PargerPFCORP_ESTMIN_GER.IsNull) and (DM1.Tb_PargerPFCORP_ESTMIN_GER.Value<>0) then
   Frm_Par.lbl_EstMin_Ger.Color:=DM1.Tb_PargerPFCORP_ESTMIN_GER.AsInteger;}



Frm_Par.CB_CALCPPRO.ItemIndex :=DM1.Tb_PargerPCALCPPRO.AsInteger;
if (DM1.Tb_PargerPQTDCASARRED.IsNull) or (DM1.Tb_PargerPQTDCASARRED.Value<0)
   or (DM1.Tb_PargerPQTDCASARRED.Value>3) then
   Frm_Par.CB_QTDCASARRED.ItemIndex:=0
else
   Frm_Par.CB_QTDCASARRED.ItemIndex:=DM1.Tb_PargerPQTDCASARRED.Asinteger;
Frm_Par.RG_LSEPCUPOM.ItemIndex:=DM1.Tb_PargerPLSEPCUPOM.AsInteger;
Frm_Par.CB_PROMCADPRO.Checked :=DM1.Tb_PargerPPROMCADPRO.Value=1;
Frm_Par.RG_TIPOEXT.ItemIndex  :=DM1.Tb_PargerPTIPOEXT.AsInteger;
Frm_Par.MULTA.Text            :=FormatFloat(mcasas, DM4.Tb_Par01PMULTA.Value);
Frm_Par.QTDDM.Text            :=DM4.Tb_Par01PQTDDM.AsString;
Frm_Par.RG_CRDOC.ItemIndex    :=DM1.Tb_PargerPCRDOC.AsInteger;
Frm_Par.CRDOCSIG.Text         :=DM1.Tb_PargerPCRDOCSIG.Value;
Frm_Par.CB_LEITORPED.Checked  :=DM1.Tb_PargerPLEITORPED.Value=1;
Frm_Par.CB_LEITORPF.Checked   :=DM1.Tb_PargerPLEITORPF.Value=1;
Frm_Par.CB_LEITORAJU.Checked  :=DM1.Tb_PargerPLEITORAJU.Value=1;
if (DM1.Tb_PargerPCE_TECLA01.IsNull) or
   (DM1.Tb_PargerPCE_TECLA02.Value=0) then
   begin
   DM1.Tb_Parger.Edit;
   DM1.Tb_PargerPCE_TECLA01.Value:=17; // ctrl
   DM1.Tb_PargerPCE_TECLA02.Value:=73; // i
   DM1.Tb_Parger.Post;
   fAtualizaAtalho(0);
   end;


if DM1.Tb_PargerPME_TECLA01.AsInteger>0 then
   begin
   if DM1.Tb_PargerPME_TECLA01.Value=16 then // shift
      begin
      Frm_Par.mecod01.Caption       :=DM1.Tb_PargerPME_TECLA01.AsString;
      Frm_Par.st_tecla01.Caption    :='shift';
      Frm_Par.metecla01.Text        :=Char(DM1.Tb_PargerPME_TECLA01.AsInteger);
      end
   else if DM1.Tb_PargerPME_TECLA01.Value=17 then // ctrl
      begin
      Frm_Par.mecod01.Caption       :=DM1.Tb_PargerPME_TECLA01.AsString;
      Frm_Par.st_tecla01.Caption    :='ctrl';
      Frm_Par.metecla01.Text        :=Char(DM1.Tb_PargerPME_TECLA01.AsInteger);
      end
   else if DM1.Tb_PargerPME_TECLA01.Value=18 then // alt
      begin
      Frm_Par.mecod01.Caption       :=DM1.Tb_PargerPME_TECLA01.AsString;
      Frm_Par.st_tecla01.Caption    :='alt';
      Frm_Par.metecla01.Text        :=Char(DM1.Tb_PargerPME_TECLA01.AsInteger);
      end
   else
      begin
      Frm_Par.mecod01.Caption       :=DM1.Tb_PargerPME_TECLA01.AsString;
      Frm_Par.st_tecla01.Caption    :=Char(DM1.Tb_PargerPME_TECLA01.AsInteger);
      Frm_Par.metecla01.Text        :=Char(DM1.Tb_PargerPME_TECLA01.AsInteger);
      end;

   end;


if DM1.Tb_PargerPME_TECLA02.AsInteger>0 then
   begin
   if DM1.Tb_PargerPME_TECLA02.Value=16 then // shift
      begin
      Frm_Par.mecod02.Caption       :=DM1.Tb_PargerPME_TECLA02.AsString;
      Frm_Par.st_tecla02.Caption    :='shift';
      Frm_Par.metecla02.Text        :=Char(DM1.Tb_PargerPME_TECLA02.AsInteger);
      end
   else if DM1.Tb_PargerPME_TECLA02.Value=17 then // ctrl
      begin
      Frm_Par.mecod02.Caption       :=DM1.Tb_PargerPME_TECLA02.AsString;
      Frm_Par.st_tecla02.Caption    :='ctrl';
      Frm_Par.metecla02.Text        :=Char(DM1.Tb_PargerPME_TECLA02.AsInteger);
      end
   else if DM1.Tb_PargerPME_TECLA02.Value=18 then // alt
      begin
      Frm_Par.mecod02.Caption       :=DM1.Tb_PargerPME_TECLA02.AsString;
      Frm_Par.st_tecla02.Caption    :='alt';
      Frm_Par.metecla02.Text        :=Char(DM1.Tb_PargerPME_TECLA02.AsInteger);
      end
   else
      begin
      Frm_Par.mecod02.Caption       :=DM1.Tb_PargerPME_TECLA02.AsString;
      Frm_Par.st_tecla02.Caption    :=Char(DM1.Tb_PargerPME_TECLA02.AsInteger);
      Frm_Par.metecla02.Text        :=Char(DM1.Tb_PargerPME_TECLA02.AsInteger);
      end;

   end;

if DM1.Tb_PargerPME_TECLA03.AsInteger>0 then
   begin
   if DM1.Tb_PargerPME_TECLA03.Value=16 then // shift
      begin
      Frm_Par.mecod03.Caption       :=DM1.Tb_PargerPME_TECLA03.AsString;
      Frm_Par.st_tecla03.Caption    :='shift';
      Frm_Par.metecla03.Text        :=Char(DM1.Tb_PargerPME_TECLA03.AsInteger);
      end
   else if DM1.Tb_PargerPME_TECLA03.Value=17 then // ctrl
      begin
      Frm_Par.mecod03.Caption       :=DM1.Tb_PargerPME_TECLA03.AsString;
      Frm_Par.st_tecla03.Caption    :='ctrl';
      Frm_Par.metecla03.Text        :=Char(DM1.Tb_PargerPME_TECLA03.AsInteger);
      end
   else if DM1.Tb_PargerPME_TECLA03.Value=18 then // alt
      begin
      Frm_Par.mecod03.Caption       :=DM1.Tb_PargerPME_TECLA03.AsString;
      Frm_Par.st_tecla03.Caption    :='alt';
      Frm_Par.metecla03.Text        :=Char(DM1.Tb_PargerPME_TECLA03.AsInteger);
      end
   else
      begin
      Frm_Par.mecod03.Caption       :=DM1.Tb_PargerPME_TECLA03.AsString;
      Frm_Par.st_tecla03.Caption    :=Char(DM1.Tb_PargerPME_TECLA03.AsInteger);
      Frm_Par.metecla03.Text        :=Char(DM1.Tb_PargerPME_TECLA03.AsInteger);
      end;

   end;


if DM1.Tb_PargerPME_TECLA04.AsInteger>0 then
   begin
   if DM1.Tb_PargerPME_TECLA04.Value=16 then // shift
      begin
      Frm_Par.mecod04.Caption       :=DM1.Tb_PargerPME_TECLA04.AsString;
      Frm_Par.st_tecla04.Caption    :='shift';
      Frm_Par.metecla04.Text        :=Char(DM1.Tb_PargerPME_TECLA04.AsInteger);
      end
   else if DM1.Tb_PargerPME_TECLA04.Value=17 then // ctrl
      begin
      Frm_Par.mecod04.Caption       :=DM1.Tb_PargerPME_TECLA04.AsString;
      Frm_Par.st_tecla04.Caption    :='ctrl';
      Frm_Par.metecla04.Text        :=Char(DM1.Tb_PargerPME_TECLA04.AsInteger);
      end
   else if DM1.Tb_PargerPME_TECLA04.Value=18 then // alt
      begin
      Frm_Par.mecod04.Caption       :=DM1.Tb_PargerPME_TECLA04.AsString;
      Frm_Par.st_tecla04.Caption    :='alt';
      Frm_Par.metecla04.Text        :=Char(DM1.Tb_PargerPME_TECLA04.AsInteger);
      end
   else
      begin
      Frm_Par.mecod04.Caption       :=DM1.Tb_PargerPME_TECLA04.AsString;
      Frm_Par.st_tecla04.Caption    :=Char(DM1.Tb_PargerPME_TECLA04.AsInteger);
      Frm_Par.metecla04.Text        :=Char(DM1.Tb_PargerPME_TECLA04.AsInteger);
      end;

   end;

if DM1.Tb_PargerPCE_TECLA01.AsInteger>0 then
   begin
   if DM1.Tb_PargerPCE_TECLA01.Value=16 then // shift
      begin
      Frm_Par.cecod01.Caption       :=DM1.Tb_PargerPCE_TECLA01.AsString;
      Frm_Par.st_cetecla01.Caption  :='shift';
      Frm_Par.cetecla01.Text        :=Char(DM1.Tb_PargerPCE_TECLA01.AsInteger);
      end
   else if DM1.Tb_PargerPCE_TECLA01.Value=17 then // ctrl
      begin
      Frm_Par.cecod01.Caption       :=DM1.Tb_PargerPCE_TECLA01.AsString;
      Frm_Par.st_cetecla01.Caption  :='ctrl';
      Frm_Par.cetecla01.Text        :=Char(DM1.Tb_PargerPCE_TECLA01.AsInteger);
      end
   else if DM1.Tb_PargerPCE_TECLA01.Value=18 then // alt
      begin
      Frm_Par.cecod01.Caption       :=DM1.Tb_PargerPCE_TECLA01.AsString;
      Frm_Par.st_cetecla01.Caption  :='alt';
      Frm_Par.cetecla01.Text        :=Char(DM1.Tb_PargerPCE_TECLA01.AsInteger);
      end
   else
      begin
      Frm_Par.cecod01.Caption       :=DM1.Tb_PargerPCE_TECLA01.AsString;
      Frm_Par.st_cetecla01.Caption  :=Char(DM1.Tb_PargerPCE_TECLA01.AsInteger);
      Frm_Par.cetecla01.Text        :=Char(DM1.Tb_PargerPCE_TECLA01.AsInteger);
      end;

   end;

if DM1.Tb_PargerPCE_TECLA02.AsInteger>0 then
   begin
   if DM1.Tb_PargerPCE_TECLA02.Value=16 then // shift
      begin
      Frm_Par.cecod02.Caption       :=DM1.Tb_PargerPCE_TECLA02.AsString;
      Frm_Par.st_cetecla02.Caption  :='shift';
      Frm_Par.cetecla02.Text        :=Char(DM1.Tb_PargerPCE_TECLA02.AsInteger);
      end
   else if DM1.Tb_PargerPCE_TECLA02.Value=17 then // ctrl
      begin
      Frm_Par.cecod02.Caption       :=DM1.Tb_PargerPCE_TECLA02.AsString;
      Frm_Par.st_cetecla02.Caption  :='ctrl';
      Frm_Par.cetecla02.Text        :=Char(DM1.Tb_PargerPCE_TECLA02.AsInteger);
      end
   else if DM1.Tb_PargerPCE_TECLA02.Value=18 then // alt
      begin
      Frm_Par.cecod02.Caption       :=DM1.Tb_PargerPCE_TECLA02.AsString;
      Frm_Par.st_cetecla02.Caption  :='alt';
      Frm_Par.cetecla02.Text        :=Char(DM1.Tb_PargerPCE_TECLA02.AsInteger);
      end
   else
      begin
      Frm_Par.cecod02.Caption       :=DM1.Tb_PargerPCE_TECLA02.AsString;
      Frm_Par.st_cetecla02.Caption  :=Char(DM1.Tb_PargerPCE_TECLA02.AsInteger);
      Frm_Par.cetecla02.Text        :=Char(DM1.Tb_PargerPCE_TECLA02.AsInteger);
      end;

   end;

if DM1.Tb_PargerPCE_TECLA03.AsInteger>0 then
   begin
   if DM1.Tb_PargerPCE_TECLA03.Value=16 then // shift
      begin
      Frm_Par.cecod03.Caption       :=DM1.Tb_PargerPCE_TECLA03.AsString;
      Frm_Par.st_cetecla03.Caption  :='shift';
      Frm_Par.cetecla03.Text        :=Char(DM1.Tb_PargerPCE_TECLA03.AsInteger);
      end
   else if DM1.Tb_PargerPCE_TECLA03.Value=17 then // ctrl
      begin
      Frm_Par.cecod03.Caption       :=DM1.Tb_PargerPCE_TECLA03.AsString;
      Frm_Par.st_cetecla03.Caption  :='ctrl';
      Frm_Par.cetecla03.Text        :=Char(DM1.Tb_PargerPCE_TECLA03.AsInteger);
      end
   else if DM1.Tb_PargerPCE_TECLA03.Value=18 then // alt
      begin
      Frm_Par.cecod03.Caption       :=DM1.Tb_PargerPCE_TECLA03.AsString;
      Frm_Par.st_cetecla03.Caption  :='alt';
      Frm_Par.cetecla03.Text        :=Char(DM1.Tb_PargerPCE_TECLA03.AsInteger);
      end
   else
      begin
      Frm_Par.cecod03.Caption       :=DM1.Tb_PargerPCE_TECLA03.AsString;
      Frm_Par.st_cetecla03.Caption  :=Char(DM1.Tb_PargerPCE_TECLA03.AsInteger);
      Frm_Par.cetecla03.Text        :=Char(DM1.Tb_PargerPCE_TECLA03.AsInteger);
      end;

   end;

if DM1.Tb_PargerPCE_TECLA04.AsInteger>0 then
   begin
   if DM1.Tb_PargerPCE_TECLA04.Value=16 then // shift
      begin
      Frm_Par.cecod04.Caption       :=DM1.Tb_PargerPCE_TECLA04.AsString;
      Frm_Par.st_cetecla04.Caption  :='shift';
      Frm_Par.cetecla04.Text        :=Char(DM1.Tb_PargerPCE_TECLA04.AsInteger);
      end
   else if DM1.Tb_PargerPCE_TECLA04.Value=17 then // ctrl
      begin
      Frm_Par.cecod04.Caption       :=DM1.Tb_PargerPCE_TECLA04.AsString;
      Frm_Par.st_cetecla04.Caption  :='ctrl';
      Frm_Par.cetecla04.Text        :=Char(DM1.Tb_PargerPCE_TECLA04.AsInteger);
      end
   else if DM1.Tb_PargerPCE_TECLA04.Value=18 then // alt
      begin
      Frm_Par.cecod04.Caption       :=DM1.Tb_PargerPCE_TECLA04.AsString;
      Frm_Par.st_cetecla04.Caption  :='alt';
      Frm_Par.cetecla04.Text        :=Char(DM1.Tb_PargerPCE_TECLA04.AsInteger);
      end
   else
      begin
      Frm_Par.cecod04.Caption       :=DM1.Tb_PargerPCE_TECLA04.AsString;
      Frm_Par.st_cetecla04.Caption  :=Char(DM1.Tb_PargerPCE_TECLA04.AsInteger);
      Frm_Par.cetecla04.Text        :=Char(DM1.Tb_PargerPCE_TECLA04.AsInteger);
      end;

   end;


CB_CONSPROPAD.Items.Clear;
CB_CONSPROPAD.Items.Add('Nome');
CB_CONSPROPAD.Items.Add('Código');
CB_CONSPROPAD.Items.Add('Nome Generico');
CB_CONSPROPAD.Items.Add('Código Barras');
CB_CONSPROPAD.Items.Add('Fornecedor');
CB_CONSPROPAD.Items.Add('Referencia');

Frm_Par.CB_CONSPROPAD.ItemIndex:=DM1.Tb_PargerPCONSPROPAD.AsInteger;
Frm_Par.cb_ordem_pro.ItemIndex :=DM1.Tb_PargerPORDEMCADPRO.AsInteger;

if (StrToInt('0'+copy(mpseg,4,2))=1) then
   begin
   lbl_qtddiav01.Visible:=True;
   lbl_qtddiav02.Visible:=true;
   QTDDIAV.Visible      :=True;
   QTDDIAV.Text         :=DM1.Tb_PargerPQTDDIAV.AsString;
   end
else
   begin
   lbl_qtddiav01.Visible:=False;
   lbl_qtddiav02.Visible:=False;
   QTDDIAV.Visible      :=False;
   QTDDIAV.Text         :='0';
   end;
G_DESPED.Enabled  :=false;
G_CREDCLI.Enabled :=false;
G_RESTDIV.Enabled :=false;
G_INSTR.Enabled   :=false;
G_GRAVPED.Enabled :=false;
G_SOBECF.Enabled  :=false;
G_DESCPF.Enabled  :=false;
G_RELCLI.Enabled  :=false;
G_RELPRO.Enabled  :=false;
G_DIVERSOS.Enabled:=false;
G_SISTEMA.Enabled :=false;
G_DESCJUR.Enabled :=false;
G_CAIXA.Enabled   :=false;
G_CORES.Enabled   :=false;
G_MUDAEMP.Enabled :=false;
G_COMEMP.Enabled  :=false;

{
Frm_Par.CB_VISORC.Checked := DM4.Tb_Par01PVISORC.Value=0;
Frm_Par.CB_VISVAL.Checked := DM4.Tb_Par01PVISVAL.Value=0;
}



if DM1.Tb_PargerPLOGUSRPED.AsInteger=1 then
   begin
   DM1.Tb_ParFon.Close;
   DM1.Tb_ParFon.SQL.Clear;
   DM1.Tb_Parfon.SQL.Add('Select * from PARFON where '
                     +iif(DM1.Qr_tid.locate('TINOME','PARFON',[]),'',' PFCODEMP=0'+IntTostr(codemp)+' and ')
                        +' PFNOMTER='+chr(39)+'TODOS'+chr(39)
                        +' and PFNOMFOR='+chr(39)+'LOGINVEND'+chr(39)
                        +' and PFNOMCOM='+chr(39)+'VEND'+chr(39));
   DM1.Tb_ParFon.Open;
   if DM1.Tb_Parfon.Eof then
      begin
      DM1.Tb_ParFon.Append;
      DM1.Tb_ParFonPFCODEMP.Value:=codemp;
      DM1.Tb_ParFonPFNOMTER.Value:='TODOS';
      DM1.Tb_ParFonPFNOMFOR.Value:='LOGINVEND';
      DM1.Tb_ParFonPFNOMCOM.Value:='VEND';
      DM1.Tb_ParFonPFCORFON.Value:=MENS.Font.Color;
      DM1.Tb_ParFonPFMENS.Value  :=DM1.Tb_EmpRAZAO.Value;
      DM1.Tb_ParFonPFMTIPO.Value :=0;
      DM1.Tb_ParFon.Post;
      end;
   MENS.Text:=DM1.Tb_ParFonPFMENS.Value;
   MENS.Font.Color:=DM1.Tb_ParFonPFCORFON.AsInteger;
   RG_MTIPO.ItemIndex:=DM1.Tb_ParFonPFMTIPO.AsInteger;
   GB_LOGINVENDEDOR.Visible:=true;
   end
else
   GB_LOGINVENDEDOR.Visible:=false;

edt_hostsmtp.Text            :=DM1.Tb_PargerPHOSTEMAIL.AsString;
edt_portasmtp.Text           :=DM1.Tb_PargerPPORTAEMAIL.AsString;
edt_emailhost.Text           :=DM1.Tb_PargerPUSEREMAIL.AsString;
edt_senhahost.Text           :=DM1.Tb_PargerPSENHAEMAIL.AsString;
cb_LoginSmtp.ItemIndex       :=DM1.Tb_PargerPTLOGINEMAIL.AsInteger;
cb_AutenticacaoSmtp.ItemIndex:=DM1.Tb_PargerPTAUTENTICAEMAIL.AsInteger;



FAtualizaCadpar_NF(0);


end;

procedure TFrm_Par.PRZCOMPKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Par.QTDBLQExit(Sender: TObject);
begin
QTDBLQ.Text:=FloatToStr(fsonumero(QTDBLQ.Text));
if ValFloat(QTDBLQ.Text)>1000 then
   begin

   fmensagem('Número Invalido!',0,['0'],0);

   QTDBLQ.SetFocus;
   end;
end;

procedure TFrm_Par.ACREGERExit(Sender: TObject);
begin
ACREGER.Text:=FormatFloat(mcasas, ValFloat(ACREGER.Text));
if (ValFloat(ACREGER.Text)<0) or (ValFloat(ACREGER.Text)>100) then
   begin

   fmensagem('Valor do Acréscimo Invalido!',0,['0'],0);

   ACREGER.SetFocus;;
   end;
end;

procedure TFrm_Par.PRZCOMPExit(Sender: TObject);
begin
PRZCOMP.Text:=FloatToStr(fsonumero(PRZCOMP.Text));
if ValFloat(PRZCOMP.Text)>366 then
   begin

   fmensagem('Prazo Invalido!',0,['0'],0);

   PRZCOMP.SetFocus;
   end;

end;

procedure TFrm_Par.VALFREExit(Sender: TObject);
begin
VALFRE.Text:=FormatFloat(mcasas, ValFloat(VALFRE.Text));
if ValFloat(VALFRE.Text)<0 then
   begin
   fmensagem('Valor do Frete não pode ser negativo!',0,['0'],0);


   VALFRE.SetFocus;;
   end;

end;

procedure TFrm_Par.TITAGERExit(Sender: TObject);
begin
if (length(TITAGER.Text)>19) then
   TITAGER.Text:=copy(TITAGER.Text,1,19);

end;

procedure TFrm_Par.TITAGERKeyPress(Sender: TObject; var Key: Char);
begin

if not (Length(TITAGER.Text)>19) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Par.EMPPREExit(Sender: TObject);
begin
EMPPRE.Text:=IntTostr(ValInt(EMPPRE.Text));
if ValInt(EMPPRE.Text)<=0 then
   begin
   DM1.Tb_Emp.First;
   EMPPRE.Text:=DM1.Tb_EmpCODEMP.AsString;
   end;
if not DM1.Tb_Emp.Locate('CODEMP',trim(EMPPRE.Text),[locaseinsensitive]) then
   begin

   fmensagem('Empresa padrão não encontrada!',0,['0'],0);

   DM1.Tb_Emp.First;
   EMPPRE.Text:=DM1.Tb_EmpCODEMP.AsString;
   EMPPRE.SetFocus;
   exit;
   end;

end;

procedure TFrm_Par.PMAXRECKeyPress(Sender: TObject; var Key: Char);
begin
if (length(PMAXREC.Text)>20) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Par.ACREGERKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then Key:=DecimalSeparator;
end;

procedure TFrm_Par.VALFREKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then Key:=DecimalSeparator;
end;

procedure TFrm_Par.PERCPLExit(Sender: TObject);
begin
PERCPL.Text:=FormatFloat(mcasas, valfloat(PERCPL.Text));

end;

procedure TFrm_Par.DBGrid1Exit(Sender: TObject);
begin
if Par_LDR.State in [DsInsert, DsEdit] then
   Par_LDR.Post;

end;

procedure TFrm_Par.CRDOCSIGExit(Sender: TObject);
begin
if not fTestaTam(0,3,CRDOCSIG.Text,'') then
   CRDOCSIG.Text:=copy(CRDOCSIG.Text,1,3);

end;

procedure TFrm_Par.CRDOCSIGKeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(1,3,CRDOCSIG.Text,key) then
   key:=#0;

end;

procedure TFrm_Par.CB_MANDATCXBXClick(Sender: TObject);
begin
if par_ori<>'consulta' then
   G_CAIXA.Enabled:=true;

end;

procedure TFrm_Par.CB_CXAUTOClick(Sender: TObject);
begin
G_CAIXA.Enabled:=True;
end;

procedure TFrm_Par.CRDOCSIGChange(Sender: TObject);
begin
if (CRDOCSIG.Modified) and  (par_ori<>'consulta') then
   G_CAIXA.Enabled:=true;
end;

procedure TFrm_Par.QTDDIAVExit(Sender: TObject);
begin
QTDDIAV.Text:=fdeixanum(QTDDIAV.Text);
if ValFloat(QTDDIAV.Text)>99999999 then
   begin

   fmensagem('Quantidade de Dias Inválido!',0,['0'],0);

   QTDDIAV.SetFocus;
   end;
end;

procedure TFrm_Par.DIASORCATExit(Sender: TObject);
begin
DIASORCAT.Text:=fdeixanum(DIASORCAT.Text);
if ValFloat(DIASORCAT.Text)>99999999 then
   begin

   fmensagem('Quantidade de Dias Inválido!',0,['0'],0);

   DIASORCAT.SetFocus;
   end;

end;

procedure TFrm_Par.btn_prod00Click(Sender: TObject);
begin
if (par_ori<>'consulta') then
   G_CORES.Enabled:=true;

If ColorDialog1.Execute then
   lbl_prod00.Font.Color:=ColorDialog1.Color;

end;

procedure TFrm_Par.btn_prod01Click(Sender: TObject);
begin
if (par_ori<>'consulta') then
   G_CORES.Enabled:=true;

If ColorDialog1.Execute then
   lbl_prod01.Font.Color:=ColorDialog1.Color;

end;

procedure TFrm_Par.btn_prod02Click(Sender: TObject);
begin
if (par_ori<>'consulta') then
   G_CORES.Enabled:=true;

If ColorDialog1.Execute then
   lbl_prod02.Font.Color:=ColorDialog1.Color;

end;

procedure TFrm_Par.btn_prod03Click(Sender: TObject);
begin
if (par_ori<>'consulta') then
   G_CORES.Enabled:=true;

If ColorDialog1.Execute then
   lbl_prod03.Font.Color:=ColorDialog1.Color;

end;

procedure TFrm_Par.btn_prod04Click(Sender: TObject);
begin
if (par_ori<>'consulta') then
   G_CORES.Enabled:=true;

If ColorDialog1.Execute then
   lbl_prod04.Font.Color:=ColorDialog1.Color;

end;

procedure TFrm_Par.btn_prod05Click(Sender: TObject);
begin
if (par_ori<>'consulta') then
   G_CORES.Enabled:=true;

If ColorDialog1.Execute then
   lbl_prod05.Font.Color:=ColorDialog1.Color;

end;

procedure TFrm_Par.btn_prod06Click(Sender: TObject);
begin
if (par_ori<>'consulta') then
   G_CORES.Enabled:=true;

If ColorDialog1.Execute then
   lbl_prod06.Font.Color:=ColorDialog1.Color;

end;

procedure TFrm_Par.btn_prodVencClick(Sender: TObject);
begin
if (par_ori<>'consulta') then
   G_CORES.Enabled:=true;

If ColorDialog1.Execute then
   lbl_ProdVenc.Font.Color:=ColorDialog1.Color;

end;

procedure TFrm_Par.btn_prodBloqClick(Sender: TObject);
begin
if (par_ori<>'consulta') then
   G_CORES.Enabled:=true;

If ColorDialog1.Execute then
   lbl_ProdBloq.Font.Color:=ColorDialog1.Color;

end;

procedure TFrm_Par.CB_CONSPROPADExit(Sender: TObject);
begin
if CB_CONSPROPAD.ItemIndex<0 then
   with CB_CONSPROPAD do ItemIndex:=Items.IndexOf(CB_CONSPROPAD.Text);
CB_CONSPROPAD.text:=CB_CONSPROPAD.Items.Strings[CB_CONSPROPAD.ItemIndex];

end;

procedure TFrm_Par.PERCPLCAIXAExit(Sender: TObject);
begin
PERCPLCAIXA.Text:=FormatFloat(mcasas, valfloat(PERCPLCAIXA.Text));

end;

procedure TFrm_Par.PERCPLPCTExit(Sender: TObject);
begin
PERCPLPCT.Text:=FormatFloat(mcasas, valfloat(PERCPLPCT.Text));

end;

procedure TFrm_Par.PERCPLCAIXAChange(Sender: TObject);
begin
if (PERCPLCAIXA.Modified) and  (par_ori<>'consulta') then
   G_GRAVPED.Enabled:=true;

end;

procedure TFrm_Par.PERCPLFARDOChange(Sender: TObject);
begin
if (PERCPLFARDO.Modified) and  (par_ori<>'consulta') then
   G_GRAVPED.Enabled:=true;

end;

procedure TFrm_Par.PERCPLPCTChange(Sender: TObject);
begin
if (PERCPLPCT.Modified) and  (par_ori<>'consulta') then
   G_GRAVPED.Enabled:=true;

end;

procedure TFrm_Par.PERCPLFARDOExit(Sender: TObject);
begin
PERCPLFARDO.Text:=FormatFloat(mcasas, valfloat(PERCPLFARDO.Text));

end;

procedure TFrm_Par.CB_QTDCASARREDExit(Sender: TObject);
begin
with CB_QTDCASARRED do ItemIndex:=items.IndexOf(CB_QTDCASARRED.Text);
CB_QTDCASARRED.text:=CB_QTDCASARRED.Items.Strings[CB_QTDCASARRED.ItemIndex];
if (CB_QTDCASARRED.ItemIndex<0) or (CB_QTDCASARRED.ItemIndex>4) then
   CB_QTDCASARRED.ItemIndex:=0;

end;

procedure TFrm_Par.metecla01KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
mecod01.Caption:=IntTostr(Integer(Key));
if key=17 then
   st_tecla01.Caption:='Ctrl'
else if key=18 then
   st_tecla01.Caption:='alt'
else if key=16 then
   st_tecla01.Caption:='Shift'
else
   st_tecla01.Caption:=chr(key);

end;

procedure TFrm_Par.metecla01KeyPress(Sender: TObject; var Key: Char);
begin
metecla01.Text:='';

end;

procedure TFrm_Par.metecla02KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
mecod02.Caption:=IntTostr(Integer(Key));
if key=17 then
   st_tecla02.Caption:='Ctrl'
else if key=18 then
   st_tecla02.Caption:='alt'
else if key=16 then
   st_tecla02.Caption:='Shift'
else
   st_tecla02.Caption:=chr(key);

end;

procedure TFrm_Par.metecla03KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
mecod03.Caption:=IntTostr(Integer(Key));
if key=17 then
   st_tecla03.Caption:='Ctrl'
else if key=18 then
   st_tecla03.Caption:='alt'
else if key=16 then
   st_tecla03.Caption:='Shift'
else
   st_tecla03.Caption:=chr(key);

end;

procedure TFrm_Par.metecla04KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
mecod04.Caption:=IntTostr(Integer(Key));
if key=17 then
   st_tecla04.Caption:='Ctrl'
else if key=18 then
   st_tecla04.Caption:='alt'
else if key=16 then
   st_tecla04.Caption:='Shift'
else
   st_tecla04.Caption:=chr(key);

end;

procedure TFrm_Par.metecla02KeyPress(Sender: TObject; var Key: Char);
begin
metecla02.Text:='';

end;

procedure TFrm_Par.metecla03KeyPress(Sender: TObject; var Key: Char);
begin
metecla03.Text:='';

end;

procedure TFrm_Par.metecla04KeyPress(Sender: TObject; var Key: Char);
begin
metecla04.Text:='';

end;

procedure TFrm_Par.cetecla01KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
cecod01.Caption:=IntTostr(Integer(Key));
if key=17 then
   st_cetecla01.Caption:='Ctrl'
else if key=18 then
   st_cetecla01.Caption:='alt'
else if key=16 then
   st_cetecla01.Caption:='Shift'
else
   st_cetecla01.Caption:=chr(key);

end;

procedure TFrm_Par.cetecla02KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
cecod02.Caption:=IntTostr(Integer(Key));
if key=17 then
   st_cetecla02.Caption:='Ctrl'
else if key=18 then
   st_cetecla02.Caption:='alt'
else if key=16 then
   st_cetecla02.Caption:='Shift'
else
   st_cetecla02.Caption:=chr(key);

end;

procedure TFrm_Par.cetecla03KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
cecod03.Caption:=IntTostr(Integer(Key));
if key=17 then
   st_cetecla03.Caption:='Ctrl'
else if key=18 then
   st_cetecla03.Caption:='alt'
else if key=16 then
   st_cetecla03.Caption:='Shift'
else
   st_cetecla03.Caption:=chr(key);

end;

procedure TFrm_Par.cetecla04KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
cecod04.Caption:=IntTostr(Integer(Key));
if key=17 then
   st_cetecla04.Caption:='Ctrl'
else if key=18 then
   st_cetecla04.Caption:='alt'
else if key=16 then
   st_cetecla04.Caption:='Shift'
else
   st_cetecla04.Caption:=chr(key);

end;

procedure TFrm_Par.cetecla01KeyPress(Sender: TObject; var Key: Char);
begin
cetecla01.Text:='';

end;

procedure TFrm_Par.cetecla02KeyPress(Sender: TObject; var Key: Char);
begin
cetecla02.Text:='';

end;

procedure TFrm_Par.cetecla03KeyPress(Sender: TObject; var Key: Char);
begin
cetecla03.Text:='';

end;

procedure TFrm_Par.cetecla04KeyPress(Sender: TObject; var Key: Char);
begin
cetecla04.Text:='';

end;

procedure TFrm_Par.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if pTcAtalho_ce<>0 then
   begin
   if (Shift=pSfAtalho_ce) and (pTcAtalho_ce=key) then
      begin
      if ts_Teclas.TabVisible then
         ts_Teclas.TabVisible:=false
      else
         ts_Teclas.TabVisible:=true;
      end;
   end;

end;

procedure TFrm_Par.bbLimparMEClick(Sender: TObject);
begin
metecla01.Text:='';
metecla02.Text:='';
metecla03.Text:='';
metecla04.Text:='';

st_tecla01.Caption:='';
st_tecla02.Caption:='';
st_tecla03.Caption:='';
st_tecla04.Caption:='';
mecod01.Caption:='';
mecod02.Caption:='';
mecod03.Caption:='';
mecod04.Caption:='';


end;

procedure TFrm_Par.bbLimparCEClick(Sender: TObject);
begin
cetecla01.Text:='';
cetecla02.Text:='';
cetecla03.Text:='';
cetecla04.Text:='';

st_cetecla01.Caption:='';
st_cetecla02.Caption:='';
st_cetecla03.Caption:='';
st_cetecla04.Caption:='';
cecod01.Caption:='';
cecod02.Caption:='';
cecod03.Caption:='';
cecod04.Caption:='';

end;

procedure TFrm_Par.JPGTAMExit(Sender: TObject);
begin
JPGTAM.Text:=fdeixanum(JPGTAM.Text);
if ValInt(JPGTAM.Text)>99999999 then
   JPGTAM.Text:='0';

end;

procedure TFrm_Par.JPGALTExit(Sender: TObject);
begin
JPGALT.Text:=fdeixanum(JPGALT.Text);
if ValInt(JPGALT.Text)>99999999 then
   JPGALT.Text:='0';

end;

procedure TFrm_Par.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePage=tsCaixa then
   bbAtualizarCaixa.Click
else if PageControl1.ActivePage=Ts_Logo then
   begin
   fTestarLogotipos(0);
   fLerlogomarcas;
   end;


end;

function TFrm_Par.fLerlogomarcas: Boolean;
begin

   Ado_CadLog.Close;
   Ado_CadLog.SQL.Clear;
   Ado_CadLog.SQL.add('Select * from CADLOGSIS ');
   if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
      Ado_CadLog.Sql.add(' where (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                                       +' or LSCODEMP is null )');
   Ado_CadLog.Open;
result:=true;
end;

procedure TFrm_Par.Par_LDRCalcFields(DataSet: TDataSet);
begin
if mCalcParLdr then
   begin
   if trim(Par_LDRCODCC.AsString)<>'' then
      begin
      if flcadccu(1,0,Par_LDRCODCC.AsString) then
         begin
         Par_LDRnomccu.Value   :=DM1.Tb_CCUCCNOME.Value;
         Par_LDRnatdc_ccu.Value:=DM1.Tb_CCUCCNAT.Value;
         end
      end;
   if trim(Par_LDRCODDEP.AsString)<>'' then
      begin
      if flcaddep_ldr(1,0,Par_LDRCODDEP.AsString) then
         Par_LDRnomdep.Value   :=DM1.Tb_Dep_LdrDNOME.Value;
      end;
   end;
end;

procedure TFrm_Par.c(DataSet: TDataSet);
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

procedure TFrm_Par.bbAdquirirClick(Sender: TObject);
var
mTam: Integer;
begin

If Opd1.Execute then
   begin

   mtam:=length(Opd1.FileName);
   if UpperCase(copy(Opd1.FileName,mtam-3,4))<>'.JPG' then
      begin

      fmensagem('Nao é uma Figura Valida.',0,['0'],0);


      end
   else
      begin
      mAjustouLogo:=true;
      logosis.Picture.LoadFromFile(Opd1.FileName);
      end;
   end;
end;

procedure TFrm_Par.BBALTERARClick(Sender: TObject);
begin

if Ado_CadLogLSCHAVE.IsNull then
   begin

   fmensagem('Favor Selecionar um Registro Válido!',0,['0'],0);

   exit;
   end;
gb_logo.Enabled  :=true;
DBMemo1.Enabled  :=true;
DBGrid2.Enabled  :=false;
BBALTERAR.Enabled:=false;
BBGRAVAR.Enabled :=true;
//DM4.Tb_LogoSis.Edit;
end;

procedure TFrm_Par.BBGRAVARClick(Sender: TObject);
begin
if mAjustouLogo then
   begin
   ADOQuery1.Close;
   ADOQuery1.SQL.Clear;
//   ADOQuery1.Params.CreateParam(ftString,'CHAVE',ptinput);
//   ADOQuery1.Params.CreateParam(ftString,'LSCODEMP',ptinput);
   if logosis.Picture=nil then
      ADOQuery1.SQL.Add('Update CADLOGSIS set LSLOGO=null,LSCODEMP=:LSCODEMP')
   else
      begin
//      ADOQuery1.Params.CreateParam(ftString,'LOGO',ptinput);
//      ADOQuery1.Params.CreateParam(ftString,'LSCODEMP',ptinput);
      ADOQuery1.SQL.Add('Update CADLOGSIS set LSLOGO=:LOGO,LSCODEMP=:LSCODEMP');
      ADOQuery1.Parameters.ParamByName('LOGO').LoadFromFile(opd1.FileName,ftBlob);
      end;
   ADOQuery1.SQL.Add(' where LSCHAVE=:CHAVE');
   ADOQuery1.Parameters.ParamByName('CHAVE').Value:=Ado_CadLogLSCHAVE.Value;
   ADOQuery1.Parameters.ParamByName('LSCODEMP').Value:=iif(codemp>100,codemp-100,codemp);

   if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
      ADOQuery1.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                      +' or LSCODEMP is null )');


   try
      ADOQuery1.ExecSQL;
      fdm1StartCommit;
   except

      fmensagem('Erro ao Atualizar o Logotipo!',0,['0'],0);

      end;
   end;
//DM4.Tb_LogoSisLSCODEMP.AsFloat:=iif(codemp>100,codemp-100,codemp);
//*DM4.Tb_LogoSis.Post;
Ado_CadLog.Close;
Ado_CadLog.SQL.Clear;
Ado_CadLog.Sql.add('Select * from CADLOGSIS ');
if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
   Ado_CadLog.Sql.add(' where (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                      +' or LSCODEMP is null )');
Ado_CadLog.Sql.add('  ORDER BY LSCHAVE ');

Ado_CadLog.Open;

BBLIMPAR.Click;
end;

procedure TFrm_Par.BBLIMPARClick(Sender: TObject);
begin
//if DM4.Tb_LogoSis.State in [dsEdit, dsinsert] then
//   begin
///   DM4.Tb_LogoSis.Cancel;
//   end;
BBGRAVAR.Enabled:=false;
BBALTERAR.Enabled:=true;
mAjustouLogo:=false;
gb_logo.Enabled  :=false;
DBMemo1.Enabled  :=false;
DBGrid2.Enabled  :=true;
end;

function fTestarLogotipos(pTipo: Integer): Boolean;
var
mNomLog: array of string;
mDesclog: array of string;
x: Integer;
begin
SetLength(mNomlog,14);
SetLength(mDescLog,14);
mNomLog[00] :='LOGO0';
mDesclog[00]:='Este Logototipo é Utilizado Como Tela de Fundo'
             +' do Menu Principal(fundo de tela) ';
mNomLog[01] :='LOGO1';
mDesclog[01]:='Este Logototipo é Utilizado no Relatório de '
             +' Licitaçoes (logotipo da empresa)';
mNomLog[02] :='LOGO2';
mDesclog[02]:='Este Logototipo é Utilizado no Relatório de '
             +' Orçamento de Mercadorias (logotipo da empresa)';
mNomLog[03] :='LOGO4';
mDesclog[03]:='Este Logototipo é Utilizado no Relatório de '
             +' Duplicatas (logotipo da empresa)';
mNomLog[04] :='LOGO5';
mDesclog[04]:='Este Logototipo é Utilizado no Relatório de '
             +' Duplicatas Impresso na Vertical com a Razão '
             +'Social da Empresa';
mNomLog[05] :='IMAGEM20';
mDesclog[05]:='Este Logototipo é Utilizado Como Tela de Fundo'
             +' do Menu Principal(triview) - (fundo de tela) ';
mNomLog[06] :='CABREL';
mDesclog[06]:='Este Logototipo é Utilizado Como Cabeçalho de'
             +' Relatórios Diversos ';

mNomLog[07] :='LOGO_ORCAM';
mDesclog[07]:='Este Logototipo é Utilizado Como Cabeçalho do'
             +' Orçamento de Mercadorias ';

mNomLog[08] :='LOGO_PF';
mDesclog[08]:='Este Logototipo é Utilizado Como Plano de '
             +'fundos para relatorios';
mNomLog[09] :='LOGO_NFE';
mDesclog[09]:='Este Logototipo é Utilizado na NFE - Nota Fiscal Eletronica';

mNomLog[10] :='LOGO_MICROT';
mDesclog[10]:='Este Logototipo é Utilizado na tela do '
             +'Micro Terminal (SGE-FRENTE)';
mNomLog[11] :='LOGO_NFEMD';
mDesclog[11]:='Este Logototipo é Utilizado Como Marca d´agua '
             +'para NFE - Nota Fiscal Eletronica';
mNomLog[12] :='LOGO_ETIQUETA';
mDesclog[12]:='LOGOTIPO USADO PARA IMPRESSAO DE ETIQUETAS COM CODIGO DE BARRAS ';

mNomLog[12] :='LOGO_NFSE_PREF';
mDesclog[12]:='LOGOTIPO DA PREFEITURA UTILIZADO DA EMISSÃO DA NFSE ';

for x:=0 to high(mnomlog) do
   begin
   DM1.Query2.Close;
   DM1.Query2.Sql.Clear;
   DM1.Query2.Sql.add('Select * from CADLOGSIS where LSCHAVE='+chr(39)+mnomlog[x]+chr(39));
   if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
      DM1.Query2.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                         +' or LSCODEMP is null )');

   DM1.Query2.Open;
   if DM1.Query2.Eof then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.Params.CreateParam(ftString,'LSCHAVE',ptInput);
      DM1.Query1.Params.CreateParam(ftString,'LSDESCRICAO',ptInput);
      DM1.Query1.Params.CreateParam(ftString,'LSCODEMP',ptInput);
      DM1.Query1.SQL.add('Insert into CADLOGSIS (');
      DM1.Query1.SQL.add(' LSCHAVE ');
      DM1.Query1.SQL.add(',LSDESCRICAO ');
      DM1.Query1.SQL.add(',LSCODEMP ');
      DM1.Query1.SQL.add(' ) Values (');
      DM1.Query1.SQL.add(' :LSCHAVE ');
      DM1.Query1.SQL.add(',:LSDESCRICAO ');
      DM1.Query1.SQL.add(',:LSCODEMP ');
      DM1.Query1.SQL.add(' ) ');
      DM1.Query1.ParamByName('LSCHAVE').AsString    :=mnomlog[x];
      DM1.Query1.ParamByName('LSDESCRICAO').AsString:=mDescLog[x];
      DM1.Query1.ParamByName('LSCODEMP').AsFloat    :=iif(codemp>100,codemp-100,codemp);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         fmensagem('Erro ao Atualizar os Logotipos!',0,['0'],0);
         end;
      end;
   end;
{
DM4.Tb_LogoSis.Close;
DM4.Tb_LogoSis.SQL.Clear;
DM4.Tb_LogoSis.Sql.add('Select * from CADLOGSIS ');
if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
   DM4.Tb_LogoSis.Sql.add(' where (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                         +' or LSCODEMP is null )');
DM4.Tb_LogoSis.Sql.Add(' ORDER BY LSCHAVE ');

DM4.Tb_LogoSis.Open;
 }

{
LOGO0 Utilizado na Abertura do Programa (fundo de Tela)
LOGO1 Utilizado na Impressão de Licitaçoes - Logotipo da empresa
LOGO2 Utilizado na Impressão de Orçamentos de Mercadorias
LOGO4 Utilizado na Impressão de Duplicatas Logotipo de cima
LOGO5 Utilizado na Impressão de Duplicatas Logotipo Lateral com Nome da Empresa
IMAGEM20 Utilizado como Fundo de Tela do Frm_Ppal (fundo de Tela)
}
end;

procedure TFrm_Par.Src_LogoSisDataChange(Sender: TObject; Field: TField);
begin

if not (Ado_CadLogLSLOGO.IsNull)  and  (Ado_CadLogLSLOGO.Value<>'') then
   begin
   Ado_CadLogLSLOGO.SaveToFile('C:\SGE\LOGSIS.JPG');
   opd1.FileName:='C:\SGE\LOGSIS.JPG';
   logosis.Picture.LoadFromFile(Opd1.FileName);
   end
else
   logosis.Picture:=nil;
end;

procedure TFrm_Par.bbExcImagemClick(Sender: TObject);
begin
logosis.Picture:=nil;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
//Ado_CadLog.Params.CreateParam(ftString,'CHAVE',ptinput);
ADOQuery1.SQL.Add('Update CADLOGSIS set LSLOGO=null,LSCODEMP=:LSCODEMP ');
ADOQuery1.SQL.Add(' where LSCHAVE=:CHAVE');
if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
   ADOQuery1.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                   +' or LSCODEMP is null )');
ADOQuery1.Parameters.ParamByName('CHAVE').Value:=Ado_CadLogLSCHAVE.Value;
ADOQuery1.Parameters.ParamByName('LSCODEMP').Value:=iif(codemp>100,codemp-100,codemp);
try
   ADOQuery1.ExecSQL;
   fdm1StartCommit;
except
   fmensagem('Erro ao Atualizar o Logotipo!',0,['0'],0);
   end;
//DM4.Tb_LogoSisLSCODEMP.AsFloat:=iif(codemp>100,codemp-100,codemp);
//DM4.Tb_LogoSis.Post;
Ado_CadLog.Close;
Ado_CadLog.SQL.Clear;
Ado_CadLog.Sql.add('Select * from CADLOGSIS ');
if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
   Ado_CadLog.Sql.add(' where (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                         +' or LSCODEMP is null )');
Ado_CadLog.Sql.add('  ORDER BY LSCHAVE ');


Ado_CadLog.Open;

BBLIMPAR.Click;

end;

procedure TFrm_Par.G_DESPEDClick(Sender: TObject);
begin
fpar01gant(8);
flcadpar01(0,0,'1');
G_DESPED.Enabled:=false;
DM4.Tb_Par01.Edit;
DM4.Tb_Par01PMANDC01.Value:=iif(CB_MDC01.Checked,0,1);
DM4.Tb_Par01PMANDC02.Value:=iif(CB_MDC02.Checked,0,1);
DM4.Tb_Par01PMANDCV.Value :=iif(CB_MVDC.Checked,0,1);
DM4.Tb_Par01PVISDFIN.Value :=iif(CB_VISDFIN.Checked,0,1);
DM4.Tb_Par01PVISCOMI.Value :=iif(CB_VISCOMI.Checked,0,1);
DM4.Tb_Par01PMANDI01.Value:=iif(CB_MDI01.Checked,0,1);
DM4.Tb_Par01PMANDI02.Value:=iif(CB_MDI02.Checked,0,1);
DM4.Tb_Par01PMANDI03.Value:=iif(CB_MDI03.Checked,0,1);
DM4.Tb_Par01PMANDIV.Value :=iif(CB_MDIV.Checked,0,1);
flparger(0,0,'1');
DM1.Tb_Parger.Edit;
DM1.Tb_PargerPTIPOVALDES.Value    :=iif(Frm_Par.CB_TIPOVALDES.Checked,1,0);
DM1.Tb_Parger.Post;
DM4.Tb_Par01.Post;



end;

procedure TFrm_Par.G_CREDCLIClick(Sender: TObject);
begin
fpar01gant(8);
flparger(0,0,'1');
G_CREDCLI.Enabled:=false;
DM1.Tb_Parger.Edit;
DM1.Tb_PargerPPRZCOMP.Value     :=ValFloat(Frm_Par.PRZCOMP.Text);
DM1.Tb_PargerPVERCRE.Value      :=iif(Frm_Par.CB_VERCRE.Checked,1,0);
DM1.Tb_PargerPQTDBLQ.Value      :=ValFloat(Frm_Par.QTDBLQ.Text);
DM1.Tb_PargerPTPBLQ.Value       :=Frm_Par.CB_TPBLQ.ItemIndex;
DM1.Tb_Parger.Post;
flparger02(0,0,'1');
DM4.Tb_ParGer02.Edit;
DM4.Tb_ParGer02PG2QTDDBLQCLISEMCPR.Value:=fSonumero(Frm_Par.QTDDBLQCLISEMCPR.Text);
DM4.Tb_ParGer02.Post;

end;

procedure TFrm_Par.G_RESTDIVClick(Sender: TObject);
begin
fpar01gant(8);
flparger(0,0,'1');
flcadpar01(0,0,'1');
G_RESTDIV.Enabled:=false;
DM1.Tb_Parger.Edit;
DM4.Tb_Par01.Edit;
DM1.Tb_PargerPBLQDEVOL.Value       :=iif(CB_BLQDEVOL.Checked,1,0);
DM4.Tb_Par01PMANTPCO.Value        :=iif(CB_MANTPCO.Checked,0,1);
DM4.Tb_Par01PFATMZ.Value          :=iif(CBFATMZ.Checked,1,0);
DM4.Tb_Par01PFATMZ_LOCMOV.Value   :=iif(CBFATMZ_LOCMOV.Checked,1,0);
DM4.Tb_Par01PGRAPEN.Value         :=iif(CBGRAPEN.Checked,1,0);
DM4.Tb_Par01PFATMZC.Value         :=iif(CBFATMZC.Checked,1,0);
DM4.Tb_Par01PMENPZORC.Value       :=iif(CB_MENPZORC.Checked,1,0);
DM4.Tb_Par01PAVESTMIN.Value       :=iif(CB_AVESTMIN.Checked,1,0);
DM4.Tb_Par01PVISA.Value           :=iif(CB_VISA.Checked,1,0);
DM4.Tb_Par01PANVISA.Value         :=iif(CB_ANVISA.Checked,1,0);
DM1.Tb_PargerPVENDCLI.Value       :=iif(Frm_Par.CB_VENDCLI.Checked,1,0);

DM1.Tb_Parger.Post;
DM4.Tb_Par01.Post;

end;

procedure TFrm_Par.G_INSTRClick(Sender: TObject);
begin
fpar01gant(8);
flparger(0,0,'1');
flcadpar01(0,0,'1');
G_INSTR.Enabled:=false;
DM1.Tb_Parger.Edit;
DM4.Tb_Par01.Edit;
DM1.Tb_PargerPACREGER.Value          :=ValFloat(Frm_Par.ACREGER.Text);
DM1.Tb_PargerPDESCEXTRA_PEDRET.Value :=ValFloat(Frm_Par.DESCEXTRA_PEDRET.Text);
DM1.Tb_PargerPACREMPEXTRA.Value      :=ValFloat(Frm_Par.ACREMPEXTRA.Text);

Frm_Par.ACREMPEXTRA.Text     :=FormatFloat(mcasas, DM1.Tb_PargerPACREMPEXTRA.Value);

DM1.Tb_PargerPTITAGER.Value     :=TITAGER.Text;
DM4.Tb_Par01PDESCMP0.Value      := valfloat(Frm_Par.DESCMP0.Text);
DM4.Tb_Par01PDESCMP1.Value      := valfloat(Frm_Par.DESCMP1.Text);
DM4.Tb_Par01PVALFRE.Value       :=ValFloat(VALFRE.Text);
DM4.Tb_Par01PINCTB.Value        :=RG_INCTB.ItemIndex;
DM1.Tb_PargerPLEITORPED.Value   :=iif(CB_LEITORPED.Checked,1,0);
DM4.Tb_Par01PLOCPEDGRAV.Value   :=iif(CB_LOCPEDGRAV.Checked,1,0);
DM4.Tb_Par01PMAXREC.Value       :=Frm_Par.PMAXREC.Text;
DM4.Tb_par01.Post;
DM1.Tb_Parger.Post;
pp_locpedgrav:=DM4.Tb_Par01PLOCPEDGRAV.AsInteger;







end;

procedure TFrm_Par.G_GRAVPEDClick(Sender: TObject);
begin
Self.Perform(WM_NEXTDLGCTL,0,0);

fpar01gant(8);
flparger(0,0,'1');
flcadpar01(0,0,'1');
G_GRAVPED.Enabled:=false;
DM1.Tb_Parger.Edit;
DM4.Tb_Par01.Edit;
DM4.Tb_Par01PORDGPED.Value      :=CB_ORDGPED.ItemIndex;
DM1.Tb_pargerPCALCPPRO.Value    :=CB_CALCPPRO.ItemIndex;
DM1.Tb_PargerPQTDCASARRED.Value :=CB_QTDCASARRED.ItemIndex;
DM1.Tb_PargerPPERCPLCX.Value    :=ValFloat(Frm_Par.PERCPLCAIXA.Text);
DM1.Tb_PargerPPERCPLPCT.Value   :=ValFloat(Frm_Par.PERCPLPCT.Text);
DM1.Tb_PargerPPERCPLFARDO.Value :=ValFloat(Frm_Par.PERCPLFARDO.Text);
DM1.Tb_PargerPPERCPL.Value      :=ValFloat(Frm_Par.PERCPL.Text);
DM1.Tb_PargerPCODPROPADFAT.Value:=CB_CODPROPADFAT.ItemIndex;
DM1.Tb_PargerPCOMISVENDA.Value  :=iif(CB_COMISS_VENDA.Checked,1,0);
DM4.Tb_par01.Post;
DM1.Tb_Parger.Post;
fDeletaPadroes(-5,'_PAR','_INCPESO_CAIXA');
if valfloat(edt_incpeso_caixa.Text)<>0 then
  fGravaPadroes(-5,'_INCPESO_CAIXA'    ,'text'   ,'_PAR',edt_incpeso_caixa.Text);


end;

procedure TFrm_Par.G_SOBECFClick(Sender: TObject);
begin
fpar01gant(8);
flparger(0,0,'1');
flcadpar01(0,0,'1');
G_SOBECF.Enabled:=false;
DM1.Tb_Parger.Edit;
DM4.Tb_Par01.Edit;
DM1.Tb_PargerPDIASORCAT.Value:=fsonumero(DIASORCAT.Text);
DM4.Tb_Par01PCAIXASECF.Value:=iif(CB_CAIXASECF.Checked,1,0);
DM1.Tb_PargerPFRENTE_VDANOR.Value:=(iif(CB_FRENTE_VDANOR.Checked,1,0));
DM1.Tb_PargerPCADPRO_VDAFRENTE.Value:=(iif(CB_CADPRO_VDAFRENTE.Checked,1,0));
DM1.Tb_PargerPLSEPCUPOM.Value  :=RG_LSEPCUPOM.ItemIndex;
DM4.Tb_par01.Post;
DM1.Tb_Parger.Post;



end;

procedure TFrm_Par.G_DESCPFClick(Sender: TObject);
begin
fpar01gant(8);
flparger(0,0,'1');
flcadpar01(0,0,'1');
G_DESCPF.Enabled:=false;
DM1.Tb_Parger.Edit;
DM4.Tb_Par01.Edit;
DM4.Tb_Par01PPFDC01.Value :=iif(CB_PFDC01.Checked,0,1);
DM4.Tb_Par01PPFDC02.Value :=iif(CB_PFDC02.Checked,0,1);
DM4.Tb_Par01PPFDVLR.Value :=iif(CB_PFDCVLR.Checked,0,1);
DM4.Tb_Par01PATUACUS.Value:=CB_ATUACUS.ItemIndex;
DM4.Tb_Par01PPFDI01.Value :=iif(CB_PFDI01.Checked,0,1);
DM4.Tb_Par01PPFDI02.Value :=iif(CB_PFDI02.Checked,0,1);
DM4.Tb_Par01PPFDI03.Value :=iif(CB_PFDI03.Checked,0,1);
DM4.Tb_Par01PPFDIVLR.Value:=iif(CB_PFDIVLR.Checked,0,1);
DM1.Tb_PargerPLEITORPF.Value  :=iif(CB_LEITORPF.Checked,1,0);
DM4.Tb_par01.Post;
DM1.Tb_Parger.Post;

end;

procedure TFrm_Par.G_RELCLIClick(Sender: TObject);
begin
fpar01gant(8);
flcadpar01(0,0,'1');
G_RELCLI.Enabled:=false;
DM1.Tb_Parger.Edit;
DM1.Tb_PargerPCRITCNPJ.Value    :=iif(CB_CRITCNPJ.Checked,1,0);
DM1.Tb_PargerPCRITIE.Value      :=iif(CB_CRITIE.Checked,1,0);
DM1.Tb_PargerPDUPCNPJ.Value     :=RG_DUPCNPJ.ItemIndex;
DM1.Tb_PargerPBLOQCNPJ.Value    :=iif(CB_BLOQCNPJ.Checked,1,0);
DM1.Tb_PargerPBLOQCEP.Value     :=iif(CB_BLOQCEP.Checked,1,0);
DM1.Tb_Parger.Post;


end;

procedure TFrm_Par.G_RELPROClick(Sender: TObject);
begin
fpar01gant(8);
flparger(0,0,'1');
flcadpar01(0,0,'1');
G_RELPRO.Enabled:=false;
DM1.Tb_Parger.Edit;
DM1.Tb_PargerPQTDDIAV.Value    :=fsonumero(QTDDIAV.Text);
DM1.Tb_PargerPCONSPROPAD.Value :=CB_CONSPROPAD.ItemIndex;
DM1.Tb_PargerPPROMCADPRO.Value :=iif(CB_PROMCADPRO.Checked,1,0);
DM1.Tb_PargerPORDEMCADPRO.Value:=cb_ordem_pro.ItemIndex;
DM1.Tb_Parger.Post;

end;

procedure TFrm_Par.G_SISTEMAClick(Sender: TObject);
begin
fpar01gant(8);
flparger(0,0,'1');
flcadpar01(0,0,'1');
G_SISTEMA.Enabled:=false;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.Sql.add('Update PARGER set EMPPRE=0'+fdeixanum2(frm_par.EMPPRE.Text)
                  +', PTAMJPGTAM=0'+fdeixanum2(frm_par.JPGTAM.Text)
                  +', PTAMJPGALT=0'+fdeixanum2(frm_par.JPGALT.Text));
try
   DM1.query1.ExecSQL;
   fdm1StartCommit;
except
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.Sql.add('Update PARGER02 set PG2SEGLOGOFF=0'+fdeixanum2(frm_par.SEGLOGOFF.Text));
try
   DM1.query1.ExecSQL;
   fdm1StartCommit;
except
   end;
flparger(0,0,'1');
flcadpar01(0,0,'1');
flparger02(0,0,'1');

end;

procedure TFrm_Par.G_DIVERSOSClick(Sender: TObject);
begin
fpar01gant(8);
flparger(0,0,'1');
flcadpar01(0,0,'1');
G_DIVERSOS.Enabled:=false;
DM1.Tb_Parger.Edit;
DM4.Tb_Par01.Edit;
DM4.Tb_Par01PMANNOCR.Value  :=iif(CB_MANNOCR.Checked,1,0);
DM1.Tb_PargerPLEITORAJU.Value :=iif(CB_LEITORAJU.Checked,1,0);
DM4.Tb_par01.Post;
DM1.Tb_Parger.Post;

end;

procedure TFrm_Par.G_DESCJURClick(Sender: TObject);
begin
fpar01gant(8);
flparger(0,0,'1');
flcadpar01(0,0,'1');
G_DESCJUR.Enabled:=false;
DM1.Tb_Parger.Edit;
DM4.Tb_Par01.Edit;
DM4.Tb_Par01PJURM.Value     := valfloat(Frm_Par.JURM.Text);
DM4.Tb_Par01PDESCM.Value    := valfloat(Frm_Par.DESCM.Text);
DM4.Tb_Par01PMULTA.Value    := valfloat(Frm_Par.MULTA.Text);
DM4.Tb_Par01PQTDDM.Value    := FSoNumero(Frm_Par.QTDDM.Text);
DM1.Tb_PargerPTIPOEXT.Value :=Frm_Par.RG_TIPOEXT.ItemIndex;
DM4.Tb_par01.Post;
DM1.Tb_Parger.Post;


end;

procedure TFrm_Par.G_CAIXAClick(Sender: TObject);
begin
fpar01gant(8);
flparger(0,0,'1');
flcadpar01(0,0,'1');
G_CAIXA.Enabled:=false;
DM1.Tb_Parger.Edit;
DM4.Tb_Par01.Edit;
DM1.Tb_PargerPMANDATCXBX.Value  :=iif(CB_MANDATCXBX.Checked,1,0);
DM4.Tb_Par01PCXAUTO.Value       :=iif(CB_CXAUTO.Checked,0,1);
DM4.Tb_Par01PCBLOQAUTO.Value    :=diabloq.Value;
DM1.Tb_PargerPCRDOC.Value       :=RG_CRDOC.ItemIndex;
DM1.Tb_PargerPCRDOCSIG.Value    :=CRDOCSIG.Text;
DM4.Tb_par01.Post;
DM1.Tb_Parger.Post;


end;

procedure TFrm_Par.G_CORESClick(Sender: TObject);
begin
fpar01gant(8);
flparger(0,0,'1');
G_CORES.Enabled:=false;
DM1.Tb_Parger.Edit;
DM1.Tb_PargerPFCORP_MPR.Value          :=lbl_prod00.Font.Color;  //Mercadoria Revenda
DM1.Tb_PargerPFCORP_MP.Value           :=lbl_prod01.Font.Color;  //Materia - Prima
DM1.Tb_PargerPFCORP_EM.Value           :=lbl_prod02.Font.Color;  //Embalagem
DM1.Tb_PargerPFCORP_PP.Value           :=lbl_prod03.Font.Color;  //Produto Processo
DM1.Tb_PargerPFCORP_ACAB.Value         :=lbl_prod04.Font.Color;  //Produto Acabado
DM1.Tb_PargerPFCORP_SBP.Value          :=lbl_prod05.Font.Color;  //SubProduto
DM1.Tb_PargerPFCORP_PI.Value           :=lbl_prod06.Font.Color;  //Produto Intermediario
DM1.Tb_PargerPFCORP_MUC.Value          :=lbl_prod07.Font.Color;  //Material Uso e Consumo
DM1.Tb_PargerPFCORP_AI.Value           :=lbl_prod08.Font.Color;  //Ativo Imobilizado
DM1.Tb_PargerPFCORP_SERV.Value         :=lbl_prod09.Font.Color;  //Serviço
DM1.Tb_PargerPFCORP_ISUM.Value         :=lbl_prod10.Font.Color;  //Outros Insumos
DM1.Tb_PargerPFCORP_OUT.Value          :=lbl_prod99.Font.Color;  //Outras

DM1.Tb_PargerPFCORP_VENC.Value         :=lbl_ProdVenc.Font.Color;
DM1.Tb_PargerPFCORP_BLOQ.Value         :=lbl_ProdBloq.Font.Color;
DM1.Tb_PargerPFRBMS_VENC.Value         :=lbl_rbms_venc.Font.Color;
DM1.Tb_PargerPFCORP_ESTMIN_GER.Value   :=lbl_EstMin_Ger.Color;
DM1.Tb_PargerPFCORP_SEMMOV.Value       :=lbl_prod_semmov_1.Font.Color;
DM1.Tb_PargerPFDIAS_SEMMOV.AsInteger   :=ValInt(edt_SemMov.Text);



DM1.Tb_Parger.Post;

end;

procedure TFrm_Par.G_MUDAEMPClick(Sender: TObject);
begin
fpar01gant(8);
flparger(0,0,'1');
G_MUDAEMP.Enabled:=false;
DM1.Tb_Parger.Edit;
DM1.Tb_PargerPME_TECLA01.Value:=ValInt(Frm_Par.mecod01.Caption);
DM1.Tb_PargerPME_TECLA02.Value:=ValInt(Frm_Par.mecod02.Caption);
DM1.Tb_PargerPME_TECLA03.Value:=ValInt(Frm_Par.mecod03.Caption);
DM1.Tb_PargerPME_TECLA04.Value:=ValInt(Frm_Par.mecod04.Caption);
DM1.Tb_Parger.Post;
fAtualizaAtalho(0);

end;

procedure TFrm_Par.G_COMEMPClick(Sender: TObject);
begin
fpar01gant(8);
flparger(0,0,'1');
G_MUDAEMP.Enabled:=false;
DM1.Tb_Parger.Edit;
DM1.Tb_PargerPCE_TECLA01.Value:=ValInt(Frm_Par.cecod01.Caption);
DM1.Tb_PargerPCE_TECLA02.Value:=ValInt(Frm_Par.cecod02.Caption);
DM1.Tb_PargerPCE_TECLA03.Value:=ValInt(Frm_Par.cecod03.Caption);
DM1.Tb_PargerPCE_TECLA04.Value:=ValInt(Frm_Par.cecod04.Caption);
DM1.Tb_Parger.Post;
fAtualizaAtalho(0);

end;

procedure TFrm_Par.CB_MDIVClick(Sender: TObject);
begin
if par_ori<>'consulta' then
   G_DESPED.Enabled:=true;

end;

procedure TFrm_Par.CB_VERCREClick(Sender: TObject);
begin
if par_ori<>'consulta' then
   G_CREDCLI.Enabled:=true;

end;

procedure TFrm_Par.QTDBLQChange(Sender: TObject);
begin
if (QTDBLQ.Modified) and  (par_ori<>'consulta') then
   G_CREDCLI.Enabled:=true;

end;

procedure TFrm_Par.PRZCOMPChange(Sender: TObject);
begin
if (PRZCOMP.Modified) and  (par_ori<>'consulta') then
   G_CREDCLI.Enabled:=true;

end;

procedure TFrm_Par.CB_BLQDEVOLClick(Sender: TObject);
begin
if par_ori<>'consulta' then
   G_RESTDIV.Enabled:=true;
end;

procedure TFrm_Par.CB_INCTBClick(Sender: TObject);
begin
if par_ori<>'consulta' then
   G_INSTR.Enabled:=true;

end;

procedure TFrm_Par.ACREGERChange(Sender: TObject);
begin
if (ACREGER.Modified) and  (par_ori<>'consulta') then
   G_INSTR.Enabled:=true;

end;

procedure TFrm_Par.VALFREChange(Sender: TObject);
begin
if (VALFRE.Modified) and  (par_ori<>'consulta') then
   G_INSTR.Enabled:=true;

end;

procedure TFrm_Par.TITAGERChange(Sender: TObject);
begin
if (TITAGER.Modified) and  (par_ori<>'consulta') then
   G_INSTR.Enabled:=true;

end;

procedure TFrm_Par.PMAXRECChange(Sender: TObject);
begin
if (PMAXREC.Modified) and  (par_ori<>'consulta') then
   G_INSTR.Enabled:=true;

end;

procedure TFrm_Par.DIASORCATChange(Sender: TObject);
begin
if (DIASORCAT.Modified) and  (par_ori<>'consulta') then
   G_SOBECF.Enabled:=true;

end;

procedure TFrm_Par.CB_CAIXASECFClick(Sender: TObject);
begin
if (par_ori<>'consulta') then
   G_SOBECF.Enabled:=true;

end;

procedure TFrm_Par.CB_ORDGPEDExit(Sender: TObject);
begin
if CB_ORDGPED.ItemIndex<0 then
   with CB_ORDGPED do ItemIndex:=Items.IndexOf(CB_ORDGPED.Text);
CB_ORDGPED.text:=CB_ORDGPED.Items.Strings[CB_ORDGPED.ItemIndex];

end;

procedure TFrm_Par.CB_CODPROPADFATExit(Sender: TObject);
begin
if CB_CODPROPADFAT.ItemIndex<0 then
   with CB_CODPROPADFAT do ItemIndex:=Items.IndexOf(CB_CODPROPADFAT.Text);
CB_CODPROPADFAT.text:=CB_CODPROPADFAT.Items.Strings[CB_CODPROPADFAT.ItemIndex];

end;

procedure TFrm_Par.CB_CALCPPROExit(Sender: TObject);
begin
if CB_CALCPPRO.ItemIndex<0 then
   with CB_CALCPPRO do ItemIndex:=Items.IndexOf(CB_CALCPPRO.Text);
CB_CALCPPRO.text:=CB_CALCPPRO.Items.Strings[CB_CALCPPRO.ItemIndex];
end;

procedure TFrm_Par.CB_ORDGPEDClick(Sender: TObject);
begin
if (par_ori<>'consulta') then
   G_GRAVPED.Enabled:=true;

end;

procedure TFrm_Par.CB_CODPROPADFATClick(Sender: TObject);
begin
if (par_ori<>'consulta') then
   G_GRAVPED.Enabled:=true;

end;

procedure TFrm_Par.CB_PFDC01Click(Sender: TObject);
begin
if par_ori<>'consulta' then
   G_DESCPF.Enabled:=true;

end;

procedure TFrm_Par.CB_CRITCNPJClick(Sender: TObject);
begin
if par_ori<>'consulta' then
   G_RELCLI.Enabled:=true;

end;

procedure TFrm_Par.CB_CONSPROPADClick(Sender: TObject);
begin
if par_ori<>'consulta' then
   G_RELPRO.Enabled:=true;

end;

procedure TFrm_Par.QTDDIAVChange(Sender: TObject);
begin
if (QTDDIAV.Modified) and  (par_ori<>'consulta') then
   G_RELPRO.Enabled:=true;

end;

procedure TFrm_Par.EMPPREChange(Sender: TObject);
begin
if (EMPPRE.Modified) and  (par_ori<>'consulta') then
   G_SISTEMA.Enabled:=true;

end;

procedure TFrm_Par.JPGTAMChange(Sender: TObject);
begin
if (JPGTAM.Modified) and  (par_ori<>'consulta') then
   G_SISTEMA.Enabled:=true;

end;

procedure TFrm_Par.JPGALTChange(Sender: TObject);
begin
if (JPGALT.Modified) and  (par_ori<>'consulta') then
   G_SISTEMA.Enabled:=true;

end;

procedure TFrm_Par.CB_MANNOCRClick(Sender: TObject);
begin
if par_ori<>'consulta' then
   G_DIVERSOS.Enabled:=true;

end;

procedure TFrm_Par.RG_TIPOEXTClick(Sender: TObject);
begin
if par_ori<>'consulta' then
   G_DESCJUR.Enabled:=true;

end;

procedure TFrm_Par.metecla01Change(Sender: TObject);
begin
if (metecla01.Modified) and  (par_ori<>'consulta') then
   G_MUDAEMP.Enabled:=true;

end;

procedure TFrm_Par.metecla02Change(Sender: TObject);
begin
if (metecla02.Modified) and  (par_ori<>'consulta') then
   G_MUDAEMP.Enabled:=true;

end;

procedure TFrm_Par.metecla03Change(Sender: TObject);
begin
if (metecla03.Modified) and  (par_ori<>'consulta') then
   G_MUDAEMP.Enabled:=true;

end;

procedure TFrm_Par.metecla04Change(Sender: TObject);
begin
if (metecla04.Modified) and  (par_ori<>'consulta') then
   G_MUDAEMP.Enabled:=true;

end;

procedure TFrm_Par.cetecla01Change(Sender: TObject);
begin
if (cetecla01.Modified) and  (par_ori<>'consulta') then
   G_COMEMP.Enabled:=true;

end;

procedure TFrm_Par.cetecla02Change(Sender: TObject);
begin
if (cetecla02.Modified) and  (par_ori<>'consulta') then
   G_COMEMP.Enabled:=true;

end;

procedure TFrm_Par.cetecla03Change(Sender: TObject);
begin
if (cetecla03.Modified) and  (par_ori<>'consulta') then
   G_COMEMP.Enabled:=true;

end;

procedure TFrm_Par.cetecla04Change(Sender: TObject);
begin
if (cetecla04.Modified) and  (par_ori<>'consulta') then
   G_COMEMP.Enabled:=true;

end;


procedure TFrm_Par.G_LOGUSRVENDClick(Sender: TObject);
begin
G_LOGUSRVEND.Enabled:=false;
DM1.Tb_ParFon.Close;
DM1.Tb_ParFon.SQL.Clear;
DM1.Tb_Parfon.SQL.Add('Select * from PARFON where '
                  +iif(DM1.Qr_tid.locate('TINOME','PARFON',[]),'',' PFCODEMP=0'+IntTostr(codemp)+' and ')
                     +' PFNOMTER='+chr(39)+'TODOS'+chr(39)
                     +' and PFNOMFOR='+chr(39)+'LOGINVEND'+chr(39)
                     +' and PFNOMCOM='+chr(39)+'VEND'+chr(39));
DM1.Tb_ParFon.Open;
if DM1.Tb_Parfon.Eof then
   begin
   DM1.Tb_ParFon.Append;
   DM1.Tb_ParFonPFCODEMP.Value:=codemp;
   DM1.Tb_ParFonPFNOMTER.Value:='TODOS';
   DM1.Tb_ParFonPFNOMFOR.Value:='LOGINVEND';
   DM1.Tb_ParFonPFCORFON.Value:=MENS.Font.Color;
   DM1.Tb_ParFonPFNOMCOM.Value:='VEND';
   DM1.Tb_ParFonPFMENS.Value  :=DM1.Tb_EmpRAZAO.Value;
   DM1.Tb_ParFonPFMTIPO.Value :=0;
   DM1.Tb_ParFon.Post;
   end;
DM1.Tb_Parfon.Edit;
DM1.Tb_ParFonPFCORFON.Value:=MENS.Font.Color;
DM1.Tb_ParFonPFMENS.Value := MENS.Text;
DM1.Tb_ParFonPFMTIPO.Value:= RG_MTIPO.ItemIndex;
DM1.tb_ParFon.Post;

fmensagem('Registro Gravado!',0,['0'],0);

end;

procedure TFrm_Par.RG_MTIPOClick(Sender: TObject);
begin
if not G_LOGUSRVEND.Enabled then
   G_LOGUSRVEND.Enabled:=true;
end;

procedure TFrm_Par.MENSChange(Sender: TObject);
begin
if not G_LOGUSRVEND.Enabled then
   G_LOGUSRVEND.Enabled:=true;

end;

procedure TFrm_Par.bbCorFonteLogUsrClick(Sender: TObject);
begin
if (par_ori<>'consulta') then
   G_LOGUSRVEND.Enabled:=true;

If ColorDialog1.Execute then
   MENS.Font.Color:=ColorDialog1.Color;

end;

procedure TFrm_Par.MENSExit(Sender: TObject);
begin
if length(MENS.Text)>50 then
   MENS.Text:=copy(MENS.Text,1,50);
end;

procedure TFrm_Par.DESCEXTRA_PEDRETExit(Sender: TObject);
begin
DESCEXTRA_PEDRET.Text:=FormatFloat(mcasas, valfloat(DESCEXTRA_PEDRET.Text));

end;

procedure TFrm_Par.DESCEXTRA_PEDRETChange(Sender: TObject);
begin
if (DESCEXTRA_PEDRET.Modified) and  (par_ori<>'consulta') then
   G_INSTR.Enabled:=true;

end;

procedure TFrm_Par.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if (key=113) and (Par_LDR.State in [dsEdit,dsInsert]) then
   begin
   Par_LDRCODDEP.Value:=fChamaDeptoCX(0,'frm_Par','');
   key:=0;

   end;

end;

procedure TFrm_Par.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=113) and (Par_LDR.State in [dsEdit,dsInsert]) then
   begin
   Par_LDRCODCC.Value:=fChamaCCU(0,'frm_Par','');
   key:=0;
   end;


end;

procedure TFrm_Par.RG_INCTBClick(Sender: TObject);
begin
G_INSTR.Enabled:=true;

end;

procedure TFrm_Par.RG_INCTBExit(Sender: TObject);
begin
with RG_INCTB do ItemIndex:=Items.IndexOf(RG_INCTB.Text);
RG_INCTB.text:=RG_INCTB.Items.Strings[RG_INCTB.ItemIndex];

end;

procedure TFrm_Par.btn_EstminGerClick(Sender: TObject);
begin
if (par_ori<>'consulta') then
   G_CORES.Enabled:=true;

If ColorDialog1.Execute then
   lbl_EstMin_Ger.Color:=ColorDialog1.Color;

end;

procedure TFrm_Par.CBFATMZClick(Sender: TObject);
begin
if par_ori<>'consulta' then
   G_RESTDIV.Enabled:=true;
if CBFATMZ.Checked then
  begin
  CBFATMZ_LOCMOV.Enabled:=false;
  CBFATMZ_LOCMOV.Checked:=false;
  end
else
   CBFATMZ_LOCMOV.Enabled:=true;
end;

procedure TFrm_Par.MENDIPChange(Sender: TObject);
begin
if (MENDIP.Modified) and  (par_ori<>'consulta') then
   G_DM.Enabled:=true;


end;

procedure TFrm_Par.PORTAChange(Sender: TObject);
begin
if (PORTA.Modified) and  (par_ori<>'consulta') then
   G_DM.Enabled:=true;

end;

procedure TFrm_Par.MENDIP_INTERNOChange(Sender: TObject);
begin
if (MENDIP_INTERNO.Modified) and  (par_ori<>'consulta') then
   G_DM.Enabled:=true;

end;

procedure TFrm_Par.G_DMClick(Sender: TObject);
begin
fpar01gant(8);
flparger(0,0,'1');
G_DM.Enabled:=false;
DM1.Tb_Parger.Edit;
DM1.Tb_PargerPDM_ENDIP.AsString        :=Frm_Par.MENDIP.Text;
DM1.Tb_PargerPDM_ENDIP_INTERNO.AsString:=Frm_Par.MENDIP_INTERNO.Text;
DM1.Tb_PargerPDM_PORTA.AsFloat         :=ValFloat(Frm_Par.PORTA.Text);
DM1.Tb_Parger.Post;



end;

procedure TFrm_Par.MENDIPExit(Sender: TObject);
begin
if length(MENDIP.Text)>50 then
   MENDIP.Text:=copy(MENDIP.Text,1,50);
end;

procedure TFrm_Par.MENDIP_INTERNOExit(Sender: TObject);
begin
if length(MENDIP_INTERNO.Text)>50 then
   MENDIP_INTERNO.Text:=copy(MENDIP_INTERNO.Text,1,50);

end;

procedure TFrm_Par.PORTAExit(Sender: TObject);
begin
PORTA.Text:=fdeixanum2(PORTA.Text);
end;

procedure TFrm_Par.CB_ATUACUSClick(Sender: TObject);
begin
if par_ori<>'consulta' then
   G_DESCPF.Enabled:=true;

end;

procedure TFrm_Par.CB_ATUACUSExit(Sender: TObject);
begin
if CB_ATUACUS.ItemIndex<0 then
   with CB_ATUACUS do ItemIndex:=Items.IndexOf(CB_ATUACUS.Text);
CB_ATUACUS.text:=CB_ATUACUS.Items.Strings[CB_ATUACUS.ItemIndex];

end;

procedure TFrm_Par.bbLcd_IncluirClick(Sender: TObject);
begin
DESCLCD.ReadOnly     :=false;
ENDLCD.ReadOnly      :=false;
ORDEMLCD.ReadOnly    :=false;
DESCLCD.TabStop      :=True;
ENDLCD.TabStop       :=true;
ORDEMLCD.TabStop     :=true;
DESCLCD.Text         :='';
ENDLCD.Text          :='';
DM1.Query1.Close;
DM1.query1.sql.Clear;
DM1.query1.sql.Add('Select max(LCD_ORDEM) from PARLCD ');
DM1.Query1.Open;
ORDEMLCD.Text        :=IntTostr(DM1.query1.Fields[0].AsInteger+1);

bbLcd_Incluir.Enabled:=false;
bbLcd_Alterar.Enabled:=false;
bbLcd_Gravar.Enabled :=true;
bbLcd_Excluir.Enabled:=false;
dbg_parlcd.Enabled   :=false;
RG_TIPSERV.ItemIndex :=0;
moper_lcd            :=0;

DESCLCD.SetFocus;



end;

procedure TFrm_Par.bbLcd_AlterarClick(Sender: TObject);
begin
if DM6.Tb_ParLCDLCD_ORDEM.IsNull then
   begin
   fmensagem('Favor Selecionar um Registro Válido!',0,['0'],0);
   exit;
   end;
DESCLCD.ReadOnly     :=false;
ENDLCD.ReadOnly      :=false;
DESCLCD.TabStop      :=True;
ENDLCD.TabStop       :=true;
bbLcd_Incluir.Enabled:=false;
bbLcd_Alterar.Enabled:=false;
bbLcd_Gravar.Enabled :=true;
bbLcd_Excluir.Enabled:=false;
dbg_parlcd.Enabled   :=false;
moper_lcd            :=1;

DESCLCD.SetFocus;

end;

procedure TFrm_Par.bbLcd_GravarClick(Sender: TObject);
var
mLerNovamente: boolean;
begin

mLerNovamente:=false;
DESCLCD.ReadOnly     :=false;
ENDLCD.ReadOnly      :=false;
DESCLCD.TabStop      :=True;
ENDLCD.TabStop       :=true;
bbLcd_Incluir.Enabled:=false;
bbLcd_Alterar.Enabled:=false;
bbLcd_Gravar.Enabled :=true;
bbLcd_Excluir.Enabled:=false;
if ValInt(ORDEMLCD.Text)<=0 then
   ORDEMLCD.Text:='1';
if (moper_lcd=0) or ((moper_lcd=1) and (fsonumero(ORDEMLCD.Text)<>DM6.Tb_ParLCDLCD_ORDEM.AsFloat)) then
   begin
   DM1.Query1.Close;
   DM1.query1.sql.Clear;
   DM1.query1.sql.Add('Select count(*) from PARLCD where LCD_ORDEM=0'+Trim(ORDEMLCD.Text));
   DM1.Query1.Open;
   if DM1.Query1.Fields[0].AsInteger>0 then
      begin
      DM1.Query2.Close;
      DM1.Query2.SQL.clear;
      DM1.Query2.SQL.Add('update PARLCD set LCD_ORDEM=LCD_ORDEM+1 '
                        +' where LCD_ORDEM>=0'+Trim(ORDEMLCD.Text));
      try
         DM1.Query2.ExecSQL;
      except
         end;
      mLerNovamente:=true;
      end;
   end;
if moper_lcd=1 then
   begin
   fParLCDgant(1);

   DM6.Tb_ParLCD.Edit;
   DM6.Tb_ParLCDLCD_CODUSR_ALT.Value   :=codusr;
   DM6.Tb_ParLCDLCD_DATHOR_ALT.AsString:=FormatDatetime('dd/mm/yyyy hh:nn:ss',now);
   end
else
   begin
   DM6.Tb_ParLCD.Append;
   DM6.Tb_ParLCDLCD_CODUSR_INC.Value   :=codusr;
   DM6.Tb_ParLCDLCD_DATHOR_INC.AsString:=FormatDatetime('dd/mm/yyyy hh:nn:ss',now);
   end;
DM6.Tb_ParLCDLCD_DESCLOC.Value   :=EnDeCripta(DESCLCD.Text,mNivel_Criptog);
DM6.Tb_ParLCDLCD_ENDLOC.Value    :=EnDeCripta(ENDLCD.Text,mNivel_Criptog);
DM6.Tb_ParLCDLCD_TIPSERV.AsInteger:=RG_TIPSERV.ItemIndex;

//ShowMessage(EnDeCripta(DM6.Tb_ParLCDLCD_ENDLOC.Value,mNivel_Criptog));

DM6.Tb_ParLCDLCD_ORDEM.Value     :=valfloat(ORDEMLCD.Text);
DM6.Tb_ParLCD.Post;
if mLerNovamente then
   begin
   DM6.Tb_ParLCD.Close;
   DM6.Tb_ParLCD.SQL.clear;
   DM6.Tb_ParLCD.SQL.Add('Select * from PARLCD ');
   DM6.Tb_ParLCD.SQL.Add(' order by LCD_ORDEM ');
   DM6.Tb_ParLCD.Open;
   end;

bbLcd_Cancelar.Click;
end;

procedure TFrm_Par.bbLcd_CancelarClick(Sender: TObject);
begin

DESCLCD.ReadOnly     :=true;
ENDLCD.ReadOnly      :=true;
DESCLCD.TabStop      :=false;
ENDLCD.TabStop       :=false;
bbLcd_Incluir.Enabled:=true;
bbLcd_Alterar.Enabled:=true;
bbLcd_Gravar.Enabled :=false;
bbLcd_Excluir.Enabled:=true;
dbg_parlcd.Enabled   :=true;
end;

procedure TFrm_Par.Src_PARLCDDataChange(Sender: TObject; Field: TField);
begin
if (not bbLcd_Gravar.Enabled) and (valfloat(ORDEMLCD.Text)<>DM6.Tb_ParLCDLCD_ORDEM.AsFloat) then
   begin
   DESCLCD.Text :=DM6.Tb_ParLCDdescloc.AsString;
   ENDLCD.Text  :=DM6.Tb_ParLCDendloc.AsString;
   ORDEMLCD.Text:=DM6.Tb_ParLCDLCD_ORDEM.AsString;
   RG_TIPSERV.ItemIndex:=DM6.Tb_ParLCDLCD_TIPSERV.AsInteger;
   end;
end;

procedure TFrm_Par.ORDEMLCDExit(Sender: TObject);
begin
ORDEMLCD.Text:=fdeixanum(ORDEMLCD.Text);
if fsonumero(ORDEMLCD.Text)>999 then
   ORDEMLCD.Text:='1';
end;

procedure TFrm_Par.DESCLCDExit(Sender: TObject);
begin
if Length(DESCLCD.Text)>100 then
   DESCLCD.Text:=copy(DESCLCD.Text,1,100);
end;

procedure TFrm_Par.ENDLCDExit(Sender: TObject);
begin
if Length(ENDLCD.Text)>200 then
   ENDLCD.Text:=copy(ENDLCD.Text,1,200);

end;

procedure TFrm_Par.bbLcd_ExcluirClick(Sender: TObject);
begin
if DM6.Tb_ParLCDLCD_ORDEM.IsNull then
   begin
   fmensagem('Favor Selecionar um Registro Válido!',0,['0'],0);
   exit;
   end;
if fmensagem('Quer Realmente Excluir o Registro Selecionado?',0,['1','2'],2)=mrYes then
   begin
   fParLCDgant(9);
   DM6.Tb_ParLCD.Delete;
   bbLcd_Cancelar.Click;
   end;
end;


function fParLCDgant(ptipo: Integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(LCD_CODNOV) from OLD_PARLCD');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields[0].AsInteger+1;
minstru:='Insert into OLD_PARLCD(';
v:='';
for x:=0 to DM6.Tb_ParLCD.FieldCount-1 do
   begin
   if DM6.Tb_ParLCD.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM6.Tb_ParLCD.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',LCD_CODNOV';
minstru:=minstru+',LCD_TIPEVE';
minstru:=minstru+',LCD_CODUSR_EVE';
minstru:=minstru+',LCD_DATHOR_EVE';
minstru:=minstru+') Select ';
v:='';
for x:=0 to DM6.Tb_ParLCD.FieldCount-1 do
   begin
   if DM6.Tb_ParLCD.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM6.Tb_ParLCD.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as LCD_CODNOV ';
minstru:=minstru+v+FormatFloat('0000000000',ptipo)+' as LCD_TIPEVE ';
minstru:=minstru+v+FormatFloat('0000000000',codusr)+' as LCD_CODUSR ';
minstru:=minstru+',:LCD_DATHOR_EVE';




minstru:=minstru+' from PARLCD where LCD_ORDEM=0'+DM6.Tb_ParLCDLCD_ORDEM.AsString;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.Params.CreateParam(ftString,'LCD_DATHOR_EVE',ptInput);

DM1.Query1.SQL.add(minstru);
DM1.Query1.ParamByName('LCD_DATHOR_EVE').AsDateTime:=Now;

Try
   DM1.Query1.ExecSQL;
except
   fmensagem('Erro ao Fazer o Backup da Alteracao AC05518. Contactar Suporte',0,['0'],0);
   DM1.Query1.sql.savetofile('c:\sql.txt');

   end;
fdm1startcommit;

result:=True;


end;


procedure TFrm_Par.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Par.ACREMPEXTRAExit(Sender: TObject);
begin
ACREMPEXTRA.Text:=FormatFloat(mcasas, valfloat(ACREMPEXTRA.Text));

end;

procedure TFrm_Par.ACREMPEXTRAChange(Sender: TObject);
begin
if (ACREMPEXTRA.Modified) and  (par_ori<>'consulta') then
   G_INSTR.Enabled:=true;

end;

procedure TFrm_Par.QTDDBLQCLISEMCPRChange(Sender: TObject);
begin
if (QTDDBLQCLISEMCPR.Modified) and  (par_ori<>'consulta') then
   G_CREDCLI.Enabled:=true;

end;

procedure TFrm_Par.QTDDBLQCLISEMCPRExit(Sender: TObject);
begin
QTDDBLQCLISEMCPR.Text:=FloatToStr(fsonumero(QTDDBLQCLISEMCPR.Text));
if ValFloat(QTDDBLQCLISEMCPR.Text)>1000 then
   begin
   fmensagem('Número Invalido!',0,['0'],0);
   QTDDBLQCLISEMCPR.SetFocus;
   end;

end;

procedure TFrm_Par.CB_TPBLQExit(Sender: TObject);
begin
if CB_TPBLQ.ItemIndex<0 then
   with CB_TPBLQ do ItemIndex:=Items.IndexOf(CB_TPBLQ.Text);
CB_TPBLQ.text:=CB_TPBLQ.Items.Strings[CB_TPBLQ.ItemIndex];

end;

procedure TFrm_Par.CB_TPBLQClick(Sender: TObject);
begin
if (par_ori<>'consulta') then
   G_CREDCLI.Enabled:=true;

end;

procedure TFrm_Par.SEGLOGOFFChange(Sender: TObject);
begin
if (SEGLOGOFF.Modified) and  (par_ori<>'consulta') then
   G_SISTEMA.Enabled:=true;

end;

procedure TFrm_Par.SEGLOGOFFExit(Sender: TObject);
begin
SEGLOGOFF.Text:=fdeixanum(SEGLOGOFF.Text);
if ValFloat(SEGLOGOFF.Text)>99999999 then
   begin
   fmensagem('Quantidade de Segundos Inválido!',0,['0'],0);
   SEGLOGOFF.SetFocus;
   end;

end;

procedure TFrm_Par.PACREDICMSExit(Sender: TObject);
begin
if valfloat(PACREDICMS.Text)<0 then
   PACREDICMS.Text:='0';
PACREDICMS.Text:=FormatFloat(mcasas, ValFloat(PACREDICMS.Text));

end;

procedure TFrm_Par.PACREDICMSChange(Sender: TObject);
begin
if (PACREDICMS.Modified) and  (par_ori<>'consulta') then
   G_OUTDADNF.Enabled:=true;

end;

procedure TFrm_Par.PACREDICMSKeyPress(Sender: TObject; var Key: Char);
begin
If Key in ['.',','] then Key:=DecimalSeparator
else If (Key<>#8) and not (Key in ['0'..'9']) then Key:=#0;

end;

procedure TFrm_Par.btn_prod07Click(Sender: TObject);
begin
if (par_ori<>'consulta') then
   G_CORES.Enabled:=true;

If ColorDialog1.Execute then
   lbl_prod07.Font.Color:=ColorDialog1.Color;

end;

procedure TFrm_Par.btn_prod08Click(Sender: TObject);
begin
if (par_ori<>'consulta') then
   G_CORES.Enabled:=true;

If ColorDialog1.Execute then
   lbl_prod08.Font.Color:=ColorDialog1.Color;

end;

procedure TFrm_Par.btn_prod09Click(Sender: TObject);
begin
if (par_ori<>'consulta') then
   G_CORES.Enabled:=true;

If ColorDialog1.Execute then
   lbl_prod09.Font.Color:=ColorDialog1.Color;

end;

procedure TFrm_Par.btn_prod10Click(Sender: TObject);
begin
if (par_ori<>'consulta') then
   G_CORES.Enabled:=true;

If ColorDialog1.Execute then
   lbl_prod10.Font.Color:=ColorDialog1.Color;

end;

procedure TFrm_Par.btn_prod99Click(Sender: TObject);
begin
if (par_ori<>'consulta') then
   G_CORES.Enabled:=true;

If ColorDialog1.Execute then
   lbl_prod99.Font.Color:=ColorDialog1.Color;

end;

procedure TFrm_Par.CB_BLOQAUTOClick(Sender: TObject);
begin
if par_ori<>'consulta' then
   G_CAIXA.Enabled:=true;

end;

procedure TFrm_Par.DBEdit3Exit(Sender: TObject);
begin
if not flqr2('DNOME','D','CADDEP','C','DCODDEP',Par_LDRCODDEP.Value) then
  begin
  verteclado(1);
  fmensagem('Departamento não cadastrado!',0,['0'],0);
  DBEdit3.SetFocus;
  end
else
  begin
  Par_LDRnomdep.Value:=DM1.Query2.Fields[0].AsString;
  end;
end;

procedure TFrm_Par.DBEdit5Exit(Sender: TObject);
begin
if not flqr2('CCNOME,CCNAT','CC','CADCCU','C','CCCODCCU',Par_LDRCODCC.Value) then
  begin
  verteclado(1);
  fmensagem('Centro de Custo não Cadastrado!',0,['0'],0);
  DBEdit5.SetFocus;
  end
else
  begin
  Par_LDRnomccu.Value    :=DM1.Query2.Fields[0].AsString;
  Par_LDRnatdc_ccu.Value :=DM1.Query2.Fields[1].AsString;
  end;
end;

function tFrm_Par.FAtualizaCadpar_NF(pTipo: Integer): Boolean;
var
mTipoNF: array [0..4] of string;

X: Integer;
begin
mTipoNF[0]:='SERIE1';
mTipoNF[1]:='SERIE2';
mTipoNF[2]:='SCAN';
mTipoNF[3]:='SERVICO';


DM1.Query1.close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.Add('Select PNF_CHAVE from CADPAR_NF where PNF_CODEMP=:CODEMP '
                  +' order by PNF_CHAVE ');
DM1.Query1.ParamByName('CODEMP').AsInteger:=codemp;
DM1.Query1.Open;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Insert into CADPAR_NF ('
                  +'  PNF_CODEMP '
                  +' ,PNF_CHAVE '
                  +' ,PNF_SERIE '
                  +' ,PNF_MODELO '
                  +' ,PNF_NUMNF '
                  +' ,PNF_TIPOFORM '
                  +' ,PNF_DTVCTO '
                  +' ,PNF_MANNNF '
                  +' ,PNF_OBSL01 '
                  +' ,PNF_OBSL02 '
                  +' ,PNF_OBSL03 '
                  +' ) values ('
                  +'  :PNF_CODEMP '
                  +' ,:PNF_CHAVE '
                  +' ,:PNF_SERIE '
                  +' ,:PNF_MODELO '
                  +' ,:PNF_NUMNF '
                  +' ,:PNF_TIPOFORM '
                  +' ,:PNF_DTVCTO '
                  +' ,:PNF_MANNNF '
                  +' ,:PNF_OBSL01 '
                  +' ,:PNF_OBSL02 '
                  +' ,:PNF_OBSL03 '
                  +')');


for x:=0 to 4 do
   begin
   if DM1.Query1.Locate('PNF_CHAVE',mtipoNF[x],[]) then
      Continue;

   DM1.Query2.ParamByName('PNF_CODEMP').Value  :=codemp;
   DM1.Query2.ParamByName('PNF_CHAVE').Value   :=mtipoNF[x];
   if x=2 then
      DM1.Query2.ParamByName('PNF_SERIE').Value   :='900'
   else
      DM1.Query2.ParamByName('PNF_SERIE').Value   :='01';

   DM1.Query2.ParamByName('PNF_MODELO').Value  :='01';
   DM1.Query2.ParamByName('PNF_NUMNF').Value   :=1;
   DM1.Query2.ParamByName('PNF_TIPOFORM').Value:=0;
   DM1.Query2.ParamByName('PNF_DTVCTO').Value  :='';
   DM1.Query2.ParamByName('PNF_MANNNF').Value  :=0;
   DM1.Query2.ParamByName('PNF_OBSL01').Value  :='';
   DM1.Query2.ParamByName('PNF_OBSL02').Value  :='';
   DM1.Query2.ParamByName('PNF_OBSL03').Value  :='';
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
   end;

DM1.Query1.close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.Add('Select * from CADPAR_NF where PNF_CODEMP=:CODEMP '
                  +' order by PNF_CHAVE ');
DM1.Query1.ParamByName('CODEMP').AsInteger:=codemp;
DM1.Query1.Open;
result:=true;

end;
procedure TFrm_Par.rg_chaveClick(Sender: TObject);
var
mChave: String;
begin
if rg_chave.ItemIndex =0 then
   mChave:='SERIE1'
else if rg_chave.ItemIndex=1 then
   mChave:='SERIE2'
else if rg_chave.ItemIndex=2 then
   mChave:='SCAN'
else if rg_chave.ItemIndex=3 then
   mChave:='SERVICO';
{else
   mChave:='SVC-RS';
}



DM1.Query1.close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.Add('Select * from CADPAR_NF where PNF_CODEMP=:CODEMP '
                  +' and PNF_CHAVE=:CHAVE ');
DM1.Query1.ParamByName('CODEMP').AsInteger:=codemp;
DM1.Query1.ParamByName('CHAVE').AsString  :=mChave;
DM1.Query1.Open;
edtnf_chave.Text:=mChave;
if DM1.Query1.IsEmpty then
   begin
   edtnf_mod.Text:='';
   edtnf_numnf.Text:='';
   edtnf_data.Text:='/  /';
   edtnf_serie.Text:='';
   edtnf_obsl01.Text:='';
   edtnf_obsl02.Text:='';
   edtnf_obsl03.Text:='';
   edt_nfe_servidor01.Text:='';
   edt_nfe_servidor02.Text:='';
   edt_nfe_servidor03.Text:='';
   cbnf_tipoform.Checked:=false;
   cbnf_manNNf.Checked:=false;
   end
else
   begin
   edtnf_mod.Text:=DM1.Query1.fieldbyName('PNF_MODELO').AsString;;
   edtnf_serie.Text:=DM1.Query1.fieldbyName('PNF_SERIE').AsString;;
   edtnf_numnf.Text:=DM1.Query1.fieldbyName('PNF_NUMNF').AsString;
   if DM1.Query1.fieldbyName('PNF_DTVCTO').AsDateTime>pdatanula then
      edtnf_data.Text:=FormatDateTime(fdt2, DM1.Query1.fieldbyName('PNF_DTVCTO').AsDateTime)
   else
      edtnf_data.Text:='/  /';
   edtnf_obsl01.Text:=DM1.Query1.fieldbyName('PNF_OBSL01').AsString;
   edtnf_obsl02.Text:=DM1.Query1.fieldbyName('PNF_OBSL02').AsString;
   edtnf_obsl03.Text:=DM1.Query1.fieldbyName('PNF_OBSL03').AsString;
   cbnf_tipoform.Checked :=DM1.Query1.fieldbyName('PNF_TIPOFORM').AsInteger=1;
   cbnf_manNNf.Checked :=DM1.Query1.fieldbyName('PNF_MANNNF').AsInteger=1;
   edt_nfe_servidor01.Text:=DM1.Query1.fieldbyName('PNF_SERVIDOR01').AsString;
   edt_nfe_servidor02.Text:=DM1.Query1.fieldbyName('PNF_SERVIDOR02').AsString;
   edt_nfe_servidor03.Text:=DM1.Query1.fieldbyName('PNF_SERVIDOR03').AsString;
   end;



end;

procedure TFrm_Par.edtnf_numnfExit(Sender: TObject);
begin
edtnf_numnf.text:=fdeixanum(edtnf_numnf.Text);
end;

procedure TFrm_Par.bbNFSalvarClick(Sender: TObject);
begin


if fsonumero(edtnf_numnf.Text)<1 then
   edtnf_numnf.Text:='1';
{
if edtnf_chave.Text='SCAN' then
   begin
   if (ValInt(edtnf_serie.Text)<900)  or (ValInt(edtnf_serie.Text)>999) then
      begin
      MessageDlg('Série da NF tem que ser um Valor Entre 900 a 999!',mtWarning,[mbOk],0);
      exit;
      end;
   end;
}
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(NSNUMERO) from CADNS where '
                  +' NSCODEMP='+IntToStr(codemp)
                  +' and NSSERIE=:SERIENF'
                  +' and NSMODELO=:MODELO');
DM1.Query1.ParamByName('SERIENF').AsString:=edtnf_serie.Text;
DM1.Query1.ParamByName('MODELO').AsString :=edtnf_mod.Text;
DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>=valint(edtnf_numnf.Text) then
   begin
   if fMensagem(pchar('O numero da nota fiscal de saida tem que ser maior que: '+DM1.Query1.Fields[0].AsString+' Gravar mesmo assim'),0,['1','2'],2)<>mrYes then
      exit;
   end;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Update CADPAR_NF set '
                  +'  PNF_SERIE=:PNF_SERIE '
                  +' ,PNF_MODELO=:PNF_MODELO '
                  +' ,PNF_NUMNF=:PNF_NUMNF '
                  +' ,PNF_TIPOFORM=:PNF_TIPOFORM '
                  +' ,PNF_DTVCTO=:PNF_DTVCTO '
                  +' ,PNF_MANNNF=:PNF_MANNNF '
                  +' ,PNF_OBSL01=:PNF_OBSL01 '
                  +' ,PNF_OBSL02=:PNF_OBSL02 '
                  +' ,PNF_OBSL03=:PNF_OBSL03 '
                  +' ,PNF_SERVIDOR01=:SERVIDOR01 '
                  +' ,PNF_SERVIDOR02=:SERVIDOR02 '
                  +' ,PNF_SERVIDOR03=:SERVIDOR03 '
                  +' where  PNF_CODEMP=:PNF_CODEMP '
                  +' and PNF_CHAVE=:PNF_CHAVE ');


DM1.Query2.ParamByName('PNF_CODEMP').Value  :=codemp;
DM1.Query2.ParamByName('PNF_CHAVE').Value   :=edtnf_chave.Text;
DM1.Query2.ParamByName('PNF_SERIE').Value   :=edtnf_serie.Text;
DM1.Query2.ParamByName('PNF_MODELO').Value  :=edtnf_mod.Text;
DM1.Query2.ParamByName('PNF_NUMNF').Value   :=fsonumero(edtnf_numnf.Text);
DM1.Query2.ParamByName('PNF_TIPOFORM').Value:=iif(cbnf_tipoform.Checked,1,0);
if trim(edtnf_data.Text)<>'/  /' then
   DM1.Query2.ParamByName('PNF_DTVCTO').Value  :=StrtoDate(edtnf_data.Text)
else
   DM1.Query2.ParamByName('PNF_DTVCTO').Value  :='';



DM1.Query2.ParamByName('PNF_MANNNF').Value  :=iif(cbnf_manNNf.Checked,1,0);
DM1.Query2.ParamByName('PNF_OBSL01').Value  :=edtnf_obsl01.Text;
DM1.Query2.ParamByName('PNF_OBSL02').Value  :=edtnf_obsl02.Text;
DM1.Query2.ParamByName('PNF_OBSL03').Value  :=edtnf_obsl03.Text;
DM1.Query2.ParamByName('SERVIDOR01').Value  :=valint(edt_nfe_servidor01.Text);
DM1.Query2.ParamByName('SERVIDOR02').Value  :=valint(edt_nfe_servidor02.Text);
DM1.Query2.ParamByName('SERVIDOR03').Value  :=valint(edt_nfe_servidor03.Text);


DM1.Query2.ExecSQL;
fdm1StartCommit;


fSequenceTestaeAjusta('NF_'+edtnf_chave.Text+'_'+FormatFloat('0000', codemp)+'_2012',valint(edtnf_numnf.Text));

fDeletaPadroes(0,'_PARNFE','CB_HORARIOVERAO');
fGravaPadroes(0,'CB_HORARIOVERAO','text','_PARNFE',iif(cb_horarioverao.Checked=true,'true','false'));
pger_horario_verao:=cb_horarioverao.Checked;

log_Aplicemendaconst87042015:=cb_Aplicemendaconst87042015.Checked;

fDeletaPadroes(-5,'_PAR','_APLICEMENDACONST87042015');
if cb_Aplicemendaconst87042015.Checked=true then
  fGravaPadroes(-5,'_APLICEMENDACONST87042015'    ,'text'   ,'_PAR','true');



MessageDlg('Registro Gravado!',mtInformation,[mbOk],0);

end;

procedure TFrm_Par.G_OUTDADNFClick(Sender: TObject);
begin
if CB_TPEMIS.ItemIndex<0 then
   CB_TPEMIS.ItemIndex:=0
else if CB_TPEMIS.ItemIndex>7 then
  begin
  MessageDlg('Tipo de Emissão Inválido!',mtWarning,[mbOk],0);
  exit;
  end;
if (CB_TPEMIS.ItemIndex=2) or (CB_TPEMIS.ItemIndex>7)  then
   begin
   MessageDlg('Tipo de Emissão: '+CB_TPEMIS.Text+' não Disponível!',mtInformation,[mbok],0);
   exit;
   end;
if CB_TPEMIS.ItemIndex=3 then
   begin
   if trim(edtnf_just_cont.Text)='' then
      begin
      MessageDlg('Motivo tem que ser preenchido!',mtWarning,[mbOk],0);
      exit;
      end;
   if trim(edtnf_data_cont.Text)='/  /' then
      begin
      MessageDlg('Data SCAN tem que ser preenchida!',mtWarning,[mbOk],0);
      exit;
      end;
   if trim(edtnf_horas_cont.Text)=':' then
      begin
      MessageDlg('Hora SCAN tem que ser preenchida!',mtWarning,[mbOk],0);
      exit;
      end;
   end;
flparger02(0,0,'1');
DM4.Tb_ParGer02.Edit;
DM4.Tb_ParGer02PG2NFETPEMIS.AsInteger:=CB_TPEMIS.ItemIndex;
DM4.Tb_ParGer02PG2PACREDICMS.Value:=ValFloat(PACREDICMS.Text);
if fsonumero(edtnf_data_cont.Text)=0 then
  DM4.Tb_ParGer02PG2NFEDATHOR_CONT.AsString:=''
else
  begin
  if edtnf_data_cont.Date>pdatanula then
    DM4.Tb_ParGer02PG2NFEDATHOR_CONT.AsDateTime:=StrToDateTime(edtnf_data_cont.Text+' '+edtnf_horas_cont.Text+':00')
  else
    DM4.Tb_ParGer02PG2NFEDATHOR_CONT.AsString:='';
  end;
DM4.Tb_ParGer02PG2NFEJUST_CONT.Value:=edtnf_just_cont.Text;
DM4.Tb_ParGer02.Post;

G_OUTDADNF.Enabled:=false;
end;

procedure TFrm_Par.CB_TPEMISClick(Sender: TObject);
begin
if (par_ori<>'consulta') then
   begin
   IF G_OUTDADNF.Enabled=false then
      G_OUTDADNF.Enabled:=true;
   if CB_TPEMIS.ItemIndex=3 then
      begin
      if trim(edtnf_just_cont.Text)='' then
         begin
         edtnf_just_cont.Text :='SEFAZ-'+DM1.Tb_EmpUF.AsString+' ESTA FORA DO AR';
         edtnf_data_cont.Text :=FormatDatetime(fdt2, date);
         edtnf_horas_cont.Text:=FormatDateTime(fhr, Time);
         end
      else if (CB_TPEMIS.ItemIndex<2) and  (trim(DM4.Tb_ParGer02PG2NFEJUST_CONT.AsString)='')  then
         begin
         edtnf_just_cont.Text :='';
         edtnf_data_cont.Text :='/  /';
         edtnf_horas_cont.Text:=':';
         end;
      end;

   end;
end;

procedure TFrm_Par.edtnf_just_contChange(Sender: TObject);
begin
if (edtnf_just_cont.Modified) and  (par_ori<>'consulta') then
   G_OUTDADNF.Enabled:=true;

end;

procedure TFrm_Par.edtnf_data_contChange(Sender: TObject);
begin
if (edtnf_data_cont.Modified) and  (par_ori<>'consulta') then
   G_OUTDADNF.Enabled:=true;

end;

procedure TFrm_Par.edtnf_horas_contChange(Sender: TObject);
begin
if (edtnf_horas_cont.Modified) and  (par_ori<>'consulta') then
   G_OUTDADNF.Enabled:=true;

end;

procedure TFrm_Par.btn_rbms_vencClick(Sender: TObject);
begin
if (par_ori<>'consulta') then
   G_CORES.Enabled:=true;

If ColorDialog1.Execute then
   lbl_rbms_venc.Font.Color:=ColorDialog1.Color;

end;

procedure TFrm_Par.Salvar_EmailClick(Sender: TObject);
begin
fpar01gant(8);
flparger(0,0,'1');
Salvar_Email.Enabled:=false;
DM1.Tb_Parger.Edit;
DM1.Tb_PargerPHOSTEMAIL.AsString        :=edt_hostsmtp.Text;
DM1.Tb_PargerPPORTAEMAIL.AsInteger      :=ValInt(edt_portasmtp.Text);
DM1.Tb_PargerPUSEREMAIL.AsString        :=edt_emailhost.Text;
DM1.Tb_PargerPSENHAEMAIL.AsString       :=edt_senhahost.Text;
DM1.Tb_PargerPTLOGINEMAIL.AsInteger     :=cb_LoginSmtp.ItemIndex;
DM1.Tb_PargerPTAUTENTICAEMAIL.AsInteger :=cb_AutenticacaoSmtp.ItemIndex;
DM1.Tb_Parger.Post;
end;

procedure TFrm_Par.edt_hostsmtpExit(Sender: TObject);
begin
if length(edt_hostsmtp.Text)>60 then
   edt_hostsmtp.Text:=copy(edt_hostsmtp.Text,1,60);

end;

procedure TFrm_Par.edt_hostsmtpChange(Sender: TObject);
begin
if (edt_hostsmtp.Modified) and  (par_ori<>'consulta') then
   Salvar_Email.Enabled:=true;

end;

procedure TFrm_Par.edt_portasmtpChange(Sender: TObject);
begin
if (edt_portasmtp.Modified) and  (par_ori<>'consulta') then
   Salvar_Email.Enabled:=true;

end;

procedure TFrm_Par.edt_emailhostChange(Sender: TObject);
begin
if (edt_emailhost.Modified) and  (par_ori<>'consulta') then
   Salvar_Email.Enabled:=true;

end;

procedure TFrm_Par.edt_senhahostChange(Sender: TObject);
begin
if (edt_senhahost.Modified) and  (par_ori<>'consulta') then
   Salvar_Email.Enabled:=true;

end;

procedure TFrm_Par.cb_LoginSmtpChange(Sender: TObject);
begin
if (par_ori<>'consulta') then
   Salvar_Email.Enabled:=true;
end;

procedure TFrm_Par.cb_AutenticacaoSmtpChange(Sender: TObject);
begin
if (par_ori<>'consulta') then
   Salvar_Email.Enabled:=true;
end;

procedure TFrm_Par.sbt_testarClick(Sender: TObject);
begin
Application.CreateForm(TFrm_EnviarEmail,Frm_EnviarEmail);
Frm_EnviarEmail.IdSMTP1.Username:=edt_emailhost.Text;
Frm_EnviarEmail.IdSMTP1.Password:=edt_senhahost.Text;
Frm_EnviarEmail.ShowModal;
FreeAndNil(Frm_EnviarEmail);
end;

procedure TFrm_Par.diabloqChange(Sender: TObject);
begin
if (diabloq.Modified) and  (par_ori<>'consulta') then
   G_CAIXA.Enabled:=true;

end;

procedure TFrm_Par.cb_ordem_proClick(Sender: TObject);
begin
if par_ori<>'consulta' then
   G_RELPRO.Enabled:=true;

end;

procedure TFrm_Par.cb_ordem_proExit(Sender: TObject);
begin
if cb_ordem_pro.ItemIndex<0 then
   with cb_ordem_pro do ItemIndex:=Items.IndexOf(cb_ordem_pro.Text);
cb_ordem_pro.text:=cb_ordem_pro.Items.Strings[cb_ordem_pro.ItemIndex];

end;

procedure TFrm_Par.btn_salvarClick(Sender: TObject);
begin
fDeletaPadroes(0,'_PARNFE','LINHA01');
fDeletaPadroes(0,'_PARNFE','LINHA02');
fDeletaPadroes(0,'_PARNFE','LINHA03');
fDeletaPadroes(0,'_PARNFE','LINHA04');
fDeletaPadroes(0,'_PARNFE','LINHA05');
fDeletaPadroes(0,'_PARNFE','LINHA06');
fDeletaPadroes(0,'_PARNFE','LINHA07');
fGravaPadroes(0,'LINHA01','text','_PARNFE',edt_linha01.Text);
fGravaPadroes(0,'LINHA02','text','_PARNFE',edt_linha02.Text);
fGravaPadroes(0,'LINHA03','text','_PARNFE',edt_linha03.Text);
fGravaPadroes(0,'LINHA04','text','_PARNFE',edt_linha04.Text);
fGravaPadroes(0,'LINHA05','text','_PARNFE',edt_linha05.Text);
fGravaPadroes(0,'LINHA06','text','_PARNFE',edt_linha06.Text);
fGravaPadroes(0,'LINHA07','text','_PARNFE',edt_linha07.Text);
end;

procedure TFrm_Par.edt_nfe_servidor01Exit(Sender: TObject);
begin
edt_nfe_servidor01.text:=fdeixanum(edt_nfe_servidor01.Text);

end;

procedure TFrm_Par.edt_nfe_servidor02Exit(Sender: TObject);
begin
edt_nfe_servidor02.text:=fdeixanum(edt_nfe_servidor02.Text);

end;

procedure TFrm_Par.edt_nfe_servidor03Exit(Sender: TObject);
begin
edt_nfe_servidor03.text:=fdeixanum(edt_nfe_servidor03.Text);

end;

procedure TFrm_Par.bbAplicarTodosClick(Sender: TObject);
begin
if logosis.Picture=nil then
   exit;
if Application.MessageBox('Quer Realmente aplicar a imagem em todos?','Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;

Ado_CadLogLSLOGO.SaveToFile('C:\SGE\LOGSIS.JPG');

ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('Update CADLOGSIS set LSLOGO=:LOGO ');
ADOQuery1.Parameters.ParamByName('LOGO').LoadFromFile('C:\SGE\LOGSIS.JPG',ftBlob);
//ADOQuery1.SQL.Add(' where LSCODEMP=:CODEMP');
//ADOQuery1.Parameters.ParamByName('CODEMP').Value:=iif(codemp>100,codemp-100,codemp);
try
   ADOQuery1.ExecSQL;
   fdm1StartCommit;
except
   fmensagem('Erro ao Atualizar o Logotipo!',0,['0'],0);
   end;
fLerlogomarcas;
BBLIMPAR.Click;

end;

procedure TFrm_Par.btn_SemMovClick(Sender: TObject);
begin
if (par_ori<>'consulta') then
  G_CORES.Enabled:=true;

if ColorDialog1.Execute then
  begin
  lbl_prod_semmov_1.Font.Color:=ColorDialog1.Color;
  lbl_prod_semmov_2.Font.Color:=ColorDialog1.Color;
  end;

end;

procedure TFrm_Par.edt_SemMovChange(Sender: TObject);
begin
if (par_ori<>'consulta') then
  G_CORES.Enabled:=true;
end;

procedure TFrm_Par.CB_COMISS_VENDAClick(Sender: TObject);
begin
G_GRAVPED.Enabled := True;
end;

procedure TFrm_Par.FormShow(Sender: TObject);
begin
if flfilpad(0,'_PARNFE','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','LINHA01',[]) then
      edt_linha01.Text := DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LINHA02',[]) then
      edt_linha02.Text := DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LINHA03',[]) then
      edt_linha03.Text := DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LINHA04',[]) then
      edt_linha04.Text := DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LINHA05',[]) then
      edt_linha05.Text := DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LINHA06',[]) then
      edt_linha06.Text := DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LINHA07',[]) then
      edt_linha07.Text := DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_HORARIOVERAO',[]) then
      cb_horarioverao.Checked := DM4.Tb_FilPad2FPVALOR.AsString='true';

   end;
if flfilpad(-65,'_NFCE65','') then
   begin
   if flfilpad(-65,'_NFCE65PADRAO','') then
      begin
      if not flfilpad(-65,'_NFCE65', DM4.Tb_FilPad2FPVALOR.AsString) then
         flfilpad(-65,'_NFCE65PADRAO','');
      fAtualizarNumNFce(DM4.Tb_FilPad2FPCOMP.AsString)
      end
   else
      fAtualizarNumNFce(DM4.Tb_FilPad2FPCOMP.AsString);
   end
else
   begin
   edt_nfce_serie.Text:='1';
   cb_nfce_tpamb.ItemIndex:=0;
   edt_nfce_numnfce.text:='1';
   sbn_nfce_salvarClick(self);
   end;


if flfilpad(-65,'_NFCE65OBS','OBSL01') then
   edt_nfce_obs_l01.Text:=DM4.Tb_FilPad2FPVALOR.AsString
else
   edt_nfce_obs_l01.Clear;


if flfilpad(-65,'_NFCE65OBS','OBSL02') then
   edt_nfce_obs_l02.Text:=DM4.Tb_FilPad2FPVALOR.AsString
else
   edt_nfce_obs_l02.Clear;



end;

procedure TFrm_Par.edt_incpeso_caixaChange(Sender: TObject);
begin
if (edt_incpeso_caixa.Modified) and  (par_ori<>'consulta') then
   G_GRAVPED.Enabled:=true;

end;

procedure TFrm_Par.edt_incpeso_caixaExit(Sender: TObject);
begin
edt_incpeso_caixa.Text:=FormatFloat(mcasas, valfloat(edt_incpeso_caixa.Text));

end;

procedure TFrm_Par.sbn_nfce_salvarClick(Sender: TObject);
begin
sbn_nfce_salvar.Enabled:=false;
fDeletaPadroes(-65,'_NFCE65',fRetornaChaveNFCE);

fGravaPadroes(-65,fRetornaChaveNFCE,'text','_NFCE65',fdeixanum(edt_nfce_numnfce.text));
fSetarNovoNumeroNFce(fRetornaChaveNFCE, valint(edt_nfce_numnfce.Text));



fDeletaPadroes(-65,'_NFCE65PADRAO','');
fGravaPadroes(-65,'NFCEPADRAO','text','_NFCE65PADRAO', fRetornaChaveNFCE);


end;
function TFrm_Par.fRetornaChaveNFCE: String;
var
mchavepad: string;
begin
mChavePad:=formatfloat('000', valint(edt_nfce_serie.Text));
mChavePad:=mChavePad+formatfloat('0', cb_nfce_tpamb.ItemIndex+1);;
result:=mchavepad;
end;

procedure TFrm_Par.edt_nfce_numnfceExit(Sender: TObject);
begin
edt_nfce_numnfce.text:=fdeixanum(edt_nfce_numnfce.text);

end;

procedure tFrm_Par.fAtualizarNumNFce(pChave: string);
begin

edt_nfce_serie.Text    :=inttostr(valint(copy(pchave,1,3)));
if valint(edt_nfce_serie.text)<1 then
   edt_nfce_serie.Text    :='1';
cb_nfce_tpamb.ItemIndex:=valint(copy(pchave,4,1))-1;
if cb_nfce_tpamb.itemindex<0 then
   cb_nfce_tpamb.itemindex:=0;
CB_NFCE_PADRAO.Checked := false;
fBuscarNumNFce(pchave);

CB_NFCE_PADRAO.Checked := false;

if flfilpad(-65,'_NFCE65PADRAO','') then
   CB_NFCE_PADRAO.Checked := DM4.Tb_FilPad2FPVALOR.AsString=pchave;



end;

procedure tFrm_Par.fBuscarNumNFce(pChave: string);
var
query_nfce: tquery;

begin

edt_nfce_numnfce.Text  :='1';
query_nfce:=tquery.create(nil);
query_nfce.databasename:=DM1.SG_ASSOC.databasename;

query_nfce.sql.add('select pid from BUSCARETESTARID WHERE PTABELA='+quotedstr('nfce_'+pChave));
try
   query_nfce.open;
   if not query_nfce.IsEmpty then
      edt_nfce_numnfce.Text  := query_nfce.fieldbyname('pid').Asstring;
except on e : exception do
   begin
   ex_erroSql_Novo(query_nfce,443,'SGE'+E.Message,'BUSCAR E TESTAR ID');
   end;
   end;
query_nfce.close;
freeandnil(query_nfce);

end;




procedure TFrm_Par.edt_nfce_serieChange(Sender: TObject);
begin
if edt_nfce_serie.Modified then sbn_nfce_salvar.Enabled:=true;
end;

procedure TFrm_Par.cb_nfce_tpambClick(Sender: TObject);
begin
sbn_nfce_salvar.Enabled:=true;
fAtualizarNumNFce(fRetornaChaveNFCE);
//fBuscarNumNFce(fRetornaChaveNFCE);

end;

procedure TFrm_Par.edt_nfce_numnfceChange(Sender: TObject);
begin
if edt_nfce_numnfce.Modified then sbn_nfce_salvar.Enabled:=true;
end;

procedure TFrm_Par.edt_nfce_serieExit(Sender: TObject);
begin
edt_nfce_serie.Text:=fdeixanum(edt_nfce_serie.Text);
if trim(edt_nfce_serie.Text)='' then
   edt_nfce_serie.Text:='1';
fAtualizarNumNFce(fRetornaChaveNFCE);
//fBuscarNumNFce(fRetornaChaveNFCE);

end;

procedure TFrm_Par.CB_NFCE_PADRAOClick(Sender: TObject);
begin
sbn_nfce_salvar.Enabled:=true;

end;

procedure TFrm_Par.sbn_salvarmensagemcupomClick(Sender: TObject);
begin
fDeletaPadroes(-65,'_NFCE65OBS','');
fGravaPadroes(-65,'OBSL01','text','_NFCE65OBS', edt_nfce_obs_l01.Text);
fGravaPadroes(-65,'OBSL02','text','_NFCE65OBS', edt_nfce_obs_l02.Text);

end;

procedure TFrm_Par.edt_nfce_obs_l01Change(Sender: TObject);
begin
sbn_salvarmensagemcupom.Enabled:=true;
end;

procedure TFrm_Par.edt_nfce_obs_l02Change(Sender: TObject);
begin
sbn_salvarmensagemcupom.Enabled:=true;
end;

end.
