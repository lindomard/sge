unit S_FatEmp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls,S_DM1,db,dbtables,func,lerarq,
  Grids,S_Pv,S_PVO, DBGrids, ToolEdit, CurrEdit,
  ComCtrls, RLReport, S_SelEmp, DBClient;

type
  TFrm_FatEmp = class(TForm)
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
    Qr_PedQUANT: TFloatField;
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
    TOTALMERC: TCurrencyEdit;
    Qr_Seltotalp2: TFloatField;
    btnImprimir: TBitBtn;
    tbsRelatorio: TTabSheet;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLBand2: TRLBand;
    lbl_unidade: TRLLabel;
    lbl_descricao: TRLLabel;
    lbl_codigo: TRLLabel;
    lbl_unitario: TRLLabel;
    lbl_qtde: TRLLabel;
    lbl_vlrdesc: TRLLabel;
    RLBand3: TRLBand;
    RLDraw1: TRLDraw;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    rdb_unitario: TRLDBText;
    rdb_quantidade: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDraw2: TRLDraw;
    lbl_convenio: TRLLabel;
    lbl_cliente: TRLLabel;
    RLBand5: TRLBand;
    RLLabel4: TRLLabel;
    lbl_totalizacao: TRLLabel;
    lbl_totalgeral: TRLLabel;
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
    Qr_PedITEM: TFloatField;
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
    tb_ped02_preP2PCOTAB: TFloatField;
    tb_ped02_preP2UCPR: TFloatField;
    tb_ped02_preP2PCOCUS: TFloatField;
    Label13: TLabel;
    edt_percdesc: TEdit;
    Label20: TLabel;
    edt_valdesc: TEdit;
    Label14: TLabel;
    Edit1: TEdit;
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
    procedure PageControl1Change(Sender: TObject);
    procedure Qr_SelCalcFields(DataSet: TDataSet);
    procedure btnImprimirClick(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure Qr_SelAfterPost(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbSalvarPadraoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cb_agruparitensExit(Sender: TObject);
    procedure edt_percdescExit(Sender: TObject);
    procedure edt_valdescExit(Sender: TObject);


  private
    mChave_Fat: Real;
    mLotseq_Fat: Real;

    { Private declarations }

    function fFatEmpSeleciona(pMarca: String): Boolean;
    function FAtualiza(pTipo: Integer):Boolean;

    function fFaturarPedido_ultimo(pTipo: Integer):Boolean;
    function fDeletaTemporaria(pNomTab: String): Boolean;



    function fDescontoValido(pPercDesc: Real): Boolean;

  public
    { Public declarations }
     form_pvo_fatemp: Tfrm_Pvo;
     Form_SelEmp: TFrm_SelEmp;

  end;

var
  Frm_FatEmp  : TFrm_FatEmp;
  AgruparItens : Boolean;
  Qr_Ped02_Lotes: tQuery;


  maltdup     : Boolean=False;
  mTabTemp_emp    : String='';
  xTotal      : Real;
  xTotalGeral : Real;
  xTotalSel   : Real;
  xTotalDesc01: Real;
  xTotalDesc02: Real;
  xTotalDescvlr: Real;
//  xTotalASel_Ant  : Real;
//  xTotalSel_ant   : Real;

  mchaves1, mchaves2: String;
  mfatemp_tipop_padrao: Integer=1;

implementation

uses S_DM4, func_excecoes, StrUtils, S_Vendas_GravarPedido, Func2;

{$R *.dfm}

procedure TFrm_FatEmp.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_FatEmp.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_FatEmp',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_FatEmp.CODCLIExit(Sender: TObject);
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
      CODVEN.Text  :=DM1.Tb_CliCCODVEN.AsString;
   CODVEN.Text:='';
   NOMVEN.Text:='';

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

procedure TFrm_FatEmp.MDT1Exit(Sender: TObject);
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

procedure TFrm_FatEmp.MDT2Exit(Sender: TObject);
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

procedure TFrm_FatEmp.FormCreate(Sender: TObject);
var
x: Integer;
begin
PageControl1.ActivePageIndex:=0;
Application.CreateForm(TFrm_PVO, form_pvo_fatemp);
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

cds_aliquotas.CreateDataSet;
//Tb_Ped02_pre.CreateDataSet;

mTabTemp_emp:='';

Qr_SelP1DATAP.DisplayFormat :=fdt2;
Qr_SelP1TOTALL.DisplayFormat:=mcasas;
Qr_PedQUANT.DisplayFormat:=mcasqtd;
Qr_PedP2PRECO.DisplayFormat:=mcasaspu;

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

procedure TFrm_FatEmp.APLICARClick(Sender: TObject);
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


FATURAR.Enabled:=True;
SELECAO.Enabled:=True;
end;

procedure TFrm_FatEmp.CODCLIEnter(Sender: TObject);
begin
FATURAR.Enabled:=False;
SELECAO.Enabled:=False;

end;

procedure TFrm_FatEmp.SELECAOClick(Sender: TObject);
begin
fFatEmpSeleciona('P');

end;

procedure TFrm_FatEmp.CANCELARClick(Sender: TObject);
begin
fFatEmpSeleciona(' ');

end;

procedure TFrm_FatEmp.FATURARClick(Sender: TObject);
var
mqtd,y,x: Integer;
mtemfat: Boolean;
mvlrdes: Real;
mpDescAut: Real;
mpDescAut_codusr: Integer;
mCodCli_Emp: Real;
mMensagemDesconto: String;
mPercDescCalc: Real;
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
if not mtemfat then
   begin
   fmensagem('Para faturar tem que selecionar pelo menos um pedido!',0,['0'],0);
   exit;
   end;

if valfloat(edt_percdesc.text)>0 then
   mMensagemDesconto:='Existe um desconto de '+edt_percdesc.Text+' mesmo assim confirma o Faturamento?'
else if valfloat(edt_valdesc.text)>0 then
   mMensagemDesconto:='Existe um desconto no valor de '+edt_valdesc.Text+' mesmo assim confirma o Faturamento?'

else
   mMensagemDesconto:='Confirma o Faturamento?';



if fMensagem(mMensagemDesconto,0,['1','2'],2)<>MrYes then
   exit;

if valfloat(edt_valdesc.Text)=0 then
   mPercDescCalc:=valfloat( edt_percdesc.text)
else
   begin
   mPercDescCalc:=valfloat( edt_valdesc.text)*100 / valfloat(edt_totalsel.text);
   end;
if fDescontoValido(mPercDescCalc)=false then
   exit;
FAtualiza(0);

if (Qr_Ped.IsEmpty) and (Qr_Ser.IsEmpty) then
   begin
   fmensagem('Não Foi Encontrado nada ha ser faturado!',0,['0'],0);
   exit;
   end;
 fFaturarPedido_ultimo(0)
end;


function tFrm_fatEmp.fFaturarPedido_ultimo(pTipo: Integer):Boolean;
var
  mVenda_GP: TFrm_Vendas_GravarPedido;
  mQtdPed: Real;
  mDesconto: Real;

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
begin

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
    mVenda_GP.mPed1_Desc_Rateado  :=ValFloat(edt_valdesc.Text);


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
       fGerarEvento('772');
       mItemPed:=mItemPed+1;
       tb_ped02_pre.Append;
       tb_ped02_preP2CODEMP.AsInteger :=mVenda_GP.mPed1_Codemp;
       tb_ped02_preP2LOTSEQ.AsInteger :=mVenda_GP.mPed1_Chave_ano;
       tb_ped02_preP2CHAVE.AsInteger  :=mVenda_GP.mPed1_Chave;
       tb_ped02_preP2ORDEM.AsInteger  :=01;
       tb_ped02_preP2ITEM.AsInteger   :=mItemPed;
       tb_ped02_preP2CODPRO.AsFloat   :=Qr_PedP2CODPRO.AsFloat;
       tb_ped02_preP2QTD.AsFloat      :=arredonda( Qr_PedQUANT.AsFloat, DM1.Tb_PargerPCASQTD.AsInteger) ;
       tb_ped02_preP2PRECO.AsFloat    :=arredonda( Qr_PedP2PRECO.AsFloaT, mVenda_GP.mPed1_QtdDec);
       tb_ped02_preP2VALDES.AsFloat   :=Qr_PedP2TOTDES.AsFloat;
       tb_ped02_preP2CODVEN.AsInteger :=Qr_PedP2CODVEN.AsInteger;
       tb_ped02_preP2PCOTAB.AsFloat   :=Qr_PedP2PCOTAB.AsFloat;
       tb_ped02_preP2UCPR.AsFloat     :=Qr_PedP2UCPR.AsFloat;        
       tb_ped02_preP2PCOCUS.AsFloat   :=Qr_pedP2PCOCUS.asfloat;



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

       if (Log_TipoLote=1) then
          begin
          mQtdPed:=0;
          mSeq_Item:=0;
          fGerarEvento('807 - lotes');
          if not Qr_Ped02_Lotes.Locate('P2LM_CODPRO;ITEM',vararrayof([tb_ped02_preP2CODPRO.asfloat,Qr_PedITEM.AsInteger]),[]) then
             begin
             While (not Qr_Ped02_Lotes.eof) and (Qr_Ped02_Lotes.FieldbyName('P2LM_CODPRO').AsFloat=tb_ped02_preP2CODPRO.AsFloat)
                 and (Qr_Ped02_Lotes.FieldbyName('ITEM').AsInteger=Qr_PedITEM.AsInteger) do
                begin
                fGerarEvento('813 - incluindo lotes');
                mSeq_Item:=mSeq_Item+1;

                query_exe.close;
                query_exe.SQL.Clear;
                query_exe.SQL.Add('Insert into CADP02_LOTES ('
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


                query_exe.ParamByName('P2LM_CODEMP').AsInteger :=mVenda_GP.mPed1_Codemp;
                query_exe.ParamByName('P2LM_LOTSEQ').AsInteger :=mVenda_GP.mPed1_Chave_ano;
                query_exe.ParamByName('P2LM_CHAVE').AsFloat    :=mVenda_GP.mPed1_Chave;
                query_exe.ParamByName('P2LM_ITEM').AsInteger   :=mItemPed;
                query_exe.ParamByName('P2LM_CODPRO').AsFloat   :=tb_ped02_preP2CODPRO.AsFloat;
                query_exe.ParamByName('P2LM_LOTE').AsString    :=Qr_ped02_lotes.fieldbyname('P2LM_LOTE').asstring;
                query_exe.ParamByName('P2LM_DTFAB').AsDateTime :=Qr_ped02_lotes.fieldbyname('P2LM_DTFAB').AsDateTime;
                query_exe.ParamByName('P2LM_DTVCTO').AsDateTime:=Qr_ped02_lotes.fieldbyname('P2LM_DTVCTO').AsDateTime;
                query_exe.ParamByName('P2LM_QTD').AsFloat      :=Qr_ped02_lotes.fieldbyname('QTD_LOTE').AsFloat;
                query_exe.ParamByName('P2LM_QTDDEV').AsFloat   :=0;

                try
                   query_exe.ExecSQL;
                   fdm1StartCommit;
                except
                   end;
                end;
             Qr_ped02_lotes.Next;
             end;
          end;




       mVenda_GP.fGravarItemCDS(0 // produto
                           ,0
                           ,2 // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta p2Estoque
                           ,mVenda_GP.mPed1_CodFP
                           ,0 //apenas calcular  tipo do evento 0-inclusao 1-alteracao 2-exclusao 3-calcular
                           ,0 //pSituacao: Integer;
                           ,'0'
                           ,mVenda_GP.mPed1_NomFP
                           ,mVenda_GP.mPed1_BaixaFP
                           ,tb_ped02_preP2QTD.AsFloat  //pQtd_Cal
                           ,tb_ped02_preP2PRECO.AsFloat // pPrecoUnit_Cal
                           ,tb_ped02_preP2PCOTAB.AsFloat //,pPrecoTab_Cal
                           ,tb_ped02_preP2UCPR.AsFloat // pPrecoUCPR_Cal
                           ,tb_ped02_preP2PCOCUS.AsFloat // pPrecoCus_Cal
                           ,0 // pPrecoMax_Cal,
                           ,0
                           ,0
                           ,0
                           ,0
                           ,0
                           ,0
                           ,tb_ped02_pre);
       Qr_Ped.Next;
       end;
    tb_ped02_pre.Close;


    Query_Cons:=TQuery.Create(nil);
    Query_Cons.DatabaseName:='SG_ASSOC';


    // inicio
    {Qr_Sel.First;
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
    }

    {
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
    }
//    mDesconto:=mVenda_GP.mPed1_Totall-edt_totalsel.Value + valfloat(edt_valdesc.Text);
    mDesconto:=valfloat(edt_valdesc.Text);
    if mDesconto>0 then
       begin
       mvenda_gp.mPed1_Desc_Rateado:=mDesconto  ;

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
    //********************* servicos *******************************************
    {
    mqtd:=1;
    Qr_Ser.First;
    While not Qr_Ser.Eof do
       begin
       if Qr_SerQUANT.Value<=0 then
          begin
          Qr_Ser.Next;
          Continue;
          end;

       mForm_Ped.Tb_ped02S_pre.Append;
       mForm_Ped.Tb_ped02S_preP2SCODSER.Value :=Qr_PedP2CODPRO.Value;
       mForm_Ped.fValidarDigitacaoItem;

       Pedido_02_FatEmp.txts_codpro.Text       := Qr_SerP2SCODPRO.AsString;
       Pedido_02_FatEmp.txts_pcouni.Value      := DM1.Query5.FieldbyName('P2SPRECO').AsFloat;
       Pedido_02_FatEmp.txts_quant.Value       := DM1.Query5.FieldbyName('P2SQTD').AsFloat;
       Pedido_02_FatEmp.txts_desci01.Value     := DM1.Query5.FieldbyName('P2SDESC01').AsFloat;
       Pedido_02_FatEmp.txts_desci02.Value     := DM1.Query5.FieldbyName('P2SDESC02').AsFloat;
       Pedido_02_FatEmp.txts_desci03.Value     := DM1.Query5.FieldbyName('P2SDESC03').AsFloat;
       Pedido_02_FatEmp.txts_descfin.Value     := DM1.Query5.FieldbyName('P2SDESCFIN').AsFloat;
       Pedido_02_FatEmp.txts_comis.value       := DM1.Query5.FieldbyName('P2SPCOMIS').AsFloat;
       Pedido_02_FatEmp.txts_codproExit(Self);
       Pedido_02_FatEmp.txts_pcouni.Value      := DM1.Query5.FieldbyName('P2SPRECO').AsFloat;
       Pedido_02_FatEmp.txts_pcouniExit(self);
       if DM4.Qr_Ped02d.Locate('P2DCODPRO',Qr_SerP2SCODPRO.Value,[]) then
          begin
          Pedido_02_FatEmp.DESCALTER.Lines.Clear;
          While (not (DM4.Qr_Ped02d.Eof) and  (DM4.Qr_Ped02dP2DCODPRO.Value=Qr_SerP2SCODPRO.Value))  do
             begin
             Pedido_02_FatEmp.DESCALTER.Lines.Add(insere2(DM4.Qr_Ped02dP2DESC.Value,' ',60));
             DM4.Qr_Ped02d.Next;
             end;
          end;
       Pedido_02_FatEmp.bbGravarServClick(Self);
       mqtd:=mqtd+1;
       Qr_Ser.Next;
       end;
     }

    { if  (xTotalDesc01<>0) or (xTotalDesc02<>0) or (xTotalDescvlr<>0) then
       mForm_Ped.edt_desc_valor.Text :=FloatToStr(xTotalDescvlr+xTotalDesc02 );
    }
    mChave_Fat := mVenda_GP.mPed1_Chave;

    //Qr_Sel.Close;
    //fmensagem('Concluido!. Chave do Pedido: '+FloatTostr(mchave_fat),0,['0'],0);

    // inicio

    if mChave_Fat<>0 then
       begin
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
                                +' group by P2LM_LOTE,P2LM_DTVCTO ,NVL(P2LM_SEQ,0) '

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
except on e : exception do
   begin
   Messagedlg('Erro ao faturar emprestimo'+e.message,mterror,[mbOk],0);
   end;
   end;
CODCLI.Text:='';
NOMCLI.Text:='';
edt_percdesc.clear;
edt_valdesc.clear;

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
procedure TFrm_FatEmp.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_FatEmp',Key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_FatEmp.CODVENExit(Sender: TObject);
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

procedure TFrm_FatEmp.CB_TABPVExit(Sender: TObject);
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

procedure TFrm_FatEmp.CODPVKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_FatEmp.CODPVExit(Sender: TObject);
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

procedure TFrm_FatEmp.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin


if mTabTemp_emp<>'' then
   begin
   fDeletaTemporaria(mTabTemp_emp);
   end;

end;
function tFrm_FatEmp.fDeletaTemporaria(pNomTab: String): Boolean;
var
Query_temp: TQuery;
begin
result:=true;
Query_temp:=TQuery.Create(nil);
Query_temp.DatabaseName:='SG_ASSOC';
Query_temp.Close;
Query_temp.SQL.clear;
Query_temp.SQL.Add('Select count(*) from USER_OBJECTS where '
                  +' OBJECT_TYPE=:TIPOOBJ and OBJECT_NAME=:NOMETAB ' );
Query_temp.ParamByName('TIPOOBJ').AsString:='TABLE';
Query_temp.ParamByName('NOMETAB').AsString:=pNomTab;
Query_temp.open;
if query_temp.fields[0].AsInteger>0 then
   begin
   Query_temp.Close;
   Query_temp.SQL.clear;
   Query_temp.SQL.Add('Drop table '+pNomTab);
   try
      Query_temp.ExecSQL;
      fdm1StartCommit;
   except
      result:=false;
      end;
   end;
FreeAndNil(Query_temp);

end;
function TFrm_FatEmp.fFatEmpSeleciona(pMarca: String): Boolean;
begin

xTotalSel   :=0;
xTotalGeral :=0;
xTotalDesc01:=0;
xTotalDesc02:=0;
xTotalDescvlr:=0;

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

try
   Qr_Sel.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(Qr_sel,1716,'func'+e.message ,'CADP01');
   end;
   end;
// ex_erroSql_Novo(Qr_sel,1716,'func' ,'CADP01');


if Qr_sel.eof then
   Result:=False
else
   begin
   while not Qr_Sel.Eof do
      begin
      xTotalGeral := xTotalGeral+Qr_SelP1TOTALL.Value;
      if Qr_SelP1OK.asstring='P' then
         begin
         xTotalSel:=xTotalSel+Qr_SelP1TOTALL.Value;
         xTotalDesc01:=xTotalDesc01+Qr_SelP1DESC01.Value;
         xTotalDesc02:=xTotalDesc02+Qr_SelP1DESC02.Value;
         xTotalDescvlr:=xTotalDescvlr+Qr_SelP1VLRDES.Value;
         end;
      Qr_Sel.Next;
      end;
   Result:=True;
   end;
edt_totalgeral.Value         := xTotalGeral;
edt_totalsel.Value           := xTotalSel;
edt_totalASelecionar.Value   := xtotalGeral-xTotalSel;

end;

procedure TFrm_FatEmp.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TFrm_FatEmp.CODCVExit(Sender: TObject);
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

procedure TFrm_FatEmp.CODCVKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_FatEmp.CB_ORDEMExit(Sender: TObject);
begin
fDeletaPadroes(0,'_FATEMP','CB_ORDEM');
fGravaPadroes(0,'CB_ORDEM'     ,'checked'   ,'_FATEMP',IntTostr(CB_ORDEM.ItemIndex));

end;
function TFrm_FatEmp.FAtualiza(pTipo: Integer):Boolean;
var
  mtemfat: Boolean;
  minc1,minc2: String;
  mchave: String;
  Query_Cons:TQuery;
begin
Query_Cons:=TQuery.Create(nil);
Query_Cons.DatabaseName:='SG_ASSOC';


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


TOTALMERC.Value:=0;
mtemfat:=False;
if (not Qr_Sel.Active) or (Qr_Sel.Isempty) then
   begin
   result:=false;
   exit;
   end;
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
if not mtemfat then
   begin
   exit;
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

Qr_Ped.Close;
Qr_Ped.SQL.Clear;
if not AgruparItens then
  begin
  if log_tipolote=1 then
     begin
     if Qr_Ped02_lotes=nil then
        begin
        Qr_Ped02_Lotes:=tQuery.Create(nil);
        Qr_Ped02_lotes.DatabaseName:='SG_ASSOC';
        end;
     Qr_Ped02_lotes.Close;
     Qr_Ped02_lotes.Sql.clear;
     Qr_Ped02_lotes.Sql.Add('Select P2CODPRO,max(P2ITEM) as ITEM,P2LOTE,P2DTVCTO,P2PRECO,P2DESC1,P2DESC2,P2DESC3,P2VALDES '
                           +',P2CODVEN,P2PCOFPG,P2CODFAB,P2PCOTAB,P2UCPR,P2PCOCUS,P2PCOMAX,P2DESCM, '
                           +' P2AMBIENTE ,P2COMPLEMENTO, '
                           +' P2LM_CODPRO,P2LM_LOTE,'
                           +' P2LM_DTVCTO,max(P2LM_DTFAB) as P2LM_DTFAB, sum(P2LM_QTD) as QTD_LOTE ');
     end;

  Qr_Ped.SQL.Add(' Select PDNOME,PDUND,P2CODPRO,P2LOTE, P2DTVCTO,P2PRECO,P2DESC1,');
  Qr_Ped.SQL.Add(' P2DESC2,P2DESC3,P2TOTDES,P2VALDES,PDSIT,PDLISTA,PDTABICM,PDCODFOR,P2CODVEN as P2CODVEN,    ');
  Qr_Ped.SQL.Add(' P2PCOFPG,P2CODFAB,P2PCOTAB,P2UCPR,P2PCOCUS,P2PCOMAX,P2DESCM, ');
  Qr_Ped.SQL.Add(' P2AMBIENTE,P2COMPLEMENTO,max(P2ITEM) as ITEM, sum(P2QTD) as QUANT ');
  end
else
  begin

  if log_tipolote=1 then
     begin
     if Qr_Ped02_lotes=nil then
        begin
        Qr_Ped02_Lotes:=tQuery.Create(nil);
        Qr_Ped02_lotes.DatabaseName:='SG_ASSOC';
        end;
     Qr_Ped02_lotes.Close;
     Qr_Ped02_lotes.Sql.clear;
     Qr_Ped02_lotes.Sql.Add('Select P2CODPRO,max(P2ITEM) as ITEM,max(P2LOTE) as P2LOTE,'
                           +' max(P2DTVCTO) as P2DTVCTO,max(P2PRECO) as P2PRECO'
                           +',max(P2DESC1) as P2DESC1'
                           +',max(P2DESC2) as P2DESC2'
                           +',max(P2DESC3) as P2DESC3'
                           +',max(P2VALDES) as P2VALDES '
                           +',MAX(P2CODVEN) as P2CODVEN '
                           +',max(P2PCOFPG) as P2PCOFPG '
                           +',max(P2CODFAB) as P2CODFAB '
                           +',max(P2PCOTAB) as P2PCOTAB '
                           +',max(P2UCPR) as P2UCPR'
                           +',max(P2PCOCUS) as P2PCOCUS '
                           +',max(P2PCOMAX) as P2PCOMAX '
                           +',max(P2DESCM) as P2DESCM '
                           +',max(P2AMBIENTE) as P2AMBIENTE '
                           +',max(P2COMPLEMENTO) as P2COMPLEMENTO '
                           +',P2LM_CODPRO,P2LM_LOTE,'
                           +' P2LM_DTVCTO,max(P2LM_DTFAB) as P2LM_DTFAB, sum(P2LM_QTD) as QTD_LOTE ');
     end;


  Qr_Ped.SQL.Add(' Select PDNOME,PDUND,P2CODPRO,max(P2ITEM) as ITEM,max(P2LOTE) AS P2LOTE,max(P2DTVCTO) as P2DTVCTO, '
                +'  round( (SUM(P2QTD*P2PRECO)/SUM(P2QTD)) , '+DM1.Tb_PargerPCASASPU.AsString+')  AS P2PRECO,               ');
  Qr_Ped.SQL.Add(' MAX(P2DESC1) AS P2DESC1,MAX(P2DESC2) AS P2DESC2,MAX(P2DESC3) AS P2DESC3,            ');
  Qr_Ped.SQL.Add(' MAX(P2VALDES) AS P2VALDES,MAX(PDSIT) AS PDSIT,MAX(PDLISTA) AS PDLISTA,             ');
  Qr_Ped.SQL.Add(' MAX(PDTABICM) AS PDTABICM,MAX(PDCODFOR) AS PDCODFOR,MAX(P2CODVEN) as P2CODVEN,MAX(P2PCOFPG) AS P2PCOFPG,     ');
  Qr_Ped.SQL.Add(' MAX(P2CODFAB) AS P2CODFAB,MAX(P2PCOTAB) AS P2PCOTAB, MAX(P2UCPR) AS P2UCPR, MAX(P2PCOCUS) AS P2PCOCUS,       ');
  Qr_Ped.SQL.Add(' max(P2PCOMAX) as p2pcomax, max(P2DESCM) as p2descm, max(P2AMBIENTE) as p2ambiente, ');
  Qr_Ped.SQL.Add(' MAX(P2COMPLEMENTO) AS P2COMPLEMENTO,sum(P2QTD) as QUANT, sum(P2TOTDES) as P2TOTDES');
  end;

  Qr_Ped.SQL.Add('  from '+mTabTemp_emp+',CADP01'+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
              +' P1STATUS<'+mstatus_excluido+' ');


//******************* FIM DOS SERVICOS *************************************


if not AgruparItens then
  begin
  Qr_Ped.SQL.Add(' GROUP BY PDNOME,PDUND,P2CODPRO,P2LOTE,P2DTVCTO,P2PRECO,P2DESC1,P2DESC2,P2DESC3,P2VALDES,P2TOTDES,');
  Qr_Ped.SQL.Add(' PDSIT,PDLISTA,PDTABICM,PDCODFOR,P2CODVEN,P2PCOFPG,P2CODFAB,P2PCOTAB,P2UCPR,P2PCOCUS,P2PCOMAX,P2DESCM, ');
  Qr_Ped.SQL.Add(' P2AMBIENTE ,P2COMPLEMENTO');

  if log_tipolote=1 then
     begin
     la_tabelas  :='';
     la_Join     :='';
     la_instrucao:='P1CODEMP=CODEMP AND P1LOTSEQ=LOTSEQ AND P1CHAVE=CHAVE AND P1ORDEM=ORDEM ';
     if pbanco=0 then
       la_instrucao:=la_instrucao+' and ';
     fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
     if pbanco=0 then
        la_instrucao:=la_instrucao+' and ';
     fInnerJoin4(1,'CADP02_LOTES','P2LM_CODEMP','P2CODEMP','P2LM_LOTSEQ','P2LOTSEQ','P2LM_CHAVE','P2CHAVE','P2LM_ITEM','P2ITEM');

     Qr_Ped02_lotes.SQL.Add('  from '+mTabTemp_emp+',CADP01'+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
              +' P1STATUS<'+mstatus_excluido+' ');

     Qr_Ped02_lotes.Sql.Add(' group by P2CODPRO,P2LOTE,P2DTVCTO,P2PRECO,P2DESC1,P2DESC2,P2DESC3,P2VALDES '
                           +',P2CODVEN,P2PCOFPG,P2CODFAB,P2PCOTAB,P2UCPR,P2PCOCUS,P2PCOMAX,P2DESCM, '
                           +' P2AMBIENTE ,P2COMPLEMENTO, '
                           +' P2LM_CODPRO,P2LM_LOTE,'
                           +' P2LM_DTVCTO '
                           +' order by P2CODPRO,ITEM ');
     try
        Qr_Ped02_Lotes.Open;
     except
        Qr_Ped02_Lotes.sql.savetofile('c:\sqlped02lm.txt');
        end;
     end;

   end
else
   begin
   Qr_Ped.SQL.Add('GROUP BY PDNOME,PDUND,P2CODPRO');
   if log_tipolote=1 then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='P1CODEMP=CODEMP AND P1LOTSEQ=LOTSEQ AND P1CHAVE=CHAVE AND P1ORDEM=ORDEM ';
      if pbanco=0 then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
      if pbanco=0 then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin4(1,'CADP02_LOTES','P2LM_CODEMP','P2CODEMP','P2LM_LOTSEQ','P2LOTSEQ','P2LM_CHAVE','P2CHAVE','P2LM_ITEM','P2ITEM');

      Qr_Ped02_lotes.SQL.Add('  from '+mTabTemp_emp+',CADP01'+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
              +' P1STATUS<'+mstatus_excluido+' ');
      Qr_Ped02_lotes.Sql.Add(' group by P2CODPRO, P2LM_CODPRO,P2LM_LOTE,'
                           +' P2LM_DTVCTO ');
      try
         Qr_Ped02_Lotes.Open;
      except
         Qr_Ped02_Lotes.sql.savetofile('c:\sqlped02lm.txt');
         end;
      end;
   end;
//Qr_Ped.SQL.SaveToFile('C:\SQL.TXT');

try
   Qr_Ped.Open;
except
   Qr_Ped.SQL.SaveToFile('C:\SQL.TXT');
   end;
While not Qr_Ped.Eof do
   begin
   TOTALMERC.Value:=TOTALMERC.Value+(Qr_PedP2PRECO.AsFloat*Qr_PedQUANT.AsFloat);
   Qr_Ped.Next;
   end;

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

la_instrucao:='P1CODEMP=CODEMP AND P1LOTSEQ=LOTSEQ AND P1CHAVE=CHAVE AND P1ORDEM=ORDEM ';
if pbanco=0 then
  la_instrucao:=la_instrucao+' and ';

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADP02S','P2SCODEMP','P1CODEMP','P2SLOTSEQ','P1LOTSEQ','P2SCHAVE','P1CHAVE','P2SORDEM','P1ORDEM');
if pbanco=0 then
  la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADPRO','PDCODEMP', 'P2SCODEMP','PDCODPRO' ,'P2SCODPRO');
mchave:='';
Qr_Sel.First;
while not Qr_Sel.Eof do
  begin
  mchave:=mchave+Qr_SelP1CHAVE.AsString+',';
  Qr_Sel.Next;
  end;
mchave:=Copy(mchave,1,length(mchave)-1);
Qr_Ser.Close;
Qr_Ser.SQL.Clear;
Qr_Ser.SQL.Add('Select PDNOME,PDUND,P2SCODPRO,P2SPRECO,P2SDESC1,P2SDESC2,P2SDESC3,P2SVALDES,PDSIT,PDLISTA,PDTABICM,'
              +' PDCODFOR, '+QuotedStr('S')+' as Tipo,'
              +'         sum(P2SQTD) as QUANT from '+mTabTemp_emp+',CADP01'+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
              +' P1STATUS<'+mstatus_excluido+' ');
if trim(mchave)<>'' then
  Qr_Ser.SQL.Add(' and P1CHAVE in ('+mchave+')');
Qr_Ser.SQL.Add(' GROUP BY PDNOME,PDUND,P2SCODPRO,P2SPRECO,P2SDESC1,P2SDESC2,P2SDESC3,P2SVALDES,PDSIT,PDLISTA,PDTABICM,PDCODFOR');
try
  Qr_Ser.Open;
except
  Qr_Ser.SQL.SaveToFile('c:\sql.txt');
  end;



//************************* SERVICOS ***************************************
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP02D','P2DCODEMP',Form_SelEmp.CLB_EMPRESAS);

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_instrucao:='P2DCODEMP=CODEMP AND P2DLOTSEQ=LOTSEQ AND P2DCHAVE=CHAVE AND P2DORDEM=ORDEM ';


DM4.Qr_Ped02d.Close;
DM4.Qr_Ped02d.SQL.Clear;
DM4.Qr_Ped02d.SQL.Add('Select * from '+mTabTemp_emp+',CADP02D'+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
              +' P2DCHAVE<>-99999 ');
DM4.Qr_Ped02d.SQL.Add(' order by P2DCODEMP,P2DLOTSEQ,P2DCHAVE,P2DORDEM,P2DITEM,P2DLINHA');
try
   DM4.Qr_Ped02d.Open;
except
   DM4.Qr_Ped02d.sql.savetofile('c:\sql.txt');
   end;

FreeAndNil(Query_Cons);
result:=true;


end;

procedure TFrm_FatEmp.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePage=TsResMerc then
   begin
   FAtualiza(0);
   end;
end;

procedure TFrm_FatEmp.Qr_SelCalcFields(DataSet: TDataSet);
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

procedure TFrm_FatEmp.btnImprimirClick(Sender: TObject);
begin
   if not Qr_Ped.IsEmpty then
      RLReport1.PreviewModal
   else begin
      fmensagem('Não existe registro para Impressão!',0,['0'],0);
      Exit;
   end;
end;

procedure TFrm_FatEmp.RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   if Trim(CODCV.Text) <> '' then
      lbl_convenio.Caption := CODCV.Text+'-'+NOMCV.Text
   else
      lbl_convenio.Caption := '';

   if Trim(CODCLI.Text) <> '' then
      lbl_cliente.Caption  := CODCLI.Text+'-'+NOMCLI.Text
   else
      lbl_cliente.caption  := '';
end;

procedure TFrm_FatEmp.RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   rdb_unitario.Text       := FormatFloat('#,##0.000',Qr_PedP2PRECO.Value);
   rdb_quantidade.Text     := FormatFloat('#,##0.000',Qr_PedQUANT.Value);
   xTotal                  := 0;
   xTotal                  := Qr_PedP2PRECO.Value * Qr_PedQUANT.Value;
   lbl_totalizacao.Caption := FormatFloat('#,##0.00',xTotal);
end;

procedure TFrm_FatEmp.RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   xTotalGeral := 0;
   Qr_Ped.First;
   while not Qr_Ped.eof do begin
     xTotalGeral            := xTotalGeral + (Qr_PedP2PRECO.Value * Qr_PedQUANT.Value);
     lbl_totalgeral.Caption := FormatFloat('#,##0.00',xTotalGeral);

     Qr_Ped.Next;
   end;
end;

procedure TFrm_FatEmp.Qr_SelAfterPost(DataSet: TDataSet);
begin
if Qr_SelP1OK.AsString='P' then
   xTotalSel:=xTotalSel+Qr_SelP1TOTALL.AsFloat
else
   xTotalSel:=xTotalSel-Qr_SelP1TOTALL.AsFloat;
//xTotalSel:=xTotalSel-xTotalSel_ant-xTotalASel_Ant;
edt_totalgeral.Value         := xTotalGeral;
edt_totalsel.Value           := xTotalSel;
edt_totalASelecionar.Value   := xtotalGeral-xTotalSel;

end;

procedure TFrm_FatEmp.DBGrid1DblClick(Sender: TObject);
begin
Qr_Sel.Edit;
if Qr_SelP1OK.AsString<> 'P' then
   Qr_SelP1OK.Value:='P'
else Qr_SelP1OK.AsString := ' ';
Qr_Sel.Post;


end;

procedure TFrm_FatEmp.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFrm_FatEmp.bbSalvarPadraoClick(Sender: TObject);
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

procedure TFrm_FatEmp.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_FatEmp.cb_agruparitensExit(Sender: TObject);
begin
fDeletaPadroes(-1,'_FATEMP','CB_AGRUPARITENS');
fGravaPadroes(-1,'CB_AGRUPARITENS'     ,'checked'   ,'_FATEMP',IIF(CB_AGRUPARITENS.Checked,'true','false'));
AgruparItens:=cb_agruparitens.Checked;
end;

procedure TFrm_FatEmp.edt_percdescExit(Sender: TObject);
begin
edt_percdesc.Text:=formatfloat(mcasas_pct, valfloat(edt_percdesc.Text));
if (valfloat(edt_percdesc.Text)<0) or (ValFloat(edt_percdesc.Text)>99) then
   edt_percdesc.Text:='0,00';

if (valfloat(edt_percdesc.Text)>0) then
   begin
   edt_valdesc.Text:='0';
   end;

end;


function tFrm_FatEmp.fDescontoValido(pPercDesc: Real): Boolean;
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

procedure TFrm_FatEmp.edt_valdescExit(Sender: TObject);
begin
edt_valdesc.Text:=formatfloat(mcasas, valfloat(edt_valdesc.Text));
if (valfloat(edt_valdesc.Text)<0) or (ValFloat(edt_valdesc.Text)>ValFloat(edt_totalsel.Text)) then
   edt_valdesc.Text:='0,00';

if (valfloat(edt_valdesc.Text)>0) then
   begin
   edt_percdesc.Text:='0,00';
   end;

end;

end.
