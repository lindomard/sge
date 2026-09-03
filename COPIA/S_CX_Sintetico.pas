unit S_CX_Sintetico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, S_DM1, db, dbtables, func, S_Impres,
  S_Bco, S_CCu, S_Dpto, S_Cli, S_For, S_Ven, S_Tra,lerarq,S_Usr,S_DM4,
  ComCtrls, RLReport, RLPDFFilter, RLXLSFilter, RLRichFilter, RLFilters,
  RLHTMLFilter, RLDraftFilter,variants, S_SelEmp;

type
  TFrm_CX_Sintetico = class(TForm)
    Qr_LDR: TQuery;
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
    StaticText4: TStaticText;
    CODCLI: TEdit;
    OMITIR_CLI: TCheckBox;
    lbx_codcli: TListBox;
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
    RG_TPPESQ: TRadioGroup;
    RG_NAT: TRadioGroup;
    RG_ESTADO: TRadioGroup;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    lbl_titulo02: TRLLabel;
    lbl_periodo: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLGroup1: TRLGroup;
    lbl_titulo: TRLLabel;
    RLBand2: TRLBand;
    band_cab: TRLBand;
    lbl_cabdesc: TRLMemo;
    lbl_cabdeb: TRLMemo;
    lbl_cabcred: TRLMemo;
    lbl_cabacum: TRLMemo;
    RLBand4: TRLBand;
    Src_LDR: TDataSource;
    db_descmv: TRLDBText;
    db_deb: TRLDBText;
    db_cred: TRLDBText;
    RLBand6: TRLBand;
    lbl_total: TRLLabel;
    lbl_totdeb_gru: TRLLabel;
    lbl_totcred_gru: TRLLabel;
    lbl_totacum_gru: TRLLabel;
    Qr_LDRGRUPO: TStringField;
    cb_agrupar: TComboBox;
    Label1: TLabel;
    lbl_acum: TRLLabel;
    db_grupo: TRLDBText;
    CB_SEMBORDA: TCheckBox;
    rlb_saldoant: TRLBand;
    RLLabel2: TRLLabel;
    lbl_saldoant: TRLLabel;
    RLDraftFilter1: TRLDraftFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLPDFFilter1: TRLPDFFilter;
    bbSalvarPadrao: TBitBtn;
    CB_ENTRELINHA: TCheckBox;
    RLBand3: TRLBand;
    lbl_rodape: TRLLabel;
    Qr_LDRcredbco: TStringField;
    Qr_LDRdebbco: TStringField;
    Qr_LDRNOMSINT: TStringField;
    Label2: TLabel;
    cb_separado: TComboBox;
    Qr_LDRVALORCRED: TFloatField;
    Qr_LDRVALORDEB: TFloatField;
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
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
    procedure FormCreate(Sender: TObject);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure CB_SEMBORDAClick(Sender: TObject);
    procedure rlb_saldoantAfterPrint(Sender: TObject);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure bbSalvarPadraoClick(Sender: TObject);
    procedure CB_ENTRELINHAClick(Sender: TObject);
    procedure cb_agruparClick(Sender: TObject);
    procedure cb_separadoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_CX_Sintetico: TFrm_CX_Sintetico;
  mSaldoIni: Real;
  mCred: Real;
  mDeb: Real;
  mCred_Gru: Real;
  mDeb_Gru: Real;

implementation

{$R *.DFM}

procedure TFrm_CX_Sintetico.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_CX_Sintetico.bbImprimirClick(Sender: TObject);
var
mpag, mlin: Integer;
mtotc, mtotd,msaldo,msaldoa: Real;
mCampoVlr,mDataPesq,mDataEmi: String;
mNomSint, mNomGru: String;


begin

if RG_TPPESQ.ItemIndex=0 then
   begin
   mDataPesq:='DATAREF';
   end
else if RG_TPPESQ.ItemIndex=1 then
   begin
   mDataPesq:='DATADP';
   end
else
   begin
   mDataPesq:='DATAREAL';
   end;
if RG_ESTADO.ItemIndex=0 then
   begin
   mCampoVlr:='VALORR';
   mDataEmi:='DATAREAL';
   lbl_titulo.Caption:='Lançamentos Realizados';
   end
else
   begin
   mCampoVlr:='VALORP';
   mDataEmi:='DATADP';
   if RG_ESTADO.ItemIndex=1 then
      lbl_titulo.Caption:='Lançamentos Previstos'
   else
      lbl_titulo.Caption:='Lançamentos Previstos e Realizados';
   end;
lbl_periodo.Caption:=fperiodo(0,MDT1.Text,mdt2.Text);
la_Empresas :='';
la_instrucao:='';

la_Empresas:=fEmpresas_Selecionadas('CADLDR','CODEMP',Form_SelEmp.CLB_EMPRESAS);

if cb_agrupar.ItemIndex=0 then
   mNomSint:='NOMBCO'
else if cb_agrupar.ItemIndex=1 then
   mNomSint:='NOMCCU'
else if cb_agrupar.ItemIndex=2 then
   mNomSint:='TO_CHAR('+mDataEmi+','+chr(39)+fdt2+chr(39)+')'
else if cb_agrupar.ItemIndex=3 then
   mNomSint:='NOMDEP'
else if cb_agrupar.ItemIndex=4 then
   mNomSint:='NOMDEP ||'+chr(39)+' - '+chr(39)+' || nomccu '
else
   mNomSint:='NOME';

if cb_separado.ItemIndex=0 then
   mNomGru:='TO_CHAR('+mDataEmi+','+chr(39)+'yyyy'+chr(39)+')'
else if cb_separado.ItemIndex=1 then
   mNomGru:='TO_CHAR('+mDataEmi+','+chr(39)+'yyyymm'+chr(39)+')'
else if cb_separado.ItemIndex=2 then
   mNomGru:='NOMBCO'
else if cb_separado.ItemIndex=3 then
   mNomGru:='NOMCCU'
else if cb_separado.ItemIndex=4 then
   mNomGru:='TO_CHAR('+mDataEmi+','+chr(39)+fdt2+chr(39)+')'

else if cb_separado.ItemIndex=5 then
   mNomGru:='NOMDEP'
else if cb_separado.ItemIndex=6 then
   mNomGru:='NOMDEP ||'+chr(39)+' - '+chr(39)+' || nomccu '
else if cb_separado.ItemIndex=7 then
   mNomGru:='NOME'
else
   mNomGru:='';

Qr_Ldr.Close;
Qr_Ldr.SQL.Clear;
Qr_Ldr.SQL.Add('Select '+mNomSint+' as NOMSINT ');
if trim(mNomGru)='' then
   Qr_Ldr.SQL.Add(','+chr(39)+insere2(' ',' ',40)+chr(39)+' as GRUPO ')
else
   Qr_Ldr.SQL.Add(','+mNomGru+' as GRUPO ');
Qr_Ldr.SQL.Add(',       sum(DECODE(NATDC,'+chr(39)+'D'+chr(39)+','+mCampoVlr+',0)) as VALORDEB ');
Qr_Ldr.SQL.Add(',       sum(DECODE(NATDC,'+chr(39)+'D'+chr(39)+',0,'+mCampoVlr+')) as VALORCRED ');

Qr_Ldr.SQL.Add('        from CADLDR '
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' STATUS<9 ');
mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and CODBCO '+mcinst2);
mcinst2:=fItensListBox(1,lbx_codccu,OMITIR_CCU);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and CODCC '+mcinst2);

mcinst2:=fItensListBox(1,lbx_coddep,OMITIR_DEP);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and CODDEP '+mcinst2);
if trim(MDT1.Text)<>'/  /' then
   Qr_Ldr.SQL.Add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   Qr_Ldr.SQL.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2.Text))+chr(39));
if RG_ESTADO.ItemIndex=0 then
   Qr_Ldr.SQL.Add(' and DATAREAL>'+chr(39)+FormatDateTime(fdt,pdatanula)+chr(39))
else if RG_ESTADO.ItemIndex=1 then
   Qr_Ldr.SQL.Add(' and DATAREAL<='+chr(39)+FormatDateTime(fdt,pdatanula)+chr(39));
mcinst4:='';
mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   begin
   if trim(mcinst4)='' then
      mcinst4:='( '
   else
      mcinst4:=' or ';
   mcinst4:=mcinst4+' ( TIPO='+chr(39)+'CL'+chr(39)+' and CODIGO '+mcinst2+')'
   end;

mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   begin
   if trim(mcinst4)='' then
      mcinst4:='( '
   else
      mcinst4:=' or ';
   mcinst4:=mcinst4+' ( TIPO='+chr(39)+'FR'+chr(39)+' and CODIGO '+mcinst2+')'
   end;

mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   begin
   if trim(mcinst4)='' then
      mcinst4:='( '
   else
      mcinst4:=' or ';
   mcinst4:=mcinst4+' ( TIPO='+chr(39)+'VD'+chr(39)+' and CODIGO '+mcinst2+')'
   end;

mcinst2:=fItensListBox(0,lbx_codtra,OMITIR_TRA);
if trim(mcinst2)<>'' then
   begin
   if trim(mcinst4)='' then
      mcinst4:='( '
   else
      mcinst4:=' or ';
   mcinst4:=mcinst4+' ( TIPO='+chr(39)+'TR'+chr(39)+' and CODIGO '+mcinst2+')'
   end;

mcinst2:=fItensListBox(0,lbx_codusr,OMITIR_USR);
if trim(mcinst2)<>'' then
   begin
   if trim(mcinst4)='' then
      mcinst4:='( '
   else
      mcinst4:=' or ';
   mcinst4:=mcinst4+' ( TIPO='+chr(39)+'US'+chr(39)+' and CODIGO '+mcinst2+')'
   end;
if trim(mcinst4)<>'' then
   mcinst4:=mcinst4+' )';
if trim(mcinst4)<>'' then
   Qr_Ldr.SQL.Add(' and '+mcinst4);

if RG_NAT.ItemIndex=1 then
   Qr_LDR.SQL.Add(' and NATDC='+chr(39)+'D'+chr(39))
else if RG_NAT.ItemIndex=2 then
   Qr_LDR.SQL.Add(' and NATDC<>'+chr(39)+'D'+chr(39));
Qr_LDR.SQL.Add('Group by ');
if cb_separado.ItemIndex=6 then
   Qr_LDR.SQL.add('NOMDEP,NOMCCU, ')
else if trim(mNomgru)<>'' then
   begin
   if cb_separado.ItemIndex=4 then
      Qr_LDR.SQL.add(mDataEmi+',')
   else
      Qr_LDR.SQL.add(mNomGru+',');
   end;
if cb_agrupar.ItemIndex=4 then
   Qr_LDR.SQL.add('NOMDEP,NOMCCU ')
else if cb_agrupar.ItemIndex=2 then
   Qr_LDR.Sql.Add(mDataEmi)
else
   Qr_LDR.SQL.add(mNomSint+' ');

try
   Qr_Ldr.Open;
except
   Qr_LDR.SQL.SaveToFile('C:\SQL.TXT');
   fMensagem('Erro ao Selecionar dados, contactar suporte!',0,['0'],0);
   exit;
   end;
if Qr_Ldr.Eof then
   begin
   fMensagem('Nada a Ser Impresso na Condicao Acima',0,['0'],0);
   abort;
   end;
mCred:=0;
mDeb :=0;
mCred_Gru:=0;
mDeb_Gru :=0;

mSaldoIni:=DM1.Tb_BcoBCSALDOI.Value;
if Trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('select NATDC,SUM('+mCampoVlr+') AS VALOR');
   DM1.Query1.SQL.Add(' from CADLDR '
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' STATUS<9 ');
   mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and CODBCO '+mcinst2);
   mcinst2:=fItensListBox(1,lbx_codccu,OMITIR_CCU);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and CODCC '+mcinst2);
   mcinst2:=fItensListBox(1,lbx_coddep,OMITIR_DEP);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and CODDEP '+mcinst2);
   if trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(' and '+mDataPesq+'<'+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1.Text))+chr(39));
//   if trim(MDT2.Text)<>'/  /' then
//      DM1.Query1.SQL.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2.Text))+chr(39));
   mcinst4:='';
   mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
   if trim(mcinst2)<>'' then
      begin
      if trim(mcinst4)='' then
         mcinst4:='( '
      else
         mcinst4:=' or ';
      mcinst4:=mcinst4+' ( TIPO='+chr(39)+'CL'+chr(39)+' and CODIGO '+mcinst2+')'
      end;
   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then
      begin
      if trim(mcinst4)='' then
         mcinst4:='( '
      else
         mcinst4:=' or ';
      mcinst4:=mcinst4+' ( TIPO='+chr(39)+'FR'+chr(39)+' and CODIGO '+mcinst2+')'
      end;
   mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
   if trim(mcinst2)<>'' then
      begin
      if trim(mcinst4)='' then
         mcinst4:='( '
      else
         mcinst4:=' or ';
      mcinst4:=mcinst4+' ( TIPO='+chr(39)+'VD'+chr(39)+' and CODIGO '+mcinst2+')'
      end;
   mcinst2:=fItensListBox(0,lbx_codtra,OMITIR_TRA);
   if trim(mcinst2)<>'' then
      begin
      if trim(mcinst4)='' then
         mcinst4:='( '
      else
         mcinst4:=' or ';
      mcinst4:=mcinst4+' ( TIPO='+chr(39)+'TR'+chr(39)+' and CODIGO '+mcinst2+')'
      end;
   mcinst2:=fItensListBox(0,lbx_codusr,OMITIR_USR);
   if trim(mcinst2)<>'' then
      begin
      if trim(mcinst4)='' then
         mcinst4:='( '
      else
         mcinst4:=' or ';
      mcinst4:=mcinst4+' ( TIPO='+chr(39)+'US'+chr(39)+' and CODIGO '+mcinst2+')'
      end;
   if trim(mcinst4)<>'' then
      mcinst4:=mcinst4+' )';
   if trim(mcinst4)<>'' then
      DM1.Query1.SQL.Add(' and '+mcinst4);
   if RG_NAT.ItemIndex=1 then
      DM1.Query1.SQL.Add(' and NATDC='+chr(39)+'D'+chr(39))
   else if RG_NAT.ItemIndex=2 then
      DM1.Query1.SQL.Add(' and NATDC<>'+chr(39)+'D'+chr(39));
   if RG_ESTADO.ItemIndex=0 then
      DM1.Query1.SQL.Add(' and DATAREAL>'+chr(39)+FormatDateTime(fdt,pdatanula)+chr(39))
   else if RG_ESTADO.ItemIndex=1 then
      DM1.Query1.SQL.Add(' and DATAREAL<='+chr(39)+FormatDateTime(fdt,pdatanula)+chr(39));
   DM1.Query1.SQL.Add(' Group by NATDC');
   try
      DM1.Query1.Open;
   except
      DM1.Query1.SQL.SaveToFile('C:\SQL.TXT');
      end;
   While not DM1.Query1.Eof do
      begin
      if DM1.Query1.Fields[0].AsString='D' then
         mSaldoIni:=mSaldoIni-DM1.Query1.Fields[1].AsFloat
      else
         mSaldoIni:=mSaldoIni+DM1.Query1.Fields[1].AsFloat;
      DM1.query1.Next;
      end;
   end;
lbl_saldoant.Caption:=FormatFloat(mcasas, mSaldoIni);
rlb_saldoant.Visible:=true;
lbl_rodape.Caption:='Relatório Emitido em '+FormatDatetime(fdt2, date)
                   +' as '+formatDatetime('hh:nn:ss', now)+'. Intersys';
RLReport1.PreviewModal;

{
fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP

mpag:=0;
mlin:=0;
mtotc:=0;
mtotd:=0;
msaldo:=0;
msaldoa:=DM1.Tb_BcoBCSALDOI.Value;
if Trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('select NATDC,SUM(VALORR) AS VALOR');
   DM1.Query1.SQL.Add(' from  CADLDR WHERE STATUS<>9');
   if not DM1.Qr_Tid.locate('TINOME','CADLDR',[]) then
      DM1.Query1.SQL.Add(' and CODEMP=0'+IntToStr(codemp));
   DM1.Query1.Sql.add(' and DATADP<'+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39));
   if Trim(CODBCO.Text)<>'' Then
      DM1.Query1.SQL.Add(' and CODBCO=0'+trim(CODBCO.Text));
   if Trim(CODDEP.Text)<>'' then
      DM1.Query1.SQL.Add(' and CODDEP='+chr(39)+CODDEP.Text+chr(39));
   if Trim(CODCC.Text)<>'' Then
      DM1.Query1.SQL.add(' and CODCC='+chr(39)+CODCC.Text+chr(39));
   if Trim(CODIGO.Text)<>'' then
      begin
      DM1.Query1.SQL.Add(' and TIPO='+chr(39)+CB_TIPO.Text+chr(39)
                        +' and CODIGO=0'+trim(CODIGO.Text));
      end;
   DM1.Query1.SQL.Add(' Group by NATDC');
   DM1.Query1.open;

   While not DM1.Query1.Eof do
      begin
      if DM1.Query1.Fields[0].AsString='D' then
         msaldoa:=msaldoa-DM1.Query1.Fields[1].AsFloat
      else
         msaldoa:=msaldoa+DM1.Query1.Fields[1].AsFloat;
      DM1.query1.Next;
      end;
   end;
msaldo:=msaldoa;



While not Qr_Ldr.Eof do
   begin
   if mlin=0 then
      begin
      mpag:=mpag+1;
      Frm_Impres.Rdprint1.impf(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      Frm_Impres.Rdprint1.Impf(01,65,'Pagina....: '+FormatFloat('0000',mpag),mnormal);
      Frm_Impres.Rdprint1.Impf(02,01,'Caixa Previsto e Realizado.',mnormal);
      Frm_Impres.Rdprint1.Impf(02,65,'Data: '+FormatDateTime('dd/mm/yyyy',date),mnormal);
      Frm_Impres.Rdprint1.Impf(03,01,insere2('-','-',80),mnormal);
      if (Trim(mdt1.Text)='/  /') and (Trim(mdt2.Text)='/  /') then
         Frm_Impres.Rdprint1.Impf(04,01,Centra('TODAS AS DATAS.',' ',60),mneg)
      else if (Trim(mdt1.Text)='/  /') and (Trim(mdt2.Text)<>'/  /') then
         Frm_Impres.Rdprint1.impf(04,01,Centra('ATE: '+MDT2.Text,' ',60),mneg)
      else if (Trim(mdt1.Text)<>'/  /') and (Trim(mdt2.Text)='/  /') then
         Frm_Impres.Rdprint1.impf(04,01,Centra('A PARTIR DE: '+MDT1.Text,' ',60),mneg)
      else
         Frm_Impres.Rdprint1.impf(04,01,Centra('PERIODO DE: '+MDT1.Text+' A '+MDT2.Text,' ',60),mneg);
      mlin:=5;
      if ValFloat(CODBCO.Text)>0 then
         begin
         Frm_Impres.Rdprint1.impf(mlin,01,Centra('Banco.: '+Trim(NOMBCO.Text),' ',60),mneg);
         mlin:=mlin+1;
         end;
      if Trim(CODCC.Text)<>'' then
         begin
         Frm_Impres.Rdprint1.impf(mlin,01,Centra('Centro de Custo: '+Trim(NOMCC.Text),' ',60),mneg);
         mlin:=mlin+1;
         end;

      if Trim(CODDEP.Text)<>'' then
         begin
         Frm_Impres.Rdprint1.impf(mlin,01,Centra('Departamento.: '+Trim(NOMDEP.Text),' ',60),mneg);
         mlin:=mlin+1;
         end;
      if Trim(CODIGO.Text)<>'' then
         begin
         Frm_Impres.Rdprint1.impf(mlin,01,Centra(Trim(NOME.Text),' ',60),mneg);
         mlin:=mlin+1;
         end;
      Frm_Impres.rdprint1.Impf(mlin,01,'Data       Descricao                                Bco  Tp Codigo Documento  Cheque     C.Custo      DEBITO     CREDITO   ACUMULADO',mreduz);
      if mpag=1 then
         begin
         mlin:=mlin+1;
         Frm_Impres.RDprint1.ImpF(mlin,01,'- Saldo Anterior.........................................................................................................'
                                 +insere(FormatFloat('###,##0.00',msaldoa),' ',12),mreduz);
         end;
      end;
   mlin:=mlin+1;
   if Qr_LDRNATDC.Value='D' then
      begin
      msaldo:=msaldo-Qr_LDRVALORP.Value;
      mtotd:=mtotd+Qr_LDRVALORP.Value;
      end
   else
      begin
      msaldo:=msaldo+Qr_LDRVALORP.Value;
      mtotc :=mtotc+Qr_LDRVALORP.Value;
      end;
   mdesc:=Trim(Qr_LDRDESCMV.Value)+': '+Qr_LDRsacado.Value;
   if length(mdesc)>40 then
      mdesc:=copy(mdesc,1,40);
   Frm_Impres.RDprint1.ImpF(mlin,01,FormatDateTime('dd/mm/yyyy',Qr_LDRDATADP.Value)
                           +' '+insere2(mdesc,' ',40)
                           +' '+FormatFloat('0000',Qr_LDRCODBCO.Value)
                           +' '+Insere2(Qr_LDRTIPO.Value,' ',2)
                           +' '+FormatFloat('000000',Qr_LDRCODIGO.Value)
                           +' '+Insere2(Qr_LDRNUMDOC.Value,' ',10)
                           +' '+Insere2(Qr_LDRNUMDOC2.Value,' ',10)
                           +' '+Insere(Qr_LDRCODCC.AsString,' ',7)
                           +' '+iif(Qr_LDRNATDC.Value='D',insere(FormatFloat('###,##0.00',Qr_LDRVALORP.Value), ' ',12)+insere2(' ',' ',12),insere2(' ',' ',12)+insere(FormatFloat('###,##0.00', Qr_LDRVALORP.Value),' ',12))
                                                                +insere(FormatFloat('###,#00.00',msaldo),' ',12),mreduz);
  Qr_Ldr.Next;
  if Qr_Ldr.Eof then
     begin
     mlin:=mlin+1;
     Frm_Impres.Rdprint1.Impf(mlin,01,'- Totais.........................................................................................'
                             +Insere(FormatFloat('###,##0.00',mtotd),' ',12)
                             +insere(FormatFloat('###,##0.00',mtotc),' ',12)
                             +insere(FormatFloat('###,##0.00',msaldo),' ',12),mreduz);

     mlin:=mlin+1;
     Frm_Impres.Rdprint1.ImpF(mlin,01,insere2('Fim.--','-',80),mnormal);
     if Frm_Impres.Rdprint1.Setup then Frm_Impres.Rdprint1.Fechar;
     end
  else if mlin>58 then
     begin
     mlin:=mlin+1;
     Frm_Impres.Rdprint1.Impf(mlin,01,'- Totais.........................................................................................'
                             +Insere(FormatFloat('###,##0.00',mtotd),' ',12)
                             +insere(FormatFloat('###,##0.00',mtotc),' ',12)
                             +insere(FormatFloat('###,##0.00',msaldo),' ',12),mreduz);

     mlin:=mlin+1;
     Frm_Impres.Rdprint1.ImpF(mlin,01,insere2('Continua...','-',80),mnormal);
     Frm_Impres.Rdprint1.Novapagina;
     mlin:=0;
     end;
  end;

{
13/05/2002 1234567890123456789012345678901234657980 1234 12 123456 1234567890 1234567890 1234567zzzzz.zz9,99zzzzz.zz9,99zzzzz.zz9,99

Data       Descricao                                Bco  Tp Codigo Documento  Cheque     C.Custo      DEBITO     CREDITO   ACUMULADO
13/05/2002 1234567890123456789012345678901234657980 1234 12 123456 1234567890 1234567890 1234567zzzzz.zz9,99zzzzz.zz9,99zzzzz.zz9,99
- Totais........................................................................................zzzzz.zz9,99zzzzz.zz9,99zzzzz.zz9,99
- Saldo Anterior........................................................................................................zzzzz.zz9,99

}
end;

procedure TFrm_CX_Sintetico.CODBCOExit(Sender: TObject);
begin
CODBCO.Text:=fdeixanum2(CODBCO.Text);
if Trim(CODBCO.Text)<>'' then
   begin
   if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',CODBCO.Text) then
      begin
      lbx_codbco.Items.Add(FormatFloat('0000000',StrToFloat(CODBCO.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codbco.text := '';
      codbco.SetFocus;
      end
   else
      begin
      fMensagem('Banco não Cadastrado!',0,['0'],0);
      codbco.text := '';
      CODBCO.SetFocus;
      end;
   end;


end;

procedure TFrm_CX_Sintetico.CODDEPExit(Sender: TObject);
begin
if Trim(CODDEP.Text)<>'' then
   begin
   if flqr1('DNOME','D','CADDEP','C','DCODDEP',CODDEP.Text) then
      begin
      lbx_coddep.Items.Add(CODDEP.TEXT
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODDEP.text := '';
      CODDEP.SetFocus;
      end
   else
      begin
      fMensagem('Departamento não Cadastrado!',0,['0'],0);
      CODDEP.text := '';
      CODDEP.SetFocus;
      end;
   end;


end;

procedure TFrm_CX_Sintetico.CODCCUExit(Sender: TObject);
begin
if Trim(CODCCU.Text)<>'' then
   begin
   if flqr1('CCNAT,CCNOME','CC','CADCCU','C','CCCODCCU',CODCCU.Text) then
      begin
      lbx_codccu.Items.Add(CODCCU.TEXT
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODCCU.text := '';
      CODCCU.SetFocus;
      end
   else
      begin
      fMensagem('Centro de Custo não Cadastrado!',0,['0'],0);
      CODCCU.text := '';
      CODCCU.SetFocus;
      end;
   end;


end;

procedure TFrm_CX_Sintetico.CODCLIExit(Sender: TObject);
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
      fMensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI.text := '';
      CODCLI.SetFocus;
      end;
   end;


end;

procedure TFrm_CX_Sintetico.CODFORExit(Sender: TObject);
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
      fMensagem('Fornecedor não Cadastrado!',0,['0'],0);
      CODFOR.text := '';
      CODFOR.SetFocus;
      end;
   end;


end;

procedure TFrm_CX_Sintetico.CODVENExit(Sender: TObject);
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
      fMensagem('Vendedor não Cadastrado!',0,['0'],0);
      CODVEN.text := '';
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end;
   end;


end;

procedure TFrm_CX_Sintetico.CODTRAExit(Sender: TObject);
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
      fMensagem('Transportador não Cadastrado!',0,['0'],0);
      CODTRA.text := '';
      CODTRA.SetFocus;
      end;
   end;

end;

procedure TFrm_CX_Sintetico.MCODUSRExit(Sender: TObject);
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
      fMensagem('Usuário não Cadastrado!',0,['0'],0);
      MCODUSR.text := '';
      MCODUSR.SetFocus;
      end;
   end;


end;

procedure TFrm_CX_Sintetico.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_CX_Sintetico',Key);
   if trim(CODBCO.Text)<>'' then
      CODBCOExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_CX_Sintetico.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_PLDR',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_CX_Sintetico.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_CX_Sintetico',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_CX_Sintetico.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_CX_Sintetico',Key);
   if trim(CODVEN.Text)<>'' then
      CODVENExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_CX_Sintetico.CODTRAKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTRA.Text:=fChamaTra(0,'frm_CX_Sintetico',Key);
   if trim(CODTRA.Text)<>''  then
      CODTRAExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_CX_Sintetico.MCODUSRKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   MCODUSR.Text:=fChamaUsr(0,'frm_CX_Sintetico',Key);
   if trim(MCODUSR.Text)<>'' then
      MCODUSRExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_CX_Sintetico.lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);

end;

procedure TFrm_CX_Sintetico.lbx_coddepKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_coddep.ItemIndex>=0 then
      lbx_coddep.Items.Delete(lbx_coddep.ItemIndex);

end;

procedure TFrm_CX_Sintetico.lbx_codccuKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codccu.ItemIndex>=0 then
      lbx_codccu.Items.Delete(lbx_codccu.ItemIndex);

end;

procedure TFrm_CX_Sintetico.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);
end;

procedure TFrm_CX_Sintetico.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_CX_Sintetico.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_CX_Sintetico.lbx_codtraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codtra.ItemIndex>=0 then
      lbx_codtra.Items.Delete(lbx_codtra.ItemIndex);

end;

procedure TFrm_CX_Sintetico.lbx_codusrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codusr.ItemIndex>=0 then
      lbx_codusr.Items.Delete(lbx_codusr.ItemIndex);

end;

procedure TFrm_CX_Sintetico.sbn_coddepClick(Sender: TObject);
begin
CODDEP.Text :=fChamaDeptoCX(0,'frm_CX_Sintetico','');
if trim(CODDEP.Text)<>'' then
   CODDEPExit(Self);

end;

procedure TFrm_CX_Sintetico.sbn_codccuClick(Sender: TObject);
begin
   CODCCU.Text:=fChamaCCU(0,'frm_CX_Sintetico','');
if trim(CODCCU.Text)<>'' then
   CODCCUExit(Self);
end;

procedure TFrm_CX_Sintetico.Qr_LDRCalcFields(DataSet: TDataSet);
begin
if Qr_LDRVALORCRED.Value=0 then
   Qr_LDRcredbco.Value:=''
else
   Qr_LDRcredbco.Value :=FormatFloat(mcasas, Qr_LDRVALORCRED.Value);
if Qr_LDRVALORDEB.Value=0 then
   Qr_LDRdebbco.Value:=''
else
   Qr_LDRdebbco.Value :=FormatFloat(mcasas, Qr_LDRVALORDEB.Value);
end;

procedure TFrm_CX_Sintetico.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

Qr_LDRVALORCRED.DisplayFormat :=mcasas;
Qr_LDRVALORDEB.DisplayFormat  :=mcasas;
DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;
DM4.Tb_FilPad.First;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_CX_SINTETICO','RG_TPPESQ']),[]) then
   RG_TPPESQ.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_CX_SINTETICO','RG_NAT']),[]) then
   RG_NAT.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_CX_SINTETICO','RG_ESTADO']),[]) then
   RG_ESTADO.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);


if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_CX_SINTETICO','CB_ENTRELINHA']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_ENTRELINHA.Checked:=true
   else
      CB_ENTRELINHA.Checked:=false;
   end
else
   CB_ENTRELINHA.Checked:=false;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_CX_SINTETICO','CB_SEMBORDA']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_SEMBORDA.Checked:=true
   else
      CB_SEMBORDA.Checked:=false;
   end
else
   CB_SEMBORDA.Checked:=false;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_CX_SINTETICO','CB_AGRUPAR']),[]) then
   cb_agrupar.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_CX_SINTETICO','CB_SEPARADO']),[]) then
   cb_separado.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);

end;

procedure TFrm_CX_Sintetico.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mCred:=mCred+Qr_LDRVALORCRED.Value;
mDeb :=mDeb+Qr_LDRVALORDEB.Value;
mCred_Gru:=mCred_Gru+Qr_LDRVALORCRED.Value;
mDeb_Gru :=mDeb_Gru+Qr_LDRVALORDEB.Value;

lbl_acum.Caption:=FormatFloat(mcasas, mSaldoIni-mDeb+mCred);

end;

procedure TFrm_CX_Sintetico.CB_SEMBORDAClick(Sender: TObject);
begin
if CB_SEMBORDA.Checked then
   begin
   mboolean:=False;
   lbl_cabdesc.Alignment  :=taLeftJustify;
   lbl_cabdeb.Alignment   :=taRightJustify;
   lbl_cabcred.Alignment  :=taRightJustify;
   lbl_cabacum.Alignment  :=taRightJustify;
   end
else
   begin
   mboolean:=true;
   lbl_cabdesc.Alignment  :=taCenter;
   lbl_cabdeb.Alignment   :=taCenter;
   lbl_cabcred.Alignment  :=taCenter;
   lbl_cabacum.Alignment  :=taCenter;
   end;
rlb_saldoant.Borders.DrawLeft    :=mboolean;
rlb_saldoant.Borders.DrawRight   :=mboolean;
lbl_titulo.Borders.DrawBottom    :=mboolean;
db_grupo.Borders.DrawBottom      :=mboolean;
band_cab.Borders.DrawBottom      :=mboolean;
lbl_cabdesc.Borders.DrawRight    :=mboolean;
db_descmv.Borders.DrawRight      :=mboolean;

lbl_cabdeb.Borders.DrawRight     :=mboolean;
lbl_cabcred.Borders.DrawRight    :=mboolean;
RLGroup1.Borders.DrawTop         :=mboolean;
RLGroup1.Borders.DrawLeft        :=mboolean;
RLGroup1.Borders.DrawRight       :=mboolean;
RLGroup1.Borders.DrawBottom      :=mboolean;
lbl_total.Borders.DrawRight      :=mboolean;
RLband4.Borders.DrawTop          :=mboolean;
RLband4.Borders.DrawBottom       :=mboolean;
db_deb.Borders.DrawRight         :=mboolean;
db_cred.Borders.DrawRight        :=mboolean;
lbl_total.Borders.DrawRight      :=mboolean;
RLBand6.Borders.DrawTop          :=mboolean;
lbl_totdeb_gru.Borders.DrawRight :=mboolean;
lbl_totcred_gru.Borders.DrawRight:=mboolean;


end;

procedure TFrm_CX_Sintetico.rlb_saldoantAfterPrint(Sender: TObject);
begin
rlb_saldoant.Visible:=false;
end;

procedure TFrm_CX_Sintetico.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_totcred_gru.Caption:=FormatFloat(mcasas, mCred_Gru);
lbl_totdeb_gru.Caption :=FormatFloat(mcasas, mDeb_Gru);
lbl_totacum_gru.Caption:=FormatFloat(mcasas, mCred_Gru-mDeb_Gru);
mCred_Gru:=0;
mDeb_Gru :=0;
end;

procedure TFrm_CX_Sintetico.bbSalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(codusr,'_CX_SINTETICO','');
fGravaPadroes(codusr,'RG_TPPESQ'     ,'itemindex' ,'_CX_SINTETICO',IntTostr(RG_TPPESQ.ItemIndex));
fGravaPadroes(codusr,'RG_NAT'        ,'itemindex' ,'_CX_SINTETICO',IntTostr(RG_NAT.ItemIndex));
fGravaPadroes(codusr,'RG_ESTADO'     ,'itemindex' ,'_CX_SINTETICO',IntTostr(RG_ESTADO.ItemIndex));
fGravaPadroes(codusr,'CB_SEMBORDA'   ,'checked'   ,'_CX_SINTETICO',iif(CB_SEMBORDA.Checked,'true','false'));
fGravaPadroes(codusr,'CB_ENTRELINHA' ,'checked'   ,'_CX_SINTETICO',iif(CB_ENTRELINHA.Checked,'true','false'));
fGravaPadroes(codusr,'CB_AGRUPAR'    ,'itemindex' ,'_CX_SINTETICO',IntTostr(cb_agrupar.ItemIndex));
fGravaPadroes(codusr,'CB_SEPARADO'    ,'itemindex','_CX_SINTETICO',IntTostr(cb_separado.ItemIndex));
fMensagem('Gravado!',0,['0'],0);
end;

procedure TFrm_CX_Sintetico.CB_ENTRELINHAClick(Sender: TObject);
begin
if CB_ENTRELINHA.Checked then
   begin
   RLBand4.Height        :=14;
   db_descmv.Height      :=14;
   db_deb.Height         :=14;
   db_cred.Height        :=14;
   lbl_acum.Height       :=14;
   lbl_total.Height      :=14;
   lbl_totdeb_gru.Height :=14;
   lbl_totcred_gru.Height:=14;
   lbl_totacum_gru.Height:=14;
   end
else
   begin
   RLBand4.Height        :=10;
   db_deb.Height         :=10;
   db_cred.Height        :=10;
   lbl_acum.Height       :=10;
   lbl_total.Height      :=10;
   lbl_totdeb_gru.Height :=10;
   lbl_totcred_gru.Height:=10;
   lbl_totacum_gru.Height:=10;
   end;
end;

procedure TFrm_CX_Sintetico.cb_agruparClick(Sender: TObject);
begin
if cb_agrupar.ItemIndex<0 then
   with cb_agrupar do ItemIndex:=Items.IndexOf(cb_agrupar.Text);
cb_agrupar.text:=cb_agrupar.Items.Strings[cb_agrupar.ItemIndex];

end;

procedure TFrm_CX_Sintetico.cb_separadoClick(Sender: TObject);
begin
if cb_separado.ItemIndex<0 then
   with cb_separado do ItemIndex:=Items.IndexOf(cb_separado.Text);
cb_separado.text:=cb_separado.Items.Strings[cb_separado.ItemIndex];

end;

procedure TFrm_CX_Sintetico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_CX_Sintetico.FormKeyDown(Sender: TObject; var Key: Word;
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
