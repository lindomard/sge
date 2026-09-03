unit S_ProCodBar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,S_DM1,db,dbtables,func,lerarq, ExtCtrls, Buttons,
  Gauges, Grids, ComCtrls, RLReport, RLBarcode, RLFilters, RLDraftFilter,
  Mask, AlinharEdit, jpeg,s_lerarq_geral,printers;

type
  TFrm_ProCodBar = class(TForm)
    Qr_Etiqueta: TQuery;
    Qr_EtiquetaCODBAR: TStringField;
    Qr_EtiquetaNOME: TStringField;
    Qr_EtiquetaMARCA: TStringField;
    Qr_EtiquetaNOMFAN: TStringField;
    Qr_EtiquetaOBS: TStringField;
    PageControl1: TPageControl;
    tsRelatorio: TTabSheet;
    RLReport1: TRLReport;
    RLDetail_Etiqueta: TRLDetailGrid;
    RLDB_linha03: TRLDBText;
    RLDB_linha04_codpro: TRLDBText;
    rldb_empresa: TRLDBText;
    tsConfigT01: TTabSheet;
    Label2: TLabel;
    tsdig: TTabSheet;
    STG1: TStringGrid;
    Panel1: TPanel;
    st_codpro: TStaticText;
    st_grade: TStaticText;
    st_dtvcto: TStaticText;
    st_quantidade: TStaticText;
    st_nompro: TStaticText;
    st_outinf: TStaticText;
    st_und: TStaticText;
    ST_CODBAR: TStaticText;
    Panel2: TPanel;
    bbItens_Alterar: TBitBtn;
    bbItens_excluir: TBitBtn;
    bbItens_Cancelar: TBitBtn;
    ETI_CODPRO: TEdit;
    ETI_GRADE: TEdit;
    ETI_DTVCTO: TMaskEdit;
    ETI_QTD: TEdit;
    ETI_NOMPRO: TEdit;
    ETI_UND: TEdit;
    ETI_CODBAR: TEdit;
    Qr_EtiquetaLOTE: TStringField;
    Qr_EtiquetaDTVCTO: TDateTimeField;
    Qr_EtiquetaSECAO: TStringField;
    Qr_EtiquetaEMBPAD: TFloatField;
    Qr_EtiquetaCODPRO: TFloatField;
    tsConfigT02: TTabSheet;
    StaticText1: TStaticText;
    StaticText3: TStaticText;
    QP01: TEdit;
    StaticText4: TStaticText;
    QP02: TEdit;
    panel_modelo: TPanel;
    BORDAEXT: TShape;
    lbl_codpro: TLabel;
    lbl_lote: TLabel;
    lbl_dtvcto: TLabel;
    lbl_secao: TLabel;
    lbl_qtd: TLabel;
    edt_codpro: TLabel;
    edt_lote: TLabel;
    edt_dtvcto: TLabel;
    edt_secao: TLabel;
    edt_qtd: TLabel;
    LPOS_CODPRO: TShape;
    LPOS_LOTE: TShape;
    LPOS_DTVCTO: TShape;
    LPOS_SECAO: TShape;
    LPOS_CABPRO: TShape;
    lbl_descr: TLabel;
    edt_descr: TLabel;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    LBLCODPRO_COMA_P1: TEdit;
    StaticText9: TStaticText;
    CB_IMP_LBLCODPRO: TCheckBox;
    StaticText10: TStaticText;
    CB_LBLCODPRO_INVERSO_COMA_P7: TCheckBox;
    StaticText11: TStaticText;
    LBLCODPRO_COMA_P2: TEdit;
    StaticText12: TStaticText;
    LBLCODPRO_COMA_P3: TEdit;
    StaticText13: TStaticText;
    LBLCODPRO_COMA_P4: TEdit;
    StaticText14: TStaticText;
    LBLCODPRO_COMA_P5: TEdit;
    StaticText15: TStaticText;
    LBLCODPRO_COMA_P6: TEdit;
    StaticText8: TStaticText;
    LBLCODPRO: TEdit;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    StaticText20: TStaticText;
    StaticText21: TStaticText;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    StaticText24: TStaticText;
    EDTCODPRO: TEdit;
    CB_IMP_EDTCODPRO: TCheckBox;
    CB_EDTCODPRO_INVERSO_COMA_P7: TCheckBox;
    EDTCODPRO_COMA_P1: TEdit;
    EDTCODPRO_COMA_P2: TEdit;
    EDTCODPRO_COMA_P3: TEdit;
    EDTCODPRO_COMA_P4: TEdit;
    EDTCODPRO_COMA_P5: TEdit;
    EDTCODPRO_COMA_P6: TEdit;
    StaticText26: TStaticText;
    StaticText29: TStaticText;
    CB_IMPBORDAEXT: TCheckBox;
    StaticText30: TStaticText;
    LBXBORDAEXT_COM_XP1: TEdit;
    StaticText31: TStaticText;
    LBXBORDAEXT_COM_XP2: TEdit;
    StaticText32: TStaticText;
    LBXBORDAEXT_COM_XP3: TEdit;
    StaticText33: TStaticText;
    LBXBORDAEXT_COM_XP4: TEdit;
    StaticText34: TStaticText;
    LBXBORDAEXT_COM_XP5: TEdit;
    StaticText35: TStaticText;
    CB_IMP_LPOSCODPRO: TCheckBox;
    StaticText36: TStaticText;
    LBXLPOSCODPRO_COM_LOP1: TEdit;
    StaticText37: TStaticText;
    LBXLPOSCODPRO_COM_LOP2: TEdit;
    StaticText38: TStaticText;
    LBXLPOSCODPRO_COM_LOP3: TEdit;
    StaticText39: TStaticText;
    LBXLPOSCODPRO_COM_LOP4: TEdit;
    EDTCODPRO_TAMANHO: TEdit;
    StaticText40: TStaticText;
    StaticText41: TStaticText;
    CB_IMP_LPOSLOTE: TCheckBox;
    LBXLPOSLOTE_COM_LOP1: TEdit;
    LBXLPOSLOTE_COM_LOP2: TEdit;
    LBXLPOSLOTE_COM_LOP3: TEdit;
    LBXLPOSLOTE_COM_LOP4: TEdit;
    StaticText42: TStaticText;
    CB_IMP_LPOSDTVCTO: TCheckBox;
    LBXLPOSDTVCTO_COM_LOP1: TEdit;
    LBXLPOSDTVCTO_COM_LOP2: TEdit;
    LBXLPOSDTVCTO_COM_LOP3: TEdit;
    LBXLPOSDTVCTO_COM_LOP4: TEdit;
    StaticText43: TStaticText;
    CB_IMP_LPOSSECAO: TCheckBox;
    LBXLPOSSECAO_COM_LOP1: TEdit;
    LBXLPOSSECAO_COM_LOP2: TEdit;
    LBXLPOSSECAO_COM_LOP3: TEdit;
    LBXLPOSSECAO_COM_LOP4: TEdit;
    StaticText44: TStaticText;
    CB_IMP_LPOSCABPRO: TCheckBox;
    LBXLPOSCABPRO_COMLO_P1: TEdit;
    LBXLPOSCABPRO_COMLO_P2: TEdit;
    LBXLPOSCABPRO_COMLO_P3: TEdit;
    LBXLPOSCABPRO_COMLO_P4: TEdit;
    StaticText45: TStaticText;
    StaticText46: TStaticText;
    StaticText47: TStaticText;
    lbllote: TEdit;
    CB_IMP_LBLLOTE: TCheckBox;
    CB_LBLLOTE_INVERSO_COMA_P7: TCheckBox;
    LBLLOTE_COMA_P1: TEdit;
    LBLLOTE_COMA_P2: TEdit;
    LBLLOTE_COMA_P3: TEdit;
    LBLLOTE_COMA_P4: TEdit;
    LBLLOTE_COMA_P5: TEdit;
    LBLLOTE_COMA_P6: TEdit;
    EDTLOTE: TEdit;
    CB_IMP_EDTLOTE: TCheckBox;
    CB_EDTLOTE_INVERSO_COMA_P7: TCheckBox;
    EDTLOTE_COMA_P1: TEdit;
    EDTLOTE_COMA_P2: TEdit;
    EDTLOTE_COMA_P3: TEdit;
    EDTLOTE_COMA_P4: TEdit;
    EDTLOTE_COMA_P5: TEdit;
    EDTLOTE_COMA_P6: TEdit;
    EDTLOTE_TAMANHO: TEdit;
    StaticText48: TStaticText;
    lbldtvcto: TEdit;
    CB_IMP_LBLDTVCTO: TCheckBox;
    CB_LBLDTVCTO_INVERSO_COMA_P7: TCheckBox;
    LBLDTVCTO_COMA_P1: TEdit;
    LBLDTVCTO_COMA_P2: TEdit;
    LBLDTVCTO_COMA_P3: TEdit;
    LBLDTVCTO_COMA_P4: TEdit;
    LBLDTVCTO_COMA_P5: TEdit;
    LBLDTVCTO_COMA_P6: TEdit;
    EDTDTVCTO: TEdit;
    CB_IMP_EDTDTVCTO: TCheckBox;
    CB_EDTDTVCTO_INVERSO_COMA_P7: TCheckBox;
    EDTDTVCTO_COMA_P1: TEdit;
    EDTDTVCTO_COMA_P2: TEdit;
    EDTDTVCTO_COMA_P3: TEdit;
    EDTDTVCTO_COMA_P4: TEdit;
    EDTDTVCTO_COMA_P5: TEdit;
    EDTDTVCTO_COMA_P6: TEdit;
    EDTDTVCTO_TAMANHO: TEdit;
    StaticText49: TStaticText;
    lblsecao: TEdit;
    CB_IMP_LBLSECAO: TCheckBox;
    CB_LBLSECAO_INVERSO_COMA_P7: TCheckBox;
    LBLSECAO_COMA_P1: TEdit;
    LBLSECAO_COMA_P2: TEdit;
    LBLSECAO_COMA_P3: TEdit;
    LBLSECAO_COMA_P4: TEdit;
    LBLSECAO_COMA_P5: TEdit;
    LBLSECAO_COMA_P6: TEdit;
    EDTSECAO: TEdit;
    CB_IMP_EDTSECAO: TCheckBox;
    CB_EDTSECAO_INVERSO_COMA_P7: TCheckBox;
    EDTSECAO_COMA_P1: TEdit;
    EDTSECAO_COMA_P2: TEdit;
    EDTSECAO_COMA_P3: TEdit;
    EDTSECAO_COMA_P4: TEdit;
    EDTSECAO_COMA_P5: TEdit;
    EDTSECAO_COMA_P6: TEdit;
    EDTSECAO_TAMANHO: TEdit;
    StaticText50: TStaticText;
    lblqtd: TEdit;
    CB_IMP_LBLQTD: TCheckBox;
    CB_LBLQTD_INVERSO_COMA_P7: TCheckBox;
    LBLQTD_COMA_P1: TEdit;
    LBLQTD_COMA_P2: TEdit;
    LBLQTD_COMA_P3: TEdit;
    LBLQTD_COMA_P4: TEdit;
    LBLQTD_COMA_P5: TEdit;
    LBLQTD_COMA_P6: TEdit;
    EDTQTD: TEdit;
    CB_IMP_EDTQTD: TCheckBox;
    CB_EDTQTD_INVERSO_COMA_P7: TCheckBox;
    EDTQTD_COMA_P1: TEdit;
    EDTQTD_COMA_P2: TEdit;
    EDTQTD_COMA_P3: TEdit;
    EDTQTD_COMA_P4: TEdit;
    EDTQTD_COMA_P5: TEdit;
    EDTQTD_COMA_P6: TEdit;
    EDTQTD_TAMANHO: TEdit;
    StaticText51: TStaticText;
    lbldescr: TEdit;
    CB_IMP_LBLDESCR: TCheckBox;
    CB_LBLDESCR_INVERSO_COMA_P7: TCheckBox;
    LBLDESCR_COMA_P1: TEdit;
    LBLDESCR_COMA_P2: TEdit;
    LBLDESCR_COMA_P3: TEdit;
    LBLDESCR_COMA_P4: TEdit;
    LBLDESCR_COMA_P5: TEdit;
    LBLDESCR_COMA_P6: TEdit;
    EDTDESCR: TEdit;
    CB_IMP_EDTDESCR: TCheckBox;
    CB_EDTDESCR_INVERSO_COMA_P7: TCheckBox;
    EDTDESCR_COMA_P1: TEdit;
    EDTDESCR_COMA_P2: TEdit;
    EDTDESCR_COMA_P3: TEdit;
    EDTDESCR_COMA_P4: TEdit;
    EDTDESCR_COMA_P5: TEdit;
    EDTDESCR_COMA_P6: TEdit;
    EDTDESCR_TAMANHO: TEdit;
    StaticText2: TStaticText;
    StaticText25: TStaticText;
    SpeedButton1: TSpeedButton;
    sbRestPadrao: TSpeedButton;
    StaticText27: TStaticText;
    lblcodbar: TEdit;
    CB_IMP_LBLCODBAR: TCheckBox;
    CB_LBLCODBAR_INVERSO_COMA_P7: TCheckBox;
    LBLCODBAR_COMA_P1: TEdit;
    LBLCODBAR_COMA_P2: TEdit;
    LBLCODBAR_COMA_P3: TEdit;
    LBLCODBAR_COMA_P4: TEdit;
    LBLCODBAR_COMA_P5: TEdit;
    LBLCODBAR_COMA_P6: TEdit;
    EDTCODBAR: TEdit;
    CB_IMP_EDTCODBAR: TCheckBox;
    CB_EDTCODBAR_INVERSO_COMA_P7: TCheckBox;
    EDTCODBAR_COMA_P1: TEdit;
    EDTCODBAR_COMA_P2: TEdit;
    EDTCODBAR_COMA_P3: TEdit;
    EDTCODBAR_COMA_P4: TEdit;
    EDTCODBAR_COMA_P5: TEdit;
    EDTCODBAR_COMA_P6: TEdit;
    EDTCODBAR_TAMANHO: TEdit;
    StaticText28: TStaticText;
    CB_IMP_LPOSCODBAR: TCheckBox;
    LBXLPOSCODBAR_COMLO_P1: TEdit;
    LBXLPOSCODBAR_COMLO_P2: TEdit;
    LBXLPOSCODBAR_COMLO_P3: TEdit;
    LBXLPOSCODBAR_COMLO_P4: TEdit;
    matricial: TRLDraftFilter;
    Src_Etiqueta: TDataSource;
    gb_configuracao: TGroupBox;
    Label11: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    sbSalvarPadrao: TSpeedButton;
    sbRestaurar: TSpeedButton;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    edt_qtdcol: TEdit;
    edt_espacoCol: TEdit;
    edt_altEtiq: TEdit;
    edt_altcxtexto: TEdit;
    edt_tamfonte: TEdit;
    edt_margemtop: TEdit;
    edt_margemrodape: TEdit;
    edt_margemDireita: TEdit;
    edt_margemEsquerda: TEdit;
    edt_Altura_rel: TEdit;
    edt_Largura_Rel: TEdit;
    CB_CODBAR: TCheckBox;
    Label6: TLabel;
    edt_QTDCOLIMP: TEdit;
    Panel3: TPanel;
    lbl_porta: TLabel;
    lbl_apartir: TLabel;
    Label1: TLabel;
    Label12: TLabel;
    CB_Porta: TComboBox;
    gb_progress: TGroupBox;
    Gauge1: TGauge;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    APARTIR: TEdit;
    QTDETI: TEdit;
    CB_VERTICAL: TCheckBox;
    CB_TipoPro: TCheckBox;
    CB_TPIMP: TComboBox;
    RG_ALINHAR: TRadioGroup;
    rldb_codbar: TRLDBBarcode;
    cb_comlogo: TCheckBox;
    RLReport2: TRLReport;
    RLDetailGrid1: TRLDetailGrid;
    rl_codpro: TRLDBText;
    rl_nome: TRLDBText;
    rl_preco: TRLDBText;
    rldb_codbar2: TRLDBBarcode;
    Qr_EtiquetaPRECO: TFloatField;
    Qr_EtiquetaNewPreco: TStringField;
    RLImage1: TRLImage;
    cb_codpro: TCheckBox;
    cb_preco: TCheckBox;
    RLDB_linha02: TRLDBText;
    rldb_cnpj: TRLDBText;
    Qr_EtiquetaCGC: TStringField;
    Qr_EtiquetaENDERECO: TStringField;
    RLDBMemo1: TRLDBMemo;
    RG_NOMEMP: TRadioGroup;
    CB_IMPOUTINF: TCheckBox;
    RLDBT_INFADICIONAL: TRLDBText;
    ETI_OUTINF: TEdit;
    RLDB_linha01: TRLDBText;
    procedure bbSairClick(Sender: TObject);
    procedure QTDETIExit(Sender: TObject);
    procedure CB_PortaExit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure APARTIRExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure STG1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure STG1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ETI_CODPROKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ETI_CODPROExit(Sender: TObject);
    procedure ETI_GRADEExit(Sender: TObject);
    procedure ETI_DTVCTOExit(Sender: TObject);
    procedure ETI_CODBARExit(Sender: TObject);
    procedure bbItens_CancelarClick(Sender: TObject);
    procedure bbItens_AlterarClick(Sender: TObject);
    procedure bbItens_excluirClick(Sender: TObject);
    procedure STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure ETI_CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CB_TPIMPExit(Sender: TObject);
    procedure QP01Exit(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbRestPadraoClick(Sender: TObject);
    procedure ETI_GRADEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbSalvarPadraoClick(Sender: TObject);
    procedure sbRestaurarClick(Sender: TObject);
    procedure edt_qtdcolChange(Sender: TObject);
    procedure edt_qtdcolExit(Sender: TObject);
    procedure edt_altEtiqExit(Sender: TObject);
    procedure edt_altcxtextoExit(Sender: TObject);
    procedure edt_margemtopExit(Sender: TObject);
    procedure edt_margemDireitaExit(Sender: TObject);
    procedure edt_Altura_relExit(Sender: TObject);
    procedure edt_QTDCOLIMPExit(Sender: TObject);
    procedure edt_espacoColExit(Sender: TObject);
    procedure edt_tamfonteExit(Sender: TObject);
    procedure edt_margemrodapeExit(Sender: TObject);
    procedure edt_margemEsquerdaExit(Sender: TObject);
    procedure edt_Largura_RelExit(Sender: TObject);
    procedure CB_CODBARClick(Sender: TObject);
    procedure RG_ALINHARClick(Sender: TObject);
    procedure ETI_CODPROEnter(Sender: TObject);
    procedure ETI_GRADEEnter(Sender: TObject);
    procedure ETI_DTVCTOEnter(Sender: TObject);
    procedure ETI_QTDEnter(Sender: TObject);
    procedure ETI_OUTINFEnter(Sender: TObject);
    procedure ETI_CODBAREnter(Sender: TObject);
    procedure Qr_EtiquetaCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cb_comlogoClick(Sender: TObject);
    procedure RLReport2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure ETI_NOMPROEnter(Sender: TObject);
  private
    { Private declarations }
    function fProCodBarContaEti(pTipo: Integer): Boolean;
    function fEmiEtiqueta(pTipo: Integer): Boolean;
    function fEmiEtiquetaTermica(pTipo: Integer): Boolean;
    function fAtualizarDemo(pTipo: Integer): Boolean;
    function fAtualizarPadraoCfgTermica(ptipo: Integer): Boolean;



  public
    { Public declarations }
    mProCodBar_Origem: Integer;


    function fAtualizarFormulario(ptipo: Integer): Boolean;
    function fAtivarConfiguracoes: Boolean;


  end;
function fAjustaTamanhoFonte(pComando: String): boolean;

var
  Frm_ProCodBar: TFrm_ProCodBar;
  mapartir, mqtdr, mqtd: Integer;
  colclick, rowclick: Integer;
  mqtdeti: Integer;
  mlado: Integer;
  mlid: Integer;
  mcodbar: string;
  fEtiq: TextFile;
  mNomPro01,mNomPro02,mNomPro03,mNomPro04,mNomPro05: String;
  mtamlin, mposini: Integer;
  mCodPro: String;
  mcol_codpro: Integer=0;
  mcol_grade:  Integer=1;
  mcol_qtd:    Integer=2;
  mcol_nome:   Integer=3;
  mcol_outinf:  Integer=4;
  mcol_und:     Integer=5;
  mcol_codbar:  Integer=6;
  mcol_dtvcto:  Integer=7;
  mProCodBarOper_item: Integer=0;
  mProCodBarNumItem: Integer=0;
  mProCodBarColAlter: Integer=0;
  maltura_grid: Integer=15;
  mtam_nor,mtam_mult: Integer;

implementation

uses SR_ProCodBar, func_excecoes, Types, S_DM4, S_ConsLot;

{$R *.dfm}

procedure TFrm_ProCodBar.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ProCodBar.QTDETIExit(Sender: TObject);
begin
QTDETI.Text:=fdeixanum(QTDETI.Text);
end;

procedure TFrm_ProCodBar.CB_PortaExit(Sender: TObject);
begin
//CB_Porta.text:=CB_Porta.Items.Strings[CB_Porta.ItemIndex];
//LINDOMAR
//with CB_TIPO2 do ItemIndex:=Items.IndexOf(CB_TIPO.Text);
end;

procedure TFrm_ProCodBar.bbImprimirClick(Sender: TObject);
var
mqtditem: Real;
x,y: Integer;
mtabtemp: String;
begin
// RG_NOMEMP.ItemIndex>0 then
  rldb_empresa.Visible:=true;
//else
//  rldb_empresa.Visible:=False;
  
if cb_comlogo.Checked=True then
  begin
  DM4.Tb_LogoSis.Close;
  DM4.Tb_LogoSis.SQL.Clear;
  DM4.Tb_LogoSis.SQL.Add(' select * from CADLOGSIS ');
  DM4.Tb_LogoSis.SQL.Add(' where  LSCHAVE='+chr(39)+'LOGO_ETIQUETA'+chr(39));
  DM4.Tb_LogoSis.SQL.Add(iif(DM1.Qr_Tid.Locate('TINOME','CADLOGSIS',[]),'',' and LSCODEMP=0'+Inttostr(codemp)));
  DM4.Tb_LogoSis.Open;
  if not DM4.Tb_LogoSis.IsEmpty then
    DM4.Tb_LogoSisLSLOGO.SaveToFile('C:\SGE\LOGO_ETIQUETA.JPG');
  end;
mqtdeti:=ValInt(QTDETI.Text);
if mqtdeti<=0 then
   begin
   FMensagem('Quantidade tem que ser preenchida com um valor inteiro positivo!',0,['0'],0);
   STG1.SetFocus;
   exit;
   end;
if (CB_TPIMP.ItemIndex=1) and (trim(CB_Porta.Text)='') then
   begin
   FMensagem('Tem que ser definido uma porta de saída para impressão!',0,['0'],0);
   CB_TPIMP.SetFocus;
   exit;
   end;
if trim(STG1.Cells[mcol_codpro,0])='' then
   begin
   FMensagem('Não ha etiqueta definida para impressão!',0,['0'],0);
   STG1.SetFocus;
   exit;
   end;
if (CB_TPIMP.ItemIndex=0) or (mProCodBar_Origem=1) then
   begin
   mtabTemp :=fProcTemp(01);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.sql.Add('Create Table '+mtabTemp+' (');;
   mcinst:='';
   if pbanco=0 then
      DM1.Query1.SQL.add('CTCODPRO NUMBER(14),CTNOME VARCHAR(60), CTCODBAR VARCHAR2(20), CTQTD NUMBER(10), CTOBS VARCHAR2(254)'
                        +' , CTLOTE VARCHAR2(40), CTDTVCTO DATE )')
   else
      DM1.Query1.SQL.add('CTCODPRO DOUBLE PRECISION, CTNOME NVARCHAR(60), CTCODBAR NVARCHAR(20), CTQTD DOUBLE PRECISION, CTOBS NVARCHAR(254)  )');
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,194,'Frm_ProCodBar',mtabTemp);
      end;
   for y:=0 to STG1.RowCount do
      begin
      if Trim(STG1.Cells[mcol_codpro,y])='' then
         Continue;
      mqtditem:=ValInt(STG1.Cells[mcol_qtd,y]);
      for x:=1 to round(mqtditem) do
         begin
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;

         if Log_TipoLote=2 then
            begin
            DM1.Query1.Params.CreateParam(ftString,'LOTE',ptInput);
            DM1.Query1.Params.CreateParam(ftString,'DTVCTO',ptInput);
            DM1.Query1.SQL.add('insert into '+mtabtemp+' (CTCODPRO,CTNOME,CTCODBAR,CTQTD,CTOBS,CTLOTE,CTDTVCTO) values ('
                           +Trim(stg1.Cells[mcol_codpro,Y])+','
                           +chr(39)+Trim(stg1.Cells[mcol_nome,Y])+chr(39)+','
                           +chr(39)+Trim(stg1.Cells[mcol_codbar,Y])+chr(39)
                           +','
                           +IntToStr(x)
                           +','+chr(39)+Trim(stg1.Cells[mcol_outinf,Y])+chr(39)
                           +',:LOTE '
                           +',:DTVCTO '
                           +')');
            if (trim(stg1.cells[mcol_dtvcto,y])='/  /') or
               (trim(stg1.cells[mcol_dtvcto,y])='') then
               DM1.Query1.ParamByName('DTVCTO').asdatetime:=pdatanula
            else
               DM1.Query1.ParamByName('DTVCTO').asdatetime:=StrtoDate(stg1.cells[mcol_dtvcto,y]);
            DM1.Query1.ParamByName('LOTE').asString       :=stg1.cells[mcol_grade,y];

            end
         else
            begin
            DM1.Query1.Params.CreateParam(ftString,'LOTE',ptInput);
            DM1.Query1.Params.CreateParam(ftString,'DTVCTO',ptInput);

            DM1.Query1.SQL.add('insert into '+mtabtemp+' (CTCODPRO,CTNOME,CTCODBAR,CTQTD,CTOBS,CTLOTE,CTDTVCTO) values ('
                           +Trim(stg1.Cells[mcol_codpro,Y])+','
                           +chr(39)+Trim(stg1.Cells[mcol_nome,Y])+chr(39)+','
                           +chr(39)+stg1.Cells[mcol_codbar,y]+chr(39)+','
                           +IntToStr(x)
                           +','+chr(39)+Trim(stg1.Cells[mcol_outinf,Y])+chr(39)
                           +',:LOTE '
                           +',:DTVCTO '

                           +')');
            if (trim(stg1.cells[mcol_dtvcto,y])='/  /') or
               (trim(stg1.cells[mcol_dtvcto,y])='') then
               DM1.Query1.ParamByName('DTVCTO').asdatetime:=pdatanula
            else
               DM1.Query1.ParamByName('DTVCTO').asdatetime:=StrtoDate(stg1.cells[mcol_dtvcto,y]);
            DM1.Query1.ParamByName('LOTE').asString       :=stg1.cells[mcol_grade,y];

            end;

         Try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql(01,204,'Frm_ProCodBar',mtabTemp);
            end;
         end;
      end;
   mcinst:=' where ';
   Qr_Etiqueta.close;
   Qr_Etiqueta.Sql.Clear;
   Qr_Etiqueta.SQL.Add('Select CTCODBAR as CODBAR, '
                 +'CTOBS as OBS, '
                 +'CTNOME as NOME, '
                 +'PDMARCA as MARCA, '
                 +' PDSECAO as SECAO, '
                 +' PDEMBPAD AS EMBPAD, ');
   if RG_NOMEMP.ItemIndex = 1 then
    Qr_Etiqueta.SQL.Add(chr(39)+DM1.Tb_EmpFANTASIA.Text+chr(39)+' as NOMFAN, ')
   else
    Qr_Etiqueta.SQL.Add(chr(39)+DM1.Tb_EmpRAZAO.Text+chr(39)+' as NOMFAN, ');
    Qr_Etiqueta.SQL.Add(chr(39)+DM1.Tb_Empender.AsString+chr(39)+' AS ENDERECO, '
                 +chr(39)+MaskCPFCNPJ(dm1.Tb_EmpCGC.AsString)+chr(39)+' as CGC, '
                 +'CTLOTE   AS LOTE,'
                 +'CTDTVCTO AS DTVCTO,'
                 +'PDCODPRO AS CODPRO,'
                 +'PDPRECO1 AS PRECO'
                 +' from CADPRO,'+mtabtemp
                 +' where PDCODPRO=CTCODPRO '
                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'','and  PDCODEMP=0'+Inttostr(codemp)));
   try
      Qr_Etiqueta.Open;

   except
      Qr_Etiqueta.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      end;
   if Qr_Etiqueta.Eof then
      begin
      FMensagem('Nada ha ser impresso!',0,['0'],0);
      exit;
      end;
   RLDB_linha02.Visible:=cb_preco.Checked;
//   rl_preco.Visible:=cb_preco.Checked;
   rl_preco.Visible:=false;

//   if CB_TPIMP.ItemIndex=1 then
   if mProCodBar_Origem=1 then
      fEmiEtiquetaTermica(0)
   else
      begin
      mqtdr:=Qr_Etiqueta.RecordCount;
      mqtd:=0;
      mapartir:=ValInt(APARTIR.Text);
      verteclado(0);
      matricial.FormSelection:=fs132Cols;
      if cb_comlogo.Checked=false then
        RLReport1.PreviewModal
      else
        RLReport2.PreviewModal;
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('drop table '+mtabTemp);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,249,'Frm_ProCodBar',mtabTemp);
      end;
   end
else
   begin
   gb_progress.Visible:=True;
   mlid:=0;
//   AssignFile(fEtiq,'C:\ETIQUETA.TXT');
   AssignFile(fEtiq,CB_Porta.Text);
   Rewrite (fEtiq);
   mlado:=0;
   if CB_VERTICAL.Checked then
      mtamlin:=25
   else
      mtamlin:=16;
   mposini:=1;
   for y:=0 to STG1.RowCount do
      begin
      if STG1.Cells[mcol_codpro,y]='' then
         Continue;
      mqtditem:=valfloat(STG1.Cells[mcol_qtd,y]);
      mposini:=1;
      mNomPro01:=copy(STG1.Cells[mcol_nome,y],mposini,mtamlin);
      mposini:=mposini+mtamlin;
      mNomPro02:=copy(STG1.Cells[mcol_nome,y],mposini,mtamlin);
      mposini:=mposini+mtamlin;
      if not CB_VERTICAL.Checked then
         begin
         mNomPro03:=copy(STG1.Cells[mcol_nome,y],mposini,mtamlin);
         mposini:=mposini+mtamlin;
         end;
      if trim(STG1.cells[mcol_outinf,y])='' then
         begin
         mNomPro04:=copy(STG1.Cells[mcol_nome,y],mposini,mtamlin);
         mposini:=mposini+mtamlin;
         mNomPro05:=copy(STG1.Cells[mcol_nome,y],mposini,mtamlin);
         end
      else
         begin
         mposini:=1;
         if CB_VERTICAL.Checked then
            begin
            mNomPro03:=copy(STG1.Cells[mcol_outinf,y],mposini,mtamlin);
            mposini:=mposini+mtamlin;
            end;
         mNomPro04:=copy(STG1.Cells[mcol_outinf,y],mposini,mtamlin);
         mposini:=mposini+mtamlin;
         mNomPro05:=copy(STG1.Cells[mcol_outinf,y],mposini,mtamlin);
         end;
      mcodbar  :=STG1.Cells[mcol_codpro,y]+Trim(STG1.Cells[1,y]);
      for x:=1 to round(mqtditem) do
         begin
         mlid:=mlid+1;
         Gauge1.Progress:=mlid*100 div mqtdeti;
         fEmiEtiqueta(iif(CB_VERTICAL.Checked,1,0));
         end;
      end;
   if mlado<>3 then
      WriteLn(FEtiq,'P1');
   CloseFile(fEtiq);
   gb_progress.Visible:=false;
   end;
{
      x:=x+1;
      Writeln(fetiq,'B25,25,0,3,1,3,80,B,"'+mcodbar+'"');
      Writeln(fetiq,'A25,145,0,2,1,1,N,"'+MnomPro01+'"');
      Writeln(fetiq,'A25,170,0,2,1,1,N,"'+MnomPro02+'"');
      Writeln(fetiq,'A25,195,0,2,1,1,N,"'+MnomPro03+'"');
      Writeln(fetiq,'A25,220,0,2,1,1,N,"'+MnomPro04+'"');
      Writeln(fetiq,'A25,245,0,2,1,1,N,"'+MnomPro05+'"');
      Writeln(fetiq,'A20,275,0,4,1,1,R,"'+Centra(DM1.Tb_EmpFANTASIA.Value,' ',13)+'"');
      x:=x+1;


      Writeln(fetiq,'B290,25,0,3,1,3,80,B,"'+mcodbar+'"');
      Writeln(fetiq,'A290,145,0,2,1,1,N,"'+MnomPro01+'"');
      Writeln(fetiq,'A290,170,0,2,1,1,N,"'+MnomPro02+'"');
      Writeln(fetiq,'A290,195,0,2,1,1,N,"'+MnomPro03+'"');
      Writeln(fetiq,'A290,220,0,2,1,1,N,"'+MnomPro04+'"');
      Writeln(fetiq,'A290,245,0,2,1,1,N,"'+MnomPro05+'"');
      Writeln(fetiq,'A285,275,0,4,1,1,R,"'+Centra(DM1.Tb_EmpFANTASIA.Value,' ',13)+'"');

      x:=x+1;

      Writeln(fetiq,'B555,25,0,3,1,3,80,B,"'+mcodbar+'"');
      Writeln(fetiq,'A555,145,0,2,1,1,N,"'+MnomPro01+'"');
      Writeln(fetiq,'A555,170,0,2,1,1,N,"'+MnomPro02+'"');
      Writeln(fetiq,'A555,195,0,2,1,1,N,"'+MnomPro03+'"');
      Writeln(fetiq,'A555,220,0,2,1,1,N,"'+MnomPro04+'"');
      Writeln(fetiq,'A555,245,0,2,1,1,N,"'+MnomPro05+'"');
      Writeln(fetiq,'A550,275,0,4,1,1,R,"'+Centra(DM1.Tb_EmpFANTASIA.Value,' ',13)+'"');



      x:=x+1;

      WRITELN (fEtiq,'N');
      WRITELN (fEtiq,'B10,10,0,3,3,7,200,B,"'+mcodbar+'"');
      WRITELN (fEtiq,'A10,10,0,3,3,7,200,N,"'+mcodbar+'"');
      WRITELN (fEtiq,'A10,10,0,3,3,7,200,N,"'+NOMPRO.Text+'"');
      WRITELN (fEtiq,'A50,300,0,8,2,2,N,"'+Trim(DM1.Tb_EmpFANTASIA.Value)+'"');


      WRITELN (fEtiq,'B10,10,0,3,3,7,200,B,"'+mcodbar+'"');
      WRITELN (fEtiq,'A10,10,0,3,3,7,200,N,"'+mcodbar+'"');
      WRITELN (fEtiq,'A10,10,0,3,3,7,200,N,"'+NOMPRO.Text+'"');
      WRITELN (fEtiq,'A50,300,0,8,2,2,N,"'+Trim(DM1.Tb_EmpFANTASIA.Value)+'"');

      WRITELN (fEtiq,'B10,10,0,3,3,7,200,B,"'+mcodbar+'"');
      WRITELN (fEtiq,'A10,10,0,3,3,7,200,N,"'+mcodbar+'"');
      WRITELN (fEtiq,'A10,10,0,3,3,7,200,N,"'+NOMPRO.Text+'"');
      WRITELN (fEtiq,'A50,300,0,8,2,2,N,"'+Trim(DM1.Tb_EmpFANTASIA.Value)+'"');

      end;
   CloseFile(fEtiq);
   end;
}
end;

procedure TFrm_ProCodBar.APARTIRExit(Sender: TObject);
begin
APARTIR.Text:=fdeixanum(APARTIR.Text);

end;

procedure TFrm_ProCodBar.FormCreate(Sender: TObject);
var
i: Integer;
begin
    mProCodBar_Origem:=0;

if codusr<>1111 then
   tsRelatorio.TabVisible:=false;
for i:=0 to printer.Printers.Count-1 do
   begin
   CB_PORTA.Items.Add(printer.Printers[i]);
   end;

end;


function TFrm_ProCodBar.fAtivarConfiguracoes: Boolean;
var
mTamanhoRet: Integer;
mdifCol,mleft,mQtdAum,mQtdVivisel: Integer;

begin
ETI_QTD.Alignment         := TAlignment(1);
STG1.RowCount:=1;
if mProCodBar_Origem=1 then
   begin
   tsConfigT01.TabVisible:=false;
   CB_TPIMP.ItemIndex:=1;
   CB_TPIMP.Visible  :=false;
   mcol_codpro:=0;
   mcol_grade :=1;
   mcol_dtvcto:=2;
   mcol_qtd   :=3;
   mcol_nome  :=4;
   mcol_outinf:=5;
   mcol_und   :=6;
   mcol_codbar:=7;
   st_grade.Caption :='Lote';
   st_dtvcto.Caption:='Dt.Vcto.';
   STG1.ColCount:=8;
   end
else if ValInt(copy(mpseg,4,2))=2 then
   begin
   tsConfigT02.TabVisible:=false;
   mcol_codpro:=0;
   mcol_grade :=1;
   mcol_qtd   :=2;
   mcol_nome  :=3;
   mcol_outinf:=4;
   mcol_und   :=5;
   mcol_codbar:=6;
   mcol_dtvcto:=7;
   STG1.Cells[mcol_grade,0] :='Grade';
   STG1.ColWidths[mcol_grade] :=40;
   ETI_DTVCTO.Visible:=false;
   st_dtvcto.Visible:=false;
   end
else
   begin
   tsConfigT02.TabVisible:=false;
   mcol_codpro:=0;
   mcol_qtd   :=1;
   mcol_nome  :=2;
   mcol_outinf:=3;
   mcol_und   :=4;
   mcol_codbar:=5;
   mcol_grade :=6;
   mcol_dtvcto :=7;
   ETI_GRADE.Visible:=false;
   ETI_DTVCTO.Visible:=false;
   st_grade.Visible:=false;
   st_dtvcto.Visible:=false;

   STG1.ColCount:=6;

   end;


mTamanhoRet:=0;
mQtdVivisel:=0;
if ETI_CODPRO.Visible then
   mQtdVivisel:=mQtdVivisel+1
else
   mTamanhoRet:=mTamanhoRet+ETI_CODPRO.Width;


if ETI_GRADE.Visible then
   mQtdVivisel:=mQtdVivisel+1
else
   mTamanhoRet:=mTamanhoRet+ETI_GRADE.Width;

if ETI_DTVCTO.Visible then
   mQtdVivisel:=mQtdVivisel+1
else
   mTamanhoRet:=mTamanhoRet+ETI_DTVCTO.Width;

if ETI_QTD.Visible then
   mQtdVivisel:=mQtdVivisel+1
else
   mTamanhoRet:=mTamanhoRet+ETI_QTD.Width;

if ETI_NOMPRO.Visible then
   mQtdVivisel:=mQtdVivisel+1
else
   mTamanhoRet:=mTamanhoRet+ETI_NOMPRO.Width;


if ETI_OUTINF.Visible then
   mQtdVivisel:=mQtdVivisel+1
else
   mTamanhoRet:=mTamanhoRet+ETI_OUTINF.Width;

if ETI_UND.Visible then
   mQtdVivisel:=mQtdVivisel+1
else
   mTamanhoRet:=mTamanhoRet+ETI_UND.Width;

if ETI_CODBAR.Visible then
   mQtdVivisel:=mQtdVivisel+1
else
   mTamanhoRet:=mTamanhoRet+ETI_CODBAR.Width;

if mTamanhoRet<>0 then
   begin
   mleft  :=0;
   mTamanhoRet:=mTamanhoRet+mQtdVivisel;
   mQtdAum:=mTamanhoRet div mQtdVivisel;
   mdifcol:=(mqtdaum*mQtdVivisel)-mTamanhoRet;
   if ETI_CODPRO.Visible then
      begin
      ETI_CODPRO.Left:=mleft;
      ETI_CODPRO.Width:=ETI_CODPRO.Width+mQtdAum+mdifcol;
      mdifcol:=0;
      mleft          :=mleft+ETI_CODPRO.Width-1;
      STG1.ColWidths[mcol_codpro]:=ETI_CODPRO.Width-2;
      st_codpro.Left :=ETI_CODPRO.Left;
      st_codpro.Width:=ETI_CODPRO.Width;
      end;
   if ETI_GRADE.Visible then
      begin
      ETI_GRADE.Left:=mleft;
      ETI_GRADE.Width:=ETI_GRADE.Width+mQtdAum+mdifcol;
      mdifcol:=0;
      mleft          :=mleft+ETI_GRADE.Width-1;
      STG1.ColWidths[mcol_grade]:=ETI_GRADE.Width-2;
      st_grade.Left :=ETI_GRADE.Left;
      st_grade.Width:=ETI_GRADE.Width;
      end;

   if ETI_DTVCTO.Visible then
      begin
      ETI_DTVCTO.Left:=mleft;
      ETI_DTVCTO.Width:=ETI_DTVCTO.Width+mQtdAum+mdifcol;
      mdifcol:=0;
      mleft          :=mleft+ETI_DTVCTO.Width-1;
      STG1.ColWidths[mcol_dtvcto]:=ETI_DTVCTO.Width-2;
      st_dtvcto.Left :=ETI_DTVCTO.Left;
      st_dtvcto.Width:=ETI_DTVCTO.Width;
      end;

   if ETI_QTD.Visible then
      begin
      ETI_QTD.Left:=mleft;
      ETI_QTD.Width:=ETI_QTD.Width+mQtdAum+mdifcol;
      mdifcol:=0;
      mleft          :=mleft+ETI_QTD.Width-1;
      STG1.ColWidths[mcol_qtd]:=ETI_QTD.Width-2;
      st_quantidade.Left :=ETI_QTD.Left;
      st_quantidade.Width:=ETI_QTD.Width;
      end;

   if ETI_NOMPRO.Visible then
      begin
      ETI_NOMPRO.Left:=mleft;
      ETI_NOMPRO.Width:=ETI_NOMPRO.Width+mQtdAum+mdifcol;
      mdifcol:=0;

      mleft          :=mleft+ETI_NOMPRO.Width-1;
      STG1.ColWidths[mcol_nome]:=ETI_NOMPRO.Width-2;
      st_nompro.Left :=ETI_NOMPRO.Left;
      st_nompro.Width:=ETI_NOMPRO.Width;
      end;

   if ETI_OUTINF.Visible then
      begin
      ETI_OUTINF.Left:=mleft;
      ETI_OUTINF.Width:=ETI_OUTINF.Width+mQtdAum+mdifcol;
      mdifcol:=0;

      mleft          :=mleft+ETI_OUTINF.Width-1;
      STG1.ColWidths[mcol_outinf]:=ETI_OUTINF.Width-2;
      st_outinf.Left :=ETI_OUTINF.Left;
      st_outinf.Width:=ETI_OUTINF.Width;
      end;

   if ETI_UND.Visible then
      begin
      ETI_UND.Left:=mleft;
      ETI_UND.Width:=ETI_UND.Width+mQtdAum+mdifcol;
      mdifcol:=0;
      mleft          :=mleft+ETI_UND.Width-1;

      STG1.ColWidths[mcol_und]:=ETI_UND.Width-2;
      st_und.Left :=ETI_UND.Left;
      st_und.Width:=ETI_UND.Width;
      end;

   if ETI_CODBAR.Visible then
      begin
      ETI_CODBAR.Left:=mleft;
      ETI_CODBAR.Width:=ETI_CODBAR.Width+mQtdAum+mdifcol;
      mdifcol:=0;
      mleft          :=mleft+ETI_CODBAR.Width-1;
      STG1.ColWidths[mcol_codbar]:=ETI_CODBAR.Width-2;
      ST_CODBAR.Left :=ETI_CODBAR.Left;
      ST_CODBAR.Width:=ETI_CODBAR.Width;
      end;
   end;
fAtualizarPadraoCfgTermica(0);
end;

procedure TFrm_ProCodBar.STG1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);

begin
end;


{

procedure TFrm_ProCodBar.ComboBox1Exit(Sender: TObject);
begin
//STG1.Cells[STG1.Col,STG1.Row]:=ComboBox1.Items[ComboBox1.itemindex];
with ComboBox1 do ItemIndex:=Items.IndexOf(ComboBox1.Text);
if ComboBox1.ItemIndex>=0 then
   STG1.Cells[STG1.Col,STG1.Row]:=ComboBox1.Items[ComboBox1.itemindex];
//else
//   STG1.Cells[STG1.Col,STG1.Row]:=ComboBox1.Items[ComboBox1.itemindex];
ComboBox1.Visible:=False;
with STG1 do
  begin
  col:=STG1.Col+1;
  row:=STG1.Row;
  SetFocus;
  end;

//STG1.Cells[STG1.Col+1,STG1.Row];
//STG1.SetFocus;


procedure TFrm_ProCodBar.STG1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
R: TRect;
begin
if (ACol=1) and (arow>0) then
   begin
   R := STG1.CellRect(Acol,ARow);
   R.Left:=R.Left+STG1.Left;
   R.Right:=R.Right+STG1.Left;
   R.Top  :=R.Top+STG1.Top;
   R.Bottom:=R.Bottom+STG1.Top;
   ComboBox1.Left := R.Left+1;
   ComboBox1.Top  := R.Top+1;
   ComboBox1.Width:=(R.Right+1) - R.Left;
   ComboBox1.Height:=(R.Bottom+1) - R.Top;
   ComboBox1.Visible:=True;
   ComboBox1.ItemIndex:=0;
   ComboBox1.SetFocus;
   end;
CanSelect:=true;

end;


}
procedure TFrm_ProCodBar.STG1Click(Sender: TObject);
begin
{
if (ValInt(copy(mpseg,4,2))<>2) and (STG1.col=1) then
   begin
   with STG1 do
      begin
      col:=02;
      row:=rowclick;
      colclick:=Col;
      rowclick:=row;
      SetFocus;
      end;
   end
else
   begin
   colclick:=STG1.col;
   rowclick:=STG1.Row;
   end;
}
end;
function TFrm_ProCodBar.fProCodBarContaEti(pTipo: Integer): Boolean;
var
x: Integer;
begin
mqtdeti:=0;
For x:=0 to STG1.RowCount do
   begin
   if Trim(STG1.Cells[mcol_codpro,x])='' then
      Continue;
   mqtdeti:=mqtdeti+ValInt(STG1.Cells[mcol_qtd,x]);
   end;
QTDETI.Text:=InttoStr(mqtdeti);
result:=True;
end;
function TFrm_ProCodBar.fEmiEtiqueta(pTipo: Integer): Boolean;
begin
mlado:=mlado+1;
if mlado>3 then
   mlado:=1;

if ptipo=0 then
   begin
   if mlado=1 then
      begin
      WriteLn(FEtiq,'N');
      WriteLn(FEtiq,'O');
      WriteLn(FEtiq,'D10');
      WriteLn(FEtiq,'S2');
      WriteLn(FEtiq,'ZB');
      WriteLn(FEtiq,'Q320,20');
      WriteLn(FEtiq,'q784');
      WriteLn(FEtiq,'I8,1,001');
      Writeln(fetiq,'B25,25,0,3,1,3,80,B,"'+mcodbar+'"');
      Writeln(fetiq,'A25,145,0,2,1,1,N,"'+MnomPro01+'"');
      Writeln(fetiq,'A25,170,0,2,1,1,N,"'+MnomPro02+'"');
      Writeln(fetiq,'A25,195,0,2,1,1,N,"'+MnomPro03+'"');
      Writeln(fetiq,'A25,220,0,2,1,1,N,"'+MnomPro04+'"');
      Writeln(fetiq,'A25,245,0,2,1,1,N,"'+MnomPro05+'"');
      Writeln(fetiq,'A20,275,0,4,1,1,R,"'+Centra(DM1.Tb_EmpFANTASIA.Value,' ',mtamlin-4)+'"');
      end
   else if mlado=2 then
      begin
      Writeln(fetiq,'B290,25,0,3,1,3,80,B,"'+mcodbar+'"');
      Writeln(fetiq,'A290,145,0,2,1,1,N,"'+MnomPro01+'"');
      Writeln(fetiq,'A290,170,0,2,1,1,N,"'+MnomPro02+'"');
      Writeln(fetiq,'A290,195,0,2,1,1,N,"'+MnomPro03+'"');
      Writeln(fetiq,'A290,220,0,2,1,1,N,"'+MnomPro04+'"');
      Writeln(fetiq,'A290,245,0,2,1,1,N,"'+MnomPro05+'"');
      Writeln(fetiq,'A285,275,0,4,1,1,R,"'+Centra(DM1.Tb_EmpFANTASIA.Value,' ',mtamlin-4)+'"');
      end
   else if mlado=3 then
      begin
      Writeln(fetiq,'B555,25,0,3,1,3,80,B,"'+mcodbar+'"');
      Writeln(fetiq,'A555,145,0,2,1,1,N,"'+MnomPro01+'"');
      Writeln(fetiq,'A555,170,0,2,1,1,N,"'+MnomPro02+'"');
      Writeln(fetiq,'A555,195,0,2,1,1,N,"'+MnomPro03+'"');
      Writeln(fetiq,'A555,220,0,2,1,1,N,"'+MnomPro04+'"');
      Writeln(fetiq,'A555,245,0,2,1,1,N,"'+MnomPro05+'"');
      Writeln(fetiq,'A550,275,0,4,1,1,R,"'+Centra(DM1.Tb_EmpFANTASIA.Value,' ',mtamlin-4)+'"');
      WriteLn(FEtiq,'P1');
      end;
   end
else
   begin
   if mlado=1 then
      begin
      WriteLn(FEtiq,'N');
      Writeln(fetiq,'B230,010,1,3,1,3,80,B,"'+mcodbar+'"');
      Writeln(fetiq,'A120,010,1,2,1,1,N,"'+MnomPro01+'"');
      Writeln(fetiq,'A100,010,1,2,1,1,N,"'+MnomPro02+'"');
      Writeln(fetiq,'A080,010,1,2,1,1,N,"'+MnomPro03+'"');
      Writeln(fetiq,'A060,010,1,2,1,1,N,"'+MnomPro04+'"');
      Writeln(fetiq,'A030,010,1,4,1,1,R,"'+Centra(DM1.Tb_EmpFANTASIA.Value,' ',mtamlin-7)+'"');
      end
   else if mlado=2 then
      begin
      Writeln(fetiq,'B490,010,1,3,1,3,80,B,"'+mcodbar+'"');
      Writeln(fetiq,'A380,010,1,2,1,1,N,"'+MnomPro01+'"');
      Writeln(fetiq,'A360,010,1,2,1,1,N,"'+MnomPro02+'"');
      Writeln(fetiq,'A340,010,1,2,1,1,N,"'+MnomPro03+'"');
      Writeln(fetiq,'A320,010,1,2,1,1,N,"'+MnomPro04+'"');
      Writeln(fetiq,'A290,010,1,4,1,1,R,"'+Centra(DM1.Tb_EmpFANTASIA.Value,' ',mtamlin-7)+'"');
      end
   else if mlado=3 then
      begin
      Writeln(fetiq,'B755,010,1,3,1,3,80,B,"'+mcodbar+'"');
      Writeln(fetiq,'A645,010,1,2,1,1,N,"'+MnomPro01+'"');
      Writeln(fetiq,'A625,010,1,2,1,1,N,"'+MnomPro02+'"');
      Writeln(fetiq,'A605,010,1,2,1,1,N,"'+MnomPro03+'"');
      Writeln(fetiq,'A585,010,1,2,1,1,N,"'+MnomPro04+'"');
      Writeln(fetiq,'A555,010,1,4,1,1,R,"'+Centra(DM1.Tb_EmpFANTASIA.Value,' ',mtamlin-7)+'"');
      WriteLn(FEtiq,'P1');
      end;
   end;


result:=true;
end;

procedure TFrm_ProCodBar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_ProCodBar.ETI_CODPROKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      ETI_CODPRO.Text:=fChamaPro(2,'Frm_ProCodBar','')
   else
      ETI_CODPRO.Text:=fChamaPro(0,'Frm_ProCodBar','');
   if trim(mla_lote)<>'' then
      ETI_GRADE.Text:=mla_lote;
   if trim(mla_dtvcto)<>'' then
      ETI_DTVCTO.Text:=mla_dtvcto;
   key:=0;
   if trim(ETI_CODPRO.Text)<>'' then
      ETI_CODPROExit(Self);
   end;

end;

procedure TFrm_ProCodBar.ETI_CODPROExit(Sender: TObject);
begin
ETI_CODPRO.Text:=fdeixanum2(ETI_CODPRO.Text);

if trim(ETI_CODPRO.Text)<>'' then
   begin
   if not flcadpro(1,0,0,ETI_CODPRO.Text) then
      begin
      FMensagem('Produto não Cadastrado!',0,['0'],0);
      ETI_CODPRO.SetFocus;
      end
   else
      begin
      ETI_NOMPRO.Text:=DM1.Tb_ProPDNOME.AsString;
      ETI_UND.Text   :=DM1.Tb_ProPDUND.AsString;
      if DM1.Tb_ProPDCODBAR.AsFloat<>0 then
         ETI_CODBAR.Text:=DM1.Tb_ProPDCODBAR.AsString
      else
        ETI_CODBAR.Text:=DM1.Tb_ProPDCODPRO.AsString;
      if ValFloat(ETI_QTD.Text)<>0 then
         ETI_QTD.Text:='1';
      end;
   end
else if (ETI_GRADE.Focused) or (ETI_DTVCTO.Focused) or (ETI_QTD.Focused) then
   ETI_CODPRO.SetFocus;
end;

procedure TFrm_ProCodBar.ETI_GRADEExit(Sender: TObject);
begin
if (mProCodBar_Origem<>1) then
   begin
   if (trim(ETI_CODPRO.Text)<>'') and (trim(ETI_GRADE.Text)<>'') then
      begin
      if not flcadlgc(0,1,0,ETI_CODPRO.Text,ETI_GRADE.Text,'') then
         begin
         FMensagem('Grade Nao cadastrada!',0,['0'],0);
         ETI_GRADE.SetFocus;
         end;
      end;
   end;

end;

procedure TFrm_ProCodBar.ETI_DTVCTOExit(Sender: TObject);
begin
if trim(ETI_DTVCTO.Text)<>'/  /' then
   begin
   try
      ETI_DTVCTO.Text:=formatDateTime(fdt2, StrtoDate(ETI_DTVCTO.Text));
   except
      fmensagem('Data Invalido!',0,['0'],0);
      end;
   end;
end;

procedure TFrm_ProCodBar.ETI_CODBARExit(Sender: TObject);
begin

if bbItens_Alterar.Focused then
   begin
   if ValFloat(ETI_CODPRO.Text)=0 then
      begin
      ETI_CODPRO.SetFocus;
      exit;
      end;
   if mProCodBarOper_item<>1 then
      begin
      mProCodBarColAlter :=STG1.RowCount;
      STG1.RowCount      :=STG1.RowCount+1;
      mProCodBarNumItem  :=mProCodBarNumItem+1;
      mProCodBarColAlter :=mProCodBarColAlter-1;
      end;
   STG1.Cells[mcol_codpro,mProCodBarColAlter]  :=ETI_CODPRO.Text;
   STG1.Cells[mcol_grade ,mProCodBarColAlter]  :=ETI_GRADE.Text;
   STG1.Cells[mcol_dtvcto,mProCodBarColAlter]  :=ETI_DTVCTO.Text;
   STG1.Cells[mcol_qtd   ,mProCodBarColAlter]  :=ETI_QTD.Text;
   STG1.Cells[mcol_nome  ,mProCodBarColAlter]  :=ETI_NOMPRO.Text;
   STG1.Cells[mcol_outinf,mProCodBarColAlter]  :=ETI_OUTINF.Text;
   STG1.Cells[mcol_und   ,mProCodBarColAlter]  :=ETI_UND.Text;
   STG1.Cells[mcol_codbar,mProCodBarColAlter]  :=ETI_CODBAR.Text;

   if mProCodBarColAlter>maltura_grid then
      STG1.TopRow:=mProCodBarColAlter-maltura_grid-1;
   bbItens_CancelarClick(Self);
   end;
end;

procedure TFrm_ProCodBar.bbItens_CancelarClick(Sender: TObject);
begin
mProCodBarOper_item:=0;
fProCodBarContaEti(0);
ETI_CODPRO.Text :='';
ETI_GRADE.Text  :='';
ETI_DTVCTO.Text :='/  /';
ETI_QTD.Text    :='';
ETI_NOMPRO.Text :='';
ETI_UND.Text    :='';
ETI_OUTINF.Text :='';
ETI_CODBAR.Text :='';
ETI_CODPRO.SetFocus;
end;

procedure TFrm_ProCodBar.bbItens_AlterarClick(Sender: TObject);
begin
ETI_CODPRO.Text  :=STG1.Cells[mcol_codpro,mProCodBarColAlter];
ETI_GRADE.Text   :=STG1.Cells[mcol_grade ,mProCodBarColAlter];
ETI_DTVCTO.Text  :=STG1.Cells[mcol_dtvcto,mProCodBarColAlter];
ETI_QTD.Text     :=STG1.Cells[mcol_qtd   ,mProCodBarColAlter];
ETI_NOMPRO.Text  :=STG1.Cells[mcol_nome  ,mProCodBarColAlter];
ETI_OUTINF.Text  :=STG1.Cells[mcol_outinf,mProCodBarColAlter];
ETI_UND.Text     :=STG1.Cells[mcol_und   ,mProCodBarColAlter];
ETI_CODBAR.Text  :=STG1.Cells[mcol_codbar,mProCodBarColAlter];
mProCodBarOper_item:=1;
end;

procedure TFrm_ProCodBar.bbItens_excluirClick(Sender: TObject);
var
y,x: Integer;
begin

if (Trim(STG1.Cells[mcol_codpro,STG1.Row])<>'') then
   begin
   if fmensagem('Quer Realmente Excluir o Item Selecionado: '+STG1.Cells[mcol_nome,STG1.Row],0,['1','2'],2)<>mrYes then
      exit;
   if STG1.RowCount=1 then
      STG1.Rows[0].Clear
   else
      begin
      for x:=STG1.Row to STG1.RowCount-2 do
         begin
         for y:=0 to 8 do
            STG1.Cells[y,x]:=STG1.Cells[y,x+1];
         end;
      end;
   STG1.RowCount:=STG1.RowCount-1;
   fProCodBarContaEti(0);
   ETI_CODPRO.SetFocus;
   end;


end;

procedure TFrm_ProCodBar.STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;
  
begin

if ((aCol=mcol_qtd) ) then
   begin
//Pega o texto da célula
  Texto := STG1.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STG1.Canvas.TextWidth(Texto);
  AlturaTexto := STG1.Canvas.TextHeight(Texto);

// Direita
    X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG1.Canvas.TextRect(Rect, X, Y, Texto);
  end;


end;

procedure TFrm_ProCodBar.ETI_CODPROKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      ETI_CODPRO.Text:=fChamaPro(2,'Frm_ProCodBar','')
   else
      ETI_CODPRO.Text:=fChamaPro(0,'Frm_ProCodBar','');
   if trim(mla_lote)<>'' then
      ETI_GRADE.Text:=mla_lote;
   if trim(mla_dtvcto)<>'' then
      ETI_DTVCTO.Text:=mla_dtvcto;
   key:=#0;
   ETI_CODPROExit(Self);
   end;



end;

function TFrm_ProCodBar.fEmiEtiquetaTermica(pTipo: Integer): Boolean;
var
mLinha: String;
begin
Qr_Etiqueta.First;
//ShowMessage('Registros: '+IntTostr(Qr_Etiqueta.RecordCount));
AssignFile(fEtiq,cb_porta.text);
Rewrite(fEtiq);
While not Qr_Etiqueta.Eof do
   begin
   WriteLn(fetiq,'Q'+QP01.Text+','+QP02.Text);
   WriteLn(fetiq,'q784');
   WriteLn(fetiq,'rN');
   WriteLn(fetiq,'S4');
   WriteLn(fetiq,'D7');
   WriteLn(fetiq,'ZT');
   WriteLn(fetiq,'JB');
   WriteLn(fetiq,'OD');
   WriteLn(fetiq,'N');

//   WriteLn(fetiq,'A'+ 009,026,0,1,1,1,R,"Codigo do Produto"');
//   WriteLn(fetiq,'A009,050,0,1,2,6,N,"'+centra(Qr_EtiquetaCODPRO.AsString,' ',10)+'"');
   if CB_IMP_LBLCODPRO.Checked then
      begin
      WriteLn(fetiq,'A'+
      LBLCODPRO_COMA_P1.Text+','+LBLCODPRO_COMA_P2.Text
      +','+LBLCODPRO_COMA_P3.Text+','+LBLCODPRO_COMA_P4.Text
      +','+LBLCODPRO_COMA_P5.Text+','+LBLCODPRO_COMA_P6.Text
      +','+iif(CB_LBLCODPRO_INVERSO_COMA_P7.Checked,'R','N')+',"'+LBLCODPRO.Text+'"');
      end;

   if CB_IMP_EDTCODPRO.Checked then
      begin
      WriteLn(fetiq,'A'+
      EDTCODPRO_COMA_P1.Text+','+EDTCODPRO_COMA_P2.Text
      +','+EDTCODPRO_COMA_P3.Text+','+EDTCODPRO_COMA_P4.Text
      +','+EDTCODPRO_COMA_P5.Text+','+EDTCODPRO_COMA_P6.Text
      +','+iif(CB_EDTCODPRO_INVERSO_COMA_P7.Checked,'R','N')+',"'+Qr_EtiquetaCODPRO.AsString+'"');
      end;

//   WriteLn(fetiq,'A209,026,0,1,1,1,R,"Lote"');
//   WriteLn(fetiq,'A209,050,0,1,2,6,N,"'+centra(Qr_EtiquetaLOTE.AsString,' ',10)+'"');



   if CB_IMP_LBLLOTE.Checked then
      begin
      WriteLn(fetiq,'A'+
      LBLLOTE_COMA_P1.Text+','+LBLLOTE_COMA_P2.Text
      +','+LBLLOTE_COMA_P3.Text+','+LBLLOTE_COMA_P4.Text
      +','+LBLLOTE_COMA_P5.Text+','+LBLLOTE_COMA_P6.Text
      +','+iif(CB_LBLLOTE_INVERSO_COMA_P7.Checked,'R','N')+',"'+LBLLOTE.Text+'"');
      end;

   if CB_IMP_EDTLOTE.Checked then
      begin
      WriteLn(fetiq,'A'+
      EDTLOTE_COMA_P1.Text+','+EDTLOTE_COMA_P2.Text
      +','+EDTLOTE_COMA_P3.Text+','+EDTLOTE_COMA_P4.Text
      +','+EDTLOTE_COMA_P5.Text+','+EDTLOTE_COMA_P6.Text
      +','+iif(CB_EDTLOTE_INVERSO_COMA_P7.Checked,'R','N')+',"'+Qr_EtiquetaLOTE.AsString+'"');
      end;


//   WriteLn(fetiq,'A409,026,0,1,1,1,R,"Data de Vencimento"');
   if Qr_EtiquetaDTVCTO.AsDateTime<=pdatanula then
      mdtv:=''
   else
      mdtv:=FormatDateTime(fdt2, Qr_EtiquetaDTVCTO.AsDateTime);
//   WriteLn(fetiq,'A409,050,0,1,2,6,N,"'+mdtv+'"');


   if CB_IMP_LBLDTVCTO.Checked then
      begin
      WriteLn(fetiq,'A'+
      LBLDTVCTO_COMA_P1.Text+','+LBLDTVCTO_COMA_P2.Text
      +','+LBLDTVCTO_COMA_P3.Text+','+LBLDTVCTO_COMA_P4.Text
      +','+LBLDTVCTO_COMA_P5.Text+','+LBLDTVCTO_COMA_P6.Text
      +','+iif(CB_LBLDTVCTO_INVERSO_COMA_P7.Checked,'R','N')+',"'+LBLDTVCTO.Text+'"');
      end;

   if CB_IMP_EDTDTVCTO.Checked then
      begin
      WriteLn(fetiq,'A'+
      EDTDTVCTO_COMA_P1.Text+','+EDTDTVCTO_COMA_P2.Text
      +','+EDTDTVCTO_COMA_P3.Text+','+EDTDTVCTO_COMA_P4.Text
      +','+EDTDTVCTO_COMA_P5.Text+','+EDTDTVCTO_COMA_P6.Text
      +','+iif(CB_EDTDTVCTO_INVERSO_COMA_P7.Checked,'R','N')+',"'+mdtv+'"');
      end;


//   WriteLn(fetiq,'A609,026,0,1,1,1,R,"Secao"');
//   WriteLn(fetiq,'A609,050,0,1,2,6,N,"'+insere2(Qr_EtiquetaSECAO.AsString,' ',04)+'"');

   if CB_IMP_LBLSECAO.Checked then
      begin
      WriteLn(fetiq,'A'+
      LBLSECAO_COMA_P1.Text+','+LBLSECAO_COMA_P2.Text
      +','+LBLSECAO_COMA_P3.Text+','+LBLSECAO_COMA_P4.Text
      +','+LBLSECAO_COMA_P5.Text+','+LBLSECAO_COMA_P6.Text
      +','+iif(CB_LBLSECAO_INVERSO_COMA_P7.Checked,'R','N')+',"'+LBLSECAO.Text+'"');
      end;

   if CB_IMP_EDTSECAO.Checked then
      begin
      WriteLn(fetiq,'A'+
      EDTSECAO_COMA_P1.Text+','+EDTSECAO_COMA_P2.Text
      +','+EDTSECAO_COMA_P3.Text+','+EDTSECAO_COMA_P4.Text
      +','+EDTSECAO_COMA_P5.Text+','+EDTSECAO_COMA_P6.Text
      +','+iif(CB_EDTSECAO_INVERSO_COMA_P7.Checked,'R','N')+',"'+Qr_EtiquetaSECAO.AsString+'"');
      end;


//   WriteLn(fetiq,'A709,026,0,1,1,1,R,"Qtd"');
//   WriteLn(fetiq,'A709,050,0,1,2,6,N,"'+insere(Qr_EtiquetaEMBPAD.AsString,' ',04)+'"');

   if CB_IMP_LBLQTD.Checked then
      begin
      WriteLn(fetiq,'A'+
      LBLQTD_COMA_P1.Text+','+LBLQTD_COMA_P2.Text
      +','+LBLQTD_COMA_P3.Text+','+LBLQTD_COMA_P4.Text
      +','+LBLQTD_COMA_P5.Text+','+LBLQTD_COMA_P6.Text
      +','+iif(CB_LBLQTD_INVERSO_COMA_P7.Checked,'R','N')+',"'+LBLQTD.Text+'"');
      end;

   if CB_IMP_EDTQTD.Checked then
      begin
      WriteLn(fetiq,'A'+
      EDTQTD_COMA_P1.Text+','+EDTQTD_COMA_P2.Text
      +','+EDTQTD_COMA_P3.Text+','+EDTQTD_COMA_P4.Text
      +','+EDTQTD_COMA_P5.Text+','+EDTQTD_COMA_P6.Text
      +','+iif(CB_EDTQTD_INVERSO_COMA_P7.Checked,'R','N')+',"'+Qr_EtiquetaEMBPAD.AsString+'"');
      end;


//   WriteLn(fetiq,'A009,140,0,1,1,1,R,"Descricao do Produto"');
//   WriteLn(fetiq,'A009,170,0,3,1,2,N,"'+Qr_etiquetaNOME.AsString+'"');


   if CB_IMP_LBLDESCR.Checked then
      begin
      WriteLn(fetiq,'A'+
      LBLDESCR_COMA_P1.Text+','+LBLDESCR_COMA_P2.Text
      +','+LBLDESCR_COMA_P3.Text+','+LBLDESCR_COMA_P4.Text
      +','+LBLDESCR_COMA_P5.Text+','+LBLDESCR_COMA_P6.Text
      +','+iif(CB_LBLDESCR_INVERSO_COMA_P7.Checked,'R','N')+',"'+LBLDESCR.Text+'"');
      end;

   if CB_IMP_EDTDESCR.Checked then
      begin
      WriteLn(fetiq,'A'+
      EDTDESCR_COMA_P1.Text+','+EDTDESCR_COMA_P2.Text
      +','+EDTDESCR_COMA_P3.Text+','+EDTDESCR_COMA_P4.Text
      +','+EDTDESCR_COMA_P5.Text+','+EDTDESCR_COMA_P6.Text
      +','+iif(CB_EDTDESCR_INVERSO_COMA_P7.Checked,'R','N')+',"'+Qr_EtiquetaNOME.AsString+'"');
      end;

//      WriteLn(fetiq,'X1,1,6,780,200');

   if CB_IMPBORDAEXT.Checked then
      begin
      WriteLn(fetiq,
      'X'+LBXBORDAEXT_COM_XP1.Text
      +','+LBXBORDAEXT_COM_XP2.Text
      +','+LBXBORDAEXT_COM_XP3.Text
      +','+LBXBORDAEXT_COM_XP4.Text
      +','+LBXBORDAEXT_COM_XP5.Text);
      end;

   if CB_IMP_LPOSCABPRO.Checked then
      begin
      WriteLn(fetiq,
      'LO'+LBXLPOSCABPRO_COMLO_P1.Text
      +','+LBXLPOSCABPRO_COMLO_P2.Text
      +','+LBXLPOSCABPRO_COMLO_P3.Text
      +','+LBXLPOSCABPRO_COMLO_P4.Text);
      end;

   if CB_IMP_LPOSSECAO.Checked then
      begin
      WriteLn(fetiq,
      'LO'+LBXLPOSSECAO_COM_LOP1.Text
      +','+LBXLPOSSECAO_COM_LOP2.Text
      +','+LBXLPOSSECAO_COM_LOP3.Text
      +','+LBXLPOSCODPRO_COM_LOP4.Text);
      end;


   if CB_IMP_LPOSDTVCTO.Checked then
      begin
      WriteLn(fetiq,
      'LO'+LBXLPOSDTVCTO_COM_LOP1.Text
      +','+LBXLPOSDTVCTO_COM_LOP2.Text
      +','+LBXLPOSDTVCTO_COM_LOP3.Text
      +','+LBXLPOSDTVCTO_COM_LOP4.Text);
      end;

   if CB_IMP_LPOSLOTE.Checked then
      begin
      WriteLn(fetiq,
      'LO'+LBXLPOSLOTE_COM_LOP1.Text
      +','+LBXLPOSLOTE_COM_LOP2.Text
      +','+LBXLPOSLOTE_COM_LOP3.Text
      +','+LBXLPOSLOTE_COM_LOP4.Text);
      end;

   if CB_IMP_LPOSCODPRO.Checked then
      begin
      WriteLn(fetiq,
      'LO'+LBXLPOSCODPRO_COM_LOP1.Text
      +','+LBXLPOSCODPRO_COM_LOP2.Text
      +','+LBXLPOSCODPRO_COM_LOP3.Text
      +','+LBXLPOSCODPRO_COM_LOP4.Text);
      end;

{
   WriteLn(fetiq,'LO700,27,6,106');
   WriteLn(fetiq,'LO600,27,6,106');
   WriteLn(fetiq,'LO400,27,6,106');
   WriteLn(fetiq,'LO200,27,6,106');
   WriteLn(fetiq,'LO2,127,780,6');
}
   WriteLn(fetiq,'P1');
   Qr_Etiqueta.Next;
   end;
Closefile(fEtiq);
result:=true;

end;

procedure TFrm_ProCodBar.CB_TPIMPExit(Sender: TObject);
begin
if CB_TPIMP.ItemIndex=0 then
   begin
   lbl_porta.Visible  :=false;
   CB_Porta.Visible   :=false;
   CB_VERTICAL.Visible:=false;
   end
else if CB_TPIMP.ItemIndex=1 then
   begin
   lbl_porta.Visible  :=true;
   CB_Porta.Visible   :=true;
   CB_VERTICAL.Visible:=true;
   end;


end;

function TFrm_ProCodBar.fAtualizarDemo(pTipo: Integer): Boolean;
begin
QP01.Text:=fdeixanum2(QP01.Text);
QP02.Text:=fdeixanum2(QP02.Text);
LBXBORDAEXT_COM_XP1.Text:=fdeixanum2(LBXBORDAEXT_COM_XP1.Text);
LBXBORDAEXT_COM_XP2.Text:=fdeixanum2(LBXBORDAEXT_COM_XP2.Text);
LBXBORDAEXT_COM_XP3.Text:=fdeixanum2(LBXBORDAEXT_COM_XP3.Text);
LBXBORDAEXT_COM_XP4.Text:=fdeixanum2(LBXBORDAEXT_COM_XP4.Text);
LBXBORDAEXT_COM_XP5.Text:=fdeixanum2(LBXBORDAEXT_COM_XP5.Text);
LBLCODPRO_COMA_P1.Text:=fdeixanum2(LBLCODPRO_COMA_P1.Text);
LBLCODPRO_COMA_P2.Text:=fdeixanum2(LBLCODPRO_COMA_P2.Text);
LBLCODPRO_COMA_P3.Text:=fdeixanum2(LBLCODPRO_COMA_P3.Text);
LBLCODPRO_COMA_P4.Text:=fdeixanum2(LBLCODPRO_COMA_P4.Text);
LBLCODPRO_COMA_P5.Text:=fdeixanum2(LBLCODPRO_COMA_P5.Text);
LBLCODPRO_COMA_P6.Text:=fdeixanum2(LBLCODPRO_COMA_P6.Text);
EDTCODPRO_COMA_P1.Text:=fdeixanum2(EDTCODPRO_COMA_P1.Text);
EDTCODPRO_COMA_P2.Text:=fdeixanum2(EDTCODPRO_COMA_P2.Text);
EDTCODPRO_COMA_P3.Text:=fdeixanum2(EDTCODPRO_COMA_P3.Text);
EDTCODPRO_COMA_P4.Text:=fdeixanum2(EDTCODPRO_COMA_P4.Text);
EDTCODPRO_COMA_P5.Text:=fdeixanum2(EDTCODPRO_COMA_P5.Text);
EDTCODPRO_COMA_P6.Text:=fdeixanum2(EDTCODPRO_COMA_P6.Text);
EDTCODPRO_TAMANHO.Text:=fdeixanum2(EDTCODPRO_TAMANHO.Text);

LBLLOTE_COMA_P1.Text:=fdeixanum2(LBLLOTE_COMA_P1.Text);
LBLLOTE_COMA_P2.Text:=fdeixanum2(LBLLOTE_COMA_P2.Text);
LBLLOTE_COMA_P3.Text:=fdeixanum2(LBLLOTE_COMA_P3.Text);
LBLLOTE_COMA_P4.Text:=fdeixanum2(LBLLOTE_COMA_P4.Text);
LBLLOTE_COMA_P5.Text:=fdeixanum2(LBLLOTE_COMA_P5.Text);
LBLLOTE_COMA_P6.Text:=fdeixanum2(LBLLOTE_COMA_P6.Text);

EDTLOTE_COMA_P1.Text:=fdeixanum2(EDTLOTE_COMA_P1.Text);
EDTLOTE_COMA_P2.Text:=fdeixanum2(EDTLOTE_COMA_P2.Text);
EDTLOTE_COMA_P3.Text:=fdeixanum2(EDTLOTE_COMA_P3.Text);
EDTLOTE_COMA_P4.Text:=fdeixanum2(EDTLOTE_COMA_P4.Text);
EDTLOTE_COMA_P5.Text:=fdeixanum2(EDTLOTE_COMA_P5.Text);
EDTLOTE_COMA_P6.Text:=fdeixanum2(EDTLOTE_COMA_P6.Text);
EDTLOTE_TAMANHO.Text:=fdeixanum2(EDTLOTE_TAMANHO.Text);


LBLDTVCTO_COMA_P1.Text:=fdeixanum2(LBLDTVCTO_COMA_P1.Text);
LBLDTVCTO_COMA_P2.Text:=fdeixanum2(LBLDTVCTO_COMA_P2.Text);
LBLDTVCTO_COMA_P3.Text:=fdeixanum2(LBLDTVCTO_COMA_P3.Text);
LBLDTVCTO_COMA_P4.Text:=fdeixanum2(LBLDTVCTO_COMA_P4.Text);
LBLDTVCTO_COMA_P5.Text:=fdeixanum2(LBLDTVCTO_COMA_P5.Text);
LBLDTVCTO_COMA_P6.Text:=fdeixanum2(LBLDTVCTO_COMA_P6.Text);

EDTDTVCTO_COMA_P1.Text:=fdeixanum2(EDTDTVCTO_COMA_P1.Text);
EDTDTVCTO_COMA_P2.Text:=fdeixanum2(EDTDTVCTO_COMA_P2.Text);
EDTDTVCTO_COMA_P3.Text:=fdeixanum2(EDTDTVCTO_COMA_P3.Text);
EDTDTVCTO_COMA_P4.Text:=fdeixanum2(EDTDTVCTO_COMA_P4.Text);
EDTDTVCTO_COMA_P5.Text:=fdeixanum2(EDTDTVCTO_COMA_P5.Text);
EDTDTVCTO_COMA_P6.Text:=fdeixanum2(EDTDTVCTO_COMA_P6.Text);
EDTDTVCTO_TAMANHO.Text:=fdeixanum2(EDTDTVCTO_TAMANHO.Text);


LBLSECAO_COMA_P1.Text:=fdeixanum2(LBLSECAO_COMA_P1.Text);
LBLSECAO_COMA_P2.Text:=fdeixanum2(LBLSECAO_COMA_P2.Text);
LBLSECAO_COMA_P3.Text:=fdeixanum2(LBLSECAO_COMA_P3.Text);
LBLSECAO_COMA_P4.Text:=fdeixanum2(LBLSECAO_COMA_P4.Text);
LBLSECAO_COMA_P5.Text:=fdeixanum2(LBLSECAO_COMA_P5.Text);
LBLSECAO_COMA_P6.Text:=fdeixanum2(LBLSECAO_COMA_P6.Text);

EDTSECAO_COMA_P1.Text:=fdeixanum2(EDTSECAO_COMA_P1.Text);
EDTSECAO_COMA_P2.Text:=fdeixanum2(EDTSECAO_COMA_P2.Text);
EDTSECAO_COMA_P3.Text:=fdeixanum2(EDTSECAO_COMA_P3.Text);
EDTSECAO_COMA_P4.Text:=fdeixanum2(EDTSECAO_COMA_P4.Text);
EDTSECAO_COMA_P5.Text:=fdeixanum2(EDTSECAO_COMA_P5.Text);
EDTSECAO_COMA_P6.Text:=fdeixanum2(EDTSECAO_COMA_P6.Text);
EDTSECAO_TAMANHO.Text:=fdeixanum2(EDTSECAO_TAMANHO.Text);

LBLQTD_COMA_P1.Text:=fdeixanum2(LBLQTD_COMA_P1.Text);
LBLQTD_COMA_P2.Text:=fdeixanum2(LBLQTD_COMA_P2.Text);
LBLQTD_COMA_P3.Text:=fdeixanum2(LBLQTD_COMA_P3.Text);
LBLQTD_COMA_P4.Text:=fdeixanum2(LBLQTD_COMA_P4.Text);
LBLQTD_COMA_P5.Text:=fdeixanum2(LBLQTD_COMA_P5.Text);
LBLQTD_COMA_P6.Text:=fdeixanum2(LBLQTD_COMA_P6.Text);

EDTQTD_COMA_P1.Text:=fdeixanum2(EDTQTD_COMA_P1.Text);
EDTQTD_COMA_P2.Text:=fdeixanum2(EDTQTD_COMA_P2.Text);
EDTQTD_COMA_P3.Text:=fdeixanum2(EDTQTD_COMA_P3.Text);
EDTQTD_COMA_P4.Text:=fdeixanum2(EDTQTD_COMA_P4.Text);
EDTQTD_COMA_P5.Text:=fdeixanum2(EDTQTD_COMA_P5.Text);
EDTQTD_COMA_P6.Text:=fdeixanum2(EDTQTD_COMA_P6.Text);
EDTQTD_TAMANHO.Text:=fdeixanum2(EDTQTD_TAMANHO.Text);

LBLDESCR_COMA_P1.Text:=fdeixanum2(LBLDESCR_COMA_P1.Text);
LBLDESCR_COMA_P2.Text:=fdeixanum2(LBLDESCR_COMA_P2.Text);
LBLDESCR_COMA_P3.Text:=fdeixanum2(LBLDESCR_COMA_P3.Text);
LBLDESCR_COMA_P4.Text:=fdeixanum2(LBLDESCR_COMA_P4.Text);
LBLDESCR_COMA_P5.Text:=fdeixanum2(LBLDESCR_COMA_P5.Text);
LBLDESCR_COMA_P6.Text:=fdeixanum2(LBLDESCR_COMA_P6.Text);

EDTDESCR_COMA_P1.Text:=fdeixanum2(EDTDESCR_COMA_P1.Text);
EDTDESCR_COMA_P2.Text:=fdeixanum2(EDTDESCR_COMA_P2.Text);
EDTDESCR_COMA_P3.Text:=fdeixanum2(EDTDESCR_COMA_P3.Text);
EDTDESCR_COMA_P4.Text:=fdeixanum2(EDTDESCR_COMA_P4.Text);
EDTDESCR_COMA_P5.Text:=fdeixanum2(EDTDESCR_COMA_P5.Text);
EDTDESCR_COMA_P6.Text:=fdeixanum2(EDTDESCR_COMA_P6.Text);
EDTDESCR_TAMANHO.Text:=fdeixanum2(EDTDESCR_TAMANHO.Text);


LBXLPOSCODPRO_COM_LOP1.Text:=fdeixanum2(LBXLPOSCODPRO_COM_LOP1.Text);
LBXLPOSCODPRO_COM_LOP2.Text:=fdeixanum2(LBXLPOSCODPRO_COM_LOP2.Text);
LBXLPOSCODPRO_COM_LOP3.Text:=fdeixanum2(LBXLPOSCODPRO_COM_LOP3.Text);
LBXLPOSCODPRO_COM_LOP4.Text:=fdeixanum2(LBXLPOSCODPRO_COM_LOP4.Text);

LBXLPOSLOTE_COM_LOP1.Text:=fdeixanum2(LBXLPOSLOTE_COM_LOP1.Text);
LBXLPOSLOTE_COM_LOP2.Text:=fdeixanum2(LBXLPOSLOTE_COM_LOP2.Text);
LBXLPOSLOTE_COM_LOP3.Text:=fdeixanum2(LBXLPOSLOTE_COM_LOP3.Text);
LBXLPOSLOTE_COM_LOP4.Text:=fdeixanum2(LBXLPOSLOTE_COM_LOP4.Text);

LBXLPOSDTVCTO_COM_LOP1.Text:=fdeixanum2(LBXLPOSDTVCTO_COM_LOP1.Text);
LBXLPOSDTVCTO_COM_LOP2.Text:=fdeixanum2(LBXLPOSDTVCTO_COM_LOP2.Text);
LBXLPOSDTVCTO_COM_LOP3.Text:=fdeixanum2(LBXLPOSDTVCTO_COM_LOP3.Text);
LBXLPOSDTVCTO_COM_LOP4.Text:=fdeixanum2(LBXLPOSDTVCTO_COM_LOP4.Text);

LBXLPOSSECAO_COM_LOP1.Text:=fdeixanum2(LBXLPOSSECAO_COM_LOP1.Text);
LBXLPOSSECAO_COM_LOP2.Text:=fdeixanum2(LBXLPOSSECAO_COM_LOP2.Text);
LBXLPOSSECAO_COM_LOP3.Text:=fdeixanum2(LBXLPOSSECAO_COM_LOP3.Text);
LBXLPOSSECAO_COM_LOP4.Text:=fdeixanum2(LBXLPOSSECAO_COM_LOP4.Text);

LBXLPOSCABPRO_COMLO_P1.Text:=fdeixanum2(LBXLPOSCABPRO_COMLO_P1.Text);
LBXLPOSCABPRO_COMLO_P2.Text:=fdeixanum2(LBXLPOSCABPRO_COMLO_P2.Text);
LBXLPOSCABPRO_COMLO_P3.Text:=fdeixanum2(LBXLPOSCABPRO_COMLO_P3.Text);
LBXLPOSCABPRO_COMLO_P4.Text:=fdeixanum2(LBXLPOSCABPRO_COMLO_P4.Text);




if ValInt(QP01.Text)<>0 then
   panel_modelo.Height:=ValInt(QP01.Text) div 2;
if CB_IMPBORDAEXT.Checked then
   begin
   BORDAEXT.Visible:=true;
   if valint(LBXBORDAEXT_COM_XP1.Text)<>0 then
      BORDAEXT.Left:=valint(LBXBORDAEXT_COM_XP1.Text) div 2;
   if valint(LBXBORDAEXT_COM_XP2.Text)<>0 then
      BORDAEXT.Top:=valint(LBXBORDAEXT_COM_XP2.Text) div 2;
   if valint(LBXBORDAEXT_COM_XP3.Text)<>0 then
      BORDAEXT.Pen.Width:=valint(LBXBORDAEXT_COM_XP3.Text) div 2;

   if (valint(LBXBORDAEXT_COM_XP4.Text)<>0) then
      BORDAEXT.Width:=(valint(LBXBORDAEXT_COM_XP4.Text))  div 2;
//   if (valint(LBXBORDAEXT_COM_XP1.Text)<>0) and (valint(LBXBORDAEXT_COM_XP4.Text)<>0) then
//      BORDAEXT.Width:=(valint(LBXBORDAEXT_COM_XP4.Text)-valint(LBXBORDAEXT_COM_XP1.Text))  div 2;

   if (valint(LBXBORDAEXT_COM_XP5.Text)<>0) then
      BORDAEXT.Height:=(valint(LBXBORDAEXT_COM_XP5.Text))  div 2;

//   if (valint(LBXBORDAEXT_COM_XP2.Text)<>0) and (valint(LBXBORDAEXT_COM_XP5.Text)<>0) then
//      BORDAEXT.Height:=(valint(LBXBORDAEXT_COM_XP5.Text)-valint(LBXBORDAEXT_COM_XP2.Text))  div 2;

   end
else
   BORDAEXT.Visible:=false;


if CB_IMP_LPOSCODPRO.Checked then
   begin
   LPOS_CODPRO.Visible:=true;
   if valint(LBXLPOSCODPRO_COM_LOP1.Text)<>0 then
      LPOS_CODPRO.Left:=valint(LBXLPOSCODPRO_COM_LOP1.Text) div 2;
   if valint(LBXLPOSCODPRO_COM_LOP2.Text)<>0 then
      LPOS_CODPRO.Top:=valint(LBXLPOSCODPRO_COM_LOP2.Text) div 2;

   if (valint(LBXLPOSCODPRO_COM_LOP3.Text)<>0) then
      LPOS_CODPRO.Width:=(valint(LBXLPOSCODPRO_COM_LOP3.Text))  div 2;
   LPOS_CODPRO.Width:=LPOS_CODPRO.Width-1;

//   if (valint(LBXBORDAEXT_COM_XP1.Text)<>0) and (valint(LBXBORDAEXT_COM_XP4.Text)<>0) then
//      BORDAEXT.Width:=(valint(LBXBORDAEXT_COM_XP4.Text)-valint(LBXBORDAEXT_COM_XP1.Text))  div 2;

   if (valint(LBXLPOSCODPRO_COM_LOP4.Text)<>0) then
      LPOS_CODPRO.Height:=(valint(LBXLPOSCODPRO_COM_LOP4.Text))  div 2;
   LPOS_CODPRO.Height:=LPOS_CODPRO.Height-1;

//   if (valint(LBXBORDAEXT_COM_XP2.Text)<>0) and (valint(LBXBORDAEXT_COM_XP5.Text)<>0) then
//      BORDAEXT.Height:=(valint(LBXBORDAEXT_COM_XP5.Text)-valint(LBXBORDAEXT_COM_XP2.Text))  div 2;

   end
else
   LPOS_CODPRO.Visible:=false;


if CB_IMP_LPOSCABPRO.Checked then
   begin
   LPOS_CABPRO.Visible:=true;
   if valint(LBXLPOSCABPRO_COMLO_P1.Text)<>0 then
      LPOS_CABPRO.Left:=valint(LBXLPOSCABPRO_COMLO_P1.Text) div 2;
   if valint(LBXLPOSCABPRO_COMLO_P2.Text)<>0 then
      LPOS_CABPRO.Top:=valint(LBXLPOSCABPRO_COMLO_P2.Text) div 2;

   if (valint(LBXLPOSCABPRO_COMLO_P3.Text)<>0) then
      LPOS_CABPRO.Width:=(valint(LBXLPOSCABPRO_COMLO_P3.Text))  div 2;
   LPOS_CABPRO.Width:=LPOS_CABPRO.Width-1;

//   if (valint(LBXBORDAEXT_COM_XP1.Text)<>0) and (valint(LBXBORDAEXT_COM_XP4.Text)<>0) then
//      BORDAEXT.Width:=(valint(LBXBORDAEXT_COM_XP4.Text)-valint(LBXBORDAEXT_COM_XP1.Text))  div 2;

   if (valint(LBXLPOSCABPRO_COMLO_P4.Text)<>0) then
      LPOS_CABPRO.Height:=(valint(LBXLPOSCABPRO_COMLO_P4.Text))  div 2;
   LPOS_CABPRO.Height:=LPOS_CABPRO.Height-1;

//   if (valint(LBXBORDAEXT_COM_XP2.Text)<>0) and (valint(LBXBORDAEXT_COM_XP5.Text)<>0) then
//      BORDAEXT.Height:=(valint(LBXBORDAEXT_COM_XP5.Text)-valint(LBXBORDAEXT_COM_XP2.Text))  div 2;

   end
else
   LPOS_CABPRO.Visible:=false;




if CB_IMP_LPOSLOTE.Checked then
   begin
   LPOS_LOTE.Visible:=true;

   if valint(LBXLPOSLOTE_COM_LOP1.Text)<>0 then
      LPOS_LOTE.Left:=valint(LBXLPOSLOTE_COM_LOP1.Text) div 2;
   if valint(LBXLPOSLOTE_COM_LOP2.Text)<>0 then
      LPOS_LOTE.Top:=valint(LBXLPOSLOTE_COM_LOP2.Text) div 2;

   if (valint(LBXLPOSLOTE_COM_LOP3.Text)<>0) then
      LPOS_LOTE.Width:=(valint(LBXLPOSLOTE_COM_LOP3.Text))  div 2;
   LPOS_LOTE.Width:=LPOS_LOTE.Width-1;

   if (valint(LBXLPOSLOTE_COM_LOP4.Text)<>0) then
      LPOS_LOTE.Height:=(valint(LBXLPOSLOTE_COM_LOP4.Text))  div 2;
   LPOS_LOTE.Height:=LPOS_LOTE.Height-1;

   end
else
   LPOS_LOTE.Visible:=false;


if CB_IMP_LPOSDTVCTO.Checked then
   begin
   LPOS_DTVCTO.Visible:=true;
   if valint(LBXLPOSDTVCTO_COM_LOP1.Text)<>0 then
      LPOS_DTVCTO.Left:=valint(LBXLPOSDTVCTO_COM_LOP1.Text) div 2;
   if valint(LBXLPOSDTVCTO_COM_LOP2.Text)<>0 then
      LPOS_DTVCTO.Top:=valint(LBXLPOSDTVCTO_COM_LOP2.Text) div 2;

   if (valint(LBXLPOSDTVCTO_COM_LOP3.Text)<>0) then
      LPOS_DTVCTO.Width:=(valint(LBXLPOSDTVCTO_COM_LOP3.Text))  div 2;
   LPOS_DTVCTO.Width:=LPOS_DTVCTO.Width-1;
   if (valint(LBXLPOSDTVCTO_COM_LOP4.Text)<>0) then
      LPOS_DTVCTO.Height:=(valint(LBXLPOSDTVCTO_COM_LOP4.Text))  div 2;
   LPOS_DTVCTO.Height:=LPOS_DTVCTO.Height-1;

   end
else
   LPOS_DTVCTO.Visible:=false;



if CB_IMP_LPOSSECAO.Checked then
   begin
   LPOS_SECAO.Visible:=true;
   if valint(LBXLPOSSECAO_COM_LOP1.Text)<>0 then
      LPOS_SECAO.Left:=valint(LBXLPOSSECAO_COM_LOP1.Text) div 2;
   if valint(LBXLPOSSECAO_COM_LOP2.Text)<>0 then
      LPOS_SECAO.Top:=valint(LBXLPOSSECAO_COM_LOP2.Text) div 2;

   if (valint(LBXLPOSSECAO_COM_LOP3.Text)<>0) then
      LPOS_SECAO.Width:=(valint(LBXLPOSSECAO_COM_LOP3.Text))  div 2;
   LPOS_SECAO.Width:=LPOS_SECAO.Width-1;
   if (valint(LBXLPOSSECAO_COM_LOP4.Text)<>0) then
      LPOS_SECAO.Height:=(valint(LBXLPOSSECAO_COM_LOP4.Text))  div 2;
   LPOS_SECAO.Height:=LPOS_SECAO.Height-1;

   end
else
   LPOS_SECAO.Visible:=false;




if CB_IMP_LPOSCABPRO.Checked then
   begin
   LPOS_CABPRO.Visible:=true;
   if valint(LBXLPOSCABPRO_COMLO_P1.Text)<>0 then
      LPOS_CABPRO.Left:=valint(LBXLPOSCABPRO_COMLO_P1.Text) div 2;
   if valint(LBXLPOSCABPRO_COMLO_P2.Text)<>0 then
      LPOS_CABPRO.Top:=valint(LBXLPOSCABPRO_COMLO_P2.Text) div 2;

   if (valint(LBXLPOSCABPRO_COMLO_P3.Text)<>0) then
      LPOS_CABPRO.Width:=(valint(LBXLPOSCABPRO_COMLO_P3.Text))  div 2;
   LPOS_CABPRO.Width:=LPOS_CABPRO.Width-1;
   if (valint(LBXLPOSCABPRO_COMLO_P4.Text)<>0) then
      LPOS_CABPRO.Height:=(valint(LBXLPOSCABPRO_COMLO_P4.Text))  div 2;
   LPOS_CABPRO.Height:=LPOS_CABPRO.Height-1;

   end
else
   LPOS_CABPRO.Visible:=false;



if CB_IMP_LBLCODPRO.Checked then
   begin
   lbl_codpro.Visible:=true;
   fAjustaTamanhoFonte(LBLCODPRO_COMA_P4.Text);
   lbl_codpro.Caption:= LBLCODPRO.Text;
   if valint(LBLCODPRO_COMA_P5.Text)>valint(LBLCODPRO_COMA_P6.Text) then
      lbl_codpro.Font.Size:=(mtam_mult*(valint(LBLCODPRO_COMA_P5.Text)))*-1
   else if valint(LBLCODPRO_COMA_P6.Text)>valint(LBLCODPRO_COMA_P5.Text) then
      lbl_codpro.Font.Size:=(mtam_mult*(valint(LBLCODPRO_COMA_P6.Text)))*-1
   else
      lbl_codpro.Font.Size:=mtam_nor;

   if CB_LBLCODPRO_INVERSO_COMA_P7.Checked then
      begin
      lbl_codpro.Font.Color:=clWhite;
      lbl_codpro.Color:=clBlack;
      end
   else
      begin
      lbl_codpro.Font.Color:=clWindowText;
      lbl_codpro.Color     :=clWindow;
      end;
   lbl_codpro.Left       :=valint(LBLCODPRO_COMA_P1.Text) div 2;
   lbl_codpro.top:=valint(LBLCODPRO_COMA_P2.Text) div 2;
   end
else
   lbl_codpro.Visible:=false;


if CB_IMP_EDTCODPRO.Checked then
   begin
   edt_codpro.Visible:=true;
   fAjustaTamanhoFonte(EDTCODPRO_COMA_P4.Text);
   if valint(EDTCODPRO_COMA_P5.Text)>valint(EDTCODPRO_COMA_P6.Text) then
      edt_codpro.Font.Size:=(mtam_mult*(valint(EDTCODPRO_COMA_P5.Text)))*-1
   else if valint(EDTCODPRO_COMA_P6.Text)>valint(EDTCODPRO_COMA_P5.Text) then
      edt_codpro.Font.Size:=(mtam_mult*(valint(EDTCODPRO_COMA_P6.Text)))*-1
   else
      edt_codpro.Font.Size:=mtam_nor;

//   edt_codpro.Caption:=centra(EDTCODPRO.Text,' ',valint(EDTCODPRO_TAMANHO.Text));
   edt_codpro.Caption:=EDTCODPRO.Text;
   if CB_EDTCODPRO_INVERSO_COMA_P7.Checked then
      begin
      edt_codpro.Font.Color:=clWhite;
      edt_codpro.Color:=clBlack;
      end
   else
      begin
      edt_codpro.Font.Color:=clWindowText;
      edt_codpro.Color     :=clWindow;
      end;
   edt_codpro.Left       :=valint(EDTCODPRO_COMA_P1.Text) div 2;
   edt_codpro.top        :=valint(EDTCODPRO_COMA_P2.Text) div 2;
   end
else
   edt_codpro.Visible:=false;

// proxima sequencia

if CB_IMP_LBLLOTE.Checked then
   begin
   lbl_lote.Visible:=true;
   fAjustaTamanhoFonte(LBLLOTE_COMA_P4.Text);
   lbl_LOTE.Caption:= LBLLOTE.Text;
   if valint(LBLLOTE_COMA_P5.Text)>valint(LBLLOTE_COMA_P6.Text) then
      lbl_LOTE.Font.Size:=(mtam_mult*(valint(LBLLOTE_COMA_P5.Text)))*-1
   else if valint(LBLLOTE_COMA_P6.Text)>valint(LBLLOTE_COMA_P5.Text) then
      lbl_LOTE.Font.Size:=(mtam_mult*(valint(LBLLOTE_COMA_P6.Text)))*-1
   else
      lbl_LOTE.Font.Size:=mtam_nor;

   if CB_LBLLOTE_INVERSO_COMA_P7.Checked then
      begin
      lbl_LOTE.Font.Color:=clWhite;
      lbl_LOTE.Color:=clBlack;
      end
   else
      begin
      lbl_LOTE.Font.Color:=clWindowText;
      lbl_LOTE.Color     :=clWindow;
      end;
   lbl_LOTE.Left       :=valint(LBLLOTE_COMA_P1.Text) div 2;
   lbl_LOTE.top:=valint(LBLLOTE_COMA_P2.Text) div 2;
   end
else
   lbl_LOTE.Visible:=false;


if CB_IMP_EDTLOTE.Checked then
   begin
   edt_lote.Visible:=true;
   fAjustaTamanhoFonte(EDTLOTE_COMA_P4.Text);
   if valint(EDTLOTE_COMA_P5.Text)>valint(EDTLOTE_COMA_P6.Text) then
      edt_LOTE.Font.Size:=(mtam_mult*(valint(EDTLOTE_COMA_P5.Text)))*-1
   else if valint(EDTLOTE_COMA_P6.Text)>valint(EDTLOTE_COMA_P5.Text) then
      edt_LOTE.Font.Size:=(mtam_mult*(valint(EDTLOTE_COMA_P6.Text)))*-1
   else
      edt_LOTE.Font.Size:=mtam_nor;

//   edt_LOTE.Caption:=centra(EDTLOTE.Text,' ',valint(EDTLOTE_TAMANHO.Text));
   edt_LOTE.Caption:=EDTLOTE.Text;
   if CB_EDTLOTE_INVERSO_COMA_P7.Checked then
      begin
      edt_LOTE.Font.Color:=clWhite;
      edt_LOTE.Color:=clBlack;
      end
   else
      begin
      edt_LOTE.Font.Color:=clWindowText;
      edt_LOTE.Color     :=clWindow;
      end;
   edt_LOTE.Left       :=valint(EDTLOTE_COMA_P1.Text) div 2;
   edt_LOTE.top        :=valint(EDTLOTE_COMA_P2.Text) div 2;
   end
else
   edt_LOTE.Visible:=false;
// sequencia do vencimento
if CB_IMP_LBLDTVCTO.Checked then
   begin
   fAjustaTamanhoFonte(LBLDTVCTO_COMA_P4.Text);
   lbl_dtvcto.Visible:=true;
   lbl_DTVCTO.Caption:= LBLDTVCTO.Text;
   if valint(LBLDTVCTO_COMA_P5.Text)>valint(LBLDTVCTO_COMA_P6.Text) then
      lbl_DTVCTO.Font.Size:=(mtam_mult*(valint(LBLDTVCTO_COMA_P5.Text)))*-1
   else if valint(LBLDTVCTO_COMA_P6.Text)>valint(LBLDTVCTO_COMA_P5.Text) then
      lbl_DTVCTO.Font.Size:=(mtam_mult*(valint(LBLDTVCTO_COMA_P6.Text)))*-1
   else
      lbl_DTVCTO.Font.Size:=mtam_nor;

   if CB_LBLDTVCTO_INVERSO_COMA_P7.Checked then
      begin
      lbl_DTVCTO.Font.Color:=clWhite;
      lbl_DTVCTO.Color:=clBlack;
      end
   else
      begin
      lbl_DTVCTO.Font.Color:=clWindowText;
      lbl_DTVCTO.Color     :=clWindow;
      end;
   lbl_DTVCTO.Left       :=valint(LBLDTVCTO_COMA_P1.Text) div 2;
   lbl_DTVCTO.top:=valint(LBLDTVCTO_COMA_P2.Text) div 2;
   end
else
   lbl_DTVCTO.Visible:=false;


if CB_IMP_EDTDTVCTO.Checked then
   begin
   EDTDTVCTO.Visible:=true;
   fAjustaTamanhoFonte(EDTDTVCTO_COMA_P4.Text);
   if valint(EDTDTVCTO_COMA_P5.Text)>valint(EDTDTVCTO_COMA_P6.Text) then
      edt_DTVCTO.Font.Size:=(mtam_mult*(valint(EDTDTVCTO_COMA_P5.Text)))*-1
   else if valint(EDTDTVCTO_COMA_P6.Text)>valint(EDTDTVCTO_COMA_P5.Text) then
      edt_DTVCTO.Font.Size:=(mtam_mult*(valint(EDTDTVCTO_COMA_P6.Text)))*-1
   else
      edt_DTVCTO.Font.Size:=mtam_nor;

//   edt_DTVCTO.Caption:=centra(EDTDTVCTO.Text,' ',valint(EDTDTVCTO_TAMANHO.Text));
   edt_DTVCTO.Caption:=EDTDTVCTO.Text;
   if CB_EDTDTVCTO_INVERSO_COMA_P7.Checked then
      begin
      edt_DTVCTO.Font.Color:=clWhite;
      edt_DTVCTO.Color:=clBlack;
      end
   else
      begin
      edt_DTVCTO.Font.Color:=clWindowText;
      edt_DTVCTO.Color     :=clWindow;
      end;
   edt_DTVCTO.Left       :=valint(EDTDTVCTO_COMA_P1.Text) div 2;
   edt_DTVCTO.top        :=valint(EDTDTVCTO_COMA_P2.Text) div 2;
   end
else
   edt_DTVCTO.Visible:=false;

// sequencia da secao
if CB_IMP_LBLSECAO.Checked then
   begin
   lbl_secao.Visible:=true;
   fAjustaTamanhoFonte(LBLSECAO_COMA_P4.Text);
   lbl_SECAO.Caption:= LBLSECAO.Text;
   if valint(LBLSECAO_COMA_P5.Text)>valint(LBLSECAO_COMA_P6.Text) then
      lbl_SECAO.Font.Size:=(mtam_mult*(valint(LBLSECAO_COMA_P5.Text)))*-1
   else if valint(LBLSECAO_COMA_P6.Text)>valint(LBLSECAO_COMA_P5.Text) then
      lbl_SECAO.Font.Size:=(mtam_mult*(valint(LBLSECAO_COMA_P6.Text)))*-1
   else
      lbl_SECAO.Font.Size:=mtam_nor;

   if CB_LBLSECAO_INVERSO_COMA_P7.Checked then
      begin
      lbl_SECAO.Font.Color:=clWhite;
      lbl_SECAO.Color:=clBlack;
      end
   else
      begin
      lbl_SECAO.Font.Color:=clWindowText;
      lbl_SECAO.Color     :=clWindow;
      end;
   lbl_SECAO.Left       :=valint(LBLSECAO_COMA_P1.Text) div 2;
   lbl_SECAO.top:=valint(LBLSECAO_COMA_P2.Text) div 2;
   end
else
   lbl_SECAO.Visible:=false;


if CB_IMP_EDTSECAO.Checked then
   begin
   EDT_SECAO.Visible:=true;
   fAjustaTamanhoFonte(EDTSECAO_COMA_P4.Text);
   if valint(EDTSECAO_COMA_P5.Text)>valint(EDTSECAO_COMA_P6.Text) then
      edt_SECAO.Font.Size:=(mtam_mult*(valint(EDTSECAO_COMA_P5.Text)))*-1
   else if valint(EDTSECAO_COMA_P6.Text)>valint(EDTSECAO_COMA_P5.Text) then
      edt_SECAO.Font.Size:=(mtam_mult*(valint(EDTSECAO_COMA_P6.Text)))*-1
   else
      edt_SECAO.Font.Size:=mtam_nor;

//   edt_SECAO.Caption:=centra(EDTSECAO.Text,' ',valint(EDTSECAO_TAMANHO.Text));
   edt_SECAO.Caption:=EDTSECAO.Text;
   if CB_EDTSECAO_INVERSO_COMA_P7.Checked then
      begin
      edt_SECAO.Font.Color:=clWhite;
      edt_SECAO.Color:=clBlack;
      end
   else
      begin
      edt_SECAO.Font.Color:=clWindowText;
      edt_SECAO.Color     :=clWindow;
      end;
   edt_SECAO.Left       :=valint(EDTSECAO_COMA_P1.Text) div 2;
   edt_SECAO.top        :=valint(EDTSECAO_COMA_P2.Text) div 2;
   end
else
   edt_SECAO.Visible:=false;
//quantidade

if CB_IMP_LBLQTD.Checked then
   begin
   fAjustaTamanhoFonte(LBLQTD_COMA_P4.Text);
   lbl_qtd.Visible:=true;
   lbl_QTD.Caption:= LBLQTD.Text;
   if valint(LBLQTD_COMA_P5.Text)>valint(LBLQTD_COMA_P6.Text) then
      lbl_QTD.Font.Size:=(mtam_mult*(valint(LBLQTD_COMA_P5.Text)))*-1
   else if valint(LBLQTD_COMA_P6.Text)>valint(LBLQTD_COMA_P5.Text) then
      lbl_QTD.Font.Size:=(mtam_mult*(valint(LBLQTD_COMA_P6.Text)))*-1
   else
      lbl_QTD.Font.Size:=mtam_nor;

   if CB_LBLQTD_INVERSO_COMA_P7.Checked then
      begin
      lbl_QTD.Font.Color:=clWhite;
      lbl_QTD.Color:=clBlack;
      end
   else
      begin
      lbl_QTD.Font.Color:=clWindowText;
      lbl_QTD.Color     :=clWindow;
      end;
   lbl_QTD.Left       :=valint(LBLQTD_COMA_P1.Text) div 2;
   lbl_QTD.top:=valint(LBLQTD_COMA_P2.Text) div 2;
   end
else
   lbl_QTD.Visible:=false;


if CB_IMP_EDTQTD.Checked then
   begin
   edt_qtd.Visible:=true;
   fAjustaTamanhoFonte(EDTQTD_COMA_P4.Text);

   if valint(EDTQTD_COMA_P5.Text)>valint(EDTQTD_COMA_P6.Text) then
      edt_QTD.Font.Size:=(mtam_mult*(valint(EDTQTD_COMA_P5.Text)))*-1
   else if valint(EDTQTD_COMA_P6.Text)>valint(EDTQTD_COMA_P5.Text) then
      edt_QTD.Font.Size:=(mtam_mult*(valint(EDTQTD_COMA_P6.Text)))*-1
   else
      edt_QTD.Font.Size:=mtam_nor;

//   edt_QTD.Caption:=centra(EDTQTD.Text,' ',valint(EDTQTD_TAMANHO.Text));
   edt_QTD.Caption:=EDTQTD.Text;
   if CB_EDTQTD_INVERSO_COMA_P7.Checked then
      begin
      edt_QTD.Font.Color:=clWhite;
      edt_QTD.Color:=clBlack;
      end
   else
      begin
      edt_QTD.Font.Color:=clWindowText;
      edt_QTD.Color     :=clWindow;
      end;
   edt_QTD.Left       :=valint(EDTQTD_COMA_P1.Text) div 2;
   edt_QTD.top        :=valint(EDTQTD_COMA_P2.Text) div 2;
   end
else
   edt_QTD.Visible:=false;
// descricao

if CB_IMP_LBLDESCR.Checked then
   begin
   lbl_descr.Visible:=true;
   fAjustaTamanhoFonte(LBLDESCR_COMA_P4.Text);
   lbl_DESCR.Caption:= LBLDESCR.Text;
   if valint(LBLDESCR_COMA_P5.Text)>valint(LBLDESCR_COMA_P6.Text) then
      lbl_DESCR.Font.Size:=(mtam_mult*(valint(LBLDESCR_COMA_P5.Text)))*-1
   else if valint(LBLDESCR_COMA_P6.Text)>valint(LBLDESCR_COMA_P5.Text) then
      lbl_DESCR.Font.Size:=(mtam_mult*(valint(LBLDESCR_COMA_P6.Text)))*-1
   else
      lbl_DESCR.Font.Size:=mtam_nor;

   if CB_LBLDESCR_INVERSO_COMA_P7.Checked then
      begin
      lbl_DESCR.Font.Color:=clWhite;
      lbl_DESCR.Color:=clBlack;
      end
   else
      begin
      lbl_DESCR.Font.Color:=clWindowText;
      lbl_DESCR.Color     :=clWindow;
      end;
   lbl_DESCR.Left       :=valint(LBLDESCR_COMA_P1.Text) div 2;
   lbl_DESCR.top:=valint(LBLDESCR_COMA_P2.Text) div 2;
   end
else
   lbl_DESCR.Visible:=false;


if CB_IMP_EDTDESCR.Checked then
   begin
   edt_descr.Visible:=true;
   fAjustaTamanhoFonte(EDTDESCR_COMA_P4.Text);
   if valint(EDTDESCR_COMA_P5.Text)>valint(EDTDESCR_COMA_P6.Text) then
      edt_DESCR.Font.Size:=(mtam_mult*(valint(EDTDESCR_COMA_P5.Text)))*-1
   else if valint(EDTDESCR_COMA_P6.Text)>valint(EDTDESCR_COMA_P5.Text) then
      edt_DESCR.Font.Size:=(mtam_mult*(valint(EDTDESCR_COMA_P6.Text)))*-1
   else
      edt_DESCR.Font.Size:=mtam_nor;

//   edt_DESCR.Caption:=centra(EDTDESCR.Text,' ',valint(EDTDESCR_TAMANHO.Text));
   edt_DESCR.Caption:=EDTDESCR.Text;
   if CB_EDTDESCR_INVERSO_COMA_P7.Checked then
      begin
      edt_DESCR.Font.Color:=clWhite;
      edt_DESCR.Color:=clBlack;
      end
   else
      begin
      edt_DESCR.Font.Color:=clWindowText;
      edt_DESCR.Color     :=clWindow;
      end;
   edt_DESCR.Left       :=valint(EDTDESCR_COMA_P1.Text) div 2;
   edt_DESCR.top        :=valint(EDTDESCR_COMA_P2.Text) div 2;
   end
else
   edt_DESCR.Visible:=false;



end;
procedure TFrm_ProCodBar.QP01Exit(Sender: TObject);
begin
fAtualizarDemo(0);
end;


function fAjustaTamanhoFonte(pComando: String): boolean;
begin
if valint(pComando)=5 then
   begin
   mtam_nor :=-14;
   mtam_mult:=11;
   end
else if valint(pComando)=4 then
   begin
   mtam_nor :=-11;
   mtam_mult:=10;
   end
else if valint(pComando)=3 then
   begin
   mtam_nor :=-10;
   mtam_mult:=9;
   end
else if valint(pComando)=2 then
   begin
   mtam_nor :=-9;
   mtam_mult:=5;
   end
else
   begin
   mtam_nor :=-8;
   mtam_mult:=3;
   end;
result:=true;
end;
procedure TFrm_ProCodBar.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePage=tsConfigT02 then
   fAtualizarDemo(0);
end;

procedure TFrm_ProCodBar.SpeedButton1Click(Sender: TObject);
begin
if fmensagem('Quer Realmente Salvas os dados como Padrão?',0,['1','2'],2)<>mrYes then
   exit;
fDeletaPadroes(0,'_PROCODBAR','');
fGravaPadroes(0,'QP01'                        ,'text'   ,'_PROCODBAR',QP01.Text);
fGravaPadroes(0,'QP02'                        ,'text'   ,'_PROCODBAR',QP02.Text);

fGravaPadroes(0,'LBLCODPRO'                   ,'text'   ,'_PROCODBAR',LBLCODPRO.Text);
fGravaPadroes(0,'CB_IMP_LBLCODPRO'            ,'checked','_PROCODBAR',iif(CB_IMP_LBLCODPRO.Checked,'true','false'));
fGravaPadroes(0,'CB_LBLCODPRO_INVERSO_COMA_P7','checked','_PROCODBAR',iif(CB_LBLCODPRO_INVERSO_COMA_P7.Checked,'true','false'));
fGravaPadroes(0,'LBLCODPRO_COMA_P1'           ,'text'   ,'_PROCODBAR',LBLCODPRO_COMA_P1.Text);
fGravaPadroes(0,'LBLCODPRO_COMA_P2'           ,'text'   ,'_PROCODBAR',LBLCODPRO_COMA_P2.Text);
fGravaPadroes(0,'LBLCODPRO_COMA_P3'           ,'text'   ,'_PROCODBAR',LBLCODPRO_COMA_P3.Text);
fGravaPadroes(0,'LBLCODPRO_COMA_P4'           ,'text'   ,'_PROCODBAR',LBLCODPRO_COMA_P4.Text);
fGravaPadroes(0,'LBLCODPRO_COMA_P5'           ,'text'   ,'_PROCODBAR',LBLCODPRO_COMA_P5.Text);
fGravaPadroes(0,'LBLCODPRO_COMA_P6'           ,'text'   ,'_PROCODBAR',LBLCODPRO_COMA_P6.Text);


fGravaPadroes(0,'EDTCODPRO'                   ,'text'   ,'_PROCODBAR',EDTcodpro.Text);
fGravaPadroes(0,'CB_IMP_EDTCODPRO'            ,'checked','_PROCODBAR',iif(CB_IMP_EDTCODPRO.Checked,'true','false'));
fGravaPadroes(0,'CB_EDTCODPRO_INVERSO_COMA_P7','checked','_PROCODBAR',iif(CB_EDTCODPRO_INVERSO_COMA_P7.Checked,'true','false'));
fGravaPadroes(0,'EDTCODPRO_COMA_P1'           ,'text'   ,'_PROCODBAR',EDTCODPRO_COMA_P1.Text);
fGravaPadroes(0,'EDTCODPRO_COMA_P2'           ,'text'   ,'_PROCODBAR',EDTCODPRO_COMA_P2.Text);
fGravaPadroes(0,'EDTCODPRO_COMA_P3'           ,'text'   ,'_PROCODBAR',EDTCODPRO_COMA_P3.Text);
fGravaPadroes(0,'EDTCODPRO_COMA_P4'           ,'text'   ,'_PROCODBAR',EDTCODPRO_COMA_P4.Text);
fGravaPadroes(0,'EDTCODPRO_COMA_P5'           ,'text'   ,'_PROCODBAR',EDTCODPRO_COMA_P5.Text);
fGravaPadroes(0,'EDTCODPRO_COMA_P6'           ,'text'   ,'_PROCODBAR',EDTCODPRO_COMA_P6.Text);


fGravaPadroes(0,'LBLLOTE'                   ,'text'   ,'_PROCODBAR',LBLLOTE.Text);
fGravaPadroes(0,'CB_IMP_LBLLOTE'            ,'checked','_PROCODBAR',iif(CB_IMP_LBLLOTE.Checked,'true','false'));
fGravaPadroes(0,'CB_LBLLOTE_INVERSO_COMA_P7','checked','_PROCODBAR',iif(CB_LBLLOTE_INVERSO_COMA_P7.Checked,'true','false'));
fGravaPadroes(0,'LBLLOTE_COMA_P1'           ,'text'   ,'_PROCODBAR',LBLLOTE_COMA_P1.Text);
fGravaPadroes(0,'LBLLOTE_COMA_P2'           ,'text'   ,'_PROCODBAR',LBLLOTE_COMA_P2.Text);
fGravaPadroes(0,'LBLLOTE_COMA_P3'           ,'text'   ,'_PROCODBAR',LBLLOTE_COMA_P3.Text);
fGravaPadroes(0,'LBLLOTE_COMA_P4'           ,'text'   ,'_PROCODBAR',LBLLOTE_COMA_P4.Text);
fGravaPadroes(0,'LBLLOTE_COMA_P5'           ,'text'   ,'_PROCODBAR',LBLLOTE_COMA_P5.Text);
fGravaPadroes(0,'LBLLOTE_COMA_P6'           ,'text'   ,'_PROCODBAR',LBLLOTE_COMA_P6.Text);


fGravaPadroes(0,'EDTLOTE'                   ,'text'   ,'_PROCODBAR',EDTLOTE.Text);
fGravaPadroes(0,'CB_IMP_EDTLOTE'            ,'checked','_PROCODBAR',iif(CB_IMP_EDTLOTE.Checked,'true','false'));
fGravaPadroes(0,'CB_EDTLOTE_INVERSO_COMA_P7','checked','_PROCODBAR',iif(CB_EDTLOTE_INVERSO_COMA_P7.Checked,'true','false'));
fGravaPadroes(0,'EDTLOTE_COMA_P1'           ,'text'   ,'_PROCODBAR',EDTLOTE_COMA_P1.Text);
fGravaPadroes(0,'EDTLOTE_COMA_P2'           ,'text'   ,'_PROCODBAR',EDTLOTE_COMA_P2.Text);
fGravaPadroes(0,'EDTLOTE_COMA_P3'           ,'text'   ,'_PROCODBAR',EDTLOTE_COMA_P3.Text);
fGravaPadroes(0,'EDTLOTE_COMA_P4'           ,'text'   ,'_PROCODBAR',EDTLOTE_COMA_P4.Text);
fGravaPadroes(0,'EDTLOTE_COMA_P5'           ,'text'   ,'_PROCODBAR',EDTLOTE_COMA_P5.Text);
fGravaPadroes(0,'EDTLOTE_COMA_P6'           ,'text'   ,'_PROCODBAR',EDTLOTE_COMA_P6.Text);



fGravaPadroes(0,'LBLDTVCTO'                   ,'text'   ,'_PROCODBAR',LBLDTVCTO.Text);
fGravaPadroes(0,'CB_IMP_LBLDTVCTO'            ,'checked','_PROCODBAR',iif(CB_IMP_LBLDTVCTO.Checked,'true','false'));
fGravaPadroes(0,'CB_LBLDTVCTO_INVERSO_COMA_P7','checked','_PROCODBAR',iif(CB_LBLDTVCTO_INVERSO_COMA_P7.Checked,'true','false'));
fGravaPadroes(0,'LBLDTVCTO_COMA_P1'           ,'text'   ,'_PROCODBAR',LBLDTVCTO_COMA_P1.Text);
fGravaPadroes(0,'LBLDTVCTO_COMA_P2'           ,'text'   ,'_PROCODBAR',LBLDTVCTO_COMA_P2.Text);
fGravaPadroes(0,'LBLDTVCTO_COMA_P3'           ,'text'   ,'_PROCODBAR',LBLDTVCTO_COMA_P3.Text);
fGravaPadroes(0,'LBLDTVCTO_COMA_P4'           ,'text'   ,'_PROCODBAR',LBLDTVCTO_COMA_P4.Text);
fGravaPadroes(0,'LBLDTVCTO_COMA_P5'           ,'text'   ,'_PROCODBAR',LBLDTVCTO_COMA_P5.Text);
fGravaPadroes(0,'LBLDTVCTO_COMA_P6'           ,'text'   ,'_PROCODBAR',LBLDTVCTO_COMA_P6.Text);


fGravaPadroes(0,'EDTDTVCTO'                   ,'text'   ,'_PROCODBAR',EDTDTVCTO.Text);
fGravaPadroes(0,'CB_IMP_EDTDTVCTO'            ,'checked','_PROCODBAR',iif(CB_IMP_EDTDTVCTO.Checked,'true','false'));
fGravaPadroes(0,'CB_EDTDTVCTO_INVERSO_COMA_P7','checked','_PROCODBAR',iif(CB_EDTDTVCTO_INVERSO_COMA_P7.Checked,'true','false'));
fGravaPadroes(0,'EDTDTVCTO_COMA_P1'           ,'text'   ,'_PROCODBAR',EDTDTVCTO_COMA_P1.Text);
fGravaPadroes(0,'EDTDTVCTO_COMA_P2'           ,'text'   ,'_PROCODBAR',EDTDTVCTO_COMA_P2.Text);
fGravaPadroes(0,'EDTDTVCTO_COMA_P3'           ,'text'   ,'_PROCODBAR',EDTDTVCTO_COMA_P3.Text);
fGravaPadroes(0,'EDTDTVCTO_COMA_P4'           ,'text'   ,'_PROCODBAR',EDTDTVCTO_COMA_P4.Text);
fGravaPadroes(0,'EDTDTVCTO_COMA_P5'           ,'text'   ,'_PROCODBAR',EDTDTVCTO_COMA_P5.Text);
fGravaPadroes(0,'EDTDTVCTO_COMA_P6'           ,'text'   ,'_PROCODBAR',EDTDTVCTO_COMA_P6.Text);


fGravaPadroes(0,'LBLSECAO'                   ,'text'   ,'_PROCODBAR',LBLSECAO.Text);
fGravaPadroes(0,'CB_IMP_LBLSECAO'            ,'checked','_PROCODBAR',iif(CB_IMP_LBLSECAO.Checked,'true','false'));
fGravaPadroes(0,'CB_LBLSECAO_INVERSO_COMA_P7','checked','_PROCODBAR',iif(CB_LBLSECAO_INVERSO_COMA_P7.Checked,'true','false'));
fGravaPadroes(0,'LBLSECAO_COMA_P1'           ,'text'   ,'_PROCODBAR',LBLSECAO_COMA_P1.Text);
fGravaPadroes(0,'LBLSECAO_COMA_P2'           ,'text'   ,'_PROCODBAR',LBLSECAO_COMA_P2.Text);
fGravaPadroes(0,'LBLSECAO_COMA_P3'           ,'text'   ,'_PROCODBAR',LBLSECAO_COMA_P3.Text);
fGravaPadroes(0,'LBLSECAO_COMA_P4'           ,'text'   ,'_PROCODBAR',LBLSECAO_COMA_P4.Text);
fGravaPadroes(0,'LBLSECAO_COMA_P5'           ,'text'   ,'_PROCODBAR',LBLSECAO_COMA_P5.Text);
fGravaPadroes(0,'LBLSECAO_COMA_P6'           ,'text'   ,'_PROCODBAR',LBLSECAO_COMA_P6.Text);


fGravaPadroes(0,'EDTSECAO'                   ,'text'   ,'_PROCODBAR',EDTSECAO.Text);
fGravaPadroes(0,'CB_IMP_EDTSECAO'            ,'checked','_PROCODBAR',iif(CB_IMP_EDTSECAO.Checked,'true','false'));
fGravaPadroes(0,'CB_EDTSECAO_INVERSO_COMA_P7','checked','_PROCODBAR',iif(CB_EDTSECAO_INVERSO_COMA_P7.Checked,'true','false'));
fGravaPadroes(0,'EDTSECAO_COMA_P1'           ,'text'   ,'_PROCODBAR',EDTSECAO_COMA_P1.Text);
fGravaPadroes(0,'EDTSECAO_COMA_P2'           ,'text'   ,'_PROCODBAR',EDTSECAO_COMA_P2.Text);
fGravaPadroes(0,'EDTSECAO_COMA_P3'           ,'text'   ,'_PROCODBAR',EDTSECAO_COMA_P3.Text);
fGravaPadroes(0,'EDTSECAO_COMA_P4'           ,'text'   ,'_PROCODBAR',EDTSECAO_COMA_P4.Text);
fGravaPadroes(0,'EDTSECAO_COMA_P5'           ,'text'   ,'_PROCODBAR',EDTSECAO_COMA_P5.Text);
fGravaPadroes(0,'EDTSECAO_COMA_P6'           ,'text'   ,'_PROCODBAR',EDTSECAO_COMA_P6.Text);


fGravaPadroes(0,'LBLQTD'                   ,'text'   ,'_PROCODBAR',LBLQTD.Text);
fGravaPadroes(0,'CB_IMP_LBLQTD'            ,'checked','_PROCODBAR',iif(CB_IMP_LBLQTD.Checked,'true','false'));
fGravaPadroes(0,'CB_LBLQTD_INVERSO_COMA_P7','checked','_PROCODBAR',iif(CB_LBLQTD_INVERSO_COMA_P7.Checked,'true','false'));
fGravaPadroes(0,'LBLQTD_COMA_P1'           ,'text'   ,'_PROCODBAR',LBLQTD_COMA_P1.Text);
fGravaPadroes(0,'LBLQTD_COMA_P2'           ,'text'   ,'_PROCODBAR',LBLQTD_COMA_P2.Text);
fGravaPadroes(0,'LBLQTD_COMA_P3'           ,'text'   ,'_PROCODBAR',LBLQTD_COMA_P3.Text);
fGravaPadroes(0,'LBLQTD_COMA_P4'           ,'text'   ,'_PROCODBAR',LBLQTD_COMA_P4.Text);
fGravaPadroes(0,'LBLQTD_COMA_P5'           ,'text'   ,'_PROCODBAR',LBLQTD_COMA_P5.Text);
fGravaPadroes(0,'LBLQTD_COMA_P6'           ,'text'   ,'_PROCODBAR',LBLQTD_COMA_P6.Text);


fGravaPadroes(0,'EDTQTD'                   ,'text'   ,'_PROCODBAR',EDTQTD.Text);
fGravaPadroes(0,'CB_IMP_EDTQTD'            ,'checked','_PROCODBAR',iif(CB_IMP_EDTQTD.Checked,'true','false'));
fGravaPadroes(0,'CB_EDTQTD_INVERSO_COMA_P7','checked','_PROCODBAR',iif(CB_EDTQTD_INVERSO_COMA_P7.Checked,'true','false'));
fGravaPadroes(0,'EDTQTD_COMA_P1'           ,'text'   ,'_PROCODBAR',EDTQTD_COMA_P1.Text);
fGravaPadroes(0,'EDTQTD_COMA_P2'           ,'text'   ,'_PROCODBAR',EDTQTD_COMA_P2.Text);
fGravaPadroes(0,'EDTQTD_COMA_P3'           ,'text'   ,'_PROCODBAR',EDTQTD_COMA_P3.Text);
fGravaPadroes(0,'EDTQTD_COMA_P4'           ,'text'   ,'_PROCODBAR',EDTQTD_COMA_P4.Text);
fGravaPadroes(0,'EDTQTD_COMA_P5'           ,'text'   ,'_PROCODBAR',EDTQTD_COMA_P5.Text);
fGravaPadroes(0,'EDTQTD_COMA_P6'           ,'text'   ,'_PROCODBAR',EDTQTD_COMA_P6.Text);



fGravaPadroes(0,'LBLDESCR'                   ,'text'   ,'_PROCODBAR',LBLDESCR.Text);
fGravaPadroes(0,'CB_IMP_LBLDESCR'            ,'checked','_PROCODBAR',iif(CB_IMP_LBLDESCR.Checked,'true','false'));
fGravaPadroes(0,'CB_LBLDESCR_INVERSO_COMA_P7','checked','_PROCODBAR',iif(CB_LBLDESCR_INVERSO_COMA_P7.Checked,'true','false'));
fGravaPadroes(0,'LBLDESCR_COMA_P1'           ,'text'   ,'_PROCODBAR',LBLDESCR_COMA_P1.Text);
fGravaPadroes(0,'LBLDESCR_COMA_P2'           ,'text'   ,'_PROCODBAR',LBLDESCR_COMA_P2.Text);
fGravaPadroes(0,'LBLDESCR_COMA_P3'           ,'text'   ,'_PROCODBAR',LBLDESCR_COMA_P3.Text);
fGravaPadroes(0,'LBLDESCR_COMA_P4'           ,'text'   ,'_PROCODBAR',LBLDESCR_COMA_P4.Text);
fGravaPadroes(0,'LBLDESCR_COMA_P5'           ,'text'   ,'_PROCODBAR',LBLDESCR_COMA_P5.Text);
fGravaPadroes(0,'LBLDESCR_COMA_P6'           ,'text'   ,'_PROCODBAR',LBLDESCR_COMA_P6.Text);


fGravaPadroes(0,'EDTDESCR'                   ,'text'   ,'_PROCODBAR',EDTDESCR.Text);
fGravaPadroes(0,'CB_IMP_EDTDESCR'            ,'checked','_PROCODBAR',iif(CB_IMP_EDTDESCR.Checked,'true','false'));
fGravaPadroes(0,'CB_EDTDESCR_INVERSO_COMA_P7','checked','_PROCODBAR',iif(CB_EDTDESCR_INVERSO_COMA_P7.Checked,'true','false'));
fGravaPadroes(0,'EDTDESCR_COMA_P1'           ,'text'   ,'_PROCODBAR',EDTDESCR_COMA_P1.Text);
fGravaPadroes(0,'EDTDESCR_COMA_P2'           ,'text'   ,'_PROCODBAR',EDTDESCR_COMA_P2.Text);
fGravaPadroes(0,'EDTDESCR_COMA_P3'           ,'text'   ,'_PROCODBAR',EDTDESCR_COMA_P3.Text);
fGravaPadroes(0,'EDTDESCR_COMA_P4'           ,'text'   ,'_PROCODBAR',EDTDESCR_COMA_P4.Text);
fGravaPadroes(0,'EDTDESCR_COMA_P5'           ,'text'   ,'_PROCODBAR',EDTDESCR_COMA_P5.Text);
fGravaPadroes(0,'EDTDESCR_COMA_P6'           ,'text'   ,'_PROCODBAR',EDTDESCR_COMA_P6.Text);

fGravaPadroes(0,'CB_IMP_LPOSCODPRO'          ,'checked','_PROCODBAR',iif(CB_IMP_LPOSCODPRO.Checked,'true','false'));
fGravaPadroes(0,'LBXLPOSCODPRO_COM_LOP1'     ,'text'   ,'_PROCODBAR',LBXLPOSCODPRO_COM_LOP1.Text);
fGravaPadroes(0,'LBXLPOSCODPRO_COM_LOP2'     ,'text'   ,'_PROCODBAR',LBXLPOSCODPRO_COM_LOP2.Text);
fGravaPadroes(0,'LBXLPOSCODPRO_COM_LOP3'     ,'text'   ,'_PROCODBAR',LBXLPOSCODPRO_COM_LOP3.Text);
fGravaPadroes(0,'LBXLPOSCODPRO_COM_LOP4'     ,'text'   ,'_PROCODBAR',LBXLPOSCODPRO_COM_LOP4.Text);

fGravaPadroes(0,'CB_IMP_LPOSLOTE'          ,'checked','_PROCODBAR',iif(CB_IMP_LPOSLOTE.Checked,'true','false'));
fGravaPadroes(0,'LBXLPOSLOTE_COM_LOP1'     ,'text'   ,'_PROCODBAR',LBXLPOSLOTE_COM_LOP1.Text);
fGravaPadroes(0,'LBXLPOSLOTE_COM_LOP2'     ,'text'   ,'_PROCODBAR',LBXLPOSLOTE_COM_LOP2.Text);
fGravaPadroes(0,'LBXLPOSLOTE_COM_LOP3'     ,'text'   ,'_PROCODBAR',LBXLPOSLOTE_COM_LOP3.Text);
fGravaPadroes(0,'LBXLPOSLOTE_COM_LOP4'     ,'text'   ,'_PROCODBAR',LBXLPOSLOTE_COM_LOP4.Text);

fGravaPadroes(0,'CB_IMP_LPOSDTVCTO'          ,'checked','_PROCODBAR',iif(CB_IMP_LPOSDTVCTO.Checked,'true','false'));
fGravaPadroes(0,'LBXLPOSDTVCTO_COM_LOP1'     ,'text'   ,'_PROCODBAR',LBXLPOSDTVCTO_COM_LOP1.Text);
fGravaPadroes(0,'LBXLPOSDTVCTO_COM_LOP2'     ,'text'   ,'_PROCODBAR',LBXLPOSDTVCTO_COM_LOP2.Text);
fGravaPadroes(0,'LBXLPOSDTVCTO_COM_LOP3'     ,'text'   ,'_PROCODBAR',LBXLPOSDTVCTO_COM_LOP3.Text);
fGravaPadroes(0,'LBXLPOSDTVCTO_COM_LOP4'     ,'text'   ,'_PROCODBAR',LBXLPOSDTVCTO_COM_LOP4.Text);

fGravaPadroes(0,'CB_IMP_LPOSSECAO'          ,'checked','_PROCODBAR',iif(CB_IMP_LPOSSECAO.Checked,'true','false'));
fGravaPadroes(0,'LBXLPOSSECAO_COM_LOP1'     ,'text'   ,'_PROCODBAR',LBXLPOSSECAO_COM_LOP1.Text);
fGravaPadroes(0,'LBXLPOSSECAO_COM_LOP2'     ,'text'   ,'_PROCODBAR',LBXLPOSSECAO_COM_LOP2.Text);
fGravaPadroes(0,'LBXLPOSSECAO_COM_LOP3'     ,'text'   ,'_PROCODBAR',LBXLPOSSECAO_COM_LOP3.Text);
fGravaPadroes(0,'LBXLPOSSECAO_COM_LOP4'     ,'text'   ,'_PROCODBAR',LBXLPOSSECAO_COM_LOP4.Text);

fGravaPadroes(0,'CB_IMP_LPOSCODPRO'          ,'checked','_PROCODBAR',iif(CB_IMP_LPOSCODPRO.Checked,'true','false'));
fGravaPadroes(0,'LBXLPOSCODPRO_COM_LOP1'     ,'text'   ,'_PROCODBAR',LBXLPOSCODPRO_COM_LOP1.Text);
fGravaPadroes(0,'LBXLPOSCODPRO_COM_LOP2'     ,'text'   ,'_PROCODBAR',LBXLPOSCODPRO_COM_LOP2.Text);
fGravaPadroes(0,'LBXLPOSCODPRO_COM_LOP3'     ,'text'   ,'_PROCODBAR',LBXLPOSCODPRO_COM_LOP3.Text);
fGravaPadroes(0,'LBXLPOSCODPRO_COM_LOP4'     ,'text'   ,'_PROCODBAR',LBXLPOSCODPRO_COM_LOP4.Text);

fGravaPadroes(0,'CB_IMP_LPOSCABPRO'          ,'checked','_PROCODBAR',iif(CB_IMP_LPOSCABPRO.Checked,'true','false'));
fGravaPadroes(0,'LBXLPOSCABPRO_COMLO_P1'     ,'text'   ,'_PROCODBAR',LBXLPOSCABPRO_COMLO_P1.Text);
fGravaPadroes(0,'LBXLPOSCABPRO_COMLO_P2'     ,'text'   ,'_PROCODBAR',LBXLPOSCABPRO_COMLO_P2.Text);
fGravaPadroes(0,'LBXLPOSCABPRO_COMLO_P3'     ,'text'   ,'_PROCODBAR',LBXLPOSCABPRO_COMLO_P3.Text);
fGravaPadroes(0,'LBXLPOSCABPRO_COMLO_P4'     ,'text'   ,'_PROCODBAR',LBXLPOSCABPRO_COMLO_P4.Text);


fmensagem('Gravado!',0,['0'],0);



end;



procedure TFrm_ProCodBar.sbRestPadraoClick(Sender: TObject);
begin
if fmensagem('Quer Realmente Restaurar os Padroes Iniciais?',0,['1','2'],2)<>mrYes then
   exit;
fDeletaPadroes(0,'_PROCODBAR','');
fmensagem('Restauracao concluida. Este Programa sera Fechado!',0,['0'],0);
close;
end;

function TFrm_ProCodBar.fAtualizarPadraoCfgTermica(ptipo: Integer): Boolean;
begin

if flfilpad(0,'_PROCODBAR','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','QP01',[]) then
      QP01.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','QP02',[]) then
      QP02.Text:=DM4.Tb_FilPad2FPVALOR.Value;

   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLCODPRO',[]) then
      LBLCODPRO.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IMP_LBLCODPRO',[]) then
      CB_IMP_LBLCODPRO.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_LBLCODPRO_INVERSO_COMA_P7',[]) then
      CB_LBLCODPRO_INVERSO_COMA_P7.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLCODPRO_COMA_P1',[]) then
      LBLCODPRO_COMA_P1.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLCODPRO_COMA_P2',[]) then
      LBLCODPRO_COMA_P2.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLCODPRO_COMA_P3',[]) then
      LBLCODPRO_COMA_P3.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLCODPRO_COMA_P4',[]) then
      LBLCODPRO_COMA_P4.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLCODPRO_COMA_P5',[]) then
      LBLCODPRO_COMA_P5.Text:=DM4.Tb_FilPad2FPVALOR.VaLue;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLCODPRO_COMA_P6',[]) then
      LBLCODPRO_COMA_P6.Text:=DM4.Tb_FilPad2FPVALOR.Value;


   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTCODPRO',[]) then
      EDTCODPRO.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IMP_EDTCODPRO',[]) then
      CB_IMP_EDTCODPRO.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_EDTCODPRO_INVERSO_COMA_P7',[]) then
      CB_EDTCODPRO_INVERSO_COMA_P7.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTCODPRO_COMA_P1',[]) then
      EDTCODPRO_COMA_P1.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTCODPRO_COMA_P2',[]) then
      EDTCODPRO_COMA_P2.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTCODPRO_COMA_P3',[]) then
      EDTCODPRO_COMA_P3.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTCODPRO_COMA_P4',[]) then
      EDTCODPRO_COMA_P4.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTCODPRO_COMA_P5',[]) then
      EDTCODPRO_COMA_P5.Text:=DM4.Tb_FilPad2FPVALOR.VaLue;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTCODPRO_COMA_P6',[]) then
      EDTCODPRO_COMA_P6.Text:=DM4.Tb_FilPad2FPVALOR.Value;
// TERMINO CODPRO
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLLOTE',[]) then
      LBLLOTE.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IMP_LBLLOTE',[]) then
      CB_IMP_LBLLOTE.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_LBLLOTE_INVERSO_COMA_P7',[]) then
      CB_LBLLOTE_INVERSO_COMA_P7.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLLOTE_COMA_P1',[]) then
      LBLLOTE_COMA_P1.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLLOTE_COMA_P2',[]) then
      LBLLOTE_COMA_P2.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLLOTE_COMA_P3',[]) then
      LBLLOTE_COMA_P3.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLLOTE_COMA_P4',[]) then
      LBLLOTE_COMA_P4.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLLOTE_COMA_P5',[]) then
      LBLLOTE_COMA_P5.Text:=DM4.Tb_FilPad2FPVALOR.VaLue;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLLOTE_COMA_P6',[]) then
      LBLLOTE_COMA_P6.Text:=DM4.Tb_FilPad2FPVALOR.Value;


   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTLOTE',[]) then
      EDTLOTE.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IMP_EDTLOTE',[]) then
      CB_IMP_EDTLOTE.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_EDTLOTE_INVERSO_COMA_P7',[]) then
      CB_EDTLOTE_INVERSO_COMA_P7.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTLOTE_COMA_P1',[]) then
      EDTLOTE_COMA_P1.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTLOTE_COMA_P2',[]) then
      EDTLOTE_COMA_P2.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTLOTE_COMA_P3',[]) then
      EDTLOTE_COMA_P3.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTLOTE_COMA_P4',[]) then
      EDTLOTE_COMA_P4.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTLOTE_COMA_P5',[]) then
      EDTLOTE_COMA_P5.Text:=DM4.Tb_FilPad2FPVALOR.VaLue;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTLOTE_COMA_P6',[]) then
      EDTLOTE_COMA_P6.Text:=DM4.Tb_FilPad2FPVALOR.Value;
// TERMINO LOTE
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLDTVCTO',[]) then
      LBLDTVCTO.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IMP_LBLDTVCTO',[]) then
      CB_IMP_LBLDTVCTO.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_LBLDTVCTO_INVERSO_COMA_P7',[]) then
      CB_LBLDTVCTO_INVERSO_COMA_P7.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLDTVCTO_COMA_P1',[]) then
      LBLDTVCTO_COMA_P1.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLDTVCTO_COMA_P2',[]) then
      LBLDTVCTO_COMA_P2.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLDTVCTO_COMA_P3',[]) then
      LBLDTVCTO_COMA_P3.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLDTVCTO_COMA_P4',[]) then
      LBLDTVCTO_COMA_P4.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLDTVCTO_COMA_P5',[]) then
      LBLDTVCTO_COMA_P5.Text:=DM4.Tb_FilPad2FPVALOR.VaLue;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLDTVCTO_COMA_P6',[]) then
      LBLDTVCTO_COMA_P6.Text:=DM4.Tb_FilPad2FPVALOR.Value;


   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTDTVCTO',[]) then
      EDTDTVCTO.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IMP_EDTDTVCTO',[]) then
      CB_IMP_EDTDTVCTO.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_EDTDTVCTO_INVERSO_COMA_P7',[]) then
      CB_EDTDTVCTO_INVERSO_COMA_P7.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTDTVCTO_COMA_P1',[]) then
      EDTDTVCTO_COMA_P1.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTDTVCTO_COMA_P2',[]) then
      EDTDTVCTO_COMA_P2.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTDTVCTO_COMA_P3',[]) then
      EDTDTVCTO_COMA_P3.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTDTVCTO_COMA_P4',[]) then
      EDTDTVCTO_COMA_P4.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTDTVCTO_COMA_P5',[]) then
      EDTDTVCTO_COMA_P5.Text:=DM4.Tb_FilPad2FPVALOR.VaLue;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTDTVCTO_COMA_P6',[]) then
      EDTDTVCTO_COMA_P6.Text:=DM4.Tb_FilPad2FPVALOR.Value;
//TEMINO DTVCTO
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLSECAO',[]) then
      LBLSECAO.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IMP_LBLSECAO',[]) then
      CB_IMP_LBLSECAO.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_LBLSECAO_INVERSO_COMA_P7',[]) then
      CB_LBLSECAO_INVERSO_COMA_P7.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLSECAO_COMA_P1',[]) then
      LBLSECAO_COMA_P1.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLSECAO_COMA_P2',[]) then
      LBLSECAO_COMA_P2.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLSECAO_COMA_P3',[]) then
      LBLSECAO_COMA_P3.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLSECAO_COMA_P4',[]) then
      LBLSECAO_COMA_P4.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLSECAO_COMA_P5',[]) then
      LBLSECAO_COMA_P5.Text:=DM4.Tb_FilPad2FPVALOR.VaLue;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLSECAO_COMA_P6',[]) then
      LBLSECAO_COMA_P6.Text:=DM4.Tb_FilPad2FPVALOR.Value;


   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTSECAO',[]) then
      EDTSECAO.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IMP_EDTSECAO',[]) then
      CB_IMP_EDTSECAO.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_EDTSECAO_INVERSO_COMA_P7',[]) then
      CB_EDTSECAO_INVERSO_COMA_P7.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTSECAO_COMA_P1',[]) then
      EDTSECAO_COMA_P1.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTSECAO_COMA_P2',[]) then
      EDTSECAO_COMA_P2.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTSECAO_COMA_P3',[]) then
      EDTSECAO_COMA_P3.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTSECAO_COMA_P4',[]) then
      EDTSECAO_COMA_P4.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTSECAO_COMA_P5',[]) then
      EDTSECAO_COMA_P5.Text:=DM4.Tb_FilPad2FPVALOR.VaLue;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTSECAO_COMA_P6',[]) then
      EDTSECAO_COMA_P6.Text:=DM4.Tb_FilPad2FPVALOR.Value;
// TERMINO SECAO
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLQTD',[]) then
      LBLQTD.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IMP_LBLQTD',[]) then
      CB_IMP_LBLQTD.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_LBLQTD_INVERSO_COMA_P7',[]) then
      CB_LBLQTD_INVERSO_COMA_P7.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLQTD_COMA_P1',[]) then
      LBLQTD_COMA_P1.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLQTD_COMA_P2',[]) then
      LBLQTD_COMA_P2.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLQTD_COMA_P3',[]) then
      LBLQTD_COMA_P3.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLQTD_COMA_P4',[]) then
      LBLQTD_COMA_P4.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLQTD_COMA_P5',[]) then
      LBLQTD_COMA_P5.Text:=DM4.Tb_FilPad2FPVALOR.VaLue;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLQTD_COMA_P6',[]) then
      LBLQTD_COMA_P6.Text:=DM4.Tb_FilPad2FPVALOR.Value;


   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTQTD',[]) then
      EDTQTD.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IMP_EDTQTD',[]) then
      CB_IMP_EDTQTD.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_EDTQTD_INVERSO_COMA_P7',[]) then
      CB_EDTQTD_INVERSO_COMA_P7.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTQTD_COMA_P1',[]) then
      EDTQTD_COMA_P1.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTQTD_COMA_P2',[]) then
      EDTQTD_COMA_P2.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTQTD_COMA_P3',[]) then
      EDTQTD_COMA_P3.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTQTD_COMA_P4',[]) then
      EDTQTD_COMA_P4.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTQTD_COMA_P5',[]) then
      EDTQTD_COMA_P5.Text:=DM4.Tb_FilPad2FPVALOR.VaLue;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTQTD_COMA_P6',[]) then
      EDTQTD_COMA_P6.Text:=DM4.Tb_FilPad2FPVALOR.Value;
// TERMINO QTD
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLDESCR',[]) then
      LBLDESCR.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IMP_LBLDESCR',[]) then
      CB_IMP_LBLDESCR.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_LBLDESCR_INVERSO_COMA_P7',[]) then
      CB_LBLDESCR_INVERSO_COMA_P7.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLDESCR_COMA_P1',[]) then
      LBLDESCR_COMA_P1.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLDESCR_COMA_P2',[]) then
      LBLDESCR_COMA_P2.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLDESCR_COMA_P3',[]) then
      LBLDESCR_COMA_P3.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLDESCR_COMA_P4',[]) then
      LBLDESCR_COMA_P4.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLDESCR_COMA_P5',[]) then
      LBLDESCR_COMA_P5.Text:=DM4.Tb_FilPad2FPVALOR.VaLue;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBLDESCR_COMA_P6',[]) then
      LBLDESCR_COMA_P6.Text:=DM4.Tb_FilPad2FPVALOR.Value;


   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTDESCR',[]) then
      EDTDESCR.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IMP_EDTDESCR',[]) then
      CB_IMP_EDTDESCR.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_EDTDESCR_INVERSO_COMA_P7',[]) then
      CB_EDTDESCR_INVERSO_COMA_P7.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTDESCR_COMA_P1',[]) then
      EDTDESCR_COMA_P1.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTDESCR_COMA_P2',[]) then
      EDTDESCR_COMA_P2.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTDESCR_COMA_P3',[]) then
      EDTDESCR_COMA_P3.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTDESCR_COMA_P4',[]) then
      EDTDESCR_COMA_P4.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTDESCR_COMA_P5',[]) then
      EDTDESCR_COMA_P5.Text:=DM4.Tb_FilPad2FPVALOR.VaLue;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDTDESCR_COMA_P6',[]) then
      EDTDESCR_COMA_P6.Text:=DM4.Tb_FilPad2FPVALOR.Value;
// TERMINO DESCR

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IMP_LPOSCODPRO',[]) then
      CB_IMP_LPOSCODPRO.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBXLPOSCODPRO_COM_LOP1',[]) then
      LBXLPOSCODPRO_COM_LOP1.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBXLPOSCODPRO_COM_LOP2',[]) then
      LBXLPOSCODPRO_COM_LOP2.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBXLPOSCODPRO_COM_LOP3',[]) then
      LBXLPOSCODPRO_COM_LOP3.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBXLPOSCODPRO_COM_LOP4',[]) then
      LBXLPOSCODPRO_COM_LOP4.Text:=DM4.Tb_FilPad2FPVALOR.Value;
//TERMINO CODPRO
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IMP_LPOSLOTE',[]) then
      CB_IMP_LPOSLOTE.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBXLPOSLOTE_COM_LOP1',[]) then
      LBXLPOSLOTE_COM_LOP1.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBXLPOSLOTE_COM_LOP2',[]) then
      LBXLPOSLOTE_COM_LOP2.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBXLPOSLOTE_COM_LOP3',[]) then
      LBXLPOSLOTE_COM_LOP3.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBXLPOSLOTE_COM_LOP4',[]) then
      LBXLPOSLOTE_COM_LOP4.Text:=DM4.Tb_FilPad2FPVALOR.Value;
// TERMINO LOTE
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IMP_LPOSDTVCTO',[]) then
      CB_IMP_LPOSDTVCTO.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBXLPOSDTVCTO_COM_LOP1',[]) then
      LBXLPOSDTVCTO_COM_LOP1.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBXLPOSDTVCTO_COM_LOP2',[]) then
      LBXLPOSDTVCTO_COM_LOP2.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBXLPOSDTVCTO_COM_LOP3',[]) then
      LBXLPOSDTVCTO_COM_LOP3.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBXLPOSDTVCTO_COM_LOP4',[]) then
      LBXLPOSDTVCTO_COM_LOP4.Text:=DM4.Tb_FilPad2FPVALOR.Value;
// TERMINO DTVCTO

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IMP_LPOSSECAO',[]) then
      CB_IMP_LPOSSECAO.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBXLPOSSECAO_COM_LOP1',[]) then
      LBXLPOSSECAO_COM_LOP1.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBXLPOSSECAO_COM_LOP2',[]) then
      LBXLPOSSECAO_COM_LOP2.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBXLPOSSECAO_COM_LOP3',[]) then
      LBXLPOSSECAO_COM_LOP3.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBXLPOSSECAO_COM_LOP4',[]) then
      LBXLPOSSECAO_COM_LOP4.Text:=DM4.Tb_FilPad2FPVALOR.Value;
// TERMINO SECAO
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IMP_LPOSCABPRO',[]) then
      CB_IMP_LPOSCABPRO.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBXLPOSCABPRO_COMLO_P1',[]) then
      LBXLPOSCABPRO_COMLO_P1.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBXLPOSCABPRO_COMLO_P2',[]) then
      LBXLPOSCABPRO_COMLO_P2.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBXLPOSCABPRO_COMLO_P3',[]) then
      LBXLPOSCABPRO_COMLO_P3.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBXLPOSCABPRO_COMLO_P4',[]) then
      LBXLPOSCABPRO_COMLO_P4.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   end;



if flfilpad(-1,'_PROCODBAR','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_QTDCOL',[]) then
      EDT_QTDCOL.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_ESPACOCOL',[]) then
      EDT_ESPACOCOL.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_ALTETIQ',[]) then
      EDT_ALTETIQ.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_ALTCXTEXTO',[]) then
      EDT_ALTCXTEXTO.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_TAMFONTE',[]) then
      EDT_TAMFONTE.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_MARGEMTOP',[]) then
      edt_margemtop.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_MARGEMRODAPE',[]) then
      edt_margemrodape.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_MARGEMDIREITA',[]) then
      edt_margemDireita.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_MARGEMESQUERDA',[]) then
      edt_margemEsquerda.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_ALTURA_REL',[]) then
      edt_Altura_Rel.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_LARGURA_REL',[]) then
      edt_Largura_Rel.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_QTDCOLIMP',[]) then
      edt_QTDCOLIMP.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_ALINHAR',[]) then
      RG_ALINHAR.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CODBAR',[]) then
      CB_CODBAR.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_NOMEMP',[]) then
      RG_NOMEMP.ItemIndex:=DM4.Tb_FilPad2FPVALOR.AsInteger;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_COMLOGO',[]) then
      cb_comlogo.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CODPRO',[]) then
      cb_codpro.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IMPOUTINF',[]) then
      CB_IMPOUTINF.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_PRECO',[]) then

      cb_preco.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';


   fAtualizarFormulario(0);
   end;

end;

procedure TFrm_ProCodBar.ETI_GRADEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=114) and (valFloat(ETI_CODPRO.Text)<>0) then
   begin
   if Frm_ConsLot=nil then
      Application.CreateForm(TFrm_ConsLot,Frm_ConsLot)
   else
      begin
      Frm_ConsLot.free;
      Frm_ConsLot:=nil;
      Application.CreateForm(TFrm_ConsLot,Frm_ConsLot);
      end;
   flcadlgc(0,0,0,ETI_CODPRO.Text,'','');
   Frm_Conslot.CODPRO.Text:=ETI_CODPRO.Text;
   Frm_ConsLot.NOMPRO.Text:=ETI_NOMPRO.Text;
   Frm_ConsLot.CODPRO.Enabled:=True;
   if valint(copy(mpseg,4,2))=2 then
      begin
      Frm_ConsLot.Caption:='Consulta no arquivo de Grades';
      Frm_ConsLot.DBGrid1.Columns[0].Visible:=false;
      Frm_ConsLot.DBGrid1.Columns[1].Title.Caption:='Grade';
      end;
   Frm_ConsLot.mConsLotOrigem:=1;
   Frm_ConsLot.ShowModal;
   if trim(Frm_ConsLot.plote)<>'' then
      begin
      ETI_GRADE.Text:=Frm_ConsLot.plote;
      end;
   if (Trim(Frm_ConsLot.pdtvcto)<>'') and (Trim(Frm_ConsLot.pdtvcto)<>'/  /') then
      begin
      ETI_DTVCTO.Text:=FormatDateTime(fdt2,StrToDate(Frm_ConsLot.pdtvcto));
      end;
   FreeAndNil(Frm_Conslot);
   end;
end;

procedure TFrm_ProCodBar.sbSalvarPadraoClick(Sender: TObject);
begin
sbSalvarPadrao.Enabled:=false;

fDeletaPadroes(-1,'_PROCODBAR','');

fGravaPadroes(-1,'EDT_QTDCOL'         ,'text'       ,'_PROCODBAR',edt_qtdcol.Text);
fGravaPadroes(-1,'EDT_ESPACOCOL'      ,'text'       ,'_PROCODBAR',edt_espacoCol.Text);
fGravaPadroes(-1,'EDT_ALTETIQ'        ,'text'       ,'_PROCODBAR',edt_altEtiq.Text);
fGravaPadroes(-1,'EDT_ALTCXTEXTO'     ,'text'       ,'_PROCODBAR',edt_altcxtexto.Text);
fGravaPadroes(-1,'EDT_TAMFONTE'       ,'text'       ,'_PROCODBAR',edt_tamfonte.Text);

fGravaPadroes(-1,'EDT_MARGEMTOP'      ,'text'       ,'_PROCODBAR',edt_margemtop.Text);
fGravaPadroes(-1,'EDT_MARGEMRODAPE'   ,'text'       ,'_PROCODBAR',edt_margemrodape.Text);
fGravaPadroes(-1,'EDT_MARGEMDIREITA'  ,'text'       ,'_PROCODBAR',edt_margemDireita.Text);
fGravaPadroes(-1,'EDT_MARGEMESQUERDA' ,'text'       ,'_PROCODBAR',edt_margemEsquerda.Text);
fGravaPadroes(-1,'EDT_ALTURA_REL'     ,'text'       ,'_PROCODBAR',edt_Altura_Rel.Text);
fGravaPadroes(-1,'EDT_LARGURA_REL'    ,'text'       ,'_PROCODBAR',edt_Largura_Rel.Text);
fGravaPadroes(-1,'CB_CODBAR'          ,'checked'    ,'_PROCODBAR',iif(cb_codbar.checked,'true','false'));
fGravaPadroes(-1,'RG_NOMEMP'          ,'checked'    ,'_PROCODBAR',IntToStr(RG_NOMEMP.ItemIndex));
fGravaPadroes(-1,'EDT_QTDCOLIMP'      ,'text'       ,'_PROCODBAR',edt_QTDCOLIMP.Text);
fGravaPadroes(-1,'RG_ALINHAR'         ,'itemindex'  ,'_PROCODBAR',IntToStr(RG_ALINHAR.ItemIndex));
fGravaPadroes(-1,'CB_COMLOGO'         ,'checked'    ,'_PROCODBAR',iif(cb_comlogo.checked,'true','false'));
fGravaPadroes(-1,'CB_CODPRO'          ,'checked'    ,'_PROCODBAR',iif(cb_codpro.checked,'true','false'));
fGravaPadroes(-1,'CB_PRECO'           ,'checked'    ,'_PROCODBAR',iif(cb_preco.checked,'true','false'));
fGravaPadroes(-1,'CB_IMPOUTINF'           ,'checked'    ,'_PROCODBAR',iif(CB_IMPOUTINF.checked,'true','false'));
fmensagem('Concluido!',0,['0'],0);




end;

procedure TFrm_ProCodBar.sbRestaurarClick(Sender: TObject);
begin
if fmensagem('Quer Realmente Voltar as Configurações Originais?',0,['1','2'],2)<>mrYes then
   exit;
edt_qtdcol.Text         :='3';
edt_espacoCol.Text      :='1';
edt_altEtiq.Text        :='114';
edt_altcxtexto.Text     :='16';
edt_tamfonte.Text       :='-8';
edt_margemtop.Text      :='0';
edt_margemrodape.Text   :='0';
edt_margemDireita.Text  :='0';
edt_margemEsquerda.Text :='0';
edt_Altura_Rel.Text     :='32';
edt_Largura_Rel.Text    :='794';
CB_CODBAR.Checked       :=true;
RG_NOMEMP.ItemIndex     :=0;
edt_Largura_Rel.Text    :='794';
edt_QTDCOLIMP.Text      :='132';
RG_ALINHAR.Itemindex    :=0;
cb_comlogo.Enabled      :=false;

fAtualizarFormulario(0);
sbSalvarPadrao.Enabled:=true;
fmensagem('Configurações Restauradas!',0,['0'],0);

end;


function TFrm_ProCodBar.fAtualizarFormulario(ptipo: Integer): Boolean;
begin
RLDetail_Etiqueta.ColCount   :=valint(edt_qtdcol.Text);
RLDetail_Etiqueta.ColSpacing :=ValInt(edt_espacoCol.Text);
RLDetail_Etiqueta.Height     :=ValInt(edt_altEtiq.Text);
{
if RG_ALINHAR.ItemIndex=0 then
   begin
   RLDB_linha01.Alignment    :=taCenter;
   RLDB_linha02.Alignment    :=taCenter;
   RLDB_linha03.Alignment    :=taCenter;
   rldb_empresa.Alignment    :=taCenter;
   end
else if RG_ALINHAR.ItemIndex=1 then
   begin
   RLDB_linha01.Alignment    :=taLeftJustify;
   RLDB_linha02.Alignment    :=taLeftJustify;
   RLDB_linha03.Alignment    :=taLeftJustify;
   rldb_empresa.Alignment    :=taLeftJustify;
   end
else if RG_ALINHAR.ItemIndex=2 then
   begin
   RLDB_linha01.Alignment    :=taRightJustify;
   RLDB_linha02.Alignment    :=taRightJustify;
   RLDB_linha03.Alignment    :=taRightJustify;
   rldb_empresa.Alignment    :=taRightJustify;
   end;
}
RLDB_linha01.Height    :=valint(edt_altcxtexto.Text);
RLDB_linha02.Height    :=valint(edt_altcxtexto.Text);
RLDB_linha03.Height    :=valint(edt_altcxtexto.Text);
rldb_empresa.Height    :=valint(edt_altcxtexto.Text);

RLDB_linha01.Font.Height    :=valint(edt_tamfonte.Text);
RLDB_linha02.Font.Height    :=valint(edt_tamfonte.Text);
RLDB_linha03.Font.Height    :=valint(edt_tamfonte.Text);
rldb_empresa.Font.Height    :=valint(edt_tamfonte.Text);


RLReport1.Margins.TopMargin   :=ValInt(edt_margemtop.Text);
RLReport2.Margins.TopMargin   :=ValInt(edt_margemtop.Text);
RLReport1.Margins.BottomMargin:=ValInt(edt_margemrodape.Text);
RLReport2.Margins.BottomMargin:=ValInt(edt_margemrodape.Text);
RLReport1.Margins.RightMargin :=ValInt(edt_margemDireita.Text);
RLReport2.Margins.RightMargin :=ValInt(edt_margemDireita.Text);
RLReport1.Margins.LeftMargin  :=ValInt(edt_margemEsquerda.Text);
RLReport2.Margins.LeftMargin  :=ValInt(edt_margemEsquerda.Text);
RLReport1.Width               := ValInt(edt_Largura_Rel.Text);
RLReport2.Width               := ValInt(edt_Largura_Rel.Text);
RLReport1.PageSetup.PaperHeight := ValInt(edt_Altura_Rel.Text);


RLReport2.PageSetup.PaperHeight := ValInt(edt_Altura_Rel.Text);
{
rldb_codbar.Visible:=CB_CODBAR.Checked;
rldb_codbar2.Visible:=CB_CODBAR.Checked;

rl_codpro.Visible  :=cb_codpro.Checked;

if not cb_codpro.Checked then
  begin
  rl_codpro.Align    :=faBottom;
  rldb_codbar2.Align :=faBottom;
  rl_preco.Align     :=faBottom;
  rl_nome.Align      :=faBottom;
  RLImage1.Align     :=faBottom;
  end
else
  begin
  RLImage1.Align     :=faTop;
  rl_codpro.Align    :=faTop;
  rl_nome.Align      :=faTop;
  rl_preco.Align     :=faTop;
  rldb_codbar2.Align :=faTop;
  end;

}
//DBT_INFADICIONAL.Visible := CB_IMPOUTINF.Checked = true;
//DB_linha04.Visible := cb_codpro.Checked = true;
{
rldb_empresa.Align:=faTop;
rldb_codbar.Align:=faTop;
RLDB_linha01.Align:=faTop;
RLDB_linha02.Align:=faTop;
RLDB_linha03.Align:=faTop;
RLDB_linha04.Align:=faTop;
}

{
RLDB_linha03.Align:=faTop;
rldb_empresa.Align:=faTop;
rldb_cnpj.Align     :=faTop;
RLDB_linha04.Align:=fatop;
rldb_codbar.Align :=faTop;
RLDB_linha02.Align:=faTop;
RLDB_linha01.Align:=faTop;
RLDBT_INFADICIONAL.Align:=faTop;

}

 {

rldb_codbar.Align :=faBottom;
RLDBT_INFADICIONAL.Align:=faBottom;
RLDB_linha01.Align:=faBottom;
RLDB_linha03.Align:=faBottom;
RLDB_linha02.Align:=faBottom;
RLDB_linha04.Align:=faBottom;
rldb_cnpj.Align   :=faBottom;

rldb_empresa.Align:=faBottom;
}
//Update;

result:=true;
end;


procedure TFrm_ProCodBar.edt_qtdcolChange(Sender: TObject);
begin
sbSalvarPadrao.Enabled:=true;
fAtualizarFormulario(0);
end;

procedure TFrm_ProCodBar.edt_qtdcolExit(Sender: TObject);
begin
edt_qtdcol.Text:=fdeixanum(edt_qtdcol.Text);
fAtualizarFormulario(0);

end;

procedure TFrm_ProCodBar.edt_altEtiqExit(Sender: TObject);
begin
edt_altEtiq.Text:=fdeixanum(edt_altEtiq.Text);
fAtualizarFormulario(0);

end;

procedure TFrm_ProCodBar.edt_altcxtextoExit(Sender: TObject);
begin
edt_altcxtexto.Text:=fdeixanum(edt_altcxtexto.Text);
fAtualizarFormulario(0);

end;

procedure TFrm_ProCodBar.edt_margemtopExit(Sender: TObject);
begin
edt_altcxtexto.Text:=fdeixanum(edt_altcxtexto.Text);
fAtualizarFormulario(0);

end;

procedure TFrm_ProCodBar.edt_margemDireitaExit(Sender: TObject);
begin
edt_altcxtexto.Text:=fdeixanum(edt_altcxtexto.Text);
fAtualizarFormulario(0);

end;

procedure TFrm_ProCodBar.edt_Altura_relExit(Sender: TObject);
begin
edt_altcxtexto.Text:=fdeixanum(edt_altcxtexto.Text);
fAtualizarFormulario(0);

end;

procedure TFrm_ProCodBar.edt_QTDCOLIMPExit(Sender: TObject);
begin
edt_QTDCOLIMP.Text:=fdeixanum(edt_QTDCOLIMP.Text);
fAtualizarFormulario(0);

end;

procedure TFrm_ProCodBar.edt_espacoColExit(Sender: TObject);
begin
edt_espacoCol.Text:=fdeixanum(edt_espacoCol.Text);
fAtualizarFormulario(0);

end;

procedure TFrm_ProCodBar.edt_tamfonteExit(Sender: TObject);
begin
edt_tamfonte.Text:=IntToStr(valint2(edt_tamfonte.Text));
fAtualizarFormulario(0);

end;

procedure TFrm_ProCodBar.edt_margemrodapeExit(Sender: TObject);
begin
edt_altcxtexto.Text:=fdeixanum(edt_altcxtexto.Text);
fAtualizarFormulario(0);

end;

procedure TFrm_ProCodBar.edt_margemEsquerdaExit(Sender: TObject);
begin
edt_altcxtexto.Text:=fdeixanum(edt_altcxtexto.Text);
fAtualizarFormulario(0);

end;

procedure TFrm_ProCodBar.edt_Largura_RelExit(Sender: TObject);
begin
edt_altcxtexto.Text:=fdeixanum(edt_altcxtexto.Text);
fAtualizarFormulario(0);

end;

procedure TFrm_ProCodBar.CB_CODBARClick(Sender: TObject);
begin
sbSalvarPadrao.Enabled:=true;
fAtualizarFormulario(0);
end;

procedure TFrm_ProCodBar.RG_ALINHARClick(Sender: TObject);
begin
sbSalvarPadrao.Enabled:=true;
fAtualizarFormulario(0);

end;

procedure TFrm_ProCodBar.ETI_CODPROEnter(Sender: TObject);
begin
ETI_CODPRO.SelectAll;
end;

procedure TFrm_ProCodBar.ETI_GRADEEnter(Sender: TObject);
begin
ETI_GRADE.SelectAll;
end;

procedure TFrm_ProCodBar.ETI_DTVCTOEnter(Sender: TObject);
begin
ETI_DTVCTO.SelectAll;
end;

procedure TFrm_ProCodBar.ETI_QTDEnter(Sender: TObject);
begin
ETI_QTD.SelectAll;
end;

procedure TFrm_ProCodBar.ETI_OUTINFEnter(Sender: TObject);
begin
ETI_OUTINF.SelectAll;
end;

procedure TFrm_ProCodBar.ETI_CODBAREnter(Sender: TObject);
begin
ETI_CODBAR.SelectAll;
end;

procedure TFrm_ProCodBar.Qr_EtiquetaCalcFields(DataSet: TDataSet);
begin
Qr_EtiquetaNewPreco.AsString:='A vista '+FormatFloat(mcasaspu,Qr_EtiquetaPRECO.AsFloat);
end;

procedure TFrm_ProCodBar.FormShow(Sender: TObject);
begin
PageControl1.ActivePageIndex:=0;
end;

procedure TFrm_ProCodBar.cb_comlogoClick(Sender: TObject);
begin
sbSalvarPadrao.Enabled:=true;
fAtualizarFormulario(0);
end;

procedure TFrm_ProCodBar.RLReport2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if FileExists('c:\SGE\LOGO_ETIQUETA.JPG') then
  RLImage1.Picture.LoadFromFile('c:\SGE\LOGO_ETIQUETA.JPG');
end;

procedure TFrm_ProCodBar.ETI_NOMPROEnter(Sender: TObject);
begin
ETI_NOMPRO.SelectAll;
end;

end.
