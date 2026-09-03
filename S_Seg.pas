unit S_Seg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,  S_DM1, func, db, dbtables, ComCtrls,lerarq,
  Buttons,S_DefBac, jpeg, CheckLst, RxMemDS, Grids, DBGrids, Mask, DBCtrls,
  SqlExpr, Spin;

type
  TFrm_Seg = class(TForm)
    Panel2: TPanel;
    pc_outfat: TPageControl;
    tsSeg: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label10: TLabel;
    CB_SEG: TComboBox;
    CB_Grade: TCheckBox;
    CB_PServ: TCheckBox;
    GB_CLIENTE: TGroupBox;
    CB_VISA: TCheckBox;
    CB_ANVISA: TCheckBox;
    CB_CONV: TCheckBox;
    CB_REDE: TCheckBox;
    MOEDA: TEdit;
    GroupBox2: TGroupBox;
    CB_DCB: TCheckBox;
    MANPC: TCheckBox;
    CB_PRZVAL: TCheckBox;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    CB_CADVEN: TCheckBox;
    CB_CADUSR: TCheckBox;
    CB_CADTRA: TCheckBox;
    CB_CADTP: TCheckBox;
    CB_CADRAM: TCheckBox;
    CB_CADPRO: TCheckBox;
    CB_CADLOC: TCheckBox;
    CB_CADFOR: TCheckBox;
    CB_CADGRU: TCheckBox;
    CB_CADCV: TCheckBox;
    CB_CADCON: TCheckBox;
    CB_CADCLI: TCheckBox;
    CB_CADBAI: TCheckBox;
    CB_CADCAR: TCheckBox;
    CB_CADSUP: TCheckBox;
    CB_CADRED: TCheckBox;
    tsSobFat: TTabSheet;
    CB_VENUSR: TCheckBox;
    CB_CliPed: TCheckBox;
    CB_TIPPED: TComboBox;
    Label8: TLabel;
    DEVOL: TCheckBox;
    CB_JNR: TCheckBox;
    CB_DEDVD: TCheckBox;
    CB_UREGMS: TCheckBox;
    CB_UPISCOF: TCheckBox;
    CB_UTABICM: TCheckBox;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    GB_CASAS_DEC: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    MPCASAS: TEdit;
    Label9: TLabel;
    TITSCOM: TEdit;
    CB_UPMC: TCheckBox;
    CB_PVPED: TCheckBox;
    Label22: TLabel;
    CB_PUZERO: TCheckBox;
    CB_AGRUDUP: TCheckBox;
    CB_NOTUNI: TCheckBox;
    CB_PEXTRACUS: TCheckBox;
    CB_UPALNUM: TCheckBox;
    Label23: TLabel;
    PALNUM: TEdit;
    CB_CLIOINF: TCheckBox;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    CB_LCVM: TCheckBox;
    CB_COMEMP: TCheckBox;
    RG_CADCLITAXC: TRadioGroup;
    Label28: TLabel;
    Label29: TLabel;
    CODMOE: TEdit;
    bbGravar: TBitBtn;
    bbSair: TBitBtn;
    Label11: TLabel;
    CB_PPADATU: TCheckBox;
    CB_OCUEST: TCheckBox;
    CB_PCOGRA: TCheckBox;
    RG_TIPOTEF: TRadioGroup;
    CB_EXCFP_EXCPED: TCheckBox;
    CB_TRODCX: TCheckBox;
    CB_TROEMP100: TCheckBox;
    CB_ATIVARTODAS: TCheckBox;
    TabSheet4: TTabSheet;
    CB_ONCHANGEPRO: TCheckBox;
    CB_ONCHANGECLI: TCheckBox;
    CB_ONCHANGELOC: TCheckBox;
    CB_ONCHANGEBAI: TCheckBox;
    CB_ONCHANGEPV: TCheckBox;
    CB_ONCHANGEVEND: TCheckBox;
    CB_ONCHANGEUSR: TCheckBox;
    CB_ONCHANGECAR: TCheckBox;
    CB_ONCHANGEFUN: TCheckBox;
    CB_ONCHANGEREDEC: TCheckBox;
    CB_ONCHANGEGPRO: TCheckBox;
    CB_ONCHANGERPRO: TCheckBox;
    CB_ONCHANGETPRO: TCheckBox;
    CB_ONCHANGECPRO: TCheckBox;
    CB_ONCHANGERCLI: TCheckBox;
    CB_ONCHANGESUP: TCheckBox;
    CB_ONCHANGETRA: TCheckBox;
    CB_ONCHANGEUF: TCheckBox;
    CB_TIPOAJUDA: TCheckBox;
    CB_ONCHANGECV: TCheckBox;
    CB_ONCHANGEFOR: TCheckBox;
    CB_ONCHANGEDCB: TCheckBox;
    CB_ONCHANGEDEPCX: TCheckBox;
    CB_ONCHANGECCU: TCheckBox;
    GroupBox6: TGroupBox;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    TEXTOBAIXO: TEdit;
    ColorDialog1: TColorDialog;
    sb_colorBaixo: TSpeedButton;
    sb_colorAlto: TSpeedButton;
    sb_colorAmbas: TSpeedButton;
    TEXTOALTO: TEdit;
    TEXTOAMBAS: TEdit;
    CB_FILPRO: TCheckBox;
    CB_ATPCOFABENT: TCheckBox;
    CB_LSEPMOD02: TCheckBox;
    CB_CONSPROPED: TCheckBox;
    CB_LORCMOD02: TCheckBox;
    TabSheet6: TTabSheet;
    CB_MPDISP: TCheckBox;
    CB_MANPCUSFOR: TCheckBox;
    Label49: TLabel;
    MQTDLCQP: TEdit;
    RG_IND_TPFORMULA: TRadioGroup;
    CB_FORPROPAD: TCheckBox;
    CB_LOGUSRPED: TCheckBox;
    CB_HINTPROPED: TCheckBox;
    CB_VISMLUC: TCheckBox;
    CB_ATUCOMPROGRU: TCheckBox;
    Label50: TLabel;
    CB_COMISPAD: TComboBox;
    CB_MTE: TCheckBox;
    DEV_CODPV: TEdit;
    CB_DEV_TABPV: TComboBox;
    lbl_Dev_PV: TLabel;
    Label51: TLabel;
    QTDDBLOQPED: TEdit;
    Label52: TLabel;
    TabSheet7: TTabSheet;
    PROD_DNOME2: TEdit;
    Label53: TLabel;
    CB_LSEPSEP_ORDEM: TCheckBox;
    CB_PEXTRAMEN: TCheckBox;
    Label55: TLabel;
    CB_EXPMOV_EXC: TComboBox;
    MANDUPREC_AUT: TCheckBox;
    MANDUPPAG_AUT: TCheckBox;
    CB_FORMACE: TCheckBox;
    CB_ATUPCUSACABMP: TCheckBox;
    CB_CONCEXATO: TCheckBox;
    CB_IGNOR_MINUSCULAS: TCheckBox;
    GB_FORMALOTE: TGroupBox;
    CB_FORMALOTEFAB: TComboBox;
    Label60: TLabel;
    PROXLOTFAB: TEdit;
    Label61: TLabel;
    ULTFORLOTFAB: TEdit;
    Label62: TLabel;
    CB_FORMALOTEFAB_MASC: TComboBox;
    CB_UTILCQ: TCheckBox;
    CB_CASASPU: TComboBox;
    CB_CASPUIND: TComboBox;
    CB_CASQTD: TComboBox;
    CB_CASIND: TComboBox;
    Label71: TLabel;
    RG_INDUSTRIA: TComboBox;
    TabSheet3: TTabSheet;
    Bevel10: TBevel;
    Label72: TLabel;
    cb_pedidocompra: TComboBox;
    GroupBox7: TGroupBox;
    CB_NFETPIMP: TCheckBox;
    GB_PASTASXML: TGroupBox;
    Label64: TLabel;
    Label65: TLabel;
    SBNPastaEnvio: TSpeedButton;
    SBSPastaRetorno: TSpeedButton;
    PASTAENVIO: TEdit;
    PASTARETORNO: TEdit;
    GroupBox4: TGroupBox;
    Label66: TLabel;
    Label67: TLabel;
    SBNValXmlEnvio: TSpeedButton;
    SBSValXmlRetorno: TSpeedButton;
    VALXMLENVIO: TEdit;
    VALXMLRETORNO: TEdit;
    Label59: TLabel;
    CB_USANFE: TComboBox;
    CB_NFEAVISA_MTPIMP: TCheckBox;
    CB_NFEVISALIZAR: TCheckBox;
    Label73: TLabel;
    CB_LOCALMD: TComboBox;
    CB_NFEFRAME: TCheckBox;
    tsOutrasOpcoes: TTabSheet;
    GroupBox3: TGroupBox;
    Label36: TLabel;
    sbcam: TSpeedButton;
    Label27: TLabel;
    Label40: TLabel;
    CB_CODLOC: TCheckBox;
    CB_CODBAI: TCheckBox;
    CB_UPVESP: TCheckBox;
    CB_FOLHA: TCheckBox;
    CB_ECFDIR: TCheckBox;
    CB_ECFCAI: TCheckBox;
    CB_ECFSOLCOD: TCheckBox;
    CB_ECFFECCOM: TCheckBox;
    CB_PCHQFC: TCheckBox;
    CB_IMOBIL: TCheckBox;
    CB_CONVEI: TCheckBox;
    CAMINHO: TEdit;
    CB_TAMJPG: TCheckBox;
    JPGTAM: TEdit;
    JPGALT: TEdit;
    CB_CONSPRO_FMAN: TCheckBox;
    Label74: TLabel;
    NFEPASTAIMP: TEdit;
    SBNFEPASTAIMP: TSpeedButton;
    CB_PMC: TCheckBox;
    CB_SENINTUSR: TCheckBox;
    CB_PDQPCOP: TComboBox;
    Label12: TLabel;
    edt_tamlogomarca: TEdit;
    CB_RAZSOC_CANHOTO: TCheckBox;
    tsContFat: TTabSheet;
    Label70: TLabel;
    CB_GRAVPEDBLOQ: TComboBox;
    CB_PCOPADLIQ: TCheckBox;
    CB_KITPROD: TCheckBox;
    CB_RECALCPEDMAN: TCheckBox;
    Label56: TLabel;
    Label57: TLabel;
    BLQPCOMENOR_QTD: TEdit;
    Label58: TLabel;
    Label63: TLabel;
    CB_FATDPRO: TComboBox;
    Label68: TLabel;
    CB_PPEDFPGTO: TComboBox;
    Label69: TLabel;
    CB_FORPEDPAD: TComboBox;
    CB_TROCARMERDIG: TCheckBox;
    TabSheet8: TTabSheet;
    GroupBox5: TGroupBox;
    lbl_tipo01: TLabel;
    lbl_tipo02: TLabel;
    lbl_tipo03: TLabel;
    lbl_tipo04: TLabel;
    lbl_tipo05: TLabel;
    lbl_tipo06: TLabel;
    lbl_tipo07: TLabel;
    lbl_tipo08: TLabel;
    lbl_tipo09: TLabel;
    Bevel9: TBevel;
    lbl_tipo10: TLabel;
    lbl_tipo11: TLabel;
    lbl_tipo12: TLabel;
    lbl_tipo13: TLabel;
    lbl_tipo14: TLabel;
    lbl_tipo15: TLabel;
    lbl_tipo16: TLabel;
    lbl_tipo17: TLabel;
    lbl_tipo18: TLabel;
    lbl_tipo19: TLabel;
    lbl_tipo20: TLabel;
    lbl_tipo21: TLabel;
    lbl_tipo22: TLabel;
    lbl_tipo23: TLabel;
    lbl_tipo24: TLabel;
    lbl_tipo25: TLabel;
    Label54: TLabel;
    CB_DUPTIP1: TCheckBox;
    CB_ESTTIP1: TCheckBox;
    CB_ESTTIP2: TCheckBox;
    CB_DUPTIP2: TCheckBox;
    CB_DUPTIP3: TCheckBox;
    CB_ESTTIP3: TCheckBox;
    CB_ESTTIP4: TCheckBox;
    CB_DUPTIP4: TCheckBox;
    CB_DUPTIP5: TCheckBox;
    CB_ESTTIP5: TCheckBox;
    CB_DUPTIP6: TCheckBox;
    CB_ESTTIP6: TCheckBox;
    CB_ESTTIP7: TCheckBox;
    CB_DUPTIP7: TCheckBox;
    CB_DUPTIP8: TCheckBox;
    CB_ESTTIP9: TCheckBox;
    CB_DUPTIP9: TCheckBox;
    CB_ESTTIP8: TCheckBox;
    CB_DUPTIP10: TCheckBox;
    CB_ESTTIP10: TCheckBox;
    CB_DUPTIP11: TCheckBox;
    CB_ESTTIP11: TCheckBox;
    CB_DUPTIP12: TCheckBox;
    CB_ESTTIP12: TCheckBox;
    CB_DUPTIP13: TCheckBox;
    CB_ESTTIP13: TCheckBox;
    CB_DUPTIP14: TCheckBox;
    CB_ESTTIP14: TCheckBox;
    CB_ESTTIP15: TCheckBox;
    CB_DUPTIP15: TCheckBox;
    CB_DUPTIP16: TCheckBox;
    CB_ESTTIP16: TCheckBox;
    CB_DUPTIP17: TCheckBox;
    CB_ESTTIP17: TCheckBox;
    CB_DUPTIP18: TCheckBox;
    CB_ESTTIP18: TCheckBox;
    CB_DUPTIP19: TCheckBox;
    CB_ESTTIP19: TCheckBox;
    CB_DUPTIP20: TCheckBox;
    CB_ESTTIP20: TCheckBox;
    CB_DUPTIP21: TCheckBox;
    CB_ESTTIP21: TCheckBox;
    CB_DUPTIP22: TCheckBox;
    CB_ESTTIP22: TCheckBox;
    CB_DUPTIP23: TCheckBox;
    CB_ESTTIP23: TCheckBox;
    CB_DUPTIP24: TCheckBox;
    CB_ESTTIP24: TCheckBox;
    CB_DUPTIP25: TCheckBox;
    CB_ESTTIP25: TCheckBox;
    STATUS_LSEP09: TListBox;
    CB_VALEMOD02: TCheckBox;
    Label77: TLabel;
    CB_VERSAOXML: TComboBox;
    Label78: TLabel;
    CB_TPEMIS: TComboBox;
    GroupBox9: TGroupBox;
    CB_LOTE_VENC: TCheckBox;
    Label44: TLabel;
    edt_NFEPASTAMASTER: TEdit;
    CB_VERSGENFE: TCheckBox;
    SpeedButton1: TSpeedButton;
    CB_DESCCOMPSEGLIN: TCheckBox;
    CB_NLOGO_NFE: TCheckBox;
    tsReplicar: TTabSheet;
    Label79: TLabel;
    edt_Servico: TEdit;
    Label80: TLabel;
    edt_Usuario: TEdit;
    rg_CadPro: TCheckBox;
    CB_ALTEMP_EMI: TCheckBox;
    GroupBox10: TGroupBox;
    DBGrid1: TDBGrid;
    mem_cadpar_re: TRxMemoryData;
    mem_cadpar_retipoprod: TStringField;
    mem_cadpar_relote_re: TStringField;
    mem_cadpar_reanalise: TStringField;
    src_cadpar_re: TDataSource;
    mem_cadpar_renometipo: TStringField;
    Panel3: TPanel;
    bbSalvar_RE: TBitBtn;
    mem_cadpar_revalidar_lote: TStringField;
    GroupBox8: TGroupBox;
    Qr_Cadpro_Filial: TQuery;
    Qr_Cadpro_FilialCFCODEMP: TFloatField;
    Qr_Cadpro_FilialCFFILIAL: TFloatField;
    Qr_Cadpro_FilialCFNOME: TStringField;
    DBGrid_cadpro_filial: TDBGrid;
    src_Cadpro_Filial: TDataSource;
    U_Cadpro_Filial: TUpdateSQL;
    pnl_RE: TPanel;
    lblSigla: TLabel;
    lblCodSeq: TLabel;
    mem_cadpar_reSeq: TFloatField;
    mem_cadpar_reSigla: TStringField;
    dbSigla: TDBEdit;
    dbSeq: TDBEdit;
    Label75: TLabel;
    edt_servnfe: TEdit;
    sbntestar: TSpeedButton;
    cb_CliVen: TCheckBox;
    rg_CadCli: TCheckBox;
    sbn_salvarnfe01: TSpeedButton;
    Label76: TLabel;
    edt_nfe_servidor01: TEdit;
    edt_nfe_servidor02: TEdit;
    edt_nfe_servidor03: TEdit;
    lbl_tipo26: TLabel;
    CB_DUPTIP26: TCheckBox;
    CB_ESTTIP26: TCheckBox;
    lbl_tipo27: TLabel;
    CB_DUPTIP27: TCheckBox;
    CB_ESTTIP27: TCheckBox;
    CB_AVISTASEMDUP: TCheckBox;
    Label5: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label6: TLabel;
    edt_dbpedele: TEdit;
    Label7: TLabel;
    Label13: TLabel;
    edt_userpedele: TEdit;
    edt_servpedele: TEdit;
    edt_passpedele: TEdit;
    Label14: TLabel;
    cb_ExibirMarca: TComboBox;
    Label15: TLabel;
    lbl_tipo28: TLabel;
    CB_DUPTIP28: TCheckBox;
    CB_ESTTIP28: TCheckBox;
    lbl_tipo29: TLabel;
    CB_DUPTIP29: TCheckBox;
    CB_ESTTIP29: TCheckBox;
    Label16: TLabel;
    COMTLV: TEdit;
    CB_ANDROID: TCheckBox;
    DatHorUltRepPro: TEdit;
    DatHorUltRepCli: TEdit;
    CB_DESFP: TCheckBox;
    Label17: TLabel;
    cb_versao_gerenciador_nfe: TComboBox;
    Label18: TLabel;
    edt_servnfe02: TEdit;
    sbn_testar02: TSpeedButton;
    sbn_salvarnfe02: TSpeedButton;
    Label19: TLabel;
    edt_servnfe03: TEdit;
    sbn_testar03: TSpeedButton;
    sbn_salvarnfe03: TSpeedButton;
    Label20: TLabel;
    Label21: TLabel;
    CB_TIPO_CERTIFICADO: TComboBox;
    SBN_TIPO_CERTIFICADO: TSpeedButton;
    Label30: TLabel;
    CB_EMPRESTIMO_PADRAO: TComboBox;
    CB_TRACOITEM: TCheckBox;
    Label31: TLabel;
    spn_tamfonteobsnfe: TSpinEdit;
    CB_MARCA_LSEP: TCheckBox;
    bbCorrigirForeingKey: TBitBtn;
    procedure CB_SEGChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CB_SEGExit(Sender: TObject);
    procedure MPCASASExit(Sender: TObject);
    procedure COMVENKeyPress(Sender: TObject; var Key: Char);
    procedure COMTLVChange(Sender: TObject);
    procedure COMVENExit(Sender: TObject);
    procedure COMTLVExit(Sender: TObject);
    procedure COMSUPExit(Sender: TObject);
    procedure CB_TIPPEDExit(Sender: TObject);
    procedure TITSCOMKeyPress(Sender: TObject; var Key: Char);
    procedure bbGravarClick(Sender: TObject);
    procedure CODMOEExit(Sender: TObject);
    procedure MOEDAExit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure sbcamClick(Sender: TObject);
    procedure JPGTAMExit(Sender: TObject);
    procedure JPGALTExit(Sender: TObject);
    procedure CB_TAMJPGClick(Sender: TObject);
    procedure sb_colorBaixoClick(Sender: TObject);
    procedure TEXTOBAIXOExit(Sender: TObject);
    procedure TEXTOALTOExit(Sender: TObject);
    procedure TEXTOAMBASExit(Sender: TObject);
    procedure sb_colorAltoClick(Sender: TObject);
    procedure sb_colorAmbasClick(Sender: TObject);
    procedure CB_DEGRADEClick(Sender: TObject);
    procedure BimagemClick(Sender: TObject);
    procedure tipo_menuClick(Sender: TObject);
    procedure MQTDLCQPExit(Sender: TObject);
    procedure CB_PPEDFPGTOClick(Sender: TObject);
    procedure QTDDBLOQPEDExit(Sender: TObject);
    procedure PROD_DNOME2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BLQPCOMENOR_QTDExit(Sender: TObject);
    procedure PROXLOTFABExit(Sender: TObject);
    procedure ULTFORLOTFABExit(Sender: TObject);
    procedure SBNPastaEnvioClick(Sender: TObject);
    procedure SBSPastaRetornoClick(Sender: TObject);
    procedure SBNValXmlEnvioClick(Sender: TObject);
    procedure SBSValXmlRetornoClick(Sender: TObject);
    procedure CB_LOCALMDClick(Sender: TObject);
    procedure CB_NFEFRAMEClick(Sender: TObject);
    procedure CB_TROCARMERDIGClick(Sender: TObject);
    procedure CB_CONSPRO_FMANClick(Sender: TObject);
    procedure SBNFEPASTAIMPClick(Sender: TObject);
    procedure CB_PMCClick(Sender: TObject);
    procedure CB_NFETPIMPClick(Sender: TObject);
    procedure edt_tamlogomarcaExit(Sender: TObject);
    procedure CB_RAZSOC_CANHOTOClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CB_VERSAOXMLExit(Sender: TObject);
    procedure CB_USANFEExit(Sender: TObject);
    procedure CB_LOTE_VENCClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CB_DESCCOMPSEGLINClick(Sender: TObject);
    procedure CB_NLOGO_NFEClick(Sender: TObject);
    procedure edt_ServicoExit(Sender: TObject);
    procedure edt_UsuarioExit(Sender: TObject);
    procedure rg_CadProClick(Sender: TObject);
    procedure CB_ALTEMP_EMIClick(Sender: TObject);
    procedure bbSalvar_REClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid_cadpro_filialExit(Sender: TObject);
    procedure Qr_Cadpro_FilialBeforePost(DataSet: TDataSet);
    procedure Qr_Cadpro_FilialBeforeEdit(DataSet: TDataSet);
    procedure Qr_Cadpro_FilialBeforeInsert(DataSet: TDataSet);
    procedure c(DataSet: TDataSet);
    procedure Qr_Cadpro_FilialAfterInsert(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure pnl_REExit(Sender: TObject);
    procedure sb(Sender: TObject);
    procedure sbn_salvarnfe01Click(Sender: TObject);

    procedure fAtualizaServidorNFE;
    procedure fGravarServidorNFE;
    procedure edt_nfe_servidor01Change(Sender: TObject);
    procedure edt_nfe_servidor02Change(Sender: TObject);
    procedure edt_nfe_servidor03Change(Sender: TObject);
    procedure lbl_tipo01Click(Sender: TObject);
    procedure CB_DUPTIP1Click(Sender: TObject);
    procedure CB_AVISTASEMDUPClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure cb_ExibirMarcaChange(Sender: TObject);
    procedure CB_ANDROIDClick(Sender: TObject);
    procedure rg_CadCliClick(Sender: TObject);
    procedure CB_DESFPClick(Sender: TObject);
    procedure sbn_testar02Click(Sender: TObject);
    procedure sbn_testar03Click(Sender: TObject);
    procedure sbn_salvarnfe02Click(Sender: TObject);
    procedure sbn_salvarnfe03Click(Sender: TObject);
    procedure SBN_TIPO_CERTIFICADOClick(Sender: TObject);
    procedure CB_TIPO_CERTIFICADOExit(Sender: TObject);
    procedure CB_EMPRESTIMO_PADRAOExit(Sender: TObject);
    procedure CB_EMPRESTIMO_PADRAOClick(Sender: TObject);
    procedure CB_TRACOITEMClick(Sender: TObject);
    procedure spn_tamfonteobsnfeChange(Sender: TObject);
    procedure CB_MARCA_LSEPClick(Sender: TObject);
    procedure bbCorrigirForeingKeyClick(Sender: TObject);
  private
    { Private declarations }
    mforpedpad: Integer;
    mPedidocompra: Integer;
    mFilial_Ant: Integer;
    mNome_Ant: String;
    mAlterou_Servidor_nfe: Boolean;
    mChavePed: Integer;
    mAlterouTipoPedido: Boolean;
    function fAtualizarRE(pTipo: Integer): Boolean;

    function fAtualizarTipoPed: Boolean;

    function GravarTipoPed: Boolean;

    function fTestarServidor(pNomeServidor, pEndereco_ip: string): Boolean;


  public
    { Public declarations }
  end;
function fSegCidadeNomeCodigo(pTipo: Integer): Boolean;
function fSegBairroNomeCodigo(pTipo: Integer): Boolean;

var
  Frm_Seg: TFrm_Seg;
  mValidarClick: Boolean=true;
implementation

uses S_DM2,  S_Agde, func_excecoes, S_DEGRADE, S_DM4, S_DM_MYSQL, Func2,
  s_Nfe_Aguarde, s_frm_corrige_foreingkey;

{$R *.dfm}



procedure TFrm_Seg.CB_SEGChange(Sender: TObject);
var
mopcao: Integer;
begin
CB_PServ.Visible:=True;
if CB_SEG.ItemIndex<0 then
   with CB_SEG do ItemIndex:=Items.IndexOf(CB_SEG.Text);
CB_SEG.text:=CB_SEG.Items.Strings[CB_SEG.ItemIndex];

if Trim(cb_seg.Text)='' then
   begin
   fMensagem('Selecione um Segmento Valido!',0,['0'],0);
   CB_SEG.SetFocus;
   end
else
   begin
   Try
      mopcao:=Valint(copy(CB_SEG.Text,1,2));
   except
      fMensagem('Selecione um Segmento Valido!',0,['0'],0);
      CB_SEG.SetFocus;
      abort;
      end;
   if (mopcao<1) or ( mopcao>CB_SEG.Items.Count) then
      begin
      fMensagem('Selecione um Segmento Valido!',0,['0'],0);
      CB_SEG.SetFocus;
      end
   else
      begin
      CB_Grade.Visible:=True;
      if (mopcao=1) or (mopcao=2) or (mopcao=3) then
         CB_Grade.Caption:='Possui Controle de Lotes e Vencimentos'
      else if (mopcao>3) and (mopcao<7) then
         Begin
         CB_Grade.Caption:='Possui Controle de Cores/Tamanhos';
         CB_Grade.Visible:=True;
         end
      else if (mopcao=8) then
         Begin
         CB_Grade.Caption:='Possui Controle de Lotes p/Piso';
         CB_Grade.Visible:=True;
         end
      else if mopcao=7 then
         begin
         CB_Grade.Checked:=False;
         CB_Grade.Visible:=False;
         end
      else if mopcao=9 then
         begin
         CB_PServ.Checked:=False;
         CB_PServ.Visible:=False;
         end;
      end;
   end;

end;


function TFrm_Seg.fAtualizarRE(pTipo: Integer): Boolean;
var
Query_RE: TQuery;
x: Integer;
n: Integer;
nivel  : TNivPro;


begin
mem_cadpar_re.Close;
mem_cadpar_re.Open;

nivel:=CarregaNivel;
x:=high(nivel);

for n:=0 to x do
   begin
   mem_cadpar_re.Append;
   mem_cadpar_renometipo.Value:=nivel[n];
   mem_cadpar_retipoprod.Value:=copy(nivel[n],1,2);
   mem_cadpar_re.Post;
   end;

// FreeAndNil(nivel);


Query_RE:=TQuery.Create(nil);
Query_RE.DatabaseName:='SG_ASSOC';
Query_RE.Sql.clear;
Query_RE.Sql.Add('Select PRE_TIPOPROD,PRE_ANALISE,PRE_LOTE,PRE_VALIDAR_LOTE,PRE_SIGLA from CADPAR_RE order by PRE_TIPOPROD ');
Query_RE.Open;
While not Query_RE.Eof do
   begin
   if mem_cadpar_re.Locate('TIPOPROD',Query_RE.fieldbyName('PRE_TIPOPROD').AsString,[]) then
      begin
      if (Query_RE.fieldbyName('PRE_LOTE').AsString='S') or
         (Query_RE.fieldbyName('PRE_ANALISE').AsString='S') or
         (Query_RE.fieldbyName('PRE_VALIDAR_LOTE').AsString='S') then
         begin
         mem_cadpar_re.Edit;
         mem_cadpar_relote_re.Value:=Query_RE.fieldbyName('PRE_LOTE').AsString;
         mem_cadpar_reanalise.Value:=Query_RE.fieldbyName('PRE_ANALISE').AsString;
         mem_cadpar_revalidar_lote.Value:=Query_RE.fieldbyName('PRE_VALIDAR_LOTE').AsString;
         if mem_cadpar_relote_re.AsString='S' then
           mem_cadpar_reSigla.Value:=Query_RE.fieldbyName('PRE_SIGLA').AsString
         else
           mem_cadpar_reSigla.Value:='GERAL_';
         mem_cadpar_reSeq.AsInteger:=fSequenceCorrenteValor(mem_cadpar_reSigla.AsString+'_'+FormatDateTime('yyyy',pdatasis));
//         mem_cadpar_reSeq.Value:=Query_RE.fieldbyName('PRE_SIGLA').AsString;
         mem_cadpar_re.Post;
         end;
      end;
   Query_RE.Next;
   end;

FreeAndNil(Query_RE);
end;


procedure TFrm_Seg.FormCreate(Sender: TObject);
var
x,mgrade,mps,mramo: Integer;

begin
fAtualizarRE(0);
 mAlterou_Servidor_nfe:=false;

mAlterouTipoPedido:=false;

fAtualizaServidorNFE;

Qr_Cadpro_Filial.Close;
Qr_Cadpro_Filial.SQL.Clear;
Qr_Cadpro_Filial.SQL.Add('Select * from CADPRO_FILIAL '
                        +' where CFCODEMP='+IntToStr(codemp)
                        +' order by CFFILIAL ');
Qr_Cadpro_Filial.Open;


pc_outfat.ActivePage:=tsSeg;

flparger02(0,0,'1');
flparger(0,0,'1');
if not DM1.Tb_PargerPSEGMENTO.IsNull then
   begin
   mramo :=Valint(copy(DM1.Tb_PargerPSEGMENTO.Value,1,2));
   mgrade:=Valint(copy(DM1.Tb_PargerPSEGMENTO.Value,4,2));
   mps   :=Valint(copy(DM1.Tb_PargerPSEGMENTO.Value,7,2));
   end
else
   begin
   mramo :=0;
   mgrade:=0;
   mps   :=0;
   end;
CB_SEG.ItemIndex:=mramo-1;
CB_Grade.Checked:=mgrade>0;
CB_PServ.Checked:=mps>0;
CB_CADCAR.Checked:=DM1.Tb_PargerPDCADCAR.Value=1;
CB_CADBAI.Checked  :=DM1.Tb_PargerPDCADBAI.Value=1;
CB_CADCLI.Checked   :=DM1.Tb_PargerPDCADCLI.Value=1;
CB_CADCON.Checked   :=DM1.Tb_PargerPDCADCON.Value=1;
CB_CADCV.Checked    :=DM1.Tb_PargerPDCADCV.Value=1;
CB_CADFOR.Checked   :=DM1.Tb_PargerPDCADFOR.Value=1;
CB_CADGRU.Checked   :=DM1.Tb_PargerPDCADGRU.Value=1;
CB_CADLOC.Checked   :=DM1.Tb_PargerPDCADLOC.Value=1;
CB_CADPRO.Checked   :=DM1.Tb_PargerPDCADPRO.Value=1;
CB_CADRAM.Checked   :=DM1.Tb_PargerPDCADRAM.Value=1;
CB_CADRED.Checked   :=DM1.Tb_PargerPDCADRED.Value=1;
CB_CADTP.Checked    :=DM1.Tb_PargerPDCADTP.Value=1;
CB_CADTRA.Checked   :=DM1.Tb_PargerPDCADTRA.Value=1;
CB_CADUSR.Checked       :=DM1.Tb_PargerPDCADUSR.Value=1;
CB_CADVEN.Checked       :=DM1.Tb_PargerPDCADVEN.Value=1;
CB_CADSUP.Checked       :=DM1.Tb_PargerPDCADSUP.Value=1;
CB_CliPed.Checked       :=DM1.Tb_PargerPCLIPED.Value=1;
CB_PVPED.Checked        :=DM1.Tb_PargerPPVPED.Value=1;
CB_PUZERO.Checked       :=DM1.Tb_PargerPPUZERO.Value=1;
CB_FORPEDPAD.ItemIndex  :=DM1.Tb_PargerPFORPEDPAD.AsInteger;
mforpedpad               :=DM1.Tb_PargerPFORPEDPAD.AsInteger;

CB_FORPROPAD.Checked    :=DM1.Tb_PargerPFORPROPAD.Value=1;
CB_PEDIDOCOMPRA.ItemIndex := DM1.Tb_PargerPCOMPRAPADRAO.AsInteger;

mPedidocompra  :=DM1.Tb_PargerPCOMPRAPADRAO.AsInteger;

CB_CONSPROPED.Checked   :=DM1.Tb_PargerPCONSPROPED.Value=1;
CB_LSEPMOD02.Checked    :=DM1.Tb_PargerPLSEPMOD02.Value=1;
CB_LORCMOD02.Checked    :=DM1.Tb_PargerPLORCMOD02.Value=1;
CB_VALEMOD02.Checked    :=DM1.Tb_PargerPLVALEMOD02.Value=1;

CB_LSEPSEP_ORDEM.Checked:=DM1.Tb_PargerPLSEPSEP_ORDEM.Value=1;

CB_AGRUDUP.Checked  :=DM1.Tb_PargerPAGRUDUP.Value=1;
CB_NOTUNI.Checked   :=DM1.Tb_PargerPANOTUNI.Value=1;
CB_PEXTRACUS.Checked:=DM1.Tb_PargerPEXTRACUS.Value=1;

CB_FATDPRO.ItemIndex:=DM1.Tb_PargerPFATDPRO.AsInteger;
CB_VENUSR.Checked   :=DM1.Tb_PargerPVENUSR.Value=1;


CB_TIPPED.Items.Clear;

for x:=0 to high(tab_tped)-1 do
   begin
   CB_TIPPED.Items.Add(tab_tped[x]);
   end;

CB_TIPPED.ItemIndex :=DM1.Tb_PargerPTIPPED.AsInteger;
CB_TIPPED.text      :=CB_TIPPED.Items.Strings[CB_TIPPED.ItemIndex];
CB_MPDISP.Checked    :=DM1.Tb_PargerPMPDISP.Value=1;
CB_MANPCUSFOR.Checked:=DM1.Tb_PargerPMANPCUSFOR.Value=1;
TITSCOM.Text         :=DM1.Tb_PargerPTITSCOM.Value;
PROD_DNOME2.Text     :=DM1.Tb_PargerPPROD_DNOME2.Value;

MANPC.Checked       :=DM1.Tb_PargerPMANPC.Value=1;
CB_UPMC.Checked     :=DM1.Tb_PargerPUPMC.Value=1;
CB_OCUEST.Checked     :=DM1.Tb_PargerPOCUEST.Value=1;
CB_FILPRO.Checked     :=DM1.Tb_PargerPFILPRO.Value=1;
CB_ATPCOFABENT.Checked:=DM1.Tb_PargerPATPCOFABENT.Value=1;
CB_ATUPCUSACABMP.Checked:=DM1.Tb_PargerPATUPCUSACABMP.Value=1;


DEVOL.Checked        :=DM1.Tb_PargerPDEVOL.Value=1;
MOEDA.Text           :=DM1.Tb_PargerpMOEDA.Value;
CODMOE.Text          :=DM1.Tb_PargerPCODMOE.AsString;
MPCASAS.Text         :=DM1.Tb_PargerPCASAS.AsString;
CB_CASASPU.ItemIndex :=DM1.Tb_PargerPCASASPU.AsInteger+1;
CB_CASQTD.ItemIndex  :=DM1.Tb_PargerPCASQTD.AsInteger+1;
CB_CASIND.ItemIndex  :=DM1.Tb_PargerPCASIND.AsInteger+1;
CB_CASPUIND.ItemIndex:=DM1.Tb_PargerPCASPUIND.AsInteger+1;
MQTDLCQP.Text       :=DM1.Tb_PargerPQTDLCQP.AsString;
CB_DEV_TABPV.Text   :=DM1.Tb_PargerPDEV_TABPV.AsString;
QTDDBLOQPED.Text    :=DM1.Tb_PargerPQTDDBLOQPED.AsString;
BLQPCOMENOR_QTD.Text:=DM1.Tb_PargerPBLQPCOMENOR_QTD.AsString;
DEV_CODPV.Text      :=DM1.Tb_PargerPDEV_CODPV.AsString;


//RG_TPACER.ItemIndex :=DM1.Tb_PargerPTPACER.AsInteger;
RG_TIPOTEF.ItemIndex:=DM1.Tb_PargerPTIPOTEF.AsInteger;

//COMVEN.Text         :=FormatFloat('0.00',DM1.Tb_PargerPCOMVEN.Value);
COMTLV.Text         :=FormatFloat('0.00',DM1.Tb_PargerPCOMTLV.Value);
//COMSUP.Text         :=FormatFloat('0.00',DM1.Tb_PargerPCOMSUP.Value);
CB_DEDVD.Checked        :=DM1.Tb_PargerPDEDVD.Value=1;
CB_EXCFP_EXCPED.Checked :=DM1.Tb_PargerPEXCFP_EXCPED.Value=1;
CB_PPEDFPGTO.ItemIndex  :=DM1.Tb_PargerPPEDFPGTO.AsInteger;
CB_PCOPADLIQ.Checked    :=DM1.Tb_PargerPPCOPADLIQ.Value=1;
CB_GRAVPEDBLOQ.ItemIndex:=DM1.Tb_PargerPGRAVPEDBLOQ.AsInteger;
CB_KITPROD.Checked      :=DM1.Tb_PargerPKITPROD.Value=1;
CB_RECALCPEDMAN.Checked :=DM1.Tb_PargerPRECALCPEDMAN.AsFloat=0;
CB_TRODCX.Checked       :=DM1.Tb_PargerPTRODCX.Value=1;
CB_TROEMP100.Checked    :=DM1.Tb_PargerPTROEMP100.Value=1;
CB_LOGUSRPED.Checked    :=DM1.Tb_PargerPLOGUSRPED.Value=1;
CB_HINTPROPED.Checked   :=DM1.Tb_PargerPHINTPROPED.Value=1;
CB_VISMLUC.Checked      :=DM1.Tb_PargerPVISMLUC.Value=0;
CB_ATUCOMPROGRU.Checked :=DM1.Tb_PargerPATUCOMPROGRU.Value=1;
CB_COMISPAD.ItemIndex   :=DM1.Tb_PargerPCOMISPAD.AsInteger;

CB_JNR.Checked          :=DM1.Tb_PargerPDJNR.Value=1;
CB_VISA.Checked         :=DM1.Tb_PargerPVISA.Value=1;
CB_PCOGRA.Checked       :=DM1.Tb_PargerPPCOGRA.Value=1;
CB_ANVISA.Checked       :=DM1.Tb_PargerPANVISA.Value=1;
CB_REDE.Checked         :=DM1.Tb_PargerPREDE.Value=1;
CB_CONV.Checked         :=DM1.Tb_PargerPCONV.Value=1;
CB_CLIOINF.Checked      :=DM1.Tb_PargerPCLIOINF.Value=1;
CB_LCVM.Checked         :=DM1.Tb_PargerPLCVM.Value=1;
RG_CADCLITAXC.ItemIndex :=DM1.Tb_PargerPCADCLITAXC.AsInteger;
CB_DCB.Checked          :=DM1.Tb_PargerPCODDBC.Value=1;
CB_PRZVAL.Checked       :=DM1.Tb_PargerPPRZVAL.Value=1;
CB_CODLOC.Checked       :=DM1.Tb_PargerPCODLOC.Value=1;
CB_CODBAI.Checked       :=DM1.Tb_PargerPCODBAI.Value=1;
MANDUPREC_AUT.Checked   :=DM1.Tb_PargerPMANDUPREC_AUT.Value=1;
MANDUPPAG_AUT.Checked   :=DM1.Tb_PargerPMANDUPPAG_AUT.Value=1;

CB_PDQPCOP.ItemIndex    :=DM1.Tb_PargerPDQPCOP.AsInteger-1;
CAMINHO.Text            :=DM1.Tb_PargerPCAMINHO.Value;
CB_TAMJPG.Checked       :=DM1.Tb_PargerPTAMJPG.Value=1;
JPGTAM.Text             :=DM1.Tb_PargerPTAMJPGTAM.AsString;
JPGALT.Text             :=DM1.Tb_PargerPTAMJPGALT.AsString;

CB_UPALNUM.Checked:=DM1.Tb_PargerPUPALNUM.Value=1;
CB_TIPOAJUDA.Checked  :=DM1.Tb_PargerPTIPOAJUDA.Value=1;

CB_ONCHANGEPRO.Checked  :=DM1.Tb_PargerPONCHAGEPRO.Value=1;
CB_ONCHANGECLI.Checked  :=DM1.Tb_PargerPONCHANGECLI.Value=1;
CB_ONCHANGELOC.Checked  :=DM1.Tb_PargerPONCHANGELOC.Value=1;
CB_ONCHANGEBAI.Checked  :=DM1.Tb_PargerPONCHANGEBAI.Value=1;
CB_ONCHANGEPV.Checked   :=DM1.Tb_PargerPONCHANGEPV.Value=1;
CB_ONCHANGEVEND.Checked :=DM1.Tb_PargerPONCHANGEVEND.Value=1;
CB_ONCHANGEUSR.Checked  :=DM1.Tb_PargerPONCHANGUSR.Value=1;
CB_ONCHANGECAR.Checked  :=DM1.Tb_PargerPONCHANGECAR.Value=1;
CB_ONCHANGEFUN.Checked  :=DM1.Tb_PargerPONCHANGFUN.Value=1;
CB_ONCHANGEREDEC.Checked:=DM1.Tb_PargerPONCHANGREDEC.Value=1;
CB_ONCHANGEGPRO.Checked :=DM1.Tb_PargerPONCHANGEGPRO.Value=1;
CB_ONCHANGERPRO.Checked :=DM1.Tb_PargerPONCHANGRPRO.Value=1;
CB_ONCHANGETPRO.Checked :=DM1.Tb_PargerPONCHANGETPRO.Value=1;
CB_ONCHANGECPRO.Checked :=DM1.Tb_PargerPONCHANGECPRO.Value=1;
CB_ONCHANGERCLI.Checked :=DM1.Tb_PargerPONCHANGERCLI.Value=1;
CB_ONCHANGEGPRO.Checked :=DM1.Tb_PargerPONCHANGEGPRO.Value=1;
CB_ONCHANGESUP.Checked  :=DM1.Tb_PargerPONCHANGESUP.Value=1;
CB_ONCHANGEUF.Checked   :=DM1.Tb_PargerPONCHANGEUF.Value=1;
CB_ONCHANGECV.Checked   :=DM1.Tb_PargerPONCHANGECV.Value=1;
CB_ONCHANGEFOR.Checked  :=DM1.Tb_PargerPONCHANGEFOR.Value=1;
CB_ONCHANGEDCB.Checked  :=DM1.Tb_PargerPONCHANGEDBC.Value=1;
CB_ONCHANGEDEPCX.Checked:=DM1.Tb_PargerPONCHANGEDEPCX.Value=1;
CB_ONCHANGECCU.Checked  :=DM1.Tb_PargerPONCHANGECCU.Value=1;


////// MOSTRAR DEGRADE
{if DM1.Tb_PargerPUSA_DEGRADE.Value <> 1 then
   CB_DEGRADE.Checked       := false
   else CB_DEGRADE.Checked  := true;
//////////////////////

////// MOSTRAR TIPO MENU
TIPO_MENU.ItemIndex := DM1.Tb_PargerPTIPOMENU.AsInteger;

if DM1.Tb_PargerPTIPOMENU.AsInteger in [0,1,2] then
begin
    if DM1.Tb_PargerPTIPOMENU.Value = 0 then
    bEGIN
        IMAGE2.Visible       := TRUE;
        IMAGE2.Height        := 238;
        IMAGE2.Top           := 249;

        IMAGE1.Visible       := true;
        IMAGE1.Height        := 249;
        IMAGE1.TOP           := 1;

    END else
    if DM1.Tb_PargerPTIPOMENU.Value = 1 then
    BEGIN
        IMAGE2.Visible       := true;
        IMAGE2.Align         := alClient;
        IMAGE1.Visible       := FALSE;
    END ELSE
    if DM1.Tb_PargerPTIPOMENU.Value = 2 then
    BEGIN
        IMAGE1.Visible       := true;
        IMAGE1.Align         := alClient;
        IMAGE2.Visible       := FALSE;
    END;

end;
IF tipo_menu.ItemIndex <0 THEN
BEGIN
    IMAGE2.Visible       := true;
    IMAGE2.Align         := alClient;
    IMAGE1.Visible       := FALSE;
END;
//////////////////////
try
IF DM1.Tb_PargerPIMAGEM_DEGRADE.Value <> '' THEN
   if FileExists('c:\sge\image20.jpg') then
      CB_IMAGEM_DEGRADE.Picture.LoadFromFile('C:\SGE\IMAGE20.JPG');
//      CB_IMAGEM_DEGRADE.Picture.Graphic.LoadFromFile(DM1.Tb_PargerPIMAGEM_DEGRADE.Value);
except

end;          }

CB_PEXTRAMEN.Checked:=DM1.Tb_PargerPEXTRAMEN.Value=1;
CB_COMEMP.Checked   :=DM1.Tb_PargerPCOMEMP.Value=1;
CB_FORMACE.Checked  :=DM1.Tb_PargerPFORMACE.AsInteger=0;

CB_ATIVARTODAS.Checked :=DM1.Tb_PargerPATIVARTODAS.AsInteger=0;


CB_MTE.Checked         :=DM1.Tb_PargerPMTE.AsInteger=2;

CB_FATDPRO.ItemIndex :=DM1.Tb_PargerPFATDPRO.AsInteger;
PALNUM.Text         :=DM1.Tb_PargerPPALNUM.Value;
CB_UREGMS.Checked   :=DM1.Tb_PargerPUREGMS.Value=1;
CB_UPISCOF.Checked  :=DM1.Tb_PargerPUPISCOF.Value=1;
CB_UTABICM.Checked  :=DM1.Tb_PargerPUTABICM.Value=1;
CB_UPVESP.Checked   :=DM1.Tb_PargerPUPVESP.Value=0;
CB_FOLHA.Checked    :=DM1.Tb_PargerPUFOLHA.Value=1;
CB_IMOBIL.Checked   :=DM1.Tb_PargerPUIMOBIL.Value=1;
CB_CONVEI.Checked   :=DM1.Tb_PargerPUCONVEI.Value=1;
CB_ECFDIR.Checked   :=DM1.Tb_PargerPECFDIR.Value=1;
CB_ECFCAI.Checked      :=DM1.Tb_PargerPECFCAI.Value=1;
CB_EXPMOV_EXC.ItemIndex:=DM1.Tb_PargerPEXPMOV_EXC.AsInteger;
//CB_PCHQFC.Checked      :=DM1.Tb_Pargerpc ECFCAI.Value=1;
//lindomar
CB_EXPMOV_EXC.ItemIndex:=DM1.Tb_PargerPEXPMOV_EXC.AsInteger;

//PCHQFC

CB_ECFSOLCOD.Checked  :=DM1.Tb_PargerPECFSOLCOD.Value=1;
CB_ECFFECCOM.Checked  :=DM1.Tb_PargerPECFFECCOM.Value=1;
RG_INDUSTRIA.ItemIndex:=DM1.Tb_PargerPINDUSTRIA.AsInteger;
RG_IND_TPFORMULA.ItemIndex:=DM1.Tb_PargerPIND_TPFORMULA.AsInteger;

CB_PPADATU.Checked  :=DM1.Tb_PargerPPPADATU.Value=0;

CB_DUPTIP1.Checked:=DM1.Tb_PargerPDUPTIP1.Value=0;
CB_DUPTIP2.Checked:=DM1.Tb_PargerPDUPTIP2.Value=0;
CB_DUPTIP3.Checked:=DM1.Tb_PargerPDUPTIP3.Value=0;
CB_DUPTIP4.Checked:=DM1.Tb_PargerPDUPTIP4.Value=0;
CB_DUPTIP5.Checked:=DM1.Tb_PargerPDUPTIP5.Value=0;
CB_DUPTIP6.Checked:=DM1.Tb_PargerPDUPTIP6.Value=0;
CB_DUPTIP7.Checked:=DM1.Tb_PargerPDUPTIP7.Value=0;
CB_DUPTIP8.Checked:=DM1.Tb_PargerPDUPTIP8.Value=0;
CB_DUPTIP9.Checked:=DM1.Tb_PargerPDUPTIP9.Value=0;
CB_DUPTIP10.Checked:=DM1.Tb_PargerPDUPTIP10.Value=0;
CB_DUPTIP11.Checked:=DM1.Tb_PargerPDUPTIP11.Value=0;
CB_DUPTIP12.Checked:=DM1.Tb_PargerPDUPTIP12.Value=0;
CB_DUPTIP13.Checked:=DM1.Tb_PargerPDUPTIP13.Value=0;
CB_DUPTIP14.Checked:=DM1.Tb_PargerPDUPTIP14.Value=0;
CB_DUPTIP15.Checked:=DM1.Tb_PargerPDUPTIP15.Value=0;
CB_DUPTIP16.Checked:=DM1.Tb_PargerPDUPTIP16.Value=0;
CB_DUPTIP17.Checked:=DM1.Tb_PargerPDUPTIP17.Value=0;
CB_DUPTIP18.Checked:=DM1.Tb_PargerPDUPTIP18.Value=0;
CB_DUPTIP19.Checked:=DM1.Tb_PargerPDUPTIP19.Value=0;
CB_DUPTIP20.Checked:=DM1.Tb_PargerPDUPTIP20.Value=0;
CB_DUPTIP21.Checked:=DM1.Tb_PargerPDUPTIP21.Value=0;
CB_DUPTIP22.Checked:=DM1.Tb_PargerPDUPTIP22.Value=0;
CB_DUPTIP23.Checked:=DM1.Tb_PargerPDUPTIP23.Value=0;
CB_DUPTIP24.Checked:=DM1.Tb_PargerPDUPTIP24.Value=0;
CB_DUPTIP25.Checked:=DM1.Tb_PargerPDUPTIP25.Value=0;
CB_DUPTIP26.Checked:=DM1.Tb_PargerPDUPTIP26.Value=0;
CB_DUPTIP27.Checked:=DM1.Tb_PargerPDUPTIP27.Value=0;
CB_DUPTIP28.Checked:=DM1.Tb_PargerPDUPTIP28.Value=0;
CB_DUPTIP29.Checked:=DM1.Tb_PargerPDUPTIP29.Value=0;


CB_ESTTIP1.Checked:=DM1.Tb_PargerPDESTTIP1.Value=0;
CB_ESTTIP2.Checked:=DM1.Tb_PargerPDESTTIP2.Value=0;
CB_ESTTIP3.Checked:=DM1.Tb_PargerPDESTTIP3.Value=0;
CB_ESTTIP4.Checked:=DM1.Tb_PargerPDESTTIP4.Value=0;
CB_ESTTIP5.Checked:=DM1.Tb_PargerPDESTTIP5.Value=0;
CB_ESTTIP6.Checked:=DM1.Tb_PargerPDESTTIP6.Value=0;
CB_ESTTIP7.Checked:=DM1.Tb_PargerPDESTTIP7.Value=0;
CB_ESTTIP8.Checked:=DM1.Tb_PargerPDESTTIP8.Value=0;
CB_ESTTIP9.Checked:=DM1.Tb_PargerPDESTTIP9.Value=0;
CB_ESTTIP10.Checked:=DM1.Tb_PargerPDESTTIP10.Value=0;
CB_ESTTIP11.Checked:=DM1.Tb_PargerPDESTTIP11.Value=0;
CB_ESTTIP12.Checked:=DM1.Tb_PargerPDESTTIP12.Value=0;
CB_ESTTIP13.Checked:=DM1.Tb_PargerPDESTTIP13.Value=0;
CB_ESTTIP14.Checked:=DM1.Tb_PargerPDESTTIP14.Value=0;
CB_ESTTIP15.Checked:=DM1.Tb_PargerPDESTTIP15.Value=0;
CB_ESTTIP16.Checked:=DM1.Tb_PargerPDESTTIP16.Value=0;
CB_ESTTIP17.Checked:=DM1.Tb_PargerPDESTTIP17.Value=0;
CB_ESTTIP18.Checked:=DM1.Tb_PargerPDESTTIP18.Value=0;
CB_ESTTIP19.Checked:=DM1.Tb_PargerPDESTTIP19.Value=0;
CB_ESTTIP20.Checked:=DM1.Tb_PargerPDESTTIP20.Value=0;
CB_ESTTIP21.Checked:=DM1.Tb_PargerPDESTTIP21.Value=0;
CB_ESTTIP22.Checked:=DM1.Tb_PargerPDESTTIP22.Value=0;
CB_ESTTIP23.Checked:=DM1.Tb_PargerPDESTTIP23.Value=0;
CB_ESTTIP24.Checked:=DM1.Tb_PargerPDESTTIP24.Value=0;
CB_ESTTIP25.Checked:=DM1.Tb_PargerPDESTTIP25.Value=0;
CB_ESTTIP26.Checked:=DM1.Tb_PargerPDESTTIP26.Value=0;
CB_ESTTIP27.Checked:=DM1.Tb_PargerPDESTTIP27.Value=0;
CB_ESTTIP28.Checked:=DM1.Tb_PargerPDESTTIP28.Value=0;
CB_ESTTIP29.Checked:=DM1.Tb_PargerPDESTTIP29.Value=0;


if not DM1.Tb_PargerPCLIVEN.IsNull then
  cb_CliVen.Checked  :=DM1.Tb_PargerPCLIVEN.Value=0;
STATUS_LSEP09.ItemIndex:=DM1.Tb_PargerPSTATUS_LSEP09.AsInteger;
TEXTOBAIXO.Text    :=DM1.Tb_PargerPTEXTOBAIXO.Value;
TEXTOALTO.Text     :=DM1.Tb_PargerPTEXTOALTO.Value;
TEXTOAMBAS.Text    :=DM1.Tb_PargerPTEXTOAMBAS.Value;
if (trim(TEXTOBAIXO.Text)<>'') and (DM1.Tb_PargerPCORTEXBAIXO.AsInteger<>0) then
   TEXTOBAIXO.Font.Color:=DM1.Tb_PargerPCORTEXBAIXO.AsInteger;
if (trim(TEXTOALTO.Text)<>'') and (DM1.Tb_PargerPCORTEXALTO.AsInteger<>0) then
   TEXTOALTO.Font.Color:=DM1.Tb_PargerPCORTEXALTO.AsInteger;
if (trim(TEXTOAMBAS.Text)<>'') and (DM1.Tb_PargerPCORTEXAMBAS.AsInteger<>0) then
   TEXTOAMBAS.Font.Color:=DM1.Tb_PargerPCORTEXAMBAS.AsInteger;
flparger02(0,0,'1');
CB_IGNOR_MINUSCULAS.Checked:=DM4.Tb_ParGer02PG2IGNOR_MINUSCULAS.AsInteger=1;
CB_CONCEXATO.Checked       :=DM4.Tb_ParGer02PG2CONCEXATO.AsInteger=1;
if DM4.Tb_ParGer02PG2USANFE.IsNull then
   CB_USANFE.ItemIndex:=0
else
   CB_USANFE.ItemIndex:=DM4.Tb_ParGer02PG2USANFE.AsInteger;
if trim(DM4.Tb_ParGer02PG2VERSAOXML.AsString)='' then
   CB_VERSAOXML.ItemIndex:=0
else
   begin
   CB_VERSAOXML.Text:=DM4.Tb_ParGer02PG2VERSAOXML.AsString;
   with CB_VERSAOXML do ItemIndex:=Items.IndexOf(CB_VERSAOXML.Text);
   end;


CB_NFETPIMP.Checked:=DM4.Tb_ParGer02PG2NFETPIMP.AsInteger=1;
CB_TPEMIS.ItemIndex:=DM4.Tb_ParGer02PG2NFETPEMIS.AsInteger;
CB_NFEVISALIZAR.Checked:=DM4.Tb_ParGer02PG2NFEVISALIZAR.AsInteger=0;
edt_tamlogomarca.Text  :=DM4.Tb_ParGer02PG2NFE_TAMLOGOMARCA.AsString;
CB_NFEAVISA_MTPIMP.Checked:=DM4.Tb_ParGer02PG2NFEAVISA_MTPIMP.AsInteger=0;


CB_FORMALOTEFAB.ItemIndex     :=DM4.Tb_ParGer02PG2FORMALOTEFAB.AsInteger;
PROXLOTFAB.Text               :=DM4.Tb_ParGer02PG2PROXLOTFAB.AsString;
ULTFORLOTFAB.Text             :=DM4.Tb_ParGer02PG2ULTFORLOTFAB.AsString;
CB_FORMALOTEFAB_MASC.ItemIndex:=DM4.Tb_ParGer02PG2FORMALOTEFAB_MASC.AsInteger;
PASTAENVIO.Text               :=DM4.Tb_ParGer02PG2PASTAENVIO.AsString;
PASTARETORNO.Text             :=DM4.Tb_ParGer02PG2PASTARETORNO.AsString;
edt_NFEPASTAMASTER.Text       :=DM4.Tb_ParGer02PG2NFEPASTAMASTER.AsString;
if trim(edt_NFEPASTAMASTER.Text)='' then
   begin
   DM1.Query1.Close;
   DM1.Query1.sql.Clear;
   DM1.Query1.sql.Add('Update PARGER02 set PG2NFEPASTAMASTER=:NFEPASTAMASTER ');
   DM1.Query1.ParambyName('NFEPASTAMASTER').AsString:=edt_NFEPASTAMASTER.Text;
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end;

VALXMLENVIO.Text              :=DM4.Tb_ParGer02PG2VALXMLENVIO.AsString;
VALXMLRETORNO.Text            :=DM4.Tb_ParGer02PG2VALXMLRETORNO.AsString;
NFEPASTAIMP.Text              :=DM4.Tb_ParGer02PG2NFEPASTAIMP.Value;

CB_PCHQFC.Checked      :=DM4.Tb_ParGer02PG2CHQFC.AsInteger=0;
CB_UTILCQ.Checked      :=DM4.Tb_ParGer02PG2UTILCQ.AsInteger=1;
CB_SENINTUSR.Checked   :=DM4.Tb_ParGer02PG2SENINTUSR.AsInteger=1;
mValidarClick:=false;

if flfilpad(55,'_principal','CPN_TAMFONTEOBSNFE') then
   spn_tamfonteobsnfe.Value:=valint2(DM4.Tb_FilPad2FPVALOR.AsString);

if flfilpad(0,'_principal','CB_MARCA_LSEP') then
   CB_MARCA_LSEP.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';


if flfilpad(0,'_principal','') then
   begin

   if DM4.Tb_FilPad2.Locate('FPCOMP','SERVPEDELE',[]) then
     edt_servpedele.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','DBPEDELE',[]) then
     edt_dbpedele.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','USRPEDELE',[]) then
     edt_userpedele.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','PASSPEDELE',[]) then
     edt_passpedele.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCOMP','SERVNFE',[]) then
      mNFE_HostName:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_NFEFRAME',[]) then
      CB_NFEFRAME.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_LOTE_VENC',[]) then
      CB_LOTE_VENC.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_NLOGO_NFE',[]) then
      CB_NLOGO_NFE.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_EXIBIRMARCA',[]) then
      cb_ExibirMarca.ItemIndex := ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
//      CB_MARCAPRO.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_AVISTASEMDUP',[]) then
      CB_AVISTASEMDUP.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_RAZSOC_CANHOTO',[]) then
      CB_RAZSOC_CANHOTO.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_DESCCOMPSEGLIN',[]) then
      CB_DESCCOMPSEGLIN.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';


   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_PMC',[]) then
      CB_PMC.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CONSPRO_FMAN',[]) then
      CB_CONSPRO_FMAN.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true'
   else
      CB_CONSPRO_FMAN.Checked:=true;

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_TROCARMERDIG',[]) then
      CB_TROCARMERDIG.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';


   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_LOCALMD',[]) then
      CB_LOCALMD.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.AsString);


   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_VERSGENFE',[]) then
      CB_VERSGENFE.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='2.0';

   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_SERVICO',[]) then
     edt_Servico.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_USUARIO',[]) then
     edt_Usuario.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_CADPRO',[]) then
     RG_CADPRO.Checked:=iif(DM4.Tb_FilPad2FPVALOR.AsString='true',true,false);

   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_CADCLI',[]) then
     RG_CADCLI.Checked:=iif(DM4.Tb_FilPad2FPVALOR.AsString='true',true,false);

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ALTEMP_EMI',[]) then
      CB_ALTEMP_EMI.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_EMPRESTIMO_PADRAO',[]) then
      begin
      CB_EMPRESTIMO_PADRAO.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
      CB_EMPRESTIMO_PADRAOExit(self);
      end;

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ANDROID',[]) then
      CB_ANDROID.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_DESFP',[]) then
      CB_DESFP.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

   end
else
   begin
   CB_CONSPRO_FMAN.Checked:=true;
   CB_VERSGENFE.Checked:=false;
   end;
if flfilpad(0,'_principal','SERVNFE') then
   edt_servnfe.Text :=DM4.Tb_FilPad2FPVALOR.AsString;

if flfilpad(0,'_principal','SERVNFE02') then
   edt_servnfe02.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
if flfilpad(0,'_principal','SERVNFE03') then
   edt_servnfe03.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

if flfilpad(0,'_principal','TIPO_CERTIFICADO') then
   begin
   with CB_TIPO_CERTIFICADO do ItemIndex:=Items.IndexOf(DM4.Tb_FilPad2FPVALOR.AsString);
   end;

mValidarClick:=true;

//lindomar




//if RG_TPCOM.ItemIndex=0 then
//   begin
//   Label5.Visible:=True;
//   COMVEN.Visible:=True;
//   end
//else
//   begin
//   Label5.Visible:=False;
//   COMVEN.Visible:=False;
//   end;

//if StrToFloat('0'+COMTLV.Text)<>0 then
//   CB_DEDVD.Visible:=True
//else
//   CB_DEDVD.Visible:=False;


fAtualizarTipoPed;

cb_versao_gerenciador_nfe.Text :=fdadosconfig_geral('VERSAO_GERENCIADOR_NFE');

end;

procedure TFrm_Seg.CB_SEGExit(Sender: TObject);
begin
CB_SEG.Text:=CB_SEG.Items[CB_SEG.ItemIndex];
end;

procedure TFrm_Seg.MPCASASExit(Sender: TObject);
begin
if ValInt(MPCASAS.Text)>5 then
   begin
   fMensagem('Número de casas muito grande inválido!',0,['0'],0);
   MPCASAS.SetFocus;
   end
else if ValInt(MPCASAS.Text)<0 then
   begin
   fMensagem('Número de casas muito grande inválido!',0,['0'],0);
   MPCASAS.SetFocus;
   end;

end;

procedure TFrm_Seg.COMVENKeyPress(Sender: TObject; var Key: Char);
begin
if key in [',','.'] then
   key:=DecimalSeparator
else
   if not (key in ['0'..'9']) then
      key:=#0;
end;

procedure TFrm_Seg.COMTLVChange(Sender: TObject);
begin
//if Trim(COMTLV.Text)<>'' then
//   CB_DEDVD.Visible:=True
//else
//   CB_DEDVD.Visible:=False;
end;

procedure TFrm_Seg.COMVENExit(Sender: TObject);
begin
//COMVEN.Text:=Formatfloat('0.00',StrtoFloat('0'+COMVEN.Text));
end;

procedure TFrm_Seg.COMTLVExit(Sender: TObject);
begin
COMTLV.Text:=Formatfloat('0.00',StrtoFloat('0'+COMTLV.Text));
end;

procedure TFrm_Seg.COMSUPExit(Sender: TObject);
begin
//COMSUP.Text:=Formatfloat('0.00',StrtoFloat('0'+COMSUP.Text));
end;

procedure TFrm_Seg.CB_TIPPEDExit(Sender: TObject);
begin
CB_TIPPED.text:=CB_TIPPED.Items.Strings[CB_TIPPED.ItemIndex];
end;

procedure TFrm_Seg.TITSCOMKeyPress(Sender: TObject; var Key: Char);
begin
if (length(TITSCOM.Text)>7) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_Seg.bbGravarClick(Sender: TObject);
var
y,mopcao: Integer;
mseg: String;
query_temp: TQuery;
begin
fGravarconfig_geral('VERSAO_GERENCIADOR_NFE',cb_versao_gerenciador_nfe.Text);

if CB_UPALNUM.Checked then
   begin
   if length(PALNUM.Text)<>10 then
      begin
      fMensagem('A palavra utilizada para substituir números tem que  ser  digitada'+#13
                +'corretamente com 10 digitos sem repetições. a Sequencia da palavra'+#13
                +'é: 0,1,2,3,4,5,6,7,8,9',0,['0'],0);
      PALNUM.SetFocus;
      exit;
      end;
   if not ftestapalavra(0,PALNUM.Text) then
      begin
      fMensagem('A palavra utilizada para substituir não pode ter espaço!',0,['0'],0);
      PALNUM.SetFocus;
      exit;
      end;
   if not ftestapalavra(1,PALNUM.Text) then
      begin
      fMensagem('A palavra utilizada para substituir não pode ter letras iguais!',0,['0'],0);
      PALNUM.SetFocus;
      exit;
      end;

   end;



{
if Trim(PALNUM.Text)<>'' then
   begin
   if PALNUM.
   end;
}
if Trim(CB_SEG.Text)='' then
   begin
   fMensagem('Favor Informar o Segmento!',0,['0'],0);
   CB_SEG.SetFocus;
   exit;
   end;

mopcao:=ValInt(copy(CB_SEG.Text,1,2));
mseg:=copy(CB_SEG.Text,1,2)+'.';
if CB_Grade.Checked then
   begin
   if (mopcao>0) and (mopcao<4) then
      mseg:=mseg+'01.'
   else if (mopcao>3) and (mopcao<7) then
      mseg:=mseg+'02.'
   else if (mopcao=8) then
      mseg:=mseg+'03.'
   else
      mseg:=mseg+'00.'
   end
else
   mseg:=mseg+'00.';
if CB_PServ.Checked then
   mseg:=mseg+'01'
else
   mseg:=mseg+'00';



flparger02(0,0,'1');
DM4.Tb_parGer02.Edit;
DM4.Tb_ParGer02PG2CONCEXATO.AsInteger        :=iif(CB_CONCEXATO.Checked,1,0);
DM4.Tb_ParGer02PG2USANFE.AsInteger           :=CB_USANFE.ItemIndex;
DM4.Tb_ParGer02PG2VERSAOXML.AsString         :=CB_VERSAOXML.Text;
DM4.Tb_ParGer02PG2NFETPIMP.AsInteger         :=iif(CB_NFETPIMP.Checked,1,0);
DM4.Tb_ParGer02PG2NFETPEMIS.AsInteger        :=CB_TPEMIS.ItemIndex;

DM4.Tb_ParGer02PG2NFEVISALIZAR.AsInteger     :=iif(CB_NFEVISALIZAR.Checked,0,1);
DM4.Tb_ParGer02PG2NFE_TAMLOGOMARCA.Value     :=fSonumero(edt_tamlogomarca.Text);

DM4.Tb_ParGer02PG2NFEAVISA_MTPIMP.AsInteger  :=iif(CB_NFEAVISA_MTPIMP.Checked,0,1);


DM4.Tb_ParGer02PG2FORMALOTEFAB.AsInteger     :=CB_FORMALOTEFAB.ItemIndex;
DM4.Tb_ParGer02PG2FORMALOTEFAB_MASC.AsInteger:=CB_FORMALOTEFAB_MASC.ItemIndex;
DM4.Tb_ParGer02PG2PROXLOTFAB.Value           :=fSonumero(PROXLOTFAB.Text);
DM4.Tb_ParGer02PG2ULTFORLOTFAB.Value         :=ULTFORLOTFAB.Text;
DM4.Tb_ParGer02PG2CHQFC.Value                :=iif(CB_PCHQFC.Checked,0,1);
DM4.Tb_ParGer02PG2UTILCQ.value               :=iif(CB_UTILCQ.Checked,1,0);
DM4.Tb_ParGer02PG2SENINTUSR.AsInteger        :=iif(CB_SENINTUSR.Checked,1,0);

DM4.Tb_ParGer02PG2PASTAENVIO.Value           :=PASTAENVIO.Text;
DM4.Tb_ParGer02PG2PASTARETORNO.Value         :=PASTARETORNO.Text;
DM4.Tb_ParGer02PG2VALXMLENVIO.Value           :=VALXMLENVIO.Text;
DM4.Tb_ParGer02PG2VALXMLRETORNO.Value         :=VALXMLRETORNO.Text;
DM4.Tb_ParGer02PG2NFEPASTAMASTER.Value        :=edt_NFEPASTAMASTER.Text;

DM4.Tb_ParGer02PG2IGNOR_MINUSCULAS.Value:=iif(CB_IGNOR_MINUSCULAS.Checked,1,0);
DM4.Tb_parGer02.Post;


flparger(0,0,'1');

DM1.Tb_ParGer.edit;
DM1.Tb_PargerPSEGMENTO.Value:=mseg;


DM1.Tb_PargerPDCADCAR.Value:=iif(CB_CADCAR.Checked,1,0);
DM1.Tb_PargerPDCADBAI.Value:=iif(CB_CADBAI.Checked,1,0);
DM1.Tb_PargerPDCADCLI.Value:=iif(CB_CADCLI.Checked,1,0);
DM1.Tb_PargerPDCADCON.Value:=iif(CB_CADCON.Checked,1,0);
DM1.Tb_PargerPDCADCV.Value :=iif(CB_CADBAI.Checked,1,0);
DM1.Tb_PargerPDCADFOR.Value:=iif(CB_CADFOR.Checked,1,0);
DM1.Tb_PargerPDCADGRU.Value:=iif(CB_CADGRU.Checked,1,0);
DM1.Tb_PargerPDCADLOC.Value:=iif(CB_CADLOC.Checked,1,0);
DM1.Tb_PargerPDCADPRO.Value:=iif(CB_CADPRO.Checked,1,0);
DM1.Tb_PargerPDCADRAM.Value:=iif(CB_CADRAM.Checked,1,0);
DM1.Tb_PargerPDCADRED.Value:=iif(CB_CADRED.Checked,1,0);
DM1.Tb_PargerPDCADTP.Value :=iif(CB_CADTP.Checked,1,0);
DM1.Tb_PargerPDCADTRA.Value:=iif(CB_CADTRA.Checked,1,0);
DM1.Tb_PargerPDCADUSR.Value :=iif(CB_CADUSR.Checked,1,0);
DM1.Tb_PargerPDCADVEN.Value :=iif(CB_CADVEN.Checked,1,0);
DM1.Tb_PargerPDCADSUP.Value :=iif(CB_CADSUP.Checked,1,0);
DM1.Tb_PargerPCLIPED.Value  :=iif(CB_CliPed.Checked,1,0);
DM1.Tb_PargerPPVPED.Value   :=iif(CB_PVPED.Checked,1,0);
DM1.Tb_PargerPPUZERO.Value  :=iif(CB_PUZERO.Checked,1,0);
DM1.Tb_PargerPFORPEDPAD.Value:=CB_FORPEDPAD.ItemIndex;
DM1.Tb_PargerPFORPROPAD.Value:=iif(CB_FORPROPAD.Checked,1,0);
DM1.Tb_PargerPCONSPROPED.Value:=iif(CB_CONSPROPED.Checked,1,0);
DM1.Tb_PargerPLSEPMOD02.Value:=iif(CB_LSEPMOD02.Checked,1,0);
DM1.Tb_PargerPLSEPSEP_ORDEM.Value:=iif(CB_LSEPSEP_ORDEM.Checked,1,0);
DM1.Tb_PargerPLORCMOD02.Value:=iif(CB_LORCMOD02.Checked,1,0);
DM1.Tb_PargerPLVALEMOD02.Value:=iif(CB_VALEMOD02.Checked,1,0);

DM1.Tb_PargerPAGRUDUP.Value :=iif(CB_AGRUDUP.Checked,1,0);
DM1.Tb_PargerPANOTUNI.Value :=iif(CB_NOTUNI.Checked,1,0);
DM1.Tb_PargerPEXTRACUS.Value:=iif(CB_PEXTRACUS.Checked,1,0);
DM1.Tb_PargerPCOMEMP.Value     :=iif(CB_COMEMP.Checked,1,0);
DM1.Tb_PargerPFORMACE.AsInteger:=iif(CB_FORMACE.Checked,0,1);

DM1.Tb_PargerPATIVARTODAS.Value:=iif(CB_ATIVARTODAS.Checked,0,1);
DM1.Tb_PargerPMTE.Value     :=iif(CB_MTE.Checked,2,0);


DM1.Tb_PargerPFATDPRO.Value   :=CB_FATDPRO.ItemIndex;

DM1.Tb_PargerPVENUSR.Value     :=iif(CB_VENUSR.Checked,1,0);
DM1.Tb_PargerPTIPPED.Value     :=CB_TIPPED.ItemIndex;
DM1.Tb_PargerPCASAS.Value      :=Valint(MPCASAS.Text);
DM1.Tb_PargerPCASASPU.Value    :=CB_CASASPU.ItemIndex-1;
DM1.Tb_PargerPCASQTD.Value     :=CB_CASQTD.ItemIndex-1;
DM1.Tb_PargerPCASIND.Value     :=CB_CASIND.ItemIndex-1;
DM1.Tb_PargerPCASPUIND.Value   :=CB_CASPUIND.ItemIndex-1;
DM1.Tb_PargerPQTDLCQP.Value    :=Valint(MQTDLCQP.Text);
DM1.Tb_PargerPDEV_TABPV.Value  :=DM1.Tb_PargerPDEV_TABPV.Value;
DM1.Tb_PargerPDEV_CODPV.Value  :=DM1.Tb_PargerPDEV_CODPV.Value;
DM1.Tb_PargerPQTDDBLOQPED.Value    :=fsonumero(QTDDBLOQPED.Text);
DM1.Tb_PargerPBLQPCOMENOR_QTD.Value:=fsonumero(BLQPCOMENOR_QTD.Text);




DM1.Tb_PargerPTITSCOM.Value:=TITSCOM.Text;
DM1.Tb_PargerPPROD_DNOME2.Value:=PROD_DNOME2.Text;

DM1.Tb_PargerPMANPC.Value  :=iif(MANPC.Checked,1,0);
DM1.Tb_PargerPUPMC.Value   :=iif(CB_UPMC.Checked,1,0);
DM1.Tb_PargerPOCUEST.Value :=iif(CB_OCUEST.Checked,1,0);
DM1.Tb_PargerPFILPRO.Value :=iif(CB_FILPRO.Checked,1,0);
DM1.Tb_PargerPATPCOFABENT.Value :=iif(CB_ATPCOFABENT.Checked,1,0);
DM1.Tb_PargerPATUPCUSACABMP.Value :=iif(CB_ATUPCUSACABMP.Checked,1,0);


DM1.Tb_PargerPDEVOL.Value  :=iif(DEVOL.Checked,1,0);
if Trim(MOEDA.Text)='' then
   MOEDA.Text:='R$';
if ValInt(CODMOE.Text)<=0 then
   CODMOE.Text:='9';
DM1.Tb_PargerPMOEDA.Value  :=MOEDA.Text;
DM1.Tb_PargerPCODMOE.Value :=ValInt(CODMOE.Text);

//DM1.Tb_ParGerPTPACER.Value :=RG_TPACER.ItemIndex;
DM1.Tb_PargerPTIPOTEF.Value  :=RG_TIPOTEF.ItemIndex;


DM1.Tb_PargerPDEDVD.Value  :=iif(CB_DEDVD.Checked,1,0);
DM1.Tb_PargerPEXCFP_EXCPED.Value:=iif(CB_EXCFP_EXCPED.Checked,1,0);
DM1.Tb_PargerPPEDFPGTO.Value    := CB_PPEDFPGTO.ItemIndex;
DM1.Tb_PargerPPCOPADLIQ.Value   := iif(CB_PCOPADLIQ.Checked,1,0);
DM1.Tb_PargerPGRAVPEDBLOQ.Value := CB_GRAVPEDBLOQ.ItemIndex;
DM1.Tb_PargerPKITPROD.Value     :=iif(CB_KITPROD.Checked,1,0);
DM1.Tb_PargerPRECALCPEDMAN.AsFloat:=iif(CB_RECALCPEDMAN.Checked,0,1);
DM1.Tb_PargerPTRODCX.Value      := iif(CB_TRODCX.Checked,1,0);
DM1.Tb_PargerPTROEMP100.Value   := iif(CB_TROEMP100.Checked,1,0);
DM1.Tb_PargerPLOGUSRPED.Value   := iif(CB_LOGUSRPED.Checked,1,0);
DM1.Tb_PargerPHINTPROPED.Value  := iif(CB_HINTPROPED.Checked,1,0);
DM1.Tb_PargerPVISMLUC.Value     := iif(CB_VISMLUC.Checked,0,1);
DM1.Tb_PargerPATUCOMPROGRU.Value:= iif(CB_ATUCOMPROGRU.Checked,1,0);
DM1.Tb_PargerPCOMISPAD.Value    := CB_COMISPAD.ItemIndex;

DM1.Tb_PargerPDJNR.Value   :=iif(CB_JNR.Checked,1,0);
//DM1.Tb_PargerPCOMVEN.Value :=ValFloat(COMVEN.Text);
DM1.Tb_PargerPCOMTLV.Value :=ValFloat(COMTLV.Text);
//DM1.Tb_PargerPCOMSUP.Value :=ValFloat(COMSUP.Text);
DM1.Tb_PargerPVISA.Value   :=iif(CB_VISA.Checked,1,0);
DM1.Tb_PargerPPCOGRA.Value :=iif(CB_PCOGRA.Checked,1,0);
DM1.Tb_PargerPANVISA.Value :=iif(CB_ANVISA.Checked,1,0);
DM1.Tb_PargerPREDE.Value   :=iif(CB_REDE.Checked,1,0);
DM1.Tb_PargerPCONV.Value   :=iif(CB_CONV.Checked,1,0);
DM1.Tb_PargerPCLIOINF.Value:=iif(CB_CLIOINF.Checked,1,0);
DM1.Tb_PargerPLCVM.Value   :=iif(CB_LCVM.Checked,1,0);
DM1.Tb_PargerPCADCLITAXC.Value:=RG_CADCLITAXC.ItemIndex;
DM1.Tb_PargerPCODDBC.Value :=iif(CB_DCB.Checked,1,0);
DM1.Tb_PargerPPRZVAL.Value :=iif(CB_PRZVAL.Checked,1,0);
DM1.Tb_PargerPMANDUPREC_AUT.Value:=iif(MANDUPREC_AUT.Checked,1,0);
DM1.Tb_PargerPMANDUPPAG_AUT.Value:=iif(MANDUPPAG_AUT.Checked,1,0);

if (DM1.Tb_PargerPCODLOC.Value=0) and (CB_CODLOC.Checked) then
   fSegCidadeNomeCodigo(0);

DM1.Tb_PargerPCODLOC.Value :=iif(CB_CODLOC.Checked,1,0);
if (DM1.Tb_PargerPCODBAI.Value=0) and (CB_CODBAI.Checked) then
   fSegbairroNomeCodigo(0);
DM1.Tb_PargerPCODBAI.Value :=iif(CB_CODBAI.Checked,1,0);

DM1.Tb_PargerPDQPCOP.AsInteger:=CB_PDQPCOP.ItemIndex+1;
DM1.Tb_PargerPCAMINHO.Value:=CAMINHO.Text;
DM1.Tb_PargerPTAMJPG.Value :=iif(CB_TAMJPG.Checked,1,0);
DM1.Tb_PargerPTAMJPGTAM.Value:=fsonumero(JPGTAM.Text);
DM1.Tb_PargerPTAMJPGALT.Value:=fsonumero(JPGALT.Text);

DM1.Tb_PargerPTIPOAJUDA.Value:=iif(CB_TIPOAJUDA.Checked,1,0);
DM1.Tb_PargerPUPALNUM.Value:=iif(CB_UPALNUM.Checked,1,0);
DM1.Tb_PargerPMPDISP.Value     :=iif(CB_MPDISP.Checked,1,0);
DM1.Tb_PargerPMANPCUSFOR.Value :=iif(CB_MANPCUSFOR.Checked,1,0);
DM1.Tb_PargerPONCHAGEPRO.Value:=iif(CB_ONCHANGEPRO.Checked,1,0);


DM1.Tb_PargerPONCHANGECLI.Value :=iif(CB_ONCHANGECLI.Checked,1,0);
DM1.Tb_PargerPONCHANGELOC.Value :=iif(CB_ONCHANGELOC.Checked,1,0);
DM1.Tb_PargerPONCHANGEBAI.Value :=iif(CB_ONCHANGEBAI.Checked,1,0);
DM1.Tb_PargerPONCHANGEPV.Value  :=iif(CB_ONCHANGEPV.Checked,1,0);
DM1.Tb_PargerPONCHANGEVEND.Value:=iif(CB_ONCHANGEVEND.Checked,1,0);
DM1.Tb_PargerPONCHANGUSR.Value  :=iif(CB_ONCHANGEUSR.Checked,1,0);
DM1.Tb_PargerPONCHANGECAR.Value :=iif(CB_ONCHANGECAR.Checked,1,0);
DM1.Tb_PargerPONCHANGFUN.Value  :=iif(CB_ONCHANGEFUN.Checked,1,0);
DM1.Tb_PargerPONCHANGREDEC.Value:=iif(CB_ONCHANGEREDEC.Checked,1,0);
DM1.Tb_PargerPONCHANGEGPRO.Value:=iif(CB_ONCHANGEGPRO.Checked,1,0);
DM1.Tb_PargerPONCHANGRPRO.Value :=iif(CB_ONCHANGERPRO.Checked,1,0);
DM1.Tb_PargerPONCHANGETPRO.Value:=iif(CB_ONCHANGETPRO.Checked,1,0);
DM1.Tb_PargerPONCHANGECPRO.Value:=iif(CB_ONCHANGECPRO.Checked,1,0);
DM1.Tb_PargerPONCHANGERCLI.Value:=iif(CB_ONCHANGERCLI.Checked,1,0);
DM1.Tb_PargerPONCHANGEGPRO.Value:=iif(CB_ONCHANGEGPRO.Checked,1,0);
DM1.Tb_PargerPONCHANGESUP.Value :=iif(CB_ONCHANGESUP.Checked,1,0);
DM1.Tb_PargerPONCHANGEUF.Value  :=iif(CB_ONCHANGEUF.Checked,1,0);

DM1.Tb_PargerPONCHANGECV.Value   :=iif(CB_ONCHANGECV.Checked,1,0);
DM1.Tb_PargerPONCHANGEFOR.Value  :=iif(CB_ONCHANGEFOR.Checked,1,0);
DM1.Tb_PargerPONCHANGEDBC.Value  :=iif(CB_ONCHANGEDCB.Checked,1,0);
DM1.Tb_PargerPONCHANGEDEPCX.Value:=iif(CB_ONCHANGEDEPCX.Checked,1,0);
DM1.Tb_PargerPONCHANGECCU.Value  :=iif(CB_ONCHANGECCU.Checked,1,0);

////// PARAMETRO P/ DEGRADE...
//DM1.Tb_PargerPUSA_DEGRADE.Value  :=iif(CB_DEGRADE.Checked,1,0);
///////////////////////////////

DM1.Tb_PargerPEXTRAMEN.Value:=iif(CB_PEXTRAMEN.Checked,1,0);

DM1.Tb_PargerPPALNUM.Value    :=PALNUM.Text;
DM1.Tb_PargerPUREGMS.Value    :=iif(CB_UREGMS.Checked,1,0);
DM1.Tb_PargerPUPISCOF.Value   :=iif(CB_UPISCOF.Checked,1,0);
DM1.Tb_PargerPUTABICM.Value   :=iif(CB_UTABICM.Checked,1,0);
DM1.Tb_PargerPUPVESP.Value    :=iif(CB_UPVESP.Checked,0,1);
DM1.Tb_PargerPUFOLHA.Value    :=iif(CB_FOLHA.Checked,1,0);
DM1.Tb_PargerPECFDIR.Value    :=iif(CB_ECFDIR.Checked,1,0);
DM1.Tb_PargerPUIMOBIL.Value   :=iif(CB_IMOBIL.Checked,1,0);
DM1.Tb_PargerPUCONVEI.Value   :=iif(CB_CONVEI.Checked,1,0);
DM1.Tb_PargerPECFSOLCOD.Value :=iif(CB_ECFSOLCOD.Checked,1,0);
DM1.Tb_PargerPECFFECCOM.Value :=iif(CB_ECFFECCOM.Checked,1,0);
DM1.Tb_PargerPECFCAI.Value :=iif(CB_ECFCAI.Checked,1,0);
DM1.Tb_PargerPEXPMOV_EXC.Value:=CB_EXPMOV_EXC.ItemIndex;
DM1.Tb_PargerPINDUSTRIA.Value :=RG_INDUSTRIA.ItemIndex;
DM1.Tb_PargerPIND_TPFORMULA.Value:=RG_IND_TPFORMULA.ItemIndex;
DM1.Tb_PargerPPPADATU.Value   :=iif(CB_PPADATU.Checked,0,1);
DM1.Tb_PargerPDUPTIP1.Value   :=iif(CB_DUPTIP1.Checked,0,1);
DM1.Tb_PargerPDUPTIP2.Value   :=iif(CB_DUPTIP2.Checked,0,1);
DM1.Tb_PargerPDUPTIP3.Value   :=iif(CB_DUPTIP3.Checked,0,1);
DM1.Tb_PargerPDUPTIP4.Value   :=iif(CB_DUPTIP4.Checked,0,1);
DM1.Tb_PargerPDUPTIP5.Value   :=iif(CB_DUPTIP5.Checked,0,1);
DM1.Tb_PargerPDUPTIP6.Value   :=iif(CB_DUPTIP6.Checked,0,1);
DM1.Tb_PargerPDUPTIP7.Value   :=iif(CB_DUPTIP7.Checked,0,1);
DM1.Tb_PargerPDUPTIP8.Value   :=iif(CB_DUPTIP8.Checked,0,1);
DM1.Tb_PargerPDUPTIP9.Value   :=iif(CB_DUPTIP9.Checked,0,1);
DM1.Tb_PargerPDUPTIP10.Value   :=iif(CB_DUPTIP10.Checked,0,1);
DM1.Tb_PargerPDUPTIP11.Value   :=iif(CB_DUPTIP11.Checked,0,1);
DM1.Tb_PargerPDUPTIP12.Value   :=iif(CB_DUPTIP12.Checked,0,1);
DM1.Tb_PargerPDUPTIP13.Value   :=iif(CB_DUPTIP13.Checked,0,1);
DM1.Tb_PargerPDUPTIP14.Value   :=iif(CB_DUPTIP14.Checked,0,1);
DM1.Tb_PargerPDUPTIP15.Value   :=iif(CB_DUPTIP15.Checked,0,1);
DM1.Tb_PargerPDUPTIP16.Value   :=iif(CB_DUPTIP16.Checked,0,1);
DM1.Tb_PargerPDUPTIP17.Value   :=iif(CB_DUPTIP17.Checked,0,1);
DM1.Tb_PargerPDUPTIP18.Value   :=iif(CB_DUPTIP18.Checked,0,1);
DM1.Tb_PargerPDUPTIP19.Value   :=iif(CB_DUPTIP19.Checked,0,1);
DM1.Tb_PargerPDUPTIP20.Value   :=iif(CB_DUPTIP20.Checked,0,1);
DM1.Tb_PargerPDUPTIP21.Value   :=iif(CB_DUPTIP21.Checked,0,1);
DM1.Tb_PargerPDUPTIP22.Value   :=iif(CB_DUPTIP22.Checked,0,1);
DM1.Tb_PargerPDUPTIP23.Value   :=iif(CB_DUPTIP23.Checked,0,1);
DM1.Tb_PargerPDUPTIP24.Value   :=iif(CB_DUPTIP24.Checked,0,1);
DM1.Tb_PargerPDUPTIP25.Value   :=iif(CB_DUPTIP25.Checked,0,1);
DM1.Tb_PargerPDUPTIP26.Value   :=iif(CB_DUPTIP26.Checked,0,1);
DM1.Tb_PargerPDUPTIP27.Value   :=iif(CB_DUPTIP27.Checked,0,1);
DM1.Tb_PargerPDUPTIP28.Value   :=iif(CB_DUPTIP28.Checked,0,1);
DM1.Tb_PargerPDUPTIP29.Value   :=iif(CB_DUPTIP29.Checked,0,1);

DM1.Tb_PargerPDESTTIP1.Value  :=iif(CB_ESTTIP1.Checked,0,1);
DM1.Tb_PargerPDESTTIP2.Value  :=iif(CB_ESTTIP2.Checked,0,1);
DM1.Tb_PargerPDESTTIP3.Value  :=iif(CB_ESTTIP3.Checked,0,1);
DM1.Tb_PargerPDESTTIP4.Value  :=iif(CB_ESTTIP4.Checked,0,1);
DM1.Tb_PargerPDESTTIP5.Value  :=iif(CB_ESTTIP5.Checked,0,1);
DM1.Tb_PargerPDESTTIP6.Value  :=iif(CB_ESTTIP6.Checked,0,1);
DM1.Tb_PargerPDESTTIP7.Value  :=iif(CB_ESTTIP7.Checked,0,1);
DM1.Tb_PargerPDESTTIP8.Value  :=iif(CB_ESTTIP8.Checked,0,1);
DM1.Tb_PargerPDESTTIP9.Value  :=iif(CB_ESTTIP9.Checked,0,1);
DM1.Tb_PargerPSTATUS_LSEP09.Value:=STATUS_LSEP09.ItemIndex;
DM1.Tb_PargerPDESTTIP10.Value  :=iif(CB_ESTTIP10.Checked,0,1);
DM1.Tb_PargerPDESTTIP11.Value  :=iif(CB_ESTTIP11.Checked,0,1);
DM1.Tb_PargerPDESTTIP12.Value  :=iif(CB_ESTTIP12.Checked,0,1);
DM1.Tb_PargerPDESTTIP13.Value  :=iif(CB_ESTTIP13.Checked,0,1);
DM1.Tb_PargerPDESTTIP14.Value  :=iif(CB_ESTTIP14.Checked,0,1);
DM1.Tb_PargerPDESTTIP15.Value  :=iif(CB_ESTTIP15.Checked,0,1);
DM1.Tb_PargerPDESTTIP16.Value  :=iif(CB_ESTTIP16.Checked,0,1);
DM1.Tb_PargerPDESTTIP17.Value  :=iif(CB_ESTTIP17.Checked,0,1);
DM1.Tb_PargerPDESTTIP18.Value  :=iif(CB_ESTTIP18.Checked,0,1);
DM1.Tb_PargerPDESTTIP19.Value  :=iif(CB_ESTTIP19.Checked,0,1);
DM1.Tb_PargerPDESTTIP20.Value  :=iif(CB_ESTTIP20.Checked,0,1);
DM1.Tb_PargerPDESTTIP21.Value  :=iif(CB_ESTTIP21.Checked,0,1);
DM1.Tb_PargerPDESTTIP22.Value  :=iif(CB_ESTTIP22.Checked,0,1);
DM1.Tb_PargerPDESTTIP23.Value  :=iif(CB_ESTTIP23.Checked,0,1);
DM1.Tb_PargerPDESTTIP24.Value  :=iif(CB_ESTTIP24.Checked,0,1);
DM1.Tb_PargerPDESTTIP25.Value  :=iif(CB_ESTTIP25.Checked,0,1);
DM1.Tb_PargerPDESTTIP26.Value  :=iif(CB_ESTTIP26.Checked,0,1);
DM1.Tb_PargerPDESTTIP27.Value  :=iif(CB_ESTTIP27.Checked,0,1);
DM1.Tb_PargerPDESTTIP28.Value  :=iif(CB_ESTTIP28.Checked,0,1);
DM1.Tb_PargerPDESTTIP29.Value  :=iif(CB_ESTTIP29.Checked,0,1);
DM1.Tb_PargerPCLIVEN.Value     := iif(cb_CliVen.Checked,0,1);

DM1.Tb_PargerPDEV_TABPV.Value    := CB_DEV_TABPV.Text;
DM1.Tb_PargerPDEV_CODPV.Value    := fsonumero(DEV_CODPV.Text);
DM1.Tb_PargerPTEXTOBAIXO.Value   := TEXTOBAIXO.Text;
DM1.Tb_PargerPTEXTOALTO.Value    := TEXTOALTO.Text;
DM1.Tb_PargerPTEXTOAMBAS.Value   := TEXTOAMBAS.Text;

DM1.Tb_PargerPCOMPRAPADRAO.Value := cb_pedidocompra.ItemIndex;

//PCLIVEN

if (trim(TEXTOBAIXO.Text)<>'') then
   DM1.Tb_PargerPCORTEXBAIXO.Value:=TEXTOBAIXO.Font.Color;
if (trim(TEXTOALTO.Text)<>'')  then
   DM1.Tb_PargerPCORTEXALTO.Value:=TEXTOALTO.Font.Color;
if (trim(TEXTOAMBAS.Text)<>'')  then
   DM1.Tb_PargerPCORTEXAMBAS.Value:=TEXTOAMBAS.Font.Color;

//dm1.Tb_PargerPTIPOMENU.AsInteger := tipo_menu.ItemIndex;

if mforpedpad<>DM1.Tb_PargerPFORPEDPAD.AsInteger then
   begin
   query_temp:=TQuery.Create(nil);
   query_temp.DatabaseName:='SG_ASSOC';
   query_temp.Close;
   query_temp.SQL.Clear;
   query_temp.SQL.Add('Select max(P1CHAVE) from CADP01 where P1LOTSEQ=0'+IntToStr(ls_numped));
   if not DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
      begin
      query_temp.SQL.Add(' and (P1CODEMP=0'+IntToStr(codemp)
                     +' or P1CODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
      end;
   query_temp.Open;
   if query_temp.eof then
      mChavePed:=1
   else
      mChavePed:=query_temp.Fields[0].AsInteger+1;

    query_temp.Close;
    query_temp.SQL.Clear;
    query_temp.SQl.add('Update CADPAR set PNUMPED_LS=0'+IntToStr(ls_numped)
                  +', PNUMPED=0'+IntTostr(mChavePed)+' where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPAR',[]),'',' PCODEMP=0'+IntTostr(codemp)+' and ')
                  +' PCODSEQ=1');
   Try
      query_temp.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,183,'Frm_LotSeq','CADPAR');
      end;
   fSequenceTestaeAjusta('PEDVEN_0',mchaveped);
   freeandnil(query_temp);
   end;

if mPedidocompra<>DM1.Tb_PargerPCOMPRAPADRAO.AsInteger then
   begin
   query_temp:=TQuery.Create(nil);
   query_temp.DatabaseName:='SG_ASSOC';
   query_temp.Close;
   query_temp.SQL.Clear;
    query_temp.SQL.Add('Select max(PF1CHAVE) from CADPF1 where PF1LOTSEQ=0'+IntToStr(ls_numpf));
   if not DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]) then
      begin
      query_temp.SQL.Add(' and (PF1CODEMP=0'+IntToStr(codemp)
                     +' or PF1CODEMP=0+'+iif(codemp>100,IntTostr(codemp-100),intTostr(codemp+100))+')');
      end;
   query_temp.Open;
   if query_temp.eof then
      mChavePed:=1
   else
      mChavePed:=query_temp.Fields[0].AsInteger+1;

    query_temp.Close;
    query_temp.SQL.Clear;
    query_temp.SQl.add('Update CADPAR set PNUMPED_LS=0'+IntToStr(ls_numpf)
                  +', PNUMPF=0'+IntTostr(mChavePed)+' where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPAR',[]),'',' PCODEMP=0'+IntTostr(codemp)+' and ')
                  +' PCODSEQ=1');
   Try
      query_temp.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,183,'Frm_LotSeq','CADPAR');
      end;
   fSequenceTestaeAjusta('PEDVEN_0',mchaveped);
   freeandnil(query_temp);
   end;


fDeletaPadroes(0,'_principal','CB_VERSGENFE');
if CB_VERSGENFE.Checked then
   begin
   fGravaPadroes(0,'CB_VERSGENFE'    ,'checked'   ,'_principal','2.0');
   mNFEVersao:='2.0';
   end
else
   mNFEVersao:='';
DM1.Tb_Parger.Post;
if mAlterouTipoPedido=true then 
   GravarTipoPed;

if dm1.Tb_PargerPCOMEMP.Value=1 then
   pconsemp:=True
else
   pconsemp:=False;
close;
end;

function fSegCidadeNomeCodigo(pTipo: Integer): Boolean;
var
codemp_ant, mlid, mqtd: Integer;

begin
flcadloc(0,0,'');
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select CCODEMP,CCODLOC,CCIDADE,CUF,CCODCLI from CADCLI order by CCODEMP');
DM1.Query2.Open;
DM1.Query4.Close;
DM1.Query4.SQL.Clear;
DM1.Query4.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query4.Params.CreateParam(ftString,'NOMLOC',ptInput);
DM1.Query4.Params.CreateParam(ftString,'EST',ptInput);
DM1.Query4.SQL.add('Select LNOME,LUF,LCODLOC from CADLOC '
                  +' where LCODEMP like :CODEMP '
                  +' and   LNOME  =:NOMLOC '
                  +' and   LUF    =:EST ');
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODCLI',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODLOC',ptInput);
DM1.Query3.SQL.Add('Update CADCLI set CCODLOC=:CODLOC '
                  +' where CCODEMP=:CODEMP '
                  +' and   CCODCLI=:CODCLI ');
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Verificando os Códigos de Cidades dos clientes, Aguarde';
Frm_Agde.gb_progres.Visible:=True;
Frm_Agde.Show;
mqtd:=DM1.Query2.RecordCount;
mlid:=0;
While not DM1.Query2.Eof  do
   begin
   mlid:=mlid+1;
   Frm_Agde.Gauge1.Progress:=mlid*100 div mqtd;
   verteclado(0);
   if Trim(DM1.Query2.Fields[2].Asstring)='' then
      begin
      DM1.Query2.Next;
      Continue;
      end;
   DM1.Query3.Close;
   DM1.Query4.Close;
   if DM1.Qr_Tid.Locate('TINOME','CADLOC',[]) then
      DM1.Query4.ParamByName('CODEMP').AsString:='%'
   else
      DM1.Query4.ParamByName('CODEMP').AsFloat := codemp;
   DM1.Query4.ParamByName('NOMLOC').AsString   := Trim(DM1.Query2.Fields[2].AsString);
   DM1.Query4.ParamByName('EST').AsString      := Trim(DM1.Query2.Fields[3].AsString);
   DM1.Query4.Open;
   if DM1.Query4.Eof then
      begin
      codemp_ant:=codemp;
      codemp    :=DM1.Query2.Fields[0].AsInteger;
      DM1.Tb_Loc.Append;
      DM1.Tb_LocLCODEMP.Value:=codemp_ant;
      DM1.Tb_LocLNOME.Value  :=Trim(DM1.Query2.Fields[2].AsString);
      DM1.Tb_LocLUF.Value    :=Trim(DM1.Query2.Fields[3].AsString);
      DM1.Tb_Loc.Post;
      codemp:=codemp_ant;
      DM1.Query3.ParamByName('CODLOC').AsFloat:=DM1.Tb_LocLCODLOC.Value;
      end
   else
      DM1.Query3.ParamByName('CODLOC').AsFloat:=DM1.Query4.Fields[2].AsFloat;
   DM1.Query3.ParamByName('CODEMP').AsFloat   :=DM1.Query2.Fields[0].AsFloat;
   DM1.Query3.ParamByName('CODCLI').AsFloat   :=DM1.Query2.Fields[4].AsFloat;
   Try
      DM1.Query3.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(11,594,'Frm_Seg','CADCLI');
      end;
   DM1.Query2.Next;
   end;
// endereco de cobrança


// fornecedores
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select FCODEMP,FCODLOC,FCIDADE,FUF,FCODFOR from CADFOR order by FCODEMP');
DM1.Query2.Open;
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODFOR',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODLOC',ptInput);
DM1.Query3.SQL.Add('Update CADFOR set FCODLOC=:CODLOC '
                  +' where FCODEMP=:CODEMP '
                  +' and   FCODFOR=:CODFOR ');
Frm_Agde.Label1.Caption:='Verificando os Códigos de Cidades dos fornecedores, Aguarde';
mqtd:=DM1.Query2.RecordCount;
mlid:=0;
While not DM1.Query2.Eof  do
   begin
   mlid:=mlid+1;
   Frm_Agde.Gauge1.Progress:=mlid*100 div mqtd;
   verteclado(0);
   if Trim(DM1.Query2.Fields[2].AsString)='' then
      begin
      DM1.Query2.Next;
      Continue;
      end;
   DM1.Query3.Close;
   DM1.Query4.Close;
   if DM1.Qr_Tid.Locate('TINOME','CADLOC',[]) then
      DM1.Query4.ParamByName('CODEMP').AsString:='%'
   else
      DM1.Query4.ParamByName('CODEMP').AsFloat := codemp;
   DM1.Query4.ParamByName('NOMLOC').AsString   := Trim(DM1.Query2.Fields[2].AsString);
   DM1.Query4.ParamByName('EST').AsString      := Trim(DM1.Query2.Fields[3].AsString);
   DM1.Query4.Open;
   if DM1.Query4.Eof then
      begin
      codemp_ant:=codemp;
      codemp    :=DM1.Query2.Fields[0].AsInteger;
      DM1.Tb_Loc.Append;
      DM1.Tb_LocLCODEMP.Value:=codemp_ant;
      DM1.Tb_LocLNOME.Value  :=Trim(DM1.Query2.Fields[2].AsString);
      DM1.Tb_LocLUF.Value    :=Trim(DM1.Query2.Fields[3].AsString);
      DM1.Tb_Loc.Post;
      codemp:=codemp_ant;
      DM1.Query3.ParamByName('CODLOC').AsFloat:=DM1.Tb_LocLCODLOC.Value;
      end
   else
      DM1.Query3.ParamByName('CODLOC').AsFloat:=DM1.Query4.Fields[2].AsFloat;
   DM1.Query3.ParamByName('CODEMP').AsFloat   :=DM1.Query2.Fields[0].AsFloat;
   DM1.Query3.ParamByName('CODFOR').AsFloat   :=DM1.Query2.Fields[4].AsFloat;
   Try
      DM1.Query3.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(11,827,'Frm_Seg','CADCLI');
      end;
   DM1.Query2.Next;
   end;
// Vendedores
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select VCODEMP,VCODLOC,VCIDADE,VUF,VCODVEN from CADVEN order by VCODEMP');
DM1.Query2.Open;
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODVEN',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODLOC',ptInput);
DM1.Query3.SQL.Add('Update CADVEN set VCODLOC=:CODLOC '
                  +' where VCODEMP=:CODEMP '
                  +' and   VCODVEN=:CODVEN ');
Frm_Agde.Label1.Caption:='Verificando os Códigos de Cidades dos Vendedores, Aguarde';
mqtd:=DM1.Query2.RecordCount;
mlid:=0;
While not DM1.Query2.Eof  do
   begin
   mlid:=mlid+1;
   Frm_Agde.Gauge1.Progress:=mlid*100 div mqtd;
   verteclado(0);
   if Trim(DM1.Query2.Fields[2].AsString)='' then
      begin
      DM1.Query2.Next;
      Continue;
      end;
   DM1.Query3.Close;
   DM1.Query4.Close;
   if DM1.Qr_Tid.Locate('TINOME','CADLOC',[]) then
      DM1.Query4.ParamByName('CODEMP').AsString:='%'
   else
      DM1.Query4.ParamByName('CODEMP').AsFloat := codemp;
   DM1.Query4.ParamByName('NOMLOC').AsString   := Trim(DM1.Query2.Fields[2].AsString);
   DM1.Query4.ParamByName('EST').AsString      := Trim(DM1.Query2.Fields[3].AsString);
   DM1.Query4.Open;
   if DM1.Query4.Eof then
      begin
      codemp_ant:=codemp;
      codemp    :=DM1.Query2.Fields[0].AsInteger;
      DM1.Tb_Loc.Append;
      DM1.Tb_LocLCODEMP.Value:=codemp_ant;
      DM1.Tb_LocLNOME.Value  :=Trim(DM1.Query2.Fields[2].AsString);
      DM1.Tb_LocLUF.Value    :=Trim(DM1.Query2.Fields[3].AsString);
      DM1.Tb_Loc.Post;
      codemp:=codemp_ant;
      DM1.Query3.ParamByName('CODLOC').AsFloat:=DM1.Tb_LocLCODLOC.Value;
      end
   else
      DM1.Query3.ParamByName('CODLOC').AsFloat:=DM1.Query4.Fields[2].AsFloat;
   DM1.Query3.ParamByName('CODEMP').AsFloat   :=DM1.Query2.Fields[0].AsFloat;
   DM1.Query3.ParamByName('CODVEN').AsFloat   :=DM1.Query2.Fields[4].AsFloat;
   Try
      DM1.Query3.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(11,886,'Frm_Seg','CADCLI');
      end;
   DM1.Query2.Next;
   end;
// Supervisores
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select SCODEMP,SCODLOC,SCIDADE,SUF,SCODSUP from CADSUP order by SCODEMP');
DM1.Query2.Open;
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODSUP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODLOC',ptInput);
DM1.Query3.SQL.Add('Update CADSUP set SCODLOC=:CODLOC '
                  +' where SCODEMP=:CODEMP '
                  +' and   SCODSUP=:CODSUP ');
Frm_Agde.Label1.Caption:='Verificando os Códigos de Cidades dos Supervisores, Aguarde';
mqtd:=DM1.Query2.RecordCount;
mlid:=0;
While not DM1.Query2.Eof  do
   begin
   mlid:=mlid+1;
   Frm_Agde.Gauge1.Progress:=mlid*100 div mqtd;
   verteclado(0);
   if Trim(DM1.Query2.Fields[2].AsString)='' then
      begin
      DM1.Query2.Next;
      Continue;
      end;
   DM1.Query3.Close;
   DM1.Query4.Close;
   if DM1.Qr_Tid.Locate('TINOME','CADLOC',[]) then
      DM1.Query4.ParamByName('CODEMP').AsString:='%'
   else
      DM1.Query4.ParamByName('CODEMP').AsFloat := codemp;
   DM1.Query4.ParamByName('NOMLOC').AsString   := Trim(DM1.Query2.Fields[2].AsString);
   DM1.Query4.ParamByName('EST').AsString      := Trim(DM1.Query2.Fields[3].AsString);
   DM1.Query4.Open;
   if DM1.Query4.Eof then
      begin
      codemp_ant:=codemp;
      codemp    :=DM1.Query2.Fields[0].AsInteger;
      DM1.Tb_Loc.Append;
      DM1.Tb_LocLCODEMP.Value:=codemp_ant;
      DM1.Tb_LocLNOME.Value  :=Trim(DM1.Query2.Fields[2].AsString);
      DM1.Tb_LocLUF.Value    :=Trim(DM1.Query2.Fields[3].AsString);
      DM1.Tb_Loc.Post;
      codemp:=codemp_ant;
      DM1.Query3.ParamByName('CODLOC').AsFloat:=DM1.Tb_LocLCODLOC.Value;
      end
   else
      DM1.Query3.ParamByName('CODLOC').AsFloat:=DM1.Query4.Fields[2].AsFloat;
   DM1.Query3.ParamByName('CODEMP').AsFloat   :=DM1.Query2.Fields[0].AsFloat;
   DM1.Query3.ParamByName('CODSUP').AsFloat   :=DM1.Query2.Fields[4].AsFloat;
   Try
      DM1.Query3.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(11,945,'Frm_Seg','CADCLI');
      end;
   DM1.Query2.Next;
   end;
// Convenios
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select CVCODEMP,CVCODLOC,CVCIDADE,CVUF,CVCODCV from CADCV order by CVCODEMP');
DM1.Query2.Open;
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODCV',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODLOC',ptInput);
DM1.Query3.SQL.Add('Update CADCV set CVCODLOC=:CODLOC '
                  +' where CVCODEMP=:CODEMP '
                  +' and   CVCODCV =:CODCV ');
Frm_Agde.Label1.Caption:='Verificando os Códigos de Cidades dos Convenios, Aguarde';
mqtd:=DM1.Query2.RecordCount;
mlid:=0;
While not DM1.Query2.Eof  do
   begin
   mlid:=mlid+1;
   Frm_Agde.Gauge1.Progress:=mlid*100 div mqtd;
   verteclado(0);
   if Trim(DM1.Query2.Fields[2].AsString)='' then
      begin
      DM1.Query2.Next;
      Continue;
      end;
   DM1.Query3.Close;
   DM1.Query4.Close;
   if DM1.Qr_Tid.Locate('TINOME','CADLOC',[]) then
      DM1.Query4.ParamByName('CODEMP').AsString:='%'
   else
      DM1.Query4.ParamByName('CODEMP').AsFloat := codemp;
   DM1.Query4.ParamByName('NOMLOC').AsString   := Trim(DM1.Query2.Fields[2].AsString);
   DM1.Query4.ParamByName('EST').AsString      := Trim(DM1.Query2.Fields[3].AsString);
   DM1.Query4.Open;
   if DM1.Query4.Eof then
      begin
      codemp_ant:=codemp;
      codemp    :=DM1.Query2.Fields[0].AsInteger;
      DM1.Tb_Loc.Append;
      DM1.Tb_LocLCODEMP.Value:=codemp_ant;
      DM1.Tb_LocLNOME.Value  :=Trim(DM1.Query2.Fields[2].AsString);
      DM1.Tb_LocLUF.Value    :=Trim(DM1.Query2.Fields[3].AsString);
      DM1.Tb_Loc.Post;
      codemp:=codemp_ant;
      DM1.Query3.ParamByName('CODLOC').AsFloat:=DM1.Tb_LocLCODLOC.Value;
      end
   else
      DM1.Query3.ParamByName('CODLOC').AsFloat:=DM1.Query4.Fields[2].AsFloat;
   DM1.Query3.ParamByName('CODEMP').AsFloat   :=DM1.Query2.Fields[0].AsFloat;
   DM1.Query3.ParamByName('CODCV').AsFloat   :=DM1.Query2.Fields[4].AsFloat;
   Try
      DM1.Query3.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(11,1004,'Frm_Seg','CADCLI');
      end;
   DM1.Query2.Next;
   end;
// Funcionarios
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select CFCODEMP,CFCODLOC,CFNOMLOC,CFUF,CFCODFUN from CADFUN order by CFCODEMP');
DM1.Query2.Open;
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODFUN',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODLOC',ptInput);
DM1.Query3.SQL.Add('Update CADFUN set CFCODLOC=:CODLOC '
                  +' where CFCODEMP=:CODEMP '
                  +' and   CFCODFUN=:CODFUN ');
Frm_Agde.Label1.Caption:='Verificando os Códigos de Cidades dos Funcionarios, Aguarde';
mqtd:=DM1.Query2.RecordCount;
mlid:=0;
While not DM1.Query2.Eof  do
   begin
   mlid:=mlid+1;
   Frm_Agde.Gauge1.Progress:=mlid*100 div mqtd;
   verteclado(0);
   if Trim(DM1.Query2.Fields[2].AsString)='' then
      begin
      DM1.Query2.Next;
      Continue;
      end;
   DM1.Query3.Close;
   DM1.Query4.Close;
   if DM1.Qr_Tid.Locate('TINOME','CADLOC',[]) then
      DM1.Query4.ParamByName('CODEMP').AsString:='%'
   else
      DM1.Query4.ParamByName('CODEMP').AsFloat := codemp;
   DM1.Query4.ParamByName('NOMLOC').AsString   := Trim(DM1.Query2.Fields[2].AsString);
   DM1.Query4.ParamByName('EST').AsString      := Trim(DM1.Query2.Fields[3].AsString);
   DM1.Query4.Open;
   if DM1.Query4.Eof then
      begin
      codemp_ant:=codemp;
      codemp    :=DM1.Query2.Fields[0].AsInteger;
      DM1.Tb_Loc.Append;
      DM1.Tb_LocLCODEMP.Value:=codemp_ant;
      DM1.Tb_LocLNOME.Value  :=Trim(DM1.Query2.Fields[2].AsString);
      DM1.Tb_LocLUF.Value    :=Trim(DM1.Query2.Fields[3].AsString);
      DM1.Tb_Loc.Post;
      codemp:=codemp_ant;
      DM1.Query3.ParamByName('CODLOC').AsFloat:=DM1.Tb_LocLCODLOC.Value;
      end
   else
      DM1.Query3.ParamByName('CODLOC').AsFloat:=DM1.Query4.Fields[2].AsFloat;
   DM1.Query3.ParamByName('CODEMP').AsFloat   :=DM1.Query2.Fields[0].AsFloat;
   DM1.Query3.ParamByName('CODFUN').AsFloat   :=DM1.Query2.Fields[4].AsFloat;
   Try
      DM1.Query3.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(11,1064,'Frm_Seg','CADCLI');
      end;
   DM1.Query2.Next;
   end;
// Transportadoras
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select TRCODEMP,TRCODLOC,TRCIDADE,TRUF,TRCODTRA from CADTRA order by TRCODEMP');
DM1.Query2.Open;
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODTRA',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODLOC',ptInput);
DM1.Query3.SQL.Add('Update CADTRA set TRCODLOC=:CODLOC '
                  +' where TRCODEMP=:CODEMP '
                  +' and   TRCODTRA=:CODTRA ');
Frm_Agde.Label1.Caption:='Verificando os Códigos de Cidades das Transportadoras, Aguarde';
mqtd:=DM1.Query2.RecordCount;
mlid:=0;
While not DM1.Query2.Eof  do
   begin
   mlid:=mlid+1;
   Frm_Agde.Gauge1.Progress:=mlid*100 div mqtd;
   verteclado(0);
   if Trim(DM1.Query2.Fields[2].AsString) = '' then
      begin
      DM1.Query2.Next;
      Continue;
      end;
   DM1.Query3.Close;
   DM1.Query4.Close;
   if DM1.Qr_Tid.Locate('TINOME','CADLOC',[]) then
      DM1.Query4.ParamByName('CODEMP').AsString:='%'
   else
      DM1.Query4.ParamByName('CODEMP').AsFloat := codemp;
   DM1.Query4.ParamByName('NOMLOC').AsString   := Trim(DM1.Query2.Fields[2].AsString);
   DM1.Query4.ParamByName('EST').AsString      := Trim(DM1.Query2.Fields[3].AsString);
   DM1.Query4.Open;
   if DM1.Query4.Eof then
      begin
      codemp_ant:=codemp;
      codemp    :=DM1.Query2.Fields[0].AsInteger;
      DM1.Tb_Loc.Append;
      DM1.Tb_LocLCODEMP.Value:=codemp_ant;
      DM1.Tb_LocLNOME.Value  :=Trim(DM1.Query2.Fields[2].AsString);
      DM1.Tb_LocLUF.Value    :=Trim(DM1.Query2.Fields[3].AsString);
      DM1.Tb_Loc.Post;
      codemp:=codemp_ant;
      DM1.Query3.ParamByName('CODLOC').AsFloat:=DM1.Tb_LocLCODLOC.Value;
      end
   else
      DM1.Query3.ParamByName('CODLOC').AsFloat:=DM1.Query4.Fields[2].AsFloat;
   DM1.Query3.ParamByName('CODEMP').AsFloat   :=DM1.Query2.Fields[0].AsFloat;
   DM1.Query3.ParamByName('CODTRA').AsFloat   :=DM1.Query2.Fields[4].AsFloat;
   Try
      DM1.Query3.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(11,1122,'Frm_Seg','CADCLI');
      end;
   DM1.Query2.Next;
   end;

// cobranca
DM1.Query4.Close;
DM1.Query4.SQL.Clear;
DM1.Query4.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query4.Params.CreateParam(ftString,'NOMLOCC',ptInput);
DM1.Query4.Params.CreateParam(ftString,'ESTC',ptInput);
DM1.Query4.SQL.add('Select LNOME,LUF,LCODLOC from CADLOC '
                  +' where LCODEMP like :CODEMP '
                  +' and   LNOME  =:NOMLOCC '
                  +' and   LUF    =:ESTC ');

flcadloc(0,0,'');
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select CCODEMP,CCODLOCC,CCIDADEC,CUFC,CCODCLI from CADCLI order by CCODEMP');
DM1.Query2.Open;

DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODCLI',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODLOCC',ptInput);
DM1.Query3.SQL.Add('Update CADCLI set CCODLOCC=:CODLOCC '
                  +' where CCODEMP=:CODEMP '
                  +' and   CCODCLI=:CODCLI ');
Frm_Agde.Label1.Caption:='Verificando os Códigos de Cidades Cobranca dos clientes, Aguarde';

mqtd:=DM1.Query2.RecordCount;
mlid:=0;
While not DM1.Query2.Eof  do
   begin
   mlid:=mlid+1;
   Frm_Agde.Gauge1.Progress:=mlid*100 div mqtd;
   verteclado(0);
   if Trim(DM1.Query2.Fields[2].Asstring)='' then
      begin
      DM1.Query2.Next;
      Continue;
      end;
   DM1.Query3.Close;
   DM1.Query4.Close;
   if DM1.Qr_Tid.Locate('TINOME','CADLOC',[]) then
      DM1.Query4.ParamByName('CODEMP').AsString:='%'
   else
      DM1.Query4.ParamByName('CODEMP').AsFloat := codemp;
   DM1.Query4.ParamByName('NOMLOCC').AsString   := Trim(DM1.Query2.Fields[2].AsString);
   DM1.Query4.ParamByName('ESTC').AsString      := Trim(DM1.Query2.Fields[3].AsString);
   DM1.Query4.Open;
   if DM1.Query4.Eof then
      begin
      codemp_ant:=codemp;
      codemp    :=DM1.Query2.Fields[0].AsInteger;
      DM1.Tb_Loc.Append;
      DM1.Tb_LocLCODEMP.Value:=codemp_ant;
      DM1.Tb_LocLNOME.Value  :=Trim(DM1.Query2.Fields[2].AsString);
      DM1.Tb_LocLUF.Value    :=Trim(DM1.Query2.Fields[3].AsString);
      DM1.Tb_Loc.Post;
      codemp:=codemp_ant;
      DM1.Query3.ParamByName('CODLOCC').AsFloat:=DM1.Tb_LocLCODLOC.Value;
      end
   else
      DM1.Query3.ParamByName('CODLOCC').AsFloat:=DM1.Query4.Fields[2].AsFloat;
   DM1.Query3.ParamByName('CODEMP').AsFloat   :=DM1.Query2.Fields[0].AsFloat;
   DM1.Query3.ParamByName('CODCLI').AsFloat   :=DM1.Query2.Fields[4].AsFloat;
   Try
      DM1.Query3.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(11,594,'Frm_Seg','CADCLI');
      end;
   DM1.Query2.Next;
   end;




Frm_Agde.Label1.Caption:='Concluido!';
verteclado(0);
Frm_Agde.Free;
result:=True;

end;

function fSegBairroNomeCodigo(pTipo: Integer): Boolean;
var
codemp_ant, mlid, mqtd: Integer;
begin
flcadbai(0,0,'');
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select CCODEMP,CCODBAI,CBAIRRO,CLOG,CCODCLI from CADCLI order by CCODEMP');
DM1.Query2.Open;
DM1.Query4.Close;
DM1.Query4.SQL.Clear;
DM1.Query4.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query4.Params.CreateParam(ftString,'NOMBAI',ptInput);
DM1.Query4.SQL.add('Select BNOME,BSTATUS,BCODBAI from CADBAI '
                  +' where BCODEMP like :CODEMP '
                  +' and   BNOME   =:NOMBAI ');
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODCLI',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODBAI',ptInput);
DM1.Query3.SQL.Add('Update CADCLI set CCODBAI=:CODBAI '
                  +' where CCODEMP=:CODEMP '
                  +' and   CCODCLI=:CODCLI ');
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Verificando os Códigos de Bairros dos Clientes, Aguarde';
Frm_Agde.gb_progres.Visible:=True;
Frm_Agde.Show;

mqtd:=DM1.Query2.RecordCount;
mlid:=0;
While not DM1.Query2.Eof  do
   begin
   mlid:=mlid+1;
   Frm_Agde.Gauge1.Progress:=mlid*100 div mqtd;
   verteclado(0);
   if Trim(DM1.Query2.FieldbyName('CBAIRRO').AsString)='' then
      begin
      DM1.Query2.Next;
      Continue;
      end;
   DM1.Query3.Close;
   DM1.Query4.Close;
   if DM1.Qr_Tid.Locate('TINOME','CADBAI',[]) then
      DM1.Query4.ParamByName('CODEMP').AsString:='%'
   else
      DM1.Query4.ParamByName('CODEMP').AsFloat := codemp;
   DM1.Query4.ParamByName('NOMBAI').AsString   := DM1.Query2.FieldbyName('CBAIRRO').AsString;
   DM1.Query4.Open;
   if DM1.Query4.Eof then
      begin
      codemp_ant:=codemp;
      codemp    :=DM1.Query2.Fields[0].AsInteger;
      DM1.Tb_Bai.Append;
      DM1.Tb_BaiBCODEMP.Value:=codemp_ant;
      DM1.Tb_BaiBNOME.Value  :=DM1.Query2.FieldbyName('CBAIRRO').AsString;
      FAtualizaBanco(1,'CADBAI','BCODEMP',DM1.Tb_BaiBCODEMP.AsString
      ,['BCODBAI'],[DM1.Tb_BaiBCODBAI.AsString]
      ,DM1.Tb_Bai);
      DM1.Tb_Bai.Post;

      codemp:=codemp_ant;
      DM1.Query3.ParamByName('CODBAI').AsFloat:=DM1.Tb_BaiBCODBAI.Value;
      end
   else
      DM1.Query3.ParamByName('CODBAI').AsFloat:=DM1.Query4.Fields[2].AsFloat;
   DM1.Query3.ParamByName('CODEMP').AsFloat   :=DM1.Query2.Fields[0].AsFloat;
   DM1.Query3.ParamByName('CODCLI').AsFloat   :=DM1.Query2.Fields[4].AsFloat;
   Try
      DM1.Query3.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(11,1205,'Frm_Seg','CADCLI');
      end;
   DM1.Query2.Next;
   end;
verteclado(0);

// FORNECEDORES
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select FCODEMP,FCODBAI,FBAIRRO,FNLOG,FCODFOR from CADFOR order by FCODEMP');
DM1.Query2.Open;
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODFOR',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODBAI',ptInput);
DM1.Query3.SQL.Add('Update CADFOR set FCODBAI=:CODBAI '
                  +' where FCODEMP=:CODEMP '
                  +' and   FCODFOR=:CODFOR ');
Frm_Agde.Label1.Caption:='Verificando os Códigos de bairros dos Fornecedores, Aguarde';
mqtd:=DM1.Query2.RecordCount;
mlid:=0;
While not DM1.Query2.Eof  do
   begin
   mlid:=mlid+1;
   Frm_Agde.Gauge1.Progress:=mlid*100 div mqtd;
   verteclado(0);
   if Trim(DM1.Query2.Fields[2].AsString)='' then
      begin
      DM1.Query2.Next;
      Continue;
      end;
   DM1.Query3.Close;
   DM1.Query4.Close;
   if DM1.Qr_Tid.Locate('TINOME','CADBAI',[]) then
      DM1.Query4.ParamByName('CODEMP').AsString:='%'
   else
      DM1.Query4.ParamByName('CODEMP').AsFloat := codemp;
   DM1.Query4.ParamByName('NOMBAI').AsString   := Trim(DM1.Query2.Fields[2].AsString);
   DM1.Query4.Open;
   if DM1.Query4.Eof then
      begin
      codemp_ant:=codemp;
      codemp    :=DM1.Query2.Fields[0].AsInteger;
      DM1.Tb_Bai.Append;
      DM1.Tb_BaiBCODEMP.Value:=codemp_ant;
      DM1.Tb_BaiBNOME.Value  :=Trim(DM1.Query2.Fields[2].AsString);
      FAtualizaBanco(1,'CADBAI','BCODEMP',DM1.Tb_BaiBCODEMP.AsString
      ,['BCODBAI'],[DM1.Tb_BaiBCODBAI.AsString]
      ,DM1.Tb_Bai);
      DM1.Tb_Bai.Post;

      codemp:=codemp_ant;
      DM1.Query3.ParamByName('CODBAI').AsFloat:=DM1.Tb_BaiBCODBAI.Value;
      end
   else
      DM1.Query3.ParamByName('CODBAI').AsFloat:=DM1.Query4.Fields[2].AsFloat;
   DM1.Query3.ParamByName('CODEMP').AsFloat   :=DM1.Query2.Fields[0].AsFloat;
   DM1.Query3.ParamByName('CODFOR').AsFloat   :=DM1.Query2.Fields[4].AsFloat;
   Try
      DM1.Query3.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(11,1264,'Frm_Seg','CADCLI');
      end;
   DM1.Query2.Next;
   end;
verteclado(0);

// Vendedores
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select VCODEMP,VCODBAI,VBAIRRO,VLOG,VCODVEN from CADVEN order by VCODEMP');
DM1.Query2.Open;
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODVEN',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODBAI',ptInput);
DM1.Query3.SQL.Add('Update CADVEN set VCODBAI=:CODBAI '
                  +' where VCODEMP=:CODEMP '
                  +' and   VCODVEN=:CODVEN ');
Frm_Agde.Label1.Caption:='Verificando os Códigos de bairros dos Vendedores, Aguarde';
mqtd:=DM1.Query2.RecordCount;
mlid:=0;
While not DM1.Query2.Eof  do
   begin
   mlid:=mlid+1;
   Frm_Agde.Gauge1.Progress:=mlid*100 div mqtd;
   verteclado(0);
   if Trim(DM1.Query2.Fields[2].AsString)='' then
      begin
      DM1.Query2.Next;
      Continue;
      end;
   DM1.Query3.Close;
   DM1.Query4.Close;
   if DM1.Qr_Tid.Locate('TINOME','CADBAI',[]) then
      DM1.Query4.ParamByName('CODEMP').AsString:='%'
   else
      DM1.Query4.ParamByName('CODEMP').AsFloat := codemp;
   DM1.Query4.ParamByName('NOMBAI').AsString   := Trim(DM1.Query2.Fields[2].AsString);
   DM1.Query4.Open;
   if DM1.Query4.Eof then
      begin
      codemp_ant:=codemp;
      codemp    :=DM1.Query2.Fields[0].AsInteger;
      DM1.Tb_Bai.Append;
      DM1.Tb_BaiBCODEMP.Value:=codemp_ant;
      DM1.Tb_BaiBNOME.Value  :=Trim(DM1.Query2.Fields[2].AsString);
      FAtualizaBanco(1,'CADBAI','BCODEMP',DM1.Tb_BaiBCODEMP.AsString
      ,['BCODBAI'],[DM1.Tb_BaiBCODBAI.AsString]
      ,DM1.Tb_Bai);
      DM1.Tb_Bai.Post;
      
      codemp:=codemp_ant;
      DM1.Query3.ParamByName('CODBAI').AsFloat:=DM1.Tb_BaiBCODBAI.Value;
      end
   else
      DM1.Query3.ParamByName('CODBAI').AsFloat:=DM1.Query4.Fields[2].AsFloat;
   DM1.Query3.ParamByName('CODEMP').AsFloat   :=DM1.Query2.Fields[0].AsFloat;
   DM1.Query3.ParamByName('CODVEN').AsFloat   :=DM1.Query2.Fields[4].AsFloat;
   Try
      DM1.Query3.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(11,1323,'Frm_Seg','CADCLI');
      end;
   DM1.Query2.Next;
   end;
verteclado(0);

// Supervisores
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select SCODEMP,SCODBAI,SBAIRRO,SENDER,SCODSUP from CADSUP order by SCODEMP');
DM1.Query2.Open;
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODSUP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODBAI',ptInput);
DM1.Query3.SQL.Add('Update CADSUP set SCODBAI=:CODBAI '
                  +' where SCODEMP=:CODEMP '
                  +' and   SCODSUP=:CODSUP');
Frm_Agde.Label1.Caption:='Verificando os Códigos de bairros dos Supervisores, Aguarde';
mqtd:=DM1.Query2.RecordCount;
mlid:=0;
While not DM1.Query2.Eof  do
   begin
   mlid:=mlid+1;
   Frm_Agde.Gauge1.Progress:=mlid*100 div mqtd;
   verteclado(0);
   if Trim(DM1.Query2.Fields[2].AsString)='' then
      begin
      DM1.Query2.Next;
      Continue;
      end;
   DM1.Query3.Close;
   DM1.Query4.Close;
   if DM1.Qr_Tid.Locate('TINOME','CADBAI',[]) then
      DM1.Query4.ParamByName('CODEMP').AsString:='%'
   else
      DM1.Query4.ParamByName('CODEMP').AsFloat := codemp;
   DM1.Query4.ParamByName('NOMBAI').AsString   := Trim(DM1.Query2.Fields[2].AsString);
   DM1.Query4.Open;
   if DM1.Query4.Eof then
      begin
      codemp_ant:=codemp;
      codemp    :=DM1.Query2.Fields[0].AsInteger;
      DM1.Tb_Bai.Append;
      DM1.Tb_BaiBCODEMP.Value:=codemp_ant;
      DM1.Tb_BaiBNOME.Value  :=Trim(DM1.Query2.Fields[2].AsString);
      FAtualizaBanco(1,'CADBAI','BCODEMP',DM1.Tb_BaiBCODEMP.AsString
      ,['BCODBAI'],[DM1.Tb_BaiBCODBAI.AsString]
      ,DM1.Tb_Bai);
      DM1.Tb_Bai.Post;

      codemp:=codemp_ant;
      DM1.Query3.ParamByName('CODBAI').AsFloat:=DM1.Tb_BaiBCODBAI.Value;
      end
   else
      DM1.Query3.ParamByName('CODBAI').AsFloat:=DM1.Query4.Fields[2].AsFloat;
   DM1.Query3.ParamByName('CODEMP').AsFloat   :=DM1.Query2.Fields[0].AsFloat;
   DM1.Query3.ParamByName('CODSUP').AsFloat   :=DM1.Query2.Fields[4].AsFloat;
   Try
      DM1.Query3.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(11,1383,'Frm_Seg','CADCLI');
      end;
   DM1.Query2.Next;
   end;
verteclado(0);

// Convenios
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select CVCODEMP,CVCODBAI,CVBAIRRO,CVNLOG,CVCODCV from CADCV order by CVCODEMP');
DM1.Query2.Open;
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODCV',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODBAI',ptInput);
DM1.Query3.SQL.Add('Update CADCV set CVCODBAI=:CODBAI '
                  +' where CVCODEMP=:CODEMP '
                  +' and   CVCODSUP=:CODCV');
Frm_Agde.Label1.Caption:='Verificando os Códigos de bairros dos Convenios, Aguarde';
mqtd:=DM1.Query2.RecordCount;
mlid:=0;
While not DM1.Query2.Eof  do
   begin
   mlid:=mlid+1;
   Frm_Agde.Gauge1.Progress:=mlid*100 div mqtd;
   verteclado(0);
   if Trim(DM1.Query2.Fields[2].AsString)='' then
      begin
      DM1.Query2.Next;
      Continue;
      end;
   DM1.Query3.Close;
   DM1.Query4.Close;
   if DM1.Qr_Tid.Locate('TINOME','CADBAI',[]) then
      DM1.Query4.ParamByName('CODEMP').AsString:='%'
   else
      DM1.Query4.ParamByName('CODEMP').AsFloat := codemp;
   DM1.Query4.ParamByName('NOMBAI').AsString   := Trim(DM1.Query2.Fields[2].AsString);
   DM1.Query4.Open;
   if DM1.Query4.Eof then
      begin
      codemp_ant:=codemp;
      codemp    :=DM1.Query2.Fields[0].AsInteger;
      DM1.Tb_Bai.Append;
      DM1.Tb_BaiBCODEMP.Value:=codemp_ant;
      DM1.Tb_BaiBNOME.Value  :=Trim(DM1.Query2.Fields[2].AsString);
      FAtualizaBanco(1,'CADBAI','BCODEMP',DM1.Tb_BaiBCODEMP.AsString
      ,['BCODBAI'],[DM1.Tb_BaiBCODBAI.AsString]
      ,DM1.Tb_Bai);
      DM1.Tb_Bai.Post;


      codemp:=codemp_ant;
      DM1.Query3.ParamByName('CODBAI').AsFloat:=DM1.Tb_BaiBCODBAI.Value;
      end
   else
      DM1.Query3.ParamByName('CODBAI').AsFloat:=DM1.Query4.Fields[2].AsFloat;
   DM1.Query3.ParamByName('CODEMP').AsFloat   :=DM1.Query2.Fields[0].AsFloat;
   DM1.Query3.ParamByName('CODCV').AsFloat   :=DM1.Query2.Fields[4].AsFloat;
   Try
      DM1.Query3.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(11,1441,'Frm_Seg','CADCLI');
      end;
   DM1.Query2.Next;
   end;
verteclado(0);
// Funcionarios
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select CFCODEMP,CFCODBAI,CFBAIRRO,CFENDERECO,CFCODFUN from CADFUN order by CFCODEMP');
DM1.Query2.Open;
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODFUN',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODBAI',ptInput);
DM1.Query3.SQL.Add('Update CADFUN set CFCODBAI=:CODBAI '
                  +' where CFCODEMP=:CODEMP '
                  +' and   CFCODFUN=:CODFUN');
Frm_Agde.Label1.Caption:='Verificando os Códigos de bairros dos Funcionarios, Aguarde';
mqtd:=DM1.Query2.RecordCount;
mlid:=0;
While not DM1.Query2.Eof  do
   begin
   mlid:=mlid+1;
   Frm_Agde.Gauge1.Progress:=mlid*100 div mqtd;
   verteclado(0);
   if Trim(DM1.Query2.Fields[2].AsString)='' then
      begin
      DM1.Query2.Next;
      Continue;
      end;
   DM1.Query3.Close;
   DM1.Query4.Close;
   if DM1.Qr_Tid.Locate('TINOME','CADBAI',[]) then
      DM1.Query4.ParamByName('CODEMP').AsString:='%'
   else
      DM1.Query4.ParamByName('CODEMP').AsFloat := codemp;
   DM1.Query4.ParamByName('NOMBAI').AsString   := Trim(DM1.Query2.Fields[2].AsString);
   DM1.Query4.Open;
   if DM1.Query4.Eof then
      begin
      codemp_ant:=codemp;
      codemp    :=DM1.Query2.Fields[0].AsInteger;
      DM1.Tb_Bai.Append;
      DM1.Tb_BaiBCODEMP.Value:=codemp_ant;
      DM1.Tb_BaiBNOME.Value  :=Trim(DM1.Query2.Fields[2].AsString);
      FAtualizaBanco(1,'CADBAI','BCODEMP',DM1.Tb_BaiBCODEMP.AsString
      ,['BCODBAI'],[DM1.Tb_BaiBCODBAI.AsString]
      ,DM1.Tb_Bai);
      DM1.Tb_Bai.Post;

      codemp:=codemp_ant;
      DM1.Query3.ParamByName('CODBAI').AsFloat:=DM1.Tb_BaiBCODBAI.Value;
      end
   else
      DM1.Query3.ParamByName('CODBAI').AsFloat:=DM1.Query4.Fields[2].AsFloat;
   DM1.Query3.ParamByName('CODEMP').AsFloat   :=DM1.Query2.Fields[0].AsFloat;
   DM1.Query3.ParamByName('CODFUN').AsFloat   :=DM1.Query2.Fields[4].AsFloat;
   Try
      DM1.Query3.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(11,1499,'Frm_Seg','CADCLI');
      end;
   DM1.Query2.Next;
   end;
verteclado(0);
// Tranportadoras
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select TRCODEMP,TRCODBAI,TRBAIRRO,TRNLOG,TRCODTRA from CADTRA order by TRCODEMP');
DM1.Query2.Open;
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODTRA',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODBAI',ptInput);
DM1.Query3.SQL.Add('Update CADTRA set TRCODBAI=:CODBAI '
                  +' where TRCODEMP=:CODEMP '
                  +' and   TRCODTRA=:CODTRA');
Frm_Agde.Label1.Caption:='Verificando os Códigos de bairros das Transportadoras, Aguarde';
mqtd:=DM1.Query2.RecordCount;
mlid:=0;
While not DM1.Query2.Eof  do
   begin
   mlid:=mlid+1;
   Frm_Agde.Gauge1.Progress:=mlid*100 div mqtd;
   verteclado(0);
   if Trim(DM1.Query2.Fields[2].AsString)='' then
      begin
      DM1.Query2.Next;
      Continue;
      end;
   DM1.Query3.Close;
   DM1.Query4.Close;
   if DM1.Qr_Tid.Locate('TINOME','CADBAI',[]) then
      DM1.Query4.ParamByName('CODEMP').AsString:='%'
   else
      DM1.Query4.ParamByName('CODEMP').AsFloat := codemp;
   DM1.Query4.ParamByName('NOMBAI').AsString   := Trim(DM1.Query2.Fields[2].AsString);
   DM1.Query4.Open;
   if DM1.Query4.Eof then
      begin
      codemp_ant:=codemp;
      codemp    :=DM1.Query2.Fields[0].AsInteger;
      DM1.Tb_Bai.Append;
      DM1.Tb_BaiBCODEMP.Value:=codemp_ant;
      DM1.Tb_BaiBNOME.Value  :=Trim(DM1.Query2.Fields[2].AsString);
      FAtualizaBanco(1,'CADBAI','BCODEMP',DM1.Tb_BaiBCODEMP.AsString
      ,['BCODBAI'],[DM1.Tb_BaiBCODBAI.AsString]
      ,DM1.Tb_Bai);
      DM1.Tb_Bai.Post;

      codemp:=codemp_ant;
      DM1.Query3.ParamByName('CODBAI').AsFloat:=DM1.Tb_BaiBCODBAI.Value;
      end
   else
      DM1.Query3.ParamByName('CODBAI').AsFloat:=DM1.Query4.Fields[2].AsFloat;
   DM1.Query3.ParamByName('CODEMP').AsFloat   :=DM1.Query2.Fields[0].AsFloat;
   DM1.Query3.ParamByName('CODTRA').AsFloat   :=DM1.Query2.Fields[4].AsFloat;
   Try
      DM1.Query3.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(11,1558,'Frm_Seg','CADCLI');
      end;
   DM1.Query2.Next;
   end;
verteclado(0);

// bairro de cobranca
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select CCODEMP,CCODBAIC,CBAIRROC,CLOG,CCODCLI from CADCLI order by CCODEMP');
DM1.Query2.Open;
DM1.Query4.Close;
DM1.Query4.SQL.Clear;
DM1.Query4.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query4.Params.CreateParam(ftString,'NOMBAIC',ptInput);
DM1.Query4.SQL.add('Select BNOME,BSTATUS,BCODBAI from CADBAI '
                  +' where BCODEMP like :CODEMP '
                  +' and   BNOME   =:NOMBAIC ');
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODCLI',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODBAIC',ptInput);
DM1.Query3.SQL.Add('Update CADCLI set CCODBAIC=:CODBAIC '
                  +' where CCODEMP=:CODEMP '
                  +' and   CCODCLI=:CODCLI ');
Frm_Agde.Label1.Caption:='Verificando os Códigos de Bairros de Cobranca dos Clientes, Aguarde';

mqtd:=DM1.Query2.RecordCount;
mlid:=0;
While not DM1.Query2.Eof  do
   begin
   mlid:=mlid+1;
   Frm_Agde.Gauge1.Progress:=mlid*100 div mqtd;
   verteclado(0);
   if Trim(DM1.Query2.Fields[2].AsString)='' then
      begin
      DM1.Query2.Next;
      Continue;
      end;
   DM1.Query3.Close;
   DM1.Query4.Close;
   if DM1.Qr_Tid.Locate('TINOME','CADBAI',[]) then
      DM1.Query4.ParamByName('CODEMP').AsString:='%'
   else
      DM1.Query4.ParamByName('CODEMP').AsFloat := codemp;
   DM1.Query4.ParamByName('NOMBAIC').AsString   := Trim(DM1.Query2.Fields[2].AsString);
   DM1.Query4.Open;
   if DM1.Query4.Eof then
      begin
      codemp_ant:=codemp;
      codemp    :=DM1.Query2.Fields[0].AsInteger;
      DM1.Tb_Bai.Append;
      DM1.Tb_BaiBCODEMP.Value:=codemp_ant;
      DM1.Tb_BaiBNOME.Value  :=Trim(DM1.Query2.Fields[2].AsString);
      FAtualizaBanco(1,'CADBAI','BCODEMP',DM1.Tb_BaiBCODEMP.AsString
      ,['BCODBAI'],[DM1.Tb_BaiBCODBAI.AsString]
      ,DM1.Tb_Bai);
      DM1.Tb_Bai.Post;

      codemp:=codemp_ant;
      DM1.Query3.ParamByName('CODBAIC').AsFloat:=DM1.Tb_BaiBCODBAI.Value;
      end
   else
      DM1.Query3.ParamByName('CODBAIC').AsFloat:=DM1.Query4.Fields[2].AsFloat;
   DM1.Query3.ParamByName('CODEMP').AsFloat   :=DM1.Query2.Fields[0].AsFloat;
   DM1.Query3.ParamByName('CODCLI').AsFloat   :=DM1.Query2.Fields[4].AsFloat;
   Try
      DM1.Query3.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(11,1205,'Frm_Seg','CADCLI');
      end;
   DM1.Query2.Next;
   end;

Frm_Agde.Free;
result:=True;
end;

procedure TFrm_Seg.CODMOEExit(Sender: TObject);
begin
CODMOE.Text:=IntToStr(ValInt(CODMOE.Text));
if ValInt(CODMOE.Text)<=0 then
   CODMOE.Text:='9'
else if ValInt(CODMOE.Text)>98 then
   begin
   fMensagem('Código Invalido de Moeda!',0,['0'],0);
   CODMOE.SetFocus;
   exit;
   end;

end;

procedure TFrm_Seg.MOEDAExit(Sender: TObject);
begin
if not fTestaTam(0,02,MOEDA.Text,'') then
   MOEDA.Text:=copy(MOEDA.Text,1,2);
if Trim(MOEDA.Text)='' then
   MOEDA.Text:='R$';

end;

procedure TFrm_Seg.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Seg.sbcamClick(Sender: TObject);
begin

testeform := TFrm_Seg(FindGlobalComponent('frm_defbac'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);

Frm_DefBac.ShowModal;
if trim(Frm_DefBac.mcam)<>'' then
   CAMINHO.Text:=Frm_DefBac.mcam;
FreeAndNIl(Frm_DefBac);

end;

procedure TFrm_Seg.JPGTAMExit(Sender: TObject);
begin
JPGTAM.Text:=fdeixanum(JPGTAM.Text);
if ValInt(JPGTAM.Text)>99999999 then
   JPGTAM.Text:='0';
end;

procedure TFrm_Seg.JPGALTExit(Sender: TObject);
begin
JPGALT.Text:=fdeixanum(JPGALT.Text);
if ValInt(JPGALT.Text)>99999999 then 
   JPGALT.Text:='0';

end;

procedure TFrm_Seg.CB_TAMJPGClick(Sender: TObject);
begin
if CB_TAMJPG.Checked then
   begin
   if ValInt(JPGTAM.Text)=0 then
      JPGTAM.Text:='341';
   if ValInt(JPGALT.Text)=0 then
      JPGALT.Text:='222';
   end
else
   begin
   JPGTAM.Text:='0';
   JPGALT.Text:='0';
   end;

end;

procedure TFrm_Seg.sb_colorBaixoClick(Sender: TObject);
begin

If ColorDialog1.Execute then
   TEXTOBAIXO.Font.Color:=ColorDialog1.Color;

end;

procedure TFrm_Seg.TEXTOBAIXOExit(Sender: TObject);
begin
if Length(TEXTOBAIXO.Text)>10 then
   TEXTOBAIXO.Text:=copy(TEXTOBAIXO.Text,1,10);
end;

procedure TFrm_Seg.TEXTOALTOExit(Sender: TObject);
begin
if Length(TEXTOALTO.Text)>10 then
   TEXTOALTO.Text:=copy(TEXTOALTO.Text,1,10);

end;

procedure TFrm_Seg.TEXTOAMBASExit(Sender: TObject);
begin
if Length(TEXTOAMBAS.Text)>10 then
   TEXTOAMBAS.Text:=copy(TEXTOAMBAS.Text,1,10);

end;

procedure TFrm_Seg.sb_colorAltoClick(Sender: TObject);
begin

If ColorDialog1.Execute then
   TEXTOALTO.Font.Color:=ColorDialog1.Color;

end;

procedure TFrm_Seg.sb_colorAmbasClick(Sender: TObject);
begin

If ColorDialog1.Execute then
   TEXTOAMBAS.Font.Color:=ColorDialog1.Color;

end;

procedure TFrm_Seg.CB_DEGRADEClick(Sender: TObject);
begin
{     IF CB_DEGRADE.Checked THEN
     BEGIN
        CB_IMAGEM_DEGRADE.Visible       := TRUE;
        Bimagem.Visible                 := TRUE;
        try
          if DM1.Tb_PargerPIMAGEM_DEGRADE.Value <> '' then
             CB_IMAGEM_DEGRADE.Picture.Graphic.LoadFromFile('C:\SGE\IMAGE20.JPG');
        except

        end;

     END ELSE
     BEGIN
        CB_IMAGEM_DEGRADE.Visible       := FALSE;
        Bimagem.Visible                 := TRUE;
     END;
 }
end;

procedure TFrm_Seg.BimagemClick(Sender: TObject);
begin

   if Frm_degrade=nil then
      Application.CreateForm(TFrm_degrade, Frm_degrade)
   else
      begin
      Frm_degrade.Free;
      Frm_degrade:=nil;
      Application.CreateForm(TFrm_degrade, Frm_degrade);
      end;
Frm_degrade.ShowModal;
Frm_degrade.Free;
Frm_degrade:=nil;
 
{  try
    if DM1.Tb_PargerPIMAGEM_DEGRADE.Value <> '' then
       if FileExists('c:\sge\image20.jpg') then
          CB_IMAGEM_DEGRADE.Picture.Graphic.LoadFromFile('C:\SGE\IMAGE20.JPG');
  except

  end;

  CB_IMAGEM_DEGRADE.Update;}
end;

procedure TFrm_Seg.tipo_menuClick(Sender: TObject);
begin
////// MOSTRAR TIPO MENU
{if TIPO_MENU.ItemIndex in [0,1,2] then
  begin
    if TIPO_MENU.ItemIndex = 0 then
    bEGIN
        IMAGE2.Align         := alNone;
        IMAGE2.Visible       := TRUE;
        IMAGE2.Height        := 238;
        IMAGE2.Top           := 249;

        IMAGE1.Align         := alNone;
        IMAGE1.Visible       := true;
        IMAGE1.Height        := 249;
        IMAGE1.TOP           := 1;

    END else
    if TIPO_MENU.ItemIndex = 1 then
    BEGIN
        IMAGE2.Visible       := true;
        IMAGE2.Align         := alClient;
        IMAGE1.Visible       := FALSE;
    END ELSE
    if TIPO_MENU.ItemIndex = 2 then
    BEGIN
        IMAGE1.Visible       := true;
        IMAGE1.Align         := alClient;
        IMAGE2.Visible       := FALSE;
    END;

end;}
//////////////////////

end;

procedure TFrm_Seg.MQTDLCQPExit(Sender: TObject);
begin
MQTDLCQP.Text:=fdeixanum2(MQTDLCQP.Text);
if valint(MQTDLCQP.Text)>99 then
   begin
   fMensagem('Quantidade Inválida!',0,['0'],0);
   MQTDLCQP.SetFocus;
   end;
end;

procedure TFrm_Seg.CB_PPEDFPGTOClick(Sender: TObject);
begin
if CB_PPEDFPGTO.ItemIndex>0 then
   begin
   lbl_Dev_PV.Enabled  :=true;
   CB_DEV_TABPV.Enabled:=true;
   DEV_CODPV.Enabled   :=true;
   end
else
   begin
   lbl_Dev_PV.Enabled  :=false;
   CB_DEV_TABPV.Enabled:=false;
   DEV_CODPV.Enabled   :=false;
   end

end;

procedure TFrm_Seg.QTDDBLOQPEDExit(Sender: TObject);
begin
if VAlInt(QTDDBLOQPED.Text)>5 then
   begin
   fMensagem('Número de casas muito grande inválido!',0,['0'],0);
   QTDDBLOQPED.SetFocus;
   end
else if ValInt(QTDDBLOQPED.Text)<0 then
   begin
   fMensagem('Valor nao pode ser negativo!',0,['0'],0);
   QTDDBLOQPED.SetFocus;
   end;


end;

procedure TFrm_Seg.PROD_DNOME2Exit(Sender: TObject);
begin
IF Length(PROD_DNOME2.Text)>40 THEN
   PROD_DNOME2.Text:=copy(PROD_DNOME2.Text,1,40);
end;

procedure TFrm_Seg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Seg.BLQPCOMENOR_QTDExit(Sender: TObject);
begin
if VAlInt(BLQPCOMENOR_QTD.Text)>999 then
   begin
   fMensagem('Valor muito grande inválido!',0,['0'],0);
   BLQPCOMENOR_QTD.SetFocus;
   end
else if ValInt(BLQPCOMENOR_QTD.Text)<0 then
   begin
   fMensagem('Valor nao pode ser negativo!',0,['0'],0);
   BLQPCOMENOR_QTD.SetFocus;
   end;


end;

procedure TFrm_Seg.PROXLOTFABExit(Sender: TObject);
begin
if fsonumero(PROXLOTFAB.Text)>999999999 then
   PROXLOTFAB.Text:='999999999';
if ValFloat(PROXLOTFAB.Text)<1 then
   PROXLOTFAB.Text:='1';
PROXLOTFAB.Text:=fdeixanum2(PROXLOTFAB.Text);

end;

procedure TFrm_Seg.ULTFORLOTFABExit(Sender: TObject);
begin
if length(ULTFORLOTFAB.Text)>10 then
   ULTFORLOTFAB.Text:=copy(ULTFORLOTFAB.Text,1,10);
end;

procedure TFrm_Seg.SBNPastaEnvioClick(Sender: TObject);
begin
testeform := TFrm_Seg(FindGlobalComponent('frm_defbac'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);
Frm_DefBac.ShowModal;

if trim(Frm_DefBac.mcam)<>'' then
   PASTAENVIO.Text:=Frm_DefBac.mcam;
FreeAndNIl(Frm_DefBac);

end;

procedure TFrm_Seg.SBSPastaRetornoClick(Sender: TObject);
begin
testeform := TFrm_Seg(FindGlobalComponent('frm_defbac'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);

if trim(Frm_DefBac.mcam)<>'' then
   PASTARETORNO.Text:=Frm_DefBac.mcam;
FreeAndNIl(Frm_DefBac);

end;

procedure TFrm_Seg.SBNValXmlEnvioClick(Sender: TObject);
begin
testeform := TFrm_Seg(FindGlobalComponent('frm_defbac'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);

Frm_DefBac.ShowModal;

if trim(Frm_DefBac.mcam)<>'' then
   VALXMLENVIO.Text:=Frm_DefBac.mcam;
FreeAndNIl(Frm_DefBac);
end;

procedure TFrm_Seg.SBSValXmlRetornoClick(Sender: TObject);
begin
testeform := TFrm_Seg(FindGlobalComponent('frm_defbac'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);
Frm_DefBac.ShowModal;

if trim(Frm_DefBac.mcam)<>'' then
   VALXMLRETORNO.Text:=Frm_DefBac.mcam;
FreeAndNIl(Frm_DefBac);

end;

procedure TFrm_Seg.CB_LOCALMDClick(Sender: TObject);
begin
if mValidarClick then
   begin
   fDeletaPadroes(0,'_principal','CB_LOCALMD');
   fGravaPadroes(0,'CB_LOCALMD'    ,'itemindex'   ,'_principal',IntTostr(CB_LOCALMD.itemIndex));

   end;

end;

procedure TFrm_Seg.CB_NFEFRAMEClick(Sender: TObject);
begin
if mValidarClick then
   begin
   fDeletaPadroes(0,'_principal','CB_NFEFRAME');
   fGravaPadroes(0,'CB_NFEFRAME'    ,'checked'   ,'_principal',iif(CB_NFEFRAME.Checked,'true','false'));
   end;
end;

procedure TFrm_Seg.CB_TROCARMERDIGClick(Sender: TObject);
begin
if mValidarClick then
   begin
   fDeletaPadroes(0,'_principal','CB_TROCARMERDIG');
   fGravaPadroes(0,'CB_TROCARMERDIG'    ,'checked'   ,'_principal',iif(CB_TROCARMERDIG.Checked,'true','false'));
   end;

end;

procedure TFrm_Seg.CB_CONSPRO_FMANClick(Sender: TObject);
begin
if mValidarClick then
   begin
   fDeletaPadroes(0,'_principal','CB_CONSPRO_FMAN');
   fGravaPadroes(0,'CB_CONSPRO_FMAN'    ,'checked'   ,'_principal',iif(CB_CONSPRO_FMAN.Checked,'true','false'));
   if CB_CONSPRO_FMAN.Checked then
      par_conspro_fman:=true
   else
      par_conspro_fman:=false;
   end;

end;

procedure TFrm_Seg.SBNFEPASTAIMPClick(Sender: TObject);
begin
testeform := TFrm_Seg(FindGlobalComponent('frm_defbac'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);
Frm_DefBac.ShowModal;

if trim(Frm_DefBac.mcam)<>'' then
   NFEPASTAIMP.Text:=Frm_DefBac.mcam;
FreeAndNIl(Frm_DefBac);


end;

procedure TFrm_Seg.CB_PMCClick(Sender: TObject);
begin
if mValidarClick then
   begin
   fDeletaPadroes(0,'_principal','CB_PMC');
   fGravaPadroes(0,'CB_PMC'    ,'checked'   ,'_principal',iif(CB_PMC.Checked,'true','false'));
   end;

end;

procedure TFrm_Seg.CB_NFETPIMPClick(Sender: TObject);
begin
if mValidarClick then
   begin
   if CB_NFETPIMP.Checked then
      edt_tamlogomarca.Text:='173'
   else
      edt_tamlogomarca.Text:='80';
   end;
end;

procedure TFrm_Seg.edt_tamlogomarcaExit(Sender: TObject);
begin
edt_tamlogomarca.Text:=fdeixanum2(edt_tamlogomarca.Text);
end;

procedure TFrm_Seg.CB_RAZSOC_CANHOTOClick(Sender: TObject);
begin
if mValidarClick then
   begin
   fDeletaPadroes(0,'_principal','CB_RAZSOC_CANHOTO');
   fGravaPadroes(0,'CB_RAZSOC_CANHOTO'    ,'checked'   ,'_principal',iif(CB_RAZSOC_CANHOTO.Checked,'true','false'));
   end;

end;

procedure TFrm_Seg.FormActivate(Sender: TObject);
begin
Width:=851;
Top  :=0;
Left := (mtamppal - Width) div 2;

end;

procedure TFrm_Seg.CB_VERSAOXMLExit(Sender: TObject);
begin
CB_VERSAOXML.text:=CB_VERSAOXML.Items.Strings[CB_VERSAOXML.ItemIndex];

end;

procedure TFrm_Seg.CB_USANFEExit(Sender: TObject);
begin
CB_USANFE.text:=CB_USANFE.Items.Strings[CB_USANFE.ItemIndex];

end;

procedure TFrm_Seg.CB_LOTE_VENCClick(Sender: TObject);
begin
if mValidarClick then
   begin
   fDeletaPadroes(0,'_principal','CB_LOTE_VENC');
   fGravaPadroes(0,'CB_LOTE_VENC'    ,'checked'   ,'_principal',iif(CB_LOTE_VENC.Checked,'true','false'));
   end;

end;

procedure TFrm_Seg.SpeedButton1Click(Sender: TObject);
begin
testeform := TFrm_Seg(FindGlobalComponent('frm_defbac'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);
Frm_DefBac.ShowModal;

if trim(Frm_DefBac.mcam)<>'' then
   edt_NFEPASTAMASTER.Text:=Frm_DefBac.mcam;
FreeAndNIl(Frm_DefBac);


end;

procedure TFrm_Seg.CB_DESCCOMPSEGLINClick(Sender: TObject);
begin
if mValidarClick then
   begin
   fDeletaPadroes(0,'_principal','CB_DESCCOMPSEGLIN');
   fGravaPadroes(0,'CB_DESCCOMPSEGLIN'    ,'checked'   ,'_principal',iif(CB_DESCCOMPSEGLIN.Checked,'true','false'));
   end;

end;

procedure TFrm_Seg.CB_NLOGO_NFEClick(Sender: TObject);
begin
if mValidarClick then
   begin
   fDeletaPadroes(0,'_principal','CB_NLOGO_NFE');
   fGravaPadroes(0,'CB_NLOGO_NFE'    ,'checked'   ,'_principal',iif(CB_NLOGO_NFE.Checked,'true','false'));
   end;

end;

procedure TFrm_Seg.edt_ServicoExit(Sender: TObject);
begin
fDeletaPadroes(0,'_principal','EDT_SERVICO');
fGravaPadroes(0,'EDT_SERVICO'    ,'text'   ,'_principal',edt_Servico.Text);

end;

procedure TFrm_Seg.edt_UsuarioExit(Sender: TObject);
begin
fDeletaPadroes(0,'_principal','EDT_USUARIO');
fGravaPadroes(0,'EDT_USUARIO'    ,'text'   ,'_principal',edt_Usuario.Text);
end;

procedure TFrm_Seg.rg_CadProClick(Sender: TObject);
begin
fDeletaPadroes(0,'_principal','RG_CADPRO');
fGravaPadroes(0,'RG_CADPRO'    ,'checked'   ,'_principal',iif(RG_CADPRO.Checked,'true','false'));
end;

procedure TFrm_Seg.CB_ALTEMP_EMIClick(Sender: TObject);
begin
fDeletaPadroes(0,'_principal','CB_ALTEMP_EMI');
fGravaPadroes(0,'CB_ALTEMP_EMI'    ,'checked'   ,'_principal',iif(CB_ALTEMP_EMI.Checked,'true','false'));
end;

procedure TFrm_Seg.bbSalvar_REClick(Sender: TObject);
var
Query_RE: TQuery;
x: Integer;
mSigla: String;
const
sigla_nivel : Array[0..12] of String = (
                                    'MR',
                                    'MP',
                                    'ME',
                                    'PP',
                                    'PA',
                                    'SP',
                                    'PI',
                                    'MUC',
                                    'AI',
                                    'SER',
                                    'OI',
                                    'OUT',
                                    'RES'
                                    );

begin
Query_RE:=TQuery.Create(nil);
Query_RE.DatabaseName:='SG_ASSOC';
Query_RE.Sql.clear;
Query_RE.Sql.Add('Delete from CADPAR_RE ');
try
   Query_RE.ExecSQL;
   fdm1StartCommit;
except
   end;
Query_RE.Close;
Query_RE.Sql.clear;
Query_RE.Sql.Add('insert into CADPAR_RE ('
                +' PRE_CODEMP '
                +',PRE_TIPOPROD '
                +',PRE_SIGLA '
                +',PRE_LOTE '
                +',PRE_ANALISE '
                +',PRE_VALIDAR_LOTE '
                +') values('
                +' :PRE_CODEMP '
                +',:PRE_TIPOPROD '
                +',:PRE_SIGLA '
                +',:PRE_LOTE '
                +',:PRE_ANALISE '
                +',:PRE_VALIDAR_LOTE '
                +')');

mem_cadpar_re.First;
X:=0;
While not mem_cadpar_re.Eof do
   begin
   if trim(mem_cadpar_reSigla.AsString)='' then
     mSigla:=sigla_nivel[x]
   else
     mSigla:=mem_cadpar_reSigla.AsString;

   Query_RE.ParamByName('PRE_CODEMP').AsInteger :=codemp;
   Query_RE.ParamByName('PRE_TIPOPROD').AsString:=mem_cadpar_retipoprod.AsString;
   Query_RE.ParamByName('PRE_SIGLA').AsString   :=mSigla;
   Query_RE.ParamByName('PRE_LOTE').AsString:=mem_cadpar_relote_re.AsString;
   Query_RE.ParamByName('PRE_ANALISE').AsString:=mem_cadpar_reanalise.AsString;
   Query_RE.ParamByName('PRE_VALIDAR_LOTE').AsString:=mem_cadpar_revalidar_lote.AsString;
   try
      Query_RE.ExecSQL;
      fdm1StartCommit;
      fSequenceTestaeAjusta(mSigla+'_'+FormatDateTime('yyyy',pdatasis),IIF(mem_cadpar_reSeq.AsInteger>0,mem_cadpar_reSeq.AsInteger,1));
   except
      end;
   mem_cadpar_re.Next;
   x:=x+1;
   end;
FreeAndNil(Query_RE);
verteclado(0);
MessageDlg('Gravado!',mtInformation,[mbOk],0);


end;

procedure TFrm_Seg.DBGrid1CellClick(Column: TColumn);
begin
if Column.FieldName='lote_re' then
   begin
   mem_cadpar_re.Edit;
   if mem_cadpar_relote_re.AsString = 'S' then
      mem_cadpar_relote_re.AsString := ''
   else mem_cadpar_relote_re.AsString := 'S';
   mem_cadpar_re.Post;
   end;

if Column.FieldName='analise' then
   begin
   mem_cadpar_re.Edit;
   if mem_cadpar_reanalise.AsString = 'S' then
      mem_cadpar_reanalise.AsString := ''
   else mem_cadpar_reanalise.AsString := 'S';
   mem_cadpar_re.Post;
   end;

if Column.FieldName='validar_lote' then
   begin
   mem_cadpar_re.Edit;
   if mem_cadpar_revalidar_lote.AsString = 'S' then
      mem_cadpar_revalidar_lote.AsString := ''
   else mem_cadpar_revalidar_lote.AsString := 'S';
   mem_cadpar_re.Post;
   end;

end;

procedure TFrm_Seg.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
Check: Integer;
R: TRect;
begin
if (Column.FieldName = 'lote_re') or (Column.FieldName = 'analise') or (Column.FieldName = 'validar_lote') then
   begin
   DBGrid1.Canvas.FillRect(Rect);
   Check := 0;
   if Column.FieldName='lote_re' then
      begin
      if mem_cadpar_relote_re.AsString = 'S' then
         Check := DFCS_CHECKED
      else
         Check := 0;
      end
   else if Column.FieldName='analise' then
      begin
      if mem_cadpar_reanalise.AsString = 'S' then
         Check := DFCS_CHECKED
      else
         Check := 0;
      end
   else if Column.FieldName='validar_lote' then
      begin
      if mem_cadpar_revalidar_lote.AsString = 'S' then
         Check := DFCS_CHECKED
      else
         Check := 0;
      end;

   R:=Rect;
   InflateRect(R,-2,-2); // Diminue o tamanho do CheckBox
   DrawFrameControl(DBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
   end;

end;

procedure TFrm_Seg.DBGrid_cadpro_filialExit(Sender: TObject);
begin
if Qr_Cadpro_Filial.State in [dsedit,dsInsert] then
   begin
   if (trim(Qr_Cadpro_FilialCFNOME.AsString)='') or (Qr_Cadpro_FilialCFFILIAL.AsInteger<=0) then
      Qr_Cadpro_Filial.Cancel
   else
      Qr_Cadpro_Filial.Post;   
   end;
end;

procedure TFrm_Seg.Qr_Cadpro_FilialBeforePost(DataSet: TDataSet);
var
query_temp: TQuery;
begin
if (trim(Qr_Cadpro_FilialCFNOME.AsString)='') then
   begin
   MessageDlg('Descrição Campo Obrigatório!',mtWarning,[mbOk],0);
   pc_outfat.ActivePage:=TabSheet3;
   DBGrid_cadpro_filial.SetFocus;
   Abort;
   end;
if Qr_Cadpro_FilialCFFILIAL.AsInteger<1 then
   begin
   MessageDlg('Código da Filial Campo Obrigatório!',mtWarning,[mbOk],0);
   pc_outfat.ActivePage:=TabSheet3;
   DBGrid_cadpro_filial.SetFocus;
   Abort;
   end;
if (mFilial_Ant<>Qr_Cadpro_FilialCFFILIAL.AsInteger) then
   begin
   query_temp:=TQuery.Create(nil);
   query_temp.DatabaseName:='SG_ASSOC';
   query_temp.SQL.Clear;
   query_temp.SQL.Add('Select CFFILIAL,CFNOME from CADPRO_FILIAL where CFCODEMP=0'+IntToStr(codemp)
                     +' and CFFILIAL='+Qr_Cadpro_FilialCFFILIAL.AsString);
   query_temp.Open;
   if not query_temp.IsEmpty then
      begin
      MessageDlg('Filial '+query_temp.FieldbyName('CFFILIAL').AsString+' Nome '+query_temp.FieldbyName('CFNOME').AsString
                +' ja cadastrado anteriomente!',mtWarning,[mbOk],0);
      pc_outfat.ActivePage:=TabSheet3;
      DBGrid_cadpro_filial.SetFocus;
      FreeAndNil(query_temp);
      Abort;
      end;
   FreeAndNil(query_temp);
   end;

if (mNome_Ant<>Qr_Cadpro_FilialCFNOME.AsString) then
   begin
   query_temp:=TQuery.Create(nil);
   query_temp.DatabaseName:='SG_ASSOC';
   query_temp.SQL.Clear;
   query_temp.SQL.Add('Select CFFILIAL,CFNOME from CADPRO_FILIAL where CFCODEMP=0'+IntToStr(codemp)
                     +' and CFNOME=:NOME');
   query_temp.ParamByName('NOME').AsString:=Qr_Cadpro_FilialCFNOME.AsString;
   query_temp.Open;
   if not query_temp.IsEmpty then
      begin
      MessageDlg('Filial '+query_temp.FieldbyName('CFFILIAL').AsString+' Nome '+query_temp.FieldbyName('CFNOME').AsString
                +' ja cadastrado anteriomente!',mtWarning,[mbOk],0);
      pc_outfat.ActivePage:=TabSheet3;
      DBGrid_cadpro_filial.SetFocus;
      FreeAndNil(query_temp);
      Abort;
      end;
   FreeAndNil(query_temp);
   end;

Qr_Cadpro_FilialCFCODEMP.AsInteger:=codemp;

end;

procedure TFrm_Seg.Qr_Cadpro_FilialBeforeEdit(DataSet: TDataSet);
begin
    mFilial_Ant:=Qr_Cadpro_FilialCFFILIAL.AsInteger;
    mNome_Ant  :=Qr_Cadpro_FilialCFNOME.AsString;

end;

procedure TFrm_Seg.Qr_Cadpro_FilialBeforeInsert(DataSet: TDataSet);
begin
    mFilial_Ant:=0;
    mNome_Ant  :='';

end;

procedure TFrm_Seg.c(DataSet: TDataSet);
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

procedure TFrm_Seg.Qr_Cadpro_FilialAfterInsert(DataSet: TDataSet);
var
query_temp: TQuery;
begin
query_temp:=TQuery.Create(nil);
query_temp.DatabaseName:='SG_ASSOC';
query_temp.SQL.Clear;
query_temp.SQL.Add('Select max(CFFILIAL) from CADPRO_FILIAL where CFCODEMP=0'+IntToStr(codemp));
query_temp.Open;
Qr_Cadpro_FilialCFFILIAL.AsInteger:=query_temp.Fields[0].AsInteger+1;
FreeAndNil(query_temp);
end;

procedure TFrm_Seg.DBGrid1DblClick(Sender: TObject);
var
  mSigla: String;
const
  sigla_nivel : Array[0..12] of String = ('MR','MP','ME','PP','PA','SP','PI',
                                          'MUC','AI','SER','OI','OUT','RES');
begin
if (mem_cadpar_relote_re.AsString='S') or (mem_cadpar_reanalise.AsString='S')
   or (mem_cadpar_revalidar_lote.AsString='S') then
  begin
  if DBGrid1.SelectedField=mem_cadpar_renometipo then
    begin
    if trim(mem_cadpar_reSigla.AsString)='' then
      mSigla:=sigla_nivel[valint(copy(mem_cadpar_retipoprod.AsString,1,2))]
    else
      mSigla:=mem_cadpar_reSigla.AsString;
    if not (mem_cadpar_re.State in [dsEdit,dsInsert]) then
      mem_cadpar_re.Edit;
    if mem_cadpar_relote_re.AsString<>'S' then
      begin
      mem_cadpar_reSigla.AsString:='GERAL_';
      dbSigla.ReadOnly:=True;
      end
    else
      begin
      dbSigla.ReadOnly:=False;
      mem_cadpar_reSigla.AsString:=mSigla;
      end;
    mem_cadpar_reSeq.AsInteger:=fSequenceCorrenteValor(mem_cadpar_reSigla.AsString+'_'+FormatDateTime('yyyy',pdatasis));
    pnl_RE.Visible:=True;
    dbSigla.SetFocus;
    end;
  end;    
end;

procedure TFrm_Seg.pnl_REExit(Sender: TObject);
begin
pnl_RE.Visible:=False;
end;

procedure TFrm_Seg.sb(Sender: TObject);
var
  mServidornfe_ant: String;

begin
if mAlterou_Servidor_nfe then
   fGravarServidorNFE;
mServidornfe_ant:=mNFE_HostName;
if fTestarServidor('SERVIDORNFE',edt_servnfe.text) then
   begin
   fDeletaPadroes(0,'_principal','SERVNFE');
   fGravaPadroes(0,'SERVNFE'    ,'text'   ,'_principal',edt_servnfe.Text);
   end;

mNFE_HostName:=mServidornfe_ant

end;



function tFrm_seg.fTestarServidor(pNomeServidor, pEndereco_ip: string): Boolean;





var
  Query_teste : TSQLQuery;
  Query_Cons : TQuery;
  form_nfe_aguarde: TFrm_Nfe_Aguarde;

begin





mNFE_HostName:=pEndereco_ip;

fGravarconfig_geral(pnomeServidor,mNFE_HostName);
result:=true;

if fdadosconfig_geral('VERSAO_GERENCIADOR_NFE')='a partir maio/2017' then
   begin
   Application.createform(TFrm_Nfe_Aguarde, Form_Nfe_Aguarde);
   mendip_servidor_nfe_ativo:=mNFE_HosTName;
   form_nfe_aguarde.mNFEretorno.mentra_operacao:=Nfe_GerenciadorAtivo;
   form_nfe_aguarde.mNFEretorno.mentra_evento:=Nfe_GerenciadorAtivo;
   form_nfe_aguarde.mNFEretorno.mentra_cnpj_emitente:=DM1.Tb_Empcnpj_masc.AsString;
   form_nfe_aguarde.Timer_processar.enabled:=true;
   Form_Nfe_Aguarde.ShowModal;
   if copy(form_nfe_aguarde.mNFEretorno.msaida_cstat_motivo,1,2)='OK' then
      MessageDlg('Servidor Ok!'+#13+'Vencimento do Certificado '+Formatdatetime(fdathor, form_nfe_aguarde.mNFEretorno.msaida_ret_certdigital_venc_dathor) ,mtInformation,[mbOk],0)
   else
      begin
      MessageDlg('Servidor Não Encontrado! '+form_nfe_aguarde.mNFEretorno.msaida_cstat_motivo ,mtError,[mbOk],0);
      result:=false;
      end;

   freeandnil(form_nfe_aguarde);
   end
else
   begin
   // MessageDlg('Servidor HOST='+mNFE_HostName+'- USER='+mNFE_Usuario_Nome+' - DATA='+mNFE_Database,mtInformation,[mbOk],0);
   if not DM_MYSQL.fAbreNFE(0) then
      begin
      MessageDlg('Nome de Servidor Inválido! '+mNFE_HostName ,mtWarning,[mbOk],0);
      result:=false;
      exit;
      end
   else
     begin
     Query_Cons:=TQuery.Create(nil);
     Query_Cons.DatabaseName:='SG_ASSOC';
     Query_Cons.close;
     Query_Cons.SQL.clear;
     Query_Cons.SQL.Add('SELECT PNF_SERVIDOR01,PNF_SERVIDOR02,PNF_SERVIDOR03 '
                       +' FROM CADPAR_NF where PNF_CODEMP=:CODEMP '
                       +' AND PNF_CHAVE=:CHAVE ');
     Query_Cons.ParamByName('CODEMP').Value:=codemp;
     Query_Cons.ParamByName('CHAVE').Value :='SERIE1';
     try
        Query_Cons.Open;
     except
        freeandnil(query_cons);
        result:=false;
        exit;
        end;


      if (Query_Cons.FieldByName('PNF_SERVIDOR01').AsInteger=0) and
         (Query_Cons.FieldByName('PNF_SERVIDOR02').AsInteger=0) and
         (Query_Cons.FieldByName('PNF_SERVIDOR03').AsInteger=0) then
         begin
         MessageDlg('Não ha um servidor de NFE definido!',mtWarning,[mbOK],0);
         freeandnil(query_cons);
         result:=false;
         Exit;
         end;

      Query_teste := TSQLQuery.create(nil);
      Query_teste.SQLConnection:=DM_MYSQL.SQLConnection_NFE;
      Query_teste.Close;
      Query_teste.SQL.Clear;
      Query_teste.SQL.Add('select count(*) from  intersys_cadserv where '
                         +' cs_chave='+Query_Cons.fieldbyname('pnf_servidor01').AsString);
      try
        Query_teste.Open;
        if Query_teste.Fields[0].AsInteger<1 then
          begin
          MessageDlg('ERRO Servidor não encontrado  HOST='+mNFE_HostName+'- USER='+mNFE_Usuario_Nome+' - DATA='+mNFE_Database,mtInformation,[mbOk],0);
          result:=false;
          end
        else
          begin
          MessageDlg('Servidor OK!',mtInformation,[mbOk],0);
          end;
      except
         MessageDlg('Servidor não encontrado!!! HOST='+mNFE_HostName+'- USER='+mNFE_Usuario_Nome+' - DATA='+mNFE_Database,mtInformation,[mbOk],0);
         end;
      FreeAndNil(Query_teste);
      FreeAndNil(Query_Cons);
      end;
   end;   
end;

procedure TFrm_Seg.sbn_salvarnfe01Click(Sender: TObject);
begin
mNFE_HostName:=edt_servnfe.Text;
fDeletaPadroes(0,'_principal','SERVNFE');
fGravaPadroes(0,'SERVNFE'    ,'text'   ,'_principal',edt_servnfe.Text);
MessageDlg('gravado OK!',mtInformation,[mbOk],0);

end;

procedure TFrm_Seg.fAtualizaServidorNFE;

var
mChave: String;
Query_Nfe: tQuery;
begin
Query_Nfe:=TQuery.Create(nil);
Query_Nfe.DatabaseName:='SG_ASSOC';
mChave:='SERIE1';
Query_Nfe.close;
Query_Nfe.SQL.clear;
Query_Nfe.SQL.Add('Select * from CADPAR_NF where PNF_CODEMP=:CODEMP '
                  +' and PNF_CHAVE=:CHAVE ');
Query_Nfe.ParamByName('CODEMP').AsInteger:=codemp;
Query_Nfe.ParamByName('CHAVE').AsString  :=mChave;
Query_Nfe.Open;
if Query_Nfe.IsEmpty then
   begin
   edt_nfe_servidor01.Text:='';
   edt_nfe_servidor02.Text:='';
   edt_nfe_servidor03.Text:='';
   end
else
   begin
   edt_nfe_servidor01.Text:=Query_Nfe.fieldbyName('PNF_SERVIDOR01').AsString;
   edt_nfe_servidor02.Text:=Query_Nfe.fieldbyName('PNF_SERVIDOR02').AsString;
   edt_nfe_servidor03.Text:=Query_Nfe.fieldbyName('PNF_SERVIDOR03').AsString;
   end;
FreeAndNil(Query_Nfe);

end;

procedure TFrm_Seg.fGravarServidorNFE;
var
mChave: String;
Query_Nfe: tQuery;
begin
Query_Nfe:=TQuery.Create(nil);
Query_Nfe.DatabaseName:='SG_ASSOC';
mChave:='SERIE1';
Query_Nfe.close;
Query_Nfe.SQL.clear;
Query_Nfe.SQL.Add('Select count(*) from CADPAR_NF where PNF_CODEMP=:CODEMP '
                  +' and PNF_CHAVE=:CHAVE ');
Query_Nfe.ParamByName('CODEMP').AsInteger:=codemp;
Query_Nfe.ParamByName('CHAVE').AsString  :=mChave;
Query_Nfe.Open;
if Query_Nfe.Fields[0].AsInteger>0 then
   begin
   Query_nfe.Close;
   Query_nfe.SQL.Clear;
   Query_nfe.SQL.Add('Update CADPAR_NF set '
                    +' PNF_SERVIDOR01=:SERVIDOR01 '
                    +',PNF_SERVIDOR02=:SERVIDOR02 '
                    +',PNF_SERVIDOR03=:SERVIDOR03 '
                    +' where PNF_CODEMP=:CODEMP '
                    +' and PNF_CHAVE=:CHAVE ');
   Query_Nfe.ParamByName('CODEMP').AsInteger:=codemp;
   Query_Nfe.ParamByName('CHAVE').AsString  :=mChave;

   Query_Nfe.ParamByName('SERVIDOR01').AsInteger:=valint(edt_nfe_servidor01.Text);
   Query_Nfe.ParamByName('SERVIDOR02').AsInteger:=valint(edt_nfe_servidor02.Text);
   Query_Nfe.ParamByName('SERVIDOR03').AsInteger:=valint(edt_nfe_servidor03.Text);
   try
      Query_Nfe.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end;
FreeAndNil(Query_Nfe);

end;


procedure TFrm_Seg.edt_nfe_servidor01Change(Sender: TObject);
begin
if edt_nfe_servidor01.Modified then
   mAlterou_Servidor_nfe:=true;

end;

procedure TFrm_Seg.edt_nfe_servidor02Change(Sender: TObject);
begin
if edt_nfe_servidor02.Modified then
   mAlterou_Servidor_nfe:=true;

end;

procedure TFrm_Seg.edt_nfe_servidor03Change(Sender: TObject);
begin
if edt_nfe_servidor03.Modified then
   mAlterou_Servidor_nfe:=true;

end;

function tFrm_Seg.fAtualizarTipoPed: Boolean;
var
Query_TipoPed:tquery;
mlbl_tipoped: tobject;
mCB_MANTERATIVA: tobject;
mCB_GERDUP: tobject;

begin
Query_TipoPed:=tquery.create(nil);
Query_TipoPed.DatabaseName:='SG_ASSOC';
Query_TipoPed.Close;
Query_TipoPed.SQL.Clear;
Query_TipoPed.SQL.Add('Select * from CADTIPPED order by TPCODIGO');
Query_TipoPed.Open;

While not Query_TipoPed.Eof do
   begin
   mlbl_tipoped:=FindComponent('lbl_tipo'+FormatFloat('00', Query_TipoPed.FieldByName('TPCODIGO').AsInteger));


   if mlbl_tipoped<>nil then
      (mlbl_tipoped as TLabel).caption:=FormatFloat('00', Query_TipoPed.FieldByName('TPCODIGO').AsInteger)+'-'
                                       +Query_TipoPed.FieldByName('TPNOME').AsString;
   mCB_MANTERATIVA:=FindComponent('CB_ESTTIP'+Query_TipoPed.FieldByName('TPCODIGO').AsString);
   if mCB_MANTERATIVA<>nil then
      (mCB_MANTERATIVA as TCheckBox).Checked:=Query_TipoPed.FieldByName('TPATIVO').AsInteger=0;

   mCB_GERDUP:=FindComponent('CB_DUPTIP'+Query_TipoPed.FieldByName('TPCODIGO').AsString);
   if mCB_GERDUP<>nil then
      (mCB_GERDUP as TCheckBox).Checked:=Query_TipoPed.FieldByName('TPGERDUP').AsInteger=0;

   Query_TipoPed.Next;
   end;
freeandnil(query_tipoped);
result:=true;
end;


procedure TFrm_Seg.lbl_tipo01Click(Sender: TObject);
var
  obj: TObject;
  mNovoValor: String;
begin
if Sender.ClassName='TLabel' then
   begin
   obj:=(Sender as TLabel);
   mNovoValor:=InputBox('Alteração no Item '+(obj as TLabel).Caption , 'Informe a Nova Descrição:','');
   if trim(mNovoValor)<>'' then
      begin
      (obj as tLabel).caption:=copy((obj as tLabel).caption,1,3)+mNovoValor;
      end;
   end;
mAlterouTipoPedido:=true;

end;


function tFrm_Seg.GravarTipoPed: Boolean;
var
Query_TipoPed:tquery;
Query_Exec:tquery;

mlbl_tipoped: tobject;
mCB_MANTERATIVA: tobject;
mCB_GERDUP: tobject;
mNovo_Descricao: String;
mNovo_Gerdup: Integer;
mNovo_Ativo: Integer;

begin
Query_Exec:=tquery.create(nil);
Query_Exec.DatabaseName:='SG_ASSOC';

Query_TipoPed:=tquery.create(nil);
Query_TipoPed.DatabaseName:='SG_ASSOC';
Query_TipoPed.Close;
Query_TipoPed.SQL.Clear;
Query_TipoPed.SQL.Add('Select * from CADTIPPED order by TPCODIGO');
Query_TipoPed.Open;

While not Query_TipoPed.Eof do
   begin
   mNovo_Descricao:='';
   mNovo_Gerdup   :=0;
   mNovo_Ativo    :=0;
   mlbl_tipoped:=FindComponent('lbl_tipo'+FormatFloat('00', Query_TipoPed.FieldByName('TPCODIGO').AsInteger));
   if mlbl_tipoped<>nil then
      begin
      mNovo_Descricao:=(mlbl_tipoped as TLabel).caption;
      mNovo_Descricao:=copy( mNovo_Descricao,4 ,length(mNovo_Descricao)-3);
      if length(mNovo_Descricao)>60 then
         mNovo_Descricao:=copy(mNovo_Descricao,1,60);
      end;
   mCB_MANTERATIVA:=FindComponent('CB_ESTTIP'+Query_TipoPed.FieldByName('TPCODIGO').AsString);
   if mCB_MANTERATIVA<>nil then
      begin
      if (mCB_MANTERATIVA as TCheckBox).Checked=true then
         mNovo_Ativo:=0
      else
         mNovo_Ativo:=1;
      end;

   mCB_GERDUP:=FindComponent('CB_DUPTIP'+Query_TipoPed.FieldByName('TPCODIGO').AsString);
   if mCB_GERDUP<>nil then
      begin
      if (mCB_GERDUP as TCheckBox).Checked=true then
         mNovo_Gerdup:=0
      else
         mNovo_Gerdup:=1;
      end;
   Query_Exec.Close;
   Query_Exec.SQL.Clear;
   Query_Exec.SQL.Add('Update CADTIPPED set TPNOME=:NOME '
                     +', TPGERDUP=:GERDUP '
                     +', TPATIVO=:ATIVO '
                     +' where TPCODIGO=:CODIGO ');
   Query_Exec.ParamByName('NOME').AsString   :=mNovo_Descricao;
   Query_Exec.ParamByName('GERDUP').AsInteger:=mNovo_Gerdup;
   Query_Exec.ParamByName('ATIVO').AsInteger :=mNovo_Ativo;
   Query_Exec.ParamByName('CODIGO').AsInteger:=Query_TipoPed.FieldByName('TPCODIGO').AsInteger;
   try
      Query_Exec.ExecSQL;
      fdm1StartCommit;
   except
      end;
   Query_TipoPed.Next;
   end;
freeandnil(query_tipoped);
freeandnil(Query_Exec);

result:=true;
end;

procedure TFrm_Seg.CB_DUPTIP1Click(Sender: TObject);
begin
mAlterouTipoPedido:=true;

end;

procedure TFrm_Seg.CB_AVISTASEMDUPClick(Sender: TObject);
begin
if mValidarClick then
   begin
   fDeletaPadroes(0,'_principal','CB_AVISTASEMDUP');
   fGravaPadroes(0,'CB_AVISTASEMDUP'    ,'checked'   ,'_principal',iif(CB_AVISTASEMDUP.Checked,'true','false'));
   end;

end;

procedure TFrm_Seg.SpeedButton4Click(Sender: TObject);
begin
fDeletaPadroes(0,'_principal','SERVPEDELE');
fGravaPadroes(0,'SERVPEDELE'    ,'text'   ,'_principal',edt_servpedele.Text);
fDeletaPadroes(0,'_principal','DBPEDELE');
fGravaPadroes(0,'DBPEDELE'    ,'text'   ,'_principal',edt_dbpedele.Text);
fDeletaPadroes(0,'_principal','USRPEDELE');
fGravaPadroes(0,'USRPEDELE'    ,'text'   ,'_principal',edt_userpedele.Text);
fDeletaPadroes(0,'_principal','PASSPEDELE');
fGravaPadroes(0,'PASSPEDELE'    ,'text'   ,'_principal',edt_passpedele.Text);
MessageDlg('gravado OK!',mtInformation,[mbOk],0);
end;

procedure TFrm_Seg.SpeedButton3Click(Sender: TObject);
begin
try
  DM_MYSQL.SQLConnection_PEDELE.Params.Values['HostName']:=edt_servpedele.Text;
  DM_MYSQL.SQLConnection_PEDELE.Params.Values['Database']:=edt_dbpedele.Text;
  DM_MYSQL.SQLConnection_PEDELE.Params.Values['User_Name']:=edt_userpedele.Text;
  DM_MYSQL.SQLConnection_PEDELE.Params.Values['Password']:=edt_passpedele.Text;
  DM_MYSQL.SQLConnection_PEDELE.Open;
  ShowMessage('Conectado');
except
  ShowMessage('Não Conectado');
  end;
end;

procedure TFrm_Seg.cb_ExibirMarcaChange(Sender: TObject);
begin
if mValidarClick then
   begin
   fDeletaPadroes(0,'_principal','CB_EXIBIRMARCA');
   fGravaPadroes(0,'CB_EXIBIRMARCA'    ,'checked'   ,'_principal',IntToStr(cb_ExibirMarca.ItemIndex));
   end;
end;

procedure TFrm_Seg.CB_ANDROIDClick(Sender: TObject);
begin
fDeletaPadroes(0,'_principal','CB_ANDROID');
fGravaPadroes(0,'CB_ANDROID'    ,'checked'   ,'_principal',iif(CB_ANDROID.Checked,'true','false'));
if CB_ANDROID.Checked then
  fAjustaCodigoEXPCADP01(codemp);
end;

procedure TFrm_Seg.rg_CadCliClick(Sender: TObject);
begin
fDeletaPadroes(0,'_principal','RG_CADCLI');
fGravaPadroes(0,'RG_CADCLI'    ,'checked'   ,'_principal',iif(RG_CADCLI.Checked,'true','false'));
end;

procedure TFrm_Seg.CB_DESFPClick(Sender: TObject);
begin
fDeletaPadroes(0,'_principal','CB_DESFP');
fGravaPadroes(0,'CB_DESFP'    ,'checked'   ,'_principal',iif(CB_DESFP.Checked,'true','false'));
end;

procedure TFrm_Seg.sbn_testar02Click(Sender: TObject);
var
  mServidornfe_ant: String;
begin

if mAlterou_Servidor_nfe then
   fGravarServidorNFE;
mServidornfe_ant:=mNFE_HostName;
if fTestarServidor('SERVIDORNFE02',edt_servnfe02.text) then
   begin
   fDeletaPadroes(0,'_principal','SERVNFE02');
   fGravaPadroes(0,'SERVNFE02'    ,'text'   ,'_principal',edt_servnfe02.Text);
   end;
mNFE_HostName:=mServidornfe_ant


end;

procedure TFrm_Seg.sbn_testar03Click(Sender: TObject);
var
  mServidornfe_ant: String;
begin

if mAlterou_Servidor_nfe then
   fGravarServidorNFE;
mServidornfe_ant:=mNFE_HostName;
if fTestarServidor('SERVIDORNFE03',edt_servnfe03.text) then
   begin
   fDeletaPadroes(0,'_principal','SERVNFE03');
   fGravaPadroes(0,'SERVNFE03'    ,'text'   ,'_principal',edt_servnfe03.Text);
   end;
mNFE_HostName:=mServidornfe_ant


end;

procedure TFrm_Seg.sbn_salvarnfe02Click(Sender: TObject);
begin
fDeletaPadroes(0,'_principal','SERVNFE02');
fGravaPadroes(0,'SERVNFE02'    ,'text'   ,'_principal',edt_servnfe02.Text);
MessageDlg('gravado OK!',mtInformation,[mbOk],0);

end;

procedure TFrm_Seg.sbn_salvarnfe03Click(Sender: TObject);
begin
fDeletaPadroes(0,'_principal','SERVNFE03');
fGravaPadroes(0,'SERVNFE03'    ,'text'   ,'_principal',edt_servnfe03.Text);
MessageDlg('gravado OK!',mtInformation,[mbOk],0);

end;

procedure TFrm_Seg.SBN_TIPO_CERTIFICADOClick(Sender: TObject);
begin
fDeletaPadroes(0,'_principal','TIPO_CERTIFICADO');
fGravaPadroes(0,'TIPO_CERTIFICADO'    ,'text'   ,'_principal',CB_TIPO_CERTIFICADO.Text);

MessageDlg('gravado OK!',mtInformation,[mbOk],0);


end;

procedure TFrm_Seg.CB_TIPO_CERTIFICADOExit(Sender: TObject);
begin
if trim(CB_TIPO_CERTIFICADO.Text)<>'' then
   begin
   with CB_TIPO_CERTIFICADO do ItemIndex:=Items.IndexOf(CB_TIPO_CERTIFICADO.Text);
   end
else
   CB_TIPO_CERTIFICADO.text:=CB_TIPO_CERTIFICADO.Items.Strings[CB_TIPO_CERTIFICADO.ItemIndex];

end;

procedure TFrm_Seg.CB_EMPRESTIMO_PADRAOExit(Sender: TObject);
begin

if trim(CB_EMPRESTIMO_PADRAO.Text)<>'' then
   begin
   with CB_EMPRESTIMO_PADRAO do ItemIndex:=Items.IndexOf(CB_EMPRESTIMO_PADRAO.Text);
   end
else
   CB_EMPRESTIMO_PADRAO.text:=CB_EMPRESTIMO_PADRAO.Items.Strings[CB_EMPRESTIMO_PADRAO.ItemIndex];

end;

procedure TFrm_Seg.CB_EMPRESTIMO_PADRAOClick(Sender: TObject);
begin
fDeletaPadroes(0,'_principal','CB_EMPRESTIMO_PADRAO');
fGravaPadroes(0,'CB_EMPRESTIMO_PADRAO'    ,'text'   ,'_principal',CB_EMPRESTIMO_PADRAO.Text);

end;

procedure TFrm_Seg.CB_TRACOITEMClick(Sender: TObject);
begin


if mValidarClick then
   begin
   fDeletaPadroes(0,'_principal','CB_TRACOITEM');
   fGravaPadroes(0,'CB_TRACOITEM'    ,'checked'   ,'_principal',iif(CB_TRACOITEM.Checked,'true','false'));
   end;

end;

procedure TFrm_Seg.spn_tamfonteobsnfeChange(Sender: TObject);
begin

   fDeletaPadroes(55,'_principal','CPN_TAMFONTEOBSNFE');
   fGravaPadroes(55,'CPN_TAMFONTEOBSNFE'    ,'text'   ,'_principal',inttostr(spn_tamfonteobsnfe.Value));

end;

procedure TFrm_Seg.CB_MARCA_LSEPClick(Sender: TObject);
begin
   fDeletaPadroes(0,'_principal','CB_MARCA_LSEP');
   fGravaPadroes(0,'CB_MARCA_LSEP'    ,'checked'   ,'_principal',iif(CB_MARCA_LSEP.Checked,'true','false'));

end;

procedure TFrm_Seg.bbCorrigirForeingKeyClick(Sender: TObject);
begin

testeform := TFrm_Seg(FindGlobalComponent('frm_corrige_foreingkey'));
if testeform=nil then                     
   begin
   Application.CreateForm(Tfrm_corrige_foreingkey, frm_corrige_foreingkey);
   end;

frm_corrige_foreingkey.FormStyle:=fsMDIChild;
frm_corrige_foreingkey.Visible      :=true;
frm_corrige_foreingkey.Top          :=0;


if frm_corrige_foreingkey.WindowState=WsMinimized then
   frm_corrige_foreingkey.WindowState:=WsNormal
else
   frm_corrige_foreingkey.Show;



end;

end.


