unit S_FatEmp_itens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls,S_DM1,db,dbtables,func,lerarq,
  Grids,S_Pv,S_PVO, DBGrids, ToolEdit, CurrEdit,
  ComCtrls, RLReport, S_SelEmp, DBClient;



type
  TFrm_FatEmp_itens = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CODCLI: TEdit;
    NOMCLI: TEdit;
    Label2: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label3: TLabel;
    APLICAR: TBitBtn;
    BBSAIR: TBitBtn;
    Panel3: TPanel;
    SELECAO: TBitBtn;
    CANCELAR: TBitBtn;
    FATURAR: TBitBtn;
    Qr_Sel: TQuery;
    Qr_SelP1CHAVE: TFloatField;
    Qr_SelP1ORDEM: TFloatField;
    Qr_SelP1DATAP: TDateTimeField;
    Qr_SelP1CODCLI: TFloatField;
    Qr_SelP1TOTALL: TFloatField;
    Qr_SelCRAZAO: TStringField;
    Qr_SelP1TIPO: TFloatField;
    Qr_Ped: TQuery;
    Qr_PedPDNOME: TStringField;
    Qr_PedPDUND: TStringField;
    Qr_PedP2CODPRO: TFloatField;
    Qr_PedPDSIT: TStringField;
    Qr_PedPDLISTA: TFloatField;
    Qr_PedPDTABICM: TStringField;
    Qr_PedPDCODFOR: TFloatField;
    Qr_PedP2LOTE: TStringField;
    Qr_PedP2DTVCTO: TDateTimeField;
    Qr_PedP2PRECO: TFloatField;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    CODVEN: TEdit;
    NOMVEN: TEdit;
    Label5: TLabel;
    NOMPV: TEdit;
    CB_TABPV: TComboBox;
    CODPV: TEdit;
    Qr_Ser: TQuery;
    Qr_SerPDNOME: TStringField;
    Qr_SerPDUND: TStringField;
    Qr_SerP2SCODPRO: TFloatField;
    Qr_SerP2SPRECO: TFloatField;
    Qr_SerPDSIT: TStringField;
    Qr_SerPDLISTA: TFloatField;
    Qr_SerPDTABICM: TStringField;
    Qr_SerPDCODFOR: TFloatField;
    Qr_SerQUANT: TFloatField;
    Qr_SelP1LOTSEQ: TFloatField;
    Qr_PedP2DESC1: TFloatField;
    Qr_PedP2DESC2: TFloatField;
    Qr_PedP2DESC3: TFloatField;
    Qr_PedP2VALDES: TFloatField;
    Qr_SerP2SDESC1: TFloatField;
    Qr_SerP2SDESC2: TFloatField;
    Qr_SerP2SDESC3: TFloatField;
    Qr_SerP2SVALDES: TFloatField;
    Qr_SelP1VALDES01: TFloatField;
    Qr_SelP1VALDES02: TFloatField;
    Qr_SelP1VLRDES: TFloatField;
    Qr_SelP1PDESCLIB: TFloatField;
    Qr_SelP1PDESCL_USR: TFloatField;
    Qr_SelP1OK: TStringField;
    U_Sel: TUpdateSQL;
    Src_Sel: TDataSource;
    Qr_SelP1CODEMP: TFloatField;
    Qr_PedP2PCOFPG: TFloatField;
    Qr_PedP2CODFAB: TFloatField;
    Qr_PedP2PCOTAB: TFloatField;
    Qr_PedP2UCPR: TFloatField;
    Qr_PedP2PCOCUS: TFloatField;
    Qr_PedP2PCOMAX: TFloatField;
    Qr_PedP2DESCM: TFloatField;
    Label6: TLabel;
    CODCV: TEdit;
    NOMCV: TEdit;
    Qr_SelP1TPPCO: TFloatField;
    Label10: TLabel;
    CB_ORDEM: TComboBox;
    edt_totalgeral: TCurrencyEdit;
    Label7: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TsResMerc: TTabSheet;
    DBGrid1: TDBGrid;
    Src_Ped: TDataSource;
    DBG_Ped2: TDBGrid;
    Panel2: TPanel;
    Label8: TLabel;
    edt_itens_totalgeral: TCurrencyEdit;
    Qr_Seltotalp2: TFloatField;
    btnImprimir: TBitBtn;
    tbsRelatorio: TTabSheet;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDraw2: TRLDraw;
    lbl_convenio: TRLLabel;
    lbl_cliente: TRLLabel;
    edt_totalsel: TCurrencyEdit;
    Label9: TLabel;
    edt_totalASelecionar: TCurrencyEdit;
    Label11: TLabel;
    Qr_PedP2AMBIENTE: TStringField;
    Qr_SelP1TOTDES: TFloatField;
    tsConfigMaster: TTabSheet;
    Label12: TLabel;
    CB_TIPO: TComboBox;
    bbSalvarPadrao: TBitBtn;
    Qr_PedP2COMPLEMENTO: TMemoField;
    Qr_PedP2CODVEN: TFloatField;
    Qr_SelP1DESC01: TFloatField;
    Qr_SelP1DESC02: TFloatField;
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
    Qr_PedP2TOTDES: TFloatField;
    tb_ped02_preP2COMPRA_NITEMPED: TIntegerField;
    tb_ped02_preP2COMPRA_XPED: TStringField;
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
    cds_aliquotasal_combate_pobreza: TFloatField;
    cds_aliquotasal_icmscred_destino: TFloatField;
    cds_aliquotasal_icms_destino: TFloatField;
    cb_agruparitens: TCheckBox;
    tb_ped02_preP2CPUFDEST: TFloatField;
    tb_ped02_preP2ICMSUFDEST: TFloatField;
    tb_ped02_preP2ICMSINTER: TFloatField;
    tb_ped02_preP2ICMSINTERPART: TFloatField;
    tb_ped02_preP2CEST: TStringField;
    tb_ped02_preP2PERCDESC_AUT_DATHOR: TDateTimeField;
    tb_ped02_preP2PERCDESC_AUT: TFloatField;
    tb_ped02_preP2PERCDESC_AUT_CODUSR: TFloatField;
    Qr_PedQTDFAT: TFloatField;
    Qr_PedQTDPEND: TFloatField;
    Qr_PedQTDPED: TFloatField;
    Qr_PedFATURAR: TFloatField;
    Qr_PedP2ITEM: TFloatField;
    U_Ped: TUpdateSQL;
    Label13: TLabel;
    edt_itens_fatrados: TCurrencyEdit;
    Label14: TLabel;
    edt_itens_pendentes: TCurrencyEdit;
    Label15: TLabel;
    edt_itens_selecionados: TCurrencyEdit;
    Panel4: TPanel;
    bbFaturarTodos: TBitBtn;
    bbCancelarTodos: TBitBtn;
    Qr_PedPDMARCA: TStringField;
    st_faturados_total: TStaticText;
    st_faturados_parcial: TStaticText;
    st_faturados_nenhum: TStaticText;
    Qr_PedTOTAL_BRUTO: TFloatField;
    qr_resumo_produtos: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    StringField3: TStringField;
    FloatField2: TFloatField;
    StringField4: TStringField;
    FloatField3: TFloatField;
    StringField5: TStringField;
    DateTimeField1: TDateTimeField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    StringField6: TStringField;
    MemoField1: TMemoField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    StringField7: TStringField;
    FloatField23: TFloatField;
    src_resumo_produtos: TDataSource;
    Label16: TLabel;
    cb_separado: TComboBox;
    Qr_PedP2CODEMP_ORIGEM: TFloatField;
    Qr_PedPRECO_UN_MEDIO: TFloatField;
    Qr_PedP2CHAVE_ORIGEM: TFloatField;
    qr_resumo_produtosgrupo: TStringField;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    lbl_unidade: TRLLabel;
    lbl_descricao: TRLLabel;
    lbl_codigo: TRLLabel;
    lbl_unitario: TRLLabel;
    rlcab_QTDPED: TRLLabel;
    rlcab_TOTAL_BRUTO: TRLLabel;
    RLDraw1: TRLDraw;
    rlcab_QTDFAT: TRLLabel;
    rlcab_QTDPEND: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    rdb_unitario: TRLDBText;
    rldet_QTDPED: TRLDBText;
    rldet_QTDFAT: TRLDBText;
    rldet_QTDPEND: TRLDBText;
    rldet_TOTAL_BRUTO: TRLDBText;
    RLBand5: TRLBand;
    RLLabel4: TRLLabel;
    rlrod_TOTAL_BRUTO: TRLLabel;
    RLLabel5: TRLLabel;
    rlrod_QTDFAT: TRLLabel;
    rlrod_QTDPEND: TRLLabel;
    rlrod_QTDFAT_valor: TRLLabel;
    rlrod_QTDPEND_valor: TRLLabel;
    rlrod_QTDPED: TRLLabel;
    RLBand4: TRLBand;
    RLDBText4: TRLDBText;
    rlcab_P2CHAVE_ORIGEM: TRLLabel;
    rldet_P2CHAVE_ORIGEM: TRLDBText;
    qr_resumo_produtosP2CHAVE_ORIGEM: TFloatField;
    gb_grupos: TGroupBox;
    edt_codgru: TEdit;
    lbx_codgru: TListBox;
    OMITIR_GRU: TCheckBox;
    Qr_PedPDCODGRU: TFloatField;
    Qr_PedPDNOMGRU: TStringField;
    Src_Destino: TDataSource;
    Qr_destino: TQuery;
    Qr_destinoCHAVE: TFloatField;
    Qr_destinoQTDFAT: TFloatField;
    gb_destino: TGroupBox;
    DBGrid2: TDBGrid;
    Label17: TLabel;
    edt_percdesc: TEdit;
    Label18: TLabel;
    edt_codbco: TEdit;
    edt_nombco: TEdit;
    Label19: TLabel;
    edt_codfp: TEdit;
    edt_nomfp: TEdit;
    Label20: TLabel;
    edt_valdesc: TEdit;
    Label21: TLabel;
    edt_totliq: TEdit;
    procedure BBSAIRClick(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure APLICARClick(Sender: TObject);
    procedure CODCLIEnter(Sender: TObject);
    procedure SELECAOClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure FATURARClick(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure CB_TABPVExit(Sender: TObject);
    procedure CODPVKeyPress(Sender: TObject; var Key: Char);
    procedure CODPVExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CODCVExit(Sender: TObject);
    procedure CODCVKeyPress(Sender: TObject; var Key: Char);
    procedure CB_ORDEMExit(Sender: TObject);
    procedure Qr_SelCalcFields(DataSet: TDataSet);
    procedure btnImprimirClick(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbSalvarPadraoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cb_agruparitensExit(Sender: TObject);
    procedure Qr_PedBeforePost(DataSet: TDataSet);
    procedure Qr_PedBeforeEdit(DataSet: TDataSet);
    procedure bbCancelarTodosClick(Sender: TObject);
    procedure bbFaturarTodosClick(Sender: TObject);
    procedure Qr_PedBeforeInsert(DataSet: TDataSet);
    procedure DBG_Ped2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cb_agruparitensClick(Sender: TObject);
    procedure RLBand3AfterPrint(Sender: TObject);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure edt_codgruExit(Sender: TObject);
    procedure edt_codgruKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gb_gruposExit(Sender: TObject);
    procedure Src_PedDataChange(Sender: TObject; Field: TField);
    procedure edt_percdescExit(Sender: TObject);
    procedure edt_codbcoKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codbcoExit(Sender: TObject);
    procedure edt_codfpKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codfpExit(Sender: TObject);
    procedure edt_percdescEnter(Sender: TObject);
    procedure edt_valdescExit(Sender: TObject);


  private
    mChave_Fat: Real;
    mLotseq_Fat: Real;
    mAnt_selecinados: Real;
    mant_valdesc: real;
    mant_percdesc: real;

    mant_pedori_chave: integer;
    mant_pedori_codemp: integer;
    mant_pedori_item: integer;

    xTotalSel: real;

    xTotalDesc01:real;
    xTotalDesc02:real;
    xTotalDescvlr:real;

     mtotvlr_ger : Real;
     mtotqtd_ger : Real;

     mtotvlr_fat : Real;
     mtotqtd_fat : Real;

     mtotvlr_pen : Real;
     mtotqtd_pen : Real;


    { Private declarations }

    function fFatEmpSeleciona(pMarca: String): Boolean;
    function FAtualiza(pTipo: Integer):Boolean;

    function fFaturarPedido_ultimo(pTipo: Integer):Boolean;

    procedure DefinirFaturarouZerar(pZerar: Boolean);

    procedure fApresentarTotais;

    procedure fPedidosdeDestino;


    function fverificaControleEspecial:boolean;


    function fDescontoValido(pPercDesc: Real): Boolean;


    procedure fTotalLiquido();

  public
    { Public declarations }
     form_pvo_fatemp: Tfrm_Pvo;
     Form_SelEmp: TFrm_SelEmp;

  end;

var
  Frm_FatEmp_itens  : TFrm_FatEmp_itens;
  AgruparItens : Boolean;
  Qr_Ped02_Lotes: tQuery;


  maltdup     : Boolean=False;
  mTabTemp_emp    : String='';
{  xTotal      : Real;
  xTotalSel   : Real;
  xTotalDesc01: Real;
  xTotalDesc02: Real;
  xTotalDescvlr: Real;
}  
//  xTotalASel_Ant  : Real;
//  xTotalSel_ant   : Real;

  mchaves1, mchaves2: String;
  mfatemp_tipop_padrao: Integer=1;

  const
  mcol_p2chave_origem = 4;
  mcol_p2codemp_origem = 5;

  mchave_do_pedido_de_origem = 'Chave do Pedido de Origem';
  mData_de_Emissao_do_Pedido = 'Data de Emissao do Pedido';
  mCodigo_do_Poduto = 'Código do Produto';
  mGrupo_de_Produto = 'Grupo de Produtos';
  


implementation

uses S_DM4, func_excecoes, StrUtils, S_Vendas_GravarPedido, Func2;

{$R *.dfm}

procedure TFrm_FatEmp_itens.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_FatEmp_itens.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_FatEmp',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_FatEmp_itens.CODCLIExit(Sender: TObject);
begin
if BBSAIR.Focused then
   exit;
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if trim(codcli.Text)='' then
   exit;
if not flcadcli(1,0,CODCLI.Text) then
   begin
   fmensagem('Cliente não Cadastrado!',0,['0'],0);
   CODCLI.SetFocus;
   exit;
   end
else
   begin
   NOMCLI.Text  :=DM1.Tb_CliCRAZAO.Value;
   if DM1.Tb_CliCCODVEN.Asfloat>0 then
      begin
      CODVEN.Text  :=DM1.Tb_CliCCODVEN.AsString;
      end;

   if fsonumero(CODVEN.Text)>0 then
      begin
      if flcadven(1,0,Trim(CODVEN.Text)) then
         NOMVEN.Text:=DM1.Tb_VenVNOME.Value;
      end;
   if DM1.Tb_CliCCODPV.asfloat>0 then
      begin
      CB_TABPV.Text:=DM1.Tb_CliCTABPV.Value;
      CODPV.Text   :=DM1.Tb_CliCCODPV.AsString;
      end;
   NOMPV.Text   :='';

   if fsonumero(CODPV.text)>0 then
      begin
      if flcadpv(1,0,CB_TABPV.Text,CODpv.Text) then
         begin
         NOMPV.Text:=DM1.Tb_PVPVNOME.Value;
         end;
      end;
   end;
flcaduf(0,0,0,DM1.Tb_CliCUF.AsString);

if (Trim(CODCLI.Text) = '') or (ValInt(CODCLI.Text) = 0) then
   NOMCLI.Text := '';
end;

procedure TFrm_FatEmp_itens.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2, StrToDate(MDT1.Text));
   except
      fmensagem('Data Inválida!',0,['0'],0);
      MDT1.SetFocus;
      end;
   end;
end;

procedure TFrm_FatEmp_itens.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2, StrToDate(MDT2.Text));
   except
      fmensagem('Data Inválida!',0,['0'],0);
      MDT2.SetFocus;
      exit;
      end;
   end;
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrTodate(MDT2.Text) then
      begin
      fmensagem('Data Final Maior que inicial. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      end;
   end;

end;

procedure TFrm_FatEmp_itens.FormCreate(Sender: TObject);
var
x: Integer;
begin
cb_separado.Items.clear;
cb_separado.Items.Add(mchave_do_pedido_de_origem);
cb_separado.Items.Add(mData_de_Emissao_do_Pedido);
cb_separado.Items.Add(mCodigo_do_Poduto);
cb_separado.Items.Add(mGrupo_de_Produto);
cb_separado.Items.Add('Nenhum');


tbsRelatorio.tabvisible:=false;
PageControl1.ActivePageIndex:=0;
Application.CreateForm(TFrm_PVO, form_pvo_fatemp);
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

cds_aliquotas.CreateDataSet;
//Tb_Ped02_pre.CreateDataSet;

mTabTemp_emp:='';

Qr_SelP1DATAP.DisplayFormat :=fdt2;
Qr_SelP1TOTALL.DisplayFormat:=mcasas;
Qr_PedQTDPED.DisplayFormat:=mcasqtd;
Qr_PedP2PRECO.DisplayFormat:=mcasaspu;
Qr_PedPRECO_UN_MEDIO.DisplayFormat:=mcasaspu;


(qr_resumo_produtos.fieldbyname('TOTAL_BRUTO') as TFloatField).Displayformat:=mcasas;
if flfilpad(-1,'_FATEMP','CB_AGRUPARITENS') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_AGRUPARITENS',[]) then
      cb_agruparitens.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
   end;

AgruparItens:=cb_agruparitens.Checked;

if flfilpad(0,'_FATEMP','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ORDEM',[]) then
      CB_ORDEM.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   end;
mfatemp_tipop_padrao:=1;

if flfilpad(-1,'_FATEMP','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_TIPO',[]) then
       mfatemp_tipop_padrao:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   end;

{if codusr <> 1111 then
   begin
   tbsRelatorio.TabVisible  :=False;
   tsConfigMaster.TabVisible:=false;
   end
else
   begin
   tbsRelatorio.TabVisible  :=True;
   tsConfigMaster.TabVisible:=true;
   end;}


CB_TIPO.Items.Clear;
for x:=0 to high(tab_tped)-1 do
   begin
   if (x=0) or (x=8) or (x=12) or (x=13) or (x=17) or (x=18)  then
      continue;
   if (x=1) and (DM1.Tb_PargerPDESTTIP1.AsInteger=0)  then
      begin
      CB_TIPO.Items.Add(tab_tped[x]);
      CB_TIPO.Text:=tab_tped[1];
      end
   else if (x=2) and (DM1.Tb_PargerPDESTTIP2.AsInteger=0)  then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=3) and (DM1.Tb_PargerPDESTTIP3.AsInteger=0)  then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=4) and (DM1.Tb_PargerPDESTTIP4.AsInteger=0)  then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=5) and (DM1.Tb_PargerPDESTTIP5.AsInteger=0)  then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=6) and (DM1.Tb_PargerPDESTTIP6.AsInteger=0)  then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=7) and (DM1.Tb_PargerPDESTTIP7.AsInteger=0)  then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=8) and (DM1.Tb_PargerPDESTTIP8.AsInteger=0)  then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=9) and (DM1.Tb_PargerPDESTTIP9.AsInteger=0)  then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=10) and (DM1.Tb_PargerPDESTTIP10.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=11) and (DM1.Tb_PargerPDESTTIP11.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=12) and (DM1.Tb_PargerPDESTTIP12.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=13) and (DM1.Tb_PargerPDESTTIP13.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=14) and (DM1.Tb_PargerPDESTTIP14.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=15) and (DM1.Tb_PargerPDESTTIP15.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=16) and (DM1.Tb_PargerPDESTTIP16.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=17) and (DM1.Tb_PargerPDESTTIP17.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=18) and (DM1.Tb_PargerPDESTTIP18.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=19) and (DM1.Tb_PargerPDESTTIP19.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=20) and (DM1.Tb_PargerPDESTTIP20.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=21) and (DM1.Tb_PargerPDESTTIP21.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=22) and (DM1.Tb_PargerPDESTTIP22.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=23) and (DM1.Tb_PargerPDESTTIP23.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=24) and (DM1.Tb_PargerPDESTTIP24.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=25) and (DM1.Tb_PargerPDESTTIP25.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=26) and (DM1.Tb_PargerPDESTTIP26.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=27) and (DM1.Tb_PargerPDESTTIP27.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=28) and (DM1.Tb_PargerPDESTTIP28.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x]);

   end;
CB_TIPO.Text:=tab_tped[mfatemp_tipop_padrao];
with CB_TIPO do ItemIndex:=Items.IndexOf(CB_TIPO.Text);

end;

procedure TFrm_FatEmp_itens.APLICARClick(Sender: TObject);
begin
if (trim(CODCLI.Text)='') and (Trim(CODCV.Text)='') then
   begin
   fmensagem('Favor Informar o Cliente!',0,['0'],0);
   exit;
   end;
if not fFatEmpSeleciona('P') then
   begin
   fmensagem('Nada encontrado na condição Acima!',0,['0'],0);
   exit;
   end;

//FAtualiza(0);
FATURAR.Enabled:=True;
SELECAO.Enabled:=True;
end;

procedure TFrm_FatEmp_itens.CODCLIEnter(Sender: TObject);
begin
FATURAR.Enabled:=False;
SELECAO.Enabled:=False;

end;

procedure TFrm_FatEmp_itens.SELECAOClick(Sender: TObject);
begin
fFatEmpSeleciona('P');

end;

procedure TFrm_FatEmp_itens.CANCELARClick(Sender: TObject);
begin
fFatEmpSeleciona(' ');

end;

procedure TFrm_FatEmp_itens.FATURARClick(Sender: TObject);
var
mqtd,y,x: Integer;
mtemfat: Boolean;
mvlrdes: Real;
mpDescAut: Real;
mpDescAut_codusr: Integer;
mCodCli_Emp: Real;
mMensagemDesconto: String;

begin
if ValFloat(CODVEN.Text)<=0 then
   begin

   fmensagem('Código do Vendedor tem que ser Preenchido!',0,['0'],0);
   if CODVEN.Enabled then
      CODVEN.SetFocus;
   exit;
   end;
if (Trim(CB_TABPV.Text)='') or (ValFloat(CODPV.Text)<=0) then
   begin
   fmensagem('Plano de Vendas tem que ser Preenchido!',0,['0'],0);
   CB_TABPV.SetFocus;
   exit;
   end;
mtemfat:=False;
mvlrdes:=0;

Qr_Sel.First;
While not Qr_Sel.Eof do
   begin
   if Qr_SelP1OK.AsString='P' then
      begin
      mtemfat:=True;
      break;
      end;
   Qr_sel.Next;
   end;
if (not mtemfat) or (edt_itens_selecionados.Value=0) then
   begin
   fmensagem('Para faturar tem que selecionar pelo menos um item!',0,['0'],0);
   exit;
   end;

if (valfloat(edt_percdesc.text)>0) or (valfloat(edt_valdesc.text)>0) then
   mMensagemDesconto:='Existe um desconto no valor de '+formatfloat(mcasas, edt_totalsel.value-valfloat(edt_totliq.Text))
    +' mesmo assim confirma o Faturamento?'
else
   mMensagemDesconto:='Confirma o Faturamento?';



if fMensagem(mMensagemDesconto,0,['1','2'],2)<>MrYes then
   exit;

// FAtualiza(0);

if (Qr_Ped.IsEmpty) and (Qr_Ser.IsEmpty) then
   begin
   fmensagem('Não Foi Encontrado nada ha ser faturado!',0,['0'],0);
   exit;
   end;


 fFaturarPedido_ultimo(0);
 fFatEmpSeleciona('P');
 edt_percdesc.Clear;
 edt_valdesc.Clear;
 edt_totliq.Clear;
 
end;


function tFrm_FatEmp_itens.fFaturarPedido_ultimo(pTipo: Integer):Boolean;
var
  mVenda_GP: TFrm_Vendas_GravarPedido;
  mQtdPed: Real;
  mDesconto: Real;
  mMensagemErros: String;
  mDadosPedOri: pDadosPedOri;
  mPedOri_SeqEve: Integer;

{  mChave_Fat: Real;
}
  Query_Cons:TQuery;

  query_exe: TQuery;

mItemPed: Integer;
    mPed_UF_Cli            : String;
    mPed_Cli_RazSoc        : String;
    mPed_Cli_ConsFin       : Boolean;
    mPed_Cli_ST            : Boolean;
    mPed_Cli_icmsnr        : Boolean;
    mPed_Cli_MotDes        : Integer;
    mPed_Cli_REDICMSNOR    : Boolean;
    mPed_CliCalcIPI        : Boolean;
    mSeq_Item: Integer;

    function fExisteRegistrosParaFaturamento: boolean;
    var
    mqtdsel: integer;
    query: tquery;
    mValidacao: String;
    begin
    mValidacao:='';

    Qr_Ped.DisableControls;
    Qr_Ped.First;
    While not Qr_Ped.Eof do
       begin
       if Qr_PedFATURAR.AsFloat>0 then
          mqtdsel:=mqtdsel+1;
       Qr_Ped.Next;
       end;
    Qr_Ped.EnableControls;
    if mqtdsel<=0 then
       begin
       mValidacao:=mValidacao+'Não ha produto definido para faturar!'+#13;
       result:=false;
       end
    else
       begin
       query:=tquery.create(nil);
       query.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
       query.sql.Add('Select P2CODPRO,P2QTD,P2ITEM,P2QTD AS QTD '
                       +',P2CHAVE,P2LOTSEQ,P2CODEMP,P2LOTE '
                       +' ,nvl( (select sum(POPEDORI_QTD) from CADP02_PEDORI,CADP01 where POPEDORI_CODEMP=P2CODEMP '
                       +'               and POPEDORI_CHAVE=P2CHAVE and POPEDORI_CHAVE_ANO=P2LOTSEQ '
                       +'               and POPEDORI_CODEMP=P2CODEMP and POPEDORI_ITEM=P2ITEM '
                       +' and P1CHAVE=POCHAVE and P1CODEMP=POCODEMP '
                       +' AND P1LOTSEQ=POCHAVE_ANO AND P1STATUS <'+mstatus_excluido

                       +'               ),0) as QTDFAT '
                       +'  from '+mTabTemp_emp+',CADP02 '
                       +'   WHERE P2CODEMP=CODEMP AND P2LOTSEQ=LOTSEQ AND P2CHAVE=CHAVE ');
       query.SQL.Text:='Select P2.*,QTD-QTDFAT AS FATURAR from ('
                         +query.text
                         +') p2 where QTD>QTDFAT ';

       try
           query.Open;
       except on e : exception do
          begin
          ex_erroSql_Novo(Query,762,'func '+E.Message ,'CADP02_pedori');
          result:=false;
          end;
          end;
       if query.IsEmpty then
          mValidacao:=mValidacao+'Não ha mercadorias pendentes para faturar!'+#13;
       query.close;
       freeandnil(query);
       end;
    if trim(mValidacao)<>'' then
       begin
       MessageDlg(mValidacao,mtError,[mbOk],0);
       result:=false;
       end
    else
       result:=true;
    end;


    function fIncluirCadp02_pedori(pDadosPedOri: pDadosPedOri): boolean;
    var
    query_pedori: TQuery;

    begin
       fGerarEvento('786 vai incluir cadp02');

    mPedOri_SeqEve:=mPedOri_SeqEve+1;
    pDadosPedOri.pPOSEQID         :=mPedOri_SeqEve;

    query_pedori :=TQuery.create(nil);
    query_pedori.DatabaseName:=DM1.SG_ASSOC.databasename;

    query_pedori.close;
    query_pedori.sql.clear;
    query_pedori.sql.add('Insert into CADP02_PEDORI ('
                     +'POCODEMP'
                     +',POCHAVE'
                     +',POCHAVE_ANO'
                     +',POTIPODOCUMENTO'
                     +',POITEM'
                     +',POSEQID'
                     +',POPEDORI_CODEMP'
                     +',POPEDORI_CHAVE'
                     +',POPEDORI_CHAVE_ANO'
                     +',POPEDORI_TIPODOCUMENTO'
                     +',POPEDORI_ITEM'
                     +',POPEDORI_QTD'
                     +',POPEDORI_LOTE'
                     +') values ('
                     +' :POCODEMP'
                     +',:POCHAVE'
                     +',:POCHAVE_ANO'
                     +',:POTIPODOCUMENTO'
                     +',:POITEM'
                     +',:POSEQID'
                     +',:POPEDORI_CODEMP'
                     +',:POPEDORI_CHAVE'
                     +',:POPEDORI_CHAVE_ANO'
                     +',:POPEDORI_TIPODOCUMENTO'
                     +',:POPEDORI_ITEM'
                     +',:POPEDORI_QTD'
                     +',:POPEDORI_LOTE'
                     +')');
    query_pedori.ParamByName('POCODEMP').AsInteger                  :=pDadosPedOri.pPOCODEMP;
    query_pedori.ParamByName('POCHAVE').AsInteger                   :=pDadosPedOri.pPOCHAVE;
    query_pedori.ParamByName('POCHAVE_ANO').AsInteger               :=pDadosPedOri.pPOCHAVE_ANO;
    query_pedori.ParamByName('POTIPODOCUMENTO').AsInteger           :=pDadosPedOri.pPOTIPODOCUMENTO;
    query_pedori.ParamByName('POITEM').AsInteger                    :=pDadosPedOri.pPOITEM;
    query_pedori.ParamByName('POSEQID').AsInteger                   :=pDadosPedOri.pPOSEQID;
    query_pedori.ParamByName('POPEDORI_CODEMP').AsInteger           :=pDadosPedOri.pPOPEDORI_CODEMP;
    query_pedori.ParamByName('POPEDORI_CHAVE').AsInteger            :=pDadosPedOri.pPOPEDORI_CHAVE;
    query_pedori.ParamByName('POPEDORI_CHAVE_ANO').AsInteger        :=pDadosPedOri.pPOPEDORI_CHAVE_ANO;
    query_pedori.ParamByName('POPEDORI_TIPODOCUMENTO').AsInteger    :=pDadosPedOri.pPOPEDORI_TIPODOCUMENTO;
    query_pedori.ParamByName('POPEDORI_ITEM').AsInteger             :=pDadosPedOri.pPOPEDORI_ITEM;
    query_pedori.ParamByName('POPEDORI_QTD').AsFloat                :=pDadosPedOri.pPOPEDORI_QTD;
    query_pedori.ParamByName('POPEDORI_LOTE').AsString              :=pDadosPedOri.pPOPEDORI_LOTE;
    try
        query_pedori.execsql;
    except on e : exception do
       begin
       ex_erroSql_Novo(Query_pedori,776,'func '+E.Message ,'CADP02_pedori');
       result:=false;
       end;
       end;
    query_pedori.close;
    freeandnil(query_pedori);
     fGerarEvento('786 incluiu no cadp02');

    end;


    function pIncluirProdutos(pQtd: Real): boolean;
    begin
       fGerarEvento('855 - vai faturar');

    tb_ped02_pre.Append;
    tb_ped02_preP2CODEMP.AsInteger :=mVenda_GP.mPed1_Codemp;
    tb_ped02_preP2LOTSEQ.AsInteger :=mVenda_GP.mPed1_Chave_ano;
    tb_ped02_preP2CHAVE.AsInteger  :=mVenda_GP.mPed1_Chave;
    tb_ped02_preP2ORDEM.AsInteger  :=01;
    tb_ped02_preP2ITEM.AsInteger   :=mItemPed;
    tb_ped02_preP2CODPRO.AsFloat   :=Qr_PedP2CODPRO.AsFloat;
    tb_ped02_preP2QTD.AsFloat      :=arredonda( pQtd, DM1.Tb_PargerPCASQTD.AsInteger) ;
    tb_ped02_preP2PRECO.AsFloat    :=arredonda( Qr_PedPRECO_UN_MEDIO.AsFloaT, mVenda_GP.mPed1_QtdDec);
    tb_ped02_preP2VALDES.AsFloat   :=Qr_PedP2TOTDES.AsFloat;
    tb_ped02_preP2CODVEN.AsInteger :=Qr_PedP2CODVEN.AsInteger;

    fDadosFiscais(Qr_PedP2CODPRO.AsFloat
                 ,mPed_UF_Cli
                 ,mPed_Cli_ConsFin
                 ,mPed_Cli_icmsnr
                 ,mPed_CliCalcIPI
                 ,mPed_Cli_REDICMSNOR
                 ,mPed_Cli_MotDes
                 ,tb_ped02_pre
                 ,cds_aliquotas);


    tb_ped02_preP2DESC_PERC01.AsFloat    :=Qr_PedP2DESC1.AsFloat;
    tb_ped02_preP2DESC_PERC02.AsFloat    :=Qr_PedP2DESC2.AsFloat;
    tb_ped02_preP2DESC_PERC03.AsFloat    :=Qr_PedP2DESC3.AsFloat;
    tb_ped02_pre.Post;
    fGerarEvento('884 vai cds');

    fverificaControleEspecial;

    mVenda_GP.fGravarItemCDS(0 // produto
                           ,0
                           ,2 // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta p2Estoque
                           ,mVenda_GP.mPed1_CodFP
                           ,0 //apenas calcular  tipo do evento 0-inclusao 1-alteracao 2-exclusao 3-calcular
                           ,0 //pSituacao: Integer;
                           ,'0'
                           ,mVenda_GP.mPed1_NomFP
                           ,mVenda_GP.mPed1_BaixaFP
                           ,pQtd  //pQtd_Cal
                           ,tb_ped02_preP2PRECO.AsFloat // pPrecoUnit_Cal
                           ,Qr_PedP2PCOTAB.AsFloat //,pPrecoTab_Cal
                           ,Qr_PedP2UCPR.AsFloat // pPrecoUCPR_Cal
                           ,Qr_PedP2PCOCUS.AsFloat // pPrecoCus_Cal
                           ,0 // pPrecoMax_Cal,
                           ,0
                           ,0
                           ,0
                           ,0
                           ,0
                           ,0
                           ,tb_ped02_pre);
    result:=true;

    end;



    function pSelecionadosProdutosParaFaturar: boolean;
    var
    query_ped02: TQuery;
        procedure pfecharlotes;
        begin
        query_ped02.close;
        freeandnil(query_ped02);
        end;
    var

    mqtdFalta: Real;
    mQtdPed: Real;
    mQtdFaturar: Real;
    begin


    mqtdFalta:=Qr_PedFATURAR.AsFloat;
    mQtdPed:=mqtdFalta;

    query_ped02:=TQuery.create(nil);
    query_ped02.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
    query_ped02.sql.Add('Select P2CODPRO,P2QTD,P2ITEM,P2QTD AS QTD '
                       +',P2CHAVE,P2LOTSEQ,P2CODEMP,P2LOTE '
                       +' ,nvl( (select sum(POPEDORI_QTD) from CADP02_PEDORI,CADP01 where POPEDORI_CODEMP=P2CODEMP '
                       +'               and POPEDORI_CHAVE=P2CHAVE and POPEDORI_CHAVE_ANO=P2LOTSEQ '
                       +'               and POPEDORI_CODEMP=P2CODEMP and POPEDORI_ITEM=P2ITEM '
                       +' and P1CHAVE=POCHAVE and P1CODEMP=POCODEMP '
                       +' AND P1LOTSEQ=POCHAVE_ANO AND P1STATUS <'+mstatus_excluido
                       +'               ),0) as QTDFAT '
                       +'  from '+mTabTemp_emp+',CADP02 '
                       +'   WHERE P2CODEMP=CODEMP AND P2LOTSEQ=LOTSEQ AND P2CHAVE=CHAVE '
                       +' AND P2CODPRO='+Qr_PedP2CODPRO.AsString);
    query_ped02.SQL.Text:='Select P2.*,QTD-QTDFAT AS FATURAR from ('
                         +query_ped02.SQL.text
                         +') p2 where QTD>QTDFAT ';
//    ex_erroSql_Novo(query_ped02,880,'func ' ,'CADP02');

    try
       query_ped02.Open;
    except on e : exception do
       begin
       pfecharlotes;
       ex_erroSql_Novo(query_ped02,880,'func '+E.Message ,'CADP02');
       result:=false;
       end;
       end;



    While (not query_ped02.eof) and (mqtdfalta>0) do
       begin
       if query_ped02.fieldbyname('FATURAR').Asfloat>mqtdFalta then
          mQtdFaturar:=mqtdFalta
       else
          mQtdFaturar:=query_ped02.fieldbyname('FATURAR').Asfloat;
       mDadosPedOri.pPOCODEMP        :=mVenda_GP.mPed1_Codemp;
       mDadosPedOri.pPOCHAVE         :=mVenda_GP.mped1_Chave;
       mDadosPedOri.pPOCHAVE_ANO     :=mVenda_GP.mPed1_Chave_ano;
       mDadosPedOri.pPOITEM          :=mItemPed;
       mDadosPedOri.pPOTIPODOCUMENTO := 0;
       mDadosPedOri.pPOPEDORI_CODEMP        :=query_ped02.fieldbyname('P2CODEMP').AsInteger;
       mDadosPedOri.pPOPEDORI_CHAVE         :=query_ped02.fieldbyname('P2CHAVE').AsInteger;
       mDadosPedOri.pPOPEDORI_CHAVE_ANO     :=query_ped02.fieldbyname('P2LOTSEQ').AsInteger;
       mDadosPedOri.pPOPEDORI_TIPODOCUMENTO := 0;
       mDadosPedOri.pPOPEDORI_ITEM          :=query_ped02.fieldbyname('P2ITEM').AsInteger;
       mDadosPedOri.pPOPEDORI_QTD           :=mQtdFaturar;
       mDadosPedOri.pPOPEDORI_LOTE          :='X';
       fIncluirCadp02_pedori(mDadosPedOri);
       fGerarEvento('978 ja incluiu');

       mqtdFalta:=mqtdFalta-mQtdFaturar;

       query_ped02.Next;
       end;
    fGerarEvento('978 finalizando');
    if mqtdFalta>0 then
       mQtdFaturar:=arredonda( (mQtdPed-mqtdFalta) ,3)
    else
       mQtdFaturar:=mQtdPed;
    if mQtdFaturar=0 then
       mMensagemErros:='Produto '+tb_ped02_preP2CODPRO.AsString+' '+tb_ped02_prePDNOME.AsString+' nao foi faturado!'+#13
    else
       begin
       if mQtdFaturar<>mQtdPed then
          mMensagemErros:='Produto '+tb_ped02_preP2CODPRO.AsString+' '+tb_ped02_prePDNOME.AsString+' deveria ter faturado '+FloatToStr(mQtdPed)
           +' porem faturou apenas '+FloatToStr(mQtdFaturar)+#13;
       fGerarEvento('990 vai incluir produto');

       if not pIncluirProdutos(mQtdFaturar) then
          result:=false;
       end;
    pfecharlotes;
    end;





    function pIncluirLotes: boolean;
    var
    query_lotes: TQuery;
    query_incluir: TQuery;
        procedure pfecharlotes;
        begin
        query_lotes.close;
        freeandnil(query_lotes);
        query_incluir.close;
        freeandnil(query_incluir);

        end;
    var

    mqtdFalta: Real;
    mQtdPed: Real;
    mQtdFaturar: Real;
    begin

    query_incluir:=TQuery.create(nil);
    query_incluir.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

    fGerarEvento('Vai incluir no lote 1013');

    mqtdFalta:=Qr_PedFATURAR.AsFloat;
    mQtdPed:=mqtdFalta;

    query_lotes:=TQuery.create(nil);
    query_lotes.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
    query_lotes.sql.Add('Select P2LM_CODPRO,P2LM_QTD,P2LM_ITEM,P2LM_LOTE,P2LM_DTVCTO,P2LM_DTFAB,P2LM_QTD AS QTD '
                       +',P2LM_CHAVE,P2LM_LOTSEQ,P2LM_CODEMP '
                       +' ,nvl( (select sum(POPEDORI_QTD) from CADP02_PEDORI,CADP01 where POPEDORI_CODEMP=P2LM_CODEMP '
                       +'               and POPEDORI_CHAVE=P2LM_CHAVE and POPEDORI_CHAVE_ANO=P2LM_LOTSEQ '
                       +'               and POPEDORI_CODEMP=P2LM_CODEMP and POPEDORI_ITEM=P2LM_ITEM '
                       +'               and POPEDORI_LOTE=NVL(P2LM_LOTE,'+QuotedStr('X')+') '

                       +' and P1CHAVE=POCHAVE and P1CODEMP=POCODEMP '
                       +' AND P1LOTSEQ=POCHAVE_ANO AND P1STATUS <'+mstatus_excluido

                       +'               ),0) as QTDFAT '
                       +'  from '+mTabTemp_emp+',CADP02_LOTES '
                       +'   WHERE P2LM_CODEMP=CODEMP AND P2LM_LOTSEQ=LOTSEQ AND P2LM_CHAVE=CHAVE '
                       +' AND P2LM_CODPRO='+Qr_PedP2CODPRO.AsString);
    query_lotes.SQL.Text:='Select P2.*,QTD-QTDFAT AS FATURAR from ('
                         +query_lotes.SQL.text
                         +') p2 where QTD>QTDFAT ';

    try
       query_lotes.Open;
    except on e : exception do
       begin
       pfecharlotes;
       ex_erroSql_Novo(query_lotes,974,'func '+E.Message ,'CADP02');
       result:=false;
       end;
       end;

    fGerarEvento('1044 vai entrar no while');

    While (not query_lotes.eof) and (mqtdfalta>0) do
       begin
       if query_lotes.fieldbyname('FATURAR').Asfloat>mqtdFalta then
          mQtdFaturar:=mqtdFalta
       else
          mQtdFaturar:=query_lotes.fieldbyname('FATURAR').Asfloat;
       mDadosPedOri.pPOCODEMP        :=mVenda_GP.mPed1_Codemp;
       mDadosPedOri.pPOCHAVE         :=mVenda_GP.mped1_Chave;
       mDadosPedOri.pPOCHAVE_ANO     :=mVenda_GP.mPed1_Chave_ano;
       mDadosPedOri.pPOITEM          :=mItemPed;
       mDadosPedOri.pPOTIPODOCUMENTO := 0;
       mDadosPedOri.pPOPEDORI_CODEMP :=query_lotes.fieldbyname('P2LM_CODEMP').AsInteger;
       mDadosPedOri.pPOPEDORI_CHAVE      :=query_lotes.fieldbyname('P2LM_CHAVE').AsInteger;
       mDadosPedOri.pPOPEDORI_CHAVE_ANO  :=query_lotes.fieldbyname('P2LM_LOTSEQ').AsInteger;
       mDadosPedOri.pPOPEDORI_TIPODOCUMENTO := 0;
       mDadosPedOri.pPOPEDORI_ITEM          :=query_lotes.fieldbyname('P2LM_ITEM').AsInteger;
       mDadosPedOri.pPOPEDORI_QTD           :=mQtdFaturar;
       mDadosPedOri.pPOPEDORI_LOTE          :=query_lotes.fieldbyname('P2LM_LOTE').AsString;
       fIncluirCadp02_pedori(mDadosPedOri);
       fGerarEvento('1078 ja incluiu');





       query_incluir.close;
       query_incluir.SQL.Clear;
       query_incluir.SQL.Add('Insert into CADP02_LOTES ('
                        +'P2LM_CODEMP, '
                        +'P2LM_LOTSEQ, '
                        +'P2LM_CHAVE, '
                        +'P2LM_ITEM, '
                        +'P2LM_CODPRO, '
                        +'P2LM_LOTE, '
                        +'P2LM_DTFAB, '
                        +'P2LM_DTVCTO, '
                        +'P2LM_QTD, '
                        +'P2LM_QTDDEV '

                        +') values ('
                        +':P2LM_CODEMP, '
                        +':P2LM_LOTSEQ, '
                        +':P2LM_CHAVE, '
                        +':P2LM_ITEM, '
                        +':P2LM_CODPRO, '
                        +':P2LM_LOTE, '
                        +':P2LM_DTFAB, '
                        +':P2LM_DTVCTO, '
                        +':P2LM_QTD, '
                        +':P2LM_QTDDEV '
                        +')');

       fGerarEvento('1119 vai colocar parametros');
       query_incluir.ParamByName('P2LM_CODEMP').AsInteger :=mVenda_GP.mPed1_Codemp;
       query_incluir.ParamByName('P2LM_LOTSEQ').AsInteger :=mVenda_GP.mPed1_Chave_ano;
       query_incluir.ParamByName('P2LM_CHAVE').AsFloat    :=mVenda_GP.mPed1_Chave;
       query_incluir.ParamByName('P2LM_ITEM').AsInteger   :=mItemPed;
       fGerarEvento('1124 incluiu 4 parametros');
       mcinst2:='';
       try

          mcinst2:=query_lotes.fieldbyname('P2LM_CODPRO').AsString;
          query_incluir.ParamByName('P2LM_CODPRO').AsFloat   :=fsonumero(query_lotes.fieldbyname('P2LM_CODPRO').AsString);
       except on e : exception do
          begin
          fGerarEvento('1130 '+' mcinst '+mcinst2+' '+ e.Message);
          end;
          end;

       fGerarEvento('1125 incluiu 4 parametros');
       try
          mcinst2:=query_lotes.fieldbyname('P2LM_LOTE').asstring;
          query_incluir.ParamByName('P2LM_LOTE').AsString    :=query_lotes.fieldbyname('P2LM_LOTE').asstring;
       except on e : exception do
          begin
          fGerarEvento('1126 '+' mcinst '+mcinst2+' '+ e.Message);

          end;
          end;

       fGerarEvento('1126 incluiu 4 parametros');
       query_incluir.ParamByName('P2LM_DTFAB').AsDateTime :=query_lotes.fieldbyname('P2LM_DTFAB').AsDateTime;
       fGerarEvento('1127 incluiu 4 parametros');
       query_incluir.ParamByName('P2LM_DTVCTO').AsDateTime:=query_lotes.fieldbyname('P2LM_DTVCTO').AsDateTime;
       fGerarEvento('1128 incluiu 4 parametros');
       query_incluir.ParamByName('P2LM_QTD').AsFloat      :=mQtdFaturar;
       fGerarEvento('1129 incluiu 4 parametros');
       query_incluir.ParamByName('P2LM_QTDDEV').AsFloat   :=0;
       fGerarEvento('1130 incluiu 4 parametros');

       try
          query_incluir.ExecSQL;
         fGerarEvento('1148 executour quer_exe');

          fdm1StartCommit;
       except
          end;
       mqtdFalta:=mqtdFalta-mQtdFaturar;


       query_lotes.Next;
       end;
    if mqtdFalta>0 then
       mQtdFaturar:=arredonda( (mQtdPed-mqtdFalta) ,3)
    else
       mQtdFaturar:=mQtdPed;
    if mQtdFaturar=0 then
       mMensagemErros:='Produto '+tb_ped02_preP2CODPRO.AsString+' '+tb_ped02_prePDNOME.AsString+' nao foi faturado!'+#13
    else
       begin
       if mQtdFaturar<>mQtdPed then
          mMensagemErros:='Produto '+tb_ped02_preP2CODPRO.AsString+' '+tb_ped02_prePDNOME.AsString+' deveria ter faturado '+FloatToStr(mQtdPed)
           +' porem faturou apenas '+FloatToStr(mQtdFaturar)+#13;
       if not pIncluirProdutos(mQtdFaturar) then
          result:=false;
       end;
    pfecharlotes;
    end;



       procedure fAtualizarStatusdosPedidosdeOrigem;
       var
       query_atuorigem: tquery;
       mStatus: Integer;

           function fFaturouTudo: boolean;
           var
           query_fat: tquery;
           begin
           query_fat:=tquery.create(nil);
           query_fat.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
           query_fat.sql.Add('Select P2CODPRO,P2QTD,P2ITEM,P2QTD AS QTD '
                       +',P2CHAVE,P2LOTSEQ,P2CODEMP,P2LOTE '
                       +' ,nvl( (select sum(POPEDORI_QTD) from CADP02_PEDORI,CADP01 where POPEDORI_CODEMP=P2CODEMP '
                       +'               and POPEDORI_CHAVE=P2CHAVE and POPEDORI_CHAVE_ANO=P2LOTSEQ '
                       +'               and POPEDORI_CODEMP=P2CODEMP and POPEDORI_ITEM=P2ITEM '
                       +' and P1CHAVE=POCHAVE and P1CODEMP=POCODEMP '
                       +' AND P1LOTSEQ=POCHAVE_ANO AND P1STATUS <'+mstatus_excluido

                       +'               ),0) as QTDFAT '
                       +'  from '+mTabTemp_emp+',CADP02 '
                       +'   WHERE P2CODEMP=CODEMP AND P2LOTSEQ=LOTSEQ AND P2CHAVE=CHAVE '
                       +' and CODEMP=:CODEMP AND LOTSEQ=:LOTSEQ AND CHAVE=:CHAVE '
                       );
           query_fat.ParamByName('CODEMP').AsInteger:=Qr_SelP1CODEMP.AsInteger;
           query_fat.ParamByName('LOTSEQ').AsInteger:=Qr_SelP1LOTSEQ.AsInteger;
           query_fat.ParamByName('CHAVE').AsInteger:=Qr_SelP1CHAVE.AsInteger;
           query_fat.SQL.Text:='Select P2.*,QTD-QTDFAT AS FATURAR from ('
                         +query_fat.sql.text
                         +') p2 where QTD>QTDFAT ';

           try
              query_fat.Open;
           except on e : exception do
              begin
              ex_erroSql_Novo(query_fat,776,'func '+E.Message ,'CADP02');
              result:=false;
              end;
              end;
           result:=query_fat.IsEmpty;
           query_fat.Close;
           freeandnil(query_fat);
           end;


       begin
       query_atuorigem:=tquery.create(nil);
       query_atuorigem.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

       Qr_Sel.DisableControls;
       Qr_Sel.First;
       While not Qr_Sel.Eof do
          begin
         if Qr_SelP1OK.AsString<>'P' then
            begin
            Qr_Sel.Next;
            Continue;
            end;


          la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
          query_atuorigem.Close;
          query_atuorigem.Sql.Clear;
          query_atuorigem.Sql.add('Update CADP01 set  P1SEMCOM=8 ');
          if fFaturouTudo then
             mStatus:=9
          else
             mStatus:=0;
          if mStatus=9 then
             query_atuorigem.sql.add(', P1STATUS=9 ');
          query_atuorigem.sql.add(', P1USRMOD=0'+IntTostr(codusr)+','
                            +' P1DTMOD=sysdate '
                            +' ,P1HRMOD='+chr(39)+FormatDateTime(fhr, time)+chr(39)+','
                            +' P1MOTIVO='+chr(39)+'Resumido/Faturado no Pedido: '+FloattoStr(mchave_fat)+'. '+chr(39)
                            +'  where '+iif(la_empresas='','',la_empresas+' and ')
                            +' P1LOTSEQ=0'+Qr_SelP1LOTSEQ.AsString
                            +' and P1CHAVE=0'+Qr_SelP1CHAVE.AsString);
          Try
             query_atuorigem.ExecSQL;
             fdm1StartCommit;
           except on e : exception do
              begin
              ex_erroSql_Novo(query_atuorigem,1206,'func '+E.Message ,'CADP02');
              result:=false;
              end;
              end;
          la_Empresas:=fEmpresas_Selecionadas('CADP02','P2CODEMP',Form_SelEmp.CLB_EMPRESAS);
          if mStatus=9 then
             begin
             query_atuorigem.Close;
             query_atuorigem.Sql.Clear;
             query_atuorigem.Sql.add('Update CADP02 set P2STATUS=9 '
                            +'  where '+iif(la_empresas='','',la_empresas+' and ')
                            +' P2LOTSEQ=0'+Qr_SelP1LOTSEQ.AsString
                            +' and P2CHAVE=0'+Qr_SelP1CHAVE.AsString);
             Try
                query_atuorigem.ExecSQL;
                fdm1StartCommit;
             except on e : exception do
                begin
                ex_erroSql_Novo(query_atuorigem,1224,'func '+E.Message ,'CADP02');
                result:=false;
                end;
                end;
             end;
          Qr_Sel.Next;
          end;
       Qr_Sel.EnableControls;
       query_atuorigem.close;
       freeandnil(query_atuorigem);

       end;
 {
       if Log_TipoLote=1 then
          begin
          la_Empresas:=fEmpresas_Selecionadas('CADP02_LOTES','P2LM_CODEMP',Form_SelEmp.CLB_EMPRESAS);

          query_atuorigem.Close;
          query_atuorigem.Sql.Clear;
          query_atuorigem.Sql.add('Delete from CADP02_LOTES  '
                            +'  where '+iif(la_empresas='','',la_empresas+' and ')
                            +' P2LM_LOTSEQ=0'+IntToStr(ls_numped)
                            +' and P2LM_CHAVE=0'+FloatToStr(mChave_Fat));

          Try
             query_atuorigem.ExecSQL;
             fdm1StartCommit;
          except
             ex_erroSql(01,1869,'form_ped_fatemp','CADP02');
             end;



          la_Empresas:=fEmpresas_Selecionadas('CADP02','P2CODEMP',Form_SelEmp.CLB_EMPRESAS);
          Query_Cons.Close;
          Query_Cons.SQL.Clear;
          Query_Cons.SQL.Add('Select P2CODEMP,P2ITEM,P2CODPRO,P2LOTSEQ,P2CHAVE from CADP02 WHERE '
                            +iif(la_empresas='','',la_empresas+' and ')
                            +' P2LOTSEQ=0'+IntToStr(ls_numped)
                            +' and P2CHAVE=0'+FloatToStr(mChave_Fat)
                            +' order by P2ITEM ');
          try
             Query_Cons.Open;
          except
             ex_erroSql_novo(query_cons,1869,'form_ped_fatemp','CADP02');
             end;


          While not Query_Cons.Eof do
             begin
             la_instrucao:='P1CODEMP=CODEMP AND P1LOTSEQ=LOTSEQ AND P1CHAVE=CHAVE AND P1ORDEM=ORDEM ';

             la_tabelas  :='';
             la_Join     :='';
             la_instrucao:='P2LM_CODEMP=CODEMP AND P2LM_LOTSEQ=LOTSEQ AND P2LM_CHAVE=CHAVE ';

             query_atuorigem.Close;
             query_atuorigem.Sql.Clear;
             query_atuorigem.SQL.Add('Insert into CADP02_LOTES ('
                                +'P2LM_CODEMP '
                                +',P2LM_CODPRO '
                                +',P2LM_LOTSEQ '
                                +',P2LM_CHAVE '
                                +',P2LM_ITEM '
                                +',P2LM_LOTE '
                                +',P2LM_DTVCTO '
                                +',P2LM_QTD '
                                +',P2LM_QTDDEV ) '
                                +' Select '+ Query_Cons.FieldbyName('P2CODEMP').AsString
                                +',max(P2LM_CODPRO) '
                                +','+ Query_Cons.FieldbyName('P2LOTSEQ').AsString
                                +','+ Query_Cons.FieldbyName('P2CHAVE').AsString
                                +','+ Query_Cons.FieldbyName('P2ITEM').AsString


                                +',P2LM_LOTE '
                                +',P2LM_DTVCTO '
                                +',sum(P2LM_QTD) '
                                +',0 AS P2LM_QTDDEV '
                                +' from '+mTabTemp_emp+',CADP02_LOTES'+iif(la_tabelas='','',',')+la_tabelas
                                +'       '+la_Join
                                +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                                +' P2LM_CODPRO=:CODPRO '
                                +' group by P2LM_LOTE,P2LM_DTVCTO ,NVL(P2LM_SEQ,0) '

                                );

             query_atuorigem.ParamByName('CODPRO').AsFloat:=Query_Cons.FieldbyName('P2CODPRO').AsFloat;


             try
                query_atuorigem.ExecSQL;
                fdm1StartCommit;
             except
                end;
             Query_Cons.Next;
             end;
          end;
}

begin

if not fExisteRegistrosParaFaturamento then
   exit;

mMensagemErros:='';

try
    Application.CreateForm(TFrm_Vendas_GravarPedido,mVenda_GP);
    cds_aliquotas.EmptyDataSet;
    fParametrosAliquotas(fsonumero(CODCLI.Text)
    ,0 // tipo do pedido
    ,mPed_UF_Cli
    ,mPed_Cli_RazSoc
    ,mVenda_GP.mPd_EstNor
    ,mVenda_GP.mPd_EstCons
    ,mVenda_GP.mPd_EstTerc
    ,mVenda_GP.mPd_EstVenda
    ,mPed_Cli_MotDes
    ,mPed_Cli_ConsFin
    ,mPed_CliCalcIPI
    ,mPed_Cli_ST
    ,mPed_Cli_REDICMSNOR
    ,mPed_Cli_icmsnr
    ,cds_aliquotas);


    mVenda_GP.mPed1_Codemp:=1;
    mvenda_gp.mped1_Chave:=0;
    mVenda_GP.mPed1_CodCli:=fsonumero(CODCLI.Text);
    mVenda_GP.mPed1_Datap :=StrToDate(FormatDateTime('dd/mm/yyyy',Now));
    mVenda_GP.mPed1_Tipo_Ped:=0;
    mVenda_GP.mPed1_CodFP:=0;
    mVenda_GP.mPed1_NomFP:='';
    if fLerGenerico_query('CADFP','FPDESC,FPCODIGO',' 1=1 ORDER BY FPCODIGO ',query_consulta) then
       begin
       mVenda_GP.mPed1_CodFP:=query_consulta.fieldbyname('FPCODIGO').AsInteger;
       mVenda_GP.mPed1_NomFP:=query_consulta.fieldbyname('FPDESC').AsString;
       end;



    mVenda_GP.mPed1_BaixaFP:='N';
    mVenda_GP.mPed1_CodPV:=1;
    mVenda_GP.mPed1_PvaCtd:=0;
    mVenda_GP.mPed1_TabPV:='AV';
    mVenda_GP.mPed1_TpComis:=0;
    mVenda_GP.mPed1_Codven:=valint(codven.Text);
    mVenda_GP.mped1_submod_grav:=0;
    mVenda_GP.mPed1_cfop1:=5101;
    mVenda_GP.mPed1_cfop2:=5101;

    mVenda_GP.mPed1_Frete_CIFFOB :=DM1.Tb_CliCFRETEPC.AsInteger;
    if mVenda_GP.mPed1_Frete_CIFFOB<0 then
      mVenda_GP.mPed1_Frete_CIFFOB:=0;
    mVenda_GP.mPed1_CodTra:=0;

    mVenda_GP.mPed1_AjustaFP:='S';

    if not flcadpv(1,0,CB_TABPV.Text,CODpv.Text) then
      flcadpv(1,0,'AV','01');
    mVenda_GP.mPed1_CodPV:=DM1.Tb_PVPVCODPV.AsInteger;
    mVenda_GP.mPed1_PvaCtd:=DM1.Tb_PVPVACTD.AsFloat;
    mVenda_GP.mPed1_TabPV:=DM1.Tb_PVPVCODTIP.asString;
    mVenda_GP.mPed1_TpComis:=DM1.Tb_PVPVTPC.AsInteger;
    mVenda_GP.mped1_tppco:=2; // preco extra;
    mVenda_GP.mPed1_Tabela:='1';
    flcadpv2('1',DM1.Tb_PVPVCODTIP.AsString,DM1.Tb_PVPVCODPV.AsString);

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
    mVenda_GP.mPed1_Codcv       :=valint(CODCV.Text);
    mVenda_GP.mPed1_pDesc01     :=ValFloat(edt_percdesc.Text);
    mVenda_GP.mPed1_Desc_Rateado:=ValFloat(edt_valdesc.Text);
    mVenda_GP.mPed1_CodBco1     :=valint(edt_codbco.Text);
    mVenda_GP.mPed1_CodBco101   :=valint(edt_codbco.Text);

    edt_codfp.Text:=fdeixanum(edt_codfp.Text);
    if fLCadFP(0,edt_codfp.Text,'') then
       begin
       mVenda_GP.mPed1_CodFP:=valint(edt_codfp.Text);
       mVenda_GP.mPed1_CodFp_Vinculo:=DM1.Tb_FPFPVINCULO.AsInteger;
       mVenda_GP.mPed1_nomfp:=DM1.Tb_FPFPDESC.AsString;
       mVenda_GP.mPed1_BaixaFP:='N';
       mVenda_GP.mPed1_QtdParc_ant:=-1;
       end;




    mVenda_GP.mPed1_QtdDec:=DM1.Tb_PargerPCASASPU.AsInteger;


    mVenda_GP.mped1_npedori1 :=mchaves1;
    mVenda_GP.mped1_npedori2 :=mchaves2;

    mVenda_GP.fGravarPed01(0,0);

    query_exe:=TQuery.Create(self);
    query_exe.DatabaseName:='SG_ASSOC';

    Qr_Ped.First;
    mItemPed:=0;
    tb_ped02_pre.CreateDataSet;
    Tb_Ped02_pre.EmptyDataSet;

    While not Qr_Ped.Eof do
       begin
       mPedOri_SeqEve:=0;
       fGerarEvento('772');
       if Qr_PedFATURAR.AsFloat>0 then
          begin
          mItemPed:=mItemPed+1; // se nao incluir voltar 1
          if (Log_TipoLote=1) then
             begin
             pIncluirLotes;
             end
          else
             begin
             pSelecionadosProdutosParaFaturar;
             end;
          end;   
       Qr_Ped.Next;
       end;
    tb_ped02_pre.Close;


    Query_Cons:=TQuery.Create(nil);
    Query_Cons.DatabaseName:='SG_ASSOC';


//    mDesconto:=mVenda_GP.mPed1_Totall-edt_totalsel.Value;
    mVenda_GP.mPed1_Desc_Rateado:=ValFloat(edt_valdesc.Text);
{    if mvenda_gp.mPed1_Desc_Rateado>0 then
       begin

       mVenda_GP.fGravarItem(0 // produto
                            ,0
                            ,0 //p2Estoque
                            ,mVenda_GP.mPed1_CodFP
                            ,3 //apenas calcular
                            ,0 //pSituacao: Integer;
                            ,''
                            ,mVenda_GP.mPed1_NomFP
                            ,mVenda_GP.mPed1_BaixaFP
                            ,0 //pQtd_Cal
                            ,0 // pPrecoUnit_Cal
                            ,0 //,pPrecoTab_Cal
                            ,0 // pPrecoUCPR_Cal
                            ,0 // pPrecoCus_Cal
                            ,0 // pPrecoMax_Cal,
                            ,0 // qtd mQtd_Ant
                            ,0 // valfloat(edt_valseg.Text)
                            ,0 // ValFloat(edt_valfre.Text)
                            ,0 // iif(mVenda_GP.mPed1_Codemp>100,ValFloat(edt_tarban_101.Text),ValFloat(edt_tarban1.Text))
                            ,0 //  valfloat(edt_despAces.Text)
                            ,mvenda_gp.mPed1_Desc_Rateado
                            ,nil);


       end;
 }
    if (valfloat(edt_percdesc.Text)>0)  or ( mvenda_gp.mPed1_Desc_Rateado>0)  then
       begin
       mVenda_GP.mPed1_pDesc01_Ant   :=-1;
       mVenda_GP.mPed1_pDesc02_Ant   :=-1;
       mVenda_GP.mPed1_pDesc03_Ant   :=-1;
       mVenda_GP.mPed1_QtdParc_ant:=mVenda_GP.mPed1_QtdParc;



       mVenda_GP.fGravarItem(0 // produto
                        ,0 // mitem_ant
                        ,0 //p2Estoque
                        ,mVenda_GP.mPed1_CodFP
                        ,3 //apenas calcular
                        ,0 //pSituacao: Integer;
                        ,'' // mCodpro_Ant
                        ,'' // mVenda_GP.mPed1_NomFP
                        ,'' //  mVenda_GP.mPed1_BaixaFP
                        ,0 //pQtd_Cal
                        ,0 // pPrecoUnit_Cal
                        ,0 //,pPrecoTab_Cal
                        ,0 // pPrecoUCPR_Cal
                        ,0 // pPrecoCus_Cal
                        ,0 // pPrecoMax_Cal,
                        ,0 // mQtd_Ant
                        ,0 // mValSeg
                        ,0 //  mValfre
                        ,0 // iif(mVenda_GP.mPed1_Codemp>100,ValFloat(edt_tarban_101.Text),ValFloat(edt_tarban1.Text))
                        ,0 // mOutDesp
                        ,mvenda_gp.mPed1_Desc_Rateado
                        ,nil);


       end;

    mChave_Fat := mVenda_GP.mPed1_Chave;

    if mChave_Fat<>0 then
       begin
       la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

       query_exe.Close;
       query_exe.SQL.Clear;
       query_exe.SQL.add('Update CADP01 set P1ORIGEM_DEOUTRO='+QuotedStr('S')+', P1TIPO=0'+IntToStr(mfatemp_tipop_padrao)
                         +' where '+iif(la_Empresas='','',la_empresas+' and ')
                         +' P1LOTSEQ=0'+IntToStr(ls_numped)
                         +' and P1CHAVE=0'+FloatToStr(mChave_Fat));
       Try
          query_exe.ExecSQL;
          fdm1StartCommit;
       except on e : exception do
          begin
          ex_erroSql_Novo(query_exe,1497,'func '+E.Message ,'CADP02');
          result:=false;
          end;
          end;

       fAtualizarStatusdosPedidosdeOrigem;

       fmensagem('Concluido!. Chave do Pedido: '+FloatTostr(mchave_fat),0,['0'],0);
       end;

    // termino

    Qr_Sel.Close;
except on e : exception do
   begin
   Messagedlg('Erro ao faturar emprestimo'+e.message,mterror,[mbOk],0);
   end;
   end;
{CODCLI.Text:='';
NOMCLI.Text:='';
}
SELECAO.Enabled:=False;
FATURAR.Enabled:=False;

if query_cons<>nil then
   freeandnil(Query_Cons);
if query_exe<>nil then
   freeandnil(Query_exe);
FreeAndNil(mVenda_GP);

// termino
end;


{
function tFrm_fatEmp.fFaturarPedido_ultimo(pTipo: Integer):Boolean;
var
  mVenda_GP: TFrm_Vendas_GravarPedido;
  mChave_Fat: Real;
  mDesconto: Real;
  query_exe: TQuery;
  Query_Cons:TQuery;

begin

Application.CreateForm(TFrm_Vendas_GravarPedido,mVenda_GP);
mForm_Ped.mProcessamento_Externo:=true;
mForm_Ped.Show;

mForm_Ped.sbnIncluirClick(self);
mForm_Ped.edt_codcli.Text:=codcli.Text;

mForm_Ped.edt_codven.Text:=CODVEN.Text;
mForm_Ped.edt_codvenExit(self);

mForm_Ped.cb_tipoped.Text:=tab_tped_mov[0,00];
mForm_Ped.cb_tipopedExit(self);

if flcadpv(1,0,CB_TABPV.Text,CODpv.Text) then
  mForm_Ped.edt_codCondPag.Text:=DM1.Tb_PVPVCODTIP.AsString+DM1.Tb_PVPVCODPV.AsString;
mForm_Ped.edt_codCondPagExit(self);

Query_Cons:=TQuery.Create(nil);
Query_Cons.DatabaseName:='SG_ASSOC';

if Qr_SelP1CODEMP.AsFloat>0 then
   mform_ped.edt_submod.Text:='100'
else
   mform_ped.edt_submod.Text:='000';

mForm_Ped.pcCabecalho.ActivePage:=mForm_Ped.tsCabecalho;
mForm_Ped.cb_tppco.ItemIndex:=2;

mForm_Ped.edt_pedori1.Text    :=mchaves1;
mForm_Ped.edt_pedori1Exit(Self);
mForm_Ped.edt_pedori2.Text    :=mchaves2;
mForm_Ped.edt_pedori2Exit(Self);
mForm_Ped.cb_leitor.Checked:=False;

mForm_Ped.edt_codcliExit(self);

// inicio
Qr_Sel.First;
While not Qr_Sel.Eof do
   begin
   if (Log_TipoLote=1) and (DM1.Tb_PargerPFORPEDPAD.AsInteger=3) then
      begin

      Query_Cons.Close;
      Query_Cons.SQL.Clear;
      Query_Cons.SQL.Add('Select count(*) from CADP02_LOTES '
                     +' where P2LM_CHAVE=0'+Qr_SelP1CHAVE.AsString
                     +' AND P2LM_LOTSEQ=0'+Qr_SelP1LOTSEQ.AsString
                     +' AND P2LM_CODEMP=0'+Qr_SelP1CODEMP.AsString);
      try
         Query_Cons.Open;
         if Query_Cons.fields[0].AsInteger<1 then
            mForm_Ped.fincluirLotes(Qr_SelP1CHAVE.AsInteger
                 ,Qr_SelP1LOTSEQ.AsInteger
                 ,Qr_SelP1CODEMP.AsInteger,Qr_SelP1CODEMP.AsInteger);
      except
         ex_erroSql_Novo(Query_Cons,13577,'func','CADPFP');
         end;
      end;
   Qr_Sel.Next;
   end;   

// termino



Qr_Ped.First;

While not Qr_Ped.Eof do
  begin
  if Qr_PedQUANT.Value<=0 then
     begin
     Qr_Ped.Next;
     Continue;
     end;
  mForm_Ped.Tb_Ped02_pre.Append;
  mForm_Ped.Tb_Ped02_preP2CODPRO.AsString :=Qr_PedP2CODPRO.AsString;
  mForm_Ped.fValidarDigitacaoItem;
  mForm_Ped.Tb_Ped02_preP2PRECO.Value  :=Arredonda( Qr_PedP2PRECO.AsFloat,DM1.Tb_PargerPCASASPU.AsInteger+1);
  mForm_Ped.Tb_Ped02_preP2QTD.Value    :=Arredonda( Qr_PedQUANT.Value,DM1.Tb_PargerPCASAS.AsInteger+1);
  mform_ped.Tb_Ped02_preP2CODVEN.Value         :=Qr_PedP2CODVEN.Value;
  mForm_Ped.Tb_Ped02_preP2DESC_PERC01.Value    :=Qr_PedP2DESC1.Value;
  mForm_Ped.Tb_Ped02_preP2DESC_PERC02.Value    :=Qr_PedP2DESC2.Value;
  mForm_Ped.Tb_Ped02_preP2DESC_PERC03.Value    :=Qr_PedP2DESC3.Value;
  mForm_Ped.Tb_Ped02_preP2CODVEN.Value         :=Qr_PedP2CODVEN.Value;
  mForm_Ped.Tb_Ped02_preP2AMBIENTE.Value       :=Qr_PedP2AMBIENTE.Value;
  mForm_Ped.Tb_Ped02_preP2DESC_COMP.Value      :=Qr_PedP2COMPLEMENTO.Value;
  mForm_Ped.Tb_Ped02_pre.Post;
  Qr_Ped.Next;
  end;
mDesconto:=valfloat(mForm_Ped.edt_totliq.Text)-edt_totalsel.Value;
if mDesconto>0 then
   begin
   mForm_Ped.edt_desc_valor.Text:=formatfloat(mcasas, mDesconto);
   mForm_Ped.edt_desc_valorExit(Self);
   end;
//********************* servicos *******************************************
if  (xTotalDesc01<>0) or (xTotalDesc02<>0) or (xTotalDescvlr<>0) then
   mForm_Ped.edt_desc_valor.Text :=FloatToStr(xTotalDescvlr+xTotalDesc02 );

mChave_Fat := fSonumero(mForm_Ped.edt_chave.Text);

//Qr_Sel.Close;
mForm_Ped.mped_Alterou_Cab:=false;

mForm_Ped.sbnGravarClick(self);
//fmensagem('Concluido!. Chave do Pedido: '+FloatTostr(mchave_fat),0,['0'],0);

// inicio

if mChave_Fat<>0 then
   begin
   query_exe:=TQuery.Create(self);
   query_exe.DatabaseName:='SG_ASSOC';
   la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

   query_exe.Close;
   query_exe.SQL.Clear;
   query_exe.SQL.add('Update CADP01 set P1TIPO=0'+IntToStr(mfatemp_tipop_padrao)
                     +' where '+iif(la_Empresas='','',la_empresas+' and ')
                     +' P1LOTSEQ=0'+IntToStr(ls_numped)
                     +' and P1CHAVE=0'+FloatToStr(mChave_Fat));
   Try
      query_exe.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,711,'Frm_FatEmp','CADP01');
      end;
   Qr_Sel.First;
   While not Qr_Sel.Eof do
      begin
      if Qr_SelP1OK.AsString<>'P' then
         begin
         Qr_Sel.Next;
         Continue;
         end;
      la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

      query_exe.Close;
      query_exe.Sql.Clear;
      query_exe.Sql.add('Update CADP01 set P1STATUS=9, P1SEMCOM=8, '
                        +' P1USRMOD=0'+IntTostr(codusr)+','
                        +' P1DTMOD='+chr(39)+FormatDatetime(fdt,pdatasis)+chr(39)+','
                        +' P1HRMOD='+chr(39)+FormatDateTime(fhr, time)+chr(39)+','
                        +' P1MOTIVO='+chr(39)+'Resumido/Faturado no Pedido: '+FloattoStr(mchave_fat)+'. '+chr(39)
                        +'  where '+iif(la_empresas='','',la_empresas+' and ')
                        +' P1LOTSEQ=0'+Qr_SelP1LOTSEQ.AsString
                        +' and P1CHAVE=0'+Qr_SelP1CHAVE.AsString);
      Try
         query_exe.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,733,'Frm_FatEmp','CADP01');
         end;
      la_Empresas:=fEmpresas_Selecionadas('CADP02','P2CODEMP',Form_SelEmp.CLB_EMPRESAS);

      query_exe.Close;
      query_exe.Sql.Clear;
      query_exe.Sql.add('Update CADP02 set P2STATUS=9 '
                        +'  where '+iif(la_empresas='','',la_empresas+' and ')
                        +' P2LOTSEQ=0'+Qr_SelP1LOTSEQ.AsString
                        +' and P2CHAVE=0'+Qr_SelP1CHAVE.AsString);
      Try
         query_exe.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,11391,'form_ped_fatemp','CADP01');
         end;
      Qr_Sel.Next;
      end;
   if Log_TipoLote=1 then
      begin
      la_Empresas:=fEmpresas_Selecionadas('CADP02_LOTES','P2LM_CODEMP',Form_SelEmp.CLB_EMPRESAS);

      query_exe.Close;
      query_exe.Sql.Clear;
      query_exe.Sql.add('Delete from CADP02_LOTES  '
                        +'  where '+iif(la_empresas='','',la_empresas+' and ')
                        +' P2LM_LOTSEQ=0'+IntToStr(ls_numped)
                        +' and P2LM_CHAVE=0'+FloatToStr(mChave_Fat));

      Try
         query_exe.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,1869,'form_ped_fatemp','CADP02');
         end;



      la_Empresas:=fEmpresas_Selecionadas('CADP02','P2CODEMP',Form_SelEmp.CLB_EMPRESAS);
      Query_Cons.Close;
      Query_Cons.SQL.Clear;
      Query_Cons.SQL.Add('Select P2CODEMP,P2ITEM,P2CODPRO,P2LOTSEQ,P2CHAVE from CADP02 WHERE '
                        +iif(la_empresas='','',la_empresas+' and ')
                        +' P2LOTSEQ=0'+IntToStr(ls_numped)
                        +' and P2CHAVE=0'+FloatToStr(mChave_Fat)
                        +' order by P2ITEM ');
      try
         Query_Cons.Open;
      except
         ex_erroSql_novo(query_cons,1869,'form_ped_fatemp','CADP02');
         end;


      While not Query_Cons.Eof do
         begin
         la_instrucao:='P1CODEMP=CODEMP AND P1LOTSEQ=LOTSEQ AND P1CHAVE=CHAVE AND P1ORDEM=ORDEM ';

         la_tabelas  :='';
         la_Join     :='';
         la_instrucao:='P2LM_CODEMP=CODEMP AND P2LM_LOTSEQ=LOTSEQ AND P2LM_CHAVE=CHAVE ';

         query_exe.Close;
         query_exe.Sql.Clear;
         query_exe.SQL.Add('Insert into CADP02_LOTES ('
                            +'P2LM_CODEMP '
                            +',P2LM_CODPRO '
                            +',P2LM_LOTSEQ '
                            +',P2LM_CHAVE '
                            +',P2LM_ITEM '
                            +',P2LM_LOTE '
                            +',P2LM_DTVCTO '
                            +',P2LM_QTD '
                            +',P2LM_QTDDEV ) '
                            +' Select '+ Query_Cons.FieldbyName('P2CODEMP').AsString
                            +',max(P2LM_CODPRO) '
                            +','+ Query_Cons.FieldbyName('P2LOTSEQ').AsString
                            +','+ Query_Cons.FieldbyName('P2CHAVE').AsString
                            +','+ Query_Cons.FieldbyName('P2ITEM').AsString


                            +',P2LM_LOTE '
                            +',P2LM_DTVCTO '
                            +',sum(P2LM_QTD) '
                            +',0 AS P2LM_QTDDEV '
                            +' from '+mTabTemp_emp+',CADP02_LOTES'+iif(la_tabelas='','',',')+la_tabelas
                            +'       '+la_Join
                            +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                            +' P2LM_CODPRO=:CODPRO '
                            +' group by P2LM_LOTE,P2LM_DTVCTO '
                            );

         query_exe.ParamByName('CODPRO').AsFloat:=Query_Cons.FieldbyName('P2CODPRO').AsFloat;


         try
            Query_EXE.ExecSQL;
            fdm1StartCommit;
         except
            end;
         Query_Cons.Next;
         end;
      end;
   fmensagem('Concluido!. Chave do Pedido: '+FloatTostr(mchave_fat),0,['0'],0);
   end;

// termino

Qr_Sel.Close;

CODCLI.Text:='';
NOMCLI.Text:='';
SELECAO.Enabled:=False;
FATURAR.Enabled:=False;
FreeAndNil(mForm_Ped);
if query_cons<>nil then
   freeandnil(Query_Cons);
if query_exe<>nil then
   freeandnil(Query_exe);

// termino
end;
}
procedure TFrm_FatEmp_itens.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_FatEmp',Key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_FatEmp_itens.CODVENExit(Sender: TObject);
begin
if flcadven(1,0,Trim(CODVEN.Text)) then
   NOMVEN.Text:=DM1.Tb_VenVNOME.Value
else
   begin
   fmensagem('Vendedor não Cadastrado!',0,['0'],0);
   if CODVEN.Enabled then
      CODVEN.SetFocus;
   end;
end;

procedure TFrm_FatEmp_itens.CB_TABPVExit(Sender: TObject);
begin
if (BBSAIR.Focused) then
   exit;
if (CB_TABPV.Text<>'AV') and
   (CB_TABPV.Text<>'AP') and
   (CB_TABPV.Text<>'PP') and
   (CB_TABPV.Text<>'PO') then
   begin
   fmensagem('Tabelas Válidas "AV","AP","PP","PO"',0,['0'],0);
   exit;
   end;
if CB_TABPV.Text='PO' then
   CODPV.Text:='99';

end;

procedure TFrm_FatEmp_itens.CODPVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPV.Text:=fChamaPV(0,'frm_rdev',key);
   if valint(codpv.Text)<>0 then
      begin
      CB_TABPV.Text:=DM1.Tb_PVPVCODTIP.AsString;
      CODPVExit(self);
      end;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_FatEmp_itens.CODPVExit(Sender: TObject);
begin
if (CB_TABPV.Text='PO') and (CODPV.Text='99') then
   begin
   NOMPV.Text:='Plano Opcional(Digitado)';
   form_pvo_fatemp.ShowModal;
   mpvtdc       := form_pvo_fatemp.CB_PVTPDC.ItemIndex;
   mpvtc        := form_pvo_fatemp.CB_PVTPC.ItemIndex;
   mpvtpd1      := form_pvo_fatemp.CB_PVTPD1.ItemIndex;
   mpvtpd2      := form_pvo_fatemp.CB_PVTPD2.ItemIndex;
   mpvtpdesf    := form_pvo_fatemp.CB_PVTPDESF.ItemIndex;
   mtpp         := form_pvo_fatemp.CB_TPP.ItemIndex;
   mpvcom       := valfloat(form_pvo_fatemp.COM.Text);
   mpvactd      := valfloat(form_pvo_fatemp.ACTD.Text);
   mpvact00     := valfloat(form_pvo_fatemp.ACT00.Text);
   mpvact01     := ValFloat(form_pvo_fatemp.ACT01.Text);
   mpvact99     := ValFloat(form_pvo_fatemp.ACT99.Text);
   mpvdes       := ValFloat(form_pvo_fatemp.DES.Text);
   mpvdes1      := ValFloat(form_pvo_fatemp.DES1.Text);
   mpvdes2      := ValFloat(form_pvo_fatemp.DES2.Text);
   mpvdescf     := ValFloat(form_pvo_fatemp.DESCF.Text);
   mpvddescf    := form_pvo_fatemp.CB_PVDDESCF.ItemIndex;
   mpvdiasdescf := StrToInt('0'+Trim(form_pvo_fatemp.DIASDESCF.Text));
   end
else
   begin
   if not flcadpv(1,0,CB_TABPV.Text,CODpv.Text) then
      begin
      fmensagem('Plano de Vendas nao Cadastrado',0,['0'],0);
      CB_TABPV.SetFocus;
      end
   else
      begin
      NOMPV.Text:=DM1.Tb_PVPVNOME.Value;
      mpvtdc       := DM1.Tb_PVPVTPDC.AsInteger;
      mpvtc        := DM1.Tb_PVPVTPC.AsInteger;
      mpvtpd1      := DM1.Tb_PVPVTPD1.AsInteger;
      mpvtpd2      := DM1.Tb_PVPVTPD2.AsInteger;
      mpvtpdesf    := DM1.Tb_PVPVTPDESF.AsInteger;
      mtpp         := DM1.Tb_PVPVTPP.AsInteger;
      mpvcom       := DM1.Tb_PVPVCOM.Value;
      mpvactd      := DM1.Tb_PVPVACTD.Value;
      mpvact00     := DM1.Tb_PVPVACT00.Value;
      mpvact01     := DM1.Tb_PVPVACT01.Value;
      mpvact99     := DM1.Tb_PVPVACT99.Value;
      mpvdes       := DM1.Tb_PVPVDES.Value;
      mpvdes1      := DM1.Tb_PVPVDES1.Value;
      mpvdes2      := DM1.Tb_PVPVDES2.Value;
      mpvdescf     := DM1.Tb_PVPVDESCF.Value;
      mpvddescf    := DM1.Tb_PVPVDDESCF.AsInteger;
      mpvdiasdescf := DM1.Tb_PVPVDIASDESCF.AsInteger;
      form_pvo_fatemp.Tb_Po99_nov.Close;
      form_pvo_fatemp.Tb_Po99_nov.SQL.Clear;
      form_pvo_fatemp.Tb_Po99_nov.SQL.add('Select PV2CODEMP as POCODEMP, '
                             +' PV2PRAZO as POPRAZO from CADPV2 '
                             +' where '
                             +iif(DM1.Qr_Tid.Locate('TINOME','CADPV',[]),'',' PV2CODEMP=0'+IntToStr(codemp)+' and ')
                             +' PV2CODTIP='+chr(39)+DM1.Tb_PVPVCODTIP.Value+chr(39)
                             +' and PV2CODPV=0'+DM1.Tb_PVPVCODPV.AsString
                             +' order by PV2PRAZO');
      form_pvo_fatemp.Tb_Po99_nov.Open;
      end;
   end;
{if DM1.Tb_PargerPFORPEDPAD.asinteger=0 then
   begin
   if mpvtdc=0 then
      form_ped_fatemp.DESC01.Text:=FormatFloat(mcasas, mpvdes)
   else if mpvtdc=1 then
      form_ped_fatemp.DESC01.Text:=FormatFloat(mcasas, DM1.Tb_CliCDESC.Value);
   end;}

end;

procedure TFrm_FatEmp_itens.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin


if mTabTemp_emp<>'' then
   begin
   fDeletaTemporaria(mTabTemp_emp);
   end;

end;
function TFrm_FatEmp_itens.fFatEmpSeleciona(pMarca: String): Boolean;
begin



la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

Qr_Sel.Close;
Qr_Sel.SQL.Clear;
Qr_Sel.SQL.Add('Select '+chr(39)+pMarca+chr(39)+' as P1OK,');
Qr_Sel.SQL.Add('      sum(P1TOTALL) as P1TOTALL,');
Qr_Sel.SQL.Add('      sum(p1valdes01) as P1VALDES01,');
Qr_Sel.SQL.Add('      sum(p1DESC01) as P1DESC01, ');
Qr_Sel.SQL.Add('      sum(P1VALDES02) as p1valdes02,');
Qr_Sel.SQL.Add('      sum(p1DESC02) as P1DESC02, ');
Qr_Sel.SQL.Add('      sum(P1TOTDES) as p1TOTDES,');
Qr_Sel.SQL.Add('      SUM(p1vlrdes)   as p1vLRDES,');
Qr_Sel.SQL.Add('      max(P1PDESCLIB) as P1PDESCLIB,');
Qr_Sel.SQL.Add('      max(P1PDESCL_USR) as P1PDESCL_USR,');
Qr_Sel.SQL.Add('      min(P1ORDEM) as P1ORDEM,');
Qr_Sel.SQL.Add('      max(P1CODEMP) as P1CODEMP,');
Qr_Sel.SQL.Add('      max(P1TPPCO) as P1TPPCO, ');
Qr_Sel.SQL.Add('      max(P1TIPO) as P1TIPO,');
Qr_Sel.SQL.Add('      P1LOTSEQ,P1CHAVE,P1DATAP,P1CODCLI,');
Qr_Sel.SQL.Add('      CRAZAO ');
Qr_Sel.SQL.Add('       from CADP01,CADCLI where '+iif(la_empresas='','',la_Empresas+' and ')
              +' P1STATUS<'+mstatus_excluido+' and P1EMIDOC=1'
              +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=0'+IntTostr(codemp)+' ')
              +' and CCODCLI=P1CODCLI '
              +' and P1TIPO=9');
if Trim(CODCV.Text) <> '' then
   Qr_Sel.SQL.Add(' and P1CODCV=0'+Trim(CODCV.Text));
if Trim(CODCLI.Text)<>'' then
   Qr_Sel.SQL.Add(' and P1CODCLI=0'+Trim(CODCLI.Text));

if Trim(MDT1.Text)<>'/  /' then
   Qr_Sel.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));
if Trim(MDT2.Text)<>'/  /' then
   Qr_Sel.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));
Qr_Sel.SQL.Add('group by P1LOTSEQ,P1CHAVE,P1DATAP,P1CODCLI,CRAZAO');

if CB_ORDEM.ItemIndex=0 then
   Qr_Sel.SQL.Add(' Order by P1CHAVE,P1ORDEM')
else if CB_ORDEM.ItemIndex=1 then
   Qr_Sel.SQL.Add(' Order by P1DATAP,CRAZAO')
else if CB_ORDEM.ItemIndex=2 then
   Qr_Sel.SQL.Add(' Order by CRAZAO,P1CODCLI');

Qr_Sel.Open;
if Qr_sel.eof then
   Result:=False
else
   begin
   Result:=True;
   end;
Qr_Sel.SQL.SAVETOFILE('C:\SQL.TXT');

edt_totalgeral.Value         := mtotvlr_ger;
FAtualiza(0);


end;
procedure TFrm_FatEmp_itens.fApresentarTotais;
begin
edt_totalgeral.Value         := mtotvlr_ger;
edt_totalsel.Value            := xTotalSel;

edt_totalASelecionar.Value     := mtotvlr_ger-xTotalSel;

end;

procedure TFrm_FatEmp_itens.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if Qr_SelP1OK.AsString = 'P' then
   begin
   DBGrid1.Canvas.Brush.Color := clRed;
   DBGrid1.Canvas.Font.Color  := clInfoBk;
   end;
if Qr_SelP1TOTALL.AsFloat<>Qr_Seltotalp2.AsFloat then
   DBGrid1.Canvas.Font.Color  := clLime;
DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);

end;

procedure TFrm_FatEmp_itens.CODCVExit(Sender: TObject);
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

if Trim(CODCV.Text) = '' then
   NOMCV.Text := '';
end;

procedure TFrm_FatEmp_itens.CODCVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCV.Text:=fChamacv(0,'frm_Cli',Key);
   maltdup:=true;
   if fsonumero(CODCV.Text)<>0 then
      begin
      CODCVExit(self);
      maltdup:=true;
      end;
   key:=#0;
   end;
end;

procedure TFrm_FatEmp_itens.CB_ORDEMExit(Sender: TObject);
begin
fDeletaPadroes(0,'_FATEMP','CB_ORDEM');
fGravaPadroes(0,'CB_ORDEM'     ,'checked'   ,'_FATEMP',IntTostr(CB_ORDEM.ItemIndex));

end;
function TFrm_FatEmp_itens.FAtualiza(pTipo: Integer):Boolean;
var
  mtemfat: Boolean;
  minc1,minc2: String;
  mchave: String;
  mRegistroSelecionado: TBookmark;
begin

xTotalSel   :=0;
mtotvlr_ger :=0;
xTotalDesc01:=0;
xTotalDesc02:=0;
xTotalDescvlr:=0;

Qr_Ped.close;



if trim(mTabTemp_emp)<>'' then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('truncate table '+mTabTemp_emp);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end;


mtemfat:=False;
if (not Qr_Sel.Active) or (Qr_Sel.Isempty) then
   begin
   result:=false;
   exit;
   end;
mRegistroSelecionado:=Qr_Sel.GetBookmark;
Qr_sel.DisableControls;
Qr_Sel.First;
While not Qr_Sel.Eof do
   begin
   if Qr_SelP1OK.AsString='P' then
      begin
      xTotalSel   := xTotalSel +Qr_SelP1TOTALL.AsFloat;
      mtemfat:=True;
      end;
   mtotvlr_ger   := mtotvlr_ger +Qr_SelP1TOTALL.AsFloat;
   Qr_sel.Next;
   end;
fApresentarTotais;

if not mtemfat then
   begin
   Qr_sel.EnableControls;
   exit;
   end;

//************************* SERVICOS ***************************************

Qr_Sel.First;
While not Qr_Sel.Eof do
   begin
   if Qr_SelP1OK.AsString<>'P' then
      begin
      Qr_Sel.Next;
      Continue;
      end;

   if mTabTemp_emp='' then
      begin
      mtabtemp_emp:=fProcTemp(1);

      fDeletaTemporaria(mTabTemp_emp);


      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Create Table '+mtabtemp_emp+' as '
                      +' Select P1CODEMP AS CODEMP '
                      +' ,P1LOTSEQ AS LOTSEQ '
                      +' ,P1CHAVE AS CHAVE '
                      +' ,P1ORDEM AS ORDEM '
                      +' from CADP01 '
                      +' where P1CODEMP=0'+Qr_SelP1CODEMP.AsString
                      +' and P1LOTSEQ=0'+Qr_SelP1LOTSEQ.AsString
                      +' and P1CHAVE=0'+Qr_SelP1CHAVE.AsString
                      +' and P1ORDEM=0'+Qr_SelP1ORDEM.AsString );

     // DM1.Query2.SQL.SaveToFile('C:\ErroEmprestimo.txt');
      try
         DM1.Query2.execsql;
         fdm1startcommit;
      except
         end;
      end
   else
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into '+mtabtemp_emp+' ( '
                      +'  CODEMP '
                      +' ,LOTSEQ '
                      +' ,CHAVE '
                      +' ,ORDEM '
                      +' ) values ('
                      +'  :CODEMP '
                      +' ,:LOTSEQ '
                      +' ,:CHAVE '
                      +' ,:ORDEM '
                      +')');
      DM1.Query1.ParamByName('CODEMP').asfloat:=Qr_SelP1CODEMP.AsFloat;
      DM1.Query1.ParamByName('LOTSEQ').asfloat:=Qr_SelP1LOTSEQ.AsFloat;
      DM1.Query1.ParamByName('CHAVE').asfloat:=Qr_SelP1CHAVE.AsFloat;
      DM1.Query1.ParamByName('ORDEM').asfloat:=Qr_SelP1ORDEM.AsFloat;
      try
         DM1.Query1.execsql;
         fdm1startcommit;
      except
         end;
      end;
   Qr_sel.Next;
   end;
// INICIO
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select * from '+mtabtemp_emp+' order by CHAVE  ');
DM1.Query2.Open;
mchaves1:='';
mchaves2:='';
minc1:='';
While not DM1.Query2.Eof do
   begin
   if length(trim(mchaves1))<51 then
      begin
      mchaves1:=mchaves1+minc1+FormatFloat('000000',DM1.query2.fieldbyName('CHAVE').AsFloat)
                              +'/'+FormatFloat('00',DM1.query2.fieldbyName('ORDEM').AsFloat);
      minc1:=',';
      end
   else if length(trim(mchaves2))<51 then
      begin
      mchaves2:=mchaves2+minc2+FormatFloat('000000',DM1.query2.fieldbyName('CHAVE').AsFloat)
                              +'/'+FormatFloat('00',DM1.query2.fieldbyName('ORDEM').AsFloat);
      minc2:=',';
      end;
   DM1.Query2.Next;
   end;
// TERMINO

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
la_tabelas  :='';
la_Join     :='';
la_instrucao:='P1CODEMP=CODEMP AND P1LOTSEQ=LOTSEQ AND P1CHAVE=CHAVE AND P1ORDEM=ORDEM ';
if pbanco=0 then
  la_instrucao:=la_instrucao+' and ';
fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
if pbanco=0 then
  la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADPRO','PDCODEMP', 'P2CODEMP','PDCODPRO' ,'P2CODPRO');

Qr_Ped.Close;
Qr_Ped.SQL.Clear;
Qr_Ped.SQL.Add('Select PDNOME,PDMARCA,PDUND,P2CODPRO,P2LOTE, P2DTVCTO,P2PRECO,P2DESC1, '
              +' P2DESC2,P2DESC3,P2TOTDES,P2VALDES,PDSIT,PDLISTA,PDTABICM,PDCODFOR,P2CODVEN as P2CODVEN, '
              +' P2PCOFPG,P2CODFAB,P2PCOTAB,P2UCPR,P2PCOCUS,P2PCOMAX,P2DESCM '
              +',P2PRECO AS PRECO_UN_MEDIO,PDCODGRU,PDNOMGRU '
              +' ,P2AMBIENTE,P2COMPLEMENTO,P2ITEM, P2QTD as QTDPED '
              +',P2CODEMP AS P2CODEMP_ORIGEM,P2CHAVE AS P2CHAVE_ORIGEM'
              +',nvl( (select sum(POPEDORI_QTD) from CADP02_PEDORI,CADP01 where POPEDORI_CODEMP=P2CODEMP '
              +' and POPEDORI_CHAVE=P2CHAVE and POPEDORI_CHAVE_ANO=P2LOTSEQ '
              +' and POPEDORI_CODEMP=P2CODEMP and POPEDORI_ITEM=P2ITEM '
              +' and P1CHAVE=POCHAVE and P1CODEMP=POCODEMP '
              +' AND P1LOTSEQ=POCHAVE_ANO AND P1STATUS <'+mstatus_excluido



              +' ),0) as QTDFAT ');
Qr_Ped.SQL.Add('  from '+mTabTemp_emp+',CADP01'+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
              +' P1STATUS<'+mstatus_excluido+' ');

mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
 if trim(mcinst2)<>'' then
    Qr_Ped.SQL.Add(' and PDCODGRU '+mcinst2);

Qr_Ped.sql.text:='Select P2.*, QTDPED-QTDFAT AS QTDPEND, QTDPED-QTDFAT AS FATURAR from ( '
               +Qr_Ped.SQL.Text
               +') P2 order by PDNOME,PDMARCA ';
if AgruparItens then
   begin
   Qr_Ped.SQL.Text:='Select max(PDNOME) AS PDNOME '
                 +',max(PDMARCA) as PDMARCA '
                 +',max(PDUND) as PDUND '
                 +',max(P2LOTE) as P2LOTE '
                 +',max(P2DTVCTO) as P2DTVCTO '
                 +',max(P2DESC1) as P2DESC1 '
                 +',max(P2DESC2) as P2DESC2 '
                 +',max(P2DESC3) as P2DESC3 '
                 +',sum(P2TOTDES) AS P2TOTDES '
                 +',sum(P2VALDES) AS P2VALDES '
                 +',max(PDSIT) AS PDSIT '
                 +',max(PDLISTA) AS PDLISTA '
                 +',max(PDTABICM) AS PDTABICM '
                 +',max(PDCODFOR) AS PDCODFOR '
                 +',max(P2CODVEN) AS P2CODVEN '
                 +',max(P2PRECO) as P2PRECO '
                 +',max(P2CODEMP_ORIGEM) as P2CODEMP_ORIGEM '
                 +',max(P2CHAVE_ORIGEM) as P2CHAVE_ORIGEM '
                 +',sum(P2PRECO*QTDPED) as PRECO_UN_MEDIO_CALC '
                 +',SUM(QTDPED) as qtd_PRECO_UN_MEDIO_CALC '
                 +',max(P2PCOFPG) AS P2PCOFPG '            

                 +',max(P2CODFAB) AS P2CODFAB '
                 +',max(P2PCOTAB) AS P2PCOTAB '
                 +',max(P2UCPR) AS P2UCPR '
                 +',max(P2PCOCUS) AS P2PCOCUS '
                 +',max(P2PCOMAX) AS P2PCOMAX '
                 +',max(P2DESCM) AS P2DESCM '
                 +',max(P2AMBIENTE) AS P2AMBIENTE '
                 +',max(P2COMPLEMENTO) AS P2COMPLEMENTO '
                 +',max(PDCODGRU) as PDCODGRU '
                 +',max(PDNOMGRU) as PDNOMGRU '
                 +',max(P2ITEM) AS P2ITEM '
                 +',sum(QTDPED) AS QTDPED '
                 +',sum(QTDFAT) AS QTDFAT '
                 +',sum(QTDPEND) AS QTDPEND '
                 +',sum(FATURAR) AS FATURAR '
                 +',P2CODPRO '
                 +' from ('+Qr_Ped.sql.Text+') P3 '
                 +' GROUP BY P2CODPRO '
                 +' order by PDNOME,PDMARCA '
                 ;

    Qr_Ped.SQL.Text:='Select P4.*, round( (PRECO_UN_MEDIO_CALC /  qtd_PRECO_UN_MEDIO_CALC), 3) as PRECO_UN_MEDIO '
                +' from ( '
                   +Qr_Ped.SQL.Text
                   +') P4 ';


   end;
Qr_Ped.SQL.Text:='Select P5.*, round( (PRECO_UN_MEDIO * QTDPED), 2) as TOTAL_BRUTO '
                +' from ( '
                   +Qr_Ped.SQL.Text
                   +') P5 ';


try
   Qr_Ped.Open;
except on e : exception do
   ex_erroSql_Novo(Qr_ped,2469,'func '+E.Message ,'CADP02');
   end;
// ex_erroSql_Novo(Qr_ped,2469,'func ' ,'CADP02');

edt_itens_totalgeral.Value:=0;

edt_itens_fatrados.Value:=0;
edt_itens_pendentes.Value:=0;
edt_itens_selecionados.Value:=0;
Qr_Ped.DisableControls;
While not Qr_Ped.Eof do
   begin
   edt_itens_totalgeral.Value:=edt_itens_totalgeral.Value+Arredonda( (Qr_PedPRECO_UN_MEDIO.AsFloat*Qr_PedQTDPED.AsFloat),2);
   edt_itens_fatrados.Value:=edt_itens_fatrados.Value+Arredonda((Qr_PedPRECO_UN_MEDIO.AsFloat*Qr_PedQTDFAT.AsFloat),2);
   edt_itens_pendentes.Value:=edt_itens_pendentes.Value+Arredonda((Qr_PedPRECO_UN_MEDIO.AsFloat*Qr_PedQTDPEND.AsFloat),2);
   edt_itens_selecionados.Value:=edt_itens_selecionados.Value+Arredonda((Qr_PedPRECO_UN_MEDIO.AsFloat*Qr_PedFATURAR.AsFloat),2);
   Qr_Ped.Next;
   end;
Qr_Ped.EnableControls;


//************************* SERVICOS ***************************************
result:=true;

Qr_sel.GotoBookmark(mRegistroSelecionado);
Qr_sel.EnableControls;
fTotalLiquido();

end;

procedure TFrm_FatEmp_itens.Qr_SelCalcFields(DataSet: TDataSet);
begin

DM1.Query1.close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select sum(Round( (P2QTD*P2PRECO),'+DM1.Tb_PargerPCASAS.AsString+')) from CADP02 '
                  +' where P2CODEMP=0'+Qr_SelP1CODEMP.AsString
                  +' and   P2CHAVE=0'+Qr_SelP1CHAVE.AsString
                  +' and   P2LOTSEQ=0'+Qr_SelP1LOTSEQ.AsString
                  +' and   P2ORDEM=0'+Qr_SelP1ORDEM.AsString);
DM1.Query1.Open;
Qr_Seltotalp2.AsFloat:=(DM1.query1.Fields[0].AsFloat-Qr_SelP1TOTDES.AsFloat);


end;

procedure TFrm_FatEmp_itens.btnImprimirClick(Sender: TObject);
   procedure pAbrir_resumo_produtos;
   var
   mGrupo: String;
   mOrdem: String;
   begin
   if cb_separado.Text=mchave_do_pedido_de_origem then
      begin
      mgrupo:='to_char(P2CHAVE) ';
      mOrdem:=mGrupo;
      end
   else if cb_separado.Text=mData_de_Emissao_do_Pedido then
      begin
      mgrupo:='to_char(TO_DATE(P1DATAP)) ';
      mOrdem:='TO_DATE(P1DATAP),P2CHAVE,P2CODEMP ';
      end
   else if cb_separado.Text=mCodigo_do_Poduto then
      begin
      mgrupo:='P2CODPRO || '+QuotedStr(' ')+' || PDNOME ' ;
      mordem:='PDNOME,P2CODPRO ';
      end
   else if cb_separado.Text=mGrupo_de_Produto then
      begin
      mgrupo:='PDCODGRU || '+QuotedStr(' ')+' || PDNOMGRU ' ;
      mOrdem:='PDNOMGRU,PDCODGRU '
      end
   else
      begin
      mgrupo:=quotedstr(' ');
      mordem:='P2CHAVE,P2CODEMP ';
      end;


   la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='P1CODEMP=CODEMP AND P1LOTSEQ=LOTSEQ AND P1CHAVE=CHAVE AND P1ORDEM=ORDEM ';
   if pbanco=0 then
     la_instrucao:=la_instrucao+' and ';
   fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
   if pbanco=0 then
     la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADPRO','PDCODEMP', 'P2CODEMP','PDCODPRO' ,'P2CODPRO');

   qr_resumo_produtos.Close;
   qr_resumo_produtos.SQL.Clear;
   qr_resumo_produtos.SQL.Add('Select P2CHAVE,P2CODEMP,PDNOME,PDMARCA,PDUND,P2CODPRO,P2LOTE, P2DTVCTO,P2PRECO,P2DESC1, '
                 +' P2DESC2,P2DESC3,P2TOTDES,P2VALDES,PDSIT,PDLISTA,PDTABICM,PDCODFOR,P2CODVEN as P2CODVEN, '
                 +' P2PCOFPG,P2CODFAB,P2PCOTAB,P2UCPR,P2PCOCUS,P2PCOMAX,P2DESCM '
                 +',P2PRECO AS PRECO_UN_MEDIO '
                 +',P1DATAP '
                 +',PDCODGRU '
                 +',PDNOMGRU '
                 +','+mGrupo+' as GRUPO '
                 +',round( (P2PRECO*P2QTD) , 3) AS TOTAL_BRUTO '
                 +' ,P2AMBIENTE,P2COMPLEMENTO,P2ITEM, P2QTD as QTDPED '
                 +',P2CODEMP AS P2CODEMP_ORIGEM,P2CHAVE AS P2CHAVE_ORIGEM'
                 +',nvl( (select sum(POPEDORI_QTD) from CADP02_PEDORI,CADP01 where POPEDORI_CODEMP=P2CODEMP '
                 +' and POPEDORI_CHAVE=P2CHAVE and POPEDORI_CHAVE_ANO=P2LOTSEQ '
                 +' and POPEDORI_CODEMP=P2CODEMP and POPEDORI_ITEM=P2ITEM '
                       +' and P1CHAVE=POPEDORI_CHAVE and P1CODEMP=POPEDORI_CODEMP '
                       +' AND P1LOTSEQ=POPEDORI_CHAVE_ANO AND P1STATUS <'+mstatus_excluido

                 +' ),0) as QTDFAT ');
   qr_resumo_produtos.SQL.Add('  from '+mTabTemp_emp+',CADP01'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                 +' P1STATUS<'+mstatus_excluido+' ');
  mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
  if trim(mcinst2)<>'' then
     qr_resumo_produtos.SQL.Add(' and PDCODGRU '+mcinst2);


   qr_resumo_produtos.sql.text:='Select P2.*, QTDPED-QTDFAT AS QTDPEND, QTDPED-QTDFAT AS FATURAR from ( '
                  +qr_resumo_produtos.SQL.Text
                  +') P2 order by PDNOME,PDMARCA ';


   qr_resumo_produtos.SQL.Text:='Select P5.*, round( (PRECO_UN_MEDIO * QTDPED), 3) as TOTAL_BRUTO '
                   +' from ( '
                      +qr_resumo_produtos.SQL.Text
                      +') P5 ';
   qr_resumo_produtos.SQL.add(' order by '+mOrdem);



   try
      qr_resumo_produtos.Open;
   except on e : exception do
      ex_erroSql_Novo(qr_resumo_produtos,2598,'func '+E.Message ,'CADP02');
      end;

   end;

begin
   pAbrir_resumo_produtos;

  RLReport1.PreviewModal;
end;

procedure TFrm_FatEmp_itens.RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   if Trim(CODCV.Text) <> '' then
      lbl_convenio.Caption := CODCV.Text+'-'+NOMCV.Text
   else
      lbl_convenio.Caption := '';

   if Trim(CODCLI.Text) <> '' then
      lbl_cliente.Caption  := CODCLI.Text+'-'+NOMCLI.Text
   else
      lbl_cliente.caption  := '';



     mtotvlr_ger :=0;
     mtotqtd_ger :=0;

     mtotvlr_fat :=0;
     mtotqtd_fat :=0;

     mtotvlr_pen :=0;
     mtotqtd_pen :=0;

end;

procedure TFrm_FatEmp_itens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form_pvo_fatemp.Tb_Po99_nov.close;
form_pvo_fatemp.Free;
form_pvo_fatemp:=nil;

if Qr_Ped02_Lotes<>nil then
   freeandnil(Qr_Ped02_Lotes);

Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_FatEmp_itens.bbSalvarPadraoClick(Sender: TObject);
var
Indice : Integer;
begin
fDeletaPadroes(-1,'_FATEMP','CB_TIPO');

Indice:=AnsiIndexText(CB_TIPO.Text,tab_tped);

If Indice = -1 then
   begin
   fmensagem('O Tipo de Pedido não Foi Encontrado!',0,['0'],0);
   exit;
   end;
mfatemp_tipop_padrao:=Indice;
fGravaPadroes(-1,'CB_TIPO'         ,'checked' ,'_FATEMP',IntTostr(Indice));

end;

procedure TFrm_FatEmp_itens.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_FatEmp_itens.cb_agruparitensExit(Sender: TObject);
begin
fDeletaPadroes(-1,'_FATEMP','CB_AGRUPARITENS');
fGravaPadroes(-1,'CB_AGRUPARITENS'     ,'checked'   ,'_FATEMP',IIF(CB_AGRUPARITENS.Checked,'true','false'));
AgruparItens:=cb_agruparitens.Checked;
end;

procedure TFrm_FatEmp_itens.Qr_PedBeforePost(DataSet: TDataSet);
begin
if Qr_PedFATURAR.AsFloat>Qr_PedQTDPEND.AsFloat then
   Qr_PedFATURAR.AsFloat:=Qr_PedQTDPEND.AsFloat;
edt_itens_selecionados.Value:=(edt_itens_selecionados.Value+ Arredonda( (Qr_PedFATURAR.asfloat*Qr_PedP2PRECO.AsFloat),2) )
                             -mAnt_selecinados;

end;

procedure TFrm_FatEmp_itens.DefinirFaturarouZerar(pZerar: Boolean);
begin
Qr_Ped.DisableControls;
Qr_Ped.First;
While not Qr_Ped.Eof do
   begin
   if pZerar then
      begin
      if Qr_PedFATURAR.AsFloat<>0 then
         begin
         Qr_Ped.Edit;
         Qr_PedFATURAR.AsFloat:=0;
         Qr_Ped.post;
         end;
      end
   else
      begin
      if Qr_PedFATURAR.AsFloat=0 then
         begin
         Qr_Ped.Edit;
         Qr_PedFATURAR.AsFloat:=Qr_PedQTDPEND.AsFloat;
         Qr_Ped.post;
         end;
      end;

   Qr_Ped.next;
   end;
Qr_Ped.EnableControls;
end;


procedure TFrm_FatEmp_itens.Qr_PedBeforeEdit(DataSet: TDataSet);
begin
    mAnt_selecinados:=Arredonda( (Qr_PedFATURAR.asfloat*Qr_PedP2PRECO.AsFloat) ,2);

end;

procedure TFrm_FatEmp_itens.bbCancelarTodosClick(Sender: TObject);
begin
DefinirFaturarouZerar(true);

end;

procedure TFrm_FatEmp_itens.bbFaturarTodosClick(Sender: TObject);
begin
DefinirFaturarouZerar(false);

end;

procedure TFrm_FatEmp_itens.Qr_PedBeforeInsert(DataSet: TDataSet);
begin
Qr_Ped.cancel;
abort;
end;

procedure TFrm_FatEmp_itens.DBG_Ped2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if Qr_PedQTDPEND.AsFloat>=Qr_PedQTDPED.AsFloat  then
   DBG_Ped2.Canvas.Font.Color  := st_faturados_nenhum.Font.Color
else if Qr_PedQTDPEND.AsFloat>0  then
   DBG_Ped2.Canvas.Font.Color  := st_faturados_parcial.Font.Color
else
   DBG_Ped2.Canvas.Font.Color  := st_faturados_total.Font.Color;
DBG_Ped2.DefaultDrawDataCell(Rect, Column.Field, State);

end;

procedure TFrm_FatEmp_itens.cb_agruparitensClick(Sender: TObject);
begin
DBG_Ped2.Columns[mcol_p2chave_origem].Visible:=cb_agruparitens.Checked=false;
DBG_Ped2.Columns[mcol_p2codemp_origem].Visible:=cb_agruparitens.Checked=false;

end;

procedure TFrm_FatEmp_itens.RLBand3AfterPrint(Sender: TObject);
begin
     mtotvlr_ger := mtotvlr_ger + qr_resumo_produtos.fieldbyname('TOTAL_BRUTO').AsFloat;
     mtotqtd_ger := mtotqtd_ger + qr_resumo_produtos.fieldbyname('QTDPED').AsFloat;

     mtotvlr_fat := mtotvlr_fat + Arredonda( (qr_resumo_produtos.fieldbyname('QTDFAT').AsFloat
                                * qr_resumo_produtos.fieldbyname('P2PRECO').AsFloat),3);
     mtotqtd_fat := mtotqtd_fat + qr_resumo_produtos.fieldbyname('QTDFAT').AsFloat;

     mtotvlr_pen := mtotvlr_pen + Arredonda( (qr_resumo_produtos.fieldbyname('QTDPEND').AsFloat
                                * qr_resumo_produtos.fieldbyname('P2PRECO').AsFloat),2);

     mtotqtd_pen := mtotqtd_pen + qr_resumo_produtos.fieldbyname('QTDPEND').AsFloat;

end;

procedure TFrm_FatEmp_itens.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rlrod_QTDPED.Caption := floattostr(mtotqtd_ger);
rlrod_TOTAL_BRUTO.caption := formatfloat(mcasas, mtotvlr_ger);


rlrod_QTDFAT.Caption := floattostr(mtotqtd_fat);
rlrod_QTDFAT_valor.caption := formatfloat(mcasas, mtotvlr_fat);

rlrod_QTDPEND.Caption := floattostr(mtotqtd_pen);
rlrod_QTDPEND_valor.caption := formatfloat(mcasas, mtotvlr_pen);


mtotvlr_ger := 0;
mtotqtd_ger := 0;
mtotvlr_fat := 0;
mtotqtd_fat := 0;
mtotvlr_pen := 0;
mtotqtd_pen := 0;

end;

procedure TFrm_FatEmp_itens.DBGrid1DblClick(Sender: TObject);
begin
Qr_Sel.Edit;
if Qr_SelP1OK.AsString<> 'P' then
   begin
   Qr_SelP1OK.Value:='P';
   end
else Qr_SelP1OK.AsString := ' ';
Qr_Sel.Post;
FAtualiza(0);

end;

procedure TFrm_FatEmp_itens.edt_codgruExit(Sender: TObject);
begin
edt_codgru.Text:=fdeixanum2(edt_CODGRU.Text);
if Trim(edt_CODGRU.Text)<>'' then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',edt_CODGRU.Text) then
      begin
      fmensagem('Grupo Não Cadastrado!',0,['0'],0);
      edt_CODGRU.SetFocus;
      exit;
      end
   else
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(edt_CODGRU.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      edt_codgru.text := '';
      edt_CODGRU.SetFocus;
      end;
   end;


end;

procedure TFrm_FatEmp_itens.edt_codgruKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_CODGRU.text:=fChamaGPro(0,'frm_medtpro',key);
   if valfloat(edt_CODGRU.text)<>0 then
      edt_CODGRUExit(self);
   edt_CODGRU.text := '';
   key:=#0;
   end;

end;

procedure TFrm_FatEmp_itens.lbx_codgruKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

procedure TFrm_FatEmp_itens.gb_gruposExit(Sender: TObject);
begin
if Qr_Ped.Active then
   begin
   fAtualiza(0);
   end;

end;

procedure TFrm_FatEmp_itens.Src_PedDataChange(Sender: TObject;
  Field: TField);
begin
if (Qr_destino.active=false) or (mant_pedori_chave <> Qr_PedP2CHAVE_ORIGEM.AsInteger)
   or (mant_pedori_codemp <> Qr_PedP2CODEMP_ORIGEM.AsInteger)
   or (mant_pedori_item <> Qr_PedP2ITEM.AsInteger) then
   fPedidosdeDestino;
end;
procedure TFrm_FatEmp_itens.fPedidosdeDestino;
begin
mant_pedori_chave := Qr_PedP2CHAVE_ORIGEM.AsInteger;
mant_pedori_codemp:= Qr_PedP2CODEMP_ORIGEM.AsInteger;
mant_pedori_item  := Qr_PedP2ITEM.AsInteger;


if Qr_PedQTDFAT.AsFloat=0 then
   Qr_destino.close
else
   begin
   Qr_destino.close;
   Qr_destino.sql.clear;
   Qr_destino.sql.add('Select POCHAVE AS CHAVE,POPEDORI_QTD AS QTDFAT from CADP02_PEDORI '
                     +' where POPEDORI_CODEMP=:CODEMP '
                     +' AND POPEDORI_CHAVE=:CHAVE '
                     +' and POPEDORI_CHAVE_ANO = :LOTSEQ '
                     +' and POPEDORI_ITEM = :ITEM ');
   Qr_destino.ParamByName('CODEMP').AsFloat := Qr_PedP2CODEMP_ORIGEM.AsInteger;
   Qr_destino.ParamByName('CHAVE').AsFloat  := Qr_PedP2CHAVE_ORIGEM.AsInteger;
   Qr_destino.ParamByName('LOTSEQ').AsFloat := ls_numped;
   Qr_destino.ParamByName('ITEM').AsFloat  := Qr_PedP2ITEM.AsInteger;
   try
      Qr_destino.Open;
   except on e : exception do
      begin
      ex_erroSql_Novo(Qr_destino,2939,'func '+E.Message ,'CADP02_pedori');
      end;
      end;
   end;
end;


function TFrm_FatEmp_itens.fverificaControleEspecial:boolean;
var
mcomando: tStringList;
mcondicoes: string;
mmensagem: string;
begin



if fLerGenerico_query('CADPRO','PDCONTESP','PDCODPRO=0'+tb_ped02_preP2CODPRO.AsString,query_consulta) then
   begin
   if query_consulta.fieldbyname('PDCONTESP').Asinteger=1 then
      begin
       mcondicoes:='';

       Qr_Sel.First;
       While not Qr_Sel.Eof do
          begin
          if Qr_SelP1OK.AsString<>'P' then
             begin
             Qr_Sel.Next;
             Continue;
             end;
          mcondicoes:=mcondicoes + iif(mcondicoes='','and ( (',' or (')+' P2CM_CODEMP=0'+Qr_SelP1CODEMP.AsString+' and P2CM_CHAVE='+Qr_SelP1CHAVE.AsString
                                      +' and P2CM_LOTSEQ=0'+Qr_SelP1LOTSEQ.AsString+') ';
          Qr_Sel.Next;
          end;
       mcondicoes:=mcondicoes+')';

        mcondicoes:=mcondicoes+' and P2CM_CODPRO='+tb_ped02_preP2CODPRO.AsString;
        mcomando:=tStringlist.create;
        mcomando.Add('Insert into CADP02_CMET ( ');
        mcomando.Add(' P2CM_CODEMP');
        mcomando.Add(',P2CM_ITEM');
        mcomando.Add(',P2CM_CODPRO ');
        mcomando.Add(',P2CM_LOTSEQ ');
        mcomando.Add(',P2CM_CHAVE ');
        mcomando.Add(',P2CM_CODIGO ');
        mcomando.Add(',P2CM_SEQ ');
        mcomando.Add(',P2CM_LARGURA ');
        mcomando.Add(',P2CM_COMPRIMENTO ');
        mcomando.Add(',P2CM_ESPESSURA ');
        mcomando.Add(',P2CM_PITEM_COFINS ');
        mcomando.Add(',P2CM_CONSTANTE ');
        mcomando.Add(',P2CM_QTD_KG ');
        mcomando.Add(',P2CM_QTD_KG_UNIT ');
        mcomando.Add(',P2CM_QTD_PECAS ');
        mcomando.Add(',P2CM_PITEM_VALDES ');
        mcomando.Add(',P2CM_PITEM_TOTLIQ ');
        mcomando.Add(',P2CM_PITEM_DESC_CAB ');
        mcomando.Add(',P2CM_PITEM_DESCRAT ');
        mcomando.Add(',P2CM_PITEM_VALSEG ');
        mcomando.Add(',P2CM_PITEM_DESPACES ');
        mcomando.Add(',P2CM_PITEM_ACRECRAT ');
        mcomando.Add(',P2CM_PITEM_PERCITEM ');
        mcomando.Add(',P2CM_PITEM_DESC1 ');
        mcomando.Add(',P2CM_PITEM_DESC2 ');
        mcomando.Add(',P2CM_PITEM_DESC3 ');
        mcomando.Add(',P2CM_PITEM_PRECO ');
        mcomando.Add(',P2CM_PITEM_BASEN ');
        mcomando.Add(',P2CM_PITEM_ICMSN ');
        mcomando.Add(',P2CM_PITEM_PREPAS ');
        mcomando.Add(',P2CM_PITEM_VREPAS ');
        mcomando.Add(',P2CM_PITEM_BASER ');
        mcomando.Add(',P2CM_PITEM_ICMSR ');
        mcomando.Add(',P2CM_PITEM_TOTDES ');
        mcomando.Add(',P2CM_PITEM_VALPIS ');
        mcomando.Add(',P2CM_PITEM_PALPIS ');
        mcomando.Add(',P2CM_PITEM_TOTOUT ');
        mcomando.Add(',P2CM_PITEM_VDESCF ');
        mcomando.Add(',P2CM_PITEM_PDESCF ');
        mcomando.Add(',P2CM_PITEM_PALIPI ');
        mcomando.Add(',P2CM_PITEM_PALCOFINS ');
        mcomando.Add(',P2CM_PITEM_VALIPI ');
        mcomando.Add(',P2CM_PITEM_PALIQ ');
        mcomando.Add(',P2CM_PITEM_ST_IVA ');
        mcomando.Add(',P2CM_PITEM_ST_REDUT ');
        mcomando.Add(',P2CM_PITEM_ST_ICMCRED ');
        mcomando.Add(',P2CM_PITEM_ST_ICMDEB ');
        mcomando.Add(',P2CM_PITEM_REDUTICM ');
        mcomando.Add(',P2CM_PITEM_PCREDSN ');
        mcomando.Add(',P2CM_PITEM_VLRICMS_SN ');
        mcomando.Add(',P2CM_PITEM_PCOMAX ');
        mcomando.Add(',P2CM_PITEM_CFOP ');
        mcomando.Add(',P2CM_PITEM_CSOSN_ORI ');
        mcomando.Add(',P2CM_PITEM_CSOSN ');
        mcomando.Add(',P2CM_PITEM_CST_ICMS ');
        mcomando.Add(',P2CM_PITEM_CST_PIS ');
        mcomando.Add(',P2CM_PITEM_CST_IPI ');
        mcomando.Add(',P2CM_PITEM_CST_COFINS ');
        mcomando.Add(',P2CM_PITEM_MODBCST ');
        mcomando.Add(',P2CM_PITEM_QTDHORA ');
        mcomando.Add(',P2CM_PITEM_PCOHORA ');
        mcomando.Add(' ) ');

        mcomando.Add(' select  ');
        mcomando.Add(tb_ped02_preP2CODEMP.AsString+' as P2CM_CODEMP  ');
        mcomando.Add(','+tb_ped02_preP2ITEM.AsString+' as P2CM_ITEM');
        mcomando.Add(','+tb_ped02_preP2CODPRO.AsString+' as  P2CM_CODPRO ');
        mcomando.Add(','+tb_ped02_preP2LOTSEQ.AsString+' as P2CM_LOTSEQ ');
        mcomando.Add(','+tb_ped02_preP2CHAVE.AsString+' as P2CM_CHAVE ');
        mcomando.Add(',max(P2CM_CODIGO) as P2CM_CODIGO ');
        mcomando.Add(',max(P2CM_SEQ) as P2CM_SEQ ');
        mcomando.Add(',max(P2CM_LARGURA) as P2CM_LARGURA ');
        mcomando.Add(',max(P2CM_COMPRIMENTO) as P2CM_COMPRIMENTO ');
        mcomando.Add(',max(P2CM_ESPESSURA) as P2CM_ESPESSURA ');
        mcomando.Add(',max(P2CM_PITEM_COFINS) as P2CM_PITEM_COFINS ');
        mcomando.Add(',max(P2CM_CONSTANTE) as P2CM_CONSTANTE ');
        mcomando.Add(',sum(P2CM_QTD_KG) as  P2CM_QTD_KG ');
        mcomando.Add(',sum(P2CM_QTD_KG_UNIT) as P2CM_QTD_KG_UNIT ');
        mcomando.Add(',sum(P2CM_QTD_PECAS) as P2CM_QTD_PECAS ');
        mcomando.Add(',sum(P2CM_PITEM_VALDES) as P2CM_PITEM_VALDES ');
        mcomando.Add(',sum(P2CM_PITEM_TOTLIQ) as P2CM_PITEM_TOTLIQ ');
        mcomando.Add(',sum(P2CM_PITEM_DESC_CAB) as P2CM_PITEM_DESC_CAB ');
        mcomando.Add(',sum(P2CM_PITEM_DESCRAT) as P2CM_PITEM_DESCRAT ');
        mcomando.Add(',sum(P2CM_PITEM_VALSEG) as P2CM_PITEM_VALSEG ');
        mcomando.Add(',sum(P2CM_PITEM_DESPACES) as P2CM_PITEM_DESPACES ');
        mcomando.Add(',sum(P2CM_PITEM_ACRECRAT) as P2CM_PITEM_ACRECRAT ');
        mcomando.Add(',sum(P2CM_PITEM_PERCITEM) as P2CM_PITEM_PERCITEM ');
        mcomando.Add(',sum(P2CM_PITEM_DESC1) as P2CM_PITEM_DESC1 ');
        mcomando.Add(',sum(P2CM_PITEM_DESC2) as P2CM_PITEM_DESC2 ');
        mcomando.Add(',sum(P2CM_PITEM_DESC3) as P2CM_PITEM_DESC3 ');
        mcomando.Add(',max(P2CM_PITEM_PRECO) as P2CM_PITEM_PRECO ');
        mcomando.Add(',sum(P2CM_PITEM_BASEN) as P2CM_PITEM_BASEN  ');
        mcomando.Add(',sum(P2CM_PITEM_ICMSN) as P2CM_PITEM_ICMSN ');
        mcomando.Add(',sum(P2CM_PITEM_PREPAS) as P2CM_PITEM_PREPAS ');
        mcomando.Add(',sum(P2CM_PITEM_VREPAS) as P2CM_PITEM_VREPAS ');
        mcomando.Add(',sum(P2CM_PITEM_BASER) as P2CM_PITEM_BASER ');
        mcomando.Add(',sum(P2CM_PITEM_ICMSR) as P2CM_PITEM_ICMSR ');
        mcomando.Add(',sum(P2CM_PITEM_TOTDES) as P2CM_PITEM_TOTDES ');
        mcomando.Add(',sum(P2CM_PITEM_VALPIS) as P2CM_PITEM_VALPIS ');
        mcomando.Add(',max(P2CM_PITEM_PALPIS) as P2CM_PITEM_PALPIS ');
        mcomando.Add(',sum(P2CM_PITEM_TOTOUT) as P2CM_PITEM_TOTOUT ');
        mcomando.Add(',sum(P2CM_PITEM_VDESCF) as P2CM_PITEM_VDESCF ');
        mcomando.Add(',max(P2CM_PITEM_PDESCF) as P2CM_PITEM_PDESCF ');
        mcomando.Add(',max(P2CM_PITEM_PALIPI) as P2CM_PITEM_PALIPI ');
        mcomando.Add(',max(P2CM_PITEM_PALCOFINS) as P2CM_PITEM_PALCOFINS ');
        mcomando.Add(',sum(P2CM_PITEM_VALIPI) as P2CM_PITEM_VALIPI ');
        mcomando.Add(',max(P2CM_PITEM_PALIQ) as P2CM_PITEM_PALIQ ');
        mcomando.Add(',sum(P2CM_PITEM_ST_IVA) as P2CM_PITEM_ST_IVA ');
        mcomando.Add(',sum(P2CM_PITEM_ST_REDUT) as P2CM_PITEM_ST_REDUT ');
        mcomando.Add(',sum(P2CM_PITEM_ST_ICMCRED) as P2CM_PITEM_ST_ICMCRED ');
        mcomando.Add(',sum(P2CM_PITEM_ST_ICMDEB) as P2CM_PITEM_ST_ICMDEB ');
        mcomando.Add(',sum(P2CM_PITEM_REDUTICM ) as P2CM_PITEM_REDUTICM ');
        mcomando.Add(',max(P2CM_PITEM_PCREDSN) as P2CM_PITEM_PCREDSN ');
        mcomando.Add(',sum(P2CM_PITEM_VLRICMS_SN) as P2CM_PITEM_VLRICMS_SN ');
        mcomando.Add(',max(P2CM_PITEM_PCOMAX) as P2CM_PITEM_PCOMAX ');
        mcomando.Add(',max(P2CM_PITEM_CFOP) as P2CM_PITEM_CFOP ');
        mcomando.Add(',max(P2CM_PITEM_CSOSN_ORI) as P2CM_PITEM_CSOSN_ORI ');
        mcomando.Add(',max(P2CM_PITEM_CSOSN) as P2CM_PITEM_CSOSN ');
        mcomando.Add(',max(P2CM_PITEM_CST_ICMS) as P2CM_PITEM_CST_ICMS ');
        mcomando.Add(',max(P2CM_PITEM_CST_PIS) as P2CM_PITEM_CST_PIS ');
        mcomando.Add(',max(P2CM_PITEM_CST_IPI) as P2CM_PITEM_CST_IPI ');
        mcomando.Add(',max(P2CM_PITEM_CST_COFINS) as P2CM_PITEM_CST_COFINS ');
        mcomando.Add(',max(P2CM_PITEM_MODBCST) as P2CM_PITEM_MODBCST ');
        mcomando.Add(',sum(P2CM_PITEM_QTDHORA) as P2CM_PITEM_QTDHORA ');
        mcomando.Add(',max(P2CM_PITEM_PCOHORA) as P2CM_PITEM_PCOHORA ');
        mcomando.Add(' from CADP02_CMET ');

        mcomando.Add(' where 1 = 1  ');

        mcomando.Add(mcondicoes);
        fExecutarComandoSQL(true,mcomando.Text,mmensagem,1384);
        freeandnil(mcomando);
        end;
     end;



end;


procedure TFrm_FatEmp_itens.edt_percdescExit(Sender: TObject);
begin
edt_percdesc.Text:=formatfloat(mcasas_pct, valfloat(edt_percdesc.Text));
if (valfloat(edt_percdesc.Text)<0) or (ValFloat(edt_percdesc.Text)>99) then
   edt_percdesc.Text:='0,00';
{
if (valfloat(edt_percdesc.Text)>0) then
   begin
   edt_valdesc.Text:='0';
   end;
}   
fTotalLiquido();

end;


function TFrm_FatEmp_itens.fDescontoValido(pPercDesc: Real): Boolean;
var
    mPd_CodResp_Senha: Integer;

begin
result:=true;
if  (  (DM4.Tb_Par01PDESCMP0.asfloat>0) and (pPercDesc>0) and
       (DM4.Tb_Par01PDESCMP0.asfloat<=pPercDesc) ) then
   begin
   mValidarSenha.pTipo:=0;
   mValidarSenha.pCodusr:=codusr;
   mValidarSenha.pCodSen:=2;
   mValidarSenha.pCodEmp:=0;
   mValidarSenha.pCodCli:=valfloat(CODCLI.Text);
   mValidarSenha.pLotSeq:=0;
   mValidarSenha.pChave :=0;
   mValidarSenha.pOrdem :=0;
   mValidarSenha.pTexto :='% Desconto maior que o permitido. L161 '+#13
                                                                       +'Desconto do Pedido: '+FormatFloat(mcasaspu, pPercDesc)+#13
                                                                       +'Máximo Permitido: '+FormatFloat(mcasaspu, DM4.Tb_par01pdescmp0.AsFloat)+#13
                                                                       +'Para continuar digite a senha';
   mValidarSenha.pDesc_requisitado :=pPercDesc;
   mValidarSenha.pChave_St:='';
   mValidarSenha.pDesc_requisitado :=0;
   mPd_CodResp_Senha:=fValidaSenha(mValidarSenha);
   if mPd_CodResp_Senha = 0 then
      begin
      result:=true;
      end
   else
      result:=false;
   end;
end;



procedure TFrm_FatEmp_itens.edt_codbcoKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%') then

   begin
   edt_codbco.Text:=fChamaBco(0,'_venda',key);
   edt_codbcoExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_FatEmp_itens.edt_codbcoExit(Sender: TObject);
begin
edt_codbco.Text := fdeixanum2(edt_codbco.Text);
if valint(edt_codbco.Text)<>0 then
   begin
   if not flcadbco(1,0,0,edt_codbco.Text) then
      begin
      if edt_codbco.Enabled then
         begin
         verteclado(0);
         MessageDlg('Código do Banco não Cadastrado!',mtWarning,[mbOk],0);
         edt_codbco.SetFocus;
         exit;
         end;
      end
   else
      edt_nombco.Text:=DM1.Tb_BcoBCBANCO.AsString;   
   end;

end;

procedure TFrm_FatEmp_itens.edt_codfpKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%') then

   begin
   edt_codfp.Text:=fChamaFPag(0,'_venda',key);
   edt_codfpExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_FatEmp_itens.edt_codfpExit(Sender: TObject);
begin
edt_codfp.Text:=fdeixanum(edt_codfp.Text);
if Trim(edt_codfp.Text)='' then
   exit;
if not fLCadFP(0,edt_codfp.Text,'') then
   begin
   verteclado(0);
   MessageDlg('Forma de Pagamento não Cadastrado!',mtWarning,[mbOk],0);
   edt_codfp.SetFocus;
   exit;
   end;
edt_nomfp.Text:=DM1.Tb_FPFPDESC.AsString;




end;

procedure TFrm_FatEmp_itens.edt_percdescEnter(Sender: TObject);
begin
mant_percdesc := valfloat(edt_percdesc.Text);

end;

procedure TFrm_FatEmp_itens.edt_valdescExit(Sender: TObject);
begin
edt_valdesc.Text:=formatfloat(mcasas, valfloat(edt_valdesc.Text));
if (valfloat(edt_valdesc.Text)<0) or (ValFloat(edt_valdesc.Text)>ValFloat(edt_totalsel.Text)) then
   edt_valdesc.Text:='0,00';

   {
if (valfloat(edt_valdesc.Text)>0) then
   begin
   edt_percdesc.Text:='0,00';
   end;
   }
fTotalLiquido();

end;

procedure TFrm_FatEmp_itens.fTotalLiquido();
var
mValDesc: Real;

begin
mValDesc:=0;
if (valfloat(edt_percdesc.text)>0) and (edt_totalsel.Value>0) then
   begin
   mValDesc:= arredonda( ( (( edt_totalsel.value) * valfloat(edt_percdesc.Text))/100) ,2);
   end;
mValDesc:=mValDesc + valfloat(edt_valdesc.Text);

edt_totliq.text:=Formatfloat(mcasas, edt_totalsel.value-mValDesc);

end;

end.
