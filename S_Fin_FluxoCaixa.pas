unit S_Fin_FluxoCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask,s_DM1,func, DB, DBTables,
  ComCtrls, RLReport,lerarq, RLXLSFilter, RLPDFFilter, RLHTMLFilter,
  RLFilters, RLRichFilter, RLDraftFilter, S_SelEmp;

type
  TFrm_Fin_FluxoCaixa = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tsRelatorio: TTabSheet;
    gb_cabecalho: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Panel1: TPanel;
    bbImprimir: TBitBtn;
    Src_Bco: TDataSource;
    Src_Relatorio: TDataSource;
    Qr_Bco: TQuery;
    Qr_Relatorio: TQuery;
    Qr_BcoBCCODBCO: TFloatField;
    Qr_BcoBCBANCO: TStringField;
    Qr_BcoBCSALDO: TFloatField;
    Qr_BcoBCLIMITE: TFloatField;
    Qr_RelatorioQTDREG: TFloatField;
    RLReport1: TRLReport;
    RLBand_cab: TRLBand;
    RLSubDetBancos: TRLSubDetail;
    rlCabSaldoBco: TRLBand;
    RLLabel1: TRLLabel;
    rldetCab: TRLBand;
    lbl_codbco: TRLLabel;
    lbl_nombco: TRLLabel;
    lbl_saldo: TRLLabel;
    lbl_limcred: TRLLabel;
    rldetBco: TRLBand;
    edt_codbco: TRLDBText;
    edt_nombco: TRLDBText;
    edt_saldo: TRLDBText;
    edt_limcred: TRLDBText;
    lbl_disponivel: TRLLabel;
    edt_disponivel: TRLDBText;
    Qr_Bcodisponivel: TFloatField;
    lbl_dataemi: TRLLabel;
    lbl_horaemi: TRLLabel;
    RLDBText1: TRLDBText;
    lbl_titulo: TRLLabel;
    RLLabel2: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    lbl_periodo: TRLLabel;
    RLSubDet_ArecAvenc: TRLSubDetail;
    rl_titcrecavenc: TRLBand;
    RLLabel3: TRLLabel;
    rlcabAvenc: TRLBand;
    rldetRecAvenc: TRLBand;
    lbl_ArecAvencNumero: TRLLabel;
    edt_ArecAvencNumero: TRLDBText;
    Qr_DarAVenc: TQuery;
    Src_DarAvenc: TDataSource;
    Qr_DarAVencCRNUMERO: TFloatField;
    Qr_DarAVencCRDESD: TStringField;
    Qr_DarAVencCRVALOR: TFloatField;
    Qr_DarAVencCRVALPAG: TFloatField;
    Qr_DarAVencCRDTEMIS: TDateTimeField;
    Qr_DarAVencCRDTVCTO: TDateTimeField;
    Qr_DarAVencCRCODCLI: TFloatField;
    Qr_DarAVencCRAZAO: TStringField;
    lbl_desd: TRLLabel;
    edt_desd: TRLDBText;
    lbl_razao: TRLLabel;
    edt_razao: TRLDBText;
    lbl_dtvcto: TRLLabel;
    edt_dtvcto: TRLDBText;
    lbl_valor: TRLLabel;
    edt_saldodev: TRLDBText;
    Qr_DarAVencSALDODEV: TFloatField;
    RLrodape_saldobco: TRLBand;
    lbl_totbanco: TRLLabel;
    lblt_totsaldo: TRLLabel;
    lblt_limcred: TRLLabel;
    lblt_disponivel: TRLLabel;
    rltotacrecvenc: TRLBand;
    lbl_totarecAvenc: TRLLabel;
    lblt_saldoavenc: TRLLabel;
    Qr_DarVenc: TQuery;
    Src_DarVenc: TDataSource;
    Qr_DarVencCRNUMERO: TFloatField;
    Qr_DarVencCRDESD: TStringField;
    Qr_DarVencCRVALOR: TFloatField;
    Qr_DarVencCRVALPAG: TFloatField;
    Qr_DarVencCRDTEMIS: TDateTimeField;
    Qr_DarVencCRDTVCTO: TDateTimeField;
    Qr_DarVencCRCODCLI: TFloatField;
    Qr_DarVencCRAZAO: TStringField;
    Qr_DarVencSALDODEV: TFloatField;
    Qr_DarVencATRASO: TFloatField;
    RLSubDet_Arecvenc: TRLSubDetail;
    RLBand10: TRLBand;
    RLLabel5: TRLLabel;
    rlCabRecvenc: TRLBand;
    lbl_ArecVencNumero: TRLLabel;
    lbl_Vencdesd: TRLLabel;
    lbl_VencRazao: TRLLabel;
    lbl_Vencdtvcto: TRLLabel;
    lbl_Vencvalor: TRLLabel;
    rldetRecvenc: TRLBand;
    edt_ArecVencNumero: TRLDBText;
    edt_Vencdesd: TRLDBText;
    edt_VencRazao: TRLDBText;
    edt_Vencdtvcto: TRLDBText;
    edt_Vencvalor: TRLDBText;
    rlArecVenc: TRLBand;
    lbl_totarecvenc: TRLLabel;
    lblt_saldoVenc: TRLLabel;
    lbl_VencAtraso: TRLLabel;
    edt_VencAtraso: TRLDBText;
    Qr_ChqCli: TQuery;
    Sr_ChqCli: TDataSource;
    Qr_ChqCliCHNUMERO: TFloatField;
    Qr_ChqCliCHBANCO: TFloatField;
    Qr_ChqCliCHVALOR: TFloatField;
    Qr_ChqCliCHDTEMIS: TDateTimeField;
    Qr_ChqCliCHDTDEP: TDateTimeField;
    Qr_ChqCliCHCODCLI: TFloatField;
    Qr_ChqCliCRAZAO: TStringField;
    RLSubDet_ChqCli: TRLSubDetail;
    RLBand14: TRLBand;
    RLLabel6: TRLLabel;
    rlCabChqCli: TRLBand;
    lblchqcli_numero: TRLLabel;
    lblchqcli_codbco: TRLLabel;
    lblchqcli_razao: TRLLabel;
    lblchqcli_dtdep: TRLLabel;
    lblchqcli_valor: TRLLabel;
    rlDetChqCli: TRLBand;
    edtchqcli_numero: TRLDBText;
    edtchqcli_codbco: TRLDBText;
    edtchqcli_dtdep: TRLDBText;
    edtchqcli_valor: TRLDBText;
    edtchqcli_razao: TRLDBText;
    rltotchqcli: TRLBand;
    lblt_chqcli: TRLLabel;
    lblt_totchq: TRLLabel;
    rltotent: TRLBand;
    lblt_totent: TRLLabel;
    lbl_totent: TRLLabel;
    RLSubDet_ApagVenc: TRLSubDetail;
    RLBand19: TRLBand;
    RLLabel9: TRLLabel;
    rlCabApagAVenc: TRLBand;
    lbl_ApagAvenc_numero: TRLLabel;
    lbl_ApagAvenc_Desd: TRLLabel;
    lbl_ApagAvenc_Razao: TRLLabel;
    lbl_ApagAvenc_Dtvcto: TRLLabel;
    lbl_ApagAvenc_SaldoDev: TRLLabel;
    rlDetPagAVenc: TRLBand;
    edt_ApagAvenc_numero: TRLDBText;
    edt_ApagAvenc_Desd: TRLDBText;
    edt_ApagAvenc_Razao: TRLDBText;
    edt_ApagAvenc_Dtvcto: TRLDBText;
    edt_ApagAvenc_SaldoDev: TRLDBText;
    rltotpagAvenc: TRLBand;
    lbl_totapagavenc: TRLLabel;
    lblt_SaldoPagAVenc: TRLLabel;
    Qr_DapAVenc: TQuery;
    Src_DapAVenc: TDataSource;
    Qr_DapAVencCANUMERO: TFloatField;
    Qr_DapAVencCADESD: TStringField;
    Qr_DapAVencCAVALOR: TFloatField;
    Qr_DapAVencCAVALPAG: TFloatField;
    Qr_DapAVencCADTEMIS: TDateTimeField;
    Qr_DapAVencCADTVCTO: TDateTimeField;
    Qr_DapAVencCACODFOR: TFloatField;
    Qr_DapAVencFRAZAO: TStringField;
    Qr_DapAVencSALDODEV: TFloatField;
    RLSubDet_ApagAVenc: TRLSubDetail;
    RLBand23: TRLBand;
    RLLabel10: TRLLabel;
    rlCabAPagarVenc: TRLBand;
    lbl_Apagvenc_numero: TRLLabel;
    lbl_Apagvenc_Desd: TRLLabel;
    lbl_Apagvenc_Razao: TRLLabel;
    lbl_Apagvenc_Dtvcto: TRLLabel;
    lbl_Apagvenc_Valor: TRLLabel;
    lbl_Apagvenc_Atraso: TRLLabel;
    rlDetPagVenc: TRLBand;
    edt_Apagvenc_numero: TRLDBText;
    edt_Apagvenc_Desd: TRLDBText;
    edt_Apagvenc_Razao: TRLDBText;
    edt_Apagvenc_Dtvcto: TRLDBText;
    edt_Apagvenc_Valor: TRLDBText;
    edt_Apagvenc_Atraso: TRLDBText;
    rltotpagvenc: TRLBand;
    lbl_totapagvenc: TRLLabel;
    lblt_SaldoPagVenc: TRLLabel;
    Qr_DapVenc: TQuery;
    Src_DapVenc: TDataSource;
    Qr_ChqCP: TQuery;
    Src_ChqCP: TDataSource;
    RLSubDet_chqcp: TRLSubDetail;
    RLBand27: TRLBand;
    RLLabel22: TRLLabel;
    rlCabChqCP: TRLBand;
    lbl_ChqCP_Numero: TRLLabel;
    lbl_ChqCP_Bco: TRLLabel;
    lbl_ChqCP_Razao: TRLLabel;
    lbl_ChqCP_DtDeposito: TRLLabel;
    lbl_ChqCP_Valor: TRLLabel;
    rlDetChqCP: TRLBand;
    edt_ChqCP_Numero: TRLDBText;
    edt_ChqCP_Bco: TRLDBText;
    edt_ChqCP_DtDeposito: TRLDBText;
    edt_ChqCP_Valor: TRLDBText;
    edt_ChqCP_Razao: TRLDBText;
    rltotchqcp: TRLBand;
    lbl_totchqcp: TRLLabel;
    lblt_ChqCP_Valor: TRLLabel;
    Qr_ChqCPCHNUMERO: TFloatField;
    Qr_ChqCPCHBANCO: TFloatField;
    Qr_ChqCPCHVALOR: TFloatField;
    Qr_ChqCPCHDTEMIS: TDateTimeField;
    Qr_ChqCPCHDTDEP: TDateTimeField;
    Qr_ChqCPCHCODFOR: TFloatField;
    Qr_ChqCPFRAZAO: TStringField;
    Qr_DapVencCANUMERO: TFloatField;
    Qr_DapVencCADESD: TStringField;
    Qr_DapVencCAVALOR: TFloatField;
    Qr_DapVencCAVALPAG: TFloatField;
    Qr_DapVencCADTEMIS: TDateTimeField;
    Qr_DapVencCADTVCTO: TDateTimeField;
    Qr_DapVencCACODFOR: TFloatField;
    Qr_DapVencFRAZAO: TStringField;
    Qr_DapVencSALDODEV: TFloatField;
    Qr_DapVencATRASO: TFloatField;
    tlTotchqCp: TRLBand;
    RLLabel13: TRLLabel;
    lbl_totsai: TRLLabel;
    RLLabel14: TRLLabel;
    lblt_Vencdtvcto: TRLLabel;
    lblt_vencAtraso: TRLLabel;
    lblt_Apagvenc_Atraso: TRLLabel;
    RLBand_resumo: TRLBand;
    lbl_RESUMO: TRLLabel;
    lbl_ressaldobco: TRLLabel;
    edtres_saldobco: TRLLabel;
    lbl_contasreceber: TRLLabel;
    edtres_arec: TRLLabel;
    lbl_arecvenc: TRLLabel;
    edtres_arecAVenc: TRLLabel;
    lbl_arecAvenc: TRLLabel;
    edtres_arecVenc: TRLLabel;
    lbl_chqcli: TRLLabel;
    edtres_ChqCli: TRLLabel;
    lbl_contaspagar: TRLLabel;
    edtres_apag: TRLLabel;
    lbl_apagAvenc: TRLLabel;
    edtres_apagAvenc: TRLLabel;
    lbl_apagvenc: TRLLabel;
    edtres_aPagVenc: TRLLabel;
    lbl_chqcp: TRLLabel;
    edtres_ChqCP: TRLLabel;
    lbl_saldofinal: TRLLabel;
    edtres_SaldoFinal: TRLLabel;
    CB_SEMBORDAS: TCheckBox;
    lblt_dtvcto: TRLLabel;
    lblt_ArecVencNumero: TRLLabel;
    lbltchqcli_dtdep: TRLLabel;
    lbltchqcli_numero: TRLLabel;
    lblt_ApagAvenc_numero: TRLLabel;
    lblt_ChqCP_Numero: TRLLabel;
    lblt_codbco: TRLLabel;
    rlband_filtros: TRLBand;
    lblt_desd: TRLLabel;
    lblt_ChqCP_DtDeposito: TRLLabel;
    lblt_ApagAvenc_Dtvcto: TRLLabel;
    lbltg_ChqCP_DtDeposito: TRLLabel;
    lblt_ChqCP_Bco: TRLLabel;
    lbl_reslimcred: TRLLabel;
    edtres_LimCred: TRLLabel;
    lbl_ressaldogeral: TRLLabel;
    edtres_SaldoGeral: TRLLabel;
    CB_ANALITICO: TCheckBox;
    RLBand2: TRLBand;
    filtros: TRLMemo;
    RLBand1: TRLBand;
    bbSair: TBitBtn;
    Label22: TLabel;
    CODBCO: TEdit;
    lbx_codbco: TListBox;
    OMITIR_BCO: TCheckBox;
    Label25: TLabel;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    lbx_codfor: TListBox;
    CODFOR: TEdit;
    OMITIR_FOR: TCheckBox;
    Label1: TLabel;
    RLDraw1: TRLDraw;
    Matricial: TRLDraftFilter;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    CB_SEMDEGRADE: TCheckBox;
    sbSalvarPadrao: TSpeedButton;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Qr_BcoCalcFields(DataSet: TDataSet);
    procedure RLBand_cabBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rldetBcoBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLrodape_saldobcoBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rldetRecAvencBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rltotacrecvencBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rldetRecvencBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlArecVencBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rltotchqcliBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlDetChqCliBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rltotentBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlDetPagAVencBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rltotpagAvencBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rltotpagvencBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlDetPagVencBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlDetChqCPBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rltotchqcpBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure tlTotchqCpBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure CB_SEMBORDASClick(Sender: TObject);
    procedure RLBand_resumoBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rlband_filtrosAfterPrint(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure CODBCOExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbSalvarPadraoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

  function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;

var
  Frm_Fin_FluxoCaixa: TFrm_Fin_FluxoCaixa;
  mtSaldoBco: Real;
  mtLimCred: Real;
  mTDisponivel: Real;
  mQtdBco: Integer=0;

  mTArecAvenc_Saldo: Real;
  mTArecVenc_Saldo: Real;
  mQtdArecAvenc: Integer=0;
  mQtdArecvenc : Integer=0;
  mPrazoArecVenc: Integer;

  mTAPagAvenc_Saldo: Real;
  mTAPagVenc_Saldo : Real;
  mQtdAPagAvenc: Integer=0;
  mQtdAPagvenc : Integer=0;
  mPrazoAPagVenc: Integer;
  mTChqCli: Real;
  mQtdChqCli    : Integer=0;
  mTChqCP: Real;
  mQtdChqCP     : Integer=0;

implementation

uses S_DM4;

{$R *.dfm}

procedure TFrm_Fin_FluxoCaixa.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_Fin_FluxoCaixa.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      mdt2.SetFocus;
      end;
   end;

end;

procedure TFrm_Fin_FluxoCaixa.bbImprimirClick(Sender: TObject);
var
msaldo: Real;
x: Integer;
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      fmensagem('Data Inicial maior que Final, Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;


DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select BCCODBCO,BCBANCO,BCSALDO from CADBCO ');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADBCO',[]) then
   begin
   DM1.Query2.SQL.Add(mcinst+'  BCCODEMP=0'+IntToStr(codemp));
   mcinst:=' and ';
   end;
mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
if trim(mcinst2)<>'' then
   DM1.Query2.SQL.Add(mcinst+' BCCODBCO '+mcinst2);
DM1.Query2.SQL.Add('order by BCCODEMP,BCBANCO');
try
   DM1.Query2.Open;
except
   DM1.Query2.sql.savetofile(mpastatemp +'sql.txt');
   exit;
   end;

la_Empresas:=fEmpresas_Selecionadas('CADLDR','CODEMP',Form_SelEmp.CLB_EMPRESAS);

while not DM1.Query2.Eof do
   begin
   if flcadbco(1,0,0,DM1.Query2.fieldbyName('BCCODBCO').AsString) then
   if DM1.Tb_BcoBCSALDOI.IsNull then
      msaldo:=0
   else
      msaldo:=DM1.Tb_BcoBCSALDOI.Value;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('select NATDC,SUM(VALORR) AS VALOR');
   DM1.Query1.SQL.Add(' from  CADLDR WHERE STATUS<9 '
                     +iif(la_Empresas='','',' and '+la_Empresas));
   DM1.Query1.SQL.Add(' and (not DATAREAL is null and DATAREAL>'+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')');

   if trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(' and DATAREAL <='+chr(39)+FormatDatetime(fdt, StrtoDate(mdt2.text))+chr(39));
   DM1.Query1.SQL.Add(' and CODBCO=0'+DM1.Tb_BcoBCCODBCO.AsString);
// iniciar filtro

   mcinst4:='';
   mboolean:=OMITIR_CLI.Checked;
   OMITIR_CLI.Checked:=false;
   mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
   OMITIR_CLI.Checked:=mboolean;

   if trim(mcinst2)<>'' then
      begin
      if trim(mcinst4)='' then
         mcinst4:='( '
      else
         mcinst4:=' or ';
      mcinst4:=mcinst4+' ( TIPO='+chr(39)+'CL'+chr(39)+' and CODIGO '+mcinst2+'))';
      if OMITIR_CLI.checked then
         mcinst4:=' not '+mcinst4;

      end;
   if trim(mcinst4)<>'' then
      DM1.Query1.SQL.Add(' and '+mcinst4);
   mcinst4:='';
   mboolean:=OMITIR_FOR.Checked;
   OMITIR_FOR.Checked:=false;

   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   OMITIR_FOR.Checked:=mboolean;
   if trim(mcinst2)<>'' then
      begin
      if trim(mcinst4)='' then
         mcinst4:='( '
      else
         mcinst4:=' or ';
      mcinst4:=mcinst4+' ( TIPO='+chr(39)+'FR'+chr(39)+' and CODIGO '+mcinst2+'))';
      if OMITIR_FOR.Checked then
         mcinst4:=' not '+mcinst4
      end;
   if trim(mcinst4)<>'' then
      DM1.Query1.SQL.Add(' and '+mcinst4);


// termino filtro



   DM1.Query1.SQL.Add(' Group by NATDC');
//   DM1.Query1.sql.savetofile(mpastatemp +'sql02.txt');

   try
      DM1.Query1.open;
   except
      DM1.Query1.sql.savetofile(mpastatemp +'sql02.txt');
      end;

   While not DM1.Query1.Eof do
      begin
      if DM1.Query1.Fields[0].AsString='D' then
         msaldo:=msaldo-DM1.Query1.Fields[1].AsFloat
      else
         msaldo:=msaldo+DM1.Query1.Fields[1].AsFloat;
      DM1.query1.Next;
      end;
   DM1.Tb_Bco.Edit;
   DM1.Tb_BcoBCSALDO.Value:=msaldo;
   FAtualizaBanco(1,'CADBCO','BCCODEMP',DM1.Tb_BcoBCCODEMP.AsString,['BCCODBCO'],[DM1.Tb_BcoBCCODBCO.AsString],DM1.TB_BCO);
   DM1.Tb_Bco.Post;
   DM1.Query2.Next;
   end;
Qr_Bco.Close;
Qr_Bco.SQL.Clear;
Qr_Bco.SQL.Add('Select BCCODBCO,BCBANCO,BCSALDO,BCLIMITE from CADBCO ');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADBCO',[]) then
   begin
   Qr_Bco.SQL.Add(mcinst+'  BCCODEMP=0'+IntToStr(codemp));
   mcinst:=' and ';
   end;

mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
if trim(mcinst2)<>'' then
   Qr_Bco.SQL.Add(mcinst+'  BCCODBCO '+mcinst2);
Qr_Bco.SQL.Add(' order by BCCODEMP,BCBANCO');
try
   Qr_Bco.Open;
except
   Qr_Bco.sql.savetofile(mpastatemp +'sql.txt');
   exit;
   end;


Qr_Relatorio.Close;
Qr_Relatorio.SQL.Clear;
Qr_Relatorio.SQL.Add('Select count(*) as qtdreg from CADBCO');
Qr_Relatorio.Open;


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','CRCODEMP','CCODCLI','CRCODCLI');

la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
// A VENCER
Qr_DarAVenc.Close;
Qr_DarAVenc.SQL.Clear;
Qr_DarAVenc.SQL.Add('Select CRNUMERO,CRDESD,CRVALOR,CRVALPAG,CRDTEMIS,CRDTVCTO '
                   +'       ,CRCODCLI,CRAZAO '
                   +'       ,CRVALOR-(( decode(CRVALPAG,null,0,CRVALPAG)+ decode(CRDEVOL,null,0, CRDEVOL))'
                   +'-decode(CRJUROS,null,0,CRJUROS)+decode(CRDESC,null,0,CRDESC)) as saldodev '
                   +'        from '
                   +'       CADDAR'+iif(la_tabelas='','',',')+la_tabelas
                   +'       '+la_Join
                   +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                   +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                   +' CRSTATUS<2 and CRDUP<>5');
if trim(MDT1.Text)<>'/  /' then
   Qr_DarAVenc.SQL.Add(' and CRDTVCTO>='+chr(39)+FormatDatetime(fdt, StrtoDate(mdt1.text))+chr(39));

if trim(MDT2.Text)<>'/  /' then
   Qr_DarAVenc.SQL.Add(' and CRDTVCTO<='+chr(39)+FormatDatetime(fdt, StrtoDate(mdt2.text))+chr(39));

Qr_DarAVenc.SQL.Add(' and CRDTVCTO>='+chr(39)+FormatDatetime(fdt, pdatasis)+chr(39));

mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   Qr_DarAVenc.SQL.Add(' and CRCODCLI '+mcinst2);

try
   Qr_DarAVenc.Open;
except
   Qr_DarAVenc.Sql.savetofile(mpastatemp +'sql.txt');
   exit;
   end;


mtSaldoBco       :=0;
mtLimCred        :=0;
mTDisponivel     :=0;
mTArecAvenc_Saldo:=0;
mTArecVenc_Saldo :=0;
mTChqCli         :=0;
mTChqCP          :=0;
mTAPagAvenc_Saldo:=0;
mTAPagVenc_Saldo :=0;
mPrazoArecVenc   :=0;
mPrazoAPagVenc   :=0;

mQtdBco          :=0;
mQtdArecAvenc    :=0;
mQtdArecvenc     :=0;

mQtdAPagAvenc    :=0;
mQtdAPagvenc     :=0;
mQtdChqCli       :=0;
mQtdChqCP        :=0;

//VENCIDAS
Qr_DarVenc.Close;
Qr_DarVenc.SQL.Clear;
Qr_DarVenc.SQL.Add('Select CRNUMERO,CRDESD,CRVALOR,CRVALPAG,CRDTEMIS,CRDTVCTO '
                  +'       ,CRCODCLI,CRAZAO '
                   +'       ,CRVALOR-(( decode(CRVALPAG,null,0,CRVALPAG)+ decode(CRDEVOL,null,0, CRDEVOL))'
                   +'-decode(CRJUROS,null,0,CRJUROS)+decode(CRDESC,null,0,CRDESC)) as saldodev '
                   +'       ,trunc( SYSDATE-CRDTVCTO )AS ATRASO '
                   +'        from '
                   +'       CADDAR'+iif(la_tabelas='','',',')+la_tabelas
                   +'       '+la_Join
                   +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                   +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                   +' CRSTATUS<2 and CRDUP<>5');
if trim(MDT1.Text)<>'/  /' then
   Qr_DarVenc.SQL.Add(' and CRDTVCTO>='+chr(39)+FormatDatetime(fdt, StrtoDate(mdt1.text))+chr(39));

if trim(MDT2.Text)<>'/  /' then
   Qr_DarVenc.SQL.Add(' and CRDTVCTO<='+chr(39)+FormatDatetime(fdt, StrtoDate(mdt2.text))+chr(39));

Qr_DarVenc.SQL.Add(' and CRDTVCTO<'+chr(39)+FormatDatetime(fdt, pdatasis)+chr(39));

mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   Qr_DarVenc.SQL.Add(' and CRCODCLI '+mcinst2);



try
   Qr_DarVenc.Open;
except
   Qr_DarVenc.Sql.savetofile(mpastatemp +'sql.txt');
   exit;
   end;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','CHCODEMP','CCODCLI','CHCODCLI');

la_Empresas:=fEmpresas_Selecionadas('CADCHQ','CHCODEMP',Form_SelEmp.CLB_EMPRESAS);

Qr_ChqCli.Close;
Qr_ChqCli.SQL.Clear;
Qr_ChqCli.SQL.Add('Select CHNUMERO,CHBANCO,CHVALOR,CHDTEMIS,CHDTDEP '
                 +'       ,CHCODCLI,CRAZAO '
                 +'        from       CADCHQ'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +' CHSTATUS<2 ');

if trim(MDT1.Text)<>'/  /' then
   Qr_ChqCli.SQL.Add(' and CHDTDEP>='+chr(39)+FormatDatetime(fdt, StrtoDate(mdt1.text))+chr(39));

if trim(MDT2.Text)<>'/  /' then
   Qr_ChqCli.SQL.Add(' and CHDTDEP<='+chr(39)+FormatDatetime(fdt, StrtoDate(mdt2.text))+chr(39));

mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   Qr_ChqCli.SQL.Add(' and CHCODCLI '+mcinst2);



try
   Qr_ChqCli.Open;
except
   Qr_ChqCli.Sql.savetofile(mpastatemp +'sql.txt');
   exit;
   end;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADFOR','FCODEMP','CACODEMP','FCODFOR','CACODFOR');

la_Empresas:=fEmpresas_Selecionadas('CADDAP','CACODEMP',Form_SelEmp.CLB_EMPRESAS);

Qr_DapAVenc.Close;
Qr_DapAVenc.SQL.Clear;
Qr_DapAVenc.SQL.Add('Select CANUMERO,CADESD,CAVALOR,CAVALPAG,CADTEMIS,CADTVCTO'
                   +'       ,CACODFOR,FRAZAO '
                   +'       ,CAVALOR-((DECODE(CAVALPAG,NULL,0,CAVALPAG)+decode(CADEVOL,null,0,CADEVOL))'
                   +'       -decode(CAJUROS,null,0,CAJUROS)+decode(CADESC,null,0,CADESC)) as saldodev '
                   +'        from  CADDAP'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +' CASTATUS<2 and CADUP<>5');

if trim(MDT1.Text)<>'/  /' then
   Qr_DapAVenc.SQL.Add(' and CADTVCTO>='+chr(39)+FormatDatetime(fdt, StrtoDate(mdt1.text))+chr(39));

if trim(MDT2.Text)<>'/  /' then
   Qr_DapAVenc.SQL.Add(' and CADTVCTO<='+chr(39)+FormatDatetime(fdt, StrtoDate(mdt2.text))+chr(39));
Qr_DapAVenc.SQL.Add(' and CADTVCTO>='+chr(39)+FormatDatetime(fdt, pdatasis)+chr(39));


mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   Qr_DapAVenc.SQL.Add(' and CACODFOR '+mcinst2);



try
   Qr_DapAVenc.Open;
except
   Qr_DapAVenc.Sql.savetofile(mpastatemp +'sql.txt');
   exit;
   end;

Qr_DapVenc.Close;
Qr_DapVenc.SQL.Clear;
Qr_DapVenc.SQL.Add('Select CANUMERO,CADESD,CAVALOR,CAVALPAG,CADTEMIS,CADTVCTO'
                   +'       ,CACODFOR,FRAZAO '
                   +'       ,CAVALOR-((DECODE(CAVALPAG,NULL,0,CAVALPAG)+decode(CADEVOL,null,0,CADEVOL))'
                   +'       -decode(CAJUROS,null,0,CAJUROS)+decode(CADESC,null,0,CADESC)) as saldodev '
                   +'       ,trunc( SYSDATE-CADTVCTO )AS ATRASO '
                   +'        from  CADDAP'+iif(la_tabelas='','',',')+la_tabelas
                   +'       '+la_Join
                   +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                   +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                   +' CASTATUS<2 and CADUP<>5 ');

if trim(MDT1.Text)<>'/  /' then
   Qr_DapVenc.SQL.Add(' and CADTVCTO>='+chr(39)+FormatDatetime(fdt, StrtoDate(mdt1.text))+chr(39));

if trim(MDT2.Text)<>'/  /' then
   Qr_DapVenc.SQL.Add(' and CADTVCTO<='+chr(39)+FormatDatetime(fdt, StrtoDate(mdt2.text))+chr(39));
Qr_DapVenc.SQL.Add(' and CADTVCTO<'+chr(39)+FormatDatetime(fdt, pdatasis)+chr(39));

mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   Qr_DapVenc.SQL.Add(' and CACODFOR '+mcinst2);

try
   Qr_DapVenc.Open;
except
   Qr_DapVenc.Sql.savetofile(mpastatemp +'sql.txt');
   exit;
   end;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADFOR','FCODEMP','CHCODEMP','FCODFOR','CHCODFOR');

la_Empresas:=fEmpresas_Selecionadas('CADCHQ','CHCODEMP',Form_SelEmp.CLB_EMPRESAS);

Qr_ChqCP.Close;
Qr_ChqCP.SQL.Clear;
Qr_ChqCP.SQL.Add('Select CHNUMERO,CHBANCO,CHVALOR,CHDTEMIS,CHDTDEP '
                 +'       ,CHCODFOR,FRAZAO '
                 +'        from       CADCHCP'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +' CHSTATUS<2 ');

if trim(MDT1.Text)<>'/  /' then
   Qr_ChqCP.SQL.Add(' and CHDTDEP>='+chr(39)+FormatDatetime(fdt, StrtoDate(mdt1.text))+chr(39));

if trim(MDT2.Text)<>'/  /' then
   Qr_ChqCP.SQL.Add(' and CHDTDEP<='+chr(39)+FormatDatetime(fdt, StrtoDate(mdt2.text))+chr(39));

mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   Qr_ChqCP.SQL.Add(' and CHCODFOR '+mcinst2);

try
   Qr_ChqCP.Open;
except
   Qr_ChqCP.Sql.savetofile(mpastatemp +'sql.txt');
   exit;
   end;



lbl_periodo.Caption:=fperiodo(0,MDT1.Text,MDT2.Text);


if CB_ANALITICO.Checked then
   begin
   mboolean:=true;
   end
else
   begin
   mboolean:=false;
   Qr_Bco.First;
   While not Qr_Bco.Eof do
      begin
      mtSaldoBco  :=mtSaldoBco  +Qr_BcoBCSALDO.Value;
      mtLimCred   :=mtLimCred   +Qr_BcoBCLIMITE.Value;
      mTDisponivel:=mTDisponivel+Qr_Bcodisponivel.Value;
      mQtdBco     :=mQtdBco+1;
      Qr_Bco.Next;
      end;
   Qr_DarAVenc.First;
   While not Qr_DarAVenc.Eof do
      begin
      mTArecAvenc_Saldo:=mTArecAvenc_Saldo+Qr_DarAVencSALDODEV.Value;
      mQtdArecAvenc    :=mQtdArecAvenc+1;
      Qr_DarAVenc.Next;
      end;
   Qr_DarVenc.First;
   While not Qr_DarVenc.Eof do
      begin
      mTArecVenc_Saldo:=mTArecvenc_Saldo+Qr_DarVencSALDODEV.Value;
      mQtdArecvenc:=mQtdArecvenc+1;
      mPrazoArecVenc:=mPrazoArecVenc+Qr_DarVencATRASO.AsInteger;
      Qr_DarVenc.Next;
      end;
   Qr_ChqCli.First;
   While not Qr_ChqCli.Eof do
      begin
      mTChqCli  :=mTChqCli+Qr_ChqCliCHVALOR.Value;
      mQtdChqCli:=mQtdChqCli+1;
      Qr_ChqCli.Next;
      end;
   Qr_DapAVenc.First;
   While not Qr_DapAVenc.Eof do
      begin
      mTAPagAvenc_Saldo:=mTAPagAvenc_Saldo+Qr_DapAVencSALDODEV.Value;
      mQtdAPagAvenc :=mQtdAPagAvenc+1;
      Qr_DapAVenc.Next;
      end;

   Qr_DapVenc.First;
   While not Qr_DapVenc.Eof do
      begin
      mTAPagVenc_Saldo:=mTAPagVenc_Saldo+Qr_DapVencSALDODEV.Value;
      mQtdAPagvenc:=mQtdAPagvenc+1;
      Qr_DapVenc.Next;
      end;


   Qr_ChqCP.First;
   While not Qr_ChqCP.Eof do
      begin
      mTChqCP  :=mTChqCP+Qr_ChqCPCHVALOR.Value;
      mQtdChqCP:=mQtdChqCP+1;
      Qr_ChqCP.Next;
      end;
   end;
if CB_SEMDEGRADE.Checked then
   RLReport1.Degrade.Direction:=ddnone
else
   RLReport1.Degrade.Direction:=ddHorizontal;

RLSubDetBancos.Visible    :=mboolean;
RLSubDet_ArecAvenc.Visible:=mboolean;
RLSubDet_Arecvenc.Visible :=mboolean;
RLSubDet_ChqCli.Visible   :=mboolean;
RLSubDet_ApagAVenc.Visible:=mboolean;
RLSubDet_ApagVenc.Visible :=mboolean;
RLSubDet_chqcp.Visible    :=mboolean;
filtros.Lines.Clear;

rlband_filtros.Visible:=false;
if lbx_codbco.Count>0 then
   begin
   FImprimeTitulo('Banco',lbx_codbco,OMITIR_BCO);
   rlband_filtros.Visible:=true;
   end;
if lbx_codcli.Count>0 then
   begin
   FImprimeTitulo('cliente',lbx_codcli,OMITIR_CLI);
   rlband_filtros.Visible:=true;
   end;
if lbx_codfor.Count>0 then
   begin
   FImprimeTitulo('Fornecedor',lbx_codfor,OMITIR_FOR);
   rlband_filtros.Visible:=true;
   end;
RLReport1.PreviewModal;
end;

procedure TFrm_Fin_FluxoCaixa.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

Qr_BcoBCSALDO.DisplayFormat      :=mcasas;
Qr_BcoBCLIMITE.DisplayFormat     :=mcasas;
Qr_Bcodisponivel.DisplayFormat   :=mcasas;
Qr_DarAVencSALDODEV.DisplayFormat:=mcasas;
Qr_DarAVencCRDTVCTO.DisplayFormat:=fdt;
Qr_DarVencSALDODEV.DisplayFormat :=mcasas;
Qr_DarVencCRDTVCTO.DisplayFormat :=fdt2;

Qr_ChqCliCHDTDEP.DisplayFormat      :=fdt2;
Qr_ChqCliCHVALOR.DisplayFormat      :=mcasas;

Qr_DapAVencCADTVCTO.DisplayFormat   :=fdt2;
Qr_DapAVencSALDODEV.DisplayFormat   :=mcasas;
Qr_DapVencCADTVCTO.DisplayFormat    :=fdt2;
Qr_DapVencSALDODEV.DisplayFormat    :=mcasas;

Qr_ChqCPCHDTDEP.DisplayFormat       :=fdt2;
Qr_ChqCPCHVALOR.DisplayFormat       :=mcasas;
CB_SEMBORDASClick(SELF);
if codusr=1111 then
   tsRelatorio.TabVisible:=true
else
   tsRelatorio.TabVisible:=false;


if flfilpad(0,'_FIN_FLUXOCAIXA','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_SEMBORDAS',[]) then
      CB_SEMBORDAS.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ANALITICO',[]) then
      CB_ANALITICO.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_SEMDEGRADE',[]) then
      CB_SEMBORDAS.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   end;


end;

procedure TFrm_Fin_FluxoCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Fin_FluxoCaixa.Qr_BcoCalcFields(DataSet: TDataSet);
begin
Qr_Bcodisponivel.Value:=Qr_BcoBCSALDO.Value+Qr_BcoBCLIMITE.Value;
end;

procedure TFrm_Fin_FluxoCaixa.RLBand_cabBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_dataemi.Caption:=FormatDatetime(fdt2, date);
lbl_horaemi.Caption:=FormatDatetime(fhr, time);

end;

procedure TFrm_Fin_FluxoCaixa.rldetBcoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mtSaldoBco  :=mtSaldoBco  +Qr_BcoBCSALDO.Value;
mtLimCred   :=mtLimCred   +Qr_BcoBCLIMITE.Value;
mTDisponivel:=mTDisponivel+Qr_Bcodisponivel.Value;
mQtdBco     :=mQtdBco+1;
end;

procedure TFrm_Fin_FluxoCaixa.RLrodape_saldobcoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lblt_totsaldo.Caption  :=Formatfloat(mcasas, mtSaldoBco);
lblt_limcred.Caption   :=Formatfloat(mcasas, mtLimCred);
lblt_disponivel.Caption:=Formatfloat(mcasas, mTDisponivel);
lbl_totbanco.Caption   :='Totais...';
if mQtdBco=1 then
   lbl_totbanco.Caption:=lbl_totbanco.Caption+'['+IntToStr(mQtdBco)+'] registro impresso '
else if mQtdBco>0 then
   lbl_totbanco.Caption:=lbl_totbanco.Caption+'['+IntToStr(mQtdBco)+'] registros impressos ';

end;

procedure TFrm_Fin_FluxoCaixa.rldetRecAvencBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mTArecAvenc_Saldo:=mTArecAvenc_Saldo+Qr_DarAVencSALDODEV.Value;
mQtdArecAvenc    :=mQtdArecAvenc+1;

end;

procedure TFrm_Fin_FluxoCaixa.rltotacrecvencBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lblt_saldoavenc.Caption:=FormatFloat(mcasas, mTArecAvenc_Saldo);
lbl_totarecAvenc.Caption   :='Totais...';
if mQtdArecAvenc=1 then
   lbl_totarecAvenc.Caption:=lbl_totarecAvenc.Caption+'['+IntToStr(mQtdArecAvenc)+'] registro impresso '
else if mQtdArecAvenc>0 then
   lbl_totarecAvenc.Caption:=lbl_totarecAvenc.Caption+'['+IntToStr(mQtdArecAvenc)+'] registros impressos ';


end;

procedure TFrm_Fin_FluxoCaixa.rldetRecvencBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mTArecVenc_Saldo:=mTArecvenc_Saldo+Qr_DarVencSALDODEV.Value;
mQtdArecvenc:=mQtdArecvenc+1;
mPrazoArecVenc:=mPrazoArecVenc+Qr_DarVencATRASO.AsInteger;

end;

procedure TFrm_Fin_FluxoCaixa.rlArecVencBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lblt_saldoVenc.Caption:=FormatFloat(mcasas, mTArecVenc_Saldo);
lbl_totarecvenc.Caption   :='Totais...';
if mQtdArecvenc=1 then
   lbl_totarecvenc.Caption:=lbl_totarecvenc.Caption+'['+IntToStr(mQtdArecvenc)+'] registro impresso '
else if mQtdArecvenc>0 then
   lbl_totarecvenc.Caption:=lbl_totarecvenc.Caption+'['+IntToStr(mQtdArecvenc)+'] registros impressos ';

if (mPrazoArecVenc<>0) and (mQtdArecvenc<>0) then
   lblt_VencAtraso.Caption:= IntToStr(mPrazoArecVenc div mQtdArecvenc)
else
   lblt_VencAtraso.Caption:= '0';



end;

procedure TFrm_Fin_FluxoCaixa.rltotchqcliBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lblt_totchq.Caption:=FormatFloat(mcasas, mTChqCli);
lblt_chqcli.Caption   :='Totais...';
if mQtdChqCli=1 then
   lblt_chqcli.Caption:=lblt_chqcli.Caption+'['+IntToStr(mQtdChqCli)+'] registro impresso '
else if mQtdBco>0 then
   lblt_chqcli.Caption:=lblt_chqcli.Caption+'['+IntToStr(mQtdChqCli)+'] registros impressos ';


end;

procedure TFrm_Fin_FluxoCaixa.rlDetChqCliBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mTChqCli  :=mTChqCli+Qr_ChqCliCHVALOR.Value;
mQtdChqCli:=mQtdChqCli+1;
end;

procedure TFrm_Fin_FluxoCaixa.rltotentBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_totent.Caption     :=FormatFloat(mcasas, mTArecAvenc_Saldo+mTArecVenc_Saldo+mTChqCli);

end;

procedure TFrm_Fin_FluxoCaixa.rlDetPagAVencBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mTAPagAvenc_Saldo:=mTAPagAvenc_Saldo+Qr_DapAVencSALDODEV.Value;
mQtdAPagAvenc :=mQtdAPagAvenc+1;

end;

procedure TFrm_Fin_FluxoCaixa.rltotpagAvencBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lblt_SaldoPagAVenc.Caption:=FormatFloat(mcasas, mTAPagAvenc_Saldo);

lbl_totapagavenc.Caption   :='Totais...';
if mQtdAPagAvenc=1 then
   lbl_totapagavenc.Caption:=lbl_totapagavenc.Caption+'['+IntToStr(mQtdAPagAvenc)+'] registro impresso '
else if mQtdAPagAvenc>0 then
   lbl_totapagavenc.Caption:=lbl_totapagavenc.Caption+'['+IntToStr(mQtdAPagAvenc)+'] registros impressos ';


end;

procedure TFrm_Fin_FluxoCaixa.rltotpagvencBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lblt_SaldoPagVenc.Caption     :=FormatFloat(mcasas, mTAPagVenc_Saldo);
lbl_totapagavenc.Caption   :='Totais...';
if mQtdAPagvenc=1 then
   lbl_totapagvenc.Caption:=lbl_totapagvenc.Caption+'['+IntToStr(mQtdAPagvenc)+'] registro impresso '
else if mQtdAPagvenc>0 then
   lbl_totapagvenc.Caption:=lbl_totapagvenc.Caption+'['+IntToStr(mQtdAPagvenc)+'] registros impressos ';

if (mPrazoAPagVenc<>0) and (mQtdAPagvenc<>0) then
   lblt_Apagvenc_Atraso.Caption:= IntToStr(mPrazoAPagVenc div mQtdAPagvenc)
else
   lblt_Apagvenc_Atraso.Caption:= '0';




end;

procedure TFrm_Fin_FluxoCaixa.rlDetPagVencBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mTAPagVenc_Saldo:=mTAPagVenc_Saldo+Qr_DapVencSALDODEV.Value;
mQtdAPagvenc:=mQtdAPagvenc+1;
mPrazoAPagVenc:=mPrazoAPagVenc+Qr_DapVencATRASO.AsInteger;
end;

procedure TFrm_Fin_FluxoCaixa.rlDetChqCPBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mTChqCP  :=mTChqCP+Qr_ChqCPCHVALOR.Value;
mQtdChqCP:=mQtdChqCP+1;

end;

procedure TFrm_Fin_FluxoCaixa.rltotchqcpBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lblt_ChqCP_Valor.Caption     :=FormatFloat(mcasas, mTChqCP);
lbl_totchqcp.Caption   :='Totais...';
if mQtdChqCP=1 then
   lbl_totchqcp.Caption:=lbl_totchqcp.Caption+'['+IntToStr(mQtdChqCP)+'] registro impresso '
else if mQtdChqCP>0 then
   lbl_totchqcp.Caption:=lbl_totchqcp.Caption+'['+IntToStr(mQtdChqCP)+'] registros impressos ';

end;

procedure TFrm_Fin_FluxoCaixa.tlTotchqCpBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_totsai.Caption     :=FormatFloat(mcasas, mTAPagAvenc_Saldo+mTAPagVenc_Saldo+mTChqCP);

end;

procedure TFrm_Fin_FluxoCaixa.CB_SEMBORDASClick(Sender: TObject);
begin
if CB_SEMBORDAS.Checked then
   mboolean:=false
else
   mboolean:=true;

RLBand_cab.Borders.DrawLeft            :=mboolean;
RLBand_cab.Borders.DrawRight           :=mboolean;
RLBand_cab.Borders.DrawTop             :=mboolean;
RLSubDetBancos.Borders.DrawTop         :=mboolean;
RLSubDetBancos.Borders.DrawLeft        :=mboolean;
RLSubDetBancos.Borders.DrawRight       :=mboolean;
rldetCab.Borders.DrawTop               :=mboolean;
lbl_codbco.Borders.DrawRight           :=mboolean;
lbl_nombco.Borders.DrawRight           :=mboolean;
lbl_saldo.Borders.DrawRight            :=mboolean;
lbl_limcred.Borders.DrawRight          :=mboolean;
lblt_codbco.Borders.DrawRight          :=mboolean;
edt_codbco.Borders.DrawRight           :=mboolean;
edt_nombco.Borders.DrawRight           :=mboolean;
edt_saldo.Borders.DrawRight            :=mboolean;
edt_limcred.Borders.DrawRight          :=mboolean;
rldetBco.Borders.DrawTop               :=mboolean;

lbl_totbanco.Borders.DrawRight         :=mboolean;
lblt_totsaldo.Borders.DrawRight        :=mboolean;
lblt_limcred.Borders.DrawRight         :=mboolean;


RLSubDet_ArecAvenc.Borders.DrawTop     :=mboolean;
RLSubDet_ArecAvenc.Borders.DrawRight   :=mboolean;
RLSubDet_ArecAvenc.Borders.DrawLeft    :=mboolean;

rlcabAvenc.Borders.DrawTop             :=mboolean;

RLrodape_saldobco.Borders.DrawTop      :=mboolean;
rltotpagAvenc.Borders.DrawTop          :=mboolean;
rltotpagvenc.Borders.DrawTop           :=mboolean;

tlTotchqCp.Borders.DrawTop             :=mboolean;
rldetRecAvenc.Borders.DrawTop          :=mboolean;
rltotacrecvenc.Borders.DrawTop         :=mboolean;
rltotchqcli.Borders.DrawTop            :=mboolean;
rlArecVenc.Borders.DrawTop             :=mboolean;
lbl_ArecAvencNumero.Borders.DrawRight  :=mboolean;


lbl_desd.Borders.DrawRight             :=mboolean;
lbl_razao.Borders.DrawRight            :=mboolean;
lbl_dtvcto.Borders.DrawRight           :=mboolean;

edt_ArecAvencNumero.Borders.DrawRight  :=mboolean;
edt_desd.Borders.DrawRight             :=mboolean;
edt_razao.Borders.DrawRight            :=mboolean;
edt_dtvcto.Borders.DrawRight           :=mboolean;

lbl_totarecAvenc.Borders.DrawRight     :=mboolean;
lblt_desd.Borders.Drawright            :=mboolean;
lblt_dtvcto.Borders.DrawRight          :=mboolean;
rlCabChqCP.Borders.DrawTop             :=mboolean;



RLSubDet_Arecvenc.Borders.DrawTop      :=mboolean;
RLSubDet_Arecvenc.Borders.DrawRight    :=mboolean;
RLSubDet_Arecvenc.Borders.DrawLeft     :=mboolean;
rldetRecvenc.Borders.Drawtop           :=mboolean;
rlCabRecvenc.Borders.Drawtop           :=mboolean;
lbl_ArecVencNumero.Borders.DrawRight   :=mboolean;
lbl_Vencdesd.Borders.DrawRight         :=mboolean;
lbl_VencRazao.Borders.DrawRight        :=mboolean;
lbl_Vencdtvcto.Borders.DrawRight       :=mboolean;
lbl_VencAtraso.Borders.DrawRight       :=mboolean;

edt_ArecVencNumero.Borders.DrawRight   :=mboolean;
edt_Vencdesd.Borders.DrawRight         :=mboolean;
edt_VencRazao.Borders.DrawRight        :=mboolean;
edt_Vencdtvcto.Borders.DrawRight       :=mboolean;
edt_VencAtraso.Borders.DrawRight       :=mboolean;

lblt_ArecVencNumero.Borders.DrawRight  :=mboolean;
lbl_totarecvenc.Borders.DrawLeft       :=mboolean;
lbl_totarecvenc.Borders.DrawRight      :=mboolean;
lblt_Vencdtvcto.Borders.DrawRight      :=mboolean;
lblt_vencAtraso.Borders.DrawRight      :=mboolean;


RLSubDet_ChqCli.Borders.DrawTop        :=mboolean;
RLSubDet_ChqCli.Borders.DrawRight      :=mboolean;
RLSubDet_ChqCli.Borders.DrawLeft       :=mboolean;

rlCabChqCli.Borders.DrawTop            :=mboolean;
rlDetChqCli.Borders.DrawTop            :=mboolean;

lblchqcli_numero.Borders.DrawRight     :=mboolean;
lblchqcli_codbco.Borders.DrawRight     :=mboolean;
lblchqcli_razao.Borders.DrawRight      :=mboolean;
lblchqcli_dtdep.Borders.DrawRight      :=mboolean;


edtchqcli_numero.Borders.DrawRight     :=mboolean;
edtchqcli_codbco.Borders.DrawRight     :=mboolean;
edtchqcli_razao.Borders.DrawRight      :=mboolean;
edtchqcli_dtdep.Borders.DrawRight      :=mboolean;

lbltchqcli_numero.Borders.DrawRight    :=mboolean;
lblt_chqcli.Borders.DrawLeft           :=mboolean;
lblt_chqcli.Borders.DrawRight          :=mboolean;
lblt_dtvcto.Borders.DrawRight          :=mboolean;
rltotent.Borders.DrawTop               :=mboolean;
lblt_totent.Borders.DrawLeft           :=mboolean;
lblt_totent.Borders.DrawRight          :=mboolean;
lblt_ChqCP_DtDeposito.Borders.DrawRight :=mboolean;
lbltg_ChqCP_DtDeposito.Borders.DrawRight:=mboolean;

rlCabAPagarVenc.Borders.Drawtop        :=mboolean;
RLSubDet_ApagAVenc.Borders.DrawTop     :=mboolean;
RLSubDet_ApagAVenc.Borders.DrawRight   :=mboolean;
RLSubDet_ApagAVenc.Borders.DrawLeft    :=mboolean;

rlDetPagAVenc.Borders.DrawTop          :=mboolean;


rlCabApagAVenc.Borders.DrawTop         :=mboolean;

lbl_ApagAvenc_numero.Borders.DrawRight :=mboolean;
lbl_ApagAvenc_Desd.Borders.DrawRight   :=mboolean;
lbl_ApagAvenc_Razao.Borders.DrawRight  :=mboolean;
lbl_ApagAvenc_Dtvcto.Borders.DrawRight :=mboolean;

edt_ApagAvenc_numero.Borders.DrawRight :=mboolean;
edt_ApagAvenc_Desd.Borders.DrawRight   :=mboolean;
edt_ApagAvenc_Razao.Borders.DrawRight  :=mboolean;
edt_ApagAvenc_Dtvcto.Borders.DrawRight :=mboolean;

lblt_ApagAvenc_numero.Borders.DrawRight:=mboolean;
lbl_totapagavenc.Borders.DrawLeft      :=mboolean;
lbl_totapagAvenc.Borders.DrawRight     :=mboolean;

// venci

RLSubDet_ApagVenc.Borders.DrawTop      :=mboolean;
RLSubDet_ApagVenc.Borders.DrawRight    :=mboolean;
RLSubDet_ApagVenc.Borders.DrawLeft     :=mboolean;

rlDetPagVenc.Borders.DrawTop           :=mboolean;

lbl_Apagvenc_numero.Borders.DrawRight  :=mboolean;
lbl_Apagvenc_Desd.Borders.DrawRight    :=mboolean;
lbl_Apagvenc_Razao.Borders.DrawRight   :=mboolean;
lbl_Apagvenc_Dtvcto.Borders.DrawRight  :=mboolean;

edt_Apagvenc_numero.Borders.DrawRight  :=mboolean;
edt_Apagvenc_Desd.Borders.DrawRight    :=mboolean;
edt_Apagvenc_Razao.Borders.DrawRight   :=mboolean;
edt_Apagvenc_Dtvcto.Borders.DrawRight  :=mboolean;

lbl_totapagvenc.Borders.DrawRight      :=mboolean;

lbl_totapagvenc.Borders.DrawLeft       :=mboolean;
lbl_totapagvenc.Borders.DrawRight      :=mboolean;


RLSubDet_chqcp.Borders.DrawTop         :=mboolean;
RLSubDet_chqcp.Borders.DrawRight       :=mboolean;
RLSubDet_chqcp.Borders.DrawLeft        :=mboolean;

rlCabChqCP.Borders.DrawBottom          :=mboolean;
lbl_ChqCP_Numero.Borders.DrawRight     :=mboolean;
lbl_ChqCP_Bco.Borders.DrawRight        :=mboolean;
lblt_ChqCP_Bco.Borders.DrawRight        :=mboolean;
lbl_ChqCP_Razao.Borders.DrawRight      :=mboolean;
lbl_ChqCP_DtDeposito.Borders.DrawRight :=mboolean;

edt_ChqCP_Numero.Borders.DrawRight     :=mboolean;
edt_ChqCP_Bco.Borders.DrawRight        :=mboolean;
edt_ChqCP_Razao.Borders.DrawRight      :=mboolean;
edt_ChqCP_DtDeposito.Borders.DrawRight :=mboolean;

lblt_ChqCP_DtDeposito.Borders.DrawRight:=mboolean;
lbl_totchqcp.Borders.DrawRight         :=mboolean;

RLBand_resumo.Borders.DrawLeft         :=mboolean;
RLBand_resumo.Borders.DrawRight        :=mboolean;
RLBand_resumo.Borders.DrawTop          :=mboolean;
RLBand_resumo.Borders.DrawBottom       :=mboolean;
rltotchqcp.Borders.DrawTop             :=mboolean;
lbl_RESUMO.Borders.DrawLeft            :=mboolean;
lbl_RESUMO.Borders.DrawRight           :=mboolean;
lbl_RESUMO.Borders.DrawBottom          :=mboolean;

lbl_ressaldobco.Borders.DrawLeft       :=mboolean;
lbl_ressaldobco.Borders.DrawRight      :=mboolean;

edtres_saldobco.Borders.DrawRight      :=mboolean;

lbl_contasreceber.Borders.DrawTop      :=mboolean;
lbl_contasreceber.Borders.DrawLeft     :=mboolean;
lbl_contasreceber.Borders.DrawRight    :=mboolean;
lbl_contasreceber.Borders.DrawBottom   :=mboolean;

edtres_arec.Borders.DrawTop            :=mboolean;
edtres_arec.Borders.DrawRight          :=mboolean;
edtres_arec.Borders.DrawBottom         :=mboolean;
edtres_arec.Borders.DrawTop            :=mboolean;

lbl_arecAvenc.Borders.DrawRight         :=mboolean;
lbl_arecAvenc.Borders.DrawLeft          :=mboolean;
edtres_arecAVenc.Borders.DrawRight      :=mboolean;
edtres_arecAVenc.Borders.Drawtop        :=mboolean;

lbl_arecvenc.Borders.DrawRight         :=mboolean;
lbl_arecvenc.Borders.DrawLeft          :=mboolean;
lbl_arecvenc.Borders.DrawTop           :=mboolean;
edtres_arecVenc.Borders.DrawRight      :=mboolean;
edtres_arecVenc.Borders.Drawtop        :=mboolean;

lbl_chqcli.Borders.DrawRight           :=mboolean;
lbl_chqcli.Borders.DrawLeft            :=mboolean;
lbl_chqcli.Borders.DrawTop             :=mboolean;
edtres_ChqCli.Borders.DrawRight        :=mboolean;
edtres_ChqCli.Borders.Drawtop          :=mboolean;

lbl_contaspagar.Borders.DrawTop        :=mboolean;
lbl_contaspagar.Borders.DrawLeft       :=mboolean;
lbl_contaspagar.Borders.DrawRight      :=mboolean;
lbl_contaspagar.Borders.DrawBottom     :=mboolean;

edtres_apag.Borders.DrawTop            :=mboolean;
edtres_apag.Borders.DrawRight          :=mboolean;
edtres_apag.Borders.DrawBottom         :=mboolean;


lbl_apagAvenc.Borders.DrawRight         :=mboolean;
lbl_apagAvenc.Borders.DrawLeft          :=mboolean;
edtres_apagAVenc.Borders.DrawRight      :=mboolean;

lbl_apagvenc.Borders.DrawRight         :=mboolean;
lbl_apagvenc.Borders.DrawLeft          :=mboolean;
lbl_apagvenc.Borders.DrawTop           :=mboolean;
edtres_apagVenc.Borders.DrawRight      :=mboolean;
edtres_apagVenc.Borders.Drawtop        :=mboolean;
edtres_SaldoFinal.Borders.Drawtop      :=mboolean;
//edtres_SaldoFinal.Borders.DrawBottom   :=mboolean;
lbl_arecvenc.Borders.Drawtop           :=mboolean;
lbl_chqcp.Borders.DrawRight            :=mboolean;
lbl_chqcp.Borders.DrawLeft             :=mboolean;
lbl_chqcp.Borders.DrawTop              :=mboolean;
edtres_ChqCp.Borders.DrawTop           :=mboolean;
edtres_ChqCp.Borders.DrawRight         :=mboolean;

lbl_saldofinal.Borders.DrawRight       :=mboolean;
lbl_saldofinal.Borders.DrawTop         :=mboolean;
lbl_saldofinal.Borders.DrawLeft        :=mboolean;


//lbl_ressaldogeral.Borders.DrawTop      :=mboolean;
//lbl_ressaldogeral.Borders.DrawBottom   :=mboolean;
lbl_ressaldogeral.Borders.DrawRight    :=mboolean;
lbl_ressaldogeral.Borders.DrawLeft     :=mboolean;
edtres_SaldoGeral.Borders.DrawTop      :=mboolean;
edtres_SaldoGeral.Borders.DrawBottom   :=mboolean;
edtres_SaldoGeral.Borders.DrawRight    :=mboolean;
lbl_arecAvenc.Borders.DrawTop          :=mboolean;
lbl_reslimcred.Borders.DrawTop         :=mboolean;
lbl_reslimcred.Borders.DrawBottom      :=mboolean;
lbl_reslimcred.Borders.DrawRight       :=mboolean;
lbl_reslimcred.Borders.DrawLeft        :=mboolean;

rlband_filtros.Borders.DrawTop         :=mboolean;
rlband_filtros.Borders.DrawLeft        :=mboolean;
rlband_filtros.Borders.DrawRight       :=mboolean;

edtres_SaldoFinal.Borders.DrawRight    :=mboolean;
lblt_Apagvenc_Atraso.Borders.DrawRight :=mboolean;
lbl_Apagvenc_Atraso.Borders.DrawRight  :=mboolean;
edt_Apagvenc_Atraso.Borders.DrawRight  :=mboolean;
edtres_LimCred.Borders.DrawRight       :=mboolean;
rlDetChqCP.Borders.DrawTop             :=mboolean;
lbl_ressaldogeral.Borders.DrawBottom   :=mboolean;
end;

procedure TFrm_Fin_FluxoCaixa.RLBand_resumoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
edtres_saldobco.Caption:=FormatFloat(mcasas, mtSaldoBco);
edtres_arec.Caption     :=FormatFloat(mcasas, mTArecVenc_Saldo+mTArecAvenc_Saldo+mTChqCli);
edtres_arecAVenc.Caption:=FormatFloat(mcasas, mTArecAvenc_Saldo);
edtres_arecVenc.Caption :=FormatFloat(mcasas, mTArecVenc_Saldo);
edtres_ChqCli.Caption   :=FormatFloat(mcasas, mTChqCli);

edtres_apag.Caption     :=FormatFloat(mcasas, mTAPagAvenc_Saldo+mTAPagVenc_Saldo+mTChqCP);
edtres_apagAvenc.Caption:=FormatFloat(mcasas, mTAPagAvenc_Saldo);
edtres_aPagVenc.Caption :=FormatFloat(mcasas, mTAPagVenc_Saldo);
edtres_ChqCP.Caption    :=FormatFloat(mcasas, mTChqCP);
edtres_LimCred.Caption  :=FormatFloat(mcasas, mtLimCred);

edtres_SaldoGeral.Caption :=FormatFloat(mcasas, (mtLimCred+mtSaldoBco+mTArecVenc_Saldo+mTArecAvenc_Saldo+mTChqCli)
                           -(mTAPagAvenc_Saldo+mTAPagVenc_Saldo+mTChqCP));


edtres_SaldoFinal.Caption :=FormatFloat(mcasas, (mtSaldoBco+mTArecVenc_Saldo+mTArecAvenc_Saldo+mTChqCli)
                           -(mTAPagAvenc_Saldo+mTAPagVenc_Saldo+mTChqCP));

if ((mtSaldoBco+mTArecVenc_Saldo+mTArecAvenc_Saldo+mTChqCli)
                           -(mTAPagAvenc_Saldo+mTAPagVenc_Saldo+mTChqCP))<0 then
    edtres_SaldoGeral.Color:=clRed
else
    edtres_SaldoGeral.Color:=clBlue;


if ((mtLimCred+mtSaldoBco+mTArecVenc_Saldo+mTArecAvenc_Saldo+mTChqCli)
                           -(mTAPagAvenc_Saldo+mTAPagVenc_Saldo+mTChqCP))<0 then
    edtres_SaldoFinal.Color:=clRed
else
    edtres_SaldoFinal.Color:=clBlue;

end;

procedure TFrm_Fin_FluxoCaixa.rlband_filtrosAfterPrint(Sender: TObject);
begin
rlband_filtros.Visible:=false;
end;

procedure TFrm_Fin_FluxoCaixa.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Fin_FluxoCaixa.CODBCOExit(Sender: TObject);
begin

CODBCO.Text:=fdeixanum2(CODBCO.Text);
if Trim(CODBCO.Text)<>'' then
   begin
   if not flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',CODBCO.Text) then
      begin
      fmensagem('Banco não cadastrada!',0,['0'],0);
      CODBCO.SetFocus;
      end
   else
      begin
      lbx_codbco.Items.Add(FormatFloat('0000000',StrToFloat(CODBCO.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODBCO.text := '';
      CODBCO.SetFocus;
      end;
   end;


end;

procedure TFrm_Fin_FluxoCaixa.CODBCOKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_RCRac',Key);
   CODBCOExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Fin_FluxoCaixa.lbx_codbcoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);

end;

procedure TFrm_Fin_FluxoCaixa.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Trim(CODCLI.Text)) then
      begin
      fmensagem('Cliente não cadastrado!',0,['0'],0);
      CODCLI.SetFocus;
      exit;
      end
   else
      begin
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODCLI.text := '';
      CODCLI.SetFocus;
      end;
   end;

end;

procedure TFrm_Fin_FluxoCaixa.CODCLIKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_DestPro',key);
   key:=#0;
   CODCLIExit(Self);
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Fin_FluxoCaixa.lbx_codcliKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   begin
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);
   end;

end;

procedure TFrm_Fin_FluxoCaixa.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODFOR.Text) then
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(CODFOR.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codfor.ItemIndex:=lbx_codfor.Items.Count-1;
      CODFOR.text := '';
      CODFOR.SetFocus;
      end
   else
      begin
      fmensagem('Fornecedor não Cadastrado!',0,['0'],0);
      CODFOR.text := '';
      CODFOR.SetFocus;
      end;
   end;


end;

procedure TFrm_Fin_FluxoCaixa.CODFORKeyPress(Sender: TObject;
  var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_Vend_RelGFor',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Fin_FluxoCaixa.lbx_codforKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);


end;

function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin
if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      Frm_Fin_FluxoCaixa.filtros.Lines.Add(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x]);
      end;
   end;
result:=true;
end;


procedure TFrm_Fin_FluxoCaixa.sbSalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(0,'_FIN_FLUXOCAIXA','');

fGravaPadroes(0,'CB_SEMBORDAS'  ,'checked'   ,'_FIN_FLUXOCAIXA',iif(CB_SEMBORDAS.Checked,'true','false'));
fGravaPadroes(0,'CB_ANALITICO'  ,'checked'   ,'_FIN_FLUXOCAIXA',iif(CB_ANALITICO.Checked,'true','false'));
fGravaPadroes(0,'CB_SEMDEGRADE' ,'checked'   ,'_FIN_FLUXOCAIXA',iif(CB_SEMDEGRADE.Checked,'true','false'));
fmensagem('Gravado!',0,['0'],0);



end;

procedure TFrm_Fin_FluxoCaixa.FormKeyDown(Sender: TObject; var Key: Word;
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

end.
