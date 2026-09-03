unit S_Trocas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, ExtCtrls,lerarq,S_DM1,db,dbtables,func,
  Grids, Buttons,S_PedCli, ComCtrls,S_Trocas_loc,S_Agde,func2,S_Impres,
  AlinharEdit,S_ConsLot, S_ManNF, S_GerarDuplic,s_lerarq_geral, DBClient;


type
  TFrm_Trocas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel_cab: TPanel;
    Label1: TLabel;
    CHAVE: TEdit;
    Label2: TLabel;
    DATA: TMaskEdit;
    Label3: TLabel;
    CODCLI: TEdit;
    NOMCLI: TEdit;
    Label4: TLabel;
    CODVEN: TEdit;
    NOMVEN: TEdit;
    Label5: TLabel;
    OBS01: TEdit;
    OBS02: TEdit;
    BBINCLUIR: TBitBtn;
    BBLOCALIZAR: TBitBtn;
    BBALTERAR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBLIMPAR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    BBSAIR: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    gb_mercdev: TGroupBox;
    Label6: TLabel;
    STG_DEV: TStringGrid;
    DEV_CODPRO: TEdit;
    DEV_LOTE: TEdit;
    DEV_DTVCTO: TMaskEdit;
    DEV_QTD: TEdit;
    DEV_NOMPRO: TEdit;
    DEV_PU: TEdit;
    DEV_TOTAL: TEdit;
    DEV_GRAVAR: TBitBtn;
    DEV_EDITAR: TBitBtn;
    DEV_CANCELAR: TBitBtn;
    DEV_EXCLUIR: TBitBtn;
    ST_TOTDEV: TStaticText;
    gb_mercent: TGroupBox;
    Label7: TLabel;
    STG_ENT: TStringGrid;
    ENT_TOTAL: TEdit;
    ENT_PU: TEdit;
    ENT_NOMPRO: TEdit;
    ENT_QTD: TEdit;
    ENT_DTVCTO: TMaskEdit;
    ENT_LOTE: TEdit;
    ENT_CODPRO: TEdit;
    ENT_EXCLUIR: TBitBtn;
    ENT_CANCELAR: TBitBtn;
    ENT_EDITAR: TBitBtn;
    ENT_GRAVAR: TBitBtn;
    ST_TOTENT: TStaticText;
    gb_totais: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    TOTALDEV: TEdit;
    DESCDEV: TEdit;
    TOTLIQDEV: TEdit;
    TOTALENT: TEdit;
    DESCENT: TEdit;
    TOTLIQENT: TEdit;
    TROCO: TEdit;
    RECEBIDO: TEdit;
    CB_FORMAPAG: TComboBox;
    gb_origemdev: TGroupBox;
    STG_ORI: TStringGrid;
    ORI_CODEMP: TEdit;
    ORI_CHAVE: TEdit;
    ORI_DATA: TEdit;
    ORI_CLIENTE: TEdit;
    ORI_VALOR: TEdit;
    ORI_GRAVAR: TBitBtn;
    ORI_EDITAR: TBitBtn;
    ORI_CANCELAR: TBitBtn;
    ORI_EXCLUIR: TBitBtn;
    GroupBox1: TGroupBox;
    STG_VEN: TStringGrid;
    BBIMPRIMIR: TBitBtn;
    bbEfetivar: TBitBtn;
    bbEmitirNF: TBitBtn;
    SB_PADRAO: TSpeedButton;
    TEMP: TQuery;
    CB_CHEGARORI: TCheckBox;
    GB_CAIXA: TGroupBox;
    MCODCAI: TEdit;
    CB_USUARIO_MAN: TCheckBox;
    tb_ped02_pre: TClientDataSet;
    tb_ped02_preP2ICMS_PERC: TFloatField;
    tb_ped02_preP2ICMS_PPRED: TFloatField;
    tb_ped02_preP2ICMSSN_PERC: TFloatField;
    tb_ped02_preP2ST_IVA: TFloatField;
    tb_ped02_preP2ST_REDUT: TFloatField;
    tb_ped02_preP2ST_ICMSCRED: TFloatField;
    tb_ped02_preP2ST_ICMSDEB: TFloatField;
    tb_ped02_preP2MODBCST: TIntegerField;
    tb_ped02_preP2IPI_PERC: TFloatField;
    tb_ped02_preP2CST: TStringField;
    tb_ped02_preP2CSOSN_ORI: TIntegerField;
    tb_ped02_preP2CSOSN: TIntegerField;
    tb_ped02_preP2PIS_PERC: TFloatField;
    tb_ped02_preP2CST_PIS: TStringField;
    tb_ped02_preP2CST_COFINS: TStringField;
    tb_ped02_preP2COFINS_PERC: TFloatField;
    tb_ped02_preP2CONTESP: TIntegerField;
    tb_ped02_preP2CODPRO: TFloatField;
    tb_ped02_preP2ICMS_PPRED_101: TFloatField;
    tb_ped02_preP2ST_IVA_101: TFloatField;
    tb_ped02_preP2ST_REDUT_101: TFloatField;
    tb_ped02_preP2ST_ICMSCRED_101: TFloatField;
    tb_ped02_preP2ST_ICMSDEB_101: TFloatField;
    tb_ped02_preP2MODBCST_101: TFloatField;
    tb_ped02_preP2CFOP_ECF: TIntegerField;
    tb_ped02_preP2CFOP_NF: TIntegerField;
    tb_ped02_preP2PRECO_MAXCONS: TFloatField;
    tb_ped02_preP2QTD: TFloatField;
    tb_ped02_preP2CODEMP: TIntegerField;
    tb_ped02_preP2LOTSEQ: TIntegerField;
    tb_ped02_preP2CHAVE: TIntegerField;
    tb_ped02_preP2ORDEM: TIntegerField;
    tb_ped02_preP2PRECO: TFloatField;
    tb_ped02_preP2ITEM: TIntegerField;
    tb_ped02_preP2CONS_PROPRIO: TIntegerField;
    tb_ped02_prePDNOME: TStringField;
    tb_ped02_preP2DESCPR: TFloatField;
    tb_ped02_preP2PCOMIS: TFloatField;
    tb_ped02_preP2CODVEN: TFloatField;
    tb_ped02_preP2CST_IPI: TStringField;
    tb_ped02_preP2DESCFIN_PERC: TFloatField;
    tb_ped02_preP2AMBIENTE: TStringField;
    tb_ped02_preP2DESC_COMP: TStringField;
    tb_ped02_preP2PROMOCAO: TStringField;
    tb_ped02_preP2DESC_PERC01: TFloatField;
    tb_ped02_preP2DESC_PERC02: TFloatField;
    tb_ped02_preP2DESC_PERC03: TFloatField;
    tb_ped02_preP2VALDES: TFloatField;
    tb_ped02_preP2TIPO_PCO: TIntegerField;
    tb_ped02_preP2ICMS_ALIPI: TFloatField;
    tb_ped02_preP2ALIQICMSDES: TFloatField;
    tb_ped02_preP2ALIQAPROXTRIB: TFloatField;
    cds_aliquotas: TClientDataSet;
    cds_aliquotastipo_reg: TIntegerField;
    cds_aliquotasal_tabicm: TStringField;
    cds_aliquotasal_aliqredut: TFloatField;
    cds_aliquotasal_IcmsTrib: TFloatField;
    cds_aliquotasal_icmsRet: TIntegerField;
    cds_aliquotasal_stIcmsCred: TFloatField;
    cds_aliquotasal_stIcmsDeb: TFloatField;
    cds_aliquotasal_stIVA_Ina: TFloatField;
    cds_aliquotasal_stIVA_Neg: TFloatField;
    cds_aliquotasCfo_Indus_Ret: TIntegerField;
    cds_aliquotasCfo_Indus_Trib: TIntegerField;
    cds_aliquotasCfo_Indus_Isento: TIntegerField;
    cds_aliquotasCfo_rev_Ret: TIntegerField;
    cds_aliquotasCfo_rev_Trib: TIntegerField;
    cds_aliquotasCfo_rev_Isento: TIntegerField;
    cds_aliquotasCfo_SubEcf_Ret: TIntegerField;
    cds_aliquotasCfo_SubEcf_Trib: TIntegerField;
    cds_aliquotasCfo_SubEcf_Isento: TIntegerField;
    cds_aliquotasal_cofins: TFloatField;
    cds_aliquotasmodBcST: TIntegerField;
    cds_aliquotasal_stAliqRed: TFloatField;
    cds_aliquotasal_inss: TFloatField;
    cds_aliquotasal_inss_pred: TFloatField;
    cds_aliquotasal_irrf: TFloatField;
    cds_aliquotasal_irrf_pred: TFloatField;
    cds_aliquotasal_repasse: TFloatField;
    cds_aliquotasal_issqn: TFloatField;
    cds_aliquotascfo_servico: TIntegerField;
    cds_aliquotasal_pis: TFloatField;
    cds_aliquotasal_credsn: TFloatField;
    cds_aliquotasal_stIVA_Pos: TFloatField;
    tb_ped02_preP2COMPRA_XPED: TStringField;
    tb_ped02_preP2COMPRA_NITEMPED: TIntegerField;
    cds_aliquotasal_combate_pobreza: TFloatField;
    cds_aliquotasal_icmscred_destino: TFloatField;
    cds_aliquotasal_icms_destino: TFloatField;
    tb_ped02_preP2CPUFDEST: TFloatField;
    tb_ped02_preP2ICMSUFDEST: TFloatField;
    tb_ped02_preP2ICMSINTER: TFloatField;
    tb_ped02_preP2ICMSINTERPART: TFloatField;
    tb_ped02_preP2CEST: TStringField;
    tb_ped02_preP2PERCDESC_AUT: TFloatField;
    tb_ped02_preP2PERCDESC_AUT_CODUSR: TFloatField;
    tb_ped02_preP2PERCDESC_AUT_DATHOR: TDateTimeField;
    cds_aliquotasdeduzir_icms_bc_pis_cofins: TFloatField;
    tb_ped02_preP2CBENEF: TStringField;
    tb_ped02_preP2ID_NEW: TFloatField;
    tb_ped02_preP2ID_NEW_101: TFloatField;
    tb_ped02_preP2ID_PED01_NEW: TFloatField;
    tb_ped02_preP2IRRF_PERC: TFloatField;
    tb_ped02_preP2IRRF_VALOR: TFloatField;
    tb_ped02_preP2CSLL_PERC: TFloatField;
    tb_ped02_preP2CSLL_VALOR: TFloatField;
    cds_aliquotasrequer_pedori: TIntegerField;
    cds_aliquotasal_IcmsTribDesonera: TFloatField;
    tb_ped02_preP2MOTIVODESONERACAO: TFloatField;
    cds_aliquotasal_cbs: TFloatField;
    cds_aliquotasal_ibs_mun: TFloatField;
    cds_aliquotasal_ibs_uf: TFloatField;
    tb_ped02_preP2CBS_CST: TStringField;
    tb_ped02_preP2CODCLASSTRIB: TStringField;
    tb_ped02_preP2CBS_ALIQ: TFloatField;
    tb_ped02_preP2IBS_UF_ALIQ: TFloatField;
    tb_ped02_preP2IBS_MUN_ALIQ: TFloatField;
    tb_ped02_preP2NRECEITUARIO: TStringField;
    tsConfigMaster: TTabSheet;
    cb_baixar_titulo: TCheckBox;
    Label20: TLabel;
    edt_codfp_dev: TEdit;
    edt_nomfp_dev: TEdit;
    edt_natfp_dev: TEdit;
    cb_fp_dev_evalido: TCheckBox;
    Label21: TLabel;
    edt_codfp_vda: TEdit;
    edt_nomfp_vda: TEdit;
    edt_natfp_vda: TEdit;
    cb_fp_vda_evalido: TCheckBox;
    bbSalvarPadrao: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BBSAIRClick(Sender: TObject);
    procedure DATAExit(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure OBS01Exit(Sender: TObject);
    procedure OBS02Exit(Sender: TObject);
    procedure OBS01KeyPress(Sender: TObject; var Key: Char);
    procedure OBS02KeyPress(Sender: TObject; var Key: Char);
    procedure BBINCLUIRClick(Sender: TObject);
    procedure BBLIMPARClick(Sender: TObject);
    procedure ORI_CODEMPEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ORI_CHAVEExit(Sender: TObject);
    procedure ORI_GRAVARClick(Sender: TObject);
    procedure ORI_EDITARClick(Sender: TObject);
    procedure ORI_CANCELARClick(Sender: TObject);
    procedure ORI_EXCLUIRClick(Sender: TObject);
    procedure STG_ORIDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure DEV_CODPROKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DEV_CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure DEV_CODPROExit(Sender: TObject);
    procedure DEV_LOTEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DEV_PUExit(Sender: TObject);
    procedure DEV_QTDExit(Sender: TObject);
    procedure DEV_GRAVARClick(Sender: TObject);
    procedure DEV_EDITARClick(Sender: TObject);
    procedure DEV_CANCELARClick(Sender: TObject);
    procedure DEV_PUEnter(Sender: TObject);
    procedure DEV_CODPROEnter(Sender: TObject);
    procedure DEV_LOTEEnter(Sender: TObject);
    procedure DEV_DTVCTOEnter(Sender: TObject);
    procedure DEV_QTDEnter(Sender: TObject);
    procedure STG_DEVDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure STG_ENTDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure STG_VENDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure ORI_CHAVEEnter(Sender: TObject);
    procedure DEV_LOTEExit(Sender: TObject);
    procedure DEV_DTVCTOExit(Sender: TObject);
    procedure DEV_EXCLUIRClick(Sender: TObject);
    procedure ENT_CODPROEnter(Sender: TObject);
    procedure ENT_CODPROExit(Sender: TObject);
    procedure ENT_CODPROKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ENT_LOTEEnter(Sender: TObject);
    procedure ENT_LOTEExit(Sender: TObject);
    procedure ENT_LOTEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ENT_DTVCTOEnter(Sender: TObject);
    procedure ENT_DTVCTOExit(Sender: TObject);
    procedure ENT_QTDEnter(Sender: TObject);
    procedure ENT_QTDExit(Sender: TObject);
    procedure ENT_PUEnter(Sender: TObject);
    procedure ENT_PUExit(Sender: TObject);
    procedure ENT_GRAVARClick(Sender: TObject);
    procedure ENT_EDITARClick(Sender: TObject);
    procedure ENT_CANCELARClick(Sender: TObject);
    procedure ENT_EXCLUIRClick(Sender: TObject);
    procedure ENT_CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure DESCDEVExit(Sender: TObject);
    procedure DESCENTExit(Sender: TObject);
    procedure DESCDEVEnter(Sender: TObject);
    procedure DESCENTEnter(Sender: TObject);
    procedure BBLOCALIZARClick(Sender: TObject);
    procedure BBALTERARClick(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure BBEXCLUIRClick(Sender: TObject);
    procedure BBIMPRIMIRClick(Sender: TObject);
    procedure bbEfetivarClick(Sender: TObject);
    procedure bbEmitirNFClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SB_PADRAOClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MCODCAIExit(Sender: TObject);
    procedure CB_USUARIO_MANClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cb_baixar_tituloClick(Sender: TObject);
    procedure edt_codfp_devExit(Sender: TObject);
    procedure edt_codfp_vdaExit(Sender: TObject);
    procedure bbSalvarPadraoClick(Sender: TObject);
    procedure edt_codfp_devKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codfp_vdaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    mPed_UF_Cli            : String;
    mPed_Cli_ConsFin       : Boolean;
    mPed_Cli_Revenda_Cp    : Boolean;
    mPed_Cli_ST            : Boolean;
    mPed_Cli_icmsnr        : Boolean;
    mPed_Cli_MotDes        : Integer;
    mPed_Cli_REDICMSNOR    : Boolean;
    mPed_CliCalcIPI        : Boolean;
    mPed_Cli_RazSoc        : string;
    mPed_Cli_CRT           : integer;

    mIdPed02New : integer;


    function fbuscarPrecoVenda(pTipo: Integer;pCodPro: Real; pLote, pDtvcto: String): Real;
    function fMercadoriasVendidas(pTipo:Integer): Boolean;
    function fQtdVendida(pTipo: Integer;pCodPro: Real; pLote, pDtvcto: String): Boolean;
    function fCalcular(pTipo:Integer): Boolean;
    function fTrocaslerant(ptipo: Integer):Boolean;
    function fTrocasCabEnt(ptipo: Integer): Boolean;
    function fexcluir(ptipo: Integer):Boolean;
    function fTrocasGravar(ptipo: Integer):Boolean;
    function fTrocasTestaCab(ptipo: Integer):Boolean;
    function ftrocasTestaEstoque(ptipo: Integer): Boolean;
    function fFaturarPedidos: Boolean;


    procedure fAtualizarFormaPag(pCodfp: integer);

  public
    { Public declarations }
    form_Impres_Trocas: Tfrm_Impres;
    form_pedcli_trocas: TFrm_Pedcli;
    form_Trocas_Loc_trocas: TFrm_Trocas_loc;
    form_conslot_trocas: Tfrm_conslot;
    form_mannf_trocas: Tfrm_ManNf;
    form_GerarDuplic_Trocas:TFrm_GerarDuplic;
    function fTrocasGravarnf(pChave: Integer): Real;

  end;
const
    mcol_cp_dev = 6;

function fTrocasgant(ptipo: Integer): Boolean;
function fEmitirNotas(pCodemp, pChave: Integer): Boolean;
function fTrocasAtualizaCaixa(pChaveDev,pChaveVda: Integer): Boolean;
var
  Frm_Trocas: TFrm_Trocas;
  moper_trocas  : Integer=0;
  mop_dev: Integer=0;
  mop_ori: Integer=0;
  mop_ent: Integer=0;
  mqtd_tro   : Integer=0;
  mchave_tro : Integer=0;
  mchave_tro_new : Integer=0;
  mcodemp_tro: Integer=0;
  mQtdMan: Integer=0;
  trocas_ori: String='';
  mchpeddev: Integer;
  mchpedsai: Integer;
  mnumitemgrid: Integer=4;
  mqtdven: Real;
  mqtddev: Real;
  bbtalt_true : Boolean=True;
  bbtinc_true : Boolean=True;
  bbtexc_true : Boolean=True;
  bbtrel_true : Boolean=True;
  tro_empant: Integer;
  tro_codcai_ant: Integer;
  mCODEMP: Integer;

implementation

uses  S_DM2, func_excecoes, S_DM4, S_Vendas_GravarPedido, S_Ocorrencias,
  BaixarTitulo;

{$R *.dfm}

procedure TFrm_Trocas.FormCreate(Sender: TObject);
var
mleft: Integer;
mtotdim : Integer;
mdiminuir: Integer;
mdifdim: Integer;
begin

cds_aliquotas.CreateDataSet;
tb_ped02_pre.CreateDataSet;


mCODEMP:=Codemp;
DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_TROCAS','CB_CHECARORI']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_CHEGARORI.Checked:=true
   else
      CB_CHEGARORI.Checked:=false;
   end
else
   CB_CHEGARORI.Checked:=false;

if flfilpad(0,'_TROCAS','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','MCODCAI',[]) then
      MCODCAI.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_USUARIO_MAN',[]) then
      CB_USUARIO_MAN.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   end;
tro_codcai_ant:=codcai;

if (codusr=1111) then
   begin
   GB_CAIXA.Visible:=true;
   end
else
   begin
   if CB_USUARIO_MAN.Checked then
      GB_CAIXA.Visible:=true
   else
      GB_CAIXA.Visible:=false;
   CB_USUARIO_MAN.Visible:=false;
   end;


if valint(MCODCAI.Text)<>0 then
   codcai:=valint(MCODCAI.Text);

// definição dos edits a direira
// parametros sao os seguintes 0-esquerda 1-direira 2-centra
tro_empant:=mCODEMP;
if (DM1.Tb_PargerPTROEMP100.Value=1) and (mCODEMP<100) then
   mCODEMP:=mCODEMP+100;
DM1.Qr_FP.Close;
DM1.Qr_FP.SQL.Clear;
DM1.Qr_FP.SQL.Add('Select * from CADFP order by FPCODIGO');
DM1.Qr_FP.Open;
while not DM1.Qr_FP.Eof do
   begin
   CB_FORMAPAG.Items.Add(DM1.Qr_FPFPDESC.Value+'-'+Formatfloat('00',DM1.Qr_FPFPCODIGO.Value));
   DM1.Qr_FP.Next;
   end;
CB_FORMAPAG.ItemIndex:=0;

STG_VEN.RowCount:=2;
STG_VEN.Rows[1].Clear;


STG_VEN.ColWidths[00]:=80; //'Código';
STG_VEN.ColWidths[01]:=40; //'Grade';
STG_VEN.ColWidths[02]:=80; //'Dt.Vcto';
STG_VEN.ColWidths[03]:=60; //'Quantidade';
STG_VEN.ColWidths[04]:=25; //'Und';
STG_VEN.ColWidths[05]:=200; //'Descrição';
STG_VEN.ColWidths[06]:=60; //'Pço Unitário';
STG_VEN.ColWidths[07]:=60; //'Total Desconto';
STG_VEN.ColWidths[08]:=60; //'Total Liquido';
STG_VEN.ColWidths[09]:=60; //'Qtd.ja Devolvido';
STG_VEN.ColWidths[10]:=20; //:='Empresa';
STG_VEN.ColWidths[11]:=20; // 'L.Seq';
STG_VEN.ColWidths[12]:=50; // 'Chave';
STG_VEN.ColWidths[13]:=80; //'Data';

//

STG_VEN.Cells[00,00]:='Código';
if ValInt(copy(mpseg,4,2))=2 then
   begin
   STG_VEN.Cells[01,00]:='Grade';
   STG_VEN.ColWidths[02]:=0;
   end
else if ValInt(copy(mpseg,4,2))=1 then
   begin
   STG_VEN.Cells[01,00]:='Lote';
   STG_VEN.Cells[02,00]:='Dt.Vcto';
   end
else
   begin
   STG_VEN.ColWidths[01]:=0;
   STG_VEN.ColWidths[02]:=0;
   end;
STG_VEN.Cells[03,00]:='Quantidade';
STG_VEN.Cells[04,00]:='Und';
STG_VEN.Cells[05,00]:='Descrição';
STG_VEN.Cells[06,00]:='Pço Unitário';
STG_VEN.Cells[07,00]:='Total Desconto';
STG_VEN.Cells[08,00]:='Total Liquido';
STG_VEN.Cells[09,00]:='Qtd.ja Devolvido';
STG_VEN.Cells[10,00]:='Empresa';
STG_VEN.Cells[11,00]:='L.Seq';
STG_VEN.Cells[12,00]:='Chave';
STG_VEN.Cells[13,00]:='Data';

ORI_VALOR.Alignment := TAlignment(1);
DEV_QTD.Alignment   := TAlignment(1);
DEV_PU.Alignment    := TAlignment(1);
DEV_TOTAL.Alignment := TAlignment(1);
ENT_QTD.Alignment   := TAlignment(1);
ENT_PU.Alignment    := TAlignment(1);
ENT_TOTAL.Alignment := TAlignment(1);
TOTALDEV.Alignment  := TAlignment(1);
DESCDEV.Alignment   := TAlignment(1);
TOTLIQDEV.Alignment := TAlignment(1);
TOTALENT.Alignment  := TAlignment(1);
DESCENT.Alignment   := TAlignment(1);
TOTLIQENT.Alignment := TAlignment(1);
TROCO.Alignment     := TAlignment(1);
RECEBIDO.Alignment  := TAlignment(1);


BBLIMPAR.Click;
//  Edit.Alignment := TAlignment(RgpAlinhamento.ItemIndex);

// fim das definiçoes

STG_ORI.RowCount:=2;
STG_ORI.Rows[1].Clear;

STG_ORI.Cells[00,00]:='Empresa';
STG_ORI.Cells[01,00]:='Chave';
STG_ORI.Cells[02,00]:='Data';
STG_ORI.Cells[03,00]:='Cliente';
STG_ORI.Cells[04,00]:='Valor Pedido';
STG_ORI.Cells[05,00]:='Cód.Cli';
STG_ORI.Cells[mcol_cp_dev,00]:='Id New Ped';

STG_DEV.RowCount:=8;
STG_DEV.Rows[1].Clear;
STG_DEV.Cells[00,00]:='Código';


if ValInt(copy(mpseg,4,2))=2 then
   begin
   mtotdim:=DEV_DTVCTO.Width;
   mdiminuir:=round(mtotdim/6);
   mdifdim:=(mdiminuir*6)-mtotdim;
   DEV_CODPRO.Width:=DEV_CODPRO.Width+mdiminuir+mdifdim;
   DEV_LOTE.Width  :=DEV_LOTE.Width+mdiminuir;;
   DEV_DTVCTO.Width:=0;   //'Dt.Vcto';
   DEV_QTD.Width   :=DEV_QTD.Width+mdiminuir;
   DEV_NOMPRO.Width:=DEV_NOMPRO.Width+mdiminuir;
   DEV_PU.Width    :=DEV_PU.Width+mdiminuir;
   DEV_TOTAL.Width :=DEV_TOTAL.Width+mdiminuir;

   STG_DEV.ColWidths[00]:=DEV_CODPRO.Width;  //'Código';
   STG_DEV.ColWidths[01]:=DEV_LOTE.Width;  //'Grade';
   STG_DEV.ColWidths[02]:=DEV_DTVCTO.Width;   //'Dt.Vcto';
   STG_DEV.ColWidths[03]:=DEV_QTD.Width;  //'Quantidade';
   STG_DEV.ColWidths[04]:=DEV_NOMPRO.Width; //'Nome do Produto';
   STG_DEV.ColWidths[05]:=DEV_PU.Width;  //'Preco Unitario';
   STG_DEV.ColWidths[06]:=DEV_TOTAL.Width;  //'Valor Total';

   STG_DEV.Cells[01,00] :='Grade';
   STG_DEV.Cells[02,00] :='';
   mleft:=1;
   DEV_CODPRO.Left     :=mleft;
   DEV_CODPRO.Width    :=STG_DEV.ColWidths[00]+2;// 88+2;
   mleft:=mleft+DEV_CODPRO.Width-1;

   DEV_LOTE.Width      :=STG_DEV.ColWidths[01]+2;
   DEV_LOTE.Left       :=mLeft;
   mleft:=mleft+DEV_LOTE.Width;

   DEV_DTVCTO.Visible  :=False;

   DEV_QTD.Width       :=STG_DEV.ColWidths[03]+2;
   DEV_QTD.Left        :=mleft;
   mleft:=mleft+DEV_QTD.Width-1;

   DEV_NOMPRO.left     :=Mleft;
   DEV_NOMPRO.Width    :=STG_DEV.ColWidths[04]+2;
   mleft:=mleft+DEV_NOMPRO.Width-1;

   DEV_PU.Width        :=STG_DEV.ColWidths[05]+2;
   DEV_PU.Left         :=mleft;
   mleft:=mleft+DEV_PU.Width-1;

   DEV_TOTAL.Left      :=mleft;
   DEV_TOTAL.Width     :=STG_DEV.ColWidths[06]+2;
//   mleft:=mleft+DEV_TOTAL.Width;

   end
else if ValInt(copy(mpseg,4,2))=1 then
   begin
   STG_DEV.Cells[01,00]:='Lote';
   STG_DEV.Cells[02,00]:='Dt.Vcto';
   end
else
   begin
   mtotdim:=DEV_DTVCTO.Width;
   mtotdim:=DEV_LOTE.Width;
   mdiminuir:=round(mtotdim/6);
   mdifdim:=(mdiminuir*6)-mtotdim;
   DEV_CODPRO.Width:=DEV_CODPRO.Width+mdiminuir+mdifdim;
   DEV_LOTE.Width  :=DEV_LOTE.Width+mdiminuir;;
   DEV_DTVCTO.Width:=0;   //'Dt.Vcto';
   DEV_QTD.Width   :=DEV_QTD.Width+mdiminuir;
   DEV_NOMPRO.Width:=DEV_NOMPRO.Width+mdiminuir;
   DEV_PU.Width    :=DEV_PU.Width+mdiminuir;
   DEV_TOTAL.Width :=DEV_TOTAL.Width+mdiminuir;

   STG_DEV.ColWidths[00]:=DEV_CODPRO.Width;  //'Código';
   STG_DEV.ColWidths[01]:=DEV_LOTE.Width;  //'Grade';
   STG_DEV.ColWidths[02]:=DEV_DTVCTO.Width;   //'Dt.Vcto';
   STG_DEV.ColWidths[03]:=DEV_QTD.Width;  //'Quantidade';
   STG_DEV.ColWidths[04]:=DEV_NOMPRO.Width; //'Nome do Produto';
   STG_DEV.ColWidths[05]:=DEV_PU.Width;  //'Preco Unitario';
   STG_DEV.ColWidths[06]:=DEV_TOTAL.Width;  //'Valor Total';



   STG_DEV.Cells[01,00]:='';
   STG_DEV.Cells[02,00]:='';
   STG_DEV.ColWidths[01]:=0;
   STG_DEV.ColWidths[02]:=0;
   DEV_DTVCTO.Visible:=false;
   DEV_LOTE.Visible:=false;
   mleft:=1;
   DEV_CODPRO.Left     :=mleft;
   DEV_CODPRO.Width    :=STG_DEV.ColWidths[00]+2;// 88+2;
   mleft:=mleft+DEV_CODPRO.Width-1;

   DEV_LOTE.Visible   :=FALSE;
   mleft:=mleft+1;

   DEV_DTVCTO.Visible  :=False;
   mleft:=mleft+1;
   DEV_QTD.Width       :=STG_DEV.ColWidths[03]+2;
   DEV_QTD.Left        :=mleft;
   mleft:=mleft+DEV_QTD.Width-1;

   DEV_NOMPRO.left     :=Mleft;
   DEV_NOMPRO.Width    :=STG_DEV.ColWidths[04]+2;
   mleft:=mleft+DEV_NOMPRO.Width-1;

   DEV_PU.Width        :=STG_DEV.ColWidths[05]+2;
   DEV_PU.Left         :=mleft;
   mleft:=mleft+DEV_PU.Width-1;

   DEV_TOTAL.Left      :=mleft;
   DEV_TOTAL.Width     :=STG_DEV.ColWidths[06]+2;
//   mleft:=mleft+DEV_TOTAL.Width;


   end;
STG_DEV.Cells[03,00]:='Qtd.';
STG_DEV.Cells[04,00]:='Descrição';
STG_DEV.Cells[05,00]:='Preço Unitário';
STG_DEV.Cells[06,00]:='Valor Total';


// entregues
fTrocasCabEnt(0);

end;

procedure TFrm_Trocas.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Trocas.DATAExit(Sender: TObject);
begin
if trim(DATA.Text)<>'/  /' then
   begin
   try
      DATA.Text:=FormatDateTime(fdt2, StrtoDate(DATA.Text));
   except
      fMensagem('Data inválida!',0,['0'],0);
      DATA.SetFocus;
      end;
   end;

end;

procedure TFrm_Trocas.CODCLIExit(Sender: TObject);
begin
if not (CODVEN.Focused) and (trim(CODCLI.Text)='') then
   exit;
if not flcadcli(1,0,CODCLI.Text) then
   begin
   fMensagem('Cliente não Cadastrado!',0,['0'],0);
   CODCLI.SetFocus;
   end
else
   begin
   NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
   end;
if (DM1.Tb_CliCCODCLI.Value=1) or (DM1.Tb_CliCCODCLI.Value=2) then
   begin
   NOMCLI.Color   :=clWindow;
   NOMCLI.ReadOnly:=false;
   NOMCLI.SetFocus;
   end
else
   begin
   NOMCLI.Color  :=clBtnFace;
   NOMCLI.ReadOnly:=true;
   end;


end;

procedure TFrm_Trocas.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_Trocas',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Trocas.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text :=fChamaVen(0,'frm_Trocas',Key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Trocas.CODVENExit(Sender: TObject);
begin
if not (OBS01.Focused) and (trim(CODVEN.Text)='') then
   exit;
if not flcadven(1,0,CODVEN.Text) then
   begin
   fMensagem('Vendedor não Cadastrado!',0,['0'],0);
   if CODVEN.Enabled then
      CODVEN.SetFocus;
   end
else
   NOMVEN.Text:=DM1.Tb_VenVNOME.Value;


end;

procedure TFrm_Trocas.OBS01Exit(Sender: TObject);
begin
if length(OBS01.Text)>60 then
   OBS01.Text:=copy(OBS01.Text,1,60);
end;

procedure TFrm_Trocas.OBS02Exit(Sender: TObject);
begin
if length(OBS02.Text)>60 then
   OBS02.Text:=copy(OBS02.Text,1,60);

end;

procedure TFrm_Trocas.OBS01KeyPress(Sender: TObject; var Key: Char);
begin
if (key=#8) and (length(OBS01.Text)>58) then
   key:=#0;
end;

procedure TFrm_Trocas.OBS02KeyPress(Sender: TObject; var Key: Char);
begin
if (key=#8) and (length(OBS02.Text)>58) then
   key:=#0;

end;

procedure TFrm_Trocas.BBINCLUIRClick(Sender: TObject);
begin
BBLIMPAR.Click;
mboolean:=true;
Panel_cab.Enabled    :=mboolean;
ORI_CODEMP.Enabled   :=mboolean;
ORI_CHAVE.Enabled    :=mboolean;
ORI_GRAVAR.Enabled   :=mboolean;
ORI_EDITAR.Enabled   :=mboolean;
ORI_CANCELAR.Enabled :=mboolean;
ORI_EXCLUIR.Enabled  :=mboolean;
CB_CHEGARORI.Enabled :=mboolean;
DEV_CODPRO.Enabled   :=mboolean;
DEV_LOTE.Enabled     :=mboolean;
DEV_DTVCTO.Enabled   :=mboolean;
DEV_QTD.Enabled      :=mboolean;
DEV_PU.Enabled       :=mboolean;
DEV_GRAVAR.Enabled   :=mboolean;
DEV_EDITAR.Enabled   :=mboolean;
DEV_CANCELAR.Enabled :=mboolean;
DEV_EXCLUIR.Enabled  :=mboolean;
ENT_CODPRO.Enabled   :=mboolean;
ENT_LOTE.Enabled     :=mboolean;
ENT_DTVCTO.Enabled   :=mboolean;
ENT_QTD.Enabled      :=mboolean;
ENT_PU.Enabled       :=mboolean;
ENT_GRAVAR.Enabled   :=mboolean;
ENT_EDITAR.Enabled   :=mboolean;
ENT_CANCELAR.Enabled :=mboolean;
ENT_EXCLUIR.Enabled  :=mboolean;
gb_totais.Enabled    :=mboolean;
DATA.Text:=FormatDatetime(fdt2, date);
BBINCLUIR.Enabled    :=False;
BBLOCALIZAR.Enabled  :=False;
BBALTERAR.Enabled    :=False;
BBEXCLUIR.Enabled    :=False;
BBGRAVAR.Enabled     :=True;
BBIMPRIMIR.Enabled   :=False;
bbEmitirNF.Enabled   :=False;
BBSAIR.Enabled       :=False;

DATA.SetFocus;

end;

procedure TFrm_Trocas.BBLIMPARClick(Sender: TObject);
begin

if moper_trocas=1 then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Update CADTRO_CAB set TCSITUACAO=0 '
                     +' where TCCODEMP=0'+DM2.Tb_Trocas_CabTCCODEMP.AsString
                     +' and TCLOTSEQ=0'+DM2.Tb_Trocas_CabTCLOTSEQ.AsString
                     +' and TCCHAVE=0'+DM2.Tb_Trocas_CabTCCHAVE.AsString);
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(02,668,'Frm_Trocas','CADTRO_CAB');
      end;
   DM1.Query1.Close;
   end;

moper_trocas         :=0;

CHAVE.Text           :='';
DATA.Text            :='';
CODCLI.Text          :='';
NOMCLI.Text          :='';
CODVEN.Text          :='';
NOMVEN.Text          :='';
OBS01.Text           :='';
OBS02.Text           :='';
STG_ORI.RowCount:=2;
STG_ORI.Rows[1].Clear;
STG_VEN.RowCount:=2;
STG_VEN.Rows[1].Clear;
ORI_CODEMP.Text      :='';
ORI_CHAVE.Text       :='';
ORI_DATA.Text        :='/  /';
ORI_CLIENTE.Text     :='';
ORI_VALOR.Text       :='';
//CB_CHEGARORI.Checked :=false;
STG_DEV.RowCount     :=2;
STG_DEV.Rows[1].Clear;
DEV_CODPRO.Text      :='';
DEV_LOTE.Text        :='';
DEV_DTVCTO.Text      :='/  /';
DEV_QTD.Text         :='';
DEV_NOMPRO.Text      :='';
DEV_PU.Text          :='';
DEV_TOTAL.Text       :='';
ST_TOTDEV.Caption    :='';
STG_ENT.RowCount     :=2;
STG_ENT.Rows[1].Clear;
ENT_CODPRO.Text      :='';
ENT_LOTE.Text        :='';
ENT_DTVCTO.Text      :='/  /';
ENT_QTD.Text         :='';
ENT_NOMPRO.Text      :='';
ENT_PU.Text          :='';
ENT_TOTAL.Text       :='';
ST_TOTENT.Caption    :='';
TOTALDEV.Text        :='';
DESCDEV.Text         :='';
TOTLIQDEV.Text       :='';
TOTALENT.Text        :='';
DESCENT.Text         :='';
TOTLIQENT.Text       :='';
CB_FORMAPAG.ItemIndex:=0;
mboolean:=false;
Panel_cab.Enabled    :=mboolean;
ORI_CODEMP.Enabled   :=mboolean;
ORI_CHAVE.Enabled    :=mboolean;
ORI_GRAVAR.Enabled   :=mboolean;
ORI_EDITAR.Enabled   :=mboolean;
ORI_CANCELAR.Enabled :=mboolean;
ORI_EXCLUIR.Enabled  :=mboolean;
CB_CHEGARORI.Enabled :=mboolean;
DEV_CODPRO.Enabled   :=mboolean;
DEV_LOTE.Enabled     :=mboolean;
DEV_DTVCTO.Enabled   :=mboolean;
DEV_QTD.Enabled      :=mboolean;
DEV_PU.Enabled       :=mboolean;
DEV_GRAVAR.Enabled   :=mboolean;
DEV_EDITAR.Enabled   :=mboolean;
DEV_CANCELAR.Enabled :=mboolean;
DEV_EXCLUIR.Enabled  :=mboolean;
ENT_CODPRO.Enabled   :=mboolean;
ENT_LOTE.Enabled     :=mboolean;
ENT_DTVCTO.Enabled   :=mboolean;
ENT_QTD.Enabled      :=mboolean;
ENT_PU.Enabled       :=mboolean;
ENT_GRAVAR.Enabled   :=mboolean;
ENT_EDITAR.Enabled   :=mboolean;
ENT_CANCELAR.Enabled :=mboolean;
ENT_EXCLUIR.Enabled  :=mboolean;
gb_totais.Enabled    :=mboolean;

BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=False;
bbEfetivar.Enabled :=False;
BBSAIR.Enabled       :=True;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_TROCAS','CB_ESTNEG']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_CHEGARORI.Checked:=true
   else
      CB_CHEGARORI.Checked:=false;
   end
else
   CB_CHEGARORI.Checked:=false;




end;

procedure TFrm_Trocas.ORI_CODEMPEnter(Sender: TObject);
begin
if Trim(ORI_CODEMP.Text)='' then
   ORI_CODEMP.Text:=InttoStr(mCODEMP);
ORI_CODEMP.SelectAll;

end;

procedure TFrm_Trocas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=117 then
   begin
   if form_pedcli_trocas=nil then
      Application.CreateForm(Tfrm_pedcli, form_pedcli_trocas);
      form_pedcli_trocas.Show;
   end;

end;

procedure TFrm_Trocas.ORI_CHAVEExit(Sender: TObject);
begin
if Trim(ORI_CHAVE.Text)<>'' then
   begin
   ORI_CHAVE.Text:=fdeixanum(ORI_CHAVE.Text);
   if not flcadp01(9,ValInt(ORI_CODEMP.Text),ls_numped,ORI_CHAVE.Text,'') then
      begin
      fMensagem('Pedido não Encontrado!, para consultar pedidos tecle [F6]',0,['0'],0);
      ORI_CHAVE.SetFocus;
      end
   else
      begin
      ORI_DATA.Text   :=FormatDatetime(fdt2, DM1.Tb_Ped01P1DATAP.Value);
      ORI_CLIENTE.Text:=DM1.Tb_Ped01nomcli.Value;
      ORI_VALOR.Text  :=FormatFloat(mcasas, DM1.Tb_Ped01P1TOTALL.Value);
      end;

   end;
end;

procedure TFrm_Trocas.ORI_GRAVARClick(Sender: TObject);
var
x: Integer;
begin
if Trim(ORI_CODEMP.Text)='' then
   begin
   fMensagem('Empresa de Origem Campo Obrigatório!',0,['0'],0);
   ORI_CODEMP.SetFocus;
   exit;
   end;
if Trim(ORI_CHAVE.Text)='' then
   begin
   fMensagem('Chave de Origem Campo Obrigatório!',0,['0'],0);
   ORI_CHAVE.SetFocus;
   exit;
   end;
if Trim(ORI_CHAVE.Text)<>'' then
   begin
   ORI_CHAVE.Text:=fdeixanum(ORI_CHAVE.Text);
   if not flcadp01(9,ValInt(ORI_CODEMP.Text),ls_numped,ORI_CHAVE.Text,'') then
      begin
      fMensagem('Pedido não Encontrado!, para consultar pedidos tecle [F6]',0,['0'],0);
      ORI_CHAVE.SetFocus;
      end
   else
      begin
      ORI_DATA.Text   :=FormatDatetime(fdt2, DM1.Tb_Ped01P1DATAP.Value);
      ORI_CLIENTE.Text:=DM1.Tb_Ped01nomcli.Value;
      ORI_VALOR.Text  :=FormatFloat(mcasas, DM1.Tb_Ped01P1TOTALL.Value);
      end;
   end;

for x:=1 to STG_ORI.RowCount-1 do
   begin
   if Trim(STG_ORI.Cells[01,x])='' then
      continue;
   if (mop_ori=1) and (x=mqtd_tro) then
      Continue;

   if (fsonumero(STG_ori.Cells[00,x])=fsonumero(ORI_CODEMP.Text)) and
      (fsonumero(STG_ori.Cells[01,x])=fsonumero(ORI_CHAVE.Text))  and
      (Trim(STG_ori.Cells[02,x])=Trim(ORI_DATA.Text)) then
      begin
      fMensagem('Este Pedido ja foi digitado!',0,['0'],0);
      ORI_CODEMP.SetFocus;
      exit;
      end;
   end;

if mop_ori>0 then
   begin
//   mqtd:=STG_ORI.Row;
   mqtd_tro:=mqtd_tro+1;
   end
else
   begin
   mqtd_tro:=STG_ORI.RowCount;
   STG_ORI.RowCount:=mqtd_tro+1;
   STG_ORI.Rows[mqtd_tro+1].Clear;
   STG_ORI.Rows[mqtd_tro].Clear;
   end;
STG_ORI.Cells[00,mqtd_tro-1]:=ORI_CODEMP.Text;
STG_ORI.Cells[01,mqtd_tro-1]:=ORI_CHAVE.Text;
STG_ORI.Cells[02,mqtd_tro-1]:=ORI_DATA.Text;
STG_ORI.Cells[03,mqtd_tro-1]:=ORI_CLIENTE.Text;
STG_ORI.Cells[04,mqtd_tro-1]:=ORI_VALOR.Text;
STG_ORI.Cells[05,mqtd_tro-1]:=DM1.Tb_Ped01P1CODCLI.AsString;
STG_ORI.Cells[mcol_cp_dev,mqtd_tro-1]:=intTostr(mchave_tro_new);



if mqtd_tro>mnumitemgrid then
   STG_ORI.TopRow:=mqtd_tro-(mnumitemgrid);
ORI_CANCELAR.Click;
fMercadoriasVendidas(0);
if (PageControl1.ActivePageIndex=0) then
   ORI_CODEMP.SetFocus;

end;

procedure TFrm_Trocas.ORI_EDITARClick(Sender: TObject);
begin
if (Trim(STG_ORI.Cells[00,STG_ORI.Row])='') or (STG_ORI.Row=0) then
   begin
   fMensagem('Selecione um ítem para altera-lo!',0,['0'],0);
   end;
mop_ori:=1;
mqtd_tro  :=STG_ORI.row;
ORI_CODEMP.Text :=STG_ORI.Cells[00,STG_ORI.Row];
ORI_CHAVE.Text  :=STG_ORI.Cells[01,STG_ORI.Row];
ORI_DATA.Text   :=STG_ORI.Cells[02,STG_ORI.Row];
ORI_CLIENTE.Text:=STG_ORI.Cells[03,STG_ORI.Row];
ORI_VALOR.Text  :=STG_ORI.Cells[04,STG_ORI.Row];
ORI_CODEMP.Setfocus;

end;

procedure TFrm_Trocas.ORI_CANCELARClick(Sender: TObject);
begin
//ORI_CODEMP.Text      :='';
ORI_CHAVE.Text       :='';
ORI_DATA.Text        :='/  /';
ORI_CLIENTE.Text     :='';
ORI_VALOR.Text       :='';
mop_ori              :=0;
end;

procedure TFrm_Trocas.ORI_EXCLUIRClick(Sender: TObject);
var
x: Integer;
begin
mqtd_tro:=STG_ORI.Row;

if (STG_ORI.Cells[00,01]='') or (STG_ORI.Cells[00,mqtd_tro]='') then
   exit;
mop_ori:=2;
ORI_CODEMP.Text :=STG_ORI.Cells[00,mqtd_tro];
ORI_CHAVE.Text  :=STG_ORI.Cells[01,mqtd_tro];
ORI_DATA.Text   :=STG_ORI.Cells[02,mqtd_tro];
ORI_CLIENTE.Text:=STG_ORI.Cells[03,mqtd_tro];
ORI_VALOR.Text  :=STG_ORI.Cells[04,mqtd_tro];

if fMensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;

if STG_ORI.RowCount=2 then
   begin
   STG_ORI.Rows[1].Clear;
   STG_ORI.Rows[2].Clear;
   end
else
   begin
   for x:=STG_ORI.Row to STG_ORI.RowCount-2 do
      begin
      STG_ORI.Cells[00,x]:=STG_ORI.Cells[00,x+1];
      STG_ORI.Cells[01,x]:=STG_ORI.Cells[01,x+1];
      STG_ORI.Cells[02,x]:=STG_ORI.Cells[02,x+1];
      STG_ORI.Cells[03,x]:=STG_ORI.Cells[03,x+1];
      STG_ORI.Cells[04,x]:=STG_ORI.Cells[04,x+1];
      STG_ORI.Cells[05,x]:=STG_ORI.Cells[05,x+1];
      STG_ORI.Cells[mcol_cp_dev,x]:=STG_ORI.Cells[mcol_cp_dev,x+1];
      end;
   STG_ORI.RowCount:=STG_ORI.RowCount-1;
   end;
ORI_CANCELAR.Click;
fMercadoriasVendidas(0);
end;

procedure TFrm_Trocas.STG_ORIDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
//  colunas: String;
begin
if (arow>0) and ((aCol=0) or (aCol=1) or (aCol=4)) then
//Pega o texto da célula
  begin
  Texto := STG_ORI.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STG_ORI.Canvas.TextWidth(Texto);
  AlturaTexto := STG_ORI.Canvas.TextHeight(Texto);

// Direita
   X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG_ORI.Canvas.TextRect(Rect, X, Y, Texto);
  end;


end;




procedure TFrm_Trocas.DEV_CODPROKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      DEV_CODPRO.Text:=fChamaPro(2,'Frm_Trocas','')
   else
     DEV_CODPRO.Text:=fChamaPro(0,'Frm_Trocas','');
   key:=0;
   end;

end;

procedure TFrm_Trocas.DEV_CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   if (DM1.Tb_PargerPPCOGRA.Value=1) and (length(DEV_CODPRO.Text)<5)  then
      DEV_CODPRO.Text:=fChamaPro(2,'Frm_Trocas',key)
   else
      DEV_CODPRO.Text:=fChamaPro(0,'Frm_Trocas',key);
   key:=#0;
   end;
end;

procedure TFrm_Trocas.DEV_CODPROExit(Sender: TObject);
var
x: Integer;
begin
DEV_CODPRO.Text:=Trim(DEV_CODPRO.Text);
if (DM1.Tb_PargerPPCOGRA.Value<>1) then
   DEV_CODPRO.Text:=fdeixanum(DEV_CODPRO.Text);
if not (DEV_LOTE.Focused) and
   not (DEV_DTVCTO.Focused) and
   not (DEV_QTD.Focused) then
   Exit;

if not flcadpro(1,0,0,fdeixanum(DEV_CODPRO.Text)) then
   begin
   DEV_CODPRO.Text:=FloatToStr(fAchaCodigoOri(DEV_CODPRO.Text));
   if ValFloat(DEV_QTD.Text)<=1 then
      DEV_QTD.Text:=FormatFloat(mcasqtd, pRet_Qtd);
   if ValFloat(DEV_QTD.Text)=0 then
      DEV_QTD.Text:=FormatFloat(mcasqtd, 1);
   DEV_LOTE.Text:=pRet_Lote;
   if pRet_DtVcto<=pdatanula then
      DEV_DTVCTO.Text:='/  /'
   else
      DEV_DTVCTO.Text:=FormatDatetime(fdt2, pRet_DtVcto);
   if trim(DEV_CODPRO.Text)='' then
      begin
      FMensagem('Produto não Cadastrado!',0,['0'],0);
      DEV_CODPRO.SetFocus;
      exit;
      end;

   if not flcadpro(1,0,0,fdeixanum(DEV_CODPRO.Text)) then
      begin
      FMensagem('Produto não Cadastrado!',0,['0'],0);
      DEV_CODPRO.SetFocus;
      exit;
      end;
   end;
DEV_CODPRO.Text:=DM1.Tb_ProPDCODPRO.AsString;
DEV_PU.Text    :=Formatfloat(mcasas, DM1.Tb_ProPDPRECO1.Value);

if not flcadpro(1,0,0,Trim(DEV_CODPRO.Text)) then
   begin
   fMensagem('Produto não cadastrado!',0,['0'],0);
   DEV_CODPRO.setfocus;
   exit;
   end;
DEV_NOMPRO.Text:=DM1.Tb_ProPDNOME.AsString;

if valint(copy(mpseg,4,2))=00 then
   begin
   for x:=1 to STG_DEV.RowCount-1 do
      begin
      if Trim(STG_DEV.Cells[01,x])='' then
         continue;
      if (mop_dev=1) and (x=mqtd_tro) then
         Continue;
      if (fsonumero(STG_DEV.Cells[00,x])=fsonumero(DEV_CODPRO.Text)) then
         begin
         if fMensagem('Produto já digitado quer altera-lo?',0,['1','2'],2)=mrYes then
            begin
            STG_DEV.Row:=x;
            DEV_EDITAR.Click;
            exit;
            end
         else
            begin
            DEV_CANCELAR.Click;
            exit;
            end;
         end;
      end;
   end;

DEV_TOTAL.Text:=FormatFloat(mcasas, ValFloat(DEV_QTD.Text)*ValFloat(DEV_PU.Text));
end;

function tFrm_Trocas.fbuscarPrecoVenda(pTipo: Integer;pCodPro: Real; pLote, pDtvcto: String): Real;
// 0 - Sem Grade sem Lote
// 1 - com Grade
// 2 - com grade e lote;
var
y: Integer;
mpreco: Real;
begin
mpreco:=0;
for y:=1 to STG_VEN.RowCount do
   begin
   if fsonumero(STG_VEN.Cells[00,y])=0 then
      Continue;
   if ptipo=2 then
      begin
      if (fsonumero(STG_VEN.Cells[00,y])=pCodPro) and
         (trim(STG_VEN.Cells[01,y])=(trim(pLote))) then
         begin
         try
            mpreco:=valfloat(STG_VEN.Cells[08,y])/ValFloat(STG_VEN.Cells[03,y]);
         except
            mpreco:=valfloat(STG_VEN.Cells[06,y])
            end;
         mpreco:=Arredonda(mpreco,mQtdCas_arredpu);
         end;
      end
   else if ptipo=1 then
      begin
      if (fsonumero(STG_VEN.Cells[00,y])=pCodPro) and
         (trim(STG_VEN.Cells[01,y])=(trim(pLote))) and
         (trim(STG_VEN.Cells[02,y])=(trim(pDtvcto))) then
         begin
         try
            mpreco:=valfloat(STG_VEN.Cells[08,y])/ValFloat(STG_VEN.Cells[03,y]);
         except
            mpreco:=valfloat(STG_VEN.Cells[06,y])
            end;
         mpreco:=Arredonda(mpreco,mQtdCas_arredpu);
         end;
      end
   else
      begin
      if fsonumero(STG_VEN.Cells[00,y])=pCodPro then
         begin
         try
            mpreco:=valfloat(STG_VEN.Cells[08,y])/ValFloat(STG_VEN.Cells[03,y]);
         except
            mpreco:=valfloat(STG_VEN.Cells[06,y])
            end;
         mpreco:=Arredonda(mpreco,mQtdCas_arredpu);
         break;
         end;
      end;
   end;
result:=mpreco;
end;

procedure TFrm_Trocas.DEV_LOTEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if form_conslot_trocas=nil then
      Application.CreateForm(Tfrm_conslot,form_conslot_trocas)
   else
      begin
      form_conslot_trocas.close;
      form_conslot_trocas.Free;
      form_conslot_trocas:=nil;
      Application.CreateForm(Tfrm_conslot,form_conslot_trocas);
      end;
   flcadlgc(0,0,0,DM1.Tb_ProPDCODPRO.AsString,'','');
   form_conslot_trocas.CODPRO.Text:=DM1.Tb_ProPDCODPRO.AsString;
   form_conslot_trocas.NOMPRO.Text:=DM1.Tb_ProPDNOME.AsString;
   form_conslot_trocas.CODPRO.Enabled:=True;
   if valint(copy(mpseg,4,2))=2 then
      begin
      form_conslot_trocas.Caption:='Consulta no arquivo de Grades';
      form_conslot_trocas.DBGrid1.Columns[0].Visible:=false;
      form_conslot_trocas.DBGrid1.Columns[1].Title.Caption:='Grade';
      end;
   Form_ConsLot_trocas.mConsLotOrigem:=1;
   form_conslot_trocas.ShowModal;
   if trim(Form_ConsLot_trocas.plote)<>'' then
      DEV_LOTE.Text:=Form_ConsLot_trocas.plote;
   if Trim(Form_ConsLot_trocas.pdtvcto)<>'' then
      DEV_DTVCTO.Text:=Form_ConsLot_trocas.pdtvcto;
   form_conslot_trocas.close;
   freeandnil(form_conslot_trocas);

   end;

end;

procedure TFrm_Trocas.DEV_PUExit(Sender: TObject);
begin
DEV_PU.Text:=FormatFloat(mcasaspu, ValFloat(DEV_PU.Text));
DEV_TOTAL.Text:=FormatFloat(mcasas, ValFloat(DEV_QTD.Text)*ValFloat(DEV_PU.Text));
end;

procedure TFrm_Trocas.DEV_QTDExit(Sender: TObject);
begin
if (DM1.Tb_ProPDFRACAO.Value<>1) then
   begin
   if Trunc(ValFloat(DEV_QTD.Text))<>ValFloat(DEV_QTD.Text) then
      begin
      fMensagem('Não é permitido fracionar este produto!',0,['0'],0);
      DEV_QTD.SetFocus;
      exit;
      end;
   end;
DEV_QTD.Text  :=FormatFloat(mcasaspu, ValFloat(DEV_QTD.Text));
DEV_TOTAL.Text:=FormatFloat(mcasas, ValFloat(DEV_QTD.Text)*ValFloat(DEV_PU.Text));

end;

procedure TFrm_Trocas.DEV_GRAVARClick(Sender: TObject);
var
x: Integer;
begin
if Trim(DEV_CODPRO.Text)='' then
   begin
   fMensagem('Codigo do Produto, Campo Obrigatório!',0,['0'],0);
   DEV_CODPRO.SetFocus;
   exit;
   end;
if fsonumero(DEV_QTD.Text)=0 then
   begin
   fMensagem('Quantidade Campo Obrigatório!',0,['0'],0);
   DEV_QTD.SetFocus;
   exit;
   end;
if Trim(DEV_PU.Text)='' then
   begin
   fMensagem('Preco Unitario Campo Obrigatório!',0,['0'],0);
   DEV_PU.SetFocus;
   exit;
   end;

if not flcadpro(1,0,0,Trim(DEV_CODPRO.Text)) then
   begin
   fMensagem('Produto não cadastrado!',0,['0'],0);
   DEV_CODPRO.setfocus;
   end;
if valint(copy(mpseg,4,2))=02 then  // grade cores tamanho
   begin
   if not flcadlgc(0,1,0,Trim(DEV_CODPRO.Text),DEV_lote.Text,'') then
      begin
      fMensagem('Grade Nao cadastrada!',0,['0'],0);
      DEV_CODPRO.SetFocus;
      exit;
      end
   end;
{
else if (Trim(DEV_LOTE.Text)<>'') or (trim(DEV_DTVCTO.Text)<>'/  /') then
   begin
   if Trim(DEV_DTVCTO.Text)<>'/  /' then
      mcinst:=FormatDatetime(fdt, StrtoDate(DEV_DTVCTO.Text))
   else
      mcinst:='';
   if not flcadlgc(0,1,0,Trim(DEV_LOTE.Text),mcinst,'') then
      begin
      fMensagem('Grade Nao cadastrada!',0,['0'],0);
      DEV_CODPRO.SetFocus;
      exit;
      end
   end;
}
for x:=1 to STG_DEV.RowCount-1 do
   begin
   if Trim(STG_DEV.Cells[00,x])='' then
      continue;
   if (mop_dev=1) and (x=mqtd_tro) then
      Continue;
   if (fsonumero(STG_DEV.Cells[00,x])=fsonumero(DEV_CODPRO.Text)) and
      (Trim(STG_DEV.Cells[01,x])     =Trim(DEV_LOTE.Text)) and
      (Trim(STG_DEV.Cells[02,x])     =Trim(DEV_DTVCTO.Text)) then
      begin
      if fMensagem(pchar('Este Produto já foi Digitado, Quer Altera-lo?'),0,['1','2'],2)=mrYes then
         begin
         STG_DEV.Row:=x;
         DEV_EDITAR.Click;
         end;
      DEV_CODPRO.SetFocus;
      exit;
      end;
   end;



if not CB_CHEGARORI.Checked then
   begin
   fQtdVendida(valint(copy(mpseg,4,2)),DM1.Tb_ProPDCODPRO.Value,DEV_LOTE.Text,Trim(DEV_DTVCTO.Text));
   if mqtdven=0 then
      begin
      fMensagem('Produto não encontrado no pedido de Origem!',0,['0'],0);
      exit;
      end
   else if valfloat(DEV_QTD.Text)>(mqtdven-mqtddev) then
      begin
      fMensagem('Quantidade Vendida: '+FormatFloat(mcasqtd, mqtdven)+#13
                +iif(mqtddev<>0,'Quantidade ja Devolvida: '+FormatFloat(mcasqtd, mqtddev)+#13,'')
                +'Quantidade máxima para devolução: '+FormatFloat(mcasqtd, (mqtdven-mqtddev))
                ,0,['0'],0);
      exit;
      end
   end;



if mop_dev>0 then
   begin
   mqtd_tro:=STG_DEV.Row;
   mqtd_tro:=mqtd_tro+1;
   end
else
   begin
   mqtd_tro          :=STG_DEV.RowCount;
   STG_DEV.RowCount  :=mqtd_tro+1;
   STG_DEV.Rows[mqtd_tro+1].Clear;
   STG_DEV.Rows[mqtd_tro].Clear;
   end;
STG_DEV.Cells[00,mqtd_tro-1]:=DEV_CODPRO.Text;
STG_DEV.Cells[01,mqtd_tro-1]:=DEV_LOTE.Text;
STG_DEV.Cells[02,mqtd_tro-1]:=DEV_DTVCTO.Text;
STG_DEV.Cells[03,mqtd_tro-1]:=DEV_QTD.Text;
STG_DEV.Cells[04,mqtd_tro-1]:=DEV_NOMPRO.Text;
STG_DEV.Cells[05,mqtd_tro-1]:=DEV_PU.Text;
STG_DEV.Cells[06,mqtd_tro-1]:=DEV_TOTAL.Text;

if mqtd_tro>mnumitemgrid then
   STG_DEV.TopRow:=mqtd_tro-(mnumitemgrid);
DEV_CANCELAR.Click;
DEV_CODPRO.SetFocus;
fCalcular(0);

end;

procedure TFrm_Trocas.DEV_EDITARClick(Sender: TObject);
begin
if (Trim(STG_DEV.Cells[00,STG_DEV.Row])='') or (STG_DEV.Row=0) then
   begin
   fMensagem('Selecione um ítem para altera-lo!',0,['0'],0);
   end;
mop_dev:=1;
mqtd_tro:=STG_DEV.Row;

DEV_CODPRO.Text:=STG_DEV.Cells[00,STG_DEV.Row];
DEV_LOTE.Text  :=STG_DEV.Cells[01,STG_DEV.Row];
DEV_DTVCTO.Text:=STG_DEV.Cells[02,STG_DEV.Row];
DEV_QTD.Text   :=STG_DEV.Cells[03,STG_DEV.Row];
DEV_NOMPRO.Text:=STG_DEV.Cells[04,STG_DEV.Row];
DEV_PU.Text    :=STG_DEV.Cells[05,STG_DEV.Row];
DEV_TOTAL.Text :=STG_DEV.Cells[06,STG_DEV.Row];
DEV_CODPRO.Setfocus;

end;

procedure TFrm_Trocas.DEV_CANCELARClick(Sender: TObject);
begin
DEV_CODPRO.Text:='';
DEV_LOTE.Text  :='';
DEV_DTVCTO.Text:='';
DEV_QTD.Text   :='';
DEV_NOMPRO.Text:='';
DEV_PU.Text    :='';
DEV_TOTAL.Text :='';
mop_dev:=0;
end;

procedure TFrm_Trocas.DEV_PUEnter(Sender: TObject);
begin
DEV_PU.SelectAll;
end;

procedure TFrm_Trocas.DEV_CODPROEnter(Sender: TObject);
begin
DEV_CODPRO.SelectAll;

end;

procedure TFrm_Trocas.DEV_LOTEEnter(Sender: TObject);
begin
DEV_LOTE.SelectAll;

end;

procedure TFrm_Trocas.DEV_DTVCTOEnter(Sender: TObject);
begin
DEV_DTVCTO.SelectAll;

end;

procedure TFrm_Trocas.DEV_QTDEnter(Sender: TObject);
begin
DEV_QTD.SelectAll;

end;

procedure TFrm_Trocas.STG_DEVDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
//  colunas: String;
begin
if (arow>0) and ((aCol=0) or (aCol=3) or (aCol=5) or (aCol=6)) then
//Pega o texto da célula
  begin
  Texto := STG_DEV.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STG_DEV.Canvas.TextWidth(Texto);
  AlturaTexto := STG_DEV.Canvas.TextHeight(Texto);

// Direita
   X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG_DEV.Canvas.TextRect(Rect, X, Y, Texto);
  end;


end;

procedure TFrm_Trocas.STG_ENTDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
//  colunas: String;
begin
if (arow>0) and ((aCol=0) or (aCol=3) or (aCol=5) or (aCol=6)) then
//Pega o texto da célula
  begin
  Texto := STG_ENT.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STG_ENT.Canvas.TextWidth(Texto);
  AlturaTexto := STG_ENT.Canvas.TextHeight(Texto);

// Direita
   X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG_ENT.Canvas.TextRect(Rect, X, Y, Texto);
  end;



end;
function TFrm_Trocas.fMercadoriasVendidas(pTipo:Integer): Boolean;
var
x: Integer;
begin
STG_VEN.RowCount:=2;
STG_VEN.Rows[1].Clear;
for x:=1 to STG_ORI.RowCount do
   begin
   if ValFloat(STG_ORI.cells[01,x])=0 then
      Continue;
   DM1.Query4.Close;
   DM1.Query4.SQL.Clear;

   DM1.Query4.SQL.add('Select P2CODEMP,P2LOTSEQ,P2CHAVE,P2ORDEM, '
                     +'P2CODPRO,NVL(P2LM_QTD,P2QTD) AS P2QTD,NVL(P2LM_LOTE,'+quotedstr('')+') AS P2LOTE'
                     +',NVL(P2LM_DTVCTO,null) AS P2DTVCTO, '
                     +' P2PRECO,P2TOTLIQ,P2QTDDEV, '
                     +' P2TOTDES,PDNOME,PDUND '
                     +' from CADP02  left join CADP02_LOTES ON ( '
                     +' P2LM_CODEMP=P2CODEMP AND P2LM_CHAVE=P2CHAVE AND P2LM_LOTSEQ=P2LOTSEQ AND P2LM_ITEM=P2ITEM)  ,CADPRO where '
                     +' P2CODEMP=0'+fdeixanum(STG_ORI.Cells[00,x])
                     +' and P2LOTSEQ=0'+IntToStr(ls_numped)
                     +' and P2CHAVE=0'+fdeixanum(STG_ORI.Cells[01,x])
                     +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'','  and PDCODEMP=P2CODEMP ')
                     +' and PDCODPRO=P2CODPRO '
                     +' order by PDNOME ');

{
Select P2CODEMP,P2LOTSEQ,P2CHAVE,P2ORDEM, P2CODPRO
,NVL(P2LM_QTD,P2QTD) AS P2QTD
,NVL(P2LM_LOTE,'') AS  P2LOTE,
NVL(P2LM_DTVCTO,null) AS P2DTVCTO, P2PRECO,P2TOTLIQ,P2QTDDEV, P2TOTDES,PDNOME,PDUND
from CADP02 left join CADP02_LOTES ON (
 P2LM_CODEMP=P2CODEMP AND P2LM_CHAVE=P2CHAVE AND P2LM_LOTSEQ=P2LOTSEQ AND P2LM_ITEM=P2ITEM)  ,CADPRO
 where
  P2CODEMP=01 and P2LOTSEQ=00 and P2CHAVE=016210 and PDCODPRO=P2CODPRO  order by PDNOME


Select P2CODEMP,P2LOTSEQ,P2CHAVE,P2ORDEM, P2CODPRO,P2LM_QTD AS P2QTD,
P2LM_LOTE AS  P2LOTE,
P2LM_DTVCTO AS P2DTVCTO, P2PRECO,P2TOTLIQ,P2QTDDEV, P2TOTDES,PDNOME,PDUND
from CADP02,CADPRO,CADP02_LOTES
 where
 P2LM_CODEMP=P2CODEMP AND P2LM_CHAVE=P2CHAVE AND P2LM_LOTSEQ=P2LOTSEQ AND P2LM_ITEM=P2ITEM
 AND
  P2CODEMP=01 and P2LOTSEQ=00 and P2CHAVE=016209 and PDCODPRO=P2CODPRO  order by PDNOME


   ex_erroSql_Novo(DM1.Query4,1642,'SGE','CADMOV_PROD_REPETIDO');
 }
   try
      DM1.Query4.Open;
   except on e : exception do
      begin
      ex_erroSql_Novo(DM1.Query4,1642,'SGE','CADMOV_PROD_REPETIDO');
      end;
      end;


   While not DM1.Query4.Eof do
      begin
      mqtd_tro:=STG_VEN.RowCount;
      STG_VEN.RowCount:=mqtd_tro+1;
      STG_VEN.Rows[mqtd_tro].Clear;
      STG_VEN.Cells[00,mqtd_tro-1]:=DM1.Query4.fieldByName('P2CODPRO').AsString;
      STG_VEN.Cells[01,mqtd_tro-1]:=DM1.Query4.fieldByName('P2LOTE').AsString;
      if  (DM1.Query4.fieldByName('P2DTVCTO').IsNull) or
          (DM1.Query4.FieldByName('P2DTVCTO').AsDateTime<=pdatanula) then
          STG_VEN.Cells[02,mqtd_tro-1]:='/  /'
      else
         STG_VEN.Cells[02,mqtd_tro-1]:=FormatDatetime(fdt2, DM1.Query4.fieldByName('P2DTVCTO').AsDateTime);
      STG_VEN.Cells[03,mqtd_tro-1]:=FormatFloat(mcasqtd, DM1.Query4.fieldByName('P2QTD').AsFloat);
      STG_VEN.Cells[04,mqtd_tro-1]:=DM1.Query4.fieldByName('PDUND').AsString;
      STG_VEN.Cells[05,mqtd_tro-1]:=DM1.Query4.fieldByName('PDNOME').AsString;
      STG_VEN.Cells[06,mqtd_tro-1]:=FormatFloat(mcasaspu, DM1.Query4.fieldByName('P2PRECO').AsFloat);
      STG_VEN.Cells[07,mqtd_tro-1]:=FormatFloat(mcasas, DM1.Query4.fieldByName('P2TOTDES').AsFloat);
      STG_VEN.Cells[08,mqtd_tro-1]:=FormatFloat(mcasqtd, (DM1.Query4.fieldByName('P2QTD').AsFloat
                                                     *DM1.Query4.FieldbyName('P2PRECO').AsFloat)
                                                     -DM1.Query4.fieldbyName('P2TOTDES').AsFloat);
      STG_VEN.Cells[09,mqtd_tro-1]:=FormatFloat(mcasqtd, DM1.Query4.fieldByName('P2QTDDEV').AsFloat);

      STG_VEN.Cells[10,mqtd_tro-1]:=DM1.Query4.fieldByName('P2CODEMP').AsString;
      STG_VEN.Cells[11,mqtd_tro-1]:=DM1.Query4.fieldByName('P2LOTSEQ').AsString;
      STG_VEN.Cells[12,mqtd_tro-1]:=DM1.Query4.fieldByName('P2CHAVE').AsString;
      STG_VEN.Cells[13,mqtd_tro-1]:=STG_ORI.Cells[02,x];

      DM1.Query4.Next;
      end;
   end;
result:=true;
end;

procedure TFrm_Trocas.STG_VENDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
//  colunas: String;
begin
if (arow>0) and ((aCol=3) or (aCol=6) or (aCol=7) or (aCol=8)or (aCol=9) or (aCol=11) or (aCol=12) )  then
//Pega o texto da célula
  begin

  Texto := STG_VEN.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STG_VEN.Canvas.TextWidth(Texto);
  AlturaTexto := STG_VEN.Canvas.TextHeight(Texto);

// Direita
   X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG_VEN.Canvas.TextRect(Rect, X, Y, Texto);

  end;



end;

procedure TFrm_Trocas.ORI_CHAVEEnter(Sender: TObject);
begin
ORI_CHAVE.SelectAll;
end;

procedure TFrm_Trocas.DEV_LOTEExit(Sender: TObject);
var
x: Integer;
begin
if valint(copy(mpseg,4,2))=02 then  // grade cores tamanho
   begin
   if not flcadlgc(0,1,0,Trim(DEV_CODPRO.Text),DEV_lote.Text,'') then
      begin
      fMensagem('Grade Nao cadastrada!',0,['0'],0);
      DEV_CODPRO.SetFocus;
      exit;
      end;
   if ValFloat(DEV_PU.Text)=0 then
      begin
      if DM1.Tb_PargerPPCOGRA.Value<>1 then
         begin
         if CB_CHEGARORI.Checked then
            DEV_PU.Text:=FormatFloat(mcasaspu, DM1.Tb_ProPDPRECO1.Value)
         else
            begin
            DEV_PU.Text:=Formatfloat(mcasaspu, fbuscarPrecoVenda(2,DM1.Tb_ProPDCODPRO.Value,DEV_LOTE.Text,''));
            if ValFloat(DEV_PU.Text)=0 then
               DEV_PU.Text:=FormatFloat(mcasaspu, DM1.Tb_LGCCLPRECO1.Value)
            end;
         end;
      end;
   end;

if valint(copy(mpseg,4,2))=02 then
   begin
   for x:=1 to STG_DEV.RowCount-1 do
      begin
      if Trim(STG_DEV.Cells[01,x])='' then
         continue;
      if (mop_dev=1) and (x=mqtd_tro) then
         Continue;
      if (fsonumero(STG_DEV.Cells[00,x])=fsonumero(DEV_CODPRO.Text)) and
         (Trim(STG_DEV.Cells[01,x])=Trim(DEV_LOTE.Text)) then
         begin
         if fMensagem('Produto já digitado quer altera-lo?',0,['1','2'],2)=mrYes then
            begin
            STG_DEV.Row:=x;
            DEV_EDITAR.Click;
            exit;
            end
         else
            begin
            DEV_CANCELAR.Click;
            exit;
            end;
         end;
      end;
   end;

DEV_TOTAL.Text:=FormatFloat(mcasas, ValFloat(DEV_QTD.Text)*ValFloat(DEV_PU.Text));

end;

procedure TFrm_Trocas.DEV_DTVCTOExit(Sender: TObject);
var
x: Integer;
begin
if Trim(DEV_DTVCTO.Text)<>'/  /' then
   begin
   try
      DEV_DTVCTO.Text:=FormatDateTime(fdt2, StrToDate(DEV_DTVCTO.Text));
   except
      fMensagem('Data inválida!',0,['0'],0);
      DEV_DTVCTO.SetFocus;
      exit;
      end;
   end;
if Trim(DEV_DTVCTO.Text)<>'/  /' then
   mcinst:=FormatDatetime(fdt, StrtoDate(DEV_DTVCTO.Text))
else
   mcinst:='';
{
if not flcadlgc(0,1,0,Trim(DEV_LOTE.Text),mcinst,'') then
   begin
   fMensagem('Lote não cadastrado!',0,['0'],0);
   DEV_CODPRO.SetFocus;
   exit;
   end;
}
if ValFloat(DEV_PU.Text)=0 then
   begin
   if DM1.Tb_PargerPPCOGRA.Value<>1 then
      begin
      if CB_CHEGARORI.Checked then
         DEV_PU.Text:=FormatFloat(mcasaspu, DM1.Tb_ProPDPRECO1.Value)
      else
         begin
         DEV_PU.Text:=Formatfloat(mcasaspu, fbuscarPrecoVenda(1,DM1.Tb_ProPDCODPRO.Value,DEV_LOTE.Text,mcinst));
         if ValFloat(DEV_PU.Text)=0 then
            DEV_PU.Text:=FormatFloat(mcasaspu, DM1.Tb_ProPDPRECO1.Value)
         end;
      end;
   end;
if valint(copy(mpseg,4,2))=01 then
   begin
   for x:=1 to STG_DEV.RowCount-1 do
      begin
      if Trim(STG_DEV.Cells[01,x])='' then
         continue;
      if (mop_dev=1) and (x=mqtd_tro) then
         Continue;
      if (fsonumero(STG_DEV.Cells[00,x])=fsonumero(DEV_CODPRO.Text)) and
         (Trim(STG_DEV.Cells[01,x])=Trim(DEV_LOTE.Text)) and
         (Trim(STG_DEV.Cells[02,x])=Trim(DEV_DTVCTO.Text)) then
         begin
         if fMensagem('Produto já digitado quer altera-lo?',0,['1','2'],2)=mrYes then
            begin
            STG_DEV.Row:=x;
            DEV_EDITAR.Click;
            exit;
            end
         else
            begin
            DEV_CANCELAR.Click;
            exit;
            end;
         end;
      end;
   end;
DEV_TOTAL.Text:=FormatFloat(mcasas, ValFloat(DEV_QTD.Text)*ValFloat(DEV_PU.Text));


end;

function TFrm_Trocas.fQtdVendida(pTipo: Integer;pCodPro: Real; pLote, pDtvcto: String): Boolean;
var
y: Integer;
begin
mqtdven:=0;
mqtddev:=0;
for y:=1 to STG_VEN.RowCount do
   begin
   if ValFloat(STG_VEN.cells[00,y])=0 then
      Continue;
   if ptipo=2 then
      begin
      if (fsonumero(STG_VEN.Cells[00,y])=pCodPro) and
         (trim(STG_VEN.Cells[01,y])=(trim(pLote))) then
         begin
         mqtdven:=mqtdven+valfloat(STG_VEN.Cells[03,y]);
         mqtddev:=mqtddev+valfloat(STG_VEN.Cells[09,y]);
         end;
      end
   else if ptipo=1 then
      begin
      if (fsonumero(STG_VEN.Cells[00,y])=pCodPro) and
         (trim(STG_VEN.Cells[01,y])=(trim(pLote))) and
         (trim(STG_VEN.Cells[02,y])=(trim(pDtvcto))) then
         begin
         mqtdven:=mqtdven+valfloat(STG_VEN.Cells[03,y]);
         mqtddev:=mqtddev+valfloat(STG_VEN.Cells[09,y]);
         end;
      end
   else
      begin
      if fsonumero(STG_VEN.Cells[00,y])=pCodPro then
         begin
         mqtdven:=mqtdven+valfloat(STG_VEN.Cells[03,y]);
         mqtddev:=mqtddev+valfloat(STG_VEN.Cells[09,y]);
         end;
      end;
   end;
result:=true;
end;
procedure TFrm_Trocas.DEV_EXCLUIRClick(Sender: TObject);
var
x: Integer;
begin
mqtd_tro:=STG_DEV.Row;

if (STG_DEV.Cells[00,01]='') or (STG_DEV.Cells[00,mqtd_tro]='') then
   exit;
mop_DEV:=2;
DEV_CODPRO.Text:=STG_DEV.Cells[00,STG_DEV.Row];
DEV_LOTE.Text  :=STG_DEV.Cells[01,STG_DEV.Row];
DEV_DTVCTO.Text:=STG_DEV.Cells[02,STG_DEV.Row];
DEV_QTD.Text   :=STG_DEV.Cells[03,STG_DEV.Row];
DEV_NOMPRO.Text:=STG_DEV.Cells[04,STG_DEV.Row];
DEV_PU.Text    :=STG_DEV.Cells[05,STG_DEV.Row];
DEV_TOTAL.Text :=STG_DEV.Cells[06,STG_DEV.Row];

if fMensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;

if STG_DEV.RowCount=2 then
   begin
   STG_DEV.Rows[1].Clear;
   STG_DEV.Rows[2].Clear;
   end
else
   begin
   for x:=STG_DEV.Row to STG_DEV.RowCount-2 do
      begin
      STG_DEV.Cells[00,x]:=STG_DEV.Cells[00,x+1];
      STG_DEV.Cells[01,x]:=STG_DEV.Cells[01,x+1];
      STG_DEV.Cells[02,x]:=STG_DEV.Cells[02,x+1];
      STG_DEV.Cells[03,x]:=STG_DEV.Cells[03,x+1];
      STG_DEV.Cells[04,x]:=STG_DEV.Cells[04,x+1];
      STG_DEV.Cells[05,x]:=STG_DEV.Cells[05,x+1];
      STG_DEV.Cells[06,x]:=STG_DEV.Cells[06,x+1];
      end;
   STG_DEV.RowCount:=STG_DEV.RowCount-1;
   end;
DEV_CANCELAR.Click;
fCalcular(0);

end;

procedure TFrm_Trocas.ENT_CODPROEnter(Sender: TObject);
begin
ENT_CODPRO.SelectAll;

end;

procedure TFrm_Trocas.ENT_CODPROExit(Sender: TObject);
var
x: Integer;
begin
ENT_CODPRO.Text:=Trim(ENT_CODPRO.Text);
if (DM1.Tb_PargerPPCOGRA.Value<>1) then
   ENT_CODPRO.Text:=fdeixanum(ENT_CODPRO.Text);
if not (ENT_LOTE.Focused) and
   not (ENT_DTVCTO.Focused) and
   not (ENT_QTD.Focused) then
   Exit;


if not flcadpro(1,0,0,fdeixanum(ENT_CODPRO.Text)) then
   begin
   ENT_CODPRO.Text:=FloatToStr(fAchaCodigoOri(ENT_CODPRO.Text));
   if ValFloat(ENT_QTD.Text)<=1 then
      ENT_QTD.Text:=FormatFloat(mcasqtd, pRet_Qtd);
   if ValFloat(ENT_QTD.Text)=0 then
      ENT_QTD.Text:=FormatFloat(mcasqtd, 1);
   ENT_LOTE.Text:=pRet_Lote;
   if pRet_DtVcto<=pdatanula then
      ENT_DTVCTO.Text:='/  /'
   else
      ENT_DTVCTO.Text:=FormatDatetime(fdt2, pRet_DtVcto);
   if trim(ENT_CODPRO.Text)='' then
      begin
      FMensagem('Produto não Cadastrado!',0,['0'],0);
      ENT_CODPRO.SetFocus;
      exit;
      end;

   if not flcadpro(1,0,0,fdeixanum(ENT_CODPRO.Text)) then
      begin
      FMensagem('Produto não Cadastrado!',0,['0'],0);
      ENT_CODPRO.SetFocus;
      exit;
      end;
   end;
ENT_CODPRO.Text:=DM1.Tb_ProPDCODPRO.AsString;
ENT_PU.Text    :=Formatfloat(mcasas, DM1.Tb_ProPDPRECO1.Value);

ENT_NOMPRO.Text:=DM1.Tb_ProPDNOME.AsString;

if valint(copy(mpseg,4,2))=00 then
   begin
   for x:=1 to STG_ENT.RowCount-1 do
      begin
      if Trim(STG_ENT.Cells[01,x])='' then
         continue;
      if (mop_ENT=1) and (x=mqtd_tro) then
         Continue;
      if (fsonumero(STG_ENT.Cells[00,x])=fsonumero(ENT_CODPRO.Text)) then
         begin
         if fMensagem('Produto já digitado quer altera-lo?',0,['1','2'],2)=mrYes then
            begin
            STG_ENT.Row:=x;
            ENT_EDITAR.Click;
            exit;
            end
         else
            begin
            ENT_CANCELAR.Click;
            exit;
            end;
         end;
      end;
   end;

ENT_TOTAL.Text:=FormatFloat(mcasas, ValFloat(ENT_QTD.Text)*ValFloat(ENT_PU.Text));

end;

procedure TFrm_Trocas.ENT_CODPROKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      ENT_CODPRO.Text:=fChamaPro(2,'Frm_Trocas','')
   else
     ENT_CODPRO.Text:=fChamaPro(0,'Frm_Trocas','');
   key:=0;
   end;


end;

procedure TFrm_Trocas.ENT_LOTEEnter(Sender: TObject);
begin
ENT_LOTE.SelectAll;

end;

procedure TFrm_Trocas.ENT_LOTEExit(Sender: TObject);
var
x: Integer;
begin
if valint(copy(mpseg,4,2))=02 then  // grade cores tamanho
   begin
   if not flcadlgc(0,1,0,Trim(ENT_CODPRO.Text),ENT_lote.Text,'') then
      begin
      fMensagem('Grade Nao cadastrada!',0,['0'],0);
      ENT_CODPRO.SetFocus;
      exit;
      end;
   if ValFloat(ENT_PU.Text)=0 then
      begin
      if DM1.Tb_PargerPPCOGRA.Value<>1 then
         ENT_PU.Text:=FormatFloat(mcasaspu, DM1.Tb_ProPDPRECO1.Value)
      else
         ENT_PU.Text:=FormatFloat(mcasaspu, DM1.Tb_LGCCLPRECO1.Value);
      end;
   end;

if valint(copy(mpseg,4,2))=02 then
   begin
   for x:=1 to STG_ENT.RowCount-1 do
      begin
      if Trim(STG_ENT.Cells[01,x])='' then
         continue;
      if (mop_ENT=1) and (x=mqtd_tro) then
         Continue;
      if (fsonumero(STG_ENT.Cells[00,x])=fsonumero(ENT_CODPRO.Text)) and
         (Trim(STG_ENT.Cells[01,x])=Trim(ENT_LOTE.Text)) then
         begin
         if fMensagem('Produto já digitado quer altera-lo?',0,['1','2'],2)=mrYes then
            begin
            STG_ENT.Row:=x;
            ENT_EDITAR.Click;
            exit;
            end
         else
            begin
            ENT_CANCELAR.Click;
            exit;
            end;
         end;
      end;
   end;

ENT_TOTAL.Text:=FormatFloat(mcasas, ValFloat(ENT_QTD.Text)*ValFloat(ENT_PU.Text));


end;

procedure TFrm_Trocas.ENT_LOTEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if form_conslot_trocas=nil then
      Application.CreateForm(TFrm_conslot,form_conslot_trocas)
   else
      begin
      form_conslot_trocas.close;
      form_conslot_trocas.Free;
      form_conslot_trocas:=nil;
      Application.CreateForm(Tfrm_conslot,form_conslot_trocas)
      end;
   flcadlgc(0,0,0,DM1.Tb_ProPDCODPRO.AsString,'','');
   form_conslot_trocas.CODPRO.Text:=DM1.Tb_ProPDCODPRO.AsString;
   form_conslot_trocas.NOMPRO.Text:=DM1.Tb_ProPDNOME.AsString;
   form_conslot_trocas.CODPRO.Enabled:=True;
   if valint(copy(mpseg,4,2))=2 then
      begin
      form_conslot_trocas.Caption:='Consulta no arquivo de Grades';
      form_conslot_trocas.DBGrid1.Columns[0].Visible:=false;
      form_conslot_trocas.DBGrid1.Columns[1].Title.Caption:='Grade';
      end;
   form_conslot_trocas.mConsLotOrigem:=1;
   form_conslot_trocas.ShowModal;
   if trim(form_conslot_trocas.plote)<>'' then
      ENT_LOTE.Text:=form_conslot_trocas.plote;
   if Trim(form_conslot_trocas.pdtvcto)<>'' then
      ENT_DTVCTO.Text:=form_conslot_trocas.pdtvcto;
   form_conslot_trocas.Close;
   FreeAndNil(form_conslot_trocas);

   end;


end;

procedure TFrm_Trocas.ENT_DTVCTOEnter(Sender: TObject);
begin
ENT_DTVCTO.SelectAll;

end;

procedure TFrm_Trocas.ENT_DTVCTOExit(Sender: TObject);
var
x: Integer;
begin
if Trim(ENT_DTVCTO.Text)<>'/  /' then
   begin
   try
      ENT_DTVCTO.Text:=FormatDateTime(fdt2, StrToDate(ENT_DTVCTO.Text));
   except
      fMensagem('Data inválida!',0,['0'],0);
      ENT_DTVCTO.SetFocus;
      exit;
      end;
   end;
if Trim(ENT_DTVCTO.Text)<>'/  /' then
   mcinst:=FormatDatetime(fdt, StrtoDate(ENT_DTVCTO.Text))
else
   mcinst:='';
if not flcadlgc(0,1,0,Trim(ENT_LOTE.Text),mcinst,'') then
   begin
   fMensagem('Lote não cadastrado!',0,['0'],0);
   ENT_CODPRO.SetFocus;
   exit;
   end;
if ValFloat(ENT_PU.Text)=0 then
   begin
   if DM1.Tb_PargerPPCOGRA.Value<>1 then
      ENT_PU.Text:=FormatFloat(mcasaspu, DM1.Tb_ProPDPRECO1.Value)
   else
      ENT_PU.Text:=FormatFloat(mcasaspu, DM1.Tb_LGCCLPRECO1.Value);
   end;

if valint(copy(mpseg,4,2))=01 then
   begin
   for x:=1 to STG_ENT.RowCount-1 do
      begin
      if Trim(STG_ENT.Cells[01,x])='' then
         continue;
      if (mop_ENT=1) and (x=mqtd_tro) then
         Continue;
      if (fsonumero(STG_ENT.Cells[00,x])=fsonumero(ENT_CODPRO.Text)) and
         (Trim(STG_ENT.Cells[01,x])=Trim(ENT_LOTE.Text)) and
         (Trim(STG_ENT.Cells[02,x])=Trim(ENT_DTVCTO.Text)) then
         begin
         if fMensagem('Produto já digitado quer altera-lo?',0,['1','2'],2)=mrYes then
            begin
            STG_ENT.Row:=x;
            ENT_EDITAR.Click;
            exit;
            end
         else
            begin
            ENT_CANCELAR.Click;
            exit;
            end;
         end;
      end;
   end;
ENT_TOTAL.Text:=FormatFloat(mcasas, ValFloat(ENT_QTD.Text)*ValFloat(ENT_PU.Text));



end;

procedure TFrm_Trocas.ENT_QTDEnter(Sender: TObject);
begin
ENT_QTD.SelectAll;

end;

procedure TFrm_Trocas.ENT_QTDExit(Sender: TObject);
begin
ENT_QTD.Text  :=FormatFloat(mcasaspu, ValFloat(ENT_QTD.Text));
ENT_TOTAL.Text:=FormatFloat(mcasas, ValFloat(ENT_QTD.Text)*ValFloat(ENT_PU.Text));
if (DM1.Tb_ProPDFRACAO.Value<>1) then
   begin
   if Trunc(ValFloat(ENT_QTD.Text))<>ValFloat(ENT_QTD.Text) then
      begin
      fMensagem('Não é permitido fracionar este produto!',0,['0'],0);
      ENT_QTD.SetFocus;
      exit;
      end;
   end;
flcadpar01(0,codemp,'1');
if DM4.Tb_Par01PFATMZ.Value<>1 then
   begin
   if (DM1.Tb_ProPDSALDO.AsFloat<ValFloat(ENT_QTD.Text)) then
     begin
     fMensagem('Saldo Insuficiente para efetivar a troca!',0,['0'],0);
     ENT_CODPRO.SetFocus;
     exit;
     end;
  end;
end;

procedure TFrm_Trocas.ENT_PUEnter(Sender: TObject);
begin
ENT_PU.SelectAll;

end;

procedure TFrm_Trocas.ENT_PUExit(Sender: TObject);
begin
ENT_PU.Text:=FormatFloat(mcasaspu, ValFloat(ENT_PU.Text));
ENT_TOTAL.Text:=FormatFloat(mcasas, ValFloat(ENT_QTD.Text)*ValFloat(ENT_PU.Text));

end;

procedure TFrm_Trocas.ENT_GRAVARClick(Sender: TObject);
var
x: Integer;

begin
if Trim(ENT_CODPRO.Text)='' then
   begin
   fMensagem('Codigo do Produto, Campo Obrigatório!',0,['0'],0);
   ENT_CODPRO.SetFocus;
   exit;
   end;
if fsonumero(ENT_QTD.Text)=0 then
   begin
   fMensagem('Quantidade Campo Obrigatório!',0,['0'],0);
   ENT_QTD.SetFocus;
   exit;
   end;
if Trim(ENT_PU.Text)='' then
   begin
   fMensagem('Preco Unitario Campo Obrigatório!',0,['0'],0);
   ENT_PU.SetFocus;
   exit;
   end;

if not flcadpro(1,0,0,Trim(ENT_CODPRO.Text)) then
   begin
   fMensagem('Produto não cadastrado!',0,['0'],0);
   ENT_CODPRO.setfocus;
   end;
if valint(copy(mpseg,4,2))=02 then  // grade cores tamanho
   begin
   if not flcadlgc(0,1,0,Trim(ENT_CODPRO.Text),ENT_lote.Text,'') then
      begin
      fMensagem('Grade Nao cadastrada!',0,['0'],0);
      ENT_CODPRO.SetFocus;
      exit;
      end
   end
else if (Trim(ENT_LOTE.Text)<>'') or (trim(ENT_DTVCTO.Text)<>'/  /') then
   begin
   if Trim(ENT_DTVCTO.Text)<>'/  /' then
      mcinst:=FormatDatetime(fdt, StrtoDate(ENT_DTVCTO.Text))
   else
      mcinst:='';
   if not flcadlgc(0,1,0,Trim(ENT_LOTE.Text),mcinst,'') then
      begin
      fMensagem('Grade Não cadastrada!',0,['0'],0);
      ENT_CODPRO.SetFocus;
      exit;
      end
   end;

for x:=1 to STG_ENT.RowCount-1 do
   begin
   if Trim(STG_ENT.Cells[00,x])='' then
      continue;
   if (mop_ENT=1) and (x=mqtd_tro) then
      Continue;
   if (fsonumero(STG_ENT.Cells[00,x])=fsonumero(ENT_CODPRO.Text)) and
      (Trim(STG_ENT.Cells[01,x])     =Trim(ENT_LOTE.Text)) and
      (Trim(STG_ENT.Cells[02,x])     =Trim(ENT_DTVCTO.Text)) then
      begin
      if fMensagem('Este Produto já foi Digitado, Quer Altera-lo?',0,['1','2'],2)=mrYes then
         begin
         STG_ENT.Row:=x;
         ENT_EDITAR.Click;
         end;
      ENT_CODPRO.SetFocus;
      exit;
      end;
   end;


flcadpar01(0,mCODEMP,'1');
if DM4.Tb_Par01PFATMZ.Value<>1 then
   begin
   if valint(copy(mpseg,4,2))=02 then  // grade cores tamanho
      begin
      if DM1.Tb_LGCCLQTD.Value<ValFloat(ENT_QTD.Text) then
         begin
         fMensagem('Estoque insuficiente. Estoque: '+formatFloat(mcasqtd, DM1.Tb_LGCCLQTD.Value),0,['0'],0);
         exit;
         end;
      end
   else
      begin
      flcadest(0,0,0,trim(ENT_CODPRO.Text));
      if DM1.Tb_EstCESALDO.Value<ValFloat(ENT_QTD.Text) then
         begin
         fMensagem('Estoque insuficiente. Estoque: '+formatFloat(mcasqtd, DM1.Tb_EstCESALDO.Value),0,['0'],0);
         exit;
         end;
      end;
   end;

if mop_ENT>0 then
   begin
   mqtd_tro:=STG_ENT.Row;
   mqtd_tro:=mqtd_tro+1;
   end
else
   begin
   mqtd_tro:=STG_ENT.RowCount;
   STG_ENT.RowCount:=mqtd_tro+1;
   STG_ENT.Rows[mqtd_tro+1].Clear;
   STG_ENT.Rows[mqtd_tro].Clear;
   end;
STG_ENT.Cells[00,mqtd_tro-1]:=ENT_CODPRO.Text;
STG_ENT.Cells[01,mqtd_tro-1]:=ENT_LOTE.Text;
STG_ENT.Cells[02,mqtd_tro-1]:=ENT_DTVCTO.Text;
STG_ENT.Cells[03,mqtd_tro-1]:=ENT_QTD.Text;
STG_ENT.Cells[04,mqtd_tro-1]:=ENT_NOMPRO.Text;
STG_ENT.Cells[05,mqtd_tro-1]:=ENT_PU.Text;
STG_ENT.Cells[06,mqtd_tro-1]:=ENT_TOTAL.Text;

if mqtd_tro>mnumitemgrid then
   STG_ENT.TopRow:=mqtd_tro-(mnumitemgrid);
ENT_CANCELAR.Click;
ENT_CODPRO.SetFocus;
fCalcular(0);


end;

procedure TFrm_Trocas.ENT_EDITARClick(Sender: TObject);
begin
if (Trim(STG_ENT.Cells[00,STG_ENT.Row])='') or (STG_ENT.Row=0) then
   begin
   fMensagem('Selecione um ítem para altera-lo!',0,['0'],0);
   end;
mop_ENT:=1;
mqtd_tro:=STG_ENT.Row;

ENT_CODPRO.Text:=STG_ENT.Cells[00,STG_ENT.Row];
ENT_LOTE.Text  :=STG_ENT.Cells[01,STG_ENT.Row];
ENT_DTVCTO.Text:=STG_ENT.Cells[02,STG_ENT.Row];
ENT_QTD.Text   :=STG_ENT.Cells[03,STG_ENT.Row];
ENT_NOMPRO.Text:=STG_ENT.Cells[04,STG_ENT.Row];
ENT_PU.Text    :=STG_ENT.Cells[05,STG_ENT.Row];
ENT_TOTAL.Text :=STG_ENT.Cells[06,STG_ENT.Row];
ENT_CODPRO.Setfocus;

end;

procedure TFrm_Trocas.ENT_CANCELARClick(Sender: TObject);
begin
ENT_CODPRO.Text:='';
ENT_LOTE.Text  :='';
ENT_DTVCTO.Text:='';
ENT_QTD.Text   :='';
ENT_NOMPRO.Text:='';
ENT_PU.Text    :='';
ENT_TOTAL.Text :='';
mop_ent:=0;
end;

procedure TFrm_Trocas.ENT_EXCLUIRClick(Sender: TObject);
var
x: Integer;
begin
mqtd_tro:=STG_ENT.Row;

if (STG_ENT.Cells[00,01]='') or (STG_ENT.Cells[00,mqtd_tro]='') then
   exit;
mop_ENT:=2;
ENT_CODPRO.Text:=STG_ENT.Cells[00,STG_ENT.Row];
ENT_LOTE.Text  :=STG_ENT.Cells[01,STG_ENT.Row];
ENT_DTVCTO.Text:=STG_ENT.Cells[02,STG_ENT.Row];
ENT_QTD.Text   :=STG_ENT.Cells[03,STG_ENT.Row];
ENT_NOMPRO.Text:=STG_ENT.Cells[04,STG_ENT.Row];
ENT_PU.Text    :=STG_ENT.Cells[05,STG_ENT.Row];
ENT_TOTAL.Text :=STG_ENT.Cells[06,STG_ENT.Row];

if fMensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;

if STG_ENT.RowCount=2 then
   begin
   STG_ENT.Rows[1].Clear;
   STG_ENT.Rows[2].Clear;
   end
else
   begin
   for x:=STG_ENT.Row to STG_ENT.RowCount-2 do
      begin
      STG_ENT.Cells[00,x]:=STG_ENT.Cells[00,x+1];
      STG_ENT.Cells[01,x]:=STG_ENT.Cells[01,x+1];
      STG_ENT.Cells[02,x]:=STG_ENT.Cells[02,x+1];
      STG_ENT.Cells[03,x]:=STG_ENT.Cells[03,x+1];
      STG_ENT.Cells[04,x]:=STG_ENT.Cells[04,x+1];
      STG_ENT.Cells[05,x]:=STG_ENT.Cells[05,x+1];
      STG_ENT.Cells[06,x]:=STG_ENT.Cells[06,x+1];
      end;
   STG_ENT.RowCount:=STG_ENT.RowCount-1;
   end;
ENT_CANCELAR.Click;
fCalcular(0);


end;

procedure TFrm_Trocas.ENT_CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   if (DM1.Tb_PargerPPCOGRA.Value=1) and (length(DEV_CODPRO.Text)<5)  then
      ENT_CODPRO.Text:=fChamaPro(2,'Frm_Trocas',key)
   else
      ENT_CODPRO.Text:=fChamaPro(0,'Frm_Trocas',key);
   key:=#0;
   end;

end;
function TFrm_Trocas.fCalcular(pTipo:Integer): Boolean;
var
mtotent,mtotdev: Real;
x: Integer;
begin
mtotent:=0;
mtotdev:=0;
for x:=0 to STG_DEV.RowCount do
   begin
   if Trim(STG_DEV.Cells[00,x])='' then
      Continue;
   mtotdev:=mtotdev+valfloat(STG_DEV.Cells[06,x]);
   end;

for x:=0 to STG_ENT.RowCount do
   begin
   if Trim(STG_ENT.Cells[00,x])='' then
      Continue;
   mtotent:=mtotent+valfloat(STG_ENT.Cells[06,x]);
   end;
TOTALDEV.Text    :=FormatFloat(mcasas, mtotdev);
TOTALENT.Text    :=FormatFloat(mcasas, mtotent);
TOTLIQDEV.Text   :=Formatfloat(mcasas, ValFloat(TOTALDEV.Text)-ValFloat(DESCDEV.Text));
TOTLIQENT.Text   :=Formatfloat(mcasas, ValFloat(TOTALENT.Text)-ValFloat(DESCENT.Text));
ST_TOTDEV.Caption:=TOTALDEV.Text;
ST_TOTENT.Caption:=TOTALENT.Text;
if ValFloat(TOTLIQDEV.Text)>ValFloat(TOTLIQENT.Text) then
   begin
   TROCO.Text   :=FormatFloat(mcasas, ValFloat(TOTLIQDEV.Text)-Valfloat(TOTLIQENT.Text));
   RECEBIDO.Text:=FormatFloat(mcasas, 0);
   end
else
   begin
   RECEBIDO.Text   :=FormatFloat(mcasas, Valfloat(TOTLIQENT.Text)-ValFloat(TOTLIQDEV.Text));
   TROCO.Text:=FormatFloat(mcasas, 0);
   end;
result:=true;
end;


procedure TFrm_Trocas.DESCDEVExit(Sender: TObject);
begin
DESCDEV.Text:=FormatFloat(mcasas, ValFloat(DESCDEV.Text));
fCalcular(0);

end;

procedure TFrm_Trocas.DESCENTExit(Sender: TObject);
begin
DESCENT.Text:=FormatFloat(mcasas, ValFloat(DESCENT.Text));
fCalcular(0);

end;

procedure TFrm_Trocas.DESCDEVEnter(Sender: TObject);
begin
DESCDEV.SelectAll;
end;

procedure TFrm_Trocas.DESCENTEnter(Sender: TObject);
begin
DESCENT.SelectAll;
end;

procedure TFrm_Trocas.BBLOCALIZARClick(Sender: TObject);
begin

if moper_trocas<>3 then
   begin
   if form_Trocas_Loc_trocas=nil then
      Application.CreateForm(Tfrm_Trocas_Loc, form_Trocas_Loc_trocas)
   else
      begin
      form_Trocas_Loc_trocas.Close;
      form_Trocas_Loc_trocas.free;
      form_Trocas_Loc_trocas:=nil;
      Application.CreateForm(Tfrm_Trocas_Loc, form_Trocas_Loc_trocas);
      end;
   form_Trocas_Loc_trocas.ShowModal;
   mchave_tro:=DM2.Tb_Trocas_CabTCCHAVE.AsInteger;
   mchave_tro_new:=DM2.Tb_Trocas_CabTCID_NEW.AsInteger;
   mcodemp_tro:=DM2.Tb_Trocas_CabTCCODEMP.AsInteger;
   form_Trocas_Loc_trocas.Close;
   form_Trocas_Loc_trocas.Free;
   form_Trocas_Loc_trocas:=nil;
   end;
if (mchave_tro>0) or (trocas_ori='consulta') then
   begin
   if frm_agde=nil then
      Application.CreateForm(TFrm_Agde, Frm_Agde);
   Frm_Agde.Label1.Caption:='Carregando os dados. Aguarde';
   Frm_Agde.Show;
   Frm_Agde.Update;
   if trocas_ori='consulta' then
      fTrocaslerant(0)
   else
      begin
      BBINCLUIR.Enabled  :=bbtinc_true;
      BBLOCALIZAR.Enabled:=True;
      BBALTERAR.Enabled  :=bbtalt_true;
      BBEXCLUIR.Enabled  :=bbtexc_true;
      BBGRAVAR.Enabled   :=False;
      BBIMPRIMIR.Enabled :=bbtrel_true;
      bbEmitirNF.Enabled :=bbtrel_true;
      bbEfetivar.Enabled :=True;


      DM2.Tb_Trocas_Cab.Close;
      DM2.Tb_Trocas_Cab.SQL.Clear;
      DM2.Tb_Trocas_Cab.SQL.Add('Select * from CADTRO_CAB where '
                               +' TCCODEMP=0'+IntToStr(mcodemp_tro)
                               +' and TCLOTSEQ=0'+intToStr(ls_trocas)
                               +' and TCCHAVE=0'+FloatToStr(mchave_tro));
      DM2.Tb_Trocas_Cab.Open;

      if DM2.Tb_Trocas_Cab.Eof then
         begin
         BBLIMPAR.Click;
         fMensagem('Chave não encontrado!',0,['0'],0);
         Frm_Agde.Free;
         exit;
         end;
      DM2.Tb_Trocas_Ent.Close;
      DM2.Tb_Trocas_Ent.SQL.Clear;
      DM2.Tb_Trocas_Ent.SQL.Add('Select * from CADTRO_ENT where '
                              +' TECODEMP=0'+IntToStr(mcodemp_tro)
                               +' and TELOTSEQ=0'+intToStr(ls_trocas)
                               +' and TECHAVE=0'+FloatToStr(mchave_tro));
      DM2.Tb_Trocas_Ent.Open;

      DM2.Tb_Trocas_Ori.Close;
      DM2.Tb_Trocas_Ori.SQL.Clear;
      DM2.Tb_Trocas_Ori.SQL.Add('Select * from CADTRO_ORI where '
                               +' TOCODEMP=0'+IntToStr(mcodemp_tro)
                               +' and TOLOTSEQ=0'+intToStr(ls_trocas)
                               +' and TOCHAVE=0'+FloatToStr(mchave_tro));
      DM2.Tb_Trocas_Ori.Open;

      DM2.Tb_Trocas_Sai.Close;
      DM2.Tb_Trocas_Sai.SQL.Clear;
      DM2.Tb_Trocas_Sai.SQL.Add('Select * from CADTRO_SAI where '
                               +' TSCODEMP=0'+IntToStr(mcodemp_tro)
                               +' and TSLOTSEQ=0'+intToStr(ls_trocas)
                               +' and TSCHAVE=0'+FloatToStr(mchave_tro));
      DM2.Tb_Trocas_Sai.Open;
      end;
   STG_ORI.RowCount:=2;
   STG_ORI.Rows[1].Clear;
   STG_DEV.RowCount:=2;
   STG_DEV.Rows[1].Clear;
   STG_ENT.RowCount:=2;
   STG_ENT.Rows[1].Clear;
   if DM2.Tb_Trocas_CabTCSTATUS.Value=0 then
      fTrocasCabEnt(0)
   else
      fTrocasCabEnt(1);


   mqtd_tro:=1;
   While not DM2.Tb_Trocas_Ori.Eof do
      begin
      STG_ORI.RowCount:=mqtd_tro+1;
      STG_ORI.Rows[mqtd_tro].clear;
      STG_ORI.Rows[mqtd_tro+1].clear;
      STG_ORI.Cells[00,mqtd_tro]:=DM2.Tb_Trocas_OriTOCODEMP_CP_DEV.AsString;
      STG_ORI.Cells[01,mqtd_tro]:=DM2.Tb_Trocas_OriTOCHAVE_CP_DEV.AsString;
      STG_ORI.Cells[02,mqtd_tro]:=FormatDatetime(fdt2, DM2.Tb_Trocas_OriTODATA_DEV.Value);;
      if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',DM2.Tb_Trocas_OriTOCODCLI_CP_DEV.AsString) then
         STG_ORI.Cells[03,mqtd_tro]:=DM1.Query1.Fields[0].AsString
      else
         STG_ORI.Cells[03,mqtd_tro]:=DM2.Tb_Trocas_OriTOCODCLI_CP_DEV.AsString;
      STG_ORI.Cells[05,mqtd_tro]:=DM2.Tb_Trocas_OriTOCODCLI_CP_DEV.AsString;
      STG_ORI.Cells[04,mqtd_tro]:=FormatFloat(mcasas, DM2.Tb_Trocas_OriTOVALOR_PEDDEV.Value);

      STG_ORI.Cells[mcol_cp_dev,mqtd_tro]:=DM2.Tb_Trocas_OriTOID_NEW.AsString;

      DM2.Tb_Trocas_Ori.Next;
      mqtd_tro:=mqtd_tro+1;
      end;


   mqtd_tro:=1;
   While not DM2.Tb_Trocas_Ent.Eof do
      begin
      STG_DEV.RowCount:=mqtd_tro+1;
      STG_DEV.Rows[mqtd_tro].clear;
      STG_DEV.Rows[mqtd_tro+1].clear;
      STG_DEV.Cells[00,mqtd_tro]:=DM2.Tb_Trocas_EntTECODPRO.AsString;
      STG_DEV.Cells[01,mqtd_tro]:=DM2.Tb_Trocas_EntTELOTE.AsString;
      if (DM2.Tb_Trocas_EntTEDTVCTO.IsNull) or (DM2.Tb_Trocas_EntTEDTVCTO.Value<=pdatanula) then
         STG_DEV.Cells[02,mqtd_tro]:='/  /'
      else
         STG_DEV.Cells[02,mqtd_tro]:=FormatDatetime(fdt2, DM2.Tb_Trocas_EntTEDTVCTO.Value);
      STG_DEV.Cells[03,mqtd_tro]:=FormatFloat(mcasqtd, DM2.Tb_Trocas_EntTEQTD.Value);
      if flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',DM2.Tb_Trocas_EntTECODPRO.AsString) then
         STG_DEV.Cells[04,mqtd_tro]:=DM1.Query1.Fields[0].AsString
      else
         STG_DEV.Cells[04,mqtd_tro]:='';
      STG_DEV.Cells[05,mqtd_tro]:=FormatFloat(mcasasPU, DM2.Tb_Trocas_EntTEPU.Value);
      STG_DEV.Cells[06,mqtd_tro]:=FormatFloat(mcasas, (DM2.Tb_Trocas_EntTEPU.Value*DM2.Tb_Trocas_EntTEQTD.Value));
      DM2.Tb_Trocas_ent.Next;
      mqtd_tro:=mqtd_tro+1;
      end;

   mqtd_tro:=1;
   While not DM2.Tb_Trocas_Sai.Eof do
      begin
      STG_ENT.RowCount:=mqtd_tro+1;
      STG_ENT.Rows[mqtd_tro].clear;
      STG_ENT.Rows[mqtd_tro+1].clear;
      STG_ENT.Cells[00,mqtd_tro]:=DM2.Tb_Trocas_SAITSCODPRO.AsString;
      STG_ENT.Cells[01,mqtd_tro]:=DM2.Tb_Trocas_SAITSLOTE.AsString;
      if (DM2.Tb_Trocas_SAITSDTVCTO.IsNull) or (DM2.Tb_Trocas_SAITSDTVCTO.Value<=pdatanula) then
         STG_ENT.Cells[02,mqtd_tro]:='/  /'
      else
         STG_ENT.Cells[02,mqtd_tro]:=FormatDatetime(fdt2, DM2.Tb_Trocas_SAITSDTVCTO.Value);
      STG_ENT.Cells[03,mqtd_tro]:=FormatFloat(mcasqtd, DM2.Tb_Trocas_SAITSQTD.Value);
      if flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',DM2.Tb_Trocas_SAITSCODPRO.AsString) then
         STG_ENT.Cells[04,mqtd_tro]:=DM1.Query1.Fields[0].AsString
      else
         STG_ENT.Cells[04,mqtd_tro]:='';
      STG_ENT.Cells[05,mqtd_tro]:=FormatFloat(mcasasPU, DM2.Tb_Trocas_SAITSPU.Value);
      STG_ENT.Cells[06,mqtd_tro]:=FormatFloat(mcasas, (DM2.Tb_Trocas_SAITSPU.Value*DM2.Tb_Trocas_SAITSQTD.Value));
      DM2.Tb_Trocas_SAI.Next;
      mqtd_tro:=mqtd_tro+1;
      end;
   CHAVE.Text:=DM2.Tb_Trocas_CabTCCHAVE.AsString;
   if (DM2.Tb_Trocas_CabTCDATA.IsNull) or (DM2.Tb_Trocas_CabTCDATA.Value<=pdatanula) then
      DATA.Text:='/  /'
   else
      DATA.Text:=FormatdateTime(fdt2, DM2.Tb_Trocas_CabTCDATA.Value);
   CODCLI.Text:=DM2.Tb_Trocas_CabTCCODCLI.AsString;
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',DM2.Tb_Trocas_CabTCCODCLI.AsString) then
      NOMCLI.Text:=dm1.Query1.Fields[0].AsString
   else
      NOMCLI.Text:='';
   if (DM2.Tb_Trocas_CabTCCODCLI.Value<3) and (trim(DM2.Tb_Trocas_CabTCNOMCLI.AsString)<>'') then
      NOMCLI.Text:=DM2.Tb_Trocas_CabTCNOMCLI.Value;

   if (DM1.Tb_CliCCODCLI.Value=1) or (DM1.Tb_CliCCODCLI.Value=2) then
      begin
      NOMCLI.Color  :=clWindow;
      NOMCLI.ReadOnly:=False;
      end
   else
      begin
      NOMCLI.Color  :=clBtnFace;
      NOMCLI.ReadOnly:=True;
      end;


   CODVEN.Text:=DM2.Tb_Trocas_CabTCCODVEN.AsString;
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',DM2.Tb_Trocas_CabTCCODVEN.AsString) then
      NOMVEN.Text:=dm1.Query1.Fields[0].AsString
   else
      NOMVEN.Text:='';
   OBS01.Text:=DM2.Tb_Trocas_CabTCOBS01.Value;
   OBS02.Text:=DM2.Tb_Trocas_CabTCOBS02.Value;
   DESCENT.TEXT := DM2.Tb_Trocas_CabTCDESCSAI.AsString;
   DESCDEV.TEXT := DM2.Tb_Trocas_CabTCDESCDEV.AsString;
   CB_CHEGARORI.Checked := DM2.Tb_Trocas_CabTCCHECARORI.AsInteger=1;

   fAtualizarFormaPag(DM2.Tb_Trocas_CabTCFPGTO.AsInteger);

   fCalcular(0);
   DESCENT.TEXT := FormatFloat(mcasas, DM2.Tb_Trocas_CabTCDESCSAI.AsFloat);
   DESCDEV.TEXT := FormatFloat(mcasas, DM2.Tb_Trocas_CabTCDESCDEV.AsFloat);
   fMercadoriasVendidas(0);
   Frm_Agde.Free;
   Frm_Agde:=nil;
   end;

end;

function tfrm_Trocas.fTrocaslerant(ptipo: Integer):Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;

begin
minstru:=' Select ';
v:='';
for x:=0 to DM2.Tb_Trocas_Cab.FieldCount-1 do
   begin
   if DM2.Tb_Trocas_Cab.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM2.Tb_Trocas_Cab.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADTRO_CAB where TCCODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM2.Tb_Trocas_Cab.Close;
DM2.Tb_Trocas_Cab.SQL.Clear;
DM2.Tb_Trocas_Cab.SQL.add(minstru);
DM2.Tb_Trocas_Cab.Open;


minstru:=' Select ';
v:='';
for x:=0 to DM2.Tb_Trocas_Ent.FieldCount-1 do
   begin
   if DM2.Tb_Trocas_Ent.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM2.Tb_Trocas_Ent.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADTRO_ENT where TECODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM2.Tb_Trocas_Ent.Close;
DM2.Tb_Trocas_Ent.SQL.Clear;
DM2.Tb_Trocas_Ent.SQL.add(minstru);
DM2.Tb_Trocas_Ent.Open;

minstru:=' Select ';
v:='';
for x:=0 to DM2.Tb_Trocas_Ori.FieldCount-1 do
   begin
   if DM2.Tb_Trocas_Ori.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM2.Tb_Trocas_Ori.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADTRO_ORI where TOCODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM2.Tb_Trocas_Ori.Close;
DM2.Tb_Trocas_Ori.SQL.Clear;
DM2.Tb_Trocas_Ori.SQL.add(minstru);
DM2.Tb_Trocas_Ori.Open;


minstru:=' Select ';
v:='';
for x:=0 to DM2.Tb_Trocas_Sai.FieldCount-1 do
   begin
   if DM2.Tb_Trocas_Sai.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM2.Tb_Trocas_Sai.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADTRO_SAI where TSCODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM2.Tb_Trocas_Sai.Close;
DM2.Tb_Trocas_Sai.SQL.Clear;
DM2.Tb_Trocas_Sai.SQL.add(minstru);
DM2.Tb_Trocas_Sai.Open;

BBINCLUIR.Enabled   :=False;
BBLOCALIZAR.Enabled :=False;
BBALTERAR.Enabled   :=False;
BBGRAVAR.Enabled    :=False;
BBLIMPAR.Enabled    :=False;
BBIMPRIMIR.Enabled  :=False;
bbEmitirNF.Enabled   :=False;
BBEXCLUIR.Enabled   :=False;
Result:=True;
end;


function fTrocasgant(ptipo: Integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(TCCODNOV) from OLD_CADTRO_CAB');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields[0].AsInteger+1;
minstru:='Insert into OLD_CADTRO_CAB (';
v:='';
for x:=0 to DM2.Tb_Trocas_Cab.FieldCount-1 do
   begin
   if DM2.Tb_Trocas_Cab.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM2.Tb_Trocas_Cab.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',TCCODNOV) Select ';
v:='';
for x:=0 to DM2.Tb_Trocas_Cab.FieldCount-1 do
   begin
   if DM2.Tb_Trocas_Cab.Fields[x].FieldKind=fkCalculated then
      Continue;
   if DM2.Tb_Trocas_Cab.Fields[x].FieldName='TCCODUSR_MAN' then
      minstru:=minstru+v+FormatFloat('00000',codusr)+' as P1USRMOD '
   else if DM2.Tb_trocas_cab.Fields[x].FieldName='TCDATAHOR_MAN' then
      minstru:=minstru+v+chr(39)+Formatdatetime(fdt, date)+chr(39)+' as TCDATAHOR_MAN '
   else
      minstru:=minstru+v+DM2.Tb_Trocas_cab.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as TCCODNOV ';
minstru:=minstru+' from CADTRO_CAB where TCCODEMP=0'+DM2.Tb_Trocas_CabTCCODEMP.AsString
                +' and TCLOTSEQ=0'+DM2.Tb_Trocas_CabTCLOTSEQ.AsString
                +' and TCCHAVE=0'+DM2.Tb_Trocas_CabTCCHAVE.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,2597,'Frm_trocas','OLD_CADTRO_CAB');
   end;

DM1.Query1.Close;
minstru:='Insert into OLD_CADTRO_ENT (';
v:='';
for x:=0 to DM2.Tb_Trocas_Ent.FieldCount-1 do
   begin
   if DM2.Tb_Trocas_Ent.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM2.Tb_Trocas_Ent.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',TECODNOV) Select ';
v:='';
for x:=0 to DM2.Tb_Trocas_Ent.FieldCount-1 do
   begin
   if DM2.Tb_Trocas_Ent.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM2.Tb_Trocas_Ent.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as TECODNOV ';
minstru:=minstru+' from CADTRO_ENT where TECODEMP=0'+DM2.Tb_Trocas_CabTCCODEMP.AsString
                +' and TELOTSEQ=0'+DM2.Tb_Trocas_CabTCLOTSEQ.AsString
                +' and TECHAVE=0'+DM2.Tb_Trocas_CabTCCHAVE.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,2631,'Frm_Trocas','OLD_CADTRO_ENT');
   end;
DM1.Query1.Close;
minstru:='Insert into OLD_CADTRO_ORI (';
v:='';
for x:=0 to DM2.Tb_Trocas_Ori.FieldCount-1 do
   begin
   if DM2.Tb_Trocas_Ori.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM2.Tb_Trocas_Ori.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',TOCODNOV) Select ';
v:='';
for x:=0 to DM2.Tb_Trocas_Ori.FieldCount-1 do
   begin
   if DM2.Tb_Trocas_Ori.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM2.Tb_Trocas_Ori.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as TOCODNOV ';
minstru:=minstru+' from CADTRO_ORI where TOCODEMP=0'+DM2.Tb_Trocas_CabTCCODEMP.AsString
                +' and TOLOTSEQ=0'+DM2.Tb_Trocas_CabTCLOTSEQ.AsString
                +' and TOCHAVE=0'+DM2.Tb_Trocas_CabTCCHAVE.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,2663,'Frm_Trocas','OLD_CADTRO_ORI');
   end;
DM1.Query1.Close;
minstru:='Insert into OLD_CADTRO_SAI (';
v:='';
for x:=0 to DM2.Tb_Trocas_Sai.FieldCount-1 do
   begin
   if DM2.Tb_Trocas_Sai.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM2.Tb_Trocas_Sai.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',TSCODNOV) Select ';
v:='';
for x:=0 to DM2.Tb_Trocas_Sai.FieldCount-1 do
   begin
   if DM2.Tb_Trocas_Sai.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM2.Tb_Trocas_Sai.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as TSCODNOV ';
minstru:=minstru+' from CADTRO_SAI where TSCODEMP=0'+DM2.Tb_Trocas_CabTCCODEMP.AsString
                +' and TSLOTSEQ=0'+DM2.Tb_Trocas_CabTCLOTSEQ.AsString
                +' and TSCHAVE=0'+DM2.Tb_Trocas_CabTCCHAVE.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,2696,'Frm_Trocas','OLD_CADTRO_SAI');
   end;

result:=True;
end;

procedure TFrm_Trocas.BBALTERARClick(Sender: TObject);
begin
mQtdMan:=DM2.Tb_Trocas_CabTCQTDMAN.AsInteger;
DM2.Tb_Trocas_Cab.Close;
DM2.Tb_Trocas_Cab.Open;
if DM2.Tb_Trocas_Cab.Eof then
   begin
   fMensagem('Este Registro foi excluido em outra estação!',0,['0'],0);
   BBLIMPAR.Click;
   exit;
   end;
if DM2.Tb_Trocas_CabTCSITUACAO.Value=1 then
   begin
   mcinst:='Este Registro pode Estar Sendo Alterado em Outra Estação,'+#13
          +'Caso não Esteja entre na opção: SISTEMA->DESBLOQUEIA TROCAS '+#13
          +'e desbloqueia o mesmo';
   fMensagem(mcinst,0,['0'],0);
   exit;
   end;
if DM2.Tb_Trocas_CabTCSTATUS.Value>0 then
   begin
   fMensagem('Troca ja Efetivada, não pode ser alterado!',0,['0'],0);
   exit;
   end;
if DM2.Tb_Trocas_CabTCQTDMAN.AsInteger>mQtdMan then
   begin
   moper_trocas:=3;
   BBLOCALIZAR.Click;
   end;

moper_trocas:=1;
mboolean:=true;
Panel_cab.Enabled    :=mboolean;
ORI_CODEMP.Enabled   :=mboolean;
ORI_CHAVE.Enabled    :=mboolean;
ORI_GRAVAR.Enabled   :=mboolean;
ORI_EDITAR.Enabled   :=mboolean;
ORI_CANCELAR.Enabled :=mboolean;
ORI_EXCLUIR.Enabled  :=mboolean;
CB_CHEGARORI.Enabled :=mboolean;
DEV_CODPRO.Enabled   :=mboolean;
DEV_LOTE.Enabled     :=mboolean;
DEV_DTVCTO.Enabled   :=mboolean;
DEV_QTD.Enabled      :=mboolean;
DEV_PU.Enabled       :=mboolean;
DEV_GRAVAR.Enabled   :=mboolean;
DEV_EDITAR.Enabled   :=mboolean;
DEV_CANCELAR.Enabled :=mboolean;
DEV_EXCLUIR.Enabled  :=mboolean;
ENT_CODPRO.Enabled   :=mboolean;
ENT_LOTE.Enabled     :=mboolean;
ENT_DTVCTO.Enabled   :=mboolean;
ENT_QTD.Enabled      :=mboolean;
ENT_PU.Enabled       :=mboolean;
ENT_GRAVAR.Enabled   :=mboolean;
ENT_EDITAR.Enabled   :=mboolean;
ENT_CANCELAR.Enabled :=mboolean;
ENT_EXCLUIR.Enabled  :=mboolean;
gb_totais.Enabled    :=mboolean;
DATA.Text:=FormatDatetime(fdt2, date);
BBINCLUIR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=True;
BBIMPRIMIR.Enabled :=False;
bbEmitirNF.Enabled  :=False;
STG_DEV.RowCount    := STG_DEV.RowCount+1;
STG_ENT.RowCount    := STG_ENT.RowCount+1;
BBSAIR.Enabled       :=False;
DATA.SetFocus;
end;

function TFrm_Trocas.fTrocasCabEnt(ptipo: Integer): Boolean;
var
mleft: Integer;
mtotdim : Integer;
mdiminuir: Integer;
mdifdim: Integer;
begin
STG_ENT.RowCount:=8;
STG_ENT.Rows[1].Clear;
STG_ENT.Cells[00,00]:='Código';
if ValInt(copy(mpseg,4,2))=2 then
   begin
   mtotdim:=ENT_DTVCTO.Width;
   mdiminuir:=round(mtotdim/6);
   mdifdim:=(mdiminuir*6)-mtotdim;
   ENT_CODPRO.Width:=ENT_CODPRO.Width+mdiminuir+mdifdim;
   ENT_LOTE.Width  :=ENT_LOTE.Width+mdiminuir;;
   ENT_DTVCTO.Width:=0;   //'Dt.Vcto';
   ENT_DTVCTO.Visible:=false;
   ENT_QTD.Width   :=ENT_QTD.Width+mdiminuir;
   ENT_NOMPRO.Width:=ENT_NOMPRO.Width+mdiminuir;
   ENT_PU.Width    :=ENT_PU.Width+mdiminuir;
   ENT_TOTAL.Width :=ENT_TOTAL.Width+mdiminuir;

   STG_ENT.ColWidths[00]:=ENT_CODPRO.Width;  //'Código';
   STG_ENT.ColWidths[01]:=ENT_LOTE.Width;  //'Grade';
   STG_ENT.ColWidths[02]:=0;   //'Dt.Vcto';
   STG_ENT.ColWidths[03]:=ENT_QTD.Width;  //'Quantidade';
   STG_ENT.ColWidths[04]:=ENT_NOMPRO.Width; //'Nome do Produto';
   STG_ENT.ColWidths[05]:=ENT_PU.Width;  //'Preco Unitario';
   STG_ENT.ColWidths[06]:=ENT_TOTAL.Width;  //'Valor Total';
   STG_ENT.Cells[01,00] :='Grade';
   STG_ENT.Cells[02,00] :='';



   mleft:=1;
   ENT_CODPRO.Left     :=mleft;
   ENT_CODPRO.Width    :=STG_ENT.ColWidths[00]+2;// 88+2;
   mleft:=mleft+ENT_CODPRO.Width-1;

   ENT_LOTE.Width      :=STG_ENT.ColWidths[01]+2;
   ENT_LOTE.Left       :=mLeft;
   mleft:=mleft+ENT_LOTE.Width-1;

   ENT_DTVCTO.Visible  :=False;

   ENT_QTD.Width       :=STG_ENT.ColWidths[03]+2;
   ENT_QTD.Left        :=mleft;
   mleft:=mleft+ENT_QTD.Width-1;

   ENT_NOMPRO.left     :=Mleft;
   ENT_NOMPRO.Width    :=STG_ENT.ColWidths[04]+2;
   mleft:=mleft+ENT_NOMPRO.Width-1;

   ENT_PU.Width        :=STG_ENT.ColWidths[05]+2;
   ENT_PU.Left         :=mleft;
   mleft:=mleft+ENT_PU.Width-1;

   ENT_TOTAL.Left      :=mleft;
   ENT_TOTAL.Width     :=STG_ENT.ColWidths[06]+2;
//   mleft:=mleft+ENT_TOTAL.Width;

   end
else if (ValInt(copy(mpseg,4,2))=1) and (ptipo=1) then
   begin
   STG_ENT.Cells[01,00]:='Lote';
   STG_ENT.Cells[02,00]:='Dt.Vcto';
   end
else
   begin
   STG_ENT.Cells[01,00]:='';
   STG_ENT.Cells[02,00]:='';
   STG_ENT.ColWidths[01]:=0;
   STG_ENT.ColWidths[02]:=0;
   ENT_DTVCTO.Visible:=false;
   ENT_LOTE.Visible  :=false;

   mtotdim:=ENT_DTVCTO.Width;
   mtotdim:=ENT_LOTE.Width;
   mdiminuir:=round(mtotdim/6);
   mdifdim:=(mdiminuir*6)-mtotdim;
   ENT_CODPRO.Width:=ENT_CODPRO.Width+mdiminuir+mdifdim;
   ENT_LOTE.Width  :=ENT_LOTE.Width+mdiminuir;;
   ENT_DTVCTO.Width:=0;   //'Dt.Vcto';
   ENT_QTD.Width   :=ENT_QTD.Width+mdiminuir;
   ENT_NOMPRO.Width:=ENT_NOMPRO.Width+mdiminuir;
   ENT_PU.Width    :=ENT_PU.Width+mdiminuir;
   ENT_TOTAL.Width :=ENT_TOTAL.Width+mdiminuir;

   STG_ENT.ColWidths[00]:=ENT_CODPRO.Width;  //'Código';
   STG_ENT.ColWidths[01]:=ENT_LOTE.Width;  //'Grade';
   STG_ENT.ColWidths[02]:=ENT_DTVCTO.Width;   //'Dt.Vcto';
   STG_ENT.ColWidths[03]:=ENT_QTD.Width;  //'Quantidade';
   STG_ENT.ColWidths[04]:=ENT_NOMPRO.Width; //'Nome do Produto';
   STG_ENT.ColWidths[05]:=ENT_PU.Width;  //'Preco Unitario';
   STG_ENT.ColWidths[06]:=ENT_TOTAL.Width;  //'Valor Total';



   STG_ENT.ColWidths[00]:=098;  //'Código';
   STG_ENT.ColWidths[01]:=0; // 74'Grade';
   STG_ENT.ColWidths[02]:=0;   //'Dt.Vcto';
   STG_ENT.ColWidths[03]:=98;  //'Quantidade';
   STG_ENT.ColWidths[04]:=250; //'Nome do Produto';
   STG_ENT.ColWidths[05]:=95;  //'Preco Unitario';
   STG_ENT.ColWidths[06]:=105;  //'Valor Total';
   STG_ENT.Cells[01,00] :='Grade';
   STG_ENT.Cells[02,00] :='';
   mleft:=1;
   ENT_CODPRO.Left     :=mleft;
   ENT_CODPRO.Width    :=STG_ENT.ColWidths[00]+2;// 88+2;
   mleft:=mleft+ENT_CODPRO.Width-1;

   ENT_LOTE.Visible   :=FALSE;
   mleft:=mleft+1;

   ENT_DTVCTO.Visible  :=False;
   mleft:=mleft+1;
   ENT_QTD.Width       :=STG_ENT.ColWidths[03]+2;
   ENT_QTD.Left        :=mleft;
   mleft:=mleft+ENT_QTD.Width-1;

   ENT_NOMPRO.left     :=Mleft;
   ENT_NOMPRO.Width    :=STG_ENT.ColWidths[04]+2;
   mleft:=mleft+ENT_NOMPRO.Width-1;

   ENT_PU.Width        :=STG_ENT.ColWidths[05]+2;
   ENT_PU.Left         :=mleft;
   mleft:=mleft+ENT_PU.Width-1;

   ENT_TOTAL.Left      :=mleft;
   ENT_TOTAL.Width     :=STG_ENT.ColWidths[06]+2;
//   mleft:=mleft+ENT_TOTAL.Width;


   end;
STG_ENT.Cells[03,00]:='Qtd.';
STG_ENT.Cells[04,00]:='Descrição';
STG_ENT.Cells[05,00]:='Preço Unitário';
STG_ENT.Cells[06,00]:='Valor Total';
result:=true;
end;
procedure TFrm_Trocas.BBGRAVARClick(Sender: TObject);
var

form_ocorrencias: TFrm_Ocorrencias;
x: Integer;

begin
if Trim(DATA.Text)='/  /' then
   Begin
   fMensagem('Favor informar a data da Troca!',0,['0'],0);
   DATA.SetFocus;
   exit;
   end;
if ValFloat(CODCLI.Text)<=0 then
   begin
   fMensagem('Favor digitar Código do Cliente!',0,['0'],0);
   CODCLI.SetFocus;
   exit;
   end;
if Valfloat(CODVEN.Text)<=0 then
   begin
   fMensagem('Favor digitar Código do Vendedor!',0,['0'],0);
   if CODVEN.Enabled then
      CODVEN.SetFocus;
   exit;
   end;
if trim(STG_DEV.Cells[00,01])='' then
   begin
   fMensagem('Favor Informar as Mercadorias Devolvidas!',0,['0'],0);
   exit;
   end;
if trim(STG_ENT.Cells[00,01])='' then
   begin
   fMensagem('Favor Informar as Mercadorias entregues!',0,['0'],0);
   exit;
   end;

// INICIO


Application.CreateForm(TFrm_Ocorrencias, form_ocorrencias);
form_ocorrencias.ListView1.Clear;
Form_Ocorrencias.mErros:=false;

for x:=1 to STG_ENT.RowCount do
   begin
   if Trim(STG_ENT.Cells[00,x])='' then
      Continue;
   if ValFloat(STG_ENT.Cells[03,x])<=0 then
      begin
      Form_Ocorrencias.adicionaItemListView('Produto '+STG_ENT.Cells[04,x]+' - '
                                          +STG_ENT.Cells[00,x]+' Quantidade  '+STG_ENT.Cells[03,x]);
      Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=3;
      Form_Ocorrencias.mErros:=true;
      end;
   if ValFloat(STG_ENT.Cells[05,x])<=0 then
      begin
      Form_Ocorrencias.adicionaItemListView('Produto '+STG_ENT.Cells[04,x]+' - '
                                          +STG_ENT.Cells[00,x]+' Preco Unitario  '+STG_ENT.Cells[05,x]);
      Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=3;
      Form_Ocorrencias.mErros:=true;
      end;
   end;

for x:=1 to STG_DEV.RowCount do
   begin
   if Trim(STG_DEV.Cells[00,x])='' then
      Continue;
   if ValFloat(STG_DEV.Cells[03,x])<=0 then
      begin
      Form_Ocorrencias.adicionaItemListView('Produto '+STG_DEV.Cells[04,x]+' - '
                                          +STG_DEV.Cells[00,x]+' Quantidade  '+STG_DEV.Cells[03,x]);
      Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=3;
      Form_Ocorrencias.mErros:=true;
      end;
   if ValFloat(STG_DEV.Cells[05,x])<=0 then
      begin
      Form_Ocorrencias.adicionaItemListView('Produto '+STG_DEV.Cells[04,x]+' - '
                                          +STG_DEV.Cells[00,x]+' Preco Unitario  '+STG_DEV.Cells[05,x]);
      Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=3;
      Form_Ocorrencias.mErros:=true;
      end;
   end;



if Form_Ocorrencias.mErros then
   begin
   form_ocorrencias.lbl_ocorrencia.Caption:='Não sera possível gravar a troca!!!';
   Form_Ocorrencias.ShowModal;
   freeandnil(form_ocorrencias);
   close;
   end;
freeandnil(form_ocorrencias);

// TERMINO

if Frm_Agde=nil then
   Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Gravando Pedido. Aguarde';
Frm_Agde.Show;
Frm_Agde.Update;
if moper_trocas=0 then
   begin
   mchave_tro:=0;
   mchave_tro_new :=0;
   mcodemp_tro:=0;
   fTrocasGravar(0);
   end
else
   begin
   fTrocasgant(8);
   fexcluir(2);  // excluir os pedidos existentes
   fTrocasGravar(1);
   end;


CHAVE.Text:=Inttostr(mchave_tro);
BBINCLUIR.Enabled  :=bbtinc_true;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=False;
bbEmitirNF.Enabled :=False;
gb_totais.Enabled  :=false;

Frm_Agde.free;
Frm_Agde:=nil;

if mchave_tro=0 then
   begin
   AvisoSonoro(0);
   AvisoSonoro(1);
   fMensagem('Nao foi possivel gravar a troca!',0,['0'],0);
   end
else
   begin
   BBLIMPAR.Click;
   moper_trocas:=3;
   BBLOCALIZAR.Click;
   end;
moper_trocas:=0;
end;


function TFrm_Trocas.fexcluir(ptipo: Integer):Boolean;
{
Parametros ptipo= 0-Exclui mudando apenas o Status
                  2-Excluir definitivamente
}
begin
if ptipo=0 then
   begin
   DM2.Tb_Trocas_Cab.First;
   While not DM2.Tb_Trocas_Cab.Eof do
      begin
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.add('Update CADTRO_CAB set TCSTATUS=9, '
                         +' TCCODUSR_MAN=0'+IntTostr(codusr)+','
                         +' TCDATAHOR_MAN='+chr(39)+FormatDatetime(fdt, date)+chr(39)
                         +'  where TCCODEMP=0'+DM2.Tb_Trocas_CabTCCODEMP.AsString
                         +' and TCLOTSEQ=0'+DM2.Tb_Trocas_CabTCLOTSEQ.AsString
                         +' and TCCHAVE=0'+DM2.Tb_Trocas_CabTCCHAVE.AsString);
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,2857,'Frm_Trocas','OLD_CADTRO_CAB');
         end;
      DM2.Tb_Trocas_Cab.Next;
      end;
   end
else if ptipo=2 then
   begin
   DM2.Tb_Trocas_Cab.First;
   While not DM2.Tb_Trocas_Cab.Eof do
      begin
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.add('Delete from  CADTRO_SAI where TSCODEMP=0'+DM2.Tb_Trocas_CabTCCODEMP.AsString
                         +' and TSLOTSEQ=0'+DM2.Tb_Trocas_CabTCLOTSEQ.AsString
                         +' and TSCHAVE=0'+DM2.Tb_Trocas_CabTCCHAVE.AsString);
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,2876,'Frm_Trocas','OLD_CADTRO_SAI');
         end;
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.add('Delete from  CADTRO_ORI where TOCODEMP=0'+DM2.Tb_Trocas_CabTCCODEMP.AsString
                         +' and TOLOTSEQ=0'+DM2.Tb_Trocas_CabTCLOTSEQ.AsString
                         +' and TOCHAVE=0'+DM2.Tb_Trocas_CabTCCHAVE.AsString);
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,2887,'Frm_Trocas','OLD_CADTRO_ORI');
         end;


      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.add('Delete from  CADTRO_ENT where TECODEMP=0'+DM2.Tb_Trocas_CabTCCODEMP.AsString
                         +' and TELOTSEQ=0'+DM2.Tb_Trocas_CabTCLOTSEQ.AsString
                         +' and TECHAVE=0'+DM2.Tb_Trocas_CabTCCHAVE.AsString);
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,2900,'Frm_Trocas','OLD_CADTRO_ENT');
         end;

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.add('Delete from  CADTRO_CAB where TCCODEMP=0'+DM2.Tb_Trocas_CabTCCODEMP.AsString
                         +' and TCLOTSEQ=0'+DM2.Tb_Trocas_CabTCLOTSEQ.AsString
                         +' and TCCHAVE=0'+DM2.Tb_Trocas_CabTCCHAVE.AsString);
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,2912,'Frm_Trocas','OLD_CADTRO_CAB');
         end;
      DM2.Tb_Trocas_Cab.Next;
      end;
   end;
result:=true;
end;


function tFrm_Trocas.fTrocasGravar(ptipo: Integer):Boolean;
//ptipo=0-novo
//      1-alteracao
var
x: Integer;
begin
if ptipo=0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Select max(TCCHAVE) from CADTRO_CAB '
                     +iif(DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' where TCCODEMP=0'+IntToStr(codemp)));
   DM1.Query1.Open;
   mchave_tro:=DM1.Query1.Fields[0].AsInteger+1;
   mchave_tro_new := fBuscarProximoId('CADTRO_CAB_SEQ');
   mcodemp_tro:=codemp;
   end;
DM1.Query2.Close;
DM1.Query2.sql.Clear;
{
DM1.Query2.Params.CreateParam(ftString,'TSCODEMP',ptInput);
DM1.Query2.Params.CreateParam(ftString,'TSLOTSEQ',ptInput);
DM1.Query2.Params.CreateParam(ftString,'TSCHAVE',ptInput);
DM1.Query2.Params.CreateParam(ftString,'TSITEM',ptInput);
DM1.Query2.Params.CreateParam(ftString,'TSCODPRO',ptInput);
DM1.Query2.Params.CreateParam(ftString,'TSQTD',ptInput);
DM1.Query2.Params.CreateParam(ftString,'TSPU',ptInput);
DM1.Query2.Params.CreateParam(ftString,'TSLOTE',ptInput);
DM1.Query2.Params.CreateParam(ftString,'TSDTVCTO',ptInput);
}
DM1.Query2.SQL.add('insert Into CADTRO_SAI ('
                  +' TSCODEMP '
                  +',TSLOTSEQ '
                  +',TSCHAVE '
                  +',TSITEM '
                  +',TSCODPRO '
                  +',TSQTD '
                  +',TSPU '
                  +',TSLOTE '
                  +',TSDTVCTO  '
                  +',TSID_CAB_NEW '
                  +',TSID_NEW '
                  +') values ('
                  +' :TSCODEMP '
                  +',:TSLOTSEQ '
                  +',:TSCHAVE '
                  +',:TSITEM '
                  +',:TSCODPRO '
                  +',:TSQTD '
                  +',:TSPU '
                  +',:TSLOTE '
                  +',:TSDTVCTO '
                  +',:TSID_CAB_NEW '
                  +',CADTRO_SAI_SEQ.NEXTVAL '
                  +')');


mqtd_tro:=0;
for x:=1 to STG_ENT.RowCount do
   begin
   if Trim(STG_ENT.Cells[00,x])='' then
      Continue;
   mqtd_tro:=mqtd_tro+1;
   DM1.Query2.ParamByName('TSCODEMP').AsFloat:=mcodemp_tro;
   DM1.Query2.ParamByName('TSLOTSEQ').AsFloat:=ls_trocas;
   DM1.Query2.ParamByName('TSCHAVE').AsFloat :=mchave_tro;
   DM1.Query2.ParamByName('TSID_CAB_NEW').AsFloat :=mchave_tro_new;
   DM1.Query2.ParamByName('TSITEM').AsFloat  :=mqtd_tro;
   DM1.Query2.ParamByName('TSCODPRO').AsFloat:=fsonumero(STG_ENT.Cells[00,x]);
   DM1.Query2.ParamByName('TSQTD').AsFloat   :=ValFloat(STG_ENT.Cells[03,x]);
   DM1.Query2.ParamByName('TSPU').AsFloat    :=ValFloat(STG_ENT.Cells[05,x]);
   if Trim(STG_ENT.Cells[01,x])='' then
      DM1.Query2.ParambyName('TSLOTE').AsString  :=' '
   else
      DM1.Query2.ParambyName('TSLOTE').AsString  :=STG_ENT.cells[01,x];
   if (Trim(STG_ENT.Cells[02,x])='/  /') or (Trim(STG_ENT.Cells[02,x])='') then
      DM1.Query2.ParamByName('TSDTVCTO').AsDateTime:=pdatanula
   else
      DM1.Query2.ParamByName('TSDTVCTO').AsDateTime:=StrToDate(STG_ENT.Cells[02,x]);
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(02,2995,'Frm_Trocas','CADTRO_SAI');
      end;
   end;
{
DM1.Query2.Params.CreateParam(ftstring,'TOCODEMP',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TOLOTSEQ',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TOCHAVE',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TOITEM',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TOCODEMP_CP_DEV',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TOLOTSEQ_CP_DEV',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TOCHAVE_CP_DEV',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TODATA_DEV',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TOCODCLI_CP_DEV',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TOVALOR_PEDDEV',ptinput);
}
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Insert into CADTRO_ORI ('
          +'TOCODEMP'
          +',TOLOTSEQ'
          +',TOCHAVE'
          +',TOITEM'
          +',TOCODEMP_CP_DEV'
          +',TOLOTSEQ_CP_DEV'
          +',TOCHAVE_CP_DEV'
          +',TODATA_DEV'
          +',TOCODCLI_CP_DEV'
          +',TOVALOR_PEDDEV'
          +',TOID_NEW'
          +',TOID_CAB_NEW'
          +',TOID_CP_DEV_NEW'

          +') Values  ('
          +':TOCODEMP'
          +',:TOLOTSEQ'
          +',:TOCHAVE'
          +',:TOITEM'
          +',:TOCODEMP_CP_DEV'
          +',:TOLOTSEQ_CP_DEV'
          +',:TOCHAVE_CP_DEV'
          +',:TODATA_DEV'
          +',:TOCODCLI_CP_DEV'
          +',:TOVALOR_PEDDEV'
          +', CADTRO_ORI_SEQ.NEXTVAL '
          +',:TOID_CAB_NEW'
          +',:TOID_CP_DEV_NEW'

          +')'
          );

mqtd_tro:=0;
for x:=1 to STG_ORI.RowCount do
   begin
   if Trim(STG_ORI.Cells[00,x])='' then
      Continue;
   mqtd_tro:=mqtd_tro+1;
   DM1.Query2.ParambyName('TOCODEMP').AsFloat       :=mcodemp_tro;
   DM1.Query2.ParambyName('TOLOTSEQ').AsFloat       :=ls_trocas;
   DM1.Query2.ParambyName('TOCHAVE').AsFloat        :=mchave_tro;
   DM1.Query2.ParamByName('TOID_CAB_NEW').AsFloat :=mchave_tro_new;
   DM1.Query2.ParamByName('TOID_CP_DEV_NEW').AsFloat :=fsonumero(STG_ORI.cells[mcol_cp_dev,x]);

   DM1.Query2.ParambyName('TOITEM').AsFloat         :=mqtd_tro;
   DM1.Query2.ParambyName('TOCODEMP_CP_DEV').AsFloat:=fsonumero(STG_ORI.cells[00,x]);
   DM1.Query2.ParambyName('TOLOTSEQ_CP_DEV').AsFloat:=ls_numped;
   DM1.Query2.ParambyName('TOCHAVE_CP_DEV').AsFloat :=fsonumero(STG_ORI.cells[01,x]);
   if (trim(STG_ORI.Cells[02,x])='') or (trim(STG_ORI.Cells[02,x])='/  /') then
      DM1.Query2.ParambyName('TODATA_DEV').AsDateTime  :=pdatanula
   else
      DM1.Query2.ParambyName('TODATA_DEV').AsDateTime  :=pdatanula;
   DM1.Query2.ParambyName('TOVALOR_PEDDEV').AsFloat :=ValFloat(STG_ORI.cells[04,x]);
   DM1.Query2.ParambyName('TOCODCLI_CP_DEV').AsFloat:=Fsonumero(STG_ORI.cells[05,x]);

   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(02,3036,'Frm_Trocas','CADTRO_ORI');
      end;
   end;

{
DM1.Query2.Params.CreateParam(ftstring,'TECODEMP',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TELOTSEQ',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TECHAVE',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TEITEM',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TECODPRO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TEQTD',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TEPU',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TELOTE',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TEDTVCTO',ptinput);
}
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Insert into CADTRO_ENT ('
          +'TECODEMP'
          +',TELOTSEQ'
          +',TECHAVE'
          +',TEITEM'
          +',TECODPRO'
          +',TEQTD'
          +',TEPU'
          +',TELOTE'
          +',TEDTVCTO'
          +',TEID_NEW'
          +',TEID_CAB_NEW'
          +') Values  ('
          +':TECODEMP'
          +',:TELOTSEQ'
          +',:TECHAVE'
          +',:TEITEM'
          +',:TECODPRO'
          +',:TEQTD'
          +',:TEPU'
          +',:TELOTE'
          +',:TEDTVCTO'
          +',CADTRO_ENT_SEQ.NEXTVAL'
          +',:TEID_CAB_NEW'

          +')'
          );

mqtd_tro:=0;
for x:=1 to STG_DEV.RowCount do
   begin
   if Trim(STG_DEV.Cells[00,x])='' then
      Continue;
   mqtd_tro:=mqtd_tro+1;
   DM1.Query2.ParambyName('TECODEMP').AsFloat:=mcodemp_tro;
   DM1.Query2.ParambyName('TELOTSEQ').AsFloat:=ls_trocas;
   DM1.Query2.ParambyName('TECHAVE').AsFloat :=mchave_tro;
   DM1.Query2.ParambyName('TEITEM').AsFloat  :=mqtd_tro;
   DM1.Query2.ParambyName('TECODPRO').AsFloat:=fsonumero(STG_DEV.Cells[00,x]);
   DM1.Query2.ParambyName('TEQTD').AsFloat   :=ValFloat(STG_DEV.Cells[03,x]);
   DM1.Query2.ParambyName('TEPU').AsFloat    :=ValFloat(STG_DEV.Cells[05,x]);
   if Trim(STG_DEV.Cells[01,x])='' then
      DM1.Query2.ParambyName('TELOTE').AsString:=' '
   else
      DM1.Query2.ParambyName('TELOTE').AsString:=STG_DEV.cells[01,x];

   if (Trim(STG_DEV.Cells[02,x])='/  /') or (Trim(STG_DEV.Cells[02,x])='') then
      DM1.Query2.ParamByName('TEDTVCTO').AsDateTime:=pdatanula
   else
      DM1.Query2.ParamByName('TEDTVCTO').AsDateTime:=StrToDate(STG_DEV.Cells[02,x]);
   DM1.Query2.ParambyName('TEID_CAB_NEW').AsFloat    :=mchave_tro_new;


   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(02,3129,'Frm_Trocas','CADTRO_ENT');
      end;

   end;
{
DM1.Query2.Params.CreateParam(ftstring,'TCCODEMP',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCLOTSEQ',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCCHAVE',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCCODCLI',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCNOMCLI',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCCODVEN',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCFPGTO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCOBS01',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCOBS02',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCOBS03',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCOBS04',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCCHECARORI',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCSTATUS',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCDATA',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCICMSRETDEV',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCVALORDEV',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCDESCDEV',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCACREDEV',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCICMSRETSAI',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCVALORSAI',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCDESCSAI',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCACRESAI',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCTROCO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCRECEBIDO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCLOTSEQ_CP_DEV',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCCHAVE_DEV',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCNUMNF_DEV',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCLOTSEQ_CP_SAI',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCCHAVE_SAI',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCNUMNF_SAI',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCQTDMAN',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCSITUACAO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCCODUSR',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCDATAHOR',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCCODUSR_MAN',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TCDATAHOR_MAN',ptinput);
}
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Insert into CADTRO_CAB ('
          +'TCCODEMP'
          +',TCLOTSEQ'
          +',TCCHAVE'
          +',TCCODCLI'
          +',TCNOMCLI'
          +',TCCODVEN'
          +',TCFPGTO'
          +',TCOBS01'
          +',TCOBS02'
          +',TCOBS03'
          +',TCOBS04'
          +',TCCHECARORI'
          +',TCSTATUS'
          +',TCDATA'
          +',TCICMSRETDEV'
          +',TCVALORDEV'
          +',TCDESCDEV'
          +',TCACREDEV'
          +',TCICMSRETSAI'
          +',TCVALORSAI'
          +',TCDESCSAI'
          +',TCACRESAI'
          +',TCTROCO'
          +',TCRECEBIDO'
          +',TCLOTSEQ_CP_DEV'
          +',TCCHAVE_DEV'
          +',TCNUMNF_DEV'
          +',TCLOTSEQ_CP_SAI'
          +',TCCHAVE_SAI'
          +',TCNUMNF_SAI'
          +',TCQTDMAN'
          +',TCSITUACAO'
          +',TCCODUSR'
          +',TCDATAHOR'
          +',TCCODUSR_MAN'
          +',TCDATAHOR_MAN'
          +',TCID_NEW'
          +') Values  ('
          +':TCCODEMP'
          +',:TCLOTSEQ'
          +',:TCCHAVE'
          +',:TCCODCLI'
          +',:TCNOMCLI'
          +',:TCCODVEN'
          +',:TCFPGTO'
          +',:TCOBS01'
          +',:TCOBS02'
          +',:TCOBS03'
          +',:TCOBS04'
          +',:TCCHECARORI'
          +',:TCSTATUS'
          +',:TCDATA'
          +',:TCICMSRETDEV'
          +',:TCVALORDEV'
          +',:TCDESCDEV'
          +',:TCACREDEV'
          +',:TCICMSRETSAI'
          +',:TCVALORSAI'
          +',:TCDESCSAI'
          +',:TCACRESAI'
          +',:TCTROCO'
          +',:TCRECEBIDO'
          +',:TCLOTSEQ_CP_DEV'
          +',:TCCHAVE_DEV'
          +',:TCNUMNF_DEV'
          +',:TCLOTSEQ_CP_SAI'
          +',:TCCHAVE_SAI'
          +',:TCNUMNF_SAI'
          +',:TCQTDMAN'
          +',:TCSITUACAO'
          +',:TCCODUSR'
          +',:TCDATAHOR'
          +',:TCCODUSR_MAN'
          +',:TCDATAHOR_MAN'
          +',:TCID_NEW'

          +')'
          );
DM1.Query2.ParambyName('TCID_NEW').AsFloat       :=mchave_tro_new;
DM1.Query2.ParambyName('TCCODEMP').AsFloat       :=mcodemp_tro;
DM1.Query2.ParambyName('TCLOTSEQ').AsFloat       :=ls_trocas;
DM1.Query2.ParambyName('TCCHAVE').AsFloat        :=mchave_tro;
DM1.Query2.ParambyName('TCCODCLI').AsFloat       :=fsonumero(CODCLI.Text);
DM1.Query2.ParambyName('TCNOMCLI').AsString      :=NOMCLI.Text;
DM1.Query2.ParambyName('TCCODVEN').AsFloat       :=fsonumero(CODVEN.Text);
if Trim(CB_FORMAPAG.Text)='' then
   DM1.Query2.ParambyName('TCFPGTO').AsFloat     :=0
else
   DM1.Query2.ParambyName('TCFPGTO').AsFloat     :=valFloat( copy(CB_FORMAPAG.Text,length(CB_FORMAPAG.Text)-1,2));


if Trim(OBS01.Text)='' then
   DM1.Query2.ParambyName('TCOBS01').AsString    :=' '
else
   DM1.Query2.ParambyName('TCOBS01').AsString    :=OBS01.Text;
if Trim(OBS02.Text)='' then
   DM1.Query2.ParambyName('TCOBS02').AsString    :=' '
else
   DM1.Query2.ParambyName('TCOBS02').AsString    :=OBS02.Text;
DM1.Query2.ParambyName('TCOBS03').AsString    :=' ';
DM1.Query2.ParambyName('TCOBS04').AsString    :=' ';
if CB_CHEGARORI.Checked then
   DM1.Query2.ParambyName('TCCHECARORI').AsFloat :=1
else
   DM1.Query2.ParambyName('TCCHECARORI').AsFloat :=0;

if ptipo=0 then
   begin
   DM1.Query2.ParambyName('TCSTATUS').AsFloat        :=0;
   DM1.Query2.ParambyName('TCLOTSEQ_CP_DEV').AsFloat :=0;
   DM1.Query2.ParambyName('TCCHAVE_DEV').AsFloat     :=0;
   DM1.Query2.ParambyName('TCNUMNF_DEV').AsFloat     :=0;
   DM1.Query2.ParambyName('TCLOTSEQ_CP_SAI').AsFloat :=0;
   DM1.Query2.ParambyName('TCCHAVE_SAI').AsFloat     :=0;
   DM1.Query2.ParambyName('TCNUMNF_SAI').AsFloat     :=0;
   DM1.Query2.ParambyName('TCQTDMAN').AsFloat        :=0;
   DM1.Query2.ParambyName('TCCODUSR').AsFloat        :=codusr;
   DM1.Query2.ParambyName('TCDATAHOR').AsDateTime    :=Now;
   DM1.Query2.ParambyName('TCCODUSR_MAN').AsFloat    :=0;
   DM1.Query2.ParambyName('TCDATAHOR_MAN').AsDateTime:=now;

   end
else
   begin
   DM1.Query2.ParambyName('TCSTATUS').AsFloat       :=DM2.Tb_Trocas_CabTCSTATUS.Value;
   DM1.Query2.ParambyName('TCLOTSEQ_CP_DEV').AsFloat:=DM2.Tb_Trocas_CabTCLOTSEQ_CP_DEV.Value;
   DM1.Query2.ParambyName('TCCHAVE_DEV').AsFloat    :=DM2.Tb_Trocas_CabTCCHAVE_DEV.Value;
   DM1.Query2.ParambyName('TCNUMNF_DEV').AsFloat    :=DM2.Tb_Trocas_CabTCNUMNF_DEV.Value;
   DM1.Query2.ParambyName('TCLOTSEQ_CP_SAI').AsFloat:=DM2.Tb_Trocas_CabTCLOTSEQ_CP_SAI.Value;
   DM1.Query2.ParambyName('TCCHAVE_SAI').AsFloat    :=DM2.Tb_Trocas_CabTCCHAVE_SAI.Value;
   DM1.Query2.ParambyName('TCNUMNF_SAI').AsFloat    :=DM2.Tb_Trocas_CabTCNUMNF_SAI.Value;
   DM1.Query2.ParambyName('TCQTDMAN').AsFloat       :=DM2.Tb_Trocas_CabTCQTDMAN.Value+1;
   DM1.Query2.ParambyName('TCCODUSR').AsFloat        :=DM2.Tb_Trocas_CabTCCODUSR.Value+1;
   DM1.Query2.ParambyName('TCDATAHOR').AsDateTime    :=DM2.Tb_Trocas_CabTCDATAHOR.Value;
   DM1.Query2.ParambyName('TCCODUSR_MAN').AsFloat    :=codusr;
   DM1.Query2.ParambyName('TCDATAHOR_MAN').AsDateTime:=now;
   end;
DM1.Query2.ParambyName('TCICMSRETDEV').AsFloat   :=0;
DM1.Query2.ParambyName('TCVALORDEV').AsFloat     :=ValFloat(TOTLIQDEV.Text);
DM1.Query2.ParambyName('TCDESCDEV').AsFloat      :=ValFloat(DESCDEV.Text);
DM1.Query2.ParambyName('TCACREDEV').AsFloat      :=0;
DM1.Query2.ParambyName('TCICMSRETSAI').AsFloat   :=0;
DM1.Query2.ParambyName('TCVALORSAI').AsFloat     :=ValFloat(TOTLIQENT.Text);
DM1.Query2.ParambyName('TCDESCSAI').AsFloat      :=Valfloat(DESCENT.Text);
DM1.Query2.ParambyName('TCACRESAI').AsFloat      :=0;
DM1.Query2.ParambyName('TCTROCO').AsFloat        :=ValFloat(TROCO.Text);
DM1.Query2.ParambyName('TCRECEBIDO').AsFloat     :=ValFloat(RECEBIDO.Text);
DM1.Query2.ParambyName('TCSITUACAO').AsFloat     :=0;
if (Trim(DATA.Text)='/  /') or (Trim(DATA.Text)='') then
   DM1.Query2.ParambyName('TCDATA').AsDateTime:=pdatanula
else
   DM1.Query2.ParambyName('TCDATA').AsDateTime:=StrtoDate(DATA.Text);
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(02,3315,'Frm_Trocas','CADTRO_CAB');
   end;
result:=true;


end;

procedure TFrm_Trocas.BBEXCLUIRClick(Sender: TObject);
begin
mQtdMan:=DM2.Tb_Trocas_CabTCQTDMAN.AsInteger;
DM2.Tb_Trocas_Cab.Close;
DM2.Tb_Trocas_Cab.Open;
if DM2.Tb_Trocas_CabTCQTDMAN.Value>mQtdMan then
   begin
   moper_trocas:=3;
   BBLOCALIZAR.Click;
   end;
if DM2.Tb_Trocas_CabTCSITUACAO.Value=1 then
   begin
   mcinst:='Este Pedido pode Estar Sendo Alterado em Outra Estação,'+#13
          +'Caso não Esteja entre na opção: SISTEMA->DESBLOQUEIA TROCAS '+#13
          +'e desbloqueia o mesmo';
   fMensagem(mcinst,0,['0'],0);
   exit;
   end;

flcadpar01(0,codemp,'1');
if fMensagem('Quer realmente excluir este Registro?',0,['1','2'],2)<>mrYes then
   exit;

mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=38;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha Para Excluir a Troca de Mercadorias';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;



mQtdMan:=DM2.Tb_Trocas_CabTCQTDMAN.AsInteger;
DM2.Tb_Trocas_Cab.Close;
DM2.Tb_Trocas_Cab.Open;
if DM2.Tb_Trocas_CabTCQTDMAN.Value>mQtdMan then
   begin
   moper_trocas:=3;
   BBLOCALIZAR.Click;
   end;
if DM2.Tb_Trocas_CabTCSITUACAO.Value=1 then
   begin
   mcinst:='Este Pedido pode Estar Sendo Alterado em Outra Estação,'+#13
          +'Caso não Esteja entre na opção: SISTEMA->DESBLOQUEIA TROCAS '+#13
          +'e desbloqueia o mesmo';
   fMensagem(mcinst,0,['0'],0);
   exit;
   end;


While not DM2.Tb_Trocas_Cab.Eof  do
   begin
   if DM2.Tb_Trocas_CabTCSTATUS.AsInteger=2 then
    begin

    end;
   fTrocasgant(9);
   DM2.Tb_Trocas_Cab.Next;
   end;
fexcluir(0);
BBLIMPAR.Click;
fMensagem('Pedido Excluido!',0,['0'],0);


end;

procedure TFrm_Trocas.BBIMPRIMIRClick(Sender: TObject);
var
mTotalDev: real;
mTotalEntregue: real;

begin
DM2.Tb_Trocas_Cab.Last;
DM2.Tb_Trocas_Cab.First;
DM2.Tb_Trocas_Ori.First;
DM2.Tb_Trocas_Sai.First;
DM2.Tb_Trocas_ent.First;
testeform := TFrm_Trocas(FindGlobalComponent('form_Impres_Trocas'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_Impres_Trocas);

form_Impres_Trocas.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_Impres_Trocas.mlin:=0;
form_Impres_Trocas.mpag:=0;
mTotalDev     :=0;
mTotalEntregue:=0;


fTrocasTestaCab(1);
While not DM2.Tb_Trocas_Ent.Eof do
   begin
   if form_Impres_Trocas.mlin=0 then
      fTrocasTestaCab(1);
   form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
   flcadpro(1,0,0,DM2.Tb_Trocas_EntTECODPRO.AsString);
   mTotalDev:=mTotalDev+Arredonda((DM2.Tb_Trocas_EntTEPU.Value*DM2.Tb_Trocas_EntTEQTD.Value),2);

   if ValInt(copy(mpseg,4,2))=2 then // se é grade
      begin
      form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'|'
                              +insere2(DM2.Tb_Trocas_EntTECODPRO.AsString,' ',08)+'|'
                              +insere2(DM2.Tb_Trocas_EntTELOTE.Value,' ',09)+'|'
                              +insere(FormatFloat(mcasqtd, DM2.Tb_Trocas_EntTEQTD.Value),' ',14)+'|'
                              +insere2(DM1.Tb_ProPDUND.Value,' ',03)+'|'
                              +insere2(DM1.Tb_ProPDNOME.Value,' ',41)+'|'
                              +insere2(DM1.Tb_ProPDMARCA.Value,' ',21)+'|'
                              +insere(FormatFloat(mcasaspu, DM2.Tb_Trocas_EntTEPU.Value),' ',14)+'|'
                              +insere(FormatFloat(mcasas, (DM2.Tb_Trocas_EntTEPU.Value*DM2.Tb_Trocas_EntTEQTD.Value)),' ',14)+'|',mreduz);
      end
   else if ValInt(copy(mpseg,4,2))=1 then // se LOTE + VCTO
      begin
      if (DM2.Tb_Trocas_EntTEDTVCTO.IsNull) or
         (DM2.Tb_Trocas_EntTEDTVCTO.Value<=pdatanula) then
         mcinst:='/  /'
      else
         mcinst:=FormatDatetime(fdt2, DM2.Tb_Trocas_EntTEDTVCTO.Value);

      form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'|'
                              +insere2(DM2.Tb_Trocas_EntTECODPRO.AsString,' ',08)+'|'
                              +insere2(DM2.Tb_Trocas_EntTELOTE.Value,' ',09)+'|'
                              +insere2(mcinst,' ',10)+'|'
                              +insere(FormatFloat(mcasqtd, DM2.Tb_Trocas_EntTEQTD.Value),' ',14)+'|'
                              +insere2(DM1.Tb_ProPDUND.Value,' ',03)+'|'
                              +insere2(DM1.Tb_ProPDNOME.Value,' ',40)+'|'
//                              +insere2(DM1.Tb_ProPDMARCA.Value,' ',22)+'|'
                              +insere(FormatFloat(mcasaspu, DM2.Tb_Trocas_EntTEPU.Value),' ',14)+'|'
                              +insere(FormatFloat(mcasas, (DM2.Tb_Trocas_EntTEPU.Value*DM2.Tb_Trocas_EntTEQTD.Value)),' ',14)+'|',mreduz);
      end
   else
      begin
      form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'|'
                              +insere2(DM2.Tb_Trocas_EntTECODPRO.AsString,' ',08)+'|'
                              +insere(FormatFloat(mcasqtd, DM2.Tb_Trocas_EntTEQTD.Value),' ',13)+'|'
                              +insere2(DM1.Tb_ProPDUND.Value,' ',03)+'|'
                              +insere2(DM1.Tb_ProPDNOME.Value,' ',55)+'|'
                              +insere2(DM1.Tb_ProPDMARCA.Value,' ',22)+'|'
                              +insere(FormatFloat(mcasaspu, DM2.Tb_Trocas_EntTEPU.Value),' ',12)+'|'
                              +insere(FormatFloat(mcasas, (DM2.Tb_Trocas_EntTEPU.Value*DM2.Tb_Trocas_EntTEQTD.Value)),' ',13)+'|',mreduz);
      end;
   DM2.Tb_Trocas_ent.Next;
   if DM2.Tb_Trocas_ent.eof then
      begin
      if ValInt(copy(mpseg,4,2))=2 then // se é grade
         begin
         form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
         form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'+--------+---------+--------------+---+-----------------------------------------+---------------------+--------------+--------------+',mreduz);

         form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
         form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'|        |         |              |   |  - Total..............................  |                     |              |'
         +insere(formatfloat(mcasas, mTotalDev),' ',14)+'|',mreduz);
         form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
         form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'+--------+---------+--------------+---+-----------------------------------------+---------------------+--------------+--------------+',mreduz);

         end
      else if ValInt(copy(mpseg,4,2))=1 then // se é LOTE
         begin
         form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
         form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'+--------+---------+----------+--------------+---+----------------------------------------+--------------+--------------+',mreduz);
         form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
         form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'|        |         |          |              |   | - Total..............................  |              |'
         +insere(formatfloat(mcasas, mTotalDev),' ',14)+'|',mreduz);
         form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
         form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'+--------+---------+----------+--------------+---+----------------------------------------+--------------+--------------+',mreduz);


//         form_Impres_Trocas.RdPrint1.Impf(form_Impres_Trocas.mlin,01,'+--------------+---------------+----------+--------------+---+----------------------------------------+--------------+--------------+',mreduz);
         end
      else
         begin
         form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
         form_Impres_Trocas.RdPrint1.Impf(form_Impres_Trocas.mlin,01,'+--------+-------------+---+-------------------------------------------------------+----------------------+------------+-------------+',mreduz);

         form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
         form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'|        |             |   |  - Total............................................  |                      |            |'
         +insere(formatfloat(mcasas, mTotalDev),' ',14)+'|',mreduz);
         form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
         form_Impres_Trocas.RdPrint1.Impf(form_Impres_Trocas.mlin,01,'+--------+-------------+---+-------------------------------------------------------+----------------------+------------+-------------+',mreduz);
         end;
      end
   else if form_Impres_Trocas.mlin>58 then
      begin
      if ValInt(copy(mpseg,4,2))=2 then // se é grade
         begin
         form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
         form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'+--------+---------+--------------+---+-----------------------------------------+---------------------+--------------+--------------+',mreduz);
         end
      else if ValInt(copy(mpseg,4,2))=1 then // se é LOTE
         begin
         form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
         form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'+--------+---------+----------+--------------+---+----------------------------------------+--------------+--------------+',mreduz);
         end
      else
         begin
         form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
         form_Impres_Trocas.RdPrint1.Impf(form_Impres_Trocas.mlin,01,'+--------+-------------+---+-------------------------------------------------------+----------------------+------------+-------------+',mreduz);
         end;
      form_Impres_Trocas.RDprint1.Novapagina;
      form_Impres_Trocas.mlin:=0;
      end;
   end;

fTrocasTestaCab(2);
While not DM2.Tb_Trocas_Sai.Eof do
   begin
   if form_Impres_Trocas.mlin=0 then
      fTrocasTestaCab(2);
   form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
   flcadpro(1,0,0,DM2.Tb_Trocas_SaiTSCODPRO.AsString);
   mTotalEntregue:=mTotalEntregue + Arredonda( (DM2.Tb_Trocas_SaiTSPU.Value*DM2.Tb_Trocas_SaiTSQTD.Value) , 2);
   if ValInt(copy(mpseg,4,2))=2 then // se é grade
      begin
      form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'|'
                              +insere2(DM2.Tb_Trocas_SaiTSCODPRO.AsString,' ',08)+'|'
                              +insere2(DM2.Tb_Trocas_SaiTSLOTE.Value,' ',09)+'|'
                              +insere(FormatFloat(mcasqtd, DM2.Tb_Trocas_SaiTSQTD.Value),' ',14)+'|'
                              +insere2(DM1.Tb_ProPDUND.Value,' ',03)+'|'
                              +insere2(DM1.Tb_ProPDNOME.Value,' ',41)+'|'
                              +insere2(DM1.Tb_ProPDMARCA.Value,' ',21)+'|'
                              +insere(FormatFloat(mcasaspu, DM2.Tb_Trocas_SaiTSPU.Value),' ',14)+'|'
                              +insere(FormatFloat(mcasas, (DM2.Tb_Trocas_SaiTSPU.Value*DM2.Tb_Trocas_SaiTSQTD.Value)),' ',14)+'|',mreduz);

      end
   else if ValInt(copy(mpseg,4,2))=1 then // se é LOTE
      begin
      if (DM2.Tb_Trocas_SaiTSDTVCTO.IsNull) or
         (DM2.Tb_Trocas_SaiTSDTVCTO.Value<=pdatanula) then
         mcinst:='/  /'
      else
         mcinst:=FormatDatetime(fdt2, DM2.Tb_Trocas_SaiTSDTVCTO.Value);

      form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'|'
                              +insere2(DM2.Tb_Trocas_SaiTSCODPRO.AsString,' ',08)+'|'
                              +insere2(DM2.Tb_Trocas_SaiTSLOTE.Value,' ',09)+'|'
                              +insere2(mcinst,' ',10)+'|'
                              +insere(FormatFloat(mcasqtd, DM2.Tb_Trocas_SaiTSQTD.Value),' ',14)+'|'
                              +insere2(DM1.Tb_ProPDUND.Value,' ',03)+'|'
                              +insere2(DM1.Tb_ProPDNOME.Value,' ',40)+'|'
//                              +insere2(DM1.Tb_ProPDMARCA.Value,' ',22)+'|'
                              +insere(FormatFloat(mcasaspu, DM2.Tb_Trocas_SaiTSPU.Value),' ',14)+'|'
                              +insere(FormatFloat(mcasas, (DM2.Tb_Trocas_SaiTSPU.Value*DM2.Tb_Trocas_SaiTSQTD.Value)),' ',14)+'|',mreduz);
      end
   else
      begin
      form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'|'
                              +insere2(DM2.Tb_Trocas_SaiTSCODPRO.AsString,' ',08)+'|'
                              +insere(FormatFloat(mcasqtd, DM2.Tb_Trocas_SaiTSQTD.Value),' ',13)+'|'
                              +insere2(DM1.Tb_ProPDUND.Value,' ',03)+'|'
                              +insere2(DM1.Tb_ProPDNOME.Value,' ',55)+'|'
                              +insere2(DM1.Tb_ProPDMARCA.Value,' ',22)+'|'
                              +insere(FormatFloat(mcasaspu, DM2.Tb_Trocas_SaiTSPU.Value),' ',12)+'|'
                              +insere(FormatFloat(mcasas, (DM2.Tb_Trocas_SaiTSPU.Value*DM2.Tb_Trocas_SaiTSQTD.Value)),' ',13)+'|',mreduz);
      end;
   DM2.Tb_Trocas_Sai.Next;
   if DM2.Tb_Trocas_Sai.eof then
      begin
      if ValInt(copy(mpseg,4,2))=2 then // se é grade
         begin
         form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
         form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'+--------+---------+--------------+---+-----------------------------------------+---------------------+--------------+--------------+',mreduz);
         form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
         form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'|        |         |              |   |  - Total..............................  |                     |              |'
         +insere(formatfloat(mcasas, mTotalEntregue),' ',14)+'|',mreduz);
         form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
         form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'+--------+---------+--------------+---+-----------------------------------------+---------------------+--------------+--------------+',mreduz);

         end
      else if ValInt(copy(mpseg,4,2))=1 then // se é LOTE
         begin
         form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
         form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'+--------+---------+----------+--------------+---+----------------------------------------+--------------+--------------+',mreduz);
         form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
         form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'|        |         |          |              |   | - Total..............................  |              |'
         +insere(formatfloat(mcasas, mTotalEntregue),' ',14)+'|',mreduz);
         form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
         form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'+--------+---------+----------+--------------+---+----------------------------------------+--------------+--------------+',mreduz);


         end
      else
         begin
         form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
         form_Impres_Trocas.RdPrint1.Impf(form_Impres_Trocas.mlin,01,'+--------+-------------+---+-------------------------------------------------------+----------------------+------------+-------------+',mreduz);

         form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
         form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'|        |             |   |  - Total............................................  |                      |            |'
         +insere(formatfloat(mcasas, mTotalEntregue),' ',14)+'|',mreduz);
         form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
         form_Impres_Trocas.RdPrint1.Impf(form_Impres_Trocas.mlin,01,'+--------+-------------+---+-------------------------------------------------------+----------------------+------------+-------------+',mreduz);

         end;
      end
   else if form_Impres_Trocas.mlin>58 then
      begin
      if ValInt(copy(mpseg,4,2))=2 then // se é grade
         begin
         form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
         form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'+--------+---------+--------------+---+-----------------------------------------+---------------------+--------------+--------------+',mreduz);
         end
      else if ValInt(copy(mpseg,4,2))=1 then // se é LOTE
         begin
         form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
         form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'+--------+---------+----------+--------------+---+----------------------------------------+--------------+--------------+',mreduz);
         end
      else
         begin
         form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
         form_Impres_Trocas.RdPrint1.Impf(form_Impres_Trocas.mlin,01,'+---------------+-----------------+---+-------------------------------------------------------+------------------+------------------+',mreduz);
         end;
      form_Impres_Trocas.RDprint1.Novapagina;
      form_Impres_Trocas.mlin:=0;
      end;
   end;
form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
fTrocasTestaCab(0);
form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'Observaçoes.: '+DM2.Tb_Trocas_CabTCOBS01.Value,mnormal);
if trim(DM2.Tb_Trocas_CabTCOBS02.Value)='' then
   begin
   form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
   fTrocasTestaCab(0);
   form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'              '+DM2.Tb_Trocas_CabTCOBS02.Value,mnormal);
   end;
if trim(DM2.Tb_Trocas_CabTCOBS03.Value)='' then
   begin
   form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
   fTrocasTestaCab(0);
   form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'              '+DM2.Tb_Trocas_CabTCOBS03.Value,mnormal);
   end;

if trim(DM2.Tb_Trocas_CabTCOBS04.Value)='' then
   begin
   form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
   fTrocasTestaCab(0);
   form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'              '+DM2.Tb_Trocas_CabTCOBS04.Value,mnormal);
   end;
if DM2.Tb_Trocas_CabTCTROCO.Value<>0 then
   begin
   form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
   fTrocasTestaCab(0);
   form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'Devolver ao Cliente: '+FormatFloat(mcasas, DM2.Tb_Trocas_CabTCTROCO.Value),mneg);
   end;
if DM2.Tb_Trocas_CabTCRECEBIDO.Value<>0 then
   begin
   form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
   fTrocasTestaCab(0);
   form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'Receber do Cliente: '+FormatFloat(mcasas, DM2.Tb_Trocas_CabTCRECEBIDO.Value),mneg);
   end;

   form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+2;
   form_Impres_Trocas.Rdprint1.ImpF(form_Impres_Trocas.mlin,01,insere('=','=',80),mnormal);
   form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
   form_Impres_Trocas.RDprint1.impf(form_Impres_Trocas.mlin,01,'Chave: '+DM2.Tb_Trocas_CabTCCHAVE.AsString
                         +'      Data: '+FormatDateTime(fdt2, DM2.Tb_Trocas_CabTCDATA.Value),mneg);

   if DM2.Tb_Trocas_CabTCRECEBIDO.Value<>0 then
      begin
      form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
      fTrocasTestaCab(0);
      form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'Receber do Cliente: '+FormatFloat(mcasas, DM2.Tb_Trocas_CabTCRECEBIDO.Value),mneg);
      end;

   if DM2.Tb_Trocas_CabTCTROCO.Value<>0 then
      begin
      form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
      fTrocasTestaCab(0);
      form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'Devolver ao Cliente: '+FormatFloat(mcasas, DM2.Tb_Trocas_CabTCTROCO.Value),mneg);
      end;

   form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
   form_Impres_Trocas.RDprint1.impf(form_Impres_Trocas.mlin,01,'Cliente: '+DM2.Tb_Trocas_CabTCCODCLI.AsString
                         +' - '+DM2.Tb_Trocas_Cabnomcli.Value,mneg);
   form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+3;
   form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'_______________________________________________________'+insere(' ',' ',20)+'_______________________________________________________',mneg);
   form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
   form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,Centra(DM2.Tb_Trocas_Cabnomcli.AsString,' ',58)+insere(' ',' ',20)+centra('TROCA EFETIVADA POR',' ',58),mneg);

   form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+2;
   form_Impres_Trocas.Rdprint1.ImpF(form_Impres_Trocas.mlin,01,insere('=','=',80),mnormal);
if form_Impres_Trocas.RDprint1.Setup then form_Impres_Trocas.RDprint1.Fechar;
form_Impres_Trocas.Close;
form_Impres_Trocas.free;
form_Impres_Trocas:=nil;

{
|Codigo        |Lote           | Dt.Vcto. |    Quantidade|Und|Descricao do Produto                    |Preco Unitario|   Valor Total|
|12345678901234|123456789012345|12/09/2005|12345678901234|und|1234567890123456789012345678901234567890|zzz.zzz.zz9,99|zzz.zzz.zz9,99|


MERCADORIAS DEVOLVIDAS
+--------------+---------------+----------+--------------+---+----------------------------------------+--------------+--------------+
|Codigo        |Lote           | Dt.Vcto. |    Quantidade|Und|Descricao do Produto                    |Preco Unitario|   Valor Total|
|12345678901234|123456789012345|12/09/2005|12345678901234|und|1234567890123456789012345678901234567890|zzz.zzz.zz9,99|zzz.zzz.zz9,99|

MERCADORIAS DEVOLVIDAS
+--------------+---------------+--------------+---+---------------------------------------------------+--------------+--------------+
|Codigo        |Grade          |    Quantidade|Und|Descricao do Produto                               |Preco Unitario|   Valor Total|
|12345678901234|123456789012345|12345678901234|und|123456789012345678901234567890123456789012345678901|zzz.zzz.zz9,99|zzz.zzz.zz9,99|

MERCADORIAS DEVOLVIDAS
+---------------+-----------------+---+-------------------------------------------------------+------------------+------------------+
|Codigo         |      Quantidade |Und|Descricao do Produto                                   |  Preco Unitario  |     Valor Total  |
|12345678901234 |  12345678901234 |und|1234567890123456789012345678901234567890123456789012345|  zzz.zzz.zz9,99  |  zzz.zzz.zz9,99  |



MERCADORIAS DEVOLVIDAS
|Codigo        |Lote           | Dt.Vcto. |    Quantidade|Und|Descricaao do Produto                   |Preco Unitario|   Valor Total|
|12345678901234|123456789012345|12/09/2005|12345678901234|und|1234567890123456789012345678901234567890|zzz.zzz.zz9,99|zzz.zzz.zz9,99|

MERCADORIAS DEVOLVIDAS
|Codigo        |Grade          |    Quantidade|Und|Descricaao do Produto                              |Preco Unitario|   Valor Total|
|12345678901234|123456789012345|12345678901234|und|123456789012345678901234567890123456789012345678901|zzz.zzz.zz9,99|zzz.zzz.zz9,99|

MERCADORIAS DEVOLVIDAS
|Codigo         |      Quantidade |Und|Descricaao do Produto                                  |  Preco Unitario  |     Valor Total  |
|12345678901234 |  12345678901234 |und|1234567890123456789012345678901234567890123456789012345|  zzz.zzz.zz9,99  |  zzz.zzz.zz9,99  |


 }
end;

function TFrm_Trocas.fTrocasTestaCab(ptipo: Integer):Boolean;

begin
if form_Impres_Trocas.mlin>58 then
   begin
   form_Impres_Trocas.RDprint1.Novapagina;
   form_Impres_Trocas.mlin:=0;
   end;

if form_Impres_Trocas.mlin=0 then
   begin
   form_Impres_Trocas.mlin:=form_Impres_Trocas.fImprimirCabecalho(80,'Troca de Mercadorias');
   form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
   form_Impres_Trocas.mlin:=3;
   form_Impres_Trocas.Rdprint1.ImpF(form_Impres_Trocas.mlin,01,insere('=','=',80),mnormal);
   form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;

   TEMP.Close;
   TEMP.SQL.Clear;
   TEMP.SQL.ADD('select tcstatus,TCCHAVE_DEV,TCCHAVE_SAI from cadtro_cab where ');
   TEMP.SQL.ADD('     tccodemp = '+''''+inttostr(codemp)+'''');
   TEMP.SQL.ADD(' and tcchave  = '+''''+DM2.Tb_Trocas_CabTCCHAVE.AsString+'''');
   TEMP.Open;


   if temp.Fields[0].AsFloat = 2 then
      form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,Centra('EFETIVADA',' ',132),mneg)
   else
      form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,Centra('PENDENTE',' ',132),mneg);
   form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
   form_Impres_Trocas.RDprint1.impf(form_Impres_Trocas.mlin,01,Centra('Chave: '+DM2.Tb_Trocas_CabTCCHAVE.AsString
                         +' Data: '+FormatDateTime(fdt2, DM2.Tb_Trocas_CabTCDATA.Value),' ',132),mneg);
   form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
   form_Impres_Trocas.RDprint1.impf(form_Impres_Trocas.mlin,01,Centra('Cliente: '+DM2.Tb_Trocas_CabTCCODCLI.AsString
                         +' '+DM2.Tb_Trocas_Cabnomcli.Value,' ',132),mneg);

   form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
   form_Impres_Trocas.Rdprint1.ImpF(form_Impres_Trocas.mlin,01,insere('=','=',80),mnormal);
   end;

if (ptipo=1) or (ptipo=2) then
   begin
   form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
   if ptipo=1 then
      form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'MERCADORIAS DEVOLVIDAS '
      +iif(DM2.Tb_Trocas_CabTCCHAVE_DEV.AsFloat>0,' Chave '+DM2.Tb_Trocas_CabTCCHAVE_DEV.AsString,'')
      ,mneg)
   else
      form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'MERCADORIAS ENTREGUES'
          +iif(DM2.Tb_Trocas_CabTCCHAVE_DEV.AsFloat>0,' Chave '+DM2.Tb_Trocas_CabTCCHAVE_SAI.AsString,'')

      ,mneg);
   if ValInt(copy(mpseg,4,2))=2 then // se p[e grade
      begin
      form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
      form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'+--------+---------+--------------+---+-----------------------------------------+---------------------+--------------+--------------+',mreduz);
      form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
      form_Impres_Trocas.RDprint1.impf(form_Impres_Trocas.mlin,01,'|Codigo  |Grade    |    Quantidade|Und|Descricao do Produto                     | M a r c a           |Preco Unitario|   Valor Total|',mreduz);
      end
   else if ValInt(copy(mpseg,4,2))=1 then // se é lote
      begin
      form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
      form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'+--------+---------+----------+--------------+---+----------------------------------------+--------------+--------------+',mreduz);
      form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
      form_Impres_Trocas.RDprint1.impf(form_Impres_Trocas.mlin,01,'|Codigo  |Lote     | Dt.Vcto. |    Quantidade|Und|Descricao do Produto                    |Preco Unitario|   Valor Total|',mreduz);
      end
   else
      begin
      form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
      form_Impres_Trocas.RDprint1.ImpF(form_Impres_Trocas.mlin,01,'+--------+-------------+---+-------------------------------------------------------+----------------------+------------+-------------+',mreduz);
      form_Impres_Trocas.mlin:=form_Impres_Trocas.mlin+1;
      form_Impres_Trocas.RDprint1.impf(form_Impres_Trocas.mlin,01,'|Codigo  |  Quantidade |Und|Descricao do Produto                                   | M a r c a            | Preco Unit | Valor Total |',mreduz);
      end;
   end;


end;

procedure TFrm_Trocas.bbEfetivarClick(Sender: TObject);
var
mnumnf: Real;
mqtd: Integer;
mitemdup: Integer;


begin

mQtdMan:=DM2.Tb_Trocas_CabTCQTDMAN.AsInteger;
if DM2.Tb_Trocas_CabTCSTATUS.Value>0 then
   begin
   fMensagem('Troca ja Efetivada anteriormente!',0,['0'],0);
   exit;
   end;
if DM2.Tb_Trocas_CabTCQTDMAN.AsInteger>mQtdMan then
   begin
   moper_trocas:=3;
   BBLOCALIZAR.Click;
   end;

if fMensagem('Quer realmente efetivar a troca?',0,['1','2'],2)<>mrYes then
   exit;

mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=37;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha Para Efetirar a Troca de Mercadorias';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;


mQtdMan:=DM2.Tb_Trocas_CabTCQTDMAN.AsInteger;
DM2.Tb_Trocas_Cab.Close;
DM2.Tb_Trocas_Cab.Open;
if DM2.Tb_Trocas_Cab.Eof then
   begin
   fMensagem('Este Registro foi excluido em outra estação!',0,['0'],0);
   BBLIMPAR.Click;
   exit;
   end;
if DM2.Tb_Trocas_CabTCSITUACAO.Value=1 then
   begin
   mcinst:='Este Registro pode Estar Sendo Alterado em Outra Estação,'+#13
          +'Caso não Esteja entre na opção: SISTEMA->DESBLOQUEIA TROCAS '+#13
          +'e desbloqueia o mesmo';
   fMensagem(mcinst,0,['0'],0);
   exit;
   end;
if DM2.Tb_Trocas_CabTCSTATUS.Value>0 then
   begin
   fMensagem('Troca ja Efetivada anteriormente!',0,['0'],0);
   exit;
   end;


if codemp<>mCODEMP then
  begin
  flcadpar01(0,mcodemp,'1');
  if DM4.Tb_Par01PFATMZ.Value<>1 then
     begin
     if not ftrocasTestaEstoque(0) then
        exit;
     end;
  end;

flcadpar01(0,codemp,'1');
if DM4.Tb_Par01PFATMZ.Value<>1 then
   begin
   if not ftrocasTestaEstoque(0) then
      exit;
   end;


DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Update CADTRO_CAB set TCSITUACAO=0,TCSTATUS=2 '
                  +' where TCCODEMP=0'+DM2.Tb_Trocas_CabTCCODEMP.AsString
                  +' and TCLOTSEQ=0'+DM2.Tb_Trocas_CabTCLOTSEQ.AsString
                  +' and TCCHAVE=0'+DM2.Tb_Trocas_CabTCCHAVE.AsString);
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(02,668,'Frm_Trocas','CADTRO_CAB');
   end;

flcadcli(1,0,CODCLI.Text);

fFaturarPedidos;

fMensagem('Troca Efetivada!',0,['0'],0);

moper_trocas:=3;
DM2.Tb_Trocas_Ori.First;
BBLOCALIZARClick(SELF);
moper_trocas:=2;

end;


function TFrm_Trocas.fTrocasGravarnf(pChave: Integer): Real;
var
emitiu: boolean;
mdupacum,mcomp: String;
mcodemp: Integer;
mnumnf: Real;
pSerieNF,pModNF: string;

begin
la_Empresas:='';
la_empresas:=iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' and (P1CODEMP='+IntToStr(codemp)
                +iif(codemp<100,' or P1CODEMP='+IntToStr(codemp+100),' or P1CODEMP='+IntToStr(codemp-100))+')');
mnumnf:=0;
DM4.Qr_Ped01.Close;
DM4.Qr_Ped01.Sql.Clear;
DM4.Qr_Ped01.sQl.add('Select * from CADP01 where P1STATUS<'+mstatus_excluido+' and P1CHAVE=0'+InttoStr(pChave)
                    +la_Empresas);
DM4.Qr_Ped01.SQL.Add(' order by P1CODEMP,P1CHAVE,P1ORDEM');
DM4.Qr_Ped01.Open;
if (DM4.Qr_Ped01P1SITPED.Value = 1) and ( (DM4.Qr_Ped01P1DATHOR_ULTEVE.AsDateTime>pdatanula)
   and (trunc((now-DM4.Qr_Ped01P1DATHOR_ULTEVE.AsDateTime))*24*60<=1)) then
   begin
   mcinst2:=DM4.Qr_Ped01P1CODUSR.AsString+' - ';
   if DM4.Qr_Ped01P1CODUSR.AsInteger=1111 then
      mcinst2:=mcinst2+'Programador(Master)'
   else
      begin
      if flcadusr(0,0,DM4.Qr_Ped01P1CODUSR.AsString) then
         mcinst2:=mcinst2+DM4.Tb_UsrNOMUSR.AsString;
      end;
   mcinst := 'Este Pedido Sendo Alterado no Computador: '+DM4.Qr_Ped01P1COMP_ULTEVE.AsString
           + ' Pelo Usuário: '+mcinst2
           + ' Data/Hora: '+Formatdatetime('dd/mm/yyyy hh:nn:ss', DM4.Qr_Ped01P1DATHOR_ULTEVE.AsDateTime);


   fMensagem(mcinst,0,['0'],0);
   result:=0;
   exit;
   end;

DM4.Qr_Ped01.First;
emitiu:=True;
mcomp:='';
mdupacum:='';
mcodemp:=DM4.Qr_Ped01P1CODEMP.AsInteger;
// Testar Vencimentos


While not DM4.Qr_Ped01.eof do
   begin
   if DM4.Qr_Ped01P1TIPO.Value=0 then
      begin
      DM4.QR_Ped01.Next;
      Continue;
      end;
   if (DM4.Qr_Ped01P1SITPED.Value = 1) and ( (DM4.Qr_Ped01P1DATHOR_ULTEVE.AsDateTime>pdatanula)
      and (trunc((now-DM4.Qr_Ped01P1DATHOR_ULTEVE.AsDateTime))*24*60<=1)) then
      Continue;
   if DM4.Qr_Ped01P1STATUS.Value>1 then
      begin
      DM4.Qr_Ped01.next;
      Continue;
      end;


   fCarregarPO99(DM4.Qr_Ped01P1TABPV.Value,DM4.Qr_Ped01P1CODEMP.Value,
                    DM4.Qr_Ped01P1LOTSEQ.Value,iif(DM4.Qr_Ped01P1TABPV.AsString='PO',DM4.Qr_Ped01P1CHAVE.Value, DM4.Qr_Ped01P1CODPV.Value));

   mOutrosParametros.pid_ped01_new:=DM4.Qr_Ped01P1ID_NEW.AsFloat;
   fgvencto(iif(DM4.Qr_Ped01P1TABPV.Value='PP',1,0),
                 DM4.Qr_Ped01P1CODEMP.AsInteger,
                 DM4.Qr_Ped01P1LOTSEQ.AsInteger,
                 DM4.Qr_Ped01P1CHAVE.AsInteger,
                 DM4.Qr_Ped01P1ORDEM.AsInteger,
                 DM4.Qr_Ped01P1PRAZO.AsInteger,
                 DM4.Qr_Ped01P1CODPV.AsInteger,
                 DM4.Qr_Ped01P1PVDDESCF.AsInteger,
                 DM4.Qr_Ped01P1PVDIASDESCF.AsInteger,
                 DM4.Qr_Ped01P1TOTALL.Value,
                 DM4.Qr_Ped01P1COMIS.Value,
                 DM4.Qr_Ped01P1COMV02.Value,
                 DM4.Qr_Ped01P1COMV03.Value,
                 DM4.Qr_Ped01P1COMV03.Value,
                 DM4.Qr_Ped01P1COMISS.Value,
                 DM4.Qr_Ped01P1COMIST.Value,
                 DM4.Qr_Ped01P1SEMCOM.Value,
                 DM4.Qr_Ped01P1COMASSE.Value,
                 DM4.Qr_Ped01P1ICMSR.Value,
                 DM4.Qr_Ped01P1VALFRE.Value,
                 DM4.Qr_Ped01P1VALSEG.Value,
                 DM4.Qr_Ped01P1DESCFIN.Value,
                 DM4.Qr_Ped01P1TOTDI01.Value,
                 DM4.Qr_Ped01P1TOTDI02.Value,
                 DM4.Qr_Ped01P1TOTDI03.Value,
                 DM4.Qr_Ped01P1TOTDIVL.Value,
                 DM4.Qr_Ped01P1VALDES01.Value,
                 DM4.Qr_Ped01P1VALDES02.Value,
                 DM4.Qr_Ped01P1VLRDES.Value,
                 DM4.Qr_Ped01P1TARBAN.Value,
                 DM4.Qr_Ped01P1IPIINA.Value+DM4.Qr_Ped01P1IPIPOS.Value+DM4.Qr_Ped01P1IPINEG.Value,
                 DM4.Qr_Ped01P1TOTCGRU.Value,
                 DM4.Qr_Ped01P1TOTSGRU.Value,
                 DM4.Qr_Ped01P1TOTSERLIQ.Value,
                 DM4.Qr_Ped01P1VALENT.Value,
                 DM4.Qr_Ped01P1PRAZO_ENT.Value,
                 DM4.Qr_ped01p1COMIS_EXTRA.Value,
                 DM4.Qr_Ped01submod.AsFloat,
                 date,
                 DM4.Qr_Ped01P1TABPV.Value
                 ,mOutrosParametros);
   DM4.Qr_Ped01.Next;
   end;

DM4.Qr_Ped01.First;
// fim dos Testes de Vencimentos


While not DM4.Qr_Ped01.eof do
   begin
   if DM4.Qr_Ped01P1TIPO.Value=0 then
      begin
      DM4.QR_Ped01.Next;
      Continue;
      end;


   pSerieNF:='';
   pModNF  :='';
   mnumnf:=fBuscarNUMNF(DM4.Qr_Ped01P1CODEMP.AsInteger,'SERIE'+IntToStr(dm4.Qr_Ped01P1CODSER.AsInteger+1),pSerieNF,pModNF,0);

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('update CADP01 set '
                     +' P1NUMNF=0'+FloatToStr(mnumnf)+','
                     +' P1DATANF='+chr(39)+FormatDateTime(fdt,date)+chr(39)+','
                     +' P1DATDOC='+chr(39)+FormatDateTime(fdt,date)+chr(39)+','
                     +' P1SERIE='+chr(39)+pSerieNF+chr(39)+','
                     +' P1MODELO='+chr(39)+pModNF+chr(39)+','
                     +' P1STATUS=2,P1EMIDOC=1 '
                     +' where P1CODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                     +' and P1LOTSEQ=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                     +' and P1CHAVE=0'+DM4.Qr_Ped01P1CHAVE.AsString
                     +' and P1ORDEM=0'+DM4.Qr_Ped01P1ORDEM.AsString);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,4274,'Frm_Ped','CADP01');
      end;
   DM1.Query1.Close;
   DM1.Tb_Ped01.Close;
   DM1.Tb_Ped01.Sql.Clear;
   DM1.Tb_Ped01.SQl.add('Select * from CADP01 where P1CODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                       +' and P1STATUS<'+mstatus_excluido+' '
                       +' and P1LOTSEQ=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                       +' and P1CHAVE=0'+DM4.Qr_Ped01P1CHAVE.AsString
                       +' and P1ORDEM=0'+DM4.Qr_Ped01P1ORDEM.AsString
                       +' order by P1CODEMP,P1CHAVE,P1ORDEM');
   DM1.Tb_Ped01.Open;
   if (DM1.Tb_Ped01P1TIPO.Value=1) and (DM1.Tb_PargerPDUPTIP1.Value=1) then
      emitiu:=False
   else if (DM1.Tb_Ped01P1TIPO.Value=2) and (DM1.Tb_PargerPDUPTIP2.Value=1) then
      emitiu:=False
   else if (DM1.Tb_Ped01P1TIPO.Value=3) and (DM1.Tb_PargerPDUPTIP3.Value=1) then
      emitiu:=False
   else if (DM1.Tb_Ped01P1TIPO.Value=4) and (DM1.Tb_PargerPDUPTIP4.Value=1) then
      emitiu:=False
   else if (DM1.Tb_Ped01P1TIPO.Value=5) and (DM1.Tb_PargerPDUPTIP5.Value=1) then
      emitiu:=False
   else if (DM1.Tb_Ped01P1TIPO.Value=6) and (DM1.Tb_PargerPDUPTIP6.Value=1) then
      emitiu:=False
   else if (DM1.Tb_Ped01P1TIPO.Value=7) and (DM1.Tb_PargerPDUPTIP7.Value=1) then
      emitiu:=False
   else if (DM1.Tb_Ped01P1TIPO.Value=8) and (DM1.Tb_PargerPDUPTIP8.Value=1) then
      emitiu:=False
   else if (DM1.Tb_Ped01P1TIPO.Value=9) and (DM1.Tb_PargerPDUPTIP9.Value=1) then
      emitiu:=False
   else if (DM1.Tb_Ped01P1TIPO.Value=10) and (DM1.Tb_PargerPDUPTIP10.Value=1) then
      emitiu:=False
   else if (DM1.Tb_Ped01P1TIPO.Value=11) and (DM1.Tb_PargerPDUPTIP11.Value=1) then
      emitiu:=False
   else if (DM1.Tb_Ped01P1TIPO.Value=12) and (DM1.Tb_PargerPDUPTIP12.Value=1) then
      emitiu:=False
   else if (DM1.Tb_Ped01P1TIPO.Value=13) and (DM1.Tb_PargerPDUPTIP13.Value=1) then
      emitiu:=False
   else if (DM1.Tb_Ped01P1TIPO.Value=14) and (DM1.Tb_PargerPDUPTIP14.Value=1) then
      emitiu:=False
   else if (DM1.Tb_Ped01P1TIPO.Value=15) and (DM1.Tb_PargerPDUPTIP15.Value=1) then
      emitiu:=False
   else if (DM1.Tb_Ped01P1TIPO.Value=16) and (DM1.Tb_PargerPDUPTIP16.Value=1) then
      emitiu:=False

   else if (DM1.Tb_Ped01P1TIPO.Value=17) and (DM1.Tb_PargerPDUPTIP17.Value=1) then
      emitiu:=False
   else if (DM1.Tb_Ped01P1TIPO.Value=18) and (DM1.Tb_PargerPDUPTIP18.Value=1) then
      emitiu:=False
   else if (DM1.Tb_Ped01P1TIPO.Value=19) and (DM1.Tb_PargerPDUPTIP19.Value=1) then
      emitiu:=False
   else if (DM1.Tb_Ped01P1TIPO.Value=20) and (DM1.Tb_PargerPDUPTIP20.Value=1) then
      emitiu:=False
   else if (DM1.Tb_Ped01P1TIPO.Value=21) and (DM1.Tb_PargerPDUPTIP21.Value=1) then
      emitiu:=False
   else if (DM1.Tb_Ped01P1TIPO.Value=22) and (DM1.Tb_PargerPDUPTIP22.Value=1) then
      emitiu:=False
   else if (DM1.Tb_Ped01P1TIPO.Value=23) and (DM1.Tb_PargerPDUPTIP23.Value=1) then
      emitiu:=False
   else if (DM1.Tb_Ped01P1TIPO.Value=24) and (DM1.Tb_PargerPDUPTIP24.Value=1) then
      emitiu:=False
   else if (DM1.Tb_Ped01P1TIPO.Value=25) and (DM1.Tb_PargerPDUPTIP25.Value=1) then
      emitiu:=False
   else if (DM1.Tb_Ped01P1TIPO.Value=26) and (DM1.Tb_PargerPDUPTIP26.Value=1) then
      emitiu:=False
   else if (DM1.Tb_Ped01P1TIPO.Value=27) and (DM1.Tb_PargerPDUPTIP27.Value=1) then
      emitiu:=False
   else if (DM1.Tb_Ped01P1TIPO.Value=28) and (DM1.Tb_PargerPDUPTIP28.Value=1) then
      emitiu:=False;

   if emitiu then
      begin
      if (DM1.Tb_Pargerpagrudup.Value=1) and (mcodemp=DM1.Tb_Ped01P1CODEMP.AsInteger) then
         begin
         mdupacum:=mdupacum+mcomp+FormatFloat('000000',DM1.Tb_Ped01P1NUMNF.Value);
         mcomp:='/'
         end
      else
         begin
         mdupacum:=FormatFloat('000000',DM1.Tb_Ped01P1NUMNF.Value);
         mcomp:='';
//         Fgravardup(0,0,0,mdupacum,1,DM2.Tb_Trocas_CabTCFPGTO.AsInteger,DM1.Tb_Ped01P1TIPO.Asinteger);
         mcodemp:=DM1.Tb_Ped01P1CODEMP.AsInteger;
         end;
      end;
   Fgravarnf(0);
//   FPedEmiteNf(0,Qr_Ped01P1CODSER.AsInteger,0,Qr_Ped01P1LOTSEQ.AsInteger,Qr_Ped01P1CHAVE.AsInteger,Qr_Ped01P1ORDEM.AsInteger,Qr_Ped01P1CODEMP.AsInteger,0,Qr_Ped01P1FORMACE.AsInteger,false,true,0,0); // Reemisao de Nota fiscal
   DM4.Qr_ped01.Next;
   if (emitiu) and (DM1.Tb_Pargerpagrudup.Value=1) and (mcodemp<>DM4.Qr_Ped01P1CODEMP.AsInteger) then
      begin
      DM4.Qr_Ped01.Prior;
      DM1.Tb_Ped01.Close;
      DM1.Tb_Ped01.Sql.Clear;
      DM1.Tb_Ped01.SQl.add('Select * from CADP01 where P1CODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                       +' and P1STATUS<'+mstatus_excluido+' '
                       +' and P1LOTSEQ=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                       +' and P1CHAVE=0'+DM4.Qr_Ped01P1CHAVE.AsString
                       +' and P1ORDEM=01'
                       +' order by P1CODEMP,P1CHAVE,P1ORDEM');
      DM1.Tb_Ped01.Open;
      if trim(mdupacum)='' then
         mdupacum:=mdupacum+mcomp+FormatFloat('000000',DM1.Tb_Ped01P1NUMNF.Value);
      mcomp:='/';
//      Fgravardup(0,0,0,mdupacum,1,DM2.Tb_Trocas_CabTCFPGTO.AsInteger,DM1.Tb_Ped01P1TIPO.Asinteger);
      mcodemp:=DM1.Tb_Ped01P1CODEMP.AsInteger;
      mcomp:='';
      mdupacum:='';
      DM4.Qr_Ped01.Next;
      end;
   end;

if (emitiu) and (DM1.Tb_Pargerpagrudup.Value=1)  then
   begin
   DM1.Tb_Ped01.Close;
   DM1.Tb_Ped01.Sql.Clear;
   DM1.Tb_Ped01.SQl.add('Select * from CADP01 where P1CODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                       +' and P1STATUS<'+mstatus_excluido+' '
                       +' and P1LOTSEQ=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                       +' and P1CHAVE=0'+DM4.Qr_Ped01P1CHAVE.AsString
                       +' and P1ORDEM=01'
                       +' order by P1CODEMP,P1CHAVE,P1ORDEM');
   DM1.Tb_Ped01.Open;
   if trim(mdupacum)='' then
      begin
      mdupacum:=mdupacum+mcomp+FormatFloat('000000',DM1.Tb_Ped01P1NUMNF.Value);
      mcomp:='/'
      end;
//   Fgravardup(0,0,0,mdupacum,1,DM2.Tb_Trocas_CabTCFPGTO.AsInteger,DM1.Tb_Ped01P1TIPO.Asinteger);
   end;
DM1.Tb_Ped01.Close;
result:=mnumnf;
end;
function fEmitirNotas(pCodemp, pChave: Integer): Boolean;
var
  mnumnf: Integer;
  pSerieNF: String;
  pModNF: String;
begin
if pcodemp < 100 then
  pCodemp := pCodemp + 100;
DM1.Tb_Ped01.Close;
DM1.Tb_Ped01.Sql.Clear;
DM1.Tb_Ped01.SQl.add('Select * from CADP01 where 1=1 '
                    +' and P1STATUS<'+mstatus_excluido+' '
                    +' and P1LOTSEQ=0'+IntToStr(ls_numped)
                    +' and P1CHAVE=0'+IntToStr(pChave));
DM1.Tb_Ped01.SQl.add(' and P1CODEMP=0'+IntToStr(pCodemp));
DM1.Tb_Ped01.Open;
While not DM1.Tb_Ped01.Eof do
  begin
  if ValInt(DM1.Tb_Ped01P1NUMNF.AsString)=0 then
    begin
    pSerieNF:='';
    pModNF  :='';
    mnumnf:=fBuscarNUMNF(DM1.Tb_Ped01P1CODEMP.AsInteger,'SERIE'+IntToStr(DM1.Tb_Ped01P1CODSER.AsInteger+1),pSerieNF,pModNF,0);
    DM1.Query1.Close;
    DM1.Query1.SQL.Clear;
    DM1.Query1.SQL.Add('update CADP01 set '
                   +' P1NUMNF=0'+FloatToStr(mnumnf)+','
                   +' P1DATANF='+chr(39)+FormatDateTime(fdt,date)+chr(39)+','
                   +' P1DATDOC=:DATDOC,'
                   +' P1SERIE='+chr(39)+pSerieNF+chr(39)+','
                   +' P1MODELO='+chr(39)+pModNF+chr(39)+','
                   +' P1STATUS=2,P1EMIDOC=1 '
                   +' where P1CODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString
                   +' and P1LOTSEQ=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
                   +' and P1CHAVE=0'+DM1.Tb_Ped01P1CHAVE.AsString
                   +' and P1ORDEM=0'+DM1.Tb_Ped01P1ORDEM.AsString);
    DM1.Query1.ParambyName('DATDOC').AsDate := NOW;
    Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
    except
      ex_erroSql(01,8424,'Frm_Trocas','CADP01');
      end;
    end;

  FPedEmiteNf(2,DM1.Tb_Ped01P1CODSER.AsInteger,0,
               DM1.Tb_Ped01P1LOTSEQ.AsInteger,
               DM1.Tb_Ped01P1CHAVE.AsInteger,
               DM1.Tb_Ped01P1ORDEM.AsInteger,
               DM1.Tb_Ped01P1CODEMP.AsInteger,0,
               DM1.Tb_Ped01P1FORMACE.AsInteger,false,false,true,1,0,0);
  DM1.Tb_Ped01.Next;
  end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADP01 set P1CX_CODCAI=0'+IntToStr(codcai)
                   +' where P1CODEMP=0'+IntToStr(codemp)
                    +' and P1STATUS<'+mstatus_excluido+' '
                    +' and P1LOTSEQ=0'+IntToStr(ls_numped)
                    +' and P1CHAVE=0'+IntToStr(pChave));
try
   DM1.query1.ExecSQL;
   fdm1StartCommit;
except
   end;

result:=true;
end;
procedure TFrm_Trocas.bbEmitirNFClick(Sender: TObject);
var
tro_codemp: integer;
begin
if DM1.Tb_PargerPTROEMP100.AsInteger=0 then
  begin
  fMensagem('Favor Efetivar a Troca Acese: Faturamento Manutenção e finalize o pedido!',0,['0'],0);
  Exit;
  end;

if DM2.Tb_Trocas_CabTCSITUACAO.Value=1 then
   begin
   mcinst:='Este Registro pode Estar Sendo Alterado em Outra Estação,'+#13
          +'Caso não Esteja entre na opção: SISTEMA->DESBLOQUEIA TROCAS '+#13
          +'e desbloqueia o mesmo';
   fMensagem(mcinst,0,['0'],0);
   exit;
   end;
if DM2.Tb_Trocas_CabTCSTATUS.Value=0 then
   begin
   fMensagem('Favor Efetivar a Troca primeiro!',0,['0'],0);
   exit;
   end;


if fMensagem('Quer realmente emitir as notas?',0,['1','2'],2)<>mrYes then
   exit;

tro_codemp:=iif(codemp>100,codemp,codemp+100);
if DM2.Tb_Trocas_CabTCCHAVE_DEV.Value>0 then
   fEmitirNotas(tro_codemp,DM2.Tb_Trocas_CabTCCHAVE_DEV.AsInteger);
if DM2.Tb_Trocas_CabTCCHAVE_SAI.Value>0 then
   fEmitirNotas(tro_codemp,DM2.Tb_Trocas_CabTCCHAVE_SAI.AsInteger);

if DM1.Tb_PargerPTRODCX.Value=1 then
   begin
   fTrocasAtualizaCaixa(mchpeddev,mchpedsai);
   end;

if cb_baixar_titulo.Checked then
   begin



   if DM2.Tb_Trocas_CabTCCHAVE_DEV.Value>0 then
      BaixarTitulo.fBaixarTitulo(dm2.Tb_Trocas_CabTCCHAVE_DEV.AsFloat,DM2.Tb_Trocas_CabTCLOTSEQ.AsFloat,tro_codemp);
   if DM2.Tb_Trocas_CabTCCHAVE_SAI.Value>0 then
      BaixarTitulo.fBaixarTitulo(dm2.Tb_Trocas_CabTCCHAVE_SAI.AsFloat,DM2.Tb_Trocas_CabTCLOTSEQ.AsFloat,tro_codemp);


   end;

end;


function TFrm_Trocas.ftrocasTestaEstoque(ptipo: Integer): Boolean;
begin
result:=true;
DM2.Tb_Trocas_Sai.First;
While not DM2.Tb_Trocas_Sai.Eof do
   begin
   flcadpro(1,0,0,DM2.Tb_Trocas_SaiTSCODPRO.AsString);
   if valint(copy(mpseg,4,2))=02 then  // grade cores tamanho
      begin
      flcadlgc(0,1,0,DM2.Tb_Trocas_SaiTSCODPRO.AsString,DM2.Tb_Trocas_SaiTSLOTE.Value,'');
      if DM1.Tb_LGCCLQTD.Value<DM2.Tb_Trocas_SaiTSQTD.Value then
         begin
         flcadpro(1,0,0,DM2.Tb_Trocas_SaiTSCODPRO.AsString);
         fMensagem('O Produto: '+DM2.Tb_Trocas_SaiTSCODPRO.AsString+'/'+DM2.Tb_Trocas_SaiTSLOTE.Value
                                 +'-'+DM1.Tb_ProPDNOME.Value+#13
                                 +'não possui saldo suficiente. Estoque: '+formatFloat(mcasqtd, DM1.Tb_LGCCLQTD.Value),0,['0'],0);
         result:=false;
         exit;
         end;
      end
   else
      begin
      flcadest(0,0,0,DM2.Tb_Trocas_SaiTSCODPRO.AsString);
      if DM1.Tb_EstCESALDO.Value<DM2.Tb_Trocas_SaiTSQTD.Asfloat then
         begin
         flcadpro(1,0,0,DM2.Tb_Trocas_SaiTSCODPRO.AsString);
         fMensagem('O Produto: '+DM2.Tb_Trocas_SaiTSCODPRO.AsString+'/'+DM2.Tb_Trocas_SaiTSLOTE.Value
                                 +'-'+DM1.Tb_ProPDNOME.Value+#13
                                 +'não possui saldo suficiente. Estoque: '+formatFloat(mcasqtd, DM1.Tb_EstCESALDO.Value),0,['0'],0);
         result:=false;
         exit;
         end;
      end;
   DM2.Tb_Trocas_Sai.next;
   end;

end;
function fTrocasAtualizaCaixa(pChaveDev,pChaveVda: Integer): Boolean;
var
mtotdev, mtotVda: Real;
begin
mtotdev:=0;
mtotvda:=0;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select CRVALPAG,CRCODLDR from CADDAR where '
                  +iif(DM1.Qr_tid.locate('TINOME','CADLDR',[]),'',' CRCODEMP=0'+intTostr(codemp)+' and ')
                  +' CRLOTSEQ_CP=0'+IntToStr(ls_numped)
                  +' and CRNPED=0'+IntToStr(pChaveDev));
DM1.Query2.Open;
While not DM1.Query2.Eof do
   begin
   mtotdev:=mtotdev+DM1.Query2.FieldbyName('CRVALPAG').Asfloat;
   DM1.query2.Next;
   end;

DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.SQL.add('Select CRVALPAG,CRCODLDR from CADDAR where '
                  +iif(DM1.Qr_tid.locate('TINOME','CADLDR',[]),'',' CRCODEMP=0'+intTostr(codemp)+' and ')
                  +' CRLOTSEQ_CP=0'+IntToStr(ls_numped)
                  +' and CRNPED=0'+IntToStr(pChaveVda));
DM1.Query3.Open;
While not DM1.Query3.Eof do
   begin
   mtotVda:=mtotVda+DM1.Query3.FieldbyName('CRVALPAG').Asfloat;
   DM1.Query3.Next;
   end;
if mTotVda=mtotdev then
   begin
   DM1.Query2.First;
   While not DM1.Query2.Eof do
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.sql.add('Delete from CADLDR where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+IntTosTr(codemp)+' and ')
                        +' LOTSEQ=0'+IntTostr(ls_codldr)
                        +' and CODLDR=0'+DM1.Query2.fieldbyName('CRCODLDR').AsString);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         fMensagem('Erro 4814 ao excluir CADLDR',0,['0'],0);
         end;
      DM1.Query2.Next;
      end;
   DM1.Query3.First;
   While not DM1.Query3.Eof do
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.sql.add('Delete from CADLDR where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+IntTosTr(codemp)+' and ')
                        +' LOTSEQ=0'+IntTostr(ls_codldr)
                        +' and CODLDR=0'+DM1.Query3.fieldbyName('CRCODLDR').AsString);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         fMensagem('Erro 4833 ao excluir CADLDR',0,['0'],0);
         end;
      DM1.Query3.Next;
      end;
   end
else if mTotVda>mtotdev then
   begin
   DM1.Query2.First;
   While not DM1.Query2.Eof do
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.sql.add('Delete from CADLDR where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+IntTosTr(codemp)+' and ')
                        +' LOTSEQ=0'+IntTostr(ls_codldr)
                        +' and CODLDR=0'+DM1.Query2.fieldbyName('CRCODLDR').AsString);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         fMensagem('Erro 4814 ao excluir CADLDR',0,['0'],0);
         end;
      DM1.Query2.Next;
      end;
   DM1.Query3.First;
   While not DM1.Query3.Eof do
      begin
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.query1.Sql.Add('Update CADLDR set VALORR=0'+mudavp(FloatToStr(mtotvda-mtotdev))
                        +', VALORP=0'+mudavp(FloatToStr(mtotvda-mtotdev))
                        +', DESCMV='+chr(39)+'DIFERENCA POR TROCA DE MERCADORIA'+chr(39)
                        +' where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+IntTosTr(codemp)+' and ')
                        +' LOTSEQ=0'+IntTostr(ls_codldr)
                        +' and CODLDR=0'+DM1.Query3.fieldbyName('CRCODLDR').AsString);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         fMensagem('Erro 4860 ao excluir CADLDR',0,['0'],0);
         end;
      DM1.Query3.Next;
      While not DM1.Query3.Eof do
         begin
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.sql.add('Delete from CADLDR where '
                           +iif(DM1.Qr_Tid.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+IntTosTr(codemp)+' and ')
                           +' LOTSEQ=0'+IntTostr(ls_codldr)
                           +' and CODLDR=0'+DM1.Query3.fieldbyName('CRCODLDR').AsString);
         try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            fMensagem('Erro 4833 ao excluir CADLDR',0,['0'],0);
            end;
         DM1.Query3.Next;
         end;
      end;
   end
else if mTotDev>mtotVda then
   begin
   DM1.Query3.First;
   While not DM1.Query3.Eof do
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.sql.add('Delete from CADLDR where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+IntTosTr(codemp)+' and ')
                        +' LOTSEQ=0'+IntTostr(ls_codldr)
                        +' and CODLDR=0'+DM1.Query3.fieldbyName('CRCODLDR').AsString);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         fMensagem('Erro 4814 ao excluir CADLDR',0,['0'],0);
         end;
      DM1.Query3.Next;
      end;

   DM1.Query2.First;
   While not DM1.Query2.Eof do
      begin
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.query1.Sql.Add('Update CADLDR set VALORR=0'+mudavp(FloatToStr(mtotdev-mtotvda))
                        +', VALORP=0'+mudavp(FloatToStr(mtotdev-mtotvda))
                        +', DESCMV='+chr(39)+'DIFERENCA POR TROCA DE MERCADORIA'+chr(39)
                        +' where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+IntTosTr(codemp)+' and ')
                        +' LOTSEQ=0'+IntTostr(ls_codldr)
                        +' and CODLDR=0'+DM1.Query2.fieldbyName('CRCODLDR').AsString);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         fMensagem('Erro 4926 ao excluir CADLDR',0,['0'],0);
         end;
      DM1.Query2.Next;
      While not DM1.Query2.Eof do
         begin
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.sql.add('Delete from CADLDR where '
                           +iif(DM1.Qr_Tid.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+IntTosTr(codemp)+' and ')
                           +' LOTSEQ=0'+IntTostr(ls_codldr)
                           +' and CODLDR=0'+DM1.Query2.fieldbyName('CRCODLDR').AsString);
         try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            fMensagem('Erro 4940 ao excluir CADLDR',0,['0'],0);
            end;
         DM1.Query2.Next;
         end;
      end;
   end;
result:=true;
end;
procedure TFrm_Trocas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
codemp:=tro_empant;
codcai:=tro_codcai_ant;


end;

procedure TFrm_Trocas.SB_PADRAOClick(Sender: TObject);
begin
fDeletaPadroes(codusr,'_TROCAS','');
fGravaPadroes(codusr,'CB_CHECARORI'     ,'checked'   ,'_TROCAS',iif(CB_CHEGARORI.Checked,'true','false'));


end;

procedure TFrm_Trocas.FormClose(Sender: TObject; var Action: TCloseAction);
begin

if form_pedcli_trocas<>nil then
  begin
  form_pedcli_trocas:=nil;
  end;

if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Trocas.MCODCAIExit(Sender: TObject);
begin
MCODCAI.Text:=fdeixanum2(MCODCAI.Text);
if valint(MCODCAI.Text)<>0 then
   begin
   if not flcadbco(1,0,0,MCODCAI.Text) then
      begin
      fmensagem('Banco Não Cadastrado!',0,['0'],0);
      MCODCAI.Text:='';
      MCODCAI.SetFocus;
      exit;
      end;
   end;
fDeletaPadroes(0,'_TROCAS','MCODCAI');
fGravaPadroes(0,'MCODCAI'   ,'text'   ,'_TROCAS',MCODCAI.Text);
codcai:=ValInt(MCODCAI.Text);

end;

procedure TFrm_Trocas.CB_USUARIO_MANClick(Sender: TObject);
begin
if codusr=1111 then
   begin
   fDeletaPadroes(0,'_TROCAS','CB_USUARIO_MAN');
   fGravaPadroes(0,'CB_USUARIO_MAN'   ,'checked'   ,'_TROCAS',iif(CB_USUARIO_MAN.Checked,'true','false'));
   end;
end;

function tFrm_Trocas.fFaturarPedidos: Boolean;
var
  mVenda_GP: TFrm_Vendas_GravarPedido;
  x_item: Integer;
  mItemPed: Integer;
  mIdPed02New: integer;
  query_temp: tQuery;
  query_exe: tQuery;
  xQtdPed : Integer;

  pSerieNF: String;
  pModNF  : String;
  pNumNF  : Integer;
  pBaixar: pBaixarLotes;
  mDadosParametros: tDadosParametros;
  mFormaPag: String;

begin
Application.CreateForm(TFrm_Vendas_GravarPedido,mVenda_GP);

if cds_aliquotas.Active then
   cds_aliquotas.EmptyDataSet
else
   cds_aliquotas.open;

if tb_ped02_pre.Active then
   tb_ped02_pre.EmptyDataSet
else
   tb_ped02_pre.open;
tb_ped02_pre.emptydataset;


mVenda_GP.mPed1_Tipo_Ped:=17;
mVenda_GP.mPd_EstNor        := 'N';
mVenda_GP.mPd_EstCons       := 'N';
mVenda_GP.mPd_EstTerc       := 'N';
mVenda_GP.mPd_EstVenda      := 'N';

mVenda_GP.mPed1_cfop1:=1102;
mVenda_GP.mPed1_cfop2:=1102;

fParametrosAliquotas(fsonumero(CODCLI.Text)
,mVenda_GP.mPed1_Tipo_Ped // tipo do pedido // devolucao de cliente
,mPed_UF_Cli
,mPed_Cli_RazSoc
,mVenda_GP.mPd_EstNor
,mVenda_GP.mPd_EstCons
,mVenda_GP.mPd_EstTerc
,mVenda_GP.mPd_EstVenda
,mPed_Cli_MotDes
,mPed_Cli_ConsFin
,mPed_Cli_Revenda_CP
,mPed_CliCalcIPI
,mPed_Cli_ST
,mPed_Cli_REDICMSNOR
,mPed_Cli_icmsnr
,cds_aliquotas);



mvenda_gp.mped1_Chave:=0;
mVenda_GP.mPed1_CodCli:=fsonumero(CODCLI.text);

mVenda_GP.mPed1_Datap :=StrToDate(FormatDateTime('dd/mm/yyyy',Now));
query_temp:=tQuery.Create(nil);
query_temp.databasename:='SG_ASSOC';
if (fsonumero(edt_codfp_dev.Text)<>0) then
    mFormaPag := edt_nomfp_dev.Text
else
    mFormaPag:=copy(CB_FORMAPAG.Text,1,length(CB_FORMAPAG.Text)-3);


query_temp.Close;
query_temp.sql.Clear;
query_temp.sql.Add('Select FPCODIGO,FPDESC from CADFP '
                  +' where FPDESC=:NOMFP');
Query_temp.ParamByName('NOMFP').AsString:=mFormaPag;
Query_Temp.Open;
if query_temp.IsEmpty then
   begin
   Query_temp.close;
   Query_temp.sql.clear;
   Query_temp.SQL.add('select * from ( '
                     +' select * from cadfp order by fpcodigo) where rownum<2 ');
   Query_Temp.Open;
   end;

if query_temp.IsEmpty then
   begin
   mVenda_GP.mPed1_CodFP:=0;
   mVenda_GP.mPed1_NomFP:=mFormaPag;
   end
else
   begin
   mVenda_GP.mPed1_CodFP:=Query_temp.fieldbyName('FPCODIGO').AsInteger;
   mVenda_GP.mPed1_NomFP:=Query_temp.fieldbyName('FPDESC').AsString;
   end;
mVenda_GP.mPed1_BaixaFP:='N';
mVenda_GP.mPed1_CodPV:=1;
mVenda_GP.mPed1_PvaCtd:=0;
mVenda_GP.mPed1_TabPV:='AV';
mVenda_GP.mPed1_TpComis:=0;
mVenda_GP.mped1_submod_grav:=0;
mVenda_GP.mPed1_Frete_CIFFOB :=DM1.Tb_CliCFRETEPC.AsInteger - 1;
if DM1.Tb_CliCCODTRA.AsInteger>0 then
   if flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',DM1.Tb_CliCCODTRA.AsString) then
      mVenda_GP.mPed1_CodTra:=DM1.Tb_CliCCODTRA.AsInteger;
if DM1.Tb_CliCCODVEN.AsInteger>0 then
  if flqr1('VNOME','V','CADVEN','N','VCODVEN',DM1.Tb_CliCCODVEN.AsString) then
   mVenda_GP.mPed1_Codven := DM1.Tb_CliCCODVEN.AsInteger;
mVenda_GP.mPed1_Codven:=StrToInt(CODVEN.Text);
mVenda_GP.mPed1_AjustaFP:='S';

if not flcadpv(1,0,DM1.Tb_CliCTABPV.AsString,DM1.Tb_CliCCODPV.AsString) then
  flcadpv(1,0,'AV','01');
mVenda_GP.mPed1_CodPV:=DM1.Tb_PVPVCODPV.AsInteger;
mVenda_GP.mPed1_PvaCtd:=DM1.Tb_PVPVACTD.AsFloat;
mVenda_GP.mPed1_TabPV:=DM1.Tb_PVPVCODTIP.asString;
mVenda_GP.mPed1_TpComis:=DM1.Tb_PVPVTPC.AsInteger;
if DM1.Tb_PVPVTPP.AsInteger=4 then // preco extra
   begin
   mVenda_GP.mPed1_Tabela:='1';
   end
else if DM1.Tb_PVPVTPP.AsInteger=0 then  // do cadastro do estado
   begin
   flcaduf(0,0,1,mPed_UF_Cli);
   if DM1.Tb_UFPTIPOPCO.AsInteger=3 then
      mVenda_GP.mPed1_Tabela:='3'
   else if DM1.Tb_UFPTIPOPCO.AsInteger=2 then
      mVenda_GP.mPed1_Tabela:='2'
   else
      mVenda_GP.mPed1_Tabela:='1';
   end
else if DM1.Tb_PVPVTPP.AsInteger=3 then // tipo de preco 3
   begin
   mVenda_GP.mPed1_Tabela:='3';
   end
else if DM1.Tb_PVPVTPP.AsInteger=2 then // tipo de preco 2
   begin
   mVenda_GP.mPed1_Tabela:='2';
   end
else // tipo de preco 1
   begin
   mVenda_GP.mPed1_Tabela:='1';
   end;
flcadpv2('1',DM1.Tb_CliCTABPV.AsString,DM1.Tb_CliCCODPV.AsString);
DM1.Tb_PV2.First;
mVenda_GP.mPed1_Parcelas:=insere(DM1.Tb_PV2PV2PRAZO.AsString,'0',4);
mVenda_GP.mPed1_PrzNovos_001:='P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';
mVenda_GP.mPed1_PrzNovos_101:='P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';
DM1.Tb_PV2.Next;
while not DM1.Tb_PV2.Eof do
   begin
   mVenda_GP.mPed1_Parcelas:=mVenda_GP.mPed1_Parcelas+insere( DM1.Tb_PV2PV2PRAZO.AsString,'0',4);
   mVenda_GP.mPed1_PrzNovos_001:=mVenda_GP.mPed1_PrzNovos_001+'P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';
   mVenda_GP.mPed1_PrzNovos_101:=mVenda_GP.mPed1_PrzNovos_101+'P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';
   DM1.Tb_PV2.Next;
   end;
mVenda_GP.mPed1_QtdParc_ant:=-1;
mVenda_GP.mped1_QtdParc:=DM1.Tb_PV2.RecordCount;
mVenda_GP.mPed1_AjustaFP :='S';
mVenda_GP.mPed1_pvdescf     :=DM1.Tb_PVPVDESCF.AsFloat;
mVenda_GP.mPed1_pvddescf    :=DM1.Tb_PVPVDESCF.AsInteger;
mVenda_GP.mPed1_pvdiasdescf :=DM1.Tb_PVPVDIASDESCF.AsInteger;
mVenda_GP.mped1_tppco:=2;

if DM1.Tb_PargerPTROEMP100.AsInteger=1 then
  begin
  mVenda_GP.mPed1_Codemp:=iif(codemp>100,codemp,codemp+100);
  mVenda_GP.mped1_submod:=100;
  mVenda_GP.mped1_submod_grav:=100;
  end
else
  begin
  mVenda_GP.mPed1_Codemp:=codemp;
  mVenda_GP.mped1_submod:=iif(codemp>100,100,0);
  mVenda_GP.mped1_submod_grav:=iif(codemp>100,100,0);
  end;
mVenda_GP.fGravarPed01(0,mVenda_GP.mped1_submod_grav);

query_exe:=tQuery.Create(nil);
query_exe.databasename:='SG_ASSOC';

mItemPed:=0;
for x_item:=0 to STG_DEV.RowCount-1 do
   begin
   if fsonumero(STG_DEV.Cells[00,x_item])=0 then
      continue;
   mitemped:=mitemped+1;

   tb_ped02_pre.Append;
   mIdPed02New := fBuscarProximoId('CADP02_SEQ');
   tb_ped02_preP2CODEMP.AsInteger :=mVenda_GP.mPed1_Codemp;
   if mVenda_GP.mPed1_Codemp>100 then
      tb_ped02_preP2ID_NEW_101.AsInteger := mIdPed02New
   else
      tb_ped02_preP2ID_NEW.AsInteger := mIdPed02New;
   tb_ped02_preP2LOTSEQ.AsInteger :=mVenda_GP.mPed1_Chave_ano;
   tb_ped02_preP2CHAVE.AsInteger  :=mVenda_GP.mPed1_Chave;
   tb_ped02_preP2ORDEM.AsInteger  :=01;
   tb_ped02_preP2ITEM.AsInteger   :=mItemPed;
   tb_ped02_preP2CODPRO.AsFloat   :=fsonumero(STG_DEV.Cells[00,x_item]);
   tb_ped02_preP2QTD.AsFloat      :=valfloat(STG_DEV.Cells[03,x_item]);
   tb_ped02_preP2PRECO.AsFloat    :=valfloat(STG_DEV.Cells[05,x_item]);
   tb_ped02_preP2CODVEN.AsInteger :=mVenda_GP.mPed1_Codven;
   tb_ped02_preP2DESC_PERC01.AsFloat    :=0;
   tb_ped02_preP2DESC_PERC02.AsFloat    :=0;
   tb_ped02_preP2DESC_PERC03.AsFloat    :=0;
   fDadosFiscais(tb_ped02_preP2CODPRO.AsFloat
                ,mPed_UF_Cli
                ,mPed_Cli_ConsFin
                ,mPed_Cli_Revenda_Cp
                ,mPed_Cli_icmsnr
                ,mPed_CliCalcIPI
                ,mPed_Cli_REDICMSNOR
                ,mPed_Cli_MotDes
                ,tb_ped02_pre
                ,cds_aliquotas
                ,mPed_Cli_CRT);
   tb_ped02_preP2ID_PED01_NEW.AsFloat := iif(mVenda_GP.mPed1_id_new_000>0,mVenda_GP.mPed1_id_new_000,mVenda_GP.mPed1_id_new_100);


    mIdPed02New := fBuscarProximoId('CADP02_SEQ');
   if mVenda_GP.mPed1_Codemp<100 then
      begin
      tb_ped02_preP2ID_NEW_101.AsFloat    := 0;
      tb_ped02_preP2ID_NEW.AsFloat    := mIdPed02New;
      end
   else
      begin
      tb_ped02_preP2ID_NEW_101.AsFloat    := mIdPed02New;
      tb_ped02_preP2ID_NEW.AsFloat       := 0;
      end;


   tb_ped02_pre.Post;
   if (Log_TipoLote=1) then
      begin
      query_exe.close;
      query_exe.SQL.Clear;
      query_exe.SQL.Add('Insert into CADP02_LOTES ('
                       +'P2LM_CODEMP, '
                       +'P2LM_LOTSEQ, '
                       +'P2LM_CHAVE, '
                       +'P2LM_ITEM, '
                       +'P2LM_CODPRO, '
                       +'P2LM_LOTE, '
                       +'P2LM_DTVCTO, '
                       +'P2LM_QTD, '
                       +'P2LM_QTDDEV '
                       +',P2LM_ID_NEW '
                       +',P2LM_ID_PED02_NEW '

                       +') values ('
                       +':P2LM_CODEMP, '
                       +':P2LM_LOTSEQ, '
                       +':P2LM_CHAVE, '
                       +':P2LM_ITEM, '
                       +':P2LM_CODPRO, '
                       +':P2LM_LOTE, '
                       +':P2LM_DTVCTO, '
                       +':P2LM_QTD, '
                       +':P2LM_QTDDEV '
                       +',CADP02_LOTES_SEQ.NEXTVAL '
                       +',:P2LM_ID_PED02_NEW '

                       +')');


      query_exe.ParamByName('P2LM_ID_PED02_NEW').AsInteger :=mIdPed02New;
      query_exe.ParamByName('P2LM_CODEMP').AsInteger :=mVenda_GP.mPed1_Codemp;
      query_exe.ParamByName('P2LM_LOTSEQ').AsInteger :=mVenda_GP.mPed1_Chave_ano;
      query_exe.ParamByName('P2LM_CHAVE').AsFloat    :=mVenda_GP.mPed1_Chave;
      query_exe.ParamByName('P2LM_ITEM').AsInteger   :=mItemPed;
      query_exe.ParamByName('P2LM_CODPRO').AsFloat   :=tb_ped02_preP2CODPRO.AsFloat;
      query_exe.ParamByName('P2LM_LOTE').AsString    :=STG_DEV.Cells[01,x_item];
      try
         query_exe.ParamByName('P2LM_DTVCTO').AsDateTime:=StrtoDate(STG_DEV.Cells[02,x_item])
      except
         query_exe.ParamByName('P2LM_DTVCTO').AsDateTime:=pdatanula;
         end;
      query_exe.ParamByName('P2LM_QTD').AsFloat      :=valfloat(STG_DEV.Cells[03,x_item]);
      query_exe.ParamByName('P2LM_QTDDEV').AsFloat   :=0;
      query_exe.ParamByName('P2LM_ID_PED02_NEW').AsFloat   :=mIdPed02New;


      try

         query_exe.ExecSQL;
         fdm1StartCommit;
      except
         end;
      end;

   end;

if fsonumero(CODCLI.Text)=1 then
  begin
  DM1.Query1.Close;
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add('Update CADCSF set '
                    +' CFRAZAO='+QuotedStr(NOMCLI.Text)+' where '
                    +' CFCODEMP='+IntToStr(mVenda_GP.mPed1_Codemp)
                    +' and CFCHAVEP='+IntToStr(mVenda_GP.mped1_Chave)
                    +' and CFLOTSEQ='+IntToStr(mVenda_GP.mPed1_Chave_ano));
  try
    DM1.Query1.ExecSQL;
    fdm1StartCommit;
  except
    ex_erroSql_Novo(DM1.Query1,22663,'func','CADCSF');
    end;
  end;


if fsonumero(STG_ORI.Cells[01,01])>0 then
  begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add(' delete from CADCSF where CFCHAVEP='+IntToStr(mVenda_GP.mped1_Chave)
                    +' and CFCODEMP='+IntToStr(mVenda_GP.mPed1_Codemp));
  try
    DM1.Query1.ExecSQL;
  except
    ex_erroSql_Novo(DM1.Query1,5183,'S_TROCAS','CADCSF');
    end;

  for xQtdPed :=1 to STG_ORI.RowCount - 1 do
    begin
    DM1.Query1.Close;
    DM1.Query1.SQL.Clear;
    DM1.Query1.SQL.Add(' insert into cadp01d(P1DCODEMP, P1DLOTSEQ, P1DCHAVE, P1DORDEM,'
                      +' P1DLS_OR, P1DCODEMP_OR, P1DCH_OR, P1DOR_OR, P1DDATAP, P1DCHAVE_NIVEL '
                      +', P1DID_NEW  '
                      +', P1DID_PED01_NEW '
                      +') values ('+IntToStr(mVenda_GP.mPed1_Codemp)
                              +',0'
                              +','+IntToStr(mVenda_GP.mped1_Chave)
                              +',1'
                              +',0'
                              +','+STG_ORI.Cells[00,xQtdPed]
                              +','+STG_ORI.Cells[01,xQtdPed]
                              +',0'
                              +','+QuotedStr(STG_ORI.Cells[02,xQtdPed])
                              +',0'
                              +', CADP01D_SEQ.NEXTVAL '
                              +','+STG_ORI.Cells[mcol_cp_dev,xQtdPed]
                              +')');
    try
      DM1.Query1.ExecSQL;
    except
      ex_erroSql_Novo(DM1.Query1,5482,'S_TROCAS','CADCSF');
      end;
    end;

  if trim(STG_ORI.Cells[01,01])<>'' then
    begin
    DM1.Query1.Close;
    DM1.Query1.SQL.Clear;
    DM1.Query1.SQL.Add(' INSERT INTO CADCSF(CFCODEMP, CFCODSEQ, CFLOTSEQ, CFCHAVEP, '
                      +' CFORDEMP, CFRAZAO, CFDENOM, CFENDER, CFBAIRRO, CFCIDADE,   '
                      +' CFUF, CFCEP, CFTIPOC, CFCGC, CFIE, CFFONE, CFCHAVEP_NIVEL, '
                      +' CFFAX, CFFONE_CHAVE, CFCODVEN'
                      +',CFID_NEW '
                      +',CFID_PED01_NEW '

                      +') SELECT '+IntToStr(mVenda_GP.mPed1_Codemp)+' as CFCODEMP, '
                      +' CFCODSEQ, CFLOTSEQ, '+IntToStr(mVenda_GP.mPed1_Chave)+' as CFCHAVEP, '
                      +' CFORDEMP, CFRAZAO, CFDENOM,  CFENDER, CFBAIRRO, CFCIDADE, CFUF,CFCEP,'
                      +' CFTIPOC, CFCGC, CFIE, CFFONE, CFCHAVEP_NIVEL, CFFAX, CFFONE_CHAVE, CFCODVEN'
                      +', CADCSF_SEQ.NEXTVAL '
                      +', '+inttostr(mchave_tro_new)+' id_ped01_new '
                      +' FROM CADCSF WHERE CFCHAVEP='+STG_ORI.Cells[01,01]
                      +' and CFCODEMP='+STG_ORI.Cells[00,01]);
    try
      DM1.Query1.ExecSQL;
    except
      ex_erroSql_Novo(DM1.Query1,5508,'S_TROCAS','CADCSF');
      end;
    end;
  end;
mDadosParametros.pId_Ped02_new_ant_naoUtil :=0;

tb_ped02_pre.First;
while not tb_ped02_pre.Eof do
  begin
  flcadpro(1,0,0,tb_ped02_preP2CODPRO.AsString);
  mVenda_GP.fGravarItemCDS(0 // produto
                      ,0
                      ,1 // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta p2Estoque
                      ,mVenda_GP.mPed1_CodFP
                      ,0 //apenas calcular  tipo do evento 0-inclusao 1-alteracao 2-exclusao 3-calcular
                      ,0 //pSituacao: Integer;
                      ,'0'
                      ,mVenda_GP.mPed1_NomFP
                      ,mVenda_GP.mPed1_BaixaFP
                      ,tb_ped02_preP2QTD.AsFloat  //pQtd_Cal
                      ,tb_ped02_preP2PRECO.AsFloat // pPrecoUnit_Cal
                      ,DM1.Tb_ProPDPCOFAB.AsFloat //,pPrecoTab_Cal
                      ,DM1.Tb_ProPDUCPR.AsFloat // pPrecoUCPR_Cal
                      ,DM1.Tb_ProPDPRECOC.AsFloat // pPrecoCus_Cal
                      ,0 // pPrecoMax_Cal,
                      ,0
                      ,0
                      ,0
                      ,0
                      ,0
                      ,tb_ped02_preP2DESC_PERC01.AsFloat
                      ,mDadosParametros

                      ,tb_ped02_pre);
   if (Log_TipoLote=1) then
      begin
      query_temp.close;
      query_temp.sql.clear;
      query_temp.sql.Add('Select * from CADP02_LOTES WHERE '
                        +' P2LM_CODEMP=:CODEMP '
                       +' AND P2LM_LOTSEQ=:LOTSEQ  '
                       +' and P2LM_CHAVE=:CHAVE  '
                       +' and P2LM_ITEM=:ITEM ');
      query_temp.ParamByName('CODEMP').AsInteger :=mVenda_GP.mPed1_Codemp;
      query_temp.ParamByName('LOTSEQ').AsInteger :=mVenda_GP.mPed1_Chave_ano;
      query_temp.ParamByName('CHAVE').AsFloat    :=mVenda_GP.mPed1_Chave;
      query_temp.ParamByName('ITEM').AsInteger   :=tb_ped02_preP2ITEM.AsInteger;
      query_temp.open;
      While not query_temp.eof do
         begin


pBaixar.pCodemp := mVenda_GP.mPed1_codemp;
	pBaixar.pFilial := mVenda_GP.mPed1_filial;
	pBaixar.pItem   := tb_ped02_preP2ITEM.AsInteger;
	pBaixar.pDocOri := 00;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := DM1.Tb_ProPDCONTESP.asinteger;
	pBaixar.pChave   := mVenda_GP.mped1_Chave;
	pBaixar.pChave_ano := mVenda_GP.mped1_Chave_ano;
	pBaixar.pQtd       := query_temp.fieldbyName('P2LM_QTD').AsFloat;
	pBaixar.pCodPro    := tb_ped02_preP2CODPRO.AsString;
	pBaixar.pEstNor       := 'E'; // estnor;
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := Query_temp.fieldbyName('P2LM_LOTE').AsString;
	pBaixar.pDtVcto       := Query_temp.fieldbyName('P2LM_DTVCTO').AsDateTime;
	pBaixar.pDtFab        := Query_temp.fieldbyName('P2LM_DTFAB').AsDateTime;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := iif(tb_ped02_preP2ID_NEW.AsInteger>0,tb_ped02_preP2ID_NEW.AsInteger,tb_ped02_preP2ID_NEW_101.AsInteger);
	fBaixarMercadorias(pBaixar);

{
         fBaixarMercadorias(mVenda_GP.mPed1_codemp
                     ,mVenda_GP.mPed1_filial
                     ,tb_ped02_preP2ITEM.AsInteger
                     ,00 // docori
                     ,codusr
                     ,DM1.Tb_ProPDCONTESP.asinteger //pcontesp
                     ,Log_TipoProdPad //ptipoprod
                     ,mVenda_GP.mped1_Chave
                     ,mVenda_GP.mped1_Chave_ano
                     ,query_temp.fieldbyName('P2LM_QTD').AsFloat
                     ,tb_ped02_preP2CODPRO.AsString
                     ,'E'
                     ,'N'
                     ,Query_temp.fieldbyName('P2LM_LOTE').AsString
                     ,Query_temp.fieldbyName('P2LM_DTVCTO').AsDateTime
                     ,'' // lote re
                     ,'' // obs
                     );
}
          Query_temp.Next;
          end;
       end;

  tb_ped02_pre.Next;
  end;

query_temp.close;
query_temp.sql.clear;
query_temp.sql.add('Update CADTRO_CAB set TCCHAVE_DEV=:CHAVE_DEV '
                  +' where TCCODEMP=:CODEMP '
                  +' and TCCHAVE=:CHAVE '
                  +' and TCLOTSEQ=:LOTSEQ ');
query_temp.parambyName('CHAVE_DEV').value:=mvenda_gp.mped1_chave;
query_temp.parambyName('CODEMP').value:=mcodemp_tro;
query_temp.parambyName('CHAVE').value :=mchave_tro;
query_temp.parambyName('LOTSEQ').value :=ls_trocas;
try
   query_temp.execsql;
   fdm1startcommit;
except
   end;

if mVenda_GP.mPed1_Codemp > 100 then
  begin
  DM1.Tb_Ped01.Close;
  DM1.Tb_Ped01.Sql.Clear;
  DM1.Tb_Ped01.SQl.add('Select * from CADP01 where 1=1 '
                      +' and P1STATUS<'+mstatus_excluido+' '
                      +' and P1LOTSEQ=0'+IntToStr(mVenda_GP.mPed1_Chave_ano)
                      +' and P1CHAVE=0'+IntToStr(mVenda_GP.mped1_Chave));
  DM1.Tb_Ped01.SQl.add(' and P1CODEMP=0'+IntToStr(mVenda_GP.mPed1_Codemp));
  DM1.Tb_Ped01.Open;
  while not DM1.Tb_Ped01.Eof do
    begin
    pSerieNF:='';
    pModNF  :='';
    pNumNF  :=fBuscarNUMNF(DM1.Tb_Ped01P1CODEMP.AsInteger,'SERIE'+IntToStr(DM1.Tb_Ped01P1CODSER.AsInteger+1),pSerieNF,pModNF,0);
    DM1.Query1.Close;
    DM1.Query1.SQL.Clear;
    DM1.Query1.SQL.Add('update CADP01 set '
                   +' P1NUMNF=0'+FloatToStr(pNumNF)+','
                   +' P1DATANF='+chr(39)+FormatDateTime(fdt,date)+chr(39)+','
                   +' P1DATDOC=:DATDOC,'
                   +' P1SERIE='+chr(39)+pSerieNF+chr(39)+','
                   +' P1MODELO='+chr(39)+pModNF+chr(39)+','
                   +' P1STATUS=2,P1EMIDOC=1 '
                   +' where P1CODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString
                   +' and P1LOTSEQ=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
                   +' and P1CHAVE=0'+DM1.Tb_Ped01P1CHAVE.AsString
                   +' and P1ORDEM=0'+DM1.Tb_Ped01P1ORDEM.AsString);
    DM1.Query1.ParambyName('DATDOC').AsDate := NOW;
    Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
    except
      ex_erroSql(01,8424,'Frm_Trocas','CADP01');
      end;
    DM1.Tb_Ped01.Next;
    end;
  end;

// SAIDA POR TROCA


cds_aliquotas.EmptyDataSet;
tb_ped02_pre.EmptyDataSet;

mVenda_GP.mPed1_Tipo_Ped    :=16;
mVenda_GP.mPd_EstNor        := 'N';
mVenda_GP.mPd_EstCons       := 'N';
mVenda_GP.mPd_EstTerc       := 'N';
mVenda_GP.mPd_EstVenda      := 'N';

mVenda_GP.mPed1_cfop1:=5102;
mVenda_GP.mPed1_cfop2:=5102;

fParametrosAliquotas(fsonumero(CODCLI.Text)
,mVenda_GP.mPed1_Tipo_Ped // tipo do pedido // devolucao de cliente
,mPed_UF_Cli
,mPed_Cli_RazSoc
,mVenda_GP.mPd_EstNor
,mVenda_GP.mPd_EstCons
,mVenda_GP.mPd_EstTerc
,mVenda_GP.mPd_EstVenda
,mPed_Cli_MotDes
,mPed_Cli_ConsFin
,mPed_Cli_Revenda_CP
,mPed_CliCalcIPI
,mPed_Cli_ST
,mPed_Cli_REDICMSNOR
,mPed_Cli_icmsnr
,cds_aliquotas);


mvenda_gp.mped1_Chave:=0;
mVenda_GP.mPed1_CodCli:=fsonumero(CODCLI.text);
// forma para nova venda inicio

mFormaPag:=copy(CB_FORMAPAG.Text,1,length(CB_FORMAPAG.Text)-3);

query_temp.Close;
query_temp.sql.Clear;
query_temp.sql.Add('Select FPCODIGO,FPDESC from CADFP '
               +' where FPDESC=:NOMFP');
Query_temp.ParamByName('NOMFP').AsString:=mFormaPag;
Query_Temp.Open;
if query_temp.IsEmpty then
   begin
   Query_temp.close;
   Query_temp.sql.clear;
   Query_temp.SQL.add('select * from ( '
                  +' select * from cadfp order by fpcodigo) where rownum<2 ');
  Query_Temp.Open;
   end;

if query_temp.IsEmpty then
   begin
   mVenda_GP.mPed1_CodFP:=0;
   mVenda_GP.mPed1_NomFP:=mFormaPag;
   end
else
   begin
   mVenda_GP.mPed1_CodFP:=Query_temp.fieldbyName('FPCODIGO').AsInteger;
   mVenda_GP.mPed1_NomFP:=Query_temp.fieldbyName('FPDESC').AsString;
   end;



// form para nova venda


mVenda_GP.mPed1_Datap :=StrToDate(FormatDateTime('dd/mm/yyyy',Now));
mVenda_GP.mPed1_BaixaFP:='N';
mVenda_GP.mPed1_CodPV:=1;
mVenda_GP.mPed1_PvaCtd:=0;
mVenda_GP.mPed1_TabPV:='AV';
mVenda_GP.mPed1_TpComis:=0;
mVenda_GP.mped1_submod_grav:=0;
mVenda_GP.mPed1_Frete_CIFFOB :=DM1.Tb_CliCFRETEPC.AsInteger - 1;
if DM1.Tb_CliCCODTRA.AsInteger>0 then
   if flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',DM1.Tb_CliCCODTRA.AsString) then
      mVenda_GP.mPed1_CodTra:=DM1.Tb_CliCCODTRA.AsInteger;
if DM1.Tb_CliCCODVEN.AsInteger>0 then
  if flqr1('VNOME','V','CADVEN','N','VCODVEN',DM1.Tb_CliCCODVEN.AsString) then
   mVenda_GP.mPed1_Codven := DM1.Tb_CliCCODVEN.AsInteger;
mVenda_GP.mPed1_Codven:=StrToInt(CODVEN.Text);
mVenda_GP.mPed1_AjustaFP:='S';

if not flcadpv(1,0,DM1.Tb_CliCTABPV.AsString,DM1.Tb_CliCCODPV.AsString) then
  flcadpv(1,0,'AV','01');
mVenda_GP.mPed1_CodPV:=DM1.Tb_PVPVCODPV.AsInteger;
mVenda_GP.mPed1_PvaCtd:=DM1.Tb_PVPVACTD.AsFloat;
mVenda_GP.mPed1_TabPV:=DM1.Tb_PVPVCODTIP.asString;
mVenda_GP.mPed1_TpComis:=DM1.Tb_PVPVTPC.AsInteger;
if DM1.Tb_PVPVTPP.AsInteger=4 then // preco extra
   begin
   mVenda_GP.mPed1_Tabela:='1';
   end
else if DM1.Tb_PVPVTPP.AsInteger=0 then  // do cadastro do estado
   begin
   flcaduf(0,0,1,mPed_UF_Cli);
   if DM1.Tb_UFPTIPOPCO.AsInteger=3 then
      mVenda_GP.mPed1_Tabela:='3'
   else if DM1.Tb_UFPTIPOPCO.AsInteger=2 then
      mVenda_GP.mPed1_Tabela:='2'
   else
      mVenda_GP.mPed1_Tabela:='1';
   end
else if DM1.Tb_PVPVTPP.AsInteger=3 then // tipo de preco 3
   begin
   mVenda_GP.mPed1_Tabela:='3';
   end
else if DM1.Tb_PVPVTPP.AsInteger=2 then // tipo de preco 2
   begin
   mVenda_GP.mPed1_Tabela:='2';
   end
else // tipo de preco 1
   begin
   mVenda_GP.mPed1_Tabela:='1';
   end;
flcadpv2('1',DM1.Tb_CliCTABPV.AsString,DM1.Tb_CliCCODPV.AsString);
DM1.Tb_PV2.First;
mVenda_GP.mPed1_Parcelas:=insere(DM1.Tb_PV2PV2PRAZO.AsString,'0',4);
mVenda_GP.mPed1_PrzNovos_001:='P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';
mVenda_GP.mPed1_PrzNovos_101:='P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';
DM1.Tb_PV2.Next;
while not DM1.Tb_PV2.Eof do
   begin
   mVenda_GP.mPed1_Parcelas:=mVenda_GP.mPed1_Parcelas+insere( DM1.Tb_PV2PV2PRAZO.AsString,'0',4);
   mVenda_GP.mPed1_PrzNovos_001:=mVenda_GP.mPed1_PrzNovos_001+'P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';
   mVenda_GP.mPed1_PrzNovos_101:=mVenda_GP.mPed1_PrzNovos_101+'P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';
   DM1.Tb_PV2.Next;
   end;
mVenda_GP.mPed1_QtdParc_ant:=-1;
mVenda_GP.mped1_QtdParc:=DM1.Tb_PV2.RecordCount;
mVenda_GP.mPed1_AjustaFP :='S';
mVenda_GP.mPed1_pvdescf     :=DM1.Tb_PVPVDESCF.AsFloat;
mVenda_GP.mPed1_pvddescf    :=DM1.Tb_PVPVDESCF.AsInteger;
mVenda_GP.mPed1_pvdiasdescf :=DM1.Tb_PVPVDIASDESCF.AsInteger;
mVenda_GP.mped1_tppco:=2;

if DM1.Tb_PargerPTROEMP100.AsInteger=1 then
  begin
  mVenda_GP.mPed1_Codemp:=iif(codemp>100,codemp,codemp+100);
  mVenda_GP.mped1_submod:=100;
  mVenda_GP.mped1_submod_grav:=100;
  end
else
  begin
  mVenda_GP.mPed1_Codemp:=codemp;
  mVenda_GP.mped1_submod:=iif(codemp>100,100,0);
  mVenda_GP.mped1_submod_grav:=iif(codemp>100,100,0);
  end;

mVenda_GP.fGravarPed01(0,mVenda_GP.mped1_submod_grav);

//Tb_Ped02_pre.EmptyDataSet;


query_exe:=tQuery.Create(nil);
query_exe.databasename:='SG_ASSOC';

query_temp:=tQuery.Create(nil);
query_temp.databasename:='SG_ASSOC';

mItemPed:=0;
for x_item:=0 to STG_ENT.RowCount-1 do
   begin
   if fsonumero(STG_ENT.Cells[00,x_item])=0 then
      continue;
   mitemped:=mitemped+1;
   mIdPed02New:=fbuscarProximoId('CADP02_SEQ');
   tb_ped02_pre.Append;
   tb_ped02_preP2CODEMP.AsInteger :=mVenda_GP.mPed1_Codemp;
   tb_ped02_preP2LOTSEQ.AsInteger :=mVenda_GP.mPed1_Chave_ano;
   tb_ped02_preP2CHAVE.AsInteger  :=mVenda_GP.mPed1_Chave;
   tb_ped02_preP2ORDEM.AsInteger  :=01;
   tb_ped02_preP2ITEM.AsInteger   :=mItemPed;
   if mVenda_GP.mPed1_Codemp>100 then
      tb_ped02_preP2ID_NEW_101.AsInteger := mIdPed02New
   else
      tb_ped02_preP2ID_NEW.AsInteger := mIdPed02New;
   tb_ped02_preP2CODPRO.AsFloat   :=fsonumero(STG_ENT.Cells[00,x_item]);
   tb_ped02_preP2QTD.AsFloat      :=valfloat(STG_ENT.Cells[03,x_item]);
   tb_ped02_preP2PRECO.AsFloat    :=valfloat(STG_ENT.Cells[05,x_item]);
   tb_ped02_preP2CODVEN.AsInteger :=mVenda_GP.mPed1_Codven;
   tb_ped02_preP2DESC_PERC01.AsFloat    :=0;
   tb_ped02_preP2DESC_PERC02.AsFloat    :=0;
   tb_ped02_preP2DESC_PERC03.AsFloat    :=0;
   fDadosFiscais(tb_ped02_preP2CODPRO.AsFloat
                ,mPed_UF_Cli
                ,mPed_Cli_ConsFin
                ,mPed_Cli_Revenda_Cp
                ,mPed_Cli_icmsnr
                ,mPed_CliCalcIPI
                ,mPed_Cli_REDICMSNOR
                ,mPed_Cli_MotDes
                ,tb_ped02_pre
                ,cds_aliquotas
                ,mPed_Cli_CRT);
   tb_ped02_pre.Post;



   if (Log_TipoLote=1) then
      begin
      query_exe.close;
      query_exe.SQL.Clear;
      query_exe.SQL.Add('Insert into CADP02_LOTES ('
                       +'P2LM_CODEMP, '
                       +'P2LM_LOTSEQ, '
                       +'P2LM_CHAVE, '
                       +'P2LM_ITEM, '
                       +'P2LM_CODPRO, '
                       +'P2LM_LOTE, '
                       +'P2LM_DTVCTO, '
                       +'P2LM_QTD, '
                       +'P2LM_QTDDEV '
                       +',P2LM_ID_NEW '
                       +',P2LM_ID_PED02_NEW '

                       +') values ('
                       +':P2LM_CODEMP, '
                       +':P2LM_LOTSEQ, '
                       +':P2LM_CHAVE, '
                       +':P2LM_ITEM, '
                       +':P2LM_CODPRO, '
                       +':P2LM_LOTE, '
                       +':P2LM_DTVCTO, '
                       +':P2LM_QTD, '
                       +':P2LM_QTDDEV '
                       +',CADP02_LOTES_SEQ.NEXTVAL '
                       +',:P2LM_ID_PED02_NEW '

                       +')');



      query_exe.ParamByName('P2LM_CODEMP').AsInteger :=mVenda_GP.mPed1_Codemp;
      query_exe.ParamByName('P2LM_LOTSEQ').AsInteger :=mVenda_GP.mPed1_Chave_ano;
      query_exe.ParamByName('P2LM_CHAVE').AsFloat    :=mVenda_GP.mPed1_Chave;
      query_exe.ParamByName('P2LM_ITEM').AsInteger   :=mItemPed;
      query_exe.ParamByName('P2LM_CODPRO').AsFloat   :=tb_ped02_preP2CODPRO.AsFloat;
      query_exe.ParamByName('P2LM_LOTE').AsString    :=STG_ENT.Cells[01,x_item];
      try
         query_exe.ParamByName('P2LM_DTVCTO').AsDateTime:=StrtoDate(STG_ENT.Cells[02,x_item])
      except
         query_exe.ParamByName('P2LM_DTVCTO').AsDateTime:=pdatanula;
         end;
      query_exe.ParamByName('P2LM_QTD').AsFloat      :=valfloat(STG_ENT.Cells[03,x_item]);
      query_exe.ParamByName('P2LM_QTDDEV').AsFloat   :=0;
      query_exe.ParamByName('P2LM_ID_PED02_NEW').AsFloat   := mIdPed02New;


      try
         query_exe.ExecSQL;
         fdm1StartCommit;
      except
         end;
      end;

   end;
if fsonumero(CODCLI.Text)=1 then
  begin
  DM1.Query1.Close;
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add('Update CADCSF set '
                    +' CFRAZAO='+QuotedStr(NOMCLI.Text)+' where '
                    +' CFCODEMP='+IntToStr(mVenda_GP.mPed1_Codemp)
                    +' and CFCHAVEP='+IntToStr(mVenda_GP.mped1_Chave)
                    +' and CFLOTSEQ='+IntToStr(mVenda_GP.mPed1_Chave_ano));
  try
    DM1.Query1.ExecSQL;
    fdm1StartCommit;
  except
    ex_erroSql_Novo(DM1.Query1,22663,'func','CADCSF');
    end;
  end;
if fsonumero(STG_ORI.Cells[01,01])>0 then
  begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add(' delete from CADCSF where CFCHAVEP='+IntToStr(mVenda_GP.mped1_Chave)
                    +' and CFCODEMP='+IntToStr(mVenda_GP.mPed1_Codemp));
  try
    DM1.Query1.ExecSQL;
  except
    ex_erroSql_Novo(DM1.Query1,5183,'S_TROCAS','CADCSF');
    end;

  if Trim(STG_ORI.Cells[01,01])<>'' then
    begin
    DM1.Query1.Close;
    DM1.Query1.SQL.Clear;
    DM1.Query1.SQL.Add(' INSERT INTO CADCSF(CFID_NEW,CFCODEMP, CFCODSEQ, CFLOTSEQ, CFCHAVEP, '
                      +' CFORDEMP, CFRAZAO, CFDENOM, CFENDER, CFBAIRRO, CFCIDADE,   '
                      +' CFUF, CFCEP, CFTIPOC, CFCGC, CFIE, CFFONE, CFCHAVEP_NIVEL, '
                      +' CFFAX, CFFONE_CHAVE, CFCODVEN) SELECT CADCSF_SEQ.NEXTVAL, '+IntToStr(mVenda_GP.mPed1_Codemp)+' as CFCODEMP, '
                      +' CFCODSEQ, CFLOTSEQ, '+IntToStr(mVenda_GP.mPed1_Chave)+' as CFCHAVEP, '
                      +' CFORDEMP, CFRAZAO, CFDENOM,  CFENDER, CFBAIRRO, CFCIDADE, CFUF,CFCEP,'
                      +' CFTIPOC, CFCGC, CFIE, CFFONE, CFCHAVEP_NIVEL, CFFAX, CFFONE_CHAVE, CFCODVEN'
                      +' FROM CADCSF WHERE CFCHAVEP='+STG_ORI.Cells[01,01]
                      +' and CFCODEMP='+STG_ORI.Cells[00,01]);
    try
      DM1.Query1.ExecSQL;
    except
      ex_erroSql_Novo(DM1.Query1,5929,'S_TROCAS','CADCSF');
      end;
    end;
  end;
   mDadosParametros.pId_Ped02_new_ant_naoUtil :=0;

tb_ped02_pre.First;
while not tb_ped02_pre.Eof do
  begin
  flcadpro(1,0,0,tb_ped02_preP2CODPRO.AsString);
  mVenda_GP.fGravarItemCDS(0 // produto
                      ,0
                      ,0 // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta p2Estoque
                      ,mVenda_GP.mPed1_CodFP
                      ,0 //apenas calcular  tipo do evento 0-inclusao 1-alteracao 2-exclusao 3-calcular
                      ,0 //pSituacao: Integer;
                      ,'0'
                      ,mVenda_GP.mPed1_NomFP
                      ,mVenda_GP.mPed1_BaixaFP
                      ,tb_ped02_preP2QTD.AsFloat  //pQtd_Cal
                      ,tb_ped02_preP2PRECO.AsFloat // pPrecoUnit_Cal
                      ,DM1.Tb_ProPDPCOFAB.AsFloat //,pPrecoTab_Cal
                      ,DM1.Tb_ProPDUCPR.AsFloat // pPrecoUCPR_Cal
                      ,DM1.Tb_ProPDPRECOC.AsFloat // pPrecoCus_Cal
                      ,0 // pPrecoMax_Cal,
                      ,0
                      ,0
                      ,0
                      ,0
                      ,0
                      ,tb_ped02_preP2DESC_PERC01.AsFloat
                      ,mDadosParametros

                      ,tb_ped02_pre);
   if (Log_TipoLote=1) then
      begin
      query_temp.close;
      query_temp.sql.clear;
      query_temp.sql.Add('Select * from CADP02_LOTES WHERE '
                        +' P2LM_CODEMP=:CODEMP '
                       +' AND P2LM_LOTSEQ=:LOTSEQ  '
                       +' and P2LM_CHAVE=:CHAVE  '
                       +' and P2LM_ITEM=:ITEM ');
      query_temp.ParamByName('CODEMP').AsInteger :=mVenda_GP.mPed1_Codemp;
      query_temp.ParamByName('LOTSEQ').AsInteger :=mVenda_GP.mPed1_Chave_ano;
      query_temp.ParamByName('CHAVE').AsFloat    :=mVenda_GP.mPed1_Chave;
      query_temp.ParamByName('ITEM').AsInteger   :=tb_ped02_preP2ITEM.AsInteger;
      query_temp.open;
      While not query_temp.eof do
         begin


pBaixar.pCodemp := mVenda_GP.mPed1_codemp;
	pBaixar.pFilial := mVenda_GP.mPed1_filial;
	pBaixar.pItem   := tb_ped02_preP2ITEM.AsInteger;
	pBaixar.pDocOri := 00;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := DM1.Tb_ProPDCONTESP.asinteger;
	pBaixar.pChave   := mVenda_GP.mped1_Chave;
	pBaixar.pChave_ano := mVenda_GP.mped1_Chave_ano;
	pBaixar.pQtd       := query_temp.fieldbyName('P2LM_QTD').AsFloat;
	pBaixar.pCodPro    := tb_ped02_preP2CODPRO.AsString;
	pBaixar.pEstNor       := 'E'; // estnor;
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := Query_temp.fieldbyName('P2LM_LOTE').AsString;
	pBaixar.pDtVcto       := Query_temp.fieldbyName('P2LM_DTVCTO').AsDateTime;
	pBaixar.pDtFab        := Query_temp.fieldbyName('P2LM_DTFAB').AsDateTime;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := Query_temp.fieldbyName('P2LM_ID_NEW').AsInteger;;

	fBaixarMercadorias(pBaixar);
{
         fBaixarMercadorias(mVenda_GP.mPed1_codemp
                     ,mVenda_GP.mPed1_filial
                     ,tb_ped02_preP2ITEM.AsInteger
                     ,00 // docori
                     ,codusr
                     ,DM1.Tb_ProPDCONTESP.asinteger //pcontesp
                     ,Log_TipoProdPad //ptipoprod
                     ,mVenda_GP.mped1_Chave
                     ,mVenda_GP.mped1_Chave_ano
                     ,query_temp.fieldbyName('P2LM_QTD').AsFloat
                     ,tb_ped02_preP2CODPRO.AsString
                     ,'E'
                     ,'N'
                     ,Query_temp.fieldbyName('P2LM_LOTE').AsString
                     ,Query_temp.fieldbyName('P2LM_DTVCTO').AsDateTime
                     ,'' // lote re
                     ,'' // obs
                     );
}
          Query_temp.Next;
          end;
       end;

  tb_ped02_pre.Next;
  end;
tb_ped02_pre.Close;

query_temp.close;
query_temp.sql.clear;
query_temp.sql.add('Update CADTRO_CAB set TCCHAVE_SAI=:CHAVE_DEV '
                  +' where TCCODEMP=:CODEMP '
                  +' and TCCHAVE=:CHAVE '
                  +' and TCLOTSEQ=:LOTSEQ ');
query_temp.parambyName('CHAVE_DEV').value:=mvenda_gp.mped1_chave;
query_temp.parambyName('CODEMP').value:=mcodemp_tro;
query_temp.parambyName('CHAVE').value :=mchave_tro;
query_temp.parambyName('LOTSEQ').value :=ls_trocas;
try
   query_temp.execsql;
   fdm1startcommit;
except
   end;

if mVenda_GP.mPed1_Codemp > 100 then
  begin
  DM1.Tb_Ped01.Close;
  DM1.Tb_Ped01.Sql.Clear;
  DM1.Tb_Ped01.SQl.add('Select * from CADP01 where 1=1 '
                      +' and P1STATUS<'+mstatus_excluido+' '
                      +' and P1LOTSEQ=0'+IntToStr(mVenda_GP.mPed1_Chave_ano)
                      +' and P1CHAVE=0'+IntToStr(mVenda_GP.mped1_Chave));
  DM1.Tb_Ped01.SQl.add(' and P1CODEMP=0'+IntToStr(mVenda_GP.mPed1_Codemp));
  DM1.Tb_Ped01.Open;
  while not DM1.Tb_Ped01.Eof do
    begin
    pSerieNF:='';
    pModNF  :='';
    pNumNF  :=fBuscarNUMNF(DM1.Tb_Ped01P1CODEMP.AsInteger,'SERIE'+IntToStr(DM1.Tb_Ped01P1CODSER.AsInteger+1),pSerieNF,pModNF,0);
    DM1.Query1.Close;
    DM1.Query1.SQL.Clear;
    DM1.Query1.SQL.Add('update CADP01 set '
                   +' P1NUMNF=0'+FloatToStr(pNumNF)+','
                   +' P1DATANF='+chr(39)+FormatDateTime(fdt,date)+chr(39)+','
                   +' P1DATDOC=:DATDOC,'
                   +' P1SERIE='+chr(39)+pSerieNF+chr(39)+','
                   +' P1MODELO='+chr(39)+pModNF+chr(39)+','
                   +' P1STATUS=2,P1EMIDOC=1 '
                   +' where P1CODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString
                   +' and P1LOTSEQ=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
                   +' and P1CHAVE=0'+DM1.Tb_Ped01P1CHAVE.AsString
                   +' and P1ORDEM=0'+DM1.Tb_Ped01P1ORDEM.AsString);
    DM1.Query1.ParambyName('DATDOC').AsDate := NOW;
    Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
    except
      ex_erroSql(01,8424,'Frm_Trocas','CADP01');
      end;
    DM1.Tb_Ped01.Next;
    end;
  end;
// TERMINO SAIDA POR TROCA




Freeandnil(mVenda_GP);
FreeandNIl(query_exe);
FreeandNIl(query_temp);





end;

procedure TFrm_Trocas.FormShow(Sender: TObject);
begin
PageControl1.ActivePageIndex:=0;
tsConfigMaster.Visible:=codusr=1111;

if flfilpad(0,'_TROCAS','CB_BAIXAR_TITULO') then
   cb_baixar_titulo.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

if flfilpad(-1,'_TROCAS','EDT_CODFP_DEV') then
   begin
   edt_codfp_dev.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   edt_codfp_devExit(self);
   end;

if flfilpad(-1,'_TROCAS','EDT_CODFP_VDA') then
   begin
   edt_codfp_vda.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   edt_codfp_vdaExit(self);
   end;

end;

procedure TFrm_Trocas.cb_baixar_tituloClick(Sender: TObject);
begin
fDeletaPadroes(0,'_TROCAS','CB_BAIXAR_TITULOS');
if cb_baixar_titulo.Checked then
  fGravaPadroes(0,'CB_BAIXAR_TITULOS'    ,'checked'   ,'_TROCAS','true');

end;

procedure TFrm_Trocas.edt_codfp_devExit(Sender: TObject);
begin
edt_codfp_dev.Text:=fdeixanum(edt_codfp_dev.text);

if (trim(edt_codfp_dev.Text)='') then
   exit;
if not flcadfp(codemp,edt_codfp_dev.Text,'') then
   begin
   fMensagem('Codigo da Forma de Pagamento não Cadastrado!',0,['0'],0);
   cb_fp_dev_evalido.Checked:=false;
   edt_codfp_dev.SetFocus;
   end
else
   begin
   edt_nomfp_dev.Text:=DM1.Tb_FPFPDESC.Value;
   edt_natfp_dev.Text:=iif(DM1.Tb_FPFPTIPO.asinteger=1,'Debito','Credito');
   cb_fp_dev_evalido.Checked := iif(DM1.Tb_FPFPTIPO.asinteger=1,true,false);

   end;



end;

procedure TFrm_Trocas.edt_codfp_vdaExit(Sender: TObject);
begin
edt_codfp_vda.Text:=fdeixanum(edt_codfp_vda.text);

if (trim(edt_codfp_vda.Text)='') then
   exit;
if not flcadfp(codemp,edt_codfp_vda.Text,'') then
   begin
   fMensagem('Codigo da Forma de Pagamento não Cadastrado!',0,['0'],0);
   cb_fp_vda_evalido.Checked:=false;
   edt_codfp_vda.SetFocus;
   end
else
   begin
   edt_nomfp_vda.Text:=DM1.Tb_FPFPDESC.Value;
   edt_natfp_vda.Text:=iif(DM1.Tb_FPFPTIPO.asinteger=1,'Debito','Credito');
   cb_fp_vda_evalido.Checked := iif(DM1.Tb_FPFPTIPO.asinteger=1,false,true);

   end;



end;

procedure TFrm_Trocas.bbSalvarPadraoClick(Sender: TObject);
begin

fDeletaPadroes(-1,'_TROCAS','');
//if (fsonumero(edt_codfp_dev.text)=0) and (fSonumero(edt_codfp_vda.text)=0) then

if (fsonumero(edt_codfp_dev.text)=0)  then
else
   begin
//   if (cb_fp_dev_evalido.checked=true) and (cb_fp_vda_evalido.checked=true) then
   if (cb_fp_dev_evalido.checked=true) then
      begin
      fGravaPadroes(-1,'EDT_CODFP_DEV'    ,'checked'   ,'_TROCAS',edt_codfp_dev.Text);
//      fGravaPadroes(-1,'EDT_CODFP_VDA'    ,'checked'   ,'_TROCAS',edt_codfp_vda.Text);
      end
   else
      begin
      MessageDlg('Configurações Invalida!',mtwarning,[mbOk],0);
      exit;
      end;

   end;
MessageDlg('Configurações Salvadas!',mtInformation,[mbok],0);
end;

procedure TFrm_Trocas.edt_codfp_devKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codfp_dev.Text:=fChamafpag(0,'Frm_Trocas',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Trocas.edt_codfp_vdaKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codfp_vda.Text:=fChamafpag(0,'Frm_Trocas',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;


procedure tFrm_Trocas.fAtualizarFormaPag(pCodfp: integer);
var
query_temp: tQuery;
begin

query_temp := tQuery.Create(nil);
query_temp.databaseName := DM1.SG_ASSOC.databasename;
query_temp.Close;
query_temp.sql.Clear;
query_temp.sql.Add('Select FPCODIGO,FPDESC from CADFP '
                  +' where FPCODIGO=:CODFP');
Query_temp.ParamByName('CODFP').AsInteger:=pCodFp;
try
   Query_Temp.Open;
   CB_FORMAPAG.Text :=Query_temp.fieldByName('FPDESC').asstring+'-'+Formatfloat('00', Query_temp.fieldbyName('FPCODIGO').asinteger);


    with CB_FORMAPAG do
       ItemIndex := Items.IndexOf(CB_FORMAPAG.Text);
except on e : exception do
   begin
   ex_erroSql_Novo(Query_temp,6369,'SGE','CADFP');
   end;
   end;
query_temp.close;
freeandNil(query_temp);
end;

end.

