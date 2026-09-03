unit S_Etivol02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Mask,S_DM1,Db,dbTables,func,lerarq,
  S_Tra,S_Usr,S_PedCli,S_Ven,S_Bco,S_Con, RDprint,S_Sql,S_Tab05, CheckLst,
  ComCtrls, RLReport, ToolEdit, CurrEdit, RxMemDS, Grids, DBGrids, S_SelEmp,
  RLBarcode, DBCtrls, jpeg, DBClient, Spin,printers;

type
  TFrm_Etivol02 = class(TForm)
    Panel_cab: TPanel;
    Label1: TLabel;
    CHAVE: TEdit;
    SB1: TSpeedButton;
    Label2: TLabel;
    NOMCLI: TEdit;
    Label3: TLabel;
    ENDERECO: TEdit;
    NOMCID: TEdit;
    panel_rod: TPanel;
    bbSair: TBitBtn;
    bbGravar: TBitBtn;
    lbl_datanf: TLabel;
    DATANF: TEdit;
    Label6: TLabel;
    NUMNF: TEdit;
    Label7: TLabel;
    VALFRE: TEdit;
    TOTALNF: TEdit;
    Label8: TLabel;
    bbEmitir: TBitBtn;
    bbCancelar: TBitBtn;
    CB_EXTRA: TCheckBox;
    Qr_Ped: TQuery;
    Qr_PedP1CODCLI: TFloatField;
    Qr_PedP1CHAVE: TFloatField;
    Qr_PedP1NUMNF: TFloatField;
    Qr_PedP1QTDVOL: TFloatField;
    Qr_PedCRAZAO: TStringField;
    Qr_PedCLOG: TStringField;
    Qr_PedCBAIRRO: TStringField;
    Qr_PedCCIDADE: TStringField;
    Qr_PedCUF: TStringField;
    Qr_PedP1DATAP: TDateTimeField;
    Qr_PedP1ETIVOL: TFloatField;
    Qr_PedP1CODEMP: TFloatField;
    Qr_PedP1LOTSEQ: TFloatField;
    RDprint1: TRDprint;
    CLB_OUTROSPED: TCheckListBox;
    Label11: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tsConfigTermica: TTabSheet;
    Panel_corpo: TPanel;
    Label33: TLabel;
    Label35: TLabel;
    Label34: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label32: TLabel;
    Label70: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    lbl_etiqpers: TLabel;
    CODTRA: TEdit;
    NOMTRA: TEdit;
    UFPV: TEdit;
    PLACAV: TEdit;
    QTDVOL: TEdit;
    ESPECIE: TEdit;
    PESOB: TEdit;
    PESOL: TEdit;
    RGFRETEPC: TRadioGroup;
    DATENT: TMaskEdit;
    NOMDIG: TEdit;
    NOMENT: TEdit;
    CODENT: TEdit;
    CODDIG: TEdit;
    CODEMB: TEdit;
    CODSEP: TEdit;
    CODCON: TEdit;
    NOMSEP: TEdit;
    NOMCON: TEdit;
    NOMEMB: TEdit;
    DATEMB: TMaskEdit;
    DATCON: TMaskEdit;
    DATSEP: TMaskEdit;
    HORENT: TMaskEdit;
    HORSEP: TMaskEdit;
    HORCON: TMaskEdit;
    HOREMB: TMaskEdit;
    DATDIG: TMaskEdit;
    HORDIG: TMaskEdit;
    PREVENT: TMaskEdit;
    HPREVENT: TMaskEdit;
    NAUT: TEdit;
    CODCV: TEdit;
    NOMCV: TEdit;
    OBS1: TEdit;
    OBS2: TEdit;
    CB_CANHOTO: TCheckBox;
    OBS3: TEdit;
    CB_SEMCOMP: TCheckBox;
    Label10: TLabel;
    NOMFAN: TEdit;
    Label12: TLabel;
    RAZSOC: TEdit;
    Label13: TLabel;
    OBS_SLOGAN: TEdit;
    sbSalvarPadrao: TSpeedButton;
    Qr_PedCDENOM: TStringField;
    Qr_PedCCEP: TStringField;
    Qr_PedCFONE01: TStringField;
    Qr_PedP1CODEMB: TFloatField;
    tsConfigLaser: TTabSheet;
    tsReport_modelo01: TTabSheet;
    Label17: TLabel;
    Label18: TLabel;
    GroupBox1: TGroupBox;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    edt_rl_AltEtiq: TCurrencyEdit;
    edt_rl_QtdLado: TCurrencyEdit;
    mem_etiqueta: TRxMemoryData;
    src_etiqueta: TDataSource;
    mem_config: TRxMemoryData;
    mem_configIMPRIME: TStringField;
    mem_configNOME_CAMPO: TStringField;
    mem_configTAMANHO_WIDTH: TIntegerField;
    mem_configLINHA: TIntegerField;
    mem_configCOLUNA: TIntegerField;
    mem_configALINHAMENTO: TStringField;
    mem_configFONTE: TStringField;
    src_config: TDataSource;
    DBGrid1: TDBGrid;
    FontDialog1: TFontDialog;
    mem_configFONTE_TAMANHO: TFloatField;
    mem_configFONTE_NAME: TStringField;
    mem_configFONTE_BOLD: TStringField;
    mem_configFONTE_ITALIC: TStringField;
    mem_configFONTE_UNDERLINE: TStringField;
    mem_configFONTE_STRICK: TStringField;
    mem_configFONTE_COLOR: TFloatField;
    BitBtn1: TBitBtn;
    mem_configCOMPONENTE_NAME: TStringField;
    mem_configCOMPONENTE_TIPO: TStringField;
    mem_configALTURA_HEIGHT: TIntegerField;
    sbConfigMaster_Salvar: TSpeedButton;
    Label19: TLabel;
    CB_TERMICA: TComboBox;
    lbl_porta: TLabel;
    CB_Porta: TComboBox;
    sbnSalvaPadrao: TSpeedButton;
    mem_configDESCRICAO: TStringField;
    cb_rl_bordas: TCheckBox;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    mem_etiquetavolume: TStringField;
    mem_etiquetaOBS_VOLUME: TStringField;
    mem_etiquetaCODCLI: TStringField;
    mem_etiquetaOBS_CODCLI: TStringField;
    mem_etiquetaRAZAOSOC: TStringField;
    mem_etiquetaOBS_RAZAOSOC: TStringField;
    mem_etiquetaFANTASIA: TStringField;
    mem_etiquetaOBS_FANTASIA: TStringField;
    mem_etiquetaENDERECO: TStringField;
    mem_etiquetaOBS_ENDERECO: TStringField;
    mem_etiquetaBAIRRO: TStringField;
    mem_etiquetaOBS_BAIRRO: TStringField;
    mem_etiquetaCIDADE: TStringField;
    mem_etiquetaOBS_CIDADE: TStringField;
    mem_etiquetaUF: TStringField;
    mem_etiquetaOBS_UF: TStringField;
    mem_etiquetaCHAVEPED: TStringField;
    mem_etiquetaOBS_CHAVEPED: TStringField;
    mem_etiquetaNUMNF: TStringField;
    mem_etiquetaOBS_NUMNF: TStringField;
    mem_etiquetaCODBAR: TStringField;
    mem_etiquetaOBS_CODBAR: TStringField;
    mem_etiquetaROTA: TStringField;
    mem_etiquetaOBS_ROTA: TStringField;
    mem_etiquetaEMI_NOMFAN: TStringField;
    mem_etiquetaOBS_EMI_NOMFAN: TStringField;
    mem_etiquetaEMI_RAZSOC: TStringField;
    mem_etiquetaOBS_EMI_RAZSOC: TStringField;
    mem_etiquetaEMI_SLOGAN: TStringField;
    mem_etiquetaOBS_EMI_SLOGAN: TStringField;
    mem_etiquetaQTDVOL: TIntegerField;
    mem_etiquetaOBS_QTDVOL: TStringField;
    mem_etiquetaNUMVOL: TIntegerField;
    mem_etiquetaOBS_NUMVOL: TStringField;
    mem_etiquetaFONE01: TStringField;
    mem_etiquetaOBS_FONE01: TStringField;
    mem_etiquetaDATAPED: TStringField;
    mem_etiquetaOBS_DATAPED: TStringField;
    mem_etiquetaCODEMB: TFloatField;
    mem_etiquetaOBS_CODEMB: TStringField;
    mem_etiquetaNOMEMB: TStringField;
    mem_etiquetaOBS_NOMEMB: TStringField;
    mem_etiquetaHOREMB: TStringField;
    mem_etiquetaOBS_HOREMB: TStringField;
    mem_etiquetaPEDIDOS: TStringField;
    mem_etiquetaOBS_PEDIDOS: TStringField;
    cb_chavenf: TCheckBox;
    mem_etiquetaOBS_EMI_NOMTRA: TStringField;
    mem_etiquetaEMI_NOMTRA: TStringField;
    Qr_PedP1CODTRA: TFloatField;
    Qr_PedTRRAZTRA: TStringField;
    Label4: TLabel;
    alt_page: TCurrencyEdit;
    larg_page: TCurrencyEdit;
    Label20: TLabel;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    edt_marsup: TCurrencyEdit;
    edt_marinf: TCurrencyEdit;
    edt_maresq: TCurrencyEdit;
    edt_mardir: TCurrencyEdit;
    mem_etiquetanotas_fiscais: TStringField;
    RLReport_modelo01: TRLReport;
    RLDetailGrid1: TRLDetailGrid;
    dbrl_volume: TRLDBText;
    dbrl_rota: TRLDBText;
    dbrl_razaosoc: TRLDBText;
    dbrl_fantasia: TRLDBText;
    dbrl_endereco: TRLDBText;
    dbrl_bairro: TRLDBText;
    dbrl_cidade: TRLDBText;
    dbrl_uf: TRLDBText;
    dbrl_codbar: TRLDBBarcode;
    dbrl_emi_nomfan: TRLDBText;
    dbrl_emi_razsoc: TRLDBText;
    dbrl_obs_volume: TRLDBText;
    dbrl_obs_rota: TRLDBText;
    dbrl_obs_fantasia: TRLDBText;
    dbrl_obs_endereco: TRLDBText;
    dbrl_obs_bairro: TRLDBText;
    dbrl_obs_cidade: TRLDBText;
    dbrl_obs_uf: TRLDBText;
    dbrl_obs_codbar: TRLDBText;
    dbrl_obs_emi_nomtra: TRLDBText;
    dbrl_emi_nomtra: TRLDBText;
    logo_emit: TRLImage;
    dbrl_obs_razaosoc: TRLDBText;
    RLDBMemo1: TRLDBMemo;
    CB_CODBAR_VOL: TCheckBox;
    tsConfiguracao_termica: TTabSheet;
    Panel2: TPanel;
    bbincluir: TBitBtn;
    bbalterar: TBitBtn;
    bbexcluir: TBitBtn;
    bbgravar_confg: TBitBtn;
    bbcancelar_conf: TBitBtn;
    DBNavigator1: TDBNavigator;
    bbfechar: TBitBtn;
    src_config_etiqueta: TDataSource;
    cds_config_etiqueta: TClientDataSet;
    cds_config_etiquetaCE_LOCAL: TStringField;
    cds_config_etiquetaCE_NOME: TStringField;
    cds_config_etiquetaCE_CONFIG_CAB: TStringField;
    cds_config_etiquetaCE_CONFIG_ETIQ01: TStringField;
    cds_config_etiquetaCE_CONFIG_ETIQ02: TStringField;
    cds_config_etiquetaCE_CONFIG_ETIQ03: TStringField;
    cds_config_etiquetaCE_CONFIG_ETIQ04: TStringField;
    cds_config_etiquetaCE_CONFIG_ETIQ05: TStringField;
    cds_config_etiquetaCE_QTDCOL: TIntegerField;
    GroupBox3: TGroupBox;
    DBGrid_config: TDBGrid;
    GroupBox5: TGroupBox;
    Label27: TLabel;
    cb_modelo: TComboBox;
    Label28: TLabel;
    cb_impressora: TComboBox;
    Label29: TLabel;
    edt_qtdcarporlinha: TSpinEdit;
    Panel3: TPanel;
    Label25: TLabel;
    Label26: TLabel;
    DBE_CE_NOME: TDBEdit;
    DBE_CE_QTDCOL: TDBEdit;
    Panel5: TPanel;
    GroupBox4: TGroupBox;
    DBMemo_CE_CONFIG_CAB: TDBMemo;
    GroupBox11: TGroupBox;
    DBMemo_CE_CONFIG_ETIQ01: TDBMemo;
    GroupBox12: TGroupBox;
    DBMemo_CE_CONFIG_ETIQ02: TDBMemo;
    Panel4: TPanel;
    GroupBox13: TGroupBox;
    DBMemo_CE_CONFIG_ETIQ03: TDBMemo;
    GroupBox14: TGroupBox;
    DBMemo_CE_CONFIG_ETIQ04: TDBMemo;
    GroupBox15: TGroupBox;
    DBMemo_CE_CONFIG_ETIQ05: TDBMemo;
    TabSheet2: TTabSheet;
    GroupBox6: TGroupBox;
    memo_legenda: TMemo;
    mem_etiquetaCLI_CEP: TStringField;
    mem_etiquetaTRA_FANTASIA: TStringField;
    mem_etiquetaTRA_CIDADE: TStringField;
    mem_etiquetaTRA_UF: TStringField;
    mem_etiquetaENDER_COMPL: TStringField;
    mem_etiquetaCIDADE_UF: TStringField;
    mem_etiquetaPESOLIQUIDOVOL: TFloatField;
    mem_etiquetaPESOBRUTOVOL: TFloatField;
    tsPreConfigurado: TTabSheet;
    PageControl2: TPageControl;
    tsEtiq_volumes_88por95: TTabSheet;
    GroupBox24: TGroupBox;
    memo_volumes_cab_88por95: TMemo;
    GroupBox25: TGroupBox;
    memo_volumes_det_88por95: TMemo;
    GroupBox7: TGroupBox;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    edt_peso_liquido: TEdit;
    edt_peso_bruto: TEdit;
    bbAplicarEmTodos: TBitBtn;
    edt_codcli: TEdit;
    tsModelo02: TTabSheet;
    RLReport_modelo02: TRLReport;
    RLDetailGrid_mod02: TRLDetailGrid;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLImage1: TRLImage;
    RLDBText21: TRLDBText;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    mem_etiquetaEMP_CEP: TStringField;
    mem_etiquetaEMP_FONES: TStringField;
    mem_etiquetaEMP_RAZSOC: TStringField;
    mem_etiquetaEMP_FANTASIA: TStringField;
    mem_etiquetaEMP_ENDER_COMPL: TStringField;
    mem_etiquetaEMP_CIDADE_UF: TStringField;
    RLLabel2: TRLLabel;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLLabel3: TRLLabel;
    RLDBText2: TRLDBText;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    Label30: TLabel;
    cb_criterito: TComboBox;
    RLDBText3: TRLDBText;
    RLDBMemo2: TRLDBMemo;
    RLDBMemo3: TRLDBMemo;
    RLLabel6: TRLLabel;
    mem_etiquetaEMP_CIDADE_UF_CEP: TStringField;
    mem_etiquetaPRO_CODPRO: TStringField;
    mem_etiquetaPRO_CODBAR: TStringField;
    mem_etiquetaPRO_NOME: TStringField;
    mem_etiquetaPRO_UND: TStringField;
    mem_etiquetaPRO_MARCA: TStringField;
    procedure bbSairClick(Sender: TObject);
    procedure CHAVEExit(Sender: TObject);
    procedure CODTRAKeyPress(Sender: TObject; var Key: Char);
    procedure CODTRAExit(Sender: TObject);
    procedure PLACAVKeyPress(Sender: TObject; var Key: Char);
    procedure PLACAVExit(Sender: TObject);
    procedure UFPVExit(Sender: TObject);
    procedure UFPVKeyPress(Sender: TObject; var Key: Char);
    procedure QTDVOLExit(Sender: TObject);
    procedure ESPECIEExit(Sender: TObject);
    procedure ESPECIEKeyPress(Sender: TObject; var Key: Char);
    procedure PESOBExit(Sender: TObject);
    procedure PESOLExit(Sender: TObject);
    procedure CODSEPExit(Sender: TObject);
    procedure CODSEPKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONExit(Sender: TObject);
    procedure CODEMBExit(Sender: TObject);
    procedure CODEMBKeyPress(Sender: TObject; var Key: Char);
    procedure CODENTKeyPress(Sender: TObject; var Key: Char);
    procedure CODDIGKeyPress(Sender: TObject; var Key: Char);
    procedure CODENTExit(Sender: TObject);
    procedure CODDIGExit(Sender: TObject);
    procedure DATENTExit(Sender: TObject);
    procedure DATSEPExit(Sender: TObject);
    procedure DATCONExit(Sender: TObject);
    procedure DATEMBExit(Sender: TObject);
    procedure HORENTExit(Sender: TObject);
    procedure HORSEPExit(Sender: TObject);
    procedure HORCONExit(Sender: TObject);
    procedure HOREMBExit(Sender: TObject);
    procedure SB1Click(Sender: TObject);
    procedure bbGravarClick(Sender: TObject);
    procedure PREVENTExit(Sender: TObject);
    procedure HPREVENTExit(Sender: TObject);
    procedure NAUTKeyPress(Sender: TObject; var Key: Char);
    procedure NAUTExit(Sender: TObject);
    procedure CODCVKeyPress(Sender: TObject; var Key: Char);
    procedure CODCVExit(Sender: TObject);
    procedure OBS1Exit(Sender: TObject);
    procedure OBS1KeyPress(Sender: TObject; var Key: Char);
    procedure OBS2KeyPress(Sender: TObject; var Key: Char);
    procedure OBS2Exit(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure OBS3Exit(Sender: TObject);
    procedure OBS3KeyPress(Sender: TObject; var Key: Char);
    procedure bbEmitirClick(Sender: TObject);
    procedure CODEMBChange(Sender: TObject);
    procedure DATEMBChange(Sender: TObject);
    procedure HOREMBChange(Sender: TObject);
    procedure QTDVOLChange(Sender: TObject);
    procedure ESPECIEChange(Sender: TObject);
    procedure PESOBChange(Sender: TObject);
    procedure PESOLChange(Sender: TObject);
    procedure CODTRAChange(Sender: TObject);
    procedure RGFRETEPCClick(Sender: TObject);
    procedure PLACAVChange(Sender: TObject);
    procedure UFPVChange(Sender: TObject);
    procedure CODENTChange(Sender: TObject);
    procedure DATENTChange(Sender: TObject);
    procedure HORENTChange(Sender: TObject);
    procedure CODDIGChange(Sender: TObject);
    procedure CODSEPChange(Sender: TObject);
    procedure DATSEPChange(Sender: TObject);
    procedure HORSEPChange(Sender: TObject);
    procedure CODCONChange(Sender: TObject);
    procedure DATCONChange(Sender: TObject);
    procedure HORCONChange(Sender: TObject);
    procedure CODCVChange(Sender: TObject);
    procedure OBS1Change(Sender: TObject);
    procedure OBS2Change(Sender: TObject);
    procedure OBS3Change(Sender: TObject);
    procedure NAUTChange(Sender: TObject);
    procedure CB_CANHOTOClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbSalvarPadraoClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure mem_configAfterPost(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure sbConfigMaster_SalvarClick(Sender: TObject);
    procedure sbnSalvaPadraoClick(Sender: TObject);
    procedure cb_rl_bordasClick(Sender: TObject);
    procedure edt_rl_AltEtiqExit(Sender: TObject);
    procedure edt_rl_QtdLadoExit(Sender: TObject);
    procedure cb_rl_bordasExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure CB_CODBAR_VOLClick(Sender: TObject);
    procedure bbincluirClick(Sender: TObject);
    procedure bbalterarClick(Sender: TObject);
    procedure bbexcluirClick(Sender: TObject);
    procedure bbgravar_confgClick(Sender: TObject);
    procedure bbcancelar_confClick(Sender: TObject);
    procedure bbfecharClick(Sender: TObject);
    procedure cds_config_etiquetaBeforePost(DataSet: TDataSet);
    procedure cds_config_etiquetaAfterDelete(DataSet: TDataSet);
    procedure cds_config_etiquetaAfterEdit(DataSet: TDataSet);
    procedure cds_config_etiquetaAfterInsert(DataSet: TDataSet);
    procedure cds_config_etiquetaAfterPost(DataSet: TDataSet);
    procedure mem_etiquetaBeforeInsert(DataSet: TDataSet);
    procedure edt_peso_liquidoExit(Sender: TObject);
    procedure edt_peso_brutoExit(Sender: TObject);
    procedure bbAplicarEmTodosClick(Sender: TObject);
    procedure QTDVOLEnter(Sender: TObject);
    procedure PESOBEnter(Sender: TObject);
    procedure PESOLEnter(Sender: TObject);
    procedure cb_criteritoClick(Sender: TObject);
    procedure cb_criteritoEnter(Sender: TObject);
  private
     mLocalEtiqueta: string;

     mAnt_Nome: String;
     mAnt_criterito: integer;
     mAnt_Local: String;
     mQtdCarPorLinha: integer;
     mant_pesob: real;
     mant_pesol: real;
     mant_qtdvol: integer;

     function fManPedCarregaDados(ptipo: Integer): Boolean;
     function fConfirmarEmissao(pTipo: Integer): Boolean;
     function fLerConfiguracao: Boolean;

     function fLiberaBloqueiaCampos(pLibera: Boolean):Boolean;

     function fImpressaoTermica: boolean;


     function fSetarConfiguraoPadrao: Boolean;


     procedure fCriarEtiquetas;


     function fCarregarEtiquetas: boolean;


    { Private declarations }
  public
    { Public declarations }
     Form_SelEmp: TFrm_SelEmp;
     function fAtualizaConfig(pTipo: Integer): Boolean;
     function fAtualizaRelatorio(ptipo: Integer): Boolean;
     function fRestauraPadrao(pTipo: Integer): Boolean;
     function fAjustaGridRelatorio(pTipo: Integer): Boolean;
     function fCarregarTabelaEtiqueta(ptipo: Integer): Boolean;
     function fProcuraObs(pCampo,pObsDefault: String):String;
  end;

var
  Frm_Etivol02: TFrm_Etivol02;
  mpcodemp: Integer=0;
  maltdup: Boolean=False;
  mchave_etiq : Real=0;
  mBloqueiaEvento: Boolean=false;
const
 mImpressora_Termica=0;
 mLaserModelo01=1;
 mLaserModelo02=2;
 mMatricial=3;
 mPersonalizada=4;

 mCriterito_Volume_apos_Embalar=0;
 mCriterito_Por_Item=1;




implementation

uses S_DM4, func_excecoes, S_DM2, Math;

{$R *.dfm}

procedure TFrm_Etivol02.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Etivol02.CHAVEExit(Sender: TObject);
var
x: Integer;
begin
mchave_etiq :=0;
CHAVE.Text:=fdeixanum2(CHAVE.Text);
if valint(chave.Text)=0 then
   exit;
if bbSair.Focused then
   exit;


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

if cb_extra.Checked then
   begin
   if codemp>99 then
      mpcodemp:=codemp
   else
      mpcodemp:=codemp+100
   end
else
   begin
   if codemp>99 then
      mpcodemp:=codemp-100
   else
      mpcodemp:=codemp
   end;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select P1CONF,P1DATCON,P1DATAP,P1DATENT,sum(P1TOTALL) as P1TOTALL'
                   +', P1CODCLI, Min(P1CODEMP) AS EMPMIN, '
                   +'max(P1BLOQPEND) as P1BLOQPEND,   max(P1CODEMP) as EMPMAX from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' P1STATUS<'+mstatus_excluido+' ');
DM1.Query2.Sql.Add('  and P1LOTSEQ=0'+InttoStr(ls_numped));
DM1.Query2.Sql.Add(' and P1CHAVE=0'+fdeixanum(CHAVE.Text));
DM1.Query2.SQL.Add(' group by P1CONF,P1DATCON,P1DATAP,P1DATENT,P1CODCLI ');
try
   DM1.Query2.Open;
except
   DM1.Query2.sql.SavetoFile('c:\sql.txt');
   end;
if DM1.Query2.Eof then
   begin
   fmensagem('Chave não Encontrada!',0,['0'],0);
   CHAVE.SetFocus;
   exit;
   end;
mpcodemp:=DM1.Query2.FieldByName('EMPMIN').AsInteger;
if not flcadp01(0,mpcodemp,ls_numped,CHAVE.Text,'') then
   CHAVE.Text:=''
else
   begin
   fManPedCarregaDados(1);
   fCriarEtiquetas;
//   fCarregarTabelaEtiqueta(0);

   if DM1.Tb_Ped01P1ETIVOL.AsInteger=1 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select CEV_CODIGO from CADETIVOL where '
                        +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' CEV_CODEMP=0'+IntTostr(codemp)+' and ')
                        +' CEV_PED_CODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString
                        +' and CEV_PED_LOTSEQ=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
                        +' and CEV_PED_CHAVE=0'+DM1.Tb_Ped01P1CHAVE.AsString);
      try
         DM1.Query1.Open;
      except
         DM1.Query1.sql.SaveToFile('C:\SQL.TXT');
         end;
      if not DM1.Query1.IsEmpty then
         begin
         if fmensagem('Esta Chave ja foi emitido etiqueta. Chave ' +DM1.Query1.Fields[0].AsString
                  +', deseja continuar e emitir novamente? ',0,['1','2'],2)<>mrYes then
            begin
            CHAVE.Text:='';
            CHAVE.SetFocus;
            exit;
            end
         else
            mchave_etiq:=ValFloat(CHAVE.Text);
         end;
       end;
   DM1.Query3.Close;
   DM1.Query3.SQL.Clear;
   DM1.Query3.SQL.Add('Select P1CHAVE,P1ETIVOL '
                      +',max(P1CODCLI) as P1CODCLI '
                      +',min(P1CODEMP) as P1CODEMP '
                      +' from CADP01 '
                      +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                      +'   to_date(P1DATAP)='+chr(39)+FormatDatetime(fdt, DM1.Query2.FieldbyName('P1DATAP').AsDatetime)+chr(39)
                      +'   and P1CODCLI=0'+DM1.Query2.Fieldbyname('P1CODCLI').AsString
                      +'   and P1CHAVE<>0'+trim(CHAVE.Text)
                      +' and P1STATUS<'+mstatus_excluido+' ' // and P1ETIVOL<>1 '
                      +' Group by P1CHAVE,P1ETIVOL ');
   DM1.Query3.Open;
   CLB_OUTROSPED.items.Clear;
   While not DM1.Query3.Eof do
      begin
      if DM1.Query3.FieldbyName('P1ETIVOL').AsInteger=1 then
         begin
         la_Empresas:=fEmpresas_Selecionadas('CADETIVOL','CEV_PED_CODEMP',Form_SelEmp.CLB_EMPRESAS);
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add('Select CEV_CODIGO from CADETIVOL where '
                        +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' CEV_CODEMP=0'+IntTostr(codemp)+' and ')
                        +' CEV_PED_LOTSEQ=0'+FloatToStr(ls_numped)
                        +' and CEV_PED_CHAVE=0'+DM1.Query3.fieldbyName('P1CHAVE').AsString
                        +iif(la_empresas='','',' and ('+la_Empresas+')') ) ;
         if mchave_etiq<>0 then
            DM1.query1.SQL.Add(' and CEV_CODIGO<>0'+FloatToStr(mchave_etiq));
         try
            DM1.Query1.Open;
         except
            DM1.Query1.sql.SaveToFile('C:\SQL.TXT');
            end;
         if not DM1.Query1.IsEmpty then
            begin
            DM1.Query3.Next;
            Continue;
            end;
         end;
      CLB_OUTROSPED.Items.Add(DM1.Query3.fieldbyName('P1CHAVE').Asstring);
      DM1.Query3.Next;
      end;
   for x:=0 to CLB_OUTROSPED.Items.Count-1 do
      begin
      CLB_OUTROSPED.Checked[x]:=true;
      end;
   maltdup:=False;
   end;
end;

function TFrm_Etivol02.fManPedCarregaDados(ptipo: Integer): Boolean;
//ptipo=0 so limpa os campos
//      1 Carrega com os dados do pedido
begin
if ptipo=0 then
   begin
   NOMCLI.Text        :='';
   edt_codcli.Clear;
   ENDERECO.Text      :='';
   NOMCID.Text        :='';
   DATANF.Text        :='';
   NUMNF.Text         :='';
   VALFRE.Text        :='';
   TOTALNF.Text       :='';
   CODTRA.Text        :='';
   NOMTRA.Text        :='';
   RGFRETEPC.ItemIndex:=0;
   PLACAV.Text        :='';
   UFPV.Text          :='';
   QTDVOL.Text        :='';
   ESPECIE.Text       :='';
   PESOB.Text         :='';
   PESOL.Text         :='';
   CODENT.Text        :='';
   NOMENT.Text        :='';
   DATENT.Text        :='';
   HORENT.Text        :='';
   PREVENT.Text       :='';
   HPREVENT.Text      :='';
   DATDIG.Text        :='/  /';
   HORDIG.Text        :=':  :';
   CODDIG.Text        :='';
   NOMDIG.Text        :='';
   CODSEP.Text        :='';
   NOMSEP.Text        :='';
   DATSEP.Text        :='';
   HORSEP.Text        :='';
   CODCON.Text        :='';
   HORCON.Text        :='';
   NOMCON.Text        :='';
   DATCON.Text        :='/  /';
   CODEMB.Text        :='';
   NOMEMB.Text        :='';
   DATEMB.Text        :='';
   HOREMB.Text        :='';
   NAUT.Text          :='';
   CODCV.Text         :='';
   NOMCV.Text         :='';
   OBS1.Text          :='';
   OBS2.Text          :='';
   OBS3.Text          :='';
   CHAVE.Text         :='';
   CLB_OUTROSPED.items.Clear;
   CB_SEMCOMP.Checked :=false;
   CB_CANHOTO.Checked :=false;
   end
else if ptipo=1 then
   begin
   edt_codcli.Text:=DM1.Tb_Ped01p1codcli.AsString;

   if flqr1('CRAZAO,CLOG,CBAIRRO,CCIDADE,CUF','C','CADCLI','N','CCODCLI',DM1.Tb_Ped01p1codcli.AsString) then
      begin
      NOMCLI.Text        :=DM1.Query1.Fields[0].AsString;
      ENDERECO.Text      :=Trim(DM1.Query1.fields[1].AsString)+' '+DM1.Query1.fields[2].AsString;
      NOMCID.Text        :=Trim(DM1.Query1.Fields[3].AsString)+'-'+DM1.Query1.fields[4].AsString;
      end
   else
      begin
      NOMCLI.Text        :='';
      ENDERECO.Text      :='';
      NOMCID.Text        :='';
      end;
   if DM1.Tb_Ped01P1DATANF.Value>=pdatanula then
      begin
      lbl_datanf.Caption :='Data da Nota:';
      DATANF.Text        :=FormatDatetime(fdt2, DM1.Tb_Ped01P1DATANF.Value);
      NUMNF.Text         :=DM1.Tb_Ped01P1NUMNF.AsString;
      end
   else
      begin
      lbl_datanf.Caption :='Data do Pedido:';
      DATANF.Text        :=FormatDatetime(fdt2, DM1.Tb_Ped01P1DATAP.Value);
      NUMNF.Text         :='';
      end;
   VALFRE.Text        :=FormatFloat(mcasas, DM1.Tb_Ped01P1VALFRE.Value);
   TOTALNF.Text       :=FormatFloat(mcasas, DM1.Tb_Ped01P1TOTALL.Value);
   CODTRA.Text        :='';
   NOMTRA.Text        :='';
   if DM1.Tb_Ped01P1CODTRA.Value>0 then
      begin
      if flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',DM1.Tb_Ped01P1CODTRA.AsString) then
         begin
         CODTRA.Text        :=DM1.Tb_Ped01P1CODTRA.AsString;
         NOMTRA.Text        :=DM1.Query1.Fields[0].AsString;
         end;
      end;
   RGFRETEPC.ItemIndex:=DM1.Tb_Ped01P1FRETEPC.AsInteger-1;
   PLACAV.Text        :=DM1.Tb_Ped01P1PLACAV.Value;
   UFPV.Text          :=DM1.Tb_Ped01P1UFPV.Value;
   QTDVOL.Text        :=DM1.Tb_Ped01P1QTDVOL.AsString;
   ESPECIE.Text       :=DM1.Tb_Ped01P1ESPECIE.Value;
   PESOB.Text         :=FormatFloat('#,##0.00', DM1.Tb_Ped01P1PESOB.Value);
   PESOL.Text         :=FormatFloat('#,##0.00', DM1.Tb_Ped01P1PESOL.Value);
   CODENT.Text        :='';
   NOMENT.Text        :='';
   if DM1.Tb_Ped01P1CODENT.Value>0 then
      begin
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM1.Tb_Ped01P1CODENT.AsString) then
         begin
         CODENT.Text:=DM1.Tb_Ped01P1CODENT.AsString;
         NOMENT.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;
   if DM1.Tb_Ped01P1DATENT.Value<=pdatanula then
      DATENT.Text     :='/  /'
   else
      DATENT.Text     :=FormatDateTime(fdt2, DM1.Tb_Ped01P1DATENT.Value);
   HORENT.Text        :=DM1.Tb_Ped01P1HORENT.Value;

   if DM1.Tb_Ped01P1PREVENT.Value<=pdatanula then
      PREVENT.Text     :='/  /'
   else
      PREVENT.Text     :=FormatDateTime(fdt2, DM1.Tb_Ped01P1PREVENT.Value);
   HPREVENT.Text       :=DM1.Tb_Ped01P1HPREVENT.Value;
   DATDIG.Text        :=FormatDateTime(fdt2, DM1.Tb_Ped01P1DATAP.Value);
   HORDIG.Text        :=DM1.Tb_Ped01P1HORADIG.Value;
   CODDIG.Text        :='';
   NOMDIG.Text        :='';
   if DM1.Tb_Ped01P1CODUSR.Value>0 then
      begin
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM1.Tb_Ped01P1CODUSR.AsString) then
         begin
         CODDIG.Text:=DM1.Tb_Ped01P1CODUSR.AsString;
         NOMDIG.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;
   CODCV.Text         :='';
   NOMCV.Text         :='';
   if DM1.Tb_Ped01P1CODCV.Value>0 then
      begin
      if flqr1('CVRAZAO','','CADCV','N','CVCODCV',DM1.Tb_Ped01P1CODCV.AsString) then
         begin
         CODCV.Text:=DM1.Tb_Ped01P1CODCV.AsString;
         NOMCV.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;


   CODSEP.Text        :='';
   NOMSEP.Text        :='';
   DATSEP.Text        :='/  /';
   if DM1.Tb_Ped01P1CODSEP.Value>0 then
      begin
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM1.Tb_Ped01P1CODSEP.AsString) then
         begin
         CODSEP.Text:=DM1.Tb_Ped01P1CODSEP.AsString;
         NOMSEP.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;
   if DM1.Tb_Ped01P1DATASEP.Value>pdatanula then
      DATSEP.Text        :=FormatDateTime(fdt2, DM1.Tb_Ped01P1DATASEP.Value);
   HORSEP.Text        :=DM1.Tb_Ped01P1HORSEP.Value;
   CODCON.Text        :='';
   NOMCON.Text        :='';
   if DM1.Tb_Ped01P1CODCON.Value>0 then
      begin
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM1.Tb_Ped01P1CODCON.AsString) then
         begin
         CODCON.Text:=DM1.Tb_Ped01P1CODCON.AsString;
         NOMCON.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;
   HORCON.Text        :=DM1.Tb_Ped01P1HORCON.Value;
   if DM1.Tb_Ped01P1DATCON.Value<=pdatanula then
      DATCON.Text        :='/  /'
   else
      DATCON.Text        :=FormatDateTime(fdt2, DM1.Tb_Ped01P1DATCON.Value);
   CODEMB.Text        :='';
   NOMEMB.Text        :='';
   if DM1.Tb_Ped01P1CODEMB.Value>0 then
      begin
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM1.Tb_Ped01P1CODEMB.AsString) then
         begin
         CODEMB.Text:=DM1.Tb_Ped01P1CODEMB.AsString;
         NOMEMB.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;
   if DM1.Tb_Ped01P1DATAEMB.Value<=pdatanula then
      DATEMB.Text     :='/  /'
   else
      DATEMB.Text     :=FormatDateTime(fdt2, DM1.Tb_Ped01P1DATAEMB.Value);
   HOREMB.Text        :=DM1.Tb_Ped01P1HOREMB.Value;

   NAUT.Text:=DM1.Tb_Ped01P1NAUT.Value;
   OBS1.Text   := DM1.Tb_Ped01P1OBS1.Value;
   OBS2.Text   := DM1.Tb_Ped01P1OBS2.Value;
   OBS3.Text   := DM1.Tb_Ped01P1OBS3.Value;
   CB_CANHOTO.Checked:=DM1.Tb_ped01P1CANHOTO.Asinteger=1;
   CB_SEMCOMP.Checked:=valint(Copy(DM1.Tb_Ped01P1SEMCOMP.AsString,1,1))=1;
   fCarregarTabelaEtiqueta(0);   
   end;


end;
procedure TFrm_Etivol02.CODTRAKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTRA.Text:=fChamaTra(0,'frm_Etivol02',Key);
   if trim(CODTRA.Text)<>'' then
      CODTRAExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Etivol02.CODTRAExit(Sender: TObject);
begin
if ValFloat(CODTRA.Text)>0 then
   begin
   if not flcadtra(1,0,CODTRA.Text) then
      begin
      fmensagem('Transportadora não Cadastrada!',0,['0'],0);
      CODTRA.SetFocus;
      end
   else
      begin
      NOMTRA.Text:=DM1.Tb_TraTRRAZTRA.Value;
      if (qr_ped.IsEmpty) then
         fCarregarTabelaEtiqueta(0);

      end;
   end;

end;

procedure TFrm_Etivol02.PLACAVKeyPress(Sender: TObject; var Key: Char);
begin
if (length(PLACAV.Text)>7) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Etivol02.PLACAVExit(Sender: TObject);
begin
if (length(PLACAV.Text)>7) then
   PLACAV.Text:=copy(PLACAV.Text,1,8);

end;

procedure TFrm_Etivol02.UFPVExit(Sender: TObject);
begin
if (length(UFPV.Text)>1) then
   UFPV.Text:=copy(UFPV.Text,1,2);

end;

procedure TFrm_Etivol02.UFPVKeyPress(Sender: TObject; var Key: Char);
begin
if (length(UFPV.Text)>1) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Etivol02.QTDVOLExit(Sender: TObject);
begin
QTDVOL.Text:=FloatToStr(FSonumero(QTDVOL.Text));
if ValFloat(QTDVOL.Text)<0 then
   QTDVOL.Text:='0';
if ValFloat(QTDVOL.Text)>999999999 then
   begin
   fmensagem('Quantidade de Volumes não Suportada!',0,['0'],0);
   QTDVOL.SetFocus;
   end;
if mant_qtdvol<>valint(QTDVOL.text) then
   fCriarEtiquetas;;

end;

procedure TFrm_Etivol02.ESPECIEExit(Sender: TObject);
begin
if (length(ESPECIE.Text)>19) then
   ESPECIE.Text:=copy(ESPECIE.Text,1,20);

end;

procedure TFrm_Etivol02.ESPECIEKeyPress(Sender: TObject; var Key: Char);
begin
if (length(ESPECIE.Text)>19) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Etivol02.PESOBExit(Sender: TObject);
begin
if ValFloat(PESOB.Text)<0 then
   PESOB.Text:='0.000';
PESOB.Text:=FormatFloat('0.000',ValFloat(PESOB.Text));
if ValFloat(PESOB.Text)>99999999 then
   begin
   fmensagem('Peso não Suportado!',0,['0'],0);
   PESOB.SetFocus;
   end;
if valfloat(pesob.Text)<>mant_pesob then
   fCriarEtiquetas;


end;

procedure TFrm_Etivol02.PESOLExit(Sender: TObject);
begin
if ValFloat(PESOL.Text)<0 then
   PESOL.Text:='0.000';
PESOL.Text:=FormatFloat('0.000',ValFloat(PESOL.Text));
if ValFloat(PESOL.Text)>99999999 then
   begin
   fmensagem('Peso não Suportado!',0,['0'],0);
   PESOL.SetFocus;
   end;
if valfloat(pesol.Text)<>mant_pesol then
   fCriarEtiquetas;

end;

procedure TFrm_Etivol02.CODSEPExit(Sender: TObject);
begin
CODSEP.Text:=fdeixanum2(CODSEP.Text);
if ValFloat(CODSEP.Text)=0 then
   exit;
if not flcadusr(1,0,CODSEP.Text) then
   begin
   fmensagem('Usuário não Cadastrado!',0,['0'],0);
   CODSEP.SetFocus;
   end
else
   NOMSEP.Text:=DM4.Tb_UsrNOMUSR.Value;

end;

procedure TFrm_Etivol02.CODSEPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODSEP.Text:=fChamaUsr(0,'frm_Etivol02',Key);
   if trim(CODSEP.Text)<>'' then
      CODSEPExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Etivol02.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCON.Text:=fChamaUsr(0,'frm_Etivol02',Key);
   if trim(CODCON.Text)<>'' then
      CODCONExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Etivol02.CODCONExit(Sender: TObject);
begin
CODCON.Text:=fdeixanum2(CODCON.Text);
if ValFloat(CODCON.Text)=0 then
   exit;
if not flcadusr(1,0,CODCON.Text) then
   begin
   fmensagem('Usuário não Cadastrado!',0,['0'],0);
   CODCON.SetFocus;
   end
else
   NOMCON.Text:=DM4.Tb_UsrNOMUSR.Value;


end;

procedure TFrm_Etivol02.CODEMBExit(Sender: TObject);
begin
CODEMB.Text:=FloatToStr(FSonumero(CODEMB.Text));
if ValFloat(CODEMB.Text)=0 then
   exit;
if not flcadusr(1,0,CODEMB.Text) then
   begin
   fmensagem('Usuário não Cadastrado!',0,['0'],0);
   CODEMB.SetFocus;
   end
else
   begin
   if trim(DATEMB.Text)='/  /' then
      DATEMB.Text:=FormatDatetime(fdt2, Date);
   if trim(HOREMB.Text)=':  :' then
      HOREMB.Text:=FormatDatetime(fhr, Time);

   NOMEMB.Text:=DM4.Tb_UsrNOMUSR.Value;
   end;

end;

procedure TFrm_Etivol02.CODEMBKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODEMB.Text:=fChamaUsr(0,'frm_Etivol02',Key);
   if trim(CODEMB.Text)<>'' then
      CODEMBExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Etivol02.CODENTKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODENT.Text:=fChamaUsr(0,'frm_Etivol02',Key);
   if trim(CODEMB.Text)<>'' then
      CODEMBExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Etivol02.CODDIGKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODDIG.Text:=fChamaUsr(0,'frm_Etivol02',Key);
   if trim(CODDIG.Text)<>'' then
      CODDIGExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Etivol02.CODENTExit(Sender: TObject);
begin
CODENT.Text:=FloatToStr(FSonumero(CODENT.Text));
if ValFloat(CODENT.Text)=0 then
   exit;
if not flcadusr(1,0,CODENT.Text) then
   begin
   fmensagem('Usuário não Cadastrado!',0,['0'],0);
   CODENT.SetFocus;
   end
else
   NOMENT.Text:=DM4.Tb_UsrNOMUSR.Value;

end;

procedure TFrm_Etivol02.CODDIGExit(Sender: TObject);
begin
CODDIG.Text:=FloatToStr(FSonumero(CODDIG.Text));
if ValFloat(CODDIG.Text)=0 then
   exit;
if not flcadusr(1,0,CODDIG.Text) then
   begin
   fmensagem('Usuário não Cadastrado!',0,['0'],0);
   CODDIG.SetFocus;
   end
else
   NOMDIG.Text:=DM4.Tb_UsrNOMUSR.Value;

end;

procedure TFrm_Etivol02.DATENTExit(Sender: TObject);
begin
if Trim(DATENT.Text)<>'/  /' then
   begin
   Try
      DATENT.Text:=FormatDateTime(fdt2, StrToDate(DATENT.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      DATENT.SetFocus;
      end;
   end;
end;

procedure TFrm_Etivol02.DATSEPExit(Sender: TObject);
begin
if Trim(DATSEP.Text)<>'/  /' then
   begin
   Try
      DATSEP.Text:=FormatDateTime(fdt2, StrToDate(DATSEP.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      DATSEP.SetFocus;
      end;
   end;

end;

procedure TFrm_Etivol02.DATCONExit(Sender: TObject);
begin
if Trim(DATCON.Text)<>'/  /' then
   begin
   Try
      DATCON.Text:=FormatDateTime(fdt2, StrToDate(DATCON.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      DATCON.SetFocus;
      end;
   end;

end;

procedure TFrm_Etivol02.DATEMBExit(Sender: TObject);
begin
if Trim(DATEMB.Text)<>'/  /' then
   begin
   Try
      DATEMB.Text:=FormatDateTime(fdt2, StrToDate(DATEMB.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      DATEMB.SetFocus;
      end;
   end;

end;

procedure TFrm_Etivol02.HORENTExit(Sender: TObject);
begin
if Trim(HORENT.Text)<>':  :' then
   begin
   Try
      HORENT.Text:=FormatDateTime(fhr, StrToTime(HORENT.Text));
   except
      fmensagem('Hora Invalida!',0,['0'],0);
      HORENT.SetFocus;
      end;
   end;

end;

procedure TFrm_Etivol02.HORSEPExit(Sender: TObject);
begin
if Trim(HORSEP.Text)<>':  :' then
   begin
   Try
      HORSEP.Text:=FormatDateTime(fhr, StrToTime(HORSEP.Text));
   except
      fmensagem('Hora Invalida!',0,['0'],0);
      HORSEP.SetFocus;
      end;
   end;

end;

procedure TFrm_Etivol02.HORCONExit(Sender: TObject);
begin
if Trim(HORCON.Text)<>':  :' then
   begin
   Try
      HORCON.Text:=FormatDateTime(fhr, StrToTime(HORCON.Text));
   except
      fmensagem('Hora Invalida!',0,['0'],0);
      HORCON.SetFocus;
      end;
   end;

end;

procedure TFrm_Etivol02.HOREMBExit(Sender: TObject);
begin
if Trim(HOREMB.Text)<>':  :' then
   begin
   Try
      HOREMB.Text:=FormatDateTime(fhr, StrToTime(HOREMB.Text));
   except
      fmensagem('Hora Invalida!',0,['0'],0);
      HOREMB.SetFocus;
      end;
   end;

end;

procedure TFrm_Etivol02.SB1Click(Sender: TObject);
begin
if Frm_PedCli=nil then
   Application.CreateForm(TFrm_PedCli, Frm_PedCli);
if Frm_PedCli.WindowState=wsMinimized then
   begin
   Frm_PedCli.Free;
   Frm_PedCli:=nil;
   Application.CreateForm(TFrm_PedCli, Frm_PedCli);
   end;
Frm_PedCli.ori_pedcli:='Frm_Etivol02';
Frm_PedCli.ShowModal;
CHAVE.Text:=Frm_PedCli.Tb_PedP1CHAVE.AsString;
mpcodemp:=Frm_PedCli.Tb_PedP1CODEMP.AsInteger;
if mpcodemp>99 then
   cb_extra.Checked:=true
else
   cb_extra.Checked:=false;


FreeAndNil(Frm_PedCli);
if fsonumero(CHAVE.Text)>0 then
   begin
   CHAVEExit(self);
{
   if not flcadp01(0,mpcodemp,ls_numped,CHAVE.Text,'') then
      begin
      fmensagem('Chave não Encontrada!',0,['0'],0);
      CHAVE.SetFocus;
      end
   else
      begin
      bbEmitir.Enabled:=true;
      fManPedCarregaDados(1);
      end;
}      
   end;

end;

procedure TFrm_Etivol02.bbGravarClick(Sender: TObject);
begin

bbGravar.Enabled:=false;
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.Params.CreateParam(ftString,'P1CODEMP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1LOTSEQ',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1CHAVE',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1CODUSR',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1HORADIG',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1CODCON',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1DATCON',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1HORCON',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1CODENT',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1DATENT',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1HORENT',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1PREVENT',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1HPREVENT',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1CODTRA',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1QTDVOL',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1PESOL',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1PESOB',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1ESPECIE',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1FRETEPC',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1UFPV',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1PLACAV',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1CODSEP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1DATASEP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1HORSEP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1CODEMB',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1DATAEMB',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1HOREMB',ptInput);

DM1.Query3.Params.CreateParam(ftString,'P1NAUT',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1DATVIS',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1NUMVIS',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1CODCV',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1OBS1',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1OBS2',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1OBS3',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1CANHOTO',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1SEMCOMP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1SITPED',ptInput);


//
DM1.Query3.SQL.add('Update CADP01 SET '
                  +' P1CODUSR =:P1CODUSR, '
                  +' P1HORADIG=:P1HORADIG, '
                  +' P1CODCON =:P1CODCON, '
                  +' P1DATCON =:P1DATCON, '
                  +' P1HORCON =:P1HORCON, '
                  +' P1CODENT =:P1CODENT, '
                  +' P1DATENT =:P1DATENT, '
                  +' P1HORENT =:P1HORENT, '
                  +' P1PREVENT=:P1PREVENT, '
                  +' P1HPREVENT=:P1HPREVENT, '
                  +' P1CODTRA =:P1CODTRA, '
                  +' P1QTDVOL =:P1QTDVOL, '
                  +' P1PESOL  =:P1PESOL, '
                  +' P1PESOB  =:P1PESOB, '
                  +' P1ESPECIE=:P1ESPECIE, '
                  +' P1FRETEPC=:P1FRETEPC, '
                  +' P1UFPV   =:P1UFPV, '
                  +' P1PLACAV =:P1PLACAV, '
                  +' P1CODSEP =:P1CODSEP, '
                  +' P1DATASEP=:P1DATASEP, '
                  +' P1HORSEP =:P1HORSEP, '
                  +' P1CODEMB =:P1CODEMB, '
                  +' P1DATAEMB=:P1DATAEMB, '
                  +' P1HOREMB =:P1HOREMB,'
                  +' P1NAUT   =:P1NAUT,'
                  +' P1DATVIS =:P1DATVIS,'
                  +' P1NUMVIS =:P1NUMVIS, '
                  +' P1CODCV  =:P1CODCV, '
                  +' P1OBS1   =:P1OBS1, '
                  +' P1OBS2   =:P1OBS2, '
                  +' P1OBS3   =:P1OBS3, '
                  +' P1CANHOTO=:P1CANHOTO, '
                  +' P1SEMCOMP=:P1SEMCOMP, '
                  +' P1SITPED =:P1SITPED '
                  +' where '
                  +' P1CODEMP =:P1CODEMP and P1CHAVE=:P1CHAVE and P1LOTSEQ=:P1LOTSEQ ');



DM1.Query3.ParambyName('P1CODEMP').AsFloat     := DM1.Tb_Ped01P1CODEMP.Value;
DM1.Query3.ParambyName('P1LOTSEQ').AsFloat     := DM1.Tb_Ped01P1LOTSEQ.Value;
DM1.Query3.ParambyName('P1CHAVE').AsFloat      := DM1.Tb_Ped01P1CHAVE.Value;
DM1.Query3.ParambyName('P1CODUSR').AsFloat     := fsonumero(CODDIG.Text);
DM1.Query3.ParambyName('P1HORADIG').AsString   := HORDIG.Text;
DM1.Query3.ParambyName('P1CODCON').AsFloat     := fsonumero(CODCON.Text);
if Trim(DATCON.Text)<>'/  /'  then
   DM1.Query3.ParambyName('P1DATCON').AsDateTime:=StrtoDate(DATCON.Text)
else
   DM1.Query3.ParambyName('P1DATCON').AsDateTime:=pdatanula;
DM1.Query3.ParambyName('P1HORCON').AsString     := HORCON.Text;
DM1.Query3.ParambyName('P1CODENT').AsFloat      := Valint(CODENT.Text);
if Trim(DATENT.Text)<>'/  /'  then
   DM1.Query3.ParambyName('P1DATENT').AsDateTime := StrToDate(DATENT.Text)
else
   DM1.Query3.ParambyName('P1DATENT').AsDateTime := pdatanula;
DM1.Query3.ParambyName('P1HORENT').AsString      := HORENT.Text;

if Trim(PREVENT.Text)<>'/  /'  then
   DM1.Query3.ParambyName('P1PREVENT').AsDateTime := StrToDate(PREVENT.Text)
else
   DM1.Query3.ParambyName('P1PREVENT').AsDateTime := pdatanula;
DM1.Query3.ParambyName('P1HPREVENT').AsString     := HPREVENT.Text;
DM1.Query3.ParambyName('P1CODTRA').AsFloat       := ValInt(CODTRA.Text);
DM1.Query3.ParambyName('P1QTDVOL').AsFloat       := ValFloat(QTDVOL.Text);
DM1.Query3.ParambyName('P1PESOL').AsFloat        := ValFloat(PESOL.Text);
DM1.Query3.ParambyName('P1PESOB').AsFloat        := ValFloat(PESOB.Text);
DM1.Query3.ParambyName('P1ESPECIE').AsString     := ESPECIE.Text;
DM1.Query3.ParambyName('P1FRETEPC').AsFloat      := RGFRETEPC.ItemIndex+1;
DM1.Query3.ParambyName('P1UFPV').AsString        := UFPV.Text;
DM1.Query3.ParambyName('P1PLACAV').AsString      := PLACAV.Text;
DM1.Query3.ParambyName('P1CODSEP').AsFloat       := ValInt(CODSEP.Text);
if Trim(DATSEP.Text)<>'/  /'  then
   DM1.Query3.ParambyName('P1DATASEP').AsDateTime   :=StrtoDate(DATSEP.Text)
else
   DM1.Query3.ParambyName('P1DATASEP').AsDateTime   :=pdatanula;
DM1.Query3.ParambyName('P1HORSEP').AsString      := HORSEP.Text;
DM1.Query3.ParambyName('P1CODEMB').AsFloat       := ValInt(CODEMB.Text);
if Trim(DATEMB.Text)<>'/  /'  then
   DM1.Query3.ParambyName('P1DATAEMB').AsDateTime:=StrtoDate(DATEMB.Text)
else
   DM1.Query3.ParambyName('P1DATAEMB').AsDateTime:=pdatanula;
DM1.Query3.ParambyName('P1HOREMB').AsString      := HOREMB.Text;
DM1.Query3.ParambyName('P1NAUT').AsString        := NAUT.Text;
DM1.Query3.ParambyName('P1CODCV').AsFloat        := fsonumero(CODCV.Text);
DM1.Query3.ParambyName('P1OBS1').AsString        := OBS1.Text;
DM1.Query3.ParambyName('P1OBS2').AsString        := OBS2.Text;
DM1.Query3.ParambyName('P1OBS3').AsString        := OBS3.Text;
DM1.Query3.ParambyName('P1CANHOTO').AsInteger    := iif(CB_CANHOTO.Checked,1,0);
DM1.Query3.ParambyName('P1SEMCOMP').AsString     := iif(CB_SEMCOMP.Checked,'1','0');
//DM1.Query3.ParambyName('P1CANHOTO').AsInteger    := 0;
try
   DM1.Query3.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(11,804,'Manped','CADP01');
   end;

fCarregarTabelaEtiqueta(0);

SB1.Enabled      :=true;
CHAVE.Enabled    :=true;
Panel_corpo.Enabled:=true;

end;

procedure TFrm_Etivol02.PREVENTExit(Sender: TObject);
begin
if Trim(PREVENT.Text)<>'/  /' then
   begin
   Try
      PREVENT.Text:=FormatDateTime(fdt2, StrToDate(PREVENT.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      PREVENT.SetFocus;
      end;
   end;

end;

procedure TFrm_Etivol02.HPREVENTExit(Sender: TObject);
begin
if Trim(HPREVENT.Text)<>':  :' then
   begin
   Try
      HPREVENT.Text:=FormatDateTime(fhr, StrToTime(HPREVENT.Text));
   except
      fmensagem('Hora Invalida!',0,['0'],0);
      HPREVENT.SetFocus;
      end;
   end;

end;

procedure TFrm_Etivol02.NAUTKeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(1,40,NAUT.Text,key) then
   key:=#0;
end;

procedure TFrm_Etivol02.NAUTExit(Sender: TObject);
begin
if not fTestaTam(0,40,NAUT.Text,'') then
   NAUT.Text:=copy(NAUT.Text,1,40);

end;

procedure TFrm_Etivol02.CODCVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(TFrm_Con, Frm_Con);
   Frm_Con.Edit1.Text:=key;
   Frm_Con.BBnAtu.Click;
   Frm_Con.Edit1.SelStart:=1;
   Frm_Con.Edit1.SelLength:=1;
   Frm_Con.PC1.ActivePageIndex:=1;
   Con_Ori:='Frm_ManPed';
   if Frm_Con.ShowModal=mrok then
      CODCV.Text:=DM1.Tb_CVCVCODCV.AsString;
   Frm_Con.Free;
   key:=#0;
   end;


end;

procedure TFrm_Etivol02.CODCVExit(Sender: TObject);
begin
if ValFloat(CODCV.Text)>0 then
   begin
   if not flcadcv(1,CODCV.Text) then
      begin
      fmensagem('Convênio não Cadastrada!',0,['0'],0);
      CODCV.SetFocus;
      end
   else
      NOMCV.Text:=DM1.Tb_CVCVRAZAO.Value;
   end;

end;

procedure TFrm_Etivol02.OBS1Exit(Sender: TObject);
begin
if not fTestaTam(0,60,OBS1.Text,'') then
   OBS1.Text:=copy(OBS1.Text,1,60);

end;

procedure TFrm_Etivol02.OBS1KeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(1,60,OBS1.Text,key) then
   key:=#0;

end;

procedure TFrm_Etivol02.OBS2KeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(1,60,OBS2.Text,key) then
   key:=#0;

end;

procedure TFrm_Etivol02.OBS2Exit(Sender: TObject);
begin
if not fTestaTam(0,60,OBS2.Text,'') then
   OBS2.Text:=copy(OBS2.Text,1,60);

end;

procedure TFrm_Etivol02.bbCancelarClick(Sender: TObject);
begin
{
if bbGravar.Enabled then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Update CADP01 set P1SITPED=0 '
                     +' where P1CODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString
                     +' and P1LOTSEQ=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
                     +' and P1CHAVE=0'+DM1.Tb_Ped01P1CHAVE.AsString);
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(02,6216,'Frm_Ped','CADP01');
      end;
   end;
}
mem_etiqueta.close;
bbGravar.Enabled:=false;
fManPedCarregaDados(0);
SB1.Enabled      :=true;
CHAVE.Enabled    :=true;
Panel_corpo.Enabled:=true;
//CHAVE.SetFocus;
end;

procedure TFrm_Etivol02.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
{
If BBGRAVAR.Enabled then
   begin
   verteclado(0);
   Case fmensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],0) of
      mrYes: begin
             BBGRAVAR.Click;
             exit;
             end;
      mrNo: begin
            bbCancelar.Click;
            exit;
            end
      else begin
           CanClose:=False;
           exit;
           end;
      end;
   end;
}
end;

procedure TFrm_Etivol02.OBS3Exit(Sender: TObject);
begin
if not fTestaTam(0,60,OBS3.Text,'') then
   OBS3.Text:=copy(OBS3.Text,1,60);

end;

procedure TFrm_Etivol02.OBS3KeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(1,60,OBS3.Text,key) then
   key:=#0;

end;

procedure TFrm_Etivol02.bbEmitirClick(Sender: TObject);
var
y,x,mqtd,mlin, mcol: Integer;
mnumnf: String;
fEtiq: TextFile;


begin
if ValFloat(CHAVE.Text)=0 then
   begin
   fmensagem('Favor digitar uma Chave  Valida!',0,['0'],0);
   CHAVE.SetFocus;
   exit;
   end;

if ValFloat(QTDVOL.Text)=0 then
   begin
   fmensagem('Favor digitar uma quantidade de volumes Valida!',0,['0'],0);
   exit;
   end;

if Trim(CODEMB.Text)='' then
   begin
   fmensagemSom('Codigo do Embalador Campo Obrigatorio!',0,['0'],0);
   CODEMB.SetFocus;
   exit;
   end;

bbEmitir.Enabled:=false;

if bbGravar.Enabled then
   begin
   bbGravarClick(Self);
   end;
if (Qr_Ped.Active=false) or (Qr_Ped.IsEmpty) then
   begin
   fmensagem('Nada a Ser Impresso!',0,['0'],0);
   exit;
   end;

if CB_TERMICA.ItemIndex=mImpressora_Termica then  // impressora termica
   begin
//   pgerarantes;

   fImpressaoTermica;


   fConfirmarEmissao(0);
   end
else if (CB_TERMICA.ItemIndex=mLaserModelo01) or (CB_TERMICA.ItemIndex=mLaserModelo02) then
   begin
   mem_etiqueta.First;

   if fSalvarImagem('LOGO_ETIQUETA','C:\SGE\LOGO_ETIQUETA.JPG') then
      begin
      logo_emit.Picture.LoadFromFile('C:\SGE\LOGO_ETIQUETA.JPG');
      RLImage1.Picture.LoadFromFile('C:\SGE\LOGO_ETIQUETA.JPG');
      end
   else
      begin
      logo_emit.Picture:=nil;
      RLImage1.Picture:=nil;
      end;

//luiz
   if (CB_TERMICA.ItemIndex=mLaserModelo01) then
      begin
      While not mem_config.Eof do
        begin
        x:=-1;
        for y:=0 to ComponentCount-1 do
          begin
          if UpperCase(mem_configCOMPONENTE_NAME.AsString)=
            uppercase(Components[y].Name) then
            begin
            x:=y;
            break;
            end;
          end;
        if x>=0 then
          begin
          if mem_configCOMPONENTE_TIPO.AsString='TRLDBTEXT' then
            begin
            if mem_configIMPRIME.AsString='X' then
              (Components[x] as TRLDBText).Visible:=True
            else
              (Components[x] as TRLDBText).Visible:=False;
            end
          else if mem_configCOMPONENTE_TIPO.AsString='TRLDBMEMO' then
            begin
            if mem_configIMPRIME.AsString='X' then
              (Components[x] as TRLDBMemo).Visible:=True
            else
              (Components[x] as TRLDBMemo).Visible:=False;
            end
          else if mem_configCOMPONENTE_TIPO.AsString='TRLDBBARCODE' then
            begin
            if mem_configIMPRIME.AsString='X' then
              (Components[x] as TRLDBBarcode).Visible:=True  //ldcnow
            else
              (Components[x] as TRLDBBarcode).Visible:=False;
            end;
          end;
        mem_config.Next;
        end;


       dbrl_codbar.Visible:=CB_CODBAR_VOL.Checked;

       if (valint(edt_rl_QtdLado.Text)>2) or (valint(edt_rl_QtdLado.Text)<1) then
          RLDetailGrid1.ColCount:=1
       else
          RLDetailGrid1.ColCount:=valint(edt_rl_QtdLado.Text);


       RLDetailGrid1.Height:=valint(edt_rl_AltEtiq.Text);

       RLReport_modelo01.PageSetup.PaperHeight:=alt_page.Value;
       RLReport_modelo01.PageSetup.PaperWidth :=larg_page.Value;
       RLReport_modelo01.Margins.TopMargin    :=edt_marsup.Value;
       RLReport_modelo01.Margins.BottomMargin :=edt_marinf.Value;
       RLReport_modelo01.Margins.LeftMargin   :=edt_maresq.Value;
       RLReport_modelo01.Margins.RightMargin  :=edt_mardir.Value;
       RLReport_modelo01.PreviewModal;
       end
    else
       begin
       if (valint(edt_rl_QtdLado.Text)>2) or (valint(edt_rl_QtdLado.Text)<1) then
          RLDetailGrid_mod02.ColCount:=1
       else
          RLDetailGrid_mod02.ColCount:=valint(edt_rl_QtdLado.Text);


       RLDetailGrid_mod02.Height:=valint(edt_rl_AltEtiq.Text);

       RLReport_modelo02.PageSetup.PaperHeight:=alt_page.Value;
       RLReport_modelo02.PageSetup.PaperWidth :=larg_page.Value;
       RLReport_modelo02.Margins.TopMargin    :=edt_marsup.Value;
       RLReport_modelo02.Margins.BottomMargin :=edt_marinf.Value;
       RLReport_modelo02.Margins.LeftMargin   :=edt_maresq.Value;
       RLReport_modelo02.Margins.RightMargin  :=edt_mardir.Value;
       RLReport_modelo02.PreviewModal;

       end;
   fConfirmarEmissao(0);
   end
else if CB_TERMICA.ItemIndex=mMatricial then  // matricial fixa
   begin
   Qr_Ped.Close;
   Qr_Ped.SQL.Clear;
   Qr_Ped.SQL.Add('Select P1CODCLI,P1LOTSEQ,P1CHAVE,P1DATAP,P1NUMNF,P1QTDVOL,P1ETIVOL,CRAZAO,CLOG,CBAIRRO, '
                 +'       P1CODEMP, P1CODEMB,P1CODTRA, TRRAZTRA, '
                 +'            CCIDADE,CUF,CDENOM,CCEP,CFONE01 '
                 +' from CADP01,CADCLI, CADTRA where TRCODTRA(+)=P1CODTRA AND  P1QTDVOL>0 and '
                 +iif(DM1.Qr_Tid.locate('TINOME','CADPED',[]),'', ' P1CODEMP=0'+IntTostr(mpcodemp)+' and ')
                 +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'', ' CCODEMP=P1CODEMP and ')
                 +' CCODCLI=P1CODCLI '
                 );

   if fsonumero(CHAVE.Text)>0 then
      begin
      Qr_Ped.SQL.Add(' and P1CHAVE=0'+Trim(CHAVE.Text));
      end;

   Qr_Ped.SQL.add(' and P1ORDEM=01 ');
   Qr_Ped.open;

   RDprint1.Abrir;
   mlin:=0;
   mcol:=14;
   While not Qr_Ped.eof do
      begin
      for mqtd:=1 to Qr_PedP1QTDVOL.AsInteger do
         begin
         mlin:=1;
         mnumnf:=FormatFloat('000000',Qr_PedP1NUMNF.Value);
         if DM1.Tb_PargerPAGRUDUP.Value=1 then
            begin
            DM1.Query2.Close;
            DM1.Query2.SQL.Clear;
            DM1.Query2.SQL.add('Select P1NUMNF from CADP01 where '
                              +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+IntTostr(mpcodemp)+' and ')
                              +' P1LOTSEQ=0'+Qr_PedP1LOTSEQ.AsString
                              +' and P1CHAVE=0'+Qr_PedP1CHAVE.AsString
                              +' order by P1NUMNF ');

            DM1.Query2.Open;
            mnumnf:='';
            While not  DM1.Query2.Eof do
               begin
               if Trim(mnumnf)='' then
                  mnumnf:=mnumnf+DM1.Query2.Fields[0].AsString
               else
                  mnumnf:=mnumnf+'/'+DM1.Query2.Fields[0].AsString;
               DM1.Query2.Next;
               end;
            end;
         mlin:=mlin+2;
         RDprint1.ImpF(mlin,mcol+01,Qr_PedCRAZAO.Value,m12ccp);
         mlin:=mlin+1;
         RDprint1.ImpF(mlin,mcol+01,Qr_PedCLOG.Value,M12CCP);
         mlin:=mlin+1;
         RDprint1.ImpF(mlin,mcol+01,Qr_PedCBAIRRO.Value,M12CCP);
         mlin:=mlin+1;
         RDprint1.ImpF(mlin,mcol+01,Trim(Qr_PedCCIDADE.Value)+'-'+Qr_PedCUF.Value,M12CCP);
         mlin:=mlin+1;
         RDprint1.ImpF(mlin,mcol+01,'Volume: '+IntTostr(mqtd)+'/'+Qr_PedP1QTDVOL.AsString,M12CCP);
         mlin:=mlin+1;
         if Qr_PedP1NUMNF.Value>0 then
            RDprint1.ImpF(mlin,mcol+01,'NF.: '+mnumnf,M12CCP);
         mlin:=mlin+5;
         RDprint1.Novapagina;
         end;
      Qr_Ped.Next;
      if Qr_Ped.Eof then
         if RDprint1.Setup then RDprint1.Fechar;
      end;
   fConfirmarEmissao(0);


   bbEmitir.Enabled:=true;
   end
else if fltdvca(0,mpcodemp,'CADP01','Etiqueta Vol.','CADTDV') then // etiqueta personalizada
   begin

   mpaggr:=DM1.Tb_TDVCATCMPAGGR.Value=1;
   mpagsg:=DM1.Tb_TDVCATCIMPSG.Value=0;
   rpqtdlp:=DM1.Tb_TDVCATCQTDLIN.AsInteger;
   rpqtdlp:=DM1.Tb_TDVCATCQTDLIN.AsInteger;
   fnumcol:=DM1.Tb_TDVCATCNUMCOL.AsInteger;
   fintcol:=DM1.Tb_TDVCATCNUMCOL.AsInteger;
   ftpcol :=DM1.Tb_TDVCATCTPCOL.AsInteger;
   if cb_chavenf.Checked then
     pTextoExtra:=NUMNF.Text
   else
     pTextoExtra:=CHAVE.Text;
   pTextoExtra02:='';

   mcinst:='';
   y:=1;
   for x:=0 to CLB_OUTROSPED.Items.Count-1 do
      begin
      if CLB_OUTROSPED.Checked[x] then
         begin
         y:=y+1;
         if y>4 then
            begin
            if trim(pTextoExtra02)='' then
               pTextoExtra02:=pTextoExtra02+mcinst+CLB_OUTROSPED.Items[x]
            else
               pTextoExtra02:=pTextoExtra02+mcinst+copy(CLB_OUTROSPED.Items[x],length(CLB_OUTROSPED.Items[x])-2,3);
            mcinst:='/';
            end
         else
            pTextoExtra:=pTextoExtra+'/'
            +copy(CLB_OUTROSPED.Items[x],length(CLB_OUTROSPED.Items[x])-2,3)
         end;
      end;

   Frm_SQL.STG_COND.RowCount:=1;
   Frm_SQl.STG_COND.rows[0].Clear;
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:='P1CHAVE';
   Frm_SQl.STG_COND.Cells[02,x-1]:='=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
   Frm_SQL.STG_COND.Cells[04,x-1]:=Trim(CHAVE.Text);
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';


   mnomrel:=DM1.Tb_TDVCATCNOME.Value;


   DM2.Qr_ImpRel.Close;
   DM2.Qr_ImpRel.SQl.Clear;
   DM2.Qr_ImpRel.SQL.Add(frpersql('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,'',x));

   DM2.Qr_ImpRel.Open;
   if DM2.Qr_ImpRel.Eof then
      begin
      fmensagem('Nada a ser impresso na condição Solicitada',0,['0'],0);
      bbEmitir.Enabled:=true;
      exit;
      end;
   plocori:='FRM_ETIVOL02';
   ftab05irel('CADTDV','',1,valint(QTDVOL.Text));
   fConfirmarEmissao(0);
   end;

bbCancelar.Click;
bbEmitir.Enabled:=true;
CHAVE.SetFocus;

end;

procedure TFrm_Etivol02.CODEMBChange(Sender: TObject);
begin
if CODEMB.Modified then bbGravar.Enabled:=true;
end;

procedure TFrm_Etivol02.DATEMBChange(Sender: TObject);
begin
if DATEMB.Modified then bbGravar.Enabled:=true;
end;

procedure TFrm_Etivol02.HOREMBChange(Sender: TObject);
begin
if HOREMB.Modified then bbGravar.Enabled:=true;
end;

procedure TFrm_Etivol02.QTDVOLChange(Sender: TObject);
begin
if QTDVOL.Modified then bbGravar.Enabled:=true;
end;

procedure TFrm_Etivol02.ESPECIEChange(Sender: TObject);
begin
if ESPECIE.Modified then bbGravar.Enabled:=true;
end;

procedure TFrm_Etivol02.PESOBChange(Sender: TObject);
begin
if PESOB.Modified then bbGravar.Enabled:=true;
end;

procedure TFrm_Etivol02.PESOLChange(Sender: TObject);
begin
if PESOL.Modified then bbGravar.Enabled:=true;
end;

procedure TFrm_Etivol02.CODTRAChange(Sender: TObject);
begin
if CODTRA.Modified then bbGravar.Enabled:=true;
end;

procedure TFrm_Etivol02.RGFRETEPCClick(Sender: TObject);
begin
bbGravar.Enabled:=true;
end;

procedure TFrm_Etivol02.PLACAVChange(Sender: TObject);
begin
if PLACAV.Modified then bbGravar.Enabled:=true;
end;

procedure TFrm_Etivol02.UFPVChange(Sender: TObject);
begin
if UFPV.Modified then bbGravar.Enabled:=true;
end;

procedure TFrm_Etivol02.CODENTChange(Sender: TObject);
begin
if CODENT.Modified then bbGravar.Enabled:=true;
end;

procedure TFrm_Etivol02.DATENTChange(Sender: TObject);
begin
if DATENT.Modified then bbGravar.Enabled:=true;
end;

procedure TFrm_Etivol02.HORENTChange(Sender: TObject);
begin
if HORENT.Modified then bbGravar.Enabled:=true;
end;

procedure TFrm_Etivol02.CODDIGChange(Sender: TObject);
begin
if CODDIG.Modified then bbGravar.Enabled:=true;
end;

procedure TFrm_Etivol02.CODSEPChange(Sender: TObject);
begin
if CODSEP.Modified then bbGravar.Enabled:=true;
end;

procedure TFrm_Etivol02.DATSEPChange(Sender: TObject);
begin
if DATSEP.Modified then bbGravar.Enabled:=true;
end;

procedure TFrm_Etivol02.HORSEPChange(Sender: TObject);
begin
if HORSEP.Modified then bbGravar.Enabled:=true;
end;

procedure TFrm_Etivol02.CODCONChange(Sender: TObject);
begin
if CODCON.Modified then bbGravar.Enabled:=true;
end;

procedure TFrm_Etivol02.DATCONChange(Sender: TObject);
begin
if DATCON.Modified then bbGravar.Enabled:=true;
end;

procedure TFrm_Etivol02.HORCONChange(Sender: TObject);
begin
if HORCON.Modified then bbGravar.Enabled:=true;
end;

procedure TFrm_Etivol02.CODCVChange(Sender: TObject);
begin
if CODCV.Modified then bbGravar.Enabled:=true;
end;

procedure TFrm_Etivol02.OBS1Change(Sender: TObject);
begin
if OBS1.Modified then bbGravar.Enabled:=true;
end;

procedure TFrm_Etivol02.OBS2Change(Sender: TObject);
begin
if OBS2.Modified then bbGravar.Enabled:=true;
end;

procedure TFrm_Etivol02.OBS3Change(Sender: TObject);
begin
if OBS3.Modified then bbGravar.Enabled:=true;
end;

procedure TFrm_Etivol02.NAUTChange(Sender: TObject);
begin
if NAUT.Modified then bbGravar.Enabled:=true;
end;

procedure TFrm_Etivol02.CB_CANHOTOClick(Sender: TObject);
begin
bbGravar.Enabled:=true;
end;

procedure TFrm_Etivol02.FormCreate(Sender: TObject);
var
x_print: integer;
begin
tsModelo02.TabVisible:=false;
tsReport_modelo01.TabVisible:=false;


mLocalEtiqueta:='ETIQVOL';

fSetarConfiguraoPadrao;

tsPreConfigurado.TabVisible:=false;
cb_impressora.Items.clear;
for x_print:=0 to Printer.printers.Count-1 do
   begin
   cb_impressora.Items.Add(printer.Printers[x_print]);
   end;
fLerConfiguracao;
cb_impressora.ItemIndex:=0;

cb_modelo.ItemIndex:=0;

tsReport_modelo01.TabVisible:=false;

edt_rl_AltEtiq.Text:=inttoStr(RLDetailGrid1.Height);
mreltab:='CADP01';
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
if codusr=1111 then
   begin
   CB_TERMICA.Visible      :=true;
   tsConfigLaser.TabVisible:=true;
   tsReport_modelo01.TabVisible     :=true;
   end
else
   begin
   tsConfigLaser.TabVisible:=false;
   tsReport_modelo01.TabVisible     :=false;
   end;

if flfilpad(-1,'_ETIVOL02','CB_CODBAR_VOL') then
   CB_CODBAR_VOL.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

if flfilpad(-2,'_ETIVOL02_ET','CB_CRITERITO') then
   begin
   CB_CRITERITO.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   with cb_criterito do ItemIndex:=Items.IndexOf(cb_criterito.Text);
   end;



CB_TERMICA.ItemIndex:=0;





if flfilpad(-3,'_ETIVOL02','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_TERMICA',[]) then
      begin
//      CB_TERMICA.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
      with CB_TERMICA do
         ItemIndex := Items.IndexOf(DM4.Tb_FilPad2FPVALOR.AsString);
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_PORTA',[]) then
      begin
      CB_Porta.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
      with CB_Porta do
         ItemIndex := Items.IndexOf(CB_Porta.Text);
      end;
   if CB_Porta.ItemIndex<=0 then
      begin
      CB_Porta.Items.Add(DM4.Tb_FilPad2FPVALOR.AsString);
      with CB_Porta do
         ItemIndex := Items.IndexOf(CB_Porta.Text);
      end;
   end;

if flfilpad(0,'_ETIVOL02_ET','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','NOMFAN',[]) then
      NOMFAN.text:=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','RAZSOC',[]) then
      RAZSOC.text:=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','OBS_SLOGAN',[]) then
      OBS_SLOGAN.text:=DM4.Tb_FilPad2FPVALOR.AsString;
   end
else
   begin
   NOMFAN.Text    :=DM1.Tb_EmpFANTASIA.AsString;
   RAZSOC.Text    :=DM1.Tb_EmpRAZAO.AsString;
   OBS_SLOGAN.Text:=DM1.Tb_EmpFANTASIA.AsString;
   end;


if CB_TERMICA.ItemIndex=0 then
   begin
   lbl_porta.Visible   :=true;
   CB_Porta.Visible    :=true;
   lbl_etiqpers.Visible:=false;
   end
else
   begin
   lbl_porta.Visible   :=false;
   CB_Porta.Visible    :=false;
   lbl_etiqpers.Visible:=true;
   end;
fRestauraPadrao(0);
end;

procedure TFrm_Etivol02.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := CaFree;
end;

procedure TFrm_Etivol02.sbSalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(0,'_ETIVOL02_ET','');
fGravaPadroes(0,'NOMFAN'          ,'Text' ,'_ETIVOL02_ET',NOMFAN.Text);
fGravaPadroes(0,'RAZSOC'          ,'Text' ,'_ETIVOL02_ET',RAZSOC.Text);
fGravaPadroes(0,'OBS_SLOGAN'      ,'Text' ,'_ETIVOL02_ET',OBS_SLOGAN.Text);

end;

function TFrm_EtiVol02.fConfirmarEmissao(pTipo: Integer): Boolean;
var
x: Integer;
mVolumeMax: Integer;

    procedure fAtualizarPesosorVolume;
    var
    mcampos_dual: string;
    query_exe:tquery;


        procedure pfechartudo;
        begin
        if query_exe<>nil then
           begin
           query_exe.Close;
           freeandnil(query_exe);
           end;
        end;

    begin
    if cb_criterito.itemindex=mCriterito_Por_Item then
       begin
       if fLerGenerico_query('CADP02','sum(P2QTD) as qtdetiq','P2CHAVE=0'+fdeixanum(CHAVE.Text)
          +' and P2CODEMP='+Inttostr(mpcodemp)+' and P2LOTSEQ='+inttostr(ls_numped)
                ,query_consulta) then
          begin
          mVolumeMax:=query_consulta.fieldbyname('qtdetiq').AsInteger;
          end
       else
          mVolumeMax:=0;
       end
    else
       mVolumeMax:=Qr_PedP1QTDVOL.AsInteger;
    query_exe:=tquery.create(nil);
    query_exe.DatabaseName:=DM1.sg_assoc.databasename;
    query_exe.sql.clear;
    query_exe.sql.Add('delete from CADPED_VOLUMES '
                     +' where PV_CODEMP='+Qr_PedP1CODEMP.AsString
                     +' AND   PV_CHAVE='+Qr_PedP1CHAVE.AsString
                     +' AND   PV_CHAVE_ANO='+Qr_PedP1LOTSEQ.AsString
                     +' AND   PV_NUMVOL>'+Inttostr(mVolumeMax));
    try
       query_exe.ExecSQL;
       fdm1StartCommit;
    except on e : exception do
       begin
       ex_erroSql_Novo(query_exe,2099,'SGE','CADPED_VOLUMES');
       pfechartudo;
       exit;
       end;
       end;
    mem_etiqueta.First;
    mcampos_dual:='';
    While not mem_etiqueta.eof do
       begin
       if mcampos_dual<>'' then
          mcampos_dual:=mcampos_dual+' union all ';
       mcampos_dual:=mcampos_dual+' select '
                   +Qr_PedP1CODEMP.asstring+' as PV_CODEMP '
                   +','+Qr_PedP1CHAVE.asstring+' as PV_CHAVE'
                   +','+Qr_PedP1LOTSEQ.asstring+' as PV_CHAVE_ANO '
                   +','+mudavp(mem_etiquetaNUMVOL.asstring)+' as PV_NUMVOL '
                   +','+mudavp(mem_etiquetaQTDVOL.asstring)+' as PV_QTDTOTVOL '
                   +','+mudavp(mem_etiquetaPESOLIQUIDOVOL.asstring)+' as PV_PESO_LIQUIDO '
                   +','+mudavp(mem_etiquetaPESOBRUTOVOL.asstring)+' as PV_PESO_BRUTO '
                   +' from dual ';

       mem_etiqueta.next;
       end;

   query_exe.close;
   query_exe.SQL.CLEAR;
   query_exe.SQL.Add(' MERGE INTO CADPED_VOLUMES t1 USING ( '+mcampos_dual+ ' ) ss ');
   query_exe.SQL.Add(' ON (t1.PV_CODEMP = ss.PV_CODEMP'
                    +' AND t1.PV_CHAVE = ss.PV_CHAVE '
                    +' AND t1.PV_CHAVE_ANO = ss.PV_CHAVE_ANO '
                    +' AND t1.PV_NUMVOL = ss.PV_NUMVOL ) '
                    +'     WHEN MATCHED THEN UPDATE SET '
                    +'    T1.PV_QTDTOTVOL  = SS.PV_QTDTOTVOL '
                    +'    ,T1.PV_PESO_LIQUIDO  = SS.PV_PESO_LIQUIDO '
                    +'    ,T1.PV_PESO_BRUTO  = SS.PV_PESO_BRUTO '
                    +'      WHEN NOT MATCHED THEN '
                    +'      INSERT(T1.PV_CODEMP,T1.PV_CHAVE,T1.PV_CHAVE_ANO,T1.PV_NUMVOL, T1.PV_QTDTOTVOL,T1.PV_PESO_LIQUIDO,T1.PV_PESO_BRUTO )'
                    +'   VALUES (SS.PV_CODEMP,SS.PV_CHAVE,SS.PV_CHAVE_ANO,SS.PV_NUMVOL,SS.PV_QTDTOTVOL,SS.PV_PESO_LIQUIDO,SS.PV_PESO_BRUTO '
                    +')');



   try
      query_exe.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_exe,2157,'SGE','CADPED_VOLUMES');
      pfechartudo;
      exit;
      end;
      end;
//   ex_erroSql_Novo(query_exe,2157,'SGE','CADPED_VOLUMES');
    pfechartudo;
    end;

begin


DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODEMP2',ptInput);
DM1.Query3.Params.CreateParam(ftString,'LOTSEQ',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1CODCON',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1DATCON',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1HORCON',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1CODENT',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1HORENT',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1DATENT',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1PREVENT',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1CODTRA',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1HPREVENT',ptInput);
DM1.Query3.SQL.add('Update CADP01 set P1ETIVOL=1 '
                  +', P1CODCON=:P1CODCON '
                  +', P1DATCON=:P1DATCON '
                  +', P1HORCON=:P1HORCON '
                  +', P1CODENT=:P1CODENT '
                  +', P1HORENT=:P1HORENT '
                  +', P1DATENT=:P1DATENT '
                  +', P1PREVENT=:P1PREVENT '
                  +',P1HPREVENT=:P1HPREVENT '

                  +', P1CODTRA=:P1CODTRA '
                  +' where (P1CODEMP=:CODEMP or P1CODEMP=:CODEMP2 ) '
                  +' and   P1LOTSEQ=:LOTSEQ '
                  +' and  P1ETIVOL<>1');
DM1.Query3.ParambyName('LOTSEQ').AsFloat       := ls_numped;
DM1.Query3.ParambyName('P1CODCON').AsFloat     := fsonumero(CODCON.Text);
if Trim(DATCON.Text)<>'/  /'  then
   DM1.Query3.ParambyName('P1DATCON').AsDateTime:=StrtoDate(DATCON.Text)
else
   DM1.Query3.ParambyName('P1DATCON').AsDateTime:=pdatanula;
DM1.Query3.ParambyName('P1HORCON').AsString     := HORCON.Text;
DM1.Query3.ParambyName('P1CODENT').AsFloat      := Valint(CODENT.Text);
if Trim(DATENT.Text)<>'/  /'  then
   DM1.Query3.ParambyName('P1DATENT').AsDateTime := StrToDate(DATENT.Text)
else
   DM1.Query3.ParambyName('P1DATENT').AsDateTime := pdatanula;
DM1.Query3.ParambyName('P1HORENT').AsString      := HORENT.Text;
if Trim(PREVENT.Text)<>'/  /'  then
   DM1.Query3.ParambyName('P1PREVENT').AsDateTime := StrToDate(PREVENT.Text)
else
   DM1.Query3.ParambyName('P1PREVENT').AsDateTime := pdatanula;
DM1.Query3.ParambyName('P1HPREVENT').AsString     := HPREVENT.Text;
DM1.Query3.ParambyName('P1CODTRA').AsFloat       := ValInt(CODTRA.Text);
{if ce_empsel=0 then
   begin
   DM1.Query3.ParamByName('CODEMP').AsFloat :=codemp;
   DM1.Query3.ParamByName('CODEMP2').AsFloat:=codemp;
   end
else if ce_empsel=1 then
   begin
   DM1.Query3.ParamByName('CODEMP').AsFloat :=iif(codemp>100,codemp-100,codemp+100);
   DM1.Query3.ParamByName('CODEMP2').AsFloat:=iif(codemp>100,codemp-100,codemp+100);
   end
else
   begin}
   DM1.Query3.ParamByName('CODEMP').AsFloat:=codemp;
   DM1.Query3.ParamByName('CODEMP2').AsFloat:=iif(codemp>100,codemp-100,codemp+100);
//   end;

mcinst2:=CHAVE.Text;
for x:=0 to CLB_OUTROSPED.Count-1 do
   begin
   if CLB_OUTROSPED.Checked[x] then
      mcinst2:=mcinst2+','+CLB_OUTROSPED.Items[x];
   end;
DM1.Query3.SQL.add(' and P1CHAVE in ('+mcinst2+')');
try
   DM1.Query3.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query3.SQL.SaveToFile('c:\sql.txt');
   exit;
   end;
if mchave_etiq=0 then
   begin
{
   DM1.Query1.Close;
   DM1.Query1.sql.clear;
   DM1.Query1.SQL.Add('Select max(CEV_CODIGO) as CODIGO from CADETIVOL '
                     +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' CEV_CODEMP=0'+Inttostr(codemp)+' and ')
                     +' CEV_LOTSEQ=0');
   try
      DM1.Query1.Open;
   except
      DM1.Query1.SQL.SaveToFile('c:\sql.txt');
      end;

   mchave_etiq:=DM1.Query1.Fields[0].AsFloat+1;
}
   mchave_etiq:=ValFloat(CHAVE.Text);
   end
else
   begin
   DM1.Query1.Close;
   DM1.Query1.sql.clear;
   DM1.Query1.SQL.Add('Delete from CADETIVOL  '
                     +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' CEV_CODEMP=0'+Inttostr(codemp)+' and ')
                     +' CEV_LOTSEQ=0'+FloatTostr(ls_numped)
                     +' and CEV_CODIGO=0'+FloatToStr(mchave_etiq));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query1.SQL.SaveToFile('c:\sql.txt');
      end;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query1.Params.CreateParam(ftString,'CODEMP2',ptInput);
DM1.Query1.Params.CreateParam(ftString,'LOTSEQ',ptInput);
DM1.Query1.Params.CreateParam(ftString,'QTDVOL',ptInput);
DM1.Query1.SQL.Add('Insert into CADETIVOL ( '
                  +' CEV_CODEMP '
                  +',CEV_LOTSEQ '
                  +',CEV_CODIGO '
                  +',CEV_SEQ '
                  +',CEV_PED_CODEMP '
                  +',CEV_PED_LOTSEQ '
                  +',CEV_PED_CHAVE '
                  +',CEV_PED_ORDEM '
                  +',CEV_CODCLI '
                  +',CEV_QTDVOL '
                  +')  '
                  +'Select '
                  +IntToStr(codemp)
                  +',0'+floattoStr(ls_numped)
                  +','+FloatToStr(mchave_etiq)
                  +', rownum '
                  +', P1CODEMP '
                  +', P1LOTSEQ '
                  +', P1CHAVE '
                  +', P1ORDEM '
                  +', P1CODCLI '
                  +', :QTDVOL '
                  +' from CADP01 '
                  +' where (P1CODEMP=:CODEMP or P1CODEMP=:CODEMP2 ) '
                  +' and   P1LOTSEQ=:LOTSEQ ');
DM1.Query1.ParambyName('LOTSEQ').AsFloat       := ls_numped;
DM1.Query1.ParambyName('QTDVOL').AsFloat       := ValFloat(QTDVOL.Text);

{if ce_empsel=0 then
   begin
   DM1.Query1.ParamByName('CODEMP').AsFloat :=codemp;
   DM1.Query1.ParamByName('CODEMP2').AsFloat:=codemp;
   end
else if ce_empsel=1 then
   begin
   DM1.Query1.ParamByName('CODEMP').AsFloat :=iif(codemp>100,codemp-100,codemp+100);
   DM1.Query1.ParamByName('CODEMP2').AsFloat:=iif(codemp>100,codemp-100,codemp+100);
   end
else
   begin}
   DM1.Query1.ParamByName('CODEMP').AsFloat:=codemp;
   DM1.Query1.ParamByName('CODEMP2').AsFloat:=iif(codemp>100,codemp-100,codemp+100);
//   end;
mcinst2:=CHAVE.Text;
for x:=0 to CLB_OUTROSPED.Count-1 do
   begin
   if CLB_OUTROSPED.Checked[x] then
      mcinst2:=mcinst2+','+CLB_OUTROSPED.Items[x];
   end;
DM1.Query1.SQL.add(' and P1CHAVE in ('+mcinst2+')');
DM1.Query1.SQL.add(' order by P1CHAVE,P1ORDEM,P1CODEMP ');

try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.SQL.SaveToFile('c:\sql.txt');
   exit;
   end;
fAtualizarPesosorVolume;

result:=true;

end;


function TFrm_Etivol02.fAtualizaConfig(pTipo: Integer): Boolean;
begin
mBloqueiaEvento:=true;
edt_rl_AltEtiq.Text :='205';
edt_rl_QtdLado.Text :='1';
cb_rl_bordas.Checked:=false;
mem_config.Close;
mem_config.Open;



mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Observação Nome Fantasia do Emitente';
mem_configTAMANHO_WIDTH.AsInteger :=53;
mem_configLINHA.AsInteger         :=05;
mem_configCOLUNA.AsInteger        :=81;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_obs_emi_nomfan';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBTEXT';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=06;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=10;
mem_configDESCRICAO.AsString      :='Fantasia: ';
mem_config.Post;

mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Nome Fantasia do Emitente';
mem_configTAMANHO_WIDTH.AsInteger :=212;
mem_configLINHA.AsInteger         :=05;
mem_configCOLUNA.AsInteger        :=136;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_emi_nomfan';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBTEXT';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=06;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=10;
mem_configDESCRICAO.AsString      :='';
mem_config.Post;

mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Observação Nome Fantasia da Transportadora';
mem_configTAMANHO_WIDTH.AsInteger :=67;
mem_configLINHA.AsInteger         :=67;
mem_configCOLUNA.AsInteger        :=04;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_obs_emi_nomtra';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBTEXT';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=06;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=10;
mem_configDESCRICAO.AsString      :='Transportadora: ';
mem_config.Post;

mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Nome Fantasia da Transportadora';
mem_configTAMANHO_WIDTH.AsInteger :=67;
mem_configLINHA.AsInteger         :=05;
mem_configCOLUNA.AsInteger        :=71;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_emi_nomtra';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBTEXT';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=06;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=10;
mem_configDESCRICAO.AsString      :='';
mem_config.Post;

mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Observação Razão Social do Emitente';
mem_configTAMANHO_WIDTH.AsInteger :=67;
mem_configLINHA.AsInteger         :=17;
mem_configCOLUNA.AsInteger        :=04;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_obs_emi_razsoc';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBTEXT';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=06;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=10;
mem_configDESCRICAO.AsString      :='Razão Social';
mem_config.Post;

mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Razão Social do Emitente';
mem_configTAMANHO_WIDTH.AsInteger :=67;
mem_configLINHA.AsInteger         :=17;
mem_configCOLUNA.AsInteger        :=71;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_emi_razsoc';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBTEXT';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=06;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=10;
mem_configDESCRICAO.AsString      :='';
mem_config.Post;


mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Observação do Volume';
mem_configTAMANHO_WIDTH.AsInteger :=36;
mem_configLINHA.AsInteger         :=31;
mem_configCOLUNA.AsInteger        :=4;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_obs_volume';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBTEXT';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=6;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=10;
mem_configDESCRICAO.AsString      :='Volume:';
mem_config.Post;


mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Volume';
mem_configTAMANHO_WIDTH.AsInteger :=107;
mem_configLINHA.AsInteger         :=31;
mem_configCOLUNA.AsInteger        :=42;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_volume';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBTEXT';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=6;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=10;
mem_configDESCRICAO.AsString      :='';
mem_config.Post;


mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Observação Nome da Rota';
mem_configTAMANHO_WIDTH.AsInteger :=39;
mem_configLINHA.AsInteger         :=31;
mem_configCOLUNA.AsInteger        :=152;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_obs_rota';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBTEXT';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=06;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=10;
mem_configDESCRICAO.AsString      :='Rota:';
mem_config.Post;


mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Nome da Rota';
mem_configTAMANHO_WIDTH.AsInteger :=155;
mem_configLINHA.AsInteger         :=31;
mem_configCOLUNA.AsInteger        :=192;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_rota';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBTEXT';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=06;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=10;
mem_configDESCRICAO.AsString      :='';
mem_config.Post;





mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Observação do Código do Cliente';
mem_configTAMANHO_WIDTH.AsInteger :=36;
mem_configLINHA.AsInteger         :=50;
mem_configCOLUNA.AsInteger        :=04;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_obs_codcli';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBTEXT';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=06;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=10;
mem_configDESCRICAO.AsString      :='Cód:';
mem_config.Post;

mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Código do Cliente';
mem_configTAMANHO_WIDTH.AsInteger :=32;
mem_configLINHA.AsInteger         :=50;
mem_configCOLUNA.AsInteger        :=41;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_codcli';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBTEXT';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=06;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=10;
mem_configDESCRICAO.AsString      :='';
mem_config.Post;



mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Observação Razão Social';
mem_configTAMANHO_WIDTH.AsInteger :=32;
mem_configLINHA.AsInteger         :=49;
mem_configCOLUNA.AsInteger        :=77;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_obs_razaosoc';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBTEXT';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=06;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=10;
mem_configDESCRICAO.AsString      :='Razão Social';
mem_config.Post;

mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Razão Social';
mem_configTAMANHO_WIDTH.AsInteger :=236;
mem_configLINHA.AsInteger         :=50;
mem_configCOLUNA.AsInteger        :=111;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_razaosoc';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBTEXT';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=06;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=10;
mem_configDESCRICAO.AsString      :='';
mem_config.Post;



mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Observação Fantasia';
mem_configTAMANHO_WIDTH.AsInteger :=36;
mem_configLINHA.AsInteger         :=67;
mem_configCOLUNA.AsInteger        :=4;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_obs_fantasia';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBTEXT';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=06;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=10;
mem_configDESCRICAO.AsString      :='Fantasia:';
mem_config.Post;

mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Fantasia';
mem_configTAMANHO_WIDTH.AsInteger :=309;
mem_configLINHA.AsInteger         :=67;
mem_configCOLUNA.AsInteger        :=39;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_fantasia';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBTEXT';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=06;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=10;
mem_configDESCRICAO.AsString      :='';
mem_configDESCRICAO.AsString      :='';
mem_config.Post;

mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Observação Endereço';
mem_configTAMANHO_WIDTH.AsInteger :=36;
mem_configLINHA.AsInteger         :=87;
mem_configCOLUNA.AsInteger        :=4;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_obs_endereco';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBTEXT';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=06;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=10;
mem_configDESCRICAO.AsString      :='Endereço:';
mem_config.Post;

mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Endereço';
mem_configTAMANHO_WIDTH.AsInteger :=178;
mem_configLINHA.AsInteger         :=86;
mem_configCOLUNA.AsInteger        :=43;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_endereco';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBTEXT';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=06;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=10;
mem_configDESCRICAO.AsString      :='';
mem_config.Post;


mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Observação Bairro';
mem_configTAMANHO_WIDTH.AsInteger :=36;
mem_configLINHA.AsInteger         :=86;
mem_configCOLUNA.AsInteger        :=223;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_obs_bairro';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBTEXT';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=06;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=10;
mem_configDESCRICAO.AsString      :='Bairro:';
mem_config.Post;

mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Bairro';
mem_configTAMANHO_WIDTH.AsInteger :=89;
mem_configLINHA.AsInteger         :=86;
mem_configCOLUNA.AsInteger        :=260;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_bairro';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBTEXT';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=06;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=10;
mem_configDESCRICAO.AsString      :='';
mem_config.Post;



mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Observação Cidade';
mem_configTAMANHO_WIDTH.AsInteger :=36;
mem_configLINHA.AsInteger         :=103;
mem_configCOLUNA.AsInteger        :=4;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_obs_cidade';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBTEXT';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=06;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=10;
mem_configDESCRICAO.AsString      :='Cidade:';
mem_config.Post;

mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Cidade';
mem_configTAMANHO_WIDTH.AsInteger :=243;
mem_configLINHA.AsInteger         :=103;
mem_configCOLUNA.AsInteger        :=40;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_cidade';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBTEXT';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=06;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=10;
mem_configDESCRICAO.AsString      :='';
mem_config.Post;


mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Observação Estado(UF)';
mem_configTAMANHO_WIDTH.AsInteger :=23;
mem_configLINHA.AsInteger         :=103;
mem_configCOLUNA.AsInteger        :=299;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_obs_uf';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBTEXT';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=06;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=10;
mem_configDESCRICAO.AsString      :='Estado:';
mem_config.Post;

mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Estado(UF)';
mem_configTAMANHO_WIDTH.AsInteger :=23;
mem_configLINHA.AsInteger         :=103;
mem_configCOLUNA.AsInteger        :=325;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_uf';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBTEXT';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=06;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=10;
mem_configDESCRICAO.AsString      :='';
mem_config.Post;


mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Observação Código de Barras';
mem_configTAMANHO_WIDTH.AsInteger :=76;
mem_configLINHA.AsInteger         :=116;
mem_configCOLUNA.AsInteger        :=04;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_obs_codbar';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBTEXT';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=06;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=10;
mem_configDESCRICAO.AsString      :='Código Barras:';
mem_config.Post;

mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Código Barras';
mem_configTAMANHO_WIDTH.AsInteger :=178;
mem_configLINHA.AsInteger         :=118;
mem_configCOLUNA.AsInteger        :=86;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_codbar';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBBARCODE';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=06;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=34;
mem_configDESCRICAO.AsString      :='';
mem_config.Post;



mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Observação Chave dos Pedidos';
mem_configTAMANHO_WIDTH.AsInteger :=76;
mem_configLINHA.AsInteger         :=153;
mem_configCOLUNA.AsInteger        :=04;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_obs_pedido';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBTEXT';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=06;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=10;
if cb_chavenf.Checked then
  mem_configDESCRICAO.AsString      :='Numero(s) NF(s):'
else
  mem_configDESCRICAO.AsString      :='Chave(s) Pedido(s):';
mem_config.Post;


mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Chave dos Pedidos';
mem_configTAMANHO_WIDTH.AsInteger :=258;
mem_configLINHA.AsInteger         :=154;
mem_configCOLUNA.AsInteger        :=85;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_pedido';
mem_configCOMPONENTE_TIPO.AsString:='TRLDBMEMO';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=06;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=38;
mem_configDESCRICAO.AsString      :='';
mem_config.Post;




mem_config.Append;
mem_configIMPRIME.AsString        :='';
mem_configNOME_CAMPO.AsString     :='Observação Logomarca Emitente';
mem_configTAMANHO_WIDTH.AsInteger :=76;
mem_configLINHA.AsInteger         :=05;
mem_configCOLUNA.AsInteger        :=04;
mem_configFONTE.AsString          :='Fonte Selecionada';
mem_configALINHAMENTO.AsString    :='Esquerda';
mem_configCOMPONENTE_NAME.AsString:='dbrl_imagem';
mem_configCOMPONENTE_TIPO.AsString:='TRLTEXT';
mem_configFONTE_NAME.AsString     :='Arial';
mem_configFONTE_TAMANHO.AsInteger :=06;
mem_configFONTE_BOLD.AsString     :='';
mem_configFONTE_ITALIC.AsString   :='';
mem_configFONTE_UNDERLINE.AsString:='';
mem_configFONTE_STRICK.AsString   :='';
mem_configALTURA_HEIGHT.AsInteger :=10;
mem_configDESCRICAO.AsString      :='Imagem logomarca';
mem_config.Post;




mBloqueiaEvento:=false;




end;
// inicio

function TFrm_Etivol02.fAjustaGridRelatorio(pTipo: Integer): Boolean;
var
x,y: Integer;
begin

mBloqueiaEvento:=true;
edt_rl_AltEtiq.Text:=inttoStr(RLDetailGrid1.Height);
edt_rl_QtdLado.Text:=IntToStr(RLDetailGrid1.ColCount);
if RLDetailGrid1.Borders.DrawLeft=true then
   cb_rl_bordas.Checked:=true
else
   cb_rl_bordas.Checked:=false;

mem_config.First;
While not mem_config.Eof do
   begin
{   if (mem_configCOMPONENTE_TIPO.AsString<>'TRLDBTEXT') and
      (mem_configCOMPONENTE_TIPO.AsString<>'TRLDBBARCODE') then
      begin
      mem_config.Next;
      Continue;
      end;    }
   x:=-1;
   for y:=0 to ComponentCount-1 do
      begin
      if UpperCase(mem_configCOMPONENTE_NAME.AsString)=
         uppercase(Components[y].Name) then
         begin
         x:=y;
         break;
         end;
      end;
   if x<0 then
      begin
      mem_config.Next;
      Continue;
      end;
   mem_config.Edit;
   if (mem_configCOMPONENTE_TIPO.AsString='TRLDBTEXT') then
      begin
      if (Components[x] as TRLDBText).Visible then
         mem_configIMPRIME.AsString        :='X'
      else
         mem_configIMPRIME.AsString        :='';
      mem_configTAMANHO_WIDTH.AsInteger :=(Components[x] as TRLDBText).Width;
      mem_configLINHA.AsInteger         :=(Components[x] as TRLDBText).Top;
      mem_configCOLUNA.AsInteger        :=(Components[x] as TRLDBText).Left;
      if (Components[x] as TRLDBText).Alignment=taLeftJustify then
         mem_configALINHAMENTO.AsString    :='Esquerda'
      else if (Components[x] as TRLDBText).Alignment=taRightJustify then
        mem_configALINHAMENTO.AsString    :='Direita'
      else if (Components[x] as TRLDBText).Alignment=taCenter then
        mem_configALINHAMENTO.AsString    :='Centralizado';
      mem_configFONTE_NAME.AsString       :=(Components[x] as TRLDBText).Font.Name;
      mem_configFONTE_TAMANHO.AsInteger   :=(Components[x] as TRLDBText).Font.Size;
      mem_configALTURA_HEIGHT.AsInteger   :=(Components[x] as TRLDBText).Height;
      mem_configDESCRICAO.AsString        :=(Components[x] as TRLDBText).Text;
      if fsBold in (Components[x] as TRLDBText).Font.Style then
         mem_configFONTE_BOLD.AsString     :='S';
      if fsItalic in (Components[x] as TRLDBText).Font.Style then
         mem_configFONTE_UNDERLINE.AsString     :='S';
      if fsUnderline in (Components[x] as TRLDBText).Font.Style then
         mem_configFONTE_ITALIC.AsString     :='S';
      if fsStrikeOut in (Components[x] as TRLDBText).Font.Style then
         mem_configFONTE_STRICK.AsString     :='S';
      mem_config.Post;
      end
   else if (mem_configCOMPONENTE_TIPO.AsString='TRLDBBARCODE') then
      begin
      if (Components[x] as TRLDBBarcode).Visible then
         mem_configIMPRIME.AsString        :='X'
      else
         mem_configIMPRIME.AsString        :='';
      mem_configTAMANHO_WIDTH.AsInteger :=(Components[x] as TRLDBBarcode).Width;
      mem_configLINHA.AsInteger         :=(Components[x] as TRLDBBarcode).Top;
      mem_configCOLUNA.AsInteger        :=(Components[x] as TRLDBBarcode).Left;
      if (Components[x] as TRLDBBarcode).Alignment=taLeftJustify then
         mem_configALINHAMENTO.AsString    :='Esquerda'
      else if (Components[x] as TRLDBBarcode).Alignment=taRightJustify then
        mem_configALINHAMENTO.AsString    :='Direita'
      else if (Components[x] as TRLDBBarcode).Alignment=taCenter then
        mem_configALINHAMENTO.AsString    :='Centralizado';
      mem_configFONTE_NAME.AsString       :=(Components[x] as TRLDBBarcode).Font.Name;
      mem_configFONTE_TAMANHO.AsInteger   :=(Components[x] as TRLDBBarcode).Font.Size;
      mem_configALTURA_HEIGHT.AsInteger   :=(Components[x] as TRLDBBarcode).Height;

      if fsBold in (Components[x] as TRLDBBarcode).Font.Style then
         mem_configFONTE_BOLD.AsString     :='S';
      if fsItalic in (Components[x] as TRLDBBarcode).Font.Style then
         mem_configFONTE_UNDERLINE.AsString     :='S';
      if fsUnderline in (Components[x] as TRLDBBarcode).Font.Style then
         mem_configFONTE_ITALIC.AsString     :='S';
      if fsStrikeOut in (Components[x] as TRLDBBarcode).Font.Style then
         mem_configFONTE_STRICK.AsString     :='S';
      mem_config.Post;
      end
   else if mem_configCOMPONENTE_TIPO.AsString='TRLDBMEMO' then
      begin
      if (Components[x] as TRLDBMemo).Visible then
         mem_configIMPRIME.AsString        :='X'
      else
         mem_configIMPRIME.AsString        :='';
      mem_configTAMANHO_WIDTH.AsInteger :=(Components[x] as TRLDBMemo).Width;
      mem_configLINHA.AsInteger         :=(Components[x] as TRLDBMemo).Top;
      mem_configCOLUNA.AsInteger        :=(Components[x] as TRLDBMemo).Left;
      if (Components[x] as TRLDBMemo).Alignment=taLeftJustify then
         mem_configALINHAMENTO.AsString    :='Esquerda'
      else if (Components[x] as TRLDBMemo).Alignment=taRightJustify then
        mem_configALINHAMENTO.AsString    :='Direita'
      else if (Components[x] as TRLDBMemo).Alignment=taCenter then
        mem_configALINHAMENTO.AsString    :='Centralizado';
      mem_configFONTE_NAME.AsString       :=(Components[x] as TRLDBMemo).Font.Name;
      mem_configFONTE_TAMANHO.AsInteger   :=(Components[x] as TRLDBMemo).Font.Size;
      mem_configALTURA_HEIGHT.AsInteger   :=(Components[x] as TRLDBMemo).Height;

      if fsBold in (Components[x] as TRLDBMemo).Font.Style then
         mem_configFONTE_BOLD.AsString     :='S';
      if fsItalic in (Components[x] as TRLDBMemo).Font.Style then
         mem_configFONTE_UNDERLINE.AsString     :='S';
      if fsUnderline in (Components[x] as TRLDBMemo).Font.Style then
         mem_configFONTE_ITALIC.AsString     :='S';
      if fsStrikeOut in (Components[x] as TRLDBMemo).Font.Style then
         mem_configFONTE_STRICK.AsString     :='S';
      mem_config.Post;
      end;

   mem_config.next;
   end;
mBloqueiaEvento:=false;




end;

// termino


procedure TFrm_Etivol02.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
Check: Integer;
R: TRect;
begin
//Desenha um checkbox no dbgrid
if Column.FieldName = 'IMPRIME' then
   begin
   DBGrid1.Canvas.FillRect(Rect);
   Check := 0;
   if mem_configIMPRIME.AsString = 'X' then
      Check := DFCS_CHECKED
   else
      Check := 0;
   R:=Rect;
   InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
   DrawFrameControl(DBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
   end;
if Column.FieldName = 'FONTE' then
   begin
   if trim(mem_configFONTE_NAME.AsString)<>'' then
      DBGrid1.Canvas.Font.Name:=mem_configFONTE_NAME.AsString;
   if mem_configFONTE_TAMANHO.AsInteger<>0 then
      DBGrid1.Canvas.Font.Size:=mem_configFONTE_TAMANHO.AsInteger;
   DBGrid1.Font.Style:=[];
   if mem_configFONTE_BOLD.AsString='S' then
      DBGrid1.Canvas.Font.Style:=DBGrid1.Canvas.Font.Style +[fsBold];
   if mem_configFONTE_ITALIC.AsString='S' then
      DBGrid1.Canvas.Font.Style:=DBGrid1.Canvas.Font.Style +[fsItalic];
   if mem_configFONTE_UNDERLINE.AsString='S' then
      DBGrid1.Canvas.Font.Style:=DBGrid1.Canvas.Font.Style +[fsUnderline];
   if mem_configFONTE_STRICK.AsString='S' then
      DBGrid1.Canvas.Font.Style:=DBGrid1.Canvas.Font.Style +[fsStrikeOut];
   if mem_configFONTE_COLOR.AsInteger<>0 then
      DBGrid1.Canvas.Font.Color:=mem_configFONTE_COLOR.asInteger;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

end;

procedure TFrm_Etivol02.BitBtn1Click(Sender: TObject);
begin
fAtualizaConfig(0);
fAtualizaRelatorio(0);
end;

procedure TFrm_Etivol02.DBGrid1DblClick(Sender: TObject);
begin
if DBGrid1.SelectedField=mem_configFONTE then
   begin
   if FontDialog1.Execute then
      begin
      if not (mem_config.State in [dsEdit,dsInsert]) then
         mem_config.Edit;
      mem_configFONTE_COLOR.Value:=FontDialog1.Font.Color;
      mem_configFONTE_TAMANHO.Value:=FontDialog1.Font.Size;
      mem_configFONTE_NAME.Value:=FontDialog1.Font.Name;
      mem_configALTURA_HEIGHT.AsInteger:=ROUND( (FontDialog1.Font.Height*-1)*1.115 );
      if fsbold in FontDialog1.Font.Style then
         mem_configFONTE_BOLD.Value     :='S';
      if fsitalic in FontDialog1.Font.Style then
         mem_configFONTE_ITALIC.Value     :='S';
      if fsUnderline in FontDialog1.Font.Style then
         mem_configFONTE_UNDERLINE.Value  :='S';
      if fsStrikeOut in FontDialog1.Font.Style then
         mem_configFONTE_STRICK.Value     :='S';
      end;
   end;


end;

procedure TFrm_Etivol02.mem_configAfterPost(DataSet: TDataSet);
begin

if not mBloqueiaEvento then
   fAtualizaRelatorio(0);

end;
function TFrm_Etivol02.fAtualizaRelatorio(ptipo: Integer): Boolean;
var
mPosicao: TBookmark;
y,x: Integer;
begin
result:=true;
exit;

mPosicao:=mem_config.GetBookmark;
mem_config.First;
RLDetailGrid1.Width   :=valint(edt_rl_AltEtiq.Text);
RLDetailGrid1.ColCount:=valint(edt_rl_QtdLado.Text);
if cb_rl_bordas.Checked then
   mboolean:=true
else
   mboolean:=false;
RLDetailGrid1.Borders.DrawRight :=mboolean;
RLDetailGrid1.Borders.DrawLeft  :=mboolean;
RLDetailGrid1.Borders.DrawTop   :=mboolean;
RLDetailGrid1.Borders.DrawBottom:=mboolean;
mem_config.First;
While not mem_config.Eof do
   begin
   x:=-1;
   for y:=0 to ComponentCount-1 do
      begin
      if UpperCase(mem_configCOMPONENTE_NAME.AsString)=
         uppercase(Components[y].Name) then
         begin
         x:=y;
         break;
         end;
      end;
   if x>=0 then
      begin
      if mem_configCOMPONENTE_TIPO.AsString='TRLDBTEXT' then
         begin
         if mem_configALINHAMENTO.AsString='Centralizado' then
           (Components[x] as TRLDBText).Alignment:=taCenter
         else if mem_configALINHAMENTO.AsString='Direita' then
           (Components[x] as TRLDBText).Alignment:=taRightJustify
         else if mem_configALINHAMENTO.AsString='Esquerda' then
           (Components[x] as TRLDBText).Alignment:=taLeftJustify;
         (Components[x] as TRLDBText).Width:=mem_configTAMANHO_WIDTH.AsInteger;
         (Components[x] as TRLDBText).Top:=mem_configLINHA.AsInteger;
         (Components[x] as TRLDBText).Left:=mem_configCOLUNA.AsInteger;
         (Components[x] as TRLDBText).Height:=mem_configALTURA_HEIGHT.AsInteger;
         (Components[x] as TRLDBText).Font.Size:=mem_configFONTE_TAMANHO.AsInteger;
         (Components[x] as TRLDBText).Font.Color:=mem_configFONTE_COLOR.AsInteger;
         (Components[x] as TRLDBText).Font.Name:=mem_configFONTE_NAME.AsString;
         (Components[x] as TRLDBText).Font.Style:=[];
         if mem_configFONTE_BOLD.AsString='S' then
           (Components[x] as TRLDBText).Font.Style:=(Components[x] as TRLDBText).Font.Style+[fsBold];
         if mem_configFONTE_ITALIC.AsString='S' then
           (Components[x] as TRLDBText).Font.Style:=(Components[x] as TRLDBText).Font.Style+[fsItalic];
         if mem_configFONTE_UNDERLINE.AsString='S' then
           (Components[x] as TRLDBText).Font.Style:=(Components[x] as TRLDBText).Font.Style+[fsUnderline];
         if mem_configFONTE_STRICK.AsString='S' then
           (Components[x] as TRLDBText).Font.Style:=(Components[x] as TRLDBText).Font.Style+[fsStrikeOut];
         if ptipo=1 then
            (Components[x] as TRLDBText).Visible:=true //ldcnow
         else
            (Components[x] as TRLDBText).Visible:=false;
         end
      else if mem_configCOMPONENTE_TIPO.AsString='TRLDBMEMO' then
         begin
         if mem_configALINHAMENTO.AsString='Centralizado' then
           (Components[x] as TRLDBMemo).Alignment:=taCenter
         else if mem_configALINHAMENTO.AsString='Direita' then
           (Components[x] as TRLDBMemo).Alignment:=taRightJustify
         else if mem_configALINHAMENTO.AsString='Esquerda' then
           (Components[x] as TRLDBMemo).Alignment:=taLeftJustify;
         (Components[x] as TRLDBMemo).Width:=mem_configTAMANHO_WIDTH.AsInteger;
         (Components[x] as TRLDBMemo).Top:=mem_configLINHA.AsInteger;
         (Components[x] as TRLDBMemo).Left:=mem_configCOLUNA.AsInteger;
         (Components[x] as TRLDBMemo).Height:=mem_configALTURA_HEIGHT.AsInteger;
         (Components[x] as TRLDBMemo).Font.Size:=mem_configFONTE_TAMANHO.AsInteger;
         (Components[x] as TRLDBMemo).Font.Color:=mem_configFONTE_COLOR.AsInteger;
         (Components[x] as TRLDBMemo).Font.Name:=mem_configFONTE_NAME.AsString;
         (Components[x] as TRLDBMemo).Font.Style:=[];
         if mem_configFONTE_BOLD.AsString='S' then
           (Components[x] as TRLDBMemo).Font.Style:=(Components[x] as TRLDBMemo).Font.Style+[fsBold];

         if mem_configFONTE_ITALIC.AsString='S' then
           (Components[x] as TRLDBMemo).Font.Style:=(Components[x] as TRLDBMemo).Font.Style+[fsItalic];
         if mem_configFONTE_UNDERLINE.AsString='S' then
           (Components[x] as TRLDBMemo).Font.Style:=(Components[x] as TRLDBMemo).Font.Style+[fsUnderline];
         if mem_configFONTE_STRICK.AsString='S' then
           (Components[x] as TRLDBMemo).Font.Style:=(Components[x] as TRLDBMemo).Font.Style+[fsStrikeOut];
         if ptipo=1 then
            (Components[x] as TRLDBMemo).Visible:=true //ldcnow
         else
            (Components[x] as TRLDBMemo).Visible:=false;
         end
      else if mem_configCOMPONENTE_TIPO.AsString='TRLDBBARCODE' then
         begin
         (Components[x] as TRLDBBarcode).Width:=mem_configTAMANHO_WIDTH.AsInteger;
         (Components[x] as TRLDBBarcode).Top:=mem_configLINHA.AsInteger;
         (Components[x] as TRLDBBarcode).Left:=mem_configCOLUNA.AsInteger;
         if ptipo=1 then
            (Components[x] as TRLDBBarcode).Visible:=true  //ldcnow
         else
            (Components[x] as TRLDBBarcode).Visible:=false;
         end;
      end;
   mem_config.Next;
   end;
mem_config.GotoBookmark(mPosicao);

result:=true;
end;
procedure TFrm_Etivol02.PageControl1Change(Sender: TObject);
begin
if (mem_config.Active) and  (mem_config.State in [dsedit,dsInsert]) then
   mem_config.post;
end;

procedure TFrm_Etivol02.DBGrid1CellClick(Column: TColumn);
begin
if Column.FieldName = 'IMPRIME' then
   begin
   if not (mem_config.State in [dsEdit,dsInsert]) then
      mem_config.edit;
   if mem_configIMPRIME.AsString='X' then
      mem_configIMPRIME.AsString:=''
   else
      mem_configIMPRIME.AsString:='X';
   mem_config.Post;
   end;
end;

procedure TFrm_Etivol02.sbConfigMaster_SalvarClick(Sender: TObject);
begin
mem_config.First;
fDeletaPadroes(-1,'_ETIVOL02','');
While not mem_config.Eof do
  begin
  fGravaPadroes(-1,mem_configCOMPONENTE_NAME.AsString+'_IMPRIME',mem_configCOMPONENTE_TIPO.AsString
               ,'_ETIVOL02',mem_configIMPRIME.AsString);

  fGravaPadroes(-1,mem_configCOMPONENTE_NAME.AsString+'_WIDTH',mem_configCOMPONENTE_TIPO.AsString
               ,'_ETIVOL02',mem_configTAMANHO_WIDTH.AsString);

  fGravaPadroes(-1,mem_configCOMPONENTE_NAME.AsString+'_ALTURA_HEIGHT',mem_configCOMPONENTE_TIPO.AsString
               ,'_ETIVOL02',mem_configALTURA_HEIGHT.AsString);

  fGravaPadroes(-1,mem_configCOMPONENTE_NAME.AsString+'_LINHA',mem_configCOMPONENTE_TIPO.AsString
               ,'_ETIVOL02',mem_configLINHA.AsString);

  fGravaPadroes(-1,mem_configCOMPONENTE_NAME.AsString+'_DESCRICAO',mem_configCOMPONENTE_TIPO.AsString
               ,'_ETIVOL02',mem_configDESCRICAO.AsString);

  fGravaPadroes(-1,mem_configCOMPONENTE_NAME.AsString+'_COLUNA',mem_configCOMPONENTE_TIPO.AsString
               ,'_ETIVOL02',mem_configCOLUNA.AsString);

  fGravaPadroes(-1,mem_configCOMPONENTE_NAME.AsString+'_ALIN',mem_configCOMPONENTE_TIPO.AsString
               ,'_ETIVOL02',mem_configALINHAMENTO.AsString);

  fGravaPadroes(-1,mem_configCOMPONENTE_NAME.AsString+'_FONTE_NAME',mem_configCOMPONENTE_TIPO.AsString
               ,'_ETIVOL02',mem_configFONTE_NAME.AsString);

  fGravaPadroes(-1,mem_configCOMPONENTE_NAME.AsString+'_FONTE_TAMANHO',mem_configCOMPONENTE_TIPO.AsString
               ,'_ETIVOL02',mem_configFONTE_TAMANHO.AsString);

  fGravaPadroes(-1,mem_configCOMPONENTE_NAME.AsString+'_FONTE_COLOR',mem_configFONTE_COLOR.AsString
               ,'_ETIVOL02',mem_configFONTE_COLOR.AsString);

  fGravaPadroes(-1,mem_configCOMPONENTE_NAME.AsString+'_FONTE_BIUS',mem_configCOMPONENTE_TIPO.AsString
               ,'_ETIVOL02',
               insere2(mem_configFONTE_BOLD.AsString,' ',01)
               +insere2(mem_configFONTE_ITALIC.AsString,' ',01)
               +insere2(mem_configFONTE_UNDERLINE.AsString,' ',01)
               +insere2(mem_configFONTE_STRICK.AsString,' ',01));

  fGravaPadroes(-1,mem_configCOMPONENTE_NAME.AsString+'_FONTE_BOLD',mem_configCOMPONENTE_TIPO.AsString
               ,'_ETIVOL02',insere2(mem_configFONTE_BOLD.AsString,' ',01));

  fGravaPadroes(-1,mem_configCOMPONENTE_NAME.AsString+'_FONTE_ITALIC',mem_configCOMPONENTE_TIPO.AsString
               ,'_ETIVOL02',insere2(mem_configFONTE_ITALIC.AsString,' ',01));

  fGravaPadroes(-1,mem_configCOMPONENTE_NAME.AsString+'_FONTE_UNDERLINE',mem_configCOMPONENTE_TIPO.AsString
               ,'_ETIVOL02',insere2(mem_configFONTE_UNDERLINE.AsString,' ',01));

  fGravaPadroes(-1,mem_configCOMPONENTE_NAME.AsString+'_FONTE_STRICK',mem_configCOMPONENTE_TIPO.AsString
               ,'_ETIVOL02',insere2(mem_configFONTE_STRICK.AsString,' ',01));
  mem_config.Next;
  end;

fGravaPadroes(-1,'EDT_RL_ALTETIQ','Text'
              ,'_ETIVOL02',
              fdeixanum(edt_rl_AltEtiq.Text));

fGravaPadroes(-1,'EDT_RL_QTDLADO','Text'
              ,'_ETIVOL02',
              fdeixanum(edt_rl_QtdLado.Text));

fGravaPadroes(-1,'CB_RL_BORDAS','cheched'
              ,'_ETIVOL02',iif(cb_rl_bordas.Checked,'true','false'));

fGravaPadroes(-1,'ALT_PAGE','Text','_ETIVOL02',alt_page.Text);

fGravaPadroes(-1,'LARG_PAGE','Text','_ETIVOL02',larg_page.Text);

fGravaPadroes(-1,'CB_CHAVENF','cheched'
              ,'_ETIVOL02',iif(cb_chavenf.Checked,'true','false'));

fGravaPadroes(-1,'EDT_MARSUP','Text'
              ,'_ETIVOL02',edt_marsup.Text);

fGravaPadroes(-1,'EDT_MARINF','Text'
              ,'_ETIVOL02',edt_marinf.Text);

fGravaPadroes(-1,'EDT_MARESQ','Text'
              ,'_ETIVOL02',edt_maresq.Text);

fGravaPadroes(-1,'EDT_MARDIR','Text'
              ,'_ETIVOL02',edt_mardir.Text);

fmensagem('Gravado!',0,['0'],0);

end;

function tFrm_Etivol02.fRestauraPadrao(pTipo: Integer): Boolean;
var
y,x: Integer;
begin
fAtualizaConfig(0);
if flfilpad(-1,'_ETIVOL02','') then
   begin
   fAtualizaRelatorio(1);
{
   DM4.Tb_FilPad2.First;
   While not DM4.Tb_FilPad2.Eof do
      begin
      for y:=0 to ComponentCount-1 do
         begin
         if copy(UpperCase(DM4.Tb_FilPad2FPCOMP.AsString),1,
           length(uppercase(Components[y].Name)))=
            uppercase(Components[y].Name) then
            begin
            x:=y;
            break;
            end;
         end;
      if DM4.Tb_FilPad2FPTPCOMP.AsString='TRLDBTEXT' then //dbtext
         begin
         if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-7
             ,8)='_IMPRIME' then
           begin
           if DM4.Tb_FilPad2FPVALOR.AsString='X' then
             (Components[x] as TRLDBText).Visible:=true
           else
              (Components[x] as TRLDBText).Visible:=false;
           end
         else if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-4
                 ,5)='_ALIN' then
           begin
           if DM4.Tb_FilPadFPVALOR.AsString='Centralizado' then
             (Components[x] as TRLDBText).Alignment:=taCenter
           else if DM4.Tb_FilPadFPVALOR.AsString='Direita' then
             (Components[x] as TRLDBText).Alignment:=taRightJustify
           else if DM4.Tb_FilPadFPVALOR.AsString='Esquerda' then
             (Components[x] as TRLDBText).Alignment:=taLeftJustify;

           end
         else if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-10
                 ,11)='_FONTE_BIUS' then
            begin
            (Components[x] as TRLDBText).Font.Style:=[];
            if DM4.Tb_FilPad2FPVALOR.Value[1]='S' then
              (Components[x] as TRLDBText).Font.Style:=(Components[x] as TRLDBText).Font.Style+[fsBold];
            if DM4.Tb_FilPad2FPVALOR.Value[2]='S' then
              (Components[x] as TRLDBText).Font.Style:=(Components[x] as TRLDBText).Font.Style+[fsItalic];
            if DM4.Tb_FilPad2FPVALOR.Value[3]='S' then
              (Components[x] as TRLDBText).Font.Style:=(Components[x] as TRLDBText).Font.Style+[fsUnderline];
            if DM4.Tb_FilPad2FPVALOR.Value[4]='S' then
              (Components[x] as TRLDBText).Font.Style:=(Components[x] as TRLDBText).Font.Style+[fsStrikeOut];
            end
         else if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-9
                 ,10)='_DESCRICAO' then
            begin
            (Components[x] as TRLDBText).Text:=DM4.Tb_FilPad2FPVALOR.AsString;
            end
         else if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-5
                 ,06)='_WIDTH' then
            begin
            (Components[x] as TRLDBText).Width:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
            end
         else if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-13
                 ,14)='_ALTURA_HEIGHT' then
            begin
            (Components[x] as TRLDBText).Height:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
            end
         else if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-5
                 ,06)='_LINHA' then
            begin
            (Components[x] as TRLDBText).Top:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
            end

         else if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-6
                 ,07)='_COLUNA' then
            begin
            (Components[x] as TRLDBText).Left:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
            end
         else if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-10
                 ,11)='_FONTE_NAME' then
            begin
            (Components[x] as TRLDBText).Font.Name:=DM4.Tb_FilPad2FPVALOR.AsString;
            end
         else if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-13
                 ,14)='_FONTE_TAMANHO' then
            begin
            (Components[x] as TRLDBText).Font.Size:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
            end
         else if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-11
                 ,12)='_FONTE_COLOR' then
            begin
            (Components[x] as TRLDBText).Font.Size:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
            end;
         end
      else if DM4.Tb_FilPad2FPTPCOMP.AsString='TRLDBBARCODE' then
         begin
         if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-7
             ,8)='_IMPRIME' then
            begin
            if DM4.Tb_FilPad2FPVALOR.AsString='X' then
              (Components[x] as TRLDBBarcode).Visible:=true
            else
              (Components[x] as TRLDBBarcode).Visible:=false;
            end
         else if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-4
                 ,5)='_ALIN' then
            begin
            if DM4.Tb_FilPadFPVALOR.AsString='Centralizado' then
              (Components[x] as TRLDBBarcode).Alignment:=taCenter
            else if DM4.Tb_FilPadFPVALOR.AsString='Direita' then
              (Components[x] as TRLDBBarcode).Alignment:=taRightJustify
            else if DM4.Tb_FilPadFPVALOR.AsString='Esquerda' then
              (Components[x] as TRLDBBarcode).Alignment:=taLeftJustify;
            end
         else if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-10
                 ,11)='_FONTE_BIUS' then
            begin
             (Components[x] as TRLDBBarcode).Font.Style:=[];
             if DM4.Tb_FilPad2FPVALOR.Value[1]='S' then
               (Components[x] as TRLDBBarcode).Font.Style:=(Components[x] as TRLDBBarcode).Font.Style+[fsBold];
             if DM4.Tb_FilPad2FPVALOR.Value[2]='S' then
               (Components[x] as TRLDBBarcode).Font.Style:=(Components[x] as TRLDBBarcode).Font.Style+[fsItalic];
             if DM4.Tb_FilPad2FPVALOR.Value[3]='S' then
               (Components[x] as TRLDBBarcode).Font.Style:=(Components[x] as TRLDBBarcode).Font.Style+[fsUnderline];
             if DM4.Tb_FilPad2FPVALOR.Value[4]='S' then
               (Components[x] as TRLDBBarcode).Font.Style:=(Components[x] as TRLDBBarcode).Font.Style+[fsStrikeOut];
             end
         else if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-5
                 ,06)='_WIDTH' then
            begin
            (Components[x] as TRLDBBarcode).Width:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
            end
         else if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-13
                 ,14)='_ALTURA_HEIGHT' then
            begin
            (Components[x] as TRLDBBarcode).Height:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
            end                                
         else if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-5
                 ,06)='_LINHA' then
            begin
            (Components[x] as TRLDBBarcode).Top:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
            end

         else if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-6
                 ,07)='_COLUNA' then
            begin
            (Components[x] as TRLDBBarcode).Left:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
            end
         else if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-10
                 ,11)='_FONTE_NAME' then
            begin
            (Components[x] as TRLDBBarcode).Font.Name:=DM4.Tb_FilPad2FPVALOR.AsString;
            end
         else if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-13
                 ,14)='_FONTE_TAMANHO' then
            begin
            (Components[x] as TRLDBBarcode).Font.Size:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
            end;
         end
      else if DM4.Tb_FilPad2FPTPCOMP.AsString='TRLDBMEMO' then
         begin
         if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-7
             ,8)='_IMPRIME' then
            begin
            if DM4.Tb_FilPad2FPVALOR.AsString='X' then
              (Components[x] as TRLDBMemo).Visible:=true
            else
              (Components[x] as TRLDBMemo).Visible:=false;
            end
         else if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-4
                 ,5)='_ALIN' then
            begin
            if DM4.Tb_FilPadFPVALOR.AsString='Centralizado' then
              (Components[x] as TRLDBMemo).Alignment:=taCenter
            else if DM4.Tb_FilPadFPVALOR.AsString='Direita' then
              (Components[x] as TRLDBMemo).Alignment:=taRightJustify
            else if DM4.Tb_FilPadFPVALOR.AsString='Esquerda' then
              (Components[x] as TRLDBMemo).Alignment:=taLeftJustify;
            end
         else if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-10
                 ,11)='_FONTE_BIUS' then
            begin
             (Components[x] as TRLDBMemo).Font.Style:=[];
             if DM4.Tb_FilPad2FPVALOR.Value[1]='S' then
               (Components[x] as TRLDBMemo).Font.Style:=(Components[x] as TRLDBMemo).Font.Style+[fsBold];
             if DM4.Tb_FilPad2FPVALOR.Value[2]='S' then
               (Components[x] as TRLDBMemo).Font.Style:=(Components[x] as TRLDBMemo).Font.Style+[fsItalic];
             if DM4.Tb_FilPad2FPVALOR.Value[3]='S' then
               (Components[x] as TRLDBMemo).Font.Style:=(Components[x] as TRLDBMemo).Font.Style+[fsUnderline];
             if DM4.Tb_FilPad2FPVALOR.Value[4]='S' then
               (Components[x] as TRLDBMemo).Font.Style:=(Components[x] as TRLDBMemo).Font.Style+[fsStrikeOut];
             end
         else if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-5
                 ,06)='_WIDTH' then
            begin
            (Components[x] as TRLDBMemo).Width:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
            end
         else if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-13
                 ,14)='_ALTURA_HEIGHT' then
            begin
            (Components[x] as TRLDBMemo).Height:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
            end                             
         else if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-5
                 ,06)='_LINHA' then
            begin
            (Components[x] as TRLDBMemo).Top:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
            end

         else if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-6
                 ,07)='_COLUNA' then
            begin
            (Components[x] as TRLDBMemo).Left:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
            end
         else if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-10
                 ,11)='_FONTE_NAME' then
            begin
            (Components[x] as TRLDBMemo).Font.Name:=DM4.Tb_FilPad2FPVALOR.AsString;
            end
         else if copy(DM4.Tb_FilPad2FPCOMP.AsString,length(DM4.Tb_FilPad2FPCOMP.AsString)-13
                 ,14)='_FONTE_TAMANHO' then
            begin
            (Components[x] as TRLDBMemo).Font.Size:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
            end;
         end;
      DM4.Tb_FilPad2.Next;
      end;
}      
   DM4.Tb_FilPad2.First;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_RL_ALTETIQ',[]) then
      begin
      EDT_RL_ALTETIQ.Text  :=DM4.Tb_FilPad2FPVALOR.AsString;
      RLDetailGrid1.Height :=valint(edt_rl_AltEtiq.Text);
      end;

   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_RL_QTDLADO',[]) then
      begin
      EDT_RL_QTDLADO.Text   :=DM4.Tb_FilPad2FPVALOR.AsString;
      RLDetailGrid1.ColCount:=valint(edt_rl_QtdLado.Text);
      end;

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CHAVENF',[]) then
      begin
      cb_chavenf.Checked   :=iif (DM4.Tb_FilPad2FPVALOR.AsString='true',true,false);
      end;

   if DM4.Tb_FilPad2.Locate('FPCOMP','ALT_PAGE',[]) then
      begin
      alt_page.Value   :=DM4.Tb_FilPad2FPVALOR.AsInteger;
      end;

   if DM4.Tb_FilPad2.Locate('FPCOMP','LARG_PAGE',[]) then
      begin
      larg_page.Value   :=DM4.Tb_FilPad2FPVALOR.AsInteger;
      end;

   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_MARSUP',[]) then
      begin
      edt_marsup.Value   :=DM4.Tb_FilPad2FPVALOR.AsInteger;
      end;

   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_MARINF',[]) then
      begin
      edt_marinf.Value   :=DM4.Tb_FilPad2FPVALOR.AsInteger;
      end;

   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_MARESQ',[]) then
      begin
      edt_maresq.Value   :=DM4.Tb_FilPad2FPVALOR.AsInteger;
      end;

   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_MARDIR',[]) then
      begin
      edt_mardir.Value   :=DM4.Tb_FilPad2FPVALOR.AsInteger;
      end;



    fAjustaGridRelatorio(1);
   end
else
   fAtualizaRelatorio(0);

end;
procedure TFrm_Etivol02.sbnSalvaPadraoClick(Sender: TObject);

begin
fDeletaPadroes(-3,'_ETIVOL02','');
fGravaPadroes(-3,'CB_TERMICA'          ,'itemindex' ,'_ETIVOL02',CB_TERMICA.Text);
fGravaPadroes(-3,'CB_PORTA'            ,'text'      ,'_ETIVOL02',CB_Porta.Text);

end;

function tFrm_Etivol02.fProcuraObs(pCampo,pObsDefault: String):String;
begin
if mem_config.locate('COMPONENTE_NAME',pCampo,[loCaseInsensitive]) then
   result:=mem_configDESCRICAO.AsString
else
   result:=pObsDefault;
end;

function TFrm_Etivol02.fCarregarTabelaEtiqueta(ptipo: Integer): Boolean;
begin

Qr_Ped.Close;
Qr_Ped.SQL.Clear;
Qr_Ped.SQL.Add('Select P1CODCLI,P1LOTSEQ,P1CHAVE,P1DATAP,P1NUMNF,P1QTDVOL,P1ETIVOL,CRAZAO,CLOG,CBAIRRO, '
              +'       P1CODEMP, P1CODEMB,P1CODTRA, TRRAZTRA, '
              +'            CCIDADE,CUF,CDENOM,CCEP,CFONE01 '
              +' from CADP01, CADCLI, CADTRA where TRCODTRA(+)=P1CODTRA and P1QTDVOL>0 and '
              +iif(DM1.Qr_Tid.locate('TINOME','CADPED',[]),'', ' P1CODEMP=0'+IntTostr(mpcodemp)+' and ')
              +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'', ' CCODEMP=P1CODEMP and ')
              +' CCODCLI=P1CODCLI ');

if fsonumero(CHAVE.Text)>0 then
   begin
   Qr_Ped.SQL.Add(' and P1CHAVE=0'+Trim(CHAVE.Text));
   end;

Qr_Ped.SQL.add(' and P1ORDEM=01 ');
Qr_Ped.open;
fCarregarEtiquetas;
end;




function TFrm_Etivol02.fCarregarEtiquetas: boolean;
var
query_etiquetas: TQuery;
mNotasFiscais: String;
mPedidos: String;

   procedure pfechartudo;
   begin
   if query_etiquetas<> nil then
      begin
      query_etiquetas.close;
      freeandnil(query_etiquetas);
      end;
   end;

begin
mNotasFiscais:='';
mPedidos:='';

if mem_etiqueta.Active=false then
   mem_etiqueta.Open;

if (Qr_Ped.active) then
   begin
   Qr_Ped.First;
   While not Qr_Ped.Eof do
      begin
      mNotasFiscais:='NF: '+mNotasFiscais+FormatFloat('000000', Qr_PedP1NUMNF.AsFloat)+chr(13);
      mPedidos     :='Ped: '+mPedidos+FormatFloat('000000', Qr_PedP1CHAVE.AsFloat)+chr(13);
      Qr_Ped.Next;
      end;
   Qr_Ped.First;
   end;

cds_config_etiqueta.Tag:=0;
cds_config_etiqueta.DisableControls;

query_etiquetas:=TQuery.create(nil);
query_etiquetas.DatabaseName:=DM1.sg_assoc.DatabaseName;
query_etiquetas.SQL.Add('select * from CADPED_VOLUMES '
                       +' where PV_CODEMP=:CODEMP '
                       +' AND PV_CHAVE=:CHAVE '
                       +' AND PV_CHAVE_ANO=:CHAVE_ANO '
                       +' order by PV_NUMVOL ');
query_etiquetas.ParamByName('CODEMP').AsInteger   :=mpcodemp;
query_etiquetas.ParamByName('CHAVE').AsInteger    :=valint(CHAVE.Text);
query_etiquetas.ParamByName('CHAVE_ANO').AsInteger:=ls_numped;



try
    query_etiquetas.Open;
except on e : exception do
    begin
    ex_erroSql_Novo(query_etiquetas,3783,'func2 '+e.Message,'CADCONFIGETIQ');
    result:=false;
    exit;
    end;
    end;
While not Query_etiquetas.Eof do
   begin
   if mem_etiqueta.locate('NUMVOL',query_etiquetas.fieldbyname('PV_NUMVOL').AsInteger,[]) then
      mem_etiqueta.Edit
   else
      mem_etiqueta.Append;
   mem_etiquetaEMI_NOMFAN.AsString:=copy(NOMFAN.Text,1,60);
   mem_etiquetaOBS_EMI_NOMFAN.AsString:=fProcuraObs('DBRL_OBS_EMI_NOMFAN','Fantasia Emitente: ');
   mem_etiquetaEMI_RAZSOC.AsString:=copy(RAZSOC.Text,1,60);
   mem_etiquetaOBS_EMI_RAZSOC.AsString:=fProcuraObs('DBRL_OBS_EMI_RAZSOC','Razão Social Emitente: ');
   mem_etiquetavolume.AsString :=query_etiquetas.fieldbyname('PV_NUMVOL').AsString+'/'+query_etiquetas.fieldbyname('PV_QTDTOTVOL').AsString;
   mem_etiquetaOBS_VOLUME.AsString  :=fProcuraObs('DBRL_OBS_VOLUME','Volume: ');
   mem_etiquetaOBS_NUMVOL.AsString  :=fProcuraObs('DBRL_OBS_VOLUME','Volume: ');
   mem_etiquetaPEDIDOS.AsString     :=mPedidos;
   mem_etiquetaOBS_PEDIDOS.AsString :=fProcuraObs('DBRL_OBS_PEDIDO','Pedido(s): ');
   mem_etiquetanotas_fiscais.AsString :=mNotasFiscais;
   mem_etiquetaCODCLI.AsFloat       := Qr_PedP1CODCLI.AsFloat;
   mem_etiquetaOBS_CODCLI.AsString  :=fProcuraObs('DBRL_OBS_CODCLI','Cód.Cliente: ');
   mem_etiquetaRAZAOSOC.AsString    :=NOMCLI.Text;
   mem_etiquetaOBS_RAZAOSOC.AsString:=fProcuraObs('DBRL_OBS_RAZAOSOC','Razão Social: ');
   mem_etiquetaFANTASIA.AsString    :=Qr_PedCDENOM.AsString;
   mem_etiquetaOBS_FANTASIA.AsString:=fProcuraObs('DBRL_OBS_FANTASIA','Fantasia:');
   mem_etiquetaEMI_NOMTRA.AsString      :=Copy(Qr_PedTRRAZTRA.AsString,0,60);
   mem_etiquetaCLI_CEP.AsString      :=Qr_PedCCEP.AsString;

   mem_etiquetaOBS_EMI_NOMTRA.AsString  :='Transportadora: ';
   mem_etiquetaENDERECO.AsString    :=Qr_PedCLOG.asstring;
   mem_etiquetaOBS_ENDERECO.AsString:=fProcuraObs('DBRL_OBS_ENDERECO','Endereco: ');
   mem_etiquetaBAIRRO.AsString      :=Qr_PedCBAIRRO.asstring;
   mem_etiquetaOBS_BAIRRO.AsString  :=fProcuraObs('DBRL_OBS_BAIRRO','Bairro: ');
   mem_etiquetaFONE01.AsString      :=Qr_PedCFONE01.asstring;
   mem_etiquetaOBS_FONE01.AsString  :=fProcuraObs('DBRL_OBS_FONE','Fone: ');
   mem_etiquetaCIDADE.AsString      :=Qr_PedCCIDADE.asstring;
   mem_etiquetaCIDADE_UF.AsString      :=Qr_PedCCIDADE.asstring+'-'+Qr_PedCUF.AsString ;
   mem_etiquetaOBS_CIDADE.AsString  :=fProcuraObs('DBRL_OBS_CIDADE','Cidade: ');
   mem_etiquetaUF.AsString          :=Qr_PedCUF.asstring;
   mem_etiquetaOBS_UF.AsString      :=fProcuraObs('DBRL_OBS_UF','UF: ');
   mem_etiquetaDATAPED.AsString     :=FormatDatetime(fdt2, Qr_PedP1DATAP.AsDateTime);

   mem_etiquetaNUMNF.AsString       :=FormatFloat('000000', Qr_PedP1NUMNF.AsFloat);



   mem_etiquetaOBS_DATAPED.AsString :=fProcuraObs('DBRL_OBS_DATAP','Data: ');
   mem_etiquetaCODEMB.AsFloat       :=Qr_PedP1CODEMB.Asfloat;
   mem_etiquetaOBS_CODEMB.AsString  :=fProcuraObs('DBRL_OBS_CODEMB','Emba: ');
   mem_etiquetaEMI_SLOGAN.AsString:=copy(OBS_SLOGAN.Text,1,200);
   mem_etiquetaOBS_EMI_SLOGAN.AsString:=fProcuraObs('DBRL_OBS_SLOGAN','Observações: ');
   mem_etiquetaCODBAR.AsString    :=Formatfloat('0000000',Qr_PedP1CHAVE.AsFloat)+

   insere(query_etiquetas.fieldbyname('PV_NUMVOL').AsString,'0',03)+'/'+insere(query_etiquetas.fieldbyname('PV_QTDTOTVOL').AsString,'0',03);

   mem_etiquetaCHAVEPED.AsString    :=Formatfloat('0000000',Qr_PedP1CHAVE.AsFloat);
   mem_etiquetaNUMNF.AsString       :=Formatfloat('0000000',Qr_PedP1NUMNF.AsFloat);


   mem_etiquetaNUMVOL.Asinteger    := query_etiquetas.fieldbyname('PV_NUMVOL').AsInteger;
   mem_etiquetaQTDVOL.Asinteger    := query_etiquetas.fieldbyname('PV_QTDTOTVOL').AsInteger;

   mem_etiquetaENDER_COMPL.AsString    :=Qr_PedCLOG.asstring+' ' +Qr_PedCBAIRRO.AsString;
   mem_etiqueta.post;
   Query_etiquetas.Next;

   end;
result:=true;
cds_config_etiqueta.Tag:=1;
cds_config_etiqueta.EnableControls;

end;


{
function TFrm_Etivol02.fCarregarEtiquetas: boolean;
var
pTextoExtra: String;
pTextoExtra02: String;
mqtd,x,y: Integer;
mNotasFiscais: String;
mPedidos: String;
query_etiquetas: TQuery;
mPesoBruto_Calc: real;
mPesoBruto_Calc_dif: real;

mPesoLiquido_Calc: real;
mPesoLiquido_Calc_dif: real;

begin
mNotasFiscais:='';
mPedidos:='';
cds_config_etiqueta.Tag:=0;
cds_config_etiqueta.DisableControls;

   if ( ValFloat(PESOB.Text)>0 ) and (valint(QTDVOL.Text)>0) then
      begin
       mPesoBruto_Calc :=  Truncar( (ValFloat(PESOB.Text) / valint(QTDVOL.Text)),3);
      mPesoBruto_Calc_dif :=  ValFloat(PESOB.Text) -  arredonda( (mPesoBruto_Calc*valint(QTDVOL.Text)),3);
      end
   else
      begin
      mPesoBruto_Calc     :=  0;
      mPesoBruto_Calc_dif :=  0;
      end;


   if ( ValFloat(PESOL.Text)>0 ) and (valint(QTDVOL.Text)>0) then
      begin
      mPesoLiquido_Calc :=  Truncar( (ValFloat(PESOl.Text) / valint(QTDVOL.Text)),3);
      mPesoLiquido_Calc_dif :=  ValFloat(PESOl.Text) -  arredonda( (mPesoLiquido_Calc*valint(QTDVOL.Text)),3);
      end
   else
      begin
      mPesoLiquido_Calc     :=  0;
      mPesoLiquido_Calc_dif :=  0;
      end;



   query_etiquetas:=TQuery.create(nil);
   query_etiquetas.DatabaseName:=DM1.sg_assoc.DatabaseName;
   query_etiquetas.SQL.Add('select * from CADPED_VOLUMES '
                          +' where PV_CODEMP=:CODEMP '
                          +' AND PV_CHAVE=:CHAVE '
                          +' AND PV_CHAVE_ANO=:CHAVE_ANO '
                          +' order by PV_NUMVOL ');
   query_etiquetas.ParamByName('CODEMP').AsInteger   :=mpcodemp;
   query_etiquetas.ParamByName('CHAVE').AsInteger    :=valint(CHAVE.Text);
   query_etiquetas.ParamByName('CHAVE_ANO').AsInteger:=ls_numped;

   try
       query_etiquetas.Open;
   except on e : exception do
       begin
       ex_erroSql_Novo(query_etiquetas,3783,'func2 '+e.Message,'CADCONFIGETIQ');
       result:=false;
       exit;
       end;
       end;


   if (Qr_Ped.active) then
      begin
      Qr_Ped.First;
      While not Qr_Ped.Eof do
         begin
         mNotasFiscais:='NF: '+mNotasFiscais+FormatFloat('000000', Qr_PedP1NUMNF.AsFloat)+chr(13);
         mPedidos     :='Ped: '+mPedidos+FormatFloat('000000', Qr_PedP1CHAVE.AsFloat)+chr(13);
         Qr_Ped.Next;
         end;
      Qr_Ped.First;
      end;
   if not mem_config.Active then
      mem_config.Open;

   if cb_chavenf.Checked then
     pTextoExtra:=NUMNF.Text
   else
     pTextoExtra:=CHAVE.Text;
   pTextoExtra02:='';
   mcinst:='';
   y:=1;
   for x:=0 to CLB_OUTROSPED.Items.Count-1 do
      begin
      if CLB_OUTROSPED.Checked[x] then
         begin
         y:=y+1;
         if y>4 then
            begin
            if trim(pTextoExtra02)='' then
               pTextoExtra02:=pTextoExtra02+mcinst+CLB_OUTROSPED.Items[x]
            else
               pTextoExtra02:=pTextoExtra02+mcinst+copy(CLB_OUTROSPED.Items[x],length(CLB_OUTROSPED.Items[x])-2,3);
            mcinst:='/';
            end
         else
            pTextoExtra:=pTextoExtra+'/'
            +copy(CLB_OUTROSPED.Items[x],length(CLB_OUTROSPED.Items[x])-2,3)
         end;
      end;
   if mem_etiqueta.Active=false then
      mem_etiqueta.Open;
//   mem_etiqueta.Open;

//   While not Qr_Ped.Eof do
      begin
      for mqtd:=1 to valint(QTDVOL.Text) do
         begin
         if mem_etiqueta.locate('NUMVOL',mqtd,[]) then
            begin
            mem_etiqueta.Edit;
            mem_etiquetaEMI_NOMFAN.AsString:=copy(NOMFAN.Text,1,60);
            mem_etiquetaOBS_EMI_NOMFAN.AsString:=fProcuraObs('DBRL_OBS_EMI_NOMFAN','Fantasia Emitente: ');
            mem_etiquetaEMI_RAZSOC.AsString:=copy(RAZSOC.Text,1,60);
            mem_etiquetaOBS_EMI_RAZSOC.AsString:=fProcuraObs('DBRL_OBS_EMI_RAZSOC','Razão Social Emitente: ');
            mem_etiquetavolume.AsString :=FloattoStr(mqtd)+'/'+QTDVOL.Text;
            mem_etiquetaOBS_VOLUME.AsString  :=fProcuraObs('DBRL_OBS_VOLUME','Volume: ');
            mem_etiquetaOBS_NUMVOL.AsString  :=fProcuraObs('DBRL_OBS_VOLUME','Volume: ');
    //        mem_etiquetaPEDIDOS.AsString     :='Pedido(s)'+chr(13)+pTextoExtra+chr(13)+pTextoExtra02;
            mem_etiquetaPEDIDOS.AsString     :=mPedidos;
            mem_etiquetaOBS_PEDIDOS.AsString :=fProcuraObs('DBRL_OBS_PEDIDO','Pedido(s): ');
            mem_etiquetanotas_fiscais.AsString :=mNotasFiscais;
            mem_etiquetaCODCLI.AsFloat       := Qr_PedP1CODCLI.AsFloat;
            mem_etiquetaOBS_CODCLI.AsString  :=fProcuraObs('DBRL_OBS_CODCLI','Cód.Cliente: ');
            mem_etiquetaRAZAOSOC.AsString    :=NOMCLI.Text;
            mem_etiquetaOBS_RAZAOSOC.AsString:=fProcuraObs('DBRL_OBS_RAZAOSOC','Razão Social: ');
            mem_etiquetaFANTASIA.AsString    :=Qr_PedCDENOM.AsString;
            mem_etiquetaOBS_FANTASIA.AsString:=fProcuraObs('DBRL_OBS_FANTASIA','Fantasia:');
            mem_etiquetaEMI_NOMTRA.AsString      :=Copy(Qr_PedTRRAZTRA.AsString,0,60);
            mem_etiquetaOBS_EMI_NOMTRA.AsString  :='Transportadora: ';
            mem_etiquetaENDERECO.AsString    :=Qr_PedCLOG.asstring;
            mem_etiquetaOBS_ENDERECO.AsString:=fProcuraObs('DBRL_OBS_ENDERECO','Endereco: ');
            mem_etiquetaBAIRRO.AsString      :=Qr_PedCBAIRRO.asstring;
            mem_etiquetaOBS_BAIRRO.AsString  :=fProcuraObs('DBRL_OBS_BAIRRO','Bairro: ');
            mem_etiquetaFONE01.AsString      :=Qr_PedCFONE01.asstring;
            mem_etiquetaOBS_FONE01.AsString  :=fProcuraObs('DBRL_OBS_FONE','Fone: ');
            mem_etiquetaCIDADE.AsString      :=Qr_PedCCIDADE.asstring;
            mem_etiquetaCIDADE_UF.AsString      :=Qr_PedCCIDADE.asstring+'-'+mem_etiquetaUF.AsString ;

            mem_etiquetaOBS_CIDADE.AsString  :=fProcuraObs('DBRL_OBS_CIDADE','Cidade: ');
            mem_etiquetaUF.AsString          :=Qr_PedCUF.asstring;
            mem_etiquetaOBS_UF.AsString      :=fProcuraObs('DBRL_OBS_UF','UF: ');
            mem_etiquetaDATAPED.AsString     :=FormatDatetime(fdt2, Qr_PedP1DATAP.AsDateTime);
            mem_etiquetaOBS_DATAPED.AsString :=fProcuraObs('DBRL_OBS_DATAP','Data: ');
            mem_etiquetaCODEMB.AsFloat       :=Qr_PedP1CODEMB.Asfloat;
            mem_etiquetaOBS_CODEMB.AsString  :=fProcuraObs('DBRL_OBS_CODEMB','Emba: ');
            mem_etiquetaEMI_SLOGAN.AsString:=copy(OBS_SLOGAN.Text,1,200);
            mem_etiquetaOBS_EMI_SLOGAN.AsString:=fProcuraObs('DBRL_OBS_SLOGAN','Observações: ');
            mem_etiquetaCODBAR.AsString    :=Formatfloat('0000000',Qr_PedP1CHAVE.AsFloat)+insere(IntToStr(mqtd),'0',03)+insere(fdeixanum(QTDVOL.text),'0',03);
            mem_etiquetaNUMVOL.Asinteger    := mqtd;
            mem_etiquetaQTDVOL.Asinteger    := valint(QTDVOL.text);

            mem_etiquetaENDER_COMPL.AsString    :=Qr_PedCLOG.asstring+' ' +Qr_PedCBAIRRO.AsString;
            mem_etiqueta.post;



//         Qr_Ped.Next;
         end;
      end;
   result:=true;
   end;
cds_config_etiqueta.Tag:=1;
cds_config_etiqueta.EnableControls;

end;
}

procedure TFrm_Etivol02.fCriarEtiquetas;


var
pTextoExtra: String;
pTextoExtra02: String;
mqtd,x,y: Integer;
mNotasFiscais: String;
mPedidos: String;
query_etiquetas: TQuery;
mPesoBruto_Calc: real;
mPesoBruto_Calc_dif: real;

mPesoLiquido_Calc: real;
mPesoLiquido_Calc_dif: real;

mQtdTotVol: Integer;
mVolume: Integer;

query_ped02: TQuery;

    procedure pfechartudo;
    begin
    if query_ped02<>nil then
       begin
       query_ped02.Close;
       freeandnil(query_ped02);
       end;
    if query_etiquetas<>nil then
       begin
       query_etiquetas.Close;
       freeandnil(query_etiquetas);
       end;
    end;

begin
mem_etiqueta.close;
mem_etiqueta.Open;


mNotasFiscais:='';
mPedidos:='';
cds_config_etiqueta.Tag:=0;
cds_config_etiqueta.DisableControls;

   if ( ValFloat(PESOB.Text)>0 ) and (valint(QTDVOL.Text)>0) then
      begin
       mPesoBruto_Calc :=  Truncar( (ValFloat(PESOB.Text) / valint(QTDVOL.Text)),3);
      mPesoBruto_Calc_dif :=  ValFloat(PESOB.Text) -  arredonda( (mPesoBruto_Calc*valint(QTDVOL.Text)),3);
      end
   else
      begin
      mPesoBruto_Calc     :=  0;
      mPesoBruto_Calc_dif :=  0;
      end;


   if ( ValFloat(PESOL.Text)>0 ) and (valint(QTDVOL.Text)>0) then
      begin
      mPesoLiquido_Calc :=  Truncar( (ValFloat(PESOl.Text) / valint(QTDVOL.Text)),3);
      mPesoLiquido_Calc_dif :=  ValFloat(PESOl.Text) -  arredonda( (mPesoLiquido_Calc*valint(QTDVOL.Text)),3);
      end
   else
      begin
      mPesoLiquido_Calc     :=  0;
      mPesoLiquido_Calc_dif :=  0;
      end;



   query_etiquetas:=TQuery.create(nil);
   query_etiquetas.DatabaseName:=DM1.sg_assoc.DatabaseName;
   query_etiquetas.SQL.Add('select * from CADPED_VOLUMES '
                          +' where PV_CODEMP=:CODEMP '
                          +' AND PV_CHAVE=:CHAVE '
                          +' AND PV_CHAVE_ANO=:CHAVE_ANO '
                          +' order by PV_NUMVOL ');
   query_etiquetas.ParamByName('CODEMP').AsInteger   :=mpcodemp;
   query_etiquetas.ParamByName('CHAVE').AsInteger    :=valint(CHAVE.Text);
   query_etiquetas.ParamByName('CHAVE_ANO').AsInteger:=ls_numped;

   try
       query_etiquetas.Open;
   except on e : exception do
       begin
       ex_erroSql_Novo(query_etiquetas,3783,'func2 '+e.Message,'CADCONFIGETIQ');
//       result:=false;
       exit;
       end;
       end;


   if (Qr_Ped.active) then
      begin
      Qr_Ped.First;
      While not Qr_Ped.Eof do
         begin
         mNotasFiscais:='NF: '+mNotasFiscais+FormatFloat('000000', Qr_PedP1NUMNF.AsFloat)+chr(13);
         mPedidos     :='Ped: '+mPedidos+FormatFloat('000000', Qr_PedP1CHAVE.AsFloat)+chr(13);
         Qr_Ped.Next;
         end;
      Qr_Ped.First;
      end;
   if not mem_config.Active then
      mem_config.Open;

   if cb_chavenf.Checked then
     pTextoExtra:=NUMNF.Text
   else
     pTextoExtra:=CHAVE.Text;
   pTextoExtra02:='';
   mcinst:='';
   y:=1;
   for x:=0 to CLB_OUTROSPED.Items.Count-1 do
      begin
      if CLB_OUTROSPED.Checked[x] then
         begin
         y:=y+1;
         if y>4 then
            begin
            if trim(pTextoExtra02)='' then
               pTextoExtra02:=pTextoExtra02+mcinst+CLB_OUTROSPED.Items[x]
            else
               pTextoExtra02:=pTextoExtra02+mcinst+copy(CLB_OUTROSPED.Items[x],length(CLB_OUTROSPED.Items[x])-2,3);
            mcinst:='/';
            end
         else
            pTextoExtra:=pTextoExtra+'/'
            +copy(CLB_OUTROSPED.Items[x],length(CLB_OUTROSPED.Items[x])-2,3)
         end;
      end;
   mem_etiqueta.Close;
   mem_etiqueta.Open;

   if cb_criterito.ItemIndex=mCriterito_Por_Item then
      begin
      query_ped02:=TQuery.create(nil);
      query_ped02.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
      query_ped02.sql.add('Select PDNOME,PDMARCA,PDPESOB,PDPESOL,P2QTD,P2CODPRO,PDCODBAR,PDUND '
                         +'  from '
                         +'CADP02,CADPRO '
                         +' where PDCODPRO=P2CODPRO '
                         +' and P2CHAVE=:P2CHAVE '
                         +' and P2LOTSEQ=:P2LOTSEQ '
                         +' and P2CODEMP=:P2CODEMP ');
      query_ped02.ParamByName('P2CHAVE').AsFloat := fsonumero(CHAVE.Text);
      query_ped02.ParamByName('P2CODEMP').AsFloat := mpcodemp;
      query_ped02.ParamByName('P2LOTSEQ').AsFloat := ls_numped;
      try
         query_ped02.Open;
      except on e : exception do
         begin
         ex_erroSql_Novo(query_ped02,4145,'func Erro:'+e.Message ,'CADP02,CADPRO');
         pfechartudo;
         exit;
         end;
         end;

      mQtdTotVol:=0;
      mVolume   :=0;

      query_ped02.First;
      While not query_ped02.eof do
         begin
         mQtdTotVol:=mQtdTotVol+trunc(query_ped02.fieldbyname('P2QTD').asfloat);
         query_ped02.Next;
         end;
      query_ped02.First;


      while not query_ped02.Eof do
         begin
         for mqtd:=1 to trunc(query_ped02.fieldbyname('P2QTD').Asfloat) do
            begin
            mVolume:=mVolume+1;
            mem_etiqueta.Append;
            mem_etiquetaEMI_NOMFAN.AsString:=copy(NOMFAN.Text,1,60);
            mem_etiquetaOBS_EMI_NOMFAN.AsString:=fProcuraObs('DBRL_OBS_EMI_NOMFAN','Fantasia Emitente: ');
            mem_etiquetaEMI_RAZSOC.AsString:=copy(RAZSOC.Text,1,60);
            mem_etiquetaOBS_EMI_RAZSOC.AsString:=fProcuraObs('DBRL_OBS_EMI_RAZSOC','Razão Social Emitente: ');
            mem_etiquetavolume.AsString :=FloattoStr(mVolume)+'/'+InttoStr(mQtdTotVol);
            mem_etiquetaOBS_VOLUME.AsString  :=fProcuraObs('DBRL_OBS_VOLUME','Volume: ');
            mem_etiquetaOBS_NUMVOL.AsString  :=fProcuraObs('DBRL_OBS_VOLUME','Volume: ');
            mem_etiquetaPEDIDOS.AsString     :=mPedidos;
            mem_etiquetaOBS_PEDIDOS.AsString :=fProcuraObs('DBRL_OBS_PEDIDO','Pedido(s): ');
            mem_etiquetanotas_fiscais.AsString :=mNotasFiscais;
            mem_etiquetaCODCLI.AsFloat       := Qr_PedP1CODCLI.AsFloat;
            mem_etiquetaOBS_CODCLI.AsString  :=fProcuraObs('DBRL_OBS_CODCLI','Cód.Cliente: ');
            mem_etiquetaRAZAOSOC.AsString    :=NOMCLI.Text;
            mem_etiquetaOBS_RAZAOSOC.AsString:=fProcuraObs('DBRL_OBS_RAZAOSOC','Razão Social: ');
            mem_etiquetaFANTASIA.AsString    :=Qr_PedCDENOM.AsString;
            mem_etiquetaOBS_FANTASIA.AsString:=fProcuraObs('DBRL_OBS_FANTASIA','Fantasia:');
            mem_etiquetaEMI_NOMTRA.AsString      :=Copy(Qr_PedTRRAZTRA.AsString,0,60);
            mem_etiquetaCLI_CEP.AsString      :=Qr_PedCCEP.AsString;

            mem_etiquetaOBS_EMI_NOMTRA.AsString  :='Transportadora: ';
            mem_etiquetaENDERECO.AsString    :=Qr_PedCLOG.asstring;
            mem_etiquetaOBS_ENDERECO.AsString:=fProcuraObs('DBRL_OBS_ENDERECO','Endereco: ');
            mem_etiquetaBAIRRO.AsString      :=Qr_PedCBAIRRO.asstring;
            mem_etiquetaOBS_BAIRRO.AsString  :=fProcuraObs('DBRL_OBS_BAIRRO','Bairro: ');
            mem_etiquetaFONE01.AsString      :=Qr_PedCFONE01.asstring;
            mem_etiquetaOBS_FONE01.AsString  :=fProcuraObs('DBRL_OBS_FONE','Fone: ');

            mem_etiquetaCIDADE.AsString      :=Qr_PedCCIDADE.asstring;
            mem_etiquetaCIDADE_UF.AsString      :=Qr_PedCCIDADE.asstring+'-'+Qr_PedCUF.AsString ;


            mem_etiquetaOBS_CIDADE.AsString  :=fProcuraObs('DBRL_OBS_CIDADE','Cidade: ');
            mem_etiquetaUF.AsString          :=Qr_PedCUF.asstring;
            mem_etiquetaOBS_UF.AsString      :=fProcuraObs('DBRL_OBS_UF','UF: ');
            mem_etiquetaDATAPED.AsString     :=FormatDatetime(fdt2, Qr_PedP1DATAP.AsDateTime);
            mem_etiquetaNUMNF.AsString       :=FormatFloat('000000', Qr_PedP1NUMNF.AsFloat);

            mem_etiquetaOBS_DATAPED.AsString :=fProcuraObs('DBRL_OBS_DATAP','Data: ');
            mem_etiquetaCODEMB.AsFloat       :=Qr_PedP1CODEMB.Asfloat;
            mem_etiquetaOBS_CODEMB.AsString  :=fProcuraObs('DBRL_OBS_CODEMB','Emba: ');
            mem_etiquetaEMI_SLOGAN.AsString:=copy(OBS_SLOGAN.Text,1,200);
            mem_etiquetaOBS_EMI_SLOGAN.AsString:=fProcuraObs('DBRL_OBS_SLOGAN','Observações: ');
            mem_etiquetaCODBAR.AsString    :=Formatfloat('0000000',Qr_PedP1CHAVE.AsFloat)+insere(IntToStr(mvolume),'0',03)+insere(inttostr(mqtdtotvol),'0',03);
            mem_etiquetaNUMVOL.Asinteger    := mVolume;
            mem_etiquetaQTDVOL.Asinteger    := mQtdTotVol;

            mem_etiquetaOBS_CODBAR.AsString:='Código Barras: ';
            mem_etiquetaPESOLIQUIDOVOL.value := query_ped02.fieldbyname('PDPESOL').AsFloat;
            mem_etiquetaPESOBRUTOVOL.value := query_ped02.fieldbyname('PDPESOB').AsFloat;
            mem_etiquetaENDER_COMPL.AsString    :=Qr_PedCLOG.asstring+' ' +Qr_PedCBAIRRO.AsString;



            mem_etiquetaEMP_CEP.AsString        :=DM1.Tb_EmpCEP.AsString;
            mem_etiquetaEMP_FONES.AsString      :=DM1.Tb_EmpFONE.AsString;
            mem_etiquetaEMP_RAZSOC.AsString     :=DM1.Tb_EmpRAZAO.AsString;
            mem_etiquetaEMP_FANTASIA.AsString   :=DM1.Tb_EmpFANTASIA.AsString;
            mem_etiquetaEMP_ENDER_COMPL.Value   :=DM1.Tb_EmpENDERECO.AsString+' '+Trim(DM1.Tb_EmpBAIRRO.Value);
            mem_etiquetaEMP_CIDADE_UF.Value     :=DM1.Tb_EmpCIDADE.AsString+' - '+Trim(DM1.Tb_EmpUF.Value);
            mem_etiquetaEMP_CIDADE_UF_CEP.Value   :=DM1.Tb_EmpCIDADE.AsString+' - '+Trim(DM1.Tb_EmpUF.Value)+' - ' +DM1.Tb_EmpCEP.AsString;
            mem_etiquetaPRO_CODPRO.Value          :=query_ped02.fieldbyname('P2CODPRO').AsString;
            mem_etiquetaPRO_CODBAR.Value          :=query_ped02.fieldbyname('PDCODBAR').AsString;
            mem_etiquetaPRO_NOME.Value            :=query_ped02.fieldbyname('PDNOME').AsString;
            mem_etiquetaPRO_UND.Value             :=query_ped02.fieldbyname('PDUND').AsString;
            mem_etiquetaPRO_MARCA.Value           :=query_ped02.fieldbyname('PDMARCA').AsString;




            mem_etiqueta.post;
            end;
         query_ped02.Next;
         end;
      end
  else
      begin
      for mqtd:=1 to valint(QTDVOL.Text) do
         begin
         mem_etiqueta.Append;
         mem_etiquetaEMI_NOMFAN.AsString:=copy(NOMFAN.Text,1,60);
         mem_etiquetaOBS_EMI_NOMFAN.AsString:=fProcuraObs('DBRL_OBS_EMI_NOMFAN','Fantasia Emitente: ');
         mem_etiquetaEMI_RAZSOC.AsString:=copy(RAZSOC.Text,1,60);
         mem_etiquetaOBS_EMI_RAZSOC.AsString:=fProcuraObs('DBRL_OBS_EMI_RAZSOC','Razão Social Emitente: ');
         mem_etiquetavolume.AsString :=FloattoStr(mqtd)+'/'+QTDVOL.Text;
         mem_etiquetaOBS_VOLUME.AsString  :=fProcuraObs('DBRL_OBS_VOLUME','Volume: ');
         mem_etiquetaOBS_NUMVOL.AsString  :=fProcuraObs('DBRL_OBS_VOLUME','Volume: ');
//         mem_etiquetaPEDIDOS.AsString     :='Pedido(s)'+chr(13)+pTextoExtra+chr(13)+pTextoExtra02;
         mem_etiquetaPEDIDOS.AsString     :=mPedidos;
         mem_etiquetaOBS_PEDIDOS.AsString :=fProcuraObs('DBRL_OBS_PEDIDO','Pedido(s): ');
         mem_etiquetanotas_fiscais.AsString :=mNotasFiscais;
         mem_etiquetaCODCLI.AsFloat       := Qr_PedP1CODCLI.AsFloat;
         mem_etiquetaOBS_CODCLI.AsString  :=fProcuraObs('DBRL_OBS_CODCLI','Cód.Cliente: ');
         mem_etiquetaRAZAOSOC.AsString    :=NOMCLI.Text;
         mem_etiquetaOBS_RAZAOSOC.AsString:=fProcuraObs('DBRL_OBS_RAZAOSOC','Razão Social: ');
         mem_etiquetaFANTASIA.AsString    :=Qr_PedCDENOM.AsString;
         mem_etiquetaOBS_FANTASIA.AsString:=fProcuraObs('DBRL_OBS_FANTASIA','Fantasia:');
         mem_etiquetaEMI_NOMTRA.AsString      :=Copy(Qr_PedTRRAZTRA.AsString,0,60);
         mem_etiquetaCLI_CEP.AsString      :=Qr_PedCCEP.AsString;

         mem_etiquetaOBS_EMI_NOMTRA.AsString  :='Transportadora: ';
         mem_etiquetaENDERECO.AsString    :=Qr_PedCLOG.asstring;
         mem_etiquetaOBS_ENDERECO.AsString:=fProcuraObs('DBRL_OBS_ENDERECO','Endereco: ');
         mem_etiquetaBAIRRO.AsString      :=Qr_PedCBAIRRO.asstring;
         mem_etiquetaOBS_BAIRRO.AsString  :=fProcuraObs('DBRL_OBS_BAIRRO','Bairro: ');
         mem_etiquetaFONE01.AsString      :=Qr_PedCFONE01.asstring;
         mem_etiquetaOBS_FONE01.AsString  :=fProcuraObs('DBRL_OBS_FONE','Fone: ');
         mem_etiquetaCIDADE.AsString      :=Qr_PedCCIDADE.asstring;

         mem_etiquetaCIDADE_UF.AsString      :=Qr_PedCCIDADE.asstring+'-'+Qr_PedCUF.AsString ;


         mem_etiquetaOBS_CIDADE.AsString  :=fProcuraObs('DBRL_OBS_CIDADE','Cidade: ');
         mem_etiquetaUF.AsString          :=Qr_PedCUF.asstring;
         mem_etiquetaOBS_UF.AsString      :=fProcuraObs('DBRL_OBS_UF','UF: ');
         mem_etiquetaDATAPED.AsString     :=FormatDatetime(fdt2, Qr_PedP1DATAP.AsDateTime);
         mem_etiquetaNUMNF.AsString       :=FormatFloat('000000', Qr_PedP1NUMNF.AsFloat);

         mem_etiquetaOBS_DATAPED.AsString :=fProcuraObs('DBRL_OBS_DATAP','Data: ');
         mem_etiquetaCODEMB.AsFloat       :=Qr_PedP1CODEMB.Asfloat;
         mem_etiquetaOBS_CODEMB.AsString  :=fProcuraObs('DBRL_OBS_CODEMB','Emba: ');
         mem_etiquetaEMI_SLOGAN.AsString:=copy(OBS_SLOGAN.Text,1,200);
         mem_etiquetaOBS_EMI_SLOGAN.AsString:=fProcuraObs('DBRL_OBS_SLOGAN','Observações: ');
         mem_etiquetaCODBAR.AsString    :=Formatfloat('0000000',Qr_PedP1CHAVE.AsFloat)+insere(IntToStr(mqtd),'0',03)+insere(fdeixanum(QTDVOL.text),'0',03);
         mem_etiquetaNUMVOL.Asinteger    := mqtd;
         mem_etiquetaQTDVOL.Asinteger    := valint(QTDVOL.text);

         mem_etiquetaOBS_CODBAR.AsString:='Código Barras: ';
         if query_etiquetas.locate('PV_NUMVOL',mem_etiquetaNUMVOL.AsString,[]) then
            begin
            mem_etiquetaPESOLIQUIDOVOL.value := query_etiquetas.fieldbyname('PV_PESO_LIQUIDO').AsFloat;
            mem_etiquetaPESOBRUTOVOL.value := query_etiquetas.fieldbyname('PV_PESO_BRUTO').AsFloat;
            end
         else
            begin
            mem_etiquetaPESOLIQUIDOVOL.value := mPesoLiquido_Calc+mPesoLiquido_Calc_dif;
            mem_etiquetaPESOBRUTOVOL.value := mPesoBruto_Calc+mPesoBruto_Calc_dif;
            mPesoLiquido_Calc_dif :=0;
            mPesoBruto_Calc_dif   :=0;
            end;
         mem_etiquetaENDER_COMPL.AsString    :=Qr_PedCLOG.asstring+' ' +Qr_PedCBAIRRO.AsString;



         mem_etiquetaEMP_CEP.AsString        :=DM1.Tb_EmpCEP.AsString;
         mem_etiquetaEMP_FONES.AsString      :=DM1.Tb_EmpFONE.AsString;
         mem_etiquetaEMP_RAZSOC.AsString     :=DM1.Tb_EmpRAZAO.AsString;
         mem_etiquetaEMP_FANTASIA.AsString   :=DM1.Tb_EmpFANTASIA.AsString;
         mem_etiquetaEMP_ENDER_COMPL.Value   :=DM1.Tb_EmpENDERECO.AsString+' '+Trim(DM1.Tb_EmpBAIRRO.Value);
         mem_etiquetaEMP_CIDADE_UF.Value     :=DM1.Tb_EmpCIDADE.AsString+' - '+Trim(DM1.Tb_EmpUF.Value);
         mem_etiquetaEMP_CIDADE_UF_CEP.Value  :=DM1.Tb_EmpCIDADE.AsString+' - '+Trim(DM1.Tb_EmpUF.Value)+' - ' +DM1.Tb_EmpCEP.AsString;

         end;
      end;

cds_config_etiqueta.Tag:=1;
cds_config_etiqueta.EnableControls;

end;




procedure TFrm_Etivol02.cb_rl_bordasClick(Sender: TObject);
begin
if cb_rl_bordas.Checked then
   mboolean:=true
else
   mboolean:=false;
RLDetailGrid1.Borders.DrawLeft  :=mboolean;
RLDetailGrid1.Borders.DrawRight :=mboolean;
RLDetailGrid1.Borders.DrawTop   :=mboolean;
RLDetailGrid1.Borders.DrawBottom:=mboolean;


end;

procedure TFrm_Etivol02.edt_rl_AltEtiqExit(Sender: TObject);
begin

edt_rl_AltEtiq.Text:=fDeixanum(edt_rl_AltEtiq.Text);
fAtualizaRelatorio(0);

end;

procedure TFrm_Etivol02.edt_rl_QtdLadoExit(Sender: TObject);
begin
edt_rl_QtdLado.Text:=fDeixanum(edt_rl_QtdLado.Text);
fAtualizaRelatorio(0);

end;

procedure TFrm_Etivol02.cb_rl_bordasExit(Sender: TObject);
begin
fAtualizaRelatorio(0);

end;

procedure TFrm_Etivol02.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_Etivol02.FormActivate(Sender: TObject);
begin
PageControl1.ActivePage:=TabSheet1;
end;

procedure TFrm_Etivol02.CB_CODBAR_VOLClick(Sender: TObject);
begin

fDeletaPadroes(-1,'_ETIVOL02','CB_CODBAR_VOL');
fGravaPadroes(-1,'CB_CODBAR_VOL'          ,'itemindex' ,'_ETIVOL02',iif(CB_CODBAR_VOL.Checked=true,'true','false'));

end;





function TFrm_Etivol02.fLerConfiguracao: Boolean;
begin
cds_config_etiqueta.Tag:=1;

if cds_config_etiqueta.IsEmpty then
   begin
   cds_config_etiqueta.CreateDataSet;
   cds_config_etiqueta.Open;
   end;
cds_config_etiqueta.EmptyDataSet;

if fLerGenerico_query('CADCONFIGETIQ','CE_LOCAL,CE_NOME,CE_QTDCOL,CE_CONFIG_CAB,CE_CONFIG_ETIQ01,CE_CONFIG_ETIQ02,CE_CONFIG_ETIQ03,CE_CONFIG_ETIQ04,CE_CONFIG_ETIQ05',' CE_LOCAL='+QuotedStr(mLocalEtiqueta) ,query_consulta) then
   begin
   While not query_consulta.eof do
      begin
      cds_config_etiqueta.append;
      cds_config_etiquetaCE_LOCAL.value        :=query_consulta.fieldbyname('CE_LOCAL').asstring;
      cds_config_etiquetaCE_NOME.value         :=query_consulta.fieldbyname('CE_NOME').asstring;
      cds_config_etiquetaCE_CONFIG_CAB.value   :=query_consulta.fieldbyname('CE_CONFIG_CAB').asstring;
      cds_config_etiquetaCE_CONFIG_ETIQ01.value:=query_consulta.fieldbyname('CE_CONFIG_ETIQ01').asstring;
      cds_config_etiquetaCE_CONFIG_ETIQ02.value:=query_consulta.fieldbyname('CE_CONFIG_ETIQ02').asstring;
      cds_config_etiquetaCE_CONFIG_ETIQ03.value:=query_consulta.fieldbyname('CE_CONFIG_ETIQ03').asstring;
      cds_config_etiquetaCE_CONFIG_ETIQ04.value:=query_consulta.fieldbyname('CE_CONFIG_ETIQ04').asstring;
      cds_config_etiquetaCE_CONFIG_ETIQ05.value:=query_consulta.fieldbyname('CE_CONFIG_ETIQ05').asstring;
      cds_config_etiquetaCE_QTDCOL.value       :=query_consulta.fieldbyname('CE_QTDCOL').AsInteger;

      cds_config_etiqueta.Post;
      query_consulta.next;
      end;
   cds_config_etiqueta.First;
   cb_modelo.Items.Clear;
   While not cds_config_etiqueta.Eof do
      begin
      cb_modelo.Items.Add(cds_config_etiquetaCE_NOME.AsString);
      cds_config_etiqueta.Next;
      end;
   cds_config_etiqueta.First;
   END;

result:=true;
cds_config_etiqueta.Tag:=0;


end;

procedure TFrm_Etivol02.bbincluirClick(Sender: TObject);
begin
cds_config_etiqueta.Insert;

end;

procedure TFrm_Etivol02.bbalterarClick(Sender: TObject);
begin
cds_config_etiqueta.edit;

end;

procedure TFrm_Etivol02.bbexcluirClick(Sender: TObject);
begin
if Application.MessageBox(pchar('Quer realmente Excluir a Configuração da Etiqueta '+cds_config_etiquetaCE_NOME.asstring),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
cds_config_etiqueta.Delete;

end;

procedure TFrm_Etivol02.bbgravar_confgClick(Sender: TObject);
begin
cds_config_etiqueta.Post;

end;

procedure TFrm_Etivol02.bbcancelar_confClick(Sender: TObject);
begin
cds_config_etiqueta.Cancel;

end;

procedure TFrm_Etivol02.bbfecharClick(Sender: TObject);
begin
PageControl1.ActivePageIndex:=0;
end;

procedure TFrm_Etivol02.cds_config_etiquetaBeforePost(DataSet: TDataSet);
var
mMensagem: String;
begin
if cds_config_etiqueta.Tag=0 then
   begin
   mMensagem:='';
   if cds_config_etiquetaCE_QTDCOL.AsInteger<1 then
      cds_config_etiquetaCE_QTDCOL.AsInteger:=1;

   if length(cds_config_etiquetaCE_NOME.AsString)<1 then
      mMensagem:=mMensagem+'Falta o nome da etiqueta';
   if (length(cds_config_etiquetaCE_CONFIG_CAB.AsString)<1) then
      mMensagem:=mMensagem+'Falta dados do Cabecalho da Etiqueta';
   if length(cds_config_etiquetaCE_CONFIG_ETIQ01.AsString)<1 then
      mMensagem:=mMensagem+'Falta configuração da etiqueta coluna 01';
   if (cds_config_etiquetaCE_QTDCOL.AsInteger>1) and (length(cds_config_etiquetaCE_CONFIG_ETIQ02.AsString) <1) then
      mMensagem:=mMensagem+'Falta configuração da etiqueta coluna 02';
   if (cds_config_etiquetaCE_QTDCOL.AsInteger>2) and (length(cds_config_etiquetaCE_CONFIG_ETIQ03.AsString) <1) then
      mMensagem:=mMensagem+'Falta configuração da etiqueta coluna 03';
   if (cds_config_etiquetaCE_QTDCOL.AsInteger>3) and (length(cds_config_etiquetaCE_CONFIG_ETIQ04.AsString) <1) then
      mMensagem:=mMensagem+'Falta configuração da etiqueta coluna 04';
   if (cds_config_etiquetaCE_QTDCOL.AsInteger>4) and (length(cds_config_etiquetaCE_CONFIG_ETIQ05.AsString) <1) then
      mMensagem:=mMensagem+'Falta configuração da etiqueta coluna 05';
   if mMensagem<>'' then
      begin
      MessageDlg(mMensagem,mtWarning,[mbOk],0);
      abort;
      exit;
      end;
   end;


end;

procedure TFrm_Etivol02.cds_config_etiquetaAfterDelete(DataSet: TDataSet);
begin
if cds_config_etiqueta.Tag=0 then
   fLiberaBloqueiaCampos(false);

end;



function TFrm_Etivol02.fLiberaBloqueiaCampos(pLibera: Boolean):Boolean;
begin
DBE_CE_NOME.Enabled            :=pLibera;
DBE_CE_QTDCOL.Enabled          :=pLibera;
DBMemo_CE_CONFIG_CAB.Enabled   :=plibera;
DBMemo_CE_CONFIG_ETIQ01.Enabled:=plibera;
DBMemo_CE_CONFIG_ETIQ01.Enabled:=plibera;
DBMemo_CE_CONFIG_ETIQ02.Enabled:=plibera;
DBMemo_CE_CONFIG_ETIQ03.Enabled:=plibera;
DBMemo_CE_CONFIG_ETIQ04.Enabled:=plibera;
DBMemo_CE_CONFIG_ETIQ05.Enabled:=plibera;

bbincluir.Enabled:=pLibera=false;
bbalterar.Enabled:=pLibera=false;
bbexcluir.Enabled:=pLibera=False;
bbgravar_confg.Enabled :=pLibera;
bbincluir.Enabled:=pLibera;

DBNavigator1.Enabled:=pLibera=false;
DBGrid_config.Enabled:=pLibera=false;




end;



procedure TFrm_Etivol02.cds_config_etiquetaAfterEdit(DataSet: TDataSet);
begin
if cds_config_etiqueta.Tag=0 then
   begin
   mAnt_Nome :=cds_config_etiquetaCE_NOME.AsString;
   mAnt_Local:=cds_config_etiquetaCE_LOCAL.AsString;
   fLiberaBloqueiaCampos(true);
   end;

end;

procedure TFrm_Etivol02.cds_config_etiquetaAfterInsert(DataSet: TDataSet);
begin
if cds_config_etiqueta.Tag=0 then
   begin
   mAnt_Nome :='';
   mAnt_Local:='';
   fLiberaBloqueiaCampos(true);
   end;

end;

procedure TFrm_Etivol02.cds_config_etiquetaAfterPost(DataSet: TDataSet);
var
query_gravar: TQuery;

begin
if cds_config_etiqueta.Tag=0 then
   begin
   fLiberaBloqueiaCampos(false);
   query_gravar:=TQuery.create(nil);
   query_gravar.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   if (mAnt_Nome<>'') then
      begin
      if fLerGenerico_query('CADCONFIGETIQ','CE_NOME','CE_NOME='+QuotedStr(mAnt_Nome)
                        +' and CE_LOCAL='+QuotedStr(mAnt_Local) ,query_consulta) then
         begin
         query_gravar.Close;
         query_gravar.sql.clear;
         query_gravar.SQL.Add('Delete from CADCONFIGETIQ WHERE CE_NOME=:NOME and CE_LOCAL=:LOCAL ');
         query_gravar.parambyname('NOME').AsString := mAnt_Nome;
         query_gravar.parambyname('LOCAL').AsString := mAnt_Local;
         try
            query_gravar.ExecSQL;
            fdm1StartCommit;
         except on e : exception do
            ex_erroSql_Novo(query_gravar,553,'func2 '+e.Message,'CADCONFIGETIQ');
            end;
         end;
      end;
   query_gravar.Close;
   query_gravar.sql.clear;

   if fLerGenerico_query('CADCONFIGETIQ','CE_NOME','CE_NOME='+QuotedStr( cds_config_etiquetaCE_NOME.AsString)
                        +' and CE_LOCAL='+QuotedStr(cds_config_etiquetaCE_LOCAL.AsString) ,query_consulta) then
      begin
      query_gravar.sql.Add('Update CADCONFIGETIQ set '
                          +' CE_CONFIG_CAB=:CE_CONFIG_CAB'
                          +',CE_CONFIG_ETIQ01=:CE_CONFIG_ETIQ01'
                          +',CE_CONFIG_ETIQ02=:CE_CONFIG_ETIQ02'
                          +',CE_CONFIG_ETIQ03=:CE_CONFIG_ETIQ03'
                          +',CE_CONFIG_ETIQ04=:CE_CONFIG_ETIQ04'
                          +',CE_CONFIG_ETIQ05=:CE_CONFIG_ETIQ05'
                          +',CE_QTDCOL=:CE_QTDCOL'
                          +' where CE_NOME=:NOME '
                          +' and CE_LOCAL=:LOCAL');
      query_gravar.parambyname('CE_CONFIG_CAB').AsString    := cds_config_etiquetaCE_CONFIG_CAB.AsString;
      query_gravar.parambyname('CE_CONFIG_ETIQ01').AsString := cds_config_etiquetaCE_CONFIG_ETIQ01.AsString;
      query_gravar.parambyname('CE_CONFIG_ETIQ02').AsString := cds_config_etiquetaCE_CONFIG_ETIQ02.AsString;
      query_gravar.parambyname('CE_CONFIG_ETIQ03').AsString := cds_config_etiquetaCE_CONFIG_ETIQ03.AsString;
      query_gravar.parambyname('CE_CONFIG_ETIQ04').AsString := cds_config_etiquetaCE_CONFIG_ETIQ04.AsString;
      query_gravar.parambyname('CE_CONFIG_ETIQ05').AsString := cds_config_etiquetaCE_CONFIG_ETIQ05.AsString;
      query_gravar.parambyname('CE_QTDCOL').AsInteger       := cds_config_etiquetaCE_QTDCOL.Asinteger;
      query_gravar.parambyname('NOME').AsString  := cds_config_etiquetaCE_NOME.AsString;
      query_gravar.parambyname('LOCAL').AsString := cds_config_etiquetaCE_LOCAL.AsString;
      end
   else
      begin
      query_gravar.sql.add('Insert into CADCONFIGETIQ ('
                        +' CE_LOCAL '
                        +',CE_NOME '
                        +',CE_QTDCOL '
                        +',CE_CONFIG_CAB '
                        +',CE_CONFIG_ETIQ01 '
                        +',CE_CONFIG_ETIQ02 '
                        +',CE_CONFIG_ETIQ03 '
                        +',CE_CONFIG_ETIQ04 '
                        +',CE_CONFIG_ETIQ05 '
                        +') values ('
                        +' :CE_LOCAL '
                        +',:CE_NOME '
                        +',:CE_QTDCOL '
                        +',:CE_CONFIG_CAB '
                        +',:CE_CONFIG_ETIQ01 '
                        +',:CE_CONFIG_ETIQ02 '
                        +',:CE_CONFIG_ETIQ03 '
                        +',:CE_CONFIG_ETIQ04 '
                        +',:CE_CONFIG_ETIQ05 '
                        +')');

      query_gravar.ParamByName('CE_LOCAL').AsString        :=mLocalEtiqueta;
      Query_gravar.ParamByName('CE_NOME').AsString         :=cds_config_etiquetaCE_NOME.AsString;
      Query_gravar.ParamByName('CE_QTDCOL').AsInteger      :=cds_config_etiquetaCE_QTDCOL.AsInteger;
      Query_gravar.ParamByName('CE_CONFIG_CAB').AsString   :=cds_config_etiquetaCE_CONFIG_CAB.AsString;
      Query_gravar.ParamByName('CE_CONFIG_ETIQ01').AsString:=cds_config_etiquetaCE_CONFIG_ETIQ01.AsString;
      Query_gravar.ParamByName('CE_CONFIG_ETIQ02').AsString:=cds_config_etiquetaCE_CONFIG_ETIQ02.AsString;
      Query_gravar.ParamByName('CE_CONFIG_ETIQ03').AsString:=cds_config_etiquetaCE_CONFIG_ETIQ03.AsString;
      Query_gravar.ParamByName('CE_CONFIG_ETIQ04').AsString:=cds_config_etiquetaCE_CONFIG_ETIQ04.AsString;
      Query_gravar.ParamByName('CE_CONFIG_ETIQ05').AsString:=cds_config_etiquetaCE_CONFIG_ETIQ05.AsString;
      end;

   try
      query_gravar.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      ex_erroSql_Novo(query_gravar,583,'func2 '+e.Message,'CADCONFIGETIQ');
      end;
   query_gravar.close;
   freeandnil(query_gravar);
   end;


end;



function TFrm_Etivol02.fImpressaoTermica: boolean;
var
mEtiquetas: TStrings;

x_qtdet: integer;
x_col: integer;
x_qtdcol: integer;
x_Arq: integer;
mArqSai: string;
mComando: string;


            function fOrganizarTexto(pTexto: String): String;
            var
            mRetorno: String;
            begin
            mRetorno:=ptexto;
            mRetorno:=fSubstituirtexto(mRetorno,'[EMI_NOMFAN]',mem_etiquetaEMI_NOMFAN.AsString);
            mRetorno:=fSubstituirtexto(mRetorno,'[EMI_RAZSOC]',mem_etiquetaEMI_RAZSOC.AsString);

            mRetorno:=fSubstituirtexto(mRetorno,'[PEDIDOS]',mem_etiquetaPEDIDOS.AsString);
            mRetorno:=fSubstituirtexto(mRetorno,'[DATAPED]',mem_etiquetaDATAPED.AsString);
            mRetorno:=fSubstituirtexto(mRetorno,'[NUMERO_NF]',mem_etiquetaNUMNF.AsString);


            mRetorno:=fSubstituirtexto(mRetorno,'[CODEMB]',mem_etiquetaCODEMB.AsString);

            mRetorno:=fSubstituirtexto(mRetorno,'[HORAEMB]',mem_etiquetaHOREMB.AsString);
            mRetorno:=fSubstituirtexto(mRetorno,'[NUM_VOLUME]',mem_etiquetaNUMVOL.AsString);
            mRetorno:=fSubstituirtexto(mRetorno,'[QTDTOT_VOLUME]',mem_etiquetaQTDVOL.AsString);
            mRetorno:=fSubstituirtexto(mRetorno,'[VOLUME]',mem_etiquetavolume.AsString);


            mRetorno:=fSubstituirtexto(mRetorno,'[RAZAOSOC]',mem_etiquetaRAZAOSOC.AsString);
            mRetorno:=fSubstituirtexto(mRetorno,'[CLI_CODCLI]',mem_etiquetaCODCLI.AsString);
            mRetorno:=fSubstituirtexto(mRetorno,'[FANTASIA]',mem_etiquetaFANTASIA.AsString);
            mRetorno:=fSubstituirtexto(mRetorno,'[ENDERECO]',mem_etiquetaENDER_COMPL.AsString);
            mRetorno:=fSubstituirtexto(mRetorno,'[CLI_ENDER_COMPL]',mem_etiquetaENDERECO.AsString);
            mRetorno:=fSubstituirtexto(mRetorno,'[BAIRRO]',mem_etiquetaBAIRRO.AsString);
            mRetorno:=fSubstituirtexto(mRetorno,'[FONE01]',mem_etiquetaFONE01.AsString);
            mRetorno:=fSubstituirtexto(mRetorno,'[CIDADE]',mem_etiquetaCIDADE.AsString);
            mRetorno:=fSubstituirtexto(mRetorno,'[CIDADE_UF]',mem_etiquetaCIDADE_UF.AsString);
            mRetorno:=fSubstituirtexto(mRetorno,'[UF]',mem_etiquetaUF.AsString);


            mRetorno:=fSubstituirtexto(mRetorno,'[CEP]',mem_etiquetaCLI_CEP.AsString);
            mRetorno:=fSubstituirtexto(mRetorno,'[TRA_NOMTRA]',mem_etiquetaEMI_NOMTRA.AsString);
            mRetorno:=fSubstituirtexto(mRetorno,'[TRA_FANTASIA]',mem_etiquetaTRA_FANTASIA.AsString);
            mRetorno:=fSubstituirtexto(mRetorno,'[TRA_CIDADE]',mem_etiquetaTRA_CIDADE.AsString);
            mRetorno:=fSubstituirtexto(mRetorno,'[TRA_UF]',mem_etiquetaTRA_UF.AsString);

            mRetorno:=fSubstituirtexto(mRetorno,'[MENS_LINHA01]',mem_etiquetaEMI_SLOGAN.AsString);

            mRetorno:=fSubstituirtexto(mRetorno,'[CODBAR]',mem_etiquetaCODBAR.AsString);

            mRetorno:=fSubstituirtexto(mRetorno,'[PESOLIQUIDOVOL]',mem_etiquetaPESOLIQUIDOVOL.AsString);
            mRetorno:=fSubstituirtexto(mRetorno,'[PESOBRUTOVOL]',mem_etiquetaPESOBRUTOVOL.AsString);


            mRetorno:=fSubstituirtexto(mRetorno,'[PRO_CODPRO]',mem_etiquetaPRO_CODPRO.AsString);
            mRetorno:=fSubstituirtexto(mRetorno,'[PRO_CODBAR]',mem_etiquetaPRO_CODBAR.AsString);
            mRetorno:=fSubstituirtexto(mRetorno,'[PRO_NOME]'  ,mem_etiquetaPRO_NOME.AsString);
            mRetorno:=fSubstituirtexto(mRetorno,'[PRO_UND]'   ,mem_etiquetaPRO_UND.AsString);
            mRetorno:=fSubstituirtexto(mRetorno,'[PRO_MARCA]' ,mem_etiquetaPRO_MARCA.AsString);


            result:=mRetorno;

            end;


begin

if not cds_config_etiqueta.Locate('CE_NOME',cb_modelo.Text,[]) then
   begin
   MessageDlg('Erro ao localizar a configuração da etiqueta '+cb_modelo.Text,mtError,[mbOk],0);
   exit;
   end;

x_col   :=0;
x_qtdcol:=cds_config_etiquetaCE_QTDCOL.AsInteger;


mEtiquetas:=TStringlist.create;
mEtiquetas.Add(fOrganizarTexto(cds_config_etiquetaCE_CONFIG_CAB.asstring));
mem_etiqueta.First;

mem_etiqueta.First;
While not mem_etiqueta.Eof do
   begin
   x_col:=x_col+1;

   if x_col=1 then
      mEtiquetas.Add(fOrganizarTexto(cds_config_etiquetaCE_CONFIG_ETIQ01.AsString))
   else if x_col=2 then
      mEtiquetas.Add(fOrganizarTexto(cds_config_etiquetaCE_CONFIG_ETIQ02.AsString))
   else if x_col=3 then
      mEtiquetas.Add(fOrganizarTexto(cds_config_etiquetaCE_CONFIG_ETIQ03.AsString))
   else if x_col=4 then
      mEtiquetas.Add(fOrganizarTexto(cds_config_etiquetaCE_CONFIG_ETIQ04.AsString))
   else if x_col=5 then
      mEtiquetas.Add(fOrganizarTexto(cds_config_etiquetaCE_CONFIG_ETIQ05.AsString));
   if x_col>=x_qtdcol then
      x_col:=0;
   mem_etiqueta.Next;
   end;

//Memo_texto_etiqueta.Lines.Clear;
//Memo_texto_etiqueta.Lines.Add(mEtiquetas.Text);
x_Arq:=0;
While true do
   begin
   mArqSai:=mcamtmp+'etiq'+inttostr(x_arq)+'.txt';
   if FileExists(marqsai) then
      begin
      if deletefile(mArqSai) then
         break;
      end
   else
      break;
   x_Arq:=x_Arq+1;
   end;
try
   mEtiquetas.SaveToFile(mArqSai);

   mComando:='print /D:'+fImpressoraCompartilhamento(cb_impressora.Text)+' '+mArqSai;
   fexecprog(mComando,0);
//   MessageDlg('Texto Saida: '+mArqSai,mtWarning,[mbOk],0);
   DeleteFile(mArqSai);
except
   MessageDlg('Erro ao gerar o arquivo '+mArqSai,mtError,[mbOk],0);
   end;
freeandnil(mEtiquetas);




end;



function TFrm_Etivol02.fSetarConfiguraoPadrao: Boolean;
var
query_incluir: tquery;
begin
if not fLerGenerico_query('CADCONFIGETIQ','CE_LOCAL,CE_NOME,CE_QTDCOL,CE_CONFIG_CAB,CE_CONFIG_ETIQ01,CE_CONFIG_ETIQ02,CE_CONFIG_ETIQ03,CE_CONFIG_ETIQ04,CE_CONFIG_ETIQ05',' CE_LOCAL='+QuotedStr(mLocalEtiqueta) ,query_consulta) then
   begin
   query_incluir:=tquery.create(nil);
   query_incluir.databasename:=DM1.SG_ASSOC.databasename;
   query_incluir.sql.add('Insert into CADCONFIGETIQ ('
                     +' CE_LOCAL '
                     +',CE_NOME '
                     +',CE_QTDCOL '
                     +',CE_CONFIG_CAB '
                     +',CE_CONFIG_ETIQ01 '
                     +',CE_CONFIG_ETIQ02 '
                     +',CE_CONFIG_ETIQ03 '
                     +',CE_CONFIG_ETIQ04 '
                     +',CE_CONFIG_ETIQ05 '
                     +') values ('
                     +' :CE_LOCAL '
                     +',:CE_NOME '
                     +',:CE_QTDCOL '
                     +',:CE_CONFIG_CAB '
                     +',:CE_CONFIG_ETIQ01 '
                     +',:CE_CONFIG_ETIQ02 '
                     +',:CE_CONFIG_ETIQ03 '
                     +',:CE_CONFIG_ETIQ04 '
                     +',:CE_CONFIG_ETIQ05 '
                     +')');

   Query_incluir.ParamByName('CE_LOCAL').AsString     :=mLocalEtiqueta;
   Query_incluir.ParamByName('CE_NOME').AsString      :=UpperCase(tsEtiq_volumes_88por95.Name);

   Query_incluir.ParamByName('CE_QTDCOL').AsInteger   :=1;
   Query_incluir.ParamByName('CE_CONFIG_CAB').AsString:=memo_volumes_cab_88por95.Lines.Text;
   Query_incluir.ParamByName('CE_CONFIG_ETIQ01').AsString:=memo_volumes_det_88por95.Lines.Text;
   Query_incluir.ParamByName('CE_CONFIG_ETIQ02').AsString:=' ';
   Query_incluir.ParamByName('CE_CONFIG_ETIQ03').AsString:=' ';
   Query_incluir.ParamByName('CE_CONFIG_ETIQ04').AsString:=' ';
   Query_incluir.ParamByName('CE_CONFIG_ETIQ05').AsString:=' ';
   try
      query_incluir.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      ex_erroSql_Novo(query_incluir,285,'func2 '+e.Message,'CADCONFIGETIQ');
      end;
   end;

result:=true;
end;



procedure TFrm_Etivol02.mem_etiquetaBeforeInsert(DataSet: TDataSet);
begin
IF mem_etiqueta.Tag=1 then
   begin
   mem_etiqueta.cancel;
   abort;
   end;
end;

procedure TFrm_Etivol02.edt_peso_liquidoExit(Sender: TObject);
begin
edt_peso_liquido.Text:=floattostr(valfloat(edt_peso_liquido.Text));
end;

procedure TFrm_Etivol02.edt_peso_brutoExit(Sender: TObject);
begin
edt_peso_bruto.Text:=floattostr(valfloat(edt_peso_bruto.Text));
end;

procedure TFrm_Etivol02.bbAplicarEmTodosClick(Sender: TObject);
var
mbookmarck: TBookmark;
begin
if (valfloat(edt_peso_liquido.Text)>0) and (valfloat(edt_peso_bruto.Text)>0) then
   begin
   if valfloat(edt_peso_liquido.Text)>valfloat(edt_peso_bruto.Text) then
      edt_peso_bruto.Text:=edt_peso_liquido.Text;
   end;

mbookmarck        :=mem_etiqueta.GetBookmark;
mem_etiqueta.DisableControls;
mem_etiqueta.First;
While not mem_etiqueta.Eof do
   begin
   mem_etiqueta.Edit;
   mem_etiquetaPESOLIQUIDOVOL.value:=valfloat(edt_peso_liquido.Text);
   mem_etiquetaPESOBRUTOVOL.value:=valfloat(edt_peso_bruto.Text);
   mem_etiqueta.Post;
   mem_etiqueta.Next;
   end;
mem_etiqueta.GotoBookmark(mbookmarck);
mem_etiqueta.EnableControls;

end;

procedure TFrm_Etivol02.QTDVOLEnter(Sender: TObject);
begin
mant_qtdvol:=valint(QTDVOL.text);

end;

procedure TFrm_Etivol02.PESOBEnter(Sender: TObject);
begin
mant_pesob:=valfloat(pesob.Text);

end;

procedure TFrm_Etivol02.PESOLEnter(Sender: TObject);
begin
mant_pesol:=ValFloat(PESOL.Text);
end;

procedure TFrm_Etivol02.cb_criteritoClick(Sender: TObject);
begin




fDeletaPadroes(-2,'_ETIVOL02_ET','');
fGravaPadroes(-2,'CB_CRITERITO','Text' ,'_ETIVOL02_ET',CB_CRITERITO.TEXT);


if mAnt_criterito<>cb_criterito.itemindex then
   begin
   fCriarEtiquetas;;
   mAnt_criterito:=cb_criterito.itemindex;
   end;


end;

procedure TFrm_Etivol02.cb_criteritoEnter(Sender: TObject);
begin
   mAnt_criterito:=cb_criterito.itemindex;

end;

end.
