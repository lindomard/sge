unit S_RcPReal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, S_DM1, db, dbtables, func, S_Impres,
  S_Bco, S_CCu, S_Dpto, S_Cli, S_For, S_Ven, S_Tra,lerarq,S_Usr,S_DM4,
  ComCtrls, RLReport, RLPDFFilter, RLXLSFilter, RLRichFilter, RLFilters,
  RLHTMLFilter, RLDraftFilter,variants, CheckLst  ,S_SelEmp, RxMemDS;

type
  TFrm_RCPReal = class(TForm)
    Qr_LDR: TQuery;
    Qr_LDRsacado: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    sbn_coddep: TSpeedButton;
    sbn_codccu: TSpeedButton;
    StaticText2: TStaticText;
    CODBCO: TEdit;
    OMITIR_BCO: TCheckBox;
    lbx_codbco: TListBox;
    StaticText1: TStaticText;
    CODDEP: TEdit;
    OMITIR_DEP: TCheckBox;
    lbx_coddep: TListBox;
    StaticText3: TStaticText;
    CODCCU: TEdit;
    OMITIR_CCU: TCheckBox;
    lbx_codccu: TListBox;
    CODFOR: TEdit;
    StaticText6: TStaticText;
    OMITIR_FOR: TCheckBox;
    lbx_codfor: TListBox;
    TabSheet2: TTabSheet;
    StaticText5: TStaticText;
    CODVEN: TEdit;
    OMITIR_VEN: TCheckBox;
    lbx_codven: TListBox;
    StaticText7: TStaticText;
    lbx_codtra: TListBox;
    OMITIR_TRA: TCheckBox;
    CODTRA: TEdit;
    MCODUSR: TEdit;
    OMITIR_USR: TCheckBox;
    StaticText8: TStaticText;
    lbx_codusr: TListBox;
    Label4: TLabel;
    MDT1: TMaskEdit;
    Label5: TLabel;
    MDT2: TMaskEdit;
    RG_NAT: TRadioGroup;
    RG_ESTADO: TRadioGroup;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Qr_LDRdebito: TFloatField;
    Qr_LDRcredito: TFloatField;
    Src_LDR: TDataSource;
    Qr_LDRbanco: TStringField;
    Qr_LDRdepartamento: TStringField;
    Qr_LDRcentrocusto: TStringField;
    Qr_LDRDATAPESQ: TDateTimeField;
    Qr_LDRVALORSEL: TFloatField;
    Qr_LDRCODBCO: TFloatField;
    Qr_LDRNOMBCO: TStringField;
    Qr_LDRCODCC: TStringField;
    Qr_LDRNOMCCU: TStringField;
    Qr_LDRNATDC: TStringField;
    Qr_LDRDESCMV: TStringField;
    Qr_LDRNUMDOC: TStringField;
    Qr_LDRNUMDOC2: TStringField;
    Qr_LDRCODDEP: TStringField;
    Qr_LDRNOMDEP: TStringField;
    Qr_LDRTIPO: TStringField;
    Qr_LDRCODIGO: TFloatField;
    Qr_LDRCOMPENS: TFloatField;
    Qr_LDRNOME: TStringField;
    Qr_LDRCODEMP: TFloatField;
    Qr_LDRGRUPO: TStringField;
    cb_agrupar: TComboBox;
    Label1: TLabel;
    CB_SEMBORDA: TCheckBox;
    CB_BANCO: TCheckBox;
    CB_DEPTO: TCheckBox;
    CB_CCU: TCheckBox;
    CB_SACADO: TCheckBox;
    matricial: TRLDraftFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLPDFFilter1: TRLPDFFilter;
    bbSalvarPadrao: TBitBtn;
    CB_ENTRELINHA: TCheckBox;
    CB_AGRUSAC: TCheckBox;
    Qr_LDRcredbco: TStringField;
    Qr_LDRdebbco: TStringField;
    Qr_LDRCODLDR: TFloatField;
    ts_Relatorio: TTabSheet;
    RLReport1: TRLReport;
    RLBand_CAB: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    lbl_titulo02: TRLLabel;
    lbl_periodo: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    lbl_titulo: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    band_cab: TRLBand;
    lbl_cabdat: TRLMemo;
    lbl_cabdesc: TRLMemo;
    lbl_cabnumdoc: TRLMemo;
    lbl_cabdeb: TRLMemo;
    lbl_cabcred: TRLMemo;
    lbl_cabacum: TRLMemo;
    lbl_cabcodigo: TRLMemo;
    RLBand_det: TRLBand;
    db_datpesq: TRLDBText;
    db_descmv: TRLDBText;
    db_numdoc: TRLDBText;
    lbl_acum: TRLLabel;
    db_codigo: TRLDBText;
    rlb_banco: TRLBand;
    lbl_espaco: TRLLabel;
    dbBanco: TRLDBText;
    rlb_depto: TRLBand;
    lbl_espaco02: TRLLabel;
    db_depart: TRLDBText;
    rlb_ccu: TRLBand;
    lbl_espaco03: TRLLabel;
    db_centrocusto: TRLDBText;
    rlb_sacado: TRLBand;
    lbl_espaco04: TRLLabel;
    db_sacado: TRLDBText;
    RLBand6: TRLBand;
    lbl_espaco05: TRLLabel;
    lbl_total: TRLLabel;
    RLLabel9: TRLLabel;
    lbl_totdeb_gru: TRLLabel;
    lbl_totcred_gru: TRLLabel;
    lbl_totacum_gru: TRLLabel;
    RLLabel4: TRLLabel;
    RLBand_finalpag: TRLBand;
    lbl_rodape: TRLLabel;
    lblG_saldoant: TRLLabel;
    rlGSaldo_ant: TRLLabel;
    RLBand_finalger: TRLBand;
    lbl_totalger: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel5: TRLLabel;
    lbl_totdeb_ger: TRLLabel;
    lbl_totcred_ger: TRLLabel;
    lbl_totacum_ger: TRLLabel;
    lbl_saldoger: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    lbl_saldoacum_ger: TRLLabel;
    lbl_ordem: TLabel;
    cb_ordem: TComboBox;
    ts_resumoSaldo: TTabSheet;
    RLReport_saldoBancario: TRLReport;
    RLBand3: TRLBand;
    RLDBText2: TRLDBText;
    RLLabel6: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel15: TRLLabel;
    Qr_SaldoBancario: TQuery;
    CB_SALDO: TCheckBox;
    Qr_SaldoBancarioBCCODBCO: TFloatField;
    Qr_SaldoBancarioBCBANCO: TStringField;
    Qr_SaldoBancarioBCLIMITE: TFloatField;
    Qr_SaldoBancarioBCSALDOI: TFloatField;
    Qr_SaldoBancarioDEBITO: TFloatField;
    Qr_SaldoBancarioCREDITO: TFloatField;
    Src_SaldoBancario: TDataSource;
    RLBand_cabsaldo: TRLBand;
    rldetail_saldo: TRLBand;
    rlcabsaldo_codigo: TRLLabel;
    rlcabsaldo_nome: TRLLabel;
    rlcabsaldo_saldo: TRLLabel;
    rlcabsaldo_limite: TRLLabel;
    rlcabsaldo_disponivel: TRLLabel;
    rlsaldo_rodape: TRLBand;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    Qr_SaldoBancariosaldo: TFloatField;
    Qr_SaldoBancariodisponivel: TFloatField;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    rlRodsaldo_nome: TRLLabel;
    rlRodsaldo_saldo: TRLLabel;
    rlRodsaldo_limite: TRLLabel;
    rlRodsaldo_disponivel: TRLLabel;
    CB_MODELO: TComboBox;
    Label2: TLabel;
    lbl_grupo: TRLLabel;
    rl_resumobanco: TRLBand;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    lblrc_text_saldoatu: TRLLabel;
    lbl_limite: TRLLabel;
    lblrc_text_dispon: TRLLabel;
    lblrc_saldoant: TRLLabel;
    lblrc_totdeb: TRLLabel;
    lblrc_totcre: TRLLabel;
    lblrc_saldoatu: TRLLabel;
    lblrc_limcred: TRLLabel;
    lblrc_dispon: TRLLabel;
    CB_LINHA_LQ: TCheckBox;
    tsConfiguracao: TTabSheet;
    Label3: TLabel;
    Label6: TLabel;
    TAMCAB: TEdit;
    Label7: TLabel;
    TAMDET: TEdit;
    ALTCAB: TEdit;
    ALTDET: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    CB_DESCSAC: TCheckBox;
    CB_OBSFINSAC: TCheckBox;
    lbl_credbco: TRLLabel;
    lbl_debbco: TRLLabel;
    Label10: TLabel;
    CB_COMPENS: TComboBox;
    sbt_expexcel: TSpeedButton;
    mem_excel: TRxMemoryData;
    Src_Excel: TDataSource;
    mem_exceldatadoc: TStringField;
    mem_exceldescmv: TStringField;
    mem_excelcodldr: TStringField;
    mem_excelnumdoc: TStringField;
    mem_exceldebito: TStringField;
    mem_excelcredito: TStringField;
    mem_excelsaldo: TStringField;
    Qr_LDRREGISTRO: TFloatField;
    Qr_LDRORIGEM: TStringField;
    StaticText4: TStaticText;
    CODCLI: TEdit;
    OMITIR_CLI: TCheckBox;
    lbx_codcli: TListBox;
    CB_PROVISAO: TCheckBox;
    cb_compra: TCheckBox;
    tsMaisFiltros: TTabSheet;
    StaticText9: TStaticText;
    edt_codusr_cx: TEdit;
    OMITIR_USR_CX: TCheckBox;
    lbx_codusr_cx: TListBox;
    cb_quebra_agrupa: TCheckBox;
    Label11: TLabel;
    CB_TPPESQ: TComboBox;
    RLBand1: TRLBand;
    rlCriterito: TRLMemo;
    Label12: TLabel;
    CB_CONCILIAMENTO: TComboBox;
    CB_TICKET_MEDIO: TCheckBox;
    RLBand_ticket_medio: TRLBand;
    lbl_ticket_medio: TRLLabel;
    Qr_SaldoGeral: TQuery;
    Qr_SaldoGeralCODBCO: TFloatField;
    Qr_SaldoGeralVALOR_DEB: TFloatField;
    Qr_SaldoGeralVALOR_CRED: TFloatField;
    Qr_SaldoGeralSALDO: TFloatField;
    Qr_SaldoGeralBCLIMITE: TFloatField;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    cb_tipolancameno: TComboBox;
    edt_codfil: TEdit;
    bbexpdom_salvarpadrao: TBitBtn;
    bbdom_exportar: TBitBtn;
    Qr_LDRCCEXP_CODCTA_CRED: TStringField;
    Qr_LDRCCEXP_CODCTA_DEB: TStringField;
    cb_dom_exportacc: TCheckBox;
    Qr_LDRCCEXP_CODCCU_CRED: TStringField;
    Qr_LDRCCEXP_CODCCU_DEB: TStringField;
    SaveDialog1: TSaveDialog;
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODBCOExit(Sender: TObject);
    procedure CODDEPExit(Sender: TObject);
    procedure CODCCUExit(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure CODVENExit(Sender: TObject);
    procedure CODTRAExit(Sender: TObject);
    procedure MCODUSRExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODTRAKeyPress(Sender: TObject; var Key: Char);
    procedure MCODUSRKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_coddepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codccuKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codtraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codusrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbn_coddepClick(Sender: TObject);
    procedure sbn_codccuClick(Sender: TObject);
    procedure Qr_LDRCalcFields(DataSet: TDataSet);
    procedure cb_agruparExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RLBand_detBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure CB_SEMBORDAClick(Sender: TObject);
    procedure rlb_saldoantAfterPrint(Sender: TObject);
    procedure bbSalvarPadraoClick(Sender: TObject);
    procedure CB_ENTRELINHAClick(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand_finalgerBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure cb_agruparClick(Sender: TObject);
    procedure Qr_SaldoBancarioCalcFields(DataSet: TDataSet);
    procedure RLReport_saldoBancarioBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rldetail_saldoBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rlsaldo_rodapeBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rl_resumobancoBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rlb_saldoantBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rl_resumobancoAfterPrint(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure TAMCABExit(Sender: TObject);
    procedure TAMDETExit(Sender: TObject);
    procedure ALTCABExit(Sender: TObject);
    procedure ALTDETExit(Sender: TObject);
    procedure CB_DESCSACExit(Sender: TObject);
    procedure CB_OBSFINSACExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure sbt_expexcelClick(Sender: TObject);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RG_ESTADOClick(Sender: TObject);
    procedure edt_codusr_cxExit(Sender: TObject);
    procedure edt_codusr_cxKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codusr_cxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cb_agruparChange(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand_ticket_medioBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure bbdom_exportarClick(Sender: TObject);
    procedure bbexpdom_salvarpadraoClick(Sender: TObject);
  private
    { Private declarations }
    function FBuscaSaldo(pCodbco: Integer): Real;
    function fAbrirBanco(pTipo: Integer): Boolean;


    function fInstrucaoSql(pSaldo: Boolean;pCodbco: Integer): String;




    function fLerSaldoGeral: boolean;





  public
    { Public declarations }
    form_impres_rcpreal: tFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_RCPReal: TFrm_RCPReal;
  mSaldoIni: Real;
  mCred: Real;
  mDeb: Real;
  mCred_Gru: Real;
  mDeb_Gru: Real;
  mCred_Ger: Real;
  mDeb_Ger: Real;
  mSaldoAcum: Real;

  mSaldo_totSaldo: Real;
  mSaldo_totLimite: Real;
  mSaldo_totDisponivel: Real;

  mDataPesq,mDataEmi: String;
  codbco_ant: Integer;
  mGrupo_Ant: String;
  mLimCred: Real;

  mQtdCred: Integer;
  mQTdDeb: Integer;
  mTotalCred: Real;
  mTotalDeb: Real;

implementation

uses Func2, func_excecoes, S_Ocorrencias;

{$R *.DFM}

procedure TFrm_RCPReal.bbSairClick(Sender: TObject);
begin
close;
end;


function tFrm_RcPReal.fAbrirBanco(pTipo: Integer): Boolean;
begin
if (trim(mdt1.Text)<>'/  /') and (trim(mdt2.Text)<>'/  /') then
   begin
   if StrtoDate(mdt1.Text)>StrToDate(mdt2.text) then
      begin
      fmensagem('Data inicial maior que final, inválido!',0,['0'],0);
      exit;
      end;
   end;
codbco_ant:=-1;
if CB_TPPESQ.ItemIndex=0 then
   mDataPesq:='DATAREF'
else if CB_TPPESQ.ItemIndex=1 then
   mDataPesq:='DATADP'
else if CB_TPPESQ.ItemIndex=2 then
   mDataPesq:='DATAREAL'
else
   mDataPesq:='DATCONC';
lbl_cabdat.Lines.Clear;
if RG_ESTADO.ItemIndex=0 then
   begin
   mcinst3:='VALORR';
   mDataEmi:='DATAREAL';
   lbl_cabdat.Lines.Add('Data');
   lbl_cabdat.Lines.Add('Realizada');
   lbl_titulo.Caption:='Lançamentos Realizados';
   end
else
   begin
   mcinst3:='VALORP';
   mDataEmi:='DATADP';
   lbl_cabdat.Lines.Add('Data');
   lbl_cabdat.Lines.Add('Prevista');
   if RG_ESTADO.ItemIndex=1 then
      lbl_titulo.Caption:='Lançamentos Previstos'
   else
      lbl_titulo.Caption:='Lançamentos Previstos e Realizados';
   end;

rlCriterito.Lines.Clear;
rlCriterito.Lines.Add('Periodo: '+fperiodo(0,MDT1.Text,MDT2.Text));
rlCriterito.Lines.Add('Pesquisa Feita por Data '+CB_TPPESQ.Text);
if RG_NAT.ItemIndex=1 then
   rlCriterito.Lines.Add('Somente Debitos')
else if RG_NAT.ItemIndex=2 then
   rlCriterito.Lines.Add('Somente Creditos');
if RG_ESTADO.ItemIndex=0 then
   rlCriterito.Lines.Add('Somente Realizados')
else if RG_ESTADO.ItemIndex=1 then
   rlCriterito.Lines.Add('Somente Previstos');

if CB_COMPENS.ItemIndex=1 then
   rlCriterito.Lines.Add('Somente Compensados')
else if CB_COMPENS.ItemIndex=2 then
   rlCriterito.Lines.Add('Somente Não Compensados');

if CB_CONCILIAMENTO.ItemIndex=1 then
   rlCriterito.Lines.Add('Somente Conciliados')
else if CB_CONCILIAMENTO.ItemIndex=2 then
   rlCriterito.Lines.Add('Somente Não Conciliados');



{DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADLDR set VALORP=round(VALORP,'+DM1.Tb_PargerPCASAS.AsString+')'
                      +', VALORR=round(VALORR,'+DM1.Tb_PargerPCASAS.AsString+')'
                      +' where round(VALORP,'+DM1.Tb_PargerPCASAS.AsString+')<>VALORP '
                      +' or    round(VALORR,'+DM1.Tb_PargerPCASAS.AsString+')<>VALORR ');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;
}
la_instrucao:='';
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

lbl_periodo.Caption:=fperiodo(0,MDT1.Text,mdt2.Text);

la_Empresas:=fEmpresas_Selecionadas('CADLDR','CADLDR.CODEMP',Form_SelEmp.CLB_EMPRESAS);


fInnerJoin(0,'CADCCU','CODEMP','CCCODEMP','CODCC','CCCODCCU');

//fInnerJoin(0,'CADCCU','CODEMP','CCCODEMP','CODCC','CCCODCCU');




Qr_Ldr.Close;
Qr_Ldr.SQL.Clear;
if cb_agrupar.ItemIndex=0 then
  begin
  Qr_Ldr.SQL.Add('Select TO_DATE(sysdate) as DATAPESQ,');
  Qr_Ldr.SQL.Add('       0 as VALORSEL,');
  Qr_Ldr.SQL.Add('       0 as CODLDR,');
  Qr_Ldr.SQL.Add('       BCCODBCO as CODBCO,  ');
  Qr_Ldr.SQL.Add('       BCBANCO as NOMBCO, ');
  Qr_Ldr.SQL.Add('       '+chr(39)+' '+chr(39)+' as CODCC,  ');
  Qr_Ldr.SQL.Add('       '+chr(39)+' '+chr(39)+' as NOMCCU, ');
  Qr_Ldr.SQL.Add('       '+chr(39)+' '+chr(39)+' as NATDC,  ');
  Qr_Ldr.SQL.Add('       '+chr(39)+' '+chr(39)+' as DESCMV, ');
  Qr_Ldr.SQL.Add('       '+chr(39)+' '+chr(39)+' as NUMDOC, ');
  Qr_Ldr.SQL.Add('       '+chr(39)+' '+chr(39)+' as NUMDOC2,');
  Qr_Ldr.SQL.Add('       '+chr(39)+' '+chr(39)+' as CODDEP, ');
  Qr_Ldr.SQL.Add('       '+chr(39)+' '+chr(39)+' as NOMDEP, ');
  Qr_Ldr.SQL.Add('       '+chr(39)+' '+chr(39)+' as TIPO,   ');
  Qr_Ldr.SQL.Add('       '+chr(39)+' '+chr(39)+' as CCEXP_CODCTA_CRED,   ');
  Qr_Ldr.SQL.Add('       '+chr(39)+' '+chr(39)+' as CCEXP_CODCTA_DEB,   ');

  Qr_Ldr.SQL.Add('       '+chr(39)+' '+chr(39)+' as CCEXP_CODCCU_CRED,   ');
  Qr_Ldr.SQL.Add('       '+chr(39)+' '+chr(39)+' as CCEXP_CODCCU_DEB,   ');

  Qr_Ldr.SQL.Add('       0 as CODIGO, ');
  Qr_Ldr.SQL.Add('       0 as COMPENS,');
  Qr_Ldr.SQL.Add('       '+chr(39)+' '+chr(39)+' as NOME,   ');
  if cb_agrupar.ItemIndex=0 then
     begin
     Qr_Ldr.SQL.Add('       BCBANCO  ||'+chr(39)+' - '+chr(39)+' ||  TO_CHAR(BCCODBCO)   as GRUPO,');
     end
  else
     begin
     Qr_Ldr.SQL.Add('       '+chr(39)+insere2(' ',' ',30)+chr(39)+' as GRUPO,');
     end;
  Qr_Ldr.SQL.Add('       1 as CODEMP     ');
  Qr_Ldr.SQL.Add(' ,rownum as registro ');
  Qr_Ldr.SQL.Add(' ,'+chr(39)+'DUAL'+chr(39)+' as origem ');
  Qr_Ldr.SQL.Add('       from DUAL,CADBCO       ');
  mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
  if trim(mcinst2)<>'' then
    begin
    Qr_LDR.SQL.Add(' where BCCODBCO '+mcinst2);
    Qr_LDR.SQL.Add(fRetirarBloqueados(['CADBCO']));
    end;
  Qr_Ldr.SQL.Add('      union      ');
  end;
Qr_Ldr.SQL.Add('Select '+mDataEmi+' as DATAPESQ,');
Qr_Ldr.SQL.Add('       '+mcinst3+' as VALORSEL,');
Qr_Ldr.SQL.Add('       CODLDR,');
Qr_Ldr.SQL.Add('       CODBCO,');
Qr_Ldr.SQL.Add('       NOMBCO,');
Qr_Ldr.SQL.Add('       CODCC,');
Qr_Ldr.SQL.Add('       NOMCCU,');
Qr_Ldr.SQL.Add('       NATDC,');
if CB_OBSFINSAC.Checked then
   mcinst2:='FC_OBSFIN'
else
   mcinst2:='DESCMV';

if CB_AGRUSAC.Checked then
   begin
   Qr_Ldr.SQL.Add('       '+mcinst2+' ||'+chr(39)+':'+chr(39)+' || NOME as DESCMV, ')
   end
else
   begin
   Qr_Ldr.SQL.Add('       '+mcinst2+' AS DESCMV,');
   end;
Qr_Ldr.SQL.Add('       NUMDOC,');
Qr_Ldr.SQL.Add('       NUMDOC2,');
Qr_Ldr.SQL.Add('       CODDEP,');
Qr_Ldr.SQL.Add('       NOMDEP,');
Qr_Ldr.SQL.Add('       TIPO,');
Qr_Ldr.SQL.Add('       CCEXP_CODCTA_CRED,   ');
Qr_Ldr.SQL.Add('       CCEXP_CODCTA_DEB,   ');

Qr_Ldr.SQL.Add('       CCEXP_CODCCU_CRED,   ');
 Qr_Ldr.SQL.Add('      CCEXP_CODCCU_DEB,   ');

Qr_Ldr.SQL.Add('       CODIGO,');
Qr_Ldr.SQL.Add('       COMPENS,');
Qr_Ldr.SQL.Add('       NOME,');
mSaldoAcum:=0;
if cb_agrupar.ItemIndex=5 then
   Qr_Ldr.SQL.Add('       NOME as GRUPO,')
else if cb_agrupar.ItemIndex=4 then
   Qr_Ldr.SQL.Add('       NOMDEP ||'+chr(39)+' - '+chr(39)+' || nomccu   as GRUPO,')
else if cb_agrupar.ItemIndex=3 then
   Qr_Ldr.SQL.Add('       NOMDEP as GRUPO,')
else if cb_agrupar.ItemIndex=2 then
   Qr_Ldr.SQL.Add('       TO_CHAR('+mDataPesq+','+chr(39)+fdt2+chr(39)+') as GRUPO,')
else if cb_agrupar.ItemIndex=1 then
   Qr_Ldr.SQL.Add('       NOMCCU as GRUPO,')
else if cb_agrupar.ItemIndex=0 then
   begin
   Qr_Ldr.SQL.Add('       NOMBCO  ||'+chr(39)+' - '+chr(39)+' ||  TO_CHAR(CODBCO)   as GRUPO,');
   end
else
   begin
   Qr_Ldr.SQL.Add('       '+chr(39)+insere2(' ',' ',30)+chr(39)+' as GRUPO,');
   end;
Qr_Ldr.SQL.Add('       CADLDR.CODEMP ');
Qr_Ldr.SQL.Add(' ,rownum as registro ');
Qr_Ldr.SQL.Add(' ,'+chr(39)+'cADLDR'+chr(39)+' as origem ');

Qr_Ldr.Sql.Add(' from CADLDR '+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and '));
Qr_Ldr.SQL.Add(' STATUS<9 ');


if CB_CONCILIAMENTO.ItemIndex=1 then
   begin
   Qr_Ldr.SQL.Add(' and not (DATCONC is null or DATCONC<=:DATCONC) ');
   Qr_Ldr.ParamByName('DATCONC').Value:=pdatanula;
   end
else if CB_CONCILIAMENTO.ItemIndex=2 then
   begin
   Qr_Ldr.SQL.Add(' and (DATCONC is null or DATCONC<=:DATCONC) ');
   Qr_Ldr.ParamByName('DATCONC').Value:=pdatanula;
   end;

Qr_LDR.SQL.add(fInstrucaoSql(false,0 ));





if (CB_PROVISAO.Visible) and (CB_PROVISAO.Checked=true) then
  begin
  Qr_Ldr.SQL.Add(' union ');
  Qr_Ldr.SQL.Add('Select CP_DATAPREV  as DATAPESQ,');
  Qr_Ldr.SQL.Add('       CP_VALOR as VALORSEL,');
  Qr_Ldr.SQL.Add('       CP_CHAVE as CODLDR,');
  Qr_Ldr.SQL.Add('       CP_CODBCO as CODBCO,  ');
  Qr_Ldr.SQL.Add('       BCBANCO as NOMBCO, ');
  Qr_Ldr.SQL.Add('       CP_CODCC as CODCC,  ');
  Qr_Ldr.SQL.Add('       CCNOME as NOMCCU, ');
  Qr_Ldr.SQL.Add('       CP_NATDC as NATDC,  ');
  Qr_Ldr.SQL.Add('       CP_DESCMV as DESCMV, ');
  Qr_Ldr.SQL.Add('       '+chr(39)+' '+chr(39)+' as NUMDOC, ');
  Qr_Ldr.SQL.Add('       '+chr(39)+' '+chr(39)+' as NUMDOC2,');
  Qr_Ldr.SQL.Add('       CP_CODDEP as CODDEP, ');
  Qr_Ldr.SQL.Add('       DNOME as NOMDEP, ');
  Qr_Ldr.SQL.Add('       CP_TIPO as TIPO,   ');

  Qr_Ldr.SQL.Add('       '+chr(39)+' '+chr(39)+' as CCEXP_CODCTA_CRED,   ');
  Qr_Ldr.SQL.Add('       '+chr(39)+' '+chr(39)+' as CCEXP_CODCTA_DEB,   ');

  Qr_Ldr.SQL.Add('       '+chr(39)+' '+chr(39)+' as CCEXP_CODCCU_CRED,   ');
  Qr_Ldr.SQL.Add('       '+chr(39)+' '+chr(39)+' as CCEXP_CODCCU_DEB,   ');

  Qr_Ldr.SQL.Add('       CP_CODIGO as CODIGO, ');
  Qr_Ldr.SQL.Add('       0 as COMPENS,');
  Qr_Ldr.SQL.Add(' CASE '
                      +'  WHEN CP_TIPO='+chr(39)+'CL'+chr(39)+' THEN '
                      +' (SELECT CRAZAO FROM CADCLI WHERE CCODCLI=CP_CODIGO'
                      +fla_EmpBaixaAlta(0,'CADCLI',' and ',codemp,'CCODEMP',' ')+' ) '
                      +'  WHEN CP_TIPO='+chr(39)+'TR'+chr(39)+' THEN '
                      +'(SELECT TRRAZTRA FROM CADTRA WHERE TRCODTRA=CP_CODIGO'
                      +fla_EmpBaixaAlta(0,'CATRA',' and ',codemp,'TRCODEMP',' ')+' ) '
                      +' WHEN CP_TIPO='+chr(39)+'FU'+chr(39)+' THEN '
                      +'(SELECT CFNOMFUN FROM CADFUN WHERE CFCODFUN=CP_CODIGO'
                      +fla_EmpBaixaAlta(0,'CADFUN',' and ',codemp,'CFCODEMP',' ')+' ) '
                      +' WHEN CP_TIPO='+chr(39)+'US'+chr(39)+' THEN '
                      +'(SELECT NOMUSR FROM CADUSR WHERE CODUSR=CP_CODIGO'
                      +fla_EmpBaixaAlta(0,'CADUSR',' and ',codemp,'CADLDR.CODEMP',' ')+' ) '
                      +'ELSE '
                      +'(SELECT FRAZAO FROM CADFOR WHERE FCODFOR=CP_CODIGO '
                      +fla_EmpBaixaAlta(0,'CADFOR',' and ',codemp,'FCODEMP',' ')+' ) '
                      +' END '
                      +' AS NOME, ');
  if cb_agrupar.ItemIndex=5 then
    begin
    Qr_Ldr.SQL.Add(' CASE '
                  +'  WHEN CP_TIPO='+chr(39)+'CL'+chr(39)+' THEN '
                  +' (SELECT max(CRAZAO) FROM CADCLI WHERE CCODCLI=CP_CODIGO'
                  +fla_EmpBaixaAlta(0,'CADCLI',' and ',codemp,'CCODEMP',' ')+' ) '
                  +'  WHEN CP_TIPO='+chr(39)+'TR'+chr(39)+' THEN '
                  +'(SELECT max(TRRAZTRA) FROM CADTRA WHERE TRCODTRA=CP_CODIGO'
                  +fla_EmpBaixaAlta(0,'CATRA',' and ',codemp,'TRCODEMP',' ')+' ) '
                  +' WHEN CP_TIPO='+chr(39)+'FU'+chr(39)+' THEN '
                  +'(SELECT max(CFNOMFUN) FROM CADFUN WHERE CFCODFUN=CP_CODIGO'
                  +fla_EmpBaixaAlta(0,'CADFUN',' and ',codemp,'CFCODEMP',' ')+' ) '
                  +' WHEN CP_TIPO='+chr(39)+'US'+chr(39)+' THEN '
                  +'(SELECT max(NOMUSR) FROM CADUSR WHERE CODUSR=CP_CODIGO'
                  +fla_EmpBaixaAlta(0,'CADUSR',' and ',codemp,'CADLDR.CODEMP',' ')+' ) '
                  +'ELSE '
                  +'(SELECT max(FRAZAO) FROM CADFOR WHERE FCODFOR=CP_CODIGO '
                  +fla_EmpBaixaAlta(0,'CADFOR',' and ',codemp,'FCODEMP',' ')+' ) '
                  +' END '
                  +' AS GRUPO, ');
    end
  else if cb_agrupar.ItemIndex=4 then
    Qr_Ldr.SQL.Add('       DNOME ||'+chr(39)+' - '+chr(39)+' || CCNOME   as GRUPO,')
  else if cb_agrupar.ItemIndex=3 then
    Qr_Ldr.SQL.Add('       DNOME as GRUPO,')
  else if cb_agrupar.ItemIndex=2 then
    Qr_Ldr.SQL.Add('       TO_CHAR(CP_DATAPREV) as GRUPO,')
  else if cb_agrupar.ItemIndex=1 then
    Qr_Ldr.SQL.Add('       CCNOME as GRUPO,')
  else if cb_agrupar.ItemIndex=0 then
    begin
    Qr_Ldr.SQL.Add('       BCBANCO  ||'+chr(39)+' - '+chr(39)+' ||  TO_CHAR(CP_CODBCO)   as GRUPO,');
    end
  else
    begin
    Qr_Ldr.SQL.Add('       '+chr(39)+insere2(' ',' ',30)+chr(39)+' as GRUPO,');
    end;
  Qr_Ldr.SQL.Add('       CP_CODEMP as CODEMP     ');
  Qr_Ldr.SQL.Add(' ,rownum as registro, '
                +chr(39)+'PROVISAO'+chr(39)+' as origem ');

  la_tabelas  :='';
  la_Join     :='';
  la_instrucao:='';


  Qr_Ldr.SQL.Add('       from CADLDR_PROVISAO '+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
              +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
              +'  CP_CODEMP<>-1');

  if trim(MDT1.Text)<>'/  /' then
     Qr_Ldr.SQL.Add(fFormatdatetimeParaConsulta('CP_DATAPREV',true,strtodate(mdt1.text)));

  if trim(MDT2.Text)<>'/  /' then
     Qr_Ldr.SQL.Add(fFormatdatetimeParaConsulta('CP_DATAPREV',false,strtodate(mdt2.text)));

   Qr_Ldr.SQL.Add(fInstrucaoSql(false,0));


  end;

  // COMPRAS

if (cb_compra.Visible) and (cb_compra.Checked=true) then
  begin
  Qr_Ldr.SQL.Add(' union ');
  Qr_Ldr.SQL.Add('Select PF1VDATAV  as DATAPESQ,');
  Qr_Ldr.SQL.Add('       PF1VVALOR as VALORSEL,');
  Qr_Ldr.SQL.Add('       PF1VCHAVE as CODLDR,');
  Qr_Ldr.SQL.Add('       000 as CODBCO,  ');
  Qr_Ldr.SQL.Add('       '+chr(39)+'PEDIDO DE COMPRA'+chr(39)+' as NOMBCO, ');
  Qr_Ldr.SQL.Add('       FCODCCD as CODCC,  ');
  Qr_Ldr.SQL.Add('       FNOMCCD as NOMCCU, ');
  Qr_Ldr.SQL.Add('       '+CHR(39)+'D'+CHR(39)+' as NATDC,  ');
  Qr_Ldr.SQL.Add('       '+CHR(39)+'COMPRAS PREVISTAS'+CHR(39)+' as DESCMV, ');
  Qr_Ldr.SQL.Add('       TO_CHAR(PF1CHAVE) as NUMDOC, ');
  Qr_Ldr.SQL.Add('       '+chr(39)+' '+chr(39)+' as NUMDOC2,');
  Qr_Ldr.SQL.Add('       FCODDEPD as CODDEP, ');
  Qr_Ldr.SQL.Add('       FNOMDEPD as NOMDEP, ');
  Qr_Ldr.SQL.Add('       '+chr(39)+'FR'+chr(39)+' as TIPO,   ');
  Qr_Ldr.SQL.Add('       '+chr(39)+' '+chr(39)+' as CCEXP_CODCTA_CRED,   ');
  Qr_Ldr.SQL.Add('       '+chr(39)+' '+chr(39)+' as CCEXP_CODCTA_DEB,   ');

  Qr_Ldr.SQL.Add('       '+chr(39)+' '+chr(39)+' as CCEXP_CODCCU_CRED,   ');
  Qr_Ldr.SQL.Add('       '+chr(39)+' '+chr(39)+' as CCEXP_CODCCU_DEB,   ');

  Qr_Ldr.SQL.Add('       FCODFOR as CODIGO, ');
  Qr_Ldr.SQL.Add('       0 as COMPENS,');
  Qr_Ldr.SQL.Add('       FRAZAO AS NOME, ');
  if cb_agrupar.ItemIndex=5 then
    begin
    Qr_Ldr.SQL.Add(' FRAZAO AS GRUPO, ');
    end
  else if cb_agrupar.ItemIndex=4 then
    Qr_Ldr.SQL.Add('       FNOMDEPD ||'+chr(39)+' - '+chr(39)+' || FNOMCCD   as GRUPO,')
  else if cb_agrupar.ItemIndex=3 then
    Qr_Ldr.SQL.Add('       FNOMDEPD as GRUPO,')
  else if cb_agrupar.ItemIndex=2 then
    Qr_Ldr.SQL.Add('       TO_CHAR(PF1VDATAV) as GRUPO,')
  else if cb_agrupar.ItemIndex=1 then
    Qr_Ldr.SQL.Add('       FNOMCCD as GRUPO,')
  else if cb_agrupar.ItemIndex=0 then
    begin
    Qr_Ldr.SQL.Add('       '+chr(39)+'PEDIDO DE COMPRAS'+chr(39)+'  ||'+chr(39)+' - '+chr(39)+' ||  0000   as GRUPO,');
    end
  else
    begin
    Qr_Ldr.SQL.Add('       '+chr(39)+insere2(' ',' ',30)+chr(39)+' as GRUPO,');
    end;
  Qr_Ldr.SQL.Add('       PF1CODEMP as CODEMP     ');
  Qr_Ldr.SQL.Add(' ,rownum as registro, '
                +chr(39)+'COMPRAS'+chr(39)+' as origem ');

  la_tabelas  :='';
  la_Join     :='';
  la_instrucao:='';
  fInnerJoin(1,'CADFOR','PF1CODEMP','PF1CODEMP','FCODFOR','PF1CODFOR');
  la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
  Qr_Ldr.SQL.Add('       from CADPF1, CADPF1V '+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
              +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
              +'  PF1CODEMP<>-1 and PF1STATUS=0 and PF1VCHAVE=PF1CHAVE and '
              +'  PF1CODEMP=PF1VCODEMP and PF1LOTSEQ=PF1VLOTSEQ ');

  mcinst2:=fItensListBox(1,lbx_codccu,OMITIR_CCU);
  if trim(mcinst2)<>'' then
    Qr_LDR.SQL.Add(' and FCODCCD '+mcinst2);

  mcinst2:=fItensListBox(1,lbx_coddep,OMITIR_DEP);
  if trim(mcinst2)<>'' then
    Qr_LDR.SQL.Add(' and FCODDEPD '+mcinst2);
  if trim(MDT1.Text)<>'/  /' then
     Qr_Ldr.SQL.Add(fFormatdatetimeParaConsulta('PF1VDATAV',true,strtodate(mdt1.text)));
  if trim(MDT2.Text)<>'/  /' then
     Qr_Ldr.SQL.Add(fFormatdatetimeParaConsulta('PF1VDATAV',false,strtodate(mdt2.text)));
//    end;
  mboolean:=OMITIR_FOR.Checked;
  OMITIR_FOR.Checked:=false;
  mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
  OMITIR_FOR.Checked:=mboolean;
  mcinst4:='';
  if trim(mcinst2)<>'' then
    begin
    mcinst4:='';
    if trim(mcinst4)='' then
      mcinst4:='( '
    else
      mcinst4:=' or ';
    mcinst4:=mcinst4+' ( FCODFOR '+mcinst2+')';
    if OMITIR_FOR.checked then
      mcinst4:=' not '+mcinst4;
    Qr_Ldr.SQL.Add(' and '+mcinst4+')');
    end;
  end;
  // aki

if cb_agrupar.ItemIndex=6 then
   begin
   if cb_ordem.ItemIndex=0 then
      Qr_LDR.SQL.Add(' order by NOMBCO,NOMCCU,CODLDR ')
   else if cb_ordem.ItemIndex=1 then
      Qr_LDR.SQL.Add(' order by NOMBCO,DATAPESQ,CODLDR ')
   else if cb_ordem.ItemIndex=2 then
      Qr_LDR.SQL.Add(' order by NOMBCO,DATAPESQ,CODLDR ')
   else if cb_ordem.ItemIndex=3 then
      Qr_LDR.SQL.Add(' order by NOMBCO,NOME,DATAPESQ,CODLDR ')
   else if cb_ordem.ItemIndex=4 then
      Qr_LDR.SQL.Add(' order by NOMBCO,NOMDEP,DATAPESQ,CODLDR ')
   else if cb_ordem.ItemIndex=5 then
      Qr_LDR.SQL.Add(' order by NOMCCU,DATAPESQ,CODLDR ')
   else if cb_ordem.ItemIndex=6 then
      Qr_LDR.SQL.Add(' order by NOMCCU,DATAPESQ,CODLDR ')
   else if cb_ordem.ItemIndex=7 then
      Qr_LDR.SQL.Add(' order by DATAPESQ,CODLDR ')
   else if cb_ordem.ItemIndex=8 then
      Qr_LDR.SQL.Add(' order by DATAPESQ,CODLDR')
   else if cb_ordem.ItemIndex=9 then
      Qr_LDR.SQL.Add(' order by DATAPESQ,CODLDR ')
   else if cb_ordem.ItemIndex=10 then
      Qr_LDR.SQL.Add(' order by NOMDEP,NOMCCU,DATAPESQ,CODLDR ')
   else if cb_ordem.ItemIndex=11 then
      Qr_LDR.SQL.Add(' order by NOMDEP,NOMCCU,DATAPESQ,CODLDR ')
   else if cb_ordem.ItemIndex=12 then
      Qr_LDR.SQL.Add(' order by NOMDEP,DATAPESQ,CODLDR')
   else if cb_ordem.ItemIndex=13 then
      Qr_LDR.SQL.Add(' order by NOMDEP,DATAPESQ,CODLDR')
   else if cb_ordem.ItemIndex=14 then
      Qr_LDR.SQL.Add(' order by DATAPESQ,CODLDR ')
   else if cb_ordem.ItemIndex=15 then
      Qr_LDR.SQL.Add(' order by NOME,DATAPESQ,CODLDR ')
   else if cb_ordem.ItemIndex=16 then
      Qr_LDR.SQL.Add(' order by NOME,DATAPESQ,CODLDR ')
   else if cb_ordem.ItemIndex=17 then
      Qr_LDR.SQL.Add(' order by NATDC,DATAPESQ,CODLDR ')
   else if cb_ordem.ItemIndex=18 then
      Qr_LDR.SQL.Add(' order by VALORSEL,NOME,CODLDR ')
   else if cb_ordem.ItemIndex=19 then
      Qr_LDR.SQL.Add(' order by VALORSEL DESC,DATAPESQ,CODLDR ')
   else if cb_ordem.ItemIndex=20 then
      Qr_LDR.SQL.Add(' order by DATAREAL,NUMDOC2,CODLDR ')
   end
else if cb_agrupar.ItemIndex=5 then
   Qr_Ldr.SQL.Add(' Order by NOME, DATAPESQ ,CODLDR')
else if cb_agrupar.ItemIndex=4 then
   Qr_Ldr.SQL.Add(' Order by   NOMDEP,nomccu, DATAPESQ ,CODLDR')
else if cb_agrupar.ItemIndex=3 then
   Qr_Ldr.SQL.Add(' Order by NOMDEP,DATAPESQ,CODLDR')
else if cb_agrupar.ItemIndex=2 then
   Qr_Ldr.SQL.Add(' Order by DATAPESQ,CODLDR')
else if cb_agrupar.ItemIndex=1 then
   Qr_Ldr.SQL.Add(' Order by NOMCCU,DATAPESQ,CODLDR')
else if cb_agrupar.ItemIndex=0 then
   Qr_Ldr.SQL.Add(' Order by NOMBCO,CODBCO , DATAPESQ ,CODLDR');


//ex_erroSql_Novo(Qr_Ldr,922,'SGE','CADMOV_PROD_REPETIDO');

try
   Qr_Ldr.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(Qr_Ldr,922,'SGE','CADMOV_PROD_REPETIDO');
   end;
   end;
result:=true;
end;




procedure TFrm_RCPReal.bbImprimirClick(Sender: TObject);
var
  mtotc, mtotd,msaldo,msaldoa: Real;
begin
bbImprimir.Enabled:=false;
fAbrirBanco(0);
fLerSaldoGeral;

if CB_DESCSAC.Checked then
  begin
  db_descmv.DataField:='sacado';
  db_sacado.DataField:='DESCMV';
  end
else
  begin
  db_descmv.DataField:='DESCMV';
  db_sacado.DataField:='sacado';
  end;
mGrupo_Ant:=Qr_LDRGRUPO.AsString;
if CB_LINHA_LQ.Checked then
  matricial.PrinterFamily:=fmESCP2
else
  matricial.PrinterFamily:=fmEpsonLike;

RLBand_CAB.Font.Height  :=ValInt2(TAMCAB.Text);
Band_CAB.Font.Height    :=ValInt2(TAMDET.Text);
Band_CAB.Font.Height    :=ValInt2(TAMDET.Text);
RLBand_det.Font.Height  :=ValInt2(TAMDET.Text);
rlb_banco.Font.Height   :=ValInt2(TAMDET.Text);
rlb_depto.Font.Height   :=ValInt2(TAMDET.Text);
rlb_ccu.Font.Height     :=ValInt2(TAMDET.Text);
rlb_sacado.Font.Height  :=ValInt2(TAMDET.Text);
lbl_total.Font.Height   :=ValInt2(TAMDET.Text);

RLBand_det.Height     :=ValInt2(ALTDET.Text);
rlb_banco.Height      :=ValInt2(ALTDET.Text);
rlb_depto.Height      :=ValInt2(ALTDET.Text);
rlb_ccu.Height        :=ValInt2(ALTDET.Text);
rlb_sacado.Height     :=ValInt2(ALTDET.Text);
db_datpesq.Height     :=ValInt2(ALTDET.Text);
db_descmv.Height      :=ValInt2(ALTDET.Text);
db_numdoc.Height      :=ValInt2(ALTDET.Text);
lbl_credbco.Height    := ValInt2(ALTDET.Text);
lbl_debbco.Height     := ValInt2(ALTDET.Text);

lbl_acum.Height       :=ValInt2(ALTDET.Text);
lbl_espaco.Height     :=ValInt2(ALTDET.Text);
dbBanco.Height        :=ValInt2(ALTDET.Text);
lbl_espaco02.Height   :=ValInt2(ALTDET.Text);
db_depart.Height      :=ValInt2(ALTDET.Text);
lbl_espaco03.Height   :=ValInt2(ALTDET.Text);
db_centrocusto.Height :=ValInt2(ALTDET.Text);
lbl_espaco04.Height   :=ValInt2(ALTDET.Text);
db_sacado.Height      :=ValInt2(ALTDET.Text);
lbl_espaco05.Height   :=ValInt2(ALTDET.Text);
lbl_total.Height      :=ValInt2(ALTDET.Text);
RLLabel9.Height       :=ValInt2(ALTDET.Text);
lbl_totdeb_gru.Height :=ValInt2(ALTDET.Text);
lbl_totcred_gru.Height:=ValInt2(ALTDET.Text);
lbl_totacum_gru.Height:=ValInt2(ALTDET.Text);

band_cab.Height       :=(ValInt2(ALTDET.Text)*2)+2;

rlband_cab.Height     :=(ValInt2(ALTCAB.Text)*3)+2;

RLLabel13.Top         :=RLDBText2.Top+RLDBText2.Height+3;
RLLabel12.Top         :=RLLabel13.Top;
RLLabel14.Top         :=RLLabel13.Top;
lbl_periodo.Top       :=RLLabel13.Top;
RLSystemInfo2.Top     :=RLLabel13.Top;

mCred:=0;
mDeb :=0;
mCred_Gru:=0;
mDeb_Gru :=0;
mCred_Ger:=0;
mDeb_Ger :=0;

if CB_MODELO.ItemIndex=0 then
  begin
  rlGSaldo_ant.Visible  :=true;
  lblG_saldoant.Visible :=true;
  rl_resumobanco.Visible:=true;
  if cb_agrupar.ItemIndex=0 then
    begin
    mSaldoIni:=0;
    codbco_ant:=-1;
    RLBand_finalger.Visible:=true;
    lbl_saldoger.Visible     :=true;
    lbl_saldoacum_ger.Visible:=true;
    end
  else
    begin
    mSaldoIni:=FBuscaSaldo(0);
    lbl_saldoger.Visible     :=false;
    lbl_saldoacum_ger.Visible:=false;
    RLBand_finalger.Visible:=true;
    end;
  rlb_banco.Visible :=CB_BANCO.Checked;
  rlb_depto.Visible :=CB_DEPTO.Checked;
  rlb_ccu.Visible   :=CB_CCU.Checked;
  rlb_sacado.Visible:=CB_SACADO.Checked;
  lblrc_saldoant.Caption:=FormatFloat(mcasas, mSaldoIni);
  lbl_rodape.Caption:='Relatório Emitido em '+FormatDatetime(fdt2, date)
                     +' as '+formatDatetime('hh:nn:ss', now)+'. Intersys';
  if CB_SALDO.Checked then
     begin
     Qr_SaldoBancarioBCLIMITE.DisplayFormat:=mcasas;
     Qr_SaldoBancariosaldo.DisplayFormat:=mcasas;
     Qr_SaldoBancariodisponivel.DisplayFormat:=mcasas;
     la_tabelas  :='';
     la_Join     :='';
     la_Empresas :='';
     la_instrucao:='';
     fInnerJoin(0,'CADLDR','','','CODBCO','BCCODBCO');

     la_Empresas:=fEmpresas_Selecionadas('CADLDR','CADLDR.CODEMP',Form_SelEmp.CLB_EMPRESAS);

     Qr_SaldoBancario.Close;
     Qr_SaldoBancario.SQL.Clear;
     Qr_SaldoBancario.SQL.Add('select BCCODBCO,bcbanco,bclimite,BCSALDOI, '
                             +' SUM(DECODE(NATDC,'+chr(39)+'D'+chr(39)+','+mcinst3+',0)) AS DEBITO, '
                             +' SUM(DECODE(NATDC,'+chr(39)+'D'+chr(39)+',0,'+mcinst3+')) AS CREDITO '
                             +' from cadbco '+iif(la_tabelas='','',',')+la_tabelas
                             +'       '+la_Join
                             +'       where '+iif(la_Empresas='','',la_Empresas+' and '));

     if trim(fRetInstMECadastro('CADBCO','BCCODEMP',codemp))<>'' then
       Qr_SaldoBancario.SQL.Add(' and '+fRetInstMECadastro('CADBCO','BCCODEMP',codemp));
     Qr_SaldoBancario.SQL.Add('      '+        iif(la_instrucao='','',la_instrucao+' and ')
                             +' STATUS<9 '+fInstrucaoSql(true,0 )
                             );

     try
        Qr_SaldoBancario.Open;
     except
        Qr_SaldoBancario.SQL.SaveToFile(mpastatemp + 'SQL.TXT');
        end;
     la_Empresas:=fEmpresas_Selecionadas('CADLDR','CADLDR.CODEMP',Form_SelEmp.CLB_EMPRESAS);
     RLReport1.NextReport:=RLReport_saldoBancario;
     end
  else
     RLReport1.NextReport:=nil;
  if (cb_quebra_agrupa.Checked) and (cb_agrupar.ItemIndex<6) then
    RLGroup1.PageBreaking:=pbBeforePrint
  else
    RLGroup1.PageBreaking:=pbNone;
  RLReport1.PreviewModal;
  end
else
  begin
  testeform := TFrm_RcPReal(FindGlobalComponent('form_impres_rcpreal'));
  if (testeform=nil)  then
    begin
    Application.CreateForm(Tfrm_Impres, form_impres_rcpreal);
    end;
  form_impres_rcpreal.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
  form_impres_rcpreal.mpag:=0;
  form_impres_rcpreal.mlin:=0;
  if cb_agrupar.ItemIndex=0 then
    begin
    mSaldoIni:=0;
    codbco_ant:=-1;
    end
  else
    begin
    mSaldoIni:=FBuscaSaldo(0);
    end;
  Qr_LDR.First;
  codbco_ant:=Qr_LDRCODBCO.AsInteger;
  While not Qr_Ldr.Eof do
    begin
    if form_impres_rcpreal.mlin=0 then
      begin
      form_impres_rcpreal.mpag:=form_impres_rcpreal.mpag+1;
      form_impres_rcpreal.Rdprint1.impf(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      form_impres_rcpreal.Rdprint1.Impf(01,65,'Pagina....: '+FormatFloat('0000',form_impres_rcpreal.mpag),mnormal);
      if RG_ESTADO.ItemIndex=2 then
        form_impres_rcpreal.Rdprint1.Impf(02,01,'Caixa Previsto e Realizado.',mnormal)
      else if RG_ESTADO.ItemIndex=1 then
        form_impres_rcpreal.Rdprint1.Impf(02,01,'Caixa Previsto.',mnormal)
      else if RG_ESTADO.ItemIndex=2 then
        form_impres_rcpreal.Rdprint1.Impf(02,01,'Caixa Realizado.',mnormal);
      form_impres_rcpreal.Rdprint1.Impf(02,65,'Data: '+FormatDateTime('dd/mm/yyyy',date),mnormal);
      form_impres_rcpreal.Rdprint1.Impf(03,01,insere2('-','-',80),mnormal);
      if (Trim(mdt1.Text)='/  /') and (Trim(mdt2.Text)='/  /') then
        form_impres_rcpreal.Rdprint1.Impf(04,01,Centra('TODAS AS DATAS.',' ',60),mneg)
      else if (Trim(mdt1.Text)='/  /') and (Trim(mdt2.Text)<>'/  /') then
        form_impres_rcpreal.Rdprint1.impf(04,01,Centra('ATE: '+MDT2.Text,' ',60),mneg)
      else if (Trim(mdt1.Text)<>'/  /') and (Trim(mdt2.Text)='/  /') then
        form_impres_rcpreal.Rdprint1.impf(04,01,Centra('A PARTIR DE: '+MDT1.Text,' ',60),mneg)
      else
        form_impres_rcpreal.Rdprint1.impf(04,01,Centra('PERIODO DE: '+MDT1.Text+' A '+MDT2.Text,' ',60),mneg);
      form_impres_rcpreal.mlin:=5;
      if cb_agrupar.ItemIndex<>6 then
        begin
        form_impres_rcpreal.RDprint1.ImpF(form_impres_rcpreal.mlin,01,centra(Qr_LDRGRUPO.AsString,' ',80),mneg);
        form_impres_rcpreal.mlin:=form_impres_rcpreal.mlin+1;
        end;
{
Data       Descricao                                                  Codigo Documento          Debito        Credito      Acumulado
10/09/2007 123456789012345678901234567890123456789012345678901234567 1234567 1234567890 zzz.zzz.zz9,99 zzz.zzz.zz9,99 zzz.zzz.zz9,99
}
      form_impres_rcpreal.rdprint1.Impf(form_impres_rcpreal.mlin,01,'Data       Descricao                                                  Codigo Documento          Debito        Credito      Acumulado',mreduz);
      if form_impres_rcpreal.mpag=1 then
        begin
        form_impres_rcpreal.mlin:=form_impres_rcpreal.mlin+1;
        form_impres_rcpreal.RDprint1.ImpF(form_impres_rcpreal.mlin,01,'- Saldo Anterior.........................................................................................................'
                                +insere(FormatFloat('###,##0.00',mSaldoIni),' ',12),mreduz);
        end;
      end;
    Qr_LDR.Next;
    form_impres_rcpreal.mlin:=form_impres_rcpreal.mlin+1;
    end;
  end;
if (cb_agrupar.ItemIndex=0) then
  begin
  mSaldoIni:=FBuscaSaldo(Qr_LDRCODBCO.AsInteger);
  rlGSaldo_ant.Visible  :=true;
  lblG_saldoant.Visible :=true;
  lblG_saldoant.Caption:=FormatFloat(mcasas, mSaldoIni);
  codbco_ant:=Qr_LDRCODBCO.AsInteger;
  mCred:=0;
  mDeb :=0;
  mCred_Gru:=0;
  mDeb_Gru :=0;
  end;

mCred:=mCred+Qr_LDRcredito.Value;
mDeb :=mDeb+Qr_LDRdebito.Value;
mCred_Gru:=mCred_Gru+Qr_LDRcredito.Value;
mDeb_Gru :=mDeb_Gru+Qr_LDRdebito.Value;
mCred_Ger:=mCred_Ger+Qr_LDRcredito.Value;
mDeb_Ger :=mDeb_Ger+Qr_LDRdebito.Value;
lbl_acum.Caption    :=FormatFloat(mcasas, mSaldoIni-mDeb+mCred)+'    ';
lbl_credbco.Caption := FormatFloat(mcasas, ValFloat(Qr_LDRcredbco.Value))+'   ';
lbl_debbco.Caption  := FormatFloat(mcasas, ValFloat(Qr_LDRdebbco.Value))+'   ';

bbImprimir.Enabled:=true;
end;

procedure TFrm_RCPReal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_RCPReal.CODBCOExit(Sender: TObject);
begin
CODBCO.Text:=fdeixanum2(CODBCO.Text);
if Trim(CODBCO.Text)<>'' then
  begin
  mDadosRetornoCaixa := fTestarCADBCO(true,CODBCO.Text);
  if mDadosRetornoCaixa.pOk=false then
     CODBCO.SetFocus
  else
     begin
     lbx_codbco.Items.Add(FormatFloat('0000000',StrToFloat(CODBCO.TEXT))
                                  +' - '+mDadosRetornoCaixa.pNome);
     codbco.text := '';
     codbco.SetFocus;
     end
  end;
end;

procedure TFrm_RCPReal.CODDEPExit(Sender: TObject);
begin
if Trim(CODDEP.Text)<>'' then
   begin
   mDadosRetornoCaixa := fTestarCADDEP_CX(true,CODDEP.text);
   if mDadosRetornoCaixa.pOk=false then
      CODDEP.SetFocus
   else
      begin
      lbx_coddep.Items.Add(CODDEP.TEXT
                                  +'-'+DM1.Query1.Fields[0].AsString);
      CODDEP.text := '';
      if (CODDEP.Visible=true) and (CODDEP.Enabled=true) then
         CODDEP.SetFocus;
      end;
   end;
end;

procedure TFrm_RCPReal.CODCCUExit(Sender: TObject);
begin
if Trim(CODCCU.Text)<>'' then
  begin
  mDadosRetornoCaixa := fTestarCADCC(true,CODCCU.text);
   if mDadosRetornoCaixa.pOk = false then
      CODCCU.SetFocus
   else
      begin
      lbx_codccu.Items.Add(CODCCU.TEXT
                                  +'-'+mDadosRetornoCaixa.pNome);
      CODCCU.text := '';
      CODCCU.SetFocus;
      end
   end;
end;

procedure TFrm_RCPReal.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
  begin
  if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODCLI.Text) then
    begin
    lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.TEXT))
                                  +' - '+DM1.Query1.Fields[0].AsString);
    CODCLI.text := '';
    CODCLI.SetFocus;
    end
  else
    begin
    fmensagem('Cliente não Cadastrado!',0,['0'],0);
    CODCLI.text := '';
    CODCLI.SetFocus;
    end;
  end;
end;

procedure TFrm_RCPReal.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
  begin
  if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODFOR.Text) then
    begin
    lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(CODFOR.TEXT))
                                  +' - '+DM1.Query1.Fields[0].AsString);
    codfor.text := '';
    codfor.SetFocus;
    end
  else
    begin
    fmensagem('Fornecedor não Cadastrado!',0,['0'],0);
    CODFOR.text := '';
    CODFOR.SetFocus;
    end;
  end;
end;

procedure TFrm_RCPReal.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',CODVEN.Text) then
      begin
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODVEN.text := '';
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      begin
      fmensagem('Vendedor não Cadastrado!',0,['0'],0);
      CODVEN.text := '';
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end;
   end;


end;

procedure TFrm_RCPReal.CODTRAExit(Sender: TObject);
begin
CODTRA.Text:=fdeixanum2(CODTRA.Text);
if Trim(CODTRA.Text)<>'' then
   begin
   if flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',CODTRA.Text) then
      begin
      lbx_codtra.Items.Add(FormatFloat('0000000',StrToFloat(CODTRA.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODTRA.text := '';
      CODTRA.SetFocus;
      end
   else
      begin
      fmensagem('Transportador não Cadastrado!',0,['0'],0);
      CODTRA.text := '';
      CODTRA.SetFocus;
      end;
   end;

end;

procedure TFrm_RCPReal.MCODUSRExit(Sender: TObject);
begin
MCODUSR.Text:=fdeixanum2(MCODUSR.Text);
if Trim(MCODUSR.Text)<>'' then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',MCODUSR.Text) then
      begin
      lbx_codusr.Items.Add(FormatFloat('0000000',StrToFloat(MCODUSR.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      MCODUSR.text := '';
      MCODUSR.SetFocus;
      end
   else
      begin
      fmensagem('Usuário não Cadastrado!',0,['0'],0);
      MCODUSR.text := '';
      MCODUSR.SetFocus;
      end;
   end;


end;

procedure TFrm_RCPReal.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_RcPREeal',Key);
   if trim(CODBCO.Text)<>'' then
      CODBCOExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_RCPReal.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_PLDR',key);
if trim(CODCLI.Text)<>'' then
   CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_RCPReal.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
      CODFOR.Text:=fChamaFor(0,'frm_RcPReal',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_RCPReal.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_RcPReal',Key);
   if trim(CODVEN.Text)<>'' then
      CODVENExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_RCPReal.CODTRAKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTRA.Text:=fChamaTra(0,'frm_RcPReal',Key);
if trim(CODTRA.Text)<>'' then
   CODTRAExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_RCPReal.MCODUSRKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   MCODUSR.Text:=fChamaUsr(0,'frm_RcPReal',Key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_RCPReal.lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);

end;

procedure TFrm_RCPReal.lbx_coddepKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_coddep.ItemIndex>=0 then
      lbx_coddep.Items.Delete(lbx_coddep.ItemIndex);

end;

procedure TFrm_RCPReal.lbx_codccuKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codccu.ItemIndex>=0 then
      lbx_codccu.Items.Delete(lbx_codccu.ItemIndex);

end;

procedure TFrm_RCPReal.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);
end;

procedure TFrm_RCPReal.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_RCPReal.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_RCPReal.lbx_codtraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codtra.ItemIndex>=0 then
      lbx_codtra.Items.Delete(lbx_codtra.ItemIndex);

end;

procedure TFrm_RCPReal.lbx_codusrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codusr.ItemIndex>=0 then
      lbx_codusr.Items.Delete(lbx_codusr.ItemIndex);

end;

procedure TFrm_RCPReal.sbn_coddepClick(Sender: TObject);
begin
CODDEP.Text :=fChamaDeptoCX(0,'frm_RcPReal','');
if trim(CODDEP.Text)<>'' then
   CODDEPExit(Self);
end;

procedure TFrm_RCPReal.sbn_codccuClick(Sender: TObject);
begin
CODCCU.Text:=fChamaCCU(0,'frm_rcprel','');
if trim(codccu.Text)<>'' then
   CODCCUExit(self);

end;

procedure TFrm_RCPReal.Qr_LDRCalcFields(DataSet: TDataSet);
begin
Qr_LDRsacado.Value:=Qr_LDRNOME.Value;
if Qr_LDRNATDC.Value='D' then
   begin
   Qr_LDRdebito.Value :=Qr_LDRvalorsel.Value;
   Qr_LDRcredito.Value:=0;
   Qr_LDRcredbco.Value:='';
   Qr_LDRdebbco.Value :=FormatFloat(mcasas, Qr_LDRVALORSEL.Value);
   end
else
   begin
   Qr_LDRdebito.Value :=0;
   Qr_LDRcredito.Value:=Qr_LDRvalorsel.Value;
   Qr_LDRdebbco.Value:='';
   Qr_LDRcredbco.Value :=FormatFloat(mcasas, Qr_LDRVALORSEL.Value);
   end;
Qr_LDRbanco.Value       :=Qr_LDRCODBCO.AsString+'-'+Qr_LDRNOMBCO.Value;
Qr_LDRdepartamento.Value:=Qr_LDRCODDEP.Value+'-'+Qr_LDRNOMDEP.Value;
Qr_LDRcentrocusto.Value :=Qr_LDRCODCC.Value+'-'+Qr_LDRNOMCCU.Value;

end;

procedure TFrm_RCPReal.cb_agruparExit(Sender: TObject);
begin
if cb_agrupar.ItemIndex<0 then
   with cb_agrupar do ItemIndex:=Items.IndexOf(cb_agrupar.Text);
cb_agrupar.text:=cb_agrupar.Items.Strings[cb_agrupar.ItemIndex];

end;

procedure TFrm_RCPReal.FormCreate(Sender: TObject);
begin



ts_Relatorio.TabVisible   :=false;
   ts_ResumoSaldo.TabVisible :=false;


if codusr=1111 then
   tsConfiguracao.TabVisible:=true
else
   tsConfiguracao.TabVisible :=false;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

Qr_LDRcredito.DisplayFormat :=mcasas;
Qr_LDRdebito.DisplayFormat  :=mcasas;
Qr_LDRDATAPESQ.DisplayFormat:=fdt2;

if flfilpad(-1,'_EXPDOM','') then
   begin
   if DM4.Tb_FilPad.Locate('FPCOMP','EDT_CODFIL',[]) then
      edt_codfil.Text:=DM4.Tb_FilPadFPVALOR.Value;
   if DM4.Tb_FilPad.Locate('FPCOMP','CB_TIPOLANCAMENTO',[]) then
      cb_tipolancameno.ItemIndex := valint(DM4.Tb_FilPadFPVALOR.Value);
   if DM4.Tb_FilPad.Locate('FPCOMP','CB_DOM_EXPORTACC',[]) then
      cb_dom_exportacc.Checked  := DM4.Tb_FilPadFPVALOR.Value='true';
   end;   
DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;
DM4.Tb_FilPad.First;
MDT1.Text:=FormatDatetime(fdt2, date);
MDT2.Text:=FormatDatetime(fdt2, date);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_RCPREAL','RG_TPPESQ']),[]) then
   CB_TPPESQ.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_RCPREAL','RG_NAT']),[]) then
   RG_NAT.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_RCPREAL','RG_ESTADO']),[]) then
   RG_ESTADO.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_RCPREAL','CB_BANCO']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_BANCO.Checked:=true
   else
      CB_BANCO.Checked:=false;
   end
else
   CB_BANCO.Checked:=false;
if flfilpad(-1,'_RCPREAL','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','TAMCAB',[]) then
      TAMCAB.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','TAMDET',[]) then
      TAMDET.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCOMP','ALTCAB',[]) then
      ALTCAB.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','ALTDET',[]) then
      ALTDET.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_DESCSAC',[]) then
      CB_DESCSAC.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_OBSFINSAC',[]) then
      CB_OBSFINSAC.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

   end;


{
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_RCPREAL','CB_ENTRELINHA']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_ENTRELINHA.Checked:=true
   else
      CB_ENTRELINHA.Checked:=false;
   end
else
   CB_ENTRELINHA.Checked:=false;

}




if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_RCPREAL','CB_DEPTO']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_DEPTO.Checked:=true
   else
      CB_DEPTO.Checked:=false;
   end
else
   CB_DEPTO.Checked:=false;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_RCPREAL','CB_CCU']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_CCU.Checked:=true
   else
      CB_CCU.Checked:=false;
   end
else
   CB_CCU.Checked:=false;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_RCPREAL','CB_SACADO']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_SACADO.Checked:=true
   else
      CB_SACADO.Checked:=false;
   end
else
   CB_SACADO.Checked:=false;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_RCPREAL','CB_SEMBORDA']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_SEMBORDA.Checked:=true
   else
      CB_SEMBORDA.Checked:=false;
   end
else
   CB_SEMBORDA.Checked:=false;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_RCPREAL','CB_LINHA_LQ']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_LINHA_LQ.Checked:=true
   else
      CB_LINHA_LQ.Checked:=false;
   end
else
   CB_LINHA_LQ.Checked:=false;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_RCPREAL','CB_AGRUPAR']),[]) then
   cb_agrupar.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_RCPREAL','CB_AGRUSAC']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_AGRUSAC.Checked:=true
   else
      CB_AGRUSAC.Checked:=false;
   end
else
   CB_AGRUSAC.Checked:=false;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_RCPREAL','CB_SALDO']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_SALDO.Checked:=true
   else
      CB_SALDO.Checked:=false;
   end
else
   CB_SALDO.Checked:=false;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_RCPREAL','CB_QUEBRA_AGRUPA']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      cb_quebra_agrupa.Checked:=true
   else
      cb_quebra_agrupa.Checked:=false;
   end
else
   CB_SALDO.Checked:=false;


if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_RCPREAL','CB_ORDEM']),[]) then
   cb_ordem.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_RCPREAL','CB_TICKET_MEDIO']),[]) then
   CB_TICKET_MEDIO.Checked:=DM4.Tb_FilPadFPVALOR.AsString='true';


{
if flqr1('BCBANCO,BCCODBCO','BC','CADBCO','N','BCCODBCO','1') then
   begin
   DM1.Query2.Close;
   dm1.Query2.SQL.Clear;
   dm1.Query2.Params.CreateParam(ftString,'NOMBCO',ptInput);
   DM1.Query2.sql.add('update CADLDR set CODBCO=1, NOMBCO=:NOMBCO '
                     +' WHERE CODBCO=0 OR CODBCO is null ');
   DM1.Query2.ParamByName('NOMBCO').AsString:=DM1.Query1.fieldbyName('BCBANCO').AsString;
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end;
DM1.Query2.Close;
dm1.Query2.SQL.Clear;
dm1.Query2.SQL.Add('UPDATE CADLDR SET NOMBCO=(SELECT BCBANCO FROM CADBCO WHERE BCCODBCO=CODBCO'
                  +iif(DM1.Qr_TID.Locate('TINOME','CADBCO',[]),'',' and BCCODEMP=CODEMP ')
                  +') WHERE NOMBCO='+chr(39)+' '+chr(39));
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   end;
}
end;

procedure TFrm_RCPReal.RLBand_detBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if (cb_agrupar.ItemIndex=0) and (codbco_ant<>Qr_LDRCODBCO.AsInteger) then
  begin
  mSaldoIni:=FBuscaSaldo(Qr_LDRCODBCO.AsInteger) ;
  rlGSaldo_ant.Visible  :=true;
  lblG_saldoant.Visible :=true;
  lblG_saldoant.Caption :=FormatFloat(mcasas, mSaldoIni);
  lblrc_saldoant.Caption:=FormatFloat(mcasas, mSaldoIni);
  codbco_ant:=Qr_LDRCODBCO.AsInteger;
  mCred:=0;
  mDeb :=0;
  mCred_Gru:=0;
  mDeb_Gru :=0;
  end;
if Qr_LDRORIGEM.AsString='PROVISAO' then
   RLBand_det.Font.Color:=clLime
else if Qr_LDRORIGEM.AsString='COMPRAS' then
   RLBand_det.Font.Color:=clBlue
else
   RLBand_det.Font.Color:=clBlack;

mCred:=mCred+Qr_LDRcredito.Value;
mDeb :=mDeb+Qr_LDRdebito.Value;
mCred_Gru:=mCred_Gru+Qr_LDRcredito.Value;
mDeb_Gru :=mDeb_Gru+Qr_LDRdebito.Value;
mCred_Ger:=mCred_Ger+Qr_LDRcredito.Value;
mDeb_Ger :=mDeb_Ger+Qr_LDRdebito.Value;
lbl_acum.Caption:=FormatFloat(mcasas, mSaldoIni-mDeb+mCred)+'   ';
lbl_credbco.Caption := FormatFloat(mcasas, ValFloat(Qr_LDRcredbco.Value))+'   ';
lbl_debbco.Caption  := FormatFloat(mcasas, ValFloat(Qr_LDRdebbco.Value))+'   ';

if Qr_LDRNATDC.AsString='D' then
   begin
   mQTdDeb   :=mQTdDeb+1;
   mTotalDeb :=mTotalDeb+Qr_LDRvalorsel.AsFloat;
   end
else
   begin
   mQTdCred   :=mQTdCred+1;
   mTotalCred :=mTotalCred+Qr_LDRvalorsel.AsFloat;
   end




end;

procedure TFrm_RCPReal.CB_SEMBORDAClick(Sender: TObject);
begin
if CB_SEMBORDA.Checked then
   begin
   mboolean:=False;
   lbl_cabdat.Alignment   :=taLeftJustify;
   lbl_cabdesc.Alignment  :=taLeftJustify;
   lbl_cabnumdoc.Alignment:=taLeftJustify;
   lbl_cabdeb.Alignment   :=taRightJustify;
   lbl_cabcred.Alignment  :=taRightJustify;
   lbl_cabacum.Alignment  :=taRightJustify;
   lbl_cabcodigo.Alignment:=taRightJustify;
   end
else
   begin
   mboolean:=true;
   lbl_cabdat.Alignment   :=taCenter;
   lbl_cabdesc.Alignment  :=taCenter;
   lbl_cabnumdoc.Alignment:=taCenter;
   lbl_cabdeb.Alignment   :=taCenter;
   lbl_cabcred.Alignment  :=taCenter;
   lbl_cabacum.Alignment  :=taCenter;
   lbl_cabcodigo.Alignment:=taCenter;
   end;
//rlb_saldoant.Borders.DrawLeft    :=mboolean;
//rlb_saldoant.Borders.DrawRight   :=mboolean;
lbl_titulo.Borders.DrawBottom    :=mboolean;
lbl_grupo.Borders.DrawBottom      :=mboolean;
band_cab.Borders.DrawBottom      :=mboolean;
lbl_cabdat.Borders.DrawRight     :=mboolean;
lbl_cabdesc.Borders.DrawRight    :=mboolean;
lbl_cabnumdoc.Borders.DrawRight  :=mboolean;
lbl_cabdeb.Borders.DrawRight     :=mboolean;
lbl_cabcred.Borders.DrawRight    :=mboolean;
RLGroup1.Borders.DrawTop         :=mboolean;
RLGroup1.Borders.DrawLeft        :=mboolean;
RLGroup1.Borders.DrawRight       :=mboolean;
RLGroup1.Borders.DrawBottom      :=mboolean;
db_datpesq.Borders.DrawRight     :=mboolean;
db_descmv.Borders.DrawRight      :=mboolean;
dbbanco.Borders.DrawRight        :=mboolean;
db_depart.Borders.DrawRight      :=mboolean;
db_centrocusto.Borders.DrawRight :=mboolean;
db_sacado.Borders.DrawRight      :=mboolean;
lbl_total.Borders.DrawRight      :=mboolean;
RLBand_det.Borders.DrawTop       :=mboolean;
RLBand_det.Borders.DrawBottom    :=mboolean;
db_numdoc.Borders.DrawRight      :=mboolean;
//db_deb.Borders.DrawRight         :=mboolean;
//db_cred.Borders.DrawRight        :=mboolean;
lbl_debbco.Borders.DrawRight         :=mboolean;
lbl_credbco.Borders.DrawRight         :=mboolean;
lbl_espaco.Borders.DrawRight     :=mboolean;
lbl_espaco02.Borders.DrawRight   :=mboolean;
lbl_espaco03.Borders.DrawRight   :=mboolean;
lbl_espaco04.Borders.DrawRight   :=mboolean;
lbl_espaco05.Borders.DrawRight   :=mboolean;
lbl_total.Borders.DrawRight      :=mboolean;
RLBand6.Borders.DrawTop          :=mboolean;
RLLabel9.Borders.DrawRight       :=mboolean;
lbl_totdeb_gru.Borders.DrawRight :=mboolean;
lbl_totcred_gru.Borders.DrawRight:=mboolean;
db_codigo.Borders.DrawRight      :=mboolean;
lbl_cabcodigo.Borders.DrawRight  :=mboolean;
rllabel4.Borders.DrawRight       :=mboolean;

RLBand_ticket_medio.Borders.DrawTop        :=mboolean;

end;

procedure TFrm_RCPReal.rlb_saldoantAfterPrint(Sender: TObject);
begin
//rlb_saldoant.Visible:=false;
end;

procedure TFrm_RCPReal.bbSalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(0,'_RCPREAL','');
fGravaPadroes(0,'RG_TPPESQ'     ,'itemindex' ,'_RCPREAL',IntTostr(CB_TPPESQ.ItemIndex));
fGravaPadroes(0,'RG_NAT'        ,'itemindex' ,'_RCPREAL',IntTostr(RG_NAT.ItemIndex));
fGravaPadroes(0,'RG_ESTADO'     ,'itemindex' ,'_RCPREAL',IntTostr(RG_ESTADO.ItemIndex));
fGravaPadroes(0,'CB_BANCO'      ,'checked'   ,'_RCPREAL',iif(CB_BANCO.Checked,'true','false'));
fGravaPadroes(0,'CB_DEPTO'      ,'checked'   ,'_RCPREAL',iif(CB_DEPTO.Checked,'true','false'));
fGravaPadroes(0,'CB_CCU'        ,'checked'   ,'_RCPREAL',iif(CB_CCU.Checked,'true','false'));
fGravaPadroes(0,'CB_SACADO'     ,'checked'   ,'_RCPREAL',iif(CB_SACADO.Checked,'true','false'));
fGravaPadroes(0,'CB_SEMBORDA'   ,'checked'   ,'_RCPREAL',iif(CB_SEMBORDA.Checked,'true','false'));
fGravaPadroes(0,'CB_LINHA_LQ'   ,'checked'   ,'_RCPREAL',iif(CB_LINHA_LQ.Checked,'true','false'));
//fGravaPadroes(0,'CB_ENTRELINHA' ,'checked'   ,'_RCPREAL',iif(CB_ENTRELINHA.Checked,'true','false'));
fGravaPadroes(0,'CB_AGRUPAR'    ,'itemindex' ,'_RCPREAL',IntTostr(cb_agrupar.ItemIndex));
fGravaPadroes(0,'CB_AGRUSAC'    ,'checked'   ,'_RCPREAL',iif(CB_AGRUSAC.Checked,'true','false'));
fGravaPadroes(0,'CB_SALDO'      ,'checked'   ,'_RCPREAL',iif(CB_SALDO.Checked,'true','false'));
fGravaPadroes(0,'CB_QUEBRA_AGRUPA','checked'   ,'_RCPREAL',iif(cb_quebra_agrupa.Checked,'true','false'));
fGravaPadroes(0,'CB_ORDEM'      ,'itemindex' ,'_RCPREAL',IntTostr(cb_ordem.ItemIndex));
fGravaPadroes(0,'CB_TICK_MEDIO' ,'checked'   ,'_RCPREAL',iif(CB_TICKet_MEDIO.Checked,'true','false'));

fmensagem('Gravado!',0,['0'],0);
end;

procedure TFrm_RCPReal.CB_ENTRELINHAClick(Sender: TObject);
begin
{
if CB_ENTRELINHA.Checked then
   begin
   RLBand4.Height        :=14;
   rlb_banco.Height      :=14;
   rlb_depto.Height      :=14;
   rlb_ccu.Height        :=14;
   rlb_sacado.Height     :=14;
   db_datpesq.Height     :=14;
   db_descmv.Height      :=14;
   db_numdoc.Height      :=14;
   db_deb.Height         :=14;
   db_cred.Height        :=14;
   lbl_acum.Height       :=14;
   lbl_espaco.Height     :=14;
   dbBanco.Height        :=14;
   lbl_espaco02.Height   :=14;
   db_depart.Height      :=14;
   lbl_espaco03.Height   :=14;
   db_centrocusto.Height :=14;
   lbl_espaco04.Height   :=14;
   db_sacado.Height      :=14;
   lbl_espaco05.Height   :=14;
   lbl_total.Height      :=14;
   RLLabel9.Height       :=14;
   lbl_totdeb_gru.Height :=14;
   lbl_totcred_gru.Height:=14;
   lbl_totacum_gru.Height:=14;
   end
else
   begin
   RLBand4.Height        :=10;
   rlb_banco.Height      :=10;
   rlb_depto.Height      :=10;
   rlb_ccu.Height        :=10;
   rlb_sacado.Height     :=10;
   db_datpesq.Height     :=10;
   db_descmv.Height      :=10;
   db_numdoc.Height      :=10;
   db_deb.Height         :=10;
   db_cred.Height        :=10;
   lbl_acum.Height       :=10;
   lbl_espaco.Height     :=10;
   dbBanco.Height        :=10;
   lbl_espaco02.Height   :=10;
   db_depart.Height      :=10;
   lbl_espaco03.Height   :=10;
   db_centrocusto.Height :=10;
   lbl_espaco04.Height   :=10;
   db_sacado.Height      :=10;
   lbl_espaco05.Height   :=10;
   lbl_total.Height      :=10;
   RLLabel9.Height       :=10;
   lbl_totdeb_gru.Height :=10;
   lbl_totcred_gru.Height:=10;
   lbl_totacum_gru.Height:=10;
   end;
}
end;


function TFrm_RcPReal.fInstrucaoSql(pSaldo: Boolean;pCodbco: Integer): String;
var
mDataPesq: String;
mDataReal: String;
mInstrucao: string;
begin
mInstrucao:='';

if CB_TPPESQ.ItemIndex=0 then
   mDataPesq:='DATAREF'
else if CB_TPPESQ.ItemIndex=1 then
   mDataPesq:='DATADP'
else if CB_TPPESQ.ItemIndex=2 then
   mDataPesq:='DATAREAL'
else
   mDataPesq:='DATCONC';

mDataReal:='DATAREAL';

if pSaldo=true then
   begin
   if Trim(MDT1.Text)<>'/  /' then
      begin
      mInstrucao:=mInstrucao+' and '+mDataReal+'<'+QuotedStr(FormatDateTime(fdt,StrtoDate(MDT1.Text)));
      if Trim(MDT2.Text)<>'/  /' then
         begin
         mInstrucao:=mInstrucao+' and DATAREAL>'+QuotedStr(FormatDateTime(fdt,pdatanula))
                     +' and (DTSALDO is null or DTSALDO<'+QuotedStr(FormatDateTime(fdt,StrToDate(MDT2.Text)))+'  or (DTSALDO>DATAREAL) )';
         end;
      mInstrucao:=mInstrucao+' and '+mDataPesq+'<'+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1.Text))+chr(39);
      end;

   mcinst4:='';
   mboolean:=OMITIR_CLI.Checked;
   OMITIR_CLI.Checked:=False;
   mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
   OMITIR_CLI.Checked:=mboolean;
   if trim(mcinst2)<>'' then
      begin
      mcinst4:='(TIPO='+chr(39)+'CL'+chr(39)+' and CODIGO '+mcinst2+')';
      if OMITIR_CLI.Checked then
        mcinst4:=' not '+mcinst4;
      mInstrucao:=mInstrucao+' and '+mcinst4;
      end;


   mcinst4:='';
   mboolean:=OMITIR_FOR.Checked;
   OMITIR_FOR.Checked:=False;
   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   OMITIR_FOR.Checked:=mboolean;
   if trim(mcinst2)<>'' then
      begin
      mcinst4:='( TIPO='+chr(39)+'FR'+chr(39)+' and CODIGO '+mcinst2+')';
      if OMITIR_FOR.Checked then
         mcinst4:=' not '+mcinst4;
      mInstrucao:=mInstrucao+' and '+mcinst4;
      end;


   mboolean:=OMITIR_VEN.Checked;
   OMITIR_VEN.Checked:=False;
   mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
   OMITIR_VEN.Checked:=mboolean;
   mcinst4:='';

   if trim(mcinst2)<>'' then
      begin
      mcinst4:='( TIPO='+chr(39)+'VD'+chr(39)+' and CODIGO '+mcinst2+')';
      if OMITIR_VEN.Checked then
        mcinst4:=' not '+mcinst4;
      mInstrucao:=mInstrucao+' and '+mcinst4;
      end;

   mboolean:=OMITIR_TRA.Checked;
   OMITIR_TRA.Checked:=False;
   mcinst2:=fItensListBox(0,lbx_codtra,OMITIR_TRA);
   OMITIR_TRA.Checked:=mboolean;
   if trim(mcinst2)<>'' then
      begin
      mcinst4:='( TIPO='+chr(39)+'TR'+chr(39)+' and CODIGO '+mcinst2+')';
      if OMITIR_TRA.Checked then
         mcinst4:=' not '+mcinst4;
      mInstrucao:=mInstrucao+' and '+mcinst4;
      end;

   mboolean:=OMITIR_USR.Checked;
   OMITIR_USR.Checked:=False;
   mcinst2:=fItensListBox(0,lbx_codusr,OMITIR_USR);
   OMITIR_USR.Checked:=mboolean;
   mcinst4:='';

   if trim(mcinst2)<>'' then
      begin
      mcinst4:='( TIPO='+chr(39)+'US'+chr(39)+' and CODIGO '+mcinst2+')';
      if OMITIR_USR.Checked then
         mcinst4:=' not '+mcinst4;
      mInstrucao:=mInstrucao+' and '+mcinst4;
      end;

   if CB_TPPESQ.ItemIndex=2 then
      begin
      if trim(MDT2.Text)<>'/  /' then
         begin
         mInstrucao:=mInstrucao+' and DATAREAL>'+QuotedStr(FormatDateTime(fdt,pdatanula))
                     +' and (DTSALDO is null or DTSALDO<'+QuotedStr(FormatDateTime(fdt,StrToDate(MDT2.Text)))+'  or (DTSALDO>DATAREAL) )';
         end
      else
         begin
         mInstrucao:=mInstrucao+' and DATAREAL>'+QuotedStr(FormatDateTime(fdt,pdatanula));
         end;
      end;
   end
else
   begin

   if trim(MDT1.Text)<>'/  /' then
      mInstrucao:=mInstrucao+fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text));
   if trim(MDT2.Text)<>'/  /' then
      mInstrucao:=mInstrucao+fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text));


   mcinst4:='';
   mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
   if trim(mcinst2)<>'' then
      begin
      mcinst4:='(TIPO='+chr(39)+'CL'+chr(39)+' and CODIGO '+mcinst2+')';
      if OMITIR_CLI.Checked then
        mcinst4:=' not '+mcinst4;
      mInstrucao:=mInstrucao+' and '+mcinst4;
      end;

   mcinst4:='';
   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then
      begin
      mcinst4:='( TIPO='+chr(39)+'FR'+chr(39)+' and CODIGO '+mcinst2+')';
      if OMITIR_FOR.Checked then
         mcinst4:=' not '+mcinst4;
      mInstrucao:=mInstrucao+' and '+mcinst4;
      end;

   mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
   mcinst4:='';
   if trim(mcinst2)<>'' then
      begin
      mcinst4:='( TIPO='+chr(39)+'VD'+chr(39)+' and CODIGO '+mcinst2+')';
      if OMITIR_VEN.Checked then
         mcinst4:=' not '+mcinst4;
      mInstrucao:=mInstrucao+' and '+mcinst4;
      end;


   mcinst2:=fItensListBox(0,lbx_codtra,OMITIR_TRA);
   if trim(mcinst2)<>'' then
      begin
      mcinst4:='( TIPO='+chr(39)+'TR'+chr(39)+' and CODIGO '+mcinst2+')';
      if OMITIR_TRA.Checked then
         mcinst4:=' not '+mcinst4;
      mInstrucao:=mInstrucao+' and '+mcinst4;
      end;


   mcinst2:=fItensListBox(0,lbx_codusr,OMITIR_USR);
   mcinst4:='';
   if trim(mcinst2)<>'' then
      begin
      mcinst4:='( TIPO='+chr(39)+'US'+chr(39)+' and CODIGO '+mcinst2+')';
      if OMITIR_USR.Checked then
         mcinst4:=' not '+mcinst4;
      mInstrucao:=mInstrucao+' and '+mcinst4;
      end;


   end;



mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
if trim(mcinst2)<>'' then
   mInstrucao:=mInstrucao+' and CODBCO '+mcinst2;
if pCodbco<>0 then
   mInstrucao:=mInstrucao+' and CODBCO=0'+IntToStr(pcodbco);
IF CB_COMPENS.ItemIndex=1 then
   mInstrucao:=mInstrucao+' and NVL(COMPENS,0)=0'
else if CB_COMPENS.ItemIndex=2 then
   mInstrucao:=mInstrucao+' and NVL(COMPENS,0)=1';

mcinst2:=fItensListBox(1,lbx_codccu,OMITIR_CCU);
if trim(mcinst2)<>'' then
   mInstrucao:=mInstrucao+' and CODCC '+mcinst2;
mcinst2:=fItensListBox(1,lbx_coddep,OMITIR_DEP);
if trim(mcinst2)<>'' then
   mInstrucao:=mInstrucao+' and CODDEP '+mcinst2;

mcinst2:=fItensListBox(1,lbx_codusr_cx,OMITIR_USR_CX);
if trim(mcinst2)<>'' then
   mInstrucao:=mInstrucao+' and CODUSR_CX '+mcinst2;


if RG_NAT.ItemIndex=1 then
   mInstrucao:=mInstrucao+' and NATDC='+QuotedStr('D')
else if RG_NAT.ItemIndex=2 then
   mInstrucao:=mInstrucao+' and NATDC<>'+QuotedStr('D');
if RG_ESTADO.ItemIndex=0 then
   mInstrucao:=mInstrucao+' and '+mDataReal+'>'+QuotedStr(FormatDateTime(fdt,pdatanula))
else if RG_ESTADO.ItemIndex=1 then
   mInstrucao:=mInstrucao+' and (DATAREAL<='+QuotedStr(FormatDateTime(fdt,pdatanula))+' OR DATAREAL IS NULL)';
result:=minstrucao;
// termino
end;

function TFrm_RcPReal.fLerSaldoGeral: boolean;
var
mcampo_valor: string;
begin
la_tabelas  :='';
la_Join     :='';
la_Empresas :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADLDR','CADLDR.CODEMP',Form_SelEmp.CLB_EMPRESAS);

//01.832.358/0001-43
if mGer_Emp_CNPJ=1832358000143 then
   mcampo_valor:='VALORP'
else
   mcampo_valor:='VALORR';



Qr_SaldoGeral.close;
Qr_SaldoGeral.Sql.clear;
Qr_SaldoGeral.Sql.add('SELECT saldo.*,BCLIMITE from '
                    +'('
                    +'select CODBCO,sum(CASE WHEN NATDC='+QuotedStr('D')+' then '+mcampo_valor+' else 0 end) AS VALOR_DEB '
                    +'             ,sum(CASE WHEN NATDC='+QuotedStr('D')+' then 0 else '+mcampo_valor+' end) AS VALOR_CRED '
                    +'             ,sum(CASE WHEN NATDC='+QuotedStr('D')+' then 0 else '+mcampo_valor+' end - CASE WHEN NATDC='+QuotedStr('D')+' then '+mcampo_valor+' else 0 end ) AS SALDO '
                    +'             from CADLDR '
                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                    +' STATUS<9 '
                    +fInstrucaoSql(true,0)
                    +'             GROUP BY CODBCO '
                    +') saldo,CADBCO '
                    +' where bccodbco=codbco ');
//ex_erroSql_Novo(Qr_SaldoGeral,2118,'func Erro:' ,'CADLDR');

try
   Qr_SaldoGeral.open;
   Result:=true;
except on e : exception do
   begin
   ex_erroSql_Novo(Qr_SaldoGeral,2118,'func Erro:'+e.Message ,'CADLDR');
   result:=false;
   end;
   end;


end;



function TFrm_RcPReal.FBuscaSaldo(pCodbco: Integer): Real;

begin


mLimCred :=0;
mSaldoIni:=0;
if pCodbco=0 then
   begin
   Qr_SaldoGeral.first;
   While not Qr_SaldoGeral.eof do
      begin
      mLimCred :=mLimCred+Qr_SaldoGeralBCLIMITE.AsFloat;
      mSaldoIni:=mSaldoIni+Qr_SaldoGeralSALDO.AsFloat;
      Qr_SaldoGeral.Next;
      end;
   end
else
   begin
   if Qr_SaldoGeral.Locate('CODBCO',pCodbco,[]) then
      begin
      mLimCred :=Qr_SaldoGeralBCLIMITE.AsFloat;
      mSaldoIni:=Qr_SaldoGeralSALDO.AsFloat;
      end;
   end;
result:=mSaldoIni;
end;
procedure TFrm_RCPReal.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin


{if (cb_agrupar.ItemIndex=0) and (codbco_ant<>Qr_LDRCODBCO.AsInteger) then
  begin
  mSaldoIni:=FBuscaSaldo(Qr_LDRCODBCO.AsInteger);
  rlGSaldo_ant.Visible  :=true;
  lblG_saldoant.Visible :=true;
//  rl_resumobanco.Visible:=true;
  lblG_saldoant.Caption :=FormatFloat(mcasas, mSaldoIni);
  lblrc_saldoant.Caption:=FormatFloat(mcasas, mSaldoIni);
  if mSaldoIni<0then
     lblrc_saldoant.Font.Color:=clRed
  else
     lblrc_saldoant.Font.Color:=clBlack;

  codbco_ant:=Qr_LDRCODBCO.AsInteger;
//  mGrupo_Ant:=Qr_LDRGRUPO.AsString;
//TIRE DAQUI 2o. LUGAR
  end;
if cb_agrupar.ItemIndex<>0 then
    mGrupo_Ant:=Qr_LDRGRUPO.AsString;

lbl_grupo.Caption:=mGrupo_Ant;
}
end;

procedure TFrm_RCPReal.RLBand_finalgerBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_totcred_ger.Caption:=FormatFloat(mcasas, mCred_Ger);
lbl_totdeb_ger.Caption :=FormatFloat(mcasas, mDeb_Ger);
lbl_totacum_ger.Caption:=FormatFloat(mcasas, mCred_Ger-mDeb_Ger);
lbl_saldoacum_ger.Caption:=FormatFloat(mcasas, mSaldoAcum);
mCred_Ger:=0;
mDeb_Ger :=0;

end;

procedure TFrm_RCPReal.cb_agruparClick(Sender: TObject);
begin
if cb_agrupar.ItemIndex=6 then
   begin
   lbl_ordem.Enabled:=true;
   cb_ordem.Enabled :=true;
   end
else
   begin
   lbl_ordem.Enabled:=false;
   cb_ordem.Enabled :=false;
   end

end;

procedure TFrm_RCPReal.Qr_SaldoBancarioCalcFields(DataSet: TDataSet);
begin
Qr_SaldoBancariosaldo.Value:=Qr_SaldoBancarioCREDITO.AsFloat
                            -Qr_SaldoBancarioDEBITO.AsFloat;
Qr_SaldoBancariodisponivel.Value:=Qr_SaldoBancariosaldo.AsFloat
                                 +Qr_SaldoBancarioBCLIMITE.AsFloat;

end;

procedure TFrm_RCPReal.RLReport_saldoBancarioBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  mSaldo_totSaldo     :=0;
  mSaldo_totLimite    :=0;
  mSaldo_totDisponivel:=0;

end;

procedure TFrm_RCPReal.rldetail_saldoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mSaldo_totSaldo     :=mSaldo_totSaldo+Qr_SaldoBancariosaldo.Value;
mSaldo_totLimite    :=mSaldo_totLimite+Qr_SaldoBancarioBCLIMITE.Value;
mSaldo_totDisponivel:=mSaldo_totDisponivel+Qr_SaldoBancariodisponivel.Value;

end;

procedure TFrm_RCPReal.rlsaldo_rodapeBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rlRodsaldo_saldo.Caption     :=FormatFloat(mcasas, mSaldo_totSaldo);
rlRodsaldo_limite.Caption    :=FormatFloat(mcasas, mSaldo_totLimite);
rlRodsaldo_disponivel.Caption:=FormatFloat(mcasas, mSaldo_totDisponivel);
mSaldo_totSaldo              :=0;
mSaldo_totLimite             :=0;
mSaldo_totDisponivel         :=0;

end;

procedure TFrm_RCPReal.rl_resumobancoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

lblrc_limcred.Caption:=FormatFloat(mcasas, mLimCred);
lblrc_dispon.Caption :=FormatFloat(mcasas, ValFloat(lblrc_saldoatu.Caption)+mLimCred);
if ValFloat(lblrc_dispon.Caption)<0 then
   begin
   lblrc_dispon.Font.Color:=clRed;
   lblrc_text_dispon.Font.Color:=clRed;
   end
else
   begin
   lblrc_dispon.Font.Color:=clBlack;
   lblrc_text_dispon.Font.Color:=clBlack;
   end;

if ValFloat(lblrc_saldoatu.Caption)<0 then
   begin
   lblrc_saldoatu.Font.Color:=clRed;
   lblrc_text_saldoatu.Font.Color:=clRed;
   end
else
   begin
   lblrc_saldoatu.Font.Color:=clBlack;
   lblrc_text_saldoatu.Font.Color:=clBlack;
   end;
end;

procedure TFrm_RCPReal.rlb_saldoantBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if valfloat(lblG_saldoant.Caption)<0then
     lblG_saldoant.Font.Color:=clRed
  else
     lblG_saldoant.Font.Color:=clBlack;
end;

procedure TFrm_RCPReal.rl_resumobancoAfterPrint(Sender: TObject);
begin
mGrupo_Ant:=Qr_LDRGRUPO.AsString;
//mCred_Gru:=0;
//mDeb_Gru :=0;

end;

procedure TFrm_RCPReal.MDT1Exit(Sender: TObject);
begin
if trim(mdt1.Text)<>'/  /' then
   begin
   try
      MDT1.Text:=FormatDateTime(fdt2, StrToDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      end;
   end;
end;

procedure TFrm_RCPReal.MDT2Exit(Sender: TObject);
begin
if trim(mdt2.Text)<>'/  /' then
   begin
   try
      MDT2.Text:=FormatDateTime(fdt2, StrToDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      end;
   end;

end;

procedure TFrm_RCPReal.TAMCABExit(Sender: TObject);
begin
TAMCAB.Text:=IntToStr(ValInt2(TAMCAB.Text));
fDeletaPadroes(-1,'_RCPREAL','TAMCAB');
fGravaPadroes(-1,'TAMCAB'   ,'text'   ,'_RCPREAL',TAMCAB.Text);

end;

procedure TFrm_RCPReal.TAMDETExit(Sender: TObject);
begin
TAMDET.Text:=IntToStr(ValInt2(TAMDET.Text));
fDeletaPadroes(-1,'_RCPREAL','TAMDET');
fGravaPadroes(-1,'TAMDET'   ,'text'   ,'_RCPREAL',TAMDET.Text);

end;

procedure TFrm_RCPReal.ALTCABExit(Sender: TObject);
begin
ALTCAB.Text:=IntToStr(ValInt2(ALTCAB.Text));
fDeletaPadroes(-1,'_RCPREAL','ALTCAB');
fGravaPadroes(-1,'ALTCAB'   ,'text'   ,'_RCPREAL',ALTCAB.Text);


end;

procedure TFrm_RCPReal.ALTDETExit(Sender: TObject);
begin
ALTDET.Text:=IntToStr(ValInt2(ALTDET.Text));
fDeletaPadroes(-1,'_RCPREAL','ALTDET');
fGravaPadroes(-1,'ALTDET'   ,'text'   ,'_RCPREAL',ALTDET.Text);

end;

procedure TFrm_RCPReal.CB_DESCSACExit(Sender: TObject);
begin
fDeletaPadroes(-1,'_RCPREAL','CB_DESCSAC');
fGravaPadroes(-1,'CB_DESCSAC'   ,'checked'   ,'_RCPREAL',iif(CB_DESCSAC.Checked,'true','false'));

end;

procedure TFrm_RCPReal.CB_OBSFINSACExit(Sender: TObject);
begin
fDeletaPadroes(-1,'_RCPREAL','CB_OBSFINSAC');
fGravaPadroes(-1,'CB_OBSFINSAC'   ,'checked'   ,'_RCPREAL',iif(CB_OBSFINSAC.Checked,'true','false'));

end;

procedure TFrm_RCPReal.FormActivate(Sender: TObject);
begin
PageControl1.TabIndex:=0;
if log_coddep_cx=''  then
   begin
   CODDEP.Enabled    :=true;
   lbx_coddep.Enabled:=true;
   OMITIR_DEP.Enabled:=true;
   end
else
   begin
   CODDEP.Enabled    :=false;
   lbx_coddep.Enabled:=false;
   OMITIR_DEP.Enabled:=false;
   CODDEP.Text       :=log_coddep_cx;
   CODDEPExit(self);
   end;

end;

procedure TFrm_RCPReal.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_RCPReal.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_totcred_gru.Caption:=FormatFloat(mcasas, mCred_Gru)+'   ';
lbl_totdeb_gru.Caption :=FormatFloat(mcasas, mDeb_Gru)+'   ';
lbl_totacum_gru.Caption:=FormatFloat(mcasas, mCred_Gru-mDeb_Gru)+'   ';
mSaldoAcum :=mSaldoAcum+(mSaldoIni-mDeb+mCred);

lblrc_totdeb.Caption:=FormatFloat(mcasas, mDeb_gru);
lblrc_totcre.Caption:=FormatFloat(mcasas, mCred_gru);

lblrc_saldoatu.Caption:=FormatFloat(mcasas, mSaldoIni-mDeb_gru+mCred_gru);

 mCred:=0;
 mDeb :=0;
 mCred_Gru:=0;
 mDeb_Gru :=0;


{
if (cb_agrupar.ItemIndex=0) then
  begin

  mSaldoIni:=FBuscaSaldo(0);
  rlGSaldo_ant.Visible:=true;
  lblG_saldoant.Visible:=true;
  lblG_saldoant.Caption:=FormatFloat(mcasas, mSaldoIni);
  codbco_ant:=Qr_LDRCODBCO.AsInteger;
  end
}


end;

procedure TFrm_RCPReal.sbt_expexcelClick(Sender: TObject);
var
Campos: Array of string;
begin
sbt_expexcel.Enabled:=false;

fAbrirBanco(0);
if cb_agrupar.ItemIndex=0 then
   mSaldoIni:=0
else
   mSaldoIni:=FBuscaSaldo(0);

mem_excel.Close;
mem_excel.Open;
Qr_LDR.First;
mCred:=0;
mDeb :=0;
While not Qr_LDR.eof do
   begin
   mCred:=mCred+Qr_LDRcredito.Value;
   mDeb :=mDeb+Qr_LDRdebito.Value;
   mem_excel.Append;
   mem_exceldatadoc.Value:=FormatDatetime(fdt2, Qr_LDRDATAPESQ.Value);
   mem_exceldescmv.Value :=Qr_LDRDESCMV.Value;
   mem_excelcodldr.Value :=Qr_LDRCODLDR.AsString;
   mem_excelnumdoc.Value :=Qr_LDRNUMDOC.Value;
   mem_exceldebito.Value :=MudaVP(FormatFloat('#0.00', Qr_LDRdebito.Value));
   mem_excelcredito.Value:=MudaVP(FormatFloat('#0.00', Qr_LDRcredito.Value));
   mem_excelsaldo.Value  :=MudaVP(FormatFloat('#0.00',(mSaldoIni-mDeb+mCred)));
   mem_excel.Post;
   Qr_LDR.Next;
   end;

SetLength(Campos,07);
Campos[00]:='datadoc';
Campos[01]:='descmv';
Campos[02]:='codldr';
Campos[03]:='numdoc';
Campos[04]:='debito';
Campos[05]:='credito';
Campos[06]:='saldo';
fGerarPlanilhaExcel(Campos,Src_Excel);
sbt_expexcel.Enabled:=true;
end;

procedure TFrm_RCPReal.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if (cb_agrupar.ItemIndex=0) then
  begin
  mSaldoIni:=FBuscaSaldo(Qr_LDRCODBCO.AsInteger);
  rlGSaldo_ant.Visible  :=true;
  lblG_saldoant.Visible :=true;
  lblG_saldoant.Caption :=FormatFloat(mcasas, mSaldoIni);
  lblrc_saldoant.Caption:=FormatFloat(mcasas, mSaldoIni);
  if mSaldoIni<0then
     lblrc_saldoant.Font.Color:=clRed
  else
     lblrc_saldoant.Font.Color:=clBlack;
  end;
lbl_grupo.Caption:=Qr_LDRGRUPO.AsString;

end;

procedure TFrm_RCPReal.RG_ESTADOClick(Sender: TObject);
begin
if RG_ESTADO.ItemIndex=0 then
  begin
  CB_PROVISAO.Visible:=false;
  cb_compra.Visible  :=false;
  end
else
  begin
  CB_PROVISAO.Visible:=true;
  cb_compra.Visible  :=true;
  end;

end;

procedure TFrm_RCPReal.edt_codusr_cxExit(Sender: TObject);
begin
edt_codusr_cx.Text:=fdeixanum2(edt_codusr_cx.Text);
if Trim(edt_codusr_cx.Text)<>'' then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',edt_codusr_cx.Text) then
      begin
      lbx_codusr_cx.Items.Add(FormatFloat('0000000',StrToFloat(edt_codusr_cx.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      edt_codusr_cx.text := '';
      edt_codusr_cx.SetFocus;
      end
   else
      begin
      fmensagem('Usuário/Caixa não Cadastrado!',0,['0'],0);
      edt_codusr_cx.text := '';
      edt_codusr_cx.SetFocus;
      end;
   end;


end;

procedure TFrm_RCPReal.edt_codusr_cxKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codusr_cx.Text:=fChamaUsr(0,'frm_RcPReal',Key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_RCPReal.lbx_codusr_cxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codusr_cx.ItemIndex>=0 then
      lbx_codusr_cx.Items.Delete(lbx_codusr_cx.ItemIndex);

end;

procedure TFrm_RCPReal.cb_agruparChange(Sender: TObject);
begin
if cb_agrupar.ItemIndex < 6 then
  cb_quebra_agrupa.Enabled:=false
else
  cb_quebra_agrupa.Enabled:=True;
end;

procedure TFrm_RCPReal.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  mQtdCred  :=0;
  mQTdDeb   :=0;
  mTotalCred:=0;
  mTotalDeb :=0;

end;

procedure TFrm_RCPReal.RLBand_ticket_medioBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
mTicketMedio: Real;
begin
lbl_ticket_medio.Caption:='';
if CB_TICKET_MEDIO.Checked then
   begin

   if (mQtdCred=0) or (mTotalCred=0) then
      mTicketMedio:=0
   else
      mTicketMedio:=mTotalCred/mQtdCred;
   if mTicketMedio>0 then
      lbl_ticket_medio.Caption:='Creditos '+IntToStr(mQtdCred)+' Total '+FormatFloat(mcasas, mTotalCred)+' ticket médio '+FormatFloat(mcasas, mTicketMedio)+' ';

   if (mQTdDeb=0) or (mTotalDeb=0) then
      mTicketMedio:=0
   else
      mTicketMedio:=mTotalDeb/mQTdDeb;

   if mTicketMedio>0 then
      lbl_ticket_medio.Caption:=lbl_ticket_medio.Caption+'Debitos '+IntToStr(mQtdDeb)+' Total '+FormatFloat(mcasas, mTotalDeb)+' ticket médio '+FormatFloat(mcasas, mTicketMedio)+' ';
   end;

end;

procedure TFrm_RCPReal.bbdom_exportarClick(Sender: TObject);
var
form_ocorrencias: TFrm_Ocorrencias;
mSaida: TStrings;
mLinha: String;
mMesAno: String;
mOrdem: Integer;
mNomeSaida: String;

    function fGerar(pTipo: String): boolean;
    begin
    While not Qr_LDR.Eof do
       begin
       mLinha:='I';
       mLinha:=mLinha+'|'+FormatDateTime(fdt2, Qr_LDRDATAPESQ.AsDateTime);
       mLinha:=mLinha+'|'+pTipo;
       mLinha:=mLinha+'|'+edt_codfil.Text;
       mSaida.Add(mLinha);
       mLinha:='L';
       mLinha:=mLinha+'|'+Formatfloat(mcasas, Qr_LDRVALORSEL.AsFloat);
       mLinha:=mLinha+'|'+Qr_LDRCCEXP_CODCTA_DEB.asstring;
       mLinha:=mLinha+'|'+Qr_LDRCCEXP_CODCTA_CRED.asstring;
       mLinha:=mLinha+'|'+Qr_LDRDESCMV.asstring;
       mSaida.Add(mLinha);
       if cb_dom_exportacc.Checked=true then
          begin
          mLinha:='C';
          mLinha:=mLinha+'|'+Formatfloat(mcasas, Qr_LDRVALORSEL.AsFloat);
          mLinha:=mLinha+'|'+Qr_LDRCCEXP_CODCCU_DEB.asstring;
          mLinha:=mLinha+'|'+Qr_LDRCCEXP_CODCCU_CRED.asstring;
          mSaida.Add(mLinha);
          end;
       Qr_LDR.Next;
       end;
    result:=true;
    end;

{
D=Um débito para vários créditos
C=Um crédito para vários débitos
X=Um débito para um crédito
V=Vários débitos para vários créditos
}
begin
fAbrirBanco(0);

Application.CreateForm(TFrm_Ocorrencias, form_ocorrencias);
Form_Ocorrencias.mErros:=false;
form_ocorrencias.ListView1.Clear;


if (fsonumero(edt_codfil.Text)<=0) then
   begin
   Form_Ocorrencias.adicionaItemListView('Código da Filial in válido '+edt_codfil.Text+'! ');
   end;



if (cb_tipolancameno.ItemIndex<0) or (cb_tipolancameno.ItemIndex>3) then
   begin
   Form_Ocorrencias.adicionaItemListView('Tipo Lancamento '+cb_tipolancameno.Text
                                          +' não é válido! ');
   end;

Qr_LDR.First;
While not Qr_LDR.eof do
   begin
   if Length(Qr_LDRCCEXP_CODCTA_CRED.AsString)<1 then
      begin
      Form_Ocorrencias.adicionaItemListView('Lancamento '+Qr_LDRCODLDR.AsString
                                          +' Sacado ' +Qr_LDRsacado.AsString
                                          +' descricao '+Qr_LDRDESCMV.AsString
                                          +' Tipo ['+Qr_LDRNATDC.AsString+'] '
                                          +' Centro de Custo ['+Qr_LDRCODCC.AsString+'] '
                                          +' Valor '+formatfloat(mcasas, Qr_LDRVALORSEL.AsFloat)
                                          +' falta o codigo da conta contabil credito (cadastro=>caixa=>centro de custo)');
      Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=3;
      Form_Ocorrencias.mErros:=true;
      end;

   if Length(Qr_LDRCCEXP_CODCTA_DEB.AsString)<1 then
      begin
      Form_Ocorrencias.adicionaItemListView('Lancamento '+Qr_LDRCODLDR.AsString
                                          +' Sacado ' +Qr_LDRsacado.AsString
                                          +' descricao '+Qr_LDRDESCMV.AsString
                                          +' Tipo ['+Qr_LDRNATDC.AsString+'] '
                                          +' Centro de Custo ['+Qr_LDRCODCC.AsString+'] '
                                          +' Valor '+formatfloat(mcasas, Qr_LDRVALORSEL.AsFloat)
                                          +' falta o codigo da conta debito (cadastro=>caixa=>centro de custo) ');
      Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=3;
      Form_Ocorrencias.mErros:=true;
      end;
   if cb_dom_exportacc.Checked=true then
      begin
      if Length(Qr_LDRCCEXP_CODCCU_CRED.AsString)<1 then
         begin
         Form_Ocorrencias.adicionaItemListView('Lancamento '+Qr_LDRCODLDR.AsString
                                             +' Sacado ' +Qr_LDRsacado.AsString
                                             +' descricao '+Qr_LDRDESCMV.AsString
                                             +' Tipo ['+Qr_LDRNATDC.AsString+'] '
                                             +' Centro de Custo ['+Qr_LDRCODCC.AsString+'] '
                                             +' Valor '+formatfloat(mcasas, Qr_LDRVALORSEL.AsFloat)
                                             +' falta o codigo do centro de custo credito (cadastro=>caixa=>centro de custo)');
         Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=3;
         Form_Ocorrencias.mErros:=true;
         end;

      if Length(Qr_LDRCCEXP_CODCCU_DEB.AsString)<1 then
         begin
         Form_Ocorrencias.adicionaItemListView('Lancamento '+Qr_LDRCODLDR.AsString
                                             +' Sacado ' +Qr_LDRsacado.AsString
                                             +' descricao '+Qr_LDRDESCMV.AsString
                                             +' Tipo ['+Qr_LDRNATDC.AsString+'] '
                                             +' Centro de Custo ['+Qr_LDRCODCC.AsString+'] '
                                             +' Valor '+formatfloat(mcasas, Qr_LDRVALORSEL.AsFloat)
                                             +' falta o codigo do centro de custo (cadastro=>caixa=>centro de custo) ');
         Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=3;
         Form_Ocorrencias.mErros:=true;
         end;
      end;
   Qr_LDR.Next;
   end;
if Form_Ocorrencias.mErros then
   begin
   Form_Ocorrencias.ShowModal;
   FreeAndNil(form_ocorrencias);
   exit;
   end;

mSaida:=TStringList.Create;
Qr_Ldr.First;
fGerar(cb_tipolancameno.Text[1]);

if fsonumero(MDT1.Text)>0 then
   mMesAno:=FormatDatetime('mmyyyy', Strtodate(MDT1.Text))
else if fsonumero(MDT2.Text)>0 then
   mMesAno:=FormatDatetime('mmyyyy', Strtodate(MDT2.Text))
else
   mMesAno:=FormatDatetime('mmyyyy', date);

SaveDialog1.FileName:=mpastatemp + 'SGE\EXP_DOMINIO_'+mMesAno+'.txt';
if SaveDialog1.Execute then
   begin
   if FileExists(SaveDialog1.FileName) then
      begin
      if Application.MessageBox(pchar('ja existe um arquivo com o nome '+SaveDialog1.FileName+' posso substituir?'),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
         exit
      else
         begin
         mOrdem:=0;
         mNomeSaida:=SaveDialog1.FileName;

         While true do
            begin
            if DeleteFile(mNomeSaida) then
               begin
               SaveDialog1.FileName:=mNomeSaida;
               break;
               end
            else
               begin
               mNomeSaida:=fRetiraExtensao(SaveDialog1.FileName)+'_'+IntToStr(mOrdem)+fsoExtensao(SaveDialog1.FileName);
               mOrdem:=mOrdem+1;
               end;
            end;
         end;
      end;
   mSaida.SaveToFile(SaveDialog1.FileName);
   MessageDlg('Arquivo salvo como '+SaveDialog1.FileName,mtInformation,[mbOk],0);
   end;
FreeAndNil(mSaida);
end;
procedure TFrm_RCPReal.bbexpdom_salvarpadraoClick(Sender: TObject);
begin

fDeletaPadroes(-1,'_EXPDOM','');
fGravaPadroes(-1,'EDT_CODFIL'         ,'text'      ,'_EXPDOM',edt_codfil.Text);
fGravaPadroes(-1,'CB_TIPOLANCAMENTO' ,'itemindex'  ,'_EXPDOM',IntTostr(cb_tipolancameno.ItemIndex));
fGravaPadroes(-1,'CB_DOM_EXPORTACC'  ,'checked'    ,'_EXPDOM',iif(cb_dom_exportacc.Checked,'true','false'));
MessageDlg('Configurações gravadas!',mtInformation,[mbOK],0);
end;

end.
